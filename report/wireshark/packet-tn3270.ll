Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-tn3270?download=true
inline.NumInlined: 216
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 72
loop-unroll.NumUnrolled: 72
begin_hunk_0_@process_inbound_structured_field:bb.a
  %i.ef = load i32, ptr %i.ee, align 8            ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ed, i64 32
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ec, ptr noundef %1, i32 noundef %.02832.i.i209, i32 noundef %i.ef, i32 noundef %i.eh) ; 0 uses
  %i.ej = add i32 %i.ef, %.02832.i.i209           ; 4 uses
  %indvars.iv.next.i210 = add nuw nsw i64 %indvars.iv.i208, 1 ; 3 uses
  %i.ek = getelementptr [40 x i8], ptr @dissect_recovery_data.fields, i64 %indvars.iv.next.i210
  %i.el = load ptr, ptr %i.ek, align 8
  %.not.i.i211 = icmp eq i64 %indvars.iv.next.i210, 23
  br i1 %.not.i.i211, label %tn3270_add_hf_items.exit.i212, label %.preheader467, !llvm.loop !14

tn3270_add_hf_items.exit.i212:                    ; preds = %.preheader467
  %.neg.i.i213 = sub i32 %2, %i.ej
  %i.em = add i32 %.neg.i.i213, %5                ; 3 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %bb.j, label %dissect_recovery_data.exit

bb.j:                                             ; preds = %tn3270_add_hf_items.exit.i212
  %i.eo = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.ep = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.eo, ptr noundef %1, i32 noundef %i.ej, i32 noundef %i.em, i32 noundef 0) ; 0 uses
  br label %dissect_recovery_data.exit

dissect_recovery_data.exit:                       ; preds = %tn3270_add_hf_items.exit.i212, %bb.j
  %.0.i.i214 = phi i32 [ %i.em, %bb.j ], [ 0, %tn3270_add_hf_items.exit.i212 ]
  %i.eq = add i32 %.0.i.i214, %i.ej
  br label %dissect_query_reply_modes.exit

bb.k:                                             ; preds = %bb.a
  %i.er = load i32, ptr @hf_tn3270_partition_id, align 4
  %i.es = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.er, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i216 = load i32, ptr @hf_tn3270_resbytes, align 4
  %i.et = add i32 %2, 1
  %i.eu = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i216, ptr noundef %1, i32 noundef %i.et, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.pre18.i = load i32, ptr @hf_tn3270_field_data, align 4
  %i.ev = add i32 %2, 3
  %i.ew = add nsw i32 %5, -3
  %i.ex = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre18.i, ptr noundef %1, i32 noundef %i.ev, i32 noundef %i.ew, i32 noundef 46) ; 0 uses
  %i.ey = add i32 %5, %2
  br label %dissect_query_reply_modes.exit

bb.l:                                             ; preds = %bb.a
  %i.ez = load i32, ptr @hf_tn3270_ap_na, align 4
  %i.fa = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ez, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i218 = load i32, ptr @hf_tn3270_ap_m, align 4
  %i.fb = add i32 %2, 1
  %i.fc = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i218, ptr noundef %1, i32 noundef %i.fb, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.pre18.i219 = load i32, ptr @hf_tn3270_query_reply_alphanumeric_flags, align 4
  %i.fd = add i32 %2, 3
  %i.fe = load i32, ptr @ett_tn3270_query_reply_alphanumeric_flags, align 4
  %i.ff = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %1, i32 noundef %i.fd, i32 noundef %.pre18.i219, i32 noundef %i.fe, ptr noundef nonnull @dissect_query_reply_alphanumeric.byte, i32 noundef 0) ; 0 uses
  %i.fg = add i32 %2, 4                           ; 3 uses
  %i.fh = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %i.fg)
  %cond.i.i = icmp eq i16 %i.fh, 1794
  br i1 %cond.i.i, label %tn3270_add_hf_items.exit.i.i222, label %dissect_query_reply_alphanumeric_sd_parms.exit.i

tn3270_add_hf_items.exit.i.i222:                  ; preds = %bb.l
  %i.fi = load i32, ptr @hf_tn3270_sdp_ln, align 4
  %i.fj = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.fi, ptr noundef %1, i32 noundef %i.fg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i.i223 = load i32, ptr @hf_tn3270_sdp_id, align 4
  %i.fk = add i32 %2, 5
  %i.fl = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i.i223, ptr noundef %1, i32 noundef %i.fk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre11.i.i = load i32, ptr @hf_tn3270_ap_cm, align 4
  %i.fm = add i32 %2, 6
  %i.fn = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre11.i.i, ptr noundef %1, i32 noundef %i.fm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre12.i.i = load i32, ptr @hf_tn3270_ap_ro, align 4
  %i.fo = add i32 %2, 7
  %i.fp = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre12.i.i, ptr noundef %1, i32 noundef %i.fo, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre13.i.i = load i32, ptr @hf_tn3270_ap_co, align 4
  %i.fq = add i32 %2, 8
  %i.fr = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre13.i.i, ptr noundef %1, i32 noundef %i.fq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre14.i.i = load i32, ptr @hf_tn3270_ap_fo, align 4
  %i.fs = add i32 %2, 9
  %i.ft = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre14.i.i, ptr noundef %1, i32 noundef %i.fs, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_alphanumeric_sd_parms.exit.i

dissect_query_reply_alphanumeric_sd_parms.exit.i: ; preds = %tn3270_add_hf_items.exit.i.i222, %bb.l
  %.0.i.i220 = phi i32 [ 7, %tn3270_add_hf_items.exit.i.i222 ], [ 0, %bb.l ]
  %i.fu = add i32 %.0.i.i220, %i.fg               ; 3 uses
  %.neg.i.i221 = sub i32 %2, %i.fu
  %i.fv = add i32 %.neg.i.i221, %5                ; 3 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %bb.m, label %dissect_query_reply_alphanumeric.exit

bb.m:                                             ; preds = %dissect_query_reply_alphanumeric_sd_parms.exit.i
  %i.fx = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.fy = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.fx, ptr noundef %1, i32 noundef %i.fu, i32 noundef %i.fv, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_alphanumeric.exit

dissect_query_reply_alphanumeric.exit:            ; preds = %dissect_query_reply_alphanumeric_sd_parms.exit.i, %bb.m
  %.0.i16.i = phi i32 [ %i.fv, %bb.m ], [ 0, %dissect_query_reply_alphanumeric_sd_parms.exit.i ]
  %i.fz = add i32 %.0.i16.i, %i.fu
  br label %dissect_query_reply_modes.exit

bb.n:                                             ; preds = %bb.a, %bb.a
  %i.ga = load i32, ptr @hf_tn3270_res_twobytes, align 4
  %i.gb = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ga, ptr noundef %1, i32 noundef %2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.gc = icmp sgt i32 %5, 2
  br i1 %i.gc, label %bb.o, label %dissect_query_reply_resbytes.exit

bb.o:                                             ; preds = %bb.n
  %i.gd = add i32 %2, 2
  %i.ge = add nsw i32 %5, -2
  %i.gf = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.gg = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.gf, ptr noundef %1, i32 noundef %i.gd, i32 noundef %i.ge, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_resbytes.exit

dissect_query_reply_resbytes.exit:                ; preds = %bb.n, %bb.o
  %.0.i.i225 = phi i32 [ %5, %bb.o ], [ 2, %bb.n ]
  %i.gh = add i32 %.0.i.i225, %2
  br label %dissect_query_reply_modes.exit

bb.p:                                             ; preds = %bb.a
  %i.gi = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %2)
  %i.gj = add i32 %2, 1                           ; 2 uses
  %i.gk = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.gj)
  %i.gl = load i32, ptr @hf_tn3270_character_sets_flags1, align 4
  %i.gm = load i32, ptr @ett_tn3270_character_sets_flags1, align 4
  %i.gn = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.gl, i32 noundef %i.gm, ptr noundef nonnull @dissect_query_reply_character_sets.byte1, i32 noundef 0) ; 0 uses
  %.pre.i227 = load i32, ptr @hf_tn3270_character_sets_flags2, align 4
  %i.go = load i32, ptr @ett_tn3270_character_sets_flags2, align 4
  %i.gp = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %1, i32 noundef %i.gj, i32 noundef %.pre.i227, i32 noundef %i.go, ptr noundef nonnull @dissect_query_reply_character_sets.byte2, i32 noundef 0) ; 0 uses
  %.pre89.i.a = load i32, ptr @hf_tn3270_sdw, align 4
  %i.gq = add i32 %2, 2
  %i.gr = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre89.i.a, ptr noundef %1, i32 noundef %i.gq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre90.i.a = load i32, ptr @hf_tn3270_sdh, align 4
  %i.gs = add i32 %2, 3
  %i.gt = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre90.i.a, ptr noundef %1, i32 noundef %i.gs, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre91.i.a = load i32, ptr @hf_tn3270_form, align 4
  %i.gu = add i32 %2, 4
  %i.gv = load i32, ptr @ett_tn3270_character_sets_form, align 4
  %i.gw = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %1, i32 noundef %i.gu, i32 noundef %.pre91.i.a, i32 noundef %i.gv, ptr noundef nonnull @dissect_query_reply_character_sets.byte3, i32 noundef 0) ; 0 uses
  %.pre92.i.a = load i32, ptr @hf_tn3270_formres, align 4
  %i.gx = add i32 %2, 5
  %i.gy = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre92.i.a, ptr noundef %1, i32 noundef %i.gx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre93.i.a = load i32, ptr @hf_tn3270_formres, align 4
  %i.gz = add i32 %2, 6
  %i.ha = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre93.i.a, ptr noundef %1, i32 noundef %i.gz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre94.i.a = load i32, ptr @hf_tn3270_formres, align 4
  %i.hb = add i32 %2, 7
  %i.hc = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre94.i.a, ptr noundef %1, i32 noundef %i.hb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre95.i.a = load i32, ptr @hf_tn3270_cs_dl, align 4
  %i.hd = add i32 %2, 8
  %i.he = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre95.i.a, ptr noundef %1, i32 noundef %i.hd, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.hf = add i32 %2, 9                           ; 2 uses
  %i.hg = icmp sgt i32 %5, 9
  br i1 %i.hg, label %.lr.ph.i47.preheader.lr.ph.i, label %tn3270_add_hf_items.exit._crit_edge.i

.lr.ph.i47.preheader.lr.ph.i:                     ; preds = %bb.p
  %i.hh = zext i8 %i.gi to i32                    ; 3 uses
  %i.hi = and i32 %i.hh, 8
  %.not.i = icmp eq i32 %i.hi, 0
  %i.hj = and i32 %i.hh, 4
  %.not44.i = icmp eq i32 %i.hj, 0
  %i.hk = and i32 %i.hh, 2
  %.not45.i = icmp eq i32 %i.hk, 0
  %i.hl = and i8 %i.gk, 16
  %.not46.i = icmp eq i8 %i.hl, 0
  br label %tn3270_add_hf_items.exit51.i

