Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ieee80211?download=true
inline.NumInlined: 916
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 32
begin_hunk_0_@add_ff_action:bb.a
  %.16.2.i.i.i.i = phi i8 [ %.16.1.i.i.i.i, %.preheader.split.2.i118.i.i.i ], [ %.13.2.i.i.i.i, %.split111.2.i.i.i.i ]
  %i.cxs = icmp samesign ult i16 %i.cgv, 256
  br i1 %i.cxs, label %add_ff_eht_mu_exclusive_160MHz_rpt.exit.i.i.i, label %.split109.3.i.i.i.i

.split109.3.i.i.i.i:                              ; preds = %.preheader.split.3.i119.i.i.i
  %i.cxt = load i32, ptr @ett_eht_mu_exclusive_beamforming_rpt_ru_index, align 4
  %i.cxu = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.cgx, ptr noundef %1, i32 noundef %.16158.2.i.i.i.i, i32 noundef -1, i32 noundef %i.cxt, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.8019, i32 noundef 8)
  br label %bb.vl

bb.vl:                                            ; preds = %..loopexit66_crit_edge.3.i.i.i.i, %.split109.3.i.i.i.i
  %.sroa.40.11.3.i.i.i.i = phi i1 [ true, %.split109.3.i.i.i.i ], [ false, %..loopexit66_crit_edge.3.i.i.i.i ]
  %.sroa.5422.13.3.i.i.i.i = phi i32 [ %.sroa.5422.16.2.i.i.i.i, %.split109.3.i.i.i.i ], [ %.sroa.5422.15.3.i.i.i.i, %..loopexit66_crit_edge.3.i.i.i.i ] ; 2 uses
  %.13155.3.i.i.i.i = phi i32 [ %.16158.2.i.i.i.i, %.split109.3.i.i.i.i ], [ %.15157.3.i.i.i.i, %..loopexit66_crit_edge.3.i.i.i.i ] ; 3 uses
  %.12131.3.i.i.i.i = phi i32 [ %.15134.2.i.i.i.i, %.split109.3.i.i.i.i ], [ %.14133.3.i.i.i.i, %..loopexit66_crit_edge.3.i.i.i.i ]
  %.13.3.i.i.i.i = phi i8 [ %.16.2.i.i.i.i, %.split109.3.i.i.i.i ], [ %.15.3.i.i.i.i, %..loopexit66_crit_edge.3.i.i.i.i ]
  br i1 %.sroa.40.11.3.i.i.i.i, label %next_eht_scidx.exit186.3.i.i.i.i, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %i.cxv = icmp eq i32 %.sroa.5422.13.3.i.i.i.i, 1012
  br i1 %i.cxv, label %.split111.3.i.i.i.i, label %bb.vn

bb.vn:                                            ; preds = %bb.vm
  %storemerge.i181.3.i.i.i.i = add i32 %.sroa.5422.13.3.i.i.i.i, %i.ctu
  br label %next_eht_scidx.exit186.3.i.i.i.i

.split111.3.i.i.i.i:                              ; preds = %bb.vm
  %i.cxw = load ptr, ptr %i.c, align 8
  %i.cxx = sub i32 %.13155.3.i.i.i.i, %.16158.2.i.i.i.i
  call void @proto_item_set_len(ptr noundef %i.cxw, i32 noundef %i.cxx)
  br label %add_ff_eht_mu_exclusive_160MHz_rpt.exit.i.i.i

next_eht_scidx.exit186.3.i.i.i.i:                 ; preds = %bb.vn, %bb.vl
  %.sroa.5422.15.3.i.i.i.i = phi i32 [ %storemerge.i181.3.i.i.i.i, %bb.vn ], [ 772, %bb.vl ] ; 2 uses
  br label %bb.vo

bb.vo:                                            ; preds = %bb.vr, %next_eht_scidx.exit186.3.i.i.i.i
  %.14104.3.i.i.i.i = phi i8 [ %.13.3.i.i.i.i, %next_eht_scidx.exit186.3.i.i.i.i ], [ %.15.3.i.i.i.i, %bb.vr ] ; 2 uses
  %.13132103.3.i.i.i.i = phi i32 [ %.12131.3.i.i.i.i, %next_eht_scidx.exit186.3.i.i.i.i ], [ %.14133.3.i.i.i.i, %bb.vr ]
  %.3138102.3.i.i.i.i = phi i32 [ 1, %next_eht_scidx.exit186.3.i.i.i.i ], [ %i.cyf, %bb.vr ] ; 2 uses
  %.14156101.3.i.i.i.i = phi i32 [ %.13155.3.i.i.i.i, %next_eht_scidx.exit186.3.i.i.i.i ], [ %.15157.3.i.i.i.i, %bb.vr ] ; 3 uses
  %.not161.3.i.i.i.i = icmp eq i32 %.13132103.3.i.i.i.i, 0
  br i1 %.not161.3.i.i.i.i, label %bb.vq, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  %i.cxy = call signext i8 @tvb_get_int8(ptr noundef %1, i32 noundef %.14156101.3.i.i.i.i) ; 2 uses
  %i.cxz = add i32 %.14156101.3.i.i.i.i, 1
  %i.cya = and i8 %i.cxy, 15
  br label %bb.vr

bb.vq:                                            ; preds = %bb.vo
  %i.cyb = ashr i8 %.14104.3.i.i.i.i, 4
  br label %bb.vr

bb.vr:                                            ; preds = %bb.vq, %bb.vp
  %.15157.3.i.i.i.i = phi i32 [ %i.cxz, %bb.vp ], [ %.14156101.3.i.i.i.i, %bb.vq ] ; 3 uses
  %.14133.3.i.i.i.i = phi i32 [ 0, %bb.vp ], [ 1, %bb.vq ] ; 2 uses
  %.15.3.i.i.i.i = phi i8 [ %i.cxy, %bb.vp ], [ %.14104.3.i.i.i.i, %bb.vq ] ; 2 uses
  %.3.3.i.i.i.i = phi i8 [ %i.cya, %bb.vp ], [ %i.cyb, %bb.vq ]
  %i.cyc = load i32, ptr @hf_ieee80211_eht_mu_exclusive_beamforming_report_delta_snr, align 4
  %i.cyd = sext i8 %.3.3.i.i.i.i to i32           ; 2 uses
  %i.cye = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format(ptr noundef %i.cxu, i32 noundef %i.cyc, ptr noundef %1, i32 noundef %.15157.3.i.i.i.i, i32 noundef 1, i32 noundef %i.cyd, ptr noundef nonnull @.str.8029, i32 noundef %.3138102.3.i.i.i.i, i32 noundef %.sroa.5422.15.3.i.i.i.i, i32 noundef %i.cyd) ; 0 uses
  %i.cyf = add nuw nsw i32 %.3138102.3.i.i.i.i, 1 ; 2 uses
  %exitcond137.3.not.i.i.i.i = icmp eq i32 %i.cyf, %i.ctv
  br i1 %exitcond137.3.not.i.i.i.i, label %..loopexit66_crit_edge.3.i.i.i.i, label %bb.vo, !llvm.loop !50

..loopexit66_crit_edge.3.i.i.i.i:                 ; preds = %bb.vr
  br label %bb.vl, !llvm.loop !49

add_ff_eht_mu_exclusive_160MHz_rpt.exit.i.i.i:    ; preds = %.split111.3.i.i.i.i, %.preheader.split.3.i119.i.i.i, %bb.up, %.split111.us.us.3.i.i.i.i, %.preheader.split.us.3.i123.i.i.i
  %.17.i.i.i.i = phi i32 [ %.9151.i.i.i.i, %bb.up ], [ %.8150.i.i.i.i, %.preheader.split.us.3.i123.i.i.i ], [ %.8150.i.i.i.i, %.split111.us.us.3.i.i.i.i ], [ %.16158.2.i.i.i.i, %.preheader.split.3.i119.i.i.i ], [ %.13155.3.i.i.i.i, %.split111.3.i.i.i.i ] ; 2 uses
  %i.cyg = sub i32 %.17.i.i.i.i, %i.cgl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.cyh = load ptr, ptr %i.g, align 8
  call void @proto_item_set_len(ptr noundef %i.cyh, i32 noundef %i.cyg)
  br label %add_ff_eht_mu_exclusive_beamforming_rpt.exit.i.i

bb.vs:                                            ; preds = %bb.pk
  %i.cyi = icmp eq i8 %i.cgs, 0                   ; 2 uses
  %i.cyj = select i1 %i.cyi, i32 4, i32 16        ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr null, ptr %i.b, align 8
  %i.cyk = zext nneg i16 %i.cgv to i32            ; 4 uses
  %.not10238.i.i.i.i = icmp eq i8 %i.cgn, 0       ; 2 uses
  %narrow.i130.i.i.i = add nuw nsw i8 %i.cgn, 1
  %i.cyl = zext nneg i8 %narrow.i130.i.i.i to i32 ; 5 uses
  br label %bb.vt

