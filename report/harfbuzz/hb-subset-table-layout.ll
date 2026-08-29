Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-layout?download=true
inline.NumInlined: 23696
inline.NumDeleted: 10355
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN2OT17item_variations_t16as_item_varstoreEbb:bb.a
  %i.pr = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx1249 = add <4 x i32> %i.pp, %i.po
  %i.ps = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1249) ; 2 uses
  br i1 %cmp.n, label %_ZN2OT20delta_row_encoding_t15calculate_charsEv.exit, label %.lr.ph.i.i.i401.preheader1471

.lr.ph.i.i.i401.preheader1471:                    ; preds = %.lr.ph.i.i.i401.preheader, %middle.block
  %indvars.iv.i.i.i403.ph = phi i64 [ 0, %.lr.ph.i.i.i401.preheader ], [ %n.vec, %middle.block ]
  %.ph1472 = phi i32 [ 0, %.lr.ph.i.i.i401.preheader ], [ %i.pr, %middle.block ]
  %.ph1473 = phi i32 [ 0, %.lr.ph.i.i.i401.preheader ], [ %i.ps, %middle.block ]
  br label %.lr.ph.i.i.i401

.lr.ph.i.i.i401:                                  ; preds = %.lr.ph.i.i.i401.preheader1471, %.lr.ph.i.i.i401
  %indvars.iv.i.i.i403 = phi i64 [ %indvars.iv.next.i.i.i404, %.lr.ph.i.i.i401 ], [ %indvars.iv.i.i.i403.ph, %.lr.ph.i.i.i401.preheader1471 ] ; 2 uses
  %i.pt = phi i32 [ %i.py, %.lr.ph.i.i.i401 ], [ %.ph1472, %.lr.ph.i.i.i401.preheader1471 ]
  %i.pu = phi i32 [ %i.qb, %.lr.ph.i.i.i401 ], [ %.ph1473, %.lr.ph.i.i.i401.preheader1471 ]
  %i.pv = getelementptr inbounds nuw i8, ptr %i.kt, i64 %indvars.iv.i.i.i403
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !312 ; 2 uses
  %i.px = zext i8 %i.pw to i32
  %i.py = add i32 %i.pt, %i.px                    ; 2 uses
  %i.pz = icmp ne i8 %i.pw, 0
  %i.qa = zext i1 %i.pz to i32
  %i.qb = add i32 %i.pu, %i.qa                    ; 2 uses
  %indvars.iv.next.i.i.i404 = add nuw nsw i64 %indvars.iv.i.i.i403, 1 ; 2 uses
  %exitcond.not.i.i.i405 = icmp eq i64 %indvars.iv.next.i.i.i404, %i.cm
  br i1 %exitcond.not.i.i.i405, label %_ZN2OT20delta_row_encoding_t15calculate_charsEv.exit, label %.lr.ph.i.i.i401, !llvm.loop !472

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
  %i.qh = load i32, ptr %i.cn, align 4, !tbaa !368 ; 2 uses
  %i.qi = load i32, ptr %5, align 8, !tbaa !367   ; 5 uses
  %.not.i219 = icmp slt i32 %i.qh, %i.qi
  br i1 %.not.i219, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.thread, label %bb.bk

bb.bk:                                            ; preds = %_ZN2OT20delta_row_encoding_tC2EO11hb_vector_tIPKS1_IiLb0EELb0EEj.exit
  %i.qj = add i32 %i.qh, 1                        ; 2 uses
  %i.qk = icmp slt i32 %i.qi, 0
  br i1 %i.qk, label %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit, label %bb.bl, !prof !21

bb.bl:                                            ; preds = %bb.bk
  %.not.i.i220 = icmp ugt i32 %i.qj, %i.qi
  br i1 %.not.i.i220, label %.preheader.i.i, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.thread, !prof !21

.preheader.i.i:                                   ; preds = %bb.bl, %.preheader.i.i
  %.039.i.i = phi i32 [ %i.qn, %.preheader.i.i ], [ %i.qi, %bb.bl ] ; 2 uses
  %i.ql = lshr i32 %.039.i.i, 1
  %i.qm = add i32 %.039.i.i, 8
  %i.qn = add i32 %i.qm, %i.ql                    ; 6 uses
  %i.qo = icmp ugt i32 %i.qj, %i.qn
  br i1 %i.qo, label %.preheader.i.i, label %.thread.i.i, !llvm.loop !473