tn3270_add_hf_items.exit51.i:                     ; preds = %tn3270_add_hf_items.exit71.i, %.lr.ph.i47.preheader.lr.ph.i
  %.077.i = phi i32 [ %i.hf, %.lr.ph.i47.preheader.lr.ph.i ], [ %.4.i, %tn3270_add_hf_items.exit71.i ] ; 6 uses
  %i.hm = load i32, ptr @hf_tn3270_cs_descriptor_set, align 4
  %i.hn = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.hm, ptr noundef %1, i32 noundef %.077.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre96.i = load i32, ptr @hf_tn3270_cs_descriptor_flags, align 4
  %i.ho = add i32 %.077.i, 1
  %i.hp = load i32, ptr @ett_tn3270_cs_descriptor_flags, align 4
  %i.hq = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %1, i32 noundef %i.ho, i32 noundef %.pre96.i, i32 noundef %i.hp, ptr noundef nonnull @dissect_query_reply_character_sets.byte4, i32 noundef 0) ; 0 uses
  %.pre97.i = load i32, ptr @hf_tn3270_lcid, align 4
  %i.hr = add i32 %.077.i, 2
  %i.hs = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre97.i, ptr noundef %1, i32 noundef %i.hr, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ht = add i32 %.077.i, 3                      ; 2 uses
  br i1 %.not.i, label %tn3270_add_hf_items.exit56.i, label %tn3270_add_hf_items.exit56.loopexit.i

tn3270_add_hf_items.exit56.loopexit.i:            ; preds = %tn3270_add_hf_items.exit51.i
  %i.hu = load i32, ptr @hf_tn3270_sw, align 4
  %i.hv = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.hu, ptr noundef %1, i32 noundef %i.ht, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre98.i = load i32, ptr @hf_tn3270_sh, align 4
  %i.hw = add i32 %.077.i, 4
  %i.hx = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre98.i, ptr noundef %1, i32 noundef %i.hw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.hy = add i32 %.077.i, 5
  br label %tn3270_add_hf_items.exit56.i

tn3270_add_hf_items.exit56.i:                     ; preds = %tn3270_add_hf_items.exit56.loopexit.i, %tn3270_add_hf_items.exit51.i
  %.1.i = phi i32 [ %i.ht, %tn3270_add_hf_items.exit51.i ], [ %i.hy, %tn3270_add_hf_items.exit56.loopexit.i ] ; 4 uses
  br i1 %.not44.i, label %tn3270_add_hf_items.exit61.i, label %tn3270_add_hf_items.exit61.loopexit.i

tn3270_add_hf_items.exit61.loopexit.i:            ; preds = %tn3270_add_hf_items.exit56.i
  %i.hz = load i32, ptr @hf_tn3270_ssubsn, align 4
  %i.ia = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.hz, ptr noundef %1, i32 noundef %.1.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre99.i = load i32, ptr @hf_tn3270_esubsn, align 4
  %i.ib = add i32 %.1.i, 1
  %i.ic = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre99.i, ptr noundef %1, i32 noundef %i.ib, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.id = add i32 %.1.i, 2
  br label %tn3270_add_hf_items.exit61.i

tn3270_add_hf_items.exit61.i:                     ; preds = %tn3270_add_hf_items.exit61.loopexit.i, %tn3270_add_hf_items.exit56.i
  %.2.i = phi i32 [ %.1.i, %tn3270_add_hf_items.exit56.i ], [ %i.id, %tn3270_add_hf_items.exit61.loopexit.i ] ; 3 uses
  br i1 %.not45.i, label %tn3270_add_hf_items.exit66.i, label %tn3270_add_hf_items.exit66.loopexit.i

tn3270_add_hf_items.exit66.loopexit.i:            ; preds = %tn3270_add_hf_items.exit61.i
  %i.ie = load i32, ptr @hf_tn3270_ccsgid, align 4
  %i.if = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ie, ptr noundef %1, i32 noundef %.2.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %7 = add i32 %.2.i, 4
  br label %tn3270_add_hf_items.exit66.i

tn3270_add_hf_items.exit66.i:                     ; preds = %tn3270_add_hf_items.exit66.loopexit.i, %tn3270_add_hf_items.exit61.i
  %.3.i = phi i32 [ %.2.i, %tn3270_add_hf_items.exit61.i ], [ %7, %tn3270_add_hf_items.exit66.loopexit.i ] ; 3 uses
  br i1 %.not46.i, label %tn3270_add_hf_items.exit71.i, label %tn3270_add_hf_items.exit71.loopexit.i

tn3270_add_hf_items.exit71.loopexit.i:            ; preds = %tn3270_add_hf_items.exit66.i
  %i.ig = load i32, ptr @hf_tn3270_ccsid, align 4
  %i.ih = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ig, ptr noundef %1, i32 noundef %.3.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %8 = add i32 %.3.i, 2
  br label %tn3270_add_hf_items.exit71.i

tn3270_add_hf_items.exit71.i:                     ; preds = %tn3270_add_hf_items.exit71.loopexit.i, %tn3270_add_hf_items.exit66.i
  %.4.i = phi i32 [ %.3.i, %tn3270_add_hf_items.exit66.i ], [ %8, %tn3270_add_hf_items.exit71.loopexit.i ] ; 3 uses
  %i.ii = sub i32 %.4.i, %2
  %i.ij = icmp slt i32 %i.ii, %5
  br i1 %i.ij, label %tn3270_add_hf_items.exit51.i, label %tn3270_add_hf_items.exit._crit_edge.i, !llvm.loop !16

tn3270_add_hf_items.exit._crit_edge.i:            ; preds = %tn3270_add_hf_items.exit71.i, %bb.p
  %.0.lcssa.i = phi i32 [ %i.hf, %bb.p ], [ %.4.i, %tn3270_add_hf_items.exit71.i ] ; 3 uses
  %.neg.i.i228 = sub i32 %2, %.0.lcssa.i
  %i.ik = add i32 %.neg.i.i228, %5                ; 3 uses
  %i.il = icmp sgt i32 %i.ik, 0
  br i1 %i.il, label %bb.q, label %dissect_query_reply_character_sets.exit

bb.q:                                             ; preds = %tn3270_add_hf_items.exit._crit_edge.i
  %i.im = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.in = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.im, ptr noundef %1, i32 noundef %.0.lcssa.i, i32 noundef %i.ik, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_character_sets.exit

dissect_query_reply_character_sets.exit:          ; preds = %tn3270_add_hf_items.exit._crit_edge.i, %bb.q
  %.0.i.i229 = phi i32 [ %i.ik, %bb.q ], [ 0, %tn3270_add_hf_items.exit._crit_edge.i ]
  %i.io = add i32 %.0.i.i229, %.0.lcssa.i
  br label %dissect_query_reply_modes.exit

bb.r:                                             ; preds = %bb.a
  %i.ip = add i32 %2, 1                           ; 2 uses
  %i.iq = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ip) ; 2 uses
  %i.ir = load i32, ptr @hf_tn3270_color_flags, align 4
  %i.is = load i32, ptr @ett_tn3270_color_flags, align 4
  %i.it = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.ir, i32 noundef %i.is, ptr noundef nonnull @dissect_query_reply_color.byte, i32 noundef 0) ; 0 uses
  %.pre.i231 = load i32, ptr @hf_tn3270_c_np, align 4
  %i.iu = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i231, ptr noundef %1, i32 noundef %i.ip, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.iv = add i32 %2, 2                           ; 2 uses
  %i.iw = zext i8 %i.iq to i32
  %.not.i232 = icmp eq i8 %i.iq, 0
  br i1 %.not.i232, label %tn3270_add_hf_items.exit._crit_edge.i236, label %tn3270_add_hf_items.exit.i233

tn3270_add_hf_items.exit.i233:                    ; preds = %bb.r, %tn3270_add_hf_items.exit.i233
  %.038.i = phi i32 [ %i.jj, %tn3270_add_hf_items.exit.i233 ], [ 0, %bb.r ]
  %.03537.i = phi i32 [ %i.ji, %tn3270_add_hf_items.exit.i233 ], [ %i.iv, %bb.r ] ; 2 uses
  %i.ix = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.03537.i)
  %i.iy = icmp eq i8 %i.ix, -1
  %i.iz = zext i1 %i.iy to i32
  %spec.select.i = add i32 %.03537.i, %i.iz       ; 3 uses
  %i.ja = load i32, ptr @hf_tn3270_c_cav, align 4
  %i.jb = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ja, ptr noundef %1, i32 noundef %spec.select.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.jc = add i32 %spec.select.i, 1               ; 2 uses
  %i.jd = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.jc)
  %i.je = icmp eq i8 %i.jd, -1
  %i.jf = add i32 %spec.select.i, 2
  %.2.i234 = select i1 %i.je, i32 %i.jf, i32 %i.jc ; 2 uses
  %i.jg = load i32, ptr @hf_tn3270_c_ci, align 4
  %i.jh = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.jg, ptr noundef %1, i32 noundef %.2.i234, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ji = add i32 %.2.i234, 1                     ; 2 uses
  %i.jj = add nuw nsw i32 %.038.i, 1              ; 2 uses
  %exitcond.not.i235 = icmp eq i32 %i.jj, %i.iw
  br i1 %exitcond.not.i235, label %tn3270_add_hf_items.exit._crit_edge.i236, label %tn3270_add_hf_items.exit.i233, !llvm.loop !17

tn3270_add_hf_items.exit._crit_edge.i236:         ; preds = %tn3270_add_hf_items.exit.i233, %bb.r
  %.035.lcssa.i = phi i32 [ %i.iv, %bb.r ], [ %i.ji, %tn3270_add_hf_items.exit.i233 ] ; 6 uses
  %i.jk = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %.035.lcssa.i)
  %cond.i.i237 = icmp eq i16 %i.jk, 1026
  br i1 %cond.i.i237, label %tn3270_add_hf_items.exit.i.i240, label %dissect_query_reply_color_sd_parms.exit.i

tn3270_add_hf_items.exit.i.i240:                  ; preds = %tn3270_add_hf_items.exit._crit_edge.i236
  %i.jl = load i32, ptr @hf_tn3270_sdp_ln, align 4
  %i.jm = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.jl, ptr noundef %1, i32 noundef %.035.lcssa.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i.i241 = load i32, ptr @hf_tn3270_sdp_id, align 4
  %i.jn = add i32 %.035.lcssa.i, 1
  %i.jo = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i.i241, ptr noundef %1, i32 noundef %i.jn, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre11.i.i242 = load i32, ptr @hf_tn3270_db_cavdef, align 4
  %i.jp = add i32 %.035.lcssa.i, 2
  %i.jq = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre11.i.i242, ptr noundef %1, i32 noundef %i.jp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre12.i.i243 = load i32, ptr @hf_tn3270_db_cidef, align 4
  %i.jr = add i32 %.035.lcssa.i, 3
  %i.js = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre12.i.i243, ptr noundef %1, i32 noundef %i.jr, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_color_sd_parms.exit.i