bb.vt:                                            ; preds = %.loopexit37.i.i.i.i, %bb.vs
  %indvars.iv157.i.i.i.i = phi i64 [ 0, %bb.vs ], [ %indvars.iv.next158.i.i.i.i, %.loopexit37.i.i.i.i ] ; 4 uses
  %indvars.iv.i.i.i.i = phi i64 [ 0, %bb.vs ], [ %indvars.iv.next.i.i.i.i, %.loopexit37.i.i.i.i ] ; 11 uses
  %.07280.i.i.i.i = phi i8 [ 0, %bb.vs ], [ %.10.i.i.i.i, %.loopexit37.i.i.i.i ] ; 5 uses
  %.07479.i.i.i.i = phi i32 [ 1, %bb.vs ], [ %.1084.i.i.i.i, %.loopexit37.i.i.i.i ] ; 5 uses
  %.09077.i.i.i.i = phi i32 [ %i.cgl, %bb.vs ], [ %.10100.i.i.i.i, %.loopexit37.i.i.i.i ] ; 13 uses
  %.sroa.2810.076.i.i.i.i = phi i32 [ undef, %bb.vs ], [ %.sroa.2810.10.i.i.i.i, %.loopexit37.i.i.i.i ] ; 4 uses
  %i.cym = shl nuw nsw i64 %indvars.iv157.i.i.i.i, 1 ; 2 uses
  %i.cyn = trunc i64 %i.cym to i32                ; 4 uses
  %i.cyo = or disjoint i32 %i.cyn, 1
  %i.cyp = lshr i32 %i.cyk, %i.cyo
  %i.cyq = and i32 %i.cyp, 3
  %i.cyr = icmp eq i32 %i.cyq, 3
  br i1 %i.cyr, label %bb.wk, label %.preheader.i131.i.i.i

.preheader.i131.i.i.i:                            ; preds = %bb.vt
  %i.cys = shl nuw i32 2, %i.cyn
  %i.cyt = and i32 %i.cys, %i.cyk
  %i.cyu = icmp eq i32 %i.cyt, 0                  ; 2 uses
  br i1 %.not10238.i.i.i.i, label %.preheader.split.us.preheader.i147.i.i.i, label %.preheader.split.preheader.i132.i.i.i

.preheader.split.preheader.i132.i.i.i:            ; preds = %.preheader.i131.i.i.i
  br i1 %i.cyu, label %.preheader.split.preheader..loopexit36.split_crit_edge.i.i.i.i, label %.split55.i.i.i.i

.preheader.split.preheader..loopexit36.split_crit_edge.i.i.i.i: ; preds = %.preheader.split.preheader.i132.i.i.i
  %.pre160.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 2
  br label %.loopexit36.split.i.i.i.i

.preheader.split.us.preheader.i147.i.i.i:         ; preds = %.preheader.i131.i.i.i
  br i1 %i.cyu, label %.loopexit36.split.us.us.i.i.i.i, label %next_eht_scidx.exit112.us.us.us.peel.i.i.i.i

next_eht_scidx.exit112.us.us.us.peel.i.i.i.i:     ; preds = %.preheader.split.us.preheader.i147.i.i.i
  %indvars.iv.next129.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.cyv = load i32, ptr @ett_eht_mu_exclusive_beamforming_rpt_ru_index, align 4
  %i.cyw = trunc nuw nsw i64 %indvars.iv.next129.i.i.i.i to i32
  %i.cyx = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.cgx, ptr noundef %1, i32 noundef %.09077.i.i.i.i, i32 noundef -1, i32 noundef %i.cyv, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.8024, i32 noundef %i.cyw) ; 0 uses
  %i.cyy = load ptr, ptr %i.b, align 8
  call void @proto_item_set_len(ptr noundef %i.cyy, i32 noundef 0)
  %i.cyz = getelementptr [20 x i8], ptr @ru_242_tone_320MHz, i64 %indvars.iv.next129.i.i.i.i ; 2 uses
  %i.cza = load i32, ptr @ett_eht_mu_exclusive_beamforming_rpt_ru_index, align 4
  %i.czb = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.czc = or disjoint i32 %i.czb, 2
  %i.czd = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.cgx, ptr noundef %1, i32 noundef %.09077.i.i.i.i, i32 noundef -1, i32 noundef %i.cza, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.8024, i32 noundef %i.czc) ; 0 uses
  %i.cze = load i32, ptr %i.cyz, align 4
  br label %next_eht_scidx.exit112.us.us.us.1.i.i.i.i.outer

next_eht_scidx.exit112.us.us.us.1.i.i.i.i.outer:  ; preds = %next_eht_scidx.exit112.us.us.us.1.i.i.i.i.outer.backedge, %next_eht_scidx.exit112.us.us.us.peel.i.i.i.i
  %.sroa.52.4.us.us.us.1.i.i.i.i.ph = phi ptr [ %i.cyz, %next_eht_scidx.exit112.us.us.us.peel.i.i.i.i ], [ %i.czq, %next_eht_scidx.exit112.us.us.us.1.i.i.i.i.outer.backedge ] ; 7 uses
  %.sroa.2810.6.us.us.us.1.i.i.i.i.ph = phi i32 [ %i.cze, %next_eht_scidx.exit112.us.us.us.peel.i.i.i.i ], [ %.sroa.2810.6.us.us.us.1.i.i.i.i.ph.be, %next_eht_scidx.exit112.us.us.us.1.i.i.i.i.outer.backedge ]
  %i.czf = getelementptr i8, ptr %.sroa.52.4.us.us.us.1.i.i.i.i.ph, i64 12
  %i.czg = load i32, ptr %i.czf, align 4
  %i.czh = getelementptr i8, ptr %.sroa.52.4.us.us.us.1.i.i.i.i.ph, i64 4
  %i.czi = getelementptr i8, ptr %.sroa.52.4.us.us.us.1.i.i.i.i.ph, i64 8
  br label %next_eht_scidx.exit112.us.us.us.1.i.i.i.i

next_eht_scidx.exit112.us.us.us.1.i.i.i.i:        ; preds = %next_eht_scidx.exit112.us.us.us.1.i.i.i.i.outer, %bb.vw
  %.sroa.2810.6.us.us.us.1.i.i.i.i = phi i32 [ %storemerge.i107.us.us.us.1.i.i.i.i, %bb.vw ], [ %.sroa.2810.6.us.us.us.1.i.i.i.i.ph, %next_eht_scidx.exit112.us.us.us.1.i.i.i.i.outer ] ; 6 uses
  %i.czj = icmp eq i32 %.sroa.2810.6.us.us.us.1.i.i.i.i, %i.czg
  br i1 %i.czj, label %bb.vx, label %bb.vu

bb.vu:                                            ; preds = %next_eht_scidx.exit112.us.us.us.1.i.i.i.i
  %i.czk = load i8, ptr %i.czh, align 4, !range !9, !noundef !10
  %i.czl = trunc nuw i8 %i.czk to i1
  br i1 %i.czl, label %bb.vw, label %bb.vv

bb.vv:                                            ; preds = %bb.vu
  %i.czm = load i32, ptr %i.czi, align 4
  br label %bb.vw

bb.vw:                                            ; preds = %bb.vv, %bb.vu
  %.pn.i106.us.us.us.1.i.i.i.i = phi i32 [ %i.czm, %bb.vv ], [ %i.cyj, %bb.vu ]
  %storemerge.i107.us.us.us.1.i.i.i.i = add i32 %.pn.i106.us.us.us.1.i.i.i.i, %.sroa.2810.6.us.us.us.1.i.i.i.i
  br label %next_eht_scidx.exit112.us.us.us.1.i.i.i.i, !llvm.loop !51

bb.vx:                                            ; preds = %next_eht_scidx.exit112.us.us.us.1.i.i.i.i
  %i.czn = getelementptr i8, ptr %.sroa.52.4.us.us.us.1.i.i.i.i.ph, i64 16
  %i.czo = load i8, ptr %i.czn, align 4, !range !9, !noundef !10
  %i.czp = trunc nuw i8 %i.czo to i1
  br i1 %i.czp, label %.split46.us.us.us.1.i.i.i.i, label %bb.vy

bb.vy:                                            ; preds = %bb.vx
  %i.czq = getelementptr i8, ptr %.sroa.52.4.us.us.us.1.i.i.i.i.ph, i64 20 ; 2 uses
  %i.czr = load i32, ptr %i.czq, align 4          ; 2 uses
  %i.czs = icmp eq i32 %.sroa.2810.6.us.us.us.1.i.i.i.i, %i.czr
  br i1 %i.czs, label %bb.vz, label %next_eht_scidx.exit112.us.us.us.1.i.i.i.i.outer.backedge

next_eht_scidx.exit112.us.us.us.1.i.i.i.i.outer.backedge: ; preds = %bb.vy, %bb.wb, %bb.wa
  %.sroa.2810.6.us.us.us.1.i.i.i.i.ph.be = phi i32 [ %i.czy, %bb.wa ], [ %i.czz, %bb.wb ], [ %i.czr, %bb.vy ]
  br label %next_eht_scidx.exit112.us.us.us.1.i.i.i.i.outer, !llvm.loop !51

bb.vz:                                            ; preds = %bb.vy
  %i.czt = getelementptr i8, ptr %.sroa.52.4.us.us.us.1.i.i.i.i.ph, i64 24
  %i.czu = load i8, ptr %i.czt, align 4, !range !9, !noundef !10
  %i.czv = trunc nuw i8 %i.czu to i1
  br i1 %i.czv, label %bb.wb, label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  %i.czw = getelementptr i8, ptr %.sroa.52.4.us.us.us.1.i.i.i.i.ph, i64 28
  %i.czx = load i32, ptr %i.czw, align 4
  %i.czy = add i32 %i.czx, %.sroa.2810.6.us.us.us.1.i.i.i.i
  br label %next_eht_scidx.exit112.us.us.us.1.i.i.i.i.outer.backedge

bb.wb:                                            ; preds = %bb.vz
  %i.czz = add i32 %.sroa.2810.6.us.us.us.1.i.i.i.i, %i.cyj
  br label %next_eht_scidx.exit112.us.us.us.1.i.i.i.i.outer.backedge

