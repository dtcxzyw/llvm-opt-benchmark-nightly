Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-layout?download=true
inline.NumInlined: 23696
inline.NumDeleted: 10355
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2OT17item_variations_t16as_item_varstoreEbb:bb.a
  %i.ps = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1249) ; 2 uses
  br i1 %cmp.n, label %_ZN2OT20delta_row_encoding_t15calculate_charsEv.exit, label %.lr.ph.i.i.i401.preheader1470

.lr.ph.i.i.i401.preheader1470:                    ; preds = %.lr.ph.i.i.i401.preheader, %middle.block
  %indvars.iv.i.i.i403.ph = phi i64 [ 0, %.lr.ph.i.i.i401.preheader ], [ %n.vec, %middle.block ]
  %.ph1471 = phi i32 [ 0, %.lr.ph.i.i.i401.preheader ], [ %i.pr, %middle.block ]
  %.ph1472 = phi i32 [ 0, %.lr.ph.i.i.i401.preheader ], [ %i.ps, %middle.block ]
  br label %.lr.ph.i.i.i401

.lr.ph.i.i.i401:                                  ; preds = %.lr.ph.i.i.i401.preheader1470, %.lr.ph.i.i.i401
  %indvars.iv.i.i.i403 = phi i64 [ %indvars.iv.next.i.i.i404, %.lr.ph.i.i.i401 ], [ %indvars.iv.i.i.i403.ph, %.lr.ph.i.i.i401.preheader1470 ] ; 2 uses
  %i.pt = phi i32 [ %i.py, %.lr.ph.i.i.i401 ], [ %.ph1471, %.lr.ph.i.i.i401.preheader1470 ]
  %i.pu = phi i32 [ %i.qb, %.lr.ph.i.i.i401 ], [ %.ph1472, %.lr.ph.i.i.i401.preheader1470 ]
  %i.pv = getelementptr inbounds nuw i8, ptr %i.kt, i64 %indvars.iv.i.i.i403
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !282 ; 2 uses
  %i.px = zext i8 %i.pw to i32
  %i.py = add i32 %i.pt, %i.px                    ; 2 uses
  %i.pz = icmp ne i8 %i.pw, 0
  %i.qa = zext i1 %i.pz to i32
  %i.qb = add i32 %i.pu, %i.qa                    ; 2 uses
  %indvars.iv.next.i.i.i404 = add nuw nsw i64 %indvars.iv.i.i.i403, 1 ; 2 uses
  %exitcond.not.i.i.i405 = icmp eq i64 %indvars.iv.next.i.i.i404, %i.cm
  br i1 %exitcond.not.i.i.i405, label %_ZN2OT20delta_row_encoding_t15calculate_charsEv.exit, label %.lr.ph.i.i.i401, !llvm.loop !1054

_ZN2OT20delta_row_encoding_t15calculate_charsEv.exit: ; preds = %.lr.ph.i.i.i401, %middle.block
  %.lcssa1238 = phi i32 [ %i.pr, %middle.block ], [ %i.py, %.lr.ph.i.i.i401 ]
  %.lcssa1237 = phi i32 [ %i.ps, %middle.block ], [ %i.qb, %.lr.ph.i.i.i401 ]
  %i.qc = zext i32 %.lcssa1237 to i64
  %i.qd = zext i32 %.lcssa1238 to i64
  %i.qe = shl i64 %i.qc, 33
  %i.qf = add i64 %i.qe, 42949672960
  %i.qg = or disjoint i64 %i.qf, %i.qd
  br label %_ZN2OT20delta_row_encoding_tC2EO11hb_vector_tIPKS1_IiLb0EELb0EEj.exit

_ZN2OT20delta_row_encoding_tC2EO11hb_vector_tIPKS1_IiLb0EELb0EEj.exit: ; preds = %.thread39.i.i.i, %bb.bb, %_ZN2OT20delta_row_encoding_t15calculate_charsEv.exit
  %.sroa.0554.1 = phi i32 [ 0, %bb.bb ], [ %i.kq, %_ZN2OT20delta_row_encoding_t15calculate_charsEv.exit ], [ -1, %.thread39.i.i.i ] ; 2 uses
  %.sroa.10557.0 = phi i32 [ 0, %bb.bb ], [ %i.f, %_ZN2OT20delta_row_encoding_t15calculate_charsEv.exit ], [ 0, %.thread39.i.i.i ]
  %.sroa.16561.1 = phi ptr [ null, %bb.bb ], [ %i.kt, %_ZN2OT20delta_row_encoding_t15calculate_charsEv.exit ], [ null, %.thread39.i.i.i ] ; 2 uses
  %.sroa.24.sroa.5.0 = phi i64 [ 0, %bb.bb ], [ %i.qg, %_ZN2OT20delta_row_encoding_t15calculate_charsEv.exit ], [ 0, %.thread39.i.i.i ]
  %i.qh = load i32, ptr %i.cn, align 4, !tbaa !323 ; 2 uses
  %i.qi = load i32, ptr %5, align 8, !tbaa !322   ; 5 uses
  %.not.i219 = icmp slt i32 %i.qh, %i.qi
  br i1 %.not.i219, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.thread, label %bb.bk