.thread.i.i:                                      ; preds = %.preheader.i.i
  %i.qp = icmp ugt i32 %i.qn, 107374182
  br i1 %i.qp, label %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE5allocEjb.exit.thread8.i, label %bb.bm, !prof !21

bb.bm:                                            ; preds = %.thread.i.i
  %i.qq = call noundef ptr @_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %i.qn) ; 2 uses
  %.not22.i.i = icmp eq ptr %i.qq, null
  br i1 %.not22.i.i, label %bb.bn, label %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE5allocEjb.exit.i, !prof !21

bb.bn:                                            ; preds = %bb.bm
  %i.qr = load i32, ptr %5, align 8, !tbaa !367   ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.qn, %i.qr
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE5allocEjb.exit.thread8.i, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.thread

_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE5allocEjb.exit.thread8.i: ; preds = %bb.bn, %.thread.i.i
  %.sink.i.ph.in.i = phi i32 [ %i.qi, %.thread.i.i ], [ %i.qr, %bb.bn ]
  %.sink.i.ph.i = xor i32 %.sink.i.ph.in.i, -1
  store i32 %.sink.i.ph.i, ptr %5, align 8, !tbaa !367
  br label %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit

_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE5allocEjb.exit.i: ; preds = %bb.bm
  store ptr %i.qq, ptr %i.co, align 8, !tbaa !369
  store i32 %i.qn, ptr %5, align 8, !tbaa !367
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.thread

_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.thread: ; preds = %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE5allocEjb.exit.i, %bb.bn, %bb.bl, %_ZN2OT20delta_row_encoding_tC2EO11hb_vector_tIPKS1_IiLb0EELb0EEj.exit
  %i.qs = load ptr, ptr %i.co, align 8, !tbaa !369
  %i.qt = load i32, ptr %i.cn, align 4, !tbaa !368 ; 2 uses
  %i.qu = add i32 %i.qt, 1
  store i32 %i.qu, ptr %i.cn, align 4, !tbaa !368
  %i.qv = zext i32 %i.qt to i64
  %i.qw = getelementptr inbounds nuw [40 x i8], ptr %i.qs, i64 %i.qv ; 7 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  store i32 %.sroa.0554.1, ptr %i.qw, align 8, !tbaa !375
  store i32 %.sroa.10557.0, ptr %i.qx, align 4, !tbaa !377
  store ptr %.sroa.16561.1, ptr %i.qy, align 8, !tbaa !378
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  store i64 %.sroa.24.sroa.5.0, ptr %i.qz, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qw, i64 28
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qw, i64 32
  store i32 %.sroa.0584.2631, ptr %i.ra, align 8, !tbaa !370
  store i32 %.sroa.12590.1632, ptr %i.rb, align 4, !tbaa !373
  store ptr %.sroa.21594.2633, ptr %i.rc, align 8, !tbaa !374
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
  %.pre984 = load i32, ptr %i.by, align 4, !tbaa !410
  br label %.thread664

.thread664:                                       ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit180, %_ZN2OT20delta_row_encoding_tD2Ev.exit
  %i.rg = phi i32 [ %.pre984, %_ZN2OT20delta_row_encoding_tD2Ev.exit ], [ %i.cq, %_ZN11hb_vector_tIjLb0EEixEi.exit180 ] ; 2 uses
  %.1154671 = phi i32 [ %i.rf, %_ZN2OT20delta_row_encoding_tD2Ev.exit ], [ %.0153833, %_ZN11hb_vector_tIjLb0EEixEi.exit180 ]
  %.sroa.21594.5670 = phi ptr [ %.sroa.21594.4, %_ZN2OT20delta_row_encoding_tD2Ev.exit ], [ %.sroa.21594.0831, %_ZN11hb_vector_tIjLb0EEixEi.exit180 ] ; 2 uses
  %.sroa.0584.5669 = phi i32 [ %.sroa.0584.4, %_ZN2OT20delta_row_encoding_tD2Ev.exit ], [ %.sroa.0584.0830, %_ZN11hb_vector_tIjLb0EEixEi.exit180 ] ; 2 uses
  %indvars.iv.next962 = add nuw nsw i64 %indvars.iv961, 1 ; 2 uses
  %i.rh = zext i32 %i.rg to i64
  %i.ri = icmp samesign ult i64 %indvars.iv.next962, %i.rh
  br i1 %i.ri, label %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit, label %._crit_edge834, !llvm.loop !474