.split46.us.us.us.1.i.i.i.i:                      ; preds = %bb.vx
  %i.daa = load ptr, ptr %i.b, align 8
  call void @proto_item_set_len(ptr noundef %i.daa, i32 noundef 0)
  br label %.loopexit36.split.us.us.i.i.i.i

.loopexit36.split.us.us.i.i.i.i:                  ; preds = %.split46.us.us.us.1.i.i.i.i, %.preheader.split.us.preheader.i147.i.i.i
  %.sroa.2810.9.us.i.i.i.i = phi i32 [ %.sroa.2810.6.us.us.us.1.i.i.i.i, %.split46.us.us.us.1.i.i.i.i ], [ %.sroa.2810.076.i.i.i.i, %.preheader.split.us.preheader.i147.i.i.i ]
  %5 = add i32 %i.cyn, 2
  %i.dab = shl nuw i32 1, %5
  %i.dac = and i32 %i.dab, %i.cyk
  %i.dad = icmp eq i32 %i.dac, 0
  br i1 %i.dad, label %.loopexit37.i.i.i.i, label %next_eht_scidx.exit112.us.us.us.peel.1141.i.i.i.i

next_eht_scidx.exit112.us.us.us.peel.1141.i.i.i.i: ; preds = %.loopexit36.split.us.us.i.i.i.i
  %indvars.iv.next129.1135.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.dae = load i32, ptr @ett_eht_mu_exclusive_beamforming_rpt_ru_index, align 4
  %i.daf = trunc nuw nsw i64 %indvars.iv.next129.1135.i.i.i.i to i32
  %i.dag = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.cgx, ptr noundef %1, i32 noundef %.09077.i.i.i.i, i32 noundef -1, i32 noundef %i.dae, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.8024, i32 noundef %i.daf) ; 0 uses
  %i.dah = load ptr, ptr %i.b, align 8
  call void @proto_item_set_len(ptr noundef %i.dah, i32 noundef 0)
  %i.dai = getelementptr [20 x i8], ptr @ru_242_tone_320MHz, i64 %indvars.iv.next129.1135.i.i.i.i ; 2 uses
  %i.daj = load i32, ptr @ett_eht_mu_exclusive_beamforming_rpt_ru_index, align 4
  %i.dak = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.dal = add i32 %i.dak, 4
  %i.dam = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.cgx, ptr noundef %1, i32 noundef %.09077.i.i.i.i, i32 noundef -1, i32 noundef %i.daj, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.8024, i32 noundef %i.dal) ; 0 uses
  %i.dan = load i32, ptr %i.dai, align 4
  br label %next_eht_scidx.exit112.us.us.us.1.1.i.i.i.i.outer

next_eht_scidx.exit112.us.us.us.1.1.i.i.i.i.outer: ; preds = %next_eht_scidx.exit112.us.us.us.1.1.i.i.i.i.outer.backedge, %next_eht_scidx.exit112.us.us.us.peel.1141.i.i.i.i
  %.sroa.52.4.us.us.us.1.1.i.i.i.i.ph = phi ptr [ %i.dai, %next_eht_scidx.exit112.us.us.us.peel.1141.i.i.i.i ], [ %i.daz, %next_eht_scidx.exit112.us.us.us.1.1.i.i.i.i.outer.backedge ] ; 7 uses
  %.sroa.2810.6.us.us.us.1.1.i.i.i.i.ph = phi i32 [ %i.dan, %next_eht_scidx.exit112.us.us.us.peel.1141.i.i.i.i ], [ %.sroa.2810.6.us.us.us.1.1.i.i.i.i.ph.be, %next_eht_scidx.exit112.us.us.us.1.1.i.i.i.i.outer.backedge ]
  %i.dao = getelementptr i8, ptr %.sroa.52.4.us.us.us.1.1.i.i.i.i.ph, i64 12
  %i.dap = load i32, ptr %i.dao, align 4
  %i.daq = getelementptr i8, ptr %.sroa.52.4.us.us.us.1.1.i.i.i.i.ph, i64 4
  %i.dar = getelementptr i8, ptr %.sroa.52.4.us.us.us.1.1.i.i.i.i.ph, i64 8
  br label %next_eht_scidx.exit112.us.us.us.1.1.i.i.i.i

next_eht_scidx.exit112.us.us.us.1.1.i.i.i.i:      ; preds = %next_eht_scidx.exit112.us.us.us.1.1.i.i.i.i.outer, %bb.we
  %.sroa.2810.6.us.us.us.1.1.i.i.i.i = phi i32 [ %storemerge.i107.us.us.us.1.1.i.i.i.i, %bb.we ], [ %.sroa.2810.6.us.us.us.1.1.i.i.i.i.ph, %next_eht_scidx.exit112.us.us.us.1.1.i.i.i.i.outer ] ; 6 uses
  %i.das = icmp eq i32 %.sroa.2810.6.us.us.us.1.1.i.i.i.i, %i.dap
  br i1 %i.das, label %bb.wf, label %bb.wc

bb.wc:                                            ; preds = %next_eht_scidx.exit112.us.us.us.1.1.i.i.i.i
  %i.dat = load i8, ptr %i.daq, align 4, !range !9, !noundef !10
  %i.dau = trunc nuw i8 %i.dat to i1
  br i1 %i.dau, label %bb.we, label %bb.wd

bb.wd:                                            ; preds = %bb.wc
  %i.dav = load i32, ptr %i.dar, align 4
  br label %bb.we

bb.we:                                            ; preds = %bb.wd, %bb.wc
  %.pn.i106.us.us.us.1.1.i.i.i.i = phi i32 [ %i.dav, %bb.wd ], [ %i.cyj, %bb.wc ]
  %storemerge.i107.us.us.us.1.1.i.i.i.i = add i32 %.pn.i106.us.us.us.1.1.i.i.i.i, %.sroa.2810.6.us.us.us.1.1.i.i.i.i
  br label %next_eht_scidx.exit112.us.us.us.1.1.i.i.i.i, !llvm.loop !51

bb.wf:                                            ; preds = %next_eht_scidx.exit112.us.us.us.1.1.i.i.i.i
  %i.daw = getelementptr i8, ptr %.sroa.52.4.us.us.us.1.1.i.i.i.i.ph, i64 16
  %i.dax = load i8, ptr %i.daw, align 4, !range !9, !noundef !10
  %i.day = trunc nuw i8 %i.dax to i1
  br i1 %i.day, label %.split46.us.us.us.1.1.i.i.i.i, label %bb.wg

bb.wg:                                            ; preds = %bb.wf
  %i.daz = getelementptr i8, ptr %.sroa.52.4.us.us.us.1.1.i.i.i.i.ph, i64 20 ; 2 uses
  %i.dba = load i32, ptr %i.daz, align 4          ; 2 uses
  %i.dbb = icmp eq i32 %.sroa.2810.6.us.us.us.1.1.i.i.i.i, %i.dba
  br i1 %i.dbb, label %bb.wh, label %next_eht_scidx.exit112.us.us.us.1.1.i.i.i.i.outer.backedge

next_eht_scidx.exit112.us.us.us.1.1.i.i.i.i.outer.backedge: ; preds = %bb.wg, %bb.wj, %bb.wi
  %.sroa.2810.6.us.us.us.1.1.i.i.i.i.ph.be = phi i32 [ %i.dbh, %bb.wi ], [ %i.dbi, %bb.wj ], [ %i.dba, %bb.wg ]
  br label %next_eht_scidx.exit112.us.us.us.1.1.i.i.i.i.outer, !llvm.loop !51

bb.wh:                                            ; preds = %bb.wg
  %i.dbc = getelementptr i8, ptr %.sroa.52.4.us.us.us.1.1.i.i.i.i.ph, i64 24
  %i.dbd = load i8, ptr %i.dbc, align 4, !range !9, !noundef !10
  %i.dbe = trunc nuw i8 %i.dbd to i1
  br i1 %i.dbe, label %bb.wj, label %bb.wi

bb.wi:                                            ; preds = %bb.wh
  %i.dbf = getelementptr i8, ptr %.sroa.52.4.us.us.us.1.1.i.i.i.i.ph, i64 28
  %i.dbg = load i32, ptr %i.dbf, align 4
  %i.dbh = add i32 %i.dbg, %.sroa.2810.6.us.us.us.1.1.i.i.i.i
  br label %next_eht_scidx.exit112.us.us.us.1.1.i.i.i.i.outer.backedge

bb.wj:                                            ; preds = %bb.wh
  %i.dbi = add i32 %.sroa.2810.6.us.us.us.1.1.i.i.i.i, %i.cyj
  br label %next_eht_scidx.exit112.us.us.us.1.1.i.i.i.i.outer.backedge

.split46.us.us.us.1.1.i.i.i.i:                    ; preds = %bb.wf
  %i.dbj = load ptr, ptr %i.b, align 8
  call void @proto_item_set_len(ptr noundef %i.dbj, i32 noundef 0)
  br label %.loopexit37.i.i.i.i

bb.wk:                                            ; preds = %bb.vt
  %i.dbk = getelementptr [20 x i8], ptr @ru_996_tone_320MHz_ng4, i64 %i.cym
  %.idx.i.i.i.i = mul nuw nsw i64 %indvars.iv157.i.i.i.i, 100
  %i.dbl = getelementptr i8, ptr @ru_996_tone_320MHz_ng16, i64 %.idx.i.i.i.i
  %.sroa.52.0.i.i.i.i = select i1 %i.cyi, ptr %i.dbk, ptr %i.dbl
  %i.dbm = load i32, ptr @ett_eht_mu_exclusive_beamforming_rpt_ru_index, align 4
  %i.dbn = trunc i64 %indvars.iv157.i.i.i.i to i32
  %i.dbo = add i32 %i.dbn, 1
  %i.dbp = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.cgx, ptr noundef %1, i32 noundef %.09077.i.i.i.i, i32 noundef -1, i32 noundef %i.dbm, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.8023, i32 noundef %i.dbo)
  br label %bb.wl

