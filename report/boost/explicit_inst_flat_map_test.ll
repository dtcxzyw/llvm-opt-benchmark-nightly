Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24578
inline.NumDeleted: 2911
loop-unroll.NumRuntimeUnrolled: 167
loop-unroll.NumUnrolled: 175
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPSt4pairI5emptyS6_ENS_9container3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b:bb.a
  %i.az = udiv i64 %i.ay, %4                      ; 4 uses
  %i.ba = sub i64 %i.az, %i.g
  %i.bb = shl i64 %i.az, 3
  %i.bc = ashr exact i64 %i.bb, 3                 ; 3 uses
  %.mask.i = and i64 %i.az, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, label %.lr.ph.i.i.preheader

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
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !226
  store <2 x i64> %step.add, ptr %i.bh, align 8, !tbaa !226
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !3428

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, label %.lr.ph.i.i.preheader188

.lr.ph.i.i.preheader188:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader188, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.bk, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader188 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader188 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !226
  %i.bj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.bk = add i64 %.010.i.i, 1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.bk, %i.bc
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, label %.lr.ph.i.i, !llvm.loop !3429

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %.lr.ph.split
  tail call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPSt4pairI5emptyS6_ENS_9container3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_(ptr noundef %0, ptr noundef %.074118, i64 noundef %4, i64 noundef 0, i64 noundef %i.g, i64 noundef %i.ba, i64 noundef %i.aw)
  %i.bl = add nuw i64 %.073119, 1                 ; 2 uses
  %.not77 = icmp eq i64 %i.bl, %i.e               ; 2 uses
  %spec.select.idx = select i1 %.not77, i64 0, i64 %i.a
  %spec.select = getelementptr inbounds nuw [2 x i8], ptr %.074118, i64 %spec.select.idx
  br i1 %.not77, label %.loopexit, label %.lr.ph.split, !llvm.loop !3425

bb.b:                                             ; preds = %bb.a
  br i1 %.not78120, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.b
  %i.bm = add i64 %i.e, -1
  %i.bn = mul i64 %i.bm, %i.a
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bn
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
  br i1 %.not8.i.i85, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit90, label %.lr.ph.i.i86.preheader

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
  store <2 x i64> %vec.ind174, ptr %next.gep176, align 8, !tbaa !226
  store <2 x i64> %step.add175, ptr %i.ch, align 8, !tbaa !226
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %vec.ind.next178 = add <2 x i64> %vec.ind174, splat (i64 4)
  %i.ci = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.ci, label %middle.block179, label %vector.body172, !llvm.loop !3430

middle.block179:                                  ; preds = %vector.body172
  %cmp.n180 = icmp eq i64 %i.cd, 0
  br i1 %cmp.n180, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit90, label %.lr.ph.i.i86.preheader183

.lr.ph.i.i86.preheader183:                        ; preds = %.lr.ph.i.i86.preheader, %middle.block179
  %.010.i.i87.ph = phi i64 [ 0, %.lr.ph.i.i86.preheader ], [ %n.vec171, %middle.block179 ]
  %.079.i.i88.ph = phi ptr [ %0, %.lr.ph.i.i86.preheader ], [ %i.cf, %middle.block179 ]
  br label %.lr.ph.i.i86

.lr.ph.i.i86:                                     ; preds = %.lr.ph.i.i86.preheader183, %.lr.ph.i.i86
  %.010.i.i87 = phi i64 [ %i.ck, %.lr.ph.i.i86 ], [ %.010.i.i87.ph, %.lr.ph.i.i86.preheader183 ] ; 2 uses
  %.079.i.i88 = phi ptr [ %i.cj, %.lr.ph.i.i86 ], [ %.079.i.i88.ph, %.lr.ph.i.i86.preheader183 ] ; 2 uses
  store i64 %.010.i.i87, ptr %.079.i.i88, align 8, !tbaa !226
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i88, i64 8
  %i.ck = add i64 %.010.i.i87, 1                  ; 2 uses
  %.not.i.i89 = icmp eq i64 %i.ck, %i.cc
  br i1 %.not.i.i89, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit90, label %.lr.ph.i.i86, !llvm.loop !3431

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit90: ; preds = %.lr.ph.i.i86, %middle.block179, %bb.c
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bz ; 2 uses
  %i.cm = mul i64 %i.bz, %4
  %i.cn = getelementptr [2 x i8], ptr %.2121, i64 %i.cm
  %i.co = getelementptr [2 x i8], ptr %i.cn, i64 %i.bw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit90
  store ptr %i.cl, ptr %9, align 8, !tbaa !332
  store ptr %i.co, ptr %10, align 8, !tbaa !329
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairI5emptySA_EEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessISA_ESB_NSF_9select1stISA_EEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit90
  store ptr %i.cl, ptr %11, align 8, !tbaa !332
  store ptr %i.co, ptr %12, align 8, !tbaa !329
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairI5emptySA_EEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessISA_ESB_NSF_9select1stISA_EEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not81 = icmp eq i64 %i.bs, 0                  ; 2 uses
  %.3.idx = select i1 %.not81, i64 0, i64 %i.br
  %.3 = getelementptr inbounds [2 x i8], ptr %.2121, i64 %.3.idx
  br i1 %.not81, label %.loopexit, label %bb.c, !llvm.loop !3432

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, %bb.f, %.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_SP_SP_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
bb.a:
  %7 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 7 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 3 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 2 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 2 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 2 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !329    ; 7 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.c ; 5 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !329    ; 6 uses
  %.idx365 = shl nsw i64 %2, 1                    ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %.idx365 ; 5 uses
  %i.g = sub i64 0, %3                            ; 2 uses
  %.idx = shl i64 %i.g, 1                         ; 2 uses
  %i.h = getelementptr i8, ptr %i.e, i64 %.idx    ; 6 uses
  %i.i = mul i64 %2, %i.a
  %i.j = sub i64 0, %i.i
  %i.k = getelementptr [2 x i8], ptr %i.h, i64 %i.j ; 7 uses
  %i.l = icmp eq i64 %5, 0                        ; 2 uses
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 2 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.a) ; 5 uses
  %.not304 = icmp eq i64 %i.a, 0
  br i1 %.not304, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = sub i64 0, %2
  br i1 %i.l, label %iter.check398, label %iter.check

iter.check398:                                    ; preds = %.lr.ph
  %i.p = add i64 %.sroa.speculated, 1             ; 7 uses
  %min.iters.check382 = icmp ult i64 %i.p, 8
  br i1 %min.iters.check382, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check383

vector.main.loop.iter.check383:                   ; preds = %iter.check398
  %min.iters.check384 = icmp ult i64 %i.p, 32
  br i1 %min.iters.check384, label %vec.epilog.ph402, label %vector.ph385

vector.ph385:                                     ; preds = %vector.main.loop.iter.check383
  %i.q = and i64 %i.p, 24
  %n.vec386 = and i64 %i.p, -32                   ; 4 uses
  br label %vector.body387