dissect_query_reply_color_sd_parms.exit.i:        ; preds = %tn3270_add_hf_items.exit.i.i240, %tn3270_add_hf_items.exit._crit_edge.i236
  %.0.i.i238 = phi i32 [ 4, %tn3270_add_hf_items.exit.i.i240 ], [ 0, %tn3270_add_hf_items.exit._crit_edge.i236 ]
  %i.jt = add i32 %.0.i.i238, %.035.lcssa.i       ; 3 uses
  %.neg.i.i239 = sub i32 %2, %i.jt
  %i.ju = add i32 %.neg.i.i239, %5                ; 3 uses
  %i.jv = icmp sgt i32 %i.ju, 0
  br i1 %i.jv, label %bb.s, label %dissect_query_reply_color.exit

bb.s:                                             ; preds = %dissect_query_reply_color_sd_parms.exit.i
  %i.jw = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.jx = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.jw, ptr noundef %1, i32 noundef %i.jt, i32 noundef %i.ju, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_color.exit

dissect_query_reply_color.exit:                   ; preds = %dissect_query_reply_color_sd_parms.exit.i, %bb.s
  %.0.i36.i = phi i32 [ %i.ju, %bb.s ], [ 0, %dissect_query_reply_color_sd_parms.exit.i ]
  %i.jy = add i32 %.0.i36.i, %i.jt
  br label %dissect_query_reply_modes.exit

bb.t:                                             ; preds = %bb.a
  %i.jz = load i32, ptr @hf_tn3270_res_twobytes, align 4
  %i.ka = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.jz, ptr noundef %1, i32 noundef %2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.pre.i245 = load i32, ptr @hf_tn3270_limin, align 4
  %i.kb = add i32 %2, 2
  %i.kc = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i245, ptr noundef %1, i32 noundef %i.kb, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.pre13.i = load i32, ptr @hf_tn3270_limout, align 4
  %i.kd = add i32 %2, 4
  %i.ke = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre13.i, ptr noundef %1, i32 noundef %i.kd, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.pre14.i = load i32, ptr @hf_tn3270_featl, align 4
  %i.kf = add i32 %2, 6
  %i.kg = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre14.i, ptr noundef %1, i32 noundef %i.kf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre15.i = load i32, ptr @hf_tn3270_feats, align 4
  %i.kh = add i32 %2, 7
  %i.ki = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre15.i, ptr noundef %1, i32 noundef %i.kh, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.kj = icmp sgt i32 %5, 9
  br i1 %i.kj, label %bb.u, label %dissect_query_reply_cooperative.exit

bb.u:                                             ; preds = %bb.t
  %i.kk = add i32 %2, 9
  %i.kl = add nsw i32 %5, -9
  %i.km = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.kn = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.km, ptr noundef %1, i32 noundef %i.kk, i32 noundef %i.kl, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_cooperative.exit

dissect_query_reply_cooperative.exit:             ; preds = %bb.t, %bb.u
  %.0.i.i246 = phi i32 [ %5, %bb.u ], [ 9, %bb.t ]
  %i.ko = add i32 %.0.i.i246, %2
  br label %dissect_query_reply_modes.exit

bb.v:                                             ; preds = %bb.a
  %i.kp = load i32, ptr @hf_tn3270_dc_dir, align 4
  %i.kq = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.kp, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i248 = load i32, ptr @hf_tn3270_resbyte, align 4
  %i.kr = add i32 %2, 1
  %i.ks = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i248, ptr noundef %1, i32 noundef %i.kr, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.kt = icmp sgt i32 %5, 2
  br i1 %i.kt, label %bb.w, label %dissect_query_reply_data_chaining.exit

bb.w:                                             ; preds = %bb.v
  %i.ku = add nsw i32 %5, -2
  %i.kv = add i32 %2, 2
  %i.kw = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.kx = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.kw, ptr noundef %1, i32 noundef %i.kv, i32 noundef %i.ku, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_data_chaining.exit

dissect_query_reply_data_chaining.exit:           ; preds = %bb.v, %bb.w
  %.0.i.i249 = phi i32 [ %5, %bb.w ], [ 2, %bb.v ]
  %i.ky = add i32 %.0.i.i249, %2
  br label %dissect_query_reply_modes.exit

bb.x:                                             ; preds = %bb.a
  %i.kz = load i32, ptr @hf_tn3270_ds_default_sfid, align 4
  %i.la = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.kz, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.02123.i = add i32 %2, 1                       ; 2 uses
  %i.lb = icmp sgt i32 %5, 1
  br i1 %i.lb, label %.lr.ph.i, label %dissect_query_reply_data_streams.exit

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.i
  %.02125.i = phi i32 [ %.021.i, %.lr.ph.i ], [ %.02123.i, %bb.x ] ; 2 uses
  %.024.i = phi i32 [ %i.le, %.lr.ph.i ], [ 0, %bb.x ]
  %i.lc = load i32, ptr @hf_tn3270_ds_sfid, align 4
  %i.ld = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.lc, ptr noundef %1, i32 noundef %.02125.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.le = add nuw nsw i32 %.024.i, 1              ; 2 uses
  %.021.i = add i32 %.02125.i, 1                  ; 5 uses
  %.neg.i = sub i32 %2, %.021.i
  %i.lf = add nsw i32 %.neg.i, %5                 ; 4 uses
  %i.lg = icmp slt i32 %i.le, %i.lf
  br i1 %i.lg, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !18

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.lh = icmp sgt i32 %i.lf, 0
  br i1 %i.lh, label %bb.y, label %dissect_query_reply_data_streams.exit

bb.y:                                             ; preds = %._crit_edge.i
  %i.li = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.lj = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.li, ptr noundef %1, i32 noundef %.021.i, i32 noundef %i.lf, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_data_streams.exit

dissect_query_reply_data_streams.exit:            ; preds = %bb.x, %._crit_edge.i, %bb.y
  %.021.lcssa32.i = phi i32 [ %.021.i, %bb.y ], [ %.021.i, %._crit_edge.i ], [ %.02123.i, %bb.x ]
  %.0.i.i250 = phi i32 [ %i.lf, %bb.y ], [ 0, %._crit_edge.i ], [ 0, %bb.x ]
  %i.lk = add i32 %.0.i.i250, %.021.lcssa32.i
  br label %dissect_query_reply_modes.exit

bb.z:                                             ; preds = %bb.a
  %i.ll = load i32, ptr @hf_tn3270_resbyte, align 4
  %i.lm = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ll, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %9 = add i32 %2, 1                              ; 3 uses
  %i.ln = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %9)
  %.not.i21.i = icmp eq i8 %i.ln, 3
  br i1 %.not.i21.i, label %bb.ac, label %dissect_query_reply_dbcs_asia_sd_parms.exit.i

tn3270_add_hf_items.exit.i251:                    ; preds = %dissect_query_reply_dbcs_asia_sd_parms.exit.i
  %i.lo = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.mq)
  %.not.i21.1.i = icmp eq i8 %i.lo, 3
  br i1 %.not.i21.1.i, label %bb.aa, label %dissect_query_reply_dbcs_asia_sd_parms.exit.1.i

bb.aa:                                            ; preds = %tn3270_add_hf_items.exit.i251
  %i.lp = add i32 %i.mq, 1                        ; 2 uses
  %i.lq = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.lp)
  switch i8 %i.lq, label %dissect_query_reply_dbcs_asia_sd_parms.exit.1.i [
    i8 1, label %.sink.split.i.1.i
    i8 2, label %tn3270_add_hf_items.exit22.i.1.i
  ]

tn3270_add_hf_items.exit22.i.1.i:                 ; preds = %bb.aa
  br label %.sink.split.i.1.i

.sink.split.i.1.i:                                ; preds = %tn3270_add_hf_items.exit22.i.1.i, %bb.aa
  %hf_tn3270_asia_sdp_sosi_soset.sink.i.1.i = phi ptr [ @hf_tn3270_asia_sdp_ic_func, %tn3270_add_hf_items.exit22.i.1.i ], [ @hf_tn3270_asia_sdp_sosi_soset, %bb.aa ]
  %i.lr = load i32, ptr @hf_tn3270_sdp_ln, align 4
  %i.ls = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.lr, ptr noundef %1, i32 noundef %i.mq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre28.i.1.i = load i32, ptr @hf_tn3270_sdp_id, align 4
  %i.lt = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre28.i.1.i, ptr noundef %1, i32 noundef %i.lp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre29.i.1.i = load i32, ptr %hf_tn3270_asia_sdp_sosi_soset.sink.i.1.i, align 4
  %i.lu = add i32 %i.mq, 2
  %i.lv = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre29.i.1.i, ptr noundef %1, i32 noundef %i.lu, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_dbcs_asia_sd_parms.exit.1.i

dissect_query_reply_dbcs_asia_sd_parms.exit.1.i:  ; preds = %.sink.split.i.1.i, %bb.aa, %tn3270_add_hf_items.exit.i251
  %.017.i.1.i = phi i32 [ 0, %bb.aa ], [ 0, %tn3270_add_hf_items.exit.i251 ], [ 3, %.sink.split.i.1.i ]
  %i.lw = add i32 %.017.i.1.i, %i.mq              ; 7 uses
  %i.lx = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.lw)
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %tn3270_add_hf_items.exit.2.i, label %tn3270_add_hf_items.exit.1.i

tn3270_add_hf_items.exit.1.i:                     ; preds = %dissect_query_reply_dbcs_asia_sd_parms.exit.1.i
  %i.lz = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.lw)
  %.not.i21.2.i = icmp eq i8 %i.lz, 3
  br i1 %.not.i21.2.i, label %bb.ab, label %dissect_query_reply_dbcs_asia_sd_parms.exit.2.i

bb.ab:                                            ; preds = %tn3270_add_hf_items.exit.1.i
  %i.ma = add i32 %i.lw, 1                        ; 2 uses
  %i.mb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ma)
  switch i8 %i.mb, label %dissect_query_reply_dbcs_asia_sd_parms.exit.2.i [
    i8 1, label %.sink.split.i.2.i
    i8 2, label %tn3270_add_hf_items.exit22.i.2.i
  ]

tn3270_add_hf_items.exit22.i.2.i:                 ; preds = %bb.ab
  br label %.sink.split.i.2.i