bb.bk:                                            ; preds = %_ZN2OT20delta_row_encoding_tC2EO11hb_vector_tIPKS1_IiLb0EELb0EEj.exit
  %i.qj = add i32 %i.qh, 1                        ; 2 uses
  %i.qk = icmp slt i32 %i.qi, 0
  br i1 %i.qk, label %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit, label %bb.bl, !prof !112

bb.bl:                                            ; preds = %bb.bk
  %.not.i.i220 = icmp ugt i32 %i.qj, %i.qi
  br i1 %.not.i.i220, label %.preheader.i.i, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.thread, !prof !112

.preheader.i.i:                                   ; preds = %bb.bl, %.preheader.i.i
  %.039.i.i = phi i32 [ %i.qn, %.preheader.i.i ], [ %i.qi, %bb.bl ] ; 2 uses
  %i.ql = lshr i32 %.039.i.i, 1
  %i.qm = add i32 %.039.i.i, 8
  %i.qn = add i32 %i.qm, %i.ql                    ; 6 uses
  %i.qo = icmp ugt i32 %i.qj, %i.qn
  br i1 %i.qo, label %.preheader.i.i, label %.thread.i.i, !llvm.loop !16

.thread.i.i:                                      ; preds = %.preheader.i.i
  %i.qp = icmp ugt i32 %i.qn, 107374182
  br i1 %i.qp, label %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE5allocEjb.exit.thread8.i, label %bb.bm, !prof !112

bb.bm:                                            ; preds = %.thread.i.i
  %i.qq = call noundef ptr @_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %i.qn) ; 2 uses
  %.not22.i.i = icmp eq ptr %i.qq, null
  br i1 %.not22.i.i, label %bb.bn, label %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE5allocEjb.exit.i, !prof !112

bb.bn:                                            ; preds = %bb.bm
  %i.qr = load i32, ptr %5, align 8, !tbaa !322   ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.qn, %i.qr
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE5allocEjb.exit.thread8.i, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.thread

_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE5allocEjb.exit.thread8.i: ; preds = %bb.bn, %.thread.i.i
  %.sink.i.ph.in.i = phi i32 [ %i.qi, %.thread.i.i ], [ %i.qr, %bb.bn ]
  %.sink.i.ph.i = xor i32 %.sink.i.ph.in.i, -1
  store i32 %.sink.i.ph.i, ptr %5, align 8, !tbaa !322
  br label %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit

_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE5allocEjb.exit.i: ; preds = %bb.bm
  store ptr %i.qq, ptr %i.co, align 8, !tbaa !324
  store i32 %i.qn, ptr %5, align 8, !tbaa !322
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.thread

_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.thread: ; preds = %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE5allocEjb.exit.i, %bb.bn, %bb.bl, %_ZN2OT20delta_row_encoding_tC2EO11hb_vector_tIPKS1_IiLb0EELb0EEj.exit
  %i.qs = load ptr, ptr %i.co, align 8, !tbaa !324
  %i.qt = load i32, ptr %i.cn, align 4, !tbaa !323 ; 2 uses
  %i.qu = add i32 %i.qt, 1
  store i32 %i.qu, ptr %i.cn, align 4, !tbaa !323
  %i.qv = zext i32 %i.qt to i64
  %i.qw = getelementptr inbounds nuw [40 x i8], ptr %i.qs, i64 %i.qv ; 7 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  store i32 %.sroa.0554.1, ptr %i.qw, align 8, !tbaa !331
  store i32 %.sroa.10557.0, ptr %i.qx, align 4, !tbaa !332
  store ptr %.sroa.16561.1, ptr %i.qy, align 8, !tbaa !333
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  store i64 %.sroa.24.sroa.5.0, ptr %i.qz, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qw, i64 28
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qw, i64 32
  store i32 %.sroa.0584.2631, ptr %i.ra, align 8, !tbaa !327
  store i32 %.sroa.12590.1632, ptr %i.rb, align 4, !tbaa !328
  store ptr %.sroa.21594.2633, ptr %i.rc, align 8, !tbaa !329
  br label %_ZN2OT20delta_row_encoding_tD2Ev.exit