._crit_edge834:                                   ; preds = %.thread664, %.critedge
  %.sroa.0584.0.lcssa = phi i32 [ 0, %.critedge ], [ %.sroa.0584.5669, %.thread664 ] ; 3 uses
  %.sroa.21594.0.lcssa = phi ptr [ null, %.critedge ], [ %.sroa.21594.5670, %.thread664 ] ; 3 uses
  br i1 %1, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge834
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.rk = load <2 x i32>, ptr %5, align 8, !tbaa !139
  %i.rl = load i32, ptr %5, align 8, !tbaa !139
  %i.rm = load <2 x i32>, ptr %i.rj, align 8, !tbaa !139
  store <2 x i32> %i.rk, ptr %i.rj, align 8, !tbaa !139
  store <2 x i32> %i.rm, ptr %5, align 8, !tbaa !139
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.rp = load ptr, ptr %i.rn, align 8, !tbaa !475
  %i.rq = load ptr, ptr %i.ro, align 8, !tbaa !475
  store ptr %i.rq, ptr %i.rn, align 8, !tbaa !475
  store ptr %i.rp, ptr %i.ro, align 8, !tbaa !475
  %i.rr = icmp sgt i32 %i.rl, -1
  br label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EED2Ev.exit

bb.br:                                            ; preds = %._crit_edge834
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.rs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !369
  %i.ru = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 11 uses
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !368
  %.sroa.2.8.insert.ext.i.i.i = zext i32 %i.rv to i64
  store ptr %i.rt, ptr %3, align 8
  %i.rw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.2.8.insert.ext.i.i.i, ptr %i.rw, align 8
  %i.rx = call { ptr, i64 } @_ZN10hb_array_tIN2OT20delta_row_encoding_tEE5qsortIZNS2_6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EESC_S6_(ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ry = load i32, ptr %i.ru, align 4, !tbaa !368 ; 3 uses
  %.not893 = icmp eq i32 %i.ry, 0
  br i1 %.not893, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEEC2EO11hb_vector_tI9hb_pair_tIS2_jELb0EE.exit.thread, label %.lr.ph851.preheader

_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEEC2EO11hb_vector_tI9hb_pair_tIS2_jELb0EE.exit.thread: ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i8 1, ptr %7, align 8, !tbaa !476
  %i.rz = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.rz, align 4, !tbaa !253
  %i.sa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.sa, align 8, !tbaa !477
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
  %indvars.iv.next965 = add nuw nsw i64 %indvars.iv964, 1
  %exitcond974.not = icmp eq i64 %indvars.iv.next971, %i.sc
  br i1 %exitcond974.not, label %._crit_edge852, label %.lr.ph851, !llvm.loop !478

._crit_edge852:                                   ; preds = %.loopexit
  %.not13.i = icmp ult i32 %.sroa.10.1.lcssa, 2
  br i1 %.not13.i, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEEC2EO11hb_vector_tI9hb_pair_tIS2_jELb0EE.exit, label %.lr.ph12.i.preheader

.lr.ph12.i.preheader:                             ; preds = %._crit_edge852
  %8 = lshr i32 %.sroa.10.1.lcssa, 1
  %9 = zext nneg i32 %8 to i64
  br label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %.lr.ph12.i.preheader, %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11bubble_downEj.exit.i
  %indvars.iv975 = phi i64 [ %9, %.lr.ph12.i.preheader ], [ %indvars.iv.next976, %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11bubble_downEj.exit.i ] ; 2 uses
  %indvars.iv.next976 = add nsw i64 %indvars.iv975, -1 ; 3 uses
  %10 = trunc nsw i64 %indvars.iv.next976 to i32  ; 2 uses
  %11 = shl nuw i32 %10, 1                        ; 2 uses
  %12 = or disjoint i32 %11, 1                    ; 2 uses
  %i.sd = icmp ult i32 %12, %.sroa.10.1.lcssa
  br i1 %i.sd, label %.lr.ph.preheader.i, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11bubble_downEj.exit.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph12.i
  %.phi.trans.insert14.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.1.lcssa, i64 %indvars.iv.next976
  %.pre.i224 = load i64, ptr %.phi.trans.insert14.i, align 8, !tbaa !479 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bv, %.lr.ph.preheader.i
  %.in.i = phi i32 [ %i.sx, %bb.bv ], [ %11, %.lr.ph.preheader.i ]
  %i.se = phi i32 [ %i.sy, %bb.bv ], [ %12, %.lr.ph.preheader.i ] ; 3 uses
  %.020.i8.i = phi i32 [ %.0.i.i, %bb.bv ], [ %10, %.lr.ph.preheader.i ]
  %i.sf = add nuw i32 %.in.i, 2                   ; 4 uses
  %i.sg = icmp ult i32 %i.sf, %.sroa.10.1.lcssa   ; 2 uses
  %i.sh = zext i32 %.020.i8.i to i64
  %i.si = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.1.lcssa, i64 %i.sh ; 2 uses
  %i.sj = zext i32 %i.se to i64                   ; 2 uses
  %i.sk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.1.lcssa, i64 %i.sj
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !479 ; 3 uses
  %.not.i225 = icmp ugt i64 %.pre.i224, %i.sl
  br i1 %.not.i225, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i
  br i1 %i.sg, label %bb.bt, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11bubble_downEj.exit.i

bb.bt:                                            ; preds = %bb.bs
  %i.sm = zext i32 %i.sf to i64
  %i.sn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.1.lcssa, i64 %i.sm
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !479 ; 2 uses
  %.not7.i = icmp ugt i64 %.pre.i224, %i.so
  br i1 %.not7.i, label %.thread.i, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11bubble_downEj.exit.i

bb.bu:                                            ; preds = %.lr.ph.i
  br i1 %i.sg, label %..thread_crit_edge.i, label %bb.bv

..thread_crit_edge.i:                             ; preds = %bb.bu
  %.phi.trans.insert15.i = zext i32 %i.sf to i64
  %.phi.trans.insert16.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.1.lcssa, i64 %.phi.trans.insert15.i
  %.pre17.i = load i64, ptr %.phi.trans.insert16.i, align 8, !tbaa !479
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.bt
  %i.sp = phi i64 [ %.pre17.i, %..thread_crit_edge.i ], [ %i.so, %bb.bt ]
  %i.sq = icmp ult i64 %i.sl, %i.sp
  %spec.select.i.i = select i1 %i.sq, i32 %i.se, i32 %i.sf ; 2 uses
  %.pre18.i = zext i32 %spec.select.i.i to i64    ; 2 uses
  %.phi.trans.insert19.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.1.lcssa, i64 %.pre18.i
  %.pre20.i = load i64, ptr %.phi.trans.insert19.i, align 8, !tbaa !482
  br label %bb.bv

bb.bv:                                            ; preds = %.thread.i, %bb.bu
  %i.sr = phi i64 [ %i.sl, %bb.bu ], [ %.pre20.i, %.thread.i ]
  %.pre-phi.i = phi i64 [ %i.sj, %bb.bu ], [ %.pre18.i, %.thread.i ]
  %.0.i.i = phi i32 [ %i.se, %bb.bu ], [ %spec.select.i.i, %.thread.i ] ; 2 uses
  %i.ss = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.1.lcssa, i64 %.pre-phi.i ; 2 uses
  store i64 %i.sr, ptr %i.si, align 8, !tbaa !482
  store i64 %.pre.i224, ptr %i.ss, align 8, !tbaa !482
  %i.st = getelementptr inbounds nuw i8, ptr %i.si, i64 8 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 8 ; 2 uses
  %i.sv = load i32, ptr %i.st, align 8, !tbaa !139
  %i.sw = load i32, ptr %i.su, align 8, !tbaa !139
  store i32 %i.sw, ptr %i.st, align 8, !tbaa !139
  store i32 %i.sv, ptr %i.su, align 8, !tbaa !139
  %i.sx = shl i32 %.0.i.i, 1                      ; 2 uses
  %i.sy = or disjoint i32 %i.sx, 1                ; 2 uses
  %i.sz = icmp ult i32 %i.sy, %.sroa.10.1.lcssa
  br i1 %i.sz, label %.lr.ph.i, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11bubble_downEj.exit.i

_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11bubble_downEj.exit.i: ; preds = %bb.bv, %bb.bt, %bb.bs, %.lr.ph12.i
  %i.ta = icmp sgt i64 %indvars.iv975, 1
  br i1 %i.ta, label %.lr.ph12.i, label %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEEC2EO11hb_vector_tI9hb_pair_tIS2_jELb0EE.exit, !llvm.loop !483

_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEEC2EO11hb_vector_tI9hb_pair_tIS2_jELb0EE.exit: ; preds = %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEE11bubble_downEj.exit.i, %._crit_edge852
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i8 1, ptr %7, align 8, !tbaa !476
  %i.tb = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  store i32 0, ptr %i.tb, align 4, !tbaa !253
  %i.tc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 10 uses
  store i32 0, ptr %i.tc, align 8, !tbaa !477
  %i.td = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.td, i8 0, i64 32, i1 false)
  %.not747878 = icmp eq i32 %.sroa.10.1.lcssa, 0
  br i1 %.not747878, label %._crit_edge883.thread, label %.lr.ph882