.loopexit35.i.i.i.i:                              ; preds = %bb.wy, %next_eht_scidx.exit.i152.i.i.i
  %.292.lcssa.i.i.i.i = phi i32 [ %.191.i.i.i.i, %next_eht_scidx.exit.i152.i.i.i ], [ %.393.i.i.i.i, %bb.wy ]
  %.276.lcssa.i.i.i.i = phi i32 [ %.175.i.i.i.i, %next_eht_scidx.exit.i152.i.i.i ], [ %.377.i.i.i.i, %bb.wy ]
  %.2.lcssa.i.i.i.i = phi i8 [ %.173.i.i.i.i, %next_eht_scidx.exit.i152.i.i.i ], [ %.3.i155.i.i.i, %bb.wy ]
  br label %bb.wl, !llvm.loop !52

bb.wl:                                            ; preds = %.loopexit35.i.i.i.i, %bb.wk
  %.sroa.21.1.i148.i.i.i = phi i1 [ true, %bb.wk ], [ false, %.loopexit35.i.i.i.i ]
  %.sroa.52.1.i149.i.i.i = phi ptr [ %.sroa.52.0.i.i.i.i, %bb.wk ], [ %.sroa.52.3.i153.i.i.i, %.loopexit35.i.i.i.i ] ; 10 uses
  %.sroa.2810.1.i.i.i.i = phi i32 [ %.sroa.2810.076.i.i.i.i, %bb.wk ], [ %.sroa.2810.3.i.i.i.i, %.loopexit35.i.i.i.i ] ; 6 uses
  %.191.i.i.i.i = phi i32 [ %.09077.i.i.i.i, %bb.wk ], [ %.292.lcssa.i.i.i.i, %.loopexit35.i.i.i.i ] ; 4 uses
  %.175.i.i.i.i = phi i32 [ %.07479.i.i.i.i, %bb.wk ], [ %.276.lcssa.i.i.i.i, %.loopexit35.i.i.i.i ] ; 3 uses
  %.173.i.i.i.i = phi i8 [ %.07280.i.i.i.i, %bb.wk ], [ %.2.lcssa.i.i.i.i, %.loopexit35.i.i.i.i ] ; 3 uses
  br i1 %.sroa.21.1.i148.i.i.i, label %bb.wm, label %bb.wn

bb.wm:                                            ; preds = %bb.wl
  %i.dbq = load i32, ptr %.sroa.52.1.i149.i.i.i, align 4
  br label %next_eht_scidx.exit.i152.i.i.i

bb.wn:                                            ; preds = %bb.wl
  %i.dbr = getelementptr i8, ptr %.sroa.52.1.i149.i.i.i, i64 12
  %i.dbs = load i32, ptr %i.dbr, align 4
  %i.dbt = icmp eq i32 %.sroa.2810.1.i.i.i.i, %i.dbs
  br i1 %i.dbt, label %bb.wo, label %bb.wt

bb.wo:                                            ; preds = %bb.wn
  %i.dbu = getelementptr i8, ptr %.sroa.52.1.i149.i.i.i, i64 16
  %i.dbv = load i8, ptr %i.dbu, align 4, !range !9, !noundef !10
  %i.dbw = trunc nuw i8 %i.dbv to i1
  br i1 %i.dbw, label %bb.wz, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %i.dbx = getelementptr i8, ptr %.sroa.52.1.i149.i.i.i, i64 20 ; 4 uses
  %i.dby = load i32, ptr %i.dbx, align 4          ; 2 uses
  %i.dbz = icmp eq i32 %.sroa.2810.1.i.i.i.i, %i.dby
  br i1 %i.dbz, label %bb.wq, label %next_eht_scidx.exit.i152.i.i.i

bb.wq:                                            ; preds = %bb.wp
  %i.dca = getelementptr i8, ptr %.sroa.52.1.i149.i.i.i, i64 24
  %i.dcb = load i8, ptr %i.dca, align 4, !range !9, !noundef !10
  %i.dcc = trunc nuw i8 %i.dcb to i1
  br i1 %i.dcc, label %bb.wr, label %bb.ws

bb.wr:                                            ; preds = %bb.wq
  %i.dcd = add i32 %.sroa.2810.1.i.i.i.i, %i.cyj
  br label %next_eht_scidx.exit.i152.i.i.i

bb.ws:                                            ; preds = %bb.wq
  %i.dce = getelementptr i8, ptr %.sroa.52.1.i149.i.i.i, i64 28
  %i.dcf = load i32, ptr %i.dce, align 4
  %i.dcg = add i32 %i.dcf, %.sroa.2810.1.i.i.i.i
  br label %next_eht_scidx.exit.i152.i.i.i

bb.wt:                                            ; preds = %bb.wn
  %i.dch = getelementptr i8, ptr %.sroa.52.1.i149.i.i.i, i64 4
  %i.dci = load i8, ptr %i.dch, align 4, !range !9, !noundef !10
  %i.dcj = trunc nuw i8 %i.dci to i1
  br i1 %i.dcj, label %bb.wv, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  %i.dck = getelementptr i8, ptr %.sroa.52.1.i149.i.i.i, i64 8
  %i.dcl = load i32, ptr %i.dck, align 4
  br label %bb.wv

bb.wv:                                            ; preds = %bb.wu, %bb.wt
  %.pn.i.i150.i.i.i = phi i32 [ %i.dcl, %bb.wu ], [ %i.cyj, %bb.wt ]
  %storemerge.i.i151.i.i.i = add i32 %.pn.i.i150.i.i.i, %.sroa.2810.1.i.i.i.i
  br label %next_eht_scidx.exit.i152.i.i.i

next_eht_scidx.exit.i152.i.i.i:                   ; preds = %bb.wv, %bb.ws, %bb.wr, %bb.wp, %bb.wm
  %.sroa.52.3.i153.i.i.i = phi ptr [ %i.dbx, %bb.wp ], [ %.sroa.52.1.i149.i.i.i, %bb.wm ], [ %.sroa.52.1.i149.i.i.i, %bb.wv ], [ %i.dbx, %bb.ws ], [ %i.dbx, %bb.wr ]
  %.sroa.2810.3.i.i.i.i = phi i32 [ %i.dby, %bb.wp ], [ %i.dbq, %bb.wm ], [ %storemerge.i.i151.i.i.i, %bb.wv ], [ %i.dcg, %bb.ws ], [ %i.dcd, %bb.wr ] ; 2 uses
  br i1 %.not10238.i.i.i.i, label %.loopexit35.i.i.i.i, label %.lr.ph.i154.i.i.i

.lr.ph.i154.i.i.i:                                ; preds = %next_eht_scidx.exit.i152.i.i.i, %bb.wy
  %.272.i.i.i.i = phi i8 [ %.3.i155.i.i.i, %bb.wy ], [ %.173.i.i.i.i, %next_eht_scidx.exit.i152.i.i.i ] ; 2 uses
  %.27671.i.i.i.i = phi i32 [ %.377.i.i.i.i, %bb.wy ], [ %.175.i.i.i.i, %next_eht_scidx.exit.i152.i.i.i ]
  %.08570.i.i.i.i = phi i32 [ %i.dct, %bb.wy ], [ 1, %next_eht_scidx.exit.i152.i.i.i ] ; 2 uses
  %.29269.i.i.i.i = phi i32 [ %.393.i.i.i.i, %bb.wy ], [ %.191.i.i.i.i, %next_eht_scidx.exit.i152.i.i.i ] ; 3 uses
  %.not105.i.i.i.i = icmp eq i32 %.27671.i.i.i.i, 0
  br i1 %.not105.i.i.i.i, label %bb.wx, label %bb.ww

bb.ww:                                            ; preds = %.lr.ph.i154.i.i.i
  %i.dcm = call signext i8 @tvb_get_int8(ptr noundef %1, i32 noundef %.29269.i.i.i.i) ; 2 uses
  %i.dcn = add i32 %.29269.i.i.i.i, 1
  %i.dco = and i8 %i.dcm, 15
  br label %bb.wy

bb.wx:                                            ; preds = %.lr.ph.i154.i.i.i
  %i.dcp = ashr i8 %.272.i.i.i.i, 4
  br label %bb.wy

bb.wy:                                            ; preds = %bb.wx, %bb.ww
  %.393.i.i.i.i = phi i32 [ %i.dcn, %bb.ww ], [ %.29269.i.i.i.i, %bb.wx ] ; 3 uses
  %.377.i.i.i.i = phi i32 [ 0, %bb.ww ], [ 1, %bb.wx ] ; 2 uses
  %.3.i155.i.i.i = phi i8 [ %i.dcm, %bb.ww ], [ %.272.i.i.i.i, %bb.wx ] ; 2 uses
  %.0.i156.i.i.i = phi i8 [ %i.dco, %bb.ww ], [ %i.dcp, %bb.wx ]
  %i.dcq = load i32, ptr @hf_ieee80211_eht_mu_exclusive_beamforming_report_delta_snr, align 4
  %i.dcr = sext i8 %.0.i156.i.i.i to i32          ; 2 uses
  %i.dcs = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format(ptr noundef %i.dbp, i32 noundef %i.dcq, ptr noundef %1, i32 noundef %.393.i.i.i.i, i32 noundef 1, i32 noundef %i.dcr, ptr noundef nonnull @.str.8029, i32 noundef %.08570.i.i.i.i, i32 noundef %.sroa.2810.3.i.i.i.i, i32 noundef %i.dcr) ; 0 uses
  %i.dct = add nuw nsw i32 %.08570.i.i.i.i, 1     ; 2 uses
  %exitcond156.not.i.i.i.i = icmp eq i32 %i.dct, %i.cyl
  br i1 %exitcond156.not.i.i.i.i, label %.loopexit35.i.i.i.i, label %.lr.ph.i154.i.i.i, !llvm.loop !53