_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit: ; preds = %bb.bk, %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE5allocEjb.exit.thread8.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(40) @_hb_NullPool, i64 40, i1 false)
  %i.rd = add i32 %.sroa.0584.2631, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.rd, -2
  br i1 %spec.select.i.i.i.i, label %bb.bo, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i

bb.bo:                                            ; preds = %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit
  call void @hb_free(ptr noundef %.sroa.21594.2633) #21
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i

_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i:     ; preds = %bb.bo, %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit
  %i.re = add i32 %.sroa.0554.1, -1
  %spec.select.i.i.i1.i = icmp ult i32 %i.re, -2
  br i1 %spec.select.i.i.i1.i, label %bb.bp, label %_ZN2OT20delta_row_encoding_tD2Ev.exit

bb.bp:                                            ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i
  call void @hb_free(ptr noundef %.sroa.16561.1) #21
  br label %_ZN2OT20delta_row_encoding_tD2Ev.exit

_ZN2OT20delta_row_encoding_tD2Ev.exit:            ; preds = %bb.bp, %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i, %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.thread, %bb.ba
  %.sroa.0584.4 = phi i32 [ %.sroa.0584.2631, %bb.ba ], [ 0, %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.thread ], [ 0, %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i ], [ 0, %bb.bp ]
  %.sroa.21594.4 = phi ptr [ %.sroa.21594.2633, %bb.ba ], [ null, %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.thread ], [ null, %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i ], [ null, %bb.bp ]
  %i.rf = add i32 %i.cx, %.0153833
  %.pre984 = load i32, ptr %i.by, align 4, !tbaa !360
  br label %.thread664

.thread664:                                       ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit180, %_ZN2OT20delta_row_encoding_tD2Ev.exit
  %i.rg = phi i32 [ %.pre984, %_ZN2OT20delta_row_encoding_tD2Ev.exit ], [ %i.cq, %_ZN11hb_vector_tIjLb0EEixEi.exit180 ] ; 2 uses
  %.1154671 = phi i32 [ %i.rf, %_ZN2OT20delta_row_encoding_tD2Ev.exit ], [ %.0153833, %_ZN11hb_vector_tIjLb0EEixEi.exit180 ]
  %.sroa.21594.5670 = phi ptr [ %.sroa.21594.4, %_ZN2OT20delta_row_encoding_tD2Ev.exit ], [ %.sroa.21594.0831, %_ZN11hb_vector_tIjLb0EEixEi.exit180 ] ; 2 uses
  %.sroa.0584.5669 = phi i32 [ %.sroa.0584.4, %_ZN2OT20delta_row_encoding_tD2Ev.exit ], [ %.sroa.0584.0830, %_ZN11hb_vector_tIjLb0EEixEi.exit180 ] ; 2 uses
  %indvars.iv.next962 = add nuw nsw i64 %indvars.iv961, 1 ; 2 uses
  %i.rh = zext i32 %i.rg to i64
  %i.ri = icmp samesign ult i64 %indvars.iv.next962, %i.rh
  br i1 %i.ri, label %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit, label %._crit_edge834, !llvm.loop !1055

._crit_edge834:                                   ; preds = %.thread664, %.critedge
  %.sroa.0584.0.lcssa = phi i32 [ 0, %.critedge ], [ %.sroa.0584.5669, %.thread664 ] ; 3 uses
  %.sroa.21594.0.lcssa = phi ptr [ null, %.critedge ], [ %.sroa.21594.5670, %.thread664 ] ; 3 uses
  br i1 %1, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge834
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.rk = load <2 x i32>, ptr %5, align 8, !tbaa !218
  %i.rl = load i32, ptr %5, align 8, !tbaa !218
  %i.rm = load <2 x i32>, ptr %i.rj, align 8, !tbaa !218
  store <2 x i32> %i.rk, ptr %i.rj, align 8, !tbaa !218
  store <2 x i32> %i.rm, ptr %5, align 8, !tbaa !218
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.rp = load ptr, ptr %i.rn, align 8, !tbaa !398
  %i.rq = load ptr, ptr %i.ro, align 8, !tbaa !398
  store ptr %i.rq, ptr %i.rn, align 8, !tbaa !398
  store ptr %i.rp, ptr %i.ro, align 8, !tbaa !398
  %i.rr = icmp sgt i32 %i.rl, -1
  br label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EED2Ev.exit

