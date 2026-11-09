Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_adaptor_test?download=true
inline.NumInlined: 24951
inline.NumDeleted: 2813
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 306
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_:bb.a

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar249 = phi i64 [ %indvar.next250, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %.03456.i = phi ptr [ %.034.i, %bb.m ], [ %.03452.i, %bb.l ] ; 7 uses
  %.03055.i = phi ptr [ %.030.i, %bb.m ], [ %.03051.i, %bb.l ] ; 2 uses
  %.054.i = phi ptr [ %.1.i35, %bb.m ], [ %i.aq, %bb.l ] ; 6 uses
  %.03253.i = phi ptr [ %.133.i, %bb.m ], [ %i.l, %bb.l ] ; 10 uses
  %i.au = icmp eq ptr %.054.i, %3
  br i1 %i.au, label %.lr.ph.i.i.i40.preheader, label %bb.m

.lr.ph.i.i.i40.preheader:                         ; preds = %.lr.ph.i34
  %.03253.i248.le = ptrtoaddr ptr %.03253.i to i64
  %i.av = add i64 %i.a, -8
  %i.aw = sub i64 %i.av, %i.i
  %i.ax = mul i64 %indvar249, -4                  ; 2 uses
  %i.ay = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = lshr i64 %i.ay, 2
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check252 = icmp ult i64 %i.ay, 92
  br i1 %min.iters.check252, label %.lr.ph.i.i.i40.preheader291, label %vector.memcheck253

vector.memcheck253:                               ; preds = %.lr.ph.i.i.i40.preheader
  %reass.sub268 = sub i64 %i.ax, %i.i
  %op.rdx = add i64 %.03253.i248.le, -5
  %op.rdx269 = add i64 %op.rdx, %reass.sub268
  %diff.check254 = icmp ult i64 %op.rdx269, 31
  br i1 %diff.check254, label %.lr.ph.i.i.i40.preheader291, label %vector.ph255

vector.ph255:                                     ; preds = %vector.memcheck253
  %n.vec256 = and i64 %i.ba, 9223372036854775800  ; 3 uses
  %i.bb = shl i64 %n.vec256, 2                    ; 2 uses
  %i.bc = getelementptr i8, ptr %.03253.i, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %.03456.i, i64 %i.bb
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph255
  %index258 = phi i64 [ 0, %vector.ph255 ], [ %index.next263, %vector.body257 ] ; 2 uses
  %i.be = shl i64 %index258, 2                    ; 2 uses
  %next.gep259 = getelementptr i8, ptr %.03253.i, i64 %i.be ; 2 uses
  %next.gep260 = getelementptr i8, ptr %.03456.i, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep260, i64 16
  %wide.load261 = load <4 x i32>, ptr %next.gep260, align 4, !tbaa !296
  %wide.load262 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !296
  %i.bg = getelementptr i8, ptr %next.gep259, i64 16
  store <4 x i32> %wide.load261, ptr %next.gep259, align 4, !tbaa !296
  store <4 x i32> %wide.load262, ptr %i.bg, align 4, !tbaa !296
  %index.next263 = add nuw i64 %index258, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next263, %n.vec256
  br i1 %i.bh, label %middle.block264, label %vector.body257, !llvm.loop !3386

middle.block264:                                  ; preds = %vector.body257
  %cmp.n265 = icmp eq i64 %i.ba, %n.vec256
  br i1 %cmp.n265, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i.i.i40.preheader291

.lr.ph.i.i.i40.preheader291:                      ; preds = %vector.memcheck253, %.lr.ph.i.i.i40.preheader, %middle.block264
  %.010.i.i.i41.ph = phi ptr [ %.03253.i, %vector.memcheck253 ], [ %.03253.i, %.lr.ph.i.i.i40.preheader ], [ %i.bc, %middle.block264 ]
  %.079.i.i.i42.ph = phi ptr [ %.03456.i, %vector.memcheck253 ], [ %.03456.i, %.lr.ph.i.i.i40.preheader ], [ %i.bd, %middle.block264 ]
  br label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %.lr.ph.i.i.i40.preheader291, %.lr.ph.i.i.i40
  %.010.i.i.i41 = phi ptr [ %i.bk, %.lr.ph.i.i.i40 ], [ %.010.i.i.i41.ph, %.lr.ph.i.i.i40.preheader291 ] ; 2 uses
  %.079.i.i.i42 = phi ptr [ %i.bj, %.lr.ph.i.i.i40 ], [ %.079.i.i.i42.ph, %.lr.ph.i.i.i40.preheader291 ] ; 2 uses
  %i.bi = load i32, ptr %.079.i.i.i42, align 4, !tbaa !296
  store i32 %i.bi, ptr %.010.i.i.i41, align 4, !tbaa !296
  %i.bj = getelementptr inbounds nuw i8, ptr %.079.i.i.i42, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.010.i.i.i41, i64 4 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.bj, %1
  br i1 %.not.i.i.i43, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i.i.i40, !llvm.loop !3387

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bl = load i32, ptr %.03253.i, align 4, !tbaa !296
  %i.bm = load i32, ptr %.054.i, align 4, !tbaa !296
  %.not42.i = icmp slt i32 %i.bl, %i.bm           ; 3 uses
  %.133.idx.i = select i1 %.not42.i, i64 4, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03253.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not42.i, i64 0, i64 4
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.054.i, i64 %.1.idx.i ; 2 uses
  %storemerge43.i = load i32, ptr %.03456.i, align 4, !tbaa !296
  store i32 %storemerge43.i, ptr %.03055.i, align 4, !tbaa !296
  %.03253.val.i = load i32, ptr %.03253.i, align 4
  %.054.val.i = load i32, ptr %.054.i, align 4
  %storemerge.i = select i1 %.not42.i, i32 %.03253.val.i, i32 %.054.val.i
  store i32 %storemerge.i, ptr %.03456.i, align 4, !tbaa !296
  %.030.i = getelementptr inbounds nuw i8, ptr %.03055.i, i64 4 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03456.i, i64 4 ; 2 uses
  %i.bn = icmp eq ptr %.034.i, %1
  %indvar.next250 = add i64 %indvar249, 1
  br i1 %i.bn, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !3388

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i.i, %bb.m, %.lr.ph.i.i.i40, %middle.block, %middle.block264, %bb.a
  %.077 = phi ptr [ %.03564.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ], [ %.03564.i, %middle.block ], [ %.054.i, %middle.block264 ], [ %.1.i35, %bb.m ], [ %.054.i, %.lr.ph.i.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.075 = phi ptr [ %.03963.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ], [ %.03963.i, %middle.block ], [ %.03253.i, %middle.block264 ], [ %.133.i, %bb.m ], [ %.03253.i, %.lr.ph.i.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.074 = phi ptr [ %.065.i, %.lr.ph.i.i.i ], [ %4, %bb.a ], [ %.065.i, %middle.block ], [ %4, %middle.block264 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i.i40 ], [ %.1.i, %bb.j ]
  %.028 = phi ptr [ %1, %.lr.ph.i.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block264 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %i.c, %bb.a ], [ %i.z, %middle.block ], [ %i.bc, %middle.block264 ], [ %.030.i, %bb.m ], [ %i.bk, %.lr.ph.i.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit
  %.0105 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %.03760.i, %bb.f ] ; 5 uses
  %.028104 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.074103 = phi ptr [ %.074, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.n, %bb.f ]
  %.075102 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.l, %bb.f ] ; 3 uses
  %.077101 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.not.i44 = icmp eq ptr %.077101, %3
  %.not36.i = icmp eq ptr %.0105, %.075102
  %or.cond.i45 = select i1 %.not.i44, i1 true, i1 %.not36.i
  br i1 %or.cond.i45, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ]
  %.028.ph.i = phi ptr [ %i.bt, %bb.o ], [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ] ; 3 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.074103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i46 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 4 uses
  %.026.i = phi ptr [ %i.bq, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 4 uses
  %.025.i = phi ptr [ %i.br, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.bo = load i32, ptr %.028.ph.i, align 4, !tbaa !296 ; 2 uses
  %i.bp = load i32, ptr %.025.i, align 4, !tbaa !296 ; 2 uses
  %.not42.i47 = icmp slt i32 %i.bo, %i.bp
  br i1 %.not42.i47, label %bb.o, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.025.i, i64 4
  store i32 %i.bp, ptr %.030.i46, align 4, !tbaa !296
  %i.bs = load i32, ptr %.026.i, align 4, !tbaa !296
  store i32 %i.bs, ptr %.025.i, align 4, !tbaa !296
  %.not44.i = icmp eq ptr %i.bq, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 4 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %bb.n, !llvm.loop !63

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4 ; 3 uses
  store i32 %i.bo, ptr %.030.i46, align 4, !tbaa !296
  %.not43.i = icmp eq ptr %i.bt, %.0105
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 4 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.outer.i, !llvm.loop !63

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit
  %.091 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %.03051.i, %bb.l ] ; 5 uses
  %.02889 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07588 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.l, %bb.l ] ; 3 uses
  %.07787 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.aq, %bb.l ] ; 3 uses
  %.not.i50 = icmp eq ptr %.07787, %3
  %.not36.i51 = icmp eq ptr %.091, %.07588
  %or.cond.i52 = select i1 %.not.i50, i1 true, i1 %.not36.i51
  br i1 %or.cond.i52, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.bw, %bb.q ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.bz, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.bw, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.bx, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.bu = load i32, ptr %.021.i.ph, align 4, !tbaa !296 ; 2 uses
  %i.bv = load i32, ptr %.0.i, align 4, !tbaa !296 ; 2 uses
  %.not37.i = icmp slt i32 %i.bu, %i.bv
  %i.bw = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %.not37.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 3 uses
  store i32 %i.bv, ptr %.024.i, align 4, !tbaa !296
  %i.by = icmp eq ptr %i.bx, %3
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.preheader.i, !llvm.loop !64

bb.q:                                             ; preds = %.preheader.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.bu, ptr %.024.i, align 4, !tbaa !296
  %i.ca = icmp eq ptr %i.bz, %.091
  br i1 %i.ca, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !64

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95
  %.090 = phi ptr [ %.0105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ], [ %.0105, %.split.i ], [ %.091, %bb.p ], [ %.091, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.091, %bb.q ], [ %.0105, %bb.o ]
  %.178 = phi ptr [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ], [ %i.bq, %.split.i ], [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.bx, %bb.p ], [ %.026.i, %bb.o ]
  %.176 = phi ptr [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ], [ %.028.ph.i, %.split.i ], [ %i.bz, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.bt, %bb.o ]
  %i.cb = phi ptr [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ], [ %.13137.i, %.split.i ], [ %i.bw, %bb.p ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.bw, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.176, ptr %5, align 8, !tbaa !299
  store ptr %.090, ptr %6, align 8, !tbaa !299
  store ptr %.178, ptr %2, align 8, !tbaa !299
  ret ptr %i.cb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_S5_S5_SG_NS0_7swap_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #1 comdat {
bb.a:
  %.not138 = icmp eq i64 %8, 0
  br i1 %.not138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sub i64 0, %7                            ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %.not.i.i = icmp eq i64 %7, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !441
  %i.b = shl i64 %7, 2
  %12 = add i64 %i.b, -4                          ; 2 uses
  %i.c = shl i64 %7, 2
  %invariant.op = add i64 %i.c, -4
  %i.d = shl i64 %7, 2
  %invariant.op516 = add i64 %i.d, -4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.fg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 2 uses
  %.0 = phi i64 [ %10, %.lr.ph ], [ %i.fk, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 3 uses
  %.0140 = phi i64 [ %9, %.lr.ph ], [ %i.fi, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 4 uses
  %.095139 = phi i64 [ %8, %.lr.ph ], [ %i.fl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 2 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !441    ; 11 uses
  %i.g = ptrtoaddr ptr %i.f to i64                ; 6 uses
  %i.h = icmp ult i64 %.0140, %.0
  br i1 %i.h, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread20.i
  %.023.i = phi i64 [ %i.aa, %.thread20.i ], [ %.0140, %bb.b ] ; 4 uses
  %.01822.i = phi i64 [ %i.z, %.thread20.i ], [ 0, %bb.b ] ; 4 uses
  %i.i = mul i64 %.01822.i, %7
  %i.j = xor i64 %i.i, -1
  %i.k = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.j
  %i.l = mul i64 %.023.i, %7
  %i.m = xor i64 %i.l, -1
  %i.n = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.m
  %i.o = xor i64 %.01822.i, -1
  %i.p = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.o
  %i.q = xor i64 %.023.i, -1
  %i.r = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.q
  %i.s = load i32, ptr %i.k, align 4, !tbaa !296  ; 2 uses
  %i.t = load i32, ptr %i.n, align 4, !tbaa !296  ; 2 uses
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = icmp slt i32 %i.t, %i.s
  br i1 %i.v, label %.thread20.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.p, align 4, !tbaa !296
  %i.x = load i32, ptr %i.r, align 4, !tbaa !296
  %i.y = icmp slt i32 %i.w, %i.x
  %cond.fr.i = freeze i1 %i.y
  br i1 %cond.fr.i, label %.thread.i, label %.thread20.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread20.i

.thread20.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.z = phi i64 [ %.023.i, %.thread.i ], [ %.01822.i, %bb.d ], [ %.01822.i, %bb.c ] ; 2 uses
  %i.aa = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !54

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread20.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.z, %.thread20.i ] ; 6 uses
  %i.ab = add i64 %.018.lcssa.i, 2
  %i.ac = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.ab) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %.095139)
  %i.ad = getelementptr inbounds i8, ptr %i.f, i64 %.idx ; 14 uses
  %i.ae = mul i64 %7, %.018.lcssa.i
  %i.af = sub i64 0, %i.ae
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.af ; 11 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.a ; 2 uses
  %.not23 = icmp eq i64 %.018.lcssa.i, 0          ; 3 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !441   ; 5 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !441   ; 8 uses
  %i.ak = load ptr, ptr %4, align 8, !tbaa !441, !noalias !398 ; 7 uses
  %.not17.i.i = icmp eq ptr %i.ai, %i.ak
  %or.cond.i26 = select i1 %.not.i.i, i1 true, i1 %.not17.i.i ; 4 uses
  br i1 %.not23, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  br i1 %11, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.f, %.split.i.i
  %.sroa.027.0.i = phi ptr [ %i.ar, %.split.i.i ], [ %i.aj, %bb.f ]
  %.sroa.010.0.ph.i.i = phi ptr [ %i.al, %.split.i.i ], [ %i.ag, %bb.f ] ; 2 uses
  %.sroa.013.0.ph.i.i = phi ptr [ %i.aq, %.split.i.i ], [ %i.f, %bb.f ] ; 2 uses
  %.sroa.017.0.ph.i.i = phi ptr [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.ak, %bb.f ]
  %i.al = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i.i, i64 -4 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.outer.i.i
  %.sroa.027.1.i = phi ptr [ %.sroa.027.0.i, %.outer.i.i ], [ %i.au, %bb.h ] ; 2 uses
  %.sroa.017.0.i.i = phi ptr [ %.sroa.017.0.ph.i.i, %.outer.i.i ], [ %i.am, %bb.h ] ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.017.0.i.i, i64 -4 ; 5 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !296, !noalias !3426 ; 2 uses
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !296, !noalias !3426 ; 2 uses
  %i.ap = icmp slt i32 %i.an, %i.ao
  br i1 %i.ap, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.aq = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i.i, i64 -4 ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !296, !noalias !3426
  store i32 %i.ao, ptr %i.ar, align 4, !tbaa !296, !noalias !3426
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !296, !noalias !3426
  store i32 %i.at, ptr %i.al, align 4, !tbaa !296, !noalias !3426
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !296, !noalias !3426
  %.not27.i.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not27.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !65

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -4 ; 4 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !296, !noalias !3426
  store i32 %i.an, ptr %i.au, align 4, !tbaa !296, !noalias !3426
  store i32 %i.av, ptr %i.am, align 4, !tbaa !296, !noalias !3426
  %.not26.i.i = icmp eq ptr %i.am, %i.ai
  br i1 %.not26.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !65

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.020.0.i = phi ptr [ %i.bb, %.split.i14.i ], [ %i.aj, %bb.i ]
  %.sroa.010.0.ph.i9.i = phi ptr [ %i.aw, %.split.i14.i ], [ %i.ag, %bb.i ] ; 2 uses
  %.sroa.013.0.ph.i10.i = phi ptr [ %i.ba, %.split.i14.i ], [ %i.f, %bb.i ] ; 2 uses
  %.sroa.017.0.ph.i11.i = phi ptr [ %.sroa.017.0.i12.i, %.split.i14.i ], [ %i.ak, %bb.i ]
  %i.aw = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i9.i, i64 -4 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.020.1.i = phi ptr [ %.sroa.020.0.i, %.outer.i8.i ], [ %i.be, %bb.k ] ; 2 uses
  %.sroa.017.0.i12.i = phi ptr [ %.sroa.017.0.ph.i11.i, %.outer.i8.i ], [ %i.ax, %bb.k ] ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %.sroa.017.0.i12.i, i64 -4 ; 5 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !296, !noalias !3427 ; 2 uses
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !296, !noalias !3427 ; 2 uses
  %.not26.i13.i = icmp slt i32 %i.ay, %i.az
  br i1 %.not26.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.ba = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i10.i, i64 -4 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 4 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !296, !noalias !3427
  store i32 %i.ay, ptr %i.bb, align 4, !tbaa !296, !noalias !3427
  %i.bd = load i32, ptr %i.ba, align 4, !tbaa !296, !noalias !3427
  store i32 %i.bd, ptr %i.aw, align 4, !tbaa !296, !noalias !3427
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !296, !noalias !3427
  %.not28.i.i = icmp eq ptr %i.ba, %i.ad
  br i1 %.not28.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !66

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 4 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !296, !noalias !3427
  store i32 %i.az, ptr %i.be, align 4, !tbaa !296, !noalias !3427
  store i32 %i.bf, ptr %i.ax, align 4, !tbaa !296, !noalias !3427
  %.not27.i19.i = icmp eq ptr %i.ax, %i.ai
  br i1 %.not27.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !66

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bl, %bb.n ], [ %i.aj, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bn, %bb.n ], [ %i.f, %bb.m ] ; 3 uses
  %.sroa.012.0.i.i.ph = phi ptr [ %.sroa.012.0.i.i, %bb.n ], [ %i.ak, %bb.m ]
  %i.bg = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bl, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.012.0.i.i = phi ptr [ %i.bh, %bb.o ], [ %.sroa.012.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %.sroa.012.0.i.i, i64 -4 ; 5 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !296, !noalias !3428 ; 2 uses
  %i.bj = load i32, ptr %i.bg, align 4, !tbaa !296, !noalias !3428 ; 2 uses
  %i.bk = icmp slt i32 %i.bi, %i.bj
  %i.bl = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 7 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !296, !noalias !3428 ; 2 uses
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bn = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4 ; 3 uses
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !296, !noalias !3428
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !296, !noalias !3428
  %i.bo = icmp eq ptr %i.bn, %i.ad
  br i1 %i.bo, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !67

bb.o:                                             ; preds = %.preheader.i.i
  store i32 %i.bi, ptr %i.bl, align 4, !tbaa !296, !noalias !3428
  store i32 %i.bm, ptr %i.bh, align 4, !tbaa !296, !noalias !3428
  %i.bp = icmp eq ptr %i.bh, %i.ai
  br i1 %i.bp, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !67

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.bu, %bb.q ], [ %i.aj, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.bw, %bb.q ], [ %i.f, %bb.p ] ; 3 uses
  %.sroa.012.0.i8.i.ph = phi ptr [ %.sroa.012.0.i8.i, %bb.q ], [ %i.ak, %bb.p ]
  %i.bq = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.bu, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.012.0.i8.i = phi ptr [ %i.br, %bb.r ], [ %.sroa.012.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 5 uses
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !296, !noalias !3429 ; 2 uses
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !296, !noalias !3429 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.bs, %i.bt
  %i.bu = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 7 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !296, !noalias !3429 ; 2 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bw = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 3 uses
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !296, !noalias !3429
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !296, !noalias !3429
  %i.bx = icmp eq ptr %i.bw, %i.ad
  br i1 %i.bx, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !68

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !296, !noalias !3429
  store i32 %i.bv, ptr %i.br, align 4, !tbaa !296, !noalias !3429
  %i.by = icmp eq ptr %i.br, %i.ai
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !68

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.am, %bb.h ], [ %i.ax, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.ak, %bb.p ], [ %i.ak, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bh, %bb.o ], [ %i.br, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.ad, %bb.q ], [ %i.ad, %bb.n ], [ %i.f, %bb.p ], [ %i.f, %bb.m ], [ %i.ad, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ad, %.split.i14.i ]
  %.sroa.064.0.ph = phi ptr [ %i.au, %bb.h ], [ %i.be, %bb.k ], [ %i.bu, %bb.r ], [ %i.bl, %bb.o ], [ %i.aj, %bb.p ], [ %i.aj, %bb.m ], [ %i.ar, %.split.i.i ], [ %i.bl, %bb.n ], [ %i.bu, %bb.q ], [ %i.bb, %.split.i14.i ]
  %.sroa.069.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.ag, %bb.r ], [ %i.ag, %bb.o ], [ %i.ag, %bb.p ], [ %i.ag, %bb.m ], [ %i.al, %.split.i.i ], [ %i.ag, %bb.n ], [ %i.ag, %bb.q ], [ %i.aw, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !441, !noalias !398
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !441, !noalias !398
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.064.0 = phi ptr [ %i.aj, %bb.f ], [ %i.aj, %bb.i ], [ %.sroa.064.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 17 uses
  %.sroa.069.0 = phi ptr [ %i.ag, %bb.f ], [ %i.ag, %bb.i ], [ %.sroa.069.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 16 uses
  %.sroa.069.0308 = ptrtoaddr ptr %.sroa.069.0 to i64
  store ptr %.sroa.064.0, ptr %6, align 8, !tbaa !441
  %i.bz = load ptr, ptr %3, align 8, !tbaa !441   ; 23 uses
  %i.ca = ptrtoaddr ptr %i.bz to i64              ; 4 uses
  %i.cb = icmp eq ptr %i.bz, %.sroa.064.0
  br i1 %i.cb, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.ah
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %bb.t
  %i.cc = shl i64 %.018.lcssa.i, 2
  %.neg393.a = add i64 %i.cc, 4
  %.neg394.a = mul i64 %.neg393.a, %7
  %i.cd = add i64 %.sroa.069.0308, -4             ; 2 uses
  %i.ce = add i64 %.neg394.a, %i.cd
  %i.cf = sub i64 %i.ce, %i.g                     ; 2 uses
  %i.cg = lshr i64 %i.cf, 2
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cf, 44
  br i1 %min.iters.check, label %.lr.ph.i28.preheader399, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %i.ci = shl i64 %.018.lcssa.i, 2
  %.neg395.a = add i64 %i.ci, 4
  %.neg396 = mul i64 %.neg395.a, %7
  %i.cj = add i64 %.neg396, %i.cd
  %i.ck = xor i64 %i.cj, -1
  %.not397 = add i64 %i.ck, %i.g
  %i.cl = and i64 %.not397, -4                    ; 2 uses
  %i.cm = getelementptr i8, ptr %.sroa.069.0, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.bz, i64 %i.cl
  %bound0 = icmp ult ptr %i.cm, %i.bz
  %bound1 = icmp ult ptr %i.cn, %.sroa.069.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader399, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, 9223372036854775800     ; 3 uses
  %i.co = mul i64 %n.vec, -4                      ; 2 uses
  %i.cp = getelementptr i8, ptr %i.bz, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %.sroa.069.0, i64 %i.co
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bz, i64 %i.cr ; 2 uses
  %next.gep309 = getelementptr i8, ptr %.sroa.069.0, i64 %i.cr ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %next.gep309, i64 -16 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %next.gep309, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cs, align 4, !tbaa !296, !alias.scope !3430, !noalias !3431
  %wide.load310 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !296, !alias.scope !3430, !noalias !3431
  %i.cu = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load311 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !296, !alias.scope !3432, !noalias !3433
  %wide.load312 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !296, !alias.scope !3432, !noalias !3433
  store <4 x i32> %wide.load311, ptr %i.cs, align 4, !tbaa !296, !alias.scope !3430, !noalias !3431
  store <4 x i32> %wide.load312, ptr %i.ct, align 4, !tbaa !296, !alias.scope !3430, !noalias !3431
  store <4 x i32> %wide.load, ptr %i.cu, align 4, !tbaa !296, !alias.scope !3432, !noalias !3433
  store <4 x i32> %wide.load310, ptr %i.cv, align 4, !tbaa !296, !alias.scope !3432, !noalias !3433
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !3406

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader399

.lr.ph.i28.preheader399:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.052.0.ph = phi ptr [ %i.bz, %vector.memcheck ], [ %i.bz, %.lr.ph.i28.preheader ], [ %i.cp, %middle.block ]
  %.ph = phi ptr [ %.sroa.069.0, %vector.memcheck ], [ %.sroa.069.0, %.lr.ph.i28.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader399, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.cz, %.lr.ph.i28 ], [ %.sroa.052.0.ph, %.lr.ph.i28.preheader399 ]
  %i.cx = phi ptr [ %i.cy, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader399 ]
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -4 ; 4 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 4 uses
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !296, !noalias !3433
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !296, !noalias !3433
  store i32 %i.db, ptr %i.cy, align 4, !tbaa !296, !noalias !3433
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !296, !noalias !3433
  %.not.i = icmp eq ptr %i.cy, %i.ah
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28, !llvm.loop !3407

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.bz, %i.ad           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %.reass = add i64 %i.ca, %invariant.op
  %i.dc = sub i64 %.reass, %i.g                   ; 2 uses
  %i.dd = lshr i64 %i.dc, 2
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check359 = icmp ult i64 %i.dc, 44
  br i1 %min.iters.check359, label %.lr.ph.i29.preheader403, label %vector.memcheck360

vector.memcheck360:                               ; preds = %.lr.ph.i29.preheader
  %reass.sub = sub i64 %i.ca, %i.g
  %.not390.a = add i64 %12, %reass.sub
  %i.df = and i64 %.not390.a, -4
  %13 = xor i64 %i.df, -4                         ; 3 uses
  %i.dg = getelementptr i8, ptr %.sroa.064.0, i64 %13 ; 2 uses
  %i.dh = getelementptr i8, ptr %.sroa.069.0, i64 %13 ; 2 uses
  %i.di = getelementptr i8, ptr %i.bz, i64 %13    ; 2 uses
  %bound0361 = icmp ult ptr %i.dg, %.sroa.069.0
  %bound1362 = icmp ult ptr %i.dh, %.sroa.064.0
  %found.conflict363 = and i1 %bound0361, %bound1362
  %bound0364 = icmp ult ptr %i.dg, %i.bz
  %bound1365 = icmp ult ptr %i.di, %.sroa.064.0
  %found.conflict366 = and i1 %bound0364, %bound1365
  %conflict.rdx = or i1 %found.conflict363, %found.conflict366
  %bound0367 = icmp ult ptr %i.dh, %i.bz
  %bound1368 = icmp ult ptr %i.di, %.sroa.069.0
  %found.conflict369 = and i1 %bound0367, %bound1368
  %conflict.rdx370 = or i1 %conflict.rdx, %found.conflict369
  br i1 %conflict.rdx370, label %.lr.ph.i29.preheader403, label %vector.ph371

vector.ph371:                                     ; preds = %vector.memcheck360
  %n.vec372 = and i64 %i.de, 9223372036854775800  ; 3 uses
  %i.dj = mul i64 %n.vec372, -4                   ; 3 uses
  %i.dk = getelementptr i8, ptr %.sroa.069.0, i64 %i.dj
  %i.dl = getelementptr i8, ptr %.sroa.064.0, i64 %i.dj ; 2 uses
  %i.dm = getelementptr i8, ptr %i.bz, i64 %i.dj
  br label %vector.body373

vector.body373:                                   ; preds = %vector.body373, %vector.ph371
  %index374 = phi i64 [ 0, %vector.ph371 ], [ %index.next384, %vector.body373 ] ; 2 uses
  %i.dn = mul i64 %index374, -4                   ; 3 uses
  %next.gep375 = getelementptr i8, ptr %.sroa.069.0, i64 %i.dn ; 2 uses
  %next.gep376 = getelementptr i8, ptr %.sroa.064.0, i64 %i.dn ; 2 uses
  %next.gep377 = getelementptr i8, ptr %i.bz, i64 %i.dn ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %next.gep376, i64 -16 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %next.gep376, i64 -32 ; 2 uses
  %wide.load378 = load <4 x i32>, ptr %i.do, align 4, !tbaa !296, !alias.scope !3434, !noalias !3435
  %wide.load379 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !296, !alias.scope !3434, !noalias !3435
  %i.dq = getelementptr inbounds i8, ptr %next.gep375, i64 -16 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %next.gep375, i64 -32 ; 2 uses
  %wide.load380 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !296, !alias.scope !3436, !noalias !3437
  %wide.load381 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !296, !alias.scope !3436, !noalias !3437
  store <4 x i32> %wide.load380, ptr %i.do, align 4, !tbaa !296, !alias.scope !3434, !noalias !3435
  store <4 x i32> %wide.load381, ptr %i.dp, align 4, !tbaa !296, !alias.scope !3434, !noalias !3435
  %i.ds = getelementptr inbounds i8, ptr %next.gep377, i64 -16 ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %next.gep377, i64 -32 ; 2 uses
  %wide.load382 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !296, !alias.scope !3438, !noalias !3439
  %wide.load383 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !296, !alias.scope !3438, !noalias !3439
  store <4 x i32> %wide.load382, ptr %i.dq, align 4, !tbaa !296, !alias.scope !3436, !noalias !3437
  store <4 x i32> %wide.load383, ptr %i.dr, align 4, !tbaa !296, !alias.scope !3436, !noalias !3437
  store <4 x i32> %wide.load378, ptr %i.ds, align 4, !tbaa !296, !alias.scope !3438, !noalias !3439
  store <4 x i32> %wide.load379, ptr %i.dt, align 4, !tbaa !296, !alias.scope !3438, !noalias !3439
  %index.next384 = add nuw i64 %index374, 8       ; 2 uses
  %i.du = icmp eq i64 %index.next384, %n.vec372
  br i1 %i.du, label %middle.block385, label %vector.body373, !llvm.loop !3414

middle.block385:                                  ; preds = %vector.body373
  %cmp.n386 = icmp eq i64 %i.de, %n.vec372
  br i1 %cmp.n386, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader403

.lr.ph.i29.preheader403:                          ; preds = %vector.memcheck360, %.lr.ph.i29.preheader, %middle.block385
  %.sroa.046.0.ph = phi ptr [ %.sroa.069.0, %vector.memcheck360 ], [ %.sroa.069.0, %.lr.ph.i29.preheader ], [ %i.dk, %middle.block385 ]
  %.sroa.045.0.ph = phi ptr [ %.sroa.064.0, %vector.memcheck360 ], [ %.sroa.064.0, %.lr.ph.i29.preheader ], [ %i.dl, %middle.block385 ]
  %.ph404 = phi ptr [ %i.bz, %vector.memcheck360 ], [ %i.bz, %.lr.ph.i29.preheader ], [ %i.dm, %middle.block385 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader403, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dx, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader403 ]
  %.sroa.045.0 = phi ptr [ %i.dy, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader403 ]
  %i.dv = phi ptr [ %i.dw, %.lr.ph.i29 ], [ %.ph404, %.lr.ph.i29.preheader403 ]
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -4 ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 3 uses
  %i.dy = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 4 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !296, !noalias !3439
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !296, !noalias !3439
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !296, !noalias !3439
  %i.eb = load i32, ptr %i.dw, align 4, !tbaa !296, !noalias !3439
  store i32 %i.eb, ptr %i.dx, align 4, !tbaa !296, !noalias !3439
  store i32 %i.dz, ptr %i.dw, align 4, !tbaa !296, !noalias !3439
  %.not.i30 = icmp eq ptr %i.dw, %i.ad
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29, !llvm.loop !3415

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %.reass517 = add i64 %i.ca, %invariant.op516
  %i.ec = sub i64 %.reass517, %i.g                ; 2 uses
  %i.ed = lshr i64 %i.ec, 2
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %min.iters.check322 = icmp ult i64 %i.ec, 28
  br i1 %min.iters.check322, label %.lr.ph.i.i.preheader400, label %vector.memcheck323

vector.memcheck323:                               ; preds = %.lr.ph.i.i.preheader
  %reass.sub392 = sub i64 %i.ca, %i.g
  %.not391.a = add i64 %12, %reass.sub392
  %i.ef = and i64 %.not391.a, -4
  %14 = xor i64 %i.ef, -4                         ; 2 uses
  %i.eg = getelementptr i8, ptr %i.bz, i64 %14
  %i.eh = getelementptr i8, ptr %.sroa.064.0, i64 %14
  %bound0324 = icmp ult ptr %i.eg, %.sroa.064.0
  %bound1325 = icmp ult ptr %i.eh, %i.bz
  %found.conflict326 = and i1 %bound0324, %bound1325
  br i1 %found.conflict326, label %.lr.ph.i.i.preheader400, label %vector.ph327

vector.ph327:                                     ; preds = %vector.memcheck323
  %n.vec328 = and i64 %i.ee, 9223372036854775800  ; 3 uses
  %i.ei = mul i64 %n.vec328, -4                   ; 2 uses
  %i.ej = getelementptr i8, ptr %.sroa.064.0, i64 %i.ei ; 2 uses
  %i.ek = getelementptr i8, ptr %i.bz, i64 %i.ei
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next337, %vector.body329 ] ; 2 uses
  %i.el = mul i64 %index330, -4                   ; 2 uses
  %next.gep331 = getelementptr i8, ptr %.sroa.064.0, i64 %i.el ; 2 uses
  %next.gep332 = getelementptr i8, ptr %i.bz, i64 %i.el ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %next.gep332, i64 -16 ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %next.gep332, i64 -32 ; 2 uses
  %wide.load333 = load <4 x i32>, ptr %i.em, align 4, !tbaa !296, !alias.scope !3440, !noalias !3441
  %wide.load334 = load <4 x i32>, ptr %i.en, align 4, !tbaa !296, !alias.scope !3440, !noalias !3441
  %i.eo = getelementptr inbounds i8, ptr %next.gep331, i64 -16 ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %next.gep331, i64 -32 ; 2 uses
  %wide.load335 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !296, !alias.scope !3442, !noalias !3443
  %wide.load336 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !296, !alias.scope !3442, !noalias !3443
  store <4 x i32> %wide.load335, ptr %i.em, align 4, !tbaa !296, !alias.scope !3440, !noalias !3441
  store <4 x i32> %wide.load336, ptr %i.en, align 4, !tbaa !296, !alias.scope !3440, !noalias !3441
  store <4 x i32> %wide.load333, ptr %i.eo, align 4, !tbaa !296, !alias.scope !3442, !noalias !3443
  store <4 x i32> %wide.load334, ptr %i.ep, align 4, !tbaa !296, !alias.scope !3442, !noalias !3443
  %index.next337 = add nuw i64 %index330, 8       ; 2 uses
  %i.eq = icmp eq i64 %index.next337, %n.vec328
  br i1 %i.eq, label %middle.block338, label %vector.body329, !llvm.loop !3423

middle.block338:                                  ; preds = %vector.body329
  %cmp.n339 = icmp eq i64 %i.ee, %n.vec328
  br i1 %cmp.n339, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader400

.lr.ph.i.i.preheader400:                          ; preds = %vector.memcheck323, %.lr.ph.i.i.preheader, %middle.block338
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %vector.memcheck323 ], [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.ej, %middle.block338 ]
  %.ph401 = phi ptr [ %i.bz, %vector.memcheck323 ], [ %i.bz, %.lr.ph.i.i.preheader ], [ %i.ek, %middle.block338 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader400, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.et, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader400 ]
  %i.er = phi ptr [ %i.es, %.lr.ph.i.i ], [ %.ph401, %.lr.ph.i.i.preheader400 ]
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -4 ; 4 uses
  %i.et = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !296, !noalias !3443
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !296, !noalias !3443
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !296, !noalias !3443
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !296, !noalias !3443
  %.not.i.i31 = icmp eq ptr %i.es, %i.ad
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !3424

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block385, %middle.block338, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ad, %bb.s ], [ %i.et, %.lr.ph.i.i ], [ %i.bz, %bb.t ], [ %i.cz, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.cp, %middle.block ], [ %i.ej, %middle.block338 ], [ %i.dl, %middle.block385 ], [ %i.dy, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !441
  %i.ew = load ptr, ptr %1, align 8, !tbaa !441   ; 4 uses
  %.neg98 = mul i64 %.018.lcssa.i, -4             ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.ad, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -4 ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ew, i64 -4 ; 2 uses
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !296
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !296
  store i32 %i.fb, ptr %i.ey, align 4, !tbaa !296
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !296
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fc = load ptr, ptr %2, align 8, !tbaa !441   ; 2 uses
  %i.fd = icmp eq ptr %i.ex, %i.fc
  br i1 %i.fd, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fe = icmp eq ptr %i.fc, %i.ew
  br i1 %i.fe, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.ew, %bb.y ], [ %i.ex, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !441
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, %bb.z, %.sink.split.i
  store ptr %i.ad, ptr %3, align 8, !tbaa !441
  %i.ff = load ptr, ptr %1, align 8, !tbaa !441
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -4 ; 2 uses
  store ptr %i.fg, ptr %1, align 8, !tbaa !441
  %i.fh = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.fh to i64
  %i.fi = add i64 %.0140, %.neg
  %i.fj = icmp ne i64 %i.ac, 0
  %.neg24 = sext i1 %i.fj to i64
  %i.fk = add i64 %.sroa.speculated, %.neg24
  %i.fl = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.fl, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3425

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit, %bb.a
  %i.fm = load ptr, ptr %6, align 8, !tbaa !441
  store ptr %i.fm, ptr %0, align 8, !tbaa !441
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !299    ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !299    ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !299    ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load i32, ptr %4, align 4, !tbaa !296
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.g = load i32, ptr %.07.i, align 4, !tbaa !296
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.c, !llvm.loop !59

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.i, %bb.d ] ; 10 uses
  %i.j = ptrtoint ptr %.0.lcssa.i to i64          ; 3 uses
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 %i.l ; 14 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.m, align 4, !tbaa !296
  %i.q = load i32, ptr %.0.lcssa.i, align 4, !tbaa !296
  store i32 %i.q, ptr %i.m, align 4, !tbaa !296
  %i.r = load i32, ptr %4, align 4, !tbaa !296
  store i32 %i.r, ptr %.0.lcssa.i, align 4, !tbaa !296
  %i.s = load i32, ptr %i.d, align 4, !tbaa !296
  store i32 %i.s, ptr %4, align 4, !tbaa !296
  store i32 %i.p, ptr %i.d, align 4, !tbaa !296
  %.03759.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %.04160.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %.not4861.i = icmp eq ptr %.04160.i, %1
  br i1 %.not4861.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04166.i = phi ptr [ %.041.i, %bb.j ], [ %.04160.i, %bb.f ] ; 10 uses
  %.03765.i = phi ptr [ %.037.i, %bb.j ], [ %.03759.i, %bb.f ] ; 5 uses
  %.064.i = phi ptr [ %.1.i, %bb.j ], [ %i.o, %bb.f ] ; 7 uses
  %.03563.i = phi ptr [ %.136.i, %bb.j ], [ %i.n, %bb.f ] ; 7 uses
  %.03962.i = phi ptr [ %.140.i, %bb.j ], [ %i.m, %bb.f ] ; 13 uses
  %i.t = icmp eq ptr %.03563.i, %3
  br i1 %i.t, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %i.u = add i64 %i.a, -8
  %i.v = shl i64 %indvar, 2
  %i.w = add i64 %i.v, %i.j
  %i.x = sub i64 %i.u, %i.w                       ; 3 uses
  %i.y = lshr i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 92
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader302, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.aa = shl i64 %indvar, 2
  %i.ab = and i64 %i.x, -4                        ; 2 uses
  %i.ac = getelementptr i8, ptr %.0.lcssa.i, i64 %i.aa
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.ab
  %i.af = getelementptr i8, ptr %.03962.i, i64 %i.ab
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %bound0 = icmp ult ptr %.04166.i, %i.ag
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESF_SH_SH_SH_SH_T0_T1_:bb.a
  %n.vec164 = and i64 %i.dy, 9223372036854775800  ; 3 uses
  %i.ed = shl i64 %n.vec164, 2                    ; 2 uses
  %i.ee = getelementptr i8, ptr %.02345.i48, i64 %i.ed
  %i.ef = getelementptr i8, ptr %.02246.i47, i64 %i.ed
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.eg = shl i64 %index166, 2                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %.02345.i48, i64 %i.eg ; 2 uses
  %next.gep168 = getelementptr i8, ptr %.02246.i47, i64 %i.eg ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <4 x i32>, ptr %next.gep168, align 4, !tbaa !296
  %wide.load170 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !296
  %i.ei = getelementptr i8, ptr %next.gep167, i64 16
  store <4 x i32> %wide.load169, ptr %next.gep167, align 4, !tbaa !296
  store <4 x i32> %wide.load170, ptr %i.ei, align 4, !tbaa !296
  %index.next171 = add nuw i64 %index166, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.ej, label %middle.block172, label %vector.body165, !llvm.loop !3628

