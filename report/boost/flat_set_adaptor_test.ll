Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_adaptor_test?download=true
inline.NumInlined: 24951
inline.NumDeleted: 2813
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 306
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_7move_opES3_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_T3_T4_:bb.a
  %i.bx = getelementptr i8, ptr %.0114218, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.ae, i64 %i.bw
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph324
  %index327 = phi i64 [ 0, %vector.ph324 ], [ %index.next332, %vector.body326 ] ; 2 uses
  %i.bz = shl i64 %index327, 2                    ; 2 uses
  %next.gep328 = getelementptr i8, ptr %.0114218, i64 %i.bz ; 2 uses
  %next.gep329 = getelementptr i8, ptr %i.ae, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep329, i64 16
  %wide.load330 = load <4 x i32>, ptr %next.gep329, align 4, !tbaa !296
  %wide.load331 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !296
  %i.cb = getelementptr i8, ptr %next.gep328, i64 16
  store <4 x i32> %wide.load330, ptr %next.gep328, align 4, !tbaa !296
  store <4 x i32> %wide.load331, ptr %i.cb, align 4, !tbaa !296
  %index.next332 = add nuw i64 %index327, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next332, %n.vec325
  br i1 %i.cc, label %middle.block333, label %vector.body326, !llvm.loop !3161

middle.block333:                                  ; preds = %vector.body326
  %cmp.n334 = icmp eq i64 %i.bu, %n.vec325
  br i1 %cmp.n334, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader462

.lr.ph.i.i.preheader462:                          ; preds = %.lr.ph.i.i.preheader, %middle.block333
  %.010.i.i.ph = phi ptr [ %.0114218, %.lr.ph.i.i.preheader ], [ %i.bx, %middle.block333 ]
  %.079.i.i.ph = phi ptr [ %i.ae, %.lr.ph.i.i.preheader ], [ %i.by, %middle.block333 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader462, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader462 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ce, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader462 ] ; 2 uses
  %i.cd = load i32, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.cd, ptr %.010.i.i, align 4, !tbaa !296
  %i.ce = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ce, %i.ad
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i, !llvm.loop !3162

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit: ; preds = %.lr.ph.i.i, %middle.block333, %bb.j
  store ptr %7, ptr %i.c, align 8, !tbaa !299
  %.not.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader461, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %bound0 = icmp ult ptr %7, %i.bc
  %bound1 = icmp ult ptr %i.bb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.aa
  %bound0307 = icmp ult ptr %i.bb, %i.j
  %bound1308 = icmp ult ptr %i.h, %i.bc
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx310 = or i1 %conflict.rdx, %found.conflict309
  br i1 %conflict.rdx310, label %.lr.ph.i125.preheader461, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cg = getelementptr i8, ptr %i.bb, i64 %i.ab
  %i.ch = getelementptr i8, ptr %i.af, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.ci ; 2 uses
  %next.gep311 = getelementptr i8, ptr %i.bb, i64 %i.ci ; 3 uses
  %next.gep312 = getelementptr i8, ptr %i.af, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep311, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep311, align 4, !tbaa !296, !alias.scope !3193, !noalias !3194
  %wide.load313 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !296, !alias.scope !3193, !noalias !3194
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3195, !noalias !3196
  store <4 x i32> %wide.load313, ptr %i.ck, align 4, !tbaa !296, !alias.scope !3195, !noalias !3196
  %i.cl = getelementptr i8, ptr %next.gep312, i64 16
  %wide.load314 = load <4 x i32>, ptr %next.gep312, align 4, !tbaa !296, !alias.scope !3194
  %wide.load315 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !296, !alias.scope !3194
  store <4 x i32> %wide.load314, ptr %next.gep311, align 4, !tbaa !296, !alias.scope !3193, !noalias !3194
  store <4 x i32> %wide.load315, ptr %i.cj, align 4, !tbaa !296, !alias.scope !3193, !noalias !3194
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !3167

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i125.preheader461

.lr.ph.i125.preheader461:                         ; preds = %vector.memcheck, %.lr.ph.i125.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i125.preheader ], [ %i.ac, %middle.block ]
  %.02032.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i125.preheader ], [ %i.cg, %middle.block ]
  %.02131.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i125.preheader ], [ %i.ch, %middle.block ]
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.preheader461, %.lr.ph.i125
  %.033.i = phi ptr [ %i.cp, %.lr.ph.i125 ], [ %.033.i.ph, %.lr.ph.i125.preheader461 ] ; 2 uses
  %.02032.i = phi ptr [ %i.co, %.lr.ph.i125 ], [ %.02032.i.ph, %.lr.ph.i125.preheader461 ] ; 3 uses
  %.02131.i = phi ptr [ %i.cn, %.lr.ph.i125 ], [ %.02131.i.ph, %.lr.ph.i125.preheader461 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.02032.i, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.033.i, i64 4 ; 2 uses
  %i.cq = load i32, ptr %.02032.i, align 4, !tbaa !296
  store i32 %i.cq, ptr %.033.i, align 4, !tbaa !296
  %i.cr = load i32, ptr %.02131.i, align 4, !tbaa !296
  store i32 %i.cr, ptr %.02032.i, align 4, !tbaa !296
  %.not28.i = icmp eq ptr %i.cn, %i.bd
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i125, !llvm.loop !3168

._crit_edge.i:                                    ; preds = %.lr.ph.i125, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.ac, %middle.block ], [ %i.cp, %.lr.ph.i125 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.cs = load i32, ptr %i.bi, align 4, !tbaa !296
  %i.ct = load i32, ptr %.0106222, align 4, !tbaa !296
  store i32 %i.ct, ptr %i.bi, align 4, !tbaa !296
  store i32 %i.cs, ptr %.0106222, align 4, !tbaa !296
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.cu = icmp eq ptr %i.bi, %.0190217
  br i1 %i.cu, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = icmp eq ptr %.0190217, %.0106222
  %spec.select = select i1 %i.cv, ptr %i.bi, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit
  %.5 = phi ptr [ %.0190217, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %spec.select, %bb.m ], [ %.0106222, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.d, align 8, !tbaa !299
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cw = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_(ptr noundef %.0114218, ptr noundef %.0111219, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.bd, ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit

bb.p:                                             ; preds = %.thread276, %bb.n
  %i.cx = phi i1 [ true, %.thread276 ], [ %i.bn, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !439
  %i.cy = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %.0114218, ptr noundef %.0111219, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.bd, ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.cz = phi i1 [ %i.bn, %bb.o ], [ %i.cx, %bb.p ]
  %i.da = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.db = phi ptr [ %i.cw, %bb.o ], [ %i.cy, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.dc = load ptr, ptr %i.c, align 8, !tbaa !299 ; 4 uses
  %i.dd = load ptr, ptr %i.d, align 8, !tbaa !299 ; 4 uses
  %i.de = icmp eq ptr %i.dc, %i.dd                ; 2 uses
  br i1 %i.de, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit
  store ptr %7, ptr %i.c, align 8, !tbaa !299
  %i.df = load ptr, ptr %i.e, align 8, !tbaa !299 ; 10 uses
  %i.dg = ptrtoint ptr %i.bd to i64
  %i.dh = ptrtoint ptr %i.df to i64               ; 3 uses
  %i.di = sub i64 %i.dg, %i.dh                    ; 2 uses
  %i.dj = ashr exact i64 %i.di, 2
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.dk ; 7 uses
  %.not.i126 = icmp eq ptr %i.df, %i.dl
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.q
  %.not2830.i128 = icmp eq ptr %i.df, %i.bd
  br i1 %.not2830.i128, label %._crit_edge.i134, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %.preheader.i127
  %i.dm = mul i64 %indvar, %.idx207               ; 3 uses
  %i.dn = add i64 %i.w, %i.dm                     ; 2 uses
  %i.do = sub i64 %i.dn, %i.dh                    ; 2 uses
  %i.dp = lshr i64 %i.do, 2
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 2 uses
  %min.iters.check357 = icmp ult i64 %i.do, 76
  br i1 %min.iters.check357, label %.lr.ph.i129.preheader463, label %vector.memcheck358

vector.memcheck358:                               ; preds = %.lr.ph.i129.preheader
  %i.dr = add i64 %i.s, %i.dm
  %i.ds = sub i64 %i.dr, %i.dh
  %i.dt = and i64 %i.ds, -4                       ; 3 uses
  %i.du = getelementptr i8, ptr %scevgep355, i64 %i.dt ; 2 uses
  %i.dv = add i64 %i.p, %i.dm
  %i.dw = shl i64 %.022.lcssa.i, 2
  %i.dx = add i64 %i.dw, 4
  %i.dy = mul i64 %2, %i.dx
  %i.dz = add i64 %i.dv, %i.dy
  %i.ea = add i64 %i.dz, %i.dt
  %i.eb = sub i64 %i.ea, %i.di
  %i.ec = getelementptr i8, ptr %1, i64 %i.eb     ; 2 uses
  %17 = getelementptr i8, ptr %i.df, i64 %i.dt
  %18 = getelementptr i8, ptr %17, i64 4          ; 2 uses
  %bound0359 = icmp ult ptr %7, %i.ec
  %bound1360 = icmp ult ptr %i.dl, %i.du
  %found.conflict361 = and i1 %bound0359, %bound1360
  %bound0362 = icmp ult ptr %7, %18
  %bound1363 = icmp ult ptr %i.df, %i.du
  %found.conflict364 = and i1 %bound0362, %bound1363
  %conflict.rdx365 = or i1 %found.conflict361, %found.conflict364
  %bound0366 = icmp ult ptr %i.dl, %18
  %bound1367 = icmp ult ptr %i.df, %i.ec
  %found.conflict368 = and i1 %bound0366, %bound1367
  %conflict.rdx369 = or i1 %conflict.rdx365, %found.conflict368
  br i1 %conflict.rdx369, label %.lr.ph.i129.preheader463, label %vector.ph370

vector.ph370:                                     ; preds = %vector.memcheck358
  %n.vec371 = and i64 %i.dq, 9223372036854775800  ; 3 uses
  %i.ed = shl i64 %n.vec371, 2                    ; 3 uses
  %i.ee = getelementptr i8, ptr %7, i64 %i.ed     ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dl, i64 %i.ed
  %i.eg = getelementptr i8, ptr %i.df, i64 %i.ed
  br label %vector.body372

vector.body372:                                   ; preds = %vector.body372, %vector.ph370
  %index373 = phi i64 [ 0, %vector.ph370 ], [ %index.next381, %vector.body372 ] ; 2 uses
  %i.eh = shl i64 %index373, 2                    ; 3 uses
  %next.gep374 = getelementptr i8, ptr %7, i64 %i.eh ; 2 uses
  %next.gep375 = getelementptr i8, ptr %i.dl, i64 %i.eh ; 3 uses
  %next.gep376 = getelementptr i8, ptr %i.df, i64 %i.eh ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep375, i64 16 ; 2 uses
  %wide.load377 = load <4 x i32>, ptr %next.gep375, align 4, !tbaa !296, !alias.scope !3197, !noalias !3198
  %wide.load378 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !296, !alias.scope !3197, !noalias !3198
  %i.ej = getelementptr i8, ptr %next.gep374, i64 16
  store <4 x i32> %wide.load377, ptr %next.gep374, align 4, !tbaa !296, !alias.scope !3199, !noalias !3200
  store <4 x i32> %wide.load378, ptr %i.ej, align 4, !tbaa !296, !alias.scope !3199, !noalias !3200
  %i.ek = getelementptr i8, ptr %next.gep376, i64 16
  %wide.load379 = load <4 x i32>, ptr %next.gep376, align 4, !tbaa !296, !alias.scope !3198
  %wide.load380 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !296, !alias.scope !3198
  store <4 x i32> %wide.load379, ptr %next.gep375, align 4, !tbaa !296, !alias.scope !3197, !noalias !3198
  store <4 x i32> %wide.load380, ptr %i.ei, align 4, !tbaa !296, !alias.scope !3197, !noalias !3198
  %index.next381 = add nuw i64 %index373, 8       ; 2 uses
  %i.el = icmp eq i64 %index.next381, %n.vec371
  br i1 %i.el, label %middle.block382, label %vector.body372, !llvm.loop !3173

middle.block382:                                  ; preds = %vector.body372
  %cmp.n383 = icmp eq i64 %i.dq, %n.vec371
  br i1 %cmp.n383, label %._crit_edge.i134, label %.lr.ph.i129.preheader463

.lr.ph.i129.preheader463:                         ; preds = %vector.memcheck358, %.lr.ph.i129.preheader, %middle.block382
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck358 ], [ %7, %.lr.ph.i129.preheader ], [ %i.ee, %middle.block382 ] ; 2 uses
  %.02032.i131.ph = phi ptr [ %i.dl, %vector.memcheck358 ], [ %i.dl, %.lr.ph.i129.preheader ], [ %i.ef, %middle.block382 ] ; 2 uses
  %.02131.i132.ph = phi ptr [ %i.df, %vector.memcheck358 ], [ %i.df, %.lr.ph.i129.preheader ], [ %i.eg, %middle.block382 ] ; 3 uses
  %.02131.i132.ph466 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.em = sub i64 %i.dn, %.02131.i132.ph466       ; 2 uses
  %i.en = lshr i64 %i.em, 2
  %i.eo = add nuw nsw i64 %i.en, 1
  %xtraiter = and i64 %i.eo, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader463, %.lr.ph.i129.prol
  %.033.i130.prol = phi ptr [ %i.er, %.lr.ph.i129.prol ], [ %.033.i130.ph, %.lr.ph.i129.preheader463 ] ; 2 uses
  %.02032.i131.prol = phi ptr [ %i.eq, %.lr.ph.i129.prol ], [ %.02032.i131.ph, %.lr.ph.i129.preheader463 ] ; 3 uses
  %.02131.i132.prol = phi ptr [ %i.ep, %.lr.ph.i129.prol ], [ %.02131.i132.ph, %.lr.ph.i129.preheader463 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i129.prol ], [ 0, %.lr.ph.i129.preheader463 ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.02131.i132.prol, i64 4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.02032.i131.prol, i64 4 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.033.i130.prol, i64 4 ; 3 uses
  %i.es = load i32, ptr %.02032.i131.prol, align 4, !tbaa !296
  store i32 %i.es, ptr %.033.i130.prol, align 4, !tbaa !296
  %i.et = load i32, ptr %.02131.i132.prol, align 4, !tbaa !296
  store i32 %i.et, ptr %.02032.i131.prol, align 4, !tbaa !296
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol, !llvm.loop !3174

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader463
  %.lcssa464.unr = phi ptr [ poison, %.lr.ph.i129.preheader463 ], [ %i.er, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader463 ], [ %i.er, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader463 ], [ %i.eq, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader463 ], [ %i.ep, %.lr.ph.i129.prol ]
  %i.eu = icmp ult i64 %i.em, 12
  br i1 %i.eu, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.fm, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %.02032.i131 = phi ptr [ %i.fl, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %.02131.i132 = phi ptr [ %i.fk, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  %i.ey = load i32, ptr %.02032.i131, align 4, !tbaa !296
  store i32 %i.ey, ptr %.033.i130, align 4, !tbaa !296
  %i.ez = load i32, ptr %.02131.i132, align 4, !tbaa !296
  store i32 %i.ez, ptr %.02032.i131, align 4, !tbaa !296
  %i.fa = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8
  %i.fd = load i32, ptr %i.ew, align 4, !tbaa !296
  store i32 %i.fd, ptr %i.ex, align 4, !tbaa !296
  %i.fe = load i32, ptr %i.ev, align 4, !tbaa !296
  store i32 %i.fe, ptr %i.ew, align 4, !tbaa !296
  %i.ff = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12
  %i.fg = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12
  %i.fi = load i32, ptr %i.fb, align 4, !tbaa !296
  store i32 %i.fi, ptr %i.fc, align 4, !tbaa !296
  %i.fj = load i32, ptr %i.fa, align 4, !tbaa !296
  store i32 %i.fj, ptr %i.fb, align 4, !tbaa !296
  %i.fk = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.fn = load i32, ptr %i.fg, align 4, !tbaa !296
  store i32 %i.fn, ptr %i.fh, align 4, !tbaa !296
  %i.fo = load i32, ptr %i.ff, align 4, !tbaa !296
  store i32 %i.fo, ptr %i.fg, align 4, !tbaa !296
  %.not28.i133.3 = icmp eq ptr %i.fk, %i.bd
  br i1 %.not28.i133.3, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !3175

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block382, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.ee, %middle.block382 ], [ %.lcssa464.unr, %.lr.ph.i129.prol.loopexit ], [ %i.fm, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.fp = load i32, ptr %i.bi, align 4, !tbaa !296
  %i.fq = load i32, ptr %.0106222, align 4, !tbaa !296
  store i32 %i.fq, ptr %i.bi, align 4, !tbaa !296
  store i32 %i.fp, ptr %.0106222, align 4, !tbaa !296
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.fr = icmp eq ptr %i.bi, %.0190217
  br i1 %i.fr, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fs = icmp eq ptr %.0190217, %.0106222
  %spec.select204 = select i1 %i.fs, ptr %i.bi, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0190217, %bb.q ], [ %spec.select204, %bb.t ], [ %.0106222, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.d, align 8, !tbaa !299
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ft = load i32, ptr %i.bi, align 4, !tbaa !296
  %i.fu = load i32, ptr %.0106222, align 4, !tbaa !296
  store i32 %i.fu, ptr %i.bi, align 4, !tbaa !296
  store i32 %i.ft, ptr %.0106222, align 4, !tbaa !296
  %i.fv = icmp eq ptr %i.bi, %.0190217
  br i1 %i.fv, label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fw = icmp eq ptr %.0190217, %.0106222
  %spec.select205 = select i1 %i.fw, ptr %i.bi, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140
  %i.fx = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140 ], [ %i.dd, %bb.u ], [ %i.dd, %bb.w ], [ %i.dd, %bb.v ]
  %i.fy = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140 ], [ %i.dc, %bb.u ], [ %i.dc, %bb.w ], [ %i.dc, %bb.v ]
  %.1191 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140 ], [ %.0190217, %bb.u ], [ %spec.select205, %bb.w ], [ %.0106222, %bb.v ]
  %i.fz = xor i1 %i.da, %i.de
  %i.ga = zext i1 %i.fz to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit
  %i.gb = phi ptr [ %i.fx, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %i.gc = phi ptr [ %i.fy, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %i.gd = phi i1 [ %i.cz, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %i.bq, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ]
  %.2192 = phi ptr [ %.1191, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.db, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %i.af, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.ga, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %.0108221, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gd, true
  %i.ge = sext i1 %not. to i64
  %.1 = add i64 %.0226, %i.ge
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.0111219, i64 %2 ; 2 uses
  store ptr %i.bd, ptr %i.e, align 8, !tbaa !299
  %i.gg = getelementptr inbounds nuw i8, ptr %.0106222, i64 4
  %i.gh = icmp ne i64 %.0104225, 0
  %.neg = sext i1 %i.gh to i64
  %i.gi = add i64 %.0104225, %.neg
  %i.gj = icmp ne i64 %i.az, 0
  %.neg122 = sext i1 %i.gj to i64
  %i.gk = add i64 %.sroa.speculated179, %.neg122
  %i.gl = add i64 %.0194216, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gl, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !3176

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.gm = phi ptr [ %i.gb, %bb.x ], [ %i.ad, %bb.g ], [ %i.ad, %bb.f ] ; 3 uses
  %i.gn = phi ptr [ %i.gc, %bb.x ], [ %i.ae, %bb.g ], [ %i.ae, %bb.f ] ; 5 uses
  %.0194.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0194216, %bb.g ], [ %.0194216, %bb.f ] ; 3 uses
  %.0190.lcssa.ph = phi ptr [ %.2192, %bb.x ], [ %.0190217, %bb.g ], [ %.0190217, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114218, %bb.g ], [ %.0114218, %bb.f ] ; 5 uses
  %.0111.lcssa.ph = phi ptr [ %i.gf, %bb.x ], [ %.0111219, %bb.g ], [ %.0111219, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108221, %bb.f ]
  %i.go = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.gp = select i1 %i.go, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_7swap_opES3_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_T3_T4_:bb.a
  %i.cd = getelementptr i8, ptr %next.gep343, i64 16 ; 2 uses
  %wide.load347 = load <4 x i32>, ptr %next.gep343, align 4, !tbaa !296, !alias.scope !3252
  %wide.load348 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !296, !alias.scope !3252
  store <4 x i32> %wide.load347, ptr %next.gep344, align 4, !tbaa !296, !alias.scope !3251, !noalias !3252
  store <4 x i32> %wide.load348, ptr %i.cc, align 4, !tbaa !296, !alias.scope !3251, !noalias !3252
  store <4 x i32> %wide.load345, ptr %next.gep343, align 4, !tbaa !296, !alias.scope !3252
  store <4 x i32> %wide.load346, ptr %i.cd, align 4, !tbaa !296, !alias.scope !3252
  %index.next349 = add nuw i64 %index342, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next349, %n.vec340
  br i1 %i.ce, label %middle.block350, label %vector.body341, !llvm.loop !3209

middle.block350:                                  ; preds = %vector.body341
  %cmp.n351 = icmp eq i64 %i.bt, %n.vec340
  br i1 %cmp.n351, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader502

.lr.ph.i.i.preheader502:                          ; preds = %vector.memcheck335, %.lr.ph.i.i.preheader, %middle.block350
  %.010.i.i.ph = phi ptr [ %.0114219, %vector.memcheck335 ], [ %.0114219, %.lr.ph.i.i.preheader ], [ %i.bz, %middle.block350 ]
  %.079.i.i.ph = phi ptr [ %i.ad, %vector.memcheck335 ], [ %i.ad, %.lr.ph.i.i.preheader ], [ %i.ca, %middle.block350 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader502, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ci, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader502 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ch, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader502 ] ; 3 uses
  %i.cf = load i32, ptr %.079.i.i, align 4, !tbaa !296
  %i.cg = load i32, ptr %.010.i.i, align 4, !tbaa !296
  store i32 %i.cg, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.cf, ptr %.010.i.i, align 4, !tbaa !296
  %i.ch = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ch, %i.ac
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i, !llvm.loop !3210

_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit: ; preds = %.lr.ph.i.i, %middle.block350, %bb.j
  store ptr %7, ptr %i.b, align 8, !tbaa !299
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader501, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %bound0 = icmp ult ptr %7, %i.bb
  %bound1 = icmp ult ptr %i.ba, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.z
  %bound0312 = icmp ult ptr %i.ba, %i.i
  %bound1313 = icmp ult ptr %i.g, %i.bb
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx315 = or i1 %conflict.rdx, %found.conflict314
  br i1 %conflict.rdx315, label %.lr.ph.i125.preheader501, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cj = getelementptr i8, ptr %i.ba, i64 %i.aa
  %i.ck = getelementptr i8, ptr %i.ae, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.cl ; 3 uses
  %next.gep316 = getelementptr i8, ptr %i.ba, i64 %i.cl ; 3 uses
  %next.gep317 = getelementptr i8, ptr %i.ae, i64 %i.cl ; 3 uses
  %i.cm = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3253, !noalias !3254
  %wide.load318 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !296, !alias.scope !3253, !noalias !3254
  %i.cn = getelementptr i8, ptr %next.gep316, i64 16 ; 2 uses
  %wide.load319 = load <4 x i32>, ptr %next.gep316, align 4, !tbaa !296, !alias.scope !3255, !noalias !3256
  %wide.load320 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !296, !alias.scope !3255, !noalias !3256
  store <4 x i32> %wide.load319, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3253, !noalias !3254
  store <4 x i32> %wide.load320, ptr %i.cm, align 4, !tbaa !296, !alias.scope !3253, !noalias !3254
  %i.co = getelementptr i8, ptr %next.gep317, i64 16 ; 2 uses
  %wide.load321 = load <4 x i32>, ptr %next.gep317, align 4, !tbaa !296, !alias.scope !3256
  %wide.load322 = load <4 x i32>, ptr %i.co, align 4, !tbaa !296, !alias.scope !3256
  store <4 x i32> %wide.load321, ptr %next.gep316, align 4, !tbaa !296, !alias.scope !3255, !noalias !3256
  store <4 x i32> %wide.load322, ptr %i.cn, align 4, !tbaa !296, !alias.scope !3255, !noalias !3256
  store <4 x i32> %wide.load, ptr %next.gep317, align 4, !tbaa !296, !alias.scope !3256
  store <4 x i32> %wide.load318, ptr %i.co, align 4, !tbaa !296, !alias.scope !3256
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !3215

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i125.preheader501

.lr.ph.i125.preheader501:                         ; preds = %vector.memcheck, %.lr.ph.i125.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i125.preheader ], [ %i.ab, %middle.block ]
  %.02032.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i125.preheader ], [ %i.cj, %middle.block ]
  %.02131.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i125.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.preheader501, %.lr.ph.i125
  %.033.i = phi ptr [ %i.cs, %.lr.ph.i125 ], [ %.033.i.ph, %.lr.ph.i125.preheader501 ] ; 3 uses
  %.02032.i = phi ptr [ %i.cr, %.lr.ph.i125 ], [ %.02032.i.ph, %.lr.ph.i125.preheader501 ] ; 3 uses
  %.02131.i = phi ptr [ %i.cq, %.lr.ph.i125 ], [ %.02131.i.ph, %.lr.ph.i125.preheader501 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.02032.i, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.033.i, i64 4 ; 2 uses
  %i.ct = load i32, ptr %.033.i, align 4, !tbaa !296
  %i.cu = load i32, ptr %.02032.i, align 4, !tbaa !296
  store i32 %i.cu, ptr %.033.i, align 4, !tbaa !296
  %i.cv = load i32, ptr %.02131.i, align 4, !tbaa !296
  store i32 %i.cv, ptr %.02032.i, align 4, !tbaa !296
  store i32 %i.ct, ptr %.02131.i, align 4, !tbaa !296
  %.not28.i = icmp eq ptr %i.cq, %i.bc
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i125, !llvm.loop !3216

._crit_edge.i:                                    ; preds = %.lr.ph.i125, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.ab, %middle.block ], [ %i.cs, %.lr.ph.i125 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.cw = load i32, ptr %i.bh, align 4, !tbaa !296
  %i.cx = load i32, ptr %.0106223, align 4, !tbaa !296
  store i32 %i.cx, ptr %i.bh, align 4, !tbaa !296
  store i32 %i.cw, ptr %.0106223, align 4, !tbaa !296
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.cy = icmp eq ptr %i.bh, %.0191218
  br i1 %i.cy, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = icmp eq ptr %.0191218, %.0106223
  %spec.select = select i1 %i.cz, ptr %i.bh, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit
  %.5 = phi ptr [ %.0191218, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %spec.select, %bb.m ], [ %.0106223, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.c, align 8, !tbaa !299
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.da = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bc, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit

bb.p:                                             ; preds = %.thread281, %bb.n
  %i.db = phi i1 [ true, %.thread281 ], [ %i.bm, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !439
  %i.dc = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bc, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.dd = phi i1 [ %i.bm, %bb.o ], [ %i.db, %bb.p ]
  %i.de = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.df = phi ptr [ %i.da, %bb.o ], [ %i.dc, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !299 ; 4 uses
  %i.dh = load ptr, ptr %i.c, align 8, !tbaa !299 ; 4 uses
  %i.di = icmp eq ptr %i.dg, %i.dh                ; 2 uses
  br i1 %i.di, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit
  store ptr %7, ptr %i.b, align 8, !tbaa !299
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !299 ; 10 uses
  %i.dk = ptrtoint ptr %i.bc to i64
  %i.dl = ptrtoint ptr %i.dj to i64               ; 3 uses
  %i.dm = sub i64 %i.dk, %i.dl                    ; 2 uses
  %i.dn = ashr exact i64 %i.dm, 2
  %i.do = sub nsw i64 0, %i.dn
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.do ; 7 uses
  %.not.i126 = icmp eq ptr %i.dj, %i.dp
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.q
  %.not2830.i128 = icmp eq ptr %i.dj, %i.bc
  br i1 %.not2830.i128, label %._crit_edge.i134, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %.preheader.i127
  %i.dq = mul i64 %indvar, %.idx208               ; 3 uses
  %i.dr = add i64 %i.v, %i.dq                     ; 2 uses
  %i.ds = sub i64 %i.dr, %i.dl                    ; 2 uses
  %i.dt = lshr i64 %i.ds, 2
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check374 = icmp ult i64 %i.ds, 60
  br i1 %min.iters.check374, label %.lr.ph.i129.preheader503, label %vector.memcheck375

vector.memcheck375:                               ; preds = %.lr.ph.i129.preheader
  %i.dv = add i64 %i.r, %i.dq
  %i.dw = sub i64 %i.dv, %i.dl
  %i.dx = and i64 %i.dw, -4                       ; 3 uses
  %i.dy = getelementptr i8, ptr %scevgep372, i64 %i.dx ; 2 uses
  %i.dz = add i64 %i.o, %i.dq
  %i.ea = shl i64 %.022.lcssa.i, 2
  %i.eb = add i64 %i.ea, 4
  %i.ec = mul i64 %2, %i.eb
  %i.ed = add i64 %i.dz, %i.ec
  %i.ee = add i64 %i.ed, %i.dx
  %i.ef = sub i64 %i.ee, %i.dm
  %i.eg = getelementptr i8, ptr %1, i64 %i.ef     ; 2 uses
  %17 = getelementptr i8, ptr %i.dj, i64 %i.dx
  %18 = getelementptr i8, ptr %17, i64 4          ; 2 uses
  %bound0376 = icmp ult ptr %7, %i.eg
  %bound1377 = icmp ult ptr %i.dp, %i.dy
  %found.conflict378 = and i1 %bound0376, %bound1377
  %bound0379 = icmp ult ptr %7, %18
  %bound1380 = icmp ult ptr %i.dj, %i.dy
  %found.conflict381 = and i1 %bound0379, %bound1380
  %conflict.rdx382 = or i1 %found.conflict378, %found.conflict381
  %bound0383 = icmp ult ptr %i.dp, %18
  %bound1384 = icmp ult ptr %i.dj, %i.eg
  %found.conflict385 = and i1 %bound0383, %bound1384
  %conflict.rdx386 = or i1 %conflict.rdx382, %found.conflict385
  br i1 %conflict.rdx386, label %.lr.ph.i129.preheader503, label %vector.ph387

vector.ph387:                                     ; preds = %vector.memcheck375
  %n.vec388 = and i64 %i.du, 9223372036854775800  ; 3 uses
  %i.eh = shl i64 %n.vec388, 2                    ; 3 uses
  %i.ei = getelementptr i8, ptr %7, i64 %i.eh     ; 2 uses
  %i.ej = getelementptr i8, ptr %i.dp, i64 %i.eh
  %i.ek = getelementptr i8, ptr %i.dj, i64 %i.eh
  br label %vector.body389

vector.body389:                                   ; preds = %vector.body389, %vector.ph387
  %index390 = phi i64 [ 0, %vector.ph387 ], [ %index.next400, %vector.body389 ] ; 2 uses
  %i.el = shl i64 %index390, 2                    ; 3 uses
  %next.gep391 = getelementptr i8, ptr %7, i64 %i.el ; 3 uses
  %next.gep392 = getelementptr i8, ptr %i.dp, i64 %i.el ; 3 uses
  %next.gep393 = getelementptr i8, ptr %i.dj, i64 %i.el ; 3 uses
  %i.em = getelementptr i8, ptr %next.gep391, i64 16 ; 2 uses
  %wide.load394 = load <4 x i32>, ptr %next.gep391, align 4, !tbaa !296, !alias.scope !3257, !noalias !3258
  %wide.load395 = load <4 x i32>, ptr %i.em, align 4, !tbaa !296, !alias.scope !3257, !noalias !3258
  %i.en = getelementptr i8, ptr %next.gep392, i64 16 ; 2 uses
  %wide.load396 = load <4 x i32>, ptr %next.gep392, align 4, !tbaa !296, !alias.scope !3259, !noalias !3260
  %wide.load397 = load <4 x i32>, ptr %i.en, align 4, !tbaa !296, !alias.scope !3259, !noalias !3260
  store <4 x i32> %wide.load396, ptr %next.gep391, align 4, !tbaa !296, !alias.scope !3257, !noalias !3258
  store <4 x i32> %wide.load397, ptr %i.em, align 4, !tbaa !296, !alias.scope !3257, !noalias !3258
  %i.eo = getelementptr i8, ptr %next.gep393, i64 16 ; 2 uses
  %wide.load398 = load <4 x i32>, ptr %next.gep393, align 4, !tbaa !296, !alias.scope !3260
  %wide.load399 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !296, !alias.scope !3260
  store <4 x i32> %wide.load398, ptr %next.gep392, align 4, !tbaa !296, !alias.scope !3259, !noalias !3260
  store <4 x i32> %wide.load399, ptr %i.en, align 4, !tbaa !296, !alias.scope !3259, !noalias !3260
  store <4 x i32> %wide.load394, ptr %next.gep393, align 4, !tbaa !296, !alias.scope !3260
  store <4 x i32> %wide.load395, ptr %i.eo, align 4, !tbaa !296, !alias.scope !3260
  %index.next400 = add nuw i64 %index390, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next400, %n.vec388
  br i1 %i.ep, label %middle.block401, label %vector.body389, !llvm.loop !3221

middle.block401:                                  ; preds = %vector.body389
  %cmp.n402 = icmp eq i64 %i.du, %n.vec388
  br i1 %cmp.n402, label %._crit_edge.i134, label %.lr.ph.i129.preheader503

.lr.ph.i129.preheader503:                         ; preds = %vector.memcheck375, %.lr.ph.i129.preheader, %middle.block401
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck375 ], [ %7, %.lr.ph.i129.preheader ], [ %i.ei, %middle.block401 ] ; 2 uses
  %.02032.i131.ph = phi ptr [ %i.dp, %vector.memcheck375 ], [ %i.dp, %.lr.ph.i129.preheader ], [ %i.ej, %middle.block401 ] ; 2 uses
  %.02131.i132.ph = phi ptr [ %i.dj, %vector.memcheck375 ], [ %i.dj, %.lr.ph.i129.preheader ], [ %i.ek, %middle.block401 ] ; 3 uses
  %.02131.i132.ph506 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.eq = sub i64 %i.dr, %.02131.i132.ph506       ; 2 uses
  %i.er = lshr i64 %i.eq, 2
  %i.es = add nuw nsw i64 %i.er, 1
  %xtraiter = and i64 %i.es, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader503, %.lr.ph.i129.prol
  %.033.i130.prol = phi ptr [ %i.ev, %.lr.ph.i129.prol ], [ %.033.i130.ph, %.lr.ph.i129.preheader503 ] ; 3 uses
  %.02032.i131.prol = phi ptr [ %i.eu, %.lr.ph.i129.prol ], [ %.02032.i131.ph, %.lr.ph.i129.preheader503 ] ; 3 uses
  %.02131.i132.prol = phi ptr [ %i.et, %.lr.ph.i129.prol ], [ %.02131.i132.ph, %.lr.ph.i129.preheader503 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i129.prol ], [ 0, %.lr.ph.i129.preheader503 ]
  %i.et = getelementptr inbounds nuw i8, ptr %.02131.i132.prol, i64 4 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.02032.i131.prol, i64 4 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.033.i130.prol, i64 4 ; 3 uses
  %i.ew = load i32, ptr %.033.i130.prol, align 4, !tbaa !296
  %i.ex = load i32, ptr %.02032.i131.prol, align 4, !tbaa !296
  store i32 %i.ex, ptr %.033.i130.prol, align 4, !tbaa !296
  %i.ey = load i32, ptr %.02131.i132.prol, align 4, !tbaa !296
  store i32 %i.ey, ptr %.02032.i131.prol, align 4, !tbaa !296
  store i32 %i.ew, ptr %.02131.i132.prol, align 4, !tbaa !296
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol, !llvm.loop !3222

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader503
  %.lcssa504.unr = phi ptr [ poison, %.lr.ph.i129.preheader503 ], [ %i.ev, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader503 ], [ %i.ev, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader503 ], [ %i.eu, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader503 ], [ %i.et, %.lr.ph.i129.prol ]
  %i.ez = icmp ult i64 %i.eq, 12
  br i1 %i.ez, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.fu, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %.02032.i131 = phi ptr [ %i.ft, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %.02131.i132 = phi ptr [ %i.fs, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4 ; 2 uses
  %i.fd = load i32, ptr %.033.i130, align 4, !tbaa !296
  %i.fe = load i32, ptr %.02032.i131, align 4, !tbaa !296
  store i32 %i.fe, ptr %.033.i130, align 4, !tbaa !296
  %i.ff = load i32, ptr %.02131.i132, align 4, !tbaa !296
  store i32 %i.ff, ptr %.02032.i131, align 4, !tbaa !296
  store i32 %i.fd, ptr %.02131.i132, align 4, !tbaa !296
  %i.fg = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8 ; 2 uses
  %i.fj = load i32, ptr %i.fc, align 4, !tbaa !296
  %i.fk = load i32, ptr %i.fb, align 4, !tbaa !296
  store i32 %i.fk, ptr %i.fc, align 4, !tbaa !296
  %i.fl = load i32, ptr %i.fa, align 4, !tbaa !296
  store i32 %i.fl, ptr %i.fb, align 4, !tbaa !296
  store i32 %i.fj, ptr %i.fa, align 4, !tbaa !296
  %i.fm = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12 ; 2 uses
  %i.fp = load i32, ptr %i.fi, align 4, !tbaa !296
  %i.fq = load i32, ptr %i.fh, align 4, !tbaa !296
  store i32 %i.fq, ptr %i.fi, align 4, !tbaa !296
  %i.fr = load i32, ptr %i.fg, align 4, !tbaa !296
  store i32 %i.fr, ptr %i.fh, align 4, !tbaa !296
  store i32 %i.fp, ptr %i.fg, align 4, !tbaa !296
  %i.fs = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.fv = load i32, ptr %i.fo, align 4, !tbaa !296
  %i.fw = load i32, ptr %i.fn, align 4, !tbaa !296
  store i32 %i.fw, ptr %i.fo, align 4, !tbaa !296
  %i.fx = load i32, ptr %i.fm, align 4, !tbaa !296
  store i32 %i.fx, ptr %i.fn, align 4, !tbaa !296
  store i32 %i.fv, ptr %i.fm, align 4, !tbaa !296
  %.not28.i133.3 = icmp eq ptr %i.fs, %i.bc
  br i1 %.not28.i133.3, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !3223

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block401, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.ei, %middle.block401 ], [ %.lcssa504.unr, %.lr.ph.i129.prol.loopexit ], [ %i.fu, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.fy = load i32, ptr %i.bh, align 4, !tbaa !296
  %i.fz = load i32, ptr %.0106223, align 4, !tbaa !296
  store i32 %i.fz, ptr %i.bh, align 4, !tbaa !296
  store i32 %i.fy, ptr %.0106223, align 4, !tbaa !296
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.ga = icmp eq ptr %i.bh, %.0191218
  br i1 %i.ga, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gb = icmp eq ptr %.0191218, %.0106223
  %spec.select205 = select i1 %i.gb, ptr %i.bh, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0191218, %bb.q ], [ %spec.select205, %bb.t ], [ %.0106223, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.c, align 8, !tbaa !299
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gc = load i32, ptr %i.bh, align 4, !tbaa !296
  %i.gd = load i32, ptr %.0106223, align 4, !tbaa !296
  store i32 %i.gd, ptr %i.bh, align 4, !tbaa !296
  store i32 %i.gc, ptr %.0106223, align 4, !tbaa !296
  %i.ge = icmp eq ptr %i.bh, %.0191218
  br i1 %i.ge, label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gf = icmp eq ptr %.0191218, %.0106223
  %spec.select206 = select i1 %i.gf, ptr %i.bh, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140
  %i.gg = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140 ], [ %i.dh, %bb.u ], [ %i.dh, %bb.w ], [ %i.dh, %bb.v ]
  %i.gh = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140 ], [ %i.dg, %bb.u ], [ %i.dg, %bb.w ], [ %i.dg, %bb.v ]
  %.1192 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140 ], [ %.0191218, %bb.u ], [ %spec.select206, %bb.w ], [ %.0106223, %bb.v ]
  %i.gi = xor i1 %i.de, %i.di
  %i.gj = zext i1 %i.gi to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit
  %i.gk = phi ptr [ %i.gg, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %i.gl = phi ptr [ %i.gh, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %i.gm = phi i1 [ %i.dd, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %i.bp, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ]
  %.2193 = phi ptr [ %.1192, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.df, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.gj, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %.0108222, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7swap_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gm, true
  %i.gn = sext i1 %not. to i64
  %.1 = add i64 %.0227, %i.gn
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.0111220, i64 %2 ; 2 uses
  store ptr %i.bc, ptr %i.d, align 8, !tbaa !299
  %i.gp = getelementptr inbounds nuw i8, ptr %.0106223, i64 4
  %i.gq = icmp ne i64 %.0104226, 0
  %.neg = sext i1 %i.gq to i64
  %i.gr = add i64 %.0104226, %.neg
  %i.gs = icmp ne i64 %i.ay, 0
  %.neg122 = sext i1 %i.gs to i64
  %i.gt = add i64 %.sroa.speculated180, %.neg122
  %i.gu = add i64 %.0195217, -1                   ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opES5_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_:bb.a
  %i.bx = getelementptr i8, ptr %.0114218, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.ae, i64 %i.bw
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph324
  %index327 = phi i64 [ 0, %vector.ph324 ], [ %index.next332, %vector.body326 ] ; 2 uses
  %i.bz = shl i64 %index327, 2                    ; 2 uses
  %next.gep328 = getelementptr i8, ptr %.0114218, i64 %i.bz ; 2 uses
  %next.gep329 = getelementptr i8, ptr %i.ae, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep329, i64 16
  %wide.load330 = load <4 x i32>, ptr %next.gep329, align 4, !tbaa !296
  %wide.load331 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !296
  %i.cb = getelementptr i8, ptr %next.gep328, i64 16
  store <4 x i32> %wide.load330, ptr %next.gep328, align 4, !tbaa !296
  store <4 x i32> %wide.load331, ptr %i.cb, align 4, !tbaa !296
  %index.next332 = add nuw i64 %index327, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next332, %n.vec325
  br i1 %i.cc, label %middle.block333, label %vector.body326, !llvm.loop !3282

middle.block333:                                  ; preds = %vector.body326
  %cmp.n334 = icmp eq i64 %i.bu, %n.vec325
  br i1 %cmp.n334, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader462

.lr.ph.i.i.preheader462:                          ; preds = %.lr.ph.i.i.preheader, %middle.block333
  %.010.i.i.ph = phi ptr [ %.0114218, %.lr.ph.i.i.preheader ], [ %i.bx, %middle.block333 ]
  %.079.i.i.ph = phi ptr [ %i.ae, %.lr.ph.i.i.preheader ], [ %i.by, %middle.block333 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader462, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader462 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ce, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader462 ] ; 2 uses
  %i.cd = load i32, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.cd, ptr %.010.i.i, align 4, !tbaa !296
  %i.ce = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ce, %i.ad
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, label %.lr.ph.i.i, !llvm.loop !3283

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit: ; preds = %.lr.ph.i.i, %middle.block333, %bb.j
  store ptr %7, ptr %i.c, align 8, !tbaa !299
  %.not.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader461, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %bound0 = icmp ult ptr %7, %i.bc
  %bound1 = icmp ult ptr %i.bb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.aa
  %bound0307 = icmp ult ptr %i.bb, %i.j
  %bound1308 = icmp ult ptr %i.h, %i.bc
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx310 = or i1 %conflict.rdx, %found.conflict309
  br i1 %conflict.rdx310, label %.lr.ph.i125.preheader461, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cg = getelementptr i8, ptr %i.bb, i64 %i.ab
  %i.ch = getelementptr i8, ptr %i.af, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.ci ; 2 uses
  %next.gep311 = getelementptr i8, ptr %i.bb, i64 %i.ci ; 3 uses
  %next.gep312 = getelementptr i8, ptr %i.af, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep311, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep311, align 4, !tbaa !296, !alias.scope !3314, !noalias !3315
  %wide.load313 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !296, !alias.scope !3314, !noalias !3315
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3316, !noalias !3317
  store <4 x i32> %wide.load313, ptr %i.ck, align 4, !tbaa !296, !alias.scope !3316, !noalias !3317
  %i.cl = getelementptr i8, ptr %next.gep312, i64 16
  %wide.load314 = load <4 x i32>, ptr %next.gep312, align 4, !tbaa !296, !alias.scope !3315
  %wide.load315 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !296, !alias.scope !3315
  store <4 x i32> %wide.load314, ptr %next.gep311, align 4, !tbaa !296, !alias.scope !3314, !noalias !3315
  store <4 x i32> %wide.load315, ptr %i.cj, align 4, !tbaa !296, !alias.scope !3314, !noalias !3315
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !3288

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i125.preheader461

.lr.ph.i125.preheader461:                         ; preds = %vector.memcheck, %.lr.ph.i125.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i125.preheader ], [ %i.ac, %middle.block ]
  %.02032.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i125.preheader ], [ %i.cg, %middle.block ]
  %.02131.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i125.preheader ], [ %i.ch, %middle.block ]
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.preheader461, %.lr.ph.i125
  %.033.i = phi ptr [ %i.cp, %.lr.ph.i125 ], [ %.033.i.ph, %.lr.ph.i125.preheader461 ] ; 2 uses
  %.02032.i = phi ptr [ %i.co, %.lr.ph.i125 ], [ %.02032.i.ph, %.lr.ph.i125.preheader461 ] ; 3 uses
  %.02131.i = phi ptr [ %i.cn, %.lr.ph.i125 ], [ %.02131.i.ph, %.lr.ph.i125.preheader461 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.02032.i, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.033.i, i64 4 ; 2 uses
  %i.cq = load i32, ptr %.02032.i, align 4, !tbaa !296
  store i32 %i.cq, ptr %.033.i, align 4, !tbaa !296
  %i.cr = load i32, ptr %.02131.i, align 4, !tbaa !296
  store i32 %i.cr, ptr %.02032.i, align 4, !tbaa !296
  %.not28.i = icmp eq ptr %i.cn, %i.bd
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i125, !llvm.loop !3289

._crit_edge.i:                                    ; preds = %.lr.ph.i125, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.ac, %middle.block ], [ %i.cp, %.lr.ph.i125 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.cs = load i64, ptr %i.bi, align 8, !tbaa !319
  %i.ct = load i64, ptr %.0106222, align 8, !tbaa !319
  store i64 %i.ct, ptr %i.bi, align 8, !tbaa !319
  store i64 %i.cs, ptr %.0106222, align 8, !tbaa !319
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.cu = icmp eq ptr %i.bi, %.0190217
  br i1 %i.cu, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = icmp eq ptr %.0190217, %.0106222
  %spec.select = select i1 %i.cv, ptr %i.bi, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit
  %.5 = phi ptr [ %.0190217, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %spec.select, %bb.m ], [ %.0106222, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.d, align 8, !tbaa !299
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cw = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_(ptr noundef %.0114218, ptr noundef %.0111219, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.bd, ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit

bb.p:                                             ; preds = %.thread276, %bb.n
  %i.cx = phi i1 [ true, %.thread276 ], [ %i.bn, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !439
  %i.cy = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %.0114218, ptr noundef %.0111219, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.bd, ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.cz = phi i1 [ %i.bn, %bb.o ], [ %i.cx, %bb.p ]
  %i.da = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.db = phi ptr [ %i.cw, %bb.o ], [ %i.cy, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.dc = load ptr, ptr %i.c, align 8, !tbaa !299 ; 4 uses
  %i.dd = load ptr, ptr %i.d, align 8, !tbaa !299 ; 4 uses
  %i.de = icmp eq ptr %i.dc, %i.dd                ; 2 uses
  br i1 %i.de, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit
  store ptr %7, ptr %i.c, align 8, !tbaa !299
  %i.df = load ptr, ptr %i.e, align 8, !tbaa !299 ; 10 uses
  %i.dg = ptrtoint ptr %i.bd to i64
  %i.dh = ptrtoint ptr %i.df to i64               ; 3 uses
  %i.di = sub i64 %i.dg, %i.dh                    ; 2 uses
  %i.dj = ashr exact i64 %i.di, 2
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.dk ; 7 uses
  %.not.i126 = icmp eq ptr %i.df, %i.dl
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.q
  %.not2830.i128 = icmp eq ptr %i.df, %i.bd
  br i1 %.not2830.i128, label %._crit_edge.i134, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %.preheader.i127
  %i.dm = mul i64 %indvar, %.idx207               ; 3 uses
  %i.dn = add i64 %i.w, %i.dm                     ; 2 uses
  %i.do = sub i64 %i.dn, %i.dh                    ; 2 uses
  %i.dp = lshr i64 %i.do, 2
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 2 uses
  %min.iters.check357 = icmp ult i64 %i.do, 76
  br i1 %min.iters.check357, label %.lr.ph.i129.preheader463, label %vector.memcheck358

vector.memcheck358:                               ; preds = %.lr.ph.i129.preheader
  %i.dr = add i64 %i.s, %i.dm
  %i.ds = sub i64 %i.dr, %i.dh
  %i.dt = and i64 %i.ds, -4                       ; 3 uses
  %i.du = getelementptr i8, ptr %scevgep355, i64 %i.dt ; 2 uses
  %i.dv = add i64 %i.p, %i.dm
  %i.dw = shl i64 %.022.lcssa.i, 2
  %i.dx = add i64 %i.dw, 4
  %i.dy = mul i64 %2, %i.dx
  %i.dz = add i64 %i.dv, %i.dy
  %i.ea = add i64 %i.dz, %i.dt
  %i.eb = sub i64 %i.ea, %i.di
  %i.ec = getelementptr i8, ptr %1, i64 %i.eb     ; 2 uses
  %17 = getelementptr i8, ptr %i.df, i64 %i.dt
  %18 = getelementptr i8, ptr %17, i64 4          ; 2 uses
  %bound0359 = icmp ult ptr %7, %i.ec
  %bound1360 = icmp ult ptr %i.dl, %i.du
  %found.conflict361 = and i1 %bound0359, %bound1360
  %bound0362 = icmp ult ptr %7, %18
  %bound1363 = icmp ult ptr %i.df, %i.du
  %found.conflict364 = and i1 %bound0362, %bound1363
  %conflict.rdx365 = or i1 %found.conflict361, %found.conflict364
  %bound0366 = icmp ult ptr %i.dl, %18
  %bound1367 = icmp ult ptr %i.df, %i.ec
  %found.conflict368 = and i1 %bound0366, %bound1367
  %conflict.rdx369 = or i1 %conflict.rdx365, %found.conflict368
  br i1 %conflict.rdx369, label %.lr.ph.i129.preheader463, label %vector.ph370

vector.ph370:                                     ; preds = %vector.memcheck358
  %n.vec371 = and i64 %i.dq, 9223372036854775800  ; 3 uses
  %i.ed = shl i64 %n.vec371, 2                    ; 3 uses
  %i.ee = getelementptr i8, ptr %7, i64 %i.ed     ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dl, i64 %i.ed
  %i.eg = getelementptr i8, ptr %i.df, i64 %i.ed
  br label %vector.body372

vector.body372:                                   ; preds = %vector.body372, %vector.ph370
  %index373 = phi i64 [ 0, %vector.ph370 ], [ %index.next381, %vector.body372 ] ; 2 uses
  %i.eh = shl i64 %index373, 2                    ; 3 uses
  %next.gep374 = getelementptr i8, ptr %7, i64 %i.eh ; 2 uses
  %next.gep375 = getelementptr i8, ptr %i.dl, i64 %i.eh ; 3 uses
  %next.gep376 = getelementptr i8, ptr %i.df, i64 %i.eh ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep375, i64 16 ; 2 uses
  %wide.load377 = load <4 x i32>, ptr %next.gep375, align 4, !tbaa !296, !alias.scope !3318, !noalias !3319
  %wide.load378 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !296, !alias.scope !3318, !noalias !3319
  %i.ej = getelementptr i8, ptr %next.gep374, i64 16
  store <4 x i32> %wide.load377, ptr %next.gep374, align 4, !tbaa !296, !alias.scope !3320, !noalias !3321
  store <4 x i32> %wide.load378, ptr %i.ej, align 4, !tbaa !296, !alias.scope !3320, !noalias !3321
  %i.ek = getelementptr i8, ptr %next.gep376, i64 16
  %wide.load379 = load <4 x i32>, ptr %next.gep376, align 4, !tbaa !296, !alias.scope !3319
  %wide.load380 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !296, !alias.scope !3319
  store <4 x i32> %wide.load379, ptr %next.gep375, align 4, !tbaa !296, !alias.scope !3318, !noalias !3319
  store <4 x i32> %wide.load380, ptr %i.ei, align 4, !tbaa !296, !alias.scope !3318, !noalias !3319
  %index.next381 = add nuw i64 %index373, 8       ; 2 uses
  %i.el = icmp eq i64 %index.next381, %n.vec371
  br i1 %i.el, label %middle.block382, label %vector.body372, !llvm.loop !3294

middle.block382:                                  ; preds = %vector.body372
  %cmp.n383 = icmp eq i64 %i.dq, %n.vec371
  br i1 %cmp.n383, label %._crit_edge.i134, label %.lr.ph.i129.preheader463

.lr.ph.i129.preheader463:                         ; preds = %vector.memcheck358, %.lr.ph.i129.preheader, %middle.block382
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck358 ], [ %7, %.lr.ph.i129.preheader ], [ %i.ee, %middle.block382 ] ; 2 uses
  %.02032.i131.ph = phi ptr [ %i.dl, %vector.memcheck358 ], [ %i.dl, %.lr.ph.i129.preheader ], [ %i.ef, %middle.block382 ] ; 2 uses
  %.02131.i132.ph = phi ptr [ %i.df, %vector.memcheck358 ], [ %i.df, %.lr.ph.i129.preheader ], [ %i.eg, %middle.block382 ] ; 3 uses
  %.02131.i132.ph466 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.em = sub i64 %i.dn, %.02131.i132.ph466       ; 2 uses
  %i.en = lshr i64 %i.em, 2
  %i.eo = add nuw nsw i64 %i.en, 1
  %xtraiter = and i64 %i.eo, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader463, %.lr.ph.i129.prol
  %.033.i130.prol = phi ptr [ %i.er, %.lr.ph.i129.prol ], [ %.033.i130.ph, %.lr.ph.i129.preheader463 ] ; 2 uses
  %.02032.i131.prol = phi ptr [ %i.eq, %.lr.ph.i129.prol ], [ %.02032.i131.ph, %.lr.ph.i129.preheader463 ] ; 3 uses
  %.02131.i132.prol = phi ptr [ %i.ep, %.lr.ph.i129.prol ], [ %.02131.i132.ph, %.lr.ph.i129.preheader463 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i129.prol ], [ 0, %.lr.ph.i129.preheader463 ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.02131.i132.prol, i64 4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.02032.i131.prol, i64 4 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.033.i130.prol, i64 4 ; 3 uses
  %i.es = load i32, ptr %.02032.i131.prol, align 4, !tbaa !296
  store i32 %i.es, ptr %.033.i130.prol, align 4, !tbaa !296
  %i.et = load i32, ptr %.02131.i132.prol, align 4, !tbaa !296
  store i32 %i.et, ptr %.02032.i131.prol, align 4, !tbaa !296
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol, !llvm.loop !3295

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader463
  %.lcssa464.unr = phi ptr [ poison, %.lr.ph.i129.preheader463 ], [ %i.er, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader463 ], [ %i.er, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader463 ], [ %i.eq, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader463 ], [ %i.ep, %.lr.ph.i129.prol ]
  %i.eu = icmp ult i64 %i.em, 12
  br i1 %i.eu, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.fm, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %.02032.i131 = phi ptr [ %i.fl, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %.02131.i132 = phi ptr [ %i.fk, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  %i.ey = load i32, ptr %.02032.i131, align 4, !tbaa !296
  store i32 %i.ey, ptr %.033.i130, align 4, !tbaa !296
  %i.ez = load i32, ptr %.02131.i132, align 4, !tbaa !296
  store i32 %i.ez, ptr %.02032.i131, align 4, !tbaa !296
  %i.fa = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8
  %i.fd = load i32, ptr %i.ew, align 4, !tbaa !296
  store i32 %i.fd, ptr %i.ex, align 4, !tbaa !296
  %i.fe = load i32, ptr %i.ev, align 4, !tbaa !296
  store i32 %i.fe, ptr %i.ew, align 4, !tbaa !296
  %i.ff = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12
  %i.fg = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12
  %i.fi = load i32, ptr %i.fb, align 4, !tbaa !296
  store i32 %i.fi, ptr %i.fc, align 4, !tbaa !296
  %i.fj = load i32, ptr %i.fa, align 4, !tbaa !296
  store i32 %i.fj, ptr %i.fb, align 4, !tbaa !296
  %i.fk = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.fn = load i32, ptr %i.fg, align 4, !tbaa !296
  store i32 %i.fn, ptr %i.fh, align 4, !tbaa !296
  %i.fo = load i32, ptr %i.ff, align 4, !tbaa !296
  store i32 %i.fo, ptr %i.fg, align 4, !tbaa !296
  %.not28.i133.3 = icmp eq ptr %i.fk, %i.bd
  br i1 %.not28.i133.3, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !3296

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block382, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.ee, %middle.block382 ], [ %.lcssa464.unr, %.lr.ph.i129.prol.loopexit ], [ %i.fm, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.fp = load i64, ptr %i.bi, align 8, !tbaa !319
  %i.fq = load i64, ptr %.0106222, align 8, !tbaa !319
  store i64 %i.fq, ptr %i.bi, align 8, !tbaa !319
  store i64 %i.fp, ptr %.0106222, align 8, !tbaa !319
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.fr = icmp eq ptr %i.bi, %.0190217
  br i1 %i.fr, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fs = icmp eq ptr %.0190217, %.0106222
  %spec.select204 = select i1 %i.fs, ptr %i.bi, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0190217, %bb.q ], [ %spec.select204, %bb.t ], [ %.0106222, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.d, align 8, !tbaa !299
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ft = load i64, ptr %i.bi, align 8, !tbaa !319
  %i.fu = load i64, ptr %.0106222, align 8, !tbaa !319
  store i64 %i.fu, ptr %i.bi, align 8, !tbaa !319
  store i64 %i.ft, ptr %.0106222, align 8, !tbaa !319
  %i.fv = icmp eq ptr %i.bi, %.0190217
  br i1 %i.fv, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fw = icmp eq ptr %.0190217, %.0106222
  %spec.select205 = select i1 %i.fw, ptr %i.bi, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140
  %i.fx = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140 ], [ %i.dd, %bb.u ], [ %i.dd, %bb.w ], [ %i.dd, %bb.v ]
  %i.fy = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140 ], [ %i.dc, %bb.u ], [ %i.dc, %bb.w ], [ %i.dc, %bb.v ]
  %.1191 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140 ], [ %.0190217, %bb.u ], [ %spec.select205, %bb.w ], [ %.0106222, %bb.v ]
  %i.fz = xor i1 %i.da, %i.de
  %i.ga = zext i1 %i.fz to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit
  %i.gb = phi ptr [ %i.fx, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit ] ; 2 uses
  %i.gc = phi ptr [ %i.fy, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit ] ; 2 uses
  %i.gd = phi i1 [ %i.cz, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.bq, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit ]
  %.2192 = phi ptr [ %.1191, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.db, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.af, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.ga, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.0108221, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gd, true
  %i.ge = sext i1 %not. to i64
  %.1 = add i64 %.0226, %i.ge
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.0111219, i64 %2 ; 2 uses
  store ptr %i.bd, ptr %i.e, align 8, !tbaa !299
  %i.gg = getelementptr inbounds nuw i8, ptr %.0106222, i64 8
  %i.gh = icmp ne i64 %.0104225, 0
  %.neg = sext i1 %i.gh to i64
  %i.gi = add i64 %.0104225, %.neg
  %i.gj = icmp ne i64 %i.az, 0
  %.neg122 = sext i1 %i.gj to i64
  %i.gk = add i64 %.sroa.speculated179, %.neg122
  %i.gl = add i64 %.0194216, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gl, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !3297

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.gm = phi ptr [ %i.gb, %bb.x ], [ %i.ad, %bb.g ], [ %i.ad, %bb.f ] ; 3 uses
  %i.gn = phi ptr [ %i.gc, %bb.x ], [ %i.ae, %bb.g ], [ %i.ae, %bb.f ] ; 5 uses
  %.0194.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0194216, %bb.g ], [ %.0194216, %bb.f ] ; 3 uses
  %.0190.lcssa.ph = phi ptr [ %.2192, %bb.x ], [ %.0190217, %bb.g ], [ %.0190217, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114218, %bb.g ], [ %.0114218, %bb.f ] ; 5 uses
  %.0111.lcssa.ph = phi ptr [ %i.gf, %bb.x ], [ %.0111219, %bb.g ], [ %.0111219, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108221, %bb.f ]
  %i.go = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.gp = select i1 %i.go, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_S5_S5_SG_NS0_7move_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_:bb.a
  store i32 %i.ba, ptr %i.au, align 4, !tbaa !296, !noalias !3363
  %.not28.i.i = icmp eq ptr %i.ay, %i.ad
  br i1 %.not28.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !56

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.ax, ptr %i.bb, align 4, !tbaa !296, !noalias !3363
  %.not27.i19.i = icmp eq ptr %i.av, %i.ai
  br i1 %.not27.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !56

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bh, %bb.n ], [ %i.aj, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bi, %bb.n ], [ %i.f, %bb.m ] ; 3 uses
  %.sroa.012.0.i.i.ph = phi ptr [ %.sroa.012.0.i.i, %bb.n ], [ %i.ak, %bb.m ]
  %i.bc = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bh, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.012.0.i.i = phi ptr [ %i.bd, %bb.o ], [ %.sroa.012.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.012.0.i.i, i64 -4 ; 4 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !296, !noalias !3364 ; 2 uses
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !296, !noalias !3364 ; 2 uses
  %i.bg = icmp slt i32 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 6 uses
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bi = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4 ; 2 uses
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !296, !noalias !3364
  %i.bj = icmp eq ptr %i.bi, %i.ad
  br i1 %i.bj, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !57

bb.o:                                             ; preds = %.preheader.i.i
  store i32 %i.be, ptr %i.bh, align 4, !tbaa !296, !noalias !3364
  %i.bk = icmp eq ptr %i.bd, %i.ai
  br i1 %i.bk, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !57

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.bp, %bb.q ], [ %i.aj, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.bq, %bb.q ], [ %i.f, %bb.p ] ; 3 uses
  %.sroa.012.0.i8.i.ph = phi ptr [ %.sroa.012.0.i8.i, %bb.q ], [ %i.ak, %bb.p ]
  %i.bl = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.bp, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.012.0.i8.i = phi ptr [ %i.bm, %bb.r ], [ %.sroa.012.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 4 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !296, !noalias !3365 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !296, !noalias !3365 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.bn, %i.bo
  %i.bp = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 6 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bq = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 2 uses
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !296, !noalias !3365
  %i.br = icmp eq ptr %i.bq, %i.ad
  br i1 %i.br, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !58

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !296, !noalias !3365
  %i.bs = icmp eq ptr %i.bm, %i.ai
  br i1 %i.bs, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !58

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.am, %bb.h ], [ %i.av, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.ak, %bb.p ], [ %i.ak, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bd, %bb.o ], [ %i.bm, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.ad, %bb.q ], [ %i.ad, %bb.n ], [ %i.f, %bb.p ], [ %i.f, %bb.m ], [ %i.ad, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ad, %.split.i14.i ]
  %.sroa.064.0.ph = phi ptr [ %i.at, %bb.h ], [ %i.bb, %bb.k ], [ %i.bp, %bb.r ], [ %i.bh, %bb.o ], [ %i.aj, %bb.p ], [ %i.aj, %bb.m ], [ %i.ar, %.split.i.i ], [ %i.bh, %bb.n ], [ %i.bp, %bb.q ], [ %i.az, %.split.i14.i ]
  %.sroa.069.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.ag, %bb.r ], [ %i.ag, %bb.o ], [ %i.ag, %bb.p ], [ %i.ag, %bb.m ], [ %i.al, %.split.i.i ], [ %i.ag, %bb.n ], [ %i.ag, %bb.q ], [ %i.au, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !441, !noalias !398
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !441, !noalias !398
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.064.0 = phi ptr [ %i.aj, %bb.f ], [ %i.aj, %bb.i ], [ %.sroa.064.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 15 uses
  %.sroa.069.0 = phi ptr [ %i.ag, %bb.f ], [ %i.ag, %bb.i ], [ %.sroa.069.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 16 uses
  %.sroa.064.0316 = ptrtoaddr ptr %.sroa.064.0 to i64
  %.sroa.069.0308 = ptrtoaddr ptr %.sroa.069.0 to i64
  store ptr %.sroa.064.0, ptr %6, align 8, !tbaa !441
  %i.bt = load ptr, ptr %3, align 8, !tbaa !441   ; 20 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64              ; 4 uses
  %i.bv = icmp eq ptr %i.bt, %.sroa.064.0
  br i1 %i.bv, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.ah
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %bb.t
  %i.bw = shl i64 %.018.lcssa.i, 2
  %.neg381 = add i64 %i.bw, 4
  %.neg382 = mul i64 %.neg381, %7
  %i.bx = add i64 %.sroa.069.0308, -4             ; 2 uses
  %i.by = add i64 %.neg382, %i.bx
  %i.bz = sub i64 %i.by, %i.g                     ; 2 uses
  %i.ca = lshr i64 %i.bz, 2
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bz, 44
  br i1 %min.iters.check, label %.lr.ph.i28.preheader387, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %i.cc = shl i64 %.018.lcssa.i, 2
  %.neg383 = add i64 %i.cc, 4
  %.neg384 = mul i64 %.neg383, %7
  %i.cd = add i64 %.neg384, %i.bx
  %i.ce = xor i64 %i.cd, -1
  %.not385 = add i64 %i.ce, %i.g
  %i.cf = and i64 %.not385, -4                    ; 2 uses
  %i.cg = getelementptr i8, ptr %.sroa.069.0, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.bt, i64 %i.cf
  %bound0 = icmp ult ptr %i.cg, %i.bt
  %bound1 = icmp ult ptr %i.ch, %.sroa.069.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader387, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cb, 9223372036854775800     ; 3 uses
  %i.ci = mul i64 %n.vec, -4                      ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bt, i64 %i.ci  ; 2 uses
  %i.ck = getelementptr i8, ptr %.sroa.069.0, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.cl ; 2 uses
  %next.gep309 = getelementptr i8, ptr %.sroa.069.0, i64 %i.cl ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %next.gep309, i64 -16 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %next.gep309, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cm, align 4, !tbaa !296, !alias.scope !3366, !noalias !3367
  %wide.load310 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !296, !alias.scope !3366, !noalias !3367
  %i.co = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load311 = load <4 x i32>, ptr %i.co, align 4, !tbaa !296, !alias.scope !3368, !noalias !3369
  %wide.load312 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !296, !alias.scope !3368, !noalias !3369
  store <4 x i32> %wide.load311, ptr %i.cm, align 4, !tbaa !296, !alias.scope !3366, !noalias !3367
  store <4 x i32> %wide.load312, ptr %i.cn, align 4, !tbaa !296, !alias.scope !3366, !noalias !3367
  store <4 x i32> %wide.load, ptr %i.co, align 4, !tbaa !296, !alias.scope !3368, !noalias !3369
  store <4 x i32> %wide.load310, ptr %i.cp, align 4, !tbaa !296, !alias.scope !3368, !noalias !3369
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !3345

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader387

.lr.ph.i28.preheader387:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.052.0.ph = phi ptr [ %i.bt, %vector.memcheck ], [ %i.bt, %.lr.ph.i28.preheader ], [ %i.cj, %middle.block ]
  %.ph = phi ptr [ %.sroa.069.0, %vector.memcheck ], [ %.sroa.069.0, %.lr.ph.i28.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader387, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.ct, %.lr.ph.i28 ], [ %.sroa.052.0.ph, %.lr.ph.i28.preheader387 ]
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader387 ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !296, !noalias !3369
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !296, !noalias !3369
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !296, !noalias !3369
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !296, !noalias !3369
  %.not.i = icmp eq ptr %i.cs, %i.ah
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28, !llvm.loop !3346

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.bt, %i.ad           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %.reass = add i64 %i.bu, %invariant.op
  %i.cw = sub i64 %.reass, %i.g                   ; 2 uses
  %i.cx = lshr i64 %i.cw, 2
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %min.iters.check350 = icmp ult i64 %i.cw, 60
  br i1 %min.iters.check350, label %.lr.ph.i29.preheader391, label %vector.memcheck351

vector.memcheck351:                               ; preds = %.lr.ph.i29.preheader
  %i.cz = add i64 %i.b, %i.bu
  %reass.sub = sub i64 %i.g, %i.cz
  %.not379 = add i64 %reass.sub, 3
  %i.da = and i64 %.not379, -4                    ; 3 uses
  %i.db = getelementptr i8, ptr %.sroa.064.0, i64 %i.da ; 2 uses
  %i.dc = getelementptr i8, ptr %.sroa.069.0, i64 %i.da ; 2 uses
  %12 = getelementptr i8, ptr %i.bt, i64 %i.da    ; 2 uses
  %bound0352.a = icmp ult ptr %i.db, %.sroa.069.0
  %bound1353 = icmp ult ptr %i.dc, %.sroa.064.0
  %found.conflict354 = and i1 %bound0352.a, %bound1353
  %bound0355 = icmp ult ptr %i.db, %i.bt
  %bound1356 = icmp ult ptr %12, %.sroa.064.0
  %found.conflict357 = and i1 %bound0355, %bound1356
  %conflict.rdx = or i1 %found.conflict354, %found.conflict357
  %bound0358 = icmp ult ptr %i.dc, %i.bt
  %bound1359 = icmp ult ptr %12, %.sroa.069.0
  %found.conflict360 = and i1 %bound0358, %bound1359
  %conflict.rdx361 = or i1 %conflict.rdx, %found.conflict360
  br i1 %conflict.rdx361, label %.lr.ph.i29.preheader391, label %vector.ph362

vector.ph362:                                     ; preds = %vector.memcheck351
  %n.vec363 = and i64 %i.cy, 9223372036854775800  ; 3 uses
  %i.dd = mul i64 %n.vec363, -4                   ; 3 uses
  %i.de = getelementptr i8, ptr %.sroa.069.0, i64 %i.dd
  %i.df = getelementptr i8, ptr %.sroa.064.0, i64 %i.dd ; 2 uses
  %i.dg = getelementptr i8, ptr %i.bt, i64 %i.dd
  br label %vector.body364

vector.body364:                                   ; preds = %vector.body364, %vector.ph362
  %index365 = phi i64 [ 0, %vector.ph362 ], [ %index.next373, %vector.body364 ] ; 2 uses
  %i.dh = mul i64 %index365, -4                   ; 3 uses
  %next.gep366 = getelementptr i8, ptr %.sroa.069.0, i64 %i.dh ; 2 uses
  %next.gep367 = getelementptr i8, ptr %.sroa.064.0, i64 %i.dh ; 2 uses
  %next.gep368 = getelementptr i8, ptr %i.bt, i64 %i.dh ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %next.gep366, i64 -16 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %next.gep366, i64 -32 ; 2 uses
  %wide.load369 = load <4 x i32>, ptr %i.di, align 4, !tbaa !296, !alias.scope !3370, !noalias !3371
  %wide.load370 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !296, !alias.scope !3370, !noalias !3371
  %i.dk = getelementptr inbounds i8, ptr %next.gep367, i64 -16
  %i.dl = getelementptr inbounds i8, ptr %next.gep367, i64 -32
  store <4 x i32> %wide.load369, ptr %i.dk, align 4, !tbaa !296, !alias.scope !3372, !noalias !3373
  store <4 x i32> %wide.load370, ptr %i.dl, align 4, !tbaa !296, !alias.scope !3372, !noalias !3373
  %i.dm = getelementptr inbounds i8, ptr %next.gep368, i64 -16
  %i.dn = getelementptr inbounds i8, ptr %next.gep368, i64 -32
  %wide.load371 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !296, !alias.scope !3374, !noalias !3375
  %wide.load372 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !296, !alias.scope !3374, !noalias !3375
  store <4 x i32> %wide.load371, ptr %i.di, align 4, !tbaa !296, !alias.scope !3370, !noalias !3371
  store <4 x i32> %wide.load372, ptr %i.dj, align 4, !tbaa !296, !alias.scope !3370, !noalias !3371
  %index.next373 = add nuw i64 %index365, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next373, %n.vec363
  br i1 %i.do, label %middle.block374, label %vector.body364, !llvm.loop !3353

middle.block374:                                  ; preds = %vector.body364
  %cmp.n375 = icmp eq i64 %i.cy, %n.vec363
  br i1 %cmp.n375, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader391

.lr.ph.i29.preheader391:                          ; preds = %vector.memcheck351, %.lr.ph.i29.preheader, %middle.block374
  %.sroa.046.0.ph = phi ptr [ %.sroa.069.0, %vector.memcheck351 ], [ %.sroa.069.0, %.lr.ph.i29.preheader ], [ %i.de, %middle.block374 ]
  %.sroa.045.0.ph = phi ptr [ %.sroa.064.0, %vector.memcheck351 ], [ %.sroa.064.0, %.lr.ph.i29.preheader ], [ %i.df, %middle.block374 ]
  %.ph392 = phi ptr [ %i.bt, %vector.memcheck351 ], [ %i.bt, %.lr.ph.i29.preheader ], [ %i.dg, %middle.block374 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader391, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dr, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader391 ]
  %.sroa.045.0 = phi ptr [ %i.ds, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader391 ]
  %i.dp = phi ptr [ %i.dq, %.lr.ph.i29 ], [ %.ph392, %.lr.ph.i29.preheader391 ]
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -4 ; 3 uses
  %i.dr = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 3 uses
  %i.ds = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !296, !noalias !3375
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !296, !noalias !3375
  %i.du = load i32, ptr %i.dq, align 4, !tbaa !296, !noalias !3375
  store i32 %i.du, ptr %i.dr, align 4, !tbaa !296, !noalias !3375
  %.not.i30 = icmp eq ptr %i.dq, %i.ad
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29, !llvm.loop !3354

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %.reass497 = add i64 %i.bu, %invariant.op496
  %i.dv = sub i64 %.reass497, %i.g                ; 2 uses
  %i.dw = lshr i64 %i.dv, 2
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %min.iters.check318 = icmp ult i64 %i.dv, 28
  %i.dy = sub i64 %.sroa.064.0316, %i.bu
  %diff.check = icmp ugt i64 %i.dy, -32
  %or.cond = or i1 %min.iters.check318, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader388, label %vector.ph320

vector.ph320:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec321 = and i64 %i.dx, 9223372036854775800  ; 3 uses
  %i.dz = mul i64 %n.vec321, -4                   ; 2 uses
  %i.ea = getelementptr i8, ptr %.sroa.064.0, i64 %i.dz ; 2 uses
  %i.eb = getelementptr i8, ptr %i.bt, i64 %i.dz
  br label %vector.body322

vector.body322:                                   ; preds = %vector.body322, %vector.ph320
  %index323 = phi i64 [ 0, %vector.ph320 ], [ %index.next328, %vector.body322 ] ; 2 uses
  %i.ec = mul i64 %index323, -4                   ; 2 uses
  %next.gep324 = getelementptr i8, ptr %.sroa.064.0, i64 %i.ec ; 2 uses
  %next.gep325 = getelementptr i8, ptr %i.bt, i64 %i.ec ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %next.gep325, i64 -16
  %i.ee = getelementptr inbounds i8, ptr %next.gep325, i64 -32
  %wide.load326 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !296, !noalias !3376
  %wide.load327 = load <4 x i32>, ptr %i.ee, align 4, !tbaa !296, !noalias !3376
  %i.ef = getelementptr inbounds i8, ptr %next.gep324, i64 -16
  %i.eg = getelementptr inbounds i8, ptr %next.gep324, i64 -32
  store <4 x i32> %wide.load326, ptr %i.ef, align 4, !tbaa !296, !noalias !3376
  store <4 x i32> %wide.load327, ptr %i.eg, align 4, !tbaa !296, !noalias !3376
  %index.next328 = add nuw i64 %index323, 8       ; 2 uses
  %i.eh = icmp eq i64 %index.next328, %n.vec321
  br i1 %i.eh, label %middle.block329, label %vector.body322, !llvm.loop !3359

middle.block329:                                  ; preds = %vector.body322
  %cmp.n330 = icmp eq i64 %i.dx, %n.vec321
  br i1 %cmp.n330, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader388

.lr.ph.i.i.preheader388:                          ; preds = %.lr.ph.i.i.preheader, %middle.block329
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.ea, %middle.block329 ]
  %.ph389 = phi ptr [ %i.bt, %.lr.ph.i.i.preheader ], [ %i.eb, %middle.block329 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader388, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.el, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader388 ]
  %i.ei = phi ptr [ %i.ej, %.lr.ph.i.i ], [ %.ph389, %.lr.ph.i.i.preheader388 ]
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -4 ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !296, !noalias !3376
  %i.el = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !296, !noalias !3376
  %.not.i.i31 = icmp eq ptr %i.ej, %i.ad
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !3360

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block374, %middle.block329, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ad, %bb.s ], [ %i.el, %.lr.ph.i.i ], [ %i.bt, %bb.t ], [ %i.ct, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.cj, %middle.block ], [ %i.ea, %middle.block329 ], [ %i.df, %middle.block374 ], [ %i.ds, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !441
  %i.em = load ptr, ptr %1, align 8, !tbaa !441   ; 4 uses
  %.neg98 = mul i64 %.018.lcssa.i, -4             ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.ad, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -4 ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.em, i64 -4 ; 2 uses
  %i.eq = load i32, ptr %i.eo, align 4, !tbaa !296
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !296
  store i32 %i.er, ptr %i.eo, align 4, !tbaa !296
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !296
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.es = load ptr, ptr %2, align 8, !tbaa !441   ; 2 uses
  %i.et = icmp eq ptr %i.en, %i.es
  br i1 %i.et, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = icmp eq ptr %i.es, %i.em
  br i1 %i.eu, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.em, %bb.y ], [ %i.en, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !441
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, %bb.z, %.sink.split.i
  store ptr %i.ad, ptr %3, align 8, !tbaa !441
  %i.ev = load ptr, ptr %1, align 8, !tbaa !441
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -4 ; 2 uses
  store ptr %i.ew, ptr %1, align 8, !tbaa !441
  %i.ex = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.ex to i64
  %i.ey = add i64 %.0140, %.neg
  %i.ez = icmp ne i64 %i.ac, 0
  %.neg24 = sext i1 %i.ez to i64
  %i.fa = add i64 %.sroa.speculated, %.neg24
  %i.fb = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.fb, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3361

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit, %bb.a
  %i.fc = load ptr, ptr %6, align 8, !tbaa !441
  store ptr %i.fc, ptr %0, align 8, !tbaa !441
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !299    ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !299    ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !299    ; 9 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_T_SF_RT0_SG_SH_RSE_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load i32, ptr %4, align 4, !tbaa !296
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_S5_S5_SG_NS0_7swap_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_:bb.a
  store i32 %i.ba, ptr %i.bf, align 4, !tbaa !296, !noalias !3427
  store i32 %i.bg, ptr %i.ay, align 4, !tbaa !296, !noalias !3427
  %.not27.i19.i = icmp eq ptr %i.ay, %i.aj
  br i1 %.not27.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !66

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bm, %bb.n ], [ %i.ak, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bo, %bb.n ], [ %i.g, %bb.m ] ; 3 uses
  %.sroa.012.0.i.i.ph = phi ptr [ %.sroa.012.0.i.i, %bb.n ], [ %i.al, %bb.m ]
  %i.bh = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bm, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.012.0.i.i = phi ptr [ %i.bi, %bb.o ], [ %.sroa.012.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %.sroa.012.0.i.i, i64 -4 ; 5 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !296, !noalias !3428 ; 2 uses
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !296, !noalias !3428 ; 2 uses
  %i.bl = icmp slt i32 %i.bj, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 7 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !296, !noalias !3428 ; 2 uses
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bo = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4 ; 3 uses
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !296, !noalias !3428
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !296, !noalias !3428
  %i.bp = icmp eq ptr %i.bo, %i.ae
  br i1 %i.bp, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !67

bb.o:                                             ; preds = %.preheader.i.i
  store i32 %i.bj, ptr %i.bm, align 4, !tbaa !296, !noalias !3428
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !296, !noalias !3428
  %i.bq = icmp eq ptr %i.bi, %i.aj
  br i1 %i.bq, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !67

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.bv, %bb.q ], [ %i.ak, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.bx, %bb.q ], [ %i.g, %bb.p ] ; 3 uses
  %.sroa.012.0.i8.i.ph = phi ptr [ %.sroa.012.0.i8.i, %bb.q ], [ %i.al, %bb.p ]
  %i.br = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.bv, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.012.0.i8.i = phi ptr [ %i.bs, %bb.r ], [ %.sroa.012.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 5 uses
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !296, !noalias !3429 ; 2 uses
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !296, !noalias !3429 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.bt, %i.bu
  %i.bv = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 7 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !296, !noalias !3429 ; 2 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bx = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 3 uses
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !296, !noalias !3429
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !296, !noalias !3429
  %i.by = icmp eq ptr %i.bx, %i.ae
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !68

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !296, !noalias !3429
  store i32 %i.bw, ptr %i.bs, align 4, !tbaa !296, !noalias !3429
  %i.bz = icmp eq ptr %i.bs, %i.aj
  br i1 %i.bz, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !68

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.an, %bb.h ], [ %i.ay, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.al, %bb.p ], [ %i.al, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bi, %bb.o ], [ %i.bs, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.ae, %bb.q ], [ %i.ae, %bb.n ], [ %i.g, %bb.p ], [ %i.g, %bb.m ], [ %i.ae, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ae, %.split.i14.i ]
  %.sroa.064.0.ph = phi ptr [ %i.av, %bb.h ], [ %i.bf, %bb.k ], [ %i.bv, %bb.r ], [ %i.bm, %bb.o ], [ %i.ak, %bb.p ], [ %i.ak, %bb.m ], [ %i.as, %.split.i.i ], [ %i.bm, %bb.n ], [ %i.bv, %bb.q ], [ %i.bc, %.split.i14.i ]
  %.sroa.069.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.ah, %bb.r ], [ %i.ah, %bb.o ], [ %i.ah, %bb.p ], [ %i.ah, %bb.m ], [ %i.am, %.split.i.i ], [ %i.ah, %bb.n ], [ %i.ah, %bb.q ], [ %i.ax, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !441, !noalias !398
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !441, !noalias !398
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.064.0 = phi ptr [ %i.ak, %bb.f ], [ %i.ak, %bb.i ], [ %.sroa.064.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 17 uses
  %.sroa.069.0 = phi ptr [ %i.ah, %bb.f ], [ %i.ah, %bb.i ], [ %.sroa.069.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 16 uses
  %.sroa.069.0308 = ptrtoaddr ptr %.sroa.069.0 to i64
  store ptr %.sroa.064.0, ptr %6, align 8, !tbaa !441
  %i.ca = load ptr, ptr %3, align 8, !tbaa !441   ; 23 uses
  %i.cb = ptrtoaddr ptr %i.ca to i64              ; 4 uses
  %i.cc = icmp eq ptr %i.ca, %.sroa.064.0
  br i1 %i.cc, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.ai
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %bb.t
  %i.cd = shl i64 %.018.lcssa.i, 2
  %.neg392 = add i64 %i.cd, 4
  %.neg393 = mul i64 %.neg392, %7
  %i.ce = add i64 %.sroa.069.0308, -4             ; 2 uses
  %i.cf = add i64 %.neg393, %i.ce
  %i.cg = sub i64 %i.cf, %i.h                     ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cg, 44
  br i1 %min.iters.check, label %.lr.ph.i28.preheader398, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %i.cj = shl i64 %.018.lcssa.i, 2
  %.neg394 = add i64 %i.cj, 4
  %.neg395 = mul i64 %.neg394, %7
  %i.ck = add i64 %.neg395, %i.ce
  %i.cl = xor i64 %i.ck, -1
  %.not396 = add i64 %i.cl, %i.h
  %i.cm = and i64 %.not396, -4                    ; 2 uses
  %i.cn = getelementptr i8, ptr %.sroa.069.0, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.ca, i64 %i.cm
  %bound0 = icmp ult ptr %i.cn, %i.ca
  %bound1 = icmp ult ptr %i.co, %.sroa.069.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader398, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ci, 9223372036854775800     ; 3 uses
  %i.cp = mul i64 %n.vec, -4                      ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ca, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %.sroa.069.0, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ca, i64 %i.cs ; 2 uses
  %next.gep309 = getelementptr i8, ptr %.sroa.069.0, i64 %i.cs ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %next.gep309, i64 -16 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %next.gep309, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ct, align 4, !tbaa !296, !alias.scope !3430, !noalias !3431
  %wide.load310 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !296, !alias.scope !3430, !noalias !3431
  %i.cv = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load311 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !296, !alias.scope !3432, !noalias !3433
  %wide.load312 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !296, !alias.scope !3432, !noalias !3433
  store <4 x i32> %wide.load311, ptr %i.ct, align 4, !tbaa !296, !alias.scope !3430, !noalias !3431
  store <4 x i32> %wide.load312, ptr %i.cu, align 4, !tbaa !296, !alias.scope !3430, !noalias !3431
  store <4 x i32> %wide.load, ptr %i.cv, align 4, !tbaa !296, !alias.scope !3432, !noalias !3433
  store <4 x i32> %wide.load310, ptr %i.cw, align 4, !tbaa !296, !alias.scope !3432, !noalias !3433
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !3406

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader398

.lr.ph.i28.preheader398:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.052.0.ph = phi ptr [ %i.ca, %vector.memcheck ], [ %i.ca, %.lr.ph.i28.preheader ], [ %i.cq, %middle.block ]
  %.ph = phi ptr [ %.sroa.069.0, %vector.memcheck ], [ %.sroa.069.0, %.lr.ph.i28.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader398, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.da, %.lr.ph.i28 ], [ %.sroa.052.0.ph, %.lr.ph.i28.preheader398 ]
  %i.cy = phi ptr [ %i.cz, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader398 ]
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -4 ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 4 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !296, !noalias !3433
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !296, !noalias !3433
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !296, !noalias !3433
  store i32 %i.db, ptr %i.da, align 4, !tbaa !296, !noalias !3433
  %.not.i = icmp eq ptr %i.cz, %i.ai
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28, !llvm.loop !3407

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.ca, %i.ae           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %.reass = add i64 %i.cb, %invariant.op
  %i.dd = sub i64 %.reass, %i.h                   ; 2 uses
  %i.de = lshr i64 %i.dd, 2
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check359 = icmp ult i64 %i.dd, 44
  br i1 %min.iters.check359, label %.lr.ph.i29.preheader402, label %vector.memcheck360

vector.memcheck360:                               ; preds = %.lr.ph.i29.preheader
  %i.dg = sub i64 %i.cb, %i.h
  %i.dh = add i64 %i.c, %i.dg
  %.not390 = and i64 %i.dh, -4
  %i.di = xor i64 %.not390, -4                    ; 3 uses
  %i.dj = getelementptr i8, ptr %.sroa.064.0, i64 %i.di ; 2 uses
  %i.dk = getelementptr i8, ptr %.sroa.069.0, i64 %i.di ; 2 uses
  %12 = getelementptr i8, ptr %i.ca, i64 %i.di    ; 2 uses
  %bound0361.a = icmp ult ptr %i.dj, %.sroa.069.0
  %bound1362 = icmp ult ptr %i.dk, %.sroa.064.0
  %found.conflict363 = and i1 %bound0361.a, %bound1362
  %bound0364 = icmp ult ptr %i.dj, %i.ca
  %bound1365 = icmp ult ptr %12, %.sroa.064.0
  %found.conflict366 = and i1 %bound0364, %bound1365
  %conflict.rdx = or i1 %found.conflict363, %found.conflict366
  %bound0367 = icmp ult ptr %i.dk, %i.ca
  %bound1368 = icmp ult ptr %12, %.sroa.069.0
  %found.conflict369 = and i1 %bound0367, %bound1368
  %conflict.rdx370 = or i1 %conflict.rdx, %found.conflict369
  br i1 %conflict.rdx370, label %.lr.ph.i29.preheader402, label %vector.ph371

vector.ph371:                                     ; preds = %vector.memcheck360
  %n.vec372 = and i64 %i.df, 9223372036854775800  ; 3 uses
  %i.dl = mul i64 %n.vec372, -4                   ; 3 uses
  %i.dm = getelementptr i8, ptr %.sroa.069.0, i64 %i.dl
  %i.dn = getelementptr i8, ptr %.sroa.064.0, i64 %i.dl ; 2 uses
  %i.do = getelementptr i8, ptr %i.ca, i64 %i.dl
  br label %vector.body373

vector.body373:                                   ; preds = %vector.body373, %vector.ph371
  %index374 = phi i64 [ 0, %vector.ph371 ], [ %index.next384, %vector.body373 ] ; 2 uses
  %i.dp = mul i64 %index374, -4                   ; 3 uses
  %next.gep375 = getelementptr i8, ptr %.sroa.069.0, i64 %i.dp ; 2 uses
  %next.gep376 = getelementptr i8, ptr %.sroa.064.0, i64 %i.dp ; 2 uses
  %next.gep377 = getelementptr i8, ptr %i.ca, i64 %i.dp ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %next.gep376, i64 -16 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %next.gep376, i64 -32 ; 2 uses
  %wide.load378 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !296, !alias.scope !3434, !noalias !3435
  %wide.load379 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !296, !alias.scope !3434, !noalias !3435
  %i.ds = getelementptr inbounds i8, ptr %next.gep375, i64 -16 ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %next.gep375, i64 -32 ; 2 uses
  %wide.load380 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !296, !alias.scope !3436, !noalias !3437
  %wide.load381 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !296, !alias.scope !3436, !noalias !3437
  store <4 x i32> %wide.load380, ptr %i.dq, align 4, !tbaa !296, !alias.scope !3434, !noalias !3435
  store <4 x i32> %wide.load381, ptr %i.dr, align 4, !tbaa !296, !alias.scope !3434, !noalias !3435
  %i.du = getelementptr inbounds i8, ptr %next.gep377, i64 -16 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %next.gep377, i64 -32 ; 2 uses
  %wide.load382 = load <4 x i32>, ptr %i.du, align 4, !tbaa !296, !alias.scope !3438, !noalias !3439
  %wide.load383 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !296, !alias.scope !3438, !noalias !3439
  store <4 x i32> %wide.load382, ptr %i.ds, align 4, !tbaa !296, !alias.scope !3436, !noalias !3437
  store <4 x i32> %wide.load383, ptr %i.dt, align 4, !tbaa !296, !alias.scope !3436, !noalias !3437
  store <4 x i32> %wide.load378, ptr %i.du, align 4, !tbaa !296, !alias.scope !3438, !noalias !3439
  store <4 x i32> %wide.load379, ptr %i.dv, align 4, !tbaa !296, !alias.scope !3438, !noalias !3439
  %index.next384 = add nuw i64 %index374, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next384, %n.vec372
  br i1 %i.dw, label %middle.block385, label %vector.body373, !llvm.loop !3414

middle.block385:                                  ; preds = %vector.body373
  %cmp.n386 = icmp eq i64 %i.df, %n.vec372
  br i1 %cmp.n386, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader402

.lr.ph.i29.preheader402:                          ; preds = %vector.memcheck360, %.lr.ph.i29.preheader, %middle.block385
  %.sroa.046.0.ph = phi ptr [ %.sroa.069.0, %vector.memcheck360 ], [ %.sroa.069.0, %.lr.ph.i29.preheader ], [ %i.dm, %middle.block385 ]
  %.sroa.045.0.ph = phi ptr [ %.sroa.064.0, %vector.memcheck360 ], [ %.sroa.064.0, %.lr.ph.i29.preheader ], [ %i.dn, %middle.block385 ]
  %.ph403 = phi ptr [ %i.ca, %vector.memcheck360 ], [ %i.ca, %.lr.ph.i29.preheader ], [ %i.do, %middle.block385 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader402, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dz, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader402 ]
  %.sroa.045.0 = phi ptr [ %i.ea, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader402 ]
  %i.dx = phi ptr [ %i.dy, %.lr.ph.i29 ], [ %.ph403, %.lr.ph.i29.preheader402 ]
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -4 ; 4 uses
  %i.dz = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 4 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !296, !noalias !3439
  %i.ec = load i32, ptr %i.dz, align 4, !tbaa !296, !noalias !3439
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !296, !noalias !3439
  %i.ed = load i32, ptr %i.dy, align 4, !tbaa !296, !noalias !3439
  store i32 %i.ed, ptr %i.dz, align 4, !tbaa !296, !noalias !3439
  store i32 %i.eb, ptr %i.dy, align 4, !tbaa !296, !noalias !3439
  %.not.i30 = icmp eq ptr %i.dy, %i.ae
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29, !llvm.loop !3415

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %.reass516 = add i64 %i.cb, %invariant.op515
  %i.ee = sub i64 %.reass516, %i.h                ; 2 uses
  %i.ef = lshr i64 %i.ee, 2
  %i.eg = add nuw nsw i64 %i.ef, 1                ; 2 uses
  %min.iters.check322 = icmp ult i64 %i.ee, 28
  br i1 %min.iters.check322, label %.lr.ph.i.i.preheader399, label %vector.memcheck323

vector.memcheck323:                               ; preds = %.lr.ph.i.i.preheader
  %i.eh = sub i64 %i.cb, %i.h
  %i.ei = add i64 %i.c, %i.eh
  %.not391 = and i64 %i.ei, -4
  %i.ej = xor i64 %.not391, -4                    ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ca, i64 %i.ej
  %i.el = getelementptr i8, ptr %.sroa.064.0, i64 %i.ej
  %bound0324 = icmp ult ptr %i.ek, %.sroa.064.0
  %bound1325 = icmp ult ptr %i.el, %i.ca
  %found.conflict326 = and i1 %bound0324, %bound1325
  br i1 %found.conflict326, label %.lr.ph.i.i.preheader399, label %vector.ph327

vector.ph327:                                     ; preds = %vector.memcheck323
  %n.vec328 = and i64 %i.eg, 9223372036854775800  ; 3 uses
  %i.em = mul i64 %n.vec328, -4                   ; 2 uses
  %i.en = getelementptr i8, ptr %.sroa.064.0, i64 %i.em ; 2 uses
  %i.eo = getelementptr i8, ptr %i.ca, i64 %i.em
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next337, %vector.body329 ] ; 2 uses
  %i.ep = mul i64 %index330, -4                   ; 2 uses
  %next.gep331 = getelementptr i8, ptr %.sroa.064.0, i64 %i.ep ; 2 uses
  %next.gep332 = getelementptr i8, ptr %i.ca, i64 %i.ep ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %next.gep332, i64 -16 ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %next.gep332, i64 -32 ; 2 uses
  %wide.load333 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !296, !alias.scope !3440, !noalias !3441
  %wide.load334 = load <4 x i32>, ptr %i.er, align 4, !tbaa !296, !alias.scope !3440, !noalias !3441
  %i.es = getelementptr inbounds i8, ptr %next.gep331, i64 -16 ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %next.gep331, i64 -32 ; 2 uses
  %wide.load335 = load <4 x i32>, ptr %i.es, align 4, !tbaa !296, !alias.scope !3442, !noalias !3443
  %wide.load336 = load <4 x i32>, ptr %i.et, align 4, !tbaa !296, !alias.scope !3442, !noalias !3443
  store <4 x i32> %wide.load335, ptr %i.eq, align 4, !tbaa !296, !alias.scope !3440, !noalias !3441
  store <4 x i32> %wide.load336, ptr %i.er, align 4, !tbaa !296, !alias.scope !3440, !noalias !3441
  store <4 x i32> %wide.load333, ptr %i.es, align 4, !tbaa !296, !alias.scope !3442, !noalias !3443
  store <4 x i32> %wide.load334, ptr %i.et, align 4, !tbaa !296, !alias.scope !3442, !noalias !3443
  %index.next337 = add nuw i64 %index330, 8       ; 2 uses
  %i.eu = icmp eq i64 %index.next337, %n.vec328
  br i1 %i.eu, label %middle.block338, label %vector.body329, !llvm.loop !3423

middle.block338:                                  ; preds = %vector.body329
  %cmp.n339 = icmp eq i64 %i.eg, %n.vec328
  br i1 %cmp.n339, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader399

.lr.ph.i.i.preheader399:                          ; preds = %vector.memcheck323, %.lr.ph.i.i.preheader, %middle.block338
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %vector.memcheck323 ], [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.en, %middle.block338 ]
  %.ph400 = phi ptr [ %i.ca, %vector.memcheck323 ], [ %i.ca, %.lr.ph.i.i.preheader ], [ %i.eo, %middle.block338 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader399, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ex, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader399 ]
  %i.ev = phi ptr [ %i.ew, %.lr.ph.i.i ], [ %.ph400, %.lr.ph.i.i.preheader399 ]
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -4 ; 4 uses
  %i.ex = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !296, !noalias !3443
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !296, !noalias !3443
  store i32 %i.ez, ptr %i.ew, align 4, !tbaa !296, !noalias !3443
  store i32 %i.ey, ptr %i.ex, align 4, !tbaa !296, !noalias !3443
  %.not.i.i31 = icmp eq ptr %i.ew, %i.ae
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !3424

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block385, %middle.block338, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ae, %bb.s ], [ %i.ex, %.lr.ph.i.i ], [ %i.ca, %bb.t ], [ %i.da, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.cq, %middle.block ], [ %i.en, %middle.block338 ], [ %i.dn, %middle.block385 ], [ %i.ea, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !441
  %i.fa = load ptr, ptr %1, align 8, !tbaa !441   ; 4 uses
  %.neg98 = mul i64 %.018.lcssa.i, -4             ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.ae, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -4 ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %i.fa, i64 -4 ; 2 uses
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !296
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !296
  store i32 %i.ff, ptr %i.fc, align 4, !tbaa !296
  store i32 %i.fe, ptr %i.fd, align 4, !tbaa !296
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fg = load ptr, ptr %2, align 8, !tbaa !441   ; 2 uses
  %i.fh = icmp eq ptr %i.fb, %i.fg
  br i1 %i.fh, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fi = icmp eq ptr %i.fg, %i.fa
  br i1 %i.fi, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.fa, %bb.y ], [ %i.fb, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !441
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, %bb.z, %.sink.split.i
  store ptr %i.ae, ptr %3, align 8, !tbaa !441
  %i.fj = load ptr, ptr %1, align 8, !tbaa !441
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -4 ; 2 uses
  store ptr %i.fk, ptr %1, align 8, !tbaa !441
  %i.fl = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.fl to i64
  %i.fm = add i64 %.0140, %.neg
  %i.fn = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.fn to i64
  %i.fo = add i64 %.sroa.speculated, %.neg24
  %i.fp = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.fp, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3425

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPiEES5_EEvT_S6_RS6_T0_S8_S8_.exit, %bb.a
  %i.fq = load ptr, ptr %6, align 8, !tbaa !441
  store ptr %i.fq, ptr %0, align 8, !tbaa !441
  ret void
}
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_:bb.a
bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.bd, ptr %i.bh, align 4, !tbaa !296, !noalias !3513
  %.not27.i19.i = icmp eq ptr %i.bb, %i.ao
  br i1 %.not27.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !56

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bn, %bb.n ], [ %i.ap, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bo, %bb.n ], [ %i.l, %bb.m ] ; 3 uses
  %.sroa.012.0.i.i.ph = phi ptr [ %.sroa.012.0.i.i, %bb.n ], [ %i.aq, %bb.m ]
  %i.bi = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bn, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.012.0.i.i = phi ptr [ %i.bj, %bb.o ], [ %.sroa.012.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %.sroa.012.0.i.i, i64 -4 ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !296, !noalias !3514 ; 2 uses
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !296, !noalias !3514 ; 2 uses
  %i.bm = icmp slt i32 %i.bk, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 6 uses
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bo = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4 ; 2 uses
  store i32 %i.bl, ptr %i.bn, align 4, !tbaa !296, !noalias !3514
  %i.bp = icmp eq ptr %i.bo, %i.aj
  br i1 %i.bp, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !57

bb.o:                                             ; preds = %.preheader.i.i
  store i32 %i.bk, ptr %i.bn, align 4, !tbaa !296, !noalias !3514
  %i.bq = icmp eq ptr %i.bj, %i.ao
  br i1 %i.bq, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !57

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.bv, %bb.q ], [ %i.ap, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.bw, %bb.q ], [ %i.l, %bb.p ] ; 3 uses
  %.sroa.012.0.i8.i.ph = phi ptr [ %.sroa.012.0.i8.i, %bb.q ], [ %i.aq, %bb.p ]
  %i.br = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.bv, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.012.0.i8.i = phi ptr [ %i.bs, %bb.r ], [ %.sroa.012.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 4 uses
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !296, !noalias !3515 ; 2 uses
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !296, !noalias !3515 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.bt, %i.bu
  %i.bv = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 6 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bw = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 2 uses
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !296, !noalias !3515
  %i.bx = icmp eq ptr %i.bw, %i.aj
  br i1 %i.bx, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !58

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !296, !noalias !3515
  %i.by = icmp eq ptr %i.bs, %i.ao
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !58

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.as, %bb.h ], [ %i.bb, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.aq, %bb.p ], [ %i.aq, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bj, %bb.o ], [ %i.bs, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.aj, %bb.q ], [ %i.aj, %bb.n ], [ %i.l, %bb.p ], [ %i.l, %bb.m ], [ %i.aj, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.aj, %.split.i14.i ]
  %.sroa.064.0.ph = phi ptr [ %i.az, %bb.h ], [ %i.bh, %bb.k ], [ %i.bv, %bb.r ], [ %i.bn, %bb.o ], [ %i.ap, %bb.p ], [ %i.ap, %bb.m ], [ %i.ax, %.split.i.i ], [ %i.bn, %bb.n ], [ %i.bv, %bb.q ], [ %i.bf, %.split.i14.i ]
  %.sroa.069.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.am, %bb.r ], [ %i.am, %bb.o ], [ %i.am, %bb.p ], [ %i.am, %bb.m ], [ %i.ar, %.split.i.i ], [ %i.am, %bb.n ], [ %i.am, %bb.q ], [ %i.ba, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !441, !noalias !398
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !441, !noalias !398
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.064.0 = phi ptr [ %i.ap, %bb.f ], [ %i.ap, %bb.i ], [ %.sroa.064.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 15 uses
  %.sroa.069.0 = phi ptr [ %i.am, %bb.f ], [ %i.am, %bb.i ], [ %.sroa.069.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 16 uses
  %.sroa.064.0321 = ptrtoaddr ptr %.sroa.064.0 to i64
  %.sroa.069.0313 = ptrtoaddr ptr %.sroa.069.0 to i64 ; 2 uses
  store ptr %.sroa.064.0, ptr %6, align 8, !tbaa !441
  %i.bz = load ptr, ptr %3, align 8, !tbaa !441   ; 20 uses
  %i.ca = ptrtoaddr ptr %i.bz to i64              ; 4 uses
  %i.cb = icmp eq ptr %i.bz, %.sroa.064.0
  br i1 %i.cb, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.an
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %bb.t
  %i.cc = mul i64 %indvar, %i.j
  %.reass = add i64 %i.cc, %invariant.op
  %i.cd = shl i64 %.018.lcssa.i, 2
  %.neg387 = add i64 %i.cd, 4
  %.neg388 = mul i64 %.neg387, %7
  %i.ce = add i64 %.reass, %.sroa.069.0313
  %i.cf = add i64 %.neg388, %i.ce                 ; 2 uses
  %i.cg = lshr i64 %i.cf, 2
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cf, 44
  br i1 %min.iters.check, label %.lr.ph.i28.preheader394, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %i.ci = mul i64 %indvar, %i.b
  %i.cj = shl i64 %.018.lcssa.i, 2
  %.neg390 = add i64 %i.cj, 4
  %.neg391 = mul i64 %.neg390, %7
  %i.ck = add i64 %i.ci, %.sroa.069.0313
  %i.cl = add i64 %i.ck, %.neg391
  %.not392 = sub i64 %i.k, %i.cl
  %i.cm = and i64 %.not392, -4                    ; 2 uses
  %i.cn = getelementptr i8, ptr %.sroa.069.0, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.bz, i64 %i.cm
  %bound0 = icmp ult ptr %i.cn, %i.bz
  %bound1 = icmp ult ptr %i.co, %.sroa.069.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader394, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, 9223372036854775800     ; 3 uses
  %i.cp = mul i64 %n.vec, -4                      ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bz, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %.sroa.069.0, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bz, i64 %i.cs ; 2 uses
  %next.gep314 = getelementptr i8, ptr %.sroa.069.0, i64 %i.cs ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %next.gep314, i64 -16 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %next.gep314, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ct, align 4, !tbaa !296, !alias.scope !3516, !noalias !3517
  %wide.load315 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !296, !alias.scope !3516, !noalias !3517
  %i.cv = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load316 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !296, !alias.scope !3518, !noalias !3519
  %wide.load317 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !296, !alias.scope !3518, !noalias !3519
  store <4 x i32> %wide.load316, ptr %i.ct, align 4, !tbaa !296, !alias.scope !3516, !noalias !3517
  store <4 x i32> %wide.load317, ptr %i.cu, align 4, !tbaa !296, !alias.scope !3516, !noalias !3517
  store <4 x i32> %wide.load, ptr %i.cv, align 4, !tbaa !296, !alias.scope !3518, !noalias !3519
  store <4 x i32> %wide.load315, ptr %i.cw, align 4, !tbaa !296, !alias.scope !3518, !noalias !3519
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !3495

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader394

.lr.ph.i28.preheader394:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.052.0.ph = phi ptr [ %i.bz, %vector.memcheck ], [ %i.bz, %.lr.ph.i28.preheader ], [ %i.cq, %middle.block ]
  %.ph = phi ptr [ %.sroa.069.0, %vector.memcheck ], [ %.sroa.069.0, %.lr.ph.i28.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader394, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.da, %.lr.ph.i28 ], [ %.sroa.052.0.ph, %.lr.ph.i28.preheader394 ]
  %i.cy = phi ptr [ %i.cz, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader394 ]
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -4 ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 4 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !296, !noalias !3519
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !296, !noalias !3519
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !296, !noalias !3519
  store i32 %i.db, ptr %i.da, align 4, !tbaa !296, !noalias !3519
  %.not.i = icmp eq ptr %i.cz, %i.an
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28, !llvm.loop !3496

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.bz, %i.aj           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %i.dd = mul i64 %indvar, %i.c
  %i.de = add i64 %i.e, %i.dd
  %i.df = add i64 %i.de, %i.ca                    ; 2 uses
  %i.dg = lshr i64 %i.df, 2
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check355 = icmp ult i64 %i.df, 60
  br i1 %min.iters.check355, label %.lr.ph.i29.preheader398, label %vector.memcheck356

vector.memcheck356:                               ; preds = %.lr.ph.i29.preheader
  %.neg385 = xor i64 %indvar, -1
  %.neg386 = mul i64 %i.b, %.neg385
  %i.di = add i64 %.neg386, %i.f
  %.not384 = sub i64 %i.di, %i.ca
  %i.dj = and i64 %.not384, -4                    ; 3 uses
  %i.dk = getelementptr i8, ptr %.sroa.064.0, i64 %i.dj ; 2 uses
  %i.dl = getelementptr i8, ptr %.sroa.069.0, i64 %i.dj ; 2 uses
  %12 = getelementptr i8, ptr %i.bz, i64 %i.dj    ; 2 uses
  %bound0357.a = icmp ult ptr %i.dk, %.sroa.069.0
  %bound1358 = icmp ult ptr %i.dl, %.sroa.064.0
  %found.conflict359 = and i1 %bound0357.a, %bound1358
  %bound0360 = icmp ult ptr %i.dk, %i.bz
  %bound1361 = icmp ult ptr %12, %.sroa.064.0
  %found.conflict362 = and i1 %bound0360, %bound1361
  %conflict.rdx = or i1 %found.conflict359, %found.conflict362
  %bound0363 = icmp ult ptr %i.dl, %i.bz
  %bound1364 = icmp ult ptr %12, %.sroa.069.0
  %found.conflict365 = and i1 %bound0363, %bound1364
  %conflict.rdx366 = or i1 %conflict.rdx, %found.conflict365
  br i1 %conflict.rdx366, label %.lr.ph.i29.preheader398, label %vector.ph367

vector.ph367:                                     ; preds = %vector.memcheck356
  %n.vec368 = and i64 %i.dh, 9223372036854775800  ; 3 uses
  %i.dm = mul i64 %n.vec368, -4                   ; 3 uses
  %i.dn = getelementptr i8, ptr %.sroa.069.0, i64 %i.dm
  %i.do = getelementptr i8, ptr %.sroa.064.0, i64 %i.dm ; 2 uses
  %i.dp = getelementptr i8, ptr %i.bz, i64 %i.dm
  br label %vector.body369

vector.body369:                                   ; preds = %vector.body369, %vector.ph367
  %index370 = phi i64 [ 0, %vector.ph367 ], [ %index.next378, %vector.body369 ] ; 2 uses
  %i.dq = mul i64 %index370, -4                   ; 3 uses
  %next.gep371 = getelementptr i8, ptr %.sroa.069.0, i64 %i.dq ; 2 uses
  %next.gep372 = getelementptr i8, ptr %.sroa.064.0, i64 %i.dq ; 2 uses
  %next.gep373 = getelementptr i8, ptr %i.bz, i64 %i.dq ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %next.gep371, i64 -16 ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %next.gep371, i64 -32 ; 2 uses
  %wide.load374 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !296, !alias.scope !3520, !noalias !3521
  %wide.load375 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !296, !alias.scope !3520, !noalias !3521
  %i.dt = getelementptr inbounds i8, ptr %next.gep372, i64 -16
  %i.du = getelementptr inbounds i8, ptr %next.gep372, i64 -32
  store <4 x i32> %wide.load374, ptr %i.dt, align 4, !tbaa !296, !alias.scope !3522, !noalias !3523
  store <4 x i32> %wide.load375, ptr %i.du, align 4, !tbaa !296, !alias.scope !3522, !noalias !3523
  %i.dv = getelementptr inbounds i8, ptr %next.gep373, i64 -16
  %i.dw = getelementptr inbounds i8, ptr %next.gep373, i64 -32
  %wide.load376 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !296, !alias.scope !3524, !noalias !3525
  %wide.load377 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !296, !alias.scope !3524, !noalias !3525
  store <4 x i32> %wide.load376, ptr %i.dr, align 4, !tbaa !296, !alias.scope !3520, !noalias !3521
  store <4 x i32> %wide.load377, ptr %i.ds, align 4, !tbaa !296, !alias.scope !3520, !noalias !3521
  %index.next378 = add nuw i64 %index370, 8       ; 2 uses
  %i.dx = icmp eq i64 %index.next378, %n.vec368
  br i1 %i.dx, label %middle.block379, label %vector.body369, !llvm.loop !3503

middle.block379:                                  ; preds = %vector.body369
  %cmp.n380 = icmp eq i64 %i.dh, %n.vec368
  br i1 %cmp.n380, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader398

.lr.ph.i29.preheader398:                          ; preds = %vector.memcheck356, %.lr.ph.i29.preheader, %middle.block379
  %.sroa.046.0.ph = phi ptr [ %.sroa.069.0, %vector.memcheck356 ], [ %.sroa.069.0, %.lr.ph.i29.preheader ], [ %i.dn, %middle.block379 ]
  %.sroa.045.0.ph = phi ptr [ %.sroa.064.0, %vector.memcheck356 ], [ %.sroa.064.0, %.lr.ph.i29.preheader ], [ %i.do, %middle.block379 ]
  %.ph399 = phi ptr [ %i.bz, %vector.memcheck356 ], [ %i.bz, %.lr.ph.i29.preheader ], [ %i.dp, %middle.block379 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader398, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.ea, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader398 ]
  %.sroa.045.0 = phi ptr [ %i.eb, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader398 ]
  %i.dy = phi ptr [ %i.dz, %.lr.ph.i29 ], [ %.ph399, %.lr.ph.i29.preheader398 ]
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4 ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 3 uses
  %i.eb = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !296, !noalias !3525
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !296, !noalias !3525
  %i.ed = load i32, ptr %i.dz, align 4, !tbaa !296, !noalias !3525
  store i32 %i.ed, ptr %i.ea, align 4, !tbaa !296, !noalias !3525
  %.not.i30 = icmp eq ptr %i.dz, %i.aj
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29, !llvm.loop !3504

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.ee = mul i64 %indvar, %i.g
  %i.ef = add i64 %i.i, %i.ee
  %i.eg = add i64 %i.ef, %i.ca                    ; 2 uses
  %i.eh = lshr i64 %i.eg, 2
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %min.iters.check323 = icmp ult i64 %i.eg, 28
  %i.ej = sub i64 %.sroa.064.0321, %i.ca
  %diff.check = icmp ugt i64 %i.ej, -32
  %or.cond = or i1 %min.iters.check323, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader395, label %vector.ph325

vector.ph325:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec326 = and i64 %i.ei, 9223372036854775800  ; 3 uses
  %i.ek = mul i64 %n.vec326, -4                   ; 2 uses
  %i.el = getelementptr i8, ptr %.sroa.064.0, i64 %i.ek ; 2 uses
  %i.em = getelementptr i8, ptr %i.bz, i64 %i.ek
  br label %vector.body327

vector.body327:                                   ; preds = %vector.body327, %vector.ph325
  %index328 = phi i64 [ 0, %vector.ph325 ], [ %index.next333, %vector.body327 ] ; 2 uses
  %i.en = mul i64 %index328, -4                   ; 2 uses
  %next.gep329 = getelementptr i8, ptr %.sroa.064.0, i64 %i.en ; 2 uses
  %next.gep330 = getelementptr i8, ptr %i.bz, i64 %i.en ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %next.gep330, i64 -16
  %i.ep = getelementptr inbounds i8, ptr %next.gep330, i64 -32
  %wide.load331 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !296, !noalias !3526
  %wide.load332 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !296, !noalias !3526
  %i.eq = getelementptr inbounds i8, ptr %next.gep329, i64 -16
  %i.er = getelementptr inbounds i8, ptr %next.gep329, i64 -32
  store <4 x i32> %wide.load331, ptr %i.eq, align 4, !tbaa !296, !noalias !3526
  store <4 x i32> %wide.load332, ptr %i.er, align 4, !tbaa !296, !noalias !3526
  %index.next333 = add nuw i64 %index328, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next333, %n.vec326
  br i1 %i.es, label %middle.block334, label %vector.body327, !llvm.loop !3509

middle.block334:                                  ; preds = %vector.body327
  %cmp.n335 = icmp eq i64 %i.ei, %n.vec326
  br i1 %cmp.n335, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader395

.lr.ph.i.i.preheader395:                          ; preds = %.lr.ph.i.i.preheader, %middle.block334
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.el, %middle.block334 ]
  %.ph396 = phi ptr [ %i.bz, %.lr.ph.i.i.preheader ], [ %i.em, %middle.block334 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader395, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ew, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader395 ]
  %i.et = phi ptr [ %i.eu, %.lr.ph.i.i ], [ %.ph396, %.lr.ph.i.i.preheader395 ]
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -4 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !296, !noalias !3526
  %i.ew = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !296, !noalias !3526
  %.not.i.i31 = icmp eq ptr %i.eu, %i.aj
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !3510

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block379, %middle.block334, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.aj, %bb.s ], [ %i.ew, %.lr.ph.i.i ], [ %i.bz, %bb.t ], [ %i.da, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.cq, %middle.block ], [ %i.el, %middle.block334 ], [ %i.do, %middle.block379 ], [ %i.eb, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !441
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.m, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.aj, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -8 ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !319
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !319
  store i64 %i.fb, ptr %i.ey, align 8, !tbaa !319
  store i64 %i.fa, ptr %i.ez, align 8, !tbaa !319
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fc = load ptr, ptr %2, align 8, !tbaa !446   ; 2 uses
  %i.fd = icmp eq ptr %i.ex, %i.fc
  br i1 %i.fd, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fe = icmp eq ptr %i.fc, %i.m
  br i1 %i.fe, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.m, %bb.y ], [ %i.ex, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !446
  %.pre191 = load ptr, ptr %1, align 8, !tbaa !446
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, %bb.z, %.sink.split.i
  %i.ff = phi ptr [ %i.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit ], [ %i.m, %bb.z ], [ %.pre191, %.sink.split.i ]
  store ptr %i.aj, ptr %3, align 8, !tbaa !441
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -8 ; 2 uses
  store ptr %i.fg, ptr %1, align 8, !tbaa !446
  %i.fh = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.fh to i64
  %i.fi = add i64 %.0140, %.neg
  %i.fj = icmp ne i64 %i.ai, 0
  %.neg24 = sext i1 %i.fj to i64
  %i.fk = add i64 %.sroa.speculated, %.neg24
  %i.fl = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.fl, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3511

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, %bb.a
  %i.fm = load ptr, ptr %6, align 8, !tbaa !441
  store ptr %i.fm, ptr %0, align 8, !tbaa !441
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_SF_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.e, %i.a
  %i.g = ashr exact i64 %i.f, 2                   ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !428  ; 7 uses
  %.not = icmp ult i64 %i.i, %.sroa.speculated
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost7movelib17op_buffered_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_13adaptive_xbufIiS2_mEEEEvT_SF_SF_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_S3_S3_SC_NS0_7move_opEEET3_T_SF_T0_T1_RT2_SI_SE_NS0_9iter_sizeISH_E4typeESM_SM_SM_T4_bT5_:bb.a
  %i.ar = load i32, ptr %.026.i21.i, align 4, !tbaa !296
  store i32 %i.ar, ptr %.025.i22.i, align 4, !tbaa !296
  %.not44.i.i = icmp eq ptr %i.ap, %i.ab
  %.13137.i25.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not44.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !63

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.028.ph.i17.i, i64 4 ; 3 uses
  store i32 %i.an, ptr %.030.i20.i, align 4, !tbaa !296
  %.not43.i32.i = icmp eq ptr %i.as, %4
  %.131.i33.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not43.i32.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.outer.i15.i, !llvm.loop !63

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit
  br i1 %10, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.o
  %.024.i.i.ph = phi ptr [ %i.aw, %bb.o ], [ %.038125, %bb.m ]
  %.021.i.i.ph = phi ptr [ %i.az, %bb.o ], [ %i.af, %bb.m ] ; 3 uses
  %.0.i.i.ph = phi ptr [ %.0.i.i, %bb.o ], [ %.083122, %bb.m ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.n
  %.024.i.i = phi ptr [ %i.aw, %bb.n ], [ %.024.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %.0.i.i = phi ptr [ %i.ax, %bb.n ], [ %.0.i.i.ph, %.preheader.i.i.outer ] ; 4 uses
  %i.at = load i32, ptr %.0.i.i, align 4, !tbaa !296 ; 2 uses
  %i.au = load i32, ptr %.021.i.i.ph, align 4, !tbaa !296 ; 2 uses
  %i.av = icmp slt i32 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 4 uses
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  store i32 %i.at, ptr %.024.i.i, align 4, !tbaa !296
  %i.ay = icmp eq ptr %i.ax, %i.ab
  br i1 %i.ay, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !61

bb.o:                                             ; preds = %.preheader.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.021.i.i.ph, i64 4 ; 3 uses
  store i32 %i.au, ptr %.024.i.i, align 4, !tbaa !296
  %i.ba = icmp eq ptr %i.az, %4
  br i1 %i.ba, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !61

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer

.preheader.i13.i.outer:                           ; preds = %bb.p, %bb.r
  %.024.i14.i.ph = phi ptr [ %i.bd, %bb.r ], [ %.038125, %bb.p ]
  %.021.i15.i.ph = phi ptr [ %i.bg, %bb.r ], [ %i.af, %bb.p ] ; 3 uses
  %.0.i16.i.ph = phi ptr [ %.0.i16.i, %bb.r ], [ %.083122, %bb.p ]
  br label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %.preheader.i13.i.outer, %bb.q
  %.024.i14.i = phi ptr [ %i.bd, %bb.q ], [ %.024.i14.i.ph, %.preheader.i13.i.outer ] ; 3 uses
  %.0.i16.i = phi ptr [ %i.be, %bb.q ], [ %.0.i16.i.ph, %.preheader.i13.i.outer ] ; 4 uses
  %i.bb = load i32, ptr %.021.i15.i.ph, align 4, !tbaa !296 ; 2 uses
  %i.bc = load i32, ptr %.0.i16.i, align 4, !tbaa !296 ; 2 uses
  %.not37.i.i = icmp slt i32 %i.bb, %i.bc
  %i.bd = getelementptr inbounds nuw i8, ptr %.024.i14.i, i64 4 ; 4 uses
  br i1 %.not37.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i13.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 4 ; 2 uses
  store i32 %i.bc, ptr %.024.i14.i, align 4, !tbaa !296
  %i.bf = icmp eq ptr %i.be, %i.ab
  br i1 %i.bf, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i13.i, !llvm.loop !64

bb.r:                                             ; preds = %.preheader.i13.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.021.i15.i.ph, i64 4 ; 3 uses
  store i32 %i.bb, ptr %.024.i14.i, align 4, !tbaa !296
  %i.bh = icmp eq ptr %i.bg, %4
  br i1 %i.bh, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer, !llvm.loop !64

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split: ; preds = %bb.k, %bb.h, %bb.q, %bb.r, %bb.n, %bb.o, %.split.i24.i, %.split.i.i, %bb.p, %bb.m
  %.12938.i30.sink.i.sink = phi ptr [ %.028.ph.i.i, %.split.i.i ], [ %.028.ph.i17.i, %.split.i24.i ], [ %i.bg, %bb.r ], [ %i.az, %bb.o ], [ %i.af, %bb.p ], [ %i.af, %bb.m ], [ %i.am, %bb.h ], [ %.021.i.i.ph, %bb.n ], [ %.021.i15.i.ph, %bb.q ], [ %i.as, %bb.k ]
  %.184.ph = phi ptr [ %i.ab, %.split.i.i ], [ %i.ab, %.split.i24.i ], [ %.0.i16.i, %bb.r ], [ %.0.i.i, %bb.o ], [ %.083122, %bb.p ], [ %.083122, %bb.m ], [ %.026.i.i, %bb.h ], [ %i.ab, %bb.n ], [ %i.ab, %bb.q ], [ %.026.i21.i, %bb.k ]
  %.080.ph = phi ptr [ %i.ak, %.split.i.i ], [ %i.aq, %.split.i24.i ], [ %i.ad, %bb.q ], [ %i.ad, %bb.n ], [ %i.ad, %bb.p ], [ %i.ad, %bb.m ], [ %.025.i.i, %bb.h ], [ %i.ad, %bb.o ], [ %i.ad, %bb.r ], [ %.025.i22.i, %bb.k ]
  %.ph = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.13137.i25.i, %.split.i24.i ], [ %i.bd, %bb.q ], [ %i.aw, %bb.n ], [ %.038125, %bb.p ], [ %.038125, %bb.m ], [ %.131.i.i, %bb.h ], [ %i.aw, %bb.o ], [ %i.bd, %bb.r ], [ %.131.i33.i, %bb.k ]
  store ptr %.12938.i30.sink.i.sink, ptr %3, align 8, !tbaa !299
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.184 = phi ptr [ %.083122, %bb.i ], [ %.083122, %bb.f ], [ %.184.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split ] ; 20 uses
  %.080 = phi ptr [ %i.ad, %bb.i ], [ %i.ad, %bb.f ], [ %.080.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split ] ; 16 uses
  %i.bi = phi ptr [ %.038125, %bb.i ], [ %.038125, %bb.f ], [ %.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split ] ; 14 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %.184268 = ptrtoaddr ptr %.184 to i64           ; 4 uses
  %.080260 = ptrtoaddr ptr %.080 to i64           ; 2 uses
  %i.bk = icmp eq ptr %.184, %i.bi
  br i1 %i.bk, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit
  br i1 %.not43, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not8.i = icmp eq ptr %.080, %i.ae
  br i1 %.not8.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %bb.t
  %i.bl = mul i64 %indvar, %.idx                  ; 2 uses
  %i.bm = add i64 %i.i, %i.bl
  %i.bn = shl i64 %.022.lcssa.i, 2
  %i.bo = add i64 %i.bn, 4
  %i.bp = mul i64 %6, %i.bo
  %i.bq = add i64 %i.bm, %i.bp
  %i.br = sub i64 %i.bq, %.080260                 ; 2 uses
  %i.bs = lshr i64 %i.br, 2
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.br, 44
  br i1 %min.iters.check, label %.lr.ph.i48.preheader332, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48.preheader
  %i.bu = add i64 %i.b, %i.bl
  %i.bv = shl i64 %.022.lcssa.i, 2
  %i.bw = add i64 %i.bv, 4
  %i.bx = mul i64 %6, %i.bw
  %i.by = add i64 %i.bu, %i.bx
  %i.bz = sub i64 %i.by, %.080260
  %i.ca = and i64 %i.bz, -4
  %i.cb = add i64 %i.ca, 4                        ; 2 uses
  %i.cc = getelementptr i8, ptr %.080, i64 %i.cb
  %i.cd = getelementptr i8, ptr %.184, i64 %i.cb
  %bound0 = icmp ult ptr %.080, %i.cd
  %bound1 = icmp ult ptr %.184, %i.cc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i48.preheader332, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bt, 9223372036854775800     ; 3 uses
  %i.ce = shl i64 %n.vec, 2                       ; 2 uses
  %i.cf = getelementptr i8, ptr %.184, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %.080, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.184, i64 %i.ch ; 3 uses
  %next.gep261 = getelementptr i8, ptr %.080, i64 %i.ch ; 3 uses
  %i.ci = getelementptr i8, ptr %next.gep261, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep261, align 4, !tbaa !296, !alias.scope !3851, !noalias !3852
  %wide.load262 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !296, !alias.scope !3851, !noalias !3852
  %i.cj = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load263 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3852
  %wide.load264 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !296, !alias.scope !3852
  store <4 x i32> %wide.load263, ptr %next.gep261, align 4, !tbaa !296, !alias.scope !3851, !noalias !3852
  store <4 x i32> %wide.load264, ptr %i.ci, align 4, !tbaa !296, !alias.scope !3851, !noalias !3852
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3852
  store <4 x i32> %wide.load262, ptr %i.cj, align 4, !tbaa !296, !alias.scope !3852
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !3838

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i48.preheader332

.lr.ph.i48.preheader332:                          ; preds = %vector.memcheck, %.lr.ph.i48.preheader, %middle.block
  %.010.i.ph = phi ptr [ %.184, %vector.memcheck ], [ %.184, %.lr.ph.i48.preheader ], [ %i.cf, %middle.block ]
  %.079.i.ph = phi ptr [ %.080, %vector.memcheck ], [ %.080, %.lr.ph.i48.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader332, %.lr.ph.i48
  %.010.i = phi ptr [ %i.co, %.lr.ph.i48 ], [ %.010.i.ph, %.lr.ph.i48.preheader332 ] ; 3 uses
  %.079.i = phi ptr [ %i.cn, %.lr.ph.i48 ], [ %.079.i.ph, %.lr.ph.i48.preheader332 ] ; 3 uses
  %i.cl = load i32, ptr %.079.i, align 4, !tbaa !296
  %i.cm = load i32, ptr %.010.i, align 4, !tbaa !296
  store i32 %i.cm, ptr %.079.i, align 4, !tbaa !296
  store i32 %i.cl, ptr %.010.i, align 4, !tbaa !296
  %i.cn = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.cn, %i.ae
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i48, !llvm.loop !3839

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit
  %.not8.i.i = icmp eq ptr %.184, %i.ab           ; 2 uses
  br i1 %.not43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %bb.v
  %i.cp = mul i64 %indvar, %.idx                  ; 2 uses
  %i.cq = add i64 %i.f, %i.cp                     ; 2 uses
  %i.cr = sub i64 %i.cq, %.184268                 ; 2 uses
  %i.cs = lshr i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check302 = icmp ult i64 %i.cr, 44
  br i1 %min.iters.check302, label %.lr.ph.i49.preheader335, label %vector.memcheck303

vector.memcheck303:                               ; preds = %.lr.ph.i49.preheader
  %i.cu = add i64 %i.d, %i.cp
  %i.cv = sub i64 %i.cu, %.184268
  %i.cw = and i64 %i.cv, -4
  %i.cx = add i64 %i.cw, 4                        ; 3 uses
  %i.cy = getelementptr i8, ptr %i.bi, i64 %i.cx  ; 2 uses
  %i.cz = getelementptr i8, ptr %.080, i64 %i.cx  ; 2 uses
  %11 = getelementptr i8, ptr %.184, i64 %i.cx    ; 2 uses
  %bound0304.a = icmp ult ptr %i.bi, %i.cz
  %bound1305 = icmp ult ptr %.080, %i.cy
  %found.conflict306 = and i1 %bound0304.a, %bound1305
  %bound0307 = icmp ult ptr %i.bi, %11
  %bound1308 = icmp ult ptr %.184, %i.cy
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx = or i1 %found.conflict306, %found.conflict309
  %bound0310 = icmp ult ptr %.080, %11
  %bound1311 = icmp ult ptr %.184, %i.cz
  %found.conflict312 = and i1 %bound0310, %bound1311
  %conflict.rdx313 = or i1 %conflict.rdx, %found.conflict312
  br i1 %conflict.rdx313, label %.lr.ph.i49.preheader335, label %vector.ph314

vector.ph314:                                     ; preds = %vector.memcheck303
  %n.vec315 = and i64 %i.ct, 9223372036854775800  ; 3 uses
  %i.da = shl i64 %n.vec315, 2                    ; 3 uses
  %i.db = getelementptr i8, ptr %i.bi, i64 %i.da  ; 2 uses
  %i.dc = getelementptr i8, ptr %.080, i64 %i.da
  %i.dd = getelementptr i8, ptr %.184, i64 %i.da
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next325, %vector.body316 ] ; 2 uses
  %i.de = shl i64 %index317, 2                    ; 3 uses
  %next.gep318 = getelementptr i8, ptr %i.bi, i64 %i.de ; 2 uses
  %next.gep319 = getelementptr i8, ptr %.080, i64 %i.de ; 3 uses
  %next.gep320 = getelementptr i8, ptr %.184, i64 %i.de ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep319, i64 16 ; 2 uses
  %wide.load321 = load <4 x i32>, ptr %next.gep319, align 4, !tbaa !296, !alias.scope !3853, !noalias !3854
  %wide.load322 = load <4 x i32>, ptr %i.df, align 4, !tbaa !296, !alias.scope !3853, !noalias !3854
  %i.dg = getelementptr i8, ptr %next.gep318, i64 16
  store <4 x i32> %wide.load321, ptr %next.gep318, align 4, !tbaa !296, !alias.scope !3855, !noalias !3856
  store <4 x i32> %wide.load322, ptr %i.dg, align 4, !tbaa !296, !alias.scope !3855, !noalias !3856
  %i.dh = getelementptr i8, ptr %next.gep320, i64 16
  %wide.load323 = load <4 x i32>, ptr %next.gep320, align 4, !tbaa !296, !alias.scope !3854
  %wide.load324 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !296, !alias.scope !3854
  store <4 x i32> %wide.load323, ptr %next.gep319, align 4, !tbaa !296, !alias.scope !3853, !noalias !3854
  store <4 x i32> %wide.load324, ptr %i.df, align 4, !tbaa !296, !alias.scope !3853, !noalias !3854
  %index.next325 = add nuw i64 %index317, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next325, %n.vec315
  br i1 %i.di, label %middle.block326, label %vector.body316, !llvm.loop !3844

middle.block326:                                  ; preds = %vector.body316
  %cmp.n327 = icmp eq i64 %i.ct, %n.vec315
  br i1 %cmp.n327, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49.preheader335

.lr.ph.i49.preheader335:                          ; preds = %vector.memcheck303, %.lr.ph.i49.preheader, %middle.block326
  %.012.i.ph = phi ptr [ %i.bi, %vector.memcheck303 ], [ %i.bi, %.lr.ph.i49.preheader ], [ %i.db, %middle.block326 ] ; 2 uses
  %.0711.i.ph = phi ptr [ %.080, %vector.memcheck303 ], [ %.080, %.lr.ph.i49.preheader ], [ %i.dc, %middle.block326 ] ; 2 uses
  %.0810.i.ph = phi ptr [ %.184, %vector.memcheck303 ], [ %.184, %.lr.ph.i49.preheader ], [ %i.dd, %middle.block326 ] ; 3 uses
  %.0810.i.ph380 = ptrtoaddr ptr %.0810.i.ph to i64
  %i.dj = sub i64 %i.cq, %.0810.i.ph380           ; 2 uses
  %i.dk = lshr i64 %i.dj, 2
  %i.dl = add nuw nsw i64 %i.dk, 1
  %xtraiter = and i64 %i.dl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader335, %.lr.ph.i49.prol
  %.012.i.prol = phi ptr [ %i.do, %.lr.ph.i49.prol ], [ %.012.i.ph, %.lr.ph.i49.preheader335 ] ; 2 uses
  %.0711.i.prol = phi ptr [ %i.dn, %.lr.ph.i49.prol ], [ %.0711.i.ph, %.lr.ph.i49.preheader335 ] ; 3 uses
  %.0810.i.prol = phi ptr [ %i.dm, %.lr.ph.i49.prol ], [ %.0810.i.ph, %.lr.ph.i49.preheader335 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i49.prol ], [ 0, %.lr.ph.i49.preheader335 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i.prol, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0711.i.prol, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.prol, i64 4 ; 3 uses
  %i.dp = load i32, ptr %.0711.i.prol, align 4, !tbaa !296
  store i32 %i.dp, ptr %.012.i.prol, align 4, !tbaa !296
  %i.dq = load i32, ptr %.0810.i.prol, align 4, !tbaa !296
  store i32 %i.dq, ptr %.0711.i.prol, align 4, !tbaa !296
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol, !llvm.loop !3845

.lr.ph.i49.prol.loopexit:                         ; preds = %.lr.ph.i49.prol, %.lr.ph.i49.preheader335
  %.lcssa377.unr = phi ptr [ poison, %.lr.ph.i49.preheader335 ], [ %i.do, %.lr.ph.i49.prol ]
  %.012.i.unr = phi ptr [ %.012.i.ph, %.lr.ph.i49.preheader335 ], [ %i.do, %.lr.ph.i49.prol ]
  %.0711.i.unr = phi ptr [ %.0711.i.ph, %.lr.ph.i49.preheader335 ], [ %i.dn, %.lr.ph.i49.prol ]
  %.0810.i.unr = phi ptr [ %.0810.i.ph, %.lr.ph.i49.preheader335 ], [ %i.dm, %.lr.ph.i49.prol ]
  %i.dr = icmp ult i64 %i.dj, 12
  br i1 %i.dr, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49
  %.012.i = phi ptr [ %i.ej, %.lr.ph.i49 ], [ %.012.i.unr, %.lr.ph.i49.prol.loopexit ] ; 5 uses
  %.0711.i = phi ptr [ %i.ei, %.lr.ph.i49 ], [ %.0711.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %.0810.i = phi ptr [ %i.eh, %.lr.ph.i49 ], [ %.0810.i.unr, %.lr.ph.i49.prol.loopexit ] ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.dv = load i32, ptr %.0711.i, align 4, !tbaa !296
  store i32 %i.dv, ptr %.012.i, align 4, !tbaa !296
  %i.dw = load i32, ptr %.0810.i, align 4, !tbaa !296
  store i32 %i.dw, ptr %.0711.i, align 4, !tbaa !296
  %i.dx = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.0711.i, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.ea = load i32, ptr %i.dt, align 4, !tbaa !296
  store i32 %i.ea, ptr %i.du, align 4, !tbaa !296
  %i.eb = load i32, ptr %i.ds, align 4, !tbaa !296
  store i32 %i.eb, ptr %i.dt, align 4, !tbaa !296
  %i.ec = getelementptr inbounds nuw i8, ptr %.0810.i, i64 12
  %i.ed = getelementptr inbounds nuw i8, ptr %.0711.i, i64 12 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.012.i, i64 12
  %i.ef = load i32, ptr %i.dy, align 4, !tbaa !296
  store i32 %i.ef, ptr %i.dz, align 4, !tbaa !296
  %i.eg = load i32, ptr %i.dx, align 4, !tbaa !296
  store i32 %i.eg, ptr %i.dy, align 4, !tbaa !296
  %i.eh = getelementptr inbounds nuw i8, ptr %.0810.i, i64 16 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0711.i, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i, i64 16 ; 2 uses
  %i.ek = load i32, ptr %i.ed, align 4, !tbaa !296
  store i32 %i.ek, ptr %i.ee, align 4, !tbaa !296
  %i.el = load i32, ptr %i.ec, align 4, !tbaa !296
  store i32 %i.el, ptr %i.ed, align 4, !tbaa !296
  %.not.i50.3 = icmp eq ptr %i.eh, %i.ab
  br i1 %.not.i50.3, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49, !llvm.loop !3846

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.em = mul i64 %indvar, %.idx
  %i.en = add i64 %i.h, %i.em                     ; 2 uses
  %i.eo = sub i64 %i.en, %.184268                 ; 2 uses
  %i.ep = lshr i64 %i.eo, 2
  %i.eq = add nuw nsw i64 %i.ep, 1                ; 2 uses
  %min.iters.check270 = icmp ult i64 %i.eo, 28
  %i.er = sub i64 %.184268, %i.bj
  %diff.check = icmp ugt i64 %i.er, -32
  %or.cond = or i1 %min.iters.check270, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader333, label %vector.ph272

vector.ph272:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec273 = and i64 %i.eq, 9223372036854775800  ; 3 uses
  %i.es = shl i64 %n.vec273, 2                    ; 2 uses
  %i.et = getelementptr i8, ptr %i.bi, i64 %i.es  ; 2 uses
  %i.eu = getelementptr i8, ptr %.184, i64 %i.es
  br label %vector.body274

vector.body274:                                   ; preds = %vector.body274, %vector.ph272
  %index275 = phi i64 [ 0, %vector.ph272 ], [ %index.next280, %vector.body274 ] ; 2 uses
  %i.ev = shl i64 %index275, 2                    ; 2 uses
  %next.gep276 = getelementptr i8, ptr %i.bi, i64 %i.ev ; 2 uses
  %next.gep277 = getelementptr i8, ptr %.184, i64 %i.ev ; 2 uses
  %i.ew = getelementptr i8, ptr %next.gep277, i64 16
  %wide.load278 = load <4 x i32>, ptr %next.gep277, align 4, !tbaa !296
  %wide.load279 = load <4 x i32>, ptr %i.ew, align 4, !tbaa !296
  %i.ex = getelementptr i8, ptr %next.gep276, i64 16
  store <4 x i32> %wide.load278, ptr %next.gep276, align 4, !tbaa !296
  store <4 x i32> %wide.load279, ptr %i.ex, align 4, !tbaa !296
  %index.next280 = add nuw i64 %index275, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next280, %n.vec273
  br i1 %i.ey, label %middle.block281, label %vector.body274, !llvm.loop !3847

middle.block281:                                  ; preds = %vector.body274
  %cmp.n282 = icmp eq i64 %i.eq, %n.vec273
  br i1 %cmp.n282, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i.preheader333

.lr.ph.i.i.preheader333:                          ; preds = %.lr.ph.i.i.preheader, %middle.block281
  %.010.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.preheader ], [ %i.et, %middle.block281 ] ; 2 uses
  %.079.i.i.ph = phi ptr [ %.184, %.lr.ph.i.i.preheader ], [ %i.eu, %middle.block281 ] ; 3 uses
  %.079.i.i.ph381 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.ez = sub i64 %i.en, %.079.i.i.ph381          ; 2 uses
  %i.fa = lshr i64 %i.ez, 2
  %i.fb = add nuw nsw i64 %i.fa, 1
  %xtraiter382 = and i64 %i.fb, 7                 ; 2 uses
  %lcmp.mod383.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod383.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader333, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi ptr [ %i.fe, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader333 ] ; 2 uses
  %.079.i.i.prol = phi ptr [ %i.fd, %.lr.ph.i.i.prol ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader333 ] ; 2 uses
  %prol.iter384 = phi i64 [ %prol.iter384.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader333 ]
  %i.fc = load i32, ptr %.079.i.i.prol, align 4, !tbaa !296
  store i32 %i.fc, ptr %.010.i.i.prol, align 4, !tbaa !296
  %i.fd = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 4 ; 3 uses
  %prol.iter384.next = add i64 %prol.iter384, 1   ; 2 uses
  %prol.iter384.cmp.not = icmp eq i64 %prol.iter384.next, %xtraiter382
  br i1 %prol.iter384.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3848

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader333
  %.lcssa378.unr = phi ptr [ poison, %.lr.ph.i.i.preheader333 ], [ %i.fe, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi ptr [ %.010.i.i.ph, %.lr.ph.i.i.preheader333 ], [ %i.fe, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i.i.preheader333 ], [ %i.fd, %.lr.ph.i.i.prol ]
  %i.ff = icmp ult i64 %i.ez, 28
  br i1 %i.ff, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.gd, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.079.i.i = phi ptr [ %i.gc, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.fg = load i32, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.fg, ptr %.010.i.i, align 4, !tbaa !296
  %i.fh = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.fi = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !296
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !296
  %i.fk = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !296
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !296
  %i.fn = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 12
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_S3_S3_SC_NS0_7swap_opEEET3_T_SF_T0_T1_RT2_SI_SE_NS0_9iter_sizeISH_E4typeESM_SM_SM_T4_bT5_:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %.028.ph.i17.i, i64 4 ; 3 uses
  %i.aw = load i32, ptr %.030.i20.i, align 4, !tbaa !296
  store i32 %i.ap, ptr %.030.i20.i, align 4, !tbaa !296
  store i32 %i.aw, ptr %.028.ph.i17.i, align 4, !tbaa !296
  %.not43.i32.i = icmp eq ptr %i.av, %4
  %.131.i33.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not43.i32.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.outer.i15.i, !llvm.loop !71

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit
  br i1 %10, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.o
  %.024.i.i.ph = phi ptr [ %i.ba, %bb.o ], [ %.038125, %bb.m ]
  %.021.i.i.ph = phi ptr [ %i.be, %bb.o ], [ %i.af, %bb.m ] ; 4 uses
  %.0.i.i.ph = phi ptr [ %.0.i.i, %bb.o ], [ %.083122, %bb.m ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.n
  %.024.i.i = phi ptr [ %i.ba, %bb.n ], [ %.024.i.i.ph, %.preheader.i.i.outer ] ; 4 uses
  %.0.i.i = phi ptr [ %i.bc, %bb.n ], [ %.0.i.i.ph, %.preheader.i.i.outer ] ; 5 uses
  %i.ax = load i32, ptr %.0.i.i, align 4, !tbaa !296 ; 2 uses
  %i.ay = load i32, ptr %.021.i.i.ph, align 4, !tbaa !296 ; 2 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 4 uses
  %i.bb = load i32, ptr %.024.i.i, align 4, !tbaa !296 ; 2 uses
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  store i32 %i.ax, ptr %.024.i.i, align 4, !tbaa !296
  store i32 %i.bb, ptr %.0.i.i, align 4, !tbaa !296
  %i.bd = icmp eq ptr %i.bc, %i.ab
  br i1 %i.bd, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !70

bb.o:                                             ; preds = %.preheader.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.021.i.i.ph, i64 4 ; 3 uses
  store i32 %i.ay, ptr %.024.i.i, align 4, !tbaa !296
  store i32 %i.bb, ptr %.021.i.i.ph, align 4, !tbaa !296
  %i.bf = icmp eq ptr %i.be, %4
  br i1 %i.bf, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !70

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer

.preheader.i13.i.outer:                           ; preds = %bb.p, %bb.r
  %.024.i14.i.ph = phi ptr [ %i.bi, %bb.r ], [ %.038125, %bb.p ]
  %.021.i15.i.ph = phi ptr [ %i.bm, %bb.r ], [ %i.af, %bb.p ] ; 4 uses
  %.0.i16.i.ph = phi ptr [ %.0.i16.i, %bb.r ], [ %.083122, %bb.p ]
  br label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %.preheader.i13.i.outer, %bb.q
  %.024.i14.i = phi ptr [ %i.bi, %bb.q ], [ %.024.i14.i.ph, %.preheader.i13.i.outer ] ; 4 uses
  %.0.i16.i = phi ptr [ %i.bk, %bb.q ], [ %.0.i16.i.ph, %.preheader.i13.i.outer ] ; 5 uses
  %i.bg = load i32, ptr %.021.i15.i.ph, align 4, !tbaa !296 ; 2 uses
  %i.bh = load i32, ptr %.0.i16.i, align 4, !tbaa !296 ; 2 uses
  %.not37.i.i = icmp slt i32 %i.bg, %i.bh
  %i.bi = getelementptr inbounds nuw i8, ptr %.024.i14.i, i64 4 ; 4 uses
  %i.bj = load i32, ptr %.024.i14.i, align 4, !tbaa !296 ; 2 uses
  br i1 %.not37.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i13.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 4 ; 2 uses
  store i32 %i.bh, ptr %.024.i14.i, align 4, !tbaa !296
  store i32 %i.bj, ptr %.0.i16.i, align 4, !tbaa !296
  %i.bl = icmp eq ptr %i.bk, %i.ab
  br i1 %i.bl, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i13.i, !llvm.loop !72

bb.r:                                             ; preds = %.preheader.i13.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.021.i15.i.ph, i64 4 ; 3 uses
  store i32 %i.bg, ptr %.024.i14.i, align 4, !tbaa !296
  store i32 %i.bj, ptr %.021.i15.i.ph, align 4, !tbaa !296
  %i.bn = icmp eq ptr %i.bm, %4
  br i1 %i.bn, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer, !llvm.loop !72

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split: ; preds = %bb.k, %bb.h, %bb.q, %bb.r, %bb.n, %bb.o, %.split.i24.i, %.split.i.i, %bb.p, %bb.m
  %.12938.i30.sink.i.sink = phi ptr [ %.028.ph.i.i, %.split.i.i ], [ %.028.ph.i17.i, %.split.i24.i ], [ %i.bm, %bb.r ], [ %i.be, %bb.o ], [ %i.af, %bb.p ], [ %i.af, %bb.m ], [ %i.an, %bb.h ], [ %.021.i.i.ph, %bb.n ], [ %.021.i15.i.ph, %bb.q ], [ %i.av, %bb.k ]
  %.184.ph = phi ptr [ %i.ab, %.split.i.i ], [ %i.ab, %.split.i24.i ], [ %.0.i16.i, %bb.r ], [ %.0.i.i, %bb.o ], [ %.083122, %bb.p ], [ %.083122, %bb.m ], [ %.026.i.i, %bb.h ], [ %i.ab, %bb.n ], [ %i.ab, %bb.q ], [ %.026.i21.i, %bb.k ]
  %.080.ph = phi ptr [ %i.ak, %.split.i.i ], [ %i.as, %.split.i24.i ], [ %i.ad, %bb.q ], [ %i.ad, %bb.n ], [ %i.ad, %bb.p ], [ %i.ad, %bb.m ], [ %.025.i.i, %bb.h ], [ %i.ad, %bb.o ], [ %i.ad, %bb.r ], [ %.025.i22.i, %bb.k ]
  %.ph = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.13137.i25.i, %.split.i24.i ], [ %i.bi, %bb.q ], [ %i.ba, %bb.n ], [ %.038125, %bb.p ], [ %.038125, %bb.m ], [ %.131.i.i, %bb.h ], [ %i.ba, %bb.o ], [ %i.bi, %bb.r ], [ %.131.i33.i, %bb.k ]
  store ptr %.12938.i30.sink.i.sink, ptr %3, align 8, !tbaa !299
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.184 = phi ptr [ %.083122, %bb.i ], [ %.083122, %bb.f ], [ %.184.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split ] ; 23 uses
  %.080 = phi ptr [ %i.ad, %bb.i ], [ %i.ad, %bb.f ], [ %.080.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split ] ; 16 uses
  %i.bo = phi ptr [ %.038125, %bb.i ], [ %.038125, %bb.f ], [ %.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split ] ; 16 uses
  %.184274 = ptrtoaddr ptr %.184 to i64           ; 4 uses
  %.080260 = ptrtoaddr ptr %.080 to i64           ; 2 uses
  %i.bp = icmp eq ptr %.184, %i.bo
  br i1 %i.bp, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit
  br i1 %.not43, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not8.i = icmp eq ptr %.080, %i.ae
  br i1 %.not8.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %bb.t
  %i.bq = mul i64 %indvar, %.idx                  ; 2 uses
  %i.br = add i64 %i.i, %i.bq
  %i.bs = shl i64 %.022.lcssa.i, 2
  %i.bt = add i64 %i.bs, 4
  %i.bu = mul i64 %6, %i.bt
  %i.bv = add i64 %i.br, %i.bu
  %i.bw = sub i64 %i.bv, %.080260                 ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 44
  br i1 %min.iters.check, label %.lr.ph.i48.preheader345, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48.preheader
  %i.bz = add i64 %i.b, %i.bq
  %i.ca = shl i64 %.022.lcssa.i, 2
  %i.cb = add i64 %i.ca, 4
  %i.cc = mul i64 %6, %i.cb
  %i.cd = add i64 %i.bz, %i.cc
  %i.ce = sub i64 %i.cd, %.080260
  %i.cf = and i64 %i.ce, -4
  %i.cg = add i64 %i.cf, 4                        ; 2 uses
  %i.ch = getelementptr i8, ptr %.080, i64 %i.cg
  %i.ci = getelementptr i8, ptr %.184, i64 %i.cg
  %bound0 = icmp ult ptr %.080, %i.ci
  %bound1 = icmp ult ptr %.184, %i.ch
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i48.preheader345, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.by, 9223372036854775800     ; 3 uses
  %i.cj = shl i64 %n.vec, 2                       ; 2 uses
  %i.ck = getelementptr i8, ptr %.184, i64 %i.cj  ; 2 uses
  %i.cl = getelementptr i8, ptr %.080, i64 %i.cj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.184, i64 %i.cm ; 3 uses
  %next.gep261 = getelementptr i8, ptr %.080, i64 %i.cm ; 3 uses
  %i.cn = getelementptr i8, ptr %next.gep261, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep261, align 4, !tbaa !296, !alias.scope !3876, !noalias !3877
  %wide.load262 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !296, !alias.scope !3876, !noalias !3877
  %i.co = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load263 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3877
  %wide.load264 = load <4 x i32>, ptr %i.co, align 4, !tbaa !296, !alias.scope !3877
  store <4 x i32> %wide.load263, ptr %next.gep261, align 4, !tbaa !296, !alias.scope !3876, !noalias !3877
  store <4 x i32> %wide.load264, ptr %i.cn, align 4, !tbaa !296, !alias.scope !3876, !noalias !3877
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296, !alias.scope !3877
  store <4 x i32> %wide.load262, ptr %i.co, align 4, !tbaa !296, !alias.scope !3877
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !3860

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i48.preheader345

.lr.ph.i48.preheader345:                          ; preds = %vector.memcheck, %.lr.ph.i48.preheader, %middle.block
  %.010.i.ph = phi ptr [ %.184, %vector.memcheck ], [ %.184, %.lr.ph.i48.preheader ], [ %i.ck, %middle.block ]
  %.079.i.ph = phi ptr [ %.080, %vector.memcheck ], [ %.080, %.lr.ph.i48.preheader ], [ %i.cl, %middle.block ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader345, %.lr.ph.i48
  %.010.i = phi ptr [ %i.ct, %.lr.ph.i48 ], [ %.010.i.ph, %.lr.ph.i48.preheader345 ] ; 3 uses
  %.079.i = phi ptr [ %i.cs, %.lr.ph.i48 ], [ %.079.i.ph, %.lr.ph.i48.preheader345 ] ; 3 uses
  %i.cq = load i32, ptr %.079.i, align 4, !tbaa !296
  %i.cr = load i32, ptr %.010.i, align 4, !tbaa !296
  store i32 %i.cr, ptr %.079.i, align 4, !tbaa !296
  store i32 %i.cq, ptr %.010.i, align 4, !tbaa !296
  %i.cs = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.cs, %i.ae
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i48, !llvm.loop !3861

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit
  %.not8.i.i = icmp eq ptr %.184, %i.ab           ; 2 uses
  br i1 %.not43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %bb.v
  %i.cu = mul i64 %indvar, %.idx                  ; 2 uses
  %i.cv = add i64 %i.f, %i.cu                     ; 2 uses
  %i.cw = sub i64 %i.cv, %.184274                 ; 2 uses
  %i.cx = lshr i64 %i.cw, 2
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %min.iters.check313 = icmp ult i64 %i.cw, 44
  br i1 %min.iters.check313, label %.lr.ph.i49.preheader348, label %vector.memcheck314

vector.memcheck314:                               ; preds = %.lr.ph.i49.preheader
  %i.cz = add i64 %i.d, %i.cu
  %i.da = sub i64 %i.cz, %.184274
  %i.db = and i64 %i.da, -4
  %i.dc = add i64 %i.db, 4                        ; 3 uses
  %i.dd = getelementptr i8, ptr %i.bo, i64 %i.dc  ; 2 uses
  %i.de = getelementptr i8, ptr %.080, i64 %i.dc  ; 2 uses
  %11 = getelementptr i8, ptr %.184, i64 %i.dc    ; 2 uses
  %bound0315.a = icmp ult ptr %i.bo, %i.de
  %bound1316 = icmp ult ptr %.080, %i.dd
  %found.conflict317 = and i1 %bound0315.a, %bound1316
  %bound0318 = icmp ult ptr %i.bo, %11
  %bound1319 = icmp ult ptr %.184, %i.dd
  %found.conflict320 = and i1 %bound0318, %bound1319
  %conflict.rdx = or i1 %found.conflict317, %found.conflict320
  %bound0321 = icmp ult ptr %.080, %11
  %bound1322 = icmp ult ptr %.184, %i.de
  %found.conflict323 = and i1 %bound0321, %bound1322
  %conflict.rdx324 = or i1 %conflict.rdx, %found.conflict323
  br i1 %conflict.rdx324, label %.lr.ph.i49.preheader348, label %vector.ph325

vector.ph325:                                     ; preds = %vector.memcheck314
  %n.vec326 = and i64 %i.cy, 9223372036854775800  ; 3 uses
  %i.df = shl i64 %n.vec326, 2                    ; 3 uses
  %i.dg = getelementptr i8, ptr %i.bo, i64 %i.df  ; 2 uses
  %i.dh = getelementptr i8, ptr %.080, i64 %i.df
  %i.di = getelementptr i8, ptr %.184, i64 %i.df
  br label %vector.body327

vector.body327:                                   ; preds = %vector.body327, %vector.ph325
  %index328 = phi i64 [ 0, %vector.ph325 ], [ %index.next338, %vector.body327 ] ; 2 uses
  %i.dj = shl i64 %index328, 2                    ; 3 uses
  %next.gep329 = getelementptr i8, ptr %i.bo, i64 %i.dj ; 3 uses
  %next.gep330 = getelementptr i8, ptr %.080, i64 %i.dj ; 3 uses
  %next.gep331 = getelementptr i8, ptr %.184, i64 %i.dj ; 3 uses
  %i.dk = getelementptr i8, ptr %next.gep329, i64 16 ; 2 uses
  %wide.load332 = load <4 x i32>, ptr %next.gep329, align 4, !tbaa !296, !alias.scope !3878, !noalias !3879
  %wide.load333 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !296, !alias.scope !3878, !noalias !3879
  %i.dl = getelementptr i8, ptr %next.gep330, i64 16 ; 2 uses
  %wide.load334 = load <4 x i32>, ptr %next.gep330, align 4, !tbaa !296, !alias.scope !3880, !noalias !3881
  %wide.load335 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !296, !alias.scope !3880, !noalias !3881
  store <4 x i32> %wide.load334, ptr %next.gep329, align 4, !tbaa !296, !alias.scope !3878, !noalias !3879
  store <4 x i32> %wide.load335, ptr %i.dk, align 4, !tbaa !296, !alias.scope !3878, !noalias !3879
  %i.dm = getelementptr i8, ptr %next.gep331, i64 16 ; 2 uses
  %wide.load336 = load <4 x i32>, ptr %next.gep331, align 4, !tbaa !296, !alias.scope !3881
  %wide.load337 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !296, !alias.scope !3881
  store <4 x i32> %wide.load336, ptr %next.gep330, align 4, !tbaa !296, !alias.scope !3880, !noalias !3881
  store <4 x i32> %wide.load337, ptr %i.dl, align 4, !tbaa !296, !alias.scope !3880, !noalias !3881
  store <4 x i32> %wide.load332, ptr %next.gep331, align 4, !tbaa !296, !alias.scope !3881
  store <4 x i32> %wide.load333, ptr %i.dm, align 4, !tbaa !296, !alias.scope !3881
  %index.next338 = add nuw i64 %index328, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next338, %n.vec326
  br i1 %i.dn, label %middle.block339, label %vector.body327, !llvm.loop !3866

middle.block339:                                  ; preds = %vector.body327
  %cmp.n340 = icmp eq i64 %i.cy, %n.vec326
  br i1 %cmp.n340, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49.preheader348

.lr.ph.i49.preheader348:                          ; preds = %vector.memcheck314, %.lr.ph.i49.preheader, %middle.block339
  %.012.i.ph = phi ptr [ %i.bo, %vector.memcheck314 ], [ %i.bo, %.lr.ph.i49.preheader ], [ %i.dg, %middle.block339 ] ; 2 uses
  %.0711.i.ph = phi ptr [ %.080, %vector.memcheck314 ], [ %.080, %.lr.ph.i49.preheader ], [ %i.dh, %middle.block339 ] ; 2 uses
  %.0810.i.ph = phi ptr [ %.184, %vector.memcheck314 ], [ %.184, %.lr.ph.i49.preheader ], [ %i.di, %middle.block339 ] ; 3 uses
  %.0810.i.ph397 = ptrtoaddr ptr %.0810.i.ph to i64
  %i.do = sub i64 %i.cv, %.0810.i.ph397           ; 2 uses
  %i.dp = lshr i64 %i.do, 2
  %i.dq = add nuw nsw i64 %i.dp, 1
  %xtraiter = and i64 %i.dq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader348, %.lr.ph.i49.prol
  %.012.i.prol = phi ptr [ %i.dt, %.lr.ph.i49.prol ], [ %.012.i.ph, %.lr.ph.i49.preheader348 ] ; 3 uses
  %.0711.i.prol = phi ptr [ %i.ds, %.lr.ph.i49.prol ], [ %.0711.i.ph, %.lr.ph.i49.preheader348 ] ; 3 uses
  %.0810.i.prol = phi ptr [ %i.dr, %.lr.ph.i49.prol ], [ %.0810.i.ph, %.lr.ph.i49.preheader348 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i49.prol ], [ 0, %.lr.ph.i49.preheader348 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0810.i.prol, i64 4 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0711.i.prol, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.prol, i64 4 ; 3 uses
  %i.du = load i32, ptr %.012.i.prol, align 4, !tbaa !296
  %i.dv = load i32, ptr %.0711.i.prol, align 4, !tbaa !296
  store i32 %i.dv, ptr %.012.i.prol, align 4, !tbaa !296
  %i.dw = load i32, ptr %.0810.i.prol, align 4, !tbaa !296
  store i32 %i.dw, ptr %.0711.i.prol, align 4, !tbaa !296
  store i32 %i.du, ptr %.0810.i.prol, align 4, !tbaa !296
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol, !llvm.loop !3867

.lr.ph.i49.prol.loopexit:                         ; preds = %.lr.ph.i49.prol, %.lr.ph.i49.preheader348
  %.lcssa394.unr = phi ptr [ poison, %.lr.ph.i49.preheader348 ], [ %i.dt, %.lr.ph.i49.prol ]
  %.012.i.unr = phi ptr [ %.012.i.ph, %.lr.ph.i49.preheader348 ], [ %i.dt, %.lr.ph.i49.prol ]
  %.0711.i.unr = phi ptr [ %.0711.i.ph, %.lr.ph.i49.preheader348 ], [ %i.ds, %.lr.ph.i49.prol ]
  %.0810.i.unr = phi ptr [ %.0810.i.ph, %.lr.ph.i49.preheader348 ], [ %i.dr, %.lr.ph.i49.prol ]
  %i.dx = icmp ult i64 %i.do, 12
  br i1 %i.dx, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49
  %.012.i = phi ptr [ %i.es, %.lr.ph.i49 ], [ %.012.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %.0711.i = phi ptr [ %i.er, %.lr.ph.i49 ], [ %.0711.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %.0810.i = phi ptr [ %i.eq, %.lr.ph.i49 ], [ %.0810.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i, i64 4 ; 2 uses
  %i.eb = load i32, ptr %.012.i, align 4, !tbaa !296
  %i.ec = load i32, ptr %.0711.i, align 4, !tbaa !296
  store i32 %i.ec, ptr %.012.i, align 4, !tbaa !296
  %i.ed = load i32, ptr %.0810.i, align 4, !tbaa !296
  store i32 %i.ed, ptr %.0711.i, align 4, !tbaa !296
  store i32 %i.eb, ptr %.0810.i, align 4, !tbaa !296
  %i.ee = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0711.i, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %i.eh = load i32, ptr %i.ea, align 4, !tbaa !296
  %i.ei = load i32, ptr %i.dz, align 4, !tbaa !296
  store i32 %i.ei, ptr %i.ea, align 4, !tbaa !296
  %i.ej = load i32, ptr %i.dy, align 4, !tbaa !296
  store i32 %i.ej, ptr %i.dz, align 4, !tbaa !296
  store i32 %i.eh, ptr %i.dy, align 4, !tbaa !296
  %i.ek = getelementptr inbounds nuw i8, ptr %.0810.i, i64 12 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0711.i, i64 12 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.012.i, i64 12 ; 2 uses
  %i.en = load i32, ptr %i.eg, align 4, !tbaa !296
  %i.eo = load i32, ptr %i.ef, align 4, !tbaa !296
  store i32 %i.eo, ptr %i.eg, align 4, !tbaa !296
  %i.ep = load i32, ptr %i.ee, align 4, !tbaa !296
  store i32 %i.ep, ptr %i.ef, align 4, !tbaa !296
  store i32 %i.en, ptr %i.ee, align 4, !tbaa !296
  %i.eq = getelementptr inbounds nuw i8, ptr %.0810.i, i64 16 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0711.i, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %.012.i, i64 16 ; 2 uses
  %i.et = load i32, ptr %i.em, align 4, !tbaa !296
  %i.eu = load i32, ptr %i.el, align 4, !tbaa !296
  store i32 %i.eu, ptr %i.em, align 4, !tbaa !296
  %i.ev = load i32, ptr %i.ek, align 4, !tbaa !296
  store i32 %i.ev, ptr %i.el, align 4, !tbaa !296
  store i32 %i.et, ptr %i.ek, align 4, !tbaa !296
  %.not.i50.3 = icmp eq ptr %i.eq, %i.ab
  br i1 %.not.i50.3, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49, !llvm.loop !3868

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.ew = mul i64 %indvar, %.idx                  ; 2 uses
  %i.ex = add i64 %i.h, %i.ew                     ; 2 uses
  %i.ey = sub i64 %i.ex, %.184274                 ; 2 uses
  %i.ez = lshr i64 %i.ey, 2
  %i.fa = add nuw nsw i64 %i.ez, 1                ; 2 uses
  %min.iters.check276 = icmp ult i64 %i.ey, 28
  br i1 %min.iters.check276, label %.lr.ph.i.i.preheader346, label %vector.memcheck277

vector.memcheck277:                               ; preds = %.lr.ph.i.i.preheader
  %i.fb = add i64 %i.d, %i.ew
  %i.fc = sub i64 %i.fb, %.184274
  %i.fd = and i64 %i.fc, -4
  %i.fe = add i64 %i.fd, 4                        ; 2 uses
  %i.ff = getelementptr i8, ptr %.184, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.bo, i64 %i.fe
  %bound0278 = icmp ult ptr %.184, %i.fg
  %bound1279 = icmp ult ptr %i.bo, %i.ff
  %found.conflict280 = and i1 %bound0278, %bound1279
  br i1 %found.conflict280, label %.lr.ph.i.i.preheader346, label %vector.ph281

vector.ph281:                                     ; preds = %vector.memcheck277
  %n.vec282 = and i64 %i.fa, 9223372036854775800  ; 3 uses
  %i.fh = shl i64 %n.vec282, 2                    ; 2 uses
  %i.fi = getelementptr i8, ptr %i.bo, i64 %i.fh  ; 2 uses
  %i.fj = getelementptr i8, ptr %.184, i64 %i.fh
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph281
  %index284 = phi i64 [ 0, %vector.ph281 ], [ %index.next291, %vector.body283 ] ; 2 uses
  %i.fk = shl i64 %index284, 2                    ; 2 uses
  %next.gep285 = getelementptr i8, ptr %i.bo, i64 %i.fk ; 3 uses
  %next.gep286 = getelementptr i8, ptr %.184, i64 %i.fk ; 3 uses
  %i.fl = getelementptr i8, ptr %next.gep286, i64 16 ; 2 uses
  %wide.load287 = load <4 x i32>, ptr %next.gep286, align 4, !tbaa !296, !alias.scope !3882, !noalias !3883
  %wide.load288 = load <4 x i32>, ptr %i.fl, align 4, !tbaa !296, !alias.scope !3882, !noalias !3883
  %i.fm = getelementptr i8, ptr %next.gep285, i64 16 ; 2 uses
  %wide.load289 = load <4 x i32>, ptr %next.gep285, align 4, !tbaa !296, !alias.scope !3883
  %wide.load290 = load <4 x i32>, ptr %i.fm, align 4, !tbaa !296, !alias.scope !3883
  store <4 x i32> %wide.load289, ptr %next.gep286, align 4, !tbaa !296, !alias.scope !3882, !noalias !3883
  store <4 x i32> %wide.load290, ptr %i.fl, align 4, !tbaa !296, !alias.scope !3882, !noalias !3883
  store <4 x i32> %wide.load287, ptr %next.gep285, align 4, !tbaa !296, !alias.scope !3883
  store <4 x i32> %wide.load288, ptr %i.fm, align 4, !tbaa !296, !alias.scope !3883
  %index.next291 = add nuw i64 %index284, 8       ; 2 uses
  %i.fn = icmp eq i64 %index.next291, %n.vec282
  br i1 %i.fn, label %middle.block292, label %vector.body283, !llvm.loop !3872

middle.block292:                                  ; preds = %vector.body283
  %cmp.n293 = icmp eq i64 %i.fa, %n.vec282
  br i1 %cmp.n293, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i.preheader346

.lr.ph.i.i.preheader346:                          ; preds = %vector.memcheck277, %.lr.ph.i.i.preheader, %middle.block292
  %.010.i.i.ph = phi ptr [ %i.bo, %vector.memcheck277 ], [ %i.bo, %.lr.ph.i.i.preheader ], [ %i.fi, %middle.block292 ] ; 2 uses
  %.079.i.i.ph = phi ptr [ %.184, %vector.memcheck277 ], [ %.184, %.lr.ph.i.i.preheader ], [ %i.fj, %middle.block292 ] ; 3 uses
  %.079.i.i.ph398 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.fo = sub i64 %i.ex, %.079.i.i.ph398          ; 2 uses
  %i.fp = lshr i64 %i.fo, 2
  %i.fq = add nuw nsw i64 %i.fp, 1
  %xtraiter399 = and i64 %i.fq, 3                 ; 2 uses
  %lcmp.mod400.not = icmp eq i64 %xtraiter399, 0
  br i1 %lcmp.mod400.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader346, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi ptr [ %i.fu, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader346 ] ; 3 uses
  %.079.i.i.prol = phi ptr [ %i.ft, %.lr.ph.i.i.prol ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader346 ] ; 3 uses
  %prol.iter401 = phi i64 [ %prol.iter401.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader346 ]
  %i.fr = load i32, ptr %.079.i.i.prol, align 4, !tbaa !296
  %i.fs = load i32, ptr %.010.i.i.prol, align 4, !tbaa !296
  store i32 %i.fs, ptr %.079.i.i.prol, align 4, !tbaa !296
end_hunk_7
begin_hunk_8_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPiS5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET3_T_SH_T0_T1_RT2_SK_SG_NS0_9iter_sizeISJ_E4typeESO_SO_SO_T4_bT5_:bb.a
  %i.ar = load i32, ptr %.026.i21.i, align 4, !tbaa !296
  store i32 %i.ar, ptr %.025.i22.i, align 4, !tbaa !296
  %.not44.i.i = icmp eq ptr %i.ap, %i.ab
  %.13137.i25.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not44.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !63

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.028.ph.i17.i, i64 4 ; 3 uses
  store i32 %i.an, ptr %.030.i20.i, align 4, !tbaa !296
  %.not43.i32.i = icmp eq ptr %i.as, %4
  %.131.i33.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not43.i32.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.outer.i15.i, !llvm.loop !63

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  br i1 %10, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.o
  %.024.i.i.ph = phi ptr [ %i.aw, %bb.o ], [ %.038124, %bb.m ]
  %.021.i.i.ph = phi ptr [ %i.az, %bb.o ], [ %i.af, %bb.m ] ; 3 uses
  %.0.i.i.ph = phi ptr [ %.0.i.i, %bb.o ], [ %.083121, %bb.m ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.n
  %.024.i.i = phi ptr [ %i.aw, %bb.n ], [ %.024.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %.0.i.i = phi ptr [ %i.ax, %bb.n ], [ %.0.i.i.ph, %.preheader.i.i.outer ] ; 4 uses
  %i.at = load i32, ptr %.0.i.i, align 4, !tbaa !296 ; 2 uses
  %i.au = load i32, ptr %.021.i.i.ph, align 4, !tbaa !296 ; 2 uses
  %i.av = icmp slt i32 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 4 uses
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  store i32 %i.at, ptr %.024.i.i, align 4, !tbaa !296
  %i.ay = icmp eq ptr %i.ax, %i.ab
  br i1 %i.ay, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !61

bb.o:                                             ; preds = %.preheader.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.021.i.i.ph, i64 4 ; 3 uses
  store i32 %i.au, ptr %.024.i.i, align 4, !tbaa !296
  %i.ba = icmp eq ptr %i.az, %4
  br i1 %i.ba, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !61

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer

.preheader.i13.i.outer:                           ; preds = %bb.p, %bb.r
  %.024.i14.i.ph = phi ptr [ %i.bd, %bb.r ], [ %.038124, %bb.p ]
  %.021.i15.i.ph = phi ptr [ %i.bg, %bb.r ], [ %i.af, %bb.p ] ; 3 uses
  %.0.i16.i.ph = phi ptr [ %.0.i16.i, %bb.r ], [ %.083121, %bb.p ]
  br label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %.preheader.i13.i.outer, %bb.q
  %.024.i14.i = phi ptr [ %i.bd, %bb.q ], [ %.024.i14.i.ph, %.preheader.i13.i.outer ] ; 3 uses
  %.0.i16.i = phi ptr [ %i.be, %bb.q ], [ %.0.i16.i.ph, %.preheader.i13.i.outer ] ; 4 uses
  %i.bb = load i32, ptr %.021.i15.i.ph, align 4, !tbaa !296 ; 2 uses
  %i.bc = load i32, ptr %.0.i16.i, align 4, !tbaa !296 ; 2 uses
  %.not37.i.i = icmp slt i32 %i.bb, %i.bc
  %i.bd = getelementptr inbounds nuw i8, ptr %.024.i14.i, i64 4 ; 4 uses
  br i1 %.not37.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i13.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 4 ; 2 uses
  store i32 %i.bc, ptr %.024.i14.i, align 4, !tbaa !296
  %i.bf = icmp eq ptr %i.be, %i.ab
  br i1 %i.bf, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i13.i, !llvm.loop !64

bb.r:                                             ; preds = %.preheader.i13.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.021.i15.i.ph, i64 4 ; 3 uses
  store i32 %i.bb, ptr %.024.i14.i, align 4, !tbaa !296
  %i.bh = icmp eq ptr %i.bg, %4
  br i1 %i.bh, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer, !llvm.loop !64

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split: ; preds = %bb.k, %bb.h, %bb.q, %bb.r, %bb.n, %bb.o, %.split.i24.i, %.split.i.i, %bb.p, %bb.m
  %.12938.i30.sink.i.sink = phi ptr [ %.028.ph.i.i, %.split.i.i ], [ %.028.ph.i17.i, %.split.i24.i ], [ %i.bg, %bb.r ], [ %i.az, %bb.o ], [ %i.af, %bb.p ], [ %i.af, %bb.m ], [ %i.am, %bb.h ], [ %.021.i.i.ph, %bb.n ], [ %.021.i15.i.ph, %bb.q ], [ %i.as, %bb.k ]
  %.184.ph = phi ptr [ %i.ab, %.split.i.i ], [ %i.ab, %.split.i24.i ], [ %.0.i16.i, %bb.r ], [ %.0.i.i, %bb.o ], [ %.083121, %bb.p ], [ %.083121, %bb.m ], [ %.026.i.i, %bb.h ], [ %i.ab, %bb.n ], [ %i.ab, %bb.q ], [ %.026.i21.i, %bb.k ]
  %.080.ph = phi ptr [ %i.ak, %.split.i.i ], [ %i.aq, %.split.i24.i ], [ %i.ad, %bb.q ], [ %i.ad, %bb.n ], [ %i.ad, %bb.p ], [ %i.ad, %bb.m ], [ %.025.i.i, %bb.h ], [ %i.ad, %bb.o ], [ %i.ad, %bb.r ], [ %.025.i22.i, %bb.k ]
  %.ph = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.13137.i25.i, %.split.i24.i ], [ %i.bd, %bb.q ], [ %i.aw, %bb.n ], [ %.038124, %bb.p ], [ %.038124, %bb.m ], [ %.131.i.i, %bb.h ], [ %i.aw, %bb.o ], [ %i.bd, %bb.r ], [ %.131.i33.i, %bb.k ]
  store ptr %.12938.i30.sink.i.sink, ptr %3, align 8, !tbaa !299
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.184 = phi ptr [ %.083121, %bb.i ], [ %.083121, %bb.f ], [ %.184.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split ] ; 20 uses
  %.080 = phi ptr [ %i.ad, %bb.i ], [ %i.ad, %bb.f ], [ %.080.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split ] ; 16 uses
  %i.bi = phi ptr [ %.038124, %bb.i ], [ %.038124, %bb.f ], [ %.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split ] ; 14 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %.184267 = ptrtoaddr ptr %.184 to i64           ; 4 uses
  %.080259 = ptrtoaddr ptr %.080 to i64           ; 2 uses
  %i.bk = icmp eq ptr %.184, %i.bi
  br i1 %i.bk, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit
  br i1 %.not43, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not8.i = icmp eq ptr %.080, %i.ae
  br i1 %.not8.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %bb.t
  %i.bl = mul i64 %indvar, %.idx                  ; 2 uses
  %i.bm = add i64 %i.i, %i.bl
  %i.bn = shl i64 %.022.lcssa.i, 2
  %i.bo = add i64 %i.bn, 4
  %i.bp = mul i64 %6, %i.bo
  %i.bq = add i64 %i.bm, %i.bp
  %i.br = sub i64 %i.bq, %.080259                 ; 2 uses
  %i.bs = lshr i64 %i.br, 2
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.br, 44
  br i1 %min.iters.check, label %.lr.ph.i48.preheader331, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48.preheader
  %i.bu = add i64 %i.b, %i.bl
  %i.bv = shl i64 %.022.lcssa.i, 2
  %i.bw = add i64 %i.bv, 4
  %i.bx = mul i64 %6, %i.bw
  %i.by = add i64 %i.bu, %i.bx
  %i.bz = sub i64 %i.by, %.080259
  %i.ca = and i64 %i.bz, -4
  %i.cb = add i64 %i.ca, 4                        ; 2 uses
  %i.cc = getelementptr i8, ptr %.080, i64 %i.cb
  %i.cd = getelementptr i8, ptr %.184, i64 %i.cb
  %bound0 = icmp ult ptr %.080, %i.cd
  %bound1 = icmp ult ptr %.184, %i.cc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i48.preheader331, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bt, 9223372036854775800     ; 3 uses
  %i.ce = shl i64 %n.vec, 2                       ; 2 uses
  %i.cf = getelementptr i8, ptr %.184, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %.080, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.184, i64 %i.ch ; 3 uses
  %next.gep260 = getelementptr i8, ptr %.080, i64 %i.ch ; 3 uses
  %i.ci = getelementptr i8, ptr %next.gep260, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep260, align 4, !tbaa !296, !alias.scope !4305, !noalias !4306
  %wide.load261 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !296, !alias.scope !4305, !noalias !4306
  %i.cj = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load262 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !296, !alias.scope !4306
  %wide.load263 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !296, !alias.scope !4306
  store <4 x i32> %wide.load262, ptr %next.gep260, align 4, !tbaa !296, !alias.scope !4305, !noalias !4306
  store <4 x i32> %wide.load263, ptr %i.ci, align 4, !tbaa !296, !alias.scope !4305, !noalias !4306
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296, !alias.scope !4306
  store <4 x i32> %wide.load261, ptr %i.cj, align 4, !tbaa !296, !alias.scope !4306
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !4292

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i48.preheader331

.lr.ph.i48.preheader331:                          ; preds = %vector.memcheck, %.lr.ph.i48.preheader, %middle.block
  %.010.i.ph = phi ptr [ %.184, %vector.memcheck ], [ %.184, %.lr.ph.i48.preheader ], [ %i.cf, %middle.block ]
  %.079.i.ph = phi ptr [ %.080, %vector.memcheck ], [ %.080, %.lr.ph.i48.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader331, %.lr.ph.i48
  %.010.i = phi ptr [ %i.co, %.lr.ph.i48 ], [ %.010.i.ph, %.lr.ph.i48.preheader331 ] ; 3 uses
  %.079.i = phi ptr [ %i.cn, %.lr.ph.i48 ], [ %.079.i.ph, %.lr.ph.i48.preheader331 ] ; 3 uses
  %i.cl = load i32, ptr %.079.i, align 4, !tbaa !296
  %i.cm = load i32, ptr %.010.i, align 4, !tbaa !296
  store i32 %i.cm, ptr %.079.i, align 4, !tbaa !296
  store i32 %i.cl, ptr %.010.i, align 4, !tbaa !296
  %i.cn = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.cn, %i.ae
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i48, !llvm.loop !4293

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit
  %.not8.i.i = icmp eq ptr %.184, %i.ab           ; 2 uses
  br i1 %.not43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %bb.v
  %i.cp = mul i64 %indvar, %.idx                  ; 2 uses
  %i.cq = add i64 %i.f, %i.cp                     ; 2 uses
  %i.cr = sub i64 %i.cq, %.184267                 ; 2 uses
  %i.cs = lshr i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check301 = icmp ult i64 %i.cr, 44
  br i1 %min.iters.check301, label %.lr.ph.i49.preheader334, label %vector.memcheck302

vector.memcheck302:                               ; preds = %.lr.ph.i49.preheader
  %i.cu = add i64 %i.d, %i.cp
  %i.cv = sub i64 %i.cu, %.184267
  %i.cw = and i64 %i.cv, -4
  %i.cx = add i64 %i.cw, 4                        ; 3 uses
  %i.cy = getelementptr i8, ptr %i.bi, i64 %i.cx  ; 2 uses
  %i.cz = getelementptr i8, ptr %.080, i64 %i.cx  ; 2 uses
  %11 = getelementptr i8, ptr %.184, i64 %i.cx    ; 2 uses
  %bound0303.a = icmp ult ptr %i.bi, %i.cz
  %bound1304 = icmp ult ptr %.080, %i.cy
  %found.conflict305 = and i1 %bound0303.a, %bound1304
  %bound0306 = icmp ult ptr %i.bi, %11
  %bound1307 = icmp ult ptr %.184, %i.cy
  %found.conflict308 = and i1 %bound0306, %bound1307
  %conflict.rdx = or i1 %found.conflict305, %found.conflict308
  %bound0309 = icmp ult ptr %.080, %11
  %bound1310 = icmp ult ptr %.184, %i.cz
  %found.conflict311 = and i1 %bound0309, %bound1310
  %conflict.rdx312 = or i1 %conflict.rdx, %found.conflict311
  br i1 %conflict.rdx312, label %.lr.ph.i49.preheader334, label %vector.ph313

vector.ph313:                                     ; preds = %vector.memcheck302
  %n.vec314 = and i64 %i.ct, 9223372036854775800  ; 3 uses
  %i.da = shl i64 %n.vec314, 2                    ; 3 uses
  %i.db = getelementptr i8, ptr %i.bi, i64 %i.da  ; 2 uses
  %i.dc = getelementptr i8, ptr %.080, i64 %i.da
  %i.dd = getelementptr i8, ptr %.184, i64 %i.da
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph313
  %index316 = phi i64 [ 0, %vector.ph313 ], [ %index.next324, %vector.body315 ] ; 2 uses
  %i.de = shl i64 %index316, 2                    ; 3 uses
  %next.gep317 = getelementptr i8, ptr %i.bi, i64 %i.de ; 2 uses
  %next.gep318 = getelementptr i8, ptr %.080, i64 %i.de ; 3 uses
  %next.gep319 = getelementptr i8, ptr %.184, i64 %i.de ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep318, i64 16 ; 2 uses
  %wide.load320 = load <4 x i32>, ptr %next.gep318, align 4, !tbaa !296, !alias.scope !4307, !noalias !4308
  %wide.load321 = load <4 x i32>, ptr %i.df, align 4, !tbaa !296, !alias.scope !4307, !noalias !4308
  %i.dg = getelementptr i8, ptr %next.gep317, i64 16
  store <4 x i32> %wide.load320, ptr %next.gep317, align 4, !tbaa !296, !alias.scope !4309, !noalias !4310
  store <4 x i32> %wide.load321, ptr %i.dg, align 4, !tbaa !296, !alias.scope !4309, !noalias !4310
  %i.dh = getelementptr i8, ptr %next.gep319, i64 16
  %wide.load322 = load <4 x i32>, ptr %next.gep319, align 4, !tbaa !296, !alias.scope !4308
  %wide.load323 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !296, !alias.scope !4308
  store <4 x i32> %wide.load322, ptr %next.gep318, align 4, !tbaa !296, !alias.scope !4307, !noalias !4308
  store <4 x i32> %wide.load323, ptr %i.df, align 4, !tbaa !296, !alias.scope !4307, !noalias !4308
  %index.next324 = add nuw i64 %index316, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next324, %n.vec314
  br i1 %i.di, label %middle.block325, label %vector.body315, !llvm.loop !4298

middle.block325:                                  ; preds = %vector.body315
  %cmp.n326 = icmp eq i64 %i.ct, %n.vec314
  br i1 %cmp.n326, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49.preheader334

.lr.ph.i49.preheader334:                          ; preds = %vector.memcheck302, %.lr.ph.i49.preheader, %middle.block325
  %.012.i.ph = phi ptr [ %i.bi, %vector.memcheck302 ], [ %i.bi, %.lr.ph.i49.preheader ], [ %i.db, %middle.block325 ] ; 2 uses
  %.0711.i.ph = phi ptr [ %.080, %vector.memcheck302 ], [ %.080, %.lr.ph.i49.preheader ], [ %i.dc, %middle.block325 ] ; 2 uses
  %.0810.i.ph = phi ptr [ %.184, %vector.memcheck302 ], [ %.184, %.lr.ph.i49.preheader ], [ %i.dd, %middle.block325 ] ; 3 uses
  %.0810.i.ph379 = ptrtoaddr ptr %.0810.i.ph to i64
  %i.dj = sub i64 %i.cq, %.0810.i.ph379           ; 2 uses
  %i.dk = lshr i64 %i.dj, 2
  %i.dl = add nuw nsw i64 %i.dk, 1
  %xtraiter = and i64 %i.dl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader334, %.lr.ph.i49.prol
  %.012.i.prol = phi ptr [ %i.do, %.lr.ph.i49.prol ], [ %.012.i.ph, %.lr.ph.i49.preheader334 ] ; 2 uses
  %.0711.i.prol = phi ptr [ %i.dn, %.lr.ph.i49.prol ], [ %.0711.i.ph, %.lr.ph.i49.preheader334 ] ; 3 uses
  %.0810.i.prol = phi ptr [ %i.dm, %.lr.ph.i49.prol ], [ %.0810.i.ph, %.lr.ph.i49.preheader334 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i49.prol ], [ 0, %.lr.ph.i49.preheader334 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i.prol, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0711.i.prol, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.prol, i64 4 ; 3 uses
  %i.dp = load i32, ptr %.0711.i.prol, align 4, !tbaa !296
  store i32 %i.dp, ptr %.012.i.prol, align 4, !tbaa !296
  %i.dq = load i32, ptr %.0810.i.prol, align 4, !tbaa !296
  store i32 %i.dq, ptr %.0711.i.prol, align 4, !tbaa !296
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol, !llvm.loop !4299

.lr.ph.i49.prol.loopexit:                         ; preds = %.lr.ph.i49.prol, %.lr.ph.i49.preheader334
  %.lcssa376.unr = phi ptr [ poison, %.lr.ph.i49.preheader334 ], [ %i.do, %.lr.ph.i49.prol ]
  %.012.i.unr = phi ptr [ %.012.i.ph, %.lr.ph.i49.preheader334 ], [ %i.do, %.lr.ph.i49.prol ]
  %.0711.i.unr = phi ptr [ %.0711.i.ph, %.lr.ph.i49.preheader334 ], [ %i.dn, %.lr.ph.i49.prol ]
  %.0810.i.unr = phi ptr [ %.0810.i.ph, %.lr.ph.i49.preheader334 ], [ %i.dm, %.lr.ph.i49.prol ]
  %i.dr = icmp ult i64 %i.dj, 12
  br i1 %i.dr, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49
  %.012.i = phi ptr [ %i.ej, %.lr.ph.i49 ], [ %.012.i.unr, %.lr.ph.i49.prol.loopexit ] ; 5 uses
  %.0711.i = phi ptr [ %i.ei, %.lr.ph.i49 ], [ %.0711.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %.0810.i = phi ptr [ %i.eh, %.lr.ph.i49 ], [ %.0810.i.unr, %.lr.ph.i49.prol.loopexit ] ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.dv = load i32, ptr %.0711.i, align 4, !tbaa !296
  store i32 %i.dv, ptr %.012.i, align 4, !tbaa !296
  %i.dw = load i32, ptr %.0810.i, align 4, !tbaa !296
  store i32 %i.dw, ptr %.0711.i, align 4, !tbaa !296
  %i.dx = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.0711.i, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.ea = load i32, ptr %i.dt, align 4, !tbaa !296
  store i32 %i.ea, ptr %i.du, align 4, !tbaa !296
  %i.eb = load i32, ptr %i.ds, align 4, !tbaa !296
  store i32 %i.eb, ptr %i.dt, align 4, !tbaa !296
  %i.ec = getelementptr inbounds nuw i8, ptr %.0810.i, i64 12
  %i.ed = getelementptr inbounds nuw i8, ptr %.0711.i, i64 12 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.012.i, i64 12
  %i.ef = load i32, ptr %i.dy, align 4, !tbaa !296
  store i32 %i.ef, ptr %i.dz, align 4, !tbaa !296
  %i.eg = load i32, ptr %i.dx, align 4, !tbaa !296
  store i32 %i.eg, ptr %i.dy, align 4, !tbaa !296
  %i.eh = getelementptr inbounds nuw i8, ptr %.0810.i, i64 16 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0711.i, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i, i64 16 ; 2 uses
  %i.ek = load i32, ptr %i.ed, align 4, !tbaa !296
  store i32 %i.ek, ptr %i.ee, align 4, !tbaa !296
  %i.el = load i32, ptr %i.ec, align 4, !tbaa !296
  store i32 %i.el, ptr %i.ed, align 4, !tbaa !296
  %.not.i50.3 = icmp eq ptr %i.eh, %i.ab
  br i1 %.not.i50.3, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49, !llvm.loop !4300

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.em = mul i64 %indvar, %.idx
  %i.en = add i64 %i.h, %i.em                     ; 2 uses
  %i.eo = sub i64 %i.en, %.184267                 ; 2 uses
  %i.ep = lshr i64 %i.eo, 2
  %i.eq = add nuw nsw i64 %i.ep, 1                ; 2 uses
  %min.iters.check269 = icmp ult i64 %i.eo, 28
  %i.er = sub i64 %.184267, %i.bj
  %diff.check = icmp ugt i64 %i.er, -32
  %or.cond = or i1 %min.iters.check269, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader332, label %vector.ph271

vector.ph271:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec272 = and i64 %i.eq, 9223372036854775800  ; 3 uses
  %i.es = shl i64 %n.vec272, 2                    ; 2 uses
  %i.et = getelementptr i8, ptr %i.bi, i64 %i.es  ; 2 uses
  %i.eu = getelementptr i8, ptr %.184, i64 %i.es
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph271
  %index274 = phi i64 [ 0, %vector.ph271 ], [ %index.next279, %vector.body273 ] ; 2 uses
  %i.ev = shl i64 %index274, 2                    ; 2 uses
  %next.gep275 = getelementptr i8, ptr %i.bi, i64 %i.ev ; 2 uses
  %next.gep276 = getelementptr i8, ptr %.184, i64 %i.ev ; 2 uses
  %i.ew = getelementptr i8, ptr %next.gep276, i64 16
  %wide.load277 = load <4 x i32>, ptr %next.gep276, align 4, !tbaa !296
  %wide.load278 = load <4 x i32>, ptr %i.ew, align 4, !tbaa !296
  %i.ex = getelementptr i8, ptr %next.gep275, i64 16
  store <4 x i32> %wide.load277, ptr %next.gep275, align 4, !tbaa !296
  store <4 x i32> %wide.load278, ptr %i.ex, align 4, !tbaa !296
  %index.next279 = add nuw i64 %index274, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next279, %n.vec272
  br i1 %i.ey, label %middle.block280, label %vector.body273, !llvm.loop !4301

middle.block280:                                  ; preds = %vector.body273
  %cmp.n281 = icmp eq i64 %i.eq, %n.vec272
  br i1 %cmp.n281, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i.preheader332

.lr.ph.i.i.preheader332:                          ; preds = %.lr.ph.i.i.preheader, %middle.block280
  %.010.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.preheader ], [ %i.et, %middle.block280 ] ; 2 uses
  %.079.i.i.ph = phi ptr [ %.184, %.lr.ph.i.i.preheader ], [ %i.eu, %middle.block280 ] ; 3 uses
  %.079.i.i.ph380 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.ez = sub i64 %i.en, %.079.i.i.ph380          ; 2 uses
  %i.fa = lshr i64 %i.ez, 2
  %i.fb = add nuw nsw i64 %i.fa, 1
  %xtraiter381 = and i64 %i.fb, 7                 ; 2 uses
  %lcmp.mod382.not = icmp eq i64 %xtraiter381, 0
  br i1 %lcmp.mod382.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader332, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi ptr [ %i.fe, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader332 ] ; 2 uses
  %.079.i.i.prol = phi ptr [ %i.fd, %.lr.ph.i.i.prol ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader332 ] ; 2 uses
  %prol.iter383 = phi i64 [ %prol.iter383.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader332 ]
  %i.fc = load i32, ptr %.079.i.i.prol, align 4, !tbaa !296
  store i32 %i.fc, ptr %.010.i.i.prol, align 4, !tbaa !296
  %i.fd = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 4 ; 3 uses
  %prol.iter383.next = add i64 %prol.iter383, 1   ; 2 uses
  %prol.iter383.cmp.not = icmp eq i64 %prol.iter383.next, %xtraiter381
  br i1 %prol.iter383.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4302

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader332
  %.lcssa377.unr = phi ptr [ poison, %.lr.ph.i.i.preheader332 ], [ %i.fe, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi ptr [ %.010.i.i.ph, %.lr.ph.i.i.preheader332 ], [ %i.fe, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i.i.preheader332 ], [ %i.fd, %.lr.ph.i.i.prol ]
  %i.ff = icmp ult i64 %i.ez, 28
  br i1 %i.ff, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.gd, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.079.i.i = phi ptr [ %i.gc, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.fg = load i32, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.fg, ptr %.010.i.i, align 4, !tbaa !296
  %i.fh = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.fi = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !296
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !296
  %i.fk = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !296
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !296
  %i.fn = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 12
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPiS5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET3_T_SH_T0_T1_RT2_SK_SG_NS0_9iter_sizeISJ_E4typeESO_SO_SO_T4_bT5_:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %.028.ph.i17.i, i64 4 ; 3 uses
  %i.aw = load i32, ptr %.030.i20.i, align 4, !tbaa !296
  store i32 %i.ap, ptr %.030.i20.i, align 4, !tbaa !296
  store i32 %i.aw, ptr %.028.ph.i17.i, align 4, !tbaa !296
  %.not43.i32.i = icmp eq ptr %i.av, %4
  %.131.i33.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not43.i32.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.outer.i15.i, !llvm.loop !71

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  br i1 %10, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.o
  %.024.i.i.ph = phi ptr [ %i.ba, %bb.o ], [ %.038124, %bb.m ]
  %.021.i.i.ph = phi ptr [ %i.be, %bb.o ], [ %i.af, %bb.m ] ; 4 uses
  %.0.i.i.ph = phi ptr [ %.0.i.i, %bb.o ], [ %.083121, %bb.m ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.n
  %.024.i.i = phi ptr [ %i.ba, %bb.n ], [ %.024.i.i.ph, %.preheader.i.i.outer ] ; 4 uses
  %.0.i.i = phi ptr [ %i.bc, %bb.n ], [ %.0.i.i.ph, %.preheader.i.i.outer ] ; 5 uses
  %i.ax = load i32, ptr %.0.i.i, align 4, !tbaa !296 ; 2 uses
  %i.ay = load i32, ptr %.021.i.i.ph, align 4, !tbaa !296 ; 2 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 4 uses
  %i.bb = load i32, ptr %.024.i.i, align 4, !tbaa !296 ; 2 uses
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  store i32 %i.ax, ptr %.024.i.i, align 4, !tbaa !296
  store i32 %i.bb, ptr %.0.i.i, align 4, !tbaa !296
  %i.bd = icmp eq ptr %i.bc, %i.ab
  br i1 %i.bd, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !70

bb.o:                                             ; preds = %.preheader.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.021.i.i.ph, i64 4 ; 3 uses
  store i32 %i.ay, ptr %.024.i.i, align 4, !tbaa !296
  store i32 %i.bb, ptr %.021.i.i.ph, align 4, !tbaa !296
  %i.bf = icmp eq ptr %i.be, %4
  br i1 %i.bf, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !70

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer

.preheader.i13.i.outer:                           ; preds = %bb.p, %bb.r
  %.024.i14.i.ph = phi ptr [ %i.bi, %bb.r ], [ %.038124, %bb.p ]
  %.021.i15.i.ph = phi ptr [ %i.bm, %bb.r ], [ %i.af, %bb.p ] ; 4 uses
  %.0.i16.i.ph = phi ptr [ %.0.i16.i, %bb.r ], [ %.083121, %bb.p ]
  br label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %.preheader.i13.i.outer, %bb.q
  %.024.i14.i = phi ptr [ %i.bi, %bb.q ], [ %.024.i14.i.ph, %.preheader.i13.i.outer ] ; 4 uses
  %.0.i16.i = phi ptr [ %i.bk, %bb.q ], [ %.0.i16.i.ph, %.preheader.i13.i.outer ] ; 5 uses
  %i.bg = load i32, ptr %.021.i15.i.ph, align 4, !tbaa !296 ; 2 uses
  %i.bh = load i32, ptr %.0.i16.i, align 4, !tbaa !296 ; 2 uses
  %.not37.i.i = icmp slt i32 %i.bg, %i.bh
  %i.bi = getelementptr inbounds nuw i8, ptr %.024.i14.i, i64 4 ; 4 uses
  %i.bj = load i32, ptr %.024.i14.i, align 4, !tbaa !296 ; 2 uses
  br i1 %.not37.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i13.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 4 ; 2 uses
  store i32 %i.bh, ptr %.024.i14.i, align 4, !tbaa !296
  store i32 %i.bj, ptr %.0.i16.i, align 4, !tbaa !296
  %i.bl = icmp eq ptr %i.bk, %i.ab
  br i1 %i.bl, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i13.i, !llvm.loop !72

bb.r:                                             ; preds = %.preheader.i13.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.021.i15.i.ph, i64 4 ; 3 uses
  store i32 %i.bg, ptr %.024.i14.i, align 4, !tbaa !296
  store i32 %i.bj, ptr %.021.i15.i.ph, align 4, !tbaa !296
  %i.bn = icmp eq ptr %i.bm, %4
  br i1 %i.bn, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer, !llvm.loop !72

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split: ; preds = %bb.k, %bb.h, %bb.q, %bb.r, %bb.n, %bb.o, %.split.i24.i, %.split.i.i, %bb.p, %bb.m
  %.12938.i30.sink.i.sink = phi ptr [ %.028.ph.i.i, %.split.i.i ], [ %.028.ph.i17.i, %.split.i24.i ], [ %i.bm, %bb.r ], [ %i.be, %bb.o ], [ %i.af, %bb.p ], [ %i.af, %bb.m ], [ %i.an, %bb.h ], [ %.021.i.i.ph, %bb.n ], [ %.021.i15.i.ph, %bb.q ], [ %i.av, %bb.k ]
  %.184.ph = phi ptr [ %i.ab, %.split.i.i ], [ %i.ab, %.split.i24.i ], [ %.0.i16.i, %bb.r ], [ %.0.i.i, %bb.o ], [ %.083121, %bb.p ], [ %.083121, %bb.m ], [ %.026.i.i, %bb.h ], [ %i.ab, %bb.n ], [ %i.ab, %bb.q ], [ %.026.i21.i, %bb.k ]
  %.080.ph = phi ptr [ %i.ak, %.split.i.i ], [ %i.as, %.split.i24.i ], [ %i.ad, %bb.q ], [ %i.ad, %bb.n ], [ %i.ad, %bb.p ], [ %i.ad, %bb.m ], [ %.025.i.i, %bb.h ], [ %i.ad, %bb.o ], [ %i.ad, %bb.r ], [ %.025.i22.i, %bb.k ]
  %.ph = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.13137.i25.i, %.split.i24.i ], [ %i.bi, %bb.q ], [ %i.ba, %bb.n ], [ %.038124, %bb.p ], [ %.038124, %bb.m ], [ %.131.i.i, %bb.h ], [ %i.ba, %bb.o ], [ %i.bi, %bb.r ], [ %.131.i33.i, %bb.k ]
  store ptr %.12938.i30.sink.i.sink, ptr %3, align 8, !tbaa !299
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.184 = phi ptr [ %.083121, %bb.i ], [ %.083121, %bb.f ], [ %.184.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split ] ; 23 uses
  %.080 = phi ptr [ %i.ad, %bb.i ], [ %i.ad, %bb.f ], [ %.080.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split ] ; 16 uses
  %i.bo = phi ptr [ %.038124, %bb.i ], [ %.038124, %bb.f ], [ %.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split ] ; 16 uses
  %.184273 = ptrtoaddr ptr %.184 to i64           ; 4 uses
  %.080259 = ptrtoaddr ptr %.080 to i64           ; 2 uses
  %i.bp = icmp eq ptr %.184, %i.bo
  br i1 %i.bp, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit
  br i1 %.not43, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not8.i = icmp eq ptr %.080, %i.ae
  br i1 %.not8.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %bb.t
  %i.bq = mul i64 %indvar, %.idx                  ; 2 uses
  %i.br = add i64 %i.i, %i.bq
  %i.bs = shl i64 %.022.lcssa.i, 2
  %i.bt = add i64 %i.bs, 4
  %i.bu = mul i64 %6, %i.bt
  %i.bv = add i64 %i.br, %i.bu
  %i.bw = sub i64 %i.bv, %.080259                 ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 44
  br i1 %min.iters.check, label %.lr.ph.i48.preheader344, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48.preheader
  %i.bz = add i64 %i.b, %i.bq
  %i.ca = shl i64 %.022.lcssa.i, 2
  %i.cb = add i64 %i.ca, 4
  %i.cc = mul i64 %6, %i.cb
  %i.cd = add i64 %i.bz, %i.cc
  %i.ce = sub i64 %i.cd, %.080259
  %i.cf = and i64 %i.ce, -4
  %i.cg = add i64 %i.cf, 4                        ; 2 uses
  %i.ch = getelementptr i8, ptr %.080, i64 %i.cg
  %i.ci = getelementptr i8, ptr %.184, i64 %i.cg
  %bound0 = icmp ult ptr %.080, %i.ci
  %bound1 = icmp ult ptr %.184, %i.ch
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i48.preheader344, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.by, 9223372036854775800     ; 3 uses
  %i.cj = shl i64 %n.vec, 2                       ; 2 uses
  %i.ck = getelementptr i8, ptr %.184, i64 %i.cj  ; 2 uses
  %i.cl = getelementptr i8, ptr %.080, i64 %i.cj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.184, i64 %i.cm ; 3 uses
  %next.gep260 = getelementptr i8, ptr %.080, i64 %i.cm ; 3 uses
  %i.cn = getelementptr i8, ptr %next.gep260, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep260, align 4, !tbaa !296, !alias.scope !4330, !noalias !4331
  %wide.load261 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !296, !alias.scope !4330, !noalias !4331
  %i.co = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load262 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !296, !alias.scope !4331
  %wide.load263 = load <4 x i32>, ptr %i.co, align 4, !tbaa !296, !alias.scope !4331
  store <4 x i32> %wide.load262, ptr %next.gep260, align 4, !tbaa !296, !alias.scope !4330, !noalias !4331
  store <4 x i32> %wide.load263, ptr %i.cn, align 4, !tbaa !296, !alias.scope !4330, !noalias !4331
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296, !alias.scope !4331
  store <4 x i32> %wide.load261, ptr %i.co, align 4, !tbaa !296, !alias.scope !4331
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !4314

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i48.preheader344

.lr.ph.i48.preheader344:                          ; preds = %vector.memcheck, %.lr.ph.i48.preheader, %middle.block
  %.010.i.ph = phi ptr [ %.184, %vector.memcheck ], [ %.184, %.lr.ph.i48.preheader ], [ %i.ck, %middle.block ]
  %.079.i.ph = phi ptr [ %.080, %vector.memcheck ], [ %.080, %.lr.ph.i48.preheader ], [ %i.cl, %middle.block ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader344, %.lr.ph.i48
  %.010.i = phi ptr [ %i.ct, %.lr.ph.i48 ], [ %.010.i.ph, %.lr.ph.i48.preheader344 ] ; 3 uses
  %.079.i = phi ptr [ %i.cs, %.lr.ph.i48 ], [ %.079.i.ph, %.lr.ph.i48.preheader344 ] ; 3 uses
  %i.cq = load i32, ptr %.079.i, align 4, !tbaa !296
  %i.cr = load i32, ptr %.010.i, align 4, !tbaa !296
  store i32 %i.cr, ptr %.079.i, align 4, !tbaa !296
  store i32 %i.cq, ptr %.010.i, align 4, !tbaa !296
  %i.cs = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.cs, %i.ae
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i48, !llvm.loop !4315

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit
  %.not8.i.i = icmp eq ptr %.184, %i.ab           ; 2 uses
  br i1 %.not43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %bb.v
  %i.cu = mul i64 %indvar, %.idx                  ; 2 uses
  %i.cv = add i64 %i.f, %i.cu                     ; 2 uses
  %i.cw = sub i64 %i.cv, %.184273                 ; 2 uses
  %i.cx = lshr i64 %i.cw, 2
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %min.iters.check312 = icmp ult i64 %i.cw, 44
  br i1 %min.iters.check312, label %.lr.ph.i49.preheader347, label %vector.memcheck313

vector.memcheck313:                               ; preds = %.lr.ph.i49.preheader
  %i.cz = add i64 %i.d, %i.cu
  %i.da = sub i64 %i.cz, %.184273
  %i.db = and i64 %i.da, -4
  %i.dc = add i64 %i.db, 4                        ; 3 uses
  %i.dd = getelementptr i8, ptr %i.bo, i64 %i.dc  ; 2 uses
  %i.de = getelementptr i8, ptr %.080, i64 %i.dc  ; 2 uses
  %11 = getelementptr i8, ptr %.184, i64 %i.dc    ; 2 uses
  %bound0314.a = icmp ult ptr %i.bo, %i.de
  %bound1315 = icmp ult ptr %.080, %i.dd
  %found.conflict316 = and i1 %bound0314.a, %bound1315
  %bound0317 = icmp ult ptr %i.bo, %11
  %bound1318 = icmp ult ptr %.184, %i.dd
  %found.conflict319 = and i1 %bound0317, %bound1318
  %conflict.rdx = or i1 %found.conflict316, %found.conflict319
  %bound0320 = icmp ult ptr %.080, %11
  %bound1321 = icmp ult ptr %.184, %i.de
  %found.conflict322 = and i1 %bound0320, %bound1321
  %conflict.rdx323 = or i1 %conflict.rdx, %found.conflict322
  br i1 %conflict.rdx323, label %.lr.ph.i49.preheader347, label %vector.ph324

vector.ph324:                                     ; preds = %vector.memcheck313
  %n.vec325 = and i64 %i.cy, 9223372036854775800  ; 3 uses
  %i.df = shl i64 %n.vec325, 2                    ; 3 uses
  %i.dg = getelementptr i8, ptr %i.bo, i64 %i.df  ; 2 uses
  %i.dh = getelementptr i8, ptr %.080, i64 %i.df
  %i.di = getelementptr i8, ptr %.184, i64 %i.df
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph324
  %index327 = phi i64 [ 0, %vector.ph324 ], [ %index.next337, %vector.body326 ] ; 2 uses
  %i.dj = shl i64 %index327, 2                    ; 3 uses
  %next.gep328 = getelementptr i8, ptr %i.bo, i64 %i.dj ; 3 uses
  %next.gep329 = getelementptr i8, ptr %.080, i64 %i.dj ; 3 uses
  %next.gep330 = getelementptr i8, ptr %.184, i64 %i.dj ; 3 uses
  %i.dk = getelementptr i8, ptr %next.gep328, i64 16 ; 2 uses
  %wide.load331 = load <4 x i32>, ptr %next.gep328, align 4, !tbaa !296, !alias.scope !4332, !noalias !4333
  %wide.load332 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !296, !alias.scope !4332, !noalias !4333
  %i.dl = getelementptr i8, ptr %next.gep329, i64 16 ; 2 uses
  %wide.load333 = load <4 x i32>, ptr %next.gep329, align 4, !tbaa !296, !alias.scope !4334, !noalias !4335
  %wide.load334 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !296, !alias.scope !4334, !noalias !4335
  store <4 x i32> %wide.load333, ptr %next.gep328, align 4, !tbaa !296, !alias.scope !4332, !noalias !4333
  store <4 x i32> %wide.load334, ptr %i.dk, align 4, !tbaa !296, !alias.scope !4332, !noalias !4333
  %i.dm = getelementptr i8, ptr %next.gep330, i64 16 ; 2 uses
  %wide.load335 = load <4 x i32>, ptr %next.gep330, align 4, !tbaa !296, !alias.scope !4335
  %wide.load336 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !296, !alias.scope !4335
  store <4 x i32> %wide.load335, ptr %next.gep329, align 4, !tbaa !296, !alias.scope !4334, !noalias !4335
  store <4 x i32> %wide.load336, ptr %i.dl, align 4, !tbaa !296, !alias.scope !4334, !noalias !4335
  store <4 x i32> %wide.load331, ptr %next.gep330, align 4, !tbaa !296, !alias.scope !4335
  store <4 x i32> %wide.load332, ptr %i.dm, align 4, !tbaa !296, !alias.scope !4335
  %index.next337 = add nuw i64 %index327, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next337, %n.vec325
  br i1 %i.dn, label %middle.block338, label %vector.body326, !llvm.loop !4320

middle.block338:                                  ; preds = %vector.body326
  %cmp.n339 = icmp eq i64 %i.cy, %n.vec325
  br i1 %cmp.n339, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49.preheader347

.lr.ph.i49.preheader347:                          ; preds = %vector.memcheck313, %.lr.ph.i49.preheader, %middle.block338
  %.012.i.ph = phi ptr [ %i.bo, %vector.memcheck313 ], [ %i.bo, %.lr.ph.i49.preheader ], [ %i.dg, %middle.block338 ] ; 2 uses
  %.0711.i.ph = phi ptr [ %.080, %vector.memcheck313 ], [ %.080, %.lr.ph.i49.preheader ], [ %i.dh, %middle.block338 ] ; 2 uses
  %.0810.i.ph = phi ptr [ %.184, %vector.memcheck313 ], [ %.184, %.lr.ph.i49.preheader ], [ %i.di, %middle.block338 ] ; 3 uses
  %.0810.i.ph396 = ptrtoaddr ptr %.0810.i.ph to i64
  %i.do = sub i64 %i.cv, %.0810.i.ph396           ; 2 uses
  %i.dp = lshr i64 %i.do, 2
  %i.dq = add nuw nsw i64 %i.dp, 1
  %xtraiter = and i64 %i.dq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader347, %.lr.ph.i49.prol
  %.012.i.prol = phi ptr [ %i.dt, %.lr.ph.i49.prol ], [ %.012.i.ph, %.lr.ph.i49.preheader347 ] ; 3 uses
  %.0711.i.prol = phi ptr [ %i.ds, %.lr.ph.i49.prol ], [ %.0711.i.ph, %.lr.ph.i49.preheader347 ] ; 3 uses
  %.0810.i.prol = phi ptr [ %i.dr, %.lr.ph.i49.prol ], [ %.0810.i.ph, %.lr.ph.i49.preheader347 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i49.prol ], [ 0, %.lr.ph.i49.preheader347 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0810.i.prol, i64 4 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0711.i.prol, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.prol, i64 4 ; 3 uses
  %i.du = load i32, ptr %.012.i.prol, align 4, !tbaa !296
  %i.dv = load i32, ptr %.0711.i.prol, align 4, !tbaa !296
  store i32 %i.dv, ptr %.012.i.prol, align 4, !tbaa !296
  %i.dw = load i32, ptr %.0810.i.prol, align 4, !tbaa !296
  store i32 %i.dw, ptr %.0711.i.prol, align 4, !tbaa !296
  store i32 %i.du, ptr %.0810.i.prol, align 4, !tbaa !296
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol, !llvm.loop !4321

.lr.ph.i49.prol.loopexit:                         ; preds = %.lr.ph.i49.prol, %.lr.ph.i49.preheader347
  %.lcssa393.unr = phi ptr [ poison, %.lr.ph.i49.preheader347 ], [ %i.dt, %.lr.ph.i49.prol ]
  %.012.i.unr = phi ptr [ %.012.i.ph, %.lr.ph.i49.preheader347 ], [ %i.dt, %.lr.ph.i49.prol ]
  %.0711.i.unr = phi ptr [ %.0711.i.ph, %.lr.ph.i49.preheader347 ], [ %i.ds, %.lr.ph.i49.prol ]
  %.0810.i.unr = phi ptr [ %.0810.i.ph, %.lr.ph.i49.preheader347 ], [ %i.dr, %.lr.ph.i49.prol ]
  %i.dx = icmp ult i64 %i.do, 12
  br i1 %i.dx, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49
  %.012.i = phi ptr [ %i.es, %.lr.ph.i49 ], [ %.012.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %.0711.i = phi ptr [ %i.er, %.lr.ph.i49 ], [ %.0711.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %.0810.i = phi ptr [ %i.eq, %.lr.ph.i49 ], [ %.0810.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i, i64 4 ; 2 uses
  %i.eb = load i32, ptr %.012.i, align 4, !tbaa !296
  %i.ec = load i32, ptr %.0711.i, align 4, !tbaa !296
  store i32 %i.ec, ptr %.012.i, align 4, !tbaa !296
  %i.ed = load i32, ptr %.0810.i, align 4, !tbaa !296
  store i32 %i.ed, ptr %.0711.i, align 4, !tbaa !296
  store i32 %i.eb, ptr %.0810.i, align 4, !tbaa !296
  %i.ee = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0711.i, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %i.eh = load i32, ptr %i.ea, align 4, !tbaa !296
  %i.ei = load i32, ptr %i.dz, align 4, !tbaa !296
  store i32 %i.ei, ptr %i.ea, align 4, !tbaa !296
  %i.ej = load i32, ptr %i.dy, align 4, !tbaa !296
  store i32 %i.ej, ptr %i.dz, align 4, !tbaa !296
  store i32 %i.eh, ptr %i.dy, align 4, !tbaa !296
  %i.ek = getelementptr inbounds nuw i8, ptr %.0810.i, i64 12 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0711.i, i64 12 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.012.i, i64 12 ; 2 uses
  %i.en = load i32, ptr %i.eg, align 4, !tbaa !296
  %i.eo = load i32, ptr %i.ef, align 4, !tbaa !296
  store i32 %i.eo, ptr %i.eg, align 4, !tbaa !296
  %i.ep = load i32, ptr %i.ee, align 4, !tbaa !296
  store i32 %i.ep, ptr %i.ef, align 4, !tbaa !296
  store i32 %i.en, ptr %i.ee, align 4, !tbaa !296
  %i.eq = getelementptr inbounds nuw i8, ptr %.0810.i, i64 16 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0711.i, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %.012.i, i64 16 ; 2 uses
  %i.et = load i32, ptr %i.em, align 4, !tbaa !296
  %i.eu = load i32, ptr %i.el, align 4, !tbaa !296
  store i32 %i.eu, ptr %i.em, align 4, !tbaa !296
  %i.ev = load i32, ptr %i.ek, align 4, !tbaa !296
  store i32 %i.ev, ptr %i.el, align 4, !tbaa !296
  store i32 %i.et, ptr %i.ek, align 4, !tbaa !296
  %.not.i50.3 = icmp eq ptr %i.eq, %i.ab
  br i1 %.not.i50.3, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49, !llvm.loop !4322

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.ew = mul i64 %indvar, %.idx                  ; 2 uses
  %i.ex = add i64 %i.h, %i.ew                     ; 2 uses
  %i.ey = sub i64 %i.ex, %.184273                 ; 2 uses
  %i.ez = lshr i64 %i.ey, 2
  %i.fa = add nuw nsw i64 %i.ez, 1                ; 2 uses
  %min.iters.check275 = icmp ult i64 %i.ey, 28
  br i1 %min.iters.check275, label %.lr.ph.i.i.preheader345, label %vector.memcheck276

vector.memcheck276:                               ; preds = %.lr.ph.i.i.preheader
  %i.fb = add i64 %i.d, %i.ew
  %i.fc = sub i64 %i.fb, %.184273
  %i.fd = and i64 %i.fc, -4
  %i.fe = add i64 %i.fd, 4                        ; 2 uses
  %i.ff = getelementptr i8, ptr %.184, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.bo, i64 %i.fe
  %bound0277 = icmp ult ptr %.184, %i.fg
  %bound1278 = icmp ult ptr %i.bo, %i.ff
  %found.conflict279 = and i1 %bound0277, %bound1278
  br i1 %found.conflict279, label %.lr.ph.i.i.preheader345, label %vector.ph280

vector.ph280:                                     ; preds = %vector.memcheck276
  %n.vec281 = and i64 %i.fa, 9223372036854775800  ; 3 uses
  %i.fh = shl i64 %n.vec281, 2                    ; 2 uses
  %i.fi = getelementptr i8, ptr %i.bo, i64 %i.fh  ; 2 uses
  %i.fj = getelementptr i8, ptr %.184, i64 %i.fh
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph280
  %index283 = phi i64 [ 0, %vector.ph280 ], [ %index.next290, %vector.body282 ] ; 2 uses
  %i.fk = shl i64 %index283, 2                    ; 2 uses
  %next.gep284 = getelementptr i8, ptr %i.bo, i64 %i.fk ; 3 uses
  %next.gep285 = getelementptr i8, ptr %.184, i64 %i.fk ; 3 uses
  %i.fl = getelementptr i8, ptr %next.gep285, i64 16 ; 2 uses
  %wide.load286 = load <4 x i32>, ptr %next.gep285, align 4, !tbaa !296, !alias.scope !4336, !noalias !4337
  %wide.load287 = load <4 x i32>, ptr %i.fl, align 4, !tbaa !296, !alias.scope !4336, !noalias !4337
  %i.fm = getelementptr i8, ptr %next.gep284, i64 16 ; 2 uses
  %wide.load288 = load <4 x i32>, ptr %next.gep284, align 4, !tbaa !296, !alias.scope !4337
  %wide.load289 = load <4 x i32>, ptr %i.fm, align 4, !tbaa !296, !alias.scope !4337
  store <4 x i32> %wide.load288, ptr %next.gep285, align 4, !tbaa !296, !alias.scope !4336, !noalias !4337
  store <4 x i32> %wide.load289, ptr %i.fl, align 4, !tbaa !296, !alias.scope !4336, !noalias !4337
  store <4 x i32> %wide.load286, ptr %next.gep284, align 4, !tbaa !296, !alias.scope !4337
  store <4 x i32> %wide.load287, ptr %i.fm, align 4, !tbaa !296, !alias.scope !4337
  %index.next290 = add nuw i64 %index283, 8       ; 2 uses
  %i.fn = icmp eq i64 %index.next290, %n.vec281
  br i1 %i.fn, label %middle.block291, label %vector.body282, !llvm.loop !4326

middle.block291:                                  ; preds = %vector.body282
  %cmp.n292 = icmp eq i64 %i.fa, %n.vec281
  br i1 %cmp.n292, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i.preheader345

.lr.ph.i.i.preheader345:                          ; preds = %vector.memcheck276, %.lr.ph.i.i.preheader, %middle.block291
  %.010.i.i.ph = phi ptr [ %i.bo, %vector.memcheck276 ], [ %i.bo, %.lr.ph.i.i.preheader ], [ %i.fi, %middle.block291 ] ; 2 uses
  %.079.i.i.ph = phi ptr [ %.184, %vector.memcheck276 ], [ %.184, %.lr.ph.i.i.preheader ], [ %i.fj, %middle.block291 ] ; 3 uses
  %.079.i.i.ph397 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.fo = sub i64 %i.ex, %.079.i.i.ph397          ; 2 uses
  %i.fp = lshr i64 %i.fo, 2
  %i.fq = add nuw nsw i64 %i.fp, 1
  %xtraiter398 = and i64 %i.fq, 3                 ; 2 uses
  %lcmp.mod399.not = icmp eq i64 %xtraiter398, 0
  br i1 %lcmp.mod399.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader345, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi ptr [ %i.fu, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader345 ] ; 3 uses
  %.079.i.i.prol = phi ptr [ %i.ft, %.lr.ph.i.i.prol ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader345 ] ; 3 uses
  %prol.iter400 = phi i64 [ %prol.iter400.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader345 ]
  %i.fr = load i32, ptr %.079.i.i.prol, align 4, !tbaa !296
  %i.fs = load i32, ptr %.010.i.i.prol, align 4, !tbaa !296
  store i32 %i.fs, ptr %.079.i.i.prol, align 4, !tbaa !296
end_hunk_9
begin_hunk_10_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_:bb.a
bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -4 ; 3 uses
  store i32 %i.bd, ptr %i.bh, align 4, !tbaa !296, !noalias !4543
  %.not27.i19.i = icmp eq ptr %i.bb, %i.ao
  br i1 %.not27.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !56

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bn, %bb.n ], [ %i.ap, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bo, %bb.n ], [ %i.l, %bb.m ] ; 3 uses
  %.sroa.012.0.i.i.ph = phi ptr [ %.sroa.012.0.i.i, %bb.n ], [ %i.aq, %bb.m ]
  %i.bi = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bn, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.012.0.i.i = phi ptr [ %i.bj, %bb.o ], [ %.sroa.012.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %.sroa.012.0.i.i, i64 -4 ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !296, !noalias !4544 ; 2 uses
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !296, !noalias !4544 ; 2 uses
  %i.bm = icmp slt i32 %i.bk, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 6 uses
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bo = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4 ; 2 uses
  store i32 %i.bl, ptr %i.bn, align 4, !tbaa !296, !noalias !4544
  %i.bp = icmp eq ptr %i.bo, %i.aj
  br i1 %i.bp, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !57

bb.o:                                             ; preds = %.preheader.i.i
  store i32 %i.bk, ptr %i.bn, align 4, !tbaa !296, !noalias !4544
  %i.bq = icmp eq ptr %i.bj, %i.ao
  br i1 %i.bq, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !57

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.bv, %bb.q ], [ %i.ap, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.bw, %bb.q ], [ %i.l, %bb.p ] ; 3 uses
  %.sroa.012.0.i8.i.ph = phi ptr [ %.sroa.012.0.i8.i, %bb.q ], [ %i.aq, %bb.p ]
  %i.br = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.bv, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.012.0.i8.i = phi ptr [ %i.bs, %bb.r ], [ %.sroa.012.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 4 uses
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !296, !noalias !4545 ; 2 uses
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !296, !noalias !4545 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.bt, %i.bu
  %i.bv = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 6 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bw = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 2 uses
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !296, !noalias !4545
  %i.bx = icmp eq ptr %i.bw, %i.aj
  br i1 %i.bx, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !58

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !296, !noalias !4545
  %i.by = icmp eq ptr %i.bs, %i.ao
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !58

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.as, %bb.h ], [ %i.bb, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.aq, %bb.p ], [ %i.aq, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bj, %bb.o ], [ %i.bs, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.aj, %bb.q ], [ %i.aj, %bb.n ], [ %i.l, %bb.p ], [ %i.l, %bb.m ], [ %i.aj, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.aj, %.split.i14.i ]
  %.sroa.066.0.ph = phi ptr [ %i.az, %bb.h ], [ %i.bh, %bb.k ], [ %i.bv, %bb.r ], [ %i.bn, %bb.o ], [ %i.ap, %bb.p ], [ %i.ap, %bb.m ], [ %i.ax, %.split.i.i ], [ %i.bn, %bb.n ], [ %i.bv, %bb.q ], [ %i.bf, %.split.i14.i ]
  %.sroa.071.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.am, %bb.r ], [ %i.am, %bb.o ], [ %i.am, %bb.p ], [ %i.am, %bb.m ], [ %i.ar, %.split.i.i ], [ %i.am, %bb.n ], [ %i.am, %bb.q ], [ %i.ba, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !441, !noalias !398
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !441, !noalias !398
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.066.0 = phi ptr [ %i.ap, %bb.f ], [ %i.ap, %bb.i ], [ %.sroa.066.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 15 uses
  %.sroa.071.0 = phi ptr [ %i.am, %bb.f ], [ %i.am, %bb.i ], [ %.sroa.071.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 16 uses
  %.sroa.066.0319 = ptrtoaddr ptr %.sroa.066.0 to i64
  %.sroa.071.0311 = ptrtoaddr ptr %.sroa.071.0 to i64 ; 2 uses
  store ptr %.sroa.066.0, ptr %6, align 8, !tbaa !441
  %i.bz = load ptr, ptr %3, align 8, !tbaa !441   ; 20 uses
  %i.ca = ptrtoaddr ptr %i.bz to i64              ; 4 uses
  %i.cb = icmp eq ptr %i.bz, %.sroa.066.0
  br i1 %i.cb, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.071.0, %i.an
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %bb.t
  %i.cc = mul i64 %indvar, %i.j
  %.reass = add i64 %i.cc, %invariant.op
  %i.cd = shl i64 %.018.lcssa.i, 2
  %.neg385 = add i64 %i.cd, 4
  %.neg386 = mul i64 %.neg385, %7
  %i.ce = add i64 %.reass, %.sroa.071.0311
  %i.cf = add i64 %.neg386, %i.ce                 ; 2 uses
  %i.cg = lshr i64 %i.cf, 2
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cf, 44
  br i1 %min.iters.check, label %.lr.ph.i28.preheader392, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %i.ci = mul i64 %indvar, %i.b
  %i.cj = shl i64 %.018.lcssa.i, 2
  %.neg388 = add i64 %i.cj, 4
  %.neg389 = mul i64 %.neg388, %7
  %i.ck = add i64 %i.ci, %.sroa.071.0311
  %i.cl = add i64 %i.ck, %.neg389
  %.not390 = sub i64 %i.k, %i.cl
  %i.cm = and i64 %.not390, -4                    ; 2 uses
  %i.cn = getelementptr i8, ptr %.sroa.071.0, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.bz, i64 %i.cm
  %bound0 = icmp ult ptr %i.cn, %i.bz
  %bound1 = icmp ult ptr %i.co, %.sroa.071.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader392, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, 9223372036854775800     ; 3 uses
  %i.cp = mul i64 %n.vec, -4                      ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bz, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %.sroa.071.0, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bz, i64 %i.cs ; 2 uses
  %next.gep312 = getelementptr i8, ptr %.sroa.071.0, i64 %i.cs ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %next.gep312, i64 -16 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %next.gep312, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ct, align 4, !tbaa !296, !alias.scope !4546, !noalias !4547
  %wide.load313 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !296, !alias.scope !4546, !noalias !4547
  %i.cv = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load314 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !296, !alias.scope !4548, !noalias !4549
  %wide.load315 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !296, !alias.scope !4548, !noalias !4549
  store <4 x i32> %wide.load314, ptr %i.ct, align 4, !tbaa !296, !alias.scope !4546, !noalias !4547
  store <4 x i32> %wide.load315, ptr %i.cu, align 4, !tbaa !296, !alias.scope !4546, !noalias !4547
  store <4 x i32> %wide.load, ptr %i.cv, align 4, !tbaa !296, !alias.scope !4548, !noalias !4549
  store <4 x i32> %wide.load313, ptr %i.cw, align 4, !tbaa !296, !alias.scope !4548, !noalias !4549
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !4525

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader392

.lr.ph.i28.preheader392:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.054.0.ph = phi ptr [ %i.bz, %vector.memcheck ], [ %i.bz, %.lr.ph.i28.preheader ], [ %i.cq, %middle.block ]
  %.ph = phi ptr [ %.sroa.071.0, %vector.memcheck ], [ %.sroa.071.0, %.lr.ph.i28.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader392, %.lr.ph.i28
  %.sroa.054.0 = phi ptr [ %i.da, %.lr.ph.i28 ], [ %.sroa.054.0.ph, %.lr.ph.i28.preheader392 ]
  %i.cy = phi ptr [ %i.cz, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader392 ]
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -4 ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.054.0, i64 -4 ; 4 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !296, !noalias !4549
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !296, !noalias !4549
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !296, !noalias !4549
  store i32 %i.db, ptr %i.da, align 4, !tbaa !296, !noalias !4549
  %.not.i = icmp eq ptr %i.cz, %i.an
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28, !llvm.loop !4526

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.bz, %i.aj           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %i.dd = mul i64 %indvar, %i.c
  %i.de = add i64 %i.e, %i.dd
  %i.df = add i64 %i.de, %i.ca                    ; 2 uses
  %i.dg = lshr i64 %i.df, 2
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check353 = icmp ult i64 %i.df, 60
  br i1 %min.iters.check353, label %.lr.ph.i29.preheader396, label %vector.memcheck354

vector.memcheck354:                               ; preds = %.lr.ph.i29.preheader
  %.neg383 = xor i64 %indvar, -1
  %.neg384 = mul i64 %i.b, %.neg383
  %i.di = add i64 %.neg384, %i.f
  %.not382 = sub i64 %i.di, %i.ca
  %i.dj = and i64 %.not382, -4                    ; 3 uses
  %i.dk = getelementptr i8, ptr %.sroa.066.0, i64 %i.dj ; 2 uses
  %i.dl = getelementptr i8, ptr %.sroa.071.0, i64 %i.dj ; 2 uses
  %12 = getelementptr i8, ptr %i.bz, i64 %i.dj    ; 2 uses
  %bound0355.a = icmp ult ptr %i.dk, %.sroa.071.0
  %bound1356 = icmp ult ptr %i.dl, %.sroa.066.0
  %found.conflict357 = and i1 %bound0355.a, %bound1356
  %bound0358 = icmp ult ptr %i.dk, %i.bz
  %bound1359 = icmp ult ptr %12, %.sroa.066.0
  %found.conflict360 = and i1 %bound0358, %bound1359
  %conflict.rdx = or i1 %found.conflict357, %found.conflict360
  %bound0361 = icmp ult ptr %i.dl, %i.bz
  %bound1362 = icmp ult ptr %12, %.sroa.071.0
  %found.conflict363 = and i1 %bound0361, %bound1362
  %conflict.rdx364 = or i1 %conflict.rdx, %found.conflict363
  br i1 %conflict.rdx364, label %.lr.ph.i29.preheader396, label %vector.ph365

vector.ph365:                                     ; preds = %vector.memcheck354
  %n.vec366 = and i64 %i.dh, 9223372036854775800  ; 3 uses
  %i.dm = mul i64 %n.vec366, -4                   ; 3 uses
  %i.dn = getelementptr i8, ptr %.sroa.071.0, i64 %i.dm
  %i.do = getelementptr i8, ptr %.sroa.066.0, i64 %i.dm ; 2 uses
  %i.dp = getelementptr i8, ptr %i.bz, i64 %i.dm
  br label %vector.body367

vector.body367:                                   ; preds = %vector.body367, %vector.ph365
  %index368 = phi i64 [ 0, %vector.ph365 ], [ %index.next376, %vector.body367 ] ; 2 uses
  %i.dq = mul i64 %index368, -4                   ; 3 uses
  %next.gep369 = getelementptr i8, ptr %.sroa.071.0, i64 %i.dq ; 2 uses
  %next.gep370 = getelementptr i8, ptr %.sroa.066.0, i64 %i.dq ; 2 uses
  %next.gep371 = getelementptr i8, ptr %i.bz, i64 %i.dq ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %next.gep369, i64 -16 ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %next.gep369, i64 -32 ; 2 uses
  %wide.load372 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !296, !alias.scope !4550, !noalias !4551
  %wide.load373 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !296, !alias.scope !4550, !noalias !4551
  %i.dt = getelementptr inbounds i8, ptr %next.gep370, i64 -16
  %i.du = getelementptr inbounds i8, ptr %next.gep370, i64 -32
  store <4 x i32> %wide.load372, ptr %i.dt, align 4, !tbaa !296, !alias.scope !4552, !noalias !4553
  store <4 x i32> %wide.load373, ptr %i.du, align 4, !tbaa !296, !alias.scope !4552, !noalias !4553
  %i.dv = getelementptr inbounds i8, ptr %next.gep371, i64 -16
  %i.dw = getelementptr inbounds i8, ptr %next.gep371, i64 -32
  %wide.load374 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !296, !alias.scope !4554, !noalias !4555
  %wide.load375 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !296, !alias.scope !4554, !noalias !4555
  store <4 x i32> %wide.load374, ptr %i.dr, align 4, !tbaa !296, !alias.scope !4550, !noalias !4551
  store <4 x i32> %wide.load375, ptr %i.ds, align 4, !tbaa !296, !alias.scope !4550, !noalias !4551
  %index.next376 = add nuw i64 %index368, 8       ; 2 uses
  %i.dx = icmp eq i64 %index.next376, %n.vec366
  br i1 %i.dx, label %middle.block377, label %vector.body367, !llvm.loop !4533

middle.block377:                                  ; preds = %vector.body367
  %cmp.n378 = icmp eq i64 %i.dh, %n.vec366
  br i1 %cmp.n378, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader396

.lr.ph.i29.preheader396:                          ; preds = %vector.memcheck354, %.lr.ph.i29.preheader, %middle.block377
  %.sroa.048.0.ph = phi ptr [ %.sroa.071.0, %vector.memcheck354 ], [ %.sroa.071.0, %.lr.ph.i29.preheader ], [ %i.dn, %middle.block377 ]
  %.sroa.047.0.ph = phi ptr [ %.sroa.066.0, %vector.memcheck354 ], [ %.sroa.066.0, %.lr.ph.i29.preheader ], [ %i.do, %middle.block377 ]
  %.ph397 = phi ptr [ %i.bz, %vector.memcheck354 ], [ %i.bz, %.lr.ph.i29.preheader ], [ %i.dp, %middle.block377 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader396, %.lr.ph.i29
  %.sroa.048.0 = phi ptr [ %i.ea, %.lr.ph.i29 ], [ %.sroa.048.0.ph, %.lr.ph.i29.preheader396 ]
  %.sroa.047.0 = phi ptr [ %i.eb, %.lr.ph.i29 ], [ %.sroa.047.0.ph, %.lr.ph.i29.preheader396 ]
  %i.dy = phi ptr [ %i.dz, %.lr.ph.i29 ], [ %.ph397, %.lr.ph.i29.preheader396 ]
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4 ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -4 ; 3 uses
  %i.eb = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -4 ; 3 uses
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !296, !noalias !4555
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !296, !noalias !4555
  %i.ed = load i32, ptr %i.dz, align 4, !tbaa !296, !noalias !4555
  store i32 %i.ed, ptr %i.ea, align 4, !tbaa !296, !noalias !4555
  %.not.i30 = icmp eq ptr %i.dz, %i.aj
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29, !llvm.loop !4534

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.ee = mul i64 %indvar, %i.g
  %i.ef = add i64 %i.i, %i.ee
  %i.eg = add i64 %i.ef, %i.ca                    ; 2 uses
  %i.eh = lshr i64 %i.eg, 2
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %min.iters.check321 = icmp ult i64 %i.eg, 28
  %i.ej = sub i64 %.sroa.066.0319, %i.ca
  %diff.check = icmp ugt i64 %i.ej, -32
  %or.cond = or i1 %min.iters.check321, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader393, label %vector.ph323

vector.ph323:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec324 = and i64 %i.ei, 9223372036854775800  ; 3 uses
  %i.ek = mul i64 %n.vec324, -4                   ; 2 uses
  %i.el = getelementptr i8, ptr %.sroa.066.0, i64 %i.ek ; 2 uses
  %i.em = getelementptr i8, ptr %i.bz, i64 %i.ek
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph323
  %index326 = phi i64 [ 0, %vector.ph323 ], [ %index.next331, %vector.body325 ] ; 2 uses
  %i.en = mul i64 %index326, -4                   ; 2 uses
  %next.gep327 = getelementptr i8, ptr %.sroa.066.0, i64 %i.en ; 2 uses
  %next.gep328 = getelementptr i8, ptr %i.bz, i64 %i.en ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %next.gep328, i64 -16
  %i.ep = getelementptr inbounds i8, ptr %next.gep328, i64 -32
  %wide.load329 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !296, !noalias !4556
  %wide.load330 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !296, !noalias !4556
  %i.eq = getelementptr inbounds i8, ptr %next.gep327, i64 -16
  %i.er = getelementptr inbounds i8, ptr %next.gep327, i64 -32
  store <4 x i32> %wide.load329, ptr %i.eq, align 4, !tbaa !296, !noalias !4556
  store <4 x i32> %wide.load330, ptr %i.er, align 4, !tbaa !296, !noalias !4556
  %index.next331 = add nuw i64 %index326, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next331, %n.vec324
  br i1 %i.es, label %middle.block332, label %vector.body325, !llvm.loop !4539

middle.block332:                                  ; preds = %vector.body325
  %cmp.n333 = icmp eq i64 %i.ei, %n.vec324
  br i1 %cmp.n333, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader393

.lr.ph.i.i.preheader393:                          ; preds = %.lr.ph.i.i.preheader, %middle.block332
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.066.0, %.lr.ph.i.i.preheader ], [ %i.el, %middle.block332 ]
  %.ph394 = phi ptr [ %i.bz, %.lr.ph.i.i.preheader ], [ %i.em, %middle.block332 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader393, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ew, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader393 ]
  %i.et = phi ptr [ %i.eu, %.lr.ph.i.i ], [ %.ph394, %.lr.ph.i.i.preheader393 ]
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -4 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !296, !noalias !4556
  %i.ew = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !296, !noalias !4556
  %.not.i.i31 = icmp eq ptr %i.eu, %i.aj
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !4540

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block377, %middle.block332, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.aj, %bb.s ], [ %i.ew, %.lr.ph.i.i ], [ %i.bz, %bb.t ], [ %i.da, %.lr.ph.i28 ], [ %.sroa.066.0, %bb.v ], [ %.sroa.066.0, %bb.w ], [ %i.cq, %middle.block ], [ %i.el, %middle.block332 ], [ %i.do, %middle.block377 ], [ %i.eb, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !441
  %i.ex = sub i64 0, %.018.lcssa.i
  %i.ey = getelementptr inbounds i8, ptr %i.m, i64 %i.ex ; 3 uses
  %.not.i32 = icmp eq ptr %i.aj, %.sroa.071.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit
  br i1 %.not23, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -1 ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %i.m, i64 -1 ; 2 uses
  %i.fb = load i8, ptr %i.ez, align 1, !tbaa !276
  %i.fc = load i8, ptr %i.fa, align 1, !tbaa !276
  store i8 %i.fc, ptr %i.ez, align 1, !tbaa !276
  store i8 %i.fb, ptr %i.fa, align 1, !tbaa !276
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fd = load ptr, ptr %2, align 8, !tbaa !453   ; 2 uses
  %i.fe = icmp eq ptr %i.ey, %i.fd
  br i1 %i.fe, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ff = icmp eq ptr %i.fd, %i.m
  br i1 %i.ff, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.m, %bb.y ], [ %i.ey, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !453
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, %bb.z, %.sink.split.i
  store ptr %i.aj, ptr %3, align 8, !tbaa !441
  %i.fg = load ptr, ptr %1, align 8, !tbaa !453
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -1 ; 2 uses
  store ptr %i.fh, ptr %1, align 8, !tbaa !453
  %i.fi = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.fi to i64
  %i.fj = add i64 %.0140, %.neg
  %i.fk = icmp ne i64 %i.ai, 0
  %.neg24 = sext i1 %i.fk to i64
  %i.fl = add i64 %.sroa.speculated, %.neg24
  %i.fm = add i64 %.097139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.fm, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4541

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, %bb.a
  %i.fn = load ptr, ptr %6, align 8, !tbaa !441
  store ptr %i.fn, ptr %0, align 8, !tbaa !441
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #1 comdat {
bb.a:
  %.not138 = icmp eq i64 %8, 0
  br i1 %.not138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sub i64 0, %7                            ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %.not.i.i = icmp eq i64 %7, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !453
  %.pre190 = load ptr, ptr %3, align 8, !tbaa !441 ; 2 uses
  %.pre190310 = ptrtoaddr ptr %.pre190 to i64     ; 5 uses
  %i.b = shl i64 %7, 2                            ; 4 uses
  %i.c = add i64 %i.b, -4
  %i.d = sub i64 %i.c, %.pre190310                ; 2 uses
  %i.e = shl i64 %7, 2                            ; 2 uses
  %i.f = add i64 %i.e, -4
  %i.g = sub i64 %i.f, %.pre190310
  %i.h = shl i64 %7, 2                            ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_:bb.a

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bs, %bb.n ], [ %i.aq, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bu, %bb.n ], [ %i.m, %bb.m ] ; 3 uses
  %.sroa.012.0.i.i.ph = phi ptr [ %.sroa.012.0.i.i, %bb.n ], [ %i.ar, %bb.m ]
  %i.bn = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bs, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.012.0.i.i = phi ptr [ %i.bo, %bb.o ], [ %.sroa.012.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.012.0.i.i, i64 -4 ; 5 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !296, !noalias !4596 ; 2 uses
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !296, !noalias !4596 ; 2 uses
  %i.br = icmp slt i32 %i.bp, %i.bq
  %i.bs = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 7 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !296, !noalias !4596 ; 2 uses
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bu = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4 ; 3 uses
  store i32 %i.bq, ptr %i.bs, align 4, !tbaa !296, !noalias !4596
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !296, !noalias !4596
  %i.bv = icmp eq ptr %i.bu, %i.ak
  br i1 %i.bv, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !67

bb.o:                                             ; preds = %.preheader.i.i
  store i32 %i.bp, ptr %i.bs, align 4, !tbaa !296, !noalias !4596
  store i32 %i.bt, ptr %i.bo, align 4, !tbaa !296, !noalias !4596
  %i.bw = icmp eq ptr %i.bo, %i.ap
  br i1 %i.bw, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !67

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.cb, %bb.q ], [ %i.aq, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.cd, %bb.q ], [ %i.m, %bb.p ] ; 3 uses
  %.sroa.012.0.i8.i.ph = phi ptr [ %.sroa.012.0.i8.i, %bb.q ], [ %i.ar, %bb.p ]
  %i.bx = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.cb, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.012.0.i8.i = phi ptr [ %i.by, %bb.r ], [ %.sroa.012.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 5 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !296, !noalias !4597 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !296, !noalias !4597 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.bz, %i.ca
  %i.cb = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 7 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !296, !noalias !4597 ; 2 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.cd = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 3 uses
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !296, !noalias !4597
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !296, !noalias !4597
  %i.ce = icmp eq ptr %i.cd, %i.ak
  br i1 %i.ce, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !68

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !296, !noalias !4597
  store i32 %i.cc, ptr %i.by, align 4, !tbaa !296, !noalias !4597
  %i.cf = icmp eq ptr %i.by, %i.ap
  br i1 %i.cf, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !68

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.at, %bb.h ], [ %i.be, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.ar, %bb.p ], [ %i.ar, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bo, %bb.o ], [ %i.by, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.ak, %bb.q ], [ %i.ak, %bb.n ], [ %i.m, %bb.p ], [ %i.m, %bb.m ], [ %i.ak, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ak, %.split.i14.i ]
  %.sroa.066.0.ph = phi ptr [ %i.bb, %bb.h ], [ %i.bl, %bb.k ], [ %i.cb, %bb.r ], [ %i.bs, %bb.o ], [ %i.aq, %bb.p ], [ %i.aq, %bb.m ], [ %i.ay, %.split.i.i ], [ %i.bs, %bb.n ], [ %i.cb, %bb.q ], [ %i.bi, %.split.i14.i ]
  %.sroa.071.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.an, %bb.r ], [ %i.an, %bb.o ], [ %i.an, %bb.p ], [ %i.an, %bb.m ], [ %i.as, %.split.i.i ], [ %i.an, %bb.n ], [ %i.an, %bb.q ], [ %i.bd, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !441, !noalias !398
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !441, !noalias !398
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.066.0 = phi ptr [ %i.aq, %bb.f ], [ %i.aq, %bb.i ], [ %.sroa.066.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 17 uses
  %.sroa.071.0 = phi ptr [ %i.an, %bb.f ], [ %i.an, %bb.i ], [ %.sroa.071.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 16 uses
  %.sroa.071.0311 = ptrtoaddr ptr %.sroa.071.0 to i64 ; 2 uses
  store ptr %.sroa.066.0, ptr %6, align 8, !tbaa !441
  %i.cg = load ptr, ptr %3, align 8, !tbaa !441   ; 23 uses
  %i.ch = ptrtoaddr ptr %i.cg to i64              ; 4 uses
  %i.ci = icmp eq ptr %i.cg, %.sroa.066.0
  br i1 %i.ci, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.071.0, %i.ao
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %bb.t
  %i.cj = mul i64 %indvar, %i.k
  %.reass = add i64 %i.cj, %invariant.op
  %i.ck = shl i64 %.018.lcssa.i, 2
  %.neg395 = add i64 %i.ck, 4
  %.neg396 = mul i64 %.neg395, %7
  %i.cl = add i64 %.reass, %.sroa.071.0311
  %i.cm = add i64 %.neg396, %i.cl                 ; 2 uses
  %i.cn = lshr i64 %i.cm, 2
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cm, 44
  br i1 %min.iters.check, label %.lr.ph.i28.preheader402, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %i.cp = mul i64 %indvar, %i.b
  %i.cq = shl i64 %.018.lcssa.i, 2
  %.neg398 = add i64 %i.cq, 4
  %.neg399 = mul i64 %.neg398, %7
  %i.cr = add i64 %i.cp, %.sroa.071.0311
  %i.cs = add i64 %i.cr, %.neg399
  %.not400 = sub i64 %i.l, %i.cs
  %i.ct = and i64 %.not400, -4                    ; 2 uses
  %i.cu = getelementptr i8, ptr %.sroa.071.0, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cg, i64 %i.ct
  %bound0 = icmp ult ptr %i.cu, %i.cg
  %bound1 = icmp ult ptr %i.cv, %.sroa.071.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader402, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.co, 9223372036854775800     ; 3 uses
  %i.cw = mul i64 %n.vec, -4                      ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cg, i64 %i.cw  ; 2 uses
  %i.cy = getelementptr i8, ptr %.sroa.071.0, i64 %i.cw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.cz ; 2 uses
  %next.gep312 = getelementptr i8, ptr %.sroa.071.0, i64 %i.cz ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %next.gep312, i64 -16 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %next.gep312, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.da, align 4, !tbaa !296, !alias.scope !4598, !noalias !4599
  %wide.load313 = load <4 x i32>, ptr %i.db, align 4, !tbaa !296, !alias.scope !4598, !noalias !4599
  %i.dc = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load314 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !296, !alias.scope !4600, !noalias !4601
  %wide.load315 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !296, !alias.scope !4600, !noalias !4601
  store <4 x i32> %wide.load314, ptr %i.da, align 4, !tbaa !296, !alias.scope !4598, !noalias !4599
  store <4 x i32> %wide.load315, ptr %i.db, align 4, !tbaa !296, !alias.scope !4598, !noalias !4599
  store <4 x i32> %wide.load, ptr %i.dc, align 4, !tbaa !296, !alias.scope !4600, !noalias !4601
  store <4 x i32> %wide.load313, ptr %i.dd, align 4, !tbaa !296, !alias.scope !4600, !noalias !4601
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !4574

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader402

.lr.ph.i28.preheader402:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.054.0.ph = phi ptr [ %i.cg, %vector.memcheck ], [ %i.cg, %.lr.ph.i28.preheader ], [ %i.cx, %middle.block ]
  %.ph = phi ptr [ %.sroa.071.0, %vector.memcheck ], [ %.sroa.071.0, %.lr.ph.i28.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader402, %.lr.ph.i28
  %.sroa.054.0 = phi ptr [ %i.dh, %.lr.ph.i28 ], [ %.sroa.054.0.ph, %.lr.ph.i28.preheader402 ]
  %i.df = phi ptr [ %i.dg, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader402 ]
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4 ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %.sroa.054.0, i64 -4 ; 4 uses
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !296, !noalias !4601
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !296, !noalias !4601
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !296, !noalias !4601
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !296, !noalias !4601
  %.not.i = icmp eq ptr %i.dg, %i.ao
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28, !llvm.loop !4575

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cg, %i.ak           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %i.dk = mul i64 %indvar, %i.e
  %i.dl = add i64 %i.g, %i.dk
  %i.dm = add i64 %i.dl, %i.ch                    ; 2 uses
  %i.dn = lshr i64 %i.dm, 2
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check362 = icmp ult i64 %i.dm, 44
  br i1 %min.iters.check362, label %.lr.ph.i29.preheader406, label %vector.memcheck363

vector.memcheck363:                               ; preds = %.lr.ph.i29.preheader
  %i.dp = mul i64 %indvar, %i.b
  %i.dq = add i64 %i.d, %i.dp
  %i.dr = add i64 %i.dq, %i.ch
  %.not393 = and i64 %i.dr, -4
  %i.ds = xor i64 %.not393, -4                    ; 3 uses
  %i.dt = getelementptr i8, ptr %.sroa.066.0, i64 %i.ds ; 2 uses
  %i.du = getelementptr i8, ptr %.sroa.071.0, i64 %i.ds ; 2 uses
  %12 = getelementptr i8, ptr %i.cg, i64 %i.ds    ; 2 uses
  %bound0364.a = icmp ult ptr %i.dt, %.sroa.071.0
  %bound1365 = icmp ult ptr %i.du, %.sroa.066.0
  %found.conflict366 = and i1 %bound0364.a, %bound1365
  %bound0367 = icmp ult ptr %i.dt, %i.cg
  %bound1368 = icmp ult ptr %12, %.sroa.066.0
  %found.conflict369 = and i1 %bound0367, %bound1368
  %conflict.rdx = or i1 %found.conflict366, %found.conflict369
  %bound0370 = icmp ult ptr %i.du, %i.cg
  %bound1371 = icmp ult ptr %12, %.sroa.071.0
  %found.conflict372 = and i1 %bound0370, %bound1371
  %conflict.rdx373 = or i1 %conflict.rdx, %found.conflict372
  br i1 %conflict.rdx373, label %.lr.ph.i29.preheader406, label %vector.ph374

vector.ph374:                                     ; preds = %vector.memcheck363
  %n.vec375 = and i64 %i.do, 9223372036854775800  ; 3 uses
  %i.dv = mul i64 %n.vec375, -4                   ; 3 uses
  %i.dw = getelementptr i8, ptr %.sroa.071.0, i64 %i.dv
  %i.dx = getelementptr i8, ptr %.sroa.066.0, i64 %i.dv ; 2 uses
  %i.dy = getelementptr i8, ptr %i.cg, i64 %i.dv
  br label %vector.body376

vector.body376:                                   ; preds = %vector.body376, %vector.ph374
  %index377 = phi i64 [ 0, %vector.ph374 ], [ %index.next387, %vector.body376 ] ; 2 uses
  %i.dz = mul i64 %index377, -4                   ; 3 uses
  %next.gep378 = getelementptr i8, ptr %.sroa.071.0, i64 %i.dz ; 2 uses
  %next.gep379 = getelementptr i8, ptr %.sroa.066.0, i64 %i.dz ; 2 uses
  %next.gep380 = getelementptr i8, ptr %i.cg, i64 %i.dz ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %next.gep379, i64 -16 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %next.gep379, i64 -32 ; 2 uses
  %wide.load381 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !296, !alias.scope !4602, !noalias !4603
  %wide.load382 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !296, !alias.scope !4602, !noalias !4603
  %i.ec = getelementptr inbounds i8, ptr %next.gep378, i64 -16 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %next.gep378, i64 -32 ; 2 uses
  %wide.load383 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !296, !alias.scope !4604, !noalias !4605
  %wide.load384 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !296, !alias.scope !4604, !noalias !4605
  store <4 x i32> %wide.load383, ptr %i.ea, align 4, !tbaa !296, !alias.scope !4602, !noalias !4603
  store <4 x i32> %wide.load384, ptr %i.eb, align 4, !tbaa !296, !alias.scope !4602, !noalias !4603
  %i.ee = getelementptr inbounds i8, ptr %next.gep380, i64 -16 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %next.gep380, i64 -32 ; 2 uses
  %wide.load385 = load <4 x i32>, ptr %i.ee, align 4, !tbaa !296, !alias.scope !4606, !noalias !4607
  %wide.load386 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !296, !alias.scope !4606, !noalias !4607
  store <4 x i32> %wide.load385, ptr %i.ec, align 4, !tbaa !296, !alias.scope !4604, !noalias !4605
  store <4 x i32> %wide.load386, ptr %i.ed, align 4, !tbaa !296, !alias.scope !4604, !noalias !4605
  store <4 x i32> %wide.load381, ptr %i.ee, align 4, !tbaa !296, !alias.scope !4606, !noalias !4607
  store <4 x i32> %wide.load382, ptr %i.ef, align 4, !tbaa !296, !alias.scope !4606, !noalias !4607
  %index.next387 = add nuw i64 %index377, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next387, %n.vec375
  br i1 %i.eg, label %middle.block388, label %vector.body376, !llvm.loop !4582

middle.block388:                                  ; preds = %vector.body376
  %cmp.n389 = icmp eq i64 %i.do, %n.vec375
  br i1 %cmp.n389, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader406

.lr.ph.i29.preheader406:                          ; preds = %vector.memcheck363, %.lr.ph.i29.preheader, %middle.block388
  %.sroa.048.0.ph = phi ptr [ %.sroa.071.0, %vector.memcheck363 ], [ %.sroa.071.0, %.lr.ph.i29.preheader ], [ %i.dw, %middle.block388 ]
  %.sroa.047.0.ph = phi ptr [ %.sroa.066.0, %vector.memcheck363 ], [ %.sroa.066.0, %.lr.ph.i29.preheader ], [ %i.dx, %middle.block388 ]
  %.ph407 = phi ptr [ %i.cg, %vector.memcheck363 ], [ %i.cg, %.lr.ph.i29.preheader ], [ %i.dy, %middle.block388 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader406, %.lr.ph.i29
  %.sroa.048.0 = phi ptr [ %i.ej, %.lr.ph.i29 ], [ %.sroa.048.0.ph, %.lr.ph.i29.preheader406 ]
  %.sroa.047.0 = phi ptr [ %i.ek, %.lr.ph.i29 ], [ %.sroa.047.0.ph, %.lr.ph.i29.preheader406 ]
  %i.eh = phi ptr [ %i.ei, %.lr.ph.i29 ], [ %.ph407, %.lr.ph.i29.preheader406 ]
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -4 ; 4 uses
  %i.ej = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -4 ; 3 uses
  %i.ek = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -4 ; 4 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !296, !noalias !4607
  %i.em = load i32, ptr %i.ej, align 4, !tbaa !296, !noalias !4607
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !296, !noalias !4607
  %i.en = load i32, ptr %i.ei, align 4, !tbaa !296, !noalias !4607
  store i32 %i.en, ptr %i.ej, align 4, !tbaa !296, !noalias !4607
  store i32 %i.el, ptr %i.ei, align 4, !tbaa !296, !noalias !4607
  %.not.i30 = icmp eq ptr %i.ei, %i.ak
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29, !llvm.loop !4583

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.eo = mul i64 %indvar, %i.h
  %i.ep = add i64 %i.j, %i.eo
  %i.eq = add i64 %i.ep, %i.ch                    ; 2 uses
  %i.er = lshr i64 %i.eq, 2
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %min.iters.check325 = icmp ult i64 %i.eq, 28
  br i1 %min.iters.check325, label %.lr.ph.i.i.preheader403, label %vector.memcheck326

vector.memcheck326:                               ; preds = %.lr.ph.i.i.preheader
  %i.et = mul i64 %indvar, %i.b
  %i.eu = add i64 %i.d, %i.et
  %i.ev = add i64 %i.eu, %i.ch
  %.not394 = and i64 %i.ev, -4
  %i.ew = xor i64 %.not394, -4                    ; 2 uses
  %i.ex = getelementptr i8, ptr %i.cg, i64 %i.ew
  %i.ey = getelementptr i8, ptr %.sroa.066.0, i64 %i.ew
  %bound0327 = icmp ult ptr %i.ex, %.sroa.066.0
  %bound1328 = icmp ult ptr %i.ey, %i.cg
  %found.conflict329 = and i1 %bound0327, %bound1328
  br i1 %found.conflict329, label %.lr.ph.i.i.preheader403, label %vector.ph330

vector.ph330:                                     ; preds = %vector.memcheck326
  %n.vec331 = and i64 %i.es, 9223372036854775800  ; 3 uses
  %i.ez = mul i64 %n.vec331, -4                   ; 2 uses
  %i.fa = getelementptr i8, ptr %.sroa.066.0, i64 %i.ez ; 2 uses
  %i.fb = getelementptr i8, ptr %i.cg, i64 %i.ez
  br label %vector.body332

vector.body332:                                   ; preds = %vector.body332, %vector.ph330
  %index333 = phi i64 [ 0, %vector.ph330 ], [ %index.next340, %vector.body332 ] ; 2 uses
  %i.fc = mul i64 %index333, -4                   ; 2 uses
  %next.gep334 = getelementptr i8, ptr %.sroa.066.0, i64 %i.fc ; 2 uses
  %next.gep335 = getelementptr i8, ptr %i.cg, i64 %i.fc ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %next.gep335, i64 -16 ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %next.gep335, i64 -32 ; 2 uses
  %wide.load336 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !296, !alias.scope !4608, !noalias !4609
  %wide.load337 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !296, !alias.scope !4608, !noalias !4609
  %i.ff = getelementptr inbounds i8, ptr %next.gep334, i64 -16 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %next.gep334, i64 -32 ; 2 uses
  %wide.load338 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !296, !alias.scope !4610, !noalias !4611
  %wide.load339 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !296, !alias.scope !4610, !noalias !4611
  store <4 x i32> %wide.load338, ptr %i.fd, align 4, !tbaa !296, !alias.scope !4608, !noalias !4609
  store <4 x i32> %wide.load339, ptr %i.fe, align 4, !tbaa !296, !alias.scope !4608, !noalias !4609
  store <4 x i32> %wide.load336, ptr %i.ff, align 4, !tbaa !296, !alias.scope !4610, !noalias !4611
  store <4 x i32> %wide.load337, ptr %i.fg, align 4, !tbaa !296, !alias.scope !4610, !noalias !4611
  %index.next340 = add nuw i64 %index333, 8       ; 2 uses
  %i.fh = icmp eq i64 %index.next340, %n.vec331
  br i1 %i.fh, label %middle.block341, label %vector.body332, !llvm.loop !4591

middle.block341:                                  ; preds = %vector.body332
  %cmp.n342 = icmp eq i64 %i.es, %n.vec331
  br i1 %cmp.n342, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader403

.lr.ph.i.i.preheader403:                          ; preds = %vector.memcheck326, %.lr.ph.i.i.preheader, %middle.block341
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.066.0, %vector.memcheck326 ], [ %.sroa.066.0, %.lr.ph.i.i.preheader ], [ %i.fa, %middle.block341 ]
  %.ph404 = phi ptr [ %i.cg, %vector.memcheck326 ], [ %i.cg, %.lr.ph.i.i.preheader ], [ %i.fb, %middle.block341 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader403, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.fk, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader403 ]
  %i.fi = phi ptr [ %i.fj, %.lr.ph.i.i ], [ %.ph404, %.lr.ph.i.i.preheader403 ]
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -4 ; 4 uses
  %i.fk = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !296, !noalias !4611
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !296, !noalias !4611
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !296, !noalias !4611
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !296, !noalias !4611
  %.not.i.i31 = icmp eq ptr %i.fj, %i.ak
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !4592

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block388, %middle.block341, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ak, %bb.s ], [ %i.fk, %.lr.ph.i.i ], [ %i.cg, %bb.t ], [ %i.dh, %.lr.ph.i28 ], [ %.sroa.066.0, %bb.v ], [ %.sroa.066.0, %bb.w ], [ %i.cx, %middle.block ], [ %i.fa, %middle.block341 ], [ %i.dx, %middle.block388 ], [ %i.ek, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !441
  %i.fn = sub i64 0, %.018.lcssa.i
  %i.fo = getelementptr inbounds i8, ptr %i.n, i64 %i.fn ; 3 uses
  %.not.i32 = icmp eq ptr %i.ak, %.sroa.071.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit
  br i1 %.not23, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -1 ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.n, i64 -1 ; 2 uses
  %i.fr = load i8, ptr %i.fp, align 1, !tbaa !276
  %i.fs = load i8, ptr %i.fq, align 1, !tbaa !276
  store i8 %i.fs, ptr %i.fp, align 1, !tbaa !276
  store i8 %i.fr, ptr %i.fq, align 1, !tbaa !276
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.ft = load ptr, ptr %2, align 8, !tbaa !453   ; 2 uses
  %i.fu = icmp eq ptr %i.fo, %i.ft
  br i1 %i.fu, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fv = icmp eq ptr %i.ft, %i.n
  br i1 %i.fv, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.n, %bb.y ], [ %i.fo, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !453
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, %bb.z, %.sink.split.i
  store ptr %i.ak, ptr %3, align 8, !tbaa !441
  %i.fw = load ptr, ptr %1, align 8, !tbaa !453
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -1 ; 2 uses
  store ptr %i.fx, ptr %1, align 8, !tbaa !453
  %i.fy = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.fy to i64
  %i.fz = add i64 %.0140, %.neg
  %i.ga = icmp ne i64 %i.aj, 0
  %.neg24 = sext i1 %i.ga to i64
  %i.gb = add i64 %.sroa.speculated, %.neg24
  %i.gc = add i64 %.097139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.gc, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4593

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, %bb.a
  %i.gd = load ptr, ptr %6, align 8, !tbaa !441
  store ptr %i.gd, ptr %0, align 8, !tbaa !441
  ret void
end_hunk_11
begin_hunk_12_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPiS5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET3_T_SH_T0_T1_RT2_SK_SG_NS0_9iter_sizeISJ_E4typeESO_SO_SO_T4_bT5_:bb.a
  %i.ar = load i32, ptr %.026.i21.i, align 4, !tbaa !296
  store i32 %i.ar, ptr %.025.i22.i, align 4, !tbaa !296
  %.not44.i.i = icmp eq ptr %i.ap, %i.ab
  %.13137.i25.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not44.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !63

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.028.ph.i17.i, i64 4 ; 3 uses
  store i32 %i.an, ptr %.030.i20.i, align 4, !tbaa !296
  %.not43.i32.i = icmp eq ptr %i.as, %4
  %.131.i33.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not43.i32.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.outer.i15.i, !llvm.loop !63

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  br i1 %10, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.o
  %.024.i.i.ph = phi ptr [ %i.aw, %bb.o ], [ %.038125, %bb.m ]
  %.021.i.i.ph = phi ptr [ %i.az, %bb.o ], [ %i.af, %bb.m ] ; 3 uses
  %.0.i.i.ph = phi ptr [ %.0.i.i, %bb.o ], [ %.083122, %bb.m ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.n
  %.024.i.i = phi ptr [ %i.aw, %bb.n ], [ %.024.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %.0.i.i = phi ptr [ %i.ax, %bb.n ], [ %.0.i.i.ph, %.preheader.i.i.outer ] ; 4 uses
  %i.at = load i32, ptr %.0.i.i, align 4, !tbaa !296 ; 2 uses
  %i.au = load i32, ptr %.021.i.i.ph, align 4, !tbaa !296 ; 2 uses
  %i.av = icmp slt i32 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 4 uses
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  store i32 %i.at, ptr %.024.i.i, align 4, !tbaa !296
  %i.ay = icmp eq ptr %i.ax, %i.ab
  br i1 %i.ay, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !61

bb.o:                                             ; preds = %.preheader.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.021.i.i.ph, i64 4 ; 3 uses
  store i32 %i.au, ptr %.024.i.i, align 4, !tbaa !296
  %i.ba = icmp eq ptr %i.az, %4
  br i1 %i.ba, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !61

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer

.preheader.i13.i.outer:                           ; preds = %bb.p, %bb.r
  %.024.i14.i.ph = phi ptr [ %i.bd, %bb.r ], [ %.038125, %bb.p ]
  %.021.i15.i.ph = phi ptr [ %i.bg, %bb.r ], [ %i.af, %bb.p ] ; 3 uses
  %.0.i16.i.ph = phi ptr [ %.0.i16.i, %bb.r ], [ %.083122, %bb.p ]
  br label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %.preheader.i13.i.outer, %bb.q
  %.024.i14.i = phi ptr [ %i.bd, %bb.q ], [ %.024.i14.i.ph, %.preheader.i13.i.outer ] ; 3 uses
  %.0.i16.i = phi ptr [ %i.be, %bb.q ], [ %.0.i16.i.ph, %.preheader.i13.i.outer ] ; 4 uses
  %i.bb = load i32, ptr %.021.i15.i.ph, align 4, !tbaa !296 ; 2 uses
  %i.bc = load i32, ptr %.0.i16.i, align 4, !tbaa !296 ; 2 uses
  %.not37.i.i = icmp slt i32 %i.bb, %i.bc
  %i.bd = getelementptr inbounds nuw i8, ptr %.024.i14.i, i64 4 ; 4 uses
  br i1 %.not37.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i13.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 4 ; 2 uses
  store i32 %i.bc, ptr %.024.i14.i, align 4, !tbaa !296
  %i.bf = icmp eq ptr %i.be, %i.ab
  br i1 %i.bf, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i13.i, !llvm.loop !64

bb.r:                                             ; preds = %.preheader.i13.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.021.i15.i.ph, i64 4 ; 3 uses
  store i32 %i.bb, ptr %.024.i14.i, align 4, !tbaa !296
  %i.bh = icmp eq ptr %i.bg, %4
  br i1 %i.bh, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer, !llvm.loop !64

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split: ; preds = %bb.k, %bb.h, %bb.q, %bb.r, %bb.n, %bb.o, %.split.i24.i, %.split.i.i, %bb.p, %bb.m
  %.12938.i30.sink.i.sink = phi ptr [ %.028.ph.i.i, %.split.i.i ], [ %.028.ph.i17.i, %.split.i24.i ], [ %i.bg, %bb.r ], [ %i.az, %bb.o ], [ %i.af, %bb.p ], [ %i.af, %bb.m ], [ %i.am, %bb.h ], [ %.021.i.i.ph, %bb.n ], [ %.021.i15.i.ph, %bb.q ], [ %i.as, %bb.k ]
  %.184.ph = phi ptr [ %i.ab, %.split.i.i ], [ %i.ab, %.split.i24.i ], [ %.0.i16.i, %bb.r ], [ %.0.i.i, %bb.o ], [ %.083122, %bb.p ], [ %.083122, %bb.m ], [ %.026.i.i, %bb.h ], [ %i.ab, %bb.n ], [ %i.ab, %bb.q ], [ %.026.i21.i, %bb.k ]
  %.080.ph = phi ptr [ %i.ak, %.split.i.i ], [ %i.aq, %.split.i24.i ], [ %i.ad, %bb.q ], [ %i.ad, %bb.n ], [ %i.ad, %bb.p ], [ %i.ad, %bb.m ], [ %.025.i.i, %bb.h ], [ %i.ad, %bb.o ], [ %i.ad, %bb.r ], [ %.025.i22.i, %bb.k ]
  %.ph = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.13137.i25.i, %.split.i24.i ], [ %i.bd, %bb.q ], [ %i.aw, %bb.n ], [ %.038125, %bb.p ], [ %.038125, %bb.m ], [ %.131.i.i, %bb.h ], [ %i.aw, %bb.o ], [ %i.bd, %bb.r ], [ %.131.i33.i, %bb.k ]
  store ptr %.12938.i30.sink.i.sink, ptr %3, align 8, !tbaa !299
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.184 = phi ptr [ %.083122, %bb.i ], [ %.083122, %bb.f ], [ %.184.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split ] ; 20 uses
  %.080 = phi ptr [ %i.ad, %bb.i ], [ %i.ad, %bb.f ], [ %.080.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split ] ; 16 uses
  %i.bi = phi ptr [ %.038125, %bb.i ], [ %.038125, %bb.f ], [ %.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split ] ; 14 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %.184268 = ptrtoaddr ptr %.184 to i64           ; 4 uses
  %.080260 = ptrtoaddr ptr %.080 to i64           ; 2 uses
  %i.bk = icmp eq ptr %.184, %i.bi
  br i1 %i.bk, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit
  br i1 %.not43, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not8.i = icmp eq ptr %.080, %i.ae
  br i1 %.not8.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %bb.t
  %i.bl = mul i64 %indvar, %.idx                  ; 2 uses
  %i.bm = add i64 %i.i, %i.bl
  %i.bn = shl i64 %.022.lcssa.i, 2
  %i.bo = add i64 %i.bn, 4
  %i.bp = mul i64 %6, %i.bo
  %i.bq = add i64 %i.bm, %i.bp
  %i.br = sub i64 %i.bq, %.080260                 ; 2 uses
  %i.bs = lshr i64 %i.br, 2
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.br, 44
  br i1 %min.iters.check, label %.lr.ph.i48.preheader332, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48.preheader
  %i.bu = add i64 %i.b, %i.bl
  %i.bv = shl i64 %.022.lcssa.i, 2
  %i.bw = add i64 %i.bv, 4
  %i.bx = mul i64 %6, %i.bw
  %i.by = add i64 %i.bu, %i.bx
  %i.bz = sub i64 %i.by, %.080260
  %i.ca = and i64 %i.bz, -4
  %i.cb = add i64 %i.ca, 4                        ; 2 uses
  %i.cc = getelementptr i8, ptr %.080, i64 %i.cb
  %i.cd = getelementptr i8, ptr %.184, i64 %i.cb
  %bound0 = icmp ult ptr %.080, %i.cd
  %bound1 = icmp ult ptr %.184, %i.cc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i48.preheader332, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bt, 9223372036854775800     ; 3 uses
  %i.ce = shl i64 %n.vec, 2                       ; 2 uses
  %i.cf = getelementptr i8, ptr %.184, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %.080, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.184, i64 %i.ch ; 3 uses
  %next.gep261 = getelementptr i8, ptr %.080, i64 %i.ch ; 3 uses
  %i.ci = getelementptr i8, ptr %next.gep261, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep261, align 4, !tbaa !296, !alias.scope !4715, !noalias !4716
  %wide.load262 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !296, !alias.scope !4715, !noalias !4716
  %i.cj = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load263 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !296, !alias.scope !4716
  %wide.load264 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !296, !alias.scope !4716
  store <4 x i32> %wide.load263, ptr %next.gep261, align 4, !tbaa !296, !alias.scope !4715, !noalias !4716
  store <4 x i32> %wide.load264, ptr %i.ci, align 4, !tbaa !296, !alias.scope !4715, !noalias !4716
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296, !alias.scope !4716
  store <4 x i32> %wide.load262, ptr %i.cj, align 4, !tbaa !296, !alias.scope !4716
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !4702

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i48.preheader332

.lr.ph.i48.preheader332:                          ; preds = %vector.memcheck, %.lr.ph.i48.preheader, %middle.block
  %.010.i.ph = phi ptr [ %.184, %vector.memcheck ], [ %.184, %.lr.ph.i48.preheader ], [ %i.cf, %middle.block ]
  %.079.i.ph = phi ptr [ %.080, %vector.memcheck ], [ %.080, %.lr.ph.i48.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader332, %.lr.ph.i48
  %.010.i = phi ptr [ %i.co, %.lr.ph.i48 ], [ %.010.i.ph, %.lr.ph.i48.preheader332 ] ; 3 uses
  %.079.i = phi ptr [ %i.cn, %.lr.ph.i48 ], [ %.079.i.ph, %.lr.ph.i48.preheader332 ] ; 3 uses
  %i.cl = load i32, ptr %.079.i, align 4, !tbaa !296
  %i.cm = load i32, ptr %.010.i, align 4, !tbaa !296
  store i32 %i.cm, ptr %.079.i, align 4, !tbaa !296
  store i32 %i.cl, ptr %.010.i, align 4, !tbaa !296
  %i.cn = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.cn, %i.ae
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i48, !llvm.loop !4703

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit
  %.not8.i.i = icmp eq ptr %.184, %i.ab           ; 2 uses
  br i1 %.not43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %bb.v
  %i.cp = mul i64 %indvar, %.idx                  ; 2 uses
  %i.cq = add i64 %i.f, %i.cp                     ; 2 uses
  %i.cr = sub i64 %i.cq, %.184268                 ; 2 uses
  %i.cs = lshr i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check302 = icmp ult i64 %i.cr, 44
  br i1 %min.iters.check302, label %.lr.ph.i49.preheader335, label %vector.memcheck303

vector.memcheck303:                               ; preds = %.lr.ph.i49.preheader
  %i.cu = add i64 %i.d, %i.cp
  %i.cv = sub i64 %i.cu, %.184268
  %i.cw = and i64 %i.cv, -4
  %i.cx = add i64 %i.cw, 4                        ; 3 uses
  %i.cy = getelementptr i8, ptr %i.bi, i64 %i.cx  ; 2 uses
  %i.cz = getelementptr i8, ptr %.080, i64 %i.cx  ; 2 uses
  %11 = getelementptr i8, ptr %.184, i64 %i.cx    ; 2 uses
  %bound0304.a = icmp ult ptr %i.bi, %i.cz
  %bound1305 = icmp ult ptr %.080, %i.cy
  %found.conflict306 = and i1 %bound0304.a, %bound1305
  %bound0307 = icmp ult ptr %i.bi, %11
  %bound1308 = icmp ult ptr %.184, %i.cy
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx = or i1 %found.conflict306, %found.conflict309
  %bound0310 = icmp ult ptr %.080, %11
  %bound1311 = icmp ult ptr %.184, %i.cz
  %found.conflict312 = and i1 %bound0310, %bound1311
  %conflict.rdx313 = or i1 %conflict.rdx, %found.conflict312
  br i1 %conflict.rdx313, label %.lr.ph.i49.preheader335, label %vector.ph314

vector.ph314:                                     ; preds = %vector.memcheck303
  %n.vec315 = and i64 %i.ct, 9223372036854775800  ; 3 uses
  %i.da = shl i64 %n.vec315, 2                    ; 3 uses
  %i.db = getelementptr i8, ptr %i.bi, i64 %i.da  ; 2 uses
  %i.dc = getelementptr i8, ptr %.080, i64 %i.da
  %i.dd = getelementptr i8, ptr %.184, i64 %i.da
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next325, %vector.body316 ] ; 2 uses
  %i.de = shl i64 %index317, 2                    ; 3 uses
  %next.gep318 = getelementptr i8, ptr %i.bi, i64 %i.de ; 2 uses
  %next.gep319 = getelementptr i8, ptr %.080, i64 %i.de ; 3 uses
  %next.gep320 = getelementptr i8, ptr %.184, i64 %i.de ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep319, i64 16 ; 2 uses
  %wide.load321 = load <4 x i32>, ptr %next.gep319, align 4, !tbaa !296, !alias.scope !4717, !noalias !4718
  %wide.load322 = load <4 x i32>, ptr %i.df, align 4, !tbaa !296, !alias.scope !4717, !noalias !4718
  %i.dg = getelementptr i8, ptr %next.gep318, i64 16
  store <4 x i32> %wide.load321, ptr %next.gep318, align 4, !tbaa !296, !alias.scope !4719, !noalias !4720
  store <4 x i32> %wide.load322, ptr %i.dg, align 4, !tbaa !296, !alias.scope !4719, !noalias !4720
  %i.dh = getelementptr i8, ptr %next.gep320, i64 16
  %wide.load323 = load <4 x i32>, ptr %next.gep320, align 4, !tbaa !296, !alias.scope !4718
  %wide.load324 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !296, !alias.scope !4718
  store <4 x i32> %wide.load323, ptr %next.gep319, align 4, !tbaa !296, !alias.scope !4717, !noalias !4718
  store <4 x i32> %wide.load324, ptr %i.df, align 4, !tbaa !296, !alias.scope !4717, !noalias !4718
  %index.next325 = add nuw i64 %index317, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next325, %n.vec315
  br i1 %i.di, label %middle.block326, label %vector.body316, !llvm.loop !4708

middle.block326:                                  ; preds = %vector.body316
  %cmp.n327 = icmp eq i64 %i.ct, %n.vec315
  br i1 %cmp.n327, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49.preheader335

.lr.ph.i49.preheader335:                          ; preds = %vector.memcheck303, %.lr.ph.i49.preheader, %middle.block326
  %.012.i.ph = phi ptr [ %i.bi, %vector.memcheck303 ], [ %i.bi, %.lr.ph.i49.preheader ], [ %i.db, %middle.block326 ] ; 2 uses
  %.0711.i.ph = phi ptr [ %.080, %vector.memcheck303 ], [ %.080, %.lr.ph.i49.preheader ], [ %i.dc, %middle.block326 ] ; 2 uses
  %.0810.i.ph = phi ptr [ %.184, %vector.memcheck303 ], [ %.184, %.lr.ph.i49.preheader ], [ %i.dd, %middle.block326 ] ; 3 uses
  %.0810.i.ph380 = ptrtoaddr ptr %.0810.i.ph to i64
  %i.dj = sub i64 %i.cq, %.0810.i.ph380           ; 2 uses
  %i.dk = lshr i64 %i.dj, 2
  %i.dl = add nuw nsw i64 %i.dk, 1
  %xtraiter = and i64 %i.dl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader335, %.lr.ph.i49.prol
  %.012.i.prol = phi ptr [ %i.do, %.lr.ph.i49.prol ], [ %.012.i.ph, %.lr.ph.i49.preheader335 ] ; 2 uses
  %.0711.i.prol = phi ptr [ %i.dn, %.lr.ph.i49.prol ], [ %.0711.i.ph, %.lr.ph.i49.preheader335 ] ; 3 uses
  %.0810.i.prol = phi ptr [ %i.dm, %.lr.ph.i49.prol ], [ %.0810.i.ph, %.lr.ph.i49.preheader335 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i49.prol ], [ 0, %.lr.ph.i49.preheader335 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i.prol, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0711.i.prol, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.prol, i64 4 ; 3 uses
  %i.dp = load i32, ptr %.0711.i.prol, align 4, !tbaa !296
  store i32 %i.dp, ptr %.012.i.prol, align 4, !tbaa !296
  %i.dq = load i32, ptr %.0810.i.prol, align 4, !tbaa !296
  store i32 %i.dq, ptr %.0711.i.prol, align 4, !tbaa !296
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol, !llvm.loop !4709

.lr.ph.i49.prol.loopexit:                         ; preds = %.lr.ph.i49.prol, %.lr.ph.i49.preheader335
  %.lcssa377.unr = phi ptr [ poison, %.lr.ph.i49.preheader335 ], [ %i.do, %.lr.ph.i49.prol ]
  %.012.i.unr = phi ptr [ %.012.i.ph, %.lr.ph.i49.preheader335 ], [ %i.do, %.lr.ph.i49.prol ]
  %.0711.i.unr = phi ptr [ %.0711.i.ph, %.lr.ph.i49.preheader335 ], [ %i.dn, %.lr.ph.i49.prol ]
  %.0810.i.unr = phi ptr [ %.0810.i.ph, %.lr.ph.i49.preheader335 ], [ %i.dm, %.lr.ph.i49.prol ]
  %i.dr = icmp ult i64 %i.dj, 12
  br i1 %i.dr, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49
  %.012.i = phi ptr [ %i.ej, %.lr.ph.i49 ], [ %.012.i.unr, %.lr.ph.i49.prol.loopexit ] ; 5 uses
  %.0711.i = phi ptr [ %i.ei, %.lr.ph.i49 ], [ %.0711.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %.0810.i = phi ptr [ %i.eh, %.lr.ph.i49 ], [ %.0810.i.unr, %.lr.ph.i49.prol.loopexit ] ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.dv = load i32, ptr %.0711.i, align 4, !tbaa !296
  store i32 %i.dv, ptr %.012.i, align 4, !tbaa !296
  %i.dw = load i32, ptr %.0810.i, align 4, !tbaa !296
  store i32 %i.dw, ptr %.0711.i, align 4, !tbaa !296
  %i.dx = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.0711.i, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.ea = load i32, ptr %i.dt, align 4, !tbaa !296
  store i32 %i.ea, ptr %i.du, align 4, !tbaa !296
  %i.eb = load i32, ptr %i.ds, align 4, !tbaa !296
  store i32 %i.eb, ptr %i.dt, align 4, !tbaa !296
  %i.ec = getelementptr inbounds nuw i8, ptr %.0810.i, i64 12
  %i.ed = getelementptr inbounds nuw i8, ptr %.0711.i, i64 12 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.012.i, i64 12
  %i.ef = load i32, ptr %i.dy, align 4, !tbaa !296
  store i32 %i.ef, ptr %i.dz, align 4, !tbaa !296
  %i.eg = load i32, ptr %i.dx, align 4, !tbaa !296
  store i32 %i.eg, ptr %i.dy, align 4, !tbaa !296
  %i.eh = getelementptr inbounds nuw i8, ptr %.0810.i, i64 16 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0711.i, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i, i64 16 ; 2 uses
  %i.ek = load i32, ptr %i.ed, align 4, !tbaa !296
  store i32 %i.ek, ptr %i.ee, align 4, !tbaa !296
  %i.el = load i32, ptr %i.ec, align 4, !tbaa !296
  store i32 %i.el, ptr %i.ed, align 4, !tbaa !296
  %.not.i50.3 = icmp eq ptr %i.eh, %i.ab
  br i1 %.not.i50.3, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49, !llvm.loop !4710

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.em = mul i64 %indvar, %.idx
  %i.en = add i64 %i.h, %i.em                     ; 2 uses
  %i.eo = sub i64 %i.en, %.184268                 ; 2 uses
  %i.ep = lshr i64 %i.eo, 2
  %i.eq = add nuw nsw i64 %i.ep, 1                ; 2 uses
  %min.iters.check270 = icmp ult i64 %i.eo, 28
  %i.er = sub i64 %.184268, %i.bj
  %diff.check = icmp ugt i64 %i.er, -32
  %or.cond = or i1 %min.iters.check270, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader333, label %vector.ph272

vector.ph272:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec273 = and i64 %i.eq, 9223372036854775800  ; 3 uses
  %i.es = shl i64 %n.vec273, 2                    ; 2 uses
  %i.et = getelementptr i8, ptr %i.bi, i64 %i.es  ; 2 uses
  %i.eu = getelementptr i8, ptr %.184, i64 %i.es
  br label %vector.body274

vector.body274:                                   ; preds = %vector.body274, %vector.ph272
  %index275 = phi i64 [ 0, %vector.ph272 ], [ %index.next280, %vector.body274 ] ; 2 uses
  %i.ev = shl i64 %index275, 2                    ; 2 uses
  %next.gep276 = getelementptr i8, ptr %i.bi, i64 %i.ev ; 2 uses
  %next.gep277 = getelementptr i8, ptr %.184, i64 %i.ev ; 2 uses
  %i.ew = getelementptr i8, ptr %next.gep277, i64 16
  %wide.load278 = load <4 x i32>, ptr %next.gep277, align 4, !tbaa !296
  %wide.load279 = load <4 x i32>, ptr %i.ew, align 4, !tbaa !296
  %i.ex = getelementptr i8, ptr %next.gep276, i64 16
  store <4 x i32> %wide.load278, ptr %next.gep276, align 4, !tbaa !296
  store <4 x i32> %wide.load279, ptr %i.ex, align 4, !tbaa !296
  %index.next280 = add nuw i64 %index275, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next280, %n.vec273
  br i1 %i.ey, label %middle.block281, label %vector.body274, !llvm.loop !4711

middle.block281:                                  ; preds = %vector.body274
  %cmp.n282 = icmp eq i64 %i.eq, %n.vec273
  br i1 %cmp.n282, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i.preheader333

.lr.ph.i.i.preheader333:                          ; preds = %.lr.ph.i.i.preheader, %middle.block281
  %.010.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.preheader ], [ %i.et, %middle.block281 ] ; 2 uses
  %.079.i.i.ph = phi ptr [ %.184, %.lr.ph.i.i.preheader ], [ %i.eu, %middle.block281 ] ; 3 uses
  %.079.i.i.ph381 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.ez = sub i64 %i.en, %.079.i.i.ph381          ; 2 uses
  %i.fa = lshr i64 %i.ez, 2
  %i.fb = add nuw nsw i64 %i.fa, 1
  %xtraiter382 = and i64 %i.fb, 7                 ; 2 uses
  %lcmp.mod383.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod383.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader333, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi ptr [ %i.fe, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader333 ] ; 2 uses
  %.079.i.i.prol = phi ptr [ %i.fd, %.lr.ph.i.i.prol ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader333 ] ; 2 uses
  %prol.iter384 = phi i64 [ %prol.iter384.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader333 ]
  %i.fc = load i32, ptr %.079.i.i.prol, align 4, !tbaa !296
  store i32 %i.fc, ptr %.010.i.i.prol, align 4, !tbaa !296
  %i.fd = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 4 ; 3 uses
  %prol.iter384.next = add i64 %prol.iter384, 1   ; 2 uses
  %prol.iter384.cmp.not = icmp eq i64 %prol.iter384.next, %xtraiter382
  br i1 %prol.iter384.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4712

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader333
  %.lcssa378.unr = phi ptr [ poison, %.lr.ph.i.i.preheader333 ], [ %i.fe, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi ptr [ %.010.i.i.ph, %.lr.ph.i.i.preheader333 ], [ %i.fe, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i.i.preheader333 ], [ %i.fd, %.lr.ph.i.i.prol ]
  %i.ff = icmp ult i64 %i.ez, 28
  br i1 %i.ff, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.gd, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.079.i.i = phi ptr [ %i.gc, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.fg = load i32, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.fg, ptr %.010.i.i, align 4, !tbaa !296
  %i.fh = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.fi = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !296
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !296
  %i.fk = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !296
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !296
  %i.fn = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 12
end_hunk_12
begin_hunk_13_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPiS5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET3_T_SH_T0_T1_RT2_SK_SG_NS0_9iter_sizeISJ_E4typeESO_SO_SO_T4_bT5_:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %.028.ph.i17.i, i64 4 ; 3 uses
  %i.aw = load i32, ptr %.030.i20.i, align 4, !tbaa !296
  store i32 %i.ap, ptr %.030.i20.i, align 4, !tbaa !296
  store i32 %i.aw, ptr %.028.ph.i17.i, align 4, !tbaa !296
  %.not43.i32.i = icmp eq ptr %i.av, %4
  %.131.i33.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not43.i32.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.outer.i15.i, !llvm.loop !71

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  br i1 %10, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.o
  %.024.i.i.ph = phi ptr [ %i.ba, %bb.o ], [ %.038125, %bb.m ]
  %.021.i.i.ph = phi ptr [ %i.be, %bb.o ], [ %i.af, %bb.m ] ; 4 uses
  %.0.i.i.ph = phi ptr [ %.0.i.i, %bb.o ], [ %.083122, %bb.m ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.n
  %.024.i.i = phi ptr [ %i.ba, %bb.n ], [ %.024.i.i.ph, %.preheader.i.i.outer ] ; 4 uses
  %.0.i.i = phi ptr [ %i.bc, %bb.n ], [ %.0.i.i.ph, %.preheader.i.i.outer ] ; 5 uses
  %i.ax = load i32, ptr %.0.i.i, align 4, !tbaa !296 ; 2 uses
  %i.ay = load i32, ptr %.021.i.i.ph, align 4, !tbaa !296 ; 2 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 4 uses
  %i.bb = load i32, ptr %.024.i.i, align 4, !tbaa !296 ; 2 uses
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  store i32 %i.ax, ptr %.024.i.i, align 4, !tbaa !296
  store i32 %i.bb, ptr %.0.i.i, align 4, !tbaa !296
  %i.bd = icmp eq ptr %i.bc, %i.ab
  br i1 %i.bd, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !70

bb.o:                                             ; preds = %.preheader.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.021.i.i.ph, i64 4 ; 3 uses
  store i32 %i.ay, ptr %.024.i.i, align 4, !tbaa !296
  store i32 %i.bb, ptr %.021.i.i.ph, align 4, !tbaa !296
  %i.bf = icmp eq ptr %i.be, %4
  br i1 %i.bf, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !70

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer

.preheader.i13.i.outer:                           ; preds = %bb.p, %bb.r
  %.024.i14.i.ph = phi ptr [ %i.bi, %bb.r ], [ %.038125, %bb.p ]
  %.021.i15.i.ph = phi ptr [ %i.bm, %bb.r ], [ %i.af, %bb.p ] ; 4 uses
  %.0.i16.i.ph = phi ptr [ %.0.i16.i, %bb.r ], [ %.083122, %bb.p ]
  br label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %.preheader.i13.i.outer, %bb.q
  %.024.i14.i = phi ptr [ %i.bi, %bb.q ], [ %.024.i14.i.ph, %.preheader.i13.i.outer ] ; 4 uses
  %.0.i16.i = phi ptr [ %i.bk, %bb.q ], [ %.0.i16.i.ph, %.preheader.i13.i.outer ] ; 5 uses
  %i.bg = load i32, ptr %.021.i15.i.ph, align 4, !tbaa !296 ; 2 uses
  %i.bh = load i32, ptr %.0.i16.i, align 4, !tbaa !296 ; 2 uses
  %.not37.i.i = icmp slt i32 %i.bg, %i.bh
  %i.bi = getelementptr inbounds nuw i8, ptr %.024.i14.i, i64 4 ; 4 uses
  %i.bj = load i32, ptr %.024.i14.i, align 4, !tbaa !296 ; 2 uses
  br i1 %.not37.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i13.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 4 ; 2 uses
  store i32 %i.bh, ptr %.024.i14.i, align 4, !tbaa !296
  store i32 %i.bj, ptr %.0.i16.i, align 4, !tbaa !296
  %i.bl = icmp eq ptr %i.bk, %i.ab
  br i1 %i.bl, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i13.i, !llvm.loop !72

bb.r:                                             ; preds = %.preheader.i13.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.021.i15.i.ph, i64 4 ; 3 uses
  store i32 %i.bg, ptr %.024.i14.i, align 4, !tbaa !296
  store i32 %i.bj, ptr %.021.i15.i.ph, align 4, !tbaa !296
  %i.bn = icmp eq ptr %i.bm, %4
  br i1 %i.bn, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer, !llvm.loop !72

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split: ; preds = %bb.k, %bb.h, %bb.q, %bb.r, %bb.n, %bb.o, %.split.i24.i, %.split.i.i, %bb.p, %bb.m
  %.12938.i30.sink.i.sink = phi ptr [ %.028.ph.i.i, %.split.i.i ], [ %.028.ph.i17.i, %.split.i24.i ], [ %i.bm, %bb.r ], [ %i.be, %bb.o ], [ %i.af, %bb.p ], [ %i.af, %bb.m ], [ %i.an, %bb.h ], [ %.021.i.i.ph, %bb.n ], [ %.021.i15.i.ph, %bb.q ], [ %i.av, %bb.k ]
  %.184.ph = phi ptr [ %i.ab, %.split.i.i ], [ %i.ab, %.split.i24.i ], [ %.0.i16.i, %bb.r ], [ %.0.i.i, %bb.o ], [ %.083122, %bb.p ], [ %.083122, %bb.m ], [ %.026.i.i, %bb.h ], [ %i.ab, %bb.n ], [ %i.ab, %bb.q ], [ %.026.i21.i, %bb.k ]
  %.080.ph = phi ptr [ %i.ak, %.split.i.i ], [ %i.as, %.split.i24.i ], [ %i.ad, %bb.q ], [ %i.ad, %bb.n ], [ %i.ad, %bb.p ], [ %i.ad, %bb.m ], [ %.025.i.i, %bb.h ], [ %i.ad, %bb.o ], [ %i.ad, %bb.r ], [ %.025.i22.i, %bb.k ]
  %.ph = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.13137.i25.i, %.split.i24.i ], [ %i.bi, %bb.q ], [ %i.ba, %bb.n ], [ %.038125, %bb.p ], [ %.038125, %bb.m ], [ %.131.i.i, %bb.h ], [ %i.ba, %bb.o ], [ %i.bi, %bb.r ], [ %.131.i33.i, %bb.k ]
  store ptr %.12938.i30.sink.i.sink, ptr %3, align 8, !tbaa !299
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.184 = phi ptr [ %.083122, %bb.i ], [ %.083122, %bb.f ], [ %.184.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split ] ; 23 uses
  %.080 = phi ptr [ %i.ad, %bb.i ], [ %i.ad, %bb.f ], [ %.080.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split ] ; 16 uses
  %i.bo = phi ptr [ %.038125, %bb.i ], [ %.038125, %bb.f ], [ %.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit.sink.split ] ; 16 uses
  %.184274 = ptrtoaddr ptr %.184 to i64           ; 4 uses
  %.080260 = ptrtoaddr ptr %.080 to i64           ; 2 uses
  %i.bp = icmp eq ptr %.184, %i.bo
  br i1 %i.bp, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit
  br i1 %.not43, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not8.i = icmp eq ptr %.080, %i.ae
  br i1 %.not8.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %bb.t
  %i.bq = mul i64 %indvar, %.idx                  ; 2 uses
  %i.br = add i64 %i.i, %i.bq
  %i.bs = shl i64 %.022.lcssa.i, 2
  %i.bt = add i64 %i.bs, 4
  %i.bu = mul i64 %6, %i.bt
  %i.bv = add i64 %i.br, %i.bu
  %i.bw = sub i64 %i.bv, %.080260                 ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 44
  br i1 %min.iters.check, label %.lr.ph.i48.preheader345, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48.preheader
  %i.bz = add i64 %i.b, %i.bq
  %i.ca = shl i64 %.022.lcssa.i, 2
  %i.cb = add i64 %i.ca, 4
  %i.cc = mul i64 %6, %i.cb
  %i.cd = add i64 %i.bz, %i.cc
  %i.ce = sub i64 %i.cd, %.080260
  %i.cf = and i64 %i.ce, -4
  %i.cg = add i64 %i.cf, 4                        ; 2 uses
  %i.ch = getelementptr i8, ptr %.080, i64 %i.cg
  %i.ci = getelementptr i8, ptr %.184, i64 %i.cg
  %bound0 = icmp ult ptr %.080, %i.ci
  %bound1 = icmp ult ptr %.184, %i.ch
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i48.preheader345, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.by, 9223372036854775800     ; 3 uses
  %i.cj = shl i64 %n.vec, 2                       ; 2 uses
  %i.ck = getelementptr i8, ptr %.184, i64 %i.cj  ; 2 uses
  %i.cl = getelementptr i8, ptr %.080, i64 %i.cj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.184, i64 %i.cm ; 3 uses
  %next.gep261 = getelementptr i8, ptr %.080, i64 %i.cm ; 3 uses
  %i.cn = getelementptr i8, ptr %next.gep261, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep261, align 4, !tbaa !296, !alias.scope !4740, !noalias !4741
  %wide.load262 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !296, !alias.scope !4740, !noalias !4741
  %i.co = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load263 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !296, !alias.scope !4741
  %wide.load264 = load <4 x i32>, ptr %i.co, align 4, !tbaa !296, !alias.scope !4741
  store <4 x i32> %wide.load263, ptr %next.gep261, align 4, !tbaa !296, !alias.scope !4740, !noalias !4741
  store <4 x i32> %wide.load264, ptr %i.cn, align 4, !tbaa !296, !alias.scope !4740, !noalias !4741
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296, !alias.scope !4741
  store <4 x i32> %wide.load262, ptr %i.co, align 4, !tbaa !296, !alias.scope !4741
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !4724

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i48.preheader345

.lr.ph.i48.preheader345:                          ; preds = %vector.memcheck, %.lr.ph.i48.preheader, %middle.block
  %.010.i.ph = phi ptr [ %.184, %vector.memcheck ], [ %.184, %.lr.ph.i48.preheader ], [ %i.ck, %middle.block ]
  %.079.i.ph = phi ptr [ %.080, %vector.memcheck ], [ %.080, %.lr.ph.i48.preheader ], [ %i.cl, %middle.block ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader345, %.lr.ph.i48
  %.010.i = phi ptr [ %i.ct, %.lr.ph.i48 ], [ %.010.i.ph, %.lr.ph.i48.preheader345 ] ; 3 uses
  %.079.i = phi ptr [ %i.cs, %.lr.ph.i48 ], [ %.079.i.ph, %.lr.ph.i48.preheader345 ] ; 3 uses
  %i.cq = load i32, ptr %.079.i, align 4, !tbaa !296
  %i.cr = load i32, ptr %.010.i, align 4, !tbaa !296
  store i32 %i.cr, ptr %.079.i, align 4, !tbaa !296
  store i32 %i.cq, ptr %.010.i, align 4, !tbaa !296
  %i.cs = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.cs, %i.ae
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i48, !llvm.loop !4725

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEET1_RT_SF_RT0_SH_SI_SE_T2_T3_b.exit
  %.not8.i.i = icmp eq ptr %.184, %i.ab           ; 2 uses
  br i1 %.not43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %bb.v
  %i.cu = mul i64 %indvar, %.idx                  ; 2 uses
  %i.cv = add i64 %i.f, %i.cu                     ; 2 uses
  %i.cw = sub i64 %i.cv, %.184274                 ; 2 uses
  %i.cx = lshr i64 %i.cw, 2
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %min.iters.check313 = icmp ult i64 %i.cw, 44
  br i1 %min.iters.check313, label %.lr.ph.i49.preheader348, label %vector.memcheck314

vector.memcheck314:                               ; preds = %.lr.ph.i49.preheader
  %i.cz = add i64 %i.d, %i.cu
  %i.da = sub i64 %i.cz, %.184274
  %i.db = and i64 %i.da, -4
  %i.dc = add i64 %i.db, 4                        ; 3 uses
  %i.dd = getelementptr i8, ptr %i.bo, i64 %i.dc  ; 2 uses
  %i.de = getelementptr i8, ptr %.080, i64 %i.dc  ; 2 uses
  %11 = getelementptr i8, ptr %.184, i64 %i.dc    ; 2 uses
  %bound0315.a = icmp ult ptr %i.bo, %i.de
  %bound1316 = icmp ult ptr %.080, %i.dd
  %found.conflict317 = and i1 %bound0315.a, %bound1316
  %bound0318 = icmp ult ptr %i.bo, %11
  %bound1319 = icmp ult ptr %.184, %i.dd
  %found.conflict320 = and i1 %bound0318, %bound1319
  %conflict.rdx = or i1 %found.conflict317, %found.conflict320
  %bound0321 = icmp ult ptr %.080, %11
  %bound1322 = icmp ult ptr %.184, %i.de
  %found.conflict323 = and i1 %bound0321, %bound1322
  %conflict.rdx324 = or i1 %conflict.rdx, %found.conflict323
  br i1 %conflict.rdx324, label %.lr.ph.i49.preheader348, label %vector.ph325

vector.ph325:                                     ; preds = %vector.memcheck314
  %n.vec326 = and i64 %i.cy, 9223372036854775800  ; 3 uses
  %i.df = shl i64 %n.vec326, 2                    ; 3 uses
  %i.dg = getelementptr i8, ptr %i.bo, i64 %i.df  ; 2 uses
  %i.dh = getelementptr i8, ptr %.080, i64 %i.df
  %i.di = getelementptr i8, ptr %.184, i64 %i.df
  br label %vector.body327

vector.body327:                                   ; preds = %vector.body327, %vector.ph325
  %index328 = phi i64 [ 0, %vector.ph325 ], [ %index.next338, %vector.body327 ] ; 2 uses
  %i.dj = shl i64 %index328, 2                    ; 3 uses
  %next.gep329 = getelementptr i8, ptr %i.bo, i64 %i.dj ; 3 uses
  %next.gep330 = getelementptr i8, ptr %.080, i64 %i.dj ; 3 uses
  %next.gep331 = getelementptr i8, ptr %.184, i64 %i.dj ; 3 uses
  %i.dk = getelementptr i8, ptr %next.gep329, i64 16 ; 2 uses
  %wide.load332 = load <4 x i32>, ptr %next.gep329, align 4, !tbaa !296, !alias.scope !4742, !noalias !4743
  %wide.load333 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !296, !alias.scope !4742, !noalias !4743
  %i.dl = getelementptr i8, ptr %next.gep330, i64 16 ; 2 uses
  %wide.load334 = load <4 x i32>, ptr %next.gep330, align 4, !tbaa !296, !alias.scope !4744, !noalias !4745
  %wide.load335 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !296, !alias.scope !4744, !noalias !4745
  store <4 x i32> %wide.load334, ptr %next.gep329, align 4, !tbaa !296, !alias.scope !4742, !noalias !4743
  store <4 x i32> %wide.load335, ptr %i.dk, align 4, !tbaa !296, !alias.scope !4742, !noalias !4743
  %i.dm = getelementptr i8, ptr %next.gep331, i64 16 ; 2 uses
  %wide.load336 = load <4 x i32>, ptr %next.gep331, align 4, !tbaa !296, !alias.scope !4745
  %wide.load337 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !296, !alias.scope !4745
  store <4 x i32> %wide.load336, ptr %next.gep330, align 4, !tbaa !296, !alias.scope !4744, !noalias !4745
  store <4 x i32> %wide.load337, ptr %i.dl, align 4, !tbaa !296, !alias.scope !4744, !noalias !4745
  store <4 x i32> %wide.load332, ptr %next.gep331, align 4, !tbaa !296, !alias.scope !4745
  store <4 x i32> %wide.load333, ptr %i.dm, align 4, !tbaa !296, !alias.scope !4745
  %index.next338 = add nuw i64 %index328, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next338, %n.vec326
  br i1 %i.dn, label %middle.block339, label %vector.body327, !llvm.loop !4730

middle.block339:                                  ; preds = %vector.body327
  %cmp.n340 = icmp eq i64 %i.cy, %n.vec326
  br i1 %cmp.n340, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49.preheader348

.lr.ph.i49.preheader348:                          ; preds = %vector.memcheck314, %.lr.ph.i49.preheader, %middle.block339
  %.012.i.ph = phi ptr [ %i.bo, %vector.memcheck314 ], [ %i.bo, %.lr.ph.i49.preheader ], [ %i.dg, %middle.block339 ] ; 2 uses
  %.0711.i.ph = phi ptr [ %.080, %vector.memcheck314 ], [ %.080, %.lr.ph.i49.preheader ], [ %i.dh, %middle.block339 ] ; 2 uses
  %.0810.i.ph = phi ptr [ %.184, %vector.memcheck314 ], [ %.184, %.lr.ph.i49.preheader ], [ %i.di, %middle.block339 ] ; 3 uses
  %.0810.i.ph397 = ptrtoaddr ptr %.0810.i.ph to i64
  %i.do = sub i64 %i.cv, %.0810.i.ph397           ; 2 uses
  %i.dp = lshr i64 %i.do, 2
  %i.dq = add nuw nsw i64 %i.dp, 1
  %xtraiter = and i64 %i.dq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader348, %.lr.ph.i49.prol
  %.012.i.prol = phi ptr [ %i.dt, %.lr.ph.i49.prol ], [ %.012.i.ph, %.lr.ph.i49.preheader348 ] ; 3 uses
  %.0711.i.prol = phi ptr [ %i.ds, %.lr.ph.i49.prol ], [ %.0711.i.ph, %.lr.ph.i49.preheader348 ] ; 3 uses
  %.0810.i.prol = phi ptr [ %i.dr, %.lr.ph.i49.prol ], [ %.0810.i.ph, %.lr.ph.i49.preheader348 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i49.prol ], [ 0, %.lr.ph.i49.preheader348 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0810.i.prol, i64 4 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0711.i.prol, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.prol, i64 4 ; 3 uses
  %i.du = load i32, ptr %.012.i.prol, align 4, !tbaa !296
  %i.dv = load i32, ptr %.0711.i.prol, align 4, !tbaa !296
  store i32 %i.dv, ptr %.012.i.prol, align 4, !tbaa !296
  %i.dw = load i32, ptr %.0810.i.prol, align 4, !tbaa !296
  store i32 %i.dw, ptr %.0711.i.prol, align 4, !tbaa !296
  store i32 %i.du, ptr %.0810.i.prol, align 4, !tbaa !296
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol, !llvm.loop !4731

.lr.ph.i49.prol.loopexit:                         ; preds = %.lr.ph.i49.prol, %.lr.ph.i49.preheader348
  %.lcssa394.unr = phi ptr [ poison, %.lr.ph.i49.preheader348 ], [ %i.dt, %.lr.ph.i49.prol ]
  %.012.i.unr = phi ptr [ %.012.i.ph, %.lr.ph.i49.preheader348 ], [ %i.dt, %.lr.ph.i49.prol ]
  %.0711.i.unr = phi ptr [ %.0711.i.ph, %.lr.ph.i49.preheader348 ], [ %i.ds, %.lr.ph.i49.prol ]
  %.0810.i.unr = phi ptr [ %.0810.i.ph, %.lr.ph.i49.preheader348 ], [ %i.dr, %.lr.ph.i49.prol ]
  %i.dx = icmp ult i64 %i.do, 12
  br i1 %i.dx, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49
  %.012.i = phi ptr [ %i.es, %.lr.ph.i49 ], [ %.012.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %.0711.i = phi ptr [ %i.er, %.lr.ph.i49 ], [ %.0711.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %.0810.i = phi ptr [ %i.eq, %.lr.ph.i49 ], [ %.0810.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i, i64 4 ; 2 uses
  %i.eb = load i32, ptr %.012.i, align 4, !tbaa !296
  %i.ec = load i32, ptr %.0711.i, align 4, !tbaa !296
  store i32 %i.ec, ptr %.012.i, align 4, !tbaa !296
  %i.ed = load i32, ptr %.0810.i, align 4, !tbaa !296
  store i32 %i.ed, ptr %.0711.i, align 4, !tbaa !296
  store i32 %i.eb, ptr %.0810.i, align 4, !tbaa !296
  %i.ee = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0711.i, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %i.eh = load i32, ptr %i.ea, align 4, !tbaa !296
  %i.ei = load i32, ptr %i.dz, align 4, !tbaa !296
  store i32 %i.ei, ptr %i.ea, align 4, !tbaa !296
  %i.ej = load i32, ptr %i.dy, align 4, !tbaa !296
  store i32 %i.ej, ptr %i.dz, align 4, !tbaa !296
  store i32 %i.eh, ptr %i.dy, align 4, !tbaa !296
  %i.ek = getelementptr inbounds nuw i8, ptr %.0810.i, i64 12 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0711.i, i64 12 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.012.i, i64 12 ; 2 uses
  %i.en = load i32, ptr %i.eg, align 4, !tbaa !296
  %i.eo = load i32, ptr %i.ef, align 4, !tbaa !296
  store i32 %i.eo, ptr %i.eg, align 4, !tbaa !296
  %i.ep = load i32, ptr %i.ee, align 4, !tbaa !296
  store i32 %i.ep, ptr %i.ef, align 4, !tbaa !296
  store i32 %i.en, ptr %i.ee, align 4, !tbaa !296
  %i.eq = getelementptr inbounds nuw i8, ptr %.0810.i, i64 16 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0711.i, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %.012.i, i64 16 ; 2 uses
  %i.et = load i32, ptr %i.em, align 4, !tbaa !296
  %i.eu = load i32, ptr %i.el, align 4, !tbaa !296
  store i32 %i.eu, ptr %i.em, align 4, !tbaa !296
  %i.ev = load i32, ptr %i.ek, align 4, !tbaa !296
  store i32 %i.ev, ptr %i.el, align 4, !tbaa !296
  store i32 %i.et, ptr %i.ek, align 4, !tbaa !296
  %.not.i50.3 = icmp eq ptr %i.eq, %i.ab
  br i1 %.not.i50.3, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i49, !llvm.loop !4732

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.ew = mul i64 %indvar, %.idx                  ; 2 uses
  %i.ex = add i64 %i.h, %i.ew                     ; 2 uses
  %i.ey = sub i64 %i.ex, %.184274                 ; 2 uses
  %i.ez = lshr i64 %i.ey, 2
  %i.fa = add nuw nsw i64 %i.ez, 1                ; 2 uses
  %min.iters.check276 = icmp ult i64 %i.ey, 28
  br i1 %min.iters.check276, label %.lr.ph.i.i.preheader346, label %vector.memcheck277

vector.memcheck277:                               ; preds = %.lr.ph.i.i.preheader
  %i.fb = add i64 %i.d, %i.ew
  %i.fc = sub i64 %i.fb, %.184274
  %i.fd = and i64 %i.fc, -4
  %i.fe = add i64 %i.fd, 4                        ; 2 uses
  %i.ff = getelementptr i8, ptr %.184, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.bo, i64 %i.fe
  %bound0278 = icmp ult ptr %.184, %i.fg
  %bound1279 = icmp ult ptr %i.bo, %i.ff
  %found.conflict280 = and i1 %bound0278, %bound1279
  br i1 %found.conflict280, label %.lr.ph.i.i.preheader346, label %vector.ph281

vector.ph281:                                     ; preds = %vector.memcheck277
  %n.vec282 = and i64 %i.fa, 9223372036854775800  ; 3 uses
  %i.fh = shl i64 %n.vec282, 2                    ; 2 uses
  %i.fi = getelementptr i8, ptr %i.bo, i64 %i.fh  ; 2 uses
  %i.fj = getelementptr i8, ptr %.184, i64 %i.fh
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph281
  %index284 = phi i64 [ 0, %vector.ph281 ], [ %index.next291, %vector.body283 ] ; 2 uses
  %i.fk = shl i64 %index284, 2                    ; 2 uses
  %next.gep285 = getelementptr i8, ptr %i.bo, i64 %i.fk ; 3 uses
  %next.gep286 = getelementptr i8, ptr %.184, i64 %i.fk ; 3 uses
  %i.fl = getelementptr i8, ptr %next.gep286, i64 16 ; 2 uses
  %wide.load287 = load <4 x i32>, ptr %next.gep286, align 4, !tbaa !296, !alias.scope !4746, !noalias !4747
  %wide.load288 = load <4 x i32>, ptr %i.fl, align 4, !tbaa !296, !alias.scope !4746, !noalias !4747
  %i.fm = getelementptr i8, ptr %next.gep285, i64 16 ; 2 uses
  %wide.load289 = load <4 x i32>, ptr %next.gep285, align 4, !tbaa !296, !alias.scope !4747
  %wide.load290 = load <4 x i32>, ptr %i.fm, align 4, !tbaa !296, !alias.scope !4747
  store <4 x i32> %wide.load289, ptr %next.gep286, align 4, !tbaa !296, !alias.scope !4746, !noalias !4747
  store <4 x i32> %wide.load290, ptr %i.fl, align 4, !tbaa !296, !alias.scope !4746, !noalias !4747
  store <4 x i32> %wide.load287, ptr %next.gep285, align 4, !tbaa !296, !alias.scope !4747
  store <4 x i32> %wide.load288, ptr %i.fm, align 4, !tbaa !296, !alias.scope !4747
  %index.next291 = add nuw i64 %index284, 8       ; 2 uses
  %i.fn = icmp eq i64 %index.next291, %n.vec282
  br i1 %i.fn, label %middle.block292, label %vector.body283, !llvm.loop !4736

middle.block292:                                  ; preds = %vector.body283
  %cmp.n293 = icmp eq i64 %i.fa, %n.vec282
  br i1 %cmp.n293, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.i.preheader346

.lr.ph.i.i.preheader346:                          ; preds = %vector.memcheck277, %.lr.ph.i.i.preheader, %middle.block292
  %.010.i.i.ph = phi ptr [ %i.bo, %vector.memcheck277 ], [ %i.bo, %.lr.ph.i.i.preheader ], [ %i.fi, %middle.block292 ] ; 2 uses
  %.079.i.i.ph = phi ptr [ %.184, %vector.memcheck277 ], [ %.184, %.lr.ph.i.i.preheader ], [ %i.fj, %middle.block292 ] ; 3 uses
  %.079.i.i.ph398 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.fo = sub i64 %i.ex, %.079.i.i.ph398          ; 2 uses
  %i.fp = lshr i64 %i.fo, 2
  %i.fq = add nuw nsw i64 %i.fp, 1
  %xtraiter399 = and i64 %i.fq, 3                 ; 2 uses
  %lcmp.mod400.not = icmp eq i64 %xtraiter399, 0
  br i1 %lcmp.mod400.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader346, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi ptr [ %i.fu, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader346 ] ; 3 uses
  %.079.i.i.prol = phi ptr [ %i.ft, %.lr.ph.i.i.prol ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader346 ] ; 3 uses
  %prol.iter401 = phi i64 [ %prol.iter401.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader346 ]
  %i.fr = load i32, ptr %.079.i.i.prol, align 4, !tbaa !296
  %i.fs = load i32, ptr %.010.i.i.prol, align 4, !tbaa !296
  store i32 %i.fs, ptr %.079.i.i.prol, align 4, !tbaa !296
end_hunk_13
begin_hunk_14_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_:bb.a

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SM_SO_SO_SO_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bs, %bb.n ], [ %i.aq, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bu, %bb.n ], [ %i.m, %bb.m ] ; 3 uses
  %.sroa.012.0.i.i.ph = phi ptr [ %.sroa.012.0.i.i, %bb.n ], [ %i.ar, %bb.m ]
  %i.bn = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bs, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.012.0.i.i = phi ptr [ %i.bo, %bb.o ], [ %.sroa.012.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.012.0.i.i, i64 -4 ; 5 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !296, !noalias !4957 ; 2 uses
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !296, !noalias !4957 ; 2 uses
  %i.br = icmp slt i32 %i.bp, %i.bq
  %i.bs = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 7 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !296, !noalias !4957 ; 2 uses
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bu = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -4 ; 3 uses
  store i32 %i.bq, ptr %i.bs, align 4, !tbaa !296, !noalias !4957
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !296, !noalias !4957
  %i.bv = icmp eq ptr %i.bu, %i.ak
  br i1 %i.bv, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !67

bb.o:                                             ; preds = %.preheader.i.i
  store i32 %i.bp, ptr %i.bs, align 4, !tbaa !296, !noalias !4957
  store i32 %i.bt, ptr %i.bo, align 4, !tbaa !296, !noalias !4957
  %i.bw = icmp eq ptr %i.bo, %i.ap
  br i1 %i.bw, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !67

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.cb, %bb.q ], [ %i.aq, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.cd, %bb.q ], [ %i.m, %bb.p ] ; 3 uses
  %.sroa.012.0.i8.i.ph = phi ptr [ %.sroa.012.0.i8.i, %bb.q ], [ %i.ar, %bb.p ]
  %i.bx = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.cb, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.012.0.i8.i = phi ptr [ %i.by, %bb.r ], [ %.sroa.012.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 5 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !296, !noalias !4958 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !296, !noalias !4958 ; 2 uses
  %.not18.i.i = icmp slt i32 %i.bz, %i.ca
  %i.cb = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 7 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !296, !noalias !4958 ; 2 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.cd = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 3 uses
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !296, !noalias !4958
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !296, !noalias !4958
  %i.ce = icmp eq ptr %i.cd, %i.ak
  br i1 %i.ce, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !68

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !296, !noalias !4958
  store i32 %i.cc, ptr %i.by, align 4, !tbaa !296, !noalias !4958
  %i.cf = icmp eq ptr %i.by, %i.ap
  br i1 %i.cf, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !68

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.at, %bb.h ], [ %i.be, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.ar, %bb.p ], [ %i.ar, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bo, %bb.o ], [ %i.by, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.ak, %bb.q ], [ %i.ak, %bb.n ], [ %i.m, %bb.p ], [ %i.m, %bb.m ], [ %i.ak, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ak, %.split.i14.i ]
  %.sroa.064.0.ph = phi ptr [ %i.bb, %bb.h ], [ %i.bl, %bb.k ], [ %i.cb, %bb.r ], [ %i.bs, %bb.o ], [ %i.aq, %bb.p ], [ %i.aq, %bb.m ], [ %i.ay, %.split.i.i ], [ %i.bs, %bb.n ], [ %i.cb, %bb.q ], [ %i.bi, %.split.i14.i ]
  %.sroa.069.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.an, %bb.r ], [ %i.an, %bb.o ], [ %i.an, %bb.p ], [ %i.an, %bb.m ], [ %i.as, %.split.i.i ], [ %i.an, %bb.n ], [ %i.an, %bb.q ], [ %i.bd, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !441, !noalias !398
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !441, !noalias !398
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.064.0 = phi ptr [ %i.aq, %bb.f ], [ %i.aq, %bb.i ], [ %.sroa.064.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 17 uses
  %.sroa.069.0 = phi ptr [ %i.an, %bb.f ], [ %i.an, %bb.i ], [ %.sroa.069.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit.sink.split ] ; 16 uses
  %.sroa.069.0313 = ptrtoaddr ptr %.sroa.069.0 to i64 ; 2 uses
  store ptr %.sroa.064.0, ptr %6, align 8, !tbaa !441
  %i.cg = load ptr, ptr %3, align 8, !tbaa !441   ; 23 uses
  %i.ch = ptrtoaddr ptr %i.cg to i64              ; 4 uses
  %i.ci = icmp eq ptr %i.cg, %.sroa.064.0
  br i1 %i.ci, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.069.0, %i.ao
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %bb.t
  %i.cj = mul i64 %indvar, %i.k
  %.reass = add i64 %i.cj, %invariant.op
  %i.ck = shl i64 %.018.lcssa.i, 2
  %.neg397 = add i64 %i.ck, 4
  %.neg398 = mul i64 %.neg397, %7
  %i.cl = add i64 %.reass, %.sroa.069.0313
  %i.cm = add i64 %.neg398, %i.cl                 ; 2 uses
  %i.cn = lshr i64 %i.cm, 2
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cm, 44
  br i1 %min.iters.check, label %.lr.ph.i28.preheader404, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %i.cp = mul i64 %indvar, %i.b
  %i.cq = shl i64 %.018.lcssa.i, 2
  %.neg400 = add i64 %i.cq, 4
  %.neg401 = mul i64 %.neg400, %7
  %i.cr = add i64 %i.cp, %.sroa.069.0313
  %i.cs = add i64 %i.cr, %.neg401
  %.not402 = sub i64 %i.l, %i.cs
  %i.ct = and i64 %.not402, -4                    ; 2 uses
  %i.cu = getelementptr i8, ptr %.sroa.069.0, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cg, i64 %i.ct
  %bound0 = icmp ult ptr %i.cu, %i.cg
  %bound1 = icmp ult ptr %i.cv, %.sroa.069.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader404, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.co, 9223372036854775800     ; 3 uses
  %i.cw = mul i64 %n.vec, -4                      ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cg, i64 %i.cw  ; 2 uses
  %i.cy = getelementptr i8, ptr %.sroa.069.0, i64 %i.cw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.cz ; 2 uses
  %next.gep314 = getelementptr i8, ptr %.sroa.069.0, i64 %i.cz ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %next.gep314, i64 -16 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %next.gep314, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.da, align 4, !tbaa !296, !alias.scope !4959, !noalias !4960
  %wide.load315 = load <4 x i32>, ptr %i.db, align 4, !tbaa !296, !alias.scope !4959, !noalias !4960
  %i.dc = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load316 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !296, !alias.scope !4961, !noalias !4962
  %wide.load317 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !296, !alias.scope !4961, !noalias !4962
  store <4 x i32> %wide.load316, ptr %i.da, align 4, !tbaa !296, !alias.scope !4959, !noalias !4960
  store <4 x i32> %wide.load317, ptr %i.db, align 4, !tbaa !296, !alias.scope !4959, !noalias !4960
  store <4 x i32> %wide.load, ptr %i.dc, align 4, !tbaa !296, !alias.scope !4961, !noalias !4962
  store <4 x i32> %wide.load315, ptr %i.dd, align 4, !tbaa !296, !alias.scope !4961, !noalias !4962
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !4935

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28.preheader404

.lr.ph.i28.preheader404:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.052.0.ph = phi ptr [ %i.cg, %vector.memcheck ], [ %i.cg, %.lr.ph.i28.preheader ], [ %i.cx, %middle.block ]
  %.ph = phi ptr [ %.sroa.069.0, %vector.memcheck ], [ %.sroa.069.0, %.lr.ph.i28.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader404, %.lr.ph.i28
  %.sroa.052.0 = phi ptr [ %i.dh, %.lr.ph.i28 ], [ %.sroa.052.0.ph, %.lr.ph.i28.preheader404 ]
  %i.df = phi ptr [ %i.dg, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader404 ]
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4 ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -4 ; 4 uses
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !296, !noalias !4962
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !296, !noalias !4962
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !296, !noalias !4962
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !296, !noalias !4962
  %.not.i = icmp eq ptr %i.dg, %i.ao
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i28, !llvm.loop !4936

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.cg, %i.ak           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %i.dk = mul i64 %indvar, %i.e
  %i.dl = add i64 %i.g, %i.dk
  %i.dm = add i64 %i.dl, %i.ch                    ; 2 uses
  %i.dn = lshr i64 %i.dm, 2
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check364 = icmp ult i64 %i.dm, 44
  br i1 %min.iters.check364, label %.lr.ph.i29.preheader408, label %vector.memcheck365

vector.memcheck365:                               ; preds = %.lr.ph.i29.preheader
  %i.dp = mul i64 %indvar, %i.b
  %i.dq = add i64 %i.d, %i.dp
  %i.dr = add i64 %i.dq, %i.ch
  %.not395 = and i64 %i.dr, -4
  %i.ds = xor i64 %.not395, -4                    ; 3 uses
  %i.dt = getelementptr i8, ptr %.sroa.064.0, i64 %i.ds ; 2 uses
  %i.du = getelementptr i8, ptr %.sroa.069.0, i64 %i.ds ; 2 uses
  %12 = getelementptr i8, ptr %i.cg, i64 %i.ds    ; 2 uses
  %bound0366.a = icmp ult ptr %i.dt, %.sroa.069.0
  %bound1367 = icmp ult ptr %i.du, %.sroa.064.0
  %found.conflict368 = and i1 %bound0366.a, %bound1367
  %bound0369 = icmp ult ptr %i.dt, %i.cg
  %bound1370 = icmp ult ptr %12, %.sroa.064.0
  %found.conflict371 = and i1 %bound0369, %bound1370
  %conflict.rdx = or i1 %found.conflict368, %found.conflict371
  %bound0372 = icmp ult ptr %i.du, %i.cg
  %bound1373 = icmp ult ptr %12, %.sroa.069.0
  %found.conflict374 = and i1 %bound0372, %bound1373
  %conflict.rdx375 = or i1 %conflict.rdx, %found.conflict374
  br i1 %conflict.rdx375, label %.lr.ph.i29.preheader408, label %vector.ph376

vector.ph376:                                     ; preds = %vector.memcheck365
  %n.vec377 = and i64 %i.do, 9223372036854775800  ; 3 uses
  %i.dv = mul i64 %n.vec377, -4                   ; 3 uses
  %i.dw = getelementptr i8, ptr %.sroa.069.0, i64 %i.dv
  %i.dx = getelementptr i8, ptr %.sroa.064.0, i64 %i.dv ; 2 uses
  %i.dy = getelementptr i8, ptr %i.cg, i64 %i.dv
  br label %vector.body378

vector.body378:                                   ; preds = %vector.body378, %vector.ph376
  %index379 = phi i64 [ 0, %vector.ph376 ], [ %index.next389, %vector.body378 ] ; 2 uses
  %i.dz = mul i64 %index379, -4                   ; 3 uses
  %next.gep380 = getelementptr i8, ptr %.sroa.069.0, i64 %i.dz ; 2 uses
  %next.gep381 = getelementptr i8, ptr %.sroa.064.0, i64 %i.dz ; 2 uses
  %next.gep382 = getelementptr i8, ptr %i.cg, i64 %i.dz ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %next.gep381, i64 -16 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %next.gep381, i64 -32 ; 2 uses
  %wide.load383 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !296, !alias.scope !4963, !noalias !4964
  %wide.load384 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !296, !alias.scope !4963, !noalias !4964
  %i.ec = getelementptr inbounds i8, ptr %next.gep380, i64 -16 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %next.gep380, i64 -32 ; 2 uses
  %wide.load385 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !296, !alias.scope !4965, !noalias !4966
  %wide.load386 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !296, !alias.scope !4965, !noalias !4966
  store <4 x i32> %wide.load385, ptr %i.ea, align 4, !tbaa !296, !alias.scope !4963, !noalias !4964
  store <4 x i32> %wide.load386, ptr %i.eb, align 4, !tbaa !296, !alias.scope !4963, !noalias !4964
  %i.ee = getelementptr inbounds i8, ptr %next.gep382, i64 -16 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %next.gep382, i64 -32 ; 2 uses
  %wide.load387 = load <4 x i32>, ptr %i.ee, align 4, !tbaa !296, !alias.scope !4967, !noalias !4968
  %wide.load388 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !296, !alias.scope !4967, !noalias !4968
  store <4 x i32> %wide.load387, ptr %i.ec, align 4, !tbaa !296, !alias.scope !4965, !noalias !4966
  store <4 x i32> %wide.load388, ptr %i.ed, align 4, !tbaa !296, !alias.scope !4965, !noalias !4966
  store <4 x i32> %wide.load383, ptr %i.ee, align 4, !tbaa !296, !alias.scope !4967, !noalias !4968
  store <4 x i32> %wide.load384, ptr %i.ef, align 4, !tbaa !296, !alias.scope !4967, !noalias !4968
  %index.next389 = add nuw i64 %index379, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next389, %n.vec377
  br i1 %i.eg, label %middle.block390, label %vector.body378, !llvm.loop !4943

middle.block390:                                  ; preds = %vector.body378
  %cmp.n391 = icmp eq i64 %i.do, %n.vec377
  br i1 %cmp.n391, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29.preheader408

.lr.ph.i29.preheader408:                          ; preds = %vector.memcheck365, %.lr.ph.i29.preheader, %middle.block390
  %.sroa.046.0.ph = phi ptr [ %.sroa.069.0, %vector.memcheck365 ], [ %.sroa.069.0, %.lr.ph.i29.preheader ], [ %i.dw, %middle.block390 ]
  %.sroa.045.0.ph = phi ptr [ %.sroa.064.0, %vector.memcheck365 ], [ %.sroa.064.0, %.lr.ph.i29.preheader ], [ %i.dx, %middle.block390 ]
  %.ph409 = phi ptr [ %i.cg, %vector.memcheck365 ], [ %i.cg, %.lr.ph.i29.preheader ], [ %i.dy, %middle.block390 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader408, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.ej, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader408 ]
  %.sroa.045.0 = phi ptr [ %i.ek, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader408 ]
  %i.eh = phi ptr [ %i.ei, %.lr.ph.i29 ], [ %.ph409, %.lr.ph.i29.preheader408 ]
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -4 ; 4 uses
  %i.ej = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 3 uses
  %i.ek = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 4 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !296, !noalias !4968
  %i.em = load i32, ptr %i.ej, align 4, !tbaa !296, !noalias !4968
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !296, !noalias !4968
  %i.en = load i32, ptr %i.ei, align 4, !tbaa !296, !noalias !4968
  store i32 %i.en, ptr %i.ej, align 4, !tbaa !296, !noalias !4968
  store i32 %i.el, ptr %i.ei, align 4, !tbaa !296, !noalias !4968
  %.not.i30 = icmp eq ptr %i.ei, %i.ak
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29, !llvm.loop !4944

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.eo = mul i64 %indvar, %i.h
  %i.ep = add i64 %i.j, %i.eo
  %i.eq = add i64 %i.ep, %i.ch                    ; 2 uses
  %i.er = lshr i64 %i.eq, 2
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %min.iters.check327 = icmp ult i64 %i.eq, 28
  br i1 %min.iters.check327, label %.lr.ph.i.i.preheader405, label %vector.memcheck328

vector.memcheck328:                               ; preds = %.lr.ph.i.i.preheader
  %i.et = mul i64 %indvar, %i.b
  %i.eu = add i64 %i.d, %i.et
  %i.ev = add i64 %i.eu, %i.ch
  %.not396 = and i64 %i.ev, -4
  %i.ew = xor i64 %.not396, -4                    ; 2 uses
  %i.ex = getelementptr i8, ptr %i.cg, i64 %i.ew
  %i.ey = getelementptr i8, ptr %.sroa.064.0, i64 %i.ew
  %bound0329 = icmp ult ptr %i.ex, %.sroa.064.0
  %bound1330 = icmp ult ptr %i.ey, %i.cg
  %found.conflict331 = and i1 %bound0329, %bound1330
  br i1 %found.conflict331, label %.lr.ph.i.i.preheader405, label %vector.ph332

vector.ph332:                                     ; preds = %vector.memcheck328
  %n.vec333 = and i64 %i.es, 9223372036854775800  ; 3 uses
  %i.ez = mul i64 %n.vec333, -4                   ; 2 uses
  %i.fa = getelementptr i8, ptr %.sroa.064.0, i64 %i.ez ; 2 uses
  %i.fb = getelementptr i8, ptr %i.cg, i64 %i.ez
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph332
  %index335 = phi i64 [ 0, %vector.ph332 ], [ %index.next342, %vector.body334 ] ; 2 uses
  %i.fc = mul i64 %index335, -4                   ; 2 uses
  %next.gep336 = getelementptr i8, ptr %.sroa.064.0, i64 %i.fc ; 2 uses
  %next.gep337 = getelementptr i8, ptr %i.cg, i64 %i.fc ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %next.gep337, i64 -16 ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %next.gep337, i64 -32 ; 2 uses
  %wide.load338 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !296, !alias.scope !4969, !noalias !4970
  %wide.load339 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !296, !alias.scope !4969, !noalias !4970
  %i.ff = getelementptr inbounds i8, ptr %next.gep336, i64 -16 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %next.gep336, i64 -32 ; 2 uses
  %wide.load340 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !296, !alias.scope !4971, !noalias !4972
  %wide.load341 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !296, !alias.scope !4971, !noalias !4972
  store <4 x i32> %wide.load340, ptr %i.fd, align 4, !tbaa !296, !alias.scope !4969, !noalias !4970
  store <4 x i32> %wide.load341, ptr %i.fe, align 4, !tbaa !296, !alias.scope !4969, !noalias !4970
  store <4 x i32> %wide.load338, ptr %i.ff, align 4, !tbaa !296, !alias.scope !4971, !noalias !4972
  store <4 x i32> %wide.load339, ptr %i.fg, align 4, !tbaa !296, !alias.scope !4971, !noalias !4972
  %index.next342 = add nuw i64 %index335, 8       ; 2 uses
  %i.fh = icmp eq i64 %index.next342, %n.vec333
  br i1 %i.fh, label %middle.block343, label %vector.body334, !llvm.loop !4952

middle.block343:                                  ; preds = %vector.body334
  %cmp.n344 = icmp eq i64 %i.es, %n.vec333
  br i1 %cmp.n344, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader405

.lr.ph.i.i.preheader405:                          ; preds = %vector.memcheck328, %.lr.ph.i.i.preheader, %middle.block343
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %vector.memcheck328 ], [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.fa, %middle.block343 ]
  %.ph406 = phi ptr [ %i.cg, %vector.memcheck328 ], [ %i.cg, %.lr.ph.i.i.preheader ], [ %i.fb, %middle.block343 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader405, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.fk, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader405 ]
  %i.fi = phi ptr [ %i.fj, %.lr.ph.i.i ], [ %.ph406, %.lr.ph.i.i.preheader405 ]
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -4 ; 4 uses
  %i.fk = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !296, !noalias !4972
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !296, !noalias !4972
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !296, !noalias !4972
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !296, !noalias !4972
  %.not.i.i31 = icmp eq ptr %i.fj, %i.ak
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !4953

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block390, %middle.block343, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ak, %bb.s ], [ %i.fk, %.lr.ph.i.i ], [ %i.cg, %bb.t ], [ %i.dh, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.cx, %middle.block ], [ %i.fa, %middle.block343 ], [ %i.dx, %middle.block390 ], [ %i.ek, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !441
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %i.n, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.ak, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -8 ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !319
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !319
  store i64 %i.fr, ptr %i.fo, align 8, !tbaa !319
  store i64 %i.fq, ptr %i.fp, align 8, !tbaa !319
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fs = load ptr, ptr %2, align 8, !tbaa !446   ; 2 uses
  %i.ft = icmp eq ptr %i.fn, %i.fs
  br i1 %i.ft, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = icmp eq ptr %i.fs, %i.n
  br i1 %i.fu, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.n, %bb.y ], [ %i.fn, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !446
  %.pre191 = load ptr, ptr %1, align 8, !tbaa !446
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, %bb.z, %.sink.split.i
  %i.fv = phi ptr [ %i.n, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit ], [ %i.n, %bb.z ], [ %.pre191, %.sink.split.i ]
  store ptr %i.ak, ptr %3, align 8, !tbaa !441
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -8 ; 2 uses
  store ptr %i.fw, ptr %1, align 8, !tbaa !446
  %i.fx = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.fx to i64
  %i.fy = add i64 %.0140, %.neg
  %i.fz = icmp ne i64 %i.aj, 0
  %.neg24 = sext i1 %i.fz to i64
  %i.ga = add i64 %.sroa.speculated, %.neg24
  %i.gb = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.gb, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4954

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, %bb.a
  %i.gc = load ptr, ptr %6, align 8, !tbaa !441
end_hunk_14