bb.wz:                                            ; preds = %bb.wo
end_hunk_0
begin_hunk_1_@add_ff_action:bb.a
  %i.ddg = trunc nuw i8 %i.ddf to i1
  br i1 %i.ddg, label %.split46.i.i.i.i, label %bb.xe

bb.xe:                                            ; preds = %bb.xd
  %i.ddh = getelementptr i8, ptr %.sroa.52.4.i.i.i.i, i64 20 ; 4 uses
  %i.ddi = load i32, ptr %i.ddh, align 4          ; 2 uses
  %i.ddj = icmp eq i32 %.sroa.2810.6.i134.i.i.i, %i.ddi
  br i1 %i.ddj, label %bb.xf, label %next_eht_scidx.exit112.i.i.i.i

bb.xf:                                            ; preds = %bb.xe
  %i.ddk = getelementptr i8, ptr %.sroa.52.4.i.i.i.i, i64 24
  %i.ddl = load i8, ptr %i.ddk, align 4, !range !9, !noundef !10
  %i.ddm = trunc nuw i8 %i.ddl to i1
  br i1 %i.ddm, label %bb.xg, label %bb.xh

bb.xg:                                            ; preds = %bb.xf
  %i.ddn = add i32 %.sroa.2810.6.i134.i.i.i, %i.cyj
  br label %next_eht_scidx.exit112.i.i.i.i

bb.xh:                                            ; preds = %bb.xf
  %i.ddo = getelementptr i8, ptr %.sroa.52.4.i.i.i.i, i64 28
  %i.ddp = load i32, ptr %i.ddo, align 4
  %i.ddq = add i32 %i.ddp, %.sroa.2810.6.i134.i.i.i
  br label %next_eht_scidx.exit112.i.i.i.i

bb.xi:                                            ; preds = %bb.xc
  %i.ddr = getelementptr i8, ptr %.sroa.52.4.i.i.i.i, i64 4
  %i.dds = load i8, ptr %i.ddr, align 4, !range !9, !noundef !10
  %i.ddt = trunc nuw i8 %i.dds to i1
  br i1 %i.ddt, label %bb.xk, label %bb.xj

bb.xj:                                            ; preds = %bb.xi
  %i.ddu = getelementptr i8, ptr %.sroa.52.4.i.i.i.i, i64 8
  %i.ddv = load i32, ptr %i.ddu, align 4
  br label %bb.xk

bb.xk:                                            ; preds = %bb.xj, %bb.xi
  %.pn.i106.i.i.i.i = phi i32 [ %i.ddv, %bb.xj ], [ %i.cyj, %bb.xi ]
  %storemerge.i107.i.i.i.i = add i32 %.pn.i106.i.i.i.i, %.sroa.2810.6.i134.i.i.i
  br label %next_eht_scidx.exit112.i.i.i.i

next_eht_scidx.exit112.i.i.i.i:                   ; preds = %bb.xk, %bb.xh, %bb.xg, %bb.xe, %bb.xb
  %.sroa.52.6.i.i.i.i = phi ptr [ %i.ddh, %bb.xe ], [ %.sroa.52.4.i.i.i.i, %bb.xb ], [ %.sroa.52.4.i.i.i.i, %bb.xk ], [ %i.ddh, %bb.xh ], [ %i.ddh, %bb.xg ]
  %.sroa.2810.8.i.i.i.i = phi i32 [ %i.ddi, %bb.xe ], [ %i.dda, %bb.xb ], [ %storemerge.i107.i.i.i.i, %bb.xk ], [ %i.ddq, %bb.xh ], [ %i.ddn, %bb.xg ] ; 2 uses
  br label %bb.xl

bb.xl:                                            ; preds = %bb.xo, %next_eht_scidx.exit112.i.i.i.i
  %.742.i.i.i.i = phi i8 [ %.6.i135.i.i.i, %next_eht_scidx.exit112.i.i.i.i ], [ %.8.i136.i.i.i, %bb.xo ] ; 2 uses
  %.78141.i.i.i.i = phi i32 [ %.680.i.i.i.i, %next_eht_scidx.exit112.i.i.i.i ], [ %.882.i.i.i.i, %bb.xo ]
  %.18640.i.i.i.i = phi i32 [ 1, %next_eht_scidx.exit112.i.i.i.i ], [ %i.ded, %bb.xo ] ; 2 uses
  %.79739.i.i.i.i = phi i32 [ %.696.i.i.i.i, %next_eht_scidx.exit112.i.i.i.i ], [ %.898.i.i.i.i, %bb.xo ] ; 3 uses
  %.not103.i.i.i.i = icmp eq i32 %.78141.i.i.i.i, 0
  br i1 %.not103.i.i.i.i, label %bb.xn, label %bb.xm

bb.xm:                                            ; preds = %bb.xl
  %i.ddw = call signext i8 @tvb_get_int8(ptr noundef %1, i32 noundef %.79739.i.i.i.i) ; 2 uses
  %i.ddx = add i32 %.79739.i.i.i.i, 1
  %i.ddy = and i8 %i.ddw, 15
  br label %bb.xo

bb.xn:                                            ; preds = %bb.xl
  %i.ddz = ashr i8 %.742.i.i.i.i, 4
  br label %bb.xo

bb.xo:                                            ; preds = %bb.xn, %bb.xm
  %.898.i.i.i.i = phi i32 [ %i.ddx, %bb.xm ], [ %.79739.i.i.i.i, %bb.xn ] ; 3 uses
  %.882.i.i.i.i = phi i32 [ 0, %bb.xm ], [ 1, %bb.xn ] ; 2 uses
  %.8.i136.i.i.i = phi i8 [ %i.ddw, %bb.xm ], [ %.742.i.i.i.i, %bb.xn ] ; 2 uses
  %.1.i137.i.i.i = phi i8 [ %i.ddy, %bb.xm ], [ %i.ddz, %bb.xn ]
  %i.dea = load i32, ptr @hf_ieee80211_eht_mu_exclusive_beamforming_report_delta_snr, align 4
  %i.deb = sext i8 %.1.i137.i.i.i to i32          ; 2 uses
  %i.dec = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format(ptr noundef %i.dcz, i32 noundef %i.dea, ptr noundef %1, i32 noundef %.898.i.i.i.i, i32 noundef 1, i32 noundef %i.deb, ptr noundef nonnull @.str.8029, i32 noundef %.18640.i.i.i.i, i32 noundef %.sroa.2810.8.i.i.i.i, i32 noundef %i.deb) ; 0 uses
  %i.ded = add nuw nsw i32 %.18640.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i138.i.i.i = icmp eq i32 %i.ded, %i.cyl
  br i1 %exitcond.not.i138.i.i.i, label %..loopexit_crit_edge.i139.i.i.i, label %bb.xl, !llvm.loop !55

.split46.i.i.i.i:                                 ; preds = %bb.xd
  %i.dee = load ptr, ptr %i.b, align 8
  %i.def = sub i32 %.696.i.i.i.i, %.09077.i.i.i.i
  call void @proto_item_set_len(ptr noundef %i.dee, i32 noundef %i.def)
  %indvars.iv.next85.1.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.deg = getelementptr [20 x i8], ptr @ru_242_tone_320MHz, i64 %indvars.iv.next85.i.i.i.i
  %i.deh = load i32, ptr @ett_eht_mu_exclusive_beamforming_rpt_ru_index, align 4
  %i.dei = trunc nuw nsw i64 %indvars.iv.next85.1.i.i.i.i to i32
  %i.dej = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.cgx, ptr noundef %1, i32 noundef %.696.i.i.i.i, i32 noundef -1, i32 noundef %i.deh, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.8024, i32 noundef %i.dei)
  br label %bb.xp

bb.xp:                                            ; preds = %..loopexit_crit_edge.1.i145.i.i.i, %.split46.i.i.i.i
  %.sroa.21.4.1.i140.i.i.i = phi i1 [ true, %.split46.i.i.i.i ], [ false, %..loopexit_crit_edge.1.i145.i.i.i ]
  %.sroa.52.4.1.i.i.i.i = phi ptr [ %i.deg, %.split46.i.i.i.i ], [ %.sroa.52.6.1.i.i.i.i, %..loopexit_crit_edge.1.i145.i.i.i ] ; 10 uses
  %.sroa.2810.6.1.i141.i.i.i = phi i32 [ %.sroa.2810.6.i134.i.i.i, %.split46.i.i.i.i ], [ %.sroa.2810.8.1.i.i.i.i, %..loopexit_crit_edge.1.i145.i.i.i ] ; 6 uses
  %.696.1.i.i.i.i = phi i32 [ %.696.i.i.i.i, %.split46.i.i.i.i ], [ %.898.1.i.i.i.i, %..loopexit_crit_edge.1.i145.i.i.i ] ; 3 uses
  %.680.1.i.i.i.i = phi i32 [ %.680.i.i.i.i, %.split46.i.i.i.i ], [ %.882.1.i.i.i.i, %..loopexit_crit_edge.1.i145.i.i.i ] ; 2 uses
  %.6.1.i142.i.i.i = phi i8 [ %.6.i135.i.i.i, %.split46.i.i.i.i ], [ %.8.1.i.i.i.i, %..loopexit_crit_edge.1.i145.i.i.i ] ; 2 uses
  br i1 %.sroa.21.4.1.i140.i.i.i, label %bb.xz, label %bb.xq