middle.block172:                                  ; preds = %vector.body165
  %cmp.n173 = icmp eq i64 %i.dy, %n.vec164
  br i1 %cmp.n173, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit70, label %.lr.ph.i.i.i66.preheader255

.lr.ph.i.i.i66.preheader255:                      ; preds = %vector.memcheck161, %.lr.ph.i.i.i66.preheader, %middle.block172
  %.010.i.i.i67.ph = phi ptr [ %.02345.i48, %vector.memcheck161 ], [ %.02345.i48, %.lr.ph.i.i.i66.preheader ], [ %i.ee, %middle.block172 ]
  %.079.i.i.i68.ph = phi ptr [ %.02246.i47, %vector.memcheck161 ], [ %.02246.i47, %.lr.ph.i.i.i66.preheader ], [ %i.ef, %middle.block172 ]
  br label %.lr.ph.i.i.i66

.lr.ph.i.i.i66:                                   ; preds = %.lr.ph.i.i.i66.preheader255, %.lr.ph.i.i.i66
  %.010.i.i.i67 = phi ptr [ %i.em, %.lr.ph.i.i.i66 ], [ %.010.i.i.i67.ph, %.lr.ph.i.i.i66.preheader255 ] ; 2 uses
  %.079.i.i.i68 = phi ptr [ %i.el, %.lr.ph.i.i.i66 ], [ %.079.i.i.i68.ph, %.lr.ph.i.i.i66.preheader255 ] ; 2 uses
  %i.ek = load i32, ptr %.079.i.i.i68, align 4, !tbaa !296
  store i32 %i.ek, ptr %.010.i.i.i67, align 4, !tbaa !296
  %i.el = getelementptr inbounds nuw i8, ptr %.079.i.i.i68, i64 4 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.010.i.i.i67, i64 4
  %.not.i.i.i69 = icmp eq ptr %i.el, %i.dt
  br i1 %.not.i.i.i69, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit70, label %.lr.ph.i.i.i66, !llvm.loop !3629

bb.e:                                             ; preds = %.lr.ph.i46
  %i.en = load i32, ptr %.02246.i47, align 4, !tbaa !296 ; 2 uses
  %i.eo = load i32, ptr %.02444.i49, align 4, !tbaa !296 ; 2 uses
  %i.ep = icmp slt i32 %i.en, %i.eo               ; 2 uses
  %.sink.i50 = tail call i32 @llvm.smin.i32(i32 %i.en, i32 %i.eo)
  %.125.idx.i51 = select i1 %i.ep, i64 0, i64 4
  %.125.i52 = getelementptr inbounds nuw i8, ptr %.02444.i49, i64 %.125.idx.i51 ; 2 uses
  %.1.idx.i53 = select i1 %i.ep, i64 4, i64 0
  %.1.i54 = getelementptr inbounds nuw i8, ptr %.02246.i47, i64 %.1.idx.i53 ; 2 uses
  store i32 %.sink.i50, ptr %.02345.i48, align 4, !tbaa !296
  %i.eq = getelementptr inbounds nuw i8, ptr %.02345.i48, i64 4 ; 2 uses
  %.not.i55 = icmp eq ptr %.1.i54, %i.dt
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i55, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i56, label %.lr.ph.i46, !llvm.loop !3623

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i56: ; preds = %bb.e, %bb.d
  %.024.lcssa.i57 = phi ptr [ %.0.lcssa, %bb.d ], [ %.125.i52, %bb.e ] ; 6 uses
  %.023.lcssa.i58 = phi ptr [ %i.dr, %bb.d ], [ %i.eq, %bb.e ] ; 5 uses
  %.not27.i59 = icmp eq ptr %.023.lcssa.i58, %.024.lcssa.i57
  %.not8.i.i28.i60 = icmp eq ptr %.024.lcssa.i57, %i.ds
  %or.cond38.i61 = or i1 %.not8.i.i28.i60, %.not27.i59
  br i1 %or.cond38.i61, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit70, label %.lr.ph.i.i29.i62.preheader

.lr.ph.i.i29.i62.preheader:                       ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i56
  %.024.lcssa.i57150 = ptrtoaddr ptr %.024.lcssa.i57 to i64 ; 2 uses
  %.023.lcssa.i58149 = ptrtoaddr ptr %.023.lcssa.i58 to i64
  %i.er = add i64 %.idx, %.0.lcssa148
  %i.es = add i64 %i.er, -4
  %i.et = sub i64 %i.es, %.024.lcssa.i57150       ; 2 uses
  %i.eu = lshr i64 %i.et, 2
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.et, 28
  %i.ew = sub i64 %.024.lcssa.i57150, %.023.lcssa.i58149
  %diff.check = icmp ugt i64 %i.ew, -32
  %or.cond249 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond249, label %.lr.ph.i.i29.i62.preheader254, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i29.i62.preheader
  %n.vec = and i64 %i.ev, 9223372036854775800     ; 3 uses
  %i.ex = shl i64 %n.vec, 2                       ; 2 uses
  %i.ey = getelementptr i8, ptr %.023.lcssa.i58, i64 %i.ex
  %i.ez = getelementptr i8, ptr %.024.lcssa.i57, i64 %i.ex
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.023.lcssa.i58, i64 %i.fa ; 2 uses
  %next.gep151 = getelementptr i8, ptr %.024.lcssa.i57, i64 %i.fa ; 2 uses
  %i.fb = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep151, align 4, !tbaa !296
  %wide.load152 = load <4 x i32>, ptr %i.fb, align 4, !tbaa !296
  %i.fc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296
  store <4 x i32> %wide.load152, ptr %i.fc, align 4, !tbaa !296
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !3630

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ev, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit70, label %.lr.ph.i.i29.i62.preheader254

.lr.ph.i.i29.i62.preheader254:                    ; preds = %.lr.ph.i.i29.i62.preheader, %middle.block
  %.010.i.i30.i63.ph = phi ptr [ %.023.lcssa.i58, %.lr.ph.i.i29.i62.preheader ], [ %i.ey, %middle.block ]
  %.079.i.i31.i64.ph = phi ptr [ %.024.lcssa.i57, %.lr.ph.i.i29.i62.preheader ], [ %i.ez, %middle.block ]
  br label %.lr.ph.i.i29.i62

.lr.ph.i.i29.i62:                                 ; preds = %.lr.ph.i.i29.i62.preheader254, %.lr.ph.i.i29.i62
  %.010.i.i30.i63 = phi ptr [ %i.fg, %.lr.ph.i.i29.i62 ], [ %.010.i.i30.i63.ph, %.lr.ph.i.i29.i62.preheader254 ] ; 2 uses
  %.079.i.i31.i64 = phi ptr [ %i.ff, %.lr.ph.i.i29.i62 ], [ %.079.i.i31.i64.ph, %.lr.ph.i.i29.i62.preheader254 ] ; 2 uses
  %i.fe = load i32, ptr %.079.i.i31.i64, align 4, !tbaa !296
  store i32 %i.fe, ptr %.010.i.i30.i63, align 4, !tbaa !296
  %i.ff = getelementptr inbounds nuw i8, ptr %.079.i.i31.i64, i64 4 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.010.i.i30.i63, i64 4
  %.not.i.i32.i65 = icmp eq ptr %i.ff, %i.ds
  br i1 %.not.i.i32.i65, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit70, label %.lr.ph.i.i29.i62, !llvm.loop !3631

bb.f:                                             ; preds = %._crit_edge
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.04189, i64 %1
  %i.fi = sub i64 0, %.04288                      ; 4 uses
  %.not8.i.i = icmp samesign eq i64 %.039.lcssa, %1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit70, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.fj = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %i.fi ; 3 uses
  %.reass = add i64 %.04189157, %invariant.op
  %i.fk = sub i64 %.reass, %.0.lcssa148           ; 2 uses
  %i.fl = lshr i64 %i.fk, 2
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %min.iters.check181 = icmp ult i64 %i.fk, 28
  %i.fn = shl i64 %.04288, 2
  %diff.check183 = icmp ugt i64 %i.fn, -32
  %or.cond250 = or i1 %min.iters.check181, %diff.check183
  br i1 %or.cond250, label %.lr.ph.i.i.preheader257, label %vector.ph184

vector.ph184:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec185 = and i64 %i.fm, 9223372036854775800  ; 3 uses
  %i.fo = shl i64 %n.vec185, 2                    ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fj, i64 %i.fo
  %i.fq = getelementptr i8, ptr %.0.lcssa, i64 %i.fo
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next192, %vector.body186 ] ; 2 uses
  %i.fr = shl i64 %index187, 2                    ; 2 uses
  %next.gep188 = getelementptr i8, ptr %i.fj, i64 %i.fr ; 2 uses
  %next.gep189 = getelementptr i8, ptr %.0.lcssa, i64 %i.fr ; 2 uses
  %i.fs = getelementptr i8, ptr %next.gep189, i64 16
  %wide.load190 = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !296
  %wide.load191 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !296
  %i.ft = getelementptr i8, ptr %next.gep188, i64 16
  store <4 x i32> %wide.load190, ptr %next.gep188, align 4, !tbaa !296
  store <4 x i32> %wide.load191, ptr %i.ft, align 4, !tbaa !296
  %index.next192 = add nuw i64 %index187, 8       ; 2 uses
  %i.fu = icmp eq i64 %index.next192, %n.vec185
  br i1 %i.fu, label %middle.block193, label %vector.body186, !llvm.loop !3632

middle.block193:                                  ; preds = %vector.body186
  %cmp.n194 = icmp eq i64 %i.fm, %n.vec185
  br i1 %cmp.n194, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit70, label %.lr.ph.i.i.preheader257

.lr.ph.i.i.preheader257:                          ; preds = %.lr.ph.i.i.preheader, %middle.block193
  %.010.i.i.ph = phi ptr [ %i.fj, %.lr.ph.i.i.preheader ], [ %i.fp, %middle.block193 ]
  %.079.i.i.ph = phi ptr [ %.0.lcssa, %.lr.ph.i.i.preheader ], [ %i.fq, %middle.block193 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader257, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.fx, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader257 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.fw, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader257 ] ; 2 uses
  %i.fv = load i32, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.fv, ptr %.010.i.i, align 4, !tbaa !296
  %i.fw = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.fw, %i.fh
  br i1 %.not.i.i, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit70, label %.lr.ph.i.i, !llvm.loop !3633

_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit70: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i66, %.lr.ph.i.i29.i62, %middle.block193, %middle.block172, %middle.block, %bb.f, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i56
  %.pre-phi = phi i64 [ %i.dq, %middle.block172 ], [ %i.dq, %middle.block ], [ %i.dq, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i56 ], [ %i.fi, %bb.f ], [ %i.fi, %middle.block193 ], [ %i.dq, %.lr.ph.i.i.i66 ], [ %i.dq, %.lr.ph.i.i29.i62 ], [ %i.fi, %.lr.ph.i.i ]
  %i.fy = getelementptr inbounds [4 x i8], ptr %.04189, i64 %.pre-phi
  %i.fz = sub nuw i64 %.04090, %.04288            ; 2 uses
  %i.ga = icmp ult i64 %i.d, %3
  %i.gb = icmp uge i64 %i.fz, %i.d
  %i.gc = select i1 %i.ga, i1 %i.gb, i1 false
  br i1 %i.gc, label %.preheader, label %._crit_edge91, !llvm.loop !3634

