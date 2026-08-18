inline.NumInlined: 24952
inline.NumDeleted: 2814
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 315
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_S5_S5_SG_NS0_7move_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_:bb.a

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader373, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dp, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader373 ]
  %.sroa.045.0 = phi ptr [ %i.dq, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader373 ]
  %i.dn = phi ptr [ %i.do, %.lr.ph.i29 ], [ %.ph374, %.lr.ph.i29.preheader373 ]
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -4 ; 3 uses
  %i.dp = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !69, !noalias !3125
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !69, !noalias !3125
  %i.ds = load i32, ptr %i.do, align 4, !tbaa !69, !noalias !3125
  store i32 %i.ds, ptr %i.dp, align 4, !tbaa !69, !noalias !3125
  %.not.i30 = icmp eq ptr %i.do, %i.ae
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29, !llvm.loop !3127

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %.reass479 = add i64 %i.bv, %invariant.op478
  %i.dt = sub i64 %.reass479, %i.h                ; 2 uses
  %i.du = lshr i64 %i.dt, 2
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %min.iters.check316 = icmp ult i64 %i.dt, 28
  %i.dw = sub i64 %.sroa.064.0314, %i.bv
  %diff.check = icmp ugt i64 %i.dw, -32
  %or.cond = or i1 %min.iters.check316, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader370, label %vector.ph317

vector.ph317:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec318 = and i64 %i.dv, 9223372036854775800  ; 3 uses
  %i.dx = mul i64 %n.vec318, -4                   ; 2 uses
  %i.dy = getelementptr i8, ptr %.sroa.064.0, i64 %i.dx ; 2 uses
  %i.dz = getelementptr i8, ptr %i.bu, i64 %i.dx
  br label %vector.body319

vector.body319:                                   ; preds = %vector.body319, %vector.ph317
  %index320 = phi i64 [ 0, %vector.ph317 ], [ %index.next325, %vector.body319 ] ; 2 uses
  %i.ea = mul i64 %index320, -4                   ; 2 uses
  %next.gep321 = getelementptr i8, ptr %.sroa.064.0, i64 %i.ea ; 2 uses
  %next.gep322 = getelementptr i8, ptr %i.bu, i64 %i.ea ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %next.gep322, i64 -16
  %i.ec = getelementptr inbounds i8, ptr %next.gep322, i64 -32
  %wide.load323 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !69, !noalias !3128
  %wide.load324 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !69, !noalias !3128
  %i.ed = getelementptr inbounds i8, ptr %next.gep321, i64 -16
  %i.ee = getelementptr inbounds i8, ptr %next.gep321, i64 -32
  store <4 x i32> %wide.load323, ptr %i.ed, align 4, !tbaa !69, !noalias !3128
  store <4 x i32> %wide.load324, ptr %i.ee, align 4, !tbaa !69, !noalias !3128
  %index.next325 = add nuw i64 %index320, 8       ; 2 uses
  %i.ef = icmp eq i64 %index.next325, %n.vec318
  br i1 %i.ef, label %middle.block326, label %vector.body319, !llvm.loop !3133

middle.block326:                                  ; preds = %vector.body319
  %cmp.n327 = icmp eq i64 %i.dv, %n.vec318
  br i1 %cmp.n327, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader370

.lr.ph.i.i.preheader370:                          ; preds = %.lr.ph.i.i.preheader, %middle.block326
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.dy, %middle.block326 ]
  %.ph371 = phi ptr [ %i.bu, %.lr.ph.i.i.preheader ], [ %i.dz, %middle.block326 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader370, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ej, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader370 ]
  %i.eg = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %.ph371, %.lr.ph.i.i.preheader370 ]
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -4 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !69, !noalias !3128
  %i.ej = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !69, !noalias !3128
  %.not.i.i31 = icmp eq ptr %i.eh, %i.ae
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !3134

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block359, %middle.block326, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ae, %bb.s ], [ %i.ej, %.lr.ph.i.i ], [ %i.bu, %bb.t ], [ %i.cu, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.ck, %middle.block ], [ %i.dy, %middle.block326 ], [ %i.dg, %middle.block359 ], [ %i.dq, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !2933
  %i.ek = load ptr, ptr %1, align 8, !tbaa !2933  ; 4 uses
  %.neg98 = mul i64 %.018.lcssa.i, -4             ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.ae, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -4 ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.ek, i64 -4 ; 2 uses
  %i.eo = load i32, ptr %i.em, align 4, !tbaa !69
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !69
  store i32 %i.ep, ptr %i.em, align 4, !tbaa !69
  store i32 %i.eo, ptr %i.en, align 4, !tbaa !69
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.eq = load ptr, ptr %2, align 8, !tbaa !2933  ; 2 uses
  %i.er = icmp eq ptr %i.el, %i.eq
  br i1 %i.er, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.es = icmp eq ptr %i.eq, %i.ek
  br i1 %i.es, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.ek, %bb.y ], [ %i.el, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2933
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, %bb.z, %.sink.split.i
  store ptr %i.ae, ptr %3, align 8, !tbaa !2933
  %i.et = load ptr, ptr %1, align 8, !tbaa !2933
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -4 ; 2 uses
  store ptr %i.eu, ptr %1, align 8, !tbaa !2933
  %i.ev = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ev to i64
  %i.ew = add i64 %.0140, %.neg
  %i.ex = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.ex to i64
  %i.ey = add i64 %.sroa.speculated, %.neg24
  %i.ez = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ez, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3135

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit, %bb.a
  %i.fa = load ptr, ptr %6, align 8, !tbaa !2933
  store ptr %i.fa, ptr %0, align 8, !tbaa !2933
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !75     ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !75     ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !75     ; 9 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load i32, ptr %4, align 4, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.g = load i32, ptr %.07.i, align 4, !tbaa !69
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.c, !llvm.loop !3136

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.i, %bb.d ] ; 8 uses
  %i.j = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 %i.l ; 12 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.p = load i32, ptr %.0.lcssa.i, align 4, !tbaa !69
  store i32 %i.p, ptr %i.m, align 4, !tbaa !69
  %i.q = load i32, ptr %4, align 4, !tbaa !69
  store i32 %i.q, ptr %.0.lcssa.i, align 4, !tbaa !69
  %i.r = load i32, ptr %i.d, align 4, !tbaa !69
  store i32 %i.r, ptr %4, align 4, !tbaa !69
  %.03759.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %.04160.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %.not4861.i = icmp eq ptr %.04160.i, %1
  br i1 %.not4861.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04166.i = phi ptr [ %.041.i, %bb.j ], [ %.04160.i, %bb.f ] ; 8 uses
  %.03765.i = phi ptr [ %.037.i, %bb.j ], [ %.03759.i, %bb.f ] ; 3 uses
  %.064.i = phi ptr [ %.1.i, %bb.j ], [ %i.o, %bb.f ] ; 6 uses
  %.03563.i = phi ptr [ %.136.i, %bb.j ], [ %i.n, %bb.f ] ; 6 uses
  %.03962.i = phi ptr [ %.140.i, %bb.j ], [ %i.m, %bb.f ] ; 11 uses
  %i.s = icmp eq ptr %.03563.i, %3
  br i1 %i.s, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %.03962.i234.le = ptrtoaddr ptr %.03962.i to i64
  %i.t = add i64 %i.a, -8
  %7 = sub i64 %i.t, %i.j
  %8 = lshr i64 %7, 2
  %9 = add nuw nsw i64 %8, 1
  %10 = mul i64 %indvar, 4611686018427387903
  %i.u = add i64 %10, %9                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.u, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader289, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.v = mul i64 %indvar, -4
  %reass.sub = sub i64 %i.v, %i.j
  %op.rdx260 = add i64 %.03962.i234.le, -5
  %op.rdx261 = add i64 %op.rdx260, %reass.sub
  %diff.check = icmp ult i64 %op.rdx261, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader289, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, -8                       ; 3 uses
  %i.w = shl i64 %n.vec, 2                        ; 2 uses
  %i.x = getelementptr i8, ptr %.03962.i, i64 %i.w ; 2 uses
  %i.y = getelementptr i8, ptr %.04166.i, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.03962.i, i64 %i.z ; 2 uses
  %next.gep235 = getelementptr i8, ptr %.04166.i, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep235, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep235, align 4, !tbaa !69
  %wide.load236 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !69
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !69
  store <4 x i32> %wide.load236, ptr %i.ab, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !3137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit, label %.lr.ph.i.i.i.preheader289

.lr.ph.i.i.i.preheader289:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %.03962.i, %vector.memcheck ], [ %.03962.i, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.04166.i, %vector.memcheck ], [ %.04166.i, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader289, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader289 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader289 ] ; 2 uses
  %i.ad = load i32, ptr %.079.i.i.i, align 4, !tbaa !69
  store i32 %i.ad, ptr %.010.i.i.i, align 4, !tbaa !69
  %i.ae = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit, label %.lr.ph.i.i.i, !llvm.loop !3138

bb.g:                                             ; preds = %.lr.ph.i31
  %i.ag = load i32, ptr %.064.i, align 4, !tbaa !69
  %i.ah = load i32, ptr %.03962.i, align 4, !tbaa !69
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.03563.i, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.064.i, i64 4
  %i.al = load i32, ptr %.04166.i, align 4, !tbaa !69
  store i32 %i.al, ptr %.03765.i, align 4, !tbaa !69
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.03962.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.04166.sink85.i = phi ptr [ %.04166.i, %bb.i ], [ %.064.i, %bb.h ] ; 2 uses
  %.03765.sink.i = phi ptr [ %.03765.i, %bb.i ], [ %.04166.i, %bb.h ]
  %.03962.sink.i = phi ptr [ %.03962.i, %bb.i ], [ %.03563.i, %bb.h ]
  %.140.i = phi ptr [ %i.am, %bb.i ], [ %.03962.i, %bb.h ] ; 2 uses
  %.136.i = phi ptr [ %.03563.i, %bb.i ], [ %i.aj, %bb.h ] ; 2 uses
  %.1.i = phi ptr [ %.064.i, %bb.i ], [ %i.ak, %bb.h ] ; 2 uses
  %i.an = load i32, ptr %.04166.sink85.i, align 4, !tbaa !69
  store i32 %i.an, ptr %.03765.sink.i, align 4, !tbaa !69
  %i.ao = load i32, ptr %.03962.sink.i, align 4, !tbaa !69
  store i32 %i.ao, ptr %.04166.sink85.i, align 4, !tbaa !69
  %.037.i = getelementptr inbounds nuw i8, ptr %.03765.i, i64 4 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04166.i, i64 4 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !3139

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.aq = load i32, ptr %.0.lcssa.i, align 4, !tbaa !69
  store i32 %i.aq, ptr %i.m, align 4, !tbaa !69
  %i.ar = load i32, ptr %i.d, align 4, !tbaa !69
  store i32 %i.ar, ptr %.0.lcssa.i, align 4, !tbaa !69
  %.03050.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %.03451.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %i.as = icmp eq ptr %.03451.i, %1
  br i1 %i.as, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar240 = phi i64 [ %indvar.next241, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03455.i = phi ptr [ %.034.i, %bb.m ], [ %.03451.i, %bb.l ] ; 7 uses
  %.03054.i = phi ptr [ %.030.i, %bb.m ], [ %.03050.i, %bb.l ] ; 2 uses
  %.053.i = phi ptr [ %.1.i35, %bb.m ], [ %i.ap, %bb.l ] ; 6 uses
  %.03252.i = phi ptr [ %.133.i, %bb.m ], [ %i.m, %bb.l ] ; 10 uses
  %i.at = icmp eq ptr %.053.i, %3
  br i1 %i.at, label %.lr.ph.i.i.i40.preheader, label %bb.m

.lr.ph.i.i.i40.preheader:                         ; preds = %.lr.ph.i34
  %.03252.i239.le = ptrtoaddr ptr %.03252.i to i64
  %i.au = add i64 %i.a, -8
  %11 = sub i64 %i.au, %i.j
  %12 = lshr i64 %11, 2
  %13 = add nuw nsw i64 %12, 1
  %14 = mul i64 %indvar240, 4611686018427387903
  %i.av = add i64 %14, %13                        ; 3 uses
  %min.iters.check244 = icmp ult i64 %i.av, 24
  br i1 %min.iters.check244, label %.lr.ph.i.i.i40.preheader281, label %vector.memcheck238

vector.memcheck238:                               ; preds = %.lr.ph.i.i.i40.preheader
  %i.aw = mul i64 %indvar240, -4
  %reass.sub258 = sub i64 %i.aw, %i.j
  %op.rdx = add i64 %.03252.i239.le, -5
  %op.rdx259 = add i64 %op.rdx, %reass.sub258
  %diff.check242 = icmp ult i64 %op.rdx259, 31
  br i1 %diff.check242, label %.lr.ph.i.i.i40.preheader281, label %vector.ph245

vector.ph245:                                     ; preds = %vector.memcheck238
  %n.vec246 = and i64 %i.av, -8                   ; 3 uses
  %i.ax = shl i64 %n.vec246, 2                    ; 2 uses
  %i.ay = getelementptr i8, ptr %.03252.i, i64 %i.ax ; 2 uses
  %i.az = getelementptr i8, ptr %.03455.i, i64 %i.ax
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph245
  %index248 = phi i64 [ 0, %vector.ph245 ], [ %index.next253, %vector.body247 ] ; 2 uses
  %i.ba = shl i64 %index248, 2                    ; 2 uses
  %next.gep249 = getelementptr i8, ptr %.03252.i, i64 %i.ba ; 2 uses
  %next.gep250 = getelementptr i8, ptr %.03455.i, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep250, i64 16
  %wide.load251 = load <4 x i32>, ptr %next.gep250, align 4, !tbaa !69
  %wide.load252 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !69
  %i.bc = getelementptr i8, ptr %next.gep249, i64 16
  store <4 x i32> %wide.load251, ptr %next.gep249, align 4, !tbaa !69
  store <4 x i32> %wide.load252, ptr %i.bc, align 4, !tbaa !69
  %index.next253 = add nuw i64 %index248, 8       ; 2 uses
  %i.bd = icmp eq i64 %index.next253, %n.vec246
  br i1 %i.bd, label %middle.block254, label %vector.body247, !llvm.loop !3140

middle.block254:                                  ; preds = %vector.body247
  %cmp.n255 = icmp eq i64 %i.av, %n.vec246
  br i1 %cmp.n255, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit, label %.lr.ph.i.i.i40.preheader281

.lr.ph.i.i.i40.preheader281:                      ; preds = %vector.memcheck238, %.lr.ph.i.i.i40.preheader, %middle.block254
  %.010.i.i.i41.ph = phi ptr [ %.03252.i, %vector.memcheck238 ], [ %.03252.i, %.lr.ph.i.i.i40.preheader ], [ %i.ay, %middle.block254 ]
  %.079.i.i.i42.ph = phi ptr [ %.03455.i, %vector.memcheck238 ], [ %.03455.i, %.lr.ph.i.i.i40.preheader ], [ %i.az, %middle.block254 ]
  br label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %.lr.ph.i.i.i40.preheader281, %.lr.ph.i.i.i40
  %.010.i.i.i41 = phi ptr [ %i.bg, %.lr.ph.i.i.i40 ], [ %.010.i.i.i41.ph, %.lr.ph.i.i.i40.preheader281 ] ; 2 uses
  %.079.i.i.i42 = phi ptr [ %i.bf, %.lr.ph.i.i.i40 ], [ %.079.i.i.i42.ph, %.lr.ph.i.i.i40.preheader281 ] ; 2 uses
  %i.be = load i32, ptr %.079.i.i.i42, align 4, !tbaa !69
  store i32 %i.be, ptr %.010.i.i.i41, align 4, !tbaa !69
  %i.bf = getelementptr inbounds nuw i8, ptr %.079.i.i.i42, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.010.i.i.i41, i64 4 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.bf, %1
  br i1 %.not.i.i.i43, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit, label %.lr.ph.i.i.i40, !llvm.loop !3141

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bh = load i32, ptr %.053.i, align 4, !tbaa !69
  %i.bi = load i32, ptr %.03252.i, align 4, !tbaa !69
  %i.bj = icmp slt i32 %i.bh, %i.bi               ; 3 uses
  %.133.idx.i = select i1 %i.bj, i64 0, i64 4
  %.133.i = getelementptr inbounds nuw i8, ptr %.03252.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %i.bj, i64 4, i64 0
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.053.i, i64 %.1.idx.i ; 2 uses
  %storemerge42.i = load i32, ptr %.03455.i, align 4, !tbaa !69
  store i32 %storemerge42.i, ptr %.03054.i, align 4, !tbaa !69
  %.053.val.i = load i32, ptr %.053.i, align 4
  %.03252.val.i = load i32, ptr %.03252.i, align 4
  %storemerge.i = select i1 %i.bj, i32 %.053.val.i, i32 %.03252.val.i
  store i32 %storemerge.i, ptr %.03455.i, align 4, !tbaa !69
  %.030.i = getelementptr inbounds nuw i8, ptr %.03054.i, i64 4 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03455.i, i64 4 ; 2 uses
  %i.bk = icmp eq ptr %.034.i, %1
  %indvar.next241 = add i64 %indvar240, 1
  br i1 %i.bk, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !3142

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i.i, %bb.m, %.lr.ph.i.i.i40, %middle.block, %middle.block254, %bb.a
  %.075 = phi ptr [ %.064.i, %.lr.ph.i.i.i ], [ %4, %bb.a ], [ %.064.i, %middle.block ], [ %4, %middle.block254 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i.i40 ], [ %.1.i, %bb.j ]
  %.070 = phi ptr [ %.03962.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ], [ %.03962.i, %middle.block ], [ %.03252.i, %middle.block254 ], [ %.133.i, %bb.m ], [ %.03252.i, %.lr.ph.i.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.069 = phi ptr [ %.03563.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ], [ %.03563.i, %middle.block ], [ %.053.i, %middle.block254 ], [ %.1.i35, %bb.m ], [ %.053.i, %.lr.ph.i.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.028 = phi ptr [ %1, %.lr.ph.i.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block254 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %i.c, %bb.a ], [ %i.x, %middle.block ], [ %i.ay, %middle.block254 ], [ %.030.i, %bb.m ], [ %i.bg, %.lr.ph.i.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit
  %.0100 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit ], [ %.03759.i, %bb.f ] ; 5 uses
  %.02899 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.06998 = phi ptr [ %.069, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit ], [ %i.n, %bb.f ] ; 3 uses
  %.07097 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.07596 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit ], [ %i.o, %bb.f ]
  %.not.i44 = icmp eq ptr %.06998, %3
  %.not36.i = icmp eq ptr %.0100, %.07097
  %or.cond.i45 = select i1 %.not.i44, i1 true, i1 %.not36.i
  br i1 %or.cond.i45, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.02899, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90 ]
  %.028.ph.i = phi ptr [ %i.br, %bb.o ], [ %.07097, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90 ] ; 3 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.06998, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.07596, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i46 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 4 uses
  %.026.i = phi ptr [ %i.bo, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 4 uses
  %.025.i = phi ptr [ %i.bp, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.bl = load i32, ptr %.025.i, align 4, !tbaa !69 ; 2 uses
  %i.bm = load i32, ptr %.028.ph.i, align 4, !tbaa !69 ; 2 uses
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %.split.i, label %bb.o

.split.i:                                         ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.025.i, i64 4
  store i32 %i.bl, ptr %.030.i46, align 4, !tbaa !69
  %i.bq = load i32, ptr %.026.i, align 4, !tbaa !69
  store i32 %i.bq, ptr %.025.i, align 4, !tbaa !69
  %.not43.i = icmp eq ptr %i.bo, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 4 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_.exit, label %bb.n, !llvm.loop !3143

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4 ; 3 uses
  store i32 %i.bm, ptr %.030.i46, align 4, !tbaa !69
  %.not42.i = icmp eq ptr %i.br, %.0100
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 4 ; 2 uses
  br i1 %.not42.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_.exit, label %.outer.i, !llvm.loop !3143

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit
  %.086 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit ], [ %.03050.i, %bb.l ] ; 5 uses
  %.02884 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.06983 = phi ptr [ %.069, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit ], [ %i.ap, %bb.l ] ; 3 uses
  %.07082 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit ], [ %i.m, %bb.l ] ; 3 uses
  %.not.i49 = icmp eq ptr %.06983, %3
  %.not36.i50 = icmp eq ptr %.086, %.07082
  %or.cond.i51 = select i1 %.not.i49, i1 true, i1 %.not36.i50
  br i1 %or.cond.i51, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.bv, %bb.q ], [ %.02884, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.by, %bb.q ], [ %.07082, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.06983, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.bv, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.bw, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.bs = load i32, ptr %.0.i, align 4, !tbaa !69 ; 2 uses
  %i.bt = load i32, ptr %.021.i.ph, align 4, !tbaa !69 ; 2 uses
  %i.bu = icmp slt i32 %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 3 uses
  store i32 %i.bs, ptr %.024.i, align 4, !tbaa !69
  %i.bx = icmp eq ptr %i.bw, %3
  br i1 %i.bx, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_.exit, label %.preheader.i, !llvm.loop !3144

bb.q:                                             ; preds = %.preheader.i
  %i.by = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.bt, ptr %.024.i, align 4, !tbaa !69
  %i.bz = icmp eq ptr %i.by, %.086
  br i1 %i.bz, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !3144

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90
  %.085 = phi ptr [ %.0100, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90 ], [ %.0100, %.split.i ], [ %.086, %bb.p ], [ %.086, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.086, %bb.q ], [ %.0100, %bb.o ]
  %.171 = phi ptr [ %.07097, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90 ], [ %.028.ph.i, %.split.i ], [ %i.by, %bb.q ], [ %.07082, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.br, %bb.o ]
  %.1 = phi ptr [ %.06998, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90 ], [ %i.bo, %.split.i ], [ %.0.i, %bb.q ], [ %.06983, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.bw, %bb.p ], [ %.026.i, %bb.o ]
  %i.ca = phi ptr [ %.02899, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90 ], [ %.13137.i, %.split.i ], [ %i.bv, %bb.p ], [ %.02884, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.bv, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.171, ptr %5, align 8, !tbaa !75
  store ptr %.085, ptr %6, align 8, !tbaa !75
  store ptr %.1, ptr %2, align 8, !tbaa !75
  ret ptr %i.ca
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !75     ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !75     ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !75     ; 9 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq ptr %0, %1
  br i1 %.not7.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load i32, ptr %4, align 4, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.g = load i32, ptr %.08.i, align 4, !tbaa !69
  %.not6.i = icmp slt i32 %i.g, %i.f
  br i1 %.not6.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i, i64 4 ; 3 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.c, !llvm.loop !3145

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.08.i, %bb.c ], [ %i.h, %bb.d ] ; 8 uses
  %i.i = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 %i.k ; 12 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.o = load i32, ptr %.0.lcssa.i, align 4, !tbaa !69
  store i32 %i.o, ptr %i.l, align 4, !tbaa !69
  %i.p = load i32, ptr %4, align 4, !tbaa !69
  store i32 %i.p, ptr %.0.lcssa.i, align 4, !tbaa !69
  %i.q = load i32, ptr %i.d, align 4, !tbaa !69
  store i32 %i.q, ptr %4, align 4, !tbaa !69
  %.03760.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %.04161.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %.not4862.i = icmp eq ptr %.04161.i, %1
  br i1 %.not4862.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04167.i = phi ptr [ %.041.i, %bb.j ], [ %.04161.i, %bb.f ] ; 8 uses
  %.03766.i = phi ptr [ %.037.i, %bb.j ], [ %.03760.i, %bb.f ] ; 3 uses
  %.065.i = phi ptr [ %.1.i, %bb.j ], [ %i.n, %bb.f ] ; 6 uses
  %.03564.i = phi ptr [ %.136.i, %bb.j ], [ %i.m, %bb.f ] ; 6 uses
  %.03963.i = phi ptr [ %.140.i, %bb.j ], [ %i.l, %bb.f ] ; 11 uses
  %i.r = icmp eq ptr %.03564.i, %3
  br i1 %i.r, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %.03963.i238.le = ptrtoaddr ptr %.03963.i to i64
  %i.s = add i64 %i.a, -8
  %8 = sub i64 %i.s, %i.i
  %9 = lshr i64 %8, 2
  %10 = add nuw nsw i64 %9, 1
  %11 = mul i64 %indvar, 4611686018427387903
  %i.t = add i64 %11, %10                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader293, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.u = mul i64 %indvar, -4
  %reass.sub = sub i64 %i.u, %i.i
  %op.rdx264 = add i64 %.03963.i238.le, -5
  %op.rdx265 = add i64 %op.rdx264, %reass.sub
  %diff.check = icmp ult i64 %op.rdx265, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader293, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, -8                       ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %.03963.i, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %.04167.i, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.03963.i, i64 %i.y ; 2 uses
  %next.gep239 = getelementptr i8, ptr %.04167.i, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep239, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep239, align 4, !tbaa !69
  %wide.load240 = load <4 x i32>, ptr %i.z, align 4, !tbaa !69
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !69
  store <4 x i32> %wide.load240, ptr %i.aa, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3146

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i.i.i.preheader293

.lr.ph.i.i.i.preheader293:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %.03963.i, %vector.memcheck ], [ %.03963.i, %.lr.ph.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.04167.i, %vector.memcheck ], [ %.04167.i, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader293, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader293 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader293 ] ; 2 uses
  %i.ac = load i32, ptr %.079.i.i.i, align 4, !tbaa !69
  store i32 %i.ac, ptr %.010.i.i.i, align 4, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i.i.i, !llvm.loop !3147