.sink.split.i.2.i:                                ; preds = %tn3270_add_hf_items.exit22.i.2.i, %bb.ab
  %hf_tn3270_asia_sdp_sosi_soset.sink.i.2.i = phi ptr [ @hf_tn3270_asia_sdp_ic_func, %tn3270_add_hf_items.exit22.i.2.i ], [ @hf_tn3270_asia_sdp_sosi_soset, %bb.ab ]
  %i.mc = load i32, ptr @hf_tn3270_sdp_ln, align 4
  %i.md = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.mc, ptr noundef %1, i32 noundef %i.lw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre28.i.2.i = load i32, ptr @hf_tn3270_sdp_id, align 4
  %i.me = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre28.i.2.i, ptr noundef %1, i32 noundef %i.ma, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre29.i.2.i = load i32, ptr %hf_tn3270_asia_sdp_sosi_soset.sink.i.2.i, align 4
  %i.mf = add i32 %i.lw, 2
  %i.mg = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre29.i.2.i, ptr noundef %1, i32 noundef %i.mf, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_dbcs_asia_sd_parms.exit.2.i

dissect_query_reply_dbcs_asia_sd_parms.exit.2.i:  ; preds = %.sink.split.i.2.i, %bb.ab, %tn3270_add_hf_items.exit.1.i
  %.017.i.2.i = phi i32 [ 0, %bb.ab ], [ 0, %tn3270_add_hf_items.exit.1.i ], [ 3, %.sink.split.i.2.i ]
  %i.mh = add i32 %.017.i.2.i, %i.lw              ; 2 uses
  %i.mi = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.mh) ; 0 uses
  br label %tn3270_add_hf_items.exit.2.i

bb.ac:                                            ; preds = %bb.z
  %i.mj = add i32 %2, 2                           ; 2 uses
  %i.mk = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.mj)
  switch i8 %i.mk, label %dissect_query_reply_dbcs_asia_sd_parms.exit.i [
    i8 1, label %.sink.split.i.i
    i8 2, label %tn3270_add_hf_items.exit22.i.i
  ]

tn3270_add_hf_items.exit22.i.i:                   ; preds = %bb.ac
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %tn3270_add_hf_items.exit22.i.i, %bb.ac
  %hf_tn3270_asia_sdp_sosi_soset.sink.i.i = phi ptr [ @hf_tn3270_asia_sdp_ic_func, %tn3270_add_hf_items.exit22.i.i ], [ @hf_tn3270_asia_sdp_sosi_soset, %bb.ac ]
  %i.ml = load i32, ptr @hf_tn3270_sdp_ln, align 4
  %i.mm = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ml, ptr noundef %1, i32 noundef %9, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre28.i.i = load i32, ptr @hf_tn3270_sdp_id, align 4
  %i.mn = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre28.i.i, ptr noundef %1, i32 noundef %i.mj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre29.i.i = load i32, ptr %hf_tn3270_asia_sdp_sosi_soset.sink.i.i, align 4
  %i.mo = add i32 %2, 3
  %i.mp = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre29.i.i, ptr noundef %1, i32 noundef %i.mo, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_dbcs_asia_sd_parms.exit.i

dissect_query_reply_dbcs_asia_sd_parms.exit.i:    ; preds = %.sink.split.i.i, %bb.ac, %bb.z
  %.017.i.i = phi i32 [ 0, %bb.ac ], [ 0, %bb.z ], [ 3, %.sink.split.i.i ]
  %i.mq = add i32 %.017.i.i, %9                   ; 7 uses
  %i.mr = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.mq)
  %i.ms = icmp eq i32 %i.mr, 0
  br i1 %i.ms, label %tn3270_add_hf_items.exit.2.i, label %tn3270_add_hf_items.exit.i251

tn3270_add_hf_items.exit.2.i:                     ; preds = %dissect_query_reply_dbcs_asia_sd_parms.exit.i, %dissect_query_reply_dbcs_asia_sd_parms.exit.2.i, %dissect_query_reply_dbcs_asia_sd_parms.exit.1.i
  %.lcssa.i = phi i32 [ %i.mq, %dissect_query_reply_dbcs_asia_sd_parms.exit.i ], [ %i.mh, %dissect_query_reply_dbcs_asia_sd_parms.exit.2.i ], [ %i.lw, %dissect_query_reply_dbcs_asia_sd_parms.exit.1.i ] ; 3 uses
  %.neg.i.i252 = sub i32 %2, %.lcssa.i
  %i.mt = add i32 %.neg.i.i252, %5                ; 3 uses
  %i.mu = icmp sgt i32 %i.mt, 0
  br i1 %i.mu, label %bb.ad, label %dissect_query_reply_dbcs_asia.exit

bb.ad:                                            ; preds = %tn3270_add_hf_items.exit.2.i
  %i.mv = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.mw = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.mv, ptr noundef %1, i32 noundef %.lcssa.i, i32 noundef %i.mt, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_dbcs_asia.exit

dissect_query_reply_dbcs_asia.exit:               ; preds = %tn3270_add_hf_items.exit.2.i, %bb.ad
  %.0.i.i253 = phi i32 [ %i.mt, %bb.ad ], [ 0, %tn3270_add_hf_items.exit.2.i ]
  %i.mx = add i32 %.0.i.i253, %.lcssa.i
  br label %dissect_query_reply_modes.exit

bb.ae:                                            ; preds = %bb.a
  %i.my = icmp sgt i32 %5, 0
  br i1 %i.my, label %bb.af, label %dissect_query_reply_device_characteristics.exit

bb.af:                                            ; preds = %bb.ae
  %i.mz = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.na = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.mz, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 -3, 65533) %5, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_device_characteristics.exit

dissect_query_reply_device_characteristics.exit:  ; preds = %bb.ae, %bb.af
  %.0.i.i254 = phi i32 [ %5, %bb.af ], [ 0, %bb.ae ]
  %i.nb = add i32 %.0.i.i254, %2
  br label %dissect_query_reply_modes.exit

bb.ag:                                            ; preds = %bb.a
  %i.nc = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %2)
  %i.nd = icmp sgt i32 %5, 0
  br i1 %i.nd, label %.lr.ph.preheader.i, label %._crit_edge.i255

.lr.ph.preheader.i:                               ; preds = %bb.ag
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.nc, i32 0) ; 2 uses
  br label %.lr.ph.i259

.lr.ph.i259:                                      ; preds = %bb.ah, %.lr.ph.preheader.i
  %.026.i = phi i32 [ %i.nh, %bb.ah ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %exitcond.not.i260 = icmp eq i32 %.026.i, %smax.i
  br i1 %exitcond.not.i260, label %dissect_query_reply_summary.exit, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i259
  %i.ne = load i32, ptr @hf_tn3270_sf_query_reply, align 4
  %i.nf = add i32 %.026.i, %2
  %i.ng = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ne, ptr noundef %1, i32 noundef %i.nf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nh = add nuw nsw i32 %.026.i, 1              ; 2 uses
  %exitcond28.not.i = icmp eq i32 %i.nh, %5
  br i1 %exitcond28.not.i, label %._crit_edge.i255, label %.lr.ph.i259, !llvm.loop !19

._crit_edge.i255:                                 ; preds = %bb.ah, %bb.ag
  %.0.lcssa.i256 = phi i32 [ 0, %bb.ag ], [ %5, %bb.ah ] ; 3 uses
  %i.ni = sub nsw i32 %5, %.0.lcssa.i256          ; 3 uses
  %i.nj = icmp sgt i32 %i.ni, 0
  br i1 %i.nj, label %bb.ai, label %dissect_unknown_data.exit.i

bb.ai:                                            ; preds = %._crit_edge.i255
  %i.nk = add i32 %.0.lcssa.i256, %2
  %i.nl = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.nm = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.nl, ptr noundef %1, i32 noundef %i.nk, i32 noundef %i.ni, i32 noundef 0) ; 0 uses
  br label %dissect_unknown_data.exit.i

dissect_unknown_data.exit.i:                      ; preds = %bb.ai, %._crit_edge.i255
  %.0.i.i257 = phi i32 [ %i.ni, %bb.ai ], [ 0, %._crit_edge.i255 ]
  %i.nn = add nuw nsw i32 %.0.i.i257, %.0.lcssa.i256
  br label %dissect_query_reply_summary.exit

dissect_query_reply_summary.exit:                 ; preds = %.lr.ph.i259, %dissect_unknown_data.exit.i
  %.022.i258 = phi i32 [ %i.nn, %dissect_unknown_data.exit.i ], [ %smax.i, %.lr.ph.i259 ]
  %i.no = add i32 %.022.i258, %2
  br label %dissect_query_reply_modes.exit

bb.aj:                                            ; preds = %bb.a
  %i.np = add i32 %2, 1
  %i.nq = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.np)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.am, %bb.aj
  %indvars.iv.i261 = phi i64 [ %indvars.iv.next.i263, %bb.am ], [ 0, %bb.aj ] ; 3 uses
  %i.nr = phi ptr [ %i.oj, %bb.am ], [ @hf_tn3270_usable_area_flags1, %bb.aj ]
  %.02832.i.i262 = phi i32 [ %i.oh, %bb.am ], [ %2, %bb.aj ] ; 3 uses
  %i.ns = getelementptr [40 x i8], ptr @dissect_query_reply_usable_area.fields, i64 %indvars.iv.i261 ; 5 uses
  %i.nt = and i64 %indvars.iv.i261, 2305843009213693950
  %.not35.i = icmp eq i64 %i.nt, 0
  %i.nu = load i32, ptr %i.nr, align 4            ; 2 uses
  br i1 %.not35.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i
  %i.nv = getelementptr i8, ptr %i.ns, i64 16
  %i.nw = load i32, ptr %i.nv, align 8            ; 2 uses
  %i.nx = getelementptr i8, ptr %i.ns, i64 32
  %i.ny = load i32, ptr %i.nx, align 8
  %i.nz = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.nu, ptr noundef %1, i32 noundef %.02832.i.i262, i32 noundef %i.nw, i32 noundef %i.ny) ; 0 uses
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.oa = getelementptr i8, ptr %i.ns, i64 24
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = getelementptr i8, ptr %i.ns, i64 8
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = load i32, ptr %i.od, align 4
  %i.of = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %1, i32 noundef %.02832.i.i262, i32 noundef %i.nu, i32 noundef %i.oe, ptr noundef nonnull %i.ob, i32 noundef 0) ; 0 uses
  %.phi.trans.insert.i270 = getelementptr i8, ptr %i.ns, i64 16
  %.pre.i271 = load i32, ptr %.phi.trans.insert.i270, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.og = phi i32 [ %.pre.i271, %bb.al ], [ %i.nw, %bb.ak ]
  %i.oh = add i32 %i.og, %.02832.i.i262           ; 7 uses
  %indvars.iv.next.i263 = add nuw nsw i64 %indvars.iv.i261, 1 ; 3 uses
  %i.oi = getelementptr [40 x i8], ptr @dissect_query_reply_usable_area.fields, i64 %indvars.iv.next.i263
  %i.oj = load ptr, ptr %i.oi, align 8
  %.not.i.i264 = icmp eq i64 %indvars.iv.next.i263, 10
  br i1 %.not.i.i264, label %tn3270_add_hf_items.exit.i265, label %.lr.ph.i.i, !llvm.loop !14