._crit_edge91:                                    ; preds = %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit70, %bb.a
  %.042.lcssa = phi i64 [ %2, %bb.a ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit70 ]
  ret i64 %.042.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESF_SH_SH_SH_SH_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = icmp uge i64 %4, %2
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge88

.preheader.lr.ph:                                 ; preds = %bb.a
  %.idx68 = shl i64 %1, 2                         ; 5 uses
  %5 = add i64 %.idx68, -4                        ; 2 uses
  %invariant.op = add i64 %.idx68, -4
  %invariant.op339 = add i64 %.idx68, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67
  %.04087 = phi i64 [ %4, %.preheader.lr.ph ], [ %i.gt, %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67 ]
  %.04186 = phi ptr [ %0, %.preheader.lr.ph ], [ %i.gs, %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67 ] ; 8 uses
  %.04285 = phi i64 [ %2, %.preheader.lr.ph ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67 ] ; 16 uses
  %.04186168 = ptrtoaddr ptr %.04186 to i64       ; 7 uses
  %i.d = shl i64 %.04285, 1                       ; 8 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.f = sub i64 0, %.04285
  %.not43.i = icmp eq i64 %.04285, 0
  %i.g = shl i64 %.04285, 3                       ; 3 uses
  %i.h = add i64 %.04186168, -4                   ; 2 uses
  %i.i = shl i64 %.04285, 2                       ; 2 uses
  %i.j = add i64 %i.h, %i.i
  %i.k = add i64 %i.h, %i.g
  %i.l = shl i64 %.04285, 3                       ; 2 uses
  %i.m = add i64 %i.l, %.04186168
  %i.n = add i64 %i.m, -4
  %i.o = shl i64 %.04285, 2
  %i.p = add i64 %i.o, %.04186168
  %i.q = add i64 %i.p, -4
  %i.r = shl i64 %.04285, 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit
  %indvar232 = phi i64 [ 0, %.lr.ph ], [ %indvar.next233, %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit ] ; 5 uses
  %.080 = phi ptr [ %.04186, %.lr.ph ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit ] ; 5 uses
  %.03979 = phi i64 [ 0, %.lr.ph ], [ %i.dp, %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit ]
  %i.s = getelementptr [4 x i8], ptr %.080, i64 %i.f ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.080, i64 %.04285 ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.080, i64 %i.d ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.f
  %indvar267 = phi i64 [ %indvar.next268, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.02246.i = phi ptr [ %.1.i, %bb.f ], [ %i.t, %bb.b ] ; 11 uses
  %.02345.i = phi ptr [ %i.bx, %bb.f ], [ %i.s, %bb.b ] ; 9 uses
  %.02444.i = phi ptr [ %.125.i, %bb.f ], [ %.080, %bb.b ] ; 5 uses
  %i.v = icmp eq ptr %.02444.i, %i.t
  br i1 %i.v, label %.lr.ph.i.i.i.preheader, label %bb.c

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %.02246.i266.le = ptrtoaddr ptr %.02246.i to i64 ; 2 uses
  %i.w = mul i64 %indvar232, %i.l
  %i.x = add i64 %i.n, %i.w                       ; 2 uses
  %i.y = sub i64 %i.x, %.02246.i266.le            ; 2 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check270 = icmp ult i64 %i.y, 28
  br i1 %min.iters.check270, label %.lr.ph.i.i.i.preheader296, label %vector.memcheck271

vector.memcheck271:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = mul i64 %indvar232, %i.g                ; 2 uses
  %i.ac = add i64 %i.k, %i.ab
  %i.ad = sub i64 %i.ac, %.02246.i266.le
  %i.ae = and i64 %i.ad, -4                       ; 2 uses
  %i.af = getelementptr i8, ptr %.02246.i, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %reass.sub = sub i64 %i.ab, %i.i
  %i.ah = shl i64 %indvar267, 2
  %i.ai = getelementptr i8, ptr %.04186, i64 %reass.sub
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ah
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.ae
  %bound0272 = icmp ult ptr %.02246.i, %i.al
  %bound1273 = icmp ult ptr %.02345.i, %i.ag
  %found.conflict274 = and i1 %bound0272, %bound1273
  br i1 %found.conflict274, label %.lr.ph.i.i.i.preheader296, label %vector.ph275

vector.ph275:                                     ; preds = %vector.memcheck271
  %n.vec276 = and i64 %i.aa, 9223372036854775800  ; 3 uses
  %i.am = shl i64 %n.vec276, 2                    ; 2 uses
  %i.an = getelementptr i8, ptr %.02345.i, i64 %i.am
  %i.ao = getelementptr i8, ptr %.02246.i, i64 %i.am
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph275
  %index278 = phi i64 [ 0, %vector.ph275 ], [ %index.next285, %vector.body277 ] ; 2 uses
  %i.ap = shl i64 %index278, 2                    ; 2 uses
  %next.gep279 = getelementptr i8, ptr %.02345.i, i64 %i.ap ; 3 uses
  %next.gep280 = getelementptr i8, ptr %.02246.i, i64 %i.ap ; 3 uses
  %i.aq = getelementptr i8, ptr %next.gep280, i64 16 ; 2 uses
  %wide.load281 = load <4 x i32>, ptr %next.gep280, align 4, !tbaa !296, !alias.scope !3665, !noalias !3666
  %wide.load282 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !296, !alias.scope !3665, !noalias !3666
  %i.ar = getelementptr i8, ptr %next.gep279, i64 16 ; 2 uses
  %wide.load283 = load <4 x i32>, ptr %next.gep279, align 4, !tbaa !296, !alias.scope !3666
  %wide.load284 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !296, !alias.scope !3666
  store <4 x i32> %wide.load283, ptr %next.gep280, align 4, !tbaa !296, !alias.scope !3665, !noalias !3666
  store <4 x i32> %wide.load284, ptr %i.aq, align 4, !tbaa !296, !alias.scope !3665, !noalias !3666
  store <4 x i32> %wide.load281, ptr %next.gep279, align 4, !tbaa !296, !alias.scope !3666
  store <4 x i32> %wide.load282, ptr %i.ar, align 4, !tbaa !296, !alias.scope !3666
  %index.next285 = add nuw i64 %index278, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next285, %n.vec276
  br i1 %i.as, label %middle.block286, label %vector.body277, !llvm.loop !3638

middle.block286:                                  ; preds = %vector.body277
  %cmp.n287 = icmp eq i64 %i.aa, %n.vec276
  br i1 %cmp.n287, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit, label %.lr.ph.i.i.i.preheader296

.lr.ph.i.i.i.preheader296:                        ; preds = %vector.memcheck271, %.lr.ph.i.i.i.preheader, %middle.block286
  %.010.i.i.i.ph = phi ptr [ %.02345.i, %vector.memcheck271 ], [ %.02345.i, %.lr.ph.i.i.i.preheader ], [ %i.an, %middle.block286 ] ; 2 uses
  %.079.i.i.i.ph = phi ptr [ %.02246.i, %vector.memcheck271 ], [ %.02246.i, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block286 ] ; 3 uses
  %.079.i.i.i.ph316 = ptrtoaddr ptr %.079.i.i.i.ph to i64
  %i.at = sub i64 %i.x, %.079.i.i.i.ph316         ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader296, %.lr.ph.i.i.i.prol
  %.010.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.i.i.i.prol ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader296 ] ; 3 uses
  %.079.i.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i.i.prol ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader296 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader296 ]
  %i.aw = load i32, ptr %.079.i.i.i.prol, align 4, !tbaa !296
  %i.ax = load i32, ptr %.010.i.i.i.prol, align 4, !tbaa !296
  store i32 %i.ax, ptr %.079.i.i.i.prol, align 4, !tbaa !296
  store i32 %i.aw, ptr %.010.i.i.i.prol, align 4, !tbaa !296
  %i.ay = getelementptr inbounds nuw i8, ptr %.079.i.i.i.prol, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.010.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !3639

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader296
  %.010.i.i.i.unr = phi ptr [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader296 ], [ %i.az, %.lr.ph.i.i.i.prol ]
  %.079.i.i.i.unr = phi ptr [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader296 ], [ %i.ay, %.lr.ph.i.i.i.prol ]
  %i.ba = icmp ult i64 %i.at, 12
  br i1 %i.ba, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i ], [ %.010.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %.079.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i ], [ %.079.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bb = load i32, ptr %.079.i.i.i, align 4, !tbaa !296
  %i.bc = load i32, ptr %.010.i.i.i, align 4, !tbaa !296
  store i32 %i.bc, ptr %.079.i.i.i, align 4, !tbaa !296
  store i32 %i.bb, ptr %.010.i.i.i, align 4, !tbaa !296
  %i.bd = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !296
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !296
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !296
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !296
  %i.bh = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8 ; 2 uses
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !296
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !296
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !296
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !296
  %i.bl = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 12 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 12 ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !296
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !296
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !296
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !296
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq ptr %i.bp, %i.u
  br i1 %.not.i.i.i.3, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit, label %.lr.ph.i.i.i, !llvm.loop !3640

bb.c:                                             ; preds = %.lr.ph.i
  %i.br = load i32, ptr %.02246.i, align 4, !tbaa !296 ; 2 uses
  %i.bs = load i32, ptr %.02444.i, align 4, !tbaa !296 ; 2 uses
  %i.bt = icmp slt i32 %i.br, %i.bs
  %i.bu = load i32, ptr %.02345.i, align 4, !tbaa !296 ; 2 uses
  br i1 %i.bt, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.br, ptr %.02345.i, align 4, !tbaa !296
  store i32 %i.bu, ptr %.02246.i, align 4, !tbaa !296
  %i.bv = getelementptr inbounds nuw i8, ptr %.02246.i, i64 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 %i.bs, ptr %.02345.i, align 4, !tbaa !296
  store i32 %i.bu, ptr %.02444.i, align 4, !tbaa !296
  %i.bw = getelementptr inbounds nuw i8, ptr %.02444.i, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.125.i = phi ptr [ %.02444.i, %bb.d ], [ %i.bw, %bb.e ] ; 2 uses
  %.1.i = phi ptr [ %i.bv, %bb.d ], [ %.02246.i, %bb.e ] ; 2 uses
  %i.bx = getelementptr i8, ptr %.02345.i, i64 4  ; 2 uses
  %.not.i = icmp eq ptr %.1.i, %i.u
  %indvar.next268 = add i64 %indvar267, 1
  br i1 %.not.i, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i, label %.lr.ph.i, !llvm.loop !3641

_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i: ; preds = %bb.f, %bb.b
  %.024.lcssa.i = phi ptr [ %.080, %bb.b ], [ %.125.i, %bb.f ] ; 9 uses
  %.023.lcssa.i = phi ptr [ %i.s, %bb.b ], [ %i.bx, %bb.f ] ; 7 uses
  %.024.lcssa.i234 = ptrtoaddr ptr %.024.lcssa.i to i64 ; 2 uses
  %.not27.i = icmp eq ptr %.023.lcssa.i, %.024.lcssa.i
  %.not8.i.i28.i = icmp eq ptr %.024.lcssa.i, %i.t
  %or.cond38.i = or i1 %.not8.i.i28.i, %.not27.i
  br i1 %or.cond38.i, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit, label %.lr.ph.i.i29.i.preheader

.lr.ph.i.i29.i.preheader:                         ; preds = %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i
  %i.by = mul i64 %indvar232, %i.r
  %i.bz = add i64 %i.q, %i.by                     ; 2 uses
  %i.ca = sub i64 %i.bz, %.024.lcssa.i234         ; 2 uses
  %i.cb = lshr i64 %i.ca, 2
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check236 = icmp ult i64 %i.ca, 28
  br i1 %min.iters.check236, label %.lr.ph.i.i29.i.preheader295, label %vector.memcheck237

vector.memcheck237:                               ; preds = %.lr.ph.i.i29.i.preheader
  %i.cd = mul i64 %indvar232, %i.g
  %i.ce = add i64 %i.j, %i.cd
  %i.cf = sub i64 %i.ce, %.024.lcssa.i234
  %i.cg = and i64 %i.cf, -4
  %i.ch = add i64 %i.cg, 4                        ; 2 uses
  %i.ci = getelementptr i8, ptr %.024.lcssa.i, i64 %i.ch
  %i.cj = getelementptr i8, ptr %.023.lcssa.i, i64 %i.ch
  %bound0238 = icmp ult ptr %.024.lcssa.i, %i.cj
  %bound1239 = icmp ult ptr %.023.lcssa.i, %i.ci
  %found.conflict240 = and i1 %bound0238, %bound1239
  br i1 %found.conflict240, label %.lr.ph.i.i29.i.preheader295, label %vector.ph241

vector.ph241:                                     ; preds = %vector.memcheck237
  %n.vec242 = and i64 %i.cc, 9223372036854775800  ; 3 uses
  %i.ck = shl i64 %n.vec242, 2                    ; 2 uses
  %i.cl = getelementptr i8, ptr %.023.lcssa.i, i64 %i.ck
  %i.cm = getelementptr i8, ptr %.024.lcssa.i, i64 %i.ck
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph241
  %index244 = phi i64 [ 0, %vector.ph241 ], [ %index.next251, %vector.body243 ] ; 2 uses
  %i.cn = shl i64 %index244, 2                    ; 2 uses
  %next.gep245 = getelementptr i8, ptr %.023.lcssa.i, i64 %i.cn ; 3 uses
  %next.gep246 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cn ; 3 uses
  %i.co = getelementptr i8, ptr %next.gep246, i64 16 ; 2 uses
  %wide.load247 = load <4 x i32>, ptr %next.gep246, align 4, !tbaa !296, !alias.scope !3667, !noalias !3668
  %wide.load248 = load <4 x i32>, ptr %i.co, align 4, !tbaa !296, !alias.scope !3667, !noalias !3668
  %i.cp = getelementptr i8, ptr %next.gep245, i64 16 ; 2 uses
  %wide.load249 = load <4 x i32>, ptr %next.gep245, align 4, !tbaa !296, !alias.scope !3668
  %wide.load250 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !296, !alias.scope !3668
  store <4 x i32> %wide.load249, ptr %next.gep246, align 4, !tbaa !296, !alias.scope !3667, !noalias !3668
  store <4 x i32> %wide.load250, ptr %i.co, align 4, !tbaa !296, !alias.scope !3667, !noalias !3668
  store <4 x i32> %wide.load247, ptr %next.gep245, align 4, !tbaa !296, !alias.scope !3668
  store <4 x i32> %wide.load248, ptr %i.cp, align 4, !tbaa !296, !alias.scope !3668
  %index.next251 = add nuw i64 %index244, 8       ; 2 uses
  %i.cq = icmp eq i64 %index.next251, %n.vec242
  br i1 %i.cq, label %middle.block252, label %vector.body243, !llvm.loop !3645

middle.block252:                                  ; preds = %vector.body243
  %cmp.n253 = icmp eq i64 %i.cc, %n.vec242
  br i1 %cmp.n253, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit, label %.lr.ph.i.i29.i.preheader295

.lr.ph.i.i29.i.preheader295:                      ; preds = %vector.memcheck237, %.lr.ph.i.i29.i.preheader, %middle.block252
  %.010.i.i30.i.ph = phi ptr [ %.023.lcssa.i, %vector.memcheck237 ], [ %.023.lcssa.i, %.lr.ph.i.i29.i.preheader ], [ %i.cl, %middle.block252 ] ; 2 uses
  %.079.i.i31.i.ph = phi ptr [ %.024.lcssa.i, %vector.memcheck237 ], [ %.024.lcssa.i, %.lr.ph.i.i29.i.preheader ], [ %i.cm, %middle.block252 ] ; 3 uses
  %.079.i.i31.i.ph317 = ptrtoaddr ptr %.079.i.i31.i.ph to i64
  %i.cr = sub i64 %i.bz, %.079.i.i31.i.ph317      ; 2 uses
  %i.cs = lshr i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 1
  %xtraiter318 = and i64 %i.ct, 3                 ; 2 uses
  %lcmp.mod319.not = icmp eq i64 %xtraiter318, 0
  br i1 %lcmp.mod319.not, label %.lr.ph.i.i29.i.prol.loopexit, label %.lr.ph.i.i29.i.prol

.lr.ph.i.i29.i.prol:                              ; preds = %.lr.ph.i.i29.i.preheader295, %.lr.ph.i.i29.i.prol
  %.010.i.i30.i.prol = phi ptr [ %i.cx, %.lr.ph.i.i29.i.prol ], [ %.010.i.i30.i.ph, %.lr.ph.i.i29.i.preheader295 ] ; 3 uses
  %.079.i.i31.i.prol = phi ptr [ %i.cw, %.lr.ph.i.i29.i.prol ], [ %.079.i.i31.i.ph, %.lr.ph.i.i29.i.preheader295 ] ; 3 uses
  %prol.iter320 = phi i64 [ %prol.iter320.next, %.lr.ph.i.i29.i.prol ], [ 0, %.lr.ph.i.i29.i.preheader295 ]
  %i.cu = load i32, ptr %.079.i.i31.i.prol, align 4, !tbaa !296
  %i.cv = load i32, ptr %.010.i.i30.i.prol, align 4, !tbaa !296
  store i32 %i.cv, ptr %.079.i.i31.i.prol, align 4, !tbaa !296
  store i32 %i.cu, ptr %.010.i.i30.i.prol, align 4, !tbaa !296
  %i.cw = getelementptr inbounds nuw i8, ptr %.079.i.i31.i.prol, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.010.i.i30.i.prol, i64 4 ; 2 uses
  %prol.iter320.next = add i64 %prol.iter320, 1   ; 2 uses
  %prol.iter320.cmp.not = icmp eq i64 %prol.iter320.next, %xtraiter318
  br i1 %prol.iter320.cmp.not, label %.lr.ph.i.i29.i.prol.loopexit, label %.lr.ph.i.i29.i.prol, !llvm.loop !3646

.lr.ph.i.i29.i.prol.loopexit:                     ; preds = %.lr.ph.i.i29.i.prol, %.lr.ph.i.i29.i.preheader295
  %.010.i.i30.i.unr = phi ptr [ %.010.i.i30.i.ph, %.lr.ph.i.i29.i.preheader295 ], [ %i.cx, %.lr.ph.i.i29.i.prol ]
  %.079.i.i31.i.unr = phi ptr [ %.079.i.i31.i.ph, %.lr.ph.i.i29.i.preheader295 ], [ %i.cw, %.lr.ph.i.i29.i.prol ]
  %i.cy = icmp ult i64 %i.cr, 12
  br i1 %i.cy, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit, label %.lr.ph.i.i29.i

.lr.ph.i.i29.i:                                   ; preds = %.lr.ph.i.i29.i.prol.loopexit, %.lr.ph.i.i29.i
  %.010.i.i30.i = phi ptr [ %i.do, %.lr.ph.i.i29.i ], [ %.010.i.i30.i.unr, %.lr.ph.i.i29.i.prol.loopexit ] ; 6 uses
  %.079.i.i31.i = phi ptr [ %i.dn, %.lr.ph.i.i29.i ], [ %.079.i.i31.i.unr, %.lr.ph.i.i29.i.prol.loopexit ] ; 6 uses
  %i.cz = load i32, ptr %.079.i.i31.i, align 4, !tbaa !296
  %i.da = load i32, ptr %.010.i.i30.i, align 4, !tbaa !296
  store i32 %i.da, ptr %.079.i.i31.i, align 4, !tbaa !296
  store i32 %i.cz, ptr %.010.i.i30.i, align 4, !tbaa !296
  %i.db = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 4 ; 2 uses
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !296
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !296
  store i32 %i.de, ptr %i.db, align 4, !tbaa !296
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !296
  %i.df = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 8 ; 2 uses
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !296
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !296
  store i32 %i.di, ptr %i.df, align 4, !tbaa !296
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !296
  %i.dj = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 12 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 12 ; 2 uses
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !296
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !296
  store i32 %i.dm, ptr %i.dj, align 4, !tbaa !296
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !296
  %i.dn = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 16
  %.not.i.i32.i.3 = icmp eq ptr %i.dn, %i.t
  br i1 %.not.i.i32.i.3, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit, label %.lr.ph.i.i29.i, !llvm.loop !3647

_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.lr.ph.i.i29.i.prol.loopexit, %.lr.ph.i.i29.i, %middle.block286, %middle.block252, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i
  %i.dp = add i64 %.03979, %i.d                   ; 4 uses
  %.0.idx = shl i64 %i.dp, 2                      ; 2 uses
  %.0 = getelementptr i8, ptr %.04186, i64 %.0.idx ; 2 uses
  %i.dq = sub i64 %1, %i.dp                       ; 2 uses
  %i.dr = icmp ugt i64 %i.dq, %i.d
  %indvar.next233 = add i64 %indvar232, 1
  br i1 %i.dr, label %bb.b, label %._crit_edge, !llvm.loop !3648

._crit_edge:                                      ; preds = %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit, %.preheader
  %.039.lcssa = phi i64 [ 0, %.preheader ], [ %i.dp, %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit ]
  %.0.idx.lcssa = phi i64 [ 0, %.preheader ], [ %.0.idx, %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit ]
  %.0.lcssa = phi ptr [ %.04186, %.preheader ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit ] ; 14 uses
  %.lcssa75 = phi i64 [ %1, %.preheader ], [ %i.dq, %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit ]
  %.0.lcssa152 = ptrtoaddr ptr %.0.lcssa to i64   ; 3 uses
  %i.ds = icmp ugt i64 %.lcssa75, %.04285
  br i1 %i.ds, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge
  %i.dt = sub i64 0, %.04285                      ; 6 uses
  %i.du = getelementptr [4 x i8], ptr %.0.lcssa, i64 %i.dt ; 2 uses
  %.idx = shl nuw nsw i64 %.04285, 2              ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.idx ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.04186, i64 %.idx68 ; 2 uses
  %i.dx = add nuw nsw i64 %.0.idx.lcssa, %.idx
  %.not43.i45 = icmp samesign eq i64 %i.dx, %.idx68
  br i1 %.not43.i45, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i53, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.g, %bb.k
  %indvar = phi i64 [ %indvar.next, %bb.k ], [ 0, %bb.g ] ; 2 uses
  %.02246.i47 = phi ptr [ %.1.i51, %bb.k ], [ %i.dv, %bb.g ] ; 11 uses
  %.02345.i48 = phi ptr [ %i.fa, %bb.k ], [ %i.du, %bb.g ] ; 9 uses
  %.02444.i49 = phi ptr [ %.125.i50, %bb.k ], [ %.0.lcssa, %bb.g ] ; 5 uses
  %i.dy = icmp eq ptr %.02444.i49, %i.dv
  br i1 %i.dy, label %.lr.ph.i.i.i63.preheader, label %bb.h

.lr.ph.i.i.i63.preheader:                         ; preds = %.lr.ph.i46
  %.02246.i47169 = ptrtoaddr ptr %.02246.i47 to i64 ; 2 uses
  %.reass340 = add i64 %.04186168, %invariant.op339
  %i.dz = sub i64 %.reass340, %.02246.i47169      ; 2 uses
  %i.ea = lshr i64 %i.dz, 2
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check171 = icmp ult i64 %i.dz, 28
  br i1 %min.iters.check171, label %.lr.ph.i.i.i63.preheader299, label %vector.memcheck172

vector.memcheck172:                               ; preds = %.lr.ph.i.i.i63.preheader
  %6 = sub i64 %.04186168, %.02246.i47169
  %7 = add i64 %5, %6
  %i.ec = and i64 %7, -4                          ; 2 uses
  %i.ed = getelementptr i8, ptr %.02246.i47, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 4
  %i.ef = sub i64 %indvar, %.04285
  %reass.sub294 = shl i64 %i.ef, 2
  %i.eg = getelementptr i8, ptr %.0.lcssa, i64 %reass.sub294
  %i.eh = getelementptr i8, ptr %i.eg, i64 4
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.ec
  %bound0173 = icmp ult ptr %.02246.i47, %i.ei
  %bound1174 = icmp ult ptr %.02345.i48, %i.ee
  %found.conflict175 = and i1 %bound0173, %bound1174
  br i1 %found.conflict175, label %.lr.ph.i.i.i63.preheader299, label %vector.ph176

vector.ph176:                                     ; preds = %vector.memcheck172
  %n.vec177 = and i64 %i.eb, 9223372036854775800  ; 3 uses
  %i.ej = shl i64 %n.vec177, 2                    ; 2 uses
  %i.ek = getelementptr i8, ptr %.02345.i48, i64 %i.ej
  %i.el = getelementptr i8, ptr %.02246.i47, i64 %i.ej
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next186, %vector.body178 ] ; 2 uses
  %i.em = shl i64 %index179, 2                    ; 2 uses
  %next.gep180 = getelementptr i8, ptr %.02345.i48, i64 %i.em ; 3 uses
  %next.gep181 = getelementptr i8, ptr %.02246.i47, i64 %i.em ; 3 uses
  %i.en = getelementptr i8, ptr %next.gep181, i64 16 ; 2 uses
  %wide.load182 = load <4 x i32>, ptr %next.gep181, align 4, !tbaa !296, !alias.scope !3669, !noalias !3670
  %wide.load183 = load <4 x i32>, ptr %i.en, align 4, !tbaa !296, !alias.scope !3669, !noalias !3670
  %i.eo = getelementptr i8, ptr %next.gep180, i64 16 ; 2 uses
  %wide.load184 = load <4 x i32>, ptr %next.gep180, align 4, !tbaa !296, !alias.scope !3670
  %wide.load185 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !296, !alias.scope !3670
  store <4 x i32> %wide.load184, ptr %next.gep181, align 4, !tbaa !296, !alias.scope !3669, !noalias !3670
  store <4 x i32> %wide.load185, ptr %i.en, align 4, !tbaa !296, !alias.scope !3669, !noalias !3670
  store <4 x i32> %wide.load182, ptr %next.gep180, align 4, !tbaa !296, !alias.scope !3670
  store <4 x i32> %wide.load183, ptr %i.eo, align 4, !tbaa !296, !alias.scope !3670
  %index.next186 = add nuw i64 %index179, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next186, %n.vec177
  br i1 %i.ep, label %middle.block187, label %vector.body178, !llvm.loop !3652

middle.block187:                                  ; preds = %vector.body178
  %cmp.n188 = icmp eq i64 %i.eb, %n.vec177
  br i1 %cmp.n188, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i.i63.preheader299