bb.xq:                                            ; preds = %bb.xp
  %i.dek = getelementptr i8, ptr %.sroa.52.4.1.i.i.i.i, i64 12
  %i.del = load i32, ptr %i.dek, align 4
  %i.dem = icmp eq i32 %.sroa.2810.6.1.i141.i.i.i, %i.del
  br i1 %i.dem, label %bb.xu, label %bb.xr

bb.xr:                                            ; preds = %bb.xq
  %i.den = getelementptr i8, ptr %.sroa.52.4.1.i.i.i.i, i64 4
  %i.deo = load i8, ptr %i.den, align 4, !range !9, !noundef !10
  %i.dep = trunc nuw i8 %i.deo to i1
  br i1 %i.dep, label %bb.xt, label %bb.xs

bb.xs:                                            ; preds = %bb.xr
  %i.deq = getelementptr i8, ptr %.sroa.52.4.1.i.i.i.i, i64 8
  %i.der = load i32, ptr %i.deq, align 4
  br label %bb.xt

bb.xt:                                            ; preds = %bb.xs, %bb.xr
  %.pn.i106.1.i.i.i.i = phi i32 [ %i.der, %bb.xs ], [ %i.cyj, %bb.xr ]
  %storemerge.i107.1.i.i.i.i = add i32 %.pn.i106.1.i.i.i.i, %.sroa.2810.6.1.i141.i.i.i
  br label %next_eht_scidx.exit112.1.i.i.i.i

bb.xu:                                            ; preds = %bb.xq
  %i.des = getelementptr i8, ptr %.sroa.52.4.1.i.i.i.i, i64 16
  %i.det = load i8, ptr %i.des, align 4, !range !9, !noundef !10
  %i.deu = trunc nuw i8 %i.det to i1
  br i1 %i.deu, label %.split46.1.i.i.i.i, label %bb.xv

bb.xv:                                            ; preds = %bb.xu
  %i.dev = getelementptr i8, ptr %.sroa.52.4.1.i.i.i.i, i64 20 ; 4 uses
  %i.dew = load i32, ptr %i.dev, align 4          ; 2 uses
  %i.dex = icmp eq i32 %.sroa.2810.6.1.i141.i.i.i, %i.dew
  br i1 %i.dex, label %bb.xw, label %next_eht_scidx.exit112.1.i.i.i.i

bb.xw:                                            ; preds = %bb.xv
  %i.dey = getelementptr i8, ptr %.sroa.52.4.1.i.i.i.i, i64 24
  %i.dez = load i8, ptr %i.dey, align 4, !range !9, !noundef !10
  %i.dfa = trunc nuw i8 %i.dez to i1
  br i1 %i.dfa, label %bb.xy, label %bb.xx

bb.xx:                                            ; preds = %bb.xw
  %i.dfb = getelementptr i8, ptr %.sroa.52.4.1.i.i.i.i, i64 28
  %i.dfc = load i32, ptr %i.dfb, align 4
  %i.dfd = add i32 %i.dfc, %.sroa.2810.6.1.i141.i.i.i
  br label %next_eht_scidx.exit112.1.i.i.i.i

bb.xy:                                            ; preds = %bb.xw
  %i.dfe = add i32 %.sroa.2810.6.1.i141.i.i.i, %i.cyj
  br label %next_eht_scidx.exit112.1.i.i.i.i

.split46.1.i.i.i.i:                               ; preds = %bb.xu
  %i.dff = load ptr, ptr %i.b, align 8
  %i.dfg = sub i32 %.696.1.i.i.i.i, %.696.i.i.i.i
  call void @proto_item_set_len(ptr noundef %i.dff, i32 noundef %i.dfg)
  br label %.loopexit36.split.i.i.i.i

bb.xz:                                            ; preds = %bb.xp
  %i.dfh = load i32, ptr %.sroa.52.4.1.i.i.i.i, align 4
  br label %next_eht_scidx.exit112.1.i.i.i.i

next_eht_scidx.exit112.1.i.i.i.i:                 ; preds = %bb.xz, %bb.xy, %bb.xx, %bb.xv, %bb.xt
  %.sroa.52.6.1.i.i.i.i = phi ptr [ %i.dev, %bb.xv ], [ %.sroa.52.4.1.i.i.i.i, %bb.xz ], [ %.sroa.52.4.1.i.i.i.i, %bb.xt ], [ %i.dev, %bb.xx ], [ %i.dev, %bb.xy ]
  %.sroa.2810.8.1.i.i.i.i = phi i32 [ %i.dew, %bb.xv ], [ %i.dfh, %bb.xz ], [ %storemerge.i107.1.i.i.i.i, %bb.xt ], [ %i.dfd, %bb.xx ], [ %i.dfe, %bb.xy ] ; 2 uses
  br label %bb.ya

bb.ya:                                            ; preds = %bb.yd, %next_eht_scidx.exit112.1.i.i.i.i
  %.742.1.i.i.i.i = phi i8 [ %.6.1.i142.i.i.i, %next_eht_scidx.exit112.1.i.i.i.i ], [ %.8.1.i.i.i.i, %bb.yd ] ; 2 uses
  %.78141.1.i.i.i.i = phi i32 [ %.680.1.i.i.i.i, %next_eht_scidx.exit112.1.i.i.i.i ], [ %.882.1.i.i.i.i, %bb.yd ]
  %.18640.1.i.i.i.i = phi i32 [ 1, %next_eht_scidx.exit112.1.i.i.i.i ], [ %i.dfp, %bb.yd ] ; 2 uses
  %.79739.1.i.i.i.i = phi i32 [ %.696.1.i.i.i.i, %next_eht_scidx.exit112.1.i.i.i.i ], [ %.898.1.i.i.i.i, %bb.yd ] ; 3 uses
  %.not103.1.i.i.i.i = icmp eq i32 %.78141.1.i.i.i.i, 0
  br i1 %.not103.1.i.i.i.i, label %bb.yc, label %bb.yb

bb.yb:                                            ; preds = %bb.ya
  %i.dfi = call signext i8 @tvb_get_int8(ptr noundef %1, i32 noundef %.79739.1.i.i.i.i) ; 2 uses
  %i.dfj = add i32 %.79739.1.i.i.i.i, 1
  %i.dfk = and i8 %i.dfi, 15
  br label %bb.yd

bb.yc:                                            ; preds = %bb.ya
  %i.dfl = ashr i8 %.742.1.i.i.i.i, 4
  br label %bb.yd

bb.yd:                                            ; preds = %bb.yc, %bb.yb
  %.898.1.i.i.i.i = phi i32 [ %i.dfj, %bb.yb ], [ %.79739.1.i.i.i.i, %bb.yc ] ; 3 uses
  %.882.1.i.i.i.i = phi i32 [ 0, %bb.yb ], [ 1, %bb.yc ] ; 2 uses
  %.8.1.i.i.i.i = phi i8 [ %i.dfi, %bb.yb ], [ %.742.1.i.i.i.i, %bb.yc ] ; 2 uses
  %.1.1.i143.i.i.i = phi i8 [ %i.dfk, %bb.yb ], [ %i.dfl, %bb.yc ]
  %i.dfm = load i32, ptr @hf_ieee80211_eht_mu_exclusive_beamforming_report_delta_snr, align 4
  %i.dfn = sext i8 %.1.1.i143.i.i.i to i32        ; 2 uses
  %i.dfo = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format(ptr noundef %i.dej, i32 noundef %i.dfm, ptr noundef %1, i32 noundef %.898.1.i.i.i.i, i32 noundef 1, i32 noundef %i.dfn, ptr noundef nonnull @.str.8029, i32 noundef %.18640.1.i.i.i.i, i32 noundef %.sroa.2810.8.1.i.i.i.i, i32 noundef %i.dfn) ; 0 uses
  %i.dfp = add nuw nsw i32 %.18640.1.i.i.i.i, 1   ; 2 uses
  %exitcond.1.not.i144.i.i.i = icmp eq i32 %i.dfp, %i.cyl
  br i1 %exitcond.1.not.i144.i.i.i, label %..loopexit_crit_edge.1.i145.i.i.i, label %bb.ya, !llvm.loop !55

..loopexit_crit_edge.1.i145.i.i.i:                ; preds = %bb.yd
  br label %bb.xp, !llvm.loop !54

.loopexit36.split.i.i.i.i:                        ; preds = %.split46.1.i.i.i.i, %.preheader.split.preheader..loopexit36.split_crit_edge.i.i.i.i
  %indvars.iv.next83.pre-phi.i.i.i.i = phi i64 [ %.pre160.i.i.i.i, %.preheader.split.preheader..loopexit36.split_crit_edge.i.i.i.i ], [ %indvars.iv.next85.1.i.i.i.i, %.split46.1.i.i.i.i ]
  %.sroa.2810.9.i.i.i.i = phi i32 [ %.sroa.2810.076.i.i.i.i, %.preheader.split.preheader..loopexit36.split_crit_edge.i.i.i.i ], [ %.sroa.2810.6.1.i141.i.i.i, %.split46.1.i.i.i.i ] ; 2 uses
  %.999.i.i.i.i = phi i32 [ %.09077.i.i.i.i, %.preheader.split.preheader..loopexit36.split_crit_edge.i.i.i.i ], [ %.696.1.i.i.i.i, %.split46.1.i.i.i.i ] ; 4 uses
  %.983.i.i.i.i = phi i32 [ %.07479.i.i.i.i, %.preheader.split.preheader..loopexit36.split_crit_edge.i.i.i.i ], [ %.680.1.i.i.i.i, %.split46.1.i.i.i.i ] ; 2 uses
  %.9.i146.i.i.i = phi i8 [ %.07280.i.i.i.i, %.preheader.split.preheader..loopexit36.split_crit_edge.i.i.i.i ], [ %.6.1.i142.i.i.i, %.split46.1.i.i.i.i ] ; 2 uses
  %6 = add i32 %i.cyn, 2
  %i.dfq = shl nuw i32 1, %6
  %i.dfr = and i32 %i.dfq, %i.cyk
  %i.dfs = icmp eq i32 %i.dfr, 0
  br i1 %i.dfs, label %.loopexit37.i.i.i.i, label %.split55.1.i.i.i.i