bb.g:                                             ; preds = %.lr.ph.i31
  %i.af = load i32, ptr %.03963.i, align 4, !tbaa !69
  %i.ag = load i32, ptr %.065.i, align 4, !tbaa !69
  %.not50.i = icmp slt i32 %i.af, %i.ag
  br i1 %.not50.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.03564.i, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.065.i, i64 4
  %i.aj = load i32, ptr %.04167.i, align 4, !tbaa !69
  store i32 %i.aj, ptr %.03766.i, align 4, !tbaa !69
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.03963.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.04167.sink86.i = phi ptr [ %.04167.i, %bb.i ], [ %.065.i, %bb.h ] ; 2 uses
  %.03766.sink.i = phi ptr [ %.03766.i, %bb.i ], [ %.04167.i, %bb.h ]
  %.03963.sink.i = phi ptr [ %.03963.i, %bb.i ], [ %.03564.i, %bb.h ]
  %.140.i = phi ptr [ %i.ak, %bb.i ], [ %.03963.i, %bb.h ] ; 2 uses
  %.136.i = phi ptr [ %.03564.i, %bb.i ], [ %i.ah, %bb.h ] ; 2 uses
  %.1.i = phi ptr [ %.065.i, %bb.i ], [ %i.ai, %bb.h ] ; 2 uses
  %i.al = load i32, ptr %.04167.sink86.i, align 4, !tbaa !69
  store i32 %i.al, ptr %.03766.sink.i, align 4, !tbaa !69
  %i.am = load i32, ptr %.03963.sink.i, align 4, !tbaa !69
  store i32 %i.am, ptr %.04167.sink86.i, align 4, !tbaa !69
  %.037.i = getelementptr inbounds nuw i8, ptr %.03766.i, i64 4 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04167.i, i64 4 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !3148

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.ao = load i32, ptr %.0.lcssa.i, align 4, !tbaa !69
  store i32 %i.ao, ptr %i.l, align 4, !tbaa !69
  %i.ap = load i32, ptr %i.d, align 4, !tbaa !69
  store i32 %i.ap, ptr %.0.lcssa.i, align 4, !tbaa !69
  %.03051.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %.03452.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %i.aq = icmp eq ptr %.03452.i, %1
  br i1 %i.aq, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar244 = phi i64 [ %indvar.next245, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03456.i = phi ptr [ %.034.i, %bb.m ], [ %.03452.i, %bb.l ] ; 7 uses
  %.03055.i = phi ptr [ %.030.i, %bb.m ], [ %.03051.i, %bb.l ] ; 2 uses
  %.054.i = phi ptr [ %.1.i35, %bb.m ], [ %i.an, %bb.l ] ; 6 uses
  %.03253.i = phi ptr [ %.133.i, %bb.m ], [ %i.l, %bb.l ] ; 10 uses
  %i.ar = icmp eq ptr %.054.i, %3
  br i1 %i.ar, label %.lr.ph.i.i.i40.preheader, label %bb.m

.lr.ph.i.i.i40.preheader:                         ; preds = %.lr.ph.i34
  %.03253.i243.le = ptrtoaddr ptr %.03253.i to i64
  %i.as = add i64 %i.a, -8
  %12 = sub i64 %i.as, %i.i
  %13 = lshr i64 %12, 2
  %14 = add nuw nsw i64 %13, 1
  %15 = mul i64 %indvar244, 4611686018427387903
  %i.at = add i64 %15, %14                        ; 3 uses
  %min.iters.check248 = icmp ult i64 %i.at, 24
  br i1 %min.iters.check248, label %.lr.ph.i.i.i40.preheader285, label %vector.memcheck242

vector.memcheck242:                               ; preds = %.lr.ph.i.i.i40.preheader
  %i.au = mul i64 %indvar244, -4
  %reass.sub262 = sub i64 %i.au, %i.i
  %op.rdx = add i64 %.03253.i243.le, -5
  %op.rdx263 = add i64 %op.rdx, %reass.sub262
  %diff.check246 = icmp ult i64 %op.rdx263, 31
  br i1 %diff.check246, label %.lr.ph.i.i.i40.preheader285, label %vector.ph249

vector.ph249:                                     ; preds = %vector.memcheck242
  %n.vec250 = and i64 %i.at, -8                   ; 3 uses
  %i.av = shl i64 %n.vec250, 2                    ; 2 uses
  %i.aw = getelementptr i8, ptr %.03253.i, i64 %i.av ; 2 uses
  %i.ax = getelementptr i8, ptr %.03456.i, i64 %i.av
  br label %vector.body251

vector.body251:                                   ; preds = %vector.body251, %vector.ph249
  %index252 = phi i64 [ 0, %vector.ph249 ], [ %index.next257, %vector.body251 ] ; 2 uses
  %i.ay = shl i64 %index252, 2                    ; 2 uses
  %next.gep253 = getelementptr i8, ptr %.03253.i, i64 %i.ay ; 2 uses
  %next.gep254 = getelementptr i8, ptr %.03456.i, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep254, i64 16
  %wide.load255 = load <4 x i32>, ptr %next.gep254, align 4, !tbaa !69
  %wide.load256 = load <4 x i32>, ptr %i.az, align 4, !tbaa !69
  %i.ba = getelementptr i8, ptr %next.gep253, i64 16
  store <4 x i32> %wide.load255, ptr %next.gep253, align 4, !tbaa !69
  store <4 x i32> %wide.load256, ptr %i.ba, align 4, !tbaa !69
  %index.next257 = add nuw i64 %index252, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next257, %n.vec250
  br i1 %i.bb, label %middle.block258, label %vector.body251, !llvm.loop !3149

middle.block258:                                  ; preds = %vector.body251
  %cmp.n259 = icmp eq i64 %i.at, %n.vec250
  br i1 %cmp.n259, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i.i.i40.preheader285

.lr.ph.i.i.i40.preheader285:                      ; preds = %vector.memcheck242, %.lr.ph.i.i.i40.preheader, %middle.block258
  %.010.i.i.i41.ph = phi ptr [ %.03253.i, %vector.memcheck242 ], [ %.03253.i, %.lr.ph.i.i.i40.preheader ], [ %i.aw, %middle.block258 ]
  %.079.i.i.i42.ph = phi ptr [ %.03456.i, %vector.memcheck242 ], [ %.03456.i, %.lr.ph.i.i.i40.preheader ], [ %i.ax, %middle.block258 ]
  br label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %.lr.ph.i.i.i40.preheader285, %.lr.ph.i.i.i40
  %.010.i.i.i41 = phi ptr [ %i.be, %.lr.ph.i.i.i40 ], [ %.010.i.i.i41.ph, %.lr.ph.i.i.i40.preheader285 ] ; 2 uses
  %.079.i.i.i42 = phi ptr [ %i.bd, %.lr.ph.i.i.i40 ], [ %.079.i.i.i42.ph, %.lr.ph.i.i.i40.preheader285 ] ; 2 uses
  %i.bc = load i32, ptr %.079.i.i.i42, align 4, !tbaa !69
  store i32 %i.bc, ptr %.010.i.i.i41, align 4, !tbaa !69
  %i.bd = getelementptr inbounds nuw i8, ptr %.079.i.i.i42, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.010.i.i.i41, i64 4 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.bd, %1
  br i1 %.not.i.i.i43, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i.i.i40, !llvm.loop !3150

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bf = load i32, ptr %.03253.i, align 4, !tbaa !69
  %i.bg = load i32, ptr %.054.i, align 4, !tbaa !69
  %.not42.i = icmp slt i32 %i.bf, %i.bg           ; 3 uses
  %.133.idx.i = select i1 %.not42.i, i64 4, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03253.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not42.i, i64 0, i64 4
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.054.i, i64 %.1.idx.i ; 2 uses
  %storemerge43.i = load i32, ptr %.03456.i, align 4, !tbaa !69
  store i32 %storemerge43.i, ptr %.03055.i, align 4, !tbaa !69
  %.03253.val.i = load i32, ptr %.03253.i, align 4
  %.054.val.i = load i32, ptr %.054.i, align 4
  %storemerge.i = select i1 %.not42.i, i32 %.03253.val.i, i32 %.054.val.i
  store i32 %storemerge.i, ptr %.03456.i, align 4, !tbaa !69
  %.030.i = getelementptr inbounds nuw i8, ptr %.03055.i, i64 4 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03456.i, i64 4 ; 2 uses
  %i.bh = icmp eq ptr %.034.i, %1
  %indvar.next245 = add i64 %indvar244, 1
  br i1 %i.bh, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !3151

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i.i, %bb.m, %.lr.ph.i.i.i40, %middle.block, %middle.block258, %bb.a
  %.077 = phi ptr [ %.03564.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ], [ %.03564.i, %middle.block ], [ %.054.i, %middle.block258 ], [ %.1.i35, %bb.m ], [ %.054.i, %.lr.ph.i.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.075 = phi ptr [ %.03963.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ], [ %.03963.i, %middle.block ], [ %.03253.i, %middle.block258 ], [ %.133.i, %bb.m ], [ %.03253.i, %.lr.ph.i.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.074 = phi ptr [ %.065.i, %.lr.ph.i.i.i ], [ %4, %bb.a ], [ %.065.i, %middle.block ], [ %4, %middle.block258 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i.i40 ], [ %.1.i, %bb.j ]
  %.028 = phi ptr [ %1, %.lr.ph.i.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block258 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.c, %bb.a ], [ %i.w, %middle.block ], [ %i.aw, %middle.block258 ], [ %.030.i, %bb.m ], [ %i.be, %.lr.ph.i.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
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
  %.028.ph.i = phi ptr [ %i.bn, %bb.o ], [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ] ; 3 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.074103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i46 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 4 uses
  %.026.i = phi ptr [ %i.bk, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 4 uses
  %.025.i = phi ptr [ %i.bl, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.bi = load i32, ptr %.028.ph.i, align 4, !tbaa !69 ; 2 uses
  %i.bj = load i32, ptr %.025.i, align 4, !tbaa !69 ; 2 uses
  %.not42.i47 = icmp slt i32 %i.bi, %i.bj
  br i1 %.not42.i47, label %bb.o, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.025.i, i64 4
  store i32 %i.bj, ptr %.030.i46, align 4, !tbaa !69
  %i.bm = load i32, ptr %.026.i, align 4, !tbaa !69
  store i32 %i.bm, ptr %.025.i, align 4, !tbaa !69
  %.not44.i = icmp eq ptr %i.bk, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 4 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %bb.n, !llvm.loop !3152

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4 ; 3 uses
  store i32 %i.bi, ptr %.030.i46, align 4, !tbaa !69
  %.not43.i = icmp eq ptr %i.bn, %.0105
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 4 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.outer.i, !llvm.loop !3152

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit
  %.091 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %.03051.i, %bb.l ] ; 5 uses
  %.02889 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07588 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.l, %bb.l ] ; 3 uses
  %.07787 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.an, %bb.l ] ; 3 uses
  %.not.i50 = icmp eq ptr %.07787, %3
  %.not36.i51 = icmp eq ptr %.091, %.07588
  %or.cond.i52 = select i1 %.not.i50, i1 true, i1 %.not36.i51
  br i1 %or.cond.i52, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.bq, %bb.q ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.bt, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.bq, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.br, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.bo = load i32, ptr %.021.i.ph, align 4, !tbaa !69 ; 2 uses
  %i.bp = load i32, ptr %.0.i, align 4, !tbaa !69 ; 2 uses
  %.not37.i = icmp slt i32 %i.bo, %i.bp
  %i.bq = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %.not37.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 3 uses
  store i32 %i.bp, ptr %.024.i, align 4, !tbaa !69
  %i.bs = icmp eq ptr %i.br, %3
  br i1 %i.bs, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.preheader.i, !llvm.loop !3153

bb.q:                                             ; preds = %.preheader.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.bo, ptr %.024.i, align 4, !tbaa !69
  %i.bu = icmp eq ptr %i.bt, %.091
  br i1 %i.bu, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !3153

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95
  %.090 = phi ptr [ %.0105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ], [ %.0105, %.split.i ], [ %.091, %bb.p ], [ %.091, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.091, %bb.q ], [ %.0105, %bb.o ]
  %.178 = phi ptr [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ], [ %i.bk, %.split.i ], [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.br, %bb.p ], [ %.026.i, %bb.o ]
  %.176 = phi ptr [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ], [ %.028.ph.i, %.split.i ], [ %i.bt, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.bn, %bb.o ]
  %i.bv = phi ptr [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ], [ %.13137.i, %.split.i ], [ %i.bq, %bb.p ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.bq, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.176, ptr %5, align 8, !tbaa !75
  store ptr %.090, ptr %6, align 8, !tbaa !75
  store ptr %.178, ptr %2, align 8, !tbaa !75
  ret ptr %i.bv
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
  %.pre = load ptr, ptr %1, align 8, !tbaa !2933
  %i.b = shl i64 %7, 2                            ; 2 uses
  %i.c = add i64 %i.b, -4
  %i.d = add i64 %i.b, -4
  %i.e = shl i64 %7, 2
  %invariant.op = add i64 %i.e, -4
  %i.f = shl i64 %7, 2
  %invariant.op495 = add i64 %i.f, -4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit
  %i.g = phi ptr [ %.pre, %.lr.ph ], [ %i.fg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 2 uses
  %.0 = phi i64 [ %10, %.lr.ph ], [ %i.fk, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 3 uses
  %.0140 = phi i64 [ %9, %.lr.ph ], [ %i.fi, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 4 uses
  %.095139 = phi i64 [ %8, %.lr.ph ], [ %i.fl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 2 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !2933   ; 11 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 6 uses
  %i.j = icmp ult i64 %.0140, %.0
  br i1 %i.j, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread20.i
  %.023.i = phi i64 [ %i.ac, %.thread20.i ], [ %.0140, %bb.b ] ; 4 uses
  %.01822.i = phi i64 [ %i.ab, %.thread20.i ], [ 0, %bb.b ] ; 4 uses
  %i.k = mul i64 %.01822.i, %7
  %i.l = xor i64 %i.k, -1
  %i.m = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.l
  %i.n = mul i64 %.023.i, %7
  %i.o = xor i64 %i.n, -1
  %i.p = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.o
  %i.q = xor i64 %.01822.i, -1
  %i.r = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.q
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_S5_S5_SG_NS0_7swap_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_:bb.a
  %i.dz = load i32, ptr %i.dw, align 4, !tbaa !69, !noalias !3196
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !69, !noalias !3196
  %i.ea = load i32, ptr %i.dv, align 4, !tbaa !69, !noalias !3196
  store i32 %i.ea, ptr %i.dw, align 4, !tbaa !69, !noalias !3196
  store i32 %i.dy, ptr %i.dv, align 4, !tbaa !69, !noalias !3196
  %.not.i30 = icmp eq ptr %i.dv, %i.af
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29, !llvm.loop !3198

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %.reass496 = add i64 %i.cc, %invariant.op495
  %i.eb = sub i64 %.reass496, %i.i                ; 2 uses
  %i.ec = lshr i64 %i.eb, 2
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check322 = icmp ult i64 %i.eb, 28
  br i1 %min.iters.check322, label %.lr.ph.i.i.preheader379, label %vector.memcheck313

vector.memcheck313:                               ; preds = %.lr.ph.i.i.preheader
  %scevgep314 = getelementptr i8, ptr %i.cb, i64 -4
  %i.ee = add i64 %i.c, %i.cc
  %i.ef = sub i64 %i.ee, %i.i
  %i.eg = lshr i64 %i.ef, 2
  %i.eh = mul i64 %i.eg, -4                       ; 2 uses
  %scevgep315 = getelementptr i8, ptr %scevgep314, i64 %i.eh
  %scevgep316 = getelementptr i8, ptr %.sroa.064.0, i64 -4
  %scevgep317 = getelementptr i8, ptr %scevgep316, i64 %i.eh
  %bound0318 = icmp ult ptr %scevgep315, %.sroa.064.0
  %bound1319 = icmp ult ptr %scevgep317, %i.cb
  %found.conflict320 = and i1 %bound0318, %bound1319
  br i1 %found.conflict320, label %.lr.ph.i.i.preheader379, label %vector.ph323

vector.ph323:                                     ; preds = %vector.memcheck313
  %n.vec324 = and i64 %i.ed, 9223372036854775800  ; 3 uses
  %i.ei = mul i64 %n.vec324, -4                   ; 2 uses
  %i.ej = getelementptr i8, ptr %.sroa.064.0, i64 %i.ei ; 2 uses
  %i.ek = getelementptr i8, ptr %i.cb, i64 %i.ei
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph323
  %index326 = phi i64 [ 0, %vector.ph323 ], [ %index.next333, %vector.body325 ] ; 2 uses
  %i.el = mul i64 %index326, -4                   ; 2 uses
  %next.gep327 = getelementptr i8, ptr %.sroa.064.0, i64 %i.el ; 2 uses
  %next.gep328 = getelementptr i8, ptr %i.cb, i64 %i.el ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %next.gep328, i64 -16 ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %next.gep328, i64 -32 ; 2 uses
  %wide.load329 = load <4 x i32>, ptr %i.em, align 4, !tbaa !69, !alias.scope !3199, !noalias !3202
  %wide.load330 = load <4 x i32>, ptr %i.en, align 4, !tbaa !69, !alias.scope !3199, !noalias !3202
  %i.eo = getelementptr inbounds i8, ptr %next.gep327, i64 -16 ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %next.gep327, i64 -32 ; 2 uses
  %wide.load331 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !69, !alias.scope !3208, !noalias !3209
  %wide.load332 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !69, !alias.scope !3208, !noalias !3209
  store <4 x i32> %wide.load331, ptr %i.em, align 4, !tbaa !69, !alias.scope !3199, !noalias !3202
  store <4 x i32> %wide.load332, ptr %i.en, align 4, !tbaa !69, !alias.scope !3199, !noalias !3202
  store <4 x i32> %wide.load329, ptr %i.eo, align 4, !tbaa !69, !alias.scope !3208, !noalias !3209
  store <4 x i32> %wide.load330, ptr %i.ep, align 4, !tbaa !69, !alias.scope !3208, !noalias !3209
  %index.next333 = add nuw i64 %index326, 8       ; 2 uses
  %i.eq = icmp eq i64 %index.next333, %n.vec324
  br i1 %i.eq, label %middle.block334, label %vector.body325, !llvm.loop !3210

middle.block334:                                  ; preds = %vector.body325
  %cmp.n335 = icmp eq i64 %i.ed, %n.vec324
  br i1 %cmp.n335, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader379

.lr.ph.i.i.preheader379:                          ; preds = %vector.memcheck313, %.lr.ph.i.i.preheader, %middle.block334
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %vector.memcheck313 ], [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.ej, %middle.block334 ]
  %.ph380 = phi ptr [ %i.cb, %vector.memcheck313 ], [ %i.cb, %.lr.ph.i.i.preheader ], [ %i.ek, %middle.block334 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader379, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.et, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader379 ]
  %i.er = phi ptr [ %i.es, %.lr.ph.i.i ], [ %.ph380, %.lr.ph.i.i.preheader379 ]
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -4 ; 4 uses
  %i.et = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !69, !noalias !3209
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !69, !noalias !3209
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !69, !noalias !3209
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !69, !noalias !3209
  %.not.i.i31 = icmp eq ptr %i.es, %i.af
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !3211

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block368, %middle.block334, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.af, %bb.s ], [ %i.et, %.lr.ph.i.i ], [ %i.cb, %bb.t ], [ %i.db, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.cr, %middle.block ], [ %i.ej, %middle.block334 ], [ %i.dn, %middle.block368 ], [ %i.dx, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !2933
  %i.ew = load ptr, ptr %1, align 8, !tbaa !2933  ; 4 uses
  %.neg98 = mul i64 %.018.lcssa.i, -4             ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.af, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -4 ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ew, i64 -4 ; 2 uses
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !69
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !69
  store i32 %i.fb, ptr %i.ey, align 4, !tbaa !69
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !69
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fc = load ptr, ptr %2, align 8, !tbaa !2933  ; 2 uses
  %i.fd = icmp eq ptr %i.ex, %i.fc
  br i1 %i.fd, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fe = icmp eq ptr %i.fc, %i.ew
  br i1 %i.fe, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.ew, %bb.y ], [ %i.ex, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2933
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, %bb.z, %.sink.split.i
  store ptr %i.af, ptr %3, align 8, !tbaa !2933
  %i.ff = load ptr, ptr %1, align 8, !tbaa !2933
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -4 ; 2 uses
  store ptr %i.fg, ptr %1, align 8, !tbaa !2933
  %i.fh = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.fh to i64
  %i.fi = add i64 %.0140, %.neg
  %i.fj = icmp ne i64 %i.ae, 0
  %.neg24 = sext i1 %i.fj to i64
  %i.fk = add i64 %.sroa.speculated, %.neg24
  %i.fl = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.fl, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3212

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit, %bb.a
  %i.fm = load ptr, ptr %6, align 8, !tbaa !2933
  store ptr %i.fm, ptr %0, align 8, !tbaa !2933
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !75     ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !75     ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !75     ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load i32, ptr %4, align 4, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.g = load i32, ptr %.07.i, align 4, !tbaa !69
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.c, !llvm.loop !3136

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.i, %bb.d ] ; 10 uses
  %i.j = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
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
  %i.p = load i32, ptr %i.m, align 4, !tbaa !69
  %i.q = load i32, ptr %.0.lcssa.i, align 4, !tbaa !69
  store i32 %i.q, ptr %i.m, align 4, !tbaa !69
  %i.r = load i32, ptr %4, align 4, !tbaa !69
  store i32 %i.r, ptr %.0.lcssa.i, align 4, !tbaa !69
  %i.s = load i32, ptr %i.d, align 4, !tbaa !69
  store i32 %i.s, ptr %4, align 4, !tbaa !69
  store i32 %i.p, ptr %i.d, align 4, !tbaa !69
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
  %7 = sub i64 %i.u, %i.j
  %8 = lshr i64 %7, 2
  %9 = add nuw nsw i64 %8, 1
  %10 = mul i64 %indvar, 4611686018427387903
  %i.v = add i64 %10, %9                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader297, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %11 = add i64 %i.a, -8
  %12 = sub i64 %11, %i.j
  %13 = and i64 %12, -4                           ; 2 uses
  %i.w = getelementptr i8, ptr %.0.lcssa.i, i64 %13
  %scevgep = getelementptr i8, ptr %i.w, i64 8
  %i.x = add i64 %13, 4
  %i.y = shl i64 %indvar, 2
  %i.z = sub i64 %i.x, %i.y
  %scevgep236 = getelementptr i8, ptr %.03962.i, i64 %i.z
  %bound0 = icmp ult ptr %.04166.i, %scevgep236
  %bound1 = icmp ult ptr %.03962.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader297, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, -8                       ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %.03962.i, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %.04166.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03962.i, i64 %i.ad ; 3 uses
  %next.gep237 = getelementptr i8, ptr %.04166.i, i64 %i.ad ; 3 uses
  %i.ae = getelementptr i8, ptr %next.gep237, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep237, align 4, !tbaa !69, !alias.scope !3213, !noalias !3216
  %wide.load238.a = load <4 x i32>, ptr %i.ae, align 4, !tbaa !69, !alias.scope !3213, !noalias !3216
  %i.af = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load239 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !69, !alias.scope !3216
  %wide.load240 = load <4 x i32>, ptr %i.af, align 4, !tbaa !69, !alias.scope !3216
  store <4 x i32> %wide.load239, ptr %next.gep237, align 4, !tbaa !69, !alias.scope !3213, !noalias !3216
  store <4 x i32> %wide.load240, ptr %i.ae, align 4, !tbaa !69, !alias.scope !3213, !noalias !3216
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !69, !alias.scope !3216
  store <4 x i32> %wide.load238.a, ptr %i.af, align 4, !tbaa !69, !alias.scope !3216
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !3218

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit, label %.lr.ph.i.i.i.preheader297

.lr.ph.i.i.i.preheader297:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %.03962.i, %vector.memcheck ], [ %.03962.i, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.04166.i, %vector.memcheck ], [ %.04166.i, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader297, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader297 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader297 ] ; 3 uses
  %i.ah = load i32, ptr %.079.i.i.i, align 4, !tbaa !69
  %i.ai = load i32, ptr %.010.i.i.i, align 4, !tbaa !69
  store i32 %i.ai, ptr %.079.i.i.i, align 4, !tbaa !69
  store i32 %i.ah, ptr %.010.i.i.i, align 4, !tbaa !69
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit, label %.lr.ph.i.i.i, !llvm.loop !3219

bb.g:                                             ; preds = %.lr.ph.i31
  %i.al = load i32, ptr %.064.i, align 4, !tbaa !69
  %i.am = load i32, ptr %.03962.i, align 4, !tbaa !69
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.03563.i, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.064.i, i64 4
  %i.aq = load i32, ptr %.03765.i, align 4, !tbaa !69
  %i.ar = load i32, ptr %.04166.i, align 4, !tbaa !69
  store i32 %i.ar, ptr %.03765.i, align 4, !tbaa !69
  %i.as = load i32, ptr %.064.i, align 4, !tbaa !69
  store i32 %i.as, ptr %.04166.i, align 4, !tbaa !69
  %i.at = load i32, ptr %.03563.i, align 4, !tbaa !69
  store i32 %i.at, ptr %.064.i, align 4, !tbaa !69
  store i32 %i.aq, ptr %.03563.i, align 4, !tbaa !69
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.03962.i, i64 4
  %i.av = load i32, ptr %.03765.i, align 4, !tbaa !69
  %i.aw = load i32, ptr %.04166.i, align 4, !tbaa !69
  store i32 %i.aw, ptr %.03765.i, align 4, !tbaa !69
  %i.ax = load i32, ptr %.03962.i, align 4, !tbaa !69
  store i32 %i.ax, ptr %.04166.i, align 4, !tbaa !69
  store i32 %i.av, ptr %.03962.i, align 4, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.140.i = phi ptr [ %.03962.i, %bb.h ], [ %i.au, %bb.i ] ; 2 uses
  %.136.i = phi ptr [ %i.ao, %bb.h ], [ %.03563.i, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.ap, %bb.h ], [ %.064.i, %bb.i ] ; 2 uses
  %.037.i = getelementptr inbounds nuw i8, ptr %.03765.i, i64 4 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04166.i, i64 4 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !3220

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.m, align 4, !tbaa !69
  %i.ba = load i32, ptr %.0.lcssa.i, align 4, !tbaa !69
  store i32 %i.ba, ptr %i.m, align 4, !tbaa !69
  %i.bb = load i32, ptr %i.d, align 4, !tbaa !69
  store i32 %i.bb, ptr %.0.lcssa.i, align 4, !tbaa !69
  store i32 %i.az, ptr %i.d, align 4, !tbaa !69
  %.03049.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %.03450.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %i.bc = icmp eq ptr %.03450.i, %1
  br i1 %i.bc, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar243 = phi i64 [ %indvar.next244, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03454.i = phi ptr [ %.034.i, %bb.m ], [ %.03450.i, %bb.l ] ; 8 uses
  %.03053.i = phi ptr [ %.030.i, %bb.m ], [ %.03049.i, %bb.l ] ; 3 uses
  %.052.i = phi ptr [ %.1.i35, %bb.m ], [ %i.ay, %bb.l ] ; 6 uses
  %.03251.i = phi ptr [ %.133.i, %bb.m ], [ %i.m, %bb.l ] ; 11 uses
  %i.bd = icmp eq ptr %.052.i, %3
  br i1 %i.bd, label %.lr.ph.i.i.i40.preheader, label %bb.m

.lr.ph.i.i.i40.preheader:                         ; preds = %.lr.ph.i34
  %i.be = add i64 %i.a, -8
  %14 = sub i64 %i.be, %i.j
  %15 = lshr i64 %14, 2
  %16 = add nuw nsw i64 %15, 1
  %17 = mul i64 %indvar243, 4611686018427387903
  %i.bf = add i64 %17, %16                        ; 3 uses
  %min.iters.check253 = icmp ult i64 %i.bf, 24
  br i1 %min.iters.check253, label %.lr.ph.i.i.i40.preheader290, label %vector.memcheck242

vector.memcheck242:                               ; preds = %.lr.ph.i.i.i40.preheader
  %18 = add i64 %i.a, -8
  %19 = sub i64 %18, %i.j
  %20 = and i64 %19, -4                           ; 2 uses
  %i.bg = getelementptr i8, ptr %.0.lcssa.i, i64 %20
  %scevgep245 = getelementptr i8, ptr %i.bg, i64 8
  %i.bh = add i64 %20, 4
  %i.bi = shl i64 %indvar243, 2
  %i.bj = sub i64 %i.bh, %i.bi
  %scevgep248 = getelementptr i8, ptr %.03251.i, i64 %i.bj
  %bound0249 = icmp ult ptr %.03454.i, %scevgep248
  %bound1250 = icmp ult ptr %.03251.i, %scevgep245
  %found.conflict251 = and i1 %bound0249, %bound1250
  br i1 %found.conflict251, label %.lr.ph.i.i.i40.preheader290, label %vector.ph254

vector.ph254:                                     ; preds = %vector.memcheck242
  %n.vec255 = and i64 %i.bf, -8                   ; 3 uses
  %i.bk = shl i64 %n.vec255, 2                    ; 2 uses
  %i.bl = getelementptr i8, ptr %.03251.i, i64 %i.bk ; 2 uses
  %i.bm = getelementptr i8, ptr %.03454.i, i64 %i.bk
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph254
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next264, %vector.body256 ] ; 2 uses
  %i.bn = shl i64 %index257, 2                    ; 2 uses
  %next.gep258 = getelementptr i8, ptr %.03251.i, i64 %i.bn ; 3 uses
  %next.gep259 = getelementptr i8, ptr %.03454.i, i64 %i.bn ; 3 uses
  %i.bo = getelementptr i8, ptr %next.gep259, i64 16 ; 2 uses
  %wide.load260 = load <4 x i32>, ptr %next.gep259, align 4, !tbaa !69, !alias.scope !3221, !noalias !3224
  %wide.load261 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !69, !alias.scope !3221, !noalias !3224
  %i.bp = getelementptr i8, ptr %next.gep258, i64 16 ; 2 uses
  %wide.load262 = load <4 x i32>, ptr %next.gep258, align 4, !tbaa !69, !alias.scope !3224
  %wide.load263 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !69, !alias.scope !3224
  store <4 x i32> %wide.load262, ptr %next.gep259, align 4, !tbaa !69, !alias.scope !3221, !noalias !3224
  store <4 x i32> %wide.load263, ptr %i.bo, align 4, !tbaa !69, !alias.scope !3221, !noalias !3224
  store <4 x i32> %wide.load260, ptr %next.gep258, align 4, !tbaa !69, !alias.scope !3224
  store <4 x i32> %wide.load261, ptr %i.bp, align 4, !tbaa !69, !alias.scope !3224
  %index.next264 = add nuw i64 %index257, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next264, %n.vec255
  br i1 %i.bq, label %middle.block265, label %vector.body256, !llvm.loop !3226

middle.block265:                                  ; preds = %vector.body256
  %cmp.n266 = icmp eq i64 %i.bf, %n.vec255
  br i1 %cmp.n266, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit, label %.lr.ph.i.i.i40.preheader290

.lr.ph.i.i.i40.preheader290:                      ; preds = %vector.memcheck242, %.lr.ph.i.i.i40.preheader, %middle.block265
  %.010.i.i.i41.ph = phi ptr [ %.03251.i, %vector.memcheck242 ], [ %.03251.i, %.lr.ph.i.i.i40.preheader ], [ %i.bl, %middle.block265 ]
  %.079.i.i.i42.ph = phi ptr [ %.03454.i, %vector.memcheck242 ], [ %.03454.i, %.lr.ph.i.i.i40.preheader ], [ %i.bm, %middle.block265 ]
  br label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %.lr.ph.i.i.i40.preheader290, %.lr.ph.i.i.i40
  %.010.i.i.i41 = phi ptr [ %i.bu, %.lr.ph.i.i.i40 ], [ %.010.i.i.i41.ph, %.lr.ph.i.i.i40.preheader290 ] ; 3 uses
  %.079.i.i.i42 = phi ptr [ %i.bt, %.lr.ph.i.i.i40 ], [ %.079.i.i.i42.ph, %.lr.ph.i.i.i40.preheader290 ] ; 3 uses
  %i.br = load i32, ptr %.079.i.i.i42, align 4, !tbaa !69
  %i.bs = load i32, ptr %.010.i.i.i41, align 4, !tbaa !69
  store i32 %i.bs, ptr %.079.i.i.i42, align 4, !tbaa !69
  store i32 %i.br, ptr %.010.i.i.i41, align 4, !tbaa !69
  %i.bt = getelementptr inbounds nuw i8, ptr %.079.i.i.i42, i64 4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i.i.i41, i64 4 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.bt, %1
  br i1 %.not.i.i.i43, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit, label %.lr.ph.i.i.i40, !llvm.loop !3227

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bv = load i32, ptr %.052.i, align 4, !tbaa !69
  %i.bw = load i32, ptr %.03251.i, align 4, !tbaa !69
  %i.bx = icmp slt i32 %i.bv, %i.bw               ; 3 uses
  %i.by = load i32, ptr %.03053.i, align 4, !tbaa !69
  %i.bz = load i32, ptr %.03454.i, align 4, !tbaa !69
  store i32 %i.bz, ptr %.03053.i, align 4, !tbaa !69
  %.03251.sink70.i = select i1 %i.bx, ptr %.052.i, ptr %.03251.i ; 2 uses
  %.133.idx.i = select i1 %i.bx, i64 0, i64 4
  %.133.i = getelementptr inbounds nuw i8, ptr %.03251.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %i.bx, i64 4, i64 0
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.052.i, i64 %.1.idx.i ; 2 uses
  %i.ca = load i32, ptr %.03251.sink70.i, align 4, !tbaa !69
  store i32 %i.ca, ptr %.03454.i, align 4, !tbaa !69
  store i32 %i.by, ptr %.03251.sink70.i, align 4, !tbaa !69
  %.030.i = getelementptr inbounds nuw i8, ptr %.03053.i, i64 4 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03454.i, i64 4 ; 2 uses
  %i.cb = icmp eq ptr %.034.i, %1
  %indvar.next244 = add i64 %indvar243, 1
  br i1 %i.cb, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !3228

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i.i, %bb.m, %.lr.ph.i.i.i40, %middle.block, %middle.block265, %bb.a
  %.075 = phi ptr [ %.064.i, %.lr.ph.i.i.i ], [ %4, %bb.a ], [ %.064.i, %middle.block ], [ %4, %middle.block265 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i.i40 ], [ %.1.i, %bb.j ]
  %.070 = phi ptr [ %.03962.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ], [ %.03962.i, %middle.block ], [ %.03251.i, %middle.block265 ], [ %.133.i, %bb.m ], [ %.03251.i, %.lr.ph.i.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.069 = phi ptr [ %.03563.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ], [ %.03563.i, %middle.block ], [ %.052.i, %middle.block265 ], [ %.1.i35, %bb.m ], [ %.052.i, %.lr.ph.i.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.028 = phi ptr [ %1, %.lr.ph.i.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block265 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.c, %bb.a ], [ %i.ab, %middle.block ], [ %i.bl, %middle.block265 ], [ %.030.i, %bb.m ], [ %i.bu, %.lr.ph.i.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit
  %.0100 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit ], [ %.03759.i, %bb.f ] ; 5 uses
  %.02899 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.06998 = phi ptr [ %.069, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit ], [ %i.n, %bb.f ] ; 3 uses
  %.07097 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.07596 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit ], [ %i.o, %bb.f ]
  %.not.i44 = icmp eq ptr %.06998, %3
  %.not36.i = icmp eq ptr %.0100, %.07097
  %or.cond.i45 = select i1 %.not.i44, i1 true, i1 %.not36.i
  br i1 %or.cond.i45, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.02899, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90 ]
  %.028.ph.i = phi ptr [ %i.cj, %bb.o ], [ %.07097, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.06998, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.07596, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i46 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.cf, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.cg, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.cc = load i32, ptr %.025.i, align 4, !tbaa !69 ; 2 uses
  %i.cd = load i32, ptr %.028.ph.i, align 4, !tbaa !69 ; 2 uses
  %i.ce = icmp slt i32 %i.cc, %i.cd
  br i1 %i.ce, label %.split.i, label %bb.o

.split.i:                                         ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.025.i, i64 4
  %i.ch = load i32, ptr %.030.i46, align 4, !tbaa !69
  store i32 %i.cc, ptr %.030.i46, align 4, !tbaa !69
  %i.ci = load i32, ptr %.026.i, align 4, !tbaa !69
  store i32 %i.ci, ptr %.025.i, align 4, !tbaa !69
  store i32 %i.ch, ptr %.026.i, align 4, !tbaa !69
  %.not43.i = icmp eq ptr %i.cf, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 4 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_.exit, label %bb.n, !llvm.loop !3229

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4 ; 3 uses
  %i.ck = load i32, ptr %.030.i46, align 4, !tbaa !69
  store i32 %i.cd, ptr %.030.i46, align 4, !tbaa !69
  store i32 %i.ck, ptr %.028.ph.i, align 4, !tbaa !69
  %.not42.i = icmp eq ptr %i.cj, %.0100
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 4 ; 2 uses
  br i1 %.not42.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_.exit, label %.outer.i, !llvm.loop !3229

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit
  %.086 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit ], [ %.03049.i, %bb.l ] ; 5 uses
  %.02884 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.06983 = phi ptr [ %.069, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit ], [ %i.ay, %bb.l ] ; 3 uses
  %.07082 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit ], [ %i.m, %bb.l ] ; 3 uses
  %.not.i49 = icmp eq ptr %.06983, %3
  %.not36.i50 = icmp eq ptr %.086, %.07082
  %or.cond.i51 = select i1 %.not.i49, i1 true, i1 %.not36.i50
  br i1 %or.cond.i51, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.co, %bb.q ], [ %.02884, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.cs, %bb.q ], [ %.07082, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.06983, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.co, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.cq, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.cl = load i32, ptr %.0.i, align 4, !tbaa !69 ; 2 uses
  %i.cm = load i32, ptr %.021.i.ph, align 4, !tbaa !69 ; 2 uses
  %i.cn = icmp slt i32 %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  %i.cp = load i32, ptr %.024.i, align 4, !tbaa !69 ; 2 uses
  br i1 %i.cn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 3 uses
  store i32 %i.cl, ptr %.024.i, align 4, !tbaa !69
  store i32 %i.cp, ptr %.0.i, align 4, !tbaa !69
  %i.cr = icmp eq ptr %i.cq, %3
  br i1 %i.cr, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_.exit, label %.preheader.i, !llvm.loop !3230

bb.q:                                             ; preds = %.preheader.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.cm, ptr %.024.i, align 4, !tbaa !69
  store i32 %i.cp, ptr %.021.i.ph, align 4, !tbaa !69
  %i.ct = icmp eq ptr %i.cs, %.086
  br i1 %i.ct, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !3230

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90
  %.085 = phi ptr [ %.0100, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90 ], [ %.0100, %.split.i ], [ %.086, %bb.p ], [ %.086, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.086, %bb.q ], [ %.0100, %bb.o ]
  %.171 = phi ptr [ %.07097, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90 ], [ %.028.ph.i, %.split.i ], [ %i.cs, %bb.q ], [ %.07082, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.cj, %bb.o ]
  %.1 = phi ptr [ %.06998, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90 ], [ %i.cf, %.split.i ], [ %.0.i, %bb.q ], [ %.06983, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.cq, %bb.p ], [ %.026.i, %bb.o ]
  %i.cu = phi ptr [ %.02899, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread90 ], [ %.13137.i, %.split.i ], [ %i.co, %bb.p ], [ %.02884, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.co, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.171, ptr %5, align 8, !tbaa !75
  store ptr %.085, ptr %6, align 8, !tbaa !75
  store ptr %.1, ptr %2, align 8, !tbaa !75
  ret ptr %i.cu
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !75     ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !75     ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !75     ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq ptr %0, %1
  br i1 %.not7.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load i32, ptr %4, align 4, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.g = load i32, ptr %.08.i, align 4, !tbaa !69
  %.not6.i = icmp slt i32 %i.g, %i.f
  br i1 %.not6.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i, i64 4 ; 3 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.c, !llvm.loop !3145

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.08.i, %bb.c ], [ %i.h, %bb.d ] ; 10 uses
  %i.i = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 %i.k ; 14 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !69
  %i.p = load i32, ptr %.0.lcssa.i, align 4, !tbaa !69
  store i32 %i.p, ptr %i.l, align 4, !tbaa !69
  %i.q = load i32, ptr %4, align 4, !tbaa !69
  store i32 %i.q, ptr %.0.lcssa.i, align 4, !tbaa !69
  %i.r = load i32, ptr %i.d, align 4, !tbaa !69
  store i32 %i.r, ptr %4, align 4, !tbaa !69
  store i32 %i.o, ptr %i.d, align 4, !tbaa !69
  %.03760.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %.04161.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %.not4862.i = icmp eq ptr %.04161.i, %1
  br i1 %.not4862.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04167.i = phi ptr [ %.041.i, %bb.j ], [ %.04161.i, %bb.f ] ; 10 uses
  %.03766.i = phi ptr [ %.037.i, %bb.j ], [ %.03760.i, %bb.f ] ; 5 uses
  %.065.i = phi ptr [ %.1.i, %bb.j ], [ %i.n, %bb.f ] ; 7 uses
  %.03564.i = phi ptr [ %.136.i, %bb.j ], [ %i.m, %bb.f ] ; 7 uses
  %.03963.i = phi ptr [ %.140.i, %bb.j ], [ %i.l, %bb.f ] ; 13 uses
  %i.s = icmp eq ptr %.03564.i, %3
  br i1 %i.s, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %i.t = add i64 %i.a, -8
  %8 = sub i64 %i.t, %i.i
  %9 = lshr i64 %8, 2
  %10 = add nuw nsw i64 %9, 1
  %11 = mul i64 %indvar, 4611686018427387903
  %i.u = add i64 %11, %10                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.u, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader301, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %12 = add i64 %i.a, -8
  %13 = sub i64 %12, %i.i
  %14 = and i64 %13, -4                           ; 2 uses
  %i.v = getelementptr i8, ptr %.0.lcssa.i, i64 %14
  %scevgep = getelementptr i8, ptr %i.v, i64 8
  %i.w = add i64 %14, 4
  %i.x = shl i64 %indvar, 2
  %i.y = sub i64 %i.w, %i.x
  %scevgep240 = getelementptr i8, ptr %.03963.i, i64 %i.y
  %bound0 = icmp ult ptr %.04167.i, %scevgep240
  %bound1 = icmp ult ptr %.03963.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader301, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, -8                       ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 2 uses
  %i.aa = getelementptr i8, ptr %.03963.i, i64 %i.z ; 2 uses
  %i.ab = getelementptr i8, ptr %.04167.i, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03963.i, i64 %i.ac ; 3 uses
  %next.gep241 = getelementptr i8, ptr %.04167.i, i64 %i.ac ; 3 uses
  %i.ad = getelementptr i8, ptr %next.gep241, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep241, align 4, !tbaa !69, !alias.scope !3231, !noalias !3234
  %wide.load242.a = load <4 x i32>, ptr %i.ad, align 4, !tbaa !69, !alias.scope !3231, !noalias !3234
  %i.ae = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load243 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !69, !alias.scope !3234
  %wide.load244 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !69, !alias.scope !3234
  store <4 x i32> %wide.load243, ptr %next.gep241, align 4, !tbaa !69, !alias.scope !3231, !noalias !3234
  store <4 x i32> %wide.load244, ptr %i.ad, align 4, !tbaa !69, !alias.scope !3231, !noalias !3234
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !69, !alias.scope !3234
  store <4 x i32> %wide.load242.a, ptr %i.ae, align 4, !tbaa !69, !alias.scope !3234
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !3236

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i.i.i.preheader301

.lr.ph.i.i.i.preheader301:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %.03963.i, %vector.memcheck ], [ %.03963.i, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.04167.i, %vector.memcheck ], [ %.04167.i, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader301, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader301 ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader301 ] ; 3 uses
  %i.ag = load i32, ptr %.079.i.i.i, align 4, !tbaa !69
  %i.ah = load i32, ptr %.010.i.i.i, align 4, !tbaa !69
  store i32 %i.ah, ptr %.079.i.i.i, align 4, !tbaa !69
  store i32 %i.ag, ptr %.010.i.i.i, align 4, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i.i.i, !llvm.loop !3237

bb.g:                                             ; preds = %.lr.ph.i31
  %i.ak = load i32, ptr %.03963.i, align 4, !tbaa !69
  %i.al = load i32, ptr %.065.i, align 4, !tbaa !69
  %.not50.i = icmp slt i32 %i.ak, %i.al
  br i1 %.not50.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.03564.i, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %.065.i, i64 4
  %i.ao = load i32, ptr %.03766.i, align 4, !tbaa !69
  %i.ap = load i32, ptr %.04167.i, align 4, !tbaa !69
  store i32 %i.ap, ptr %.03766.i, align 4, !tbaa !69
  %i.aq = load i32, ptr %.065.i, align 4, !tbaa !69
  store i32 %i.aq, ptr %.04167.i, align 4, !tbaa !69
  %i.ar = load i32, ptr %.03564.i, align 4, !tbaa !69
  store i32 %i.ar, ptr %.065.i, align 4, !tbaa !69
  store i32 %i.ao, ptr %.03564.i, align 4, !tbaa !69
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.03963.i, i64 4
  %i.at = load i32, ptr %.03766.i, align 4, !tbaa !69
  %i.au = load i32, ptr %.04167.i, align 4, !tbaa !69
  store i32 %i.au, ptr %.03766.i, align 4, !tbaa !69
  %i.av = load i32, ptr %.03963.i, align 4, !tbaa !69
  store i32 %i.av, ptr %.04167.i, align 4, !tbaa !69
  store i32 %i.at, ptr %.03963.i, align 4, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.140.i = phi ptr [ %.03963.i, %bb.h ], [ %i.as, %bb.i ] ; 2 uses
  %.136.i = phi ptr [ %i.am, %bb.h ], [ %.03564.i, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.an, %bb.h ], [ %.065.i, %bb.i ] ; 2 uses
  %.037.i = getelementptr inbounds nuw i8, ptr %.03766.i, i64 4 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04167.i, i64 4 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !3238

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.ax = load i32, ptr %i.l, align 4, !tbaa !69
  %i.ay = load i32, ptr %.0.lcssa.i, align 4, !tbaa !69
  store i32 %i.ay, ptr %i.l, align 4, !tbaa !69
  %i.az = load i32, ptr %i.d, align 4, !tbaa !69
  store i32 %i.az, ptr %.0.lcssa.i, align 4, !tbaa !69
  store i32 %i.ax, ptr %i.d, align 4, !tbaa !69
  %.03050.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %.03451.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %i.ba = icmp eq ptr %.03451.i, %1
  br i1 %i.ba, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar247 = phi i64 [ %indvar.next248, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03455.i = phi ptr [ %.034.i, %bb.m ], [ %.03451.i, %bb.l ] ; 8 uses
  %.03054.i = phi ptr [ %.030.i, %bb.m ], [ %.03050.i, %bb.l ] ; 3 uses
  %.053.i = phi ptr [ %.1.i35, %bb.m ], [ %i.aw, %bb.l ] ; 6 uses
  %.03252.i = phi ptr [ %.133.i, %bb.m ], [ %i.l, %bb.l ] ; 11 uses
  %i.bb = icmp eq ptr %.053.i, %3
  br i1 %i.bb, label %.lr.ph.i.i.i40.preheader, label %bb.m

.lr.ph.i.i.i40.preheader:                         ; preds = %.lr.ph.i34
  %i.bc = add i64 %i.a, -8
  %15 = sub i64 %i.bc, %i.i
  %16 = lshr i64 %15, 2
  %17 = add nuw nsw i64 %16, 1
  %18 = mul i64 %indvar247, 4611686018427387903
  %i.bd = add i64 %18, %17                        ; 3 uses
  %min.iters.check257 = icmp ult i64 %i.bd, 24
  br i1 %min.iters.check257, label %.lr.ph.i.i.i40.preheader294, label %vector.memcheck246

vector.memcheck246:                               ; preds = %.lr.ph.i.i.i40.preheader
  %19 = add i64 %i.a, -8
  %20 = sub i64 %19, %i.i
  %21 = and i64 %20, -4                           ; 2 uses
  %i.be = getelementptr i8, ptr %.0.lcssa.i, i64 %21
  %scevgep249 = getelementptr i8, ptr %i.be, i64 8
  %i.bf = add i64 %21, 4
  %i.bg = shl i64 %indvar247, 2
  %i.bh = sub i64 %i.bf, %i.bg
  %scevgep252 = getelementptr i8, ptr %.03252.i, i64 %i.bh
  %bound0253 = icmp ult ptr %.03455.i, %scevgep252
  %bound1254 = icmp ult ptr %.03252.i, %scevgep249
  %found.conflict255 = and i1 %bound0253, %bound1254
  br i1 %found.conflict255, label %.lr.ph.i.i.i40.preheader294, label %vector.ph258

vector.ph258:                                     ; preds = %vector.memcheck246
  %n.vec259 = and i64 %i.bd, -8                   ; 3 uses
  %i.bi = shl i64 %n.vec259, 2                    ; 2 uses
  %i.bj = getelementptr i8, ptr %.03252.i, i64 %i.bi ; 2 uses
  %i.bk = getelementptr i8, ptr %.03455.i, i64 %i.bi
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph258
  %index261 = phi i64 [ 0, %vector.ph258 ], [ %index.next268, %vector.body260 ] ; 2 uses
  %i.bl = shl i64 %index261, 2                    ; 2 uses
  %next.gep262 = getelementptr i8, ptr %.03252.i, i64 %i.bl ; 3 uses
  %next.gep263 = getelementptr i8, ptr %.03455.i, i64 %i.bl ; 3 uses
  %i.bm = getelementptr i8, ptr %next.gep263, i64 16 ; 2 uses
  %wide.load264 = load <4 x i32>, ptr %next.gep263, align 4, !tbaa !69, !alias.scope !3239, !noalias !3242
  %wide.load265 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !69, !alias.scope !3239, !noalias !3242
  %i.bn = getelementptr i8, ptr %next.gep262, i64 16 ; 2 uses
  %wide.load266 = load <4 x i32>, ptr %next.gep262, align 4, !tbaa !69, !alias.scope !3242
  %wide.load267 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !69, !alias.scope !3242
  store <4 x i32> %wide.load266, ptr %next.gep263, align 4, !tbaa !69, !alias.scope !3239, !noalias !3242
  store <4 x i32> %wide.load267, ptr %i.bm, align 4, !tbaa !69, !alias.scope !3239, !noalias !3242
  store <4 x i32> %wide.load264, ptr %next.gep262, align 4, !tbaa !69, !alias.scope !3242
  store <4 x i32> %wide.load265, ptr %i.bn, align 4, !tbaa !69, !alias.scope !3242
  %index.next268 = add nuw i64 %index261, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next268, %n.vec259
  br i1 %i.bo, label %middle.block269, label %vector.body260, !llvm.loop !3244

middle.block269:                                  ; preds = %vector.body260
  %cmp.n270 = icmp eq i64 %i.bd, %n.vec259
  br i1 %cmp.n270, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i.i.i40.preheader294

.lr.ph.i.i.i40.preheader294:                      ; preds = %vector.memcheck246, %.lr.ph.i.i.i40.preheader, %middle.block269
  %.010.i.i.i41.ph = phi ptr [ %.03252.i, %vector.memcheck246 ], [ %.03252.i, %.lr.ph.i.i.i40.preheader ], [ %i.bj, %middle.block269 ]
  %.079.i.i.i42.ph = phi ptr [ %.03455.i, %vector.memcheck246 ], [ %.03455.i, %.lr.ph.i.i.i40.preheader ], [ %i.bk, %middle.block269 ]
  br label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %.lr.ph.i.i.i40.preheader294, %.lr.ph.i.i.i40
  %.010.i.i.i41 = phi ptr [ %i.bs, %.lr.ph.i.i.i40 ], [ %.010.i.i.i41.ph, %.lr.ph.i.i.i40.preheader294 ] ; 3 uses
  %.079.i.i.i42 = phi ptr [ %i.br, %.lr.ph.i.i.i40 ], [ %.079.i.i.i42.ph, %.lr.ph.i.i.i40.preheader294 ] ; 3 uses
  %i.bp = load i32, ptr %.079.i.i.i42, align 4, !tbaa !69
  %i.bq = load i32, ptr %.010.i.i.i41, align 4, !tbaa !69
  store i32 %i.bq, ptr %.079.i.i.i42, align 4, !tbaa !69
  store i32 %i.bp, ptr %.010.i.i.i41, align 4, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %.079.i.i.i42, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.010.i.i.i41, i64 4 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.br, %1
  br i1 %.not.i.i.i43, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i.i.i40, !llvm.loop !3245

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bt = load i32, ptr %.03252.i, align 4, !tbaa !69
  %i.bu = load i32, ptr %.053.i, align 4, !tbaa !69
  %.not42.i = icmp slt i32 %i.bt, %i.bu           ; 3 uses
  %i.bv = load i32, ptr %.03054.i, align 4, !tbaa !69
  %i.bw = load i32, ptr %.03455.i, align 4, !tbaa !69
  store i32 %i.bw, ptr %.03054.i, align 4, !tbaa !69
  %.03252.sink71.i = select i1 %.not42.i, ptr %.03252.i, ptr %.053.i ; 2 uses
  %.133.idx.i = select i1 %.not42.i, i64 4, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03252.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not42.i, i64 0, i64 4
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.053.i, i64 %.1.idx.i ; 2 uses
  %i.bx = load i32, ptr %.03252.sink71.i, align 4, !tbaa !69
  store i32 %i.bx, ptr %.03455.i, align 4, !tbaa !69
  store i32 %i.bv, ptr %.03252.sink71.i, align 4, !tbaa !69
  %.030.i = getelementptr inbounds nuw i8, ptr %.03054.i, i64 4 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03455.i, i64 4 ; 2 uses
  %i.by = icmp eq ptr %.034.i, %1
  %indvar.next248 = add i64 %indvar247, 1
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !3246

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i.i, %bb.m, %.lr.ph.i.i.i40, %middle.block, %middle.block269, %bb.a
  %.077 = phi ptr [ %.03564.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ], [ %.03564.i, %middle.block ], [ %.053.i, %middle.block269 ], [ %.1.i35, %bb.m ], [ %.053.i, %.lr.ph.i.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.075 = phi ptr [ %.03963.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ], [ %.03963.i, %middle.block ], [ %.03252.i, %middle.block269 ], [ %.133.i, %bb.m ], [ %.03252.i, %.lr.ph.i.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.074 = phi ptr [ %.065.i, %.lr.ph.i.i.i ], [ %4, %bb.a ], [ %.065.i, %middle.block ], [ %4, %middle.block269 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i.i40 ], [ %.1.i, %bb.j ]
  %.028 = phi ptr [ %1, %.lr.ph.i.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block269 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %i.c, %bb.a ], [ %i.aa, %middle.block ], [ %i.bj, %middle.block269 ], [ %.030.i, %bb.m ], [ %i.bs, %.lr.ph.i.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit
  %.0105 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %.03760.i, %bb.f ] ; 5 uses
  %.028104 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.074103 = phi ptr [ %.074, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.n, %bb.f ]
  %.075102 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.l, %bb.f ] ; 3 uses
  %.077101 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.not.i44 = icmp eq ptr %.077101, %3
  %.not36.i = icmp eq ptr %.0105, %.075102
  %or.cond.i45 = select i1 %.not.i44, i1 true, i1 %.not36.i
  br i1 %or.cond.i45, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ]
  %.028.ph.i = phi ptr [ %i.cf, %bb.o ], [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.074103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i46 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.cb, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.cc, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.bz = load i32, ptr %.028.ph.i, align 4, !tbaa !69 ; 2 uses
  %i.ca = load i32, ptr %.025.i, align 4, !tbaa !69 ; 2 uses
  %.not42.i47 = icmp slt i32 %i.bz, %i.ca
  br i1 %.not42.i47, label %bb.o, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.025.i, i64 4
  %i.cd = load i32, ptr %.030.i46, align 4, !tbaa !69
  store i32 %i.ca, ptr %.030.i46, align 4, !tbaa !69
  %i.ce = load i32, ptr %.026.i, align 4, !tbaa !69
  store i32 %i.ce, ptr %.025.i, align 4, !tbaa !69
  store i32 %i.cd, ptr %.026.i, align 4, !tbaa !69
  %.not44.i = icmp eq ptr %i.cb, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 4 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %bb.n, !llvm.loop !3247

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4 ; 3 uses
  %i.cg = load i32, ptr %.030.i46, align 4, !tbaa !69
  store i32 %i.bz, ptr %.030.i46, align 4, !tbaa !69
  store i32 %i.cg, ptr %.028.ph.i, align 4, !tbaa !69
  %.not43.i = icmp eq ptr %i.cf, %.0105
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 4 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.outer.i, !llvm.loop !3247

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit
  %.091 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %.03050.i, %bb.l ] ; 5 uses
  %.02889 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07588 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.l, %bb.l ] ; 3 uses
  %.07787 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.aw, %bb.l ] ; 3 uses
  %.not.i50 = icmp eq ptr %.07787, %3
  %.not36.i51 = icmp eq ptr %.091, %.07588
  %or.cond.i52 = select i1 %.not.i50, i1 true, i1 %.not36.i51
  br i1 %or.cond.i52, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.cj, %bb.q ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.cn, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.cj, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.cl, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.ch = load i32, ptr %.021.i.ph, align 4, !tbaa !69 ; 2 uses
  %i.ci = load i32, ptr %.0.i, align 4, !tbaa !69 ; 2 uses
  %.not37.i = icmp slt i32 %i.ch, %i.ci
  %i.cj = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  %i.ck = load i32, ptr %.024.i, align 4, !tbaa !69 ; 2 uses
  br i1 %.not37.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 3 uses
  store i32 %i.ci, ptr %.024.i, align 4, !tbaa !69
  store i32 %i.ck, ptr %.0.i, align 4, !tbaa !69
  %i.cm = icmp eq ptr %i.cl, %3
  br i1 %i.cm, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.preheader.i, !llvm.loop !3248

bb.q:                                             ; preds = %.preheader.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.ch, ptr %.024.i, align 4, !tbaa !69
  store i32 %i.ck, ptr %.021.i.ph, align 4, !tbaa !69
  %i.co = icmp eq ptr %i.cn, %.091
  br i1 %i.co, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !3248

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95
  %.090 = phi ptr [ %.0105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ], [ %.0105, %.split.i ], [ %.091, %bb.p ], [ %.091, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.091, %bb.q ], [ %.0105, %bb.o ]
  %.178 = phi ptr [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ], [ %i.cb, %.split.i ], [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.cl, %bb.p ], [ %.026.i, %bb.o ]
  %.176 = phi ptr [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ], [ %.028.ph.i, %.split.i ], [ %i.cn, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.cf, %bb.o ]
  %i.cp = phi ptr [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread95 ], [ %.13137.i, %.split.i ], [ %i.cj, %bb.p ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.cj, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.176, ptr %5, align 8, !tbaa !75
  store ptr %.090, ptr %6, align 8, !tbaa !75
  store ptr %.178, ptr %2, align 8, !tbaa !75
  ret ptr %i.cp
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_SD_PbT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !3019, !range !3030, !noundef !1789
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = icmp eq ptr %1, %2                       ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_SD_PbT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_SD_PbT0_.exit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds i8, ptr %1, i64 -4
  %i.e = load i32, ptr %1, align 4, !tbaa !69
  %i.f = load i32, ptr %i.d, align 4, !tbaa !69
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %.lr.ph.i.preheader.i, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_SD_PbT0_.exit.sink.split

.lr.ph.i.preheader.i:                             ; preds = %bb.d
  %i.h = ptrtoint ptr %2 to i64
  %.pre43 = load i32, ptr %0, align 4, !tbaa !69
  br label %.lr.ph.i.i

end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvbT_NS0_9iter_sizeISF_E4typeESI_SI_RT1_T0_:bb.a
  %i.aa = icmp ult i64 %.036.i.i.i.i.i, %i.p
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !2846

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = or disjoint i64 %.036.in.i.i.i.i.i, 1
  %i.ac = icmp eq i64 %.036.i.i.i.i.i, %i.p
  br i1 %i.ac, label %.thread.i.i.i.i, label %bb.e

._crit_edge.i.i.thread.i.i.i:                     ; preds = %.lr.ph.i.i.i.i
  %i.ad = icmp eq i64 %i.p, 2
  br i1 %i.ad, label %.thread.i.i.i.i, label %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.thread.i.i.i

_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.thread.i.i.i: ; preds = %._crit_edge.i.i.thread.i.i.i
  store i32 %i.n, ptr %1, align 4, !tbaa !69
  br label %_ZN5boost7movelib15detail_adaptive13unstable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit

.thread.i.i.i.i:                                  ; preds = %._crit_edge.i.i.thread.i.i.i, %._crit_edge.i.i.i.i.i
  %.036.in.lcssa.i.i9.i.i.i = phi i64 [ 1, %._crit_edge.i.i.thread.i.i.i ], [ %i.ab, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.037.lcssa.i.i8.i.i.i = phi i64 [ 0, %._crit_edge.i.i.thread.i.i.i ], [ %spec.select.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.036.in.lcssa.i.i9.i.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !69
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.037.lcssa.i.i8.i.i.i
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !69
  br label %.lr.ph52.i.i.i.i.i.preheader

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.not.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.i.i.i, label %.lr.ph52.i.i.i.i.i.preheader

.lr.ph52.i.i.i.i.i.preheader:                     ; preds = %bb.e, %.thread.i.i.i.i
  %.249.i.i.i.i.i.ph = phi i64 [ %spec.select.i.i.i.i.i, %bb.e ], [ %.036.in.lcssa.i.i9.i.i.i, %.thread.i.i.i.i ]
  br label %.lr.ph52.i.i.i.i.i

.lr.ph52.i.i.i.i.i:                               ; preds = %.lr.ph52.i.i.i.i.i.preheader, %bb.f
  %.249.i.i.i.i.i = phi i64 [ %.050.i.i.i.i.i, %bb.f ], [ %.249.i.i.i.i.i.ph, %.lr.ph52.i.i.i.i.i.preheader ] ; 3 uses
  %.050.in.i.i.i.i.i = add i64 %.249.i.i.i.i.i, -1
  %.050.i.i.i.i.i = lshr i64 %.050.in.i.i.i.i.i, 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.050.i.i.i.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !69 ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.n
  br i1 %i.aj, label %bb.f, label %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph52.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.249.i.i.i.i.i
  store i32 %i.ai, ptr %i.ak, align 4, !tbaa !69
  %.not10.i.i.i.i = icmp eq i64 %.050.i.i.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.i.i.i, label %.lr.ph52.i.i.i.i.i, !llvm.loop !2847

_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.i.i.i: ; preds = %bb.f, %.lr.ph52.i.i.i.i.i, %bb.e
  %.2.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.249.i.i.i.i.i, %.lr.ph52.i.i.i.i.i ], [ 0, %bb.f ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.2.lcssa.i.i.i.i.i
  store i32 %i.n, ptr %i.al, align 4, !tbaa !69
  %i.am = icmp ugt i64 %i.p, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i, label %_ZN5boost7movelib15detail_adaptive13unstable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit, !llvm.loop !2848

_ZN5boost7movelib15detail_adaptive13unstable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit: ; preds = %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.i.i.i, %_ZN5boost7movelib15detail_adaptive11stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit, %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.thread.i.i.i
  call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_SF_T0_RT1_(ptr noundef %1, ptr noundef %i.k, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.n

bb.g:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit
  %i.an = add i64 %3, %2                          ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.an ; 5 uses
  %i.ap = lshr i64 %i.an, 1
  %i.aq = sub i64 %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !2567
  %.not.i52 = icmp ult i64 %i.as, %i.aq
  br i1 %.not.i52, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %5, align 8, !tbaa !2564
  tail call void @_ZN5boost7movelib10merge_sortIPiS2_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_T1_T0_(ptr noundef %1, ptr noundef %i.ao, ptr noundef %i.at)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit53

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SD_T0_(ptr noundef %1, ptr noundef %i.ao)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit53

_ZN5boost7movelib15detail_adaptive11stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit53: ; preds = %bb.h, %bb.i
  %i.au = load i64, ptr %i.ar, align 8, !tbaa !2567 ; 2 uses
  %.not = icmp ult i64 %i.au, %i.an
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5boost7movelib15detail_adaptive11stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit53
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %4
  tail call void @_ZN5boost7movelib17op_buffered_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_13adaptive_xbufIiS2_mEEEEvT_SF_SF_T0_T1_RT2_(ptr noundef %1, ptr noundef %i.ao, ptr noundef %i.av, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.n

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive11stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit53
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %3)
  %.not50 = icmp ult i64 %i.au, %.sroa.speculated
  br i1 %.not50, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %4 ; 2 uses
  tail call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_SF_T0_RT1_(ptr noundef %i.aw, ptr noundef nonnull %i.ao, ptr noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %5)
  tail call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_SF_T0_RT1_(ptr noundef %1, ptr noundef %i.aw, ptr noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %4
  tail call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_SF_T0_RT1_(ptr noundef %1, ptr noundef nonnull %i.ao, ptr noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m, %bb.l, %_ZN5boost7movelib15detail_adaptive13unstable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPiS2_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_EEvT0_SC_T1_T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 4, !tbaa !69
  store i32 %i.g, ptr %2, align 4, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not2242.i = icmp eq ptr %i.h, %1
  br i1 %.not2242.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_EEvT0_SC_T1_T_.exit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.c, %bb.g
  %i.i = phi ptr [ %i.q, %bb.g ], [ %i.h, %bb.c ] ; 4 uses
  %.03443.i = phi ptr [ %storemerge44.i, %bb.g ], [ %2, %bb.c ] ; 4 uses
  %storemerge44.i = getelementptr inbounds nuw i8, ptr %.03443.i, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !69   ; 2 uses
  %i.k = load i32, ptr %.03443.i, align 4, !tbaa !69 ; 2 uses
  %i.l = icmp slt i32 %i.j, %i.k
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph45.i
  store i32 %i.k, ptr %storemerge44.i, align 4, !tbaa !69
  %.not2436.i = icmp eq ptr %.03443.i, %2
  br i1 %.not2436.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %storemerge2338.i = phi ptr [ %storemerge23.i, %bb.e ], [ %.03443.i, %bb.d ] ; 3 uses
  %storemerge23.i = getelementptr i8, ptr %storemerge2338.i, i64 -4 ; 3 uses
  %i.m = load i32, ptr %i.i, align 4, !tbaa !69
  %i.n = load i32, ptr %storemerge23.i, align 4, !tbaa !69 ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  store i32 %i.n, ptr %storemerge2338.i, align 4, !tbaa !69
  %.not24.i = icmp eq ptr %storemerge23.i, %2
  br i1 %.not24.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !3388

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i, %bb.d
  %storemerge23.lcssa.i = phi ptr [ %2, %bb.d ], [ %storemerge2338.i, %.lr.ph.i ], [ %2, %bb.e ]
  %i.p = load i32, ptr %i.i, align 4, !tbaa !69
  store i32 %i.p, ptr %storemerge23.lcssa.i, align 4, !tbaa !69
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph45.i
  store i32 %i.j, ptr %storemerge44.i, align 4, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %.not22.i = icmp eq ptr %i.q, %1
  br i1 %.not22.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_EEvT0_SC_T1_T_.exit, label %.lr.ph45.i, !llvm.loop !3389

bb.h:                                             ; preds = %bb.a
  %i.r = lshr i64 %i.e, 1                         ; 5 uses
  %.idx = shl nuw nsw i64 %i.r, 2                 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 11 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPiS2_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_T0_T1_(ptr noundef %i.s, ptr noundef %1, ptr noundef %i.t)
  tail call void @_ZN5boost7movelib15merge_sort_copyIPiS2_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_T0_T1_(ptr noundef %0, ptr noundef %i.s, ptr noundef %i.s)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %i.d ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %._crit_edge.i, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.h, %bb.i
  %indvar = phi i64 [ %indvar.next, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %.047.i = phi ptr [ %.2.i, %bb.i ], [ %i.s, %bb.h ] ; 8 uses
  %.02446.i = phi ptr [ %.125.i, %bb.i ], [ %i.t, %bb.h ] ; 3 uses
  %.03645.i = phi ptr [ %i.bh, %bb.i ], [ %2, %bb.h ] ; 7 uses
  %i.w = icmp eq ptr %.02446.i, %i.v
  br i1 %i.w, label %.preheader.i, label %bb.i

.preheader.i:                                     ; preds = %.lr.ph.i32
  %.047.i79.le = ptrtoaddr ptr %.047.i to i64
  %.not49.i = icmp eq ptr %.03645.i, %i.t
  br i1 %.not49.i, label %._crit_edge53.i, label %.lr.ph52.i.preheader

.lr.ph52.i.preheader:                             ; preds = %.preheader.i
  %i.x = add nsw i64 %.idx, -4
  %3 = lshr exact i64 %i.x, 2
  %4 = add nuw nsw i64 %3, 1
  %5 = mul i64 %indvar, 4611686018427387903
  %i.y = add i64 %5, %4                           ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 20
  br i1 %min.iters.check, label %.lr.ph52.i.preheader130, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph52.i.preheader
  %i.z = shl nuw i64 %indvar, 2
  %i.aa = add i64 %i.z, %i.a
  %i.ab = sub i64 %.047.i79.le, %i.aa
  %diff.check = icmp ugt i64 %i.ab, -32
  br i1 %diff.check, label %.lr.ph52.i.preheader130, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, -8                       ; 3 uses
  %i.ac = shl i64 %n.vec, 2                       ; 2 uses
  %i.ad = getelementptr i8, ptr %.047.i, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %.03645.i, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.047.i, i64 %i.af ; 2 uses
  %next.gep80 = getelementptr i8, ptr %.03645.i, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !69
  %wide.load81 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !69
  %i.ah = getelementptr i8, ptr %next.gep80, i64 16
  store <4 x i32> %wide.load, ptr %next.gep80, align 4, !tbaa !69
  store <4 x i32> %wide.load81, ptr %i.ah, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !3390

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %._crit_edge53.i, label %.lr.ph52.i.preheader130

.lr.ph52.i.preheader130:                          ; preds = %vector.memcheck, %.lr.ph52.i.preheader, %middle.block
  %.151.i.ph = phi ptr [ %.047.i, %vector.memcheck ], [ %.047.i, %.lr.ph52.i.preheader ], [ %i.ad, %middle.block ]
  %.13750.i.ph = phi ptr [ %.03645.i, %vector.memcheck ], [ %.03645.i, %.lr.ph52.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader130, %.lr.ph52.i
  %.151.i = phi ptr [ %i.al, %.lr.ph52.i ], [ %.151.i.ph, %.lr.ph52.i.preheader130 ] ; 2 uses
  %.13750.i = phi ptr [ %i.ak, %.lr.ph52.i ], [ %.13750.i.ph, %.lr.ph52.i.preheader130 ] ; 2 uses
  %i.aj = load i32, ptr %.151.i, align 4, !tbaa !69
  store i32 %i.aj, ptr %.13750.i, align 4, !tbaa !69
  %i.ak = getelementptr inbounds nuw i8, ptr %.13750.i, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.151.i, i64 4 ; 2 uses
  %.not.i33 = icmp eq ptr %i.ak, %i.t
  br i1 %.not.i33, label %._crit_edge53.i, label %.lr.ph52.i, !llvm.loop !3391

._crit_edge53.i:                                  ; preds = %.lr.ph52.i, %middle.block, %.preheader.i
  %.1.lcssa.i = phi ptr [ %.047.i, %.preheader.i ], [ %i.ad, %middle.block ], [ %i.al, %.lr.ph52.i ] ; 6 uses
  %.1.lcssa.i84 = ptrtoaddr ptr %.1.lcssa.i to i64 ; 2 uses
  %.not8.i.i = icmp eq ptr %.1.lcssa.i, %i.u
  br i1 %.not8.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_EEvT0_SC_T1_T_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge53.i
  %i.am = shl i64 %i.r, 3
  %i.an = add i64 %i.am, %i.c
  %i.ao = add i64 %i.an, -4
  %i.ap = sub i64 %i.ao, %.1.lcssa.i84            ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check87 = icmp ult i64 %i.ap, 60
  br i1 %min.iters.check87, label %.lr.ph.i.i.preheader128, label %vector.memcheck83

vector.memcheck83:                                ; preds = %.lr.ph.i.i.preheader
  %i.as = add i64 %.idx, %i.a
  %i.at = sub i64 %.1.lcssa.i84, %i.as
  %diff.check85 = icmp ugt i64 %i.at, -32
  br i1 %diff.check85, label %.lr.ph.i.i.preheader128, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck83
  %n.vec89 = and i64 %i.ar, 9223372036854775800   ; 3 uses
  %i.au = shl i64 %n.vec89, 2                     ; 2 uses
  %i.av = getelementptr i8, ptr %i.t, i64 %i.au
  %i.aw = getelementptr i8, ptr %.1.lcssa.i, i64 %i.au
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next96, %vector.body90 ] ; 2 uses
  %i.ax = shl i64 %index91, 2                     ; 2 uses
  %next.gep92 = getelementptr i8, ptr %i.t, i64 %i.ax ; 2 uses
  %next.gep93 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep93, i64 16
  %wide.load94 = load <4 x i32>, ptr %next.gep93, align 4, !tbaa !69
  %wide.load95 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !69
  %i.az = getelementptr i8, ptr %next.gep92, i64 16
  store <4 x i32> %wide.load94, ptr %next.gep92, align 4, !tbaa !69
  store <4 x i32> %wide.load95, ptr %i.az, align 4, !tbaa !69
  %index.next96 = add nuw i64 %index91, 8         ; 2 uses
  %i.ba = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.ba, label %middle.block97, label %vector.body90, !llvm.loop !3392

middle.block97:                                   ; preds = %vector.body90
  %cmp.n98 = icmp eq i64 %i.ar, %n.vec89
  br i1 %cmp.n98, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_EEvT0_SC_T1_T_.exit, label %.lr.ph.i.i.preheader128

.lr.ph.i.i.preheader128:                          ; preds = %vector.memcheck83, %.lr.ph.i.i.preheader, %middle.block97
  %.010.i.i.ph = phi ptr [ %i.t, %vector.memcheck83 ], [ %i.t, %.lr.ph.i.i.preheader ], [ %i.av, %middle.block97 ]
  %.079.i.i.ph = phi ptr [ %.1.lcssa.i, %vector.memcheck83 ], [ %.1.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.aw, %middle.block97 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader128, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader128 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader128 ] ; 2 uses
  %i.bb = load i32, ptr %.079.i.i, align 4, !tbaa !69
  store i32 %i.bb, ptr %.010.i.i, align 4, !tbaa !69
  %i.bc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.bc, %i.u
  br i1 %.not.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_EEvT0_SC_T1_T_.exit, label %.lr.ph.i.i, !llvm.loop !3393

bb.i:                                             ; preds = %.lr.ph.i32
  %i.be = load i32, ptr %.02446.i, align 4, !tbaa !69 ; 2 uses
  %i.bf = load i32, ptr %.047.i, align 4, !tbaa !69 ; 2 uses
  %i.bg = icmp slt i32 %i.be, %i.bf               ; 2 uses
  %.sink.i = tail call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bf)
  %.125.idx.i = select i1 %i.bg, i64 4, i64 0
  %.125.i = getelementptr inbounds nuw i8, ptr %.02446.i, i64 %.125.idx.i ; 2 uses
  %.2.idx.i = select i1 %i.bg, i64 0, i64 4
  %.2.i = getelementptr inbounds nuw i8, ptr %.047.i, i64 %.2.idx.i ; 3 uses
  store i32 %.sink.i, ptr %.03645.i, align 4, !tbaa !69
  %i.bh = getelementptr inbounds nuw i8, ptr %.03645.i, i64 4 ; 2 uses
  %i.bi = icmp ne ptr %.2.i, %i.u
  %i.bj = icmp ne ptr %i.bh, %i.t
  %i.bk = select i1 %i.bi, i1 %i.bj, i1 false
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bk, label %.lr.ph.i32, label %._crit_edge.i, !llvm.loop !3394

._crit_edge.i:                                    ; preds = %bb.i, %bb.h
  %.024.lcssa.i = phi ptr [ %i.t, %bb.h ], [ %.125.i, %bb.i ]
  %.0.lcssa.i = phi ptr [ %i.s, %bb.h ], [ %.2.i, %bb.i ] ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.0.lcssa.i, %i.u
  br i1 %.not23.i.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_EEvT0_SC_T1_T_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i, %bb.j
  %indvar102 = phi i64 [ %indvar.next103, %bb.j ], [ 0, %._crit_edge.i ] ; 2 uses
  %.026.i.i.i = phi ptr [ %.1.i.i.i, %bb.j ], [ %.0.lcssa.i, %._crit_edge.i ] ; 7 uses
  %.01625.i.i.i = phi ptr [ %.117.i.i.i, %bb.j ], [ %.024.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.01824.i.i.i = phi ptr [ %i.cj, %bb.j ], [ %i.t, %._crit_edge.i ] ; 6 uses
  %i.bl = icmp eq ptr %.01625.i.i.i, %i.v
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.preheader, label %bb.j

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i
  %.026.i.i.i104.le = ptrtoaddr ptr %.026.i.i.i to i64 ; 2 uses
  %i.bm = shl i64 %i.r, 3
  %i.bn = add i64 %i.bm, %i.c
  %i.bo = add i64 %i.bn, -4
  %i.bp = sub i64 %i.bo, %.026.i.i.i104.le        ; 2 uses
  %i.bq = lshr i64 %i.bp, 2
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check107 = icmp ult i64 %i.bp, 76
  br i1 %min.iters.check107, label %.lr.ph.i.i.i.i.i.preheader121, label %vector.memcheck101

vector.memcheck101:                               ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bs = add i64 %.idx, %i.a
  %i.bt = shl i64 %indvar102, 2
  %i.bu = add i64 %i.bt, %i.bs
  %i.bv = sub i64 %.026.i.i.i104.le, %i.bu
  %diff.check105 = icmp ugt i64 %i.bv, -32
  br i1 %diff.check105, label %.lr.ph.i.i.i.i.i.preheader121, label %vector.ph108

vector.ph108:                                     ; preds = %vector.memcheck101
  %n.vec109 = and i64 %i.br, 9223372036854775800  ; 3 uses
  %i.bw = shl i64 %n.vec109, 2                    ; 2 uses
  %i.bx = getelementptr i8, ptr %.01824.i.i.i, i64 %i.bw
  %i.by = getelementptr i8, ptr %.026.i.i.i, i64 %i.bw
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph108
  %index111 = phi i64 [ 0, %vector.ph108 ], [ %index.next116, %vector.body110 ] ; 2 uses
  %i.bz = shl i64 %index111, 2                    ; 2 uses
  %next.gep112 = getelementptr i8, ptr %.01824.i.i.i, i64 %i.bz ; 2 uses
  %next.gep113 = getelementptr i8, ptr %.026.i.i.i, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep113, i64 16
  %wide.load114 = load <4 x i32>, ptr %next.gep113, align 4, !tbaa !69
  %wide.load115 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !69
  %i.cb = getelementptr i8, ptr %next.gep112, i64 16
  store <4 x i32> %wide.load114, ptr %next.gep112, align 4, !tbaa !69
  store <4 x i32> %wide.load115, ptr %i.cb, align 4, !tbaa !69
  %index.next116 = add nuw i64 %index111, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next116, %n.vec109
  br i1 %i.cc, label %middle.block117, label %vector.body110, !llvm.loop !3395

middle.block117:                                  ; preds = %vector.body110
  %cmp.n118 = icmp eq i64 %i.br, %n.vec109
  br i1 %cmp.n118, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_EEvT0_SC_T1_T_.exit, label %.lr.ph.i.i.i.i.i.preheader121

.lr.ph.i.i.i.i.i.preheader121:                    ; preds = %vector.memcheck101, %.lr.ph.i.i.i.i.i.preheader, %middle.block117
  %.010.i.i.i.i.i.ph = phi ptr [ %.01824.i.i.i, %vector.memcheck101 ], [ %.01824.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bx, %middle.block117 ]
  %.079.i.i.i.i.i.ph = phi ptr [ %.026.i.i.i, %vector.memcheck101 ], [ %.026.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.by, %middle.block117 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader121, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader121 ] ; 2 uses
  %.079.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.079.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader121 ] ; 2 uses
  %i.cd = load i32, ptr %.079.i.i.i.i.i, align 4, !tbaa !69
  store i32 %i.cd, ptr %.010.i.i.i.i.i, align 4, !tbaa !69
  %i.ce = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i.i, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_EEvT0_SC_T1_T_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3396

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.cg = load i32, ptr %.01625.i.i.i, align 4, !tbaa !69 ; 2 uses
  %i.ch = load i32, ptr %.026.i.i.i, align 4, !tbaa !69 ; 2 uses
  %i.ci = icmp slt i32 %i.cg, %i.ch               ; 2 uses
  %.sink.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.cg, i32 %i.ch)
  %.117.idx.i.i.i = select i1 %i.ci, i64 4, i64 0
  %.117.i.i.i = getelementptr inbounds nuw i8, ptr %.01625.i.i.i, i64 %.117.idx.i.i.i
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_:bb.a
  %.not = icmp eq ptr %i.c, %i.d                  ; 2 uses
  %i.e = icmp eq ptr %i.a, %i.b
  br i1 %i.e, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !2933   ; 4 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !2933   ; 2 uses
  %.not1.i = icmp eq ptr %i.f, %i.g
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !69, !noalias !3847
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.j = phi ptr [ %i.f, %.lr.ph.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !69, !noalias !3847
  %i.m = icmp slt i32 %i.l, %i.i
  br i1 %i.m, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.c, !llvm.loop !3715

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ] ; 5 uses
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = ptrtoint ptr %.lcssa.i to i64            ; 3 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.r ; 10 uses
  store ptr %.lcssa.i, ptr %1, align 8, !tbaa !2933
  %i.t = load ptr, ptr %2, align 8, !tbaa !2933   ; 15 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = load ptr, ptr %4, align 8, !tbaa !2933   ; 3 uses
  %.not.i18 = icmp eq ptr %.lcssa.i, %i.t
  %.not27.i = icmp eq ptr %i.c, %i.v
  %or.cond80 = select i1 %.not.i18, i1 true, i1 %.not27.i ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  br i1 %or.cond80, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %5, align 8, !tbaa !2933, !noalias !3850
  %i.x = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 3 uses
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !69, !noalias !3850
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !69, !noalias !3850
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !69, !noalias !3850
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !69, !noalias !3850
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !69, !noalias !3850
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !69, !noalias !3850
  %.not3548.i = icmp eq ptr %i.z, %i.t
  br i1 %.not3548.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.f, %bb.j
  %i.ae = phi ptr [ %.sink.i, %bb.j ], [ %i.z, %bb.f ] ; 6 uses
  %.sroa.029.051.i = phi ptr [ %.sroa.029.1.i, %bb.j ], [ %i.s, %bb.f ] ; 8 uses
  %.sroa.024.050.i = phi ptr [ %.sroa.024.1.i, %bb.j ], [ %i.x, %bb.f ] ; 5 uses
  %.sroa.020.049.i = phi ptr [ %.sroa.020.1.i, %bb.j ], [ %i.y, %bb.f ] ; 4 uses
  %i.af = phi ptr [ %i.bq, %bb.j ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ag = icmp eq ptr %.sroa.024.050.i, %i.v
  br i1 %i.ag, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i17
  %.sroa.029.051.i242 = ptrtoaddr ptr %.sroa.029.051.i to i64
  %i.ah = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %i.ai = ptrtoaddr ptr %i.t to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 44
  %i.an = sub i64 %.sroa.029.051.i242, %i.ah
  %diff.check = icmp ugt i64 %i.an, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader298, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.am, 9223372036854775800     ; 3 uses
  %i.ao = mul i64 %n.vec, -4                      ; 2 uses
  %i.ap = getelementptr i8, ptr %.sroa.029.051.i, i64 %i.ao ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ae, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.029.051.i, i64 %i.ar ; 2 uses
  %next.gep243 = getelementptr i8, ptr %i.ae, i64 %i.ar ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %next.gep243, i64 -16
  %i.at = getelementptr inbounds i8, ptr %next.gep243, i64 -32
  %wide.load = load <4 x i32>, ptr %i.as, align 4, !tbaa !69, !noalias !3853
  %wide.load244 = load <4 x i32>, ptr %i.at, align 4, !tbaa !69, !noalias !3853
  %i.au = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.av = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.au, align 4, !tbaa !69, !noalias !3853
  store <4 x i32> %wide.load244, ptr %i.av, align 4, !tbaa !69, !noalias !3853
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !3858

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i.i.i.preheader298

.lr.ph.i.i.i.preheader298:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.0.0.i.i.ph = phi ptr [ %.sroa.029.051.i, %.lr.ph.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.ph299 = phi ptr [ %i.ae, %.lr.ph.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader298, %.lr.ph.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %.sroa.0.0.i.i.ph, %.lr.ph.i.i.i.preheader298 ]
  %i.ax = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.ph299, %.lr.ph.i.i.i.preheader298 ]
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !69, !noalias !3853
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -4 ; 3 uses
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !69, !noalias !3853
  %.not.i.i.i = icmp eq ptr %i.ay, %i.t
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3859

bb.g:                                             ; preds = %.lr.ph.i17
  %i.bb = getelementptr inbounds i8, ptr %.sroa.020.049.i, i64 -4 ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %.sroa.029.051.i, i64 -4 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !69, !noalias !3850
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !69, !noalias !3850
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds i8, ptr %.sroa.024.050.i, i64 -4 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 2 uses
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !69, !noalias !3850
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !69, !noalias !3850
  %i.bk = load i32, ptr %i.bb, align 4, !tbaa !69, !noalias !3850
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !69, !noalias !3850
  %i.bl = load i32, ptr %i.bg, align 4, !tbaa !69, !noalias !3850
  store i32 %i.bl, ptr %i.bb, align 4, !tbaa !69, !noalias !3850
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 3 uses
  %i.bn = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !69, !noalias !3850
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !69, !noalias !3850
  %i.bp = load i32, ptr %i.bc, align 4, !tbaa !69, !noalias !3850
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !69, !noalias !3850
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i = phi ptr [ %i.bh, %bb.h ], [ %i.bm, %bb.i ] ; 2 uses
  %i.bq = phi ptr [ %i.bi, %bb.h ], [ %i.bn, %bb.i ] ; 2 uses
  %.sroa.020.1.i = phi ptr [ %i.bb, %bb.h ], [ %.sroa.020.049.i, %bb.i ] ; 2 uses
  %.sroa.024.1.i = phi ptr [ %i.bg, %bb.h ], [ %.sroa.024.050.i, %bb.i ] ; 2 uses
  %.sroa.029.1.i = phi ptr [ %.sroa.029.051.i, %bb.h ], [ %i.bc, %bb.i ] ; 2 uses
  %.not35.i = icmp eq ptr %.sink.i, %i.t
  br i1 %.not35.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i17, !llvm.loop !3860

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i: ; preds = %bb.j, %.lr.ph.i.i.i, %middle.block, %bb.f
  %.sroa.057.1 = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %i.aa, %bb.f ], [ %i.ap, %middle.block ], [ %i.bq, %bb.j ]
  %.sroa.020.045.i = phi ptr [ %.sroa.020.049.i, %.lr.ph.i.i.i ], [ %i.y, %bb.f ], [ %.sroa.020.049.i, %middle.block ], [ %.sroa.020.1.i, %bb.j ]
  %.sroa.024.043.i = phi ptr [ %.sroa.024.050.i, %.lr.ph.i.i.i ], [ %i.x, %bb.f ], [ %.sroa.024.050.i, %middle.block ], [ %.sroa.024.1.i, %bb.j ]
  %.sroa.029.041.i = phi ptr [ %.sroa.029.051.i, %.lr.ph.i.i.i ], [ %i.s, %bb.f ], [ %.sroa.029.051.i, %middle.block ], [ %.sroa.029.1.i, %bb.j ]
  store ptr %.sroa.020.045.i, ptr %5, align 8, !tbaa !2933, !noalias !3850
  %.pre = load ptr, ptr %2, align 8, !tbaa !2933
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  br i1 %or.cond80, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 3 uses
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !69, !noalias !3861
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !69, !noalias !3861
  %i.bv = load i32, ptr %i.br, align 4, !tbaa !69, !noalias !3861
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !69, !noalias !3861
  %i.bw = icmp eq ptr %i.bs, %i.t
  br i1 %i.bw, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.l, %bb.m
  %indvar = phi i64 [ %indvar.next, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.bx = phi ptr [ %i.cy, %bb.m ], [ %i.bs, %bb.l ] ; 5 uses
  %.sroa.022.039.i = phi ptr [ %.sroa.022.1.i, %bb.m ], [ %i.s, %bb.l ] ; 9 uses
  %.sroa.016.038.i = phi ptr [ %.sroa.016.1.i, %bb.m ], [ %i.br, %bb.l ] ; 5 uses
  %i.by = phi ptr [ %i.cz, %bb.m ], [ %i.bt, %bb.l ]
  %i.bz = icmp eq ptr %.sroa.016.038.i, %i.v
  br i1 %i.bz, label %.lr.ph.i.i.i23.preheader, label %bb.m

.lr.ph.i.i.i23.preheader:                         ; preds = %.lr.ph.i19
  %.sroa.022.039.i247.le = ptrtoaddr ptr %.sroa.022.039.i to i64
  %i.ca = add i64 %i.o, -8
  %8 = sub i64 %i.ca, %i.u
  %9 = lshr i64 %8, 2
  %10 = add nuw nsw i64 %9, 1
  %11 = mul i64 %indvar, 4611686018427387903
  %i.cb = add i64 %11, %10                        ; 3 uses
  %min.iters.check250 = icmp ult i64 %i.cb, 24
  br i1 %min.iters.check250, label %.lr.ph.i.i.i23.preheader288, label %vector.memcheck246

vector.memcheck246:                               ; preds = %.lr.ph.i.i.i23.preheader
  %i.cc = shl i64 %indvar, 2
  %i.cd = add i64 %i.cc, %.sroa.022.039.i247.le
  %i.ce = sub i64 %i.o, %i.cd
  %i.cf = add i64 %i.ce, -5
  %diff.check248 = icmp ult i64 %i.cf, 31
  br i1 %diff.check248, label %.lr.ph.i.i.i23.preheader288, label %vector.ph251

vector.ph251:                                     ; preds = %vector.memcheck246
  %n.vec252 = and i64 %i.cb, -8                   ; 3 uses
  %i.cg = mul i64 %n.vec252, -4                   ; 2 uses
  %i.ch = getelementptr i8, ptr %.sroa.022.039.i, i64 %i.cg ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bx, i64 %i.cg
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph251
  %index254 = phi i64 [ 0, %vector.ph251 ], [ %index.next259, %vector.body253 ] ; 2 uses
  %i.cj = mul i64 %index254, -4                   ; 2 uses
  %next.gep255 = getelementptr i8, ptr %.sroa.022.039.i, i64 %i.cj ; 2 uses
  %next.gep256 = getelementptr i8, ptr %i.bx, i64 %i.cj ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %next.gep256, i64 -16
  %i.cl = getelementptr inbounds i8, ptr %next.gep256, i64 -32
  %wide.load257 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !69, !noalias !3864
  %wide.load258 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !69, !noalias !3864
  %i.cm = getelementptr inbounds i8, ptr %next.gep255, i64 -16
  %i.cn = getelementptr inbounds i8, ptr %next.gep255, i64 -32
  store <4 x i32> %wide.load257, ptr %i.cm, align 4, !tbaa !69, !noalias !3864
  store <4 x i32> %wide.load258, ptr %i.cn, align 4, !tbaa !69, !noalias !3864
  %index.next259 = add nuw i64 %index254, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next259, %n.vec252
  br i1 %i.co, label %middle.block260, label %vector.body253, !llvm.loop !3869

middle.block260:                                  ; preds = %vector.body253
  %cmp.n261 = icmp eq i64 %i.cb, %n.vec252
  br i1 %cmp.n261, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i.i.i23.preheader288

.lr.ph.i.i.i23.preheader288:                      ; preds = %vector.memcheck246, %.lr.ph.i.i.i23.preheader, %middle.block260
  %.sroa.0.0.i.i24.ph = phi ptr [ %.sroa.022.039.i, %vector.memcheck246 ], [ %.sroa.022.039.i, %.lr.ph.i.i.i23.preheader ], [ %i.ch, %middle.block260 ]
  %.ph = phi ptr [ %i.bx, %vector.memcheck246 ], [ %i.bx, %.lr.ph.i.i.i23.preheader ], [ %i.ci, %middle.block260 ]
  br label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %.lr.ph.i.i.i23.preheader288, %.lr.ph.i.i.i23
  %.sroa.0.0.i.i24 = phi ptr [ %i.cs, %.lr.ph.i.i.i23 ], [ %.sroa.0.0.i.i24.ph, %.lr.ph.i.i.i23.preheader288 ]
  %i.cp = phi ptr [ %i.cq, %.lr.ph.i.i.i23 ], [ %.ph, %.lr.ph.i.i.i23.preheader288 ]
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -4 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !69, !noalias !3864
  %i.cs = getelementptr inbounds i8, ptr %.sroa.0.0.i.i24, i64 -4 ; 3 uses
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !69, !noalias !3864
  %.not.i.i.i25 = icmp eq ptr %i.cq, %i.t
  br i1 %.not.i.i.i25, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i.i.i23, !llvm.loop !3870

bb.m:                                             ; preds = %.lr.ph.i19
  %i.ct = getelementptr inbounds i8, ptr %.sroa.016.038.i, i64 -4 ; 3 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.022.039.i, i64 -4 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !69, !noalias !3861
  %i.cw = load i32, ptr %i.ct, align 4, !tbaa !69, !noalias !3861
  %i.cx = icmp slt i32 %i.cv, %i.cw               ; 3 uses
  %i.cy = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 4 uses
  %i.cz = getelementptr inbounds i8, ptr %i.by, i64 -4 ; 3 uses
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !69, !noalias !3861
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !69, !noalias !3861
  %.sroa.016.1.i = select i1 %i.cx, ptr %i.ct, ptr %.sroa.016.038.i ; 2 uses
  %.sroa.022.1.i = select i1 %i.cx, ptr %.sroa.022.039.i, ptr %i.cu ; 2 uses
  %.val = load i32, ptr %i.ct, align 4
  %.val83 = load i32, ptr %i.cu, align 4
  %.sink.i20 = select i1 %i.cx, i32 %.val, i32 %.val83
  store i32 %.sink.i20, ptr %i.cy, align 4, !tbaa !69, !noalias !3861
  %i.db = icmp eq ptr %i.cy, %i.t
  %indvar.next = add i64 %indvar, 1
  br i1 %i.db, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i19, !llvm.loop !3871

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit: ; preds = %bb.m, %.lr.ph.i.i.i23, %middle.block260, %bb.k, %bb.l, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, %bb.e
  %i.dc = phi ptr [ %.pre, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ], [ %i.t, %bb.e ], [ %i.t, %middle.block260 ], [ %i.t, %bb.k ], [ %i.t, %bb.l ], [ %i.t, %.lr.ph.i.i.i23 ], [ %i.t, %bb.m ]
  %.sroa.057.0 = phi ptr [ %.sroa.057.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ], [ %i.s, %bb.e ], [ %i.ch, %middle.block260 ], [ %i.s, %bb.k ], [ %i.bt, %bb.l ], [ %i.cs, %.lr.ph.i.i.i23 ], [ %i.cz, %bb.m ]
  %.sroa.063.0 = phi ptr [ %.sroa.024.043.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ], [ %i.c, %bb.e ], [ %.sroa.016.038.i, %middle.block260 ], [ %i.c, %bb.k ], [ %i.br, %bb.l ], [ %.sroa.016.038.i, %.lr.ph.i.i.i23 ], [ %.sroa.016.1.i, %bb.m ]
  %.sroa.073.0 = phi ptr [ %.sroa.029.041.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ], [ %i.s, %bb.e ], [ %.sroa.022.039.i, %middle.block260 ], [ %i.s, %bb.k ], [ %i.s, %bb.l ], [ %.sroa.022.039.i, %.lr.ph.i.i.i23 ], [ %.sroa.022.1.i, %bb.m ]
  store ptr %i.dc, ptr %1, align 8, !tbaa !2933
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit
  %.sroa.063.1 = phi ptr [ %.sroa.063.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %i.c, %bb.a ] ; 5 uses
  %.sroa.069.0 = phi ptr [ %.sroa.057.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %i.b, %bb.a ] ; 4 uses
  %.sroa.073.1 = phi ptr [ %.sroa.073.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.dd = load ptr, ptr %4, align 8, !tbaa !2933  ; 3 uses
  %i.de = load ptr, ptr %1, align 8, !tbaa !2933  ; 4 uses
  %.not.i30 = icmp eq ptr %.sroa.063.1, %i.dd
  %.not17.i = icmp eq ptr %.sroa.069.0, %.sroa.073.1
  %or.cond82 = select i1 %.not.i30, i1 true, i1 %.not17.i ; 2 uses
  br i1 %.not, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %or.cond82, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.df = load ptr, ptr %5, align 8, !tbaa !2933, !noalias !3872
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.p
  %.sroa.037.0 = phi ptr [ %i.de, %bb.p ], [ %i.dm, %.split.i ]
  %.sroa.010.0.ph.i = phi ptr [ %i.df, %bb.p ], [ %i.dg, %.split.i ] ; 2 uses
  %.sroa.013.0.ph.i = phi ptr [ %.sroa.063.1, %bb.p ], [ %i.dl, %.split.i ] ; 2 uses
  %.sroa.017.0.ph.i = phi ptr [ %.sroa.073.1, %bb.p ], [ %.sroa.017.0.i, %.split.i ]
  %i.dg = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i, i64 -4 ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.outer.i
  %.sroa.037.1 = phi ptr [ %.sroa.037.0, %.outer.i ], [ %i.do, %bb.r ] ; 2 uses
  %.sroa.017.0.i = phi ptr [ %.sroa.017.0.ph.i, %.outer.i ], [ %i.dh, %bb.r ] ; 3 uses
  %i.dh = getelementptr inbounds i8, ptr %.sroa.017.0.i, i64 -4 ; 4 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !69, !noalias !3872 ; 2 uses
  %i.dj = load i32, ptr %i.dg, align 4, !tbaa !69, !noalias !3872 ; 2 uses
  %i.dk = icmp slt i32 %i.di, %i.dj
  br i1 %i.dk, label %.split.i, label %bb.r

.split.i:                                         ; preds = %bb.q
  %i.dl = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i, i64 -4 ; 4 uses
  %i.dm = getelementptr inbounds i8, ptr %.sroa.037.1, i64 -4 ; 3 uses
  store i32 %i.dj, ptr %i.dm, align 4, !tbaa !69, !noalias !3872
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !69, !noalias !3872
  store i32 %i.dn, ptr %i.dg, align 4, !tbaa !69, !noalias !3872
  %.not27.i29 = icmp eq ptr %i.dl, %i.dd
  br i1 %.not27.i29, label %.loopexit.i28, label %.outer.i, !llvm.loop !3088

bb.r:                                             ; preds = %bb.q
  %i.do = getelementptr inbounds i8, ptr %.sroa.037.1, i64 -4 ; 3 uses
  store i32 %i.di, ptr %i.do, align 4, !tbaa !69, !noalias !3872
  %.not26.i = icmp eq ptr %i.dh, %.sroa.069.0
  br i1 %.not26.i, label %.loopexit.i28, label %bb.q, !llvm.loop !3088

.loopexit.i28:                                    ; preds = %.split.i, %bb.r
  %.sroa.037.2 = phi ptr [ %i.do, %bb.r ], [ %i.dm, %.split.i ]
  %.sroa.017.124.i = phi ptr [ %i.dh, %bb.r ], [ %.sroa.017.0.i, %.split.i ]
  %.sroa.013.123.i = phi ptr [ %.sroa.013.0.ph.i, %bb.r ], [ %i.dl, %.split.i ]
  %.sroa.010.122.i = phi ptr [ %.sroa.010.0.ph.i, %bb.r ], [ %i.dg, %.split.i ]
  store ptr %.sroa.010.122.i, ptr %5, align 8, !tbaa !2933, !noalias !3872
  br label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit

bb.s:                                             ; preds = %bb.n
  br i1 %or.cond82, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.s, %bb.t
  %.sroa.0.0.ph = phi ptr [ %i.du, %bb.t ], [ %i.de, %bb.s ]
  %.sroa.07.0.i.ph = phi ptr [ %i.dv, %bb.t ], [ %.sroa.063.1, %bb.s ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.t ], [ %.sroa.073.1, %bb.s ]
  %i.dp = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.u
  %.sroa.0.0 = phi ptr [ %i.du, %bb.u ], [ %.sroa.0.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.dq, %bb.u ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 4 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !69, !noalias !3875 ; 2 uses
  %i.ds = load i32, ptr %i.dp, align 4, !tbaa !69, !noalias !3875 ; 2 uses
  %i.dt = icmp slt i32 %i.dr, %i.ds
  %i.du = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -4 ; 6 uses
  br i1 %i.dt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.preheader.i
  %i.dv = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 3 uses
  store i32 %i.ds, ptr %i.du, align 4, !tbaa !69, !noalias !3875
  %i.dw = icmp eq ptr %i.dv, %i.dd
  br i1 %i.dw, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !3098

bb.u:                                             ; preds = %.preheader.i
  store i32 %i.dr, ptr %i.du, align 4, !tbaa !69, !noalias !3875
  %i.dx = icmp eq ptr %i.dq, %.sroa.069.0
  br i1 %i.dx, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %.preheader.i, !llvm.loop !3098

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit: ; preds = %bb.u, %bb.t, %bb.s, %.loopexit.i28, %bb.o
  %.sroa.044.0 = phi ptr [ %.sroa.037.2, %.loopexit.i28 ], [ %i.de, %bb.o ], [ %i.de, %bb.s ], [ %i.du, %bb.t ], [ %i.du, %bb.u ]
  %.sroa.063.2 = phi ptr [ %.sroa.013.123.i, %.loopexit.i28 ], [ %.sroa.063.1, %bb.o ], [ %.sroa.063.1, %bb.s ], [ %.sroa.07.0.i.ph, %bb.u ], [ %i.dv, %bb.t ]
  %.sroa.073.2 = phi ptr [ %.sroa.017.124.i, %.loopexit.i28 ], [ %.sroa.073.1, %bb.o ], [ %.sroa.073.1, %bb.s ], [ %i.dq, %bb.u ], [ %.sroa.012.0.i, %bb.t ]
  store ptr %.sroa.044.0, ptr %1, align 8, !tbaa !2933
  store ptr %.sroa.073.2, ptr %6, align 8, !tbaa !2933
  store ptr %.sroa.069.0, ptr %7, align 8, !tbaa !2933
  store ptr %.sroa.063.2, ptr %3, align 8, !tbaa !2933
  %i.dy = load ptr, ptr %1, align 8, !tbaa !2933
  store ptr %i.dy, ptr %0, align 8, !tbaa !2933
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef align 8 dead_on_return %8) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !2933   ; 3 uses
  %i.b = load ptr, ptr %7, align 8, !tbaa !2933   ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !2933   ; 7 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !2933   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d                  ; 2 uses
  %i.e = icmp eq ptr %i.a, %i.b
  br i1 %i.e, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !2933   ; 4 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !2933   ; 2 uses
  %.not2.i = icmp eq ptr %i.f, %i.g
  br i1 %.not2.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !69, !noalias !3878
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.j = phi ptr [ %i.f, %.lr.ph.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !69, !noalias !3878
  %.not1.i = icmp slt i32 %i.i, %i.l
  br i1 %.not1.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %bb.c, !llvm.loop !3881

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ] ; 5 uses
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = ptrtoint ptr %.lcssa.i to i64            ; 3 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.q ; 10 uses
  store ptr %.lcssa.i, ptr %1, align 8, !tbaa !2933
  %i.s = load ptr, ptr %2, align 8, !tbaa !2933   ; 15 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = load ptr, ptr %4, align 8, !tbaa !2933   ; 3 uses
  %.not.i9 = icmp eq ptr %.lcssa.i, %i.s
  %.not27.i = icmp eq ptr %i.c, %i.u
  %or.cond77 = select i1 %.not.i9, i1 true, i1 %.not27.i ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  br i1 %or.cond77, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %5, align 8, !tbaa !2933, !noalias !3882
  %i.w = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 3 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !69, !noalias !3882
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !69, !noalias !3882
  %i.ab = load i32, ptr %i.x, align 4, !tbaa !69, !noalias !3882
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !69, !noalias !3882
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !69, !noalias !3882
  store i32 %i.ac, ptr %i.x, align 4, !tbaa !69, !noalias !3882
  %.not3549.i = icmp eq ptr %i.y, %i.s
  br i1 %.not3549.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.f, %bb.j
  %i.ad = phi ptr [ %.sink.i, %bb.j ], [ %i.y, %bb.f ] ; 6 uses
  %.sroa.029.052.i = phi ptr [ %.sroa.029.1.i, %bb.j ], [ %i.r, %bb.f ] ; 8 uses
  %.sroa.024.051.i = phi ptr [ %.sroa.024.1.i, %bb.j ], [ %i.w, %bb.f ] ; 5 uses
  %.sroa.020.050.i = phi ptr [ %.sroa.020.1.i, %bb.j ], [ %i.x, %bb.f ] ; 4 uses
  %i.ae = phi ptr [ %i.bo, %bb.j ], [ %i.z, %bb.f ] ; 2 uses
  %i.af = icmp eq ptr %.sroa.024.051.i, %i.u
  br i1 %i.af, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i8
  %.sroa.029.052.i239 = ptrtoaddr ptr %.sroa.029.052.i to i64
  %i.ag = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %i.ah = ptrtoaddr ptr %i.s to i64
  %i.ai = add i64 %i.ag, -4
  %i.aj = sub i64 %i.ai, %i.ah                    ; 2 uses
  %i.ak = lshr i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 44
  %i.am = sub i64 %.sroa.029.052.i239, %i.ag
  %diff.check = icmp ugt i64 %i.am, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader295, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.al, 9223372036854775800     ; 3 uses
  %i.an = mul i64 %n.vec, -4                      ; 2 uses
  %i.ao = getelementptr i8, ptr %.sroa.029.052.i, i64 %i.an ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ad, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.029.052.i, i64 %i.aq ; 2 uses
  %next.gep240 = getelementptr i8, ptr %i.ad, i64 %i.aq ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %next.gep240, i64 -16
  %i.as = getelementptr inbounds i8, ptr %next.gep240, i64 -32
  %wide.load = load <4 x i32>, ptr %i.ar, align 4, !tbaa !69, !noalias !3885
  %wide.load241 = load <4 x i32>, ptr %i.as, align 4, !tbaa !69, !noalias !3885
  %i.at = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.au = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.at, align 4, !tbaa !69, !noalias !3885
  store <4 x i32> %wide.load241, ptr %i.au, align 4, !tbaa !69, !noalias !3885
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !3890

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i.i.i.preheader295

.lr.ph.i.i.i.preheader295:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.0.0.i.i.ph = phi ptr [ %.sroa.029.052.i, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.ph296 = phi ptr [ %i.ad, %.lr.ph.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader295, %.lr.ph.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.sroa.0.0.i.i.ph, %.lr.ph.i.i.i.preheader295 ]
  %i.aw = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.ph296, %.lr.ph.i.i.i.preheader295 ]
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !69, !noalias !3885
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -4 ; 3 uses
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !69, !noalias !3885
  %.not.i.i.i = icmp eq ptr %i.ax, %i.s
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3891

bb.g:                                             ; preds = %.lr.ph.i8
  %i.ba = getelementptr inbounds i8, ptr %.sroa.020.050.i, i64 -4 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.029.052.i, i64 -4 ; 3 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !69, !noalias !3882
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !69, !noalias !3882
  %.not36.i = icmp slt i32 %i.bc, %i.bd
  br i1 %.not36.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds i8, ptr %.sroa.024.051.i, i64 -4 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !69, !noalias !3882
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !69, !noalias !3882
  %i.bi = load i32, ptr %i.ba, align 4, !tbaa !69, !noalias !3882
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !69, !noalias !3882
  %i.bj = load i32, ptr %i.be, align 4, !tbaa !69, !noalias !3882
  store i32 %i.bj, ptr %i.ba, align 4, !tbaa !69, !noalias !3882
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !69, !noalias !3882
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !69, !noalias !3882
  %i.bn = load i32, ptr %i.bb, align 4, !tbaa !69, !noalias !3882
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !69, !noalias !3882
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i = phi ptr [ %i.bk, %bb.i ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bo = phi ptr [ %i.bl, %bb.i ], [ %i.bg, %bb.h ] ; 2 uses
  %.sroa.020.1.i = phi ptr [ %.sroa.020.050.i, %bb.i ], [ %i.ba, %bb.h ] ; 2 uses
  %.sroa.024.1.i = phi ptr [ %.sroa.024.051.i, %bb.i ], [ %i.be, %bb.h ] ; 2 uses
  %.sroa.029.1.i = phi ptr [ %i.bb, %bb.i ], [ %.sroa.029.052.i, %bb.h ] ; 2 uses
  %.not35.i = icmp eq ptr %.sink.i, %i.s
  br i1 %.not35.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i8, !llvm.loop !3892

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i: ; preds = %bb.j, %.lr.ph.i.i.i, %middle.block, %bb.f
  %.sroa.053.1 = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %i.z, %bb.f ], [ %i.ao, %middle.block ], [ %i.bo, %bb.j ]
  %.sroa.020.046.i = phi ptr [ %.sroa.020.050.i, %.lr.ph.i.i.i ], [ %i.x, %bb.f ], [ %.sroa.020.050.i, %middle.block ], [ %.sroa.020.1.i, %bb.j ]
  %.sroa.024.044.i = phi ptr [ %.sroa.024.051.i, %.lr.ph.i.i.i ], [ %i.w, %bb.f ], [ %.sroa.024.051.i, %middle.block ], [ %.sroa.024.1.i, %bb.j ]
  %.sroa.029.042.i = phi ptr [ %.sroa.029.052.i, %.lr.ph.i.i.i ], [ %i.r, %bb.f ], [ %.sroa.029.052.i, %middle.block ], [ %.sroa.029.1.i, %bb.j ]
  store ptr %.sroa.020.046.i, ptr %5, align 8, !tbaa !2933, !noalias !3882
  %.pre = load ptr, ptr %2, align 8, !tbaa !2933
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  br i1 %or.cond77, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 4 uses
  %i.br = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 3 uses
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !69, !noalias !3893
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !69, !noalias !3893
  %i.bt = load i32, ptr %i.bp, align 4, !tbaa !69, !noalias !3893
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !69, !noalias !3893
  %i.bu = icmp eq ptr %i.bq, %i.s
  br i1 %i.bu, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.l, %bb.m
  %indvar = phi i64 [ %indvar.next, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.bv = phi ptr [ %i.cv, %bb.m ], [ %i.bq, %bb.l ] ; 5 uses
  %.sroa.022.040.i = phi ptr [ %.sroa.022.1.i, %bb.m ], [ %i.r, %bb.l ] ; 9 uses
  %.sroa.016.039.i = phi ptr [ %.sroa.016.1.i, %bb.m ], [ %i.bp, %bb.l ] ; 5 uses
  %i.bw = phi ptr [ %i.cw, %bb.m ], [ %i.br, %bb.l ]
  %i.bx = icmp eq ptr %.sroa.016.039.i, %i.u
  br i1 %i.bx, label %.lr.ph.i.i.i14.preheader, label %bb.m

.lr.ph.i.i.i14.preheader:                         ; preds = %.lr.ph.i10
  %.sroa.022.040.i244.le = ptrtoaddr ptr %.sroa.022.040.i to i64
  %i.by = add i64 %i.n, -8
  %9 = sub i64 %i.by, %i.t
  %10 = lshr i64 %9, 2
  %11 = add nuw nsw i64 %10, 1
  %12 = mul i64 %indvar, 4611686018427387903
  %i.bz = add i64 %12, %11                        ; 3 uses
  %min.iters.check247 = icmp ult i64 %i.bz, 24
  br i1 %min.iters.check247, label %.lr.ph.i.i.i14.preheader285, label %vector.memcheck243

vector.memcheck243:                               ; preds = %.lr.ph.i.i.i14.preheader
  %i.ca = shl i64 %indvar, 2
  %i.cb = add i64 %i.ca, %.sroa.022.040.i244.le
  %i.cc = sub i64 %i.n, %i.cb
  %i.cd = add i64 %i.cc, -5
  %diff.check245 = icmp ult i64 %i.cd, 31
  br i1 %diff.check245, label %.lr.ph.i.i.i14.preheader285, label %vector.ph248

vector.ph248:                                     ; preds = %vector.memcheck243
  %n.vec249 = and i64 %i.bz, -8                   ; 3 uses
  %i.ce = mul i64 %n.vec249, -4                   ; 2 uses
  %i.cf = getelementptr i8, ptr %.sroa.022.040.i, i64 %i.ce ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bv, i64 %i.ce
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph248
  %index251 = phi i64 [ 0, %vector.ph248 ], [ %index.next256, %vector.body250 ] ; 2 uses
  %i.ch = mul i64 %index251, -4                   ; 2 uses
  %next.gep252 = getelementptr i8, ptr %.sroa.022.040.i, i64 %i.ch ; 2 uses
  %next.gep253 = getelementptr i8, ptr %i.bv, i64 %i.ch ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %next.gep253, i64 -16
  %i.cj = getelementptr inbounds i8, ptr %next.gep253, i64 -32
  %wide.load254 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !69, !noalias !3896
  %wide.load255 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !69, !noalias !3896
  %i.ck = getelementptr inbounds i8, ptr %next.gep252, i64 -16
  %i.cl = getelementptr inbounds i8, ptr %next.gep252, i64 -32
  store <4 x i32> %wide.load254, ptr %i.ck, align 4, !tbaa !69, !noalias !3896
  store <4 x i32> %wide.load255, ptr %i.cl, align 4, !tbaa !69, !noalias !3896
  %index.next256 = add nuw i64 %index251, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next256, %n.vec249
  br i1 %i.cm, label %middle.block257, label %vector.body250, !llvm.loop !3901

middle.block257:                                  ; preds = %vector.body250
  %cmp.n258 = icmp eq i64 %i.bz, %n.vec249
  br i1 %cmp.n258, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i.i.i14.preheader285

.lr.ph.i.i.i14.preheader285:                      ; preds = %vector.memcheck243, %.lr.ph.i.i.i14.preheader, %middle.block257
  %.sroa.0.0.i.i15.ph = phi ptr [ %.sroa.022.040.i, %vector.memcheck243 ], [ %.sroa.022.040.i, %.lr.ph.i.i.i14.preheader ], [ %i.cf, %middle.block257 ]
  %.ph = phi ptr [ %i.bv, %vector.memcheck243 ], [ %i.bv, %.lr.ph.i.i.i14.preheader ], [ %i.cg, %middle.block257 ]
  br label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %.lr.ph.i.i.i14.preheader285, %.lr.ph.i.i.i14
  %.sroa.0.0.i.i15 = phi ptr [ %i.cq, %.lr.ph.i.i.i14 ], [ %.sroa.0.0.i.i15.ph, %.lr.ph.i.i.i14.preheader285 ]
  %i.cn = phi ptr [ %i.co, %.lr.ph.i.i.i14 ], [ %.ph, %.lr.ph.i.i.i14.preheader285 ]
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !69, !noalias !3896
  %i.cq = getelementptr inbounds i8, ptr %.sroa.0.0.i.i15, i64 -4 ; 3 uses
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !69, !noalias !3896
  %.not.i.i.i16 = icmp eq ptr %i.co, %i.s
  br i1 %.not.i.i.i16, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i.i.i14, !llvm.loop !3902

bb.m:                                             ; preds = %.lr.ph.i10
  %i.cr = getelementptr inbounds i8, ptr %.sroa.016.039.i, i64 -4 ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %.sroa.022.040.i, i64 -4 ; 3 uses
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !69, !noalias !3893
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !69, !noalias !3893
  %.not28.i = icmp slt i32 %i.ct, %i.cu           ; 3 uses
  %i.cv = getelementptr inbounds i8, ptr %i.bv, i64 -4 ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %i.bw, i64 -4 ; 3 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !69, !noalias !3893
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !69, !noalias !3893
  %.sroa.016.1.i = select i1 %.not28.i, ptr %.sroa.016.039.i, ptr %i.cr ; 2 uses
  %.sroa.022.1.i = select i1 %.not28.i, ptr %i.cs, ptr %.sroa.022.040.i ; 2 uses
  %.val = load i32, ptr %i.cs, align 4
  %.val80 = load i32, ptr %i.cr, align 4
  %.sink.i11 = select i1 %.not28.i, i32 %.val, i32 %.val80
  store i32 %.sink.i11, ptr %i.cv, align 4, !tbaa !69, !noalias !3893
  %i.cy = icmp eq ptr %i.cv, %i.s
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cy, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i10, !llvm.loop !3903

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit: ; preds = %bb.m, %.lr.ph.i.i.i14, %middle.block257, %bb.k, %bb.l, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, %bb.e
  %i.cz = phi ptr [ %.pre, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ], [ %i.s, %bb.e ], [ %i.s, %middle.block257 ], [ %i.s, %bb.k ], [ %i.s, %bb.l ], [ %i.s, %.lr.ph.i.i.i14 ], [ %i.s, %bb.m ]
  %.sroa.053.0 = phi ptr [ %.sroa.053.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ], [ %i.r, %bb.e ], [ %i.cf, %middle.block257 ], [ %i.r, %bb.k ], [ %i.br, %bb.l ], [ %i.cq, %.lr.ph.i.i.i14 ], [ %i.cw, %bb.m ]
  %.sroa.060.0 = phi ptr [ %.sroa.024.044.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ], [ %i.c, %bb.e ], [ %.sroa.016.039.i, %middle.block257 ], [ %i.c, %bb.k ], [ %i.bp, %bb.l ], [ %.sroa.016.039.i, %.lr.ph.i.i.i14 ], [ %.sroa.016.1.i, %bb.m ]
  %.sroa.070.0 = phi ptr [ %.sroa.029.042.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ], [ %i.r, %bb.e ], [ %.sroa.022.040.i, %middle.block257 ], [ %i.r, %bb.k ], [ %i.r, %bb.l ], [ %.sroa.022.040.i, %.lr.ph.i.i.i14 ], [ %.sroa.022.1.i, %bb.m ]
  store ptr %i.cz, ptr %1, align 8, !tbaa !2933
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit
  %.sroa.060.1 = phi ptr [ %.sroa.060.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit ], [ %i.c, %bb.a ] ; 5 uses
  %.sroa.066.0 = phi ptr [ %.sroa.053.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit ], [ %i.b, %bb.a ] ; 4 uses
  %.sroa.070.1 = phi ptr [ %.sroa.070.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.da = load ptr, ptr %4, align 8, !tbaa !2933  ; 3 uses
  %i.db = load ptr, ptr %1, align 8, !tbaa !2933  ; 4 uses
  %.not.i22 = icmp eq ptr %.sroa.060.1, %i.da
  %.not17.i = icmp eq ptr %.sroa.066.0, %.sroa.070.1
  %or.cond79 = select i1 %.not.i22, i1 true, i1 %.not17.i ; 2 uses
  br i1 %.not, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %or.cond79, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = load ptr, ptr %5, align 8, !tbaa !2933, !noalias !3904
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.p
  %.sroa.031.0 = phi ptr [ %i.db, %bb.p ], [ %i.di, %.split.i ]
  %.sroa.010.0.ph.i = phi ptr [ %i.dc, %bb.p ], [ %i.dd, %.split.i ] ; 2 uses
  %.sroa.013.0.ph.i = phi ptr [ %.sroa.060.1, %bb.p ], [ %i.dh, %.split.i ] ; 2 uses
  %.sroa.017.0.ph.i = phi ptr [ %.sroa.070.1, %bb.p ], [ %.sroa.017.0.i, %.split.i ]
  %i.dd = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i, i64 -4 ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.outer.i
  %.sroa.031.1 = phi ptr [ %.sroa.031.0, %.outer.i ], [ %i.dk, %bb.r ] ; 2 uses
  %.sroa.017.0.i = phi ptr [ %.sroa.017.0.ph.i, %.outer.i ], [ %i.de, %bb.r ] ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.017.0.i, i64 -4 ; 4 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !69, !noalias !3904 ; 2 uses
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !69, !noalias !3904 ; 2 uses
  %.not26.i = icmp slt i32 %i.df, %i.dg
  br i1 %.not26.i, label %bb.r, label %.split.i

.split.i:                                         ; preds = %bb.q
  %i.dh = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i, i64 -4 ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.031.1, i64 -4 ; 3 uses
  store i32 %i.df, ptr %i.di, align 4, !tbaa !69, !noalias !3904
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !69, !noalias !3904
  store i32 %i.dj, ptr %i.dd, align 4, !tbaa !69, !noalias !3904
  %.not28.i19 = icmp eq ptr %i.dh, %i.da
  br i1 %.not28.i19, label %.loopexit.i20, label %.outer.i, !llvm.loop !3092

bb.r:                                             ; preds = %bb.q
  %i.dk = getelementptr inbounds i8, ptr %.sroa.031.1, i64 -4 ; 3 uses
  store i32 %i.dg, ptr %i.dk, align 4, !tbaa !69, !noalias !3904
  %.not27.i21 = icmp eq ptr %i.de, %.sroa.066.0
  br i1 %.not27.i21, label %.loopexit.i20, label %bb.q, !llvm.loop !3092

.loopexit.i20:                                    ; preds = %.split.i, %bb.r
  %.sroa.031.2 = phi ptr [ %i.dk, %bb.r ], [ %i.di, %.split.i ]
  %.sroa.017.124.i = phi ptr [ %i.de, %bb.r ], [ %.sroa.017.0.i, %.split.i ]
  %.sroa.013.123.i = phi ptr [ %.sroa.013.0.ph.i, %bb.r ], [ %i.dh, %.split.i ]
  %.sroa.010.122.i = phi ptr [ %.sroa.010.0.ph.i, %bb.r ], [ %i.dd, %.split.i ]
  store ptr %.sroa.010.122.i, ptr %5, align 8, !tbaa !2933, !noalias !3904
  br label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit

bb.s:                                             ; preds = %bb.n
  br i1 %or.cond79, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.s, %bb.t
  %.sroa.024.0.ph = phi ptr [ %i.dp, %bb.t ], [ %i.db, %bb.s ]
  %.sroa.07.0.i.ph = phi ptr [ %i.dq, %bb.t ], [ %.sroa.060.1, %bb.s ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.t ], [ %.sroa.070.1, %bb.s ]
  %i.dl = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.u
  %.sroa.024.0 = phi ptr [ %i.dp, %bb.u ], [ %.sroa.024.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.dm, %bb.u ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.dm = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 4 uses
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !69, !noalias !3907 ; 2 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !69, !noalias !3907 ; 2 uses
  %.not18.i = icmp slt i32 %i.dn, %i.do
  %i.dp = getelementptr inbounds i8, ptr %.sroa.024.0, i64 -4 ; 6 uses
  br i1 %.not18.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.preheader.i
  %i.dq = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 3 uses
  store i32 %i.dn, ptr %i.dp, align 4, !tbaa !69, !noalias !3907
  %i.dr = icmp eq ptr %i.dq, %i.da
  br i1 %i.dr, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !3102

bb.u:                                             ; preds = %.preheader.i
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !69, !noalias !3907
  %i.ds = icmp eq ptr %i.dm, %.sroa.066.0
  br i1 %i.ds, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %.preheader.i, !llvm.loop !3102

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit: ; preds = %bb.u, %bb.t, %bb.s, %.loopexit.i20, %bb.o
  %.sroa.038.0 = phi ptr [ %.sroa.031.2, %.loopexit.i20 ], [ %i.db, %bb.o ], [ %i.db, %bb.s ], [ %i.dp, %bb.t ], [ %i.dp, %bb.u ]
  %.sroa.060.2 = phi ptr [ %.sroa.013.123.i, %.loopexit.i20 ], [ %.sroa.060.1, %bb.o ], [ %.sroa.060.1, %bb.s ], [ %.sroa.07.0.i.ph, %bb.u ], [ %i.dq, %bb.t ]
  %.sroa.070.2 = phi ptr [ %.sroa.017.124.i, %.loopexit.i20 ], [ %.sroa.070.1, %bb.o ], [ %.sroa.070.1, %bb.s ], [ %i.dm, %bb.u ], [ %.sroa.012.0.i, %bb.t ]
  store ptr %.sroa.038.0, ptr %1, align 8, !tbaa !2933
  store ptr %.sroa.070.2, ptr %6, align 8, !tbaa !2933
  store ptr %.sroa.066.0, ptr %7, align 8, !tbaa !2933
  store ptr %.sroa.060.2, ptr %3, align 8, !tbaa !2933
  %i.dt = load ptr, ptr %1, align 8, !tbaa !2933
  store ptr %i.dt, ptr %0, align 8, !tbaa !2933
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !2933   ; 3 uses
  %i.b = load ptr, ptr %7, align 8, !tbaa !2933   ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !2933   ; 7 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !2933   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d                  ; 2 uses
  %i.e = icmp eq ptr %i.a, %i.b
  br i1 %i.e, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !2933   ; 4 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !2933   ; 2 uses
  %.not1.i = icmp eq ptr %i.f, %i.g
  br i1 %.not1.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !69, !noalias !3910
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.j = phi ptr [ %i.f, %.lr.ph.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !69, !noalias !3910
  %i.m = icmp slt i32 %i.l, %i.i
  br i1 %i.m, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.c, !llvm.loop !3715

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ] ; 6 uses
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = ptrtoint ptr %.lcssa.i to i64            ; 3 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.r ; 10 uses
  store ptr %.lcssa.i, ptr %1, align 8, !tbaa !2933
  %i.t = load ptr, ptr %2, align 8, !tbaa !2933   ; 14 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 4 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !2933   ; 3 uses
  %.not.i18 = icmp eq ptr %.lcssa.i, %i.t
  %.not27.i = icmp eq ptr %i.c, %i.v
  %or.cond79 = select i1 %.not.i18, i1 true, i1 %.not27.i ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  br i1 %or.cond79, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %5, align 8, !tbaa !2933, !noalias !3913
  %i.x = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !69, !noalias !3913
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !69, !noalias !3913
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !69, !noalias !3913
  %i.ad = load i32, ptr %i.y, align 4, !tbaa !69, !noalias !3913
  store i32 %i.ad, ptr %i.z, align 4, !tbaa !69, !noalias !3913
  %i.ae = load i32, ptr %i.x, align 4, !tbaa !69, !noalias !3913
  store i32 %i.ae, ptr %i.y, align 4, !tbaa !69, !noalias !3913
  store i32 %i.ab, ptr %i.x, align 4, !tbaa !69, !noalias !3913
  %.not3548.i = icmp eq ptr %i.z, %i.t
  br i1 %.not3548.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.f, %bb.j
  %i.af = phi ptr [ %.sink.i, %bb.j ], [ %i.z, %bb.f ] ; 9 uses
  %.sroa.029.051.i = phi ptr [ %.sroa.029.1.i, %bb.j ], [ %i.s, %bb.f ] ; 10 uses
  %.sroa.024.050.i = phi ptr [ %.sroa.024.1.i, %bb.j ], [ %i.x, %bb.f ] ; 5 uses
  %.sroa.020.049.i = phi ptr [ %.sroa.020.1.i, %bb.j ], [ %i.y, %bb.f ] ; 4 uses
  %i.ag = phi ptr [ %i.bv, %bb.j ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.024.050.i, %i.v
  br i1 %i.ah, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i17
  %i.ai = ptrtoaddr ptr %i.af to i64              ; 2 uses
  %i.aj = add i64 %i.ai, -4
  %i.ak = sub i64 %i.aj, %i.u                     ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader310, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.af, i64 -4
  %reass.sub = sub i64 %i.ai, %i.u
  %i.an = add i64 %reass.sub, -4
  %i.ao = lshr i64 %i.an, 2
  %i.ap = mul i64 %i.ao, -4                       ; 2 uses
  %scevgep242 = getelementptr i8, ptr %scevgep, i64 %i.ap
  %scevgep243 = getelementptr i8, ptr %.sroa.029.051.i, i64 -4
  %scevgep244 = getelementptr i8, ptr %scevgep243, i64 %i.ap
  %bound0 = icmp ult ptr %scevgep242, %.sroa.029.051.i
  %bound1 = icmp ult ptr %scevgep244, %i.af
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader310, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, 9223372036854775800     ; 3 uses
  %i.aq = mul i64 %n.vec, -4                      ; 2 uses
  %i.ar = getelementptr i8, ptr %.sroa.029.051.i, i64 %i.aq ; 2 uses
  %i.as = getelementptr i8, ptr %i.af, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.029.051.i, i64 %i.at ; 2 uses
  %next.gep245 = getelementptr i8, ptr %i.af, i64 %i.at ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %next.gep245, i64 -16 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %next.gep245, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.au, align 4, !tbaa !69, !alias.scope !3916, !noalias !3919
  %wide.load246 = load <4 x i32>, ptr %i.av, align 4, !tbaa !69, !alias.scope !3916, !noalias !3919
  %i.aw = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load247 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !69, !alias.scope !3925, !noalias !3926
  %wide.load248 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !69, !alias.scope !3925, !noalias !3926
  store <4 x i32> %wide.load247, ptr %i.au, align 4, !tbaa !69, !alias.scope !3916, !noalias !3919
  store <4 x i32> %wide.load248, ptr %i.av, align 4, !tbaa !69, !alias.scope !3916, !noalias !3919
  store <4 x i32> %wide.load, ptr %i.aw, align 4, !tbaa !69, !alias.scope !3925, !noalias !3926
  store <4 x i32> %wide.load246, ptr %i.ax, align 4, !tbaa !69, !alias.scope !3925, !noalias !3926
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !3927

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i.i.i.preheader310

.lr.ph.i.i.i.preheader310:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.0.0.i.i.ph = phi ptr [ %.sroa.029.051.i, %vector.memcheck ], [ %.sroa.029.051.i, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.ph311 = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader310, %.lr.ph.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i ], [ %.sroa.0.0.i.i.ph, %.lr.ph.i.i.i.preheader310 ]
  %i.az = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %.ph311, %.lr.ph.i.i.i.preheader310 ]
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -4 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -4 ; 4 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !69, !noalias !3926
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !69, !noalias !3926
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !69, !noalias !3926
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !69, !noalias !3926
  %.not.i.i.i = icmp eq ptr %i.ba, %i.t
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3928

bb.g:                                             ; preds = %.lr.ph.i17
  %i.be = getelementptr inbounds i8, ptr %.sroa.020.049.i, i64 -4 ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %.sroa.029.051.i, i64 -4 ; 4 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !69, !noalias !3913
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !69, !noalias !3913
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds i8, ptr %.sroa.024.050.i, i64 -4 ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %i.ag, i64 -4 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !69, !noalias !3913
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !69, !noalias !3913
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !69, !noalias !3913
  %i.bo = load i32, ptr %i.be, align 4, !tbaa !69, !noalias !3913
  store i32 %i.bo, ptr %i.bk, align 4, !tbaa !69, !noalias !3913
  %i.bp = load i32, ptr %i.bj, align 4, !tbaa !69, !noalias !3913
  store i32 %i.bp, ptr %i.be, align 4, !tbaa !69, !noalias !3913
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !69, !noalias !3913
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %i.ag, i64 -4 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !69, !noalias !3913
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !69, !noalias !3913
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !69, !noalias !3913
  %i.bu = load i32, ptr %i.bf, align 4, !tbaa !69, !noalias !3913
  store i32 %i.bu, ptr %i.bq, align 4, !tbaa !69, !noalias !3913
  store i32 %i.bs, ptr %i.bf, align 4, !tbaa !69, !noalias !3913
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i = phi ptr [ %i.bk, %bb.h ], [ %i.bq, %bb.i ] ; 2 uses
  %i.bv = phi ptr [ %i.bl, %bb.h ], [ %i.br, %bb.i ] ; 2 uses
  %.sroa.020.1.i = phi ptr [ %i.be, %bb.h ], [ %.sroa.020.049.i, %bb.i ] ; 2 uses
  %.sroa.024.1.i = phi ptr [ %i.bj, %bb.h ], [ %.sroa.024.050.i, %bb.i ] ; 2 uses
  %.sroa.029.1.i = phi ptr [ %.sroa.029.051.i, %bb.h ], [ %i.bf, %bb.i ] ; 2 uses
  %.not35.i = icmp eq ptr %.sink.i, %i.t
  br i1 %.not35.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i17, !llvm.loop !3929

_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i: ; preds = %bb.j, %.lr.ph.i.i.i, %middle.block, %bb.f
  %.sroa.056.1 = phi ptr [ %i.bb, %.lr.ph.i.i.i ], [ %i.aa, %bb.f ], [ %i.ar, %middle.block ], [ %i.bv, %bb.j ]
  %.sroa.020.045.i = phi ptr [ %.sroa.020.049.i, %.lr.ph.i.i.i ], [ %i.y, %bb.f ], [ %.sroa.020.049.i, %middle.block ], [ %.sroa.020.1.i, %bb.j ]
  %.sroa.024.043.i = phi ptr [ %.sroa.024.050.i, %.lr.ph.i.i.i ], [ %i.x, %bb.f ], [ %.sroa.024.050.i, %middle.block ], [ %.sroa.024.1.i, %bb.j ]
  %.sroa.029.041.i = phi ptr [ %.sroa.029.051.i, %.lr.ph.i.i.i ], [ %i.s, %bb.f ], [ %.sroa.029.051.i, %middle.block ], [ %.sroa.029.1.i, %bb.j ]
  store ptr %.sroa.020.045.i, ptr %5, align 8, !tbaa !2933, !noalias !3913
  %.pre = load ptr, ptr %2, align 8, !tbaa !2933
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  br i1 %or.cond79, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 4 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !69, !noalias !3930
  %i.ca = load i32, ptr %i.bx, align 4, !tbaa !69, !noalias !3930
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !69, !noalias !3930
  %i.cb = load i32, ptr %i.bw, align 4, !tbaa !69, !noalias !3930
  store i32 %i.cb, ptr %i.bx, align 4, !tbaa !69, !noalias !3930
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !69, !noalias !3930
  %i.cc = icmp eq ptr %i.bx, %i.t
  br i1 %i.cc, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.l, %bb.p
  %indvar = phi i64 [ %indvar.next, %bb.p ], [ 0, %bb.l ] ; 3 uses
  %i.cd = phi ptr [ %i.dd, %bb.p ], [ %i.bx, %bb.l ] ; 6 uses
  %.sroa.022.039.i = phi ptr [ %.sroa.022.1.i, %bb.p ], [ %i.s, %bb.l ] ; 10 uses
  %.sroa.016.038.i = phi ptr [ %.sroa.016.1.i, %bb.p ], [ %i.bw, %bb.l ] ; 5 uses
  %i.ce = phi ptr [ %i.de, %bb.p ], [ %i.by, %bb.l ]
  %i.cf = icmp eq ptr %.sroa.016.038.i, %i.v
  br i1 %i.cf, label %.lr.ph.i.i.i22.preheader, label %bb.m

.lr.ph.i.i.i22.preheader:                         ; preds = %.lr.ph.i19
  %i.cg = add i64 %i.o, -8
  %8 = sub i64 %i.cg, %i.u
  %9 = lshr i64 %8, 2
  %10 = add nuw nsw i64 %9, 1
  %11 = mul i64 %indvar, 4611686018427387903
  %i.ch = add i64 %11, %10                        ; 3 uses
  %min.iters.check259 = icmp ult i64 %i.ch, 20
  br i1 %min.iters.check259, label %.lr.ph.i.i.i22.preheader301, label %vector.memcheck250

vector.memcheck250:                               ; preds = %.lr.ph.i.i.i22.preheader
  %i.ci = add i64 %i.o, -8
  %i.cj = sub i64 %i.ci, %i.u
  %12 = and i64 %i.cj, -4                         ; 2 uses
  %13 = sub i64 -8, %12
  %scevgep248 = getelementptr i8, ptr %.lcssa.i, i64 %13
  %14 = shl i64 %indvar, 2
  %reass.sub270 = sub i64 %14, %12
  %scevgep253 = getelementptr i8, ptr %.sroa.022.039.i, i64 %reass.sub270
  %scevgep254 = getelementptr i8, ptr %scevgep253, i64 -4
  %bound0255 = icmp ult ptr %scevgep248, %.sroa.022.039.i
  %bound1256 = icmp ult ptr %scevgep254, %i.cd
  %found.conflict257 = and i1 %bound0255, %bound1256
  br i1 %found.conflict257, label %.lr.ph.i.i.i22.preheader301, label %vector.ph260

vector.ph260:                                     ; preds = %vector.memcheck250
  %n.vec261 = and i64 %i.ch, -8                   ; 3 uses
  %i.ck = mul i64 %n.vec261, -4                   ; 2 uses
  %i.cl = getelementptr i8, ptr %.sroa.022.039.i, i64 %i.ck ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cd, i64 %i.ck
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph260
  %index263 = phi i64 [ 0, %vector.ph260 ], [ %index.next270, %vector.body262 ] ; 2 uses
  %i.cn = mul i64 %index263, -4                   ; 2 uses
  %next.gep264 = getelementptr i8, ptr %.sroa.022.039.i, i64 %i.cn ; 2 uses
  %next.gep265 = getelementptr i8, ptr %i.cd, i64 %i.cn ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %next.gep265, i64 -16 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %next.gep265, i64 -32 ; 2 uses
  %wide.load266 = load <4 x i32>, ptr %i.co, align 4, !tbaa !69, !alias.scope !3933, !noalias !3936
  %wide.load267 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !69, !alias.scope !3933, !noalias !3936
  %i.cq = getelementptr inbounds i8, ptr %next.gep264, i64 -16 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %next.gep264, i64 -32 ; 2 uses
  %wide.load268 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !69, !alias.scope !3942, !noalias !3943
  %wide.load269 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !69, !alias.scope !3942, !noalias !3943
  store <4 x i32> %wide.load268, ptr %i.co, align 4, !tbaa !69, !alias.scope !3933, !noalias !3936
  store <4 x i32> %wide.load269, ptr %i.cp, align 4, !tbaa !69, !alias.scope !3933, !noalias !3936
  store <4 x i32> %wide.load266, ptr %i.cq, align 4, !tbaa !69, !alias.scope !3942, !noalias !3943
  store <4 x i32> %wide.load267, ptr %i.cr, align 4, !tbaa !69, !alias.scope !3942, !noalias !3943
  %index.next270 = add nuw i64 %index263, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next270, %n.vec261
  br i1 %i.cs, label %middle.block271, label %vector.body262, !llvm.loop !3944

middle.block271:                                  ; preds = %vector.body262
  %cmp.n272 = icmp eq i64 %i.ch, %n.vec261
  br i1 %cmp.n272, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i.i.i22.preheader301

.lr.ph.i.i.i22.preheader301:                      ; preds = %vector.memcheck250, %.lr.ph.i.i.i22.preheader, %middle.block271
  %.sroa.0.0.i.i23.ph = phi ptr [ %.sroa.022.039.i, %vector.memcheck250 ], [ %.sroa.022.039.i, %.lr.ph.i.i.i22.preheader ], [ %i.cl, %middle.block271 ]
  %.ph = phi ptr [ %i.cd, %vector.memcheck250 ], [ %i.cd, %.lr.ph.i.i.i22.preheader ], [ %i.cm, %middle.block271 ]
  br label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %.lr.ph.i.i.i22.preheader301, %.lr.ph.i.i.i22
  %.sroa.0.0.i.i23 = phi ptr [ %i.cv, %.lr.ph.i.i.i22 ], [ %.sroa.0.0.i.i23.ph, %.lr.ph.i.i.i22.preheader301 ]
  %i.ct = phi ptr [ %i.cu, %.lr.ph.i.i.i22 ], [ %.ph, %.lr.ph.i.i.i22.preheader301 ]
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -4 ; 4 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.0.0.i.i23, i64 -4 ; 4 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !69, !noalias !3943
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !69, !noalias !3943
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !69, !noalias !3943
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !69, !noalias !3943
  %.not.i.i.i24 = icmp eq ptr %i.cu, %i.t
  br i1 %.not.i.i.i24, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i.i.i22, !llvm.loop !3945

bb.m:                                             ; preds = %.lr.ph.i19
  %i.cy = getelementptr inbounds i8, ptr %.sroa.016.038.i, i64 -4 ; 4 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.022.039.i, i64 -4 ; 4 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !69, !noalias !3930
  %i.db = load i32, ptr %i.cy, align 4, !tbaa !69, !noalias !3930
  %i.dc = icmp slt i32 %i.da, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.cd, i64 -4 ; 5 uses
  %i.de = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 4 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !69, !noalias !3930 ; 2 uses
  %i.dg = load i32, ptr %i.dd, align 4, !tbaa !69, !noalias !3930
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !69, !noalias !3930
  br i1 %i.dc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dh = load i32, ptr %i.cy, align 4, !tbaa !69, !noalias !3930
  store i32 %i.dh, ptr %i.dd, align 4, !tbaa !69, !noalias !3930
  store i32 %i.df, ptr %i.cy, align 4, !tbaa !69, !noalias !3930
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.di = load i32, ptr %i.cz, align 4, !tbaa !69, !noalias !3930
  store i32 %i.di, ptr %i.dd, align 4, !tbaa !69, !noalias !3930
  store i32 %i.df, ptr %i.cz, align 4, !tbaa !69, !noalias !3930
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.016.1.i = phi ptr [ %i.cy, %bb.n ], [ %.sroa.016.038.i, %bb.o ] ; 2 uses
  %.sroa.022.1.i = phi ptr [ %.sroa.022.039.i, %bb.n ], [ %i.cz, %bb.o ] ; 2 uses
  %i.dj = icmp eq ptr %i.dd, %i.t
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dj, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i19, !llvm.loop !3946

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit: ; preds = %bb.p, %.lr.ph.i.i.i22, %middle.block271, %bb.k, %bb.l, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, %bb.e
  %i.dk = phi ptr [ %.pre, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ], [ %i.t, %bb.e ], [ %i.t, %middle.block271 ], [ %i.t, %bb.k ], [ %i.t, %bb.l ], [ %i.t, %.lr.ph.i.i.i22 ], [ %i.t, %bb.p ]
  %.sroa.056.0 = phi ptr [ %.sroa.056.1, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ], [ %i.s, %bb.e ], [ %i.cl, %middle.block271 ], [ %i.s, %bb.k ], [ %i.by, %bb.l ], [ %i.cv, %.lr.ph.i.i.i22 ], [ %i.de, %bb.p ]
  %.sroa.062.0 = phi ptr [ %.sroa.024.043.i, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ], [ %i.c, %bb.e ], [ %.sroa.016.038.i, %middle.block271 ], [ %i.c, %bb.k ], [ %i.bw, %bb.l ], [ %.sroa.016.038.i, %.lr.ph.i.i.i22 ], [ %.sroa.016.1.i, %bb.p ]
  %.sroa.072.0 = phi ptr [ %.sroa.029.041.i, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ], [ %i.s, %bb.e ], [ %.sroa.022.039.i, %middle.block271 ], [ %i.s, %bb.k ], [ %i.s, %bb.l ], [ %.sroa.022.039.i, %.lr.ph.i.i.i22 ], [ %.sroa.022.1.i, %bb.p ]
  store ptr %i.dk, ptr %1, align 8, !tbaa !2933
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit
  %.sroa.062.1 = phi ptr [ %.sroa.062.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %i.c, %bb.a ] ; 5 uses
  %.sroa.068.0 = phi ptr [ %.sroa.056.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %i.b, %bb.a ] ; 4 uses
  %.sroa.072.1 = phi ptr [ %.sroa.072.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.dl = load ptr, ptr %4, align 8, !tbaa !2933  ; 3 uses
  %i.dm = load ptr, ptr %1, align 8, !tbaa !2933  ; 4 uses
  %.not.i29 = icmp eq ptr %.sroa.062.1, %i.dl
  %.not17.i = icmp eq ptr %.sroa.068.0, %.sroa.072.1
  %or.cond81 = select i1 %.not.i29, i1 true, i1 %.not17.i ; 2 uses
  br i1 %.not, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %or.cond81, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dn = load ptr, ptr %5, align 8, !tbaa !2933, !noalias !3947
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.s
  %.sroa.036.0 = phi ptr [ %i.dm, %bb.s ], [ %i.du, %.split.i ]
  %.sroa.010.0.ph.i = phi ptr [ %i.dn, %bb.s ], [ %i.do, %.split.i ] ; 2 uses
  %.sroa.013.0.ph.i = phi ptr [ %.sroa.062.1, %bb.s ], [ %i.dt, %.split.i ] ; 2 uses
  %.sroa.017.0.ph.i = phi ptr [ %.sroa.072.1, %bb.s ], [ %.sroa.017.0.i, %.split.i ]
  %i.do = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i, i64 -4 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.outer.i
  %.sroa.036.1 = phi ptr [ %.sroa.036.0, %.outer.i ], [ %i.dx, %bb.u ] ; 2 uses
  %.sroa.017.0.i = phi ptr [ %.sroa.017.0.ph.i, %.outer.i ], [ %i.dp, %bb.u ] ; 3 uses
  %i.dp = getelementptr inbounds i8, ptr %.sroa.017.0.i, i64 -4 ; 5 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !69, !noalias !3947 ; 2 uses
  %i.dr = load i32, ptr %i.do, align 4, !tbaa !69, !noalias !3947 ; 2 uses
  %i.ds = icmp slt i32 %i.dq, %i.dr
  br i1 %i.ds, label %.split.i, label %bb.u

.split.i:                                         ; preds = %bb.t
  %i.dt = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i, i64 -4 ; 5 uses
  %i.du = getelementptr inbounds i8, ptr %.sroa.036.1, i64 -4 ; 4 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !69, !noalias !3947
  store i32 %i.dr, ptr %i.du, align 4, !tbaa !69, !noalias !3947
  %i.dw = load i32, ptr %i.dt, align 4, !tbaa !69, !noalias !3947
  store i32 %i.dw, ptr %i.do, align 4, !tbaa !69, !noalias !3947
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !69, !noalias !3947
  %.not27.i28 = icmp eq ptr %i.dt, %i.dl
  br i1 %.not27.i28, label %.loopexit.i27, label %.outer.i, !llvm.loop !3159

bb.u:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds i8, ptr %.sroa.036.1, i64 -4 ; 4 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !69, !noalias !3947
  store i32 %i.dq, ptr %i.dx, align 4, !tbaa !69, !noalias !3947
  store i32 %i.dy, ptr %i.dp, align 4, !tbaa !69, !noalias !3947
  %.not26.i = icmp eq ptr %i.dp, %.sroa.068.0
  br i1 %.not26.i, label %.loopexit.i27, label %bb.t, !llvm.loop !3159

.loopexit.i27:                                    ; preds = %.split.i, %bb.u
  %.sroa.036.2 = phi ptr [ %i.dx, %bb.u ], [ %i.du, %.split.i ]
  %.sroa.017.124.i = phi ptr [ %i.dp, %bb.u ], [ %.sroa.017.0.i, %.split.i ]
  %.sroa.013.123.i = phi ptr [ %.sroa.013.0.ph.i, %bb.u ], [ %i.dt, %.split.i ]
  %.sroa.010.122.i = phi ptr [ %.sroa.010.0.ph.i, %bb.u ], [ %i.do, %.split.i ]
  store ptr %.sroa.010.122.i, ptr %5, align 8, !tbaa !2933, !noalias !3947
  br label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit

bb.v:                                             ; preds = %bb.q
  br i1 %or.cond81, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.v, %bb.w
  %.sroa.0.0.ph = phi ptr [ %i.ee, %bb.w ], [ %i.dm, %bb.v ]
  %.sroa.07.0.i.ph = phi ptr [ %i.eg, %bb.w ], [ %.sroa.062.1, %bb.v ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.w ], [ %.sroa.072.1, %bb.v ]
  %i.dz = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.x
  %.sroa.0.0 = phi ptr [ %i.ee, %bb.x ], [ %.sroa.0.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.ea, %bb.x ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 5 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !69, !noalias !3950 ; 2 uses
  %i.ec = load i32, ptr %i.dz, align 4, !tbaa !69, !noalias !3950 ; 2 uses
  %i.ed = icmp slt i32 %i.eb, %i.ec
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -4 ; 7 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !69, !noalias !3950 ; 2 uses
  br i1 %i.ed, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader.i
  %i.eg = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 4 uses
  store i32 %i.ec, ptr %i.ee, align 4, !tbaa !69, !noalias !3950
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !69, !noalias !3950
  %i.eh = icmp eq ptr %i.eg, %i.dl
  br i1 %i.eh, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !3169

bb.x:                                             ; preds = %.preheader.i
  store i32 %i.eb, ptr %i.ee, align 4, !tbaa !69, !noalias !3950
  store i32 %i.ef, ptr %i.ea, align 4, !tbaa !69, !noalias !3950
  %i.ei = icmp eq ptr %i.ea, %.sroa.068.0
  br i1 %i.ei, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %.preheader.i, !llvm.loop !3169

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit: ; preds = %bb.x, %bb.w, %bb.v, %.loopexit.i27, %bb.r
  %.sroa.043.0 = phi ptr [ %.sroa.036.2, %.loopexit.i27 ], [ %i.dm, %bb.r ], [ %i.dm, %bb.v ], [ %i.ee, %bb.w ], [ %i.ee, %bb.x ]
  %.sroa.062.2 = phi ptr [ %.sroa.013.123.i, %.loopexit.i27 ], [ %.sroa.062.1, %bb.r ], [ %.sroa.062.1, %bb.v ], [ %.sroa.07.0.i.ph, %bb.x ], [ %i.eg, %bb.w ]
  %.sroa.072.2 = phi ptr [ %.sroa.017.124.i, %.loopexit.i27 ], [ %.sroa.072.1, %bb.r ], [ %.sroa.072.1, %bb.v ], [ %i.ea, %bb.x ], [ %.sroa.012.0.i, %bb.w ]
  store ptr %.sroa.043.0, ptr %1, align 8, !tbaa !2933
  store ptr %.sroa.072.2, ptr %6, align 8, !tbaa !2933
  store ptr %.sroa.068.0, ptr %7, align 8, !tbaa !2933
  store ptr %.sroa.062.2, ptr %3, align 8, !tbaa !2933
  %i.ej = load ptr, ptr %1, align 8, !tbaa !2933
  store ptr %i.ej, ptr %0, align 8, !tbaa !2933
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef align 8 dead_on_return %8) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !2933   ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_:bb.a
bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %bb.c, !llvm.loop !3881

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ] ; 6 uses
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = ptrtoint ptr %.lcssa.i to i64            ; 3 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.q ; 10 uses
  store ptr %.lcssa.i, ptr %1, align 8, !tbaa !2933
  %i.s = load ptr, ptr %2, align 8, !tbaa !2933   ; 14 uses
  %i.t = ptrtoaddr ptr %i.s to i64                ; 4 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !2933   ; 3 uses
  %.not.i9 = icmp eq ptr %.lcssa.i, %i.s
  %.not27.i = icmp eq ptr %i.c, %i.u
  %or.cond76 = select i1 %.not.i9, i1 true, i1 %.not27.i ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  br i1 %or.cond76, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %5, align 8, !tbaa !2933, !noalias !3956
  %i.w = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !69, !noalias !3956
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !69, !noalias !3956
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !69, !noalias !3956
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !69, !noalias !3956
  store i32 %i.ac, ptr %i.y, align 4, !tbaa !69, !noalias !3956
  %i.ad = load i32, ptr %i.w, align 4, !tbaa !69, !noalias !3956
  store i32 %i.ad, ptr %i.x, align 4, !tbaa !69, !noalias !3956
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !69, !noalias !3956
  %.not3549.i = icmp eq ptr %i.y, %i.s
  br i1 %.not3549.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.f, %bb.j
  %i.ae = phi ptr [ %.sink.i, %bb.j ], [ %i.y, %bb.f ] ; 9 uses
  %.sroa.029.052.i = phi ptr [ %.sroa.029.1.i, %bb.j ], [ %i.r, %bb.f ] ; 10 uses
  %.sroa.024.051.i = phi ptr [ %.sroa.024.1.i, %bb.j ], [ %i.w, %bb.f ] ; 5 uses
  %.sroa.020.050.i = phi ptr [ %.sroa.020.1.i, %bb.j ], [ %i.x, %bb.f ] ; 4 uses
  %i.af = phi ptr [ %i.bt, %bb.j ], [ %i.z, %bb.f ] ; 2 uses
  %i.ag = icmp eq ptr %.sroa.024.051.i, %i.u
  br i1 %i.ag, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i8
  %i.ah = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %i.ai = add i64 %i.ah, -4
  %i.aj = sub i64 %i.ai, %i.t                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader307, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ae, i64 -4
  %reass.sub = sub i64 %i.ah, %i.t
  %i.am = add i64 %reass.sub, -4
  %i.an = lshr i64 %i.am, 2
  %i.ao = mul i64 %i.an, -4                       ; 2 uses
  %scevgep239 = getelementptr i8, ptr %scevgep, i64 %i.ao
  %scevgep240 = getelementptr i8, ptr %.sroa.029.052.i, i64 -4
  %scevgep241 = getelementptr i8, ptr %scevgep240, i64 %i.ao
  %bound0 = icmp ult ptr %scevgep239, %.sroa.029.052.i
  %bound1 = icmp ult ptr %scevgep241, %i.ae
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader307, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 9223372036854775800     ; 3 uses
  %i.ap = mul i64 %n.vec, -4                      ; 2 uses
  %i.aq = getelementptr i8, ptr %.sroa.029.052.i, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ae, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.029.052.i, i64 %i.as ; 2 uses
  %next.gep242 = getelementptr i8, ptr %i.ae, i64 %i.as ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %next.gep242, i64 -16 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %next.gep242, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.at, align 4, !tbaa !69, !alias.scope !3959, !noalias !3962
  %wide.load243 = load <4 x i32>, ptr %i.au, align 4, !tbaa !69, !alias.scope !3959, !noalias !3962
  %i.av = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load244 = load <4 x i32>, ptr %i.av, align 4, !tbaa !69, !alias.scope !3968, !noalias !3969
  %wide.load245 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !69, !alias.scope !3968, !noalias !3969
  store <4 x i32> %wide.load244, ptr %i.at, align 4, !tbaa !69, !alias.scope !3959, !noalias !3962
  store <4 x i32> %wide.load245, ptr %i.au, align 4, !tbaa !69, !alias.scope !3959, !noalias !3962
  store <4 x i32> %wide.load, ptr %i.av, align 4, !tbaa !69, !alias.scope !3968, !noalias !3969
  store <4 x i32> %wide.load243, ptr %i.aw, align 4, !tbaa !69, !alias.scope !3968, !noalias !3969
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !3970

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i.i.i.preheader307

.lr.ph.i.i.i.preheader307:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.0.0.i.i.ph = phi ptr [ %.sroa.029.052.i, %vector.memcheck ], [ %.sroa.029.052.i, %.lr.ph.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.ph308 = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader307, %.lr.ph.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %.sroa.0.0.i.i.ph, %.lr.ph.i.i.i.preheader307 ]
  %i.ay = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.ph308, %.lr.ph.i.i.i.preheader307 ]
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -4 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -4 ; 4 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !69, !noalias !3969
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !69, !noalias !3969
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !69, !noalias !3969
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !69, !noalias !3969
  %.not.i.i.i = icmp eq ptr %i.az, %i.s
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3971

bb.g:                                             ; preds = %.lr.ph.i8
  %i.bd = getelementptr inbounds i8, ptr %.sroa.020.050.i, i64 -4 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.029.052.i, i64 -4 ; 4 uses
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !69, !noalias !3956
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !69, !noalias !3956
  %.not36.i = icmp slt i32 %i.bf, %i.bg
  br i1 %.not36.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds i8, ptr %.sroa.024.051.i, i64 -4 ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !69, !noalias !3956
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !69, !noalias !3956
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !69, !noalias !3956
  %i.bm = load i32, ptr %i.bd, align 4, !tbaa !69, !noalias !3956
  store i32 %i.bm, ptr %i.bi, align 4, !tbaa !69, !noalias !3956
  %i.bn = load i32, ptr %i.bh, align 4, !tbaa !69, !noalias !3956
  store i32 %i.bn, ptr %i.bd, align 4, !tbaa !69, !noalias !3956
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !69, !noalias !3956
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !69, !noalias !3956
  %i.br = load i32, ptr %i.bo, align 4, !tbaa !69, !noalias !3956
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !69, !noalias !3956
  %i.bs = load i32, ptr %i.be, align 4, !tbaa !69, !noalias !3956
  store i32 %i.bs, ptr %i.bo, align 4, !tbaa !69, !noalias !3956
  store i32 %i.bq, ptr %i.be, align 4, !tbaa !69, !noalias !3956
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i = phi ptr [ %i.bo, %bb.i ], [ %i.bi, %bb.h ] ; 2 uses
  %i.bt = phi ptr [ %i.bp, %bb.i ], [ %i.bj, %bb.h ] ; 2 uses
  %.sroa.020.1.i = phi ptr [ %.sroa.020.050.i, %bb.i ], [ %i.bd, %bb.h ] ; 2 uses
  %.sroa.024.1.i = phi ptr [ %.sroa.024.051.i, %bb.i ], [ %i.bh, %bb.h ] ; 2 uses
  %.sroa.029.1.i = phi ptr [ %i.be, %bb.i ], [ %.sroa.029.052.i, %bb.h ] ; 2 uses
  %.not35.i = icmp eq ptr %.sink.i, %i.s
  br i1 %.not35.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, label %.lr.ph.i8, !llvm.loop !3972

_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i: ; preds = %bb.j, %.lr.ph.i.i.i, %middle.block, %bb.f
  %.sroa.052.1 = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %i.z, %bb.f ], [ %i.aq, %middle.block ], [ %i.bt, %bb.j ]
  %.sroa.020.046.i = phi ptr [ %.sroa.020.050.i, %.lr.ph.i.i.i ], [ %i.x, %bb.f ], [ %.sroa.020.050.i, %middle.block ], [ %.sroa.020.1.i, %bb.j ]
  %.sroa.024.044.i = phi ptr [ %.sroa.024.051.i, %.lr.ph.i.i.i ], [ %i.w, %bb.f ], [ %.sroa.024.051.i, %middle.block ], [ %.sroa.024.1.i, %bb.j ]
  %.sroa.029.042.i = phi ptr [ %.sroa.029.052.i, %.lr.ph.i.i.i ], [ %i.r, %bb.f ], [ %.sroa.029.052.i, %middle.block ], [ %.sroa.029.1.i, %bb.j ]
  store ptr %.sroa.020.046.i, ptr %5, align 8, !tbaa !2933, !noalias !3956
  %.pre = load ptr, ptr %2, align 8, !tbaa !2933
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  br i1 %or.cond76, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 4 uses
  %i.bv = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 4 uses
  %i.bw = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 4 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !69, !noalias !3973
  %i.by = load i32, ptr %i.bv, align 4, !tbaa !69, !noalias !3973
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !69, !noalias !3973
  %i.bz = load i32, ptr %i.bu, align 4, !tbaa !69, !noalias !3973
  store i32 %i.bz, ptr %i.bv, align 4, !tbaa !69, !noalias !3973
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !69, !noalias !3973
  %i.ca = icmp eq ptr %i.bv, %i.s
  br i1 %i.ca, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.l, %bb.p
  %indvar = phi i64 [ %indvar.next, %bb.p ], [ 0, %bb.l ] ; 3 uses
  %i.cb = phi ptr [ %i.da, %bb.p ], [ %i.bv, %bb.l ] ; 6 uses
  %.sroa.022.040.i = phi ptr [ %.sroa.022.1.i, %bb.p ], [ %i.r, %bb.l ] ; 10 uses
  %.sroa.016.039.i = phi ptr [ %.sroa.016.1.i, %bb.p ], [ %i.bu, %bb.l ] ; 5 uses
  %i.cc = phi ptr [ %i.db, %bb.p ], [ %i.bw, %bb.l ]
  %i.cd = icmp eq ptr %.sroa.016.039.i, %i.u
  br i1 %i.cd, label %.lr.ph.i.i.i13.preheader, label %bb.m

.lr.ph.i.i.i13.preheader:                         ; preds = %.lr.ph.i10
  %i.ce = add i64 %i.n, -8
  %9 = sub i64 %i.ce, %i.t
  %10 = lshr i64 %9, 2
  %11 = add nuw nsw i64 %10, 1
  %12 = mul i64 %indvar, 4611686018427387903
  %i.cf = add i64 %12, %11                        ; 3 uses
  %min.iters.check256 = icmp ult i64 %i.cf, 20
  br i1 %min.iters.check256, label %.lr.ph.i.i.i13.preheader298, label %vector.memcheck247

vector.memcheck247:                               ; preds = %.lr.ph.i.i.i13.preheader
  %i.cg = add i64 %i.n, -8
  %i.ch = sub i64 %i.cg, %i.t
  %13 = and i64 %i.ch, -4                         ; 2 uses
  %14 = sub i64 -8, %13
  %scevgep245 = getelementptr i8, ptr %.lcssa.i, i64 %14
  %15 = shl i64 %indvar, 2
  %reass.sub267 = sub i64 %15, %13
  %scevgep250 = getelementptr i8, ptr %.sroa.022.040.i, i64 %reass.sub267
  %scevgep251 = getelementptr i8, ptr %scevgep250, i64 -4
  %bound0252 = icmp ult ptr %scevgep245, %.sroa.022.040.i
  %bound1253 = icmp ult ptr %scevgep251, %i.cb
  %found.conflict254 = and i1 %bound0252, %bound1253
  br i1 %found.conflict254, label %.lr.ph.i.i.i13.preheader298, label %vector.ph257

vector.ph257:                                     ; preds = %vector.memcheck247
  %n.vec258 = and i64 %i.cf, -8                   ; 3 uses
  %i.ci = mul i64 %n.vec258, -4                   ; 2 uses
  %i.cj = getelementptr i8, ptr %.sroa.022.040.i, i64 %i.ci ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cb, i64 %i.ci
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph257
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next267, %vector.body259 ] ; 2 uses
  %i.cl = mul i64 %index260, -4                   ; 2 uses
  %next.gep261 = getelementptr i8, ptr %.sroa.022.040.i, i64 %i.cl ; 2 uses
  %next.gep262 = getelementptr i8, ptr %i.cb, i64 %i.cl ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %next.gep262, i64 -16 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %next.gep262, i64 -32 ; 2 uses
  %wide.load263 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !69, !alias.scope !3976, !noalias !3979
  %wide.load264 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !69, !alias.scope !3976, !noalias !3979
  %i.co = getelementptr inbounds i8, ptr %next.gep261, i64 -16 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %next.gep261, i64 -32 ; 2 uses
  %wide.load265 = load <4 x i32>, ptr %i.co, align 4, !tbaa !69, !alias.scope !3985, !noalias !3986
  %wide.load266 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !69, !alias.scope !3985, !noalias !3986
  store <4 x i32> %wide.load265, ptr %i.cm, align 4, !tbaa !69, !alias.scope !3976, !noalias !3979
  store <4 x i32> %wide.load266, ptr %i.cn, align 4, !tbaa !69, !alias.scope !3976, !noalias !3979
  store <4 x i32> %wide.load263, ptr %i.co, align 4, !tbaa !69, !alias.scope !3985, !noalias !3986
  store <4 x i32> %wide.load264, ptr %i.cp, align 4, !tbaa !69, !alias.scope !3985, !noalias !3986
  %index.next267 = add nuw i64 %index260, 8       ; 2 uses
  %i.cq = icmp eq i64 %index.next267, %n.vec258
  br i1 %i.cq, label %middle.block268, label %vector.body259, !llvm.loop !3987

middle.block268:                                  ; preds = %vector.body259
  %cmp.n269 = icmp eq i64 %i.cf, %n.vec258
  br i1 %cmp.n269, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i.i.i13.preheader298

.lr.ph.i.i.i13.preheader298:                      ; preds = %vector.memcheck247, %.lr.ph.i.i.i13.preheader, %middle.block268
  %.sroa.0.0.i.i14.ph = phi ptr [ %.sroa.022.040.i, %vector.memcheck247 ], [ %.sroa.022.040.i, %.lr.ph.i.i.i13.preheader ], [ %i.cj, %middle.block268 ]
  %.ph = phi ptr [ %i.cb, %vector.memcheck247 ], [ %i.cb, %.lr.ph.i.i.i13.preheader ], [ %i.ck, %middle.block268 ]
  br label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %.lr.ph.i.i.i13.preheader298, %.lr.ph.i.i.i13
  %.sroa.0.0.i.i14 = phi ptr [ %i.ct, %.lr.ph.i.i.i13 ], [ %.sroa.0.0.i.i14.ph, %.lr.ph.i.i.i13.preheader298 ]
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i.i.i13 ], [ %.ph, %.lr.ph.i.i.i13.preheader298 ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i.i14, i64 -4 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !69, !noalias !3986
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !69, !noalias !3986
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !69, !noalias !3986
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !69, !noalias !3986
  %.not.i.i.i15 = icmp eq ptr %i.cs, %i.s
  br i1 %.not.i.i.i15, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i.i.i13, !llvm.loop !3988

bb.m:                                             ; preds = %.lr.ph.i10
  %i.cw = getelementptr inbounds i8, ptr %.sroa.016.039.i, i64 -4 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.022.040.i, i64 -4 ; 4 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !69, !noalias !3973
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !69, !noalias !3973
  %.not28.i = icmp slt i32 %i.cy, %i.cz
  %i.da = getelementptr inbounds i8, ptr %i.cb, i64 -4 ; 5 uses
  %i.db = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 4 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !69, !noalias !3973 ; 2 uses
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !69, !noalias !3973
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !69, !noalias !3973
  br i1 %.not28.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = load i32, ptr %i.cw, align 4, !tbaa !69, !noalias !3973
  store i32 %i.de, ptr %i.da, align 4, !tbaa !69, !noalias !3973
  store i32 %i.dc, ptr %i.cw, align 4, !tbaa !69, !noalias !3973
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.df = load i32, ptr %i.cx, align 4, !tbaa !69, !noalias !3973
  store i32 %i.df, ptr %i.da, align 4, !tbaa !69, !noalias !3973
  store i32 %i.dc, ptr %i.cx, align 4, !tbaa !69, !noalias !3973
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.016.1.i = phi ptr [ %.sroa.016.039.i, %bb.o ], [ %i.cw, %bb.n ] ; 2 uses
  %.sroa.022.1.i = phi ptr [ %i.cx, %bb.o ], [ %.sroa.022.040.i, %bb.n ] ; 2 uses
  %i.dg = icmp eq ptr %i.da, %i.s
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dg, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i10, !llvm.loop !3989

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit: ; preds = %bb.p, %.lr.ph.i.i.i13, %middle.block268, %bb.k, %bb.l, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i, %bb.e
  %i.dh = phi ptr [ %.pre, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ], [ %i.s, %bb.e ], [ %i.s, %middle.block268 ], [ %i.s, %bb.k ], [ %i.s, %bb.l ], [ %i.s, %.lr.ph.i.i.i13 ], [ %i.s, %bb.p ]
  %.sroa.052.0 = phi ptr [ %.sroa.052.1, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ], [ %i.r, %bb.e ], [ %i.cj, %middle.block268 ], [ %i.r, %bb.k ], [ %i.bw, %bb.l ], [ %i.ct, %.lr.ph.i.i.i13 ], [ %i.db, %bb.p ]
  %.sroa.059.0 = phi ptr [ %.sroa.024.044.i, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ], [ %i.c, %bb.e ], [ %.sroa.016.039.i, %middle.block268 ], [ %i.c, %bb.k ], [ %i.bu, %bb.l ], [ %.sroa.016.039.i, %.lr.ph.i.i.i13 ], [ %.sroa.016.1.i, %bb.p ]
  %.sroa.069.0 = phi ptr [ %.sroa.029.042.i, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit.i ], [ %i.r, %bb.e ], [ %.sroa.022.040.i, %middle.block268 ], [ %i.r, %bb.k ], [ %i.r, %bb.l ], [ %.sroa.022.040.i, %.lr.ph.i.i.i13 ], [ %.sroa.022.1.i, %bb.p ]
  store ptr %i.dh, ptr %1, align 8, !tbaa !2933
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit
  %.sroa.059.1 = phi ptr [ %.sroa.059.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit ], [ %i.c, %bb.a ] ; 5 uses
  %.sroa.065.0 = phi ptr [ %.sroa.052.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit ], [ %i.b, %bb.a ] ; 4 uses
  %.sroa.069.1 = phi ptr [ %.sroa.069.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.di = load ptr, ptr %4, align 8, !tbaa !2933  ; 3 uses
  %i.dj = load ptr, ptr %1, align 8, !tbaa !2933  ; 4 uses
  %.not.i21 = icmp eq ptr %.sroa.059.1, %i.di
  %.not17.i = icmp eq ptr %.sroa.065.0, %.sroa.069.1
  %or.cond78 = select i1 %.not.i21, i1 true, i1 %.not17.i ; 2 uses
  br i1 %.not, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %or.cond78, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = load ptr, ptr %5, align 8, !tbaa !2933, !noalias !3990
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.s
  %.sroa.030.0 = phi ptr [ %i.dj, %bb.s ], [ %i.dq, %.split.i ]
  %.sroa.010.0.ph.i = phi ptr [ %i.dk, %bb.s ], [ %i.dl, %.split.i ] ; 2 uses
  %.sroa.013.0.ph.i = phi ptr [ %.sroa.059.1, %bb.s ], [ %i.dp, %.split.i ] ; 2 uses
  %.sroa.017.0.ph.i = phi ptr [ %.sroa.069.1, %bb.s ], [ %.sroa.017.0.i, %.split.i ]
  %i.dl = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i, i64 -4 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.outer.i
  %.sroa.030.1 = phi ptr [ %.sroa.030.0, %.outer.i ], [ %i.dt, %bb.u ] ; 2 uses
  %.sroa.017.0.i = phi ptr [ %.sroa.017.0.ph.i, %.outer.i ], [ %i.dm, %bb.u ] ; 3 uses
  %i.dm = getelementptr inbounds i8, ptr %.sroa.017.0.i, i64 -4 ; 5 uses
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !69, !noalias !3990 ; 2 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !69, !noalias !3990 ; 2 uses
  %.not26.i = icmp slt i32 %i.dn, %i.do
  br i1 %.not26.i, label %bb.u, label %.split.i

.split.i:                                         ; preds = %bb.t
  %i.dp = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i, i64 -4 ; 5 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.030.1, i64 -4 ; 4 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !69, !noalias !3990
  store i32 %i.dn, ptr %i.dq, align 4, !tbaa !69, !noalias !3990
  %i.ds = load i32, ptr %i.dp, align 4, !tbaa !69, !noalias !3990
  store i32 %i.ds, ptr %i.dl, align 4, !tbaa !69, !noalias !3990
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !69, !noalias !3990
  %.not28.i18 = icmp eq ptr %i.dp, %i.di
  br i1 %.not28.i18, label %.loopexit.i19, label %.outer.i, !llvm.loop !3163

bb.u:                                             ; preds = %bb.t
  %i.dt = getelementptr inbounds i8, ptr %.sroa.030.1, i64 -4 ; 4 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !69, !noalias !3990
  store i32 %i.do, ptr %i.dt, align 4, !tbaa !69, !noalias !3990
  store i32 %i.du, ptr %i.dm, align 4, !tbaa !69, !noalias !3990
  %.not27.i20 = icmp eq ptr %i.dm, %.sroa.065.0
  br i1 %.not27.i20, label %.loopexit.i19, label %bb.t, !llvm.loop !3163

.loopexit.i19:                                    ; preds = %.split.i, %bb.u
  %.sroa.030.2 = phi ptr [ %i.dt, %bb.u ], [ %i.dq, %.split.i ]
  %.sroa.017.124.i = phi ptr [ %i.dm, %bb.u ], [ %.sroa.017.0.i, %.split.i ]
  %.sroa.013.123.i = phi ptr [ %.sroa.013.0.ph.i, %bb.u ], [ %i.dp, %.split.i ]
  %.sroa.010.122.i = phi ptr [ %.sroa.010.0.ph.i, %bb.u ], [ %i.dl, %.split.i ]
  store ptr %.sroa.010.122.i, ptr %5, align 8, !tbaa !2933, !noalias !3990
  br label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit

bb.v:                                             ; preds = %bb.q
  br i1 %or.cond78, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.v, %bb.w
  %.sroa.023.0.ph = phi ptr [ %i.dz, %bb.w ], [ %i.dj, %bb.v ]
  %.sroa.07.0.i.ph = phi ptr [ %i.eb, %bb.w ], [ %.sroa.059.1, %bb.v ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.w ], [ %.sroa.069.1, %bb.v ]
  %i.dv = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.x
  %.sroa.023.0 = phi ptr [ %i.dz, %bb.x ], [ %.sroa.023.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.dw, %bb.x ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 5 uses
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !69, !noalias !3993 ; 2 uses
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !69, !noalias !3993 ; 2 uses
  %.not18.i = icmp slt i32 %i.dx, %i.dy
  %i.dz = getelementptr inbounds i8, ptr %.sroa.023.0, i64 -4 ; 7 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !69, !noalias !3993 ; 2 uses
  br i1 %.not18.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.preheader.i
  %i.eb = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 4 uses
  store i32 %i.dx, ptr %i.dz, align 4, !tbaa !69, !noalias !3993
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !69, !noalias !3993
  %i.ec = icmp eq ptr %i.eb, %i.di
  br i1 %i.ec, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !3173

bb.x:                                             ; preds = %.preheader.i
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !69, !noalias !3993
  store i32 %i.ea, ptr %i.dw, align 4, !tbaa !69, !noalias !3993
  %i.ed = icmp eq ptr %i.dw, %.sroa.065.0
  br i1 %i.ed, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %.preheader.i, !llvm.loop !3173

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit: ; preds = %bb.x, %bb.w, %bb.v, %.loopexit.i19, %bb.r
  %.sroa.037.0 = phi ptr [ %.sroa.030.2, %.loopexit.i19 ], [ %i.dj, %bb.r ], [ %i.dj, %bb.v ], [ %i.dz, %bb.w ], [ %i.dz, %bb.x ]
  %.sroa.059.2 = phi ptr [ %.sroa.013.123.i, %.loopexit.i19 ], [ %.sroa.059.1, %bb.r ], [ %.sroa.059.1, %bb.v ], [ %.sroa.07.0.i.ph, %bb.x ], [ %i.eb, %bb.w ]
  %.sroa.069.2 = phi ptr [ %.sroa.017.124.i, %.loopexit.i19 ], [ %.sroa.069.1, %bb.r ], [ %.sroa.069.1, %bb.v ], [ %i.dw, %bb.x ], [ %.sroa.012.0.i, %bb.w ]
  store ptr %.sroa.037.0, ptr %1, align 8, !tbaa !2933
  store ptr %.sroa.069.2, ptr %6, align 8, !tbaa !2933
  store ptr %.sroa.065.0, ptr %7, align 8, !tbaa !2933
  store ptr %.sroa.059.2, ptr %3, align 8, !tbaa !2933
  %i.ee = load ptr, ptr %1, align 8, !tbaa !2933
  store ptr %i.ee, ptr %0, align 8, !tbaa !2933
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_:bb.a

bb.aj:                                            ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit79
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %4
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1352, !noalias !8364 ; 2 uses
  %.pre135 = load ptr, ptr %i.ef, align 8, !tbaa !1354
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit81

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit81: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit79, %bb.aj
  %i.eg = phi ptr [ %i.eb, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit79 ], [ %.pre135, %bb.aj ]
  %.sroa.0.0 = phi ptr [ %i.cr, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit79 ], [ %i.ef, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.eh = load ptr, ptr %i.ed, align 8, !tbaa !1354
  %i.ei = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.ej = ptrtoint ptr %i.eb to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = ashr exact i64 %i.ek, 3
  %i.em = ptrtoint ptr %i.eg to i64
  %i.en = sub i64 %i.em, %i.ei
  %i.eo = ashr exact i64 %i.en, 3
  %.sroa.speculated.i82 = call i64 @llvm.umin.i64(i64 %i.el, i64 %i.eo)
  %.not.i83 = icmp ult i64 %i.cj, %.sroa.speculated.i82
  br i1 %.not.i83, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit81
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.cr, ptr %6, align 8, !tbaa !1450
  store ptr %i.ed, ptr %7, align 8, !tbaa !1450
  store ptr %.sroa.0.0, ptr %8, align 8, !tbaa !1450
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_13adaptive_xbufIiS4_mEEEEvT_SH_SH_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ep = load i64, ptr %i.a, align 8, !tbaa !2566
  %.not.i.i84 = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i84, label %_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_SH_T0_RT1_.exit86, label %.preheader.preheader.i.i.i85

.preheader.preheader.i.i.i85:                     ; preds = %bb.ak
  store i64 0, ptr %i.a, align 8, !tbaa !2566
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_SH_T0_RT1_.exit86

bb.al:                                            ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit81
  store ptr %i.cr, ptr %9, align 8, !tbaa !1450
  store ptr %i.ed, ptr %10, align 8, !tbaa !1450
  store ptr %.sroa.0.0, ptr %11, align 8, !tbaa !1450
  %i.eq = load ptr, ptr %5, align 8, !tbaa !2564
  call void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES4_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef %i.eq, i64 noundef %i.cj)
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_SH_T0_RT1_.exit86

_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_SH_T0_RT1_.exit86: ; preds = %bb.ak, %.preheader.preheader.i.i.i85, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.am

bb.am:                                            ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit57, %_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_SH_T0_RT1_.exit86, %_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_SH_T0_RT1_.exit77, %_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_SH_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib29merge_sort_uninitialized_copyINS_9container22stable_vector_iteratorIPiLb0EEES4_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_T0_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 3 uses
  %4 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 3 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1450   ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1354
  %i.c = load ptr, ptr %0, align 8, !tbaa !1450   ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1354 ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 3 uses
  %i.i = icmp ult i64 %i.h, 17
  br i1 %i.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not20.i = icmp eq ptr %i.c, %i.a
  br i1 %.not20.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESC_EEvT0_SE_T1_T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !69
  store i32 %i.k, ptr %2, align 4, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1352 ; 2 uses
  %.not2129.i = icmp eq ptr %i.m, %i.a
  br i1 %.not2129.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESC_EEvT0_SE_T1_T_.exit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %bb.c, %bb.g
  %i.n = phi ptr [ %i.y, %bb.g ], [ %i.m, %bb.c ] ; 2 uses
  %.01930.i = phi ptr [ %storemerge31.i, %bb.g ], [ %2, %bb.c ] ; 4 uses
  %storemerge31.i = getelementptr inbounds nuw i8, ptr %.01930.i, i64 4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69   ; 2 uses
  %i.q = load i32, ptr %.01930.i, align 4, !tbaa !69 ; 2 uses
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph32.i
  store i32 %i.q, ptr %storemerge31.i, align 4, !tbaa !69
  %.not23.i = icmp eq ptr %.01930.i, %2
  br i1 %.not23.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %storemerge925.i = phi ptr [ %storemerge9.i, %bb.e ], [ %.01930.i, %bb.d ] ; 3 uses
  %storemerge9.i = getelementptr i8, ptr %storemerge925.i, i64 -4 ; 3 uses
  %i.s = load i32, ptr %i.o, align 4, !tbaa !69
  %i.t = load i32, ptr %storemerge9.i, align 4, !tbaa !69 ; 2 uses
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  store i32 %i.t, ptr %storemerge925.i, align 4, !tbaa !69
  %.not.i = icmp eq ptr %storemerge9.i, %2
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !8367

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i, %bb.d
  %storemerge9.lcssa.i = phi ptr [ %2, %bb.d ], [ %storemerge925.i, %.lr.ph.i ], [ %2, %bb.e ]
  %i.v = load i32, ptr %i.o, align 4, !tbaa !69
  store i32 %i.v, ptr %storemerge9.lcssa.i, align 4, !tbaa !69
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph32.i
  store i32 %i.p, ptr %storemerge31.i, align 4, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge.i
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !1354
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1352 ; 2 uses
  %.not21.i = icmp eq ptr %i.y, %i.a
  br i1 %.not21.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESC_EEvT0_SE_T1_T_.exit, label %.lr.ph32.i, !llvm.loop !8368

bb.h:                                             ; preds = %bb.a
  %i.z = lshr i64 %i.h, 1                         ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8369)
  store ptr %i.c, ptr %3, align 8, !tbaa !1450, !alias.scope !8369
  %.not.i.i = icmp eq i64 %i.z, 0                 ; 2 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1352, !noalias !8369
  store ptr %i.ab, ptr %3, align 8, !tbaa !1450, !alias.scope !8369
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit: ; preds = %bb.h, %bb.i
  store ptr %i.a, ptr %4, align 8, !tbaa !1450
  %.idx = shl nuw nsw i64 %i.z, 2                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 8 uses
  call void @_ZN5boost7movelib29merge_sort_uninitialized_copyINS_9container22stable_vector_iteratorIPiLb0EEES4_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_T0_T1_(ptr noundef nonnull align 8 dead_on_return %3, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef %i.ac)
  %i.ad = load ptr, ptr %0, align 8, !tbaa !1450  ; 4 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !1450
  call void @llvm.experimental.noalias.scope.decl(metadata !8372)
  store ptr %i.ad, ptr %6, align 8, !tbaa !1450, !alias.scope !8372
  br i1 %.not.i.i, label %._crit_edge.i.thread.critedge, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1354, !noalias !8372
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.z
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1352, !noalias !8372 ; 2 uses
  store ptr %i.ag, ptr %6, align 8, !tbaa !1450, !alias.scope !8372
  store ptr %i.ag, ptr %7, align 8, !tbaa !1450, !alias.scope !8375
  call void @_ZN5boost7movelib15merge_sort_copyINS_9container22stable_vector_iteratorIPiLb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_T0_T1_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7)
  %i.ah = load ptr, ptr %0, align 8, !tbaa !1450, !noalias !8379
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1354, !noalias !8379
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.z
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1352, !noalias !8379 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1354, !noalias !8382
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.z
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1352, !noalias !8382 ; 7 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.h ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.an
  br i1 %.not, label %._crit_edge.i, label %.lr.ph.i34

._crit_edge.i.thread.critedge:                    ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit
  store ptr %i.ad, ptr %7, align 8, !tbaa !1450, !alias.scope !8375
  call void @_ZN5boost7movelib15merge_sort_copyINS_9container22stable_vector_iteratorIPiLb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_T0_T1_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7)
  br label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESC_EEvT0_SE_T1_T_.exit

.lr.ph.i34:                                       ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27, %bb.m
  %indvar = phi i64 [ %indvar.next, %bb.m ], [ 0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27 ] ; 2 uses
  %.promoted.i = phi ptr [ %i.cp, %bb.m ], [ %i.ak, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27 ] ; 6 uses
  %.040.i = phi ptr [ %.1.i, %bb.m ], [ %i.ac, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27 ] ; 4 uses
  %.02739.i = phi ptr [ %i.cq, %bb.m ], [ %2, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27 ] ; 5 uses
  %i.ap = icmp eq ptr %.040.i, %i.ao
  br i1 %i.ap, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %.lr.ph.i34
  %.not43.i = icmp eq ptr %.02739.i, %i.ac
  br i1 %.not43.i, label %._crit_edge46.i, label %.lr.ph45.i.preheader

.lr.ph45.i.preheader:                             ; preds = %.preheader.i
  %i.aq = add nsw i64 %.idx, -4
  %8 = lshr exact i64 %i.aq, 2                    ; 2 uses
  %9 = add nuw nsw i64 %8, 1
  %10 = mul i64 %indvar, 4611686018427387903      ; 2 uses
  %11 = add i64 %10, %9
  %i.ar = add i64 %8, %10
  %xtraiter = and i64 %11, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph45.i.prol.loopexit, label %.lr.ph45.i.prol

.lr.ph45.i.prol:                                  ; preds = %.lr.ph45.i.preheader, %.lr.ph45.i.prol
  %i.as = phi ptr [ %i.ay, %.lr.ph45.i.prol ], [ %.promoted.i, %.lr.ph45.i.preheader ] ; 2 uses
  %.12844.i.prol = phi ptr [ %i.av, %.lr.ph45.i.prol ], [ %.02739.i, %.lr.ph45.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph45.i.prol ], [ 0, %.lr.ph45.i.preheader ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !69
  store i32 %i.au, ptr %.12844.i.prol, align 4, !tbaa !69
  %i.av = getelementptr inbounds nuw i8, ptr %.12844.i.prol, i64 4 ; 2 uses
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !1354
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1352 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph45.i.prol.loopexit, label %.lr.ph45.i.prol, !llvm.loop !8385

.lr.ph45.i.prol.loopexit:                         ; preds = %.lr.ph45.i.prol, %.lr.ph45.i.preheader
  %.lcssa119.unr = phi ptr [ poison, %.lr.ph45.i.preheader ], [ %i.ay, %.lr.ph45.i.prol ]
  %.unr = phi ptr [ %.promoted.i, %.lr.ph45.i.preheader ], [ %i.ay, %.lr.ph45.i.prol ]
  %.12844.i.unr = phi ptr [ %.02739.i, %.lr.ph45.i.preheader ], [ %i.av, %.lr.ph45.i.prol ]
  %i.az = icmp ult i64 %i.ar, 3
  br i1 %i.az, label %._crit_edge46.i, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %.lr.ph45.i.prol.loopexit, %.lr.ph45.i
  %i.ba = phi ptr [ %i.by, %.lr.ph45.i ], [ %.unr, %.lr.ph45.i.prol.loopexit ] ; 2 uses
  %.12844.i = phi ptr [ %i.bv, %.lr.ph45.i ], [ %.12844.i.unr, %.lr.ph45.i.prol.loopexit ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !69
  store i32 %i.bc, ptr %.12844.i, align 4, !tbaa !69
  %i.bd = getelementptr inbounds nuw i8, ptr %.12844.i, i64 4
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !1354
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1352 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !69
  store i32 %i.bi, ptr %i.bd, align 4, !tbaa !69
  %i.bj = getelementptr inbounds nuw i8, ptr %.12844.i, i64 8
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !1354
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1352 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !69
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !69
  %i.bp = getelementptr inbounds nuw i8, ptr %.12844.i, i64 12
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !1354
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1352 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !69
  store i32 %i.bu, ptr %i.bp, align 4, !tbaa !69
  %i.bv = getelementptr inbounds nuw i8, ptr %.12844.i, i64 16 ; 2 uses
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !1354
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1352 ; 2 uses
  %.not.i35.3 = icmp eq ptr %i.bv, %i.ac
  br i1 %.not.i35.3, label %._crit_edge46.i, label %.lr.ph45.i, !llvm.loop !8386

._crit_edge46.i:                                  ; preds = %.lr.ph45.i.prol.loopexit, %.lr.ph45.i, %.preheader.i
  %i.bz = phi ptr [ %.promoted.i, %.preheader.i ], [ %.lcssa119.unr, %.lr.ph45.i.prol.loopexit ], [ %i.by, %.lr.ph45.i ] ; 2 uses
  %.not3.i.i = icmp eq ptr %i.bz, %i.an
  br i1 %.not3.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESC_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge46.i, %.lr.ph.i.i
  %i.ca = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %i.bz, %._crit_edge46.i ] ; 2 uses
  %.04.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.ac, %._crit_edge46.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !69
  store i32 %i.cc, ptr %.04.i.i, align 4, !tbaa !69
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !1354
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1352 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %.not.i.i36 = icmp eq ptr %i.cf, %i.an
  br i1 %.not.i.i36, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESC_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i, !llvm.loop !7136

bb.j:                                             ; preds = %.lr.ph.i34
  %i.ch = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 8
  %i.ci = load i32, ptr %.040.i, align 4, !tbaa !69 ; 2 uses
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !69 ; 2 uses
  %i.ck = icmp slt i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %.040.i, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cm = load ptr, ptr %.promoted.i, align 8, !tbaa !1354
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1352
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cp = phi ptr [ %.promoted.i, %bb.k ], [ %i.co, %bb.l ] ; 3 uses
  %.sink.i = phi i32 [ %i.ci, %bb.k ], [ %i.cj, %bb.l ]
  %.1.i = phi ptr [ %i.cl, %bb.k ], [ %.040.i, %bb.l ] ; 2 uses
  store i32 %.sink.i, ptr %.02739.i, align 4, !tbaa !69
  %i.cq = getelementptr inbounds nuw i8, ptr %.02739.i, i64 4 ; 2 uses
  %i.cr = icmp ne ptr %i.cp, %i.an
  %i.cs = icmp ne ptr %i.cq, %i.ac
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ct, label %.lr.ph.i34, label %._crit_edge.i, !llvm.loop !8387

._crit_edge.i:                                    ; preds = %bb.m, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27
  %.0.lcssa.i = phi ptr [ %i.ac, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27 ], [ %.1.i, %bb.m ]
  %.lcssa35.i = phi ptr [ %i.ak, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27 ], [ %i.cp, %bb.m ] ; 2 uses
  %.not17.i.i.i = icmp eq ptr %.lcssa35.i, %i.an
  br i1 %.not17.i.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESC_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i, %bb.q
  %i.cu = phi ptr [ %i.dl, %bb.q ], [ %.lcssa35.i, %._crit_edge.i ] ; 4 uses
  %.019.i.i.i = phi ptr [ %i.dm, %bb.q ], [ %i.ac, %._crit_edge.i ] ; 3 uses
  %.0918.i.i.i = phi ptr [ %.1.i.i.i, %bb.q ], [ %.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %i.cv = icmp eq ptr %.0918.i.i.i, %i.ao
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i, label %bb.n

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i
  %i.cw = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i ], [ %i.cu, %.lr.ph.i.i.i ] ; 2 uses
  %.04.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i ], [ %.019.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !69
  store i32 %i.cy, ptr %.04.i.i.i.i.i, align 4, !tbaa !69
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !1354
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1352 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.db, %i.an
  br i1 %.not.i.i.i.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESC_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !7136

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.de = load i32, ptr %.0918.i.i.i, align 4, !tbaa !69 ; 2 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !69 ; 2 uses
  %i.dg = icmp slt i32 %i.de, %i.df
  br i1 %i.dg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %.0918.i.i.i, i64 4
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.di = load ptr, ptr %i.cu, align 8, !tbaa !1354
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1352
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dl = phi ptr [ %i.cu, %bb.o ], [ %i.dk, %bb.p ] ; 2 uses
  %.sink.i.i.i = phi i32 [ %i.de, %bb.o ], [ %i.df, %bb.p ]
  %.1.i.i.i = phi ptr [ %i.dh, %bb.o ], [ %.0918.i.i.i, %bb.p ]
  store i32 %.sink.i.i.i, ptr %.019.i.i.i, align 4, !tbaa !69
  %i.dm = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.dl, %i.an
  br i1 %.not.i.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESC_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i.i, !llvm.loop !8388

_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESC_EEvT0_SE_T1_T_.exit: ; preds = %.lr.ph.i.i, %bb.q, %.lr.ph.i.i.i.i.i, %bb.g, %._crit_edge.i.thread.critedge, %._crit_edge46.i, %._crit_edge.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15merge_sort_copyINS_9container22stable_vector_iteratorIPiLb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_T0_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #1 comdat {
bb.a:
  %.sroa.02.i = alloca ptr, align 8               ; 5 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 3 uses
  %4 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 3 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %.sroa.031 = alloca ptr, align 8                ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1450   ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1354
  %i.c = load ptr, ptr %0, align 8, !tbaa !1450   ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1354 ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp ult i64 %i.h, 17
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !1450   ; 4 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.l, ptr %i.m, align 4, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1352 ; 2 uses
  %.not2534.i.i = icmp eq ptr %i.o, %i.a
  br i1 %.not2534.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_T_.exit, label %.lr.ph36.i.preheader.i

.lr.ph36.i.preheader.i:                           ; preds = %bb.c
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !1354
  br label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.critedge.i.i, %.lr.ph36.i.preheader.i
  %i.q = phi ptr [ %i.ap, %.critedge.i.i ], [ %i.o, %.lr.ph36.i.preheader.i ] ; 2 uses
  %.pn.i = phi ptr [ %i.s, %.critedge.i.i ], [ %i.p, %.lr.ph36.i.preheader.i ]
  %.sroa.021.035.i.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.sroa.021.035.i.i = load ptr, ptr %.sroa.021.035.i.in.i, align 8, !tbaa !1352 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load ptr, ptr %.sroa.021.035.i.i, align 8, !tbaa !1354 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1352 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.r, align 4, !tbaa !69
  %i.x = load i32, ptr %i.v, align 4, !tbaa !69   ; 2 uses
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %bb.d, label %.critedge.i.i

bb.d:                                             ; preds = %.lr.ph36.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.021.035.i.i, i64 8
  store i32 %i.x, ptr %i.z, align 8, !tbaa !69
  %.not2627.i.i = icmp eq ptr %i.u, %i.j
  br i1 %.not2627.i.i, label %.critedge.i.i, label %.lr.ph.i.i
end_hunk_5