.lr.ph.i.i.i63.preheader299:                      ; preds = %vector.memcheck172, %.lr.ph.i.i.i63.preheader, %middle.block187
  %.010.i.i.i64.ph = phi ptr [ %.02345.i48, %vector.memcheck172 ], [ %.02345.i48, %.lr.ph.i.i.i63.preheader ], [ %i.ek, %middle.block187 ]
  %.079.i.i.i65.ph = phi ptr [ %.02246.i47, %vector.memcheck172 ], [ %.02246.i47, %.lr.ph.i.i.i63.preheader ], [ %i.el, %middle.block187 ]
  br label %.lr.ph.i.i.i63

.lr.ph.i.i.i63:                                   ; preds = %.lr.ph.i.i.i63.preheader299, %.lr.ph.i.i.i63
  %.010.i.i.i64 = phi ptr [ %i.et, %.lr.ph.i.i.i63 ], [ %.010.i.i.i64.ph, %.lr.ph.i.i.i63.preheader299 ] ; 3 uses
  %.079.i.i.i65 = phi ptr [ %i.es, %.lr.ph.i.i.i63 ], [ %.079.i.i.i65.ph, %.lr.ph.i.i.i63.preheader299 ] ; 3 uses
  %i.eq = load i32, ptr %.079.i.i.i65, align 4, !tbaa !296
  %i.er = load i32, ptr %.010.i.i.i64, align 4, !tbaa !296
  store i32 %i.er, ptr %.079.i.i.i65, align 4, !tbaa !296
  store i32 %i.eq, ptr %.010.i.i.i64, align 4, !tbaa !296
  %i.es = getelementptr inbounds nuw i8, ptr %.079.i.i.i65, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.010.i.i.i64, i64 4
  %.not.i.i.i66 = icmp eq ptr %i.es, %i.dw
  br i1 %.not.i.i.i66, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i.i63, !llvm.loop !3653

bb.h:                                             ; preds = %.lr.ph.i46
  %i.eu = load i32, ptr %.02246.i47, align 4, !tbaa !296 ; 2 uses
  %i.ev = load i32, ptr %.02444.i49, align 4, !tbaa !296 ; 2 uses
  %i.ew = icmp slt i32 %i.eu, %i.ev
  %i.ex = load i32, ptr %.02345.i48, align 4, !tbaa !296 ; 2 uses
  br i1 %i.ew, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.eu, ptr %.02345.i48, align 4, !tbaa !296
  store i32 %i.ex, ptr %.02246.i47, align 4, !tbaa !296
  %i.ey = getelementptr inbounds nuw i8, ptr %.02246.i47, i64 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.ev, ptr %.02345.i48, align 4, !tbaa !296
  store i32 %i.ex, ptr %.02444.i49, align 4, !tbaa !296
  %i.ez = getelementptr inbounds nuw i8, ptr %.02444.i49, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.125.i50 = phi ptr [ %.02444.i49, %bb.i ], [ %i.ez, %bb.j ] ; 2 uses
  %.1.i51 = phi ptr [ %i.ey, %bb.i ], [ %.02246.i47, %bb.j ] ; 2 uses
  %i.fa = getelementptr i8, ptr %.02345.i48, i64 4 ; 2 uses
  %.not.i52 = icmp eq ptr %.1.i51, %i.dw
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i52, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i53, label %.lr.ph.i46, !llvm.loop !3641

_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i53: ; preds = %bb.k, %bb.g
  %.024.lcssa.i54 = phi ptr [ %.0.lcssa, %bb.g ], [ %.125.i50, %bb.k ] ; 9 uses
  %.023.lcssa.i55 = phi ptr [ %i.du, %bb.g ], [ %i.fa, %bb.k ] ; 7 uses
  %.not27.i56 = icmp eq ptr %.023.lcssa.i55, %.024.lcssa.i54
  %.not8.i.i28.i57 = icmp eq ptr %.024.lcssa.i54, %i.dv
  %or.cond38.i58 = or i1 %.not8.i.i28.i57, %.not27.i56
  br i1 %or.cond38.i58, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i29.i59.preheader

.lr.ph.i.i29.i59.preheader:                       ; preds = %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i53
  %.024.lcssa.i54153 = ptrtoaddr ptr %.024.lcssa.i54 to i64
  %i.fb = add i64 %.idx, %.0.lcssa152
  %i.fc = add i64 %i.fb, -4
  %i.fd = sub i64 %i.fc, %.024.lcssa.i54153       ; 3 uses
  %i.fe = lshr i64 %i.fd, 2
  %i.ff = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fd, 28
  br i1 %min.iters.check, label %.lr.ph.i.i29.i59.preheader298, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i29.i59.preheader
  %i.fg = and i64 %i.fd, -4
  %i.fh = add i64 %i.fg, 4                        ; 2 uses
  %i.fi = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.fh
  %i.fj = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.fh
  %bound0 = icmp ult ptr %.024.lcssa.i54, %i.fj
  %bound1 = icmp ult ptr %.023.lcssa.i55, %i.fi
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i29.i59.preheader298, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ff, 9223372036854775800     ; 3 uses
  %i.fk = shl i64 %n.vec, 2                       ; 2 uses
  %i.fl = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.fk
  %i.fm = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.fk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.fn ; 3 uses
  %next.gep154 = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.fn ; 3 uses
  %i.fo = getelementptr i8, ptr %next.gep154, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep154, align 4, !tbaa !296, !alias.scope !3671, !noalias !3672
  %wide.load155 = load <4 x i32>, ptr %i.fo, align 4, !tbaa !296, !alias.scope !3671, !noalias !3672
  %i.fp = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load156 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3672
  %wide.load157 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !296, !alias.scope !3672
  store <4 x i32> %wide.load156, ptr %next.gep154, align 4, !tbaa !296, !alias.scope !3671, !noalias !3672
  store <4 x i32> %wide.load157, ptr %i.fo, align 4, !tbaa !296, !alias.scope !3671, !noalias !3672
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3672
  store <4 x i32> %wide.load155, ptr %i.fp, align 4, !tbaa !296, !alias.scope !3672
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !3657

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ff, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i29.i59.preheader298

.lr.ph.i.i29.i59.preheader298:                    ; preds = %vector.memcheck, %.lr.ph.i.i29.i59.preheader, %middle.block
  %.010.i.i30.i60.ph = phi ptr [ %.023.lcssa.i55, %vector.memcheck ], [ %.023.lcssa.i55, %.lr.ph.i.i29.i59.preheader ], [ %i.fl, %middle.block ]
  %.079.i.i31.i61.ph = phi ptr [ %.024.lcssa.i54, %vector.memcheck ], [ %.024.lcssa.i54, %.lr.ph.i.i29.i59.preheader ], [ %i.fm, %middle.block ]
  br label %.lr.ph.i.i29.i59

.lr.ph.i.i29.i59:                                 ; preds = %.lr.ph.i.i29.i59.preheader298, %.lr.ph.i.i29.i59
  %.010.i.i30.i60 = phi ptr [ %i.fu, %.lr.ph.i.i29.i59 ], [ %.010.i.i30.i60.ph, %.lr.ph.i.i29.i59.preheader298 ] ; 3 uses
  %.079.i.i31.i61 = phi ptr [ %i.ft, %.lr.ph.i.i29.i59 ], [ %.079.i.i31.i61.ph, %.lr.ph.i.i29.i59.preheader298 ] ; 3 uses
  %i.fr = load i32, ptr %.079.i.i31.i61, align 4, !tbaa !296
  %i.fs = load i32, ptr %.010.i.i30.i60, align 4, !tbaa !296
  store i32 %i.fs, ptr %.079.i.i31.i61, align 4, !tbaa !296
  store i32 %i.fr, ptr %.010.i.i30.i60, align 4, !tbaa !296
  %i.ft = getelementptr inbounds nuw i8, ptr %.079.i.i31.i61, i64 4 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.010.i.i30.i60, i64 4
  %.not.i.i32.i62 = icmp eq ptr %i.ft, %i.dv
  br i1 %.not.i.i32.i62, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i29.i59, !llvm.loop !3658

bb.l:                                             ; preds = %._crit_edge
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.04186, i64 %1
  %i.fw = sub i64 0, %.04285                      ; 4 uses
  %.not8.i.i = icmp samesign eq i64 %.039.lcssa, %1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.fx = getelementptr [4 x i8], ptr %.0.lcssa, i64 %i.fw ; 5 uses
  %.reass = add i64 %.04186168, %invariant.op
  %i.fy = sub i64 %.reass, %.0.lcssa152           ; 2 uses
  %i.fz = lshr i64 %i.fy, 2
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %min.iters.check202 = icmp ult i64 %i.fy, 28
  br i1 %min.iters.check202, label %.lr.ph.i.i.preheader301, label %vector.memcheck203

vector.memcheck203:                               ; preds = %.lr.ph.i.i.preheader
  %8 = sub i64 %.04186168, %.0.lcssa152
  %9 = add i64 %5, %8
  %i.gb = and i64 %9, -4
  %i.gc = add i64 %i.gb, 4                        ; 2 uses
  %i.gd = getelementptr i8, ptr %.0.lcssa, i64 %i.gc
  %i.ge = shl i64 %.04285, 2
  %i.gf = sub i64 %i.gc, %i.ge
  %i.gg = getelementptr i8, ptr %.0.lcssa, i64 %i.gf
  %bound0204 = icmp ult ptr %.0.lcssa, %i.gg
  %bound1205 = icmp ult ptr %i.fx, %i.gd
  %found.conflict206 = and i1 %bound0204, %bound1205
  br i1 %found.conflict206, label %.lr.ph.i.i.preheader301, label %vector.ph207

vector.ph207:                                     ; preds = %vector.memcheck203
  %n.vec208 = and i64 %i.ga, 9223372036854775800  ; 3 uses
  %i.gh = shl i64 %n.vec208, 2                    ; 2 uses
  %i.gi = getelementptr i8, ptr %i.fx, i64 %i.gh
  %i.gj = getelementptr i8, ptr %.0.lcssa, i64 %i.gh
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph207
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next217, %vector.body209 ] ; 2 uses
  %i.gk = shl i64 %index210, 2                    ; 2 uses
  %next.gep211 = getelementptr i8, ptr %i.fx, i64 %i.gk ; 3 uses
  %next.gep212 = getelementptr i8, ptr %.0.lcssa, i64 %i.gk ; 3 uses
  %i.gl = getelementptr i8, ptr %next.gep212, i64 16 ; 2 uses
  %wide.load213 = load <4 x i32>, ptr %next.gep212, align 4, !tbaa !296, !alias.scope !3673, !noalias !3674
  %wide.load214 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !296, !alias.scope !3673, !noalias !3674
  %i.gm = getelementptr i8, ptr %next.gep211, i64 16 ; 2 uses
  %wide.load215 = load <4 x i32>, ptr %next.gep211, align 4, !tbaa !296, !alias.scope !3674
  %wide.load216 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !296, !alias.scope !3674
  store <4 x i32> %wide.load215, ptr %next.gep212, align 4, !tbaa !296, !alias.scope !3673, !noalias !3674
  store <4 x i32> %wide.load216, ptr %i.gl, align 4, !tbaa !296, !alias.scope !3673, !noalias !3674
  store <4 x i32> %wide.load213, ptr %next.gep211, align 4, !tbaa !296, !alias.scope !3674
  store <4 x i32> %wide.load214, ptr %i.gm, align 4, !tbaa !296, !alias.scope !3674
  %index.next217 = add nuw i64 %index210, 8       ; 2 uses
  %i.gn = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.gn, label %middle.block218, label %vector.body209, !llvm.loop !3662

middle.block218:                                  ; preds = %vector.body209
  %cmp.n219 = icmp eq i64 %i.ga, %n.vec208
  br i1 %cmp.n219, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i.preheader301

.lr.ph.i.i.preheader301:                          ; preds = %vector.memcheck203, %.lr.ph.i.i.preheader, %middle.block218
  %.010.i.i.ph = phi ptr [ %i.fx, %vector.memcheck203 ], [ %i.fx, %.lr.ph.i.i.preheader ], [ %i.gi, %middle.block218 ]
  %.079.i.i.ph = phi ptr [ %.0.lcssa, %vector.memcheck203 ], [ %.0.lcssa, %.lr.ph.i.i.preheader ], [ %i.gj, %middle.block218 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader301, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.gr, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader301 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.gq, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader301 ] ; 3 uses
  %i.go = load i32, ptr %.079.i.i, align 4, !tbaa !296
  %i.gp = load i32, ptr %.010.i.i, align 4, !tbaa !296
  store i32 %i.gp, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.go, ptr %.010.i.i, align 4, !tbaa !296
  %i.gq = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.gq, %i.fv
  br i1 %.not.i.i, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i, !llvm.loop !3663

_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i63, %.lr.ph.i.i29.i59, %middle.block218, %middle.block187, %middle.block, %bb.l, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i53
  %.pre-phi = phi i64 [ %i.dt, %middle.block187 ], [ %i.dt, %middle.block ], [ %i.dt, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i53 ], [ %i.fw, %bb.l ], [ %i.fw, %middle.block218 ], [ %i.dt, %.lr.ph.i.i.i63 ], [ %i.dt, %.lr.ph.i.i29.i59 ], [ %i.fw, %.lr.ph.i.i ]
  %i.gs = getelementptr inbounds [4 x i8], ptr %.04186, i64 %.pre-phi
  %i.gt = sub nuw i64 %.04087, %.04285            ; 2 uses
  %i.gu = icmp ult i64 %i.d, %3
  %i.gv = icmp uge i64 %i.gt, %i.d
  %i.gw = select i1 %i.gu, i1 %i.gv, i1 false
  br i1 %i.gw, label %.preheader, label %._crit_edge88, !llvm.loop !3664

._crit_edge88:                                    ; preds = %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, %bb.a
  %.042.lcssa = phi i64 [ %2, %bb.a ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67 ]
  ret i64 %.042.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_NS0_9iter_sizeISE_E4typeESH_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.b = shl i64 %2, 1                            ; 8 uses
  %i.c = urem i64 %1, %i.b                        ; 3 uses
  %i.d = udiv i64 %1, %i.b                        ; 2 uses
  %i.e = sub nuw i64 %1, %i.c                     ; 4 uses
  %.not = icmp ugt i64 %i.c, %2
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not8.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %2 ; 3 uses
  %i.i = shl i64 %1, 2
  %i.j = udiv i64 %1, %i.b
  %i.k = mul i64 %2, %i.j
  %i.l = shl i64 %i.k, 3
  %i.m = add i64 %i.i, -4
  %i.n = sub i64 %i.m, %i.l                       ; 2 uses
  %i.o = lshr exact i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 60
  %i.q = shl i64 %2, 2
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader285, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.p, 9223372036854775800      ; 3 uses
  %i.r = mul i64 %n.vec, -4                       ; 2 uses
  %i.s = getelementptr i8, ptr %i.h, i64 %i.r
  %i.t = getelementptr i8, ptr %i.g, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.u ; 2 uses
  %next.gep142 = getelementptr i8, ptr %i.g, i64 %i.u ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %next.gep142, i64 -16
  %i.w = getelementptr inbounds i8, ptr %next.gep142, i64 -32
  %wide.load = load <4 x i32>, ptr %i.v, align 4, !tbaa !296
  %wide.load143 = load <4 x i32>, ptr %i.w, align 4, !tbaa !296
  %i.x = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.y = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.x, align 4, !tbaa !296
  store <4 x i32> %wide.load143, ptr %i.y, align 4, !tbaa !296
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !3675

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader285

.lr.ph.i.i.preheader285:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.preheader ], [ %i.s, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.g, %.lr.ph.i.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader285, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader285 ]
  %.079.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader285 ]
  %i.aa = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !296
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !296
  %.not.i.i = icmp eq ptr %i.f, %i.aa
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i, !llvm.loop !3676

bb.c:                                             ; preds = %bb.a
  %.idx68 = shl i64 %2, 2                         ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx68 ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %2 ; 2 uses
  %.not40.i = icmp eq i64 %2, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.043.i = phi ptr [ %i.bi, %bb.d ], [ %i.af, %bb.c ] ; 5 uses
  %.02442.i = phi ptr [ %.024..i, %bb.d ], [ %i.ae, %bb.c ] ; 3 uses
  %.02541.i = phi ptr [ %..025.i, %bb.d ], [ %i.ad, %bb.c ] ; 7 uses
  %i.ag = icmp eq ptr %.02442.i, %i.ad
  br i1 %i.ag, label %.lr.ph.i.i.i.preheader, label %bb.d

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %.02541.i148.le = ptrtoaddr ptr %.02541.i to i64 ; 2 uses
  %i.ah = udiv i64 %1, %i.b
  %i.ai = mul i64 %2, %i.ah
  %i.aj = shl i64 %i.ai, 3
  %i.ak = add i64 %.02541.i148.le, -4
  %i.al = add i64 %i.aj, %i.a
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check150 = icmp ult i64 %i.am, 124
  br i1 %min.iters.check150, label %.lr.ph.i.i.i.preheader278, label %vector.memcheck151

vector.memcheck151:                               ; preds = %.lr.ph.i.i.i.preheader
  %.neg = mul i64 %1, -4
  %i.ap = add i64 %.idx68, %i.a
  %.neg260 = sub i64 %.neg, %i.ap
  %i.aq = shl i64 %indvar, 2
  %i.ar = add i64 %.neg260, %i.aq
  %i.as = add i64 %i.ar, %.02541.i148.le
  %i.at = add i64 %i.as, -1
  %diff.check152 = icmp ult i64 %i.at, 31
  br i1 %diff.check152, label %.lr.ph.i.i.i.preheader278, label %vector.ph153

vector.ph153:                                     ; preds = %vector.memcheck151
  %n.vec154 = and i64 %i.ao, 9223372036854775800  ; 3 uses
  %i.au = mul i64 %n.vec154, -4                   ; 2 uses
  %i.av = getelementptr i8, ptr %.043.i, i64 %i.au
  %i.aw = getelementptr i8, ptr %.02541.i, i64 %i.au
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph153
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next161, %vector.body155 ] ; 2 uses
  %i.ax = mul i64 %index156, -4                   ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.043.i, i64 %i.ax ; 2 uses
  %next.gep158 = getelementptr i8, ptr %.02541.i, i64 %i.ax ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %next.gep158, i64 -16
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_:bb.a
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.cb, label %bb.p, label %bb.s

.thread413:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.bt, label %.thread414, label %.thread415

.thread415:                                       ; preds = %.thread413
  store ptr %.sroa.0235.0336, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0220.0335, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.ds = ptrtoint ptr %.sroa.0235.0336 to i64
  %i.dt = ptrtoint ptr %.sroa.0220.0335 to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 2
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = getelementptr inbounds [4 x i8], ptr %.sroa.0249.0337, i64 %i.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br label %bb.u

.thread414:                                       ; preds = %.thread413
  %i.dy = ptrtoint ptr %.sroa.0235.0336 to i64
  %i.dz = ptrtoint ptr %.sroa.0220.0335 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = getelementptr inbounds i8, ptr %i.ak, i64 %i.ea ; 2 uses
  store ptr %i.eb, ptr %28, align 8, !tbaa !441
  store ptr %i.eb, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ec = ptrtoint ptr %.sroa.0235.0336 to i64
  %i.ed = ptrtoint ptr %.sroa.0220.0335 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds i8, ptr %i.ak, i64 %i.ee ; 2 uses
  store ptr %i.ef, ptr %28, align 8, !tbaa !441
  store ptr %i.ef, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br i1 %i.cc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.sroa.0235.0336, ptr %18, align 8, !tbaa !441, !noalias !3942
  store ptr %.sroa.0220.0335, ptr %19, align 8, !tbaa !441, !noalias !3942
  store ptr %i.bj, ptr %20, align 8, !tbaa !441, !noalias !3942
  store ptr %i.bh, ptr %21, align 8, !tbaa !441, !noalias !3942
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %20, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