.lr.ph882:                                        ; preds = %_ZN19hb_priority_queue_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEEC2EO11hb_vector_tI9hb_pair_tIS2_jELb0EE.exit
  %i.te = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.sink.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.tg = load i64, ptr @_hb_NullPool, align 16
  br label %bb.ci

.lr.ph851:                                        ; preds = %.lr.ph851.preheader, %.loopexit
  %indvars.iv970 = phi i64 [ 0, %.lr.ph851.preheader ], [ %indvars.iv.next971, %.loopexit ] ; 3 uses
  %indvars.iv964 = phi i64 [ 1, %.lr.ph851.preheader ], [ %indvars.iv.next965, %.loopexit ] ; 2 uses
  %.sroa.16.0848 = phi ptr [ null, %.lr.ph851.preheader ], [ %.sroa.16.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.10.0847 = phi i32 [ 0, %.lr.ph851.preheader ], [ %.sroa.10.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0535.0846 = phi i32 [ 0, %.lr.ph851.preheader ], [ %.sroa.0535.1.lcssa, %.loopexit ] ; 2 uses
  %indvars.iv.next971 = add nuw nsw i64 %indvars.iv970, 1 ; 3 uses
  %i.th = icmp samesign ult i64 %indvars.iv.next971, %i.sc
  br i1 %i.th, label %.lr.ph842, label %.loopexit

.lr.ph842:                                        ; preds = %.lr.ph851
  %i.ti = shl nuw nsw i64 %indvars.iv970, 20
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph842, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit
  %indvars.iv966 = phi i64 [ %indvars.iv964, %.lr.ph842 ], [ %indvars.iv.next967, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 3 uses
  %.sroa.16.1839 = phi ptr [ %.sroa.16.0848, %.lr.ph842 ], [ %.sroa.16.2, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 9 uses
  %.sroa.10.1838 = phi i32 [ %.sroa.10.0847, %.lr.ph842 ], [ %.sroa.10.2, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 9 uses
  %.sroa.0535.1837 = phi i32 [ %.sroa.0535.0846, %.lr.ph842 ], [ %.sroa.0535.2, %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 13 uses
  %i.tj = load ptr, ptr %i.rs, align 8, !tbaa !369 ; 2 uses
  %i.tk = getelementptr inbounds nuw [40 x i8], ptr %i.tj, i64 %indvars.iv970 ; 7 uses
  %i.tl = getelementptr inbounds nuw [40 x i8], ptr %i.tj, i64 %indvars.iv966 ; 6 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %i.tn = load i32, ptr %i.tm, align 8, !tbaa !484 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.tp = load i32, ptr %i.to, align 8, !tbaa !484 ; 2 uses
  %i.tq = sub i32 %i.tn, %i.tp                    ; 3 uses
  %i.tr = icmp sgt i32 %i.tq, 0
  br i1 %i.tr, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tk, i64 28
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !487
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tk, i64 20
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !488
  %i.tw = mul nsw i32 %i.tt, %i.tq
  %.not.i229 = icmp sgt i32 %i.tv, %i.tw
  br i1 %.not.i229, label %bb.bz, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit

bb.by:                                            ; preds = %bb.bw
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tl, i64 28
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !487
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tl, i64 20
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !488
  %i.ub = mul i32 %i.ty, %i.tq
  %i.uc = add i32 %i.ua, %i.ub
  %i.ud = icmp slt i32 %i.uc, 1
  br i1 %i.ud, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EE4pushIJS4_EEEPS4_DpOT_.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tk, i64 4
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !377 ; 3 uses
  %.not.i.i.i226 = icmp eq i32 %i.uf, 0
  br i1 %.not.i.i.i226, label %_ZNK2OT20delta_row_encoding_t17gain_from_mergingERKS0_.exit, label %.lr.ph.i.i.i227

.lr.ph.i.i.i227:                                  ; preds = %bb.bz
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !378 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !378 ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.uf to i64  ; 3 uses
  %min.iters.check1388 = icmp ult i32 %i.uf, 8
  br i1 %min.iters.check1388, label %scalar.ph1387.preheader, label %vector.ph1389

vector.ph1389:                                    ; preds = %.lr.ph.i.i.i227
  %n.vec1390 = and i64 %wide.trip.count.i.i.i, 4294967288 ; 3 uses
  br label %vector.body1391

vector.body1391:                                  ; preds = %vector.body1391, %vector.ph1389
  %index1392 = phi i64 [ 0, %vector.ph1389 ], [ %index.next1401, %vector.body1391 ] ; 3 uses
  %vec.phi1393 = phi <4 x i32> [ zeroinitializer, %vector.ph1389 ], [ %i.us, %vector.body1391 ]
  %vec.phi1394 = phi <4 x i32> [ zeroinitializer, %vector.ph1389 ], [ %i.ut, %vector.body1391 ]
  %vec.phi1395 = phi <4 x i32> [ zeroinitializer, %vector.ph1389 ], [ %i.uy, %vector.body1391 ]
  %vec.phi1396 = phi <4 x i32> [ zeroinitializer, %vector.ph1389 ], [ %i.uz, %vector.body1391 ]
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 %index1392 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 %index1392 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  %wide.load1397 = load <4 x i8>, ptr %i.uk, align 1, !tbaa !312
  %wide.load1398 = load <4 x i8>, ptr %i.um, align 1, !tbaa !312
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 4
  %wide.load1399 = load <4 x i8>, ptr %i.ul, align 1, !tbaa !312
  %wide.load1400 = load <4 x i8>, ptr %i.un, align 1, !tbaa !312
  %i.uo = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load1397, <4 x i8> %wide.load1399) ; 2 uses
  %i.up = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load1398, <4 x i8> %wide.load1400) ; 2 uses
  %i.uq = zext <4 x i8> %i.uo to <4 x i32>
  %i.ur = zext <4 x i8> %i.up to <4 x i32>
  %i.us = add <4 x i32> %vec.phi1393, %i.uq       ; 2 uses
  %i.ut = add <4 x i32> %vec.phi1394, %i.ur       ; 2 uses
  %i.uu = icmp ne <4 x i8> %i.uo, zeroinitializer
  %i.uv = icmp ne <4 x i8> %i.up, zeroinitializer
  %i.uw = zext <4 x i1> %i.uu to <4 x i32>
  %i.ux = zext <4 x i1> %i.uv to <4 x i32>
  %i.uy = add <4 x i32> %vec.phi1395, %i.uw       ; 2 uses
  %i.uz = add <4 x i32> %vec.phi1396, %i.ux       ; 2 uses
  %index.next1401 = add nuw i64 %index1392, 8     ; 2 uses
  %i.va = icmp eq i64 %index.next1401, %n.vec1390
  br i1 %i.va, label %middle.block1402, label %vector.body1391, !llvm.loop !489

middle.block1402:                                 ; preds = %vector.body1391
  %bin.rdx1403 = add <4 x i32> %i.ut, %i.us
  %i.vb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1403) ; 2 uses
  %bin.rdx1404 = add <4 x i32> %i.uz, %i.uy
  %i.vc = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1404) ; 2 uses
  %cmp.n1405 = icmp eq i64 %n.vec1390, %wide.trip.count.i.i.i
  br i1 %cmp.n1405, label %._crit_edge.loopexit.i.i.i, label %scalar.ph1387.preheader

scalar.ph1387.preheader:                          ; preds = %.lr.ph.i.i.i227, %middle.block1402
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i227 ], [ %n.vec1390, %middle.block1402 ]
  %.ph1460 = phi i32 [ 0, %.lr.ph.i.i.i227 ], [ %i.vb, %middle.block1402 ]
  %.ph1461 = phi i32 [ 0, %.lr.ph.i.i.i227 ], [ %i.vc, %middle.block1402 ]
  br label %scalar.ph1387

._crit_edge.loopexit.i.i.i:                       ; preds = %scalar.ph1387, %middle.block1402
  %.lcssa1224 = phi i32 [ %i.vb, %middle.block1402 ], [ %i.vp, %scalar.ph1387 ]
  %.lcssa1223 = phi i32 [ %i.vc, %middle.block1402 ], [ %i.vs, %scalar.ph1387 ]
  %i.vd = zext i32 %.lcssa1223 to i64
  %i.ve = shl nuw i64 %i.vd, 32
  %i.vf = zext i32 %.lcssa1224 to i64
  %i.vg = or disjoint i64 %i.ve, %i.vf
  br label %_ZNK2OT20delta_row_encoding_t17gain_from_mergingERKS0_.exit

end_hunk_0