.split55.1.i.i.i.i:                               ; preds = %.loopexit36.split.i.i.i.i
  %indvars.iv.next85.194.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.dft = getelementptr [20 x i8], ptr @ru_242_tone_320MHz, i64 %indvars.iv.next83.pre-phi.i.i.i.i
  %i.dfu = load i32, ptr @ett_eht_mu_exclusive_beamforming_rpt_ru_index, align 4
  %i.dfv = trunc nuw nsw i64 %indvars.iv.next85.194.i.i.i.i to i32
  %i.dfw = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.cgx, ptr noundef %1, i32 noundef %.999.i.i.i.i, i32 noundef -1, i32 noundef %i.dfu, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.8024, i32 noundef %i.dfv)
  br label %bb.ye

bb.ye:                                            ; preds = %..loopexit_crit_edge.1124.i.i.i.i, %.split55.1.i.i.i.i
  %.sroa.21.4.195.i.i.i.i = phi i1 [ true, %.split55.1.i.i.i.i ], [ false, %..loopexit_crit_edge.1124.i.i.i.i ]
  %.sroa.52.4.196.i.i.i.i = phi ptr [ %i.dft, %.split55.1.i.i.i.i ], [ %.sroa.52.6.1108.i.i.i.i, %..loopexit_crit_edge.1124.i.i.i.i ] ; 10 uses
  %.sroa.2810.6.197.i.i.i.i = phi i32 [ %.sroa.2810.9.i.i.i.i, %.split55.1.i.i.i.i ], [ %.sroa.2810.8.1109.i.i.i.i, %..loopexit_crit_edge.1124.i.i.i.i ] ; 6 uses
  %.696.198.i.i.i.i = phi i32 [ %.999.i.i.i.i, %.split55.1.i.i.i.i ], [ %.898.1116.i.i.i.i, %..loopexit_crit_edge.1124.i.i.i.i ] ; 5 uses
  %.680.199.i.i.i.i = phi i32 [ %.983.i.i.i.i, %.split55.1.i.i.i.i ], [ %.882.1117.i.i.i.i, %..loopexit_crit_edge.1124.i.i.i.i ] ; 2 uses
  %.6.1100.i.i.i.i = phi i8 [ %.9.i146.i.i.i, %.split55.1.i.i.i.i ], [ %.8.1118.i.i.i.i, %..loopexit_crit_edge.1124.i.i.i.i ] ; 2 uses
  br i1 %.sroa.21.4.195.i.i.i.i, label %bb.zd, label %bb.yf

bb.yf:                                            ; preds = %bb.ye
  %i.dfx = getelementptr i8, ptr %.sroa.52.4.196.i.i.i.i, i64 12
  %i.dfy = load i32, ptr %i.dfx, align 4
  %i.dfz = icmp eq i32 %.sroa.2810.6.197.i.i.i.i, %i.dfy
  br i1 %i.dfz, label %bb.yj, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.dga = getelementptr i8, ptr %.sroa.52.4.196.i.i.i.i, i64 4
  %i.dgb = load i8, ptr %i.dga, align 4, !range !9, !noundef !10
  %i.dgc = trunc nuw i8 %i.dgb to i1
  br i1 %i.dgc, label %bb.yi, label %bb.yh

bb.yh:                                            ; preds = %bb.yg
  %i.dgd = getelementptr i8, ptr %.sroa.52.4.196.i.i.i.i, i64 8
  %i.dge = load i32, ptr %i.dgd, align 4
  br label %bb.yi

bb.yi:                                            ; preds = %bb.yh, %bb.yg
  %.pn.i106.1101.i.i.i.i = phi i32 [ %i.dge, %bb.yh ], [ %i.cyj, %bb.yg ]
  %storemerge.i107.1102.i.i.i.i = add i32 %.pn.i106.1101.i.i.i.i, %.sroa.2810.6.197.i.i.i.i
  br label %next_eht_scidx.exit112.1110.i.i.i.i

bb.yj:                                            ; preds = %bb.yf
  %i.dgf = getelementptr i8, ptr %.sroa.52.4.196.i.i.i.i, i64 16
  %i.dgg = load i8, ptr %i.dgf, align 4, !range !9, !noundef !10
  %i.dgh = trunc nuw i8 %i.dgg to i1
  br i1 %i.dgh, label %.split46.1107.i.i.i.i, label %bb.yk

bb.yk:                                            ; preds = %bb.yj
  %i.dgi = getelementptr i8, ptr %.sroa.52.4.196.i.i.i.i, i64 20 ; 4 uses
  %i.dgj = load i32, ptr %i.dgi, align 4          ; 2 uses
  %i.dgk = icmp eq i32 %.sroa.2810.6.197.i.i.i.i, %i.dgj
  br i1 %i.dgk, label %bb.yl, label %next_eht_scidx.exit112.1110.i.i.i.i

bb.yl:                                            ; preds = %bb.yk
  %i.dgl = getelementptr i8, ptr %.sroa.52.4.196.i.i.i.i, i64 24
  %i.dgm = load i8, ptr %i.dgl, align 4, !range !9, !noundef !10
  %i.dgn = trunc nuw i8 %i.dgm to i1
  br i1 %i.dgn, label %bb.yn, label %bb.ym

bb.ym:                                            ; preds = %bb.yl
  %i.dgo = getelementptr i8, ptr %.sroa.52.4.196.i.i.i.i, i64 28
  %i.dgp = load i32, ptr %i.dgo, align 4
  %i.dgq = add i32 %i.dgp, %.sroa.2810.6.197.i.i.i.i
  br label %next_eht_scidx.exit112.1110.i.i.i.i

bb.yn:                                            ; preds = %bb.yl
  %i.dgr = add i32 %.sroa.2810.6.197.i.i.i.i, %i.cyj
  br label %next_eht_scidx.exit112.1110.i.i.i.i

.split46.1107.i.i.i.i:                            ; preds = %bb.yj
  %i.dgs = load ptr, ptr %i.b, align 8
  %i.dgt = sub i32 %.696.198.i.i.i.i, %.999.i.i.i.i
  call void @proto_item_set_len(ptr noundef %i.dgs, i32 noundef %i.dgt)
  %i.dgu = getelementptr [20 x i8], ptr @ru_242_tone_320MHz, i64 %indvars.iv.next85.194.i.i.i.i
  %i.dgv = load i32, ptr @ett_eht_mu_exclusive_beamforming_rpt_ru_index, align 4
  %i.dgw = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.dgx = add i32 %i.dgw, 4
  %i.dgy = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.cgx, ptr noundef %1, i32 noundef %.696.198.i.i.i.i, i32 noundef -1, i32 noundef %i.dgv, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.8024, i32 noundef %i.dgx)
  br label %bb.yo

bb.yo:                                            ; preds = %..loopexit_crit_edge.1.1.i.i.i.i, %.split46.1107.i.i.i.i
  %.sroa.21.4.1.1.i.i.i.i = phi i1 [ true, %.split46.1107.i.i.i.i ], [ false, %..loopexit_crit_edge.1.1.i.i.i.i ]
  %.sroa.52.4.1.1.i.i.i.i = phi ptr [ %i.dgu, %.split46.1107.i.i.i.i ], [ %.sroa.52.6.1.1.i.i.i.i, %..loopexit_crit_edge.1.1.i.i.i.i ] ; 10 uses
  %.sroa.2810.6.1.1.i.i.i.i = phi i32 [ %.sroa.2810.6.197.i.i.i.i, %.split46.1107.i.i.i.i ], [ %.sroa.2810.8.1.1.i.i.i.i, %..loopexit_crit_edge.1.1.i.i.i.i ] ; 6 uses
  %.696.1.1.i.i.i.i = phi i32 [ %.696.198.i.i.i.i, %.split46.1107.i.i.i.i ], [ %.898.1.1.i.i.i.i, %..loopexit_crit_edge.1.1.i.i.i.i ] ; 3 uses
  %.680.1.1.i.i.i.i = phi i32 [ %.680.199.i.i.i.i, %.split46.1107.i.i.i.i ], [ %.882.1.1.i.i.i.i, %..loopexit_crit_edge.1.1.i.i.i.i ] ; 2 uses
  %.6.1.1.i.i.i.i = phi i8 [ %.6.1100.i.i.i.i, %.split46.1107.i.i.i.i ], [ %.8.1.1.i.i.i.i, %..loopexit_crit_edge.1.1.i.i.i.i ] ; 2 uses
  br i1 %.sroa.21.4.1.1.i.i.i.i, label %bb.yy, label %bb.yp

bb.yp:                                            ; preds = %bb.yo
  %i.dgz = getelementptr i8, ptr %.sroa.52.4.1.1.i.i.i.i, i64 12
  %i.dha = load i32, ptr %i.dgz, align 4
  %i.dhb = icmp eq i32 %.sroa.2810.6.1.1.i.i.i.i, %i.dha
  br i1 %i.dhb, label %bb.yt, label %bb.yq