bb.r:                                             ; preds = %.thread414, %bb.p
  %i.eg = phi i8 [ 1, %.thread414 ], [ %i.ca, %bb.p ]
  %i.eh = phi i1 [ true, %.thread414 ], [ %i.bz, %bb.p ]
  store ptr %.sroa.0235.0336, ptr %22, align 8, !tbaa !441, !noalias !3942
  store ptr %.sroa.0220.0335, ptr %23, align 8, !tbaa !441, !noalias !3942
  store ptr %i.bj, ptr %24, align 8, !tbaa !441, !noalias !3942
  store ptr %i.bh, ptr %25, align 8, !tbaa !441, !noalias !3942
  store ptr %17, ptr %26, align 8, !tbaa !455, !noalias !3942
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %26)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit: ; preds = %bb.q, %bb.r
  %i.ei = phi i8 [ %i.ca, %bb.q ], [ %i.eg, %bb.r ]
  %i.ej = phi i1 [ %i.bz, %bb.q ], [ %i.eh, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  store ptr %.sroa.0235.0336, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0220.0335, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.ek = ptrtoint ptr %.sroa.0235.0336 to i64
  %i.el = ptrtoint ptr %.sroa.0220.0335 to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2
  %i.eo = sub nsw i64 0, %i.en
  %i.ep = getelementptr inbounds [4 x i8], ptr %.sroa.0249.0337, i64 %i.eo ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.0249.0337, ptr %8, align 8, !tbaa !441, !noalias !3943
  store ptr %i.ep, ptr %9, align 8, !tbaa !441, !noalias !3943
  store ptr %i.bj, ptr %10, align 8, !tbaa !441, !noalias !3943
  store ptr %i.bh, ptr %11, align 8, !tbaa !441, !noalias !3943
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

bb.u:                                             ; preds = %.thread415, %bb.s
  %i.eq = phi ptr [ %i.dx, %.thread415 ], [ %i.ep, %bb.s ]
  %i.er = phi i8 [ 1, %.thread415 ], [ %i.ca, %bb.s ]
  %i.es = phi i1 [ true, %.thread415 ], [ %i.bz, %bb.s ]
  store ptr %.sroa.0249.0337, ptr %12, align 8, !tbaa !441, !noalias !3943
  store ptr %i.eq, ptr %13, align 8, !tbaa !441, !noalias !3943
  store ptr %i.bj, ptr %14, align 8, !tbaa !441, !noalias !3943
  store ptr %i.bh, ptr %15, align 8, !tbaa !441, !noalias !3943
  store ptr %7, ptr %16, align 8, !tbaa !455, !noalias !3943
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %16)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75: ; preds = %bb.t, %bb.u
  %i.et = phi i8 [ %i.ca, %bb.t ], [ %i.er, %bb.u ]
  %i.eu = phi i1 [ %i.bz, %bb.t ], [ %i.es, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit
  %i.ev = phi i1 [ %i.eu, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.ej, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.ew = phi i8 [ %i.et, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.ei, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.ex = load ptr, ptr %27, align 8, !tbaa !441  ; 11 uses
  %i.ey = ptrtoint ptr %i.ex to i64               ; 4 uses
  %i.ez = ptrtoint ptr %i.bj to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = getelementptr inbounds i8, ptr %i.bi, i64 %i.fa ; 6 uses
  %.not.i76 = icmp eq ptr %i.ex, %i.fb
  br i1 %.not.i76, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not1.i.i77 = icmp eq ptr %i.ex, %i.bj
  br i1 %.not1.i.i77, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader

.lr.ph.i.i78.preheader:                           ; preds = %bb.w
  %i.fc = mul i64 %indvar, %i.ac
  %i.fd = add i64 %i.af, %i.fc
  %i.fe = add i64 %i.fd, %i.ey                    ; 2 uses
  %i.ff = lshr i64 %i.fe, 2
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %min.iters.check484 = icmp ult i64 %i.fe, 44
  br i1 %min.iters.check484, label %.lr.ph.i.i78.preheader623, label %vector.memcheck485

vector.memcheck485:                               ; preds = %.lr.ph.i.i78.preheader
  %i.fh = mul i64 %indvar, %i.x
  %i.fi = add i64 %i.ab, %i.fh
  %i.fj = add i64 %i.fi, %i.ey
  %i.fk = and i64 %i.fj, -4                       ; 2 uses
  %i.fl = sub nuw nsw i64 -4, %i.fk
  %i.fm = getelementptr i8, ptr %i.ex, i64 %i.fl
  %i.fn = mul i64 %.018.lcssa.i, %2
  %i.fo = shl i64 %i.fn, 2
  %i.fp = add i64 %i.fo, %i.fk
  %i.fq = add i64 %i.fp, %i.f
  %reass.sub = sub i64 %i.ey, %i.fq
  %39 = getelementptr i8, ptr %i.e, i64 %reass.sub
  %i.fr = getelementptr i8, ptr %39, i64 -4
  %bound0486 = icmp ult ptr %i.fm, %i.fb
  %bound1487 = icmp ult ptr %i.fr, %i.ex
  %found.conflict488 = and i1 %bound0486, %bound1487
  br i1 %found.conflict488, label %.lr.ph.i.i78.preheader623, label %vector.ph489

vector.ph489:                                     ; preds = %vector.memcheck485
  %n.vec490 = and i64 %i.fg, 9223372036854775800  ; 3 uses
  %i.fs = mul i64 %n.vec490, -4                   ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fb, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ex, i64 %i.fs
  br label %vector.body491

vector.body491:                                   ; preds = %vector.body491, %vector.ph489
  %index492 = phi i64 [ 0, %vector.ph489 ], [ %index.next499, %vector.body491 ] ; 2 uses
  %i.fv = mul i64 %index492, -4                   ; 2 uses
  %next.gep493 = getelementptr i8, ptr %i.fb, i64 %i.fv ; 2 uses
  %next.gep494 = getelementptr i8, ptr %i.ex, i64 %i.fv ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %next.gep494, i64 -16 ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %next.gep494, i64 -32 ; 2 uses
  %wide.load495 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !296, !alias.scope !3944, !noalias !3945
  %wide.load496 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !296, !alias.scope !3944, !noalias !3945
  %i.fy = getelementptr inbounds i8, ptr %next.gep493, i64 -16 ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %next.gep493, i64 -32 ; 2 uses
  %wide.load497 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !296, !alias.scope !3946, !noalias !3947
  %wide.load498 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !296, !alias.scope !3946, !noalias !3947
  store <4 x i32> %wide.load497, ptr %i.fw, align 4, !tbaa !296, !alias.scope !3944, !noalias !3945
  store <4 x i32> %wide.load498, ptr %i.fx, align 4, !tbaa !296, !alias.scope !3944, !noalias !3945
  store <4 x i32> %wide.load495, ptr %i.fy, align 4, !tbaa !296, !alias.scope !3946, !noalias !3947
  store <4 x i32> %wide.load496, ptr %i.fz, align 4, !tbaa !296, !alias.scope !3946, !noalias !3947
  %index.next499 = add nuw i64 %index492, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next499, %n.vec490
  br i1 %i.ga, label %middle.block500, label %vector.body491, !llvm.loop !3906

middle.block500:                                  ; preds = %vector.body491
  %cmp.n501 = icmp eq i64 %i.fg, %n.vec490
  br i1 %cmp.n501, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader623

.lr.ph.i.i78.preheader623:                        ; preds = %vector.memcheck485, %.lr.ph.i.i78.preheader, %middle.block500
  %.sroa.04.0.i79.ph = phi ptr [ %i.fb, %vector.memcheck485 ], [ %i.fb, %.lr.ph.i.i78.preheader ], [ %i.ft, %middle.block500 ]
  %.ph624 = phi ptr [ %i.ex, %vector.memcheck485 ], [ %i.ex, %.lr.ph.i.i78.preheader ], [ %i.fu, %middle.block500 ]
  br label %.lr.ph.i.i78

.lr.ph.i.i78:                                     ; preds = %.lr.ph.i.i78.preheader623, %.lr.ph.i.i78
  %.sroa.04.0.i79 = phi ptr [ %i.gd, %.lr.ph.i.i78 ], [ %.sroa.04.0.i79.ph, %.lr.ph.i.i78.preheader623 ]
  %i.gb = phi ptr [ %i.gc, %.lr.ph.i.i78 ], [ %.ph624, %.lr.ph.i.i78.preheader623 ]
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -4 ; 4 uses
  %i.gd = getelementptr inbounds i8, ptr %.sroa.04.0.i79, i64 -4 ; 3 uses
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !296, !noalias !3947
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !296, !noalias !3947
  store i32 %i.gf, ptr %i.gc, align 4, !tbaa !296, !noalias !3947
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !296, !noalias !3947
  %.not.i.i80 = icmp eq ptr %i.gc, %i.bj
  br i1 %.not.i.i80, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78, !llvm.loop !3907

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81: ; preds = %.lr.ph.i.i78, %middle.block500, %bb.w
  %.not9.i82 = icmp eq i64 %.neg302, 0
  br i1 %.not9.i82, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gg = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %.sroa.0210.0333, i64 -4 ; 2 uses
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !296
  %i.gj = load i32, ptr %i.gh, align 4, !tbaa !296
  store i32 %i.gj, ptr %i.gg, align 4, !tbaa !296
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !296
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gk = icmp eq ptr %i.bp, %.sroa.0260.0338
  br i1 %i.gk, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gl = icmp eq ptr %.sroa.0260.0338, %.sroa.0210.0333
  %spec.select298 = select i1 %i.gl, ptr %i.bp, ptr %.sroa.0260.0338
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85: ; preds = %bb.z, %bb.y, %bb.v
  %.sroa.0260.5 = phi ptr [ %.sroa.0260.0338, %bb.v ], [ %spec.select298, %bb.z ], [ %.sroa.0210.0333, %bb.y ]
  %i.gm = load ptr, ptr %28, align 8, !tbaa !441  ; 2 uses
  %i.gn = load ptr, ptr %29, align 8, !tbaa !441  ; 3 uses
  %.not303 = icmp eq ptr %i.gm, %i.gn
  br i1 %.not303, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85
  %i.go = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %2
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85, %bb.aa
  %.sroa.0220.1 = phi ptr [ %i.bj, %bb.aa ], [ %i.gn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85 ]
  %.sroa.0235.1 = phi ptr [ %i.ex, %bb.aa ], [ %i.gm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85 ]
  %.sroa.0249.2 = phi ptr [ %i.go, %bb.aa ], [ %i.gn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85 ]
  %.161 = phi i8 [ %i.ew, %bb.aa ], [ %.060341, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.m, %bb.ab
  %i.gp = phi i1 [ %i.ev, %bb.ab ], [ %i.cf, %bb.m ], [ %i.cf, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.cf, %bb.n ]
  %.sroa.0220.2 = phi ptr [ %.sroa.0220.1, %bb.ab ], [ %i.bj, %bb.m ], [ %i.bj, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.bj, %bb.n ] ; 2 uses
  %.sroa.0235.2 = phi ptr [ %.sroa.0235.1, %bb.ab ], [ %i.ak, %bb.m ], [ %i.ak, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.ak, %bb.n ] ; 2 uses
  %.sroa.0249.3 = phi ptr [ %.sroa.0249.2, %bb.ab ], [ %.sroa.0249.1, %bb.m ], [ %.sroa.0249.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.sroa.0249.1, %bb.n ] ; 2 uses
  %.sroa.0260.1 = phi ptr [ %.sroa.0260.5, %bb.ab ], [ %.sroa.0210.0333, %bb.m ], [ %.sroa.0260.0338, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.262 = phi i8 [ %.161, %bb.ab ], [ %.060341, %bb.m ], [ %.060341, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.060341, %bb.n ] ; 2 uses
  %not. = xor i1 %i.gp, true
  %i.gq = sext i1 %not. to i64
  %.1 = add i64 %.0342, %i.gq
  store ptr %i.bj, ptr %27, align 8, !tbaa !441
  %i.gr = getelementptr inbounds i8, ptr %.sroa.0210.0333, i64 -4 ; 2 uses
  %i.gs = icmp ne i64 %.063340, 0
  %.neg = sext i1 %i.gs to i64
  %i.gt = add i64 %.063340, %.neg                 ; 2 uses
  %i.gu = icmp ne i64 %i.bg, 0
  %.neg69 = sext i1 %i.gu to i64
  %i.gv = add i64 %.sroa.speculated273, %.neg69   ; 2 uses
  %i.gw = add i64 %.0284339, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gw, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !3908

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.gx = phi ptr [ %i.bj, %.sink.split.i ], [ %i.ak, %bb.f ]
  %.4 = phi i64 [ %i.gv, %.sink.split.i ], [ %.sroa.speculated273, %bb.f ]
  %.sroa.0210.0.lcssa.ph = phi ptr [ %i.gr, %.sink.split.i ], [ %.sroa.0210.0333, %bb.f ]
  %.sroa.0220.0.lcssa.ph = phi ptr [ %.sroa.0220.2, %.sink.split.i ], [ %.sroa.0220.0335, %bb.f ]
  %.sroa.0235.0.lcssa.ph = phi ptr [ %.sroa.0235.2, %.sink.split.i ], [ %.sroa.0235.0336, %bb.f ]
  %.sroa.0249.0.lcssa.ph = phi ptr [ %.sroa.0249.3, %.sink.split.i ], [ %.sroa.0249.0337, %bb.f ]
  %.sroa.0260.0.lcssa.ph = phi ptr [ %.sroa.0260.1, %.sink.split.i ], [ %.sroa.0260.0338, %bb.f ]
  %.0284.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0284339, %bb.f ]
  %.063.lcssa.ph = phi i64 [ %i.gt, %.sink.split.i ], [ %.063340, %bb.f ]
  %.060.lcssa.ph = phi i8 [ %.262, %.sink.split.i ], [ %.060341, %bb.f ]
  %i.gy = trunc nuw i8 %.060.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.gz = phi ptr [ %i.i, %bb.a ], [ %i.gx, %.thread.loopexit ] ; 8 uses
  %.1390 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.sroa.0210.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %.sroa.0210.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0220.0.lcssa = phi ptr [ %i.i, %bb.a ], [ %.sroa.0220.0.lcssa.ph, %.thread.loopexit ] ; 8 uses
  %.sroa.0235.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.0235.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0249.0.lcssa = phi ptr [ %i.g, %bb.a ], [ %.sroa.0249.0.lcssa.ph, %.thread.loopexit ] ; 4 uses
  %.sroa.0260.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %.sroa.0260.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0284.lcssa = phi i64 [ 0, %bb.a ], [ %.0284.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.063.lcssa = phi i64 [ %i.n, %bb.a ], [ %.063.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.060.lcssa = phi i1 [ true, %bb.a ], [ %i.gy, %.thread.loopexit ]
  %i.ha = ptrtoaddr ptr %i.gz to i64
  %i.hb = icmp eq ptr %.sroa.0220.0.lcssa, %.sroa.0249.0.lcssa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.l, ptr %32, align 8, !tbaa !441
  %.neg305 = mul i64 %6, -4                       ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.l, i64 %.neg305 ; 7 uses
  %i.hd = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.hd, i1 %.060.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.hb, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not1.i = icmp eq ptr %.sroa.0235.0.lcssa, %.sroa.0220.0.lcssa
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %bb.ad
  %i.he = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !296, !noalias !3948
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i86
  %i.hg = phi ptr [ %.sroa.0235.0.lcssa, %.lr.ph.i86 ], [ %i.hh, %bb.af ] ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -4 ; 4 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !296, !noalias !3948
  %i.hj = icmp slt i32 %i.hi, %i.hf
  br i1 %i.hj, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i87 = icmp eq ptr %i.hh, %.sroa.0220.0.lcssa
  br i1 %.not.i87, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !81

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0235.0.lcssa, %bb.ad ], [ %i.hg, %bb.ae ], [ %i.hh, %bb.af ] ; 5 uses
  %i.hk = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.hl = ptrtoint ptr %.sroa.0220.0.lcssa to i64 ; 3 uses
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = getelementptr inbounds i8, ptr %i.gz, i64 %i.hm ; 5 uses
  %.not1.i.i88 = icmp eq ptr %.lcssa.i, %.sroa.0220.0.lcssa
  br i1 %.not1.i.i88, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92, label %.lr.ph.i.i89.preheader

.lr.ph.i.i89.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %i.ho = add i64 %i.hk, -4
  %i.hp = sub i64 %i.ho, %i.hl                    ; 2 uses
  %i.hq = lshr i64 %i.hp, 2
  %i.hr = add nuw nsw i64 %i.hq, 1                ; 2 uses
  %min.iters.check531 = icmp ult i64 %i.hp, 44
  %i.hs = sub i64 %i.ha, %i.hl
  %diff.check533 = icmp ugt i64 %i.hs, -32
  %or.cond595 = select i1 %min.iters.check531, i1 true, i1 %diff.check533
  br i1 %or.cond595, label %.lr.ph.i.i89.preheader613, label %vector.ph534

vector.ph534:                                     ; preds = %.lr.ph.i.i89.preheader
  %n.vec535 = and i64 %i.hr, 9223372036854775800  ; 3 uses
  %i.ht = mul i64 %n.vec535, -4                   ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_:bb.a
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.cb, label %bb.p, label %bb.s

.thread418:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.bt, label %.thread419, label %.thread420

.thread420:                                       ; preds = %.thread418
  store ptr %.sroa.0239.0340, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0224.0339, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.dv = ptrtoint ptr %.sroa.0239.0340 to i64
  %i.dw = ptrtoint ptr %.sroa.0224.0339 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 2
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = getelementptr inbounds [4 x i8], ptr %.sroa.0253.0341, i64 %i.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br label %bb.u

.thread419:                                       ; preds = %.thread418
  %i.eb = ptrtoint ptr %.sroa.0239.0340 to i64
  %i.ec = ptrtoint ptr %.sroa.0224.0339 to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = getelementptr inbounds i8, ptr %i.ak, i64 %i.ed ; 2 uses
  store ptr %i.ee, ptr %28, align 8, !tbaa !441
  store ptr %i.ee, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ef = ptrtoint ptr %.sroa.0239.0340 to i64
  %i.eg = ptrtoint ptr %.sroa.0224.0339 to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = getelementptr inbounds i8, ptr %i.ak, i64 %i.eh ; 2 uses
  store ptr %i.ei, ptr %28, align 8, !tbaa !441
  store ptr %i.ei, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br i1 %i.cc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.sroa.0239.0340, ptr %18, align 8, !tbaa !441, !noalias !4030
  store ptr %.sroa.0224.0339, ptr %19, align 8, !tbaa !441, !noalias !4030
  store ptr %i.bj, ptr %20, align 8, !tbaa !441, !noalias !4030
  store ptr %i.bh, ptr %21, align 8, !tbaa !441, !noalias !4030
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %20, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

bb.r:                                             ; preds = %.thread419, %bb.p
  %i.ej = phi i8 [ 1, %.thread419 ], [ %i.ca, %bb.p ]
  %i.ek = phi i1 [ true, %.thread419 ], [ %i.bz, %bb.p ]
  store ptr %.sroa.0239.0340, ptr %22, align 8, !tbaa !441, !noalias !4030
  store ptr %.sroa.0224.0339, ptr %23, align 8, !tbaa !441, !noalias !4030
  store ptr %i.bj, ptr %24, align 8, !tbaa !441, !noalias !4030
  store ptr %i.bh, ptr %25, align 8, !tbaa !441, !noalias !4030
  store ptr %17, ptr %26, align 8, !tbaa !455, !noalias !4030
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %26)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit: ; preds = %bb.q, %bb.r
  %i.el = phi i8 [ %i.ca, %bb.q ], [ %i.ej, %bb.r ]
  %i.em = phi i1 [ %i.bz, %bb.q ], [ %i.ek, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  store ptr %.sroa.0239.0340, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0224.0339, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.en = ptrtoint ptr %.sroa.0239.0340 to i64
  %i.eo = ptrtoint ptr %.sroa.0224.0339 to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = ashr exact i64 %i.ep, 2
  %i.er = sub nsw i64 0, %i.eq
  %i.es = getelementptr inbounds [4 x i8], ptr %.sroa.0253.0341, i64 %i.er ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.0253.0341, ptr %8, align 8, !tbaa !441, !noalias !4031
  store ptr %i.es, ptr %9, align 8, !tbaa !441, !noalias !4031
  store ptr %i.bj, ptr %10, align 8, !tbaa !441, !noalias !4031
  store ptr %i.bh, ptr %11, align 8, !tbaa !441, !noalias !4031
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

bb.u:                                             ; preds = %.thread420, %bb.s
  %i.et = phi ptr [ %i.ea, %.thread420 ], [ %i.es, %bb.s ]
  %i.eu = phi i8 [ 1, %.thread420 ], [ %i.ca, %bb.s ]
  %i.ev = phi i1 [ true, %.thread420 ], [ %i.bz, %bb.s ]
  store ptr %.sroa.0253.0341, ptr %12, align 8, !tbaa !441, !noalias !4031
  store ptr %i.et, ptr %13, align 8, !tbaa !441, !noalias !4031
  store ptr %i.bj, ptr %14, align 8, !tbaa !441, !noalias !4031
  store ptr %i.bh, ptr %15, align 8, !tbaa !441, !noalias !4031
  store ptr %7, ptr %16, align 8, !tbaa !455, !noalias !4031
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %16)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75: ; preds = %bb.t, %bb.u
  %i.ew = phi i8 [ %i.ca, %bb.t ], [ %i.eu, %bb.u ]
  %i.ex = phi i1 [ %i.bz, %bb.t ], [ %i.ev, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit
  %i.ey = phi i1 [ %i.ex, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.em, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.ez = phi i8 [ %i.ew, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.el, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.fa = load ptr, ptr %27, align 8, !tbaa !441  ; 11 uses
  %i.fb = ptrtoint ptr %i.fa to i64               ; 4 uses
  %i.fc = ptrtoint ptr %i.bj to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = getelementptr inbounds i8, ptr %i.bi, i64 %i.fd ; 6 uses
  %.not.i76 = icmp eq ptr %i.fa, %i.fe
  br i1 %.not.i76, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not1.i.i77 = icmp eq ptr %i.fa, %i.bj
  br i1 %.not1.i.i77, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader

.lr.ph.i.i78.preheader:                           ; preds = %bb.w
  %i.ff = mul i64 %indvar, %i.ac
  %i.fg = add i64 %i.af, %i.ff
  %i.fh = add i64 %i.fg, %i.fb                    ; 2 uses
  %i.fi = lshr i64 %i.fh, 2
  %i.fj = add nuw nsw i64 %i.fi, 1                ; 2 uses
  %min.iters.check500 = icmp ult i64 %i.fh, 44
  br i1 %min.iters.check500, label %.lr.ph.i.i78.preheader671, label %vector.memcheck501

vector.memcheck501:                               ; preds = %.lr.ph.i.i78.preheader
  %i.fk = mul i64 %indvar, %i.x
  %i.fl = add i64 %i.ab, %i.fk
  %i.fm = add i64 %i.fl, %i.fb
  %i.fn = and i64 %i.fm, -4                       ; 2 uses
  %i.fo = sub nuw nsw i64 -4, %i.fn
  %i.fp = getelementptr i8, ptr %i.fa, i64 %i.fo
  %i.fq = mul i64 %.018.lcssa.i, %2
  %i.fr = shl i64 %i.fq, 2
  %i.fs = add i64 %i.fr, %i.fn
  %i.ft = add i64 %i.fs, %i.f
  %reass.sub = sub i64 %i.fb, %i.ft
  %39 = getelementptr i8, ptr %i.e, i64 %reass.sub
  %i.fu = getelementptr i8, ptr %39, i64 -4
  %bound0502 = icmp ult ptr %i.fp, %i.fe
  %bound1503 = icmp ult ptr %i.fu, %i.fa
  %found.conflict504 = and i1 %bound0502, %bound1503
  br i1 %found.conflict504, label %.lr.ph.i.i78.preheader671, label %vector.ph505

vector.ph505:                                     ; preds = %vector.memcheck501
  %n.vec506 = and i64 %i.fj, 9223372036854775800  ; 3 uses
  %i.fv = mul i64 %n.vec506, -4                   ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fe, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fa, i64 %i.fv
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next515, %vector.body507 ] ; 2 uses
  %i.fy = mul i64 %index508, -4                   ; 2 uses
  %next.gep509 = getelementptr i8, ptr %i.fe, i64 %i.fy ; 2 uses
  %next.gep510 = getelementptr i8, ptr %i.fa, i64 %i.fy ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %next.gep510, i64 -16 ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %next.gep510, i64 -32 ; 2 uses
  %wide.load511 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !296, !alias.scope !4032, !noalias !4033
  %wide.load512 = load <4 x i32>, ptr %i.ga, align 4, !tbaa !296, !alias.scope !4032, !noalias !4033
  %i.gb = getelementptr inbounds i8, ptr %next.gep509, i64 -16 ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %next.gep509, i64 -32 ; 2 uses
  %wide.load513 = load <4 x i32>, ptr %i.gb, align 4, !tbaa !296, !alias.scope !4034, !noalias !4035
  %wide.load514 = load <4 x i32>, ptr %i.gc, align 4, !tbaa !296, !alias.scope !4034, !noalias !4035
  store <4 x i32> %wide.load513, ptr %i.fz, align 4, !tbaa !296, !alias.scope !4032, !noalias !4033
  store <4 x i32> %wide.load514, ptr %i.ga, align 4, !tbaa !296, !alias.scope !4032, !noalias !4033
  store <4 x i32> %wide.load511, ptr %i.gb, align 4, !tbaa !296, !alias.scope !4034, !noalias !4035
  store <4 x i32> %wide.load512, ptr %i.gc, align 4, !tbaa !296, !alias.scope !4034, !noalias !4035
  %index.next515 = add nuw i64 %index508, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next515, %n.vec506
  br i1 %i.gd, label %middle.block516, label %vector.body507, !llvm.loop !3979

middle.block516:                                  ; preds = %vector.body507
  %cmp.n517 = icmp eq i64 %i.fj, %n.vec506
  br i1 %cmp.n517, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader671

.lr.ph.i.i78.preheader671:                        ; preds = %vector.memcheck501, %.lr.ph.i.i78.preheader, %middle.block516
  %.sroa.04.0.i79.ph = phi ptr [ %i.fe, %vector.memcheck501 ], [ %i.fe, %.lr.ph.i.i78.preheader ], [ %i.fw, %middle.block516 ]
  %.ph672 = phi ptr [ %i.fa, %vector.memcheck501 ], [ %i.fa, %.lr.ph.i.i78.preheader ], [ %i.fx, %middle.block516 ]
  br label %.lr.ph.i.i78

.lr.ph.i.i78:                                     ; preds = %.lr.ph.i.i78.preheader671, %.lr.ph.i.i78
  %.sroa.04.0.i79 = phi ptr [ %i.gg, %.lr.ph.i.i78 ], [ %.sroa.04.0.i79.ph, %.lr.ph.i.i78.preheader671 ]
  %i.ge = phi ptr [ %i.gf, %.lr.ph.i.i78 ], [ %.ph672, %.lr.ph.i.i78.preheader671 ]
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -4 ; 4 uses
  %i.gg = getelementptr inbounds i8, ptr %.sroa.04.0.i79, i64 -4 ; 3 uses
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !296, !noalias !4035
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !296, !noalias !4035
  store i32 %i.gi, ptr %i.gf, align 4, !tbaa !296, !noalias !4035
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !296, !noalias !4035
  %.not.i.i80 = icmp eq ptr %i.gf, %i.bj
  br i1 %.not.i.i80, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78, !llvm.loop !3980

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81: ; preds = %.lr.ph.i.i78, %middle.block516, %bb.w
  %.not9.i82 = icmp eq i64 %.neg306, 0
  br i1 %.not9.i82, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gj = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.gk = getelementptr inbounds i8, ptr %.sroa.0214.0337, i64 -4 ; 2 uses
  %i.gl = load i32, ptr %i.gj, align 4, !tbaa !296
  %i.gm = load i32, ptr %i.gk, align 4, !tbaa !296
  store i32 %i.gm, ptr %i.gj, align 4, !tbaa !296
  store i32 %i.gl, ptr %i.gk, align 4, !tbaa !296
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gn = icmp eq ptr %i.bp, %.sroa.0264.0342
  br i1 %i.gn, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.go = icmp eq ptr %.sroa.0264.0342, %.sroa.0214.0337
  %spec.select302 = select i1 %i.go, ptr %i.bp, ptr %.sroa.0264.0342
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85: ; preds = %bb.z, %bb.y, %bb.v
  %.sroa.0264.5 = phi ptr [ %.sroa.0264.0342, %bb.v ], [ %spec.select302, %bb.z ], [ %.sroa.0214.0337, %bb.y ]
  %i.gp = load ptr, ptr %28, align 8, !tbaa !441  ; 2 uses
  %i.gq = load ptr, ptr %29, align 8, !tbaa !441  ; 3 uses
  %.not307 = icmp eq ptr %i.gp, %i.gq
  br i1 %.not307, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %2
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85, %bb.aa
  %.sroa.0224.1 = phi ptr [ %i.bj, %bb.aa ], [ %i.gq, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85 ]
  %.sroa.0239.1 = phi ptr [ %i.fa, %bb.aa ], [ %i.gp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85 ]
  %.sroa.0253.2 = phi ptr [ %i.gr, %bb.aa ], [ %i.gq, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85 ]
  %.161 = phi i8 [ %i.ez, %bb.aa ], [ %.060345, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.m, %bb.ab
  %i.gs = phi i1 [ %i.ey, %bb.ab ], [ %i.cf, %bb.m ], [ %i.cf, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.cf, %bb.n ]
  %.sroa.0224.2 = phi ptr [ %.sroa.0224.1, %bb.ab ], [ %i.bj, %bb.m ], [ %i.bj, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.bj, %bb.n ] ; 2 uses
  %.sroa.0239.2 = phi ptr [ %.sroa.0239.1, %bb.ab ], [ %i.ak, %bb.m ], [ %i.ak, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.ak, %bb.n ] ; 2 uses
  %.sroa.0253.3 = phi ptr [ %.sroa.0253.2, %bb.ab ], [ %.sroa.0253.1, %bb.m ], [ %.sroa.0253.1, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.sroa.0253.1, %bb.n ] ; 2 uses
  %.sroa.0264.1 = phi ptr [ %.sroa.0264.5, %bb.ab ], [ %.sroa.0214.0337, %bb.m ], [ %.sroa.0264.0342, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.262 = phi i8 [ %.161, %bb.ab ], [ %.060345, %bb.m ], [ %.060345, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.060345, %bb.n ] ; 2 uses
  %not. = xor i1 %i.gs, true
  %i.gt = sext i1 %not. to i64
  %.1 = add i64 %.0346, %i.gt
  store ptr %i.bj, ptr %27, align 8, !tbaa !441
  %i.gu = getelementptr inbounds i8, ptr %.sroa.0214.0337, i64 -4 ; 2 uses
  %i.gv = icmp ne i64 %.063344, 0
  %.neg = sext i1 %i.gv to i64
  %i.gw = add i64 %.063344, %.neg                 ; 2 uses
  %i.gx = icmp ne i64 %i.bg, 0
  %.neg69 = sext i1 %i.gx to i64
  %i.gy = add i64 %.sroa.speculated277, %.neg69   ; 2 uses
  %i.gz = add i64 %.0288343, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gz, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !3981

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.ha = phi ptr [ %i.bj, %.sink.split.i ], [ %i.ak, %bb.f ]
  %.4 = phi i64 [ %i.gy, %.sink.split.i ], [ %.sroa.speculated277, %bb.f ]
  %.sroa.0214.0.lcssa.ph = phi ptr [ %i.gu, %.sink.split.i ], [ %.sroa.0214.0337, %bb.f ]
  %.sroa.0224.0.lcssa.ph = phi ptr [ %.sroa.0224.2, %.sink.split.i ], [ %.sroa.0224.0339, %bb.f ]
  %.sroa.0239.0.lcssa.ph = phi ptr [ %.sroa.0239.2, %.sink.split.i ], [ %.sroa.0239.0340, %bb.f ]
  %.sroa.0253.0.lcssa.ph = phi ptr [ %.sroa.0253.3, %.sink.split.i ], [ %.sroa.0253.0341, %bb.f ]
  %.sroa.0264.0.lcssa.ph = phi ptr [ %.sroa.0264.1, %.sink.split.i ], [ %.sroa.0264.0342, %bb.f ]
  %.0288.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0288343, %bb.f ]
  %.063.lcssa.ph = phi i64 [ %i.gw, %.sink.split.i ], [ %.063344, %bb.f ]
  %.060.lcssa.ph = phi i8 [ %.262, %.sink.split.i ], [ %.060345, %bb.f ]
  %i.hb = trunc nuw i8 %.060.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.hc = phi ptr [ %i.i, %bb.a ], [ %i.ha, %.thread.loopexit ] ; 8 uses
  %.1395 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.sroa.0214.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %.sroa.0214.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0224.0.lcssa = phi ptr [ %i.i, %bb.a ], [ %.sroa.0224.0.lcssa.ph, %.thread.loopexit ] ; 8 uses
  %.sroa.0239.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.0239.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0253.0.lcssa = phi ptr [ %i.g, %bb.a ], [ %.sroa.0253.0.lcssa.ph, %.thread.loopexit ] ; 4 uses
  %.sroa.0264.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %.sroa.0264.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0288.lcssa = phi i64 [ 0, %bb.a ], [ %.0288.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.063.lcssa = phi i64 [ %i.n, %bb.a ], [ %.063.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.060.lcssa = phi i1 [ true, %bb.a ], [ %i.hb, %.thread.loopexit ]
  %i.hd = icmp eq ptr %.sroa.0224.0.lcssa, %.sroa.0253.0.lcssa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.l, ptr %32, align 8, !tbaa !441
  %.neg309 = mul i64 %6, -4                       ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.l, i64 %.neg309 ; 7 uses
  %i.hf = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.hf, i1 %.060.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.hd, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not1.i = icmp eq ptr %.sroa.0239.0.lcssa, %.sroa.0224.0.lcssa
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %bb.ad
  %i.hg = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !296, !noalias !4036
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i86
  %i.hi = phi ptr [ %.sroa.0239.0.lcssa, %.lr.ph.i86 ], [ %i.hj, %bb.af ] ; 2 uses
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -4 ; 4 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !296, !noalias !4036
  %i.hl = icmp slt i32 %i.hk, %i.hh
  br i1 %i.hl, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i87 = icmp eq ptr %i.hj, %.sroa.0224.0.lcssa
  br i1 %.not.i87, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !81

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0239.0.lcssa, %bb.ad ], [ %i.hi, %bb.ae ], [ %i.hj, %bb.af ] ; 8 uses
  %i.hm = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.hn = ptrtoint ptr %.sroa.0224.0.lcssa to i64 ; 2 uses
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = getelementptr i8, ptr %i.hc, i64 %i.ho  ; 7 uses
  %.not1.i.i88 = icmp eq ptr %.lcssa.i, %.sroa.0224.0.lcssa
  br i1 %.not1.i.i88, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit93, label %.lr.ph.i.i89.preheader

.lr.ph.i.i89.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %i.hq = add i64 %i.hm, -4
  %i.hr = sub i64 %i.hq, %i.hn                    ; 4 uses
  %i.hs = lshr i64 %i.hr, 2
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 2 uses
  %min.iters.check558 = icmp ult i64 %i.hr, 60
  br i1 %min.iters.check558, label %.lr.ph.i.i89.preheader661, label %vector.memcheck559

vector.memcheck559:                               ; preds = %.lr.ph.i.i89.preheader
  %.not642 = and i64 %i.hr, -4
  %i.hu = xor i64 %.not642, -4
  %i.hv = getelementptr i8, ptr %.lcssa.i, i64 %i.hu
  %i.hw = and i64 %i.hr, 3
  %i.hx = getelementptr i8, ptr %i.hc, i64 %i.hw
  %bound0560 = icmp ult ptr %i.hv, %i.hp
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_:bb.a
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.cc, label %bb.p, label %bb.s

.thread414:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.bu, label %.thread415, label %.thread416

.thread416:                                       ; preds = %.thread414
  store ptr %.sroa.0238.0337, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0223.0336, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.dt = ptrtoint ptr %.sroa.0238.0337 to i64
  %i.du = ptrtoint ptr %.sroa.0223.0336 to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 2
  %i.dx = sub nsw i64 0, %i.dw
  %i.dy = getelementptr inbounds [4 x i8], ptr %.sroa.0252.0338, i64 %i.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br label %bb.u

.thread415:                                       ; preds = %.thread414
  %i.dz = ptrtoint ptr %.sroa.0238.0337 to i64
  %i.ea = ptrtoint ptr %.sroa.0223.0336 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds i8, ptr %i.ak, i64 %i.eb ; 2 uses
  store ptr %i.ec, ptr %28, align 8, !tbaa !441
  store ptr %i.ec, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ed = ptrtoint ptr %.sroa.0238.0337 to i64
  %i.ee = ptrtoint ptr %.sroa.0223.0336 to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = getelementptr inbounds i8, ptr %i.ak, i64 %i.ef ; 2 uses
  store ptr %i.eg, ptr %28, align 8, !tbaa !441
  store ptr %i.eg, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.sroa.0238.0337, ptr %18, align 8, !tbaa !441, !noalias !4396
  store ptr %.sroa.0223.0336, ptr %19, align 8, !tbaa !441, !noalias !4396
  store ptr %i.bj, ptr %20, align 8, !tbaa !441, !noalias !4396
  store ptr %i.bh, ptr %21, align 8, !tbaa !441, !noalias !4396
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %20, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

bb.r:                                             ; preds = %.thread415, %bb.p
  %i.eh = phi i8 [ 1, %.thread415 ], [ %i.cb, %bb.p ]
  %i.ei = phi i1 [ true, %.thread415 ], [ %i.ca, %bb.p ]
  store ptr %.sroa.0238.0337, ptr %22, align 8, !tbaa !441, !noalias !4396
  store ptr %.sroa.0223.0336, ptr %23, align 8, !tbaa !441, !noalias !4396
  store ptr %i.bj, ptr %24, align 8, !tbaa !441, !noalias !4396
  store ptr %i.bh, ptr %25, align 8, !tbaa !441, !noalias !4396
  store ptr %17, ptr %26, align 8, !tbaa !455, !noalias !4396
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %26)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit: ; preds = %bb.q, %bb.r
  %i.ej = phi i8 [ %i.cb, %bb.q ], [ %i.eh, %bb.r ]
  %i.ek = phi i1 [ %i.ca, %bb.q ], [ %i.ei, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  store ptr %.sroa.0238.0337, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0223.0336, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.el = ptrtoint ptr %.sroa.0238.0337 to i64
  %i.em = ptrtoint ptr %.sroa.0223.0336 to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 2
  %i.ep = sub nsw i64 0, %i.eo
  %i.eq = getelementptr inbounds [4 x i8], ptr %.sroa.0252.0338, i64 %i.ep ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br i1 %i.cd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.0252.0338, ptr %8, align 8, !tbaa !441, !noalias !4397
  store ptr %i.eq, ptr %9, align 8, !tbaa !441, !noalias !4397
  store ptr %i.bj, ptr %10, align 8, !tbaa !441, !noalias !4397
  store ptr %i.bh, ptr %11, align 8, !tbaa !441, !noalias !4397
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

bb.u:                                             ; preds = %.thread416, %bb.s
  %i.er = phi ptr [ %i.dy, %.thread416 ], [ %i.eq, %bb.s ]
  %i.es = phi i8 [ 1, %.thread416 ], [ %i.cb, %bb.s ]
  %i.et = phi i1 [ true, %.thread416 ], [ %i.ca, %bb.s ]
  store ptr %.sroa.0252.0338, ptr %12, align 8, !tbaa !441, !noalias !4397
  store ptr %i.er, ptr %13, align 8, !tbaa !441, !noalias !4397
  store ptr %i.bj, ptr %14, align 8, !tbaa !441, !noalias !4397
  store ptr %i.bh, ptr %15, align 8, !tbaa !441, !noalias !4397
  store ptr %7, ptr %16, align 8, !tbaa !455, !noalias !4397
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %16)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75: ; preds = %bb.t, %bb.u
  %i.eu = phi i8 [ %i.cb, %bb.t ], [ %i.es, %bb.u ]
  %i.ev = phi i1 [ %i.ca, %bb.t ], [ %i.et, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit
  %i.ew = phi i1 [ %i.ev, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.ek, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.ex = phi i8 [ %i.eu, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.ej, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.ey = load ptr, ptr %27, align 8, !tbaa !441  ; 11 uses
  %i.ez = ptrtoint ptr %i.ey to i64               ; 4 uses
  %i.fa = ptrtoint ptr %i.bj to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = getelementptr inbounds i8, ptr %i.bi, i64 %i.fb ; 6 uses
  %.not.i76 = icmp eq ptr %i.ey, %i.fc
  br i1 %.not.i76, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not1.i.i77 = icmp eq ptr %i.ey, %i.bj
  br i1 %.not1.i.i77, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader

.lr.ph.i.i78.preheader:                           ; preds = %bb.w
  %i.fd = mul i64 %indvar, %i.ac
  %i.fe = add i64 %i.af, %i.fd
  %i.ff = add i64 %i.fe, %i.ez                    ; 2 uses
  %i.fg = lshr i64 %i.ff, 2
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %min.iters.check485 = icmp ult i64 %i.ff, 44
  br i1 %min.iters.check485, label %.lr.ph.i.i78.preheader624, label %vector.memcheck486

vector.memcheck486:                               ; preds = %.lr.ph.i.i78.preheader
  %i.fi = mul i64 %indvar, %i.x
  %i.fj = add i64 %i.ab, %i.fi
  %i.fk = add i64 %i.fj, %i.ez
  %i.fl = and i64 %i.fk, -4                       ; 2 uses
  %i.fm = sub nuw nsw i64 -4, %i.fl
  %i.fn = getelementptr i8, ptr %i.ey, i64 %i.fm
  %i.fo = mul i64 %.018.lcssa.i, %2
  %i.fp = shl i64 %i.fo, 2
  %i.fq = add i64 %i.fp, %i.fl
  %i.fr = add i64 %i.fq, %i.f
  %reass.sub = sub i64 %i.ez, %i.fr
  %39 = getelementptr i8, ptr %i.e, i64 %reass.sub
  %i.fs = getelementptr i8, ptr %39, i64 -4
  %bound0487 = icmp ult ptr %i.fn, %i.fc
  %bound1488 = icmp ult ptr %i.fs, %i.ey
  %found.conflict489 = and i1 %bound0487, %bound1488
  br i1 %found.conflict489, label %.lr.ph.i.i78.preheader624, label %vector.ph490

vector.ph490:                                     ; preds = %vector.memcheck486
  %n.vec491 = and i64 %i.fh, 9223372036854775800  ; 3 uses
  %i.ft = mul i64 %n.vec491, -4                   ; 2 uses
  %i.fu = getelementptr i8, ptr %i.fc, i64 %i.ft
  %i.fv = getelementptr i8, ptr %i.ey, i64 %i.ft
  br label %vector.body492

vector.body492:                                   ; preds = %vector.body492, %vector.ph490
  %index493 = phi i64 [ 0, %vector.ph490 ], [ %index.next500, %vector.body492 ] ; 2 uses
  %i.fw = mul i64 %index493, -4                   ; 2 uses
  %next.gep494 = getelementptr i8, ptr %i.fc, i64 %i.fw ; 2 uses
  %next.gep495 = getelementptr i8, ptr %i.ey, i64 %i.fw ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %next.gep495, i64 -16 ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %next.gep495, i64 -32 ; 2 uses
  %wide.load496 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !296, !alias.scope !4398, !noalias !4399
  %wide.load497 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !296, !alias.scope !4398, !noalias !4399
  %i.fz = getelementptr inbounds i8, ptr %next.gep494, i64 -16 ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %next.gep494, i64 -32 ; 2 uses
  %wide.load498 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !296, !alias.scope !4400, !noalias !4401
  %wide.load499 = load <4 x i32>, ptr %i.ga, align 4, !tbaa !296, !alias.scope !4400, !noalias !4401
  store <4 x i32> %wide.load498, ptr %i.fx, align 4, !tbaa !296, !alias.scope !4398, !noalias !4399
  store <4 x i32> %wide.load499, ptr %i.fy, align 4, !tbaa !296, !alias.scope !4398, !noalias !4399
  store <4 x i32> %wide.load496, ptr %i.fz, align 4, !tbaa !296, !alias.scope !4400, !noalias !4401
  store <4 x i32> %wide.load497, ptr %i.ga, align 4, !tbaa !296, !alias.scope !4400, !noalias !4401
  %index.next500 = add nuw i64 %index493, 8       ; 2 uses
  %i.gb = icmp eq i64 %index.next500, %n.vec491
  br i1 %i.gb, label %middle.block501, label %vector.body492, !llvm.loop !4360

middle.block501:                                  ; preds = %vector.body492
  %cmp.n502 = icmp eq i64 %i.fh, %n.vec491
  br i1 %cmp.n502, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader624

.lr.ph.i.i78.preheader624:                        ; preds = %vector.memcheck486, %.lr.ph.i.i78.preheader, %middle.block501
  %.sroa.04.0.i79.ph = phi ptr [ %i.fc, %vector.memcheck486 ], [ %i.fc, %.lr.ph.i.i78.preheader ], [ %i.fu, %middle.block501 ]
  %.ph625 = phi ptr [ %i.ey, %vector.memcheck486 ], [ %i.ey, %.lr.ph.i.i78.preheader ], [ %i.fv, %middle.block501 ]
  br label %.lr.ph.i.i78

.lr.ph.i.i78:                                     ; preds = %.lr.ph.i.i78.preheader624, %.lr.ph.i.i78
  %.sroa.04.0.i79 = phi ptr [ %i.ge, %.lr.ph.i.i78 ], [ %.sroa.04.0.i79.ph, %.lr.ph.i.i78.preheader624 ]
  %i.gc = phi ptr [ %i.gd, %.lr.ph.i.i78 ], [ %.ph625, %.lr.ph.i.i78.preheader624 ]
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -4 ; 4 uses
  %i.ge = getelementptr inbounds i8, ptr %.sroa.04.0.i79, i64 -4 ; 3 uses
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !296, !noalias !4401
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !296, !noalias !4401
  store i32 %i.gg, ptr %i.gd, align 4, !tbaa !296, !noalias !4401
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !296, !noalias !4401
  %.not.i.i80 = icmp eq ptr %i.gd, %i.bj
  br i1 %.not.i.i80, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78, !llvm.loop !4361

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81: ; preds = %.lr.ph.i.i78, %middle.block501, %bb.w
  %.not9.i82 = icmp eq i64 %.018.lcssa.i, 0
  br i1 %.not9.i82, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gh = getelementptr inbounds i8, ptr %i.bq, i64 -1 ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %.sroa.0213.0334, i64 -1 ; 2 uses
  %i.gj = load i8, ptr %i.gh, align 1, !tbaa !276
  %i.gk = load i8, ptr %i.gi, align 1, !tbaa !276
  store i8 %i.gk, ptr %i.gh, align 1, !tbaa !276
  store i8 %i.gj, ptr %i.gi, align 1, !tbaa !276
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gl = icmp eq ptr %i.bq, %.sroa.0263.0339
  br i1 %i.gl, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gm = icmp eq ptr %.sroa.0263.0339, %.sroa.0213.0334
  %spec.select301 = select i1 %i.gm, ptr %i.bq, ptr %.sroa.0263.0339
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86: ; preds = %bb.z, %bb.y, %bb.v
  %.sroa.0263.5 = phi ptr [ %.sroa.0263.0339, %bb.v ], [ %spec.select301, %bb.z ], [ %.sroa.0213.0334, %bb.y ]
  %i.gn = load ptr, ptr %28, align 8, !tbaa !441  ; 2 uses
  %i.go = load ptr, ptr %29, align 8, !tbaa !441  ; 3 uses
  %.not304 = icmp eq ptr %i.gn, %i.go
  br i1 %.not304, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %2
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86, %bb.aa
  %.sroa.0223.1 = phi ptr [ %i.bj, %bb.aa ], [ %i.go, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86 ]
  %.sroa.0238.1 = phi ptr [ %i.ey, %bb.aa ], [ %i.gn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86 ]
  %.sroa.0252.2 = phi ptr [ %i.gp, %bb.aa ], [ %i.go, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86 ]
  %.161 = phi i8 [ %i.ex, %bb.aa ], [ %.060342, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.m, %bb.n, %bb.ab
  %i.gq = phi i1 [ %i.ew, %bb.ab ], [ %i.cg, %bb.n ], [ %i.cg, %bb.m ], [ %i.cg, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ]
  %.sroa.0223.2 = phi ptr [ %.sroa.0223.1, %bb.ab ], [ %i.bj, %bb.n ], [ %i.bj, %bb.m ], [ %i.bj, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.sroa.0238.2 = phi ptr [ %.sroa.0238.1, %bb.ab ], [ %i.ak, %bb.n ], [ %i.ak, %bb.m ], [ %i.ak, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.sroa.0252.3 = phi ptr [ %.sroa.0252.2, %bb.ab ], [ %.sroa.0252.1, %bb.n ], [ %.sroa.0252.1, %bb.m ], [ %.sroa.0252.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.sroa.0263.1 = phi ptr [ %.sroa.0263.5, %bb.ab ], [ %spec.select, %bb.n ], [ %.sroa.0213.0334, %bb.m ], [ %.sroa.0263.0339, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.262 = phi i8 [ %.161, %bb.ab ], [ %.060342, %bb.n ], [ %.060342, %bb.m ], [ %.060342, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %not. = xor i1 %i.gq, true
  %i.gr = sext i1 %not. to i64
  %.1 = add i64 %.0343, %i.gr
  store ptr %i.bj, ptr %27, align 8, !tbaa !441
  %i.gs = getelementptr inbounds i8, ptr %.sroa.0213.0334, i64 -1 ; 2 uses
  %i.gt = icmp ne i64 %.063341, 0
  %.neg = sext i1 %i.gt to i64
  %i.gu = add i64 %.063341, %.neg                 ; 2 uses
  %i.gv = icmp ne i64 %i.bg, 0
  %.neg69 = sext i1 %i.gv to i64
  %i.gw = add i64 %.sroa.speculated276, %.neg69   ; 2 uses
  %i.gx = add i64 %.0287340, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gx, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !4362

.thread.loopexit:                                 ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit
  %i.gy = phi ptr [ %i.bj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %i.ak, %bb.f ]
  %.4 = phi i64 [ %i.gw, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.speculated276, %bb.f ]
  %.sroa.0213.0.lcssa.ph = phi ptr [ %i.gs, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0213.0334, %bb.f ]
  %.sroa.0223.0.lcssa.ph = phi ptr [ %.sroa.0223.2, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0223.0336, %bb.f ]
  %.sroa.0238.0.lcssa.ph = phi ptr [ %.sroa.0238.2, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0238.0337, %bb.f ]
  %.sroa.0252.0.lcssa.ph = phi ptr [ %.sroa.0252.3, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0252.0338, %bb.f ]
  %.sroa.0263.0.lcssa.ph = phi ptr [ %.sroa.0263.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0263.0339, %bb.f ]
  %.0287.lcssa.ph = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.0287340, %bb.f ]
  %.063.lcssa.ph = phi i64 [ %i.gu, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.063341, %bb.f ]
  %.060.lcssa.ph = phi i8 [ %.262, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.060342, %bb.f ]
  %i.gz = trunc nuw i8 %.060.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.ha = phi ptr [ %i.i, %bb.a ], [ %i.gy, %.thread.loopexit ] ; 8 uses
  %.1391 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.sroa.0213.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %.sroa.0213.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0223.0.lcssa = phi ptr [ %i.i, %bb.a ], [ %.sroa.0223.0.lcssa.ph, %.thread.loopexit ] ; 8 uses
  %.sroa.0238.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.0238.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0252.0.lcssa = phi ptr [ %i.g, %bb.a ], [ %.sroa.0252.0.lcssa.ph, %.thread.loopexit ] ; 4 uses
  %.sroa.0263.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %.sroa.0263.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0287.lcssa = phi i64 [ 0, %bb.a ], [ %.0287.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.063.lcssa = phi i64 [ %i.n, %bb.a ], [ %.063.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.060.lcssa = phi i1 [ true, %bb.a ], [ %i.gz, %.thread.loopexit ]
  %i.hb = ptrtoaddr ptr %i.ha to i64
  %i.hc = icmp eq ptr %.sroa.0223.0.lcssa, %.sroa.0252.0.lcssa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.l, ptr %32, align 8, !tbaa !441
  %.neg306 = mul i64 %6, -4                       ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %i.l, i64 %.neg306 ; 7 uses
  %i.he = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.he, i1 %.060.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.hc, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not1.i = icmp eq ptr %.sroa.0238.0.lcssa, %.sroa.0223.0.lcssa
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.ad
  %i.hf = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !296, !noalias !4402
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i87
  %i.hh = phi ptr [ %.sroa.0238.0.lcssa, %.lr.ph.i87 ], [ %i.hi, %bb.af ] ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -4 ; 4 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !296, !noalias !4402
  %i.hk = icmp slt i32 %i.hj, %i.hg
  br i1 %i.hk, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i88 = icmp eq ptr %i.hi, %.sroa.0223.0.lcssa
  br i1 %.not.i88, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !81

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0238.0.lcssa, %bb.ad ], [ %i.hh, %bb.ae ], [ %i.hi, %bb.af ] ; 5 uses
  %i.hl = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.hm = ptrtoint ptr %.sroa.0223.0.lcssa to i64 ; 3 uses
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = getelementptr inbounds i8, ptr %i.ha, i64 %i.hn ; 5 uses
  %.not1.i.i89 = icmp eq ptr %.lcssa.i, %.sroa.0223.0.lcssa
  br i1 %.not1.i.i89, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit93, label %.lr.ph.i.i90.preheader

.lr.ph.i.i90.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %i.hp = add i64 %i.hl, -4
  %i.hq = sub i64 %i.hp, %i.hm                    ; 2 uses
  %i.hr = lshr i64 %i.hq, 2
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 2 uses
  %min.iters.check532 = icmp ult i64 %i.hq, 44
  %i.ht = sub i64 %i.hb, %i.hm
  %diff.check534 = icmp ugt i64 %i.ht, -32
  %or.cond596 = select i1 %min.iters.check532, i1 true, i1 %diff.check534
  br i1 %or.cond596, label %.lr.ph.i.i90.preheader614, label %vector.ph535

vector.ph535:                                     ; preds = %.lr.ph.i.i90.preheader
  %n.vec536 = and i64 %i.hs, 9223372036854775800  ; 3 uses
  %i.hu = mul i64 %n.vec536, -4                   ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_:bb.a
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.cc, label %bb.p, label %bb.s

.thread419:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.bu, label %.thread420, label %.thread421

.thread421:                                       ; preds = %.thread419
  store ptr %.sroa.0242.0341, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0227.0340, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.dw = ptrtoint ptr %.sroa.0242.0341 to i64
  %i.dx = ptrtoint ptr %.sroa.0227.0340 to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 2
  %i.ea = sub nsw i64 0, %i.dz
  %i.eb = getelementptr inbounds [4 x i8], ptr %.sroa.0256.0342, i64 %i.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br label %bb.u

.thread420:                                       ; preds = %.thread419
  %i.ec = ptrtoint ptr %.sroa.0242.0341 to i64
  %i.ed = ptrtoint ptr %.sroa.0227.0340 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds i8, ptr %i.ak, i64 %i.ee ; 2 uses
  store ptr %i.ef, ptr %28, align 8, !tbaa !441
  store ptr %i.ef, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.eg = ptrtoint ptr %.sroa.0242.0341 to i64
  %i.eh = ptrtoint ptr %.sroa.0227.0340 to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = getelementptr inbounds i8, ptr %i.ak, i64 %i.ei ; 2 uses
  store ptr %i.ej, ptr %28, align 8, !tbaa !441
  store ptr %i.ej, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.sroa.0242.0341, ptr %18, align 8, !tbaa !441, !noalias !4484
  store ptr %.sroa.0227.0340, ptr %19, align 8, !tbaa !441, !noalias !4484
  store ptr %i.bj, ptr %20, align 8, !tbaa !441, !noalias !4484
  store ptr %i.bh, ptr %21, align 8, !tbaa !441, !noalias !4484
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %20, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

bb.r:                                             ; preds = %.thread420, %bb.p
  %i.ek = phi i8 [ 1, %.thread420 ], [ %i.cb, %bb.p ]
  %i.el = phi i1 [ true, %.thread420 ], [ %i.ca, %bb.p ]
  store ptr %.sroa.0242.0341, ptr %22, align 8, !tbaa !441, !noalias !4484
  store ptr %.sroa.0227.0340, ptr %23, align 8, !tbaa !441, !noalias !4484
  store ptr %i.bj, ptr %24, align 8, !tbaa !441, !noalias !4484
  store ptr %i.bh, ptr %25, align 8, !tbaa !441, !noalias !4484
  store ptr %17, ptr %26, align 8, !tbaa !455, !noalias !4484
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %26)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit: ; preds = %bb.q, %bb.r
  %i.em = phi i8 [ %i.cb, %bb.q ], [ %i.ek, %bb.r ]
  %i.en = phi i1 [ %i.ca, %bb.q ], [ %i.el, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  store ptr %.sroa.0242.0341, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0227.0340, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.eo = ptrtoint ptr %.sroa.0242.0341 to i64
  %i.ep = ptrtoint ptr %.sroa.0227.0340 to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 2
  %i.es = sub nsw i64 0, %i.er
  %i.et = getelementptr inbounds [4 x i8], ptr %.sroa.0256.0342, i64 %i.es ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br i1 %i.cd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.0256.0342, ptr %8, align 8, !tbaa !441, !noalias !4485
  store ptr %i.et, ptr %9, align 8, !tbaa !441, !noalias !4485
  store ptr %i.bj, ptr %10, align 8, !tbaa !441, !noalias !4485
  store ptr %i.bh, ptr %11, align 8, !tbaa !441, !noalias !4485
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

bb.u:                                             ; preds = %.thread421, %bb.s
  %i.eu = phi ptr [ %i.eb, %.thread421 ], [ %i.et, %bb.s ]
  %i.ev = phi i8 [ 1, %.thread421 ], [ %i.cb, %bb.s ]
  %i.ew = phi i1 [ true, %.thread421 ], [ %i.ca, %bb.s ]
  store ptr %.sroa.0256.0342, ptr %12, align 8, !tbaa !441, !noalias !4485
  store ptr %i.eu, ptr %13, align 8, !tbaa !441, !noalias !4485
  store ptr %i.bj, ptr %14, align 8, !tbaa !441, !noalias !4485
  store ptr %i.bh, ptr %15, align 8, !tbaa !441, !noalias !4485
  store ptr %7, ptr %16, align 8, !tbaa !455, !noalias !4485
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %16)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75: ; preds = %bb.t, %bb.u
  %i.ex = phi i8 [ %i.cb, %bb.t ], [ %i.ev, %bb.u ]
  %i.ey = phi i1 [ %i.ca, %bb.t ], [ %i.ew, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit
  %i.ez = phi i1 [ %i.ey, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.en, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.fa = phi i8 [ %i.ex, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.em, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.fb = load ptr, ptr %27, align 8, !tbaa !441  ; 11 uses
  %i.fc = ptrtoint ptr %i.fb to i64               ; 4 uses
  %i.fd = ptrtoint ptr %i.bj to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = getelementptr inbounds i8, ptr %i.bi, i64 %i.fe ; 6 uses
  %.not.i76 = icmp eq ptr %i.fb, %i.ff
  br i1 %.not.i76, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not1.i.i77 = icmp eq ptr %i.fb, %i.bj
  br i1 %.not1.i.i77, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader

.lr.ph.i.i78.preheader:                           ; preds = %bb.w
  %i.fg = mul i64 %indvar, %i.ac
  %i.fh = add i64 %i.af, %i.fg
  %i.fi = add i64 %i.fh, %i.fc                    ; 2 uses
  %i.fj = lshr i64 %i.fi, 2
  %i.fk = add nuw nsw i64 %i.fj, 1                ; 2 uses
  %min.iters.check501 = icmp ult i64 %i.fi, 44
  br i1 %min.iters.check501, label %.lr.ph.i.i78.preheader672, label %vector.memcheck502

vector.memcheck502:                               ; preds = %.lr.ph.i.i78.preheader
  %i.fl = mul i64 %indvar, %i.x
  %i.fm = add i64 %i.ab, %i.fl
  %i.fn = add i64 %i.fm, %i.fc
  %i.fo = and i64 %i.fn, -4                       ; 2 uses
  %i.fp = sub nuw nsw i64 -4, %i.fo
  %i.fq = getelementptr i8, ptr %i.fb, i64 %i.fp
  %i.fr = mul i64 %.018.lcssa.i, %2
  %i.fs = shl i64 %i.fr, 2
  %i.ft = add i64 %i.fs, %i.fo
  %i.fu = add i64 %i.ft, %i.f
  %reass.sub = sub i64 %i.fc, %i.fu
  %39 = getelementptr i8, ptr %i.e, i64 %reass.sub
  %i.fv = getelementptr i8, ptr %39, i64 -4
  %bound0503 = icmp ult ptr %i.fq, %i.ff
  %bound1504 = icmp ult ptr %i.fv, %i.fb
  %found.conflict505 = and i1 %bound0503, %bound1504
  br i1 %found.conflict505, label %.lr.ph.i.i78.preheader672, label %vector.ph506

vector.ph506:                                     ; preds = %vector.memcheck502
  %n.vec507 = and i64 %i.fk, 9223372036854775800  ; 3 uses
  %i.fw = mul i64 %n.vec507, -4                   ; 2 uses
  %i.fx = getelementptr i8, ptr %i.ff, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fb, i64 %i.fw
  br label %vector.body508

vector.body508:                                   ; preds = %vector.body508, %vector.ph506
  %index509 = phi i64 [ 0, %vector.ph506 ], [ %index.next516, %vector.body508 ] ; 2 uses
  %i.fz = mul i64 %index509, -4                   ; 2 uses
  %next.gep510 = getelementptr i8, ptr %i.ff, i64 %i.fz ; 2 uses
  %next.gep511 = getelementptr i8, ptr %i.fb, i64 %i.fz ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %next.gep511, i64 -16 ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %next.gep511, i64 -32 ; 2 uses
  %wide.load512 = load <4 x i32>, ptr %i.ga, align 4, !tbaa !296, !alias.scope !4486, !noalias !4487
  %wide.load513 = load <4 x i32>, ptr %i.gb, align 4, !tbaa !296, !alias.scope !4486, !noalias !4487
  %i.gc = getelementptr inbounds i8, ptr %next.gep510, i64 -16 ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %next.gep510, i64 -32 ; 2 uses
  %wide.load514 = load <4 x i32>, ptr %i.gc, align 4, !tbaa !296, !alias.scope !4488, !noalias !4489
  %wide.load515 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !296, !alias.scope !4488, !noalias !4489
  store <4 x i32> %wide.load514, ptr %i.ga, align 4, !tbaa !296, !alias.scope !4486, !noalias !4487
  store <4 x i32> %wide.load515, ptr %i.gb, align 4, !tbaa !296, !alias.scope !4486, !noalias !4487
  store <4 x i32> %wide.load512, ptr %i.gc, align 4, !tbaa !296, !alias.scope !4488, !noalias !4489
  store <4 x i32> %wide.load513, ptr %i.gd, align 4, !tbaa !296, !alias.scope !4488, !noalias !4489
  %index.next516 = add nuw i64 %index509, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next516, %n.vec507
  br i1 %i.ge, label %middle.block517, label %vector.body508, !llvm.loop !4433

middle.block517:                                  ; preds = %vector.body508
  %cmp.n518 = icmp eq i64 %i.fk, %n.vec507
  br i1 %cmp.n518, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader672

.lr.ph.i.i78.preheader672:                        ; preds = %vector.memcheck502, %.lr.ph.i.i78.preheader, %middle.block517
  %.sroa.04.0.i79.ph = phi ptr [ %i.ff, %vector.memcheck502 ], [ %i.ff, %.lr.ph.i.i78.preheader ], [ %i.fx, %middle.block517 ]
  %.ph673 = phi ptr [ %i.fb, %vector.memcheck502 ], [ %i.fb, %.lr.ph.i.i78.preheader ], [ %i.fy, %middle.block517 ]
  br label %.lr.ph.i.i78

.lr.ph.i.i78:                                     ; preds = %.lr.ph.i.i78.preheader672, %.lr.ph.i.i78
  %.sroa.04.0.i79 = phi ptr [ %i.gh, %.lr.ph.i.i78 ], [ %.sroa.04.0.i79.ph, %.lr.ph.i.i78.preheader672 ]
  %i.gf = phi ptr [ %i.gg, %.lr.ph.i.i78 ], [ %.ph673, %.lr.ph.i.i78.preheader672 ]
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 -4 ; 4 uses
  %i.gh = getelementptr inbounds i8, ptr %.sroa.04.0.i79, i64 -4 ; 3 uses
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !296, !noalias !4489
  %i.gj = load i32, ptr %i.gh, align 4, !tbaa !296, !noalias !4489
  store i32 %i.gj, ptr %i.gg, align 4, !tbaa !296, !noalias !4489
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !296, !noalias !4489
  %.not.i.i80 = icmp eq ptr %i.gg, %i.bj
  br i1 %.not.i.i80, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78, !llvm.loop !4434

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81: ; preds = %.lr.ph.i.i78, %middle.block517, %bb.w
  %.not9.i82 = icmp eq i64 %.018.lcssa.i, 0
  br i1 %.not9.i82, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gk = getelementptr inbounds i8, ptr %i.bq, i64 -1 ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %.sroa.0217.0338, i64 -1 ; 2 uses
  %i.gm = load i8, ptr %i.gk, align 1, !tbaa !276
  %i.gn = load i8, ptr %i.gl, align 1, !tbaa !276
  store i8 %i.gn, ptr %i.gk, align 1, !tbaa !276
  store i8 %i.gm, ptr %i.gl, align 1, !tbaa !276
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.go = icmp eq ptr %i.bq, %.sroa.0267.0343
  br i1 %i.go, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gp = icmp eq ptr %.sroa.0267.0343, %.sroa.0217.0338
  %spec.select305 = select i1 %i.gp, ptr %i.bq, ptr %.sroa.0267.0343
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86: ; preds = %bb.z, %bb.y, %bb.v
  %.sroa.0267.5 = phi ptr [ %.sroa.0267.0343, %bb.v ], [ %spec.select305, %bb.z ], [ %.sroa.0217.0338, %bb.y ]
  %i.gq = load ptr, ptr %28, align 8, !tbaa !441  ; 2 uses
  %i.gr = load ptr, ptr %29, align 8, !tbaa !441  ; 3 uses
  %.not308 = icmp eq ptr %i.gq, %i.gr
  br i1 %.not308, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %2
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86, %bb.aa
  %.sroa.0227.1 = phi ptr [ %i.bj, %bb.aa ], [ %i.gr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86 ]
  %.sroa.0242.1 = phi ptr [ %i.fb, %bb.aa ], [ %i.gq, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86 ]
  %.sroa.0256.2 = phi ptr [ %i.gs, %bb.aa ], [ %i.gr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86 ]
  %.161 = phi i8 [ %i.fa, %bb.aa ], [ %.060346, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.m, %bb.n, %bb.ab
  %i.gt = phi i1 [ %i.ez, %bb.ab ], [ %i.cg, %bb.n ], [ %i.cg, %bb.m ], [ %i.cg, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ]
  %.sroa.0227.2 = phi ptr [ %.sroa.0227.1, %bb.ab ], [ %i.bj, %bb.n ], [ %i.bj, %bb.m ], [ %i.bj, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.sroa.0242.2 = phi ptr [ %.sroa.0242.1, %bb.ab ], [ %i.ak, %bb.n ], [ %i.ak, %bb.m ], [ %i.ak, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.sroa.0256.3 = phi ptr [ %.sroa.0256.2, %bb.ab ], [ %.sroa.0256.1, %bb.n ], [ %.sroa.0256.1, %bb.m ], [ %.sroa.0256.1, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.sroa.0267.1 = phi ptr [ %.sroa.0267.5, %bb.ab ], [ %spec.select, %bb.n ], [ %.sroa.0217.0338, %bb.m ], [ %.sroa.0267.0343, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %.262 = phi i8 [ %.161, %bb.ab ], [ %.060346, %bb.n ], [ %.060346, %bb.m ], [ %.060346, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ] ; 2 uses
  %not. = xor i1 %i.gt, true
  %i.gu = sext i1 %not. to i64
  %.1 = add i64 %.0347, %i.gu
  store ptr %i.bj, ptr %27, align 8, !tbaa !441
  %i.gv = getelementptr inbounds i8, ptr %.sroa.0217.0338, i64 -1 ; 2 uses
  %i.gw = icmp ne i64 %.063345, 0
  %.neg = sext i1 %i.gw to i64
  %i.gx = add i64 %.063345, %.neg                 ; 2 uses
  %i.gy = icmp ne i64 %i.bg, 0
  %.neg69 = sext i1 %i.gy to i64
  %i.gz = add i64 %.sroa.speculated280, %.neg69   ; 2 uses
  %i.ha = add i64 %.0291344, -1                   ; 2 uses
  %.not = icmp eq i64 %i.ha, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !4435

.thread.loopexit:                                 ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit
  %i.hb = phi ptr [ %i.bj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %i.ak, %bb.f ]
  %.4 = phi i64 [ %i.gz, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.speculated280, %bb.f ]
  %.sroa.0217.0.lcssa.ph = phi ptr [ %i.gv, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0217.0338, %bb.f ]
  %.sroa.0227.0.lcssa.ph = phi ptr [ %.sroa.0227.2, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0227.0340, %bb.f ]
  %.sroa.0242.0.lcssa.ph = phi ptr [ %.sroa.0242.2, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0242.0341, %bb.f ]
  %.sroa.0256.0.lcssa.ph = phi ptr [ %.sroa.0256.3, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0256.0342, %bb.f ]
  %.sroa.0267.0.lcssa.ph = phi ptr [ %.sroa.0267.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.0267.0343, %bb.f ]
  %.0291.lcssa.ph = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.0291344, %bb.f ]
  %.063.lcssa.ph = phi i64 [ %i.gx, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.063345, %bb.f ]
  %.060.lcssa.ph = phi i8 [ %.262, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.060346, %bb.f ]
  %i.hc = trunc nuw i8 %.060.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.hd = phi ptr [ %i.i, %bb.a ], [ %i.hb, %.thread.loopexit ] ; 8 uses
  %.1396 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.sroa.0217.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %.sroa.0217.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0227.0.lcssa = phi ptr [ %i.i, %bb.a ], [ %.sroa.0227.0.lcssa.ph, %.thread.loopexit ] ; 8 uses
  %.sroa.0242.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.0242.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0256.0.lcssa = phi ptr [ %i.g, %bb.a ], [ %.sroa.0256.0.lcssa.ph, %.thread.loopexit ] ; 4 uses
  %.sroa.0267.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %.sroa.0267.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0291.lcssa = phi i64 [ 0, %bb.a ], [ %.0291.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.063.lcssa = phi i64 [ %i.n, %bb.a ], [ %.063.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.060.lcssa = phi i1 [ true, %bb.a ], [ %i.hc, %.thread.loopexit ]
  %i.he = icmp eq ptr %.sroa.0227.0.lcssa, %.sroa.0256.0.lcssa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.l, ptr %32, align 8, !tbaa !441
  %.neg310 = mul i64 %6, -4                       ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %i.l, i64 %.neg310 ; 7 uses
  %i.hg = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.hg, i1 %.060.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.he, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not1.i = icmp eq ptr %.sroa.0242.0.lcssa, %.sroa.0227.0.lcssa
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.ad
  %i.hh = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !296, !noalias !4490
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i87
  %i.hj = phi ptr [ %.sroa.0242.0.lcssa, %.lr.ph.i87 ], [ %i.hk, %bb.af ] ; 2 uses
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 -4 ; 4 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !296, !noalias !4490
  %i.hm = icmp slt i32 %i.hl, %i.hi
  br i1 %i.hm, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i88 = icmp eq ptr %i.hk, %.sroa.0227.0.lcssa
  br i1 %.not.i88, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !81

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0242.0.lcssa, %bb.ad ], [ %i.hj, %bb.ae ], [ %i.hk, %bb.af ] ; 8 uses
  %i.hn = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.ho = ptrtoint ptr %.sroa.0227.0.lcssa to i64 ; 2 uses
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = getelementptr i8, ptr %i.hd, i64 %i.hp  ; 7 uses
  %.not1.i.i89 = icmp eq ptr %.lcssa.i, %.sroa.0227.0.lcssa
  br i1 %.not1.i.i89, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit94, label %.lr.ph.i.i90.preheader

.lr.ph.i.i90.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %i.hr = add i64 %i.hn, -4
  %i.hs = sub i64 %i.hr, %i.ho                    ; 4 uses
  %i.ht = lshr i64 %i.hs, 2
  %i.hu = add nuw nsw i64 %i.ht, 1                ; 2 uses
  %min.iters.check559 = icmp ult i64 %i.hs, 60
  br i1 %min.iters.check559, label %.lr.ph.i.i90.preheader662, label %vector.memcheck560

vector.memcheck560:                               ; preds = %.lr.ph.i.i90.preheader
  %.not643 = and i64 %i.hs, -4
  %i.hv = xor i64 %.not643, -4
  %i.hw = getelementptr i8, ptr %.lcssa.i, i64 %i.hv
  %i.hx = and i64 %i.hs, 3
  %i.hy = getelementptr i8, ptr %i.hd, i64 %i.hx
  %bound0561 = icmp ult ptr %i.hw, %i.hq
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_:bb.a
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.cb, label %bb.p, label %bb.s

.thread413:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.bt, label %.thread414, label %.thread415

.thread415:                                       ; preds = %.thread413
  store ptr %.sroa.0235.0336, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0220.0335, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.ds = ptrtoint ptr %.sroa.0235.0336 to i64
  %i.dt = ptrtoint ptr %.sroa.0220.0335 to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 2
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = getelementptr inbounds [4 x i8], ptr %.sroa.0249.0337, i64 %i.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br label %bb.u

.thread414:                                       ; preds = %.thread413
  %i.dy = ptrtoint ptr %.sroa.0235.0336 to i64
  %i.dz = ptrtoint ptr %.sroa.0220.0335 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = getelementptr inbounds i8, ptr %i.ak, i64 %i.ea ; 2 uses
  store ptr %i.eb, ptr %28, align 8, !tbaa !441
  store ptr %i.eb, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ec = ptrtoint ptr %.sroa.0235.0336 to i64
  %i.ed = ptrtoint ptr %.sroa.0220.0335 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds i8, ptr %i.ak, i64 %i.ee ; 2 uses
  store ptr %i.ef, ptr %28, align 8, !tbaa !441
  store ptr %i.ef, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br i1 %i.cc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.sroa.0235.0336, ptr %18, align 8, !tbaa !441, !noalias !4806
  store ptr %.sroa.0220.0335, ptr %19, align 8, !tbaa !441, !noalias !4806
  store ptr %i.bj, ptr %20, align 8, !tbaa !441, !noalias !4806
  store ptr %i.bh, ptr %21, align 8, !tbaa !441, !noalias !4806
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %20, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

bb.r:                                             ; preds = %.thread414, %bb.p
  %i.eg = phi i8 [ 1, %.thread414 ], [ %i.ca, %bb.p ]
  %i.eh = phi i1 [ true, %.thread414 ], [ %i.bz, %bb.p ]
  store ptr %.sroa.0235.0336, ptr %22, align 8, !tbaa !441, !noalias !4806
  store ptr %.sroa.0220.0335, ptr %23, align 8, !tbaa !441, !noalias !4806
  store ptr %i.bj, ptr %24, align 8, !tbaa !441, !noalias !4806
  store ptr %i.bh, ptr %25, align 8, !tbaa !441, !noalias !4806
  store ptr %17, ptr %26, align 8, !tbaa !455, !noalias !4806
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %26)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit: ; preds = %bb.q, %bb.r
  %i.ei = phi i8 [ %i.ca, %bb.q ], [ %i.eg, %bb.r ]
  %i.ej = phi i1 [ %i.bz, %bb.q ], [ %i.eh, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  store ptr %.sroa.0235.0336, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0220.0335, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.ek = ptrtoint ptr %.sroa.0235.0336 to i64
  %i.el = ptrtoint ptr %.sroa.0220.0335 to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2
  %i.eo = sub nsw i64 0, %i.en
  %i.ep = getelementptr inbounds [4 x i8], ptr %.sroa.0249.0337, i64 %i.eo ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.0249.0337, ptr %8, align 8, !tbaa !441, !noalias !4807
  store ptr %i.ep, ptr %9, align 8, !tbaa !441, !noalias !4807
  store ptr %i.bj, ptr %10, align 8, !tbaa !441, !noalias !4807
  store ptr %i.bh, ptr %11, align 8, !tbaa !441, !noalias !4807
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

bb.u:                                             ; preds = %.thread415, %bb.s
  %i.eq = phi ptr [ %i.dx, %.thread415 ], [ %i.ep, %bb.s ]
  %i.er = phi i8 [ 1, %.thread415 ], [ %i.ca, %bb.s ]
  %i.es = phi i1 [ true, %.thread415 ], [ %i.bz, %bb.s ]
  store ptr %.sroa.0249.0337, ptr %12, align 8, !tbaa !441, !noalias !4807
  store ptr %i.eq, ptr %13, align 8, !tbaa !441, !noalias !4807
  store ptr %i.bj, ptr %14, align 8, !tbaa !441, !noalias !4807
  store ptr %i.bh, ptr %15, align 8, !tbaa !441, !noalias !4807
  store ptr %7, ptr %16, align 8, !tbaa !455, !noalias !4807
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %16)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75: ; preds = %bb.t, %bb.u
  %i.et = phi i8 [ %i.ca, %bb.t ], [ %i.er, %bb.u ]
  %i.eu = phi i1 [ %i.bz, %bb.t ], [ %i.es, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit
  %i.ev = phi i1 [ %i.eu, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.ej, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.ew = phi i8 [ %i.et, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.ei, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.ex = load ptr, ptr %27, align 8, !tbaa !441  ; 11 uses
  %i.ey = ptrtoint ptr %i.ex to i64               ; 4 uses
  %i.ez = ptrtoint ptr %i.bj to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = getelementptr inbounds i8, ptr %i.bi, i64 %i.fa ; 6 uses
  %.not.i76 = icmp eq ptr %i.ex, %i.fb
  br i1 %.not.i76, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not1.i.i77 = icmp eq ptr %i.ex, %i.bj
  br i1 %.not1.i.i77, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader

.lr.ph.i.i78.preheader:                           ; preds = %bb.w
  %i.fc = mul i64 %indvar, %i.ac
  %i.fd = add i64 %i.af, %i.fc
  %i.fe = add i64 %i.fd, %i.ey                    ; 2 uses
  %i.ff = lshr i64 %i.fe, 2
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %min.iters.check484 = icmp ult i64 %i.fe, 44
  br i1 %min.iters.check484, label %.lr.ph.i.i78.preheader623, label %vector.memcheck485

vector.memcheck485:                               ; preds = %.lr.ph.i.i78.preheader
  %i.fh = mul i64 %indvar, %i.x
  %i.fi = add i64 %i.ab, %i.fh
  %i.fj = add i64 %i.fi, %i.ey
  %i.fk = and i64 %i.fj, -4                       ; 2 uses
  %i.fl = sub nuw nsw i64 -4, %i.fk
  %i.fm = getelementptr i8, ptr %i.ex, i64 %i.fl
  %i.fn = mul i64 %.018.lcssa.i, %2
  %i.fo = shl i64 %i.fn, 2
  %i.fp = add i64 %i.fo, %i.fk
  %i.fq = add i64 %i.fp, %i.f
  %reass.sub = sub i64 %i.ey, %i.fq
  %39 = getelementptr i8, ptr %i.e, i64 %reass.sub
  %i.fr = getelementptr i8, ptr %39, i64 -4
  %bound0486 = icmp ult ptr %i.fm, %i.fb
  %bound1487 = icmp ult ptr %i.fr, %i.ex
  %found.conflict488 = and i1 %bound0486, %bound1487
  br i1 %found.conflict488, label %.lr.ph.i.i78.preheader623, label %vector.ph489

vector.ph489:                                     ; preds = %vector.memcheck485
  %n.vec490 = and i64 %i.fg, 9223372036854775800  ; 3 uses
  %i.fs = mul i64 %n.vec490, -4                   ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fb, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ex, i64 %i.fs
  br label %vector.body491

vector.body491:                                   ; preds = %vector.body491, %vector.ph489
  %index492 = phi i64 [ 0, %vector.ph489 ], [ %index.next499, %vector.body491 ] ; 2 uses
  %i.fv = mul i64 %index492, -4                   ; 2 uses
  %next.gep493 = getelementptr i8, ptr %i.fb, i64 %i.fv ; 2 uses
  %next.gep494 = getelementptr i8, ptr %i.ex, i64 %i.fv ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %next.gep494, i64 -16 ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %next.gep494, i64 -32 ; 2 uses
  %wide.load495 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !296, !alias.scope !4808, !noalias !4809
  %wide.load496 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !296, !alias.scope !4808, !noalias !4809
  %i.fy = getelementptr inbounds i8, ptr %next.gep493, i64 -16 ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %next.gep493, i64 -32 ; 2 uses
  %wide.load497 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !296, !alias.scope !4810, !noalias !4811
  %wide.load498 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !296, !alias.scope !4810, !noalias !4811
  store <4 x i32> %wide.load497, ptr %i.fw, align 4, !tbaa !296, !alias.scope !4808, !noalias !4809
  store <4 x i32> %wide.load498, ptr %i.fx, align 4, !tbaa !296, !alias.scope !4808, !noalias !4809
  store <4 x i32> %wide.load495, ptr %i.fy, align 4, !tbaa !296, !alias.scope !4810, !noalias !4811
  store <4 x i32> %wide.load496, ptr %i.fz, align 4, !tbaa !296, !alias.scope !4810, !noalias !4811
  %index.next499 = add nuw i64 %index492, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next499, %n.vec490
  br i1 %i.ga, label %middle.block500, label %vector.body491, !llvm.loop !4770

middle.block500:                                  ; preds = %vector.body491
  %cmp.n501 = icmp eq i64 %i.fg, %n.vec490
  br i1 %cmp.n501, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader623

.lr.ph.i.i78.preheader623:                        ; preds = %vector.memcheck485, %.lr.ph.i.i78.preheader, %middle.block500
  %.sroa.04.0.i79.ph = phi ptr [ %i.fb, %vector.memcheck485 ], [ %i.fb, %.lr.ph.i.i78.preheader ], [ %i.ft, %middle.block500 ]
  %.ph624 = phi ptr [ %i.ex, %vector.memcheck485 ], [ %i.ex, %.lr.ph.i.i78.preheader ], [ %i.fu, %middle.block500 ]
  br label %.lr.ph.i.i78

.lr.ph.i.i78:                                     ; preds = %.lr.ph.i.i78.preheader623, %.lr.ph.i.i78
  %.sroa.04.0.i79 = phi ptr [ %i.gd, %.lr.ph.i.i78 ], [ %.sroa.04.0.i79.ph, %.lr.ph.i.i78.preheader623 ]
  %i.gb = phi ptr [ %i.gc, %.lr.ph.i.i78 ], [ %.ph624, %.lr.ph.i.i78.preheader623 ]
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -4 ; 4 uses
  %i.gd = getelementptr inbounds i8, ptr %.sroa.04.0.i79, i64 -4 ; 3 uses
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !296, !noalias !4811
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !296, !noalias !4811
  store i32 %i.gf, ptr %i.gc, align 4, !tbaa !296, !noalias !4811
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !296, !noalias !4811
  %.not.i.i80 = icmp eq ptr %i.gc, %i.bj
  br i1 %.not.i.i80, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78, !llvm.loop !4771

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81: ; preds = %.lr.ph.i.i78, %middle.block500, %bb.w
  %.not9.i82 = icmp eq i64 %.neg302, 0
  br i1 %.not9.i82, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gg = getelementptr inbounds i8, ptr %i.bp, i64 -8 ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %.sroa.0210.0333, i64 -8 ; 2 uses
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !319
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !319
  store i64 %i.gj, ptr %i.gg, align 8, !tbaa !319
  store i64 %i.gi, ptr %i.gh, align 8, !tbaa !319
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gk = icmp eq ptr %i.bp, %.sroa.0260.0338
  br i1 %i.gk, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gl = icmp eq ptr %.sroa.0260.0338, %.sroa.0210.0333
  %spec.select298 = select i1 %i.gl, ptr %i.bp, ptr %.sroa.0260.0338
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85: ; preds = %bb.z, %bb.y, %bb.v
  %.sroa.0260.5 = phi ptr [ %.sroa.0260.0338, %bb.v ], [ %spec.select298, %bb.z ], [ %.sroa.0210.0333, %bb.y ]
  %i.gm = load ptr, ptr %28, align 8, !tbaa !441  ; 2 uses
  %i.gn = load ptr, ptr %29, align 8, !tbaa !441  ; 3 uses
  %.not303 = icmp eq ptr %i.gm, %i.gn
  br i1 %.not303, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85
  %i.go = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %2
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85, %bb.aa
  %.sroa.0220.1 = phi ptr [ %i.bj, %bb.aa ], [ %i.gn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85 ]
  %.sroa.0235.1 = phi ptr [ %i.ex, %bb.aa ], [ %i.gm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85 ]
  %.sroa.0249.2 = phi ptr [ %i.go, %bb.aa ], [ %i.gn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85 ]
  %.161 = phi i8 [ %i.ew, %bb.aa ], [ %.060341, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.m, %bb.ab
  %i.gp = phi i1 [ %i.ev, %bb.ab ], [ %i.cf, %bb.m ], [ %i.cf, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.cf, %bb.n ]
  %.sroa.0220.2 = phi ptr [ %.sroa.0220.1, %bb.ab ], [ %i.bj, %bb.m ], [ %i.bj, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.bj, %bb.n ] ; 2 uses
  %.sroa.0235.2 = phi ptr [ %.sroa.0235.1, %bb.ab ], [ %i.ak, %bb.m ], [ %i.ak, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.ak, %bb.n ] ; 2 uses
  %.sroa.0249.3 = phi ptr [ %.sroa.0249.2, %bb.ab ], [ %.sroa.0249.1, %bb.m ], [ %.sroa.0249.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.sroa.0249.1, %bb.n ] ; 2 uses
  %.sroa.0260.1 = phi ptr [ %.sroa.0260.5, %bb.ab ], [ %.sroa.0210.0333, %bb.m ], [ %.sroa.0260.0338, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.262 = phi i8 [ %.161, %bb.ab ], [ %.060341, %bb.m ], [ %.060341, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.060341, %bb.n ] ; 2 uses
  %not. = xor i1 %i.gp, true
  %i.gq = sext i1 %not. to i64
  %.1 = add i64 %.0342, %i.gq
  store ptr %i.bj, ptr %27, align 8, !tbaa !441
  %i.gr = getelementptr inbounds i8, ptr %.sroa.0210.0333, i64 -8 ; 2 uses
  %i.gs = icmp ne i64 %.063340, 0
  %.neg = sext i1 %i.gs to i64
  %i.gt = add i64 %.063340, %.neg                 ; 2 uses
  %i.gu = icmp ne i64 %i.bg, 0
  %.neg69 = sext i1 %i.gu to i64
  %i.gv = add i64 %.sroa.speculated273, %.neg69   ; 2 uses
  %i.gw = add i64 %.0284339, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gw, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !4772

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.gx = phi ptr [ %i.bj, %.sink.split.i ], [ %i.ak, %bb.f ]
  %.4 = phi i64 [ %i.gv, %.sink.split.i ], [ %.sroa.speculated273, %bb.f ]
  %.sroa.0210.0.lcssa.ph = phi ptr [ %i.gr, %.sink.split.i ], [ %.sroa.0210.0333, %bb.f ]
  %.sroa.0220.0.lcssa.ph = phi ptr [ %.sroa.0220.2, %.sink.split.i ], [ %.sroa.0220.0335, %bb.f ]
  %.sroa.0235.0.lcssa.ph = phi ptr [ %.sroa.0235.2, %.sink.split.i ], [ %.sroa.0235.0336, %bb.f ]
  %.sroa.0249.0.lcssa.ph = phi ptr [ %.sroa.0249.3, %.sink.split.i ], [ %.sroa.0249.0337, %bb.f ]
  %.sroa.0260.0.lcssa.ph = phi ptr [ %.sroa.0260.1, %.sink.split.i ], [ %.sroa.0260.0338, %bb.f ]
  %.0284.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0284339, %bb.f ]
  %.063.lcssa.ph = phi i64 [ %i.gt, %.sink.split.i ], [ %.063340, %bb.f ]
  %.060.lcssa.ph = phi i8 [ %.262, %.sink.split.i ], [ %.060341, %bb.f ]
  %i.gy = trunc nuw i8 %.060.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.gz = phi ptr [ %i.i, %bb.a ], [ %i.gx, %.thread.loopexit ] ; 8 uses
  %.1390 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.sroa.0210.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %.sroa.0210.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0220.0.lcssa = phi ptr [ %i.i, %bb.a ], [ %.sroa.0220.0.lcssa.ph, %.thread.loopexit ] ; 8 uses
  %.sroa.0235.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.0235.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0249.0.lcssa = phi ptr [ %i.g, %bb.a ], [ %.sroa.0249.0.lcssa.ph, %.thread.loopexit ] ; 4 uses
  %.sroa.0260.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %.sroa.0260.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0284.lcssa = phi i64 [ 0, %bb.a ], [ %.0284.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.063.lcssa = phi i64 [ %i.n, %bb.a ], [ %.063.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.060.lcssa = phi i1 [ true, %bb.a ], [ %i.gy, %.thread.loopexit ]
  %i.ha = ptrtoaddr ptr %i.gz to i64
  %i.hb = icmp eq ptr %.sroa.0220.0.lcssa, %.sroa.0249.0.lcssa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.l, ptr %32, align 8, !tbaa !441
  %.neg305 = mul i64 %6, -4                       ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.l, i64 %.neg305 ; 7 uses
  %i.hd = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.hd, i1 %.060.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.hb, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not1.i = icmp eq ptr %.sroa.0235.0.lcssa, %.sroa.0220.0.lcssa
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %bb.ad
  %i.he = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !296, !noalias !4812
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i86
  %i.hg = phi ptr [ %.sroa.0235.0.lcssa, %.lr.ph.i86 ], [ %i.hh, %bb.af ] ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -4 ; 4 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !296, !noalias !4812
  %i.hj = icmp slt i32 %i.hi, %i.hf
  br i1 %i.hj, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i87 = icmp eq ptr %i.hh, %.sroa.0220.0.lcssa
  br i1 %.not.i87, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !81

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0235.0.lcssa, %bb.ad ], [ %i.hg, %bb.ae ], [ %i.hh, %bb.af ] ; 5 uses
  %i.hk = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.hl = ptrtoint ptr %.sroa.0220.0.lcssa to i64 ; 3 uses
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = getelementptr inbounds i8, ptr %i.gz, i64 %i.hm ; 5 uses
  %.not1.i.i88 = icmp eq ptr %.lcssa.i, %.sroa.0220.0.lcssa
  br i1 %.not1.i.i88, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92, label %.lr.ph.i.i89.preheader

.lr.ph.i.i89.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %i.ho = add i64 %i.hk, -4
  %i.hp = sub i64 %i.ho, %i.hl                    ; 2 uses
  %i.hq = lshr i64 %i.hp, 2
  %i.hr = add nuw nsw i64 %i.hq, 1                ; 2 uses
  %min.iters.check531 = icmp ult i64 %i.hp, 44
  %i.hs = sub i64 %i.ha, %i.hl
  %diff.check533 = icmp ugt i64 %i.hs, -32
  %or.cond595 = select i1 %min.iters.check531, i1 true, i1 %diff.check533
  br i1 %or.cond595, label %.lr.ph.i.i89.preheader613, label %vector.ph534

vector.ph534:                                     ; preds = %.lr.ph.i.i89.preheader
  %n.vec535 = and i64 %i.hr, 9223372036854775800  ; 3 uses
  %i.ht = mul i64 %n.vec535, -4                   ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_:bb.a
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.cb, label %bb.p, label %bb.s

.thread418:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  br i1 %i.bt, label %.thread419, label %.thread420

.thread420:                                       ; preds = %.thread418
  store ptr %.sroa.0239.0340, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0224.0339, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.dv = ptrtoint ptr %.sroa.0239.0340 to i64
  %i.dw = ptrtoint ptr %.sroa.0224.0339 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 2
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = getelementptr inbounds [4 x i8], ptr %.sroa.0253.0341, i64 %i.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br label %bb.u

.thread419:                                       ; preds = %.thread418
  %i.eb = ptrtoint ptr %.sroa.0239.0340 to i64
  %i.ec = ptrtoint ptr %.sroa.0224.0339 to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = getelementptr inbounds i8, ptr %i.ak, i64 %i.ed ; 2 uses
  store ptr %i.ee, ptr %28, align 8, !tbaa !441
  store ptr %i.ee, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ef = ptrtoint ptr %.sroa.0239.0340 to i64
  %i.eg = ptrtoint ptr %.sroa.0224.0339 to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = getelementptr inbounds i8, ptr %i.ak, i64 %i.eh ; 2 uses
  store ptr %i.ei, ptr %28, align 8, !tbaa !441
  store ptr %i.ei, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br i1 %i.cc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.sroa.0239.0340, ptr %18, align 8, !tbaa !441, !noalias !4894
  store ptr %.sroa.0224.0339, ptr %19, align 8, !tbaa !441, !noalias !4894
  store ptr %i.bj, ptr %20, align 8, !tbaa !441, !noalias !4894
  store ptr %i.bh, ptr %21, align 8, !tbaa !441, !noalias !4894
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %20, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

bb.r:                                             ; preds = %.thread419, %bb.p
  %i.ej = phi i8 [ 1, %.thread419 ], [ %i.ca, %bb.p ]
  %i.ek = phi i1 [ true, %.thread419 ], [ %i.bz, %bb.p ]
  store ptr %.sroa.0239.0340, ptr %22, align 8, !tbaa !441, !noalias !4894
  store ptr %.sroa.0224.0339, ptr %23, align 8, !tbaa !441, !noalias !4894
  store ptr %i.bj, ptr %24, align 8, !tbaa !441, !noalias !4894
  store ptr %i.bh, ptr %25, align 8, !tbaa !441, !noalias !4894
  store ptr %17, ptr %26, align 8, !tbaa !455, !noalias !4894
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %30, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %26)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit: ; preds = %bb.q, %bb.r
  %i.el = phi i8 [ %i.ca, %bb.q ], [ %i.ej, %bb.r ]
  %i.em = phi i1 [ %i.bz, %bb.q ], [ %i.ek, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  store ptr %.sroa.0239.0340, ptr %28, align 8, !tbaa !441
  store ptr %.sroa.0224.0339, ptr %29, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.en = ptrtoint ptr %.sroa.0239.0340 to i64
  %i.eo = ptrtoint ptr %.sroa.0224.0339 to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = ashr exact i64 %i.ep, 2
  %i.er = sub nsw i64 0, %i.eq
  %i.es = getelementptr inbounds [4 x i8], ptr %.sroa.0253.0341, i64 %i.er ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.0253.0341, ptr %8, align 8, !tbaa !441, !noalias !4895
  store ptr %i.es, ptr %9, align 8, !tbaa !441, !noalias !4895
  store ptr %i.bj, ptr %10, align 8, !tbaa !441, !noalias !4895
  store ptr %i.bh, ptr %11, align 8, !tbaa !441, !noalias !4895
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

bb.u:                                             ; preds = %.thread420, %bb.s
  %i.et = phi ptr [ %i.ea, %.thread420 ], [ %i.es, %bb.s ]
  %i.eu = phi i8 [ 1, %.thread420 ], [ %i.ca, %bb.s ]
  %i.ev = phi i1 [ true, %.thread420 ], [ %i.bz, %bb.s ]
  store ptr %.sroa.0253.0341, ptr %12, align 8, !tbaa !441, !noalias !4895
  store ptr %i.et, ptr %13, align 8, !tbaa !441, !noalias !4895
  store ptr %i.bj, ptr %14, align 8, !tbaa !441, !noalias !4895
  store ptr %i.bh, ptr %15, align 8, !tbaa !441, !noalias !4895
  store ptr %7, ptr %16, align 8, !tbaa !455, !noalias !4895
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %31, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dead_on_return %16)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75: ; preds = %bb.t, %bb.u
  %i.ew = phi i8 [ %i.ca, %bb.t ], [ %i.eu, %bb.u ]
  %i.ex = phi i1 [ %i.bz, %bb.t ], [ %i.ev, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit
  %i.ey = phi i1 [ %i.ex, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.em, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.ez = phi i8 [ %i.ew, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit75 ], [ %i.el, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit ]
  %i.fa = load ptr, ptr %27, align 8, !tbaa !441  ; 11 uses
  %i.fb = ptrtoint ptr %i.fa to i64               ; 4 uses
  %i.fc = ptrtoint ptr %i.bj to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = getelementptr inbounds i8, ptr %i.bi, i64 %i.fd ; 6 uses
  %.not.i76 = icmp eq ptr %i.fa, %i.fe
  br i1 %.not.i76, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not1.i.i77 = icmp eq ptr %i.fa, %i.bj
  br i1 %.not1.i.i77, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader

.lr.ph.i.i78.preheader:                           ; preds = %bb.w
  %i.ff = mul i64 %indvar, %i.ac
  %i.fg = add i64 %i.af, %i.ff
  %i.fh = add i64 %i.fg, %i.fb                    ; 2 uses
  %i.fi = lshr i64 %i.fh, 2
  %i.fj = add nuw nsw i64 %i.fi, 1                ; 2 uses
  %min.iters.check500 = icmp ult i64 %i.fh, 44
  br i1 %min.iters.check500, label %.lr.ph.i.i78.preheader671, label %vector.memcheck501

vector.memcheck501:                               ; preds = %.lr.ph.i.i78.preheader
  %i.fk = mul i64 %indvar, %i.x
  %i.fl = add i64 %i.ab, %i.fk
  %i.fm = add i64 %i.fl, %i.fb
  %i.fn = and i64 %i.fm, -4                       ; 2 uses
  %i.fo = sub nuw nsw i64 -4, %i.fn
  %i.fp = getelementptr i8, ptr %i.fa, i64 %i.fo
  %i.fq = mul i64 %.018.lcssa.i, %2
  %i.fr = shl i64 %i.fq, 2
  %i.fs = add i64 %i.fr, %i.fn
  %i.ft = add i64 %i.fs, %i.f
  %reass.sub = sub i64 %i.fb, %i.ft
  %39 = getelementptr i8, ptr %i.e, i64 %reass.sub
  %i.fu = getelementptr i8, ptr %39, i64 -4
  %bound0502 = icmp ult ptr %i.fp, %i.fe
  %bound1503 = icmp ult ptr %i.fu, %i.fa
  %found.conflict504 = and i1 %bound0502, %bound1503
  br i1 %found.conflict504, label %.lr.ph.i.i78.preheader671, label %vector.ph505

vector.ph505:                                     ; preds = %vector.memcheck501
  %n.vec506 = and i64 %i.fj, 9223372036854775800  ; 3 uses
  %i.fv = mul i64 %n.vec506, -4                   ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fe, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fa, i64 %i.fv
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next515, %vector.body507 ] ; 2 uses
  %i.fy = mul i64 %index508, -4                   ; 2 uses
  %next.gep509 = getelementptr i8, ptr %i.fe, i64 %i.fy ; 2 uses
  %next.gep510 = getelementptr i8, ptr %i.fa, i64 %i.fy ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %next.gep510, i64 -16 ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %next.gep510, i64 -32 ; 2 uses
  %wide.load511 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !296, !alias.scope !4896, !noalias !4897
  %wide.load512 = load <4 x i32>, ptr %i.ga, align 4, !tbaa !296, !alias.scope !4896, !noalias !4897
  %i.gb = getelementptr inbounds i8, ptr %next.gep509, i64 -16 ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %next.gep509, i64 -32 ; 2 uses
  %wide.load513 = load <4 x i32>, ptr %i.gb, align 4, !tbaa !296, !alias.scope !4898, !noalias !4899
  %wide.load514 = load <4 x i32>, ptr %i.gc, align 4, !tbaa !296, !alias.scope !4898, !noalias !4899
  store <4 x i32> %wide.load513, ptr %i.fz, align 4, !tbaa !296, !alias.scope !4896, !noalias !4897
  store <4 x i32> %wide.load514, ptr %i.ga, align 4, !tbaa !296, !alias.scope !4896, !noalias !4897
  store <4 x i32> %wide.load511, ptr %i.gb, align 4, !tbaa !296, !alias.scope !4898, !noalias !4899
  store <4 x i32> %wide.load512, ptr %i.gc, align 4, !tbaa !296, !alias.scope !4898, !noalias !4899
  %index.next515 = add nuw i64 %index508, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next515, %n.vec506
  br i1 %i.gd, label %middle.block516, label %vector.body507, !llvm.loop !4843

middle.block516:                                  ; preds = %vector.body507
  %cmp.n517 = icmp eq i64 %i.fj, %n.vec506
  br i1 %cmp.n517, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78.preheader671

.lr.ph.i.i78.preheader671:                        ; preds = %vector.memcheck501, %.lr.ph.i.i78.preheader, %middle.block516
  %.sroa.04.0.i79.ph = phi ptr [ %i.fe, %vector.memcheck501 ], [ %i.fe, %.lr.ph.i.i78.preheader ], [ %i.fw, %middle.block516 ]
  %.ph672 = phi ptr [ %i.fa, %vector.memcheck501 ], [ %i.fa, %.lr.ph.i.i78.preheader ], [ %i.fx, %middle.block516 ]
  br label %.lr.ph.i.i78

.lr.ph.i.i78:                                     ; preds = %.lr.ph.i.i78.preheader671, %.lr.ph.i.i78
  %.sroa.04.0.i79 = phi ptr [ %i.gg, %.lr.ph.i.i78 ], [ %.sroa.04.0.i79.ph, %.lr.ph.i.i78.preheader671 ]
  %i.ge = phi ptr [ %i.gf, %.lr.ph.i.i78 ], [ %.ph672, %.lr.ph.i.i78.preheader671 ]
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -4 ; 4 uses
  %i.gg = getelementptr inbounds i8, ptr %.sroa.04.0.i79, i64 -4 ; 3 uses
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !296, !noalias !4899
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !296, !noalias !4899
  store i32 %i.gi, ptr %i.gf, align 4, !tbaa !296, !noalias !4899
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !296, !noalias !4899
  %.not.i.i80 = icmp eq ptr %i.gf, %i.bj
  br i1 %.not.i.i80, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81, label %.lr.ph.i.i78, !llvm.loop !4844

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81: ; preds = %.lr.ph.i.i78, %middle.block516, %bb.w
  %.not9.i82 = icmp eq i64 %.neg306, 0
  br i1 %.not9.i82, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gj = getelementptr inbounds i8, ptr %i.bp, i64 -8 ; 2 uses
  %i.gk = getelementptr inbounds i8, ptr %.sroa.0214.0337, i64 -8 ; 2 uses
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !319
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !319
  store i64 %i.gm, ptr %i.gj, align 8, !tbaa !319
  store i64 %i.gl, ptr %i.gk, align 8, !tbaa !319
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i81
  %i.gn = icmp eq ptr %i.bp, %.sroa.0264.0342
  br i1 %i.gn, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.go = icmp eq ptr %.sroa.0264.0342, %.sroa.0214.0337
  %spec.select302 = select i1 %i.go, ptr %i.bp, ptr %.sroa.0264.0342
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85: ; preds = %bb.z, %bb.y, %bb.v
  %.sroa.0264.5 = phi ptr [ %.sroa.0264.0342, %bb.v ], [ %spec.select302, %bb.z ], [ %.sroa.0214.0337, %bb.y ]
  %i.gp = load ptr, ptr %28, align 8, !tbaa !441  ; 2 uses
  %i.gq = load ptr, ptr %29, align 8, !tbaa !441  ; 3 uses
  %.not307 = icmp eq ptr %i.gp, %i.gq
  br i1 %.not307, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %2
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85, %bb.aa
  %.sroa.0224.1 = phi ptr [ %i.bj, %bb.aa ], [ %i.gq, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85 ]
  %.sroa.0239.1 = phi ptr [ %i.fa, %bb.aa ], [ %i.gp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85 ]
  %.sroa.0253.2 = phi ptr [ %i.gr, %bb.aa ], [ %i.gq, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85 ]
  %.161 = phi i8 [ %i.ez, %bb.aa ], [ %.060345, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit, %bb.m, %bb.ab
  %i.gs = phi i1 [ %i.ey, %bb.ab ], [ %i.cf, %bb.m ], [ %i.cf, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.cf, %bb.n ]
  %.sroa.0224.2 = phi ptr [ %.sroa.0224.1, %bb.ab ], [ %i.bj, %bb.m ], [ %i.bj, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.bj, %bb.n ] ; 2 uses
  %.sroa.0239.2 = phi ptr [ %.sroa.0239.1, %bb.ab ], [ %i.ak, %bb.m ], [ %i.ak, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %i.ak, %bb.n ] ; 2 uses
  %.sroa.0253.3 = phi ptr [ %.sroa.0253.2, %bb.ab ], [ %.sroa.0253.1, %bb.m ], [ %.sroa.0253.1, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.sroa.0253.1, %bb.n ] ; 2 uses
  %.sroa.0264.1 = phi ptr [ %.sroa.0264.5, %bb.ab ], [ %.sroa.0214.0337, %bb.m ], [ %.sroa.0264.0342, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.262 = phi i8 [ %.161, %bb.ab ], [ %.060345, %bb.m ], [ %.060345, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.060345, %bb.n ] ; 2 uses
  %not. = xor i1 %i.gs, true
  %i.gt = sext i1 %not. to i64
  %.1 = add i64 %.0346, %i.gt
  store ptr %i.bj, ptr %27, align 8, !tbaa !441
  %i.gu = getelementptr inbounds i8, ptr %.sroa.0214.0337, i64 -8 ; 2 uses
  %i.gv = icmp ne i64 %.063344, 0
  %.neg = sext i1 %i.gv to i64
  %i.gw = add i64 %.063344, %.neg                 ; 2 uses
  %i.gx = icmp ne i64 %i.bg, 0
  %.neg69 = sext i1 %i.gx to i64
  %i.gy = add i64 %.sroa.speculated277, %.neg69   ; 2 uses
  %i.gz = add i64 %.0288343, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gz, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !4845

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.ha = phi ptr [ %i.bj, %.sink.split.i ], [ %i.ak, %bb.f ]
  %.4 = phi i64 [ %i.gy, %.sink.split.i ], [ %.sroa.speculated277, %bb.f ]
  %.sroa.0214.0.lcssa.ph = phi ptr [ %i.gu, %.sink.split.i ], [ %.sroa.0214.0337, %bb.f ]
  %.sroa.0224.0.lcssa.ph = phi ptr [ %.sroa.0224.2, %.sink.split.i ], [ %.sroa.0224.0339, %bb.f ]
  %.sroa.0239.0.lcssa.ph = phi ptr [ %.sroa.0239.2, %.sink.split.i ], [ %.sroa.0239.0340, %bb.f ]
  %.sroa.0253.0.lcssa.ph = phi ptr [ %.sroa.0253.3, %.sink.split.i ], [ %.sroa.0253.0341, %bb.f ]
  %.sroa.0264.0.lcssa.ph = phi ptr [ %.sroa.0264.1, %.sink.split.i ], [ %.sroa.0264.0342, %bb.f ]
  %.0288.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0288343, %bb.f ]
  %.063.lcssa.ph = phi i64 [ %i.gw, %.sink.split.i ], [ %.063344, %bb.f ]
  %.060.lcssa.ph = phi i8 [ %.262, %.sink.split.i ], [ %.060345, %bb.f ]
  %i.hb = trunc nuw i8 %.060.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.hc = phi ptr [ %i.i, %bb.a ], [ %i.ha, %.thread.loopexit ] ; 8 uses
  %.1395 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.sroa.0214.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %.sroa.0214.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0224.0.lcssa = phi ptr [ %i.i, %bb.a ], [ %.sroa.0224.0.lcssa.ph, %.thread.loopexit ] ; 8 uses
  %.sroa.0239.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.0239.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.sroa.0253.0.lcssa = phi ptr [ %i.g, %bb.a ], [ %.sroa.0253.0.lcssa.ph, %.thread.loopexit ] ; 4 uses
  %.sroa.0264.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %.sroa.0264.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0288.lcssa = phi i64 [ 0, %bb.a ], [ %.0288.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.063.lcssa = phi i64 [ %i.n, %bb.a ], [ %.063.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.060.lcssa = phi i1 [ true, %bb.a ], [ %i.hb, %.thread.loopexit ]
  %i.hd = icmp eq ptr %.sroa.0224.0.lcssa, %.sroa.0253.0.lcssa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  store ptr %i.l, ptr %32, align 8, !tbaa !441
  %.neg309 = mul i64 %6, -4                       ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.l, i64 %.neg309 ; 7 uses
  %i.hf = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.hf, i1 %.060.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.hd, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not1.i = icmp eq ptr %.sroa.0239.0.lcssa, %.sroa.0224.0.lcssa
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %bb.ad
  %i.hg = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !296, !noalias !4900
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i86
  %i.hi = phi ptr [ %.sroa.0239.0.lcssa, %.lr.ph.i86 ], [ %i.hj, %bb.af ] ; 2 uses
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -4 ; 4 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !296, !noalias !4900
  %i.hl = icmp slt i32 %i.hk, %i.hh
  br i1 %i.hl, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i87 = icmp eq ptr %i.hj, %.sroa.0224.0.lcssa
  br i1 %.not.i87, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !81

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0239.0.lcssa, %bb.ad ], [ %i.hi, %bb.ae ], [ %i.hj, %bb.af ] ; 8 uses
  %i.hm = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.hn = ptrtoint ptr %.sroa.0224.0.lcssa to i64 ; 2 uses
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = getelementptr i8, ptr %i.hc, i64 %i.ho  ; 7 uses
  %.not1.i.i88 = icmp eq ptr %.lcssa.i, %.sroa.0224.0.lcssa
  br i1 %.not1.i.i88, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit93, label %.lr.ph.i.i89.preheader

.lr.ph.i.i89.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %i.hq = add i64 %i.hm, -4
  %i.hr = sub i64 %i.hq, %i.hn                    ; 4 uses
  %i.hs = lshr i64 %i.hr, 2
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 2 uses
  %min.iters.check558 = icmp ult i64 %i.hr, 60
  br i1 %min.iters.check558, label %.lr.ph.i.i89.preheader661, label %vector.memcheck559

vector.memcheck559:                               ; preds = %.lr.ph.i.i89.preheader
  %.not642 = and i64 %i.hr, -4
  %i.hu = xor i64 %.not642, -4
  %i.hv = getelementptr i8, ptr %.lcssa.i, i64 %i.hu
  %i.hw = and i64 %i.hr, 3
  %i.hx = getelementptr i8, ptr %i.hc, i64 %i.hw
  %bound0560 = icmp ult ptr %i.hv, %i.hp
end_hunk_7