vector.body387:                                   ; preds = %vector.ph385, %vector.body387
  %index388 = phi i64 [ 0, %vector.ph385 ], [ %index.next391, %vector.body387 ]
  %vec.ind389 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph385 ], [ %vec.ind.next392, %vector.body387 ] ; 2 uses
  %index.next391 = add nuw i64 %index388, 32      ; 2 uses
  %vec.ind.next392 = add <16 x i64> %vec.ind389, splat (i64 32)
  %i.r = icmp eq i64 %index.next391, %n.vec386
  br i1 %i.r, label %middle.block393, label %vector.body387, !llvm.loop !3433

middle.block393:                                  ; preds = %vector.body387
  %step.add390 = add nuw <16 x i64> %vec.ind389, <i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 16, i64 16> ; 2 uses
  %vector.recur.extract.for.phi394 = extractelement <16 x i64> %step.add390, i64 14
  %cmp.n396 = icmp eq i64 %i.p, %n.vec386
  br i1 %cmp.n396, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit.us, label %vec.epilog.iter.check400

vec.epilog.iter.check400:                         ; preds = %middle.block393
  %vector.recur.extract395 = extractelement <16 x i64> %step.add390, i64 15
  %min.epilog.iters.check401 = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check401, label %.lr.ph.split.us.preheader, label %vec.epilog.ph402, !prof !327

vec.epilog.ph402:                                 ; preds = %vector.main.loop.iter.check383, %vec.epilog.iter.check400
  %vec.epilog.resume.val397 = phi i64 [ %n.vec386, %vec.epilog.iter.check400 ], [ 0, %vector.main.loop.iter.check383 ] ; 2 uses
  %n.vec403 = and i64 %i.p, -8                    ; 3 uses
  %broadcast.splatinsert404 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val397, i64 0
  %broadcast.splat405 = shufflevector <8 x i64> %broadcast.splatinsert404, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction406 = or disjoint <8 x i64> %broadcast.splat405, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body407

vec.epilog.vector.body407:                        ; preds = %vec.epilog.vector.body407, %vec.epilog.ph402
  %index408 = phi i64 [ %vec.epilog.resume.val397, %vec.epilog.ph402 ], [ %index.next410, %vec.epilog.vector.body407 ]
  %vec.ind409 = phi <8 x i64> [ %induction406, %vec.epilog.ph402 ], [ %vec.ind.next411, %vec.epilog.vector.body407 ] ; 3 uses
  %index.next410 = add nuw i64 %index408, 8       ; 2 uses
  %vec.ind.next411 = add <8 x i64> %vec.ind409, splat (i64 8)
  %i.s = icmp eq i64 %index.next410, %n.vec403
  br i1 %i.s, label %vec.epilog.middle.block412, label %vec.epilog.vector.body407, !llvm.loop !3434

vec.epilog.middle.block412:                       ; preds = %vec.epilog.vector.body407
  %vector.recur.extract.for.phi413 = extractelement <8 x i64> %vec.ind409, i64 6
  %vector.recur.extract414 = extractelement <8 x i64> %vec.ind409, i64 7
  %cmp.n415 = icmp eq i64 %i.p, %n.vec403
  br i1 %cmp.n415, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit.us, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check398, %vec.epilog.iter.check400, %vec.epilog.middle.block412
  %.018.i.us.ph = phi i64 [ 0, %iter.check398 ], [ %vector.recur.extract395, %vec.epilog.iter.check400 ], [ %vector.recur.extract414, %vec.epilog.middle.block412 ]
  %.0.i.us.ph = phi i64 [ 0, %iter.check398 ], [ %n.vec386, %vec.epilog.iter.check400 ], [ %n.vec403, %vec.epilog.middle.block412 ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %.018.i.us = phi i64 [ %.0.i.us, %.lr.ph.split.us ], [ %.018.i.us.ph, %.lr.ph.split.us.preheader ]
  %.0.i.us = phi i64 [ %i.t, %.lr.ph.split.us ], [ %.0.i.us.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.t = add i64 %.0.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %.0.i.us, %.sroa.speculated
  br i1 %exitcond.not.i.us, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit.us, label %.lr.ph.split.us, !llvm.loop !3435

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit.us: ; preds = %.lr.ph.split.us, %vec.epilog.middle.block412, %middle.block393
  %.018.i.us.lcssa = phi i64 [ %vector.recur.extract.for.phi413, %vec.epilog.middle.block412 ], [ %vector.recur.extract.for.phi394, %middle.block393 ], [ %.018.i.us, %.lr.ph.split.us ]
  %i.u = add i64 %.018.i.us.lcssa, 2
  %i.v = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated, i64 %i.u)
  %.sroa.speculated242.us = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.a) ; 3 uses
  %.not68 = icmp eq i64 %6, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  br i1 %.not68, label %.thread.thread, label %.thread.thread341

.thread.thread341:                                ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit.us
  %i.w = icmp eq i64 %.idx, %.idx365
  %.neg270350 = mul i64 %6, -2                    ; 2 uses
  %i.x = getelementptr i8, ptr %i.k, i64 %.neg270350
  br label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit

iter.check:                                       ; preds = %.lr.ph, %.sink.split.i
  %.063312 = phi i64 [ %i.av, %.sink.split.i ], [ %4, %.lr.ph ] ; 9 uses
  %.0253311 = phi i64 [ %i.ay, %.sink.split.i ], [ %i.a, %.lr.ph ] ; 2 uses
  %.sroa.0229.0310 = phi ptr [ %.sroa.0229.1, %.sink.split.i ], [ %i.d, %.lr.ph ] ; 4 uses
  %.sroa.0218.0309 = phi ptr [ %.sroa.0218.1, %.sink.split.i ], [ %i.f, %.lr.ph ] ; 3 uses
  %.sroa.0204.0308 = phi ptr [ %.sroa.0189.0307, %.sink.split.i ], [ %i.e, %.lr.ph ] ; 2 uses
  %.sroa.0189.0307 = phi ptr [ %i.ai, %.sink.split.i ], [ %i.h, %.lr.ph ] ; 6 uses
  %.sroa.0179.0306 = phi ptr [ %i.at, %.sink.split.i ], [ %i.b, %.lr.ph ] ; 4 uses
  %.val300305 = phi i64 [ %i.ax, %.sink.split.i ], [ %.sroa.speculated, %.lr.ph ] ; 2 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.val300305, i64 %.063312) ; 2 uses
  %i.y = add i64 %umax.i, 1
  %i.z = sub i64 %i.y, %.063312                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check368 = icmp ult i64 %i.z, 32
  br i1 %min.iters.check368, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.z, 24
  %n.vec = and i64 %i.z, -32                      ; 4 uses
  %i.ab = add i64 %.063312, %n.vec                ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %.063312, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add <16 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i64> %vec.ind, splat (i64 32)
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !3436