tn3270_add_hf_items.exit.i265:                    ; preds = %bb.am
  %.not.i266 = icmp sgt i8 %i.nq, -1
  br i1 %.not.i266, label %tn3270_add_hf_items.exit23.i, label %tn3270_add_hf_items.exit23.loopexit.i

tn3270_add_hf_items.exit23.loopexit.i:            ; preds = %tn3270_add_hf_items.exit.i265
  %i.ok = load i32, ptr @hf_tn3270_ua_xmin, align 4
  %i.ol = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ok, ptr noundef %1, i32 noundef %i.oh, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre30.i = load i32, ptr @hf_tn3270_ua_ymin, align 4
  %i.om = add i32 %i.oh, 1
  %i.on = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre30.i, ptr noundef %1, i32 noundef %i.om, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre31.i = load i32, ptr @hf_tn3270_ua_xmax, align 4
  %i.oo = add i32 %i.oh, 2
  %i.op = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre31.i, ptr noundef %1, i32 noundef %i.oo, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre32.i = load i32, ptr @hf_tn3270_ua_ymax, align 4
  %i.oq = add i32 %i.oh, 3
  %i.or = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre32.i, ptr noundef %1, i32 noundef %i.oq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.os = add i32 %i.oh, 4
  br label %tn3270_add_hf_items.exit23.i

tn3270_add_hf_items.exit23.i:                     ; preds = %tn3270_add_hf_items.exit23.loopexit.i, %tn3270_add_hf_items.exit.i265
  %.0.i = phi i32 [ %i.oh, %tn3270_add_hf_items.exit.i265 ], [ %i.os, %tn3270_add_hf_items.exit23.loopexit.i ] ; 3 uses
  %.neg.i.i267 = sub i32 %2, %.0.i
  %i.ot = add i32 %.neg.i.i267, %5                ; 3 uses
  %i.ou = icmp sgt i32 %i.ot, 0
  br i1 %i.ou, label %bb.an, label %dissect_query_reply_usable_area.exit

bb.an:                                            ; preds = %tn3270_add_hf_items.exit23.i
  %i.ov = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.ow = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ov, ptr noundef %1, i32 noundef %.0.i, i32 noundef %i.ot, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_usable_area.exit

dissect_query_reply_usable_area.exit:             ; preds = %tn3270_add_hf_items.exit23.i, %bb.an
  %.0.i.i269 = phi i32 [ %i.ot, %bb.an ], [ 0, %tn3270_add_hf_items.exit23.i ]
  %i.ox = add i32 %.0.i.i269, %.0.i
  br label %dissect_query_reply_modes.exit

bb.ao:                                            ; preds = %bb.a
  %i.oy = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %2) ; 2 uses
  %10 = zext i8 %i.oy to i32
  %i.oz = load i32, ptr @hf_tn3270_h_np, align 4
  %i.pa = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.oz, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %11 = add i32 %2, 1                             ; 2 uses
  %.not.i273 = icmp eq i8 %i.oy, 0
  br i1 %.not.i273, label %tn3270_add_hf_items.exit._crit_edge.i278, label %tn3270_add_hf_items.exit.i274

tn3270_add_hf_items.exit.i274:                    ; preds = %bb.ao, %tn3270_add_hf_items.exit.i274
  %.033.i = phi i32 [ %i.pn, %tn3270_add_hf_items.exit.i274 ], [ 0, %bb.ao ]
  %.03132.i = phi i32 [ %i.pm, %tn3270_add_hf_items.exit.i274 ], [ %11, %bb.ao ] ; 2 uses
  %i.pb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.03132.i)
  %i.pc = icmp eq i8 %i.pb, -1
  %i.pd = zext i1 %i.pc to i32
  %spec.select.i275 = add i32 %.03132.i, %i.pd    ; 3 uses
  %i.pe = load i32, ptr @hf_tn3270_h_vi, align 4
  %i.pf = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.pe, ptr noundef %1, i32 noundef %spec.select.i275, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.pg = add i32 %spec.select.i275, 1            ; 2 uses
  %i.ph = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.pg)
  %i.pi = icmp eq i8 %i.ph, -1
  %i.pj = add i32 %spec.select.i275, 2
  %.2.i276 = select i1 %i.pi, i32 %i.pj, i32 %i.pg ; 2 uses
  %i.pk = load i32, ptr @hf_tn3270_h_ai, align 4
  %i.pl = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.pk, ptr noundef %1, i32 noundef %.2.i276, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.pm = add i32 %.2.i276, 1                     ; 2 uses
  %i.pn = add nuw nsw i32 %.033.i, 1              ; 2 uses
  %exitcond.not.i277 = icmp eq i32 %i.pn, %10
  br i1 %exitcond.not.i277, label %tn3270_add_hf_items.exit._crit_edge.i278, label %tn3270_add_hf_items.exit.i274, !llvm.loop !20

tn3270_add_hf_items.exit._crit_edge.i278:         ; preds = %tn3270_add_hf_items.exit.i274, %bb.ao
  %.031.lcssa.i = phi i32 [ %11, %bb.ao ], [ %i.pm, %tn3270_add_hf_items.exit.i274 ] ; 3 uses
  %.neg.i.i279 = sub i32 %2, %.031.lcssa.i
  %i.po = add i32 %.neg.i.i279, %5                ; 3 uses
  %i.pp = icmp sgt i32 %i.po, 0
  br i1 %i.pp, label %bb.ap, label %dissect_query_reply_highlighting.exit

bb.ap:                                            ; preds = %tn3270_add_hf_items.exit._crit_edge.i278
  %i.pq = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.pr = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.pq, ptr noundef %1, i32 noundef %.031.lcssa.i, i32 noundef %i.po, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_highlighting.exit

dissect_query_reply_highlighting.exit:            ; preds = %tn3270_add_hf_items.exit._crit_edge.i278, %bb.ap
  %.0.i.i281 = phi i32 [ %i.po, %bb.ap ], [ 0, %tn3270_add_hf_items.exit._crit_edge.i278 ]
  %i.ps = add i32 %.0.i.i281, %.031.lcssa.i
  br label %dissect_query_reply_modes.exit

bb.aq:                                            ; preds = %bb.a
  %i.pt = icmp sgt i32 %5, 0
  br i1 %i.pt, label %.lr.ph.i283, label %dissect_query_reply_modes.exit

.lr.ph.i283:                                      ; preds = %bb.aq, %.lr.ph.i283
  %.011.i = phi i32 [ %i.px, %.lr.ph.i283 ], [ 0, %bb.aq ]
  %.0910.i = phi i32 [ %i.pw, %.lr.ph.i283 ], [ %2, %bb.aq ] ; 2 uses
  %i.pu = load i32, ptr @hf_tn3270_mode, align 4
  %i.pv = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.pu, ptr noundef %1, i32 noundef %.0910.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.pw = add i32 %.0910.i, 1                     ; 2 uses
  %i.px = add nuw nsw i32 %.011.i, 1              ; 2 uses
  %exitcond.not.i284 = icmp eq i32 %i.px, %5
  br i1 %exitcond.not.i284, label %dissect_query_reply_modes.exit, label %.lr.ph.i283, !llvm.loop !21

bb.ar:                                            ; preds = %bb.a
  %i.py = load i32, ptr @hf_tn3270_ddm_flags, align 4
  %i.pz = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.py, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i285 = load i32, ptr @hf_tn3270_ddm_flags, align 4
  %i.qa = add i32 %2, 1
  %i.qb = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i285, ptr noundef %1, i32 noundef %i.qa, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre52.i = load i32, ptr @hf_tn3270_ddm_limin, align 4
  %i.qc = add i32 %2, 2
  %i.qd = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre52.i, ptr noundef %1, i32 noundef %i.qc, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.pre53.i = load i32, ptr @hf_tn3270_ddm_limout, align 4
  %i.qe = add i32 %2, 4
  %i.qf = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre53.i, ptr noundef %1, i32 noundef %i.qe, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.pre54.i = load i32, ptr @hf_tn3270_ddm_nss, align 4
  %i.qg = add i32 %2, 6
  %i.qh = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre54.i, ptr noundef %1, i32 noundef %i.qg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre55.i = load i32, ptr @hf_tn3270_ddm_ddmss, align 4
  %i.qi = add i32 %2, 7
  %i.qj = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre55.i, ptr noundef %1, i32 noundef %i.qi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.qk = add i32 %2, 8                           ; 6 uses
  %i.ql = add i32 %2, 9                           ; 3 uses
  %i.qm = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ql)
  switch i8 %i.qm, label %.loopexit.sink.split.i [
    i8 2, label %bb.bb
    i8 1, label %bb.bd
    i8 3, label %bb.be
  ]

tn3270_add_hf_items.exit.i286:                    ; preds = %bb.bf
  %i.qn = add i32 %.138.i, 1                      ; 3 uses
  %i.qo = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.qn)
  switch i8 %i.qo, label %.loopexit.sink.split.i [
    i8 2, label %bb.au
    i8 1, label %bb.at
    i8 3, label %bb.as
  ]

bb.as:                                            ; preds = %tn3270_add_hf_items.exit.i286
  %i.qp = load i32, ptr @hf_tn3270_sdp_ln, align 4
  %i.qq = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.qp, ptr noundef %1, i32 noundef %.138.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i39.1.i = load i32, ptr @hf_tn3270_sdp_id, align 4
  %i.qr = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i39.1.i, ptr noundef %1, i32 noundef %i.qn, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre7.i40.1.i = load i32, ptr @hf_tn3270_oem_sdp_pclk_vers, align 4
  %i.qs = add i32 %.138.i, 2
  %i.qt = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre7.i40.1.i, ptr noundef %1, i32 noundef %i.qs, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.qu = add i32 %.138.i, 4
  br label %bb.aw

bb.at:                                            ; preds = %tn3270_add_hf_items.exit.i286
  %i.qv = load i32, ptr @hf_tn3270_sdp_ln, align 4
  %i.qw = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.qv, ptr noundef %1, i32 noundef %.138.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i.1.i = load i32, ptr @hf_tn3270_sdp_id, align 4
  %i.qx = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i.1.i, ptr noundef %1, i32 noundef %i.qn, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre7.i.1.i = load i32, ptr @hf_tn3270_sdp_daid, align 4
  %i.qy = add i32 %.138.i, 2
  %i.qz = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre7.i.1.i, ptr noundef %1, i32 noundef %i.qy, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ra = add i32 %.138.i, 4
  br label %bb.aw

bb.au:                                            ; preds = %tn3270_add_hf_items.exit.i286
  %i.rb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.138.i)
  %i.rc = zext i8 %i.rb to i32
  %.neg.i.1.i = sub i32 %2, %.138.i
  %i.rd = add i32 %.neg.i.1.i, %i.rc              ; 3 uses
  %i.re = icmp sgt i32 %i.rd, 0
  br i1 %i.re, label %bb.av, label %dissect_unknown_data.exit.1.i