bb.yq:                                            ; preds = %bb.yp
  %i.dhc = getelementptr i8, ptr %.sroa.52.4.1.1.i.i.i.i, i64 4
  %i.dhd = load i8, ptr %i.dhc, align 4, !range !9, !noundef !10
  %i.dhe = trunc nuw i8 %i.dhd to i1
  br i1 %i.dhe, label %bb.ys, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.dhf = getelementptr i8, ptr %.sroa.52.4.1.1.i.i.i.i, i64 8
  %i.dhg = load i32, ptr %i.dhf, align 4
  br label %bb.ys

bb.ys:                                            ; preds = %bb.yr, %bb.yq
  %.pn.i106.1.1.i.i.i.i = phi i32 [ %i.dhg, %bb.yr ], [ %i.cyj, %bb.yq ]
  %storemerge.i107.1.1.i.i.i.i = add i32 %.pn.i106.1.1.i.i.i.i, %.sroa.2810.6.1.1.i.i.i.i
  br label %next_eht_scidx.exit112.1.1.i.i.i.i

bb.yt:                                            ; preds = %bb.yp
  %i.dhh = getelementptr i8, ptr %.sroa.52.4.1.1.i.i.i.i, i64 16
  %i.dhi = load i8, ptr %i.dhh, align 4, !range !9, !noundef !10
  %i.dhj = trunc nuw i8 %i.dhi to i1
  br i1 %i.dhj, label %.split46.1.1.i.i.i.i, label %bb.yu

bb.yu:                                            ; preds = %bb.yt
  %i.dhk = getelementptr i8, ptr %.sroa.52.4.1.1.i.i.i.i, i64 20 ; 4 uses
  %i.dhl = load i32, ptr %i.dhk, align 4          ; 2 uses
  %i.dhm = icmp eq i32 %.sroa.2810.6.1.1.i.i.i.i, %i.dhl
  br i1 %i.dhm, label %bb.yv, label %next_eht_scidx.exit112.1.1.i.i.i.i

bb.yv:                                            ; preds = %bb.yu
  %i.dhn = getelementptr i8, ptr %.sroa.52.4.1.1.i.i.i.i, i64 24
  %i.dho = load i8, ptr %i.dhn, align 4, !range !9, !noundef !10
  %i.dhp = trunc nuw i8 %i.dho to i1
  br i1 %i.dhp, label %bb.yx, label %bb.yw

bb.yw:                                            ; preds = %bb.yv
  %i.dhq = getelementptr i8, ptr %.sroa.52.4.1.1.i.i.i.i, i64 28
  %i.dhr = load i32, ptr %i.dhq, align 4
  %i.dhs = add i32 %i.dhr, %.sroa.2810.6.1.1.i.i.i.i
  br label %next_eht_scidx.exit112.1.1.i.i.i.i

bb.yx:                                            ; preds = %bb.yv
  %i.dht = add i32 %.sroa.2810.6.1.1.i.i.i.i, %i.cyj
  br label %next_eht_scidx.exit112.1.1.i.i.i.i

.split46.1.1.i.i.i.i:                             ; preds = %bb.yt
  %i.dhu = load ptr, ptr %i.b, align 8
  %i.dhv = sub i32 %.696.1.1.i.i.i.i, %.696.198.i.i.i.i
  call void @proto_item_set_len(ptr noundef %i.dhu, i32 noundef %i.dhv)
  br label %.loopexit37.i.i.i.i

bb.yy:                                            ; preds = %bb.yo
  %i.dhw = load i32, ptr %.sroa.52.4.1.1.i.i.i.i, align 4
  br label %next_eht_scidx.exit112.1.1.i.i.i.i

next_eht_scidx.exit112.1.1.i.i.i.i:               ; preds = %bb.yy, %bb.yx, %bb.yw, %bb.yu, %bb.ys
  %.sroa.52.6.1.1.i.i.i.i = phi ptr [ %i.dhk, %bb.yu ], [ %.sroa.52.4.1.1.i.i.i.i, %bb.yy ], [ %.sroa.52.4.1.1.i.i.i.i, %bb.ys ], [ %i.dhk, %bb.yw ], [ %i.dhk, %bb.yx ]
  %.sroa.2810.8.1.1.i.i.i.i = phi i32 [ %i.dhl, %bb.yu ], [ %i.dhw, %bb.yy ], [ %storemerge.i107.1.1.i.i.i.i, %bb.ys ], [ %i.dhs, %bb.yw ], [ %i.dht, %bb.yx ] ; 2 uses
  br label %bb.yz

bb.yz:                                            ; preds = %bb.zc, %next_eht_scidx.exit112.1.1.i.i.i.i
  %.742.1.1.i.i.i.i = phi i8 [ %.6.1.1.i.i.i.i, %next_eht_scidx.exit112.1.1.i.i.i.i ], [ %.8.1.1.i.i.i.i, %bb.zc ] ; 2 uses
  %.78141.1.1.i.i.i.i = phi i32 [ %.680.1.1.i.i.i.i, %next_eht_scidx.exit112.1.1.i.i.i.i ], [ %.882.1.1.i.i.i.i, %bb.zc ]
  %.18640.1.1.i.i.i.i = phi i32 [ 1, %next_eht_scidx.exit112.1.1.i.i.i.i ], [ %i.die, %bb.zc ] ; 2 uses
  %.79739.1.1.i.i.i.i = phi i32 [ %.696.1.1.i.i.i.i, %next_eht_scidx.exit112.1.1.i.i.i.i ], [ %.898.1.1.i.i.i.i, %bb.zc ] ; 3 uses
  %.not103.1.1.i.i.i.i = icmp eq i32 %.78141.1.1.i.i.i.i, 0
  br i1 %.not103.1.1.i.i.i.i, label %bb.zb, label %bb.za

bb.za:                                            ; preds = %bb.yz
  %i.dhx = call signext i8 @tvb_get_int8(ptr noundef %1, i32 noundef %.79739.1.1.i.i.i.i) ; 2 uses
  %i.dhy = add i32 %.79739.1.1.i.i.i.i, 1
  %i.dhz = and i8 %i.dhx, 15
  br label %bb.zc

bb.zb:                                            ; preds = %bb.yz
  %i.dia = ashr i8 %.742.1.1.i.i.i.i, 4
  br label %bb.zc

bb.zc:                                            ; preds = %bb.zb, %bb.za
  %.898.1.1.i.i.i.i = phi i32 [ %i.dhy, %bb.za ], [ %.79739.1.1.i.i.i.i, %bb.zb ] ; 3 uses
  %.882.1.1.i.i.i.i = phi i32 [ 0, %bb.za ], [ 1, %bb.zb ] ; 2 uses
  %.8.1.1.i.i.i.i = phi i8 [ %i.dhx, %bb.za ], [ %.742.1.1.i.i.i.i, %bb.zb ] ; 2 uses
  %.1.1.1.i.i.i.i = phi i8 [ %i.dhz, %bb.za ], [ %i.dia, %bb.zb ]
  %i.dib = load i32, ptr @hf_ieee80211_eht_mu_exclusive_beamforming_report_delta_snr, align 4
  %i.dic = sext i8 %.1.1.1.i.i.i.i to i32         ; 2 uses
  %i.did = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format(ptr noundef %i.dgy, i32 noundef %i.dib, ptr noundef %1, i32 noundef %.898.1.1.i.i.i.i, i32 noundef 1, i32 noundef %i.dic, ptr noundef nonnull @.str.8029, i32 noundef %.18640.1.1.i.i.i.i, i32 noundef %.sroa.2810.8.1.1.i.i.i.i, i32 noundef %i.dic) ; 0 uses
  %i.die = add nuw nsw i32 %.18640.1.1.i.i.i.i, 1 ; 2 uses
  %exitcond.1.1.not.i.i.i.i = icmp eq i32 %i.die, %i.cyl
  br i1 %exitcond.1.1.not.i.i.i.i, label %..loopexit_crit_edge.1.1.i.i.i.i, label %bb.yz, !llvm.loop !55

..loopexit_crit_edge.1.1.i.i.i.i:                 ; preds = %bb.zc
  br label %bb.yo, !llvm.loop !54

bb.zd:                                            ; preds = %bb.ye
  %i.dif = load i32, ptr %.sroa.52.4.196.i.i.i.i, align 4
  br label %next_eht_scidx.exit112.1110.i.i.i.i

next_eht_scidx.exit112.1110.i.i.i.i:              ; preds = %bb.zd, %bb.yn, %bb.ym, %bb.yk, %bb.yi
  %.sroa.52.6.1108.i.i.i.i = phi ptr [ %i.dgi, %bb.yk ], [ %.sroa.52.4.196.i.i.i.i, %bb.zd ], [ %.sroa.52.4.196.i.i.i.i, %bb.yi ], [ %i.dgi, %bb.ym ], [ %i.dgi, %bb.yn ]
  %.sroa.2810.8.1109.i.i.i.i = phi i32 [ %i.dgj, %bb.yk ], [ %i.dif, %bb.zd ], [ %storemerge.i107.1102.i.i.i.i, %bb.yi ], [ %i.dgq, %bb.ym ], [ %i.dgr, %bb.yn ] ; 2 uses
  br label %bb.ze

bb.ze:                                            ; preds = %bb.zh, %next_eht_scidx.exit112.1110.i.i.i.i
  %.742.1111.i.i.i.i = phi i8 [ %.6.1100.i.i.i.i, %next_eht_scidx.exit112.1110.i.i.i.i ], [ %.8.1118.i.i.i.i, %bb.zh ] ; 2 uses
end_hunk_1