middle.block:                                     ; preds = %vector.body
  %step.add = add <16 x i64> %vec.ind, <i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 16, i64 16> ; 2 uses
  %vector.recur.extract.for.phi = extractelement <16 x i64> %step.add, i64 14
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %vector.recur.extract = extractelement <16 x i64> %step.add, i64 15
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !327

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.ab, %vec.epilog.iter.check ], [ %.063312, %vector.main.loop.iter.check ]
  %n.vec369 = and i64 %i.z, -8                    ; 3 uses
  %i.ad = add i64 %.063312, %n.vec369
  %broadcast.splatinsert370 = insertelement <8 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat371 = shufflevector <8 x i64> %broadcast.splatinsert370, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction372 = add <8 x i64> %broadcast.splat371, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index373 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next375, %vec.epilog.vector.body ]
  %vec.ind374 = phi <8 x i64> [ %induction372, %vec.epilog.ph ], [ %vec.ind.next376, %vec.epilog.vector.body ] ; 3 uses
  %index.next375 = add nuw i64 %index373, 8       ; 2 uses
  %vec.ind.next376 = add <8 x i64> %vec.ind374, splat (i64 8)
  %i.ae = icmp eq i64 %index.next375, %n.vec369
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3437

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %vector.recur.extract.for.phi377 = extractelement <8 x i64> %vec.ind374, i64 6
  %vector.recur.extract378 = extractelement <8 x i64> %vec.ind374, i64 7
  %cmp.n379 = icmp eq i64 %i.z, %n.vec369
  br i1 %cmp.n379, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.i.ph = phi i64 [ 0, %iter.check ], [ %vector.recur.extract, %vec.epilog.iter.check ], [ %vector.recur.extract378, %vec.epilog.middle.block ]
  %.0.i.ph = phi i64 [ %.063312, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.018.i = phi i64 [ %.0.i, %vec.epilog.scalar.ph ], [ %.018.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.0.i = phi i64 [ %i.af, %vec.epilog.scalar.ph ], [ %.0.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.af = add i64 %.0.i, 1
  %exitcond.not.i = icmp eq i64 %.0.i, %umax.i
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit, label %vec.epilog.scalar.ph, !llvm.loop !3438

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.018.i.lcssa = phi i64 [ %vector.recur.extract.for.phi377, %vec.epilog.middle.block ], [ %vector.recur.extract.for.phi, %middle.block ], [ %.018.i, %vec.epilog.scalar.ph ] ; 3 uses
  %i.ag = add i64 %.018.i.lcssa, 2
  %i.ah = tail call i64 @llvm.umax.i64(i64 %.val300305, i64 %i.ag) ; 2 uses
  %.sroa.speculated242 = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %.0253311)
  %.neg268 = mul i64 %.018.i.lcssa, %2
  %i.ai = getelementptr inbounds [2 x i8], ptr %.sroa.0189.0307, i64 %i.o ; 2 uses
  %i.aj = sub i64 0, %.018.i.lcssa
  %i.ak = getelementptr inbounds [2 x i8], ptr %.sroa.0179.0306, i64 %i.aj ; 2 uses
  %i.al = icmp eq ptr %.sroa.0189.0307, %.sroa.0218.0309
  br i1 %i.al, label %bb.c, label %bb.b

.thread.thread:                                   ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit.us
  %i.am = icmp eq i64 %2, %i.g
  store ptr %i.k, ptr %7, align 8, !tbaa !329
  br i1 %i.am, label %bb.g, label %bb.f

bb.b:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit
  %.not1.i.i = icmp eq ptr %.sroa.0204.0308, %.sroa.0189.0307
  %i.an = ptrtoaddr ptr %.sroa.0189.0307 to i64
  %i.ao = ptrtoaddr ptr %.sroa.0204.0308 to i64
  %reass.sub.i = add i64 %i.an, 1
  %.not.i = sub i64 %reass.sub.i, %i.ao
  %i.ap = and i64 %.not.i, -2
  %.idx.i = select i1 %.not1.i.i, i64 0, i64 %i.ap
  %i.aq = getelementptr i8, ptr %.sroa.0218.0309, i64 %.idx.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit
  %.sroa.0218.1 = phi ptr [ %.sroa.0218.0309, %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit ], [ %i.aq, %bb.b ] ; 2 uses
  %14 = and i64 %.neg268, 9223372036854775807
  %.not.i72 = icmp eq i64 %14, 0
  br i1 %.not.i72, label %.sink.split.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairI5emptyS4_EEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairI5emptyS4_EEES7_EET0_T_S9_S8_.exit.i: ; preds = %bb.c
  %i.ar = icmp eq ptr %i.ak, %.sroa.0229.0310
  br i1 %i.ar, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairI5emptyS4_EEES7_EET0_T_S9_S8_.exit.i
  %i.as = icmp eq ptr %.sroa.0229.0310, %.sroa.0179.0306
  %spec.select = select i1 %i.as, ptr %i.ak, ptr %.sroa.0229.0310
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairI5emptyS4_EEES7_EET0_T_S9_S8_.exit.i
  %.sroa.0229.1 = phi ptr [ %spec.select, %bb.d ], [ %.sroa.0179.0306, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairI5emptyS4_EEES7_EET0_T_S9_S8_.exit.i ], [ %.sroa.0229.0310, %bb.c ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0179.0306, i64 -2
  %i.au = icmp ne i64 %.063312, 0
  %.neg = sext i1 %i.au to i64
  %i.av = add i64 %.063312, %.neg                 ; 2 uses
  %i.aw = icmp ne i64 %i.ah, 0
  %.neg69 = sext i1 %i.aw to i64
  %i.ax = add i64 %.sroa.speculated242, %.neg69   ; 2 uses
  %i.ay = add i64 %.0253311, -1                   ; 2 uses
  %.not = icmp eq i64 %i.ay, 0
  br i1 %.not, label %.thread.loopexit.loopexit, label %iter.check, !llvm.loop !3439

.thread.loopexit.loopexit:                        ; preds = %.sink.split.i
  %i.az = mul i64 %i.a, -2
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.az
  br label %.thread

.thread:                                          ; preds = %bb.a, %.thread.loopexit.loopexit
  %.sroa.0.0 = phi ptr [ %i.ai, %.thread.loopexit.loopexit ], [ %i.h, %bb.a ] ; 5 uses
  %.0 = phi i64 [ %i.ax, %.thread.loopexit.loopexit ], [ %.sroa.speculated, %bb.a ] ; 3 uses
  %.sroa.0179.0299 = phi ptr [ %scevgep, %.thread.loopexit.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.sroa.0204.0291 = phi ptr [ %.sroa.0189.0307, %.thread.loopexit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.0218.0288 = phi ptr [ %.sroa.0218.1, %.thread.loopexit.loopexit ], [ %i.f, %bb.a ] ; 3 uses
  %.sroa.0229.0286 = phi ptr [ %.sroa.0229.1, %.thread.loopexit.loopexit ], [ %i.d, %bb.a ] ; 3 uses
  %.063278 = phi i64 [ %i.av, %.thread.loopexit.loopexit ], [ %i.m, %bb.a ] ; 3 uses
  %i.ba = icmp eq ptr %.sroa.0.0, %.sroa.0218.0288 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.k, ptr %7, align 8, !tbaa !329
  %.neg270 = mul i64 %6, -2                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.k, i64 %.neg270 ; 3 uses
  %.not269 = icmp eq i64 %6, 0
  br i1 %.not269, label %bb.e, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit: ; preds = %.thread.thread341, %.thread
  %i.bc = phi ptr [ %i.x, %.thread.thread341 ], [ %i.bb, %.thread ] ; 2 uses
  %.neg270360 = phi i64 [ %.neg270350, %.thread.thread341 ], [ %.neg270, %.thread ] ; 2 uses
  %i.bd = phi i1 [ %i.w, %.thread.thread341 ], [ %i.ba, %.thread ] ; 2 uses
  %.063278359 = phi i64 [ 0, %.thread.thread341 ], [ %.063278, %.thread ]
  %.0253282358 = phi i64 [ %i.a, %.thread.thread341 ], [ 0, %.thread ]
  %.sroa.0229.0286357 = phi ptr [ %i.d, %.thread.thread341 ], [ %.sroa.0229.0286, %.thread ]
  %.sroa.0218.0288356 = phi ptr [ %i.f, %.thread.thread341 ], [ %.sroa.0218.0288, %.thread ]
  %.sroa.0204.0291355 = phi ptr [ %i.e, %.thread.thread341 ], [ %.sroa.0204.0291, %.thread ] ; 2 uses
  %.sroa.0179.0299354 = phi ptr [ %i.b, %.thread.thread341 ], [ %.sroa.0179.0299, %.thread ]
  %.0353 = phi i64 [ %.sroa.speculated242.us, %.thread.thread341 ], [ %.0, %.thread ]
  %.sroa.0.0352 = phi ptr [ %i.h, %.thread.thread341 ], [ %.sroa.0.0, %.thread ] ; 4 uses
  %i.be = ptrtoint ptr %.sroa.0204.0291355 to i64
  %i.bf = ptrtoint ptr %.sroa.0.0352 to i64       ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %.sroa.0.0352, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %2
  %.sroa.0204.5 = select i1 %i.bd, ptr %i.bh, ptr %.sroa.0204.0291355 ; 2 uses
  %.sroa.0218.6 = select i1 %i.bd, ptr %i.bi, ptr %.sroa.0218.0288356
  %.not.i82 = icmp eq i64 %.neg270360, 0
  %.not17.i = icmp eq ptr %.sroa.0.0352, %.sroa.0204.5 ; 2 uses
  %or.cond = select i1 %.not.i82, i1 true, i1 %.not17.i ; 2 uses
  %spec.select363.idx = select i1 %or.cond, i64 0, i64 %.neg270360
  %spec.select363 = getelementptr i8, ptr %.sroa.0218.6, i64 %spec.select363.idx
  %spec.select364 = select i1 %or.cond, ptr %i.k, ptr %i.bc
  store ptr %spec.select364, ptr %7, align 8, !tbaa !329, !noalias !3442
  %i.bj = ptrtoaddr ptr %.sroa.0204.5 to i64
  %reass.sub.i84 = add i64 %i.bf, 1
  %.not.i85 = sub i64 %reass.sub.i84, %i.bj
  %i.bk = and i64 %.not.i85, -2
  %.idx.i86 = select i1 %.not17.i, i64 0, i64 %i.bk
  %i.bl = getelementptr i8, ptr %spec.select363, i64 %.idx.i86
  br label %bb.g

bb.e:                                             ; preds = %.thread
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread.thread, %bb.e
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.e ], [ %i.h, %.thread.thread ] ; 3 uses
  %.1 = phi i64 [ %.0, %bb.e ], [ %.sroa.speculated242.us, %.thread.thread ]
  %.sroa.0179.0298 = phi ptr [ %.sroa.0179.0299, %bb.e ], [ %i.b, %.thread.thread ]
  %.sroa.0204.0292 = phi ptr [ %.sroa.0204.0291, %bb.e ], [ %i.e, %.thread.thread ] ; 2 uses
  %.sroa.0218.0289 = phi ptr [ %.sroa.0218.0288, %bb.e ], [ %i.f, %.thread.thread ]
  %.sroa.0229.0285 = phi ptr [ %.sroa.0229.0286, %bb.e ], [ %i.d, %.thread.thread ]
  %.0253281 = phi i64 [ 0, %bb.e ], [ %i.a, %.thread.thread ]
  %.063277 = phi i64 [ %.063278, %bb.e ], [ 0, %.thread.thread ]
  %i.bm = phi ptr [ %i.bb, %bb.e ], [ %i.k, %.thread.thread ]
  %.not1.i.i87 = icmp eq ptr %.sroa.0204.0292, %.sroa.0.1
  %i.bn = ptrtoaddr ptr %.sroa.0.1 to i64
  %i.bo = ptrtoaddr ptr %.sroa.0204.0292 to i64
  %reass.sub.i88 = add i64 %i.bn, 1
  %.not.i89 = sub i64 %reass.sub.i88, %i.bo
  %i.bp = and i64 %.not.i89, -2
  %.idx.i90 = select i1 %.not1.i.i87, i64 0, i64 %i.bp
  %i.bq = getelementptr i8, ptr %.sroa.0218.0289, i64 %.idx.i90
  br label %bb.g

bb.g:                                             ; preds = %.thread.thread, %bb.e, %bb.f, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %bb.e ], [ %.sroa.0.1, %bb.f ], [ %.sroa.0.0352, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.h, %.thread.thread ]
  %.2 = phi i64 [ %.0, %bb.e ], [ %.1, %bb.f ], [ %.0353, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.speculated242.us, %.thread.thread ]
  %.sroa.0179.0297 = phi ptr [ %.sroa.0179.0299, %bb.e ], [ %.sroa.0179.0298, %bb.f ], [ %.sroa.0179.0299354, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.b, %.thread.thread ]
  %.sroa.0229.0284 = phi ptr [ %.sroa.0229.0286, %bb.e ], [ %.sroa.0229.0285, %bb.f ], [ %.sroa.0229.0286357, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.d, %.thread.thread ]
  %.0253280 = phi i64 [ 0, %bb.e ], [ %.0253281, %bb.f ], [ %.0253282358, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.a, %.thread.thread ]
  %.063276 = phi i64 [ %.063278, %bb.e ], [ %.063277, %bb.f ], [ %.063278359, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ 0, %.thread.thread ]
  %i.br = phi ptr [ %i.bb, %bb.e ], [ %i.bm, %bb.f ], [ %i.bc, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.k, %.thread.thread ]
  %.sroa.0218.7 = phi ptr [ %.sroa.0.0, %bb.e ], [ %i.bq, %bb.f ], [ %i.bl, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.f, %.thread.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %.sroa.0179.0297, ptr %9, align 8, !tbaa !329
  store ptr %.sroa.0229.0284, ptr %10, align 8, !tbaa !329
  store ptr %.sroa.0.2, ptr %11, align 8, !tbaa !329
  store ptr %i.br, ptr %12, align 8, !tbaa !329
  store ptr %.sroa.0218.7, ptr %13, align 8, !tbaa !329
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_S8_S8_SI_NS0_7move_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.77") align 8 %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, i64 noundef %2, i64 noundef %.0253280, i64 noundef %.063276, i64 noundef %.2, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_SP_SP_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
bb.a:
  %7 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 7 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 3 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 2 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 2 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 2 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !329    ; 7 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.c ; 5 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !329    ; 6 uses
  %.idx369 = shl nsw i64 %2, 1                    ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %.idx369 ; 5 uses
  %i.g = sub i64 0, %3                            ; 2 uses
  %.idx = shl i64 %i.g, 1                         ; 2 uses
  %i.h = getelementptr i8, ptr %i.e, i64 %.idx    ; 6 uses
  %i.i = mul i64 %2, %i.a
  %i.j = sub i64 0, %i.i
  %i.k = getelementptr [2 x i8], ptr %i.h, i64 %i.j ; 7 uses
  %i.l = icmp eq i64 %5, 0                        ; 2 uses
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 2 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.a) ; 5 uses
  %.not308 = icmp eq i64 %i.a, 0
  br i1 %.not308, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = sub i64 0, %2
  br i1 %i.l, label %iter.check402, label %iter.check

iter.check402:                                    ; preds = %.lr.ph
  %i.p = add i64 %.sroa.speculated, 1             ; 7 uses
  %min.iters.check386 = icmp ult i64 %i.p, 8
  br i1 %min.iters.check386, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check387

vector.main.loop.iter.check387:                   ; preds = %iter.check402
  %min.iters.check388 = icmp ult i64 %i.p, 32
  br i1 %min.iters.check388, label %vec.epilog.ph406, label %vector.ph389

vector.ph389:                                     ; preds = %vector.main.loop.iter.check387
  %i.q = and i64 %i.p, 24
  %n.vec390 = and i64 %i.p, -32                   ; 4 uses
  br label %vector.body391

vector.body391:                                   ; preds = %vector.ph389, %vector.body391
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next395, %vector.body391 ]
  %vec.ind393 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph389 ], [ %vec.ind.next396, %vector.body391 ] ; 2 uses
  %index.next395 = add nuw i64 %index392, 32      ; 2 uses
  %vec.ind.next396 = add <16 x i64> %vec.ind393, splat (i64 32)
  %i.r = icmp eq i64 %index.next395, %n.vec390
  br i1 %i.r, label %middle.block397, label %vector.body391, !llvm.loop !3443

middle.block397:                                  ; preds = %vector.body391
  %step.add394 = add nuw <16 x i64> %vec.ind393, <i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 16, i64 16> ; 2 uses
  %vector.recur.extract.for.phi398 = extractelement <16 x i64> %step.add394, i64 14
  %cmp.n400 = icmp eq i64 %i.p, %n.vec390
  br i1 %cmp.n400, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit.us, label %vec.epilog.iter.check404

vec.epilog.iter.check404:                         ; preds = %middle.block397
  %vector.recur.extract399 = extractelement <16 x i64> %step.add394, i64 15
  %min.epilog.iters.check405 = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check405, label %.lr.ph.split.us.preheader, label %vec.epilog.ph406, !prof !327

vec.epilog.ph406:                                 ; preds = %vector.main.loop.iter.check387, %vec.epilog.iter.check404
  %vec.epilog.resume.val401 = phi i64 [ %n.vec390, %vec.epilog.iter.check404 ], [ 0, %vector.main.loop.iter.check387 ] ; 2 uses
  %n.vec407 = and i64 %i.p, -8                    ; 3 uses
  %broadcast.splatinsert408 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val401, i64 0
  %broadcast.splat409 = shufflevector <8 x i64> %broadcast.splatinsert408, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction410 = or disjoint <8 x i64> %broadcast.splat409, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body411

vec.epilog.vector.body411:                        ; preds = %vec.epilog.vector.body411, %vec.epilog.ph406
  %index412 = phi i64 [ %vec.epilog.resume.val401, %vec.epilog.ph406 ], [ %index.next414, %vec.epilog.vector.body411 ]
  %vec.ind413 = phi <8 x i64> [ %induction410, %vec.epilog.ph406 ], [ %vec.ind.next415, %vec.epilog.vector.body411 ] ; 3 uses
  %index.next414 = add nuw i64 %index412, 8       ; 2 uses
  %vec.ind.next415 = add <8 x i64> %vec.ind413, splat (i64 8)
  %i.s = icmp eq i64 %index.next414, %n.vec407
  br i1 %i.s, label %vec.epilog.middle.block416, label %vec.epilog.vector.body411, !llvm.loop !3444

vec.epilog.middle.block416:                       ; preds = %vec.epilog.vector.body411
  %vector.recur.extract.for.phi417 = extractelement <8 x i64> %vec.ind413, i64 6
  %vector.recur.extract418 = extractelement <8 x i64> %vec.ind413, i64 7
  %cmp.n419 = icmp eq i64 %i.p, %n.vec407
  br i1 %cmp.n419, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit.us, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check402, %vec.epilog.iter.check404, %vec.epilog.middle.block416
  %.018.i.us.ph = phi i64 [ 0, %iter.check402 ], [ %vector.recur.extract399, %vec.epilog.iter.check404 ], [ %vector.recur.extract418, %vec.epilog.middle.block416 ]
  %.0.i.us.ph = phi i64 [ 0, %iter.check402 ], [ %n.vec390, %vec.epilog.iter.check404 ], [ %n.vec407, %vec.epilog.middle.block416 ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %.018.i.us = phi i64 [ %.0.i.us, %.lr.ph.split.us ], [ %.018.i.us.ph, %.lr.ph.split.us.preheader ]
  %.0.i.us = phi i64 [ %i.t, %.lr.ph.split.us ], [ %.0.i.us.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.t = add i64 %.0.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %.0.i.us, %.sroa.speculated
  br i1 %exitcond.not.i.us, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit.us, label %.lr.ph.split.us, !llvm.loop !3445

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit.us: ; preds = %.lr.ph.split.us, %vec.epilog.middle.block416, %middle.block397
  %.018.i.us.lcssa = phi i64 [ %vector.recur.extract.for.phi417, %vec.epilog.middle.block416 ], [ %vector.recur.extract.for.phi398, %middle.block397 ], [ %.018.i.us, %.lr.ph.split.us ]
  %i.u = add i64 %.018.i.us.lcssa, 2
  %i.v = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated, i64 %i.u)
  %.sroa.speculated246.us = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.a) ; 3 uses
  %.not68 = icmp eq i64 %6, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  br i1 %.not68, label %.thread.thread, label %.thread.thread345

.thread.thread345:                                ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit.us
  %i.w = icmp eq i64 %.idx, %.idx369
  %.neg274354 = mul i64 %6, -2                    ; 2 uses
  %i.x = getelementptr i8, ptr %i.k, i64 %.neg274354
  br label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit

iter.check:                                       ; preds = %.lr.ph, %.sink.split.i
  %.063316 = phi i64 [ %i.av, %.sink.split.i ], [ %4, %.lr.ph ] ; 9 uses
  %.0257315 = phi i64 [ %i.ay, %.sink.split.i ], [ %i.a, %.lr.ph ] ; 2 uses
  %.sroa.0233.0314 = phi ptr [ %.sroa.0233.1, %.sink.split.i ], [ %i.d, %.lr.ph ] ; 4 uses
  %.sroa.0222.0313 = phi ptr [ %.sroa.0222.1, %.sink.split.i ], [ %i.f, %.lr.ph ] ; 3 uses
  %.sroa.0208.0312 = phi ptr [ %.sroa.0193.0311, %.sink.split.i ], [ %i.e, %.lr.ph ] ; 2 uses
  %.sroa.0193.0311 = phi ptr [ %i.ai, %.sink.split.i ], [ %i.h, %.lr.ph ] ; 6 uses
  %.sroa.0183.0310 = phi ptr [ %i.at, %.sink.split.i ], [ %i.b, %.lr.ph ] ; 4 uses
  %.val304309 = phi i64 [ %i.ax, %.sink.split.i ], [ %.sroa.speculated, %.lr.ph ] ; 2 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.val304309, i64 %.063316) ; 2 uses
  %i.y = add i64 %umax.i, 1
  %i.z = sub i64 %i.y, %.063316                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check372 = icmp ult i64 %i.z, 32
  br i1 %min.iters.check372, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.z, 24
  %n.vec = and i64 %i.z, -32                      ; 4 uses
  %i.ab = add i64 %.063316, %n.vec                ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %.063316, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add <16 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i64> %vec.ind, splat (i64 32)
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !3446