bb.av:                                            ; preds = %bb.au
  %i.rf = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.rg = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.rf, ptr noundef %1, i32 noundef %.138.i, i32 noundef %i.rd, i32 noundef 0) ; 0 uses
  br label %dissect_unknown_data.exit.1.i

dissect_unknown_data.exit.1.i:                    ; preds = %bb.av, %bb.au
  %.0.i.1.i = phi i32 [ %i.rd, %bb.av ], [ 0, %bb.au ]
  %i.rh = add i32 %.0.i.1.i, %.138.i
  br label %bb.aw

bb.aw:                                            ; preds = %dissect_unknown_data.exit.1.i, %bb.at, %bb.as
  %.138.1.i = phi i32 [ %i.qu, %bb.as ], [ %i.rh, %dissect_unknown_data.exit.1.i ], [ %i.ra, %bb.at ] ; 14 uses
  %i.ri = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %.138.1.i)
  %i.rj = icmp eq i32 %i.ri, 0
  br i1 %i.rj, label %.loopexit.i, label %tn3270_add_hf_items.exit.1.i287

tn3270_add_hf_items.exit.1.i287:                  ; preds = %bb.aw
  %i.rk = add i32 %.138.1.i, 1                    ; 3 uses
  %i.rl = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.rk)
  switch i8 %i.rl, label %.loopexit.sink.split.i [
    i8 2, label %bb.az
    i8 1, label %bb.ay
    i8 3, label %bb.ax
  ]

bb.ax:                                            ; preds = %tn3270_add_hf_items.exit.1.i287
  %i.rm = load i32, ptr @hf_tn3270_sdp_ln, align 4
  %i.rn = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.rm, ptr noundef %1, i32 noundef %.138.1.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i39.2.i = load i32, ptr @hf_tn3270_sdp_id, align 4
  %i.ro = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i39.2.i, ptr noundef %1, i32 noundef %i.rk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre7.i40.2.i = load i32, ptr @hf_tn3270_oem_sdp_pclk_vers, align 4
  %i.rp = add i32 %.138.1.i, 2
  %i.rq = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre7.i40.2.i, ptr noundef %1, i32 noundef %i.rp, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.rr = add i32 %.138.1.i, 4
  br label %.loopexit.sink.split.i

bb.ay:                                            ; preds = %tn3270_add_hf_items.exit.1.i287
  %i.rs = load i32, ptr @hf_tn3270_sdp_ln, align 4
  %i.rt = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.rs, ptr noundef %1, i32 noundef %.138.1.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i.2.i = load i32, ptr @hf_tn3270_sdp_id, align 4
  %i.ru = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i.2.i, ptr noundef %1, i32 noundef %i.rk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre7.i.2.i = load i32, ptr @hf_tn3270_sdp_daid, align 4
  %i.rv = add i32 %.138.1.i, 2
  %i.rw = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre7.i.2.i, ptr noundef %1, i32 noundef %i.rv, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.rx = add i32 %.138.1.i, 4
  br label %.loopexit.sink.split.i

bb.az:                                            ; preds = %tn3270_add_hf_items.exit.1.i287
  %i.ry = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.138.1.i)
  %i.rz = zext i8 %i.ry to i32
  %.neg.i.2.i = sub i32 %2, %.138.1.i
  %i.sa = add i32 %.neg.i.2.i, %i.rz              ; 3 uses
  %i.sb = icmp sgt i32 %i.sa, 0
  br i1 %i.sb, label %bb.ba, label %dissect_unknown_data.exit.2.i

bb.ba:                                            ; preds = %bb.az
  %i.sc = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.sd = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.sc, ptr noundef %1, i32 noundef %.138.1.i, i32 noundef %i.sa, i32 noundef 0) ; 0 uses
  br label %dissect_unknown_data.exit.2.i

dissect_unknown_data.exit.2.i:                    ; preds = %bb.ba, %bb.az
  %.0.i.2.i = phi i32 [ %i.sa, %bb.ba ], [ 0, %bb.az ]
  %i.se = add i32 %.0.i.2.i, %.138.1.i
  br label %.loopexit.sink.split.i

bb.bb:                                            ; preds = %bb.ar
  %i.sf = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.qk) ; 2 uses
  %i.sg = icmp ugt i8 %i.sf, 8
  br i1 %i.sg, label %bb.bc, label %dissect_unknown_data.exit.i290

bb.bc:                                            ; preds = %bb.bb
  %i.sh = zext i8 %i.sf to i32
  %i.si = add nsw i32 %i.sh, -8                   ; 2 uses
  %i.sj = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.sk = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.sj, ptr noundef %1, i32 noundef %i.qk, i32 noundef %i.si, i32 noundef 0) ; 0 uses
  br label %dissect_unknown_data.exit.i290

dissect_unknown_data.exit.i290:                   ; preds = %bb.bc, %bb.bb
  %.0.i.i291 = phi i32 [ %i.si, %bb.bc ], [ 0, %bb.bb ]
  %i.sl = add i32 %.0.i.i291, %i.qk
  br label %bb.bf

bb.bd:                                            ; preds = %bb.ar
  %i.sm = load i32, ptr @hf_tn3270_sdp_ln, align 4
  %i.sn = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.sm, ptr noundef %1, i32 noundef %i.qk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i.i289 = load i32, ptr @hf_tn3270_sdp_id, align 4
  %i.so = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i.i289, ptr noundef %1, i32 noundef %i.ql, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre7.i.i = load i32, ptr @hf_tn3270_sdp_daid, align 4
  %i.sp = add i32 %2, 10
  %i.sq = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre7.i.i, ptr noundef %1, i32 noundef %i.sp, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sr = add i32 %2, 12
  br label %bb.bf

bb.be:                                            ; preds = %bb.ar
  %i.ss = load i32, ptr @hf_tn3270_sdp_ln, align 4
  %i.st = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ss, ptr noundef %1, i32 noundef %i.qk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i39.i = load i32, ptr @hf_tn3270_sdp_id, align 4
  %i.su = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i39.i, ptr noundef %1, i32 noundef %i.ql, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre7.i40.i = load i32, ptr @hf_tn3270_oem_sdp_pclk_vers, align 4
  %i.sv = add i32 %2, 10
  %i.sw = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre7.i40.i, ptr noundef %1, i32 noundef %i.sv, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sx = add i32 %2, 12
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %dissect_unknown_data.exit.i290
end_hunk_0
begin_hunk_1_@process_inbound_structured_field:bb.a

dissect_query_reply_ioca_aux_device.exit:         ; preds = %bb.cv, %bb.cw
  %.0.i.i392 = phi i32 [ %5, %bb.cw ], [ 7, %bb.cv ]
  %i.afk = add i32 %.0.i.i392, %2
  br label %dissect_query_reply_modes.exit

bb.cx:                                            ; preds = %bb.a
  %i.afl = load i32, ptr @hf_tn3270_resbyte, align 4
  %i.afm = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.afl, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i394 = load i32, ptr @hf_tn3270_msr_nd, align 4
  %i.afn = add i32 %2, 1
  %i.afo = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i394, ptr noundef %1, i32 noundef %i.afn, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre13.i395 = load i32, ptr @hf_tn3270_msr_type, align 4
  %i.afp = add i32 %2, 2
  %i.afq = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre13.i395, ptr noundef %1, i32 noundef %i.afp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afr = icmp sgt i32 %5, 3
  br i1 %i.afr, label %bb.cy, label %dissect_query_reply_msr_control.exit

bb.cy:                                            ; preds = %bb.cx
  %i.afs = add nsw i32 %5, -3
  %i.aft = add i32 %2, 3
  %i.afu = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.afv = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.afu, ptr noundef %1, i32 noundef %i.aft, i32 noundef %i.afs, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_msr_control.exit

dissect_query_reply_msr_control.exit:             ; preds = %bb.cx, %bb.cy
  %.0.i.i397 = phi i32 [ %5, %bb.cy ], [ 3, %bb.cx ]
  %i.afw = add i32 %.0.i.i397, %2
  br label %dissect_query_reply_modes.exit

bb.cz:                                            ; preds = %bb.a
  %i.afx = load i32, ptr @hf_tn3270_pft_flags, align 4
  %i.afy = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.afx, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i399 = load i32, ptr @hf_tn3270_pft_tmo, align 4
  %i.afz = add i32 %2, 1
  %i.aga = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i399, ptr noundef %1, i32 noundef %i.afz, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.pre13.i400 = load i32, ptr @hf_tn3270_pft_bmo, align 4
  %i.agb = add i32 %2, 3
  %i.agc = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre13.i400, ptr noundef %1, i32 noundef %i.agb, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.agd = icmp sgt i32 %5, 5
  br i1 %i.agd, label %bb.da, label %dissect_query_reply_paper_feed_techniques.exit

bb.da:                                            ; preds = %bb.cz
  %i.age = add nsw i32 %5, -5
  %i.agf = add i32 %2, 5
  %i.agg = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.agh = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.agg, ptr noundef %1, i32 noundef %i.agf, i32 noundef %i.age, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_paper_feed_techniques.exit

dissect_query_reply_paper_feed_techniques.exit:   ; preds = %bb.cz, %bb.da
  %.0.i.i402 = phi i32 [ %5, %bb.da ], [ 5, %bb.cz ]
  %i.agi = add i32 %.0.i.i402, %2
  br label %dissect_query_reply_modes.exit

bb.db:                                            ; preds = %bb.a
  %i.agj = add i32 %2, 1                          ; 3 uses
  %i.agk = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.agj)
  switch i8 %i.agk, label %.loopexit.sink.split.i405 [
    i8 1, label %tn3270_add_hf_items.exit.i414
    i8 3, label %tn3270_add_hf_items.exit36.loopexit.i
  ]

bb.dc:                                            ; preds = %tn3270_add_hf_items.exit36.i
  %i.agl = add i32 %i.ahe, 1                      ; 3 uses
  %i.agm = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.agl)
  switch i8 %i.agm, label %.loopexit.sink.split.i405 [
    i8 1, label %tn3270_add_hf_items.exit.1.i411
    i8 3, label %tn3270_add_hf_items.exit36.loopexit.1.i
  ]

tn3270_add_hf_items.exit36.loopexit.1.i:          ; preds = %bb.dc
  %i.agn = load i32, ptr @hf_tn3270_sdp_ln, align 4
  %i.ago = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.agn, ptr noundef %1, i32 noundef %i.ahe, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre52.i404 = load i32, ptr @hf_tn3270_sdp_id, align 4
  %i.agp = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre52.i404, ptr noundef %1, i32 noundef %i.agl, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %tn3270_add_hf_items.exit36.1.i