bb.br:                                            ; preds = %._crit_edge834
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.rs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !324
  %i.ru = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 11 uses
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !323
  %.sroa.2.8.insert.ext.i.i.i = zext i32 %i.rv to i64
  store ptr %i.rt, ptr %3, align 8
  %i.rw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.2.8.insert.ext.i.i.i, ptr %i.rw, align 8
  %i.rx = call { ptr, i64 } @_ZN10hb_array_tIN2OT20delta_row_encoding_tEE5qsortIZNS2_6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EESC_S6_(ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ry = load i32, ptr %i.ru, align 4, !tbaa !323 ; 3 uses
  %.not893 = icmp eq i32 %i.ry, 0
  br i1 %.not893, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEEC2EO11hb_vector_tI9hb_pair_tIS2_jELb0EE.exit.thread, label %.lr.ph851.preheader

_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEEC2EO11hb_vector_tI9hb_pair_tIS2_jELb0EE.exit.thread: ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i8 1, ptr %7, align 8, !tbaa !399
  %i.rz = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.rz, align 4, !tbaa !260
  %i.sa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.sa, align 8, !tbaa !1084
  %i.sb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sb, i8 0, i64 32, i1 false)
  br label %._crit_edge883.thread

.lr.ph851.preheader:                              ; preds = %bb.br
  %i.sc = zext i32 %i.ry to i64                   ; 2 uses
  br label %.lr.ph851