middle.block:                                     ; preds = %vector.body
  %step.add = add <16 x i64> %vec.ind, <i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 16, i64 16> ; 2 uses
  %vector.recur.extract.for.phi = extractelement <16 x i64> %step.add, i64 14
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %vector.recur.extract = extractelement <16 x i64> %step.add, i64 15
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !327

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.ab, %vec.epilog.iter.check ], [ %.063316, %vector.main.loop.iter.check ]
  %n.vec373 = and i64 %i.z, -8                    ; 3 uses
  %i.ad = add i64 %.063316, %n.vec373
  %broadcast.splatinsert374 = insertelement <8 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat375 = shufflevector <8 x i64> %broadcast.splatinsert374, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction376 = add <8 x i64> %broadcast.splat375, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index377 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next379, %vec.epilog.vector.body ]
  %vec.ind378 = phi <8 x i64> [ %induction376, %vec.epilog.ph ], [ %vec.ind.next380, %vec.epilog.vector.body ] ; 3 uses
  %index.next379 = add nuw i64 %index377, 8       ; 2 uses
  %vec.ind.next380 = add <8 x i64> %vec.ind378, splat (i64 8)
  %i.ae = icmp eq i64 %index.next379, %n.vec373
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3447

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %vector.recur.extract.for.phi381 = extractelement <8 x i64> %vec.ind378, i64 6
  %vector.recur.extract382 = extractelement <8 x i64> %vec.ind378, i64 7
  %cmp.n383 = icmp eq i64 %i.z, %n.vec373
  br i1 %cmp.n383, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.i.ph = phi i64 [ 0, %iter.check ], [ %vector.recur.extract, %vec.epilog.iter.check ], [ %vector.recur.extract382, %vec.epilog.middle.block ]
  %.0.i.ph = phi i64 [ %.063316, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.018.i = phi i64 [ %.0.i, %vec.epilog.scalar.ph ], [ %.018.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.0.i = phi i64 [ %i.af, %vec.epilog.scalar.ph ], [ %.0.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.af = add i64 %.0.i, 1
  %exitcond.not.i = icmp eq i64 %.0.i, %umax.i
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit, label %vec.epilog.scalar.ph, !llvm.loop !3448

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.018.i.lcssa = phi i64 [ %vector.recur.extract.for.phi381, %vec.epilog.middle.block ], [ %vector.recur.extract.for.phi, %middle.block ], [ %.018.i, %vec.epilog.scalar.ph ] ; 3 uses
  %i.ag = add i64 %.018.i.lcssa, 2
  %i.ah = tail call i64 @llvm.umax.i64(i64 %.val304309, i64 %i.ag) ; 2 uses
  %.sroa.speculated246 = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %.0257315)
  %.neg272 = mul i64 %.018.i.lcssa, %2
  %i.ai = getelementptr inbounds [2 x i8], ptr %.sroa.0193.0311, i64 %i.o ; 2 uses
  %i.aj = sub i64 0, %.018.i.lcssa
  %i.ak = getelementptr inbounds [2 x i8], ptr %.sroa.0183.0310, i64 %i.aj ; 2 uses
  %i.al = icmp eq ptr %.sroa.0193.0311, %.sroa.0222.0313
  br i1 %i.al, label %bb.c, label %bb.b

.thread.thread:                                   ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit.us
  %i.am = icmp eq i64 %2, %i.g
  store ptr %i.k, ptr %7, align 8, !tbaa !329
  br i1 %i.am, label %bb.g, label %bb.f

bb.b:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit
  %.not1.i.i = icmp eq ptr %.sroa.0208.0312, %.sroa.0193.0311
  %i.an = ptrtoaddr ptr %.sroa.0193.0311 to i64
  %i.ao = ptrtoaddr ptr %.sroa.0208.0312 to i64
  %reass.sub.i = add i64 %i.an, 1
  %.not.i = sub i64 %reass.sub.i, %i.ao
  %i.ap = and i64 %.not.i, -2
  %.idx.i = select i1 %.not1.i.i, i64 0, i64 %i.ap
  %i.aq = getelementptr i8, ptr %.sroa.0222.0313, i64 %.idx.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit
  %.sroa.0222.1 = phi ptr [ %.sroa.0222.0313, %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit ], [ %i.aq, %bb.b ] ; 2 uses
  %14 = and i64 %.neg272, 9223372036854775807
  %.not.i72 = icmp eq i64 %14, 0
  br i1 %.not.i72, label %.sink.split.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairI5emptyS4_EEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairI5emptyS4_EEES7_EET0_T_S9_S8_.exit.i: ; preds = %bb.c
  %i.ar = icmp eq ptr %i.ak, %.sroa.0233.0314
  br i1 %i.ar, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairI5emptyS4_EEES7_EET0_T_S9_S8_.exit.i
  %i.as = icmp eq ptr %.sroa.0233.0314, %.sroa.0183.0310
  %spec.select = select i1 %i.as, ptr %i.ak, ptr %.sroa.0233.0314
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairI5emptyS4_EEES7_EET0_T_S9_S8_.exit.i
  %.sroa.0233.1 = phi ptr [ %spec.select, %bb.d ], [ %.sroa.0183.0310, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairI5emptyS4_EEES7_EET0_T_S9_S8_.exit.i ], [ %.sroa.0233.0314, %bb.c ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0183.0310, i64 -2
  %i.au = icmp ne i64 %.063316, 0
  %.neg = sext i1 %i.au to i64
  %i.av = add i64 %.063316, %.neg                 ; 2 uses
  %i.aw = icmp ne i64 %i.ah, 0
  %.neg69 = sext i1 %i.aw to i64
  %i.ax = add i64 %.sroa.speculated246, %.neg69   ; 2 uses
  %i.ay = add i64 %.0257315, -1                   ; 2 uses
  %.not = icmp eq i64 %i.ay, 0
  br i1 %.not, label %.thread.loopexit.loopexit, label %iter.check, !llvm.loop !3449

.thread.loopexit.loopexit:                        ; preds = %.sink.split.i
  %i.az = mul i64 %i.a, -2
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.az
  br label %.thread

.thread:                                          ; preds = %bb.a, %.thread.loopexit.loopexit
  %.sroa.0.0 = phi ptr [ %i.ai, %.thread.loopexit.loopexit ], [ %i.h, %bb.a ] ; 5 uses
  %.0 = phi i64 [ %i.ax, %.thread.loopexit.loopexit ], [ %.sroa.speculated, %bb.a ] ; 3 uses
  %.sroa.0183.0303 = phi ptr [ %scevgep, %.thread.loopexit.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.sroa.0208.0295 = phi ptr [ %.sroa.0193.0311, %.thread.loopexit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.0222.0292 = phi ptr [ %.sroa.0222.1, %.thread.loopexit.loopexit ], [ %i.f, %bb.a ] ; 3 uses
  %.sroa.0233.0290 = phi ptr [ %.sroa.0233.1, %.thread.loopexit.loopexit ], [ %i.d, %bb.a ] ; 3 uses
  %.063282 = phi i64 [ %i.av, %.thread.loopexit.loopexit ], [ %i.m, %bb.a ] ; 3 uses
  %i.ba = icmp eq ptr %.sroa.0.0, %.sroa.0222.0292 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.k, ptr %7, align 8, !tbaa !329
  %.neg274 = mul i64 %6, -2                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.k, i64 %.neg274 ; 3 uses
  %.not273 = icmp eq i64 %6, 0
  br i1 %.not273, label %bb.e, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit: ; preds = %.thread.thread345, %.thread
  %i.bc = phi ptr [ %i.x, %.thread.thread345 ], [ %i.bb, %.thread ] ; 2 uses
  %.neg274364 = phi i64 [ %.neg274354, %.thread.thread345 ], [ %.neg274, %.thread ] ; 2 uses
  %i.bd = phi i1 [ %i.w, %.thread.thread345 ], [ %i.ba, %.thread ] ; 2 uses
  %.063282363 = phi i64 [ 0, %.thread.thread345 ], [ %.063282, %.thread ]
  %.0257286362 = phi i64 [ %i.a, %.thread.thread345 ], [ 0, %.thread ]
  %.sroa.0233.0290361 = phi ptr [ %i.d, %.thread.thread345 ], [ %.sroa.0233.0290, %.thread ]
  %.sroa.0222.0292360 = phi ptr [ %i.f, %.thread.thread345 ], [ %.sroa.0222.0292, %.thread ]
  %.sroa.0208.0295359 = phi ptr [ %i.e, %.thread.thread345 ], [ %.sroa.0208.0295, %.thread ] ; 2 uses
  %.sroa.0183.0303358 = phi ptr [ %i.b, %.thread.thread345 ], [ %.sroa.0183.0303, %.thread ]
  %.0357 = phi i64 [ %.sroa.speculated246.us, %.thread.thread345 ], [ %.0, %.thread ]
  %.sroa.0.0356 = phi ptr [ %i.h, %.thread.thread345 ], [ %.sroa.0.0, %.thread ] ; 4 uses
  %i.be = ptrtoint ptr %.sroa.0208.0295359 to i64
  %i.bf = ptrtoint ptr %.sroa.0.0356 to i64       ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %.sroa.0.0356, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %2
  %.sroa.0208.5 = select i1 %i.bd, ptr %i.bh, ptr %.sroa.0208.0295359 ; 2 uses
  %.sroa.0222.6 = select i1 %i.bd, ptr %i.bi, ptr %.sroa.0222.0292360
  %.not.i83 = icmp eq i64 %.neg274364, 0
  %.not17.i = icmp eq ptr %.sroa.0.0356, %.sroa.0208.5 ; 2 uses
  %or.cond = select i1 %.not.i83, i1 true, i1 %.not17.i ; 2 uses
  %spec.select367.idx = select i1 %or.cond, i64 0, i64 %.neg274364
  %spec.select367 = getelementptr i8, ptr %.sroa.0222.6, i64 %spec.select367.idx
  %spec.select368 = select i1 %or.cond, ptr %i.k, ptr %i.bc
  store ptr %spec.select368, ptr %7, align 8, !tbaa !329, !noalias !3452
  %i.bj = ptrtoaddr ptr %.sroa.0208.5 to i64
  %reass.sub.i86 = add i64 %i.bf, 1
  %.not.i87 = sub i64 %reass.sub.i86, %i.bj
  %i.bk = and i64 %.not.i87, -2
  %.idx.i88 = select i1 %.not17.i, i64 0, i64 %i.bk
  %i.bl = getelementptr i8, ptr %spec.select367, i64 %.idx.i88
  br label %bb.g

bb.e:                                             ; preds = %.thread
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread.thread, %bb.e
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.e ], [ %i.h, %.thread.thread ] ; 3 uses
  %.1 = phi i64 [ %.0, %bb.e ], [ %.sroa.speculated246.us, %.thread.thread ]
  %.sroa.0183.0302 = phi ptr [ %.sroa.0183.0303, %bb.e ], [ %i.b, %.thread.thread ]
  %.sroa.0208.0296 = phi ptr [ %.sroa.0208.0295, %bb.e ], [ %i.e, %.thread.thread ] ; 2 uses
  %.sroa.0222.0293 = phi ptr [ %.sroa.0222.0292, %bb.e ], [ %i.f, %.thread.thread ]
  %.sroa.0233.0289 = phi ptr [ %.sroa.0233.0290, %bb.e ], [ %i.d, %.thread.thread ]
  %.0257285 = phi i64 [ 0, %bb.e ], [ %i.a, %.thread.thread ]
  %.063281 = phi i64 [ %.063282, %bb.e ], [ 0, %.thread.thread ]
  %i.bm = phi ptr [ %i.bb, %bb.e ], [ %i.k, %.thread.thread ]
  %.not1.i.i90 = icmp eq ptr %.sroa.0208.0296, %.sroa.0.1
  %i.bn = ptrtoaddr ptr %.sroa.0.1 to i64
  %i.bo = ptrtoaddr ptr %.sroa.0208.0296 to i64
  %reass.sub.i91 = add i64 %i.bn, 1
  %.not.i92 = sub i64 %reass.sub.i91, %i.bo
  %i.bp = and i64 %.not.i92, -2
  %.idx.i93 = select i1 %.not1.i.i90, i64 0, i64 %i.bp
  %i.bq = getelementptr i8, ptr %.sroa.0222.0293, i64 %.idx.i93
  br label %bb.g

bb.g:                                             ; preds = %.thread.thread, %bb.e, %bb.f, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %bb.e ], [ %.sroa.0.1, %bb.f ], [ %.sroa.0.0356, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.h, %.thread.thread ]
  %.2 = phi i64 [ %.0, %bb.e ], [ %.1, %bb.f ], [ %.0357, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.speculated246.us, %.thread.thread ]
  %.sroa.0183.0301 = phi ptr [ %.sroa.0183.0303, %bb.e ], [ %.sroa.0183.0302, %bb.f ], [ %.sroa.0183.0303358, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.b, %.thread.thread ]
  %.sroa.0233.0288 = phi ptr [ %.sroa.0233.0290, %bb.e ], [ %.sroa.0233.0289, %bb.f ], [ %.sroa.0233.0290361, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.d, %.thread.thread ]
  %.0257284 = phi i64 [ 0, %bb.e ], [ %.0257285, %bb.f ], [ %.0257286362, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.a, %.thread.thread ]
  %.063280 = phi i64 [ %.063282, %bb.e ], [ %.063281, %bb.f ], [ %.063282363, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ 0, %.thread.thread ]
  %i.br = phi ptr [ %i.bb, %bb.e ], [ %i.bm, %bb.f ], [ %i.bc, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.k, %.thread.thread ]
  %.sroa.0222.7 = phi ptr [ %.sroa.0.0, %bb.e ], [ %i.bq, %bb.f ], [ %i.bl, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.f, %.thread.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %.sroa.0183.0301, ptr %9, align 8, !tbaa !329
  store ptr %.sroa.0233.0288, ptr %10, align 8, !tbaa !329
  store ptr %.sroa.0.2, ptr %11, align 8, !tbaa !329
  store ptr %i.br, ptr %12, align 8, !tbaa !329
  store ptr %.sroa.0222.7, ptr %13, align 8, !tbaa !329
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_S8_S8_SI_NS0_7swap_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.77") align 8 %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, i64 noundef %2, i64 noundef %.0257284, i64 noundef %.063280, i64 noundef %.2, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_b(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.77") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext %8) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !329    ; 11 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !329    ; 28 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !329    ; 14 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !329
  %i.e = load ptr, ptr %6, align 8, !tbaa !329, !noalias !333 ; 16 uses
  %i.f = load ptr, ptr %7, align 8, !tbaa !329, !noalias !333 ; 7 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !329, !noalias !333 ; 17 uses
  %.not.i = icmp eq ptr %i.g, %i.d                ; 4 uses
  %i.h = icmp eq ptr %i.e, %i.f                   ; 2 uses
  br i1 %8, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit.i

bb.c:                                             ; preds = %bb.b
  %.not.i16.i = icmp eq ptr %i.a, %i.b
  %.not27.i.i = icmp eq ptr %i.g, %i.c
  %or.cond68.i = select i1 %.not.i16.i, i1 true, i1 %.not27.i.i ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %or.cond68.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 -2 ; 2 uses
  %.sroa.024.046.i.i = getelementptr inbounds i8, ptr %i.g, i64 -2 ; 5 uses
  %storemerge48.i.i = getelementptr inbounds i8, ptr %i.e, i64 -2 ; 3 uses
  %.not3749.i.i = icmp eq ptr %i.i, %i.b
  br i1 %.not3749.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit.i.thread52, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.g
  %i.j = phi ptr [ %i.p, %bb.g ], [ %i.i, %bb.e ] ; 2 uses
  %storemerge52.i.i = phi ptr [ %storemerge.i.i, %bb.g ], [ %storemerge48.i.i, %bb.e ]
  %.sroa.024.050.i.i = phi ptr [ %.sroa.024.0.i.i, %bb.g ], [ %.sroa.024.046.i.i, %bb.e ] ; 3 uses
  %i.k = icmp eq ptr %.sroa.024.050.i.i, %i.c
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.l = ptrtoaddr ptr %i.b to i64
  %i.m = ptrtoaddr ptr %i.j to i64
  %reass.sub.i.i = add i64 %i.l, 1
  %.not.i.i.i = sub i64 %reass.sub.i.i, %i.m
  %i.n = and i64 %.not.i.i.i, -2
  %i.o = getelementptr i8, ptr %i.e, i64 %i.n
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds i8, ptr %i.j, i64 -2 ; 2 uses
  %.sroa.024.0.i.i = getelementptr inbounds i8, ptr %.sroa.024.050.i.i, i64 -2 ; 2 uses
  %storemerge.i.i = getelementptr inbounds i8, ptr %storemerge52.i.i, i64 -2 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.p, %i.b
  br i1 %.not37.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit.i, label %.lr.ph.i.i, !llvm.loop !3453

bb.h:                                             ; preds = %bb.c
  br i1 %or.cond68.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 -2 ; 2 uses
  %.sroa.016.035.i.i = getelementptr inbounds i8, ptr %i.g, i64 -2 ; 5 uses
  %storemerge36.i.i = getelementptr inbounds i8, ptr %i.e, i64 -2 ; 3 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit.i.thread, label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %bb.i, %bb.k
  %i.s = phi ptr [ %i.y, %bb.k ], [ %i.q, %bb.i ] ; 2 uses
  %storemerge38.i.i = phi ptr [ %storemerge.i18.i, %bb.k ], [ %storemerge36.i.i, %bb.i ]
  %.sroa.016.037.i.i = phi ptr [ %.sroa.016.0.i.i, %bb.k ], [ %.sroa.016.035.i.i, %bb.i ] ; 3 uses
  %i.t = icmp eq ptr %.sroa.016.037.i.i, %i.c
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i17.i
  %i.u = ptrtoaddr ptr %i.b to i64
  %i.v = ptrtoaddr ptr %i.s to i64
  %reass.sub.i20.i = add i64 %i.u, 1
end_hunk_0