tn3270_add_hf_items.exit.1.i411:                  ; preds = %bb.dc
  %i.agq = load i32, ptr @hf_tn3270_sdp_ln, align 4
  %i.agr = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.agq, ptr noundef %1, i32 noundef %i.ahe, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre53.i412 = load i32, ptr @hf_tn3270_sdp_id, align 4
  %i.ags = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre53.i412, ptr noundef %1, i32 noundef %i.agl, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre54.i413 = load i32, ptr @hf_tn3270_pc_vo_thickness, align 4
  %i.agt = add i32 %i.ahe, 2
  %i.agu = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre54.i413, ptr noundef %1, i32 noundef %i.agt, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %tn3270_add_hf_items.exit36.1.i

tn3270_add_hf_items.exit36.1.i:                   ; preds = %tn3270_add_hf_items.exit.1.i411, %tn3270_add_hf_items.exit36.loopexit.1.i
  %.sink.i = phi i32 [ 3, %tn3270_add_hf_items.exit.1.i411 ], [ 2, %tn3270_add_hf_items.exit36.loopexit.1.i ]
  %i.agv = add i32 %.sink.i, %i.ahe
  br label %.loopexit.sink.split.i405

tn3270_add_hf_items.exit.i414:                    ; preds = %bb.db
  %i.agw = load i32, ptr @hf_tn3270_sdp_ln, align 4
  %i.agx = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.agw, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre50.i = load i32, ptr @hf_tn3270_sdp_id, align 4
  %i.agy = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre50.i, ptr noundef %1, i32 noundef %i.agj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre51.i = load i32, ptr @hf_tn3270_pc_vo_thickness, align 4
  %i.agz = add i32 %2, 2
  %i.aha = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre51.i, ptr noundef %1, i32 noundef %i.agz, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %tn3270_add_hf_items.exit36.i

tn3270_add_hf_items.exit36.loopexit.i:            ; preds = %bb.db
  %i.ahb = load i32, ptr @hf_tn3270_sdp_ln, align 4
  %i.ahc = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ahb, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i403 = load i32, ptr @hf_tn3270_sdp_id, align 4
  %i.ahd = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i403, ptr noundef %1, i32 noundef %i.agj, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %tn3270_add_hf_items.exit36.i

tn3270_add_hf_items.exit36.i:                     ; preds = %tn3270_add_hf_items.exit36.loopexit.i, %tn3270_add_hf_items.exit.i414
  %.sink55.i = phi i32 [ 2, %tn3270_add_hf_items.exit36.loopexit.i ], [ 3, %tn3270_add_hf_items.exit.i414 ]
  %i.ahe = add i32 %.sink55.i, %2                 ; 8 uses
  %i.ahf = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.ahe)
  %i.ahg = icmp eq i32 %i.ahf, 0
  br i1 %i.ahg, label %.loopexit.i406, label %bb.dc

.loopexit.sink.split.i405:                        ; preds = %tn3270_add_hf_items.exit36.1.i, %bb.dc, %bb.db
  %.sink56.i = phi i32 [ %i.agv, %tn3270_add_hf_items.exit36.1.i ], [ %2, %bb.db ], [ %i.ahe, %bb.dc ] ; 2 uses
  %i.ahh = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %.sink56.i) ; 0 uses
  br label %.loopexit.i406

.loopexit.i406:                                   ; preds = %.loopexit.sink.split.i405, %tn3270_add_hf_items.exit36.i
  %.2.i407 = phi i32 [ %i.ahe, %tn3270_add_hf_items.exit36.i ], [ %.sink56.i, %.loopexit.sink.split.i405 ] ; 3 uses
  %.neg.i.i408 = sub i32 %2, %.2.i407
  %i.ahi = add i32 %.neg.i.i408, %5               ; 3 uses
  %i.ahj = icmp sgt i32 %i.ahi, 0
  br i1 %i.ahj, label %bb.dd, label %dissect_query_reply_partition_characteristics.exit

bb.dd:                                            ; preds = %.loopexit.i406
  %i.ahk = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.ahl = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ahk, ptr noundef %1, i32 noundef %.2.i407, i32 noundef %i.ahi, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_partition_characteristics.exit

dissect_query_reply_partition_characteristics.exit: ; preds = %.loopexit.i406, %bb.dd
  %.0.i.i410 = phi i32 [ %i.ahi, %bb.dd ], [ 0, %.loopexit.i406 ]
  %i.ahm = add i32 %.0.i.i410, %.2.i407
  br label %dissect_query_reply_modes.exit

bb.de:                                            ; preds = %bb.a
  %i.ahn = load i32, ptr @hf_tn3270_resbytes, align 4
  %i.aho = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ahn, ptr noundef %1, i32 noundef %2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.pre.i416 = load i32, ptr @hf_tn3270_pdds_refid, align 4
  %i.ahp = add i32 %2, 2
  %i.ahq = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i416, ptr noundef %1, i32 noundef %i.ahp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre20.i = load i32, ptr @hf_tn3270_pdds_ssid, align 4
  %i.ahr = add i32 %2, 3
  %i.ahs = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre20.i, ptr noundef %1, i32 noundef %i.ahr, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aht = add i32 %2, 4                          ; 2 uses
  %i.ahu = add i32 %2, 5                          ; 2 uses
  %i.ahv = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ahu)
  %i.ahw = icmp eq i8 %i.ahv, 1
  br i1 %i.ahw, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.ahx = load i32, ptr @hf_tn3270_sdp_ln, align 4
  %i.ahy = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ahx, ptr noundef %1, i32 noundef %i.aht, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i.i421 = load i32, ptr @hf_tn3270_sdp_id, align 4
  %i.ahz = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i.i421, ptr noundef %1, i32 noundef %i.ahu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre7.i.i422 = load i32, ptr @hf_tn3270_sdp_daid, align 4
  %i.aia = add i32 %2, 6
  %i.aib = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre7.i.i422, ptr noundef %1, i32 noundef %i.aia, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aic = add i32 %2, 8
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.0.i417 = phi i32 [ %i.aic, %bb.df ], [ %i.aht, %bb.de ] ; 3 uses
  %.neg.i.i418 = sub i32 %2, %.0.i417
  %i.aid = add i32 %.neg.i.i418, %5               ; 3 uses
  %i.aie = icmp sgt i32 %i.aid, 0
  br i1 %i.aie, label %bb.dh, label %dissect_query_reply_product_defined_data_stream.exit

bb.dh:                                            ; preds = %bb.dg
  %i.aif = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.aig = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.aif, ptr noundef %1, i32 noundef %.0.i417, i32 noundef %i.aid, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_product_defined_data_stream.exit

dissect_query_reply_product_defined_data_stream.exit: ; preds = %bb.dg, %bb.dh
  %.0.i.i420 = phi i32 [ %i.aid, %bb.dh ], [ 0, %bb.dg ]
  %i.aih = add i32 %.0.i.i420, %.0.i417
  br label %dissect_query_reply_modes.exit

bb.di:                                            ; preds = %bb.a
  %i.aii = load i32, ptr @hf_tn3270_srf_fpcbl, align 4
  %i.aij = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.aii, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aik = icmp sgt i32 %5, 1
  br i1 %i.aik, label %bb.dj, label %dissect_query_reply_save_or_restore_format.exit

bb.dj:                                            ; preds = %bb.di
  %i.ail = add i32 %2, 1
  %i.aim = add nsw i32 %5, -1
  %i.ain = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.aio = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ain, ptr noundef %1, i32 noundef %i.ail, i32 noundef %i.aim, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_save_or_restore_format.exit

dissect_query_reply_save_or_restore_format.exit:  ; preds = %bb.di, %bb.dj
  %.0.i.i425 = phi i32 [ %5, %bb.dj ], [ 1, %bb.di ]
  %i.aip = add i32 %.0.i.i425, %2
  br label %dissect_query_reply_modes.exit

bb.dk:                                            ; preds = %bb.a
  %i.aiq = load i32, ptr @hf_tn3270_resbytes, align 4
  %i.air = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.aiq, ptr noundef %1, i32 noundef %2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %12 = add i32 %2, 2                             ; 2 uses
  %i.ais = add i32 %2, 3                          ; 2 uses
  %i.ait = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ais)
  %i.aiu = icmp eq i8 %i.ait, 1
  br i1 %i.aiu, label %tn3270_add_hf_items.exit27.i, label %bb.dl

tn3270_add_hf_items.exit27.i:                     ; preds = %bb.dk
  %i.aiv = load i32, ptr @hf_tn3270_sdp_ln, align 4
  %i.aiw = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.aiv, ptr noundef %1, i32 noundef %12, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i431 = load i32, ptr @hf_tn3270_sdp_id, align 4
  %i.aix = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i431, ptr noundef %1, i32 noundef %i.ais, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre32.i432 = load i32, ptr @hf_tn3270_spc_epc_flags, align 4
  %i.aiy = add i32 %2, 4
  %i.aiz = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre32.i432, ptr noundef %1, i32 noundef %i.aiy, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aja = add i32 %2, 5
  br label %bb.dl

bb.dl:                                            ; preds = %tn3270_add_hf_items.exit27.i, %bb.dk
  %.0.i427 = phi i32 [ %i.aja, %tn3270_add_hf_items.exit27.i ], [ %12, %bb.dk ] ; 3 uses
  %.neg.i.i428 = sub i32 %2, %.0.i427
  %i.ajb = add i32 %.neg.i.i428, %5               ; 3 uses
  %i.ajc = icmp sgt i32 %i.ajb, 0
  br i1 %i.ajc, label %bb.dm, label %dissect_query_reply_settable_printer_characteristics.exit

bb.dm:                                            ; preds = %bb.dl
  %i.ajd = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.aje = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ajd, ptr noundef %1, i32 noundef %.0.i427, i32 noundef %i.ajb, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_settable_printer_characteristics.exit

dissect_query_reply_settable_printer_characteristics.exit: ; preds = %bb.dl, %bb.dm
  %.0.i.i430 = phi i32 [ %i.ajb, %bb.dm ], [ 0, %bb.dl ]
  %i.ajf = add i32 %.0.i.i430, %.0.i427
  br label %dissect_query_reply_modes.exit

bb.dn:                                            ; preds = %bb.a
  %i.ajg = add i32 %2, 1                          ; 2 uses
  %i.ajh = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ajg)
  %i.aji = icmp eq i8 %i.ajh, 1
  br i1 %i.aji, label %tn3270_add_hf_items.exit.preheader.i438, label %.loopexit.i433