.loopexit:                                        ; preds = %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit, %.lr.ph851
  %.sroa.0535.1.lcssa = phi i32 [ %.sroa.0535.0846, %.lr.ph851 ], [ %.sroa.0535.2, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 3 uses
  %.sroa.10.1.lcssa = phi i32 [ %.sroa.10.0847, %.lr.ph851 ], [ %.sroa.10.2, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 8 uses
  %.sroa.16.1.lcssa = phi ptr [ %.sroa.16.0848, %.lr.ph851 ], [ %.sroa.16.2, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 10 uses
  %exitcond974.not = icmp eq i64 %indvars.iv.next971, %i.sc
  br i1 %exitcond974.not, label %._crit_edge852, label %.lr.ph851, !llvm.loop !1056

._crit_edge852:                                   ; preds = %.loopexit
  %.not13.i = icmp ult i32 %.sroa.10.1.lcssa, 2
  br i1 %.not13.i, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEEC2EO11hb_vector_tI9hb_pair_tIS2_jELb0EE.exit, label %.lr.ph12.i.preheader

.lr.ph12.i.preheader:                             ; preds = %._crit_edge852
  %i.sd = lshr i32 %.sroa.10.1.lcssa, 1
  %i.se = zext nneg i32 %i.sd to i64
  br label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %.lr.ph12.i.preheader, %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11bubble_downEj.exit.i
  %indvars.iv975.a = phi i64 [ %i.se, %.lr.ph12.i.preheader ], [ %indvars.iv.next976.a, %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11bubble_downEj.exit.i ] ; 2 uses
  %indvars.iv.next976.a = add nsw i64 %indvars.iv975.a, -1 ; 3 uses
  %i.sf = trunc nsw i64 %indvars.iv.next976.a to i32 ; 2 uses
  %i.sg = shl nuw i32 %i.sf, 1                    ; 2 uses
  %i.sh = or disjoint i32 %i.sg, 1                ; 2 uses
  %i.si = icmp ult i32 %i.sh, %.sroa.10.1.lcssa
  br i1 %i.si, label %.lr.ph.preheader.i, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11bubble_downEj.exit.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph12.i
  %.phi.trans.insert14.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.1.lcssa, i64 %indvars.iv.next976.a
  %.pre.i224 = load i64, ptr %.phi.trans.insert14.i, align 8, !tbaa !1086 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bv, %.lr.ph.preheader.i
  %.in.i = phi i32 [ %i.tc, %bb.bv ], [ %i.sg, %.lr.ph.preheader.i ]
  %i.sj = phi i32 [ %i.td, %bb.bv ], [ %i.sh, %.lr.ph.preheader.i ] ; 3 uses
  %.020.i8.i = phi i32 [ %.0.i.i, %bb.bv ], [ %i.sf, %.lr.ph.preheader.i ]
  %i.sk = add nuw i32 %.in.i, 2                   ; 4 uses
  %i.sl = icmp ult i32 %i.sk, %.sroa.10.1.lcssa   ; 2 uses
  %i.sm = zext i32 %.020.i8.i to i64
  %i.sn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.1.lcssa, i64 %i.sm ; 2 uses
  %i.so = zext i32 %i.sj to i64                   ; 2 uses
  %i.sp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.1.lcssa, i64 %i.so
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !1086 ; 3 uses
  %.not.i225 = icmp ugt i64 %.pre.i224, %i.sq
  br i1 %.not.i225, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i
  br i1 %i.sl, label %bb.bt, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11bubble_downEj.exit.i

bb.bt:                                            ; preds = %bb.bs
  %i.sr = zext i32 %i.sk to i64
  %i.ss = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.1.lcssa, i64 %i.sr
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !1086 ; 2 uses
  %.not7.i = icmp ugt i64 %.pre.i224, %i.st
  br i1 %.not7.i, label %.thread.i, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11bubble_downEj.exit.i

bb.bu:                                            ; preds = %.lr.ph.i
  br i1 %i.sl, label %..thread_crit_edge.i, label %bb.bv

..thread_crit_edge.i:                             ; preds = %bb.bu
  %.phi.trans.insert15.i = zext i32 %i.sk to i64
  %.phi.trans.insert16.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.1.lcssa, i64 %.phi.trans.insert15.i
  %.pre17.i = load i64, ptr %.phi.trans.insert16.i, align 8, !tbaa !1086
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.bt
  %i.su = phi i64 [ %.pre17.i, %..thread_crit_edge.i ], [ %i.st, %bb.bt ]
  %i.sv = icmp ult i64 %i.sq, %i.su
  %spec.select.i.i = select i1 %i.sv, i32 %i.sj, i32 %i.sk ; 2 uses
  %.pre18.i = zext i32 %spec.select.i.i to i64    ; 2 uses
  %.phi.trans.insert19.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.1.lcssa, i64 %.pre18.i
  %.pre20.i = load i64, ptr %.phi.trans.insert19.i, align 8, !tbaa !401
  br label %bb.bv

bb.bv:                                            ; preds = %.thread.i, %bb.bu
  %i.sw = phi i64 [ %i.sq, %bb.bu ], [ %.pre20.i, %.thread.i ]
  %.pre-phi.i = phi i64 [ %i.so, %bb.bu ], [ %.pre18.i, %.thread.i ]
  %.0.i.i = phi i32 [ %i.sj, %bb.bu ], [ %spec.select.i.i, %.thread.i ] ; 2 uses
  %i.sx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.1.lcssa, i64 %.pre-phi.i ; 2 uses
  store i64 %i.sw, ptr %i.sn, align 8, !tbaa !401
  store i64 %.pre.i224, ptr %i.sx, align 8, !tbaa !401
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sn, i64 8 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 8 ; 2 uses
  %i.ta = load i32, ptr %i.sy, align 8, !tbaa !218
  %i.tb = load i32, ptr %i.sz, align 8, !tbaa !218
  store i32 %i.tb, ptr %i.sy, align 8, !tbaa !218
  store i32 %i.ta, ptr %i.sz, align 8, !tbaa !218
  %i.tc = shl i32 %.0.i.i, 1                      ; 2 uses
  %i.td = or disjoint i32 %i.tc, 1                ; 2 uses
  %i.te = icmp ult i32 %i.td, %.sroa.10.1.lcssa
  br i1 %i.te, label %.lr.ph.i, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11bubble_downEj.exit.i

_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11bubble_downEj.exit.i: ; preds = %bb.bv, %bb.bt, %bb.bs, %.lr.ph12.i
  %i.tf = icmp sgt i64 %indvars.iv975.a, 1
  br i1 %i.tf, label %.lr.ph12.i, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEEC2EO11hb_vector_tI9hb_pair_tIS2_jELb0EE.exit, !llvm.loop !1057

_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEEC2EO11hb_vector_tI9hb_pair_tIS2_jELb0EE.exit: ; preds = %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11bubble_downEj.exit.i, %._crit_edge852
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i8 1, ptr %7, align 8, !tbaa !399
  %i.tg = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  store i32 0, ptr %i.tg, align 4, !tbaa !260
  %i.th = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 10 uses
  store i32 0, ptr %i.th, align 8, !tbaa !1084
  %i.ti = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ti, i8 0, i64 32, i1 false)
  %.not747878 = icmp eq i32 %.sroa.10.1.lcssa, 0
  br i1 %.not747878, label %._crit_edge883.thread, label %.lr.ph882

.lr.ph882:                                        ; preds = %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEEC2EO11hb_vector_tI9hb_pair_tIS2_jELb0EE.exit
  %i.tj = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.sink.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.tl = load i64, ptr @_hb_NullPool, align 16
  br label %bb.ci

.lr.ph851:                                        ; preds = %.lr.ph851.preheader, %.loopexit
  %indvars.iv964.a = phi i64 [ 0, %.lr.ph851.preheader ], [ %indvars.iv.next971, %.loopexit ] ; 3 uses
  %.sroa.16.0848 = phi ptr [ null, %.lr.ph851.preheader ], [ %.sroa.16.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.10.0847 = phi i32 [ 0, %.lr.ph851.preheader ], [ %.sroa.10.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0535.0846 = phi i32 [ 0, %.lr.ph851.preheader ], [ %.sroa.0535.1.lcssa, %.loopexit ] ; 2 uses
  %indvars.iv.next971 = add nuw nsw i64 %indvars.iv964.a, 1 ; 4 uses
  %i.tm = icmp samesign ult i64 %indvars.iv.next971, %i.sc
  br i1 %i.tm, label %.lr.ph842, label %.loopexit

.lr.ph842:                                        ; preds = %.lr.ph851
  %i.tn = shl nuw nsw i64 %indvars.iv964.a, 20
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph842, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit
  %indvars.iv966 = phi i64 [ %indvars.iv.next971, %.lr.ph842 ], [ %indvars.iv.next967, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 3 uses
  %.sroa.16.1839 = phi ptr [ %.sroa.16.0848, %.lr.ph842 ], [ %.sroa.16.2, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 9 uses
  %.sroa.10.1838 = phi i32 [ %.sroa.10.0847, %.lr.ph842 ], [ %.sroa.10.2, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 9 uses
  %.sroa.0535.1837 = phi i32 [ %.sroa.0535.0846, %.lr.ph842 ], [ %.sroa.0535.2, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 13 uses
  %i.to = load ptr, ptr %i.rs, align 8, !tbaa !324 ; 2 uses
  %i.tp = getelementptr inbounds nuw [40 x i8], ptr %i.to, i64 %indvars.iv964.a ; 7 uses
  %i.tq = getelementptr inbounds nuw [40 x i8], ptr %i.to, i64 %indvars.iv966 ; 6 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !404 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !404 ; 2 uses
  %i.tv = sub i32 %i.ts, %i.tu                    ; 3 uses
  %i.tw = icmp sgt i32 %i.tv, 0
  br i1 %i.tw, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tp, i64 28
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !405
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tp, i64 20
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !406
  %i.ub = mul nsw i32 %i.ty, %i.tv
  %.not.i229 = icmp sgt i32 %i.ua, %i.ub
  br i1 %.not.i229, label %bb.bz, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit

bb.by:                                            ; preds = %bb.bw
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tq, i64 28
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !405
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tq, i64 20
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !406
  %i.ug = mul i32 %i.ud, %i.tv
  %i.uh = add i32 %i.uf, %i.ug
  %i.ui = icmp slt i32 %i.uh, 1
  br i1 %i.ui, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tp, i64 4
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !332 ; 3 uses
  %.not.i.i.i226 = icmp eq i32 %i.uk, 0
  br i1 %.not.i.i.i226, label %_ZNK2OT20delta_row_encoding_t17gain_from_mergingERKS0_.exit, label %.lr.ph.i.i.i227

.lr.ph.i.i.i227:                                  ; preds = %bb.bz
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !333 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !333 ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.uk to i64  ; 3 uses
  %min.iters.check1387 = icmp ult i32 %i.uk, 8
  br i1 %min.iters.check1387, label %scalar.ph1386.preheader, label %vector.ph1388

vector.ph1388:                                    ; preds = %.lr.ph.i.i.i227
  %n.vec1389 = and i64 %wide.trip.count.i.i.i, 4294967288 ; 3 uses
  br label %vector.body1390

vector.body1390:                                  ; preds = %vector.body1390, %vector.ph1388
  %index1391 = phi i64 [ 0, %vector.ph1388 ], [ %index.next1400, %vector.body1390 ] ; 3 uses
  %vec.phi1392.a = phi <4 x i32> [ zeroinitializer, %vector.ph1388 ], [ %i.ux, %vector.body1390 ]
  %vec.phi1393.a = phi <4 x i32> [ zeroinitializer, %vector.ph1388 ], [ %i.uy, %vector.body1390 ]
  %vec.phi1394 = phi <4 x i32> [ zeroinitializer, %vector.ph1388 ], [ %i.vd, %vector.body1390 ]
  %vec.phi1395 = phi <4 x i32> [ zeroinitializer, %vector.ph1388 ], [ %i.ve, %vector.body1390 ]
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 %index1391 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uo, i64 %index1391 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.up, i64 4
  %wide.load1396.a = load <4 x i8>, ptr %i.up, align 1, !tbaa !282
  %wide.load1397.a = load <4 x i8>, ptr %i.ur, align 1, !tbaa !282
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 4
  %wide.load1398 = load <4 x i8>, ptr %i.uq, align 1, !tbaa !282
  %wide.load1399 = load <4 x i8>, ptr %i.us, align 1, !tbaa !282
  %i.ut = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load1396.a, <4 x i8> %wide.load1398) ; 2 uses
  %i.uu = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load1397.a, <4 x i8> %wide.load1399) ; 2 uses
  %i.uv = zext <4 x i8> %i.ut to <4 x i32>
  %i.uw = zext <4 x i8> %i.uu to <4 x i32>
  %i.ux = add <4 x i32> %vec.phi1392.a, %i.uv     ; 2 uses
  %i.uy = add <4 x i32> %vec.phi1393.a, %i.uw     ; 2 uses
  %i.uz = icmp ne <4 x i8> %i.ut, zeroinitializer
  %i.va = icmp ne <4 x i8> %i.uu, zeroinitializer
  %i.vb = zext <4 x i1> %i.uz to <4 x i32>
  %i.vc = zext <4 x i1> %i.va to <4 x i32>
  %i.vd = add <4 x i32> %vec.phi1394, %i.vb       ; 2 uses
  %i.ve = add <4 x i32> %vec.phi1395, %i.vc       ; 2 uses
  %index.next1400 = add nuw i64 %index1391, 8     ; 2 uses
  %i.vf = icmp eq i64 %index.next1400, %n.vec1389
  br i1 %i.vf, label %middle.block1401, label %vector.body1390, !llvm.loop !1058

middle.block1401:                                 ; preds = %vector.body1390
  %bin.rdx1402 = add <4 x i32> %i.uy, %i.ux
  %i.vg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1402) ; 2 uses
  %bin.rdx1403 = add <4 x i32> %i.ve, %i.vd
  %i.vh = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1403) ; 2 uses
  %cmp.n1404 = icmp eq i64 %n.vec1389, %wide.trip.count.i.i.i
  br i1 %cmp.n1404, label %._crit_edge.loopexit.i.i.i, label %scalar.ph1386.preheader

scalar.ph1386.preheader:                          ; preds = %.lr.ph.i.i.i227, %middle.block1401
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i227 ], [ %n.vec1389, %middle.block1401 ]
  %.ph1459 = phi i32 [ 0, %.lr.ph.i.i.i227 ], [ %i.vg, %middle.block1401 ]
  %.ph1460 = phi i32 [ 0, %.lr.ph.i.i.i227 ], [ %i.vh, %middle.block1401 ]
  br label %scalar.ph1386

._crit_edge.loopexit.i.i.i:                       ; preds = %scalar.ph1386, %middle.block1401
  %.lcssa1224 = phi i32 [ %i.vg, %middle.block1401 ], [ %i.vu, %scalar.ph1386 ]
  %.lcssa1223 = phi i32 [ %i.vh, %middle.block1401 ], [ %i.vx, %scalar.ph1386 ]
  %i.vi = zext i32 %.lcssa1223 to i64
  %i.vj = shl nuw i64 %i.vi, 32
  %i.vk = zext i32 %.lcssa1224 to i64
  %i.vl = or disjoint i64 %i.vj, %i.vk
  br label %_ZNK2OT20delta_row_encoding_t17gain_from_mergingERKS0_.exit

scalar.ph1386:                                    ; preds = %scalar.ph1386.preheader, %scalar.ph1386
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph1386 ], [ %indvars.iv.i.i.i.ph, %scalar.ph1386.preheader ] ; 3 uses
  %i.vm = phi i32 [ %i.vu, %scalar.ph1386 ], [ %.ph1459, %scalar.ph1386.preheader ]
  %i.vn = phi i32 [ %i.vx, %scalar.ph1386 ], [ %.ph1460, %scalar.ph1386.preheader ]
  %i.vo = getelementptr inbounds nuw i8, ptr %i.um, i64 %indvars.iv.i.i.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.uo, i64 %indvars.iv.i.i.i
  %i.vq = load i8, ptr %i.vo, align 1, !tbaa !282
  %i.vr = load i8, ptr %i.vp, align 1, !tbaa !282
  %i.vs = call i8 @llvm.umax.i8(i8 %i.vq, i8 %i.vr) ; 2 uses
  %i.vt = zext i8 %i.vs to i32
  %i.vu = add i32 %i.vm, %i.vt                    ; 2 uses
  %i.vv = icmp ne i8 %i.vs, 0
  %i.vw = zext i1 %i.vv to i32
  %i.vx = add i32 %i.vn, %i.vw                    ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %scalar.ph1386, !llvm.loop !1059

_ZNK2OT20delta_row_encoding_t17gain_from_mergingERKS0_.exit: ; preds = %bb.bz, %._crit_edge.loopexit.i.i.i
  %.sroa.0.0.insert.insert.i.i.i.i = phi i64 [ 0, %bb.bz ], [ %i.vl, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.insert.insert.i.i.i.i to i32 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.tp, i64 20
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !406
  %i.wa = getelementptr inbounds nuw i8, ptr %i.tq, i64 20
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !406
  %.neg.i = sub i32 %i.tu, %.sroa.0.0.extract.trunc.i
  %i.wc = getelementptr inbounds nuw i8, ptr %i.tp, i64 28
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !405
  %.neg18.i = mul i32 %i.wd, %.neg.i
  %.neg19.i = sub i32 %i.ts, %.sroa.0.0.extract.trunc.i
  %i.we = getelementptr inbounds nuw i8, ptr %i.tq, i64 28
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !405
  %.neg20.i = mul i32 %i.wf, %.neg19.i
  %sh.diff.i = lshr i64 %.sroa.0.0.insert.insert.i.i.i.i, 31
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.wg = and i32 %tr.sh.diff.i, -2
  %.neg23.i = add i32 %i.vz, -10
  %i.wh = add i32 %.neg23.i, %i.wb
  %i.wi = sub i32 %i.wh, %i.wg
  %i.wj = add i32 %i.wi, %.neg18.i
  %i.wk = add i32 %i.wj, %.neg20.i                ; 2 uses
  %i.wl = icmp sgt i32 %i.wk, 0
  br i1 %i.wl, label %bb.ca, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit

bb.ca:                                            ; preds = %_ZNK2OT20delta_row_encoding_t17gain_from_mergingERKS0_.exit
  %i.wm = xor i32 %i.wk, -1
  %i.wn = zext i32 %i.wm to i64
  %i.wo = shl i64 %i.wn, 40
  %i.wp = or i64 %i.tn, %i.wo
  %i.wq = or i64 %i.wp, %indvars.iv966
  %.not.i230 = icmp slt i32 %.sroa.10.1838, %.sroa.0535.1837
  %.pre996 = add i32 %.sroa.10.1838, 1            ; 6 uses
  br i1 %.not.i230, label %.critedge.i234, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.wr = icmp slt i32 %.sroa.0535.1837, 0
  br i1 %i.wr, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE5allocEjb.exit, label %bb.cc, !prof !112

bb.cc:                                            ; preds = %bb.cb
  %.not.i408 = icmp ugt i32 %.pre996, %.sroa.0535.1837
  br i1 %.not.i408, label %.preheader.i410, label %.critedge.i234, !prof !112

.preheader.i410:                                  ; preds = %bb.cc, %.preheader.i410
  %.043.i411 = phi i32 [ %i.wu, %.preheader.i410 ], [ %.sroa.0535.1837, %bb.cc ] ; 2 uses
  %i.ws = lshr i32 %.043.i411, 1
  %i.wt = add i32 %.043.i411, 8
  %i.wu = add i32 %i.wt, %i.ws                    ; 8 uses
  %i.wv = icmp ugt i32 %.pre996, %i.wu
  br i1 %i.wv, label %.preheader.i410, label %.thread.i412, !llvm.loop !1060

.thread.i412:                                     ; preds = %.preheader.i410
  %i.ww = icmp ugt i32 %i.wu, 268435455
  br i1 %i.ww, label %.critedge.i424, label %bb.cd, !prof !112

.critedge.i424:                                   ; preds = %.thread.i412
  %i.wx = xor i32 %.sroa.0535.1837, -1
  br label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE5allocEjb.exit

bb.cd:                                            ; preds = %.thread.i412
  %.not49.i414 = icmp eq i32 %.sroa.0535.1837, 0
  br i1 %.not49.i414, label %bb.ce, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i

bb.ce:                                            ; preds = %bb.cd
  %.not9.i.i.i421 = icmp eq ptr %.sroa.16.1839, null
  br i1 %.not9.i.i.i421, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.wy = shl nuw i32 %i.wu, 4
  %i.wz = zext i32 %i.wy to i64
  %i.xa = call ptr @hb_malloc(i64 noundef %i.wz) #21 ; 4 uses
  %.not10.i.i.i422 = icmp eq ptr %i.xa, null
  br i1 %.not10.i.i.i422, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i, label %bb.cg, !prof !112

bb.cg:                                            ; preds = %bb.cf
  %.not.i.i.i.i423 = icmp eq i32 %.sroa.10.1838, 0
  br i1 %.not.i.i.i.i423, label %.critedge.i234, label %bb.ch, !prof !112

bb.ch:                                            ; preds = %bb.cg
  %i.xb = zext i32 %.sroa.10.1838 to i64
  %i.xc = shl nuw nsw i64 %i.xb, 4
end_hunk_0