tn3270_add_hf_items.exit.preheader.i438:          ; preds = %bb.dn
  %i.ajj = load i32, ptr @hf_tn3270_sdp_ln, align 4
  %i.ajk = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ajj, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i439 = load i32, ptr @hf_tn3270_sdp_id, align 4
  %i.ajl = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i439, ptr noundef %1, i32 noundef %i.ajg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre32.i440 = load i32, ptr @hf_tn3270_sp_spid, align 4
  %i.ajm = add i32 %2, 2
  %i.ajn = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre32.i440, ptr noundef %1, i32 noundef %i.ajm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre33.i = load i32, ptr @hf_tn3270_sp_size, align 4
  %i.ajo = add i32 %2, 3
  %i.ajp = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre33.i, ptr noundef %1, i32 noundef %i.ajo, i32 noundef 4, i32 noundef 0) ; 0 uses
  %.pre34.i = load i32, ptr @hf_tn3270_sp_space, align 4
  %i.ajq = add i32 %2, 7
  %i.ajr = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre34.i, ptr noundef %1, i32 noundef %i.ajq, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ajs = add i32 %2, 11                         ; 2 uses
  %i.ajt = icmp sgt i32 %5, 11
  br i1 %i.ajt, label %tn3270_add_hf_items.exit.i442.preheader, label %.loopexit.i433

tn3270_add_hf_items.exit.i442.preheader:          ; preds = %tn3270_add_hf_items.exit.preheader.i438
  %.neg.i441 = add i32 %5, %2
  %reass.sub.i = add i32 %.neg.i441, -2
  br label %tn3270_add_hf_items.exit.i442

tn3270_add_hf_items.exit.i442:                    ; preds = %tn3270_add_hf_items.exit.i442.preheader, %tn3270_add_hf_items.exit.i442
  %.028.i = phi i32 [ %i.ajx, %tn3270_add_hf_items.exit.i442 ], [ 0, %tn3270_add_hf_items.exit.i442.preheader ]
  %.02427.i = phi i32 [ %i.ajw, %tn3270_add_hf_items.exit.i442 ], [ %i.ajs, %tn3270_add_hf_items.exit.i442.preheader ] ; 3 uses
  %i.aju = load i32, ptr @hf_tn3270_sp_objlist, align 4
  %i.ajv = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.aju, ptr noundef %1, i32 noundef %.02427.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ajw = add i32 %.02427.i, 2                   ; 2 uses
  %i.ajx = add i32 %.028.i, 2                     ; 2 uses
  %i.ajy = sub i32 %reass.sub.i, %.02427.i
  %i.ajz = icmp slt i32 %i.ajx, %i.ajy
  br i1 %i.ajz, label %tn3270_add_hf_items.exit.i442, label %.loopexit.i433, !llvm.loop !24

.loopexit.i433:                                   ; preds = %tn3270_add_hf_items.exit.i442, %tn3270_add_hf_items.exit.preheader.i438, %bb.dn
  %.1.i434 = phi i32 [ %2, %bb.dn ], [ %i.ajs, %tn3270_add_hf_items.exit.preheader.i438 ], [ %i.ajw, %tn3270_add_hf_items.exit.i442 ] ; 3 uses
  %.neg.i.i435 = sub i32 %2, %.1.i434
  %i.aka = add i32 %.neg.i.i435, %5               ; 3 uses
  %i.akb = icmp sgt i32 %i.aka, 0
  br i1 %i.akb, label %bb.do, label %dissect_query_reply_storage_pools.exit

bb.do:                                            ; preds = %.loopexit.i433
  %i.akc = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.akd = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.akc, ptr noundef %1, i32 noundef %.1.i434, i32 noundef %i.aka, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_storage_pools.exit

dissect_query_reply_storage_pools.exit:           ; preds = %.loopexit.i433, %bb.do
  %.0.i.i437 = phi i32 [ %i.aka, %bb.do ], [ 0, %.loopexit.i433 ]
  %i.ake = add i32 %.0.i.i437, %.1.i434
  br label %dissect_query_reply_modes.exit

bb.dp:                                            ; preds = %bb.a
  %i.akf = load i32, ptr @hf_tn3270_tp_nt, align 4
  %i.akg = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.akf, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.pre.i444 = load i32, ptr @hf_tn3270_tp_m, align 4
  %i.akh = add i32 %2, 1
  %i.aki = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i444, ptr noundef %1, i32 noundef %i.akh, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.pre31.i445 = load i32, ptr @hf_tn3270_tp_flags, align 4
  %i.akj = add i32 %2, 3
  %i.akk = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre31.i445, ptr noundef %1, i32 noundef %i.akj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.akl = add i32 %2, 4                          ; 2 uses
  %i.akm = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.akl) ; 2 uses
  %i.akn = zext i8 %i.akm to i32
  %i.ako = load i32, ptr @hf_tn3270_tp_ntt, align 4
  %i.akp = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ako, ptr noundef %1, i32 noundef %i.akl, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.02526.i = add i32 %2, 5                       ; 2 uses
  %.not.i446 = icmp eq i8 %i.akm, 0
  br i1 %.not.i446, label %._crit_edge.i449, label %.lr.ph.i447

.lr.ph.i447:                                      ; preds = %bb.dp, %.lr.ph.i447
  %.02528.i = phi i32 [ %.025.i, %.lr.ph.i447 ], [ %.02526.i, %bb.dp ] ; 2 uses
  %.027.i = phi i32 [ %i.aks, %.lr.ph.i447 ], [ 0, %bb.dp ]
  %i.akq = load i32, ptr @hf_tn3270_tp_tlist, align 4
  %i.akr = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.akq, ptr noundef %1, i32 noundef %.02528.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aks = add nuw nsw i32 %.027.i, 1             ; 2 uses
  %.025.i = add i32 %.02528.i, 1                  ; 2 uses
  %exitcond.not.i448 = icmp eq i32 %i.aks, %i.akn
  br i1 %exitcond.not.i448, label %._crit_edge.i449, label %.lr.ph.i447, !llvm.loop !25

._crit_edge.i449:                                 ; preds = %.lr.ph.i447, %bb.dp
  %.025.lcssa.i = phi i32 [ %.02526.i, %bb.dp ], [ %.025.i, %.lr.ph.i447 ] ; 3 uses
  %.neg.i.i450 = sub i32 %2, %.025.lcssa.i
  %i.akt = add i32 %.neg.i.i450, %5               ; 3 uses
  %i.aku = icmp sgt i32 %i.akt, 0
  br i1 %i.aku, label %bb.dq, label %dissect_query_reply_text_partitions.exit

bb.dq:                                            ; preds = %._crit_edge.i449
  %i.akv = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.akw = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.akv, ptr noundef %1, i32 noundef %.025.lcssa.i, i32 noundef %i.akt, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_text_partitions.exit

dissect_query_reply_text_partitions.exit:         ; preds = %._crit_edge.i449, %bb.dq
  %.0.i.i452 = phi i32 [ %i.akt, %bb.dq ], [ 0, %._crit_edge.i449 ]
  %i.akx = add i32 %.0.i.i452, %.025.lcssa.i
  br label %dissect_query_reply_modes.exit

bb.dr:                                            ; preds = %bb.a
  %i.aky = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %2) ; 2 uses
  %i.akz = zext i8 %i.aky to i32
  %i.ala = load i32, ptr @hf_tn3270_t_np, align 4
  %i.alb = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ala, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.02526.i453 = add i32 %2, 1                    ; 2 uses
  %.not.i454 = icmp eq i8 %i.aky, 0
  br i1 %.not.i454, label %._crit_edge.i458, label %.lr.ph.i455

.lr.ph.i455:                                      ; preds = %bb.dr, %.lr.ph.i455
  %.02529.i = phi i32 [ %.025.i457, %.lr.ph.i455 ], [ %.02526.i453, %bb.dr ]
  %.028.i456 = phi i32 [ %i.alh, %.lr.ph.i455 ], [ 0, %bb.dr ]
  %.025.in27.i = phi i32 [ %i.ale, %.lr.ph.i455 ], [ %2, %bb.dr ] ; 2 uses
  %i.alc = load i32, ptr @hf_tn3270_t_vi, align 4
  %i.ald = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.alc, ptr noundef %1, i32 noundef %.02529.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ale = add i32 %.025.in27.i, 2                ; 2 uses
  %i.alf = load i32, ptr @hf_tn3270_t_ai, align 4
  %i.alg = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.alf, ptr noundef %1, i32 noundef %i.ale, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.alh = add nuw nsw i32 %.028.i456, 2          ; 2 uses
  %.025.i457 = add i32 %.025.in27.i, 3            ; 2 uses
  %i.ali = icmp samesign ult i32 %i.alh, %i.akz
  br i1 %i.ali, label %.lr.ph.i455, label %._crit_edge.i458, !llvm.loop !26

._crit_edge.i458:                                 ; preds = %.lr.ph.i455, %bb.dr
  %.025.lcssa.i459 = phi i32 [ %.02526.i453, %bb.dr ], [ %.025.i457, %.lr.ph.i455 ] ; 3 uses
  %.neg.i.i460 = sub i32 %2, %.025.lcssa.i459
  %i.alj = add i32 %.neg.i.i460, %5               ; 3 uses
  %i.alk = icmp sgt i32 %i.alj, 0
  br i1 %i.alk, label %bb.ds, label %dissect_query_reply_transparency.exit

bb.ds:                                            ; preds = %._crit_edge.i458
  %i.all = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.alm = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.all, ptr noundef %1, i32 noundef %.025.lcssa.i459, i32 noundef %i.alj, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_transparency.exit

dissect_query_reply_transparency.exit:            ; preds = %._crit_edge.i458, %bb.ds
  %.0.i.i462 = phi i32 [ %i.alj, %bb.ds ], [ 0, %._crit_edge.i458 ]
  %i.aln = add i32 %.0.i.i462, %.025.lcssa.i459
  br label %dissect_query_reply_modes.exit

bb.dt:                                            ; preds = %bb.a
  %i.alo = load i32, ptr @hf_tn3270_resbytes, align 4
  %i.alp = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.alo, ptr noundef %1, i32 noundef %2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.pre.i464 = load i32, ptr @hf_tn3270_3270_tranlim, align 4
  %i.alq = add i32 %2, 2
  %i.alr = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %.pre.i464, ptr noundef %1, i32 noundef %i.alq, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.als = icmp sgt i32 %5, 4
  br i1 %i.als, label %bb.du, label %dissect_query_reply_3270_ipds.exit

bb.du:                                            ; preds = %bb.dt
  %i.alt = add nsw i32 %5, -4
  %i.alu = add i32 %2, 4
  %i.alv = load i32, ptr @hf_tn3270_unknown_data, align 4
  %i.alw = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.alv, ptr noundef %1, i32 noundef %i.alu, i32 noundef %i.alt, i32 noundef 0) ; 0 uses
  br label %dissect_query_reply_3270_ipds.exit

dissect_query_reply_3270_ipds.exit:               ; preds = %bb.dt, %bb.du
  %.0.i.i466 = phi i32 [ %5, %bb.du ], [ 4, %bb.dt ]
  %i.alx = add i32 %.0.i.i466, %2
  br label %dissect_query_reply_modes.exit

bb.dv:                                            ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.1041, ptr noundef nonnull @.str.1042, i32 noundef 4362) #9
  unreachable

end_hunk_1
