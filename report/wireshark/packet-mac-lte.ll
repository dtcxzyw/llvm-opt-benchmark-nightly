Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-mac-lte?download=true
inline.NumInlined: 189
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dissect_ulsch_or_dlsch:bb.a
bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.089.i = phi ptr [ %i.jo, %bb.an ], [ %i.hb, %bb.ai ], [ %i.hb, %bb.ah ], [ %i.hb, %bb.ag ], [ %i.hb, %bb.af ], [ %i.hb, %bb.ae ], [ %i.hb, %bb.am ], [ %i.hb, %bb.aj ]
  %.1.i = phi ptr [ null, %bb.an ], [ null, %bb.ai ], [ null, %bb.ah ], [ null, %bb.ag ], [ null, %bb.af ], [ null, %bb.ae ], [ %i.im, %bb.am ], [ null, %bb.aj ]
  %i.ju = load i8, ptr %i.go, align 2
  %i.jv = zext i8 %i.ju to i64
  %i.jw = getelementptr [2088 x i8], ptr %.089.i, i64 %i.jv ; 6 uses
  store i8 1, ptr %i.jw, align 8
  %i.jx = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.jy = getelementptr i8, ptr %i.jw, i64 32
  store i32 %i.jx, ptr %i.jy, align 8
  %i.jz = getelementptr i8, ptr %i.jw, i64 36
  %narrow115.i = tail call i32 @llvm.umin.i32(i32 %i.jx, i32 2048)
  %spec.select102.i = zext nneg i32 %narrow115.i to i64
  %i.ka = tail call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.jz, i32 noundef 0, i64 noundef %spec.select102.i) ; 0 uses
  %i.kb = getelementptr i8, ptr %4, i64 55
  %i.kc = load i8, ptr %i.kb, align 1, !range !7, !noundef !8
  %i.kd = getelementptr i8, ptr %i.jw, i64 8
  store i8 %i.kc, ptr %i.kd, align 8
  %i.ke = load i32, ptr %i.ae, align 4
  %i.kf = getelementptr i8, ptr %i.jw, i64 4
  store i32 %i.ke, ptr %i.kf, align 4
  %i.kg = getelementptr i8, ptr %i.jw, i64 16
  %i.kh = getelementptr i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.kg, ptr noundef align 8 dereferenceable(16) %i.kh, i64 16, i1 false)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ac
  %i.ki = load ptr, ptr @mac_lte_ul_harq_result_hash, align 8
  %i.kj = load i32, ptr %i.ae, align 4
  %i.kk = zext i32 %i.kj to i64
  %i.kl = inttoptr i64 %i.kk to ptr
  %i.km = tail call ptr @g_hash_table_lookup(ptr noundef %i.ki, ptr noundef %i.kl)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.2.i = phi ptr [ %i.km, %bb.ap ], [ %.1.i, %bb.ao ] ; 7 uses
  %.not99.i = icmp eq ptr %6, null
  %.not101.i = icmp eq ptr %.2.i, null            ; 2 uses
  br i1 %.not99.i, label %proto_item_set_generated.exit105.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not101.i, label %proto_item_set_generated.exit105.thread113.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kn = load i8, ptr %.2.i, align 4, !range !7, !noundef !8
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %bb.at, label %proto_item_set_generated.exit105.thread.i

bb.at:                                            ; preds = %bb.as
  %i.kp = load i32, ptr @hf_mac_lte_ul_harq_resend_original_frame, align 4
  %i.kq = getelementptr i8, ptr %.2.i, i64 4
  %i.kr = load i32, ptr %i.kq, align 4
  %i.ks = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.kp, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.kr) ; 2 uses
  %.not.i.i1923 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i1923, label %proto_item_set_generated.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kt = getelementptr i8, ptr %i.ks, i64 40
  %i.ku = load ptr, ptr %i.kt, align 8            ; 2 uses
  %.not5.i.i1924 = icmp eq ptr %i.ku, null
  br i1 %.not5.i.i1924, label %proto_item_set_generated.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kv = getelementptr i8, ptr %i.ku, i64 28     ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4
  %i.kx = or i32 %i.kw, 2
  store i32 %i.kx, ptr %i.kv, align 4
  br label %proto_item_set_generated.exit.i

proto_item_set_generated.exit.i:                  ; preds = %bb.av, %bb.au, %bb.at
  %i.ky = load i32, ptr @hf_mac_lte_ul_harq_resend_time_since_previous_frame, align 4
  %i.kz = getelementptr i8, ptr %.2.i, i64 8
  %i.la = load i32, ptr %i.kz, align 4
  %i.lb = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ky, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.la) ; 2 uses
  %.not.i103.i = icmp eq ptr %i.lb, null
  br i1 %.not.i103.i, label %proto_item_set_generated.exit105.thread.i, label %bb.aw

bb.aw:                                            ; preds = %proto_item_set_generated.exit.i
  %i.lc = getelementptr i8, ptr %i.lb, i64 40
  %i.ld = load ptr, ptr %i.lc, align 8            ; 2 uses
  %.not5.i104.i = icmp eq ptr %i.ld, null
  br i1 %.not5.i104.i, label %proto_item_set_generated.exit105.thread.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.le = getelementptr i8, ptr %i.ld, i64 28     ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4
  %i.lg = or i32 %i.lf, 2
  store i32 %i.lg, ptr %i.le, align 4
  br label %proto_item_set_generated.exit105.thread.i

proto_item_set_generated.exit105.thread113.i:     ; preds = %bb.ar
  %i.lh = load i16, ptr %i.cu, align 2
  %i.li = zext i16 %i.lh to i32
  %i.lj = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull @ei_mac_lte_orig_tx_ul_frame_not_found, ptr noundef nonnull @.str.1603, i32 noundef %i.li) ; 0 uses
  br label %TrackReportedULHARQResend.exit

proto_item_set_generated.exit105.i:               ; preds = %bb.aq
  br i1 %.not101.i, label %TrackReportedULHARQResend.exit, label %proto_item_set_generated.exit105.thread.i

proto_item_set_generated.exit105.thread.i:        ; preds = %proto_item_set_generated.exit105.i, %bb.ax, %bb.aw, %proto_item_set_generated.exit.i, %bb.as
  %i.lk = getelementptr i8, ptr %.2.i, i64 1
  %i.ll = load i8, ptr %i.lk, align 1, !range !7, !noundef !8
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.ay, label %TrackReportedULHARQResend.exit

bb.ay:                                            ; preds = %proto_item_set_generated.exit105.thread.i
  %i.ln = load i32, ptr @hf_mac_lte_ul_harq_resend_next_frame, align 4
  %i.lo = getelementptr i8, ptr %.2.i, i64 12
  %i.lp = load i32, ptr %i.lo, align 4
  %i.lq = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ln, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.lp) ; 3 uses
  %i.lr = load i16, ptr %i.cu, align 2
  %i.ls = zext i16 %i.lr to i32
  %i.lt = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.lq, ptr noundef nonnull @ei_mac_lte_ul_harq_resend_next_frame, ptr noundef nonnull @.str.1604, i32 noundef %i.ls) ; 0 uses
  %.not.i106.i = icmp eq ptr %i.lq, null
  br i1 %.not.i106.i, label %proto_item_set_generated.exit108.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lu = getelementptr i8, ptr %i.lq, i64 40
  %i.lv = load ptr, ptr %i.lu, align 8            ; 2 uses
  %.not5.i107.i = icmp eq ptr %i.lv, null
  br i1 %.not5.i107.i, label %proto_item_set_generated.exit108.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lw = getelementptr i8, ptr %i.lv, i64 28     ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4
  %i.ly = or i32 %i.lx, 2
  store i32 %i.ly, ptr %i.lw, align 4
  br label %proto_item_set_generated.exit108.i

proto_item_set_generated.exit108.i:               ; preds = %bb.ba, %bb.az, %bb.ay
  %i.lz = load i32, ptr @hf_mac_lte_ul_harq_resend_time_until_next_frame, align 4
  %i.ma = getelementptr i8, ptr %.2.i, i64 16
  %i.mb = load i32, ptr %i.ma, align 4
  %i.mc = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.lz, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.mb) ; 2 uses
  %.not.i109.i = icmp eq ptr %i.mc, null
  br i1 %.not.i109.i, label %TrackReportedULHARQResend.exit, label %bb.bb

bb.bb:                                            ; preds = %proto_item_set_generated.exit108.i
  %i.md = getelementptr i8, ptr %i.mc, i64 40
  %i.me = load ptr, ptr %i.md, align 8            ; 2 uses
  %.not5.i110.i = icmp eq ptr %i.me, null
  br i1 %.not5.i110.i, label %TrackReportedULHARQResend.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mf = getelementptr i8, ptr %i.me, i64 28     ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 4
  %i.mh = or i32 %i.mg, 2
  store i32 %i.mh, ptr %i.mf, align 4
  br label %TrackReportedULHARQResend.exit

TrackReportedULHARQResend.exit:                   ; preds = %bb.bc, %bb.bb, %proto_item_set_generated.exit108.i, %proto_item_set_generated.exit105.thread.i, %proto_item_set_generated.exit105.i, %proto_item_set_generated.exit105.thread113.i, %bb.ab, %bb.aa
  %.pr = load i8, ptr %i.ck, align 1
  %i.mi = icmp eq i8 %.pr, 0
  br i1 %i.mi, label %bb.bd, label %TrackReportedULHARQResend.exit.thread.thread

bb.bd:                                            ; preds = %TrackReportedULHARQResend.exit
  %i.mj = getelementptr i8, ptr %4, i64 20
  %i.mk = load i8, ptr %i.mj, align 4
  %i.ml = icmp eq i8 %i.mk, 0
  %i.mm = load i8, ptr @global_mac_lte_track_sr, align 1, !range !7
  %i.mn = trunc nuw i8 %i.mm to i1
  %or.cond = select i1 %i.ml, i1 %i.mn, i1 false
  br i1 %or.cond, label %TrackReportedULHARQResend.exit.thread, label %TrackReportedULHARQResend.exit.thread.thread2357

TrackReportedULHARQResend.exit.thread.thread2357: ; preds = %bb.bd
  %i.mo = load i32, ptr @hf_mac_lte_ulsch_header, align 4
  br label %bb.be

TrackReportedULHARQResend.exit.thread.thread:     ; preds = %mac_lte_drx_new_ulsch_data.exit, %TrackReportedULHARQResend.exit
  %i.mp = load i32, ptr @hf_mac_lte_dlsch_header, align 4
  br label %bb.be

TrackReportedULHARQResend.exit.thread:            ; preds = %bb.bd
  tail call fastcc void @TrackSRInfo(i32 noundef 0, ptr noundef %1, ptr noundef %2, ptr noundef %0, ptr noundef %4, i32 noundef 0, ptr noundef null)
  %.pre = load i8, ptr %i.ck, align 1
  %.pre.fr = freeze i8 %.pre
  %i.mq = icmp eq i8 %.pre.fr, 0
  %i.mr = load i32, ptr @hf_mac_lte_ulsch_header, align 4
  %i.ms = load i32, ptr @hf_mac_lte_dlsch_header, align 4
  %spec.select = select i1 %i.mq, i32 %i.mr, i32 %i.ms
  br label %bb.be

bb.be:                                            ; preds = %TrackReportedULHARQResend.exit.thread, %TrackReportedULHARQResend.exit.thread.thread2357, %TrackReportedULHARQResend.exit.thread.thread
  %i.mt = phi i32 [ %i.mp, %TrackReportedULHARQResend.exit.thread.thread ], [ %spec.select, %TrackReportedULHARQResend.exit.thread ], [ %i.mo, %TrackReportedULHARQResend.exit.thread.thread2357 ]
  %i.mu = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %2, i32 noundef %i.mt, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.840, ptr noundef nonnull @.str.1542) ; 6 uses
  %i.mv = load i8, ptr %i.ck, align 1
  %i.mw = icmp eq i8 %i.mv, 0
  %i.mx = load i32, ptr @ett_mac_lte_ulsch_header, align 4
  %i.my = load i32, ptr @ett_mac_lte_dlsch_header, align 4
  %i.mz = select i1 %i.mw, i32 %i.mx, i32 %i.my
  %i.na = tail call ptr @proto_item_add_subtree(ptr noundef %i.mu, i32 noundef %i.mz)
  %i.nb = getelementptr i8, ptr %4, i64 4         ; 5 uses
  %i.nc = icmp eq ptr %3, null                    ; 3 uses
  %i.nd = icmp eq ptr %1, null                    ; 3 uses
  %or.cond3.i1937 = and i1 %i.nd, %i.nc           ; 2 uses
  %i.ne = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.nf = getelementptr i8, ptr %1, i64 416       ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.dv, %bb.be
  %indvars.iv2194.a = phi i16 [ %indvars.iv.next2195.a, %bb.dv ], [ 1, %bb.be ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.dv ], [ 0, %bb.be ] ; 15 uses
  %.01790 = phi i1 [ %.11791, %bb.dv ], [ false, %bb.be ]
  %.01787 = phi i8 [ %.1178823642371, %bb.dv ], [ 0, %bb.be ] ; 3 uses
  %.01784 = phi i8 [ %.11785, %bb.dv ], [ 0, %bb.be ] ; 6 uses
  %.01782 = phi i1 [ %.11783, %bb.dv ], [ false, %bb.be ]
  %.01779 = phi i1 [ %.11780204323632373, %bb.dv ], [ false, %bb.be ] ; 4 uses
  %.01777 = phi i1 [ %.11778, %bb.dv ], [ false, %bb.be ]
  %.0 = phi i32 [ %.42377, %bb.dv ], [ 0, %bb.be ] ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  store i64 0, ptr %i.l, align 8
  %i.ng = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0) ; 6 uses
  %i.nh = load i32, ptr @hf_mac_lte_sch_subheader, align 4
  %i.ni = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %i.na, i32 noundef %i.nh, ptr noundef %0, i32 noundef %.0, i32 noundef 1, ptr noundef nonnull @.str.840, ptr noundef nonnull @.str.1543) ; 7 uses
  %i.nj = load i32, ptr @ett_mac_lte_sch_subheader, align 4
  %i.nk = call ptr @proto_item_add_subtree(ptr noundef %i.ni, i32 noundef %i.nj) ; 13 uses
  %i.nl = load i32, ptr @hf_mac_lte_sch_reserved, align 4
  %i.nm = call ptr @proto_tree_add_item(ptr noundef %i.nk, i32 noundef %i.nl, ptr noundef %0, i32 noundef %.0, i32 noundef 1, i32 noundef 0)
  %.not1837 = icmp sgt i8 %i.ng, -1               ; 2 uses
  br i1 %.not1837, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nn = load i8, ptr %i.ck, align 1
  %i.no = icmp eq i8 %i.nn, 0
  %i.np = select i1 %i.no, i32 85, i32 68
  %i.nq = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.nm, ptr noundef nonnull @ei_mac_lte_reserved_not_zero, ptr noundef nonnull @.str.1544, i32 noundef %i.np) ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.nr = load i32, ptr @hf_mac_lte_sch_format2, align 4
  %i.ns = call ptr @proto_tree_add_item(ptr noundef %i.nk, i32 noundef %i.nr, ptr noundef %0, i32 noundef %.0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nt = lshr i8 %i.ng, 5                        ; 2 uses
  %i.nu = load i32, ptr @hf_mac_lte_sch_extended, align 4
  %i.nv = call ptr @proto_tree_add_item(ptr noundef %i.nk, i32 noundef %i.nu, ptr noundef %0, i32 noundef %.0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nw = and i8 %i.ng, 31                        ; 6 uses
  %i.nx = getelementptr i8, ptr %i.i, i64 %indvars.iv ; 4 uses
  store i8 %i.nw, ptr %i.nx, align 1
  %i.ny = load i8, ptr %i.ck, align 1
  %i.nz = icmp eq i8 %i.ny, 0
  br i1 %i.nz, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %i.oa = load i32, ptr @hf_mac_lte_ulsch_lcid, align 4
  %i.ob = call ptr @proto_tree_add_item(ptr noundef %i.nk, i32 noundef %i.oa, ptr noundef %0, i32 noundef %.0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.oc = load i32, ptr @hf_mac_lte_lcid, align 4
  %i.od = call ptr @proto_tree_add_item(ptr noundef %i.nk, i32 noundef %i.oc, ptr noundef %0, i32 noundef %.0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %.not.i1925 = icmp eq ptr %i.od, null
  br i1 %.not.i1925, label %proto_item_set_hidden.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.oe = getelementptr i8, ptr %i.od, i64 40
  %i.of = load ptr, ptr %i.oe, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.of, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.og = getelementptr i8, ptr %i.of, i64 28     ; 2 uses
  %i.oh = load i32, ptr %i.og, align 4
  %i.oi = or i32 %i.oh, 1
  store i32 %i.oi, ptr %i.og, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.bi, %bb.bj, %bb.bk
  %.not1839 = icmp eq i8 %i.nw, 16
  br i1 %.not1839, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %proto_item_set_hidden.exit
  %i.oj = zext nneg i8 %i.nw to i32
  %i.ok = call ptr @val_to_str_const(i32 noundef %i.oj, ptr noundef nonnull @ulsch_lcid_vals, ptr noundef nonnull @.str.1546)
  call void (ptr, ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %3, ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.1545, ptr noundef %i.ok)
  br label %thread-pre-split

bb.bm:                                            ; preds = %proto_item_set_hidden.exit
  %i.ol = add i32 %.0, 1
  %i.om = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ol)
  %i.on = zext i8 %i.om to i32
  %i.oo = add nuw nsw i32 %i.on, 32
  call void (ptr, ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %3, ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.1547, i32 noundef %i.oo)
  br label %thread-pre-split

bb.bn:                                            ; preds = %bb.bh
  %i.op = load i32, ptr @hf_mac_lte_dlsch_lcid, align 4
  %i.oq = call ptr @proto_tree_add_item(ptr noundef %i.nk, i32 noundef %i.op, ptr noundef %0, i32 noundef %.0, i32 noundef 1, i32 noundef 0) ; 4 uses
  %i.or = load i32, ptr @hf_mac_lte_lcid, align 4
  %i.os = call ptr @proto_tree_add_item(ptr noundef %i.nk, i32 noundef %i.or, ptr noundef %0, i32 noundef %.0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %.not.i1926 = icmp eq ptr %i.os, null
  br i1 %.not.i1926, label %proto_item_set_hidden.exit1928, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ot = getelementptr i8, ptr %i.os, i64 40
  %i.ou = load ptr, ptr %i.ot, align 8            ; 2 uses
  %.not5.i1927 = icmp eq ptr %i.ou, null
  br i1 %.not5.i1927, label %proto_item_set_hidden.exit1928, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ov = getelementptr i8, ptr %i.ou, i64 28     ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 4
  %i.ox = or i32 %i.ow, 1
  store i32 %i.ox, ptr %i.ov, align 4
  br label %proto_item_set_hidden.exit1928

proto_item_set_hidden.exit1928:                   ; preds = %bb.bn, %bb.bo, %bb.bp
  %.not1838 = icmp eq i8 %i.nw, 16
  br i1 %.not1838, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %proto_item_set_hidden.exit1928
  %i.oy = zext nneg i8 %i.nw to i32
  %i.oz = call ptr @val_to_str_const(i32 noundef %i.oy, ptr noundef nonnull @dlsch_lcid_vals, ptr noundef nonnull @.str.1546)
  call void (ptr, ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %3, ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.1545, ptr noundef %i.oz)
  %i.pa = load i8, ptr %i.nx, align 1             ; 3 uses
  switch i8 %i.pa, label %bb.bt [
    i8 30, label %bb.br
    i8 26, label %bb.br
  ]

bb.br:                                            ; preds = %bb.bq, %bb.bq
  %i.pb = icmp eq i8 %i.pa, 26
  %i.pc = select i1 %i.pb, ptr @.str.1549, ptr @.str.840
  %i.pd = load i16, ptr %i.cu, align 2
  %i.pe = zext i16 %i.pd to i32
  %i.pf = load i16, ptr %i.nb, align 4
  %i.pg = zext i16 %i.pf to i32
  %i.ph = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.oq, ptr noundef nonnull @ei_mac_lte_dlsch_lcid, ptr noundef nonnull @.str.1548, ptr noundef nonnull %i.pc, i32 noundef %i.pe, i32 noundef %i.pg) ; 0 uses
  br label %thread-pre-split

bb.bs:                                            ; preds = %proto_item_set_hidden.exit1928
  %i.pi = add i32 %.0, 1
  %i.pj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.pi)
  %i.pk = zext i8 %i.pj to i32
  %i.pl = add nuw nsw i32 %i.pk, 32
  call void (ptr, ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %3, ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.1547, i32 noundef %i.pl)
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.bm, %bb.bl, %bb.br, %bb.bs
  %.01776.ph = phi ptr [ %i.oq, %bb.bs ], [ %i.oq, %bb.br ], [ %i.ob, %bb.bm ], [ %i.ob, %bb.bl ]
  %.pr2037 = load i8, ptr %i.nx, align 1
  br label %bb.bt

bb.bt:                                            ; preds = %thread-pre-split, %bb.bq
  %i.pm = phi i8 [ %.pr2037, %thread-pre-split ], [ %i.pa, %bb.bq ] ; 15 uses
  %.01776 = phi ptr [ %.01776.ph, %thread-pre-split ], [ %i.oq, %bb.bq ] ; 6 uses
  %i.pn = add i32 %.0, 1                          ; 5 uses
  %i.po = load i8, ptr %i.ck, align 1             ; 4 uses
  %i.pp = icmp ugt i8 %i.pm, 10                   ; 3 uses
  br i1 %i.pp, label %is_data_lcid.exit, label %is_data_lcid.exit.thread

is_data_lcid.exit:                                ; preds = %bb.bt
  %i.pq = icmp eq i8 %i.po, 0
  %i.pr = icmp ult i8 %i.pm, 14
  %i.ps = and i1 %i.pr, %i.pq
  %i.pt = icmp eq i8 %i.pm, 16
  %or.cond2099 = or i1 %i.pt, %i.ps
  br i1 %or.cond2099, label %is_data_lcid.exit.thread, label %bb.bu

is_data_lcid.exit.thread:                         ; preds = %bb.bt, %is_data_lcid.exit
  br label %bb.bu

bb.bu:                                            ; preds = %is_data_lcid.exit, %is_data_lcid.exit.thread
  %.11791 = phi i1 [ true, %is_data_lcid.exit.thread ], [ %.01790, %is_data_lcid.exit ] ; 3 uses
  %.11778 = phi i1 [ true, %is_data_lcid.exit.thread ], [ %.01777, %is_data_lcid.exit ] ; 2 uses
  %i.pu = icmp eq i8 %i.po, 1
  %i.pv = icmp eq i8 %i.pm, 25
  %i.pw = and i1 %i.pv, %i.pu
  %.11783 = select i1 %i.pw, i1 true, i1 %.01782  ; 2 uses
  %brmerge.not = and i1 %i.pp, %.11791
  br i1 %brmerge.not, label %is_data_lcid.exit1929, label %is_data_lcid.exit1929.thread

is_data_lcid.exit1929:                            ; preds = %bb.bu
  %i.px = icmp eq i8 %i.po, 0                     ; 2 uses
  %i.py = icmp ult i8 %i.pm, 14
  %i.pz = and i1 %i.py, %i.px
  br i1 %i.pz, label %.thread, label %bb.bv

bb.bv:                                            ; preds = %is_data_lcid.exit1929
  switch i8 %i.pm, label %bb.bw [
    i8 16, label %is_data_lcid.exit1929.thread
    i8 31, label %is_data_lcid.exit1929.thread
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.qa = select i1 %i.px, i32 85, i32 68
  %i.qb = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %.01776, ptr noundef nonnull @ei_mac_lte_control_subheader_after_data_subheader, ptr noundef nonnull @.str.1550, i32 noundef %i.qa) ; 0 uses
  br label %.thread2047

is_data_lcid.exit1929.thread:                     ; preds = %bb.bu, %bb.bv, %bb.bv
  %i.qc = icmp eq i8 %i.po, 0
  %i.qd = add i8 %i.pm, -28
  %spec.select.i1930 = icmp ult i8 %i.qd, 3
  %or.cond2101 = and i1 %spec.select.i1930, %i.qc
  br i1 %or.cond2101, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %is_data_lcid.exit1929.thread
  br i1 %.01779, label %bb.by, label %.thread

bb.by:                                            ; preds = %bb.bx
  %i.qe = call ptr @expert_add_info(ptr noundef %1, ptr noundef %.01776, ptr noundef nonnull @ei_mac_lte_control_bsr_multiple) ; 0 uses
  br label %.thread2047

bb.bz:                                            ; preds = %is_data_lcid.exit1929.thread
  %i.qf = icmp eq i8 %i.pm, 31                    ; 2 uses
  %i.qg = trunc i8 %i.nt to i1
  %or.cond4 = select i1 %i.qf, i1 %i.qg, i1 false
end_hunk_0
begin_hunk_1_@dissect_ulsch_or_dlsch:bb.a
    i8 17, label %.thread2375
    i8 18, label %.thread2375
    i8 19, label %.thread2375
    i8 20, label %.thread2375
    i8 21, label %.thread2375
    i8 26, label %.thread2375
    i8 27, label %.thread2375
    i8 28, label %.thread2375
    i8 29, label %.thread2375
    i8 30, label %.thread2375
  ]

bb.cv:                                            ; preds = %bb.ct
  switch i8 %i.pm, label %is_fixed_sized_control_element.exit1936 [
    i8 17, label %.thread2375
    i8 18, label %.thread2375
    i8 19, label %.thread2375
    i8 20, label %.thread2375
    i8 22, label %.thread2375
    i8 23, label %.thread2375
    i8 24, label %.thread2375
    i8 26, label %.thread2375
    i8 27, label %.thread2375
    i8 28, label %.thread2375
    i8 29, label %.thread2375
    i8 30, label %.thread2375
  ]

is_fixed_sized_control_element.exit1936:          ; preds = %bb.cv, %bb.cu
  br i1 %i.qx, label %.thread2375, label %bb.cw

bb.cw:                                            ; preds = %is_fixed_sized_control_element.exit1936
  %i.sb = and i8 %i.ng, 64
  %.not1847 = icmp eq i8 %i.sb, 0
  br i1 %.not1847, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sc = load i32, ptr @hf_mac_lte_sch_length, align 4
  %i.sd = shl i32 %.1, 3
  %i.se = call ptr @proto_tree_add_bits_ret_val(ptr noundef %i.nk, i32 noundef %i.sc, ptr noundef %0, i32 noundef %i.sd, i32 noundef 16, ptr noundef nonnull %i.l, i32 noundef 0)
  %i.sf = load i64, ptr %i.l, align 8
  %i.sg = icmp ult i64 %i.sf, 32768
  br i1 %i.sg, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.sh = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.se, ptr noundef nonnull @ei_mac_lte_sch_invalid_length) ; 0 uses
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.si = add i32 %.1, 2
  br label %bb.db

bb.da:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #20
  %i.sj = load i32, ptr @hf_mac_lte_sch_format, align 4
  %i.sk = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.nk, i32 noundef %i.sj, ptr noundef %0, i32 noundef %.1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.m) ; 0 uses
  %i.sl = load i8, ptr %i.m, align 1, !range !7, !noundef !8
  %i.sm = trunc nuw i8 %i.sl to i1                ; 2 uses
  %i.sn = load i32, ptr @hf_mac_lte_sch_length, align 4
  %i.so = shl i32 %.1, 3
  %i.sp = or disjoint i32 %i.so, 1
  %. = select i1 %i.sm, i32 15, i32 7
  %.2445 = select i1 %i.sm, i32 2, i32 1
  %i.sq = call ptr @proto_tree_add_bits_ret_val(ptr noundef %i.nk, i32 noundef %i.sn, ptr noundef %0, i32 noundef %i.sp, i32 noundef %., ptr noundef nonnull %i.l, i32 noundef 0) ; 0 uses
  %i.sr = add i32 %.1, %.2445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  br label %bb.db

.thread2375:                                      ; preds = %is_fixed_sized_control_element.exit1936, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs
  %i.ss = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv
  store i32 0, ptr %i.ss, align 4
  %i.st = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz, %bb.da
  %.3 = phi i32 [ %i.si, %bb.cz ], [ %i.sr, %bb.da ] ; 3 uses
  %i.su = load i64, ptr %i.l, align 8
  %i.sv = trunc i64 %i.su to i32                  ; 3 uses
  %i.sw = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv
  store i32 %i.sv, ptr %i.sw, align 4
  %i.sx = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  switch i32 %i.sv, label %bb.dm [
    i32 0, label %bb.dc
    i32 -1, label %bb.dh
  ]

bb.dc:                                            ; preds = %.thread2375, %bb.db
  %i.sy = phi ptr [ %i.st, %.thread2375 ], [ %i.sx, %bb.db ] ; 3 uses
  %.42378 = phi i32 [ %.1, %.thread2375 ], [ %.3, %bb.db ] ; 3 uses
  br i1 %or.cond3.i1937, label %write_pdu_label_and_info_literal.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.nd, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sz = load ptr, ptr %i.ne, align 8
  call void @col_append_str(ptr noundef %i.sz, i32 noundef 25, ptr noundef nonnull @.str.1553)
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  br i1 %i.nc, label %write_pdu_label_and_info_literal.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %3, ptr noundef nonnull @.str.1507, ptr noundef nonnull @.str.1553)
  br label %write_pdu_label_and_info_literal.exit

bb.dh:                                            ; preds = %.thread2379, %bb.db
  %i.ta = phi ptr [ %i.sa, %.thread2379 ], [ %i.sx, %bb.db ] ; 3 uses
  %.42381 = phi i32 [ %.1, %.thread2379 ], [ %.3, %bb.db ] ; 3 uses
  br i1 %or.cond3.i1937, label %write_pdu_label_and_info_literal.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  br i1 %i.nd, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.tb = load ptr, ptr %i.ne, align 8
  call void @col_append_str(ptr noundef %i.tb, i32 noundef 25, ptr noundef nonnull @.str.1554)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  br i1 %i.nc, label %write_pdu_label_and_info_literal.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %3, ptr noundef nonnull @.str.1507, ptr noundef nonnull @.str.1554)
  br label %write_pdu_label_and_info_literal.exit

bb.dm:                                            ; preds = %bb.db
  call void (ptr, ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %3, ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.1555, i32 noundef %i.sv)
  br label %write_pdu_label_and_info_literal.exit

write_pdu_label_and_info_literal.exit:            ; preds = %bb.dl, %bb.dk, %bb.dh, %bb.dg, %bb.df, %bb.dc, %bb.dm
  %i.tc = phi ptr [ %i.ta, %bb.dl ], [ %i.ta, %bb.dk ], [ %i.ta, %bb.dh ], [ %i.sy, %bb.dg ], [ %i.sy, %bb.df ], [ %i.sy, %bb.dc ], [ %i.sx, %bb.dm ]
  %.42377 = phi i32 [ %.42381, %bb.dl ], [ %.42381, %bb.dk ], [ %.42381, %bb.dh ], [ %.42378, %bb.dg ], [ %.42378, %bb.df ], [ %.42378, %bb.dc ], [ %.3, %bb.dm ] ; 5 uses
  %i.td = load i8, ptr %i.nx, align 1             ; 2 uses
  %.not1848 = icmp eq i8 %i.td, 16
  br i1 %.not1848, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %write_pdu_label_and_info_literal.exit
  %i.te = zext nneg i8 %i.nw to i32
  %i.tf = load i8, ptr %i.ck, align 1
  %i.tg = icmp eq i8 %i.tf, 0
  %i.th = select i1 %i.tg, ptr @ulsch_lcid_vals, ptr @dlsch_lcid_vals
  %i.ti = call ptr @val_to_str_const(i32 noundef %i.te, ptr noundef nonnull %i.th, ptr noundef nonnull @.str.1492)
  br label %bb.dp

bb.do:                                            ; preds = %write_pdu_label_and_info_literal.exit
  %i.tj = load ptr, ptr %i.nf, align 8
  %i.tk = getelementptr i8, ptr %i.j, i64 %indvars.iv
  %i.tl = load i8, ptr %i.tk, align 1
  %i.tm = zext i8 %i.tl to i32
  %i.tn = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.tj, ptr noundef nonnull @.str.1556, i32 noundef %i.tm)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.01775 = phi ptr [ %i.ti, %bb.dn ], [ %i.tn, %bb.do ] ; 4 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ni, ptr noundef nonnull @.str.1557, ptr noundef %.01775)
  %i.to = load i32, ptr %i.tc, align 4            ; 3 uses
  switch i32 %i.to, label %bb.ds [
    i32 -1, label %bb.dq
    i32 0, label %bb.dr
  ]

bb.dq:                                            ; preds = %bb.dp
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ni, ptr noundef nonnull @.str.1558)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.mu, ptr noundef nonnull @.str.1559, ptr noundef %.01775)
  br label %bb.dt

bb.dr:                                            ; preds = %bb.dp
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ni, ptr noundef nonnull @.str.1521)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.mu, ptr noundef nonnull @.str.1560, ptr noundef %.01775)
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dp
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ni, ptr noundef nonnull @.str.1561, i32 noundef %i.to)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.mu, ptr noundef nonnull @.str.1562, ptr noundef %.01775, i32 noundef %i.to)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %bb.dq
  %i.tp = zext i8 %i.td to i32                    ; 2 uses
  %i.tq = load i8, ptr %i.ck, align 1
  %i.tr = icmp eq i8 %i.tq, 0
  %i.ts = select i1 %i.tr, ptr @ulsch_lcid_vals, ptr @dlsch_lcid_vals
  %i.tt = call ptr @try_val_to_str(i32 noundef %i.tp, ptr noundef nonnull %i.ts)
  %i.tu = icmp eq ptr %i.tt, null
  br i1 %i.tu, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.tv = load i8, ptr %i.ck, align 1
  %i.tw = icmp eq i8 %i.tv, 0
  %i.tx = select i1 %i.tw, i32 85, i32 68
  %i.ty = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ni, ptr noundef nonnull @ei_mac_lte_lcid_unexpected, ptr noundef nonnull @.str.1563, i32 noundef %i.tx, i32 noundef %i.tp) ; 0 uses
  br label %bb.dv

.thread2047:                                      ; preds = %bb.by, %bb.ci, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  br label %bb.pe

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.tz = sub i32 %.42377, %.0
  call void @proto_item_set_len(ptr noundef %i.ni, i32 noundef %i.tz)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  %i.ua = icmp samesign ult i64 %indvars.iv, 1023
  %i.ub = trunc i8 %i.nt to i1
  %i.uc = select i1 %i.ua, i1 %i.ub, i1 false
  %indvars.iv.next2195.a = add nuw nsw i16 %indvars.iv2194.a, 1
  br i1 %i.uc, label %bb.bf, label %bb.dw, !llvm.loop !20

bb.dw:                                            ; preds = %bb.dv
  %i.ud = trunc nuw nsw i64 %indvars.iv to i16    ; 2 uses
  %i.ue = icmp samesign ugt i64 %indvars.iv, 1022
  br i1 %i.ue, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.uf = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_mac_lte_too_many_subheaders, ptr noundef %0, i32 noundef %.42377, i32 noundef 1, ptr noundef nonnull @.str.1564, i32 noundef 1024) ; 0 uses
  br label %bb.pe

bb.dy:                                            ; preds = %bb.dw
  %i.ug = trunc nuw nsw i64 %indvars.iv.next to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.mu, ptr noundef nonnull @.str.1565, i32 noundef %i.ug)
  call void @proto_item_set_len(ptr noundef %i.mu, i32 noundef %.42377)
  %i.uh = load i8, ptr %i.ck, align 1
  %i.ui = icmp eq i8 %i.uh, 1
  br i1 %i.ui, label %bb.dz, label %.lr.ph2148

bb.dz:                                            ; preds = %bb.dy
  %i.uj = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0) ; 4 uses
  %i.uk = getelementptr i8, ptr %4, i64 49
  %i.ul = load i8, ptr %i.uk, align 1
  %.not.i1939 = icmp eq i8 %i.ul, 0
  br i1 %.not.i1939, label %TrackReportedDLHARQResend.exit, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.um = getelementptr i8, ptr %1, i64 80
  %i.un = load ptr, ptr %i.um, align 8
  %i.uo = getelementptr i8, ptr %i.un, i64 53
  %i.up = load i16, ptr %i.uo, align 1
  %i.uq = and i16 %i.up, 8
  %.not94.i = icmp eq i16 %i.uq, 0
  br i1 %.not94.i, label %bb.eb, label %bb.en

bb.eb:                                            ; preds = %bb.ea
  %i.ur = getelementptr i8, ptr %4, i64 56
  %i.us = load i8, ptr %i.ur, align 4             ; 3 uses
  %i.ut = getelementptr i8, ptr %4, i64 58
  %i.uu = load i8, ptr %i.ut, align 2             ; 3 uses
  %i.uv = icmp ult i8 %i.us, 15
  %i.uw = icmp ult i8 %i.uu, 2
  %or.cond.not.i = select i1 %i.uv, i1 %i.uw, i1 false
  br i1 %or.cond.not.i, label %bb.ec, label %TrackReportedDLHARQResend.exit

bb.ec:                                            ; preds = %bb.eb
  %i.ux = load ptr, ptr @mac_lte_dl_harq_hash, align 8
  %i.uy = load i16, ptr %i.nb, align 4
  %i.uz = zext i16 %i.uy to i64
  %i.va = inttoptr i64 %i.uz to ptr
  %i.vb = call ptr @g_hash_table_lookup(ptr noundef %i.ux, ptr noundef %i.va) ; 8 uses
  %.not95.i = icmp eq ptr %i.vb, null
  br i1 %.not95.i, label %bb.el, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.vc = zext nneg i8 %i.uu to i64               ; 7 uses
  %i.vd = getelementptr [31320 x i8], ptr %i.vb, i64 %i.vc
  %i.ve = zext nneg i8 %i.us to i64               ; 7 uses
  %i.vf = getelementptr [2088 x i8], ptr %i.vd, i64 %i.ve ; 7 uses
  %i.vg = load i8, ptr %i.vf, align 8, !range !7, !noundef !8
  %i.vh = trunc nuw i8 %i.vg to i1
  br i1 %i.vh, label %bb.ee, label %bb.em

bb.ee:                                            ; preds = %bb.ed
  %i.vi = getelementptr i8, ptr %i.vf, i64 32
  %i.vj = load i32, ptr %i.vi, align 8
  %i.vk = icmp eq i32 %i.uj, %i.vj
  br i1 %i.vk, label %bb.ef, label %bb.em

bb.ef:                                            ; preds = %bb.ee
  %i.vl = getelementptr i8, ptr %4, i64 57
  %i.vm = load i8, ptr %i.vl, align 1, !range !7, !noundef !8
  %i.vn = getelementptr i8, ptr %i.vf, i64 8
  %i.vo = load i8, ptr %i.vn, align 8, !range !7, !noundef !8
  %i.vp = icmp eq i8 %i.vm, %i.vo
  br i1 %i.vp, label %bb.eg, label %bb.em

bb.eg:                                            ; preds = %bb.ef
  %i.vq = getelementptr i8, ptr %i.vf, i64 36
  %narrow.i1953 = call i32 @llvm.umin.i32(i32 %i.uj, i32 2048)
  %spec.select.i1954 = zext nneg i32 %narrow.i1953 to i64
  %i.vr = call i32 @tvb_memeql(ptr noundef %0, i32 noundef 0, ptr noundef %i.vq, i64 noundef %spec.select.i1954)
  %i.vs = icmp eq i32 %i.vr, 0
  br i1 %i.vs, label %bb.eh, label %bb.em

bb.eh:                                            ; preds = %bb.eg
  %i.vt = getelementptr i8, ptr %1, i64 24
  %i.vu = load i64, ptr %i.vt, align 8
  %i.vv = getelementptr i8, ptr %i.vf, i64 16
  %i.vw = load i64, ptr %i.vv, align 8
  %i.vx = sub i64 %i.vu, %i.vw
  %i.vy = trunc i64 %i.vx to i32
  %i.vz = getelementptr i8, ptr %1, i64 32
  %i.wa = load i32, ptr %i.vz, align 8
  %i.wb = getelementptr i8, ptr %i.vf, i64 24
  %i.wc = load i32, ptr %i.wb, align 8
  %i.wd = mul i32 %i.vy, 1000
  %i.we = add i32 %i.wa, 500000
  %i.wf = sub i32 %i.we, %i.wc
  %i.wg = sdiv i32 %i.wf, 1000000
  %i.wh = add i32 %i.wg, %i.wd                    ; 3 uses
  %i.wi = add i32 %i.wh, -8
  %or.cond4.i = icmp ult i32 %i.wi, 6
  br i1 %or.cond4.i, label %bb.ei, label %bb.em

bb.ei:                                            ; preds = %bb.eh
  %i.wj = call ptr @wmem_file_scope()
  %i.wk = call noalias dereferenceable_or_null(20) ptr @wmem_alloc0(ptr noundef %i.wj, i64 noundef 20) #17 ; 5 uses
  store i8 1, ptr %i.wk, align 4
  %i.wl = getelementptr i8, ptr %i.vf, i64 4      ; 3 uses
  %i.wm = load i32, ptr %i.wl, align 4
  %i.wn = getelementptr i8, ptr %i.wk, i64 4
  store i32 %i.wm, ptr %i.wn, align 4
  %i.wo = getelementptr i8, ptr %i.wk, i64 8
  store i32 %i.wh, ptr %i.wo, align 4
  %i.wp = load ptr, ptr @mac_lte_dl_harq_result_hash, align 8
  %i.wq = load i32, ptr %i.ae, align 4
  %i.wr = zext i32 %i.wq to i64
  %i.ws = inttoptr i64 %i.wr to ptr
  %i.wt = call i32 @g_hash_table_insert(ptr noundef %i.wp, ptr noundef %i.ws, ptr noundef %i.wk) ; 0 uses
  %i.wu = load ptr, ptr @mac_lte_dl_harq_result_hash, align 8
  %i.wv = load i32, ptr %i.wl, align 4
  %i.ww = zext i32 %i.wv to i64
  %i.wx = inttoptr i64 %i.ww to ptr
  %i.wy = call ptr @g_hash_table_lookup(ptr noundef %i.wu, ptr noundef %i.wx) ; 2 uses
  %i.wz = icmp eq ptr %i.wy, null
  br i1 %i.wz, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.xa = call ptr @wmem_file_scope()
  %i.xb = call noalias dereferenceable_or_null(20) ptr @wmem_alloc0(ptr noundef %i.xa, i64 noundef 20) #17 ; 2 uses
  %i.xc = load ptr, ptr @mac_lte_dl_harq_result_hash, align 8
  %i.xd = load i32, ptr %i.wl, align 4
  %i.xe = zext i32 %i.xd to i64
  %i.xf = inttoptr i64 %i.xe to ptr
  %i.xg = call i32 @g_hash_table_insert(ptr noundef %i.xc, ptr noundef %i.xf, ptr noundef %i.xb) ; 0 uses
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.086.i = phi ptr [ %i.xb, %bb.ej ], [ %i.wy, %bb.ei ] ; 3 uses
  %i.xh = getelementptr i8, ptr %.086.i, i64 1
  store i8 1, ptr %i.xh, align 1
  %i.xi = load i32, ptr %i.ae, align 4
  %i.xj = getelementptr i8, ptr %.086.i, i64 12
  store i32 %i.xi, ptr %i.xj, align 4
  %i.xk = getelementptr i8, ptr %.086.i, i64 16
  store i32 %i.wh, ptr %i.xk, align 4
  br label %bb.em

bb.el:                                            ; preds = %bb.ec
  %i.xl = call ptr @wmem_file_scope()
  %i.xm = call noalias dereferenceable_or_null(62640) ptr @wmem_alloc0(ptr noundef %i.xl, i64 noundef 62640) #17 ; 2 uses
  %i.xn = load ptr, ptr @mac_lte_dl_harq_hash, align 8
  %i.xo = load i16, ptr %i.nb, align 4
  %i.xp = zext i16 %i.xo to i64
  %i.xq = inttoptr i64 %i.xp to ptr
  %i.xr = call i32 @g_hash_table_insert(ptr noundef %i.xn, ptr noundef %i.xq, ptr noundef %i.xm) ; 0 uses
  %.pre.i = zext nneg i8 %i.uu to i64
  %.pre110.i = zext nneg i8 %i.us to i64
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed
  %.pre-phi111.i = phi i64 [ %i.ve, %bb.eh ], [ %i.ve, %bb.ek ], [ %i.ve, %bb.ed ], [ %i.ve, %bb.eg ], [ %i.ve, %bb.ef ], [ %i.ve, %bb.ee ], [ %.pre110.i, %bb.el ]
  %.pre-phi.i1950 = phi i64 [ %i.vc, %bb.eh ], [ %i.vc, %bb.ek ], [ %i.vc, %bb.ed ], [ %i.vc, %bb.eg ], [ %i.vc, %bb.ef ], [ %i.vc, %bb.ee ], [ %.pre.i, %bb.el ]
  %.088.i1951 = phi ptr [ %i.vb, %bb.eh ], [ %i.vb, %bb.ek ], [ %i.vb, %bb.ed ], [ %i.vb, %bb.eg ], [ %i.vb, %bb.ef ], [ %i.vb, %bb.ee ], [ %i.xm, %bb.el ]
  %.1.i1952 = phi ptr [ null, %bb.eh ], [ %i.wk, %bb.ek ], [ null, %bb.ed ], [ null, %bb.eg ], [ null, %bb.ef ], [ null, %bb.ee ], [ null, %bb.el ]
  %i.xs = getelementptr [31320 x i8], ptr %.088.i1951, i64 %.pre-phi.i1950
  %i.xt = getelementptr [2088 x i8], ptr %i.xs, i64 %.pre-phi111.i ; 6 uses
  store i8 1, ptr %i.xt, align 8
  %i.xu = getelementptr i8, ptr %i.xt, i64 32
  store i32 %i.uj, ptr %i.xu, align 8
  %i.xv = getelementptr i8, ptr %i.xt, i64 36
  %narrow109.i = call i32 @llvm.umin.i32(i32 %i.uj, i32 2048)
  %spec.select99.i = zext nneg i32 %narrow109.i to i64
  %i.xw = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.xv, i32 noundef 0, i64 noundef %spec.select99.i) ; 0 uses
  %i.xx = getelementptr i8, ptr %4, i64 57
  %i.xy = load i8, ptr %i.xx, align 1, !range !7, !noundef !8
  %i.xz = getelementptr i8, ptr %i.xt, i64 8
  store i8 %i.xy, ptr %i.xz, align 8
  %i.ya = load i32, ptr %i.ae, align 4
  %i.yb = getelementptr i8, ptr %i.xt, i64 4
  store i32 %i.ya, ptr %i.yb, align 4
  %i.yc = getelementptr i8, ptr %i.xt, i64 16
  %i.yd = getelementptr i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.yc, ptr noundef readonly align 8 dereferenceable(16) %i.yd, i64 16, i1 false)
  br label %bb.eo

bb.en:                                            ; preds = %bb.ea
  %i.ye = load ptr, ptr @mac_lte_dl_harq_result_hash, align 8
  %i.yf = load i32, ptr %i.ae, align 4
  %i.yg = zext i32 %i.yf to i64
  %i.yh = inttoptr i64 %i.yg to ptr
  %i.yi = call ptr @g_hash_table_lookup(ptr noundef %i.ye, ptr noundef %i.yh)
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.3.i = phi ptr [ %i.yi, %bb.en ], [ %.1.i1952, %bb.em ] ; 7 uses
  %.not98.i1940 = icmp eq ptr %.3.i, null
  br i1 %.not98.i1940, label %TrackReportedDLHARQResend.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.yj = load i8, ptr %.3.i, align 4, !range !7, !noundef !8
  %i.yk = trunc nuw i8 %i.yj to i1
  br i1 %i.yk, label %bb.eq, label %proto_item_set_generated.exit102.i

bb.eq:                                            ; preds = %bb.ep
  %i.yl = load i32, ptr @hf_mac_lte_dl_harq_resend_original_frame, align 4
  %i.ym = getelementptr i8, ptr %.3.i, i64 4
  %i.yn = load i32, ptr %i.ym, align 4
  %i.yo = call ptr @proto_tree_add_uint(ptr noundef %7, i32 noundef %i.yl, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.yn) ; 2 uses
  %.not.i.i1947 = icmp eq ptr %i.yo, null
  br i1 %.not.i.i1947, label %proto_item_set_generated.exit.i1949, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.yp = getelementptr i8, ptr %i.yo, i64 40
  %i.yq = load ptr, ptr %i.yp, align 8            ; 2 uses
  %.not5.i.i1948 = icmp eq ptr %i.yq, null
  br i1 %.not5.i.i1948, label %proto_item_set_generated.exit.i1949, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.yr = getelementptr i8, ptr %i.yq, i64 28     ; 2 uses
  %i.ys = load i32, ptr %i.yr, align 4
  %i.yt = or i32 %i.ys, 2
  store i32 %i.yt, ptr %i.yr, align 4
  br label %proto_item_set_generated.exit.i1949

proto_item_set_generated.exit.i1949:              ; preds = %bb.es, %bb.er, %bb.eq
  %i.yu = load i32, ptr @hf_mac_lte_dl_harq_resend_time_since_previous_frame, align 4
  %i.yv = getelementptr i8, ptr %.3.i, i64 8
  %i.yw = load i32, ptr %i.yv, align 4
  %i.yx = call ptr @proto_tree_add_uint(ptr noundef %7, i32 noundef %i.yu, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.yw) ; 2 uses
  %.not.i100.i = icmp eq ptr %i.yx, null
  br i1 %.not.i100.i, label %proto_item_set_generated.exit102.i, label %bb.et

bb.et:                                            ; preds = %proto_item_set_generated.exit.i1949
  %i.yy = getelementptr i8, ptr %i.yx, i64 40
  %i.yz = load ptr, ptr %i.yy, align 8            ; 2 uses
  %.not5.i101.i = icmp eq ptr %i.yz, null
  br i1 %.not5.i101.i, label %proto_item_set_generated.exit102.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.za = getelementptr i8, ptr %i.yz, i64 28     ; 2 uses
  %i.zb = load i32, ptr %i.za, align 4
  %i.zc = or i32 %i.zb, 2
  store i32 %i.zc, ptr %i.za, align 4
  br label %proto_item_set_generated.exit102.i

proto_item_set_generated.exit102.i:               ; preds = %bb.eu, %bb.et, %proto_item_set_generated.exit.i1949, %bb.ep
  %i.zd = getelementptr i8, ptr %.3.i, i64 1
  %i.ze = load i8, ptr %i.zd, align 1, !range !7, !noundef !8
  %i.zf = trunc nuw i8 %i.ze to i1
  br i1 %i.zf, label %bb.ev, label %TrackReportedDLHARQResend.exit

bb.ev:                                            ; preds = %proto_item_set_generated.exit102.i
  %i.zg = load i32, ptr @hf_mac_lte_dl_harq_resend_next_frame, align 4
  %i.zh = getelementptr i8, ptr %.3.i, i64 12
  %i.zi = load i32, ptr %i.zh, align 4
  %i.zj = call ptr @proto_tree_add_uint(ptr noundef %7, i32 noundef %i.zg, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.zi) ; 2 uses
  %.not.i103.i1942 = icmp eq ptr %i.zj, null
  br i1 %.not.i103.i1942, label %proto_item_set_generated.exit105.i1944, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.zk = getelementptr i8, ptr %i.zj, i64 40
  %i.zl = load ptr, ptr %i.zk, align 8            ; 2 uses
  %.not5.i104.i1943 = icmp eq ptr %i.zl, null
  br i1 %.not5.i104.i1943, label %proto_item_set_generated.exit105.i1944, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.zm = getelementptr i8, ptr %i.zl, i64 28     ; 2 uses
  %i.zn = load i32, ptr %i.zm, align 4
  %i.zo = or i32 %i.zn, 2
  store i32 %i.zo, ptr %i.zm, align 4
  br label %proto_item_set_generated.exit105.i1944

proto_item_set_generated.exit105.i1944:           ; preds = %bb.ex, %bb.ew, %bb.ev
  %i.zp = load i32, ptr @hf_mac_lte_dl_harq_resend_time_until_next_frame, align 4
  %i.zq = getelementptr i8, ptr %.3.i, i64 16
  %i.zr = load i32, ptr %i.zq, align 4
  %i.zs = call ptr @proto_tree_add_uint(ptr noundef %7, i32 noundef %i.zp, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.zr) ; 2 uses
  %.not.i106.i1945 = icmp eq ptr %i.zs, null
  br i1 %.not.i106.i1945, label %TrackReportedDLHARQResend.exit, label %bb.ey

bb.ey:                                            ; preds = %proto_item_set_generated.exit105.i1944
  %i.zt = getelementptr i8, ptr %i.zs, i64 40
  %i.zu = load ptr, ptr %i.zt, align 8            ; 2 uses
  %.not5.i107.i1946 = icmp eq ptr %i.zu, null
  br i1 %.not5.i107.i1946, label %TrackReportedDLHARQResend.exit, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.zv = getelementptr i8, ptr %i.zu, i64 28     ; 2 uses
  %i.zw = load i32, ptr %i.zv, align 4
  %i.zx = or i32 %i.zw, 2
  store i32 %i.zx, ptr %i.zv, align 4
  br label %TrackReportedDLHARQResend.exit

TrackReportedDLHARQResend.exit:                   ; preds = %bb.dz, %bb.eb, %bb.eo, %proto_item_set_generated.exit102.i, %proto_item_set_generated.exit105.i1944, %bb.ey, %bb.ez
  %i.zy = getelementptr i8, ptr %4, i64 36
  %i.zz = load i32, ptr %i.zy, align 4
  %i.aaa = icmp eq i32 %i.zz, 1
  %i.aab = zext i1 %i.aaa to i8
  %i.aac = getelementptr i8, ptr %5, i64 17
  store i8 %i.aab, ptr %i.aac, align 1
  br label %.lr.ph2148

.lr.ph2148:                                       ; preds = %TrackReportedDLHARQResend.exit, %bb.dy
  %i.aad = getelementptr i8, ptr %5, i64 310      ; 8 uses
  %i.aae = getelementptr i8, ptr %1, i64 80       ; 8 uses
  %i.aaf = getelementptr i8, ptr %4, i64 22       ; 4 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 4 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.z, i64 12 ; 4 uses
  %i.aaj = getelementptr i8, ptr %4, i64 23       ; 5 uses
  %i.aak = getelementptr i8, ptr %4, i64 24       ; 4 uses
  %i.aal = getelementptr i8, ptr %1, i64 24       ; 2 uses
  %i.aam = getelementptr i8, ptr %1, i64 32
  %wide.trip.count = zext nneg i16 %indvars.iv2194.a to i64 ; 3 uses
  br label %bb.fa

bb.fa:                                            ; preds = %.lr.ph2148, %mac_lte_drx_control_element_received.exit
  %indvars.iv2192 = phi i64 [ 0, %.lr.ph2148 ], [ %indvars.iv.next2193, %mac_lte_drx_control_element_received.exit ] ; 12 uses
  %.62146 = phi i32 [ %.42377, %.lr.ph2148 ], [ %.12, %mac_lte_drx_control_element_received.exit ] ; 155 uses
  %i.aan = getelementptr i8, ptr %i.i, i64 %indvars.iv2192
  %i.aao = load i8, ptr %i.aan, align 1           ; 11 uses
  %i.aap = load i8, ptr %i.ck, align 1            ; 2 uses
  %i.aaq = icmp ult i8 %i.aao, 11
  br i1 %i.aaq, label %is_data_lcid.exit1955.thread.split.loop.exit2401, label %is_data_lcid.exit1955

is_data_lcid.exit1955:                            ; preds = %bb.fa
  %i.aar = icmp eq i8 %i.aap, 0
  %i.aas = icmp ult i8 %i.aao, 14
  %i.aat = and i1 %i.aas, %i.aar
  %i.aau = icmp eq i8 %i.aao, 16
  %or.cond2103 = or i1 %i.aau, %i.aat
  br i1 %or.cond2103, label %is_data_lcid.exit1955.thread.split.loop.exit2407, label %bb.fb

bb.fb:                                            ; preds = %is_data_lcid.exit1955
  %i.aav = icmp eq i8 %i.aap, 1                   ; 2 uses
  %i.aaw = icmp eq i8 %i.aao, 25
  %or.cond1897 = and i1 %i.aaw, %i.aav
  br i1 %or.cond1897, label %is_data_lcid.exit1955.thread.split.loop.exit2404, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  br i1 %i.aav, label %bb.fd, label %bb.gy

bb.fd:                                            ; preds = %bb.fc
  switch i8 %i.aao, label %mac_lte_drx_control_element_received.exit [
    i8 31, label %bb.gx
    i8 18, label %bb.fe
    i8 19, label %bb.ff
    i8 20, label %bb.ff
    i8 21, label %bb.fh
    i8 22, label %bb.fk
    i8 27, label %bb.fn
    i8 24, label %bb.fn
    i8 28, label %bb.fs
    i8 29, label %bb.gq
    i8 30, label %bb.gu
    i8 26, label %bb.gu
  ]

bb.fe:                                            ; preds = %bb.fd
  %i.aax = load i32, ptr @hf_mac_lte_control_activation_deactivation_pdcp_dup, align 4
  %i.aay = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv2192
  %i.aaz = load i32, ptr %i.aay, align 4
  %i.aba = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %2, i32 noundef %i.aax, ptr noundef %0, i32 noundef %.62146, i32 noundef %i.aaz, ptr noundef nonnull @.str.840, ptr noundef nonnull @.str.537)
  %i.abb = load i32, ptr @ett_mac_lte_activation_deactivation_pdcp_dup, align 4
  %i.abc = call ptr @proto_item_add_subtree(ptr noundef %i.aba, i32 noundef %i.abb) ; 8 uses
  %i.abd = load i32, ptr @hf_mac_lte_control_activation_deactivation_pdcp_dup_d8, align 4
  %i.abe = call ptr @proto_tree_add_item(ptr noundef %i.abc, i32 noundef %i.abd, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.abf = load i32, ptr @hf_mac_lte_control_activation_deactivation_pdcp_dup_d7, align 4
  %i.abg = call ptr @proto_tree_add_item(ptr noundef %i.abc, i32 noundef %i.abf, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.abh = load i32, ptr @hf_mac_lte_control_activation_deactivation_pdcp_dup_d6, align 4
  %i.abi = call ptr @proto_tree_add_item(ptr noundef %i.abc, i32 noundef %i.abh, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.abj = load i32, ptr @hf_mac_lte_control_activation_deactivation_pdcp_dup_d5, align 4
  %i.abk = call ptr @proto_tree_add_item(ptr noundef %i.abc, i32 noundef %i.abj, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.abl = load i32, ptr @hf_mac_lte_control_activation_deactivation_pdcp_dup_d4, align 4
  %i.abm = call ptr @proto_tree_add_item(ptr noundef %i.abc, i32 noundef %i.abl, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.abn = load i32, ptr @hf_mac_lte_control_activation_deactivation_pdcp_dup_d3, align 4
  %i.abo = call ptr @proto_tree_add_item(ptr noundef %i.abc, i32 noundef %i.abn, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.abp = load i32, ptr @hf_mac_lte_control_activation_deactivation_pdcp_dup_d2, align 4
  %i.abq = call ptr @proto_tree_add_item(ptr noundef %i.abc, i32 noundef %i.abp, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.abr = load i32, ptr @hf_mac_lte_control_activation_deactivation_pdcp_dup_d1, align 4
  %i.abs = call ptr @proto_tree_add_item(ptr noundef %i.abc, i32 noundef %i.abr, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.abt = add i32 %.62146, 1
  br label %mac_lte_drx_control_element_received.exit

bb.ff:                                            ; preds = %bb.fd, %bb.fd
  %i.abu = load i32, ptr @hf_mac_lte_control_hibernation, align 4
  %i.abv = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv2192
  %i.abw = load i32, ptr %i.abv, align 4
  %i.abx = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %2, i32 noundef %i.abu, ptr noundef %0, i32 noundef %.62146, i32 noundef %i.abw, ptr noundef nonnull @.str.840, ptr noundef nonnull @.str.555) ; 2 uses
  %i.aby = load i32, ptr @ett_mac_lte_hibernation, align 4
  %i.abz = call ptr @proto_item_add_subtree(ptr noundef %i.abx, i32 noundef %i.aby) ; 31 uses
  %i.aca = load i32, ptr @hf_mac_lte_control_hibernation_c7, align 4
  %i.acb = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.aca, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acc = load i32, ptr @hf_mac_lte_control_hibernation_c6, align 4
  %i.acd = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.acc, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ace = load i32, ptr @hf_mac_lte_control_hibernation_c5, align 4
  %i.acf = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.ace, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acg = load i32, ptr @hf_mac_lte_control_hibernation_c4, align 4
  %i.ach = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.acg, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aci = load i32, ptr @hf_mac_lte_control_hibernation_c3, align 4
  %i.acj = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.aci, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ack = load i32, ptr @hf_mac_lte_control_hibernation_c2, align 4
  %i.acl = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.ack, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acm = load i32, ptr @hf_mac_lte_control_hibernation_c1, align 4
  %i.acn = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.acm, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aco = load i32, ptr @hf_mac_lte_control_hibernation_reserved, align 4
  %i.acp = call ptr @proto_tree_add_item(ptr noundef %i.abx, i32 noundef %i.aco, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acq = add i32 %.62146, 1                     ; 9 uses
  %i.acr = icmp eq i8 %i.aao, 20
  br i1 %i.acr, label %bb.fg, label %mac_lte_drx_control_element_received.exit

bb.fg:                                            ; preds = %bb.ff
  %i.acs = load i32, ptr @hf_mac_lte_control_hibernation_c15, align 4
  %i.act = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.acs, ptr noundef %0, i32 noundef %i.acq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acu = load i32, ptr @hf_mac_lte_control_hibernation_c14, align 4
  %i.acv = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.acu, ptr noundef %0, i32 noundef %i.acq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acw = load i32, ptr @hf_mac_lte_control_hibernation_c13, align 4
  %i.acx = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.acw, ptr noundef %0, i32 noundef %i.acq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acy = load i32, ptr @hf_mac_lte_control_hibernation_c12, align 4
  %i.acz = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.acy, ptr noundef %0, i32 noundef %i.acq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ada = load i32, ptr @hf_mac_lte_control_hibernation_c11, align 4
  %i.adb = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.ada, ptr noundef %0, i32 noundef %i.acq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adc = load i32, ptr @hf_mac_lte_control_hibernation_c10, align 4
  %i.add = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.adc, ptr noundef %0, i32 noundef %i.acq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ade = load i32, ptr @hf_mac_lte_control_hibernation_c9, align 4
  %i.adf = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.ade, ptr noundef %0, i32 noundef %i.acq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adg = load i32, ptr @hf_mac_lte_control_hibernation_c8, align 4
  %i.adh = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.adg, ptr noundef %0, i32 noundef %i.acq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adi = add i32 %.62146, 2                     ; 8 uses
  %i.adj = load i32, ptr @hf_mac_lte_control_hibernation_c23, align 4
  %i.adk = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.adj, ptr noundef %0, i32 noundef %i.adi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adl = load i32, ptr @hf_mac_lte_control_hibernation_c22, align 4
  %i.adm = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.adl, ptr noundef %0, i32 noundef %i.adi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adn = load i32, ptr @hf_mac_lte_control_hibernation_c21, align 4
  %i.ado = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.adn, ptr noundef %0, i32 noundef %i.adi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adp = load i32, ptr @hf_mac_lte_control_hibernation_c20, align 4
  %i.adq = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.adp, ptr noundef %0, i32 noundef %i.adi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adr = load i32, ptr @hf_mac_lte_control_hibernation_c19, align 4
  %i.ads = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.adr, ptr noundef %0, i32 noundef %i.adi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adt = load i32, ptr @hf_mac_lte_control_hibernation_c18, align 4
  %i.adu = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.adt, ptr noundef %0, i32 noundef %i.adi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adv = load i32, ptr @hf_mac_lte_control_hibernation_c17, align 4
  %i.adw = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.adv, ptr noundef %0, i32 noundef %i.adi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adx = load i32, ptr @hf_mac_lte_control_hibernation_c16, align 4
  %i.ady = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.adx, ptr noundef %0, i32 noundef %i.adi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adz = add i32 %.62146, 3                     ; 8 uses
  %i.aea = load i32, ptr @hf_mac_lte_control_hibernation_c31, align 4
  %i.aeb = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.aea, ptr noundef %0, i32 noundef %i.adz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aec = load i32, ptr @hf_mac_lte_control_hibernation_c30, align 4
  %i.aed = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.aec, ptr noundef %0, i32 noundef %i.adz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aee = load i32, ptr @hf_mac_lte_control_hibernation_c29, align 4
  %i.aef = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.aee, ptr noundef %0, i32 noundef %i.adz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aeg = load i32, ptr @hf_mac_lte_control_hibernation_c28, align 4
  %i.aeh = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.aeg, ptr noundef %0, i32 noundef %i.adz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aei = load i32, ptr @hf_mac_lte_control_hibernation_c27, align 4
  %i.aej = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.aei, ptr noundef %0, i32 noundef %i.adz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aek = load i32, ptr @hf_mac_lte_control_hibernation_c26, align 4
  %i.ael = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.aek, ptr noundef %0, i32 noundef %i.adz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aem = load i32, ptr @hf_mac_lte_control_hibernation_c25, align 4
  %i.aen = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.aem, ptr noundef %0, i32 noundef %i.adz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aeo = load i32, ptr @hf_mac_lte_control_hibernation_c24, align 4
  %i.aep = call ptr @proto_tree_add_item(ptr noundef %i.abz, i32 noundef %i.aeo, ptr noundef %0, i32 noundef %i.adz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aeq = add i32 %.62146, 4
  br label %mac_lte_drx_control_element_received.exit

bb.fh:                                            ; preds = %bb.fd
  %i.aer = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv2192 ; 2 uses
  %i.aes = load i32, ptr %i.aer, align 4          ; 2 uses
  %i.aet = icmp eq i32 %i.aes, -1
  br i1 %i.aet, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.aeu = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.62146) ; 2 uses
  store i32 %i.aeu, ptr %i.aer, align 4
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.aev = phi i32 [ %i.aeu, %bb.fi ], [ %i.aes, %bb.fh ] ; 3 uses
  %i.aew = load i32, ptr @hf_mac_lte_control_activation_deactivation_csi_rs, align 4
  %i.aex = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %2, i32 noundef %i.aew, ptr noundef %0, i32 noundef %.62146, i32 noundef %i.aev, ptr noundef nonnull @.str.840, ptr noundef nonnull @.str.519)
  %i.aey = load i32, ptr @ett_mac_lte_activation_deactivation_csi_rs, align 4
  %i.aez = call ptr @proto_item_add_subtree(ptr noundef %i.aex, i32 noundef %i.aey) ; 8 uses
  %i.afa = icmp sgt i32 %i.aev, 0
  br i1 %i.afa, label %.lr.ph2143, label %mac_lte_drx_control_element_received.exit

.lr.ph2143:                                       ; preds = %bb.fj, %.lr.ph2143
  %.82142 = phi i32 [ %i.afr, %.lr.ph2143 ], [ %.62146, %bb.fj ] ; 9 uses
  %.017692141 = phi i32 [ %i.afs, %.lr.ph2143 ], [ 0, %bb.fj ]
  %i.afb = load i32, ptr @hf_mac_lte_control_activation_deactivation_csi_rs_a8, align 4
  %i.afc = call ptr @proto_tree_add_item(ptr noundef %i.aez, i32 noundef %i.afb, ptr noundef %0, i32 noundef %.82142, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afd = load i32, ptr @hf_mac_lte_control_activation_deactivation_csi_rs_a7, align 4
  %i.afe = call ptr @proto_tree_add_item(ptr noundef %i.aez, i32 noundef %i.afd, ptr noundef %0, i32 noundef %.82142, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aff = load i32, ptr @hf_mac_lte_control_activation_deactivation_csi_rs_a6, align 4
  %i.afg = call ptr @proto_tree_add_item(ptr noundef %i.aez, i32 noundef %i.aff, ptr noundef %0, i32 noundef %.82142, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afh = load i32, ptr @hf_mac_lte_control_activation_deactivation_csi_rs_a5, align 4
  %i.afi = call ptr @proto_tree_add_item(ptr noundef %i.aez, i32 noundef %i.afh, ptr noundef %0, i32 noundef %.82142, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afj = load i32, ptr @hf_mac_lte_control_activation_deactivation_csi_rs_a4, align 4
  %i.afk = call ptr @proto_tree_add_item(ptr noundef %i.aez, i32 noundef %i.afj, ptr noundef %0, i32 noundef %.82142, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afl = load i32, ptr @hf_mac_lte_control_activation_deactivation_csi_rs_a3, align 4
  %i.afm = call ptr @proto_tree_add_item(ptr noundef %i.aez, i32 noundef %i.afl, ptr noundef %0, i32 noundef %.82142, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afn = load i32, ptr @hf_mac_lte_control_activation_deactivation_csi_rs_a2, align 4
  %i.afo = call ptr @proto_tree_add_item(ptr noundef %i.aez, i32 noundef %i.afn, ptr noundef %0, i32 noundef %.82142, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afp = load i32, ptr @hf_mac_lte_control_activation_deactivation_csi_rs_a1, align 4
  %i.afq = call ptr @proto_tree_add_item(ptr noundef %i.aez, i32 noundef %i.afp, ptr noundef %0, i32 noundef %.82142, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afr = add i32 %.82142, 1                     ; 2 uses
  %i.afs = add nuw nsw i32 %.017692141, 1         ; 2 uses
  %exitcond2191.not = icmp eq i32 %i.afs, %i.aev
  br i1 %exitcond2191.not, label %mac_lte_drx_control_element_received.exit, label %.lr.ph2143, !llvm.loop !21

bb.fk:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #20
  %i.aft = load i32, ptr @hf_mac_lte_control_recommended_bit_rate, align 4
  %i.afu = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %2, i32 noundef %i.aft, ptr noundef %0, i32 noundef %.62146, i32 noundef 2, ptr noundef nonnull @.str.840, ptr noundef nonnull @.str.506)
  %i.afv = load i32, ptr @ett_mac_lte_recommended_bit_rate, align 4
  %i.afw = call ptr @proto_item_add_subtree(ptr noundef %i.afu, i32 noundef %i.afv) ; 4 uses
  %i.afx = load i32, ptr @hf_mac_lte_control_recommended_bit_rate_lcid, align 4
  %i.afy = call ptr @proto_tree_add_item(ptr noundef %i.afw, i32 noundef %i.afx, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afz = load i32, ptr @hf_mac_lte_control_recommended_bit_rate_dir, align 4
  %i.aga = call ptr @proto_tree_add_item(ptr noundef %i.afw, i32 noundef %i.afz, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.agb = load i32, ptr @hf_mac_lte_control_recommended_bit_rate_bit_rate, align 4
  %i.agc = call ptr @proto_tree_add_item(ptr noundef %i.afw, i32 noundef %i.agb, ptr noundef %0, i32 noundef %.62146, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.agd = add i32 %.62146, 1
  %i.age = load i32, ptr @hf_mac_lte_control_recommended_bit_rate_reserved, align 4
  %i.agf = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.afw, i32 noundef %i.age, ptr noundef %0, i32 noundef %i.agd, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.n)
  %i.agg = load i32, ptr %i.n, align 4
  %.not1888 = icmp eq i32 %i.agg, 0
  br i1 %.not1888, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.agh = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.agf, ptr noundef nonnull @ei_mac_lte_reserved_not_zero, ptr noundef nonnull @.str.1566) ; 0 uses
  br label %bb.fm

end_hunk_1
begin_hunk_2_@dissect_ulsch_or_dlsch:bb.a
  %.sroa.11.0 = select i1 %i.bna, i32 %hf_mac_lte_control_long_ext_bsr_buffer_size_3.val, i32 %hf_mac_lte_control_long_bsr_buffer_size_3.val
  %i.bnb = load i32, ptr @hf_mac_lte_control_bsr, align 4
  %i.bnc = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %2, i32 noundef %i.bnb, ptr noundef %0, i32 noundef %.62146, i32 noundef 3, ptr noundef nonnull @.str.840, ptr noundef nonnull @.str.977) ; 2 uses
  %i.bnd = load i32, ptr @ett_mac_lte_bsr, align 4
  %i.bne = call ptr @proto_item_add_subtree(ptr noundef %i.bnc, i32 noundef %i.bnd) ; 8 uses
  %i.bnf = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.bne, i32 noundef %.sroa.0.0, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.z)
  %i.bng = load i8, ptr @global_mac_lte_show_BSR_median, align 1, !range !7, !noundef !8
  %i.bnh = trunc nuw i8 %i.bng to i1
  br i1 %i.bnh, label %bb.kw, label %proto_item_set_generated.exit1988

bb.kw:                                            ; preds = %bb.kv
  %i.bni = load i32, ptr @hf_mac_lte_bsr_size_median, align 4
  %i.bnj = load i32, ptr %i.z, align 16
  %i.bnk = zext i32 %i.bnj to i64
  %i.bnl = getelementptr [4 x i8], ptr %ext_buffer_size_median.buffer_size_median1902, i64 %i.bnk
  %i.bnm = load i32, ptr %i.bnl, align 4
  %i.bnn = call ptr @proto_tree_add_uint(ptr noundef %i.bne, i32 noundef %i.bni, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef %i.bnm) ; 2 uses
  %.not.i1986 = icmp eq ptr %i.bnn, null
  br i1 %.not.i1986, label %proto_item_set_generated.exit1988, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.bno = getelementptr i8, ptr %i.bnn, i64 40
  %i.bnp = load ptr, ptr %i.bno, align 8          ; 2 uses
  %.not5.i1987 = icmp eq ptr %i.bnp, null
  br i1 %.not5.i1987, label %proto_item_set_generated.exit1988, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.bnq = getelementptr i8, ptr %i.bnp, i64 28   ; 2 uses
  %i.bnr = load i32, ptr %i.bnq, align 4
  %i.bns = or i32 %i.bnr, 2
  store i32 %i.bns, ptr %i.bnq, align 4
  br label %proto_item_set_generated.exit1988

proto_item_set_generated.exit1988:                ; preds = %bb.ky, %bb.kx, %bb.kw, %bb.kv
  %i.bnt = load i32, ptr %i.z, align 16           ; 3 uses
  %i.bnu = load i32, ptr @global_mac_lte_bsr_warn_threshold, align 4
  %.not1850 = icmp ult i32 %i.bnt, %i.bnu
  br i1 %.not1850, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %proto_item_set_generated.exit1988
  %i.bnv = load i16, ptr %i.cu, align 2
  %i.bnw = zext i16 %i.bnv to i32
  %i.bnx = call ptr @val_to_str_ext_const(i32 noundef %i.bnt, ptr noundef nonnull %ext_buffer_size_vals_ext.buffer_size_vals_ext1901, ptr noundef nonnull @.str.1492)
  %i.bny = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bnf, ptr noundef nonnull @ei_mac_lte_bsr_warn_threshold_exceeded, ptr noundef nonnull @.str.1591, i32 noundef %i.bnw, i32 noundef %i.bnt, ptr noundef %i.bnx) ; 0 uses
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %proto_item_set_generated.exit1988
  %i.bnz = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.bne, i32 noundef %.sroa.5.0, ptr noundef %0, i32 noundef %.62146, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.aag)
  %i.boa = load i8, ptr @global_mac_lte_show_BSR_median, align 1, !range !7, !noundef !8
  %i.bob = trunc nuw i8 %i.boa to i1
  br i1 %i.bob, label %bb.lb, label %proto_item_set_generated.exit1991

bb.lb:                                            ; preds = %bb.la
  %i.boc = load i32, ptr @hf_mac_lte_bsr_size_median, align 4
  %i.bod = load i32, ptr %i.aag, align 4
  %i.boe = zext i32 %i.bod to i64
  %i.bof = getelementptr [4 x i8], ptr %ext_buffer_size_median.buffer_size_median1902, i64 %i.boe
  %i.bog = load i32, ptr %i.bof, align 4
  %i.boh = call ptr @proto_tree_add_uint(ptr noundef %i.bne, i32 noundef %i.boc, ptr noundef %0, i32 noundef %.62146, i32 noundef 1, i32 noundef %i.bog) ; 2 uses
  %.not.i1989 = icmp eq ptr %i.boh, null
  br i1 %.not.i1989, label %proto_item_set_generated.exit1991, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.boi = getelementptr i8, ptr %i.boh, i64 40
  %i.boj = load ptr, ptr %i.boi, align 8          ; 2 uses
  %.not5.i1990 = icmp eq ptr %i.boj, null
  br i1 %.not5.i1990, label %proto_item_set_generated.exit1991, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.bok = getelementptr i8, ptr %i.boj, i64 28   ; 2 uses
  %i.bol = load i32, ptr %i.bok, align 4
  %i.bom = or i32 %i.bol, 2
  store i32 %i.bom, ptr %i.bok, align 4
  br label %proto_item_set_generated.exit1991

proto_item_set_generated.exit1991:                ; preds = %bb.ld, %bb.lc, %bb.lb, %bb.la
  %i.bon = add i32 %.62146, 1                     ; 2 uses
  %i.boo = load i32, ptr %i.aag, align 4          ; 3 uses
  %i.bop = load i32, ptr @global_mac_lte_bsr_warn_threshold, align 4
  %.not1851 = icmp ult i32 %i.boo, %i.bop
  br i1 %.not1851, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %proto_item_set_generated.exit1991
  %i.boq = load i16, ptr %i.cu, align 2
  %i.bor = zext i16 %i.boq to i32
  %i.bos = call ptr @val_to_str_ext_const(i32 noundef %i.boo, ptr noundef nonnull %ext_buffer_size_vals_ext.buffer_size_vals_ext1901, ptr noundef nonnull @.str.1492)
  %i.bot = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bnz, ptr noundef nonnull @ei_mac_lte_bsr_warn_threshold_exceeded, ptr noundef nonnull @.str.1592, i32 noundef %i.bor, i32 noundef %i.boo, ptr noundef %i.bos) ; 0 uses
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %proto_item_set_generated.exit1991
  %i.bou = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.bne, i32 noundef %.sroa.8.0, ptr noundef %0, i32 noundef %i.bon, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.aah)
  %i.bov = load i8, ptr @global_mac_lte_show_BSR_median, align 1, !range !7, !noundef !8
  %i.bow = trunc nuw i8 %i.bov to i1
  br i1 %i.bow, label %bb.lg, label %proto_item_set_generated.exit1994

bb.lg:                                            ; preds = %bb.lf
  %i.box = load i32, ptr @hf_mac_lte_bsr_size_median, align 4
  %i.boy = load i32, ptr %i.aah, align 8
  %i.boz = zext i32 %i.boy to i64
  %i.bpa = getelementptr [4 x i8], ptr %ext_buffer_size_median.buffer_size_median1902, i64 %i.boz
  %i.bpb = load i32, ptr %i.bpa, align 4
  %i.bpc = call ptr @proto_tree_add_uint(ptr noundef %i.bne, i32 noundef %i.box, ptr noundef %0, i32 noundef %i.bon, i32 noundef 1, i32 noundef %i.bpb) ; 2 uses
  %.not.i1992 = icmp eq ptr %i.bpc, null
  br i1 %.not.i1992, label %proto_item_set_generated.exit1994, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.bpd = getelementptr i8, ptr %i.bpc, i64 40
  %i.bpe = load ptr, ptr %i.bpd, align 8          ; 2 uses
  %.not5.i1993 = icmp eq ptr %i.bpe, null
  br i1 %.not5.i1993, label %proto_item_set_generated.exit1994, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.bpf = getelementptr i8, ptr %i.bpe, i64 28   ; 2 uses
  %i.bpg = load i32, ptr %i.bpf, align 4
  %i.bph = or i32 %i.bpg, 2
  store i32 %i.bph, ptr %i.bpf, align 4
  br label %proto_item_set_generated.exit1994

proto_item_set_generated.exit1994:                ; preds = %bb.li, %bb.lh, %bb.lg, %bb.lf
  %i.bpi = add i32 %.62146, 2                     ; 2 uses
  %i.bpj = load i32, ptr %i.aah, align 8          ; 3 uses
  %i.bpk = load i32, ptr @global_mac_lte_bsr_warn_threshold, align 4
  %.not1852 = icmp ult i32 %i.bpj, %i.bpk
  br i1 %.not1852, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %proto_item_set_generated.exit1994
  %i.bpl = load i16, ptr %i.cu, align 2
  %i.bpm = zext i16 %i.bpl to i32
  %i.bpn = call ptr @val_to_str_ext_const(i32 noundef %i.bpj, ptr noundef nonnull %ext_buffer_size_vals_ext.buffer_size_vals_ext1901, ptr noundef nonnull @.str.1492)
  %i.bpo = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bou, ptr noundef nonnull @ei_mac_lte_bsr_warn_threshold_exceeded, ptr noundef nonnull @.str.1593, i32 noundef %i.bpm, i32 noundef %i.bpj, ptr noundef %i.bpn) ; 0 uses
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %proto_item_set_generated.exit1994
  %i.bpp = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.bne, i32 noundef %.sroa.11.0, ptr noundef %0, i32 noundef %i.bpi, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.aai)
  %i.bpq = load i8, ptr @global_mac_lte_show_BSR_median, align 1, !range !7, !noundef !8
  %i.bpr = trunc nuw i8 %i.bpq to i1
  br i1 %i.bpr, label %bb.ll, label %proto_item_set_generated.exit1997

bb.ll:                                            ; preds = %bb.lk
  %i.bps = load i32, ptr @hf_mac_lte_bsr_size_median, align 4
  %i.bpt = load i32, ptr %i.aai, align 4
  %i.bpu = zext i32 %i.bpt to i64
  %i.bpv = getelementptr [4 x i8], ptr %ext_buffer_size_median.buffer_size_median1902, i64 %i.bpu
  %i.bpw = load i32, ptr %i.bpv, align 4
  %i.bpx = call ptr @proto_tree_add_uint(ptr noundef %i.bne, i32 noundef %i.bps, ptr noundef %0, i32 noundef %i.bpi, i32 noundef 1, i32 noundef %i.bpw) ; 2 uses
  %.not.i1995 = icmp eq ptr %i.bpx, null
  br i1 %.not.i1995, label %proto_item_set_generated.exit1997, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.bpy = getelementptr i8, ptr %i.bpx, i64 40
  %i.bpz = load ptr, ptr %i.bpy, align 8          ; 2 uses
  %.not5.i1996 = icmp eq ptr %i.bpz, null
  br i1 %.not5.i1996, label %proto_item_set_generated.exit1997, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.bqa = getelementptr i8, ptr %i.bpz, i64 28   ; 2 uses
  %i.bqb = load i32, ptr %i.bqa, align 4
  %i.bqc = or i32 %i.bqb, 2
  store i32 %i.bqc, ptr %i.bqa, align 4
  br label %proto_item_set_generated.exit1997

proto_item_set_generated.exit1997:                ; preds = %bb.ln, %bb.lm, %bb.ll, %bb.lk
  %i.bqd = add i32 %.62146, 3
  %i.bqe = load i32, ptr %i.aai, align 4          ; 3 uses
  %i.bqf = load i32, ptr @global_mac_lte_bsr_warn_threshold, align 4
  %.not1853 = icmp ult i32 %i.bqe, %i.bqf
  br i1 %.not1853, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %proto_item_set_generated.exit1997
  %i.bqg = load i16, ptr %i.cu, align 2
  %i.bqh = zext i16 %i.bqg to i32
  %i.bqi = call ptr @val_to_str_ext_const(i32 noundef %i.bqe, ptr noundef nonnull %ext_buffer_size_vals_ext.buffer_size_vals_ext1901, ptr noundef nonnull @.str.1492)
  %i.bqj = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bpp, ptr noundef nonnull @ei_mac_lte_bsr_warn_threshold_exceeded, ptr noundef nonnull @.str.1594, i32 noundef %i.bqh, i32 noundef %i.bqe, ptr noundef %i.bqi) ; 0 uses
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %proto_item_set_generated.exit1997
  %i.bqk = load i32, ptr %i.z, align 16
  %i.bql = call ptr @val_to_str_ext_const(i32 noundef %i.bqk, ptr noundef nonnull %ext_buffer_size_vals_ext.buffer_size_vals_ext1901, ptr noundef nonnull @.str.1492)
  %i.bqm = load i32, ptr %i.aag, align 4
  %i.bqn = call ptr @val_to_str_ext_const(i32 noundef %i.bqm, ptr noundef nonnull %ext_buffer_size_vals_ext.buffer_size_vals_ext1901, ptr noundef nonnull @.str.1492)
  %i.bqo = load i32, ptr %i.aah, align 8
  %i.bqp = call ptr @val_to_str_ext_const(i32 noundef %i.bqo, ptr noundef nonnull %ext_buffer_size_vals_ext.buffer_size_vals_ext1901, ptr noundef nonnull @.str.1492)
  %i.bqq = load i32, ptr %i.aai, align 4
  %i.bqr = call ptr @val_to_str_ext_const(i32 noundef %i.bqq, ptr noundef nonnull %ext_buffer_size_vals_ext.buffer_size_vals_ext1901, ptr noundef nonnull @.str.1492)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bnc, ptr noundef nonnull @.str.1595, ptr noundef %i.bql, ptr noundef %i.bqn, ptr noundef %i.bqp, ptr noundef %i.bqr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #20
  br label %mac_lte_drx_control_element_received.exit

bb.lq:                                            ; preds = %bb.gy
  %i.bqs = load i16, ptr %i.aad, align 2
  %i.bqt = add i16 %i.bqs, 1
  store i16 %i.bqt, ptr %i.aad, align 2
  br label %mac_lte_drx_control_element_received.exit

mac_lte_drx_control_element_received.exit:        ; preds = %.lr.ph2143, %bb.fj, %bb.gw, %bb.gv, %bb.gu, %bb.hb, %bb.hc, %bb.ff, %bb.fg, %.loopexit2110, %bb.fd, %bb.gx, %bb.gt, %bb.gp, %bb.fr, %bb.fm, %bb.fe, %bb.gy, %bb.lq, %bb.lp, %bb.kr, %bb.ki, %bb.kh, %bb.je, %.loopexit, %bb.hf, %bb.ha, %bb.gz
  %.12 = phi i32 [ %.62146, %bb.fd ], [ %.62146, %bb.gx ], [ %i.abt, %bb.fe ], [ %.62146, %bb.lq ], [ %i.acq, %bb.ff ], [ %i.agi, %bb.fm ], [ %.9, %bb.fr ], [ %i.anr, %bb.gp ], [ %i.aog, %bb.gt ], [ %i.aqa, %bb.hb ], [ %.62146, %bb.gy ], [ %i.aow, %bb.gz ], [ %i.apd, %bb.ha ], [ %.62146, %bb.gw ], [ %i.asq, %bb.hf ], [ %i.aua, %.loopexit ], [ %i.bei, %bb.je ], [ %.11, %.loopexit2110 ], [ %i.bkr, %bb.kh ], [ %i.bku, %bb.ki ], [ %i.bmd, %bb.kr ], [ %i.bqd, %bb.lp ], [ %i.aeq, %bb.fg ], [ %i.asa, %bb.hc ], [ %.62146, %bb.gu ], [ %.62146, %bb.gv ], [ %.62146, %bb.fj ], [ %i.afr, %.lr.ph2143 ] ; 2 uses
  %indvars.iv.next2193 = add nuw nsw i64 %indvars.iv2192, 1 ; 2 uses
  %exitcond2200.not = icmp eq i64 %indvars.iv.next2193, %wide.trip.count
  br i1 %exitcond2200.not, label %is_data_lcid.exit1955.thread, label %bb.fa, !llvm.loop !27

is_data_lcid.exit1955.thread.split.loop.exit2401: ; preds = %bb.fa
  %i.bqu = trunc nuw nsw i64 %indvars.iv2192 to i16
  br label %is_data_lcid.exit1955.thread

is_data_lcid.exit1955.thread.split.loop.exit2404: ; preds = %bb.fb
  %i.bqv = trunc nuw nsw i64 %indvars.iv2192 to i16
  br label %is_data_lcid.exit1955.thread

is_data_lcid.exit1955.thread.split.loop.exit2407: ; preds = %is_data_lcid.exit1955
  %i.bqw = trunc nuw nsw i64 %indvars.iv2192 to i16
  br label %is_data_lcid.exit1955.thread

is_data_lcid.exit1955.thread:                     ; preds = %mac_lte_drx_control_element_received.exit, %is_data_lcid.exit1955.thread.split.loop.exit2407, %is_data_lcid.exit1955.thread.split.loop.exit2404, %is_data_lcid.exit1955.thread.split.loop.exit2401
  %.01738.lcssa.ph = phi i16 [ %i.bqw, %is_data_lcid.exit1955.thread.split.loop.exit2407 ], [ %i.bqu, %is_data_lcid.exit1955.thread.split.loop.exit2401 ], [ %i.bqv, %is_data_lcid.exit1955.thread.split.loop.exit2404 ], [ %indvars.iv2194.a, %mac_lte_drx_control_element_received.exit ] ; 4 uses
  %.6.lcssa.ph = phi i32 [ %.62146, %is_data_lcid.exit1955.thread.split.loop.exit2407 ], [ %.62146, %is_data_lcid.exit1955.thread.split.loop.exit2401 ], [ %.62146, %is_data_lcid.exit1955.thread.split.loop.exit2404 ], [ %.12, %mac_lte_drx_control_element_received.exit ] ; 5 uses
  %i.bqx = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.6.lcssa.ph)
  %i.bqy = icmp eq i32 %i.bqx, 0
  %i.bqz = select i1 %i.bqy, i1 %.11778, i1 false ; 2 uses
  %i.bra = zext i1 %i.bqz to i32
  %i.brb = load i32, ptr @hf_mac_lte_sch_header_only, align 4
  %i.brc = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.brb, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.bra) ; 4 uses
  %.not.i1998 = icmp eq ptr %i.brc, null          ; 2 uses
  br i1 %i.bqz, label %bb.lr, label %bb.mc

bb.lr:                                            ; preds = %is_data_lcid.exit1955.thread
  br i1 %.not.i1998, label %proto_item_set_generated.exit2000, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.brd = getelementptr i8, ptr %i.brc, i64 40
  %i.bre = load ptr, ptr %i.brd, align 8          ; 2 uses
  %.not5.i1999 = icmp eq ptr %i.bre, null
  br i1 %.not5.i1999, label %proto_item_set_generated.exit2000, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.brf = getelementptr i8, ptr %i.bre, i64 28   ; 2 uses
  %i.brg = load i32, ptr %i.brf, align 4
  %i.brh = or i32 %i.brg, 2
  store i32 %i.brh, ptr %i.brf, align 4
  br label %proto_item_set_generated.exit2000

proto_item_set_generated.exit2000:                ; preds = %bb.lr, %bb.ls, %bb.lt
  %i.bri = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.brc, ptr noundef nonnull @ei_mac_lte_sch_header_only_truncated) ; 0 uses
  %.not2161 = icmp ugt i16 %.01738.lcssa.ph, %i.ud
  br i1 %.not2161, label %._crit_edge2167, label %.lr.ph2166

.lr.ph2166:                                       ; preds = %proto_item_set_generated.exit2000
  %i.brj = zext nneg i16 %.01738.lcssa.ph to i64
  br label %bb.lu

bb.lu:                                            ; preds = %.lr.ph2166, %bb.ma
  %indvars.iv2209 = phi i64 [ %i.brj, %.lr.ph2166 ], [ %indvars.iv.next2210, %bb.ma ] ; 4 uses
  %.132165 = phi i32 [ %.6.lcssa.ph, %.lr.ph2166 ], [ %i.bsk, %bb.ma ] ; 3 uses
  %i.brk = getelementptr i8, ptr %i.i, i64 %indvars.iv2209
  %i.brl = load i8, ptr %i.brk, align 1           ; 4 uses
  %i.brm = icmp eq i8 %i.brl, 31
  br i1 %i.brm, label %._crit_edge2167, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.brn = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv2209
  %i.bro = load i32, ptr %i.brn, align 4          ; 2 uses
  %i.brp = icmp eq i32 %i.bro, -1
  br i1 %i.brp, label %bb.lw, label %bb.lx

bb.lw:                                            ; preds = %bb.lv
  %i.brq = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.132165)
  br label %bb.lx

bb.lx:                                            ; preds = %bb.lv, %bb.lw
  %i.brr = phi i32 [ %i.brq, %bb.lw ], [ %i.bro, %bb.lv ] ; 2 uses
  %i.brs = add i8 %i.brl, -3
  %or.cond1903 = icmp ult i8 %i.brs, 8
  br i1 %or.cond1903, label %.sink.split2414, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.brt = icmp eq i8 %i.brl, 16
  br i1 %i.brt, label %bb.lz, label %bb.ma

bb.lz:                                            ; preds = %bb.ly
  %i.bru = getelementptr i8, ptr %i.j, i64 %indvars.iv2209
  %i.brv = load i8, ptr %i.bru, align 1           ; 2 uses
  %i.brw = add i8 %i.brv, -32
  %or.cond1904 = icmp ult i8 %i.brw, 7
  br i1 %or.cond1904, label %.sink.split2414, label %bb.ma

.sink.split2414:                                  ; preds = %bb.lz, %bb.lx
  %.sink2428 = phi i8 [ %i.brl, %bb.lx ], [ %i.brv, %bb.lz ]
  %i.brx = phi i64 [ 176, %bb.lx ], [ 92, %bb.lz ]
  %i.bry = phi i64 [ 44, %bb.lx ], [ -40, %bb.lz ]
  %i.brz = getelementptr i8, ptr %5, i64 %i.bry
  %i.bsa = getelementptr i8, ptr %5, i64 %i.brx
  %i.bsb = zext nneg i8 %.sink2428 to i64         ; 2 uses
  %i.bsc = getelementptr [4 x i8], ptr %i.bsa, i64 %i.bsb ; 2 uses
  %i.bsd = load i32, ptr %i.bsc, align 4
  %i.bse = add i32 %i.bsd, 1
  store i32 %i.bse, ptr %i.bsc, align 4
  %i.bsf = and i32 %i.brr, 65535
  %i.bsg = getelementptr [4 x i8], ptr %i.brz, i64 %i.bsb ; 2 uses
  %i.bsh = load i32, ptr %i.bsg, align 4
  %i.bsi = add i32 %i.bsh, %i.bsf
  store i32 %i.bsi, ptr %i.bsg, align 4
  br label %bb.ma

bb.ma:                                            ; preds = %.sink.split2414, %bb.lz, %bb.ly
  %i.bsj = and i32 %i.brr, 65535
  %i.bsk = add i32 %i.bsj, %.132165               ; 2 uses
  %indvars.iv.next2210 = add nuw nsw i64 %indvars.iv2209, 1 ; 2 uses
  %exitcond2216.not = icmp eq i64 %indvars.iv.next2210, %wide.trip.count
  br i1 %exitcond2216.not, label %._crit_edge2167, label %bb.lu, !llvm.loop !28

._crit_edge2167:                                  ; preds = %bb.ma, %bb.lu, %proto_item_set_generated.exit2000
  %.13.lcssa = phi i32 [ %.6.lcssa.ph, %proto_item_set_generated.exit2000 ], [ %.132165, %bb.lu ], [ %i.bsk, %bb.ma ]
  %i.bsl = getelementptr i8, ptr %i.i, i64 %indvars.iv
  %i.bsm = load i8, ptr %i.bsl, align 1
  %i.bsn = icmp eq i8 %i.bsm, 31
  br i1 %i.bsn, label %bb.mb, label %bb.pe

bb.mb:                                            ; preds = %._crit_edge2167
  %i.bso = load i16, ptr %i.cx, align 2
  %i.bsp = load i16, ptr %i.aad, align 2
  %i.bsq = trunc i32 %.13.lcssa to i16
  %i.bsr = sub i16 %i.bso, %i.bsq
  %i.bss = add i16 %i.bsr, %i.bsp
  store i16 %i.bss, ptr %i.aad, align 2
  br label %bb.pe

bb.mc:                                            ; preds = %is_data_lcid.exit1955.thread
  br i1 %.not.i1998, label %proto_item_set_hidden.exit2003, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.bst = getelementptr i8, ptr %i.brc, i64 40
  %i.bsu = load ptr, ptr %i.bst, align 8          ; 2 uses
  %.not5.i2002 = icmp eq ptr %i.bsu, null
  br i1 %.not5.i2002, label %proto_item_set_hidden.exit2003, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.bsv = getelementptr i8, ptr %i.bsu, i64 28   ; 2 uses
  %i.bsw = load i32, ptr %i.bsv, align 4
  %i.bsx = or i32 %i.bsw, 1
  store i32 %i.bsx, ptr %i.bsv, align 4
  br label %proto_item_set_hidden.exit2003

proto_item_set_hidden.exit2003:                   ; preds = %bb.mc, %bb.md, %bb.me
  %.not2160 = icmp ugt i16 %.01738.lcssa.ph, %i.ud
  br i1 %.not2160, label %._crit_edge, label %.lr.ph2160

.lr.ph2160:                                       ; preds = %proto_item_set_hidden.exit2003
  %i.bsy = getelementptr i8, ptr %4, i64 44       ; 8 uses
  %i.bsz = getelementptr i8, ptr %4, i64 2
  %i.bta = zext nneg i16 %.01738.lcssa.ph to i64
  br label %bb.mf

bb.mf:                                            ; preds = %.lr.ph2160, %bb.oi
  %indvars.iv2201 = phi i64 [ %i.bta, %.lr.ph2160 ], [ %indvars.iv.next2202, %bb.oi ] ; 5 uses
  %.162159 = phi i32 [ %.6.lcssa.ph, %.lr.ph2160 ], [ %.19.ph, %bb.oi ] ; 16 uses
  %i.btb = getelementptr i8, ptr %i.i, i64 %indvars.iv2201 ; 2 uses
  %i.btc = load i8, ptr %i.btb, align 1           ; 3 uses
  %i.btd = icmp eq i8 %i.btc, 31
  br i1 %i.btd, label %._crit_edge, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.bte = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv2201 ; 2 uses
  %i.btf = load i32, ptr %i.bte, align 4          ; 3 uses
  %i.btg = icmp eq i32 %i.btf, -1                 ; 3 uses
  br i1 %i.btg, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  %i.bth = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.162159)
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mg, %bb.mh
  %i.bti = phi i32 [ %i.bth, %bb.mh ], [ %i.btf, %bb.mg ] ; 2 uses
  %i.btj = trunc i32 %i.bti to i16                ; 8 uses
  switch i8 %i.btc, label %.thread2069 [
    i8 0, label %bb.mj
    i8 13, label %bb.mo
  ]

bb.mj:                                            ; preds = %bb.mi
  %i.btk = load i8, ptr %i.ck, align 1
  %i.btl = icmp eq i8 %i.btk, 0
  br i1 %i.btl, label %bb.mk, label %.thread2069

bb.mk:                                            ; preds = %bb.mj
  %i.btm = load i32, ptr %i.bsy, align 4
  %i.btn = icmp eq i32 %i.btm, 1
  %i.bto = and i32 %i.bti, 65535
  %i.btp = icmp ne i32 %i.bto, 0
  %or.cond12 = select i1 %i.btn, i1 %i.btp, i1 false
  br i1 %or.cond12, label %bb.ml, label %.thread2069

bb.ml:                                            ; preds = %bb.mk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #20
  %i.btq = load i32, ptr @hf_mac_lte_control_data_vol_power_headroom, align 4
  %i.btr = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %2, i32 noundef %i.btq, ptr noundef %0, i32 noundef %.162159, i32 noundef 1, ptr noundef nonnull @.str.840, ptr noundef nonnull @.str.500)
  %i.bts = load i32, ptr @ett_mac_lte_data_vol_power_headroom, align 4
  %i.btt = call ptr @proto_item_add_subtree(ptr noundef %i.btr, i32 noundef %i.bts) ; 3 uses
  %i.btu = load i32, ptr @hf_mac_lte_control_data_vol_power_headroom_reserved, align 4
  %i.btv = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.btt, i32 noundef %i.btu, ptr noundef %0, i32 noundef %.162159, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.aa)
  %i.btw = load i32, ptr %i.aa, align 4
  %.not1889 = icmp eq i32 %i.btw, 0
  br i1 %.not1889, label %bb.mn, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.btx = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.btv, ptr noundef nonnull @ei_mac_lte_reserved_not_zero, ptr noundef nonnull @.str.1596) ; 0 uses
  br label %bb.mn

bb.mn:                                            ; preds = %bb.mm, %bb.ml
  %i.bty = load i32, ptr @hf_mac_lte_control_data_vol_power_headroom_level, align 4
  %i.btz = call ptr @proto_tree_add_item(ptr noundef %i.btt, i32 noundef %i.bty, ptr noundef %0, i32 noundef %.162159, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bua = load i32, ptr @hf_mac_lte_control_data_vol_power_headroom_data_vol, align 4
  %i.bub = call ptr @proto_tree_add_item(ptr noundef %i.btt, i32 noundef %i.bua, ptr noundef %0, i32 noundef %.162159, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.buc = add i32 %.162159, 1
  %i.bud = sext i1 %i.btg to i16
  %spec.select1905 = add i16 %i.btj, %i.bud
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #20
  br label %.thread2069

bb.mo:                                            ; preds = %bb.mi
  %i.bue = load i8, ptr %i.ck, align 1
  %i.buf = icmp eq i8 %i.bue, 0
  br i1 %i.buf, label %bb.mp, label %.thread2069

bb.mp:                                            ; preds = %bb.mo
  %i.bug = load i32, ptr %i.bsy, align 4
  %i.buh = icmp eq i32 %i.bug, 1
  %i.bui = icmp ne i16 %i.btj, 0
  %or.cond15 = select i1 %i.buh, i1 %i.bui, i1 false
  br i1 %or.cond15, label %bb.mq, label %.thread2069

bb.mq:                                            ; preds = %bb.mp
  %i.buj = load i32, ptr @hf_mac_lte_control_data_vol_power_headroom, align 4
  %i.buk = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %2, i32 noundef %i.buj, ptr noundef %0, i32 noundef %.162159, i32 noundef 1, ptr noundef nonnull @.str.840, ptr noundef nonnull @.str.1597)
  %i.bul = load i32, ptr @ett_mac_lte_data_vol_power_headroom, align 4
  %i.bum = call ptr @proto_item_add_subtree(ptr noundef %i.buk, i32 noundef %i.bul) ; 2 uses
  %i.bun = load i32, ptr @hf_mac_lte_control_data_vol_power_headroom_level_4_bits, align 4
  %i.buo = call ptr @proto_tree_add_item(ptr noundef %i.bum, i32 noundef %i.bun, ptr noundef %0, i32 noundef %.162159, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bup = load i32, ptr @hf_mac_lte_control_data_vol_power_headroom_data_vol, align 4
  %i.buq = call ptr @proto_tree_add_item(ptr noundef %i.bum, i32 noundef %i.bup, ptr noundef %0, i32 noundef %.162159, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bur = add i32 %.162159, 1
  %i.bus = sext i1 %i.btg to i16
  %spec.select1906 = add i16 %i.btj, %i.bus
  br label %.thread2069

.thread2069:                                      ; preds = %bb.mi, %bb.mj, %bb.mk, %bb.mn, %bb.mq, %bb.mp, %bb.mo
  %.31735 = phi i16 [ %spec.select1906, %bb.mq ], [ %i.btj, %bb.mp ], [ %i.btj, %bb.mo ], [ %i.btj, %bb.mi ], [ %i.btj, %bb.mj ], [ %i.btj, %bb.mk ], [ %spec.select1905, %bb.mn ] ; 6 uses
  %.18 = phi i32 [ %i.bur, %bb.mq ], [ %.162159, %bb.mp ], [ %.162159, %bb.mo ], [ %.162159, %bb.mi ], [ %.162159, %bb.mj ], [ %.162159, %bb.mk ], [ %i.buc, %bb.mn ] ; 12 uses
  %i.but = load i32, ptr @hf_mac_lte_sch_sdu, align 4
  %i.buu = zext i8 %i.btc to i32
  %i.buv = load i8, ptr %i.ck, align 1
  %i.buw = icmp eq i8 %i.buv, 0
  %i.bux = select i1 %i.buw, ptr @ulsch_lcid_vals, ptr @dlsch_lcid_vals
  %i.buy = call ptr @val_to_str_const(i32 noundef %i.buu, ptr noundef nonnull %i.bux, ptr noundef nonnull @.str.1492)
  %i.buz = zext i16 %.31735 to i32                ; 7 uses
  %i.bva = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %2, i32 noundef %i.but, ptr noundef %0, i32 noundef %.18, i32 noundef %i.btf, ptr noundef null, ptr noundef nonnull @.str.1598, ptr noundef %i.buy, i32 noundef %i.buz) ; 11 uses
  %i.bvb = load i8, ptr %i.btb, align 1           ; 11 uses
  %i.bvc = icmp eq i8 %i.bvb, 0
  br i1 %i.bvc, label %bb.mr, label %bb.na

bb.mr:                                            ; preds = %.thread2069
  %i.bvd = load i8, ptr %i.ck, align 1
  %i.bve = icmp eq i8 %i.bvd, 0
  %i.bvf = icmp ugt i16 %.31735, 5
  %or.cond18 = select i1 %i.bve, i1 %i.bvf, i1 false
  br i1 %or.cond18, label %bb.ms, label %bb.mw

bb.ms:                                            ; preds = %bb.mr
  %i.bvg = load ptr, ptr %i.aae, align 8
  %i.bvh = getelementptr i8, ptr %i.bvg, i64 53
  %i.bvi = load i16, ptr %i.bvh, align 1
  %i.bvj = and i16 %i.bvi, 8
  %.not1890 = icmp eq i16 %i.bvj, 0
  br i1 %.not1890, label %bb.mt, label %bb.mw

bb.mt:                                            ; preds = %bb.ms
  %i.bvk = load i16, ptr %i.nb, align 4
  %i.bvl = load ptr, ptr @mac_lte_msg3_hash, align 8
  %i.bvm = zext i16 %i.bvk to i64
  %i.bvn = inttoptr i64 %i.bvm to ptr             ; 2 uses
  %i.bvo = call ptr @g_hash_table_lookup(ptr noundef %i.bvl, ptr noundef %i.bvn) ; 2 uses
  %i.bvp = icmp eq ptr %i.bvo, null
  br i1 %i.bvp, label %bb.mu, label %bb.mv

bb.mu:                                            ; preds = %bb.mt
  %i.bvq = call ptr @wmem_file_scope()
  %i.bvr = call noalias dereferenceable_or_null(32) ptr @wmem_alloc(ptr noundef %i.bvq, i64 noundef 32) #17 ; 2 uses
  %i.bvs = load ptr, ptr @mac_lte_msg3_hash, align 8
  %i.bvt = call i32 @g_hash_table_insert(ptr noundef %i.bvs, ptr noundef %i.bvn, ptr noundef %i.bvr) ; 0 uses
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %bb.mt
  %.01729 = phi ptr [ %i.bvr, %bb.mu ], [ %i.bvo, %bb.mt ] ; 3 uses
  %i.bvu = load i32, ptr %i.ae, align 4
  %i.bvv = getelementptr i8, ptr %.01729, i64 24
  store i32 %i.bvu, ptr %i.bvv, align 8
  %i.bvw = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %.01729, i32 noundef %.18, i64 noundef 6) ; 0 uses
  %i.bvx = getelementptr i8, ptr %.01729, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bvx, ptr noundef align 8 dereferenceable(16) %i.aal, i64 16, i1 false)
  br label %bb.mw

bb.mw:                                            ; preds = %bb.ms, %bb.mv, %bb.mr
  %i.bvy = load i8, ptr @global_mac_lte_attempt_rrc_decode, align 1, !range !7
  %i.bvz = trunc nuw i8 %i.bvy to i1
  br i1 %i.bvz, label %bb.mx, label %.critedge1910

bb.mx:                                            ; preds = %bb.mw
  %i.bwa = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.18, i32 noundef %i.buz)
  %i.bwb = load i8, ptr %i.ck, align 1
  %i.bwc = icmp eq i8 %i.bwb, 0
  %i.bwd = load i32, ptr %i.bsy, align 4
  %i.bwe = icmp eq i32 %i.bwd, 0                  ; 2 uses
  %lte_rrc_ul_ccch_handle.val = load ptr, ptr @lte_rrc_ul_ccch_handle, align 8
  %lte_rrc_ul_ccch_nb_handle.val = load ptr, ptr @lte_rrc_ul_ccch_nb_handle, align 8
  %lte_rrc_ul_ccch_handle.lte_rrc_ul_ccch_nb_handle.val = select i1 %i.bwe, ptr %lte_rrc_ul_ccch_handle.val, ptr %lte_rrc_ul_ccch_nb_handle.val
  %lte_rrc_dl_ccch_handle.val = load ptr, ptr @lte_rrc_dl_ccch_handle, align 8
  %lte_rrc_dl_ccch_nb_handle.val = load ptr, ptr @lte_rrc_dl_ccch_nb_handle, align 8
  %lte_rrc_dl_ccch_handle.lte_rrc_dl_ccch_nb_handle.val = select i1 %i.bwe, ptr %lte_rrc_dl_ccch_handle.val, ptr %lte_rrc_dl_ccch_nb_handle.val
  %.01728 = select i1 %i.bwc, ptr %lte_rrc_ul_ccch_handle.lte_rrc_ul_ccch_nb_handle.val, ptr %lte_rrc_dl_ccch_handle.lte_rrc_dl_ccch_nb_handle.val
  %.not.i2004 = icmp eq ptr %i.bva, null
  br i1 %.not.i2004, label %proto_item_set_hidden.exit2006, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.bwf = getelementptr i8, ptr %i.bva, i64 40
  %i.bwg = load ptr, ptr %i.bwf, align 8          ; 2 uses
  %.not5.i2005 = icmp eq ptr %i.bwg, null
  br i1 %.not5.i2005, label %proto_item_set_hidden.exit2006, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.bwh = getelementptr i8, ptr %i.bwg, i64 28   ; 2 uses
  %i.bwi = load i32, ptr %i.bwh, align 4
  %i.bwj = or i32 %i.bwi, 1
  store i32 %i.bwj, ptr %i.bwh, align 4
  br label %proto_item_set_hidden.exit2006

proto_item_set_hidden.exit2006:                   ; preds = %bb.mx, %bb.my, %bb.mz
  call fastcc void @call_with_catch_all(ptr noundef %.01728, ptr noundef %i.bwa, ptr noundef %1, ptr noundef %2)
  br label %.critedge.thread

bb.na:                                            ; preds = %.thread2069
  %i.bwk = load i8, ptr @global_mac_lte_attempt_rrc_decode, align 1, !range !7
  %i.bwl = trunc nuw i8 %i.bwk to i1
  %switch = icmp ult i8 %i.bvb, 3
  br i1 %switch, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.bwm = load i32, ptr %i.bsy, align 4
  %i.bwn = icmp eq i32 %i.bwm, 1
  %i.bwo = icmp eq i8 %i.bvb, 3
  %or.cond1907 = and i1 %i.bwo, %i.bwn
  br i1 %or.cond1907, label %bb.nc, label %bb.nj

bb.nc:                                            ; preds = %bb.na, %bb.nb
  %i.bwp = load i8, ptr @global_mac_lte_attempt_srb_decode, align 1, !range !7, !noundef !8
  %i.bwq = trunc nuw i8 %i.bwp to i1
  br i1 %i.bwq, label %bb.nd, label %.critedge1910

bb.nd:                                            ; preds = %bb.nc
  %i.bwr = load i8, ptr %i.ck, align 1            ; 2 uses
  %i.bws = load i16, ptr %i.cu, align 2           ; 2 uses
  %i.bwt = zext nneg i8 %i.bvb to i16
  %i.bwu = icmp eq i8 %i.bwr, 1
  br i1 %i.bwu, label %get_mac_lte_channel_priority.exit, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.bwv = load ptr, ptr @mac_lte_ue_channels_hash, align 8
  %i.bww = zext i16 %i.bws to i64
  %i.bwx = inttoptr i64 %i.bww to ptr
  %i.bwy = call ptr @g_hash_table_lookup(ptr noundef %i.bwv, ptr noundef %i.bwx) ; 2 uses
  %.not.i2007 = icmp eq ptr %i.bwy, null
  br i1 %.not.i2007, label %get_mac_lte_channel_priority.exit, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.bwz = zext nneg i8 %i.bvb to i64
  %i.bxa = getelementptr [16 x i8], ptr %i.bwy, i64 %i.bwz ; 2 uses
  %i.bxb = load i8, ptr %i.bxa, align 4, !range !7, !noundef !8
  %i.bxc = trunc nuw i8 %i.bxb to i1
  br i1 %i.bxc, label %bb.ng, label %get_mac_lte_channel_priority.exit

bb.ng:                                            ; preds = %bb.nf
  %i.bxd = getelementptr i8, ptr %i.bxa, i64 12
  %i.bxe = load i8, ptr %i.bxd, align 4
  br label %get_mac_lte_channel_priority.exit

get_mac_lte_channel_priority.exit:                ; preds = %bb.nd, %bb.ne, %bb.nf, %bb.ng
  %.0.i2008 = phi i8 [ 0, %bb.nd ], [ %i.bxe, %bb.ng ], [ 0, %bb.ne ], [ 0, %bb.nf ]
  %i.bxf = load i32, ptr %i.bsy, align 4
  call fastcc void @call_rlc_dissector(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %.18, i16 noundef zeroext %.31735, i8 noundef zeroext 4, i8 noundef zeroext %i.bwr, i16 noundef zeroext %i.bws, i16 noundef zeroext 4, i16 noundef zeroext %i.bwt, i8 noundef zeroext 0, i8 noundef zeroext %.0.i2008, i1 noundef zeroext false, i32 noundef %i.bxf)
  %.not.i2009 = icmp eq ptr %i.bva, null
  br i1 %.not.i2009, label %.critedge, label %bb.nh

bb.nh:                                            ; preds = %get_mac_lte_channel_priority.exit
  %i.bxg = getelementptr i8, ptr %i.bva, i64 40
  %i.bxh = load ptr, ptr %i.bxg, align 8          ; 2 uses
  %.not5.i2010 = icmp eq ptr %i.bxh, null
  br i1 %.not5.i2010, label %.critedge, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.bxi = getelementptr i8, ptr %i.bxh, i64 28   ; 2 uses
  %i.bxj = load i32, ptr %i.bxi, align 4
  %i.bxk = or i32 %i.bxj, 1
  store i32 %i.bxk, ptr %i.bxi, align 4
  br label %.critedge

bb.nj:                                            ; preds = %bb.nb
  %i.bxl = icmp ult i8 %i.bvb, 11
  br i1 %i.bxl, label %bb.nl, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  switch i8 %i.bvb, label %.critedge1910 [
    i8 16, label %bb.nm
    i8 25, label %bb.oa
  ]

bb.nl:                                            ; preds = %bb.nj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #20
  br label %bb.nn

bb.nm:                                            ; preds = %bb.nk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #20
  %i.bxm = getelementptr i8, ptr %i.j, i64 %indvars.iv2201
  %i.bxn = load i8, ptr %i.bxm, align 1
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nl, %bb.nm
  %.in = phi i8 [ %i.bxn, %bb.nm ], [ %i.bvb, %bb.nl ] ; 3 uses
  %i.bxo = load i8, ptr %i.ck, align 1
  %i.bxp = icmp eq i8 %i.bxo, 1
  br i1 %i.bxp, label %get_mac_lte_channel_priority.exit2014, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.bxq = load i16, ptr %i.cu, align 2
  %i.bxr = load ptr, ptr @mac_lte_ue_channels_hash, align 8
  %i.bxs = zext i16 %i.bxq to i64
  %i.bxt = inttoptr i64 %i.bxs to ptr
  %i.bxu = call ptr @g_hash_table_lookup(ptr noundef %i.bxr, ptr noundef %i.bxt) ; 2 uses
  %.not.i2012 = icmp eq ptr %i.bxu, null
  br i1 %.not.i2012, label %get_mac_lte_channel_priority.exit2014, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.bxv = zext i8 %.in to i64
  %i.bxw = getelementptr [16 x i8], ptr %i.bxu, i64 %i.bxv ; 2 uses
  %i.bxx = load i8, ptr %i.bxw, align 4, !range !7, !noundef !8
  %i.bxy = trunc nuw i8 %i.bxx to i1
  br i1 %i.bxy, label %bb.nq, label %get_mac_lte_channel_priority.exit2014

bb.nq:                                            ; preds = %bb.np
  %i.bxz = getelementptr i8, ptr %i.bxw, i64 12
  %i.bya = load i8, ptr %i.bxz, align 4
  br label %get_mac_lte_channel_priority.exit2014

get_mac_lte_channel_priority.exit2014:            ; preds = %bb.nn, %bb.no, %bb.np, %bb.nq
  %.0.i2013 = phi i8 [ 0, %bb.nn ], [ %i.bya, %bb.nq ], [ 0, %bb.no ], [ 0, %bb.np ] ; 3 uses
  %i.byb = load i16, ptr %i.cu, align 2
  %i.byc = load i8, ptr %i.ck, align 1
  store i8 0, ptr %i.ab, align 1
  store i8 0, ptr %i.ac, align 1
  %i.byd = load i32, ptr @global_mac_lte_lcid_drb_source, align 4
  %i.bye = icmp eq i32 %i.byd, 0
  br i1 %i.bye, label %.preheader.i, label %bb.nt

.preheader.i:                                     ; preds = %get_mac_lte_channel_priority.exit2014
  %i.byf = load i32, ptr @num_lcid_drb_mappings, align 4 ; 2 uses
  %.not32.i = icmp eq i32 %i.byf, 0
  br i1 %.not32.i, label %.critedge1914, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.byg = load ptr, ptr @lcid_drb_mappings, align 8
  %i.byh = zext i8 %.in to i16
  %wide.trip.count.i = zext i32 %i.byf to i64
  br label %bb.ns

bb.nr:                                            ; preds = %bb.ns
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge1914, label %bb.ns, !llvm.loop !29

bb.ns:                                            ; preds = %bb.nr, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.nr ] ; 2 uses
  %i.byi = getelementptr [12 x i8], ptr %i.byg, i64 %indvars.iv.i ; 2 uses
  %i.byj = load i16, ptr %i.byi, align 4
  %i.byk = icmp eq i16 %i.byj, %i.byh
  br i1 %i.byk, label %lookup_rlc_channel_from_lcid.exit, label %bb.nr

bb.nt:                                            ; preds = %get_mac_lte_channel_priority.exit2014
  %i.byl = load ptr, ptr @mac_lte_ue_channels_hash, align 8
  %i.bym = zext i16 %i.byb to i64
  %i.byn = inttoptr i64 %i.bym to ptr
  %i.byo = call ptr @g_hash_table_lookup(ptr noundef %i.byl, ptr noundef %i.byn) ; 2 uses
  %.not.i2015 = icmp eq ptr %i.byo, null
  br i1 %.not.i2015, label %.critedge1914, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.byp = zext i8 %.in to i64
  %i.byq = getelementptr [16 x i8], ptr %i.byo, i64 %i.byp ; 2 uses
  %i.byr = load i8, ptr %i.byq, align 4, !range !7, !noundef !8
  %i.bys = trunc nuw i8 %i.byr to i1
  br i1 %i.bys, label %lookup_rlc_channel_from_lcid.exit, label %.critedge1914

lookup_rlc_channel_from_lcid.exit:                ; preds = %bb.ns, %bb.nu
  %.lcssa.sink = phi ptr [ %i.byq, %bb.nu ], [ %i.byi, %bb.ns ] ; 2 uses
  %i.byt = getelementptr i8, ptr %.lcssa.sink, i64 8
  %i.byu = load i32, ptr %i.byt, align 4          ; 2 uses
  call fastcc void @set_rlc_seqnum_length_ext_li_field(i32 noundef %i.byu, i8 noundef zeroext %i.byc, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac)
  %i.byv = getelementptr i8, ptr %.lcssa.sink, i64 4
  %i.byw = load i32, ptr %i.byv, align 4          ; 3 uses
  switch i32 %i.byu, label %.thread2087 [
    i32 2, label %bb.nv
    i32 3, label %bb.nv
    i32 4, label %bb.nw
    i32 5, label %bb.nw
    i32 6, label %bb.nw
    i32 7, label %bb.nw
    i32 8, label %bb.nw
    i32 9, label %bb.nw
    i32 10, label %bb.nw
    i32 11, label %bb.nw
    i32 12, label %bb.nw
    i32 13, label %bb.nw
    i32 14, label %bb.nw
    i32 15, label %bb.nw
    i32 16, label %bb.nw
    i32 17, label %bb.nw
    i32 18, label %bb.nw
    i32 19, label %bb.nw
    i32 1, label %bb.nx
    i32 0, label %.critedge1914
  ]

bb.nv:                                            ; preds = %lookup_rlc_channel_from_lcid.exit, %lookup_rlc_channel_from_lcid.exit
  %i.byx = load i8, ptr %i.ck, align 1
  %i.byy = load i16, ptr %i.cu, align 2
  %i.byz = trunc i32 %i.byw to i16
  %i.bza = load i8, ptr %i.ab, align 1
  %i.bzb = load i32, ptr %i.bsy, align 4
  call fastcc void @call_rlc_dissector(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %.18, i16 noundef zeroext %.31735, i8 noundef zeroext 2, i8 noundef zeroext %i.byx, i16 noundef zeroext %i.byy, i16 noundef zeroext 5, i16 noundef zeroext %i.byz, i8 noundef zeroext %i.bza, i8 noundef zeroext %.0.i2013, i1 noundef zeroext false, i32 noundef %i.bzb)
  br label %.thread2087

bb.nw:                                            ; preds = %lookup_rlc_channel_from_lcid.exit, %lookup_rlc_channel_from_lcid.exit, %lookup_rlc_channel_from_lcid.exit, %lookup_rlc_channel_from_lcid.exit, %lookup_rlc_channel_from_lcid.exit, %lookup_rlc_channel_from_lcid.exit, %lookup_rlc_channel_from_lcid.exit, %lookup_rlc_channel_from_lcid.exit, %lookup_rlc_channel_from_lcid.exit, %lookup_rlc_channel_from_lcid.exit, %lookup_rlc_channel_from_lcid.exit, %lookup_rlc_channel_from_lcid.exit, %lookup_rlc_channel_from_lcid.exit, %lookup_rlc_channel_from_lcid.exit, %lookup_rlc_channel_from_lcid.exit, %lookup_rlc_channel_from_lcid.exit
  %i.bzc = load i8, ptr %i.ck, align 1
  %i.bzd = load i16, ptr %i.cu, align 2
  %i.bze = trunc i32 %i.byw to i16
  %i.bzf = load i8, ptr %i.ab, align 1
  %i.bzg = load i8, ptr %i.ac, align 1, !range !7, !noundef !8
  %i.bzh = trunc nuw i8 %i.bzg to i1
  %i.bzi = load i32, ptr %i.bsy, align 4
  call fastcc void @call_rlc_dissector(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %.18, i16 noundef zeroext %.31735, i8 noundef zeroext 4, i8 noundef zeroext %i.bzc, i16 noundef zeroext %i.bzd, i16 noundef zeroext 5, i16 noundef zeroext %i.bze, i8 noundef zeroext %i.bzf, i8 noundef zeroext %.0.i2013, i1 noundef zeroext %i.bzh, i32 noundef %i.bzi)
  br label %.thread2087

bb.nx:                                            ; preds = %lookup_rlc_channel_from_lcid.exit
  %i.bzj = load i8, ptr %i.ck, align 1
  %i.bzk = load i16, ptr %i.cu, align 2
  %i.bzl = trunc i32 %i.byw to i16
  %i.bzm = load i32, ptr %i.bsy, align 4
  call fastcc void @call_rlc_dissector(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %.18, i16 noundef zeroext %.31735, i8 noundef zeroext 1, i8 noundef zeroext %i.bzj, i16 noundef zeroext %i.bzk, i16 noundef zeroext 5, i16 noundef zeroext %i.bzl, i8 noundef zeroext 0, i8 noundef zeroext %.0.i2013, i1 noundef zeroext false, i32 noundef %i.bzm)
  br label %.thread2087

.thread2087:                                      ; preds = %lookup_rlc_channel_from_lcid.exit, %bb.nv, %bb.nw, %bb.nx
  %.not.i2016 = icmp eq ptr %i.bva, null
  br i1 %.not.i2016, label %proto_item_set_hidden.exit2018, label %bb.ny

bb.ny:                                            ; preds = %.thread2087
  %i.bzn = getelementptr i8, ptr %i.bva, i64 40
  %i.bzo = load ptr, ptr %i.bzn, align 8          ; 2 uses
  %.not5.i2017 = icmp eq ptr %i.bzo, null
  br i1 %.not5.i2017, label %proto_item_set_hidden.exit2018, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.bzp = getelementptr i8, ptr %i.bzo, i64 28   ; 2 uses
  %i.bzq = load i32, ptr %i.bzp, align 4
  %i.bzr = or i32 %i.bzq, 1
  store i32 %i.bzr, ptr %i.bzp, align 4
  br label %proto_item_set_hidden.exit2018

proto_item_set_hidden.exit2018:                   ; preds = %.thread2087, %bb.ny, %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #20
  br label %.critedge

bb.oa:                                            ; preds = %bb.nk
  %i.bzs = load i8, ptr %i.bsz, align 2
  %i.bzt = icmp eq i8 %i.bzs, 9
  %or.cond22 = select i1 %i.bzt, i1 %i.bwl, i1 false
  br i1 %or.cond22, label %bb.ob, label %.critedge1910

bb.ob:                                            ; preds = %bb.oa
  %i.bzu = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.18, i32 noundef %i.buz)
  %.not.i2019 = icmp eq ptr %i.bva, null
  br i1 %.not.i2019, label %proto_item_set_hidden.exit2021, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.bzv = getelementptr i8, ptr %i.bva, i64 40
  %i.bzw = load ptr, ptr %i.bzv, align 8          ; 2 uses
  %.not5.i2020 = icmp eq ptr %i.bzw, null
  br i1 %.not5.i2020, label %proto_item_set_hidden.exit2021, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.bzx = getelementptr i8, ptr %i.bzw, i64 28   ; 2 uses
  %i.bzy = load i32, ptr %i.bzx, align 4
  %i.bzz = or i32 %i.bzy, 1
  store i32 %i.bzz, ptr %i.bzx, align 4
  br label %proto_item_set_hidden.exit2021

proto_item_set_hidden.exit2021:                   ; preds = %bb.ob, %bb.oc, %bb.od
  %i.caa = load ptr, ptr @lte_rrc_sc_mcch_handle, align 8
  call fastcc void @call_with_catch_all(ptr noundef %i.caa, ptr noundef %i.bzu, ptr noundef %1, ptr noundef %2)
  br label %.critedge.thread

.critedge1914:                                    ; preds = %bb.nr, %lookup_rlc_channel_from_lcid.exit, %.preheader.i, %bb.nt, %bb.nu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #20
  br label %.critedge1910

.critedge1910:                                    ; preds = %bb.mw, %bb.nk, %bb.oa, %bb.nc, %.critedge1914
  %i.cab = load i32, ptr %i.bte, align 4
  %i.cac = icmp sgt i32 %i.cab, 29
  %i.cad = load ptr, ptr %i.nf, align 8           ; 2 uses
  br i1 %i.cac, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %.critedge1910
  %i.cae = call ptr @tvb_bytes_to_str(ptr noundef %i.cad, ptr noundef %0, i32 noundef %.18, i32 noundef 30)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bva, ptr noundef nonnull @.str.1507, ptr noundef %i.cae)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bva, ptr noundef nonnull @.str.1599)
  br label %.critedge

bb.of:                                            ; preds = %.critedge1910
  %i.caf = call ptr @tvb_bytes_to_str(ptr noundef %i.cad, ptr noundef %0, i32 noundef %.18, i32 noundef %i.buz)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bva, ptr noundef nonnull @.str.1507, ptr noundef %i.caf)
  br label %.critedge

.critedge.thread:                                 ; preds = %proto_item_set_hidden.exit2006, %proto_item_set_hidden.exit2021
  %i.cag = add i32 %.18, %i.buz
  br label %bb.og

.critedge:                                        ; preds = %bb.ni, %bb.nh, %get_mac_lte_channel_priority.exit, %proto_item_set_hidden.exit2018, %bb.oe, %bb.of
  %i.cah = add i32 %.18, %i.buz                   ; 2 uses
  %i.cai = add i8 %i.bvb, -3
  %or.cond1911 = icmp ult i8 %i.cai, 8
  br i1 %or.cond1911, label %.sink.split2431, label %bb.og

bb.og:                                            ; preds = %.critedge.thread, %.critedge
  %i.caj = phi i32 [ %i.cag, %.critedge.thread ], [ %i.cah, %.critedge ] ; 3 uses
  %i.cak = icmp eq i8 %i.bvb, 16
  br i1 %i.cak, label %bb.oh, label %bb.oi

bb.oh:                                            ; preds = %bb.og
  %i.cal = getelementptr i8, ptr %i.j, i64 %indvars.iv2201
  %i.cam = load i8, ptr %i.cal, align 1           ; 2 uses
  %i.can = add i8 %i.cam, -32
  %or.cond1912 = icmp ult i8 %i.can, 7
  br i1 %or.cond1912, label %.sink.split2431, label %bb.oi

.sink.split2431:                                  ; preds = %bb.oh, %.critedge
  %.sink2444 = phi i8 [ %i.bvb, %.critedge ], [ %i.cam, %bb.oh ]
  %i.cao = phi i64 [ 176, %.critedge ], [ 92, %bb.oh ]
  %i.cap = phi i64 [ 44, %.critedge ], [ -40, %bb.oh ]
  %.19.ph.ph = phi i32 [ %i.cah, %.critedge ], [ %i.caj, %bb.oh ]
  %i.caq = getelementptr i8, ptr %5, i64 %i.cap
  %i.car = getelementptr i8, ptr %5, i64 %i.cao
  %i.cas = zext nneg i8 %.sink2444 to i64         ; 2 uses
  %i.cat = getelementptr [4 x i8], ptr %i.car, i64 %i.cas ; 2 uses
  %i.cau = load i32, ptr %i.cat, align 4
  %i.cav = add i32 %i.cau, 1
  store i32 %i.cav, ptr %i.cat, align 4
  %i.caw = getelementptr [4 x i8], ptr %i.caq, i64 %i.cas ; 2 uses
  %i.cax = load i32, ptr %i.caw, align 4
  %i.cay = add i32 %i.cax, %i.buz
  store i32 %i.cay, ptr %i.caw, align 4
  br label %bb.oi

bb.oi:                                            ; preds = %.sink.split2431, %bb.og, %bb.oh
  %.19.ph = phi i32 [ %i.caj, %bb.oh ], [ %i.caj, %bb.og ], [ %.19.ph.ph, %.sink.split2431 ] ; 2 uses
  %indvars.iv.next2202 = add nuw nsw i64 %indvars.iv2201, 1 ; 2 uses
  %exitcond2208.not = icmp eq i64 %indvars.iv.next2202, %wide.trip.count
  br i1 %exitcond2208.not, label %._crit_edge, label %bb.mf, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.oi, %bb.mf, %proto_item_set_hidden.exit2003
  %.16.lcssa = phi i32 [ %.6.lcssa.ph, %proto_item_set_hidden.exit2003 ], [ %.162159, %bb.mf ], [ %.19.ph, %bb.oi ] ; 11 uses
  %i.caz = load ptr, ptr %i.aae, align 8
  %i.cba = getelementptr i8, ptr %i.caz, i64 53
  %i.cbb = load i16, ptr %i.cba, align 1
  %i.cbc = and i16 %i.cbb, 8
  %.not1892 = icmp eq i16 %i.cbc, 0
  br i1 %.not1892, label %proto_item_set_generated.exit2024, label %bb.oj

bb.oj:                                            ; preds = %._crit_edge
  %i.cbd = load i8, ptr %i.ck, align 1
  %i.cbe = icmp eq i8 %i.cbd, 0
  %i.cbf = load i8, ptr %i.i, align 16
  %i.cbg = icmp eq i8 %i.cbf, 0
  %or.cond26 = select i1 %i.cbe, i1 %i.cbg, i1 false
  br i1 %or.cond26, label %bb.ok, label %proto_item_set_generated.exit2024

bb.ok:                                            ; preds = %bb.oj
  %i.cbh = load ptr, ptr @mac_lte_msg3_cr_hash, align 8
  %i.cbi = load i32, ptr %i.ae, align 4
  %i.cbj = zext i32 %i.cbi to i64
  %i.cbk = inttoptr i64 %i.cbj to ptr
  %i.cbl = call ptr @g_hash_table_lookup(ptr noundef %i.cbh, ptr noundef %i.cbk)
  %i.cbm = ptrtoint ptr %i.cbl to i64
  %i.cbn = trunc i64 %i.cbm to i32                ; 2 uses
  %.not1893 = icmp eq i32 %i.cbn, 0
  br i1 %.not1893, label %proto_item_set_generated.exit2024, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.cbo = load i32, ptr @hf_mac_lte_control_msg3_to_cr, align 4
  %i.cbp = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.cbo, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.cbn) ; 2 uses
  %.not.i2022 = icmp eq ptr %i.cbp, null
  br i1 %.not.i2022, label %proto_item_set_generated.exit2024, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.cbq = getelementptr i8, ptr %i.cbp, i64 40
  %i.cbr = load ptr, ptr %i.cbq, align 8          ; 2 uses
  %.not5.i2023 = icmp eq ptr %i.cbr, null
  br i1 %.not5.i2023, label %proto_item_set_generated.exit2024, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.cbs = getelementptr i8, ptr %i.cbr, i64 28   ; 2 uses
  %i.cbt = load i32, ptr %i.cbs, align 4
  %i.cbu = or i32 %i.cbt, 2
  store i32 %i.cbu, ptr %i.cbs, align 4
  br label %proto_item_set_generated.exit2024

proto_item_set_generated.exit2024:                ; preds = %bb.on, %bb.om, %bb.ol, %bb.ok, %bb.oj, %._crit_edge
  %i.cbv = getelementptr i8, ptr %i.i, i64 %indvars.iv
  %i.cbw = load i8, ptr %i.cbv, align 1
  %i.cbx = icmp eq i8 %i.cbw, 31
  br i1 %i.cbx, label %bb.oo, label %bb.ou

bb.oo:                                            ; preds = %proto_item_set_generated.exit2024
  %i.cby = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.16.lcssa)
  %.not1894 = icmp eq i32 %i.cby, 0
  br i1 %.not1894, label %bb.oq, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.cbz = load i32, ptr @hf_mac_lte_padding_data, align 4
  %i.cca = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cbz, ptr noundef %0, i32 noundef %.16.lcssa, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.oo
  %i.ccb = load i32, ptr @hf_mac_lte_padding_length, align 4
  %i.ccc = load i16, ptr %i.cx, align 2
  %i.ccd = zext i16 %i.ccc to i32
  %i.cce = sub i32 %i.ccd, %.16.lcssa
  %i.ccf = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ccb, ptr noundef %0, i32 noundef %.16.lcssa, i32 noundef 0, i32 noundef %i.cce) ; 3 uses
  %.not.i2025 = icmp eq ptr %i.ccf, null
  br i1 %.not.i2025, label %proto_item_set_generated.exit2027, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.ccg = getelementptr i8, ptr %i.ccf, i64 40
  %i.cch = load ptr, ptr %i.ccg, align 8          ; 2 uses
  %.not5.i2026 = icmp eq ptr %i.cch, null
  br i1 %.not5.i2026, label %proto_item_set_generated.exit2027, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.cci = getelementptr i8, ptr %i.cch, i64 28   ; 2 uses
  %i.ccj = load i32, ptr %i.cci, align 4
  %i.cck = or i32 %i.ccj, 2
  store i32 %i.cck, ptr %i.cci, align 4
  br label %proto_item_set_generated.exit2027

proto_item_set_generated.exit2027:                ; preds = %bb.oq, %bb.or, %bb.os
  %i.ccl = load i16, ptr %i.cx, align 2
  %i.ccm = load i16, ptr %i.aad, align 2
  %i.ccn = trunc i32 %.16.lcssa to i16
  %i.cco = sub i16 %i.ccl, %i.ccn
  %i.ccp = add i16 %i.cco, %i.ccm
  store i16 %i.ccp, ptr %i.aad, align 2
  %i.ccq = load i16, ptr %i.cx, align 2
  %i.ccr = zext i16 %i.ccq to i32                 ; 2 uses
  %i.ccs = icmp ugt i32 %.16.lcssa, %i.ccr
  br i1 %i.ccs, label %bb.ot, label %bb.oy

bb.ot:                                            ; preds = %proto_item_set_generated.exit2027
  %i.cct = load i8, ptr %i.ck, align 1
  %i.ccu = icmp eq i8 %i.cct, 0
  %i.ccv = select i1 %i.ccu, ptr @.str.102, ptr @.str.108
  %i.ccw = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ccf, ptr noundef nonnull @ei_mac_lte_context_length, ptr noundef nonnull @.str.1600, ptr noundef nonnull %i.ccv, i32 noundef %i.ccr, i32 noundef %.16.lcssa) ; 0 uses
  br label %bb.oy

bb.ou:                                            ; preds = %proto_item_set_generated.exit2024
  %i.ccx = load i16, ptr %i.cx, align 2
  %i.ccy = zext i16 %i.ccx to i32                 ; 3 uses
  %i.ccz = icmp ult i32 %.16.lcssa, %i.ccy
  br i1 %i.ccz, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %bb.ou
  %i.cda = load i8, ptr %i.ck, align 1
  %i.cdb = icmp eq i8 %i.cda, 0
  %i.cdc = select i1 %i.cdb, ptr @.str.102, ptr @.str.108
  %i.cdd = load i16, ptr %i.cu, align 2
  %i.cde = zext i16 %i.cdd to i32
  %i.cdf = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %3, ptr noundef nonnull @ei_mac_lte_context_length, ptr noundef nonnull @.str.1601, ptr noundef nonnull %i.cdc, i32 noundef %i.cde, i32 noundef %i.ccy, i32 noundef %.16.lcssa) ; 0 uses
  %.pre2218 = load i16, ptr %i.cx, align 2
  %.pre2219 = zext i16 %.pre2218 to i32
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %bb.ou
  %.pre-phi = phi i32 [ %.pre2219, %bb.ov ], [ %i.ccy, %bb.ou ] ; 2 uses
  %i.cdg = icmp ugt i32 %.16.lcssa, %.pre-phi
  br i1 %i.cdg, label %bb.ox, label %bb.oy

bb.ox:                                            ; preds = %bb.ow
  %i.cdh = load i8, ptr %i.ck, align 1
  %i.cdi = icmp eq i8 %i.cdh, 0
  %i.cdj = select i1 %i.cdi, ptr @.str.102, ptr @.str.108
  %i.cdk = load i16, ptr %i.cu, align 2
  %i.cdl = zext i16 %i.cdk to i32
  %i.cdm = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %3, ptr noundef nonnull @ei_mac_lte_context_length, ptr noundef nonnull @.str.1602, ptr noundef nonnull %i.cdj, i32 noundef %i.cdl, i32 noundef %.pre-phi, i32 noundef %.16.lcssa) ; 0 uses
  br label %bb.oy

bb.oy:                                            ; preds = %bb.ow, %bb.ox, %proto_item_set_generated.exit2027, %bb.ot
  %i.cdn = load i8, ptr @global_mac_lte_show_drx, align 1, !range !7, !noundef !8
  %i.cdo = trunc nuw i8 %i.cdn to i1
  br i1 %i.cdo, label %bb.oz, label %bb.pe

bb.oz:                                            ; preds = %bb.oy
  %i.cdp = load ptr, ptr %i.aae, align 8
  %i.cdq = getelementptr i8, ptr %i.cdp, i64 53
  %i.cdr = load i16, ptr %i.cdq, align 1
  %i.cds = and i16 %i.cdr, 8
  %.not1895 = icmp eq i16 %i.cds, 0
  br i1 %.not1895, label %bb.pa, label %set_drx_info.exit2029

bb.pa:                                            ; preds = %bb.oz
  %.val = load i16, ptr %i.cu, align 2
  %i.cdt = load ptr, ptr @mac_lte_ue_parameters, align 8
  %i.cdu = zext i16 %.val to i64
  %i.cdv = inttoptr i64 %i.cdu to ptr
  %i.cdw = call ptr @g_hash_table_lookup(ptr noundef %i.cdt, ptr noundef %i.cdv) ; 3 uses
  %.not.i2028 = icmp eq ptr %i.cdw, null
  br i1 %.not.i2028, label %set_drx_info.exit2029, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.cdx = getelementptr i8, ptr %i.cdw, i64 3
  %i.cdy = load i8, ptr %i.cdx, align 1, !range !7, !noundef !8
  %i.cdz = trunc nuw i8 %i.cdy to i1
  br i1 %i.cdz, label %bb.pc, label %set_drx_info.exit2029

bb.pc:                                            ; preds = %bb.pb
  %i.cea = load ptr, ptr @mac_lte_drx_frame_result, align 8
  %i.ceb = load i32, ptr %i.ae, align 4
  store i32 %i.ceb, ptr @get_drx_result_hash_key.key, align 4
  store i32 %8, ptr getelementptr inbounds nuw (i8, ptr @get_drx_result_hash_key.key, i64 4), align 4
  %i.cec = call ptr @g_hash_table_lookup(ptr noundef %i.cea, ptr noundef nonnull @get_drx_result_hash_key.key) ; 2 uses
  %.not14.i = icmp eq ptr %i.cec, null
  br i1 %.not14.i, label %set_drx_info.exit2029, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.ced = getelementptr i8, ptr %i.cec, i64 240
  %i.cee = getelementptr i8, ptr %i.cdw, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(192) %i.ced, ptr noundef align 8 dereferenceable(192) %i.cee, i64 192, i1 false)
  br label %set_drx_info.exit2029

set_drx_info.exit2029:                            ; preds = %bb.pd, %bb.pc, %bb.pb, %bb.pa, %bb.oz
  call fastcc void @show_drx_info(ptr noundef %1, ptr noundef %2, ptr noundef %0, ptr noundef %4, i1 noundef zeroext false, i32 noundef %8)
  br label %bb.pe

bb.pe:                                            ; preds = %.thread2047, %bb.oy, %set_drx_info.exit2029, %._crit_edge2167, %bb.mb, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_bch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %i.b = getelementptr i8, ptr %4, i64 2          ; 3 uses
  %i.c = load i8, ptr %i.b, align 2
  %i.d = zext i8 %i.c to i32
  %i.e = tail call ptr @val_to_str_const(i32 noundef %i.d, ptr noundef nonnull @bch_transport_channel_vals, ptr noundef nonnull @.str.1492)
  tail call void (ptr, ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %3, ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.1606, i32 noundef %i.a, ptr noundef %i.e)
  %i.f = load i32, ptr @hf_mac_lte_context_bch_transport_channel, align 4
  %i.g = load i8, ptr %i.b, align 2
  %i.h = zext i8 %i.g to i32
  %i.i = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.h) ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.k, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.k, i64 28       ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = or i32 %i.m, 2
  store i32 %i.n, ptr %i.l, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.a, %bb.b, %bb.c
  %i.o = load i32, ptr @hf_mac_lte_bch_pdu, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 3 uses
  %i.q = load i8, ptr @global_mac_lte_attempt_rrc_decode, align 1, !range !7, !noundef !8
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.k

bb.d:                                             ; preds = %proto_item_set_generated.exit
  %i.s = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 0)
  %i.t = load i8, ptr %i.b, align 2
  %i.u = icmp eq i8 %i.t, 4
  %i.v = getelementptr i8, ptr %4, i64 44
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp eq i32 %i.w, 0                      ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %4, i64 40
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %i.z, 0
  %lte_rrc_bcch_dl_sch_handle.lte_rrc_bcch_dl_sch_br_handle = select i1 %i.aa, ptr @lte_rrc_bcch_dl_sch_handle, ptr @lte_rrc_bcch_dl_sch_br_handle
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %lte_rrc_bcch_bch_handle.lte_rrc_bcch_bch_nb_handle = select i1 %i.x, ptr @lte_rrc_bcch_bch_handle, ptr @lte_rrc_bcch_bch_nb_handle
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.f
  %.0.in = phi ptr [ %lte_rrc_bcch_dl_sch_handle.lte_rrc_bcch_dl_sch_br_handle, %bb.f ], [ @lte_rrc_bcch_dl_sch_nb_handle, %bb.e ], [ %lte_rrc_bcch_bch_handle.lte_rrc_bcch_bch_nb_handle, %bb.g ]
  %.0 = load ptr, ptr %.0.in, align 8
  %.not.i26 = icmp eq ptr %i.p, null
  br i1 %.not.i26, label %proto_item_set_hidden.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %i.p, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not5.i27 = icmp eq ptr %i.ac, null
  br i1 %.not5.i27, label %proto_item_set_hidden.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %i.ac, i64 28     ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = or i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.h, %bb.i, %bb.j
  tail call fastcc void @call_with_catch_all(ptr noundef %.0, ptr noundef %i.s, ptr noundef %1, ptr noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %proto_item_set_hidden.exit, %proto_item_set_generated.exit
  %i.ag = getelementptr i8, ptr %4, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.p, ptr noundef nonnull @ei_mac_lte_bch_pdu) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_mch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 6 uses
  %i.b = alloca [1024 x i32], align 16            ; 10 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.f = icmp eq ptr %3, null                     ; 4 uses
  %i.g = icmp eq ptr %1, null                     ; 4 uses
  %or.cond3.i = and i1 %i.g, %i.f                 ; 3 uses
  br i1 %or.cond3.i, label %write_pdu_label_and_info_literal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @col_append_str(ptr noundef %i.i, i32 noundef 25, ptr noundef nonnull @.str.1607)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %i.f, label %write_pdu_label_and_info_literal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %3, ptr noundef nonnull @.str.1507, ptr noundef nonnull @.str.1607)
  br label %write_pdu_label_and_info_literal.exit

write_pdu_label_and_info_literal.exit:            ; preds = %bb.a, %bb.d, %bb.e
  %i.j = load i32, ptr @hf_mac_lte_mch, align 4
  %i.k = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.840, ptr noundef nonnull @.str.1500) ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.f

bb.f:                                             ; preds = %write_pdu_label_and_info_literal.exit
  %i.l = getelementptr i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.m, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %i.m, i64 28       ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = or i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %write_pdu_label_and_info_literal.exit, %bb.f, %bb.g
  %i.q = load i32, ptr @hf_mac_lte_mch_header, align 4
  %i.r = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.840, ptr noundef nonnull @.str.1542) ; 6 uses
  %i.s = load i32, ptr @ett_mac_lte_mch_header, align 4
  %i.t = tail call ptr @proto_item_add_subtree(ptr noundef %i.r, i32 noundef %i.s)
  %i.u = getelementptr i8, ptr %1, i64 8          ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.ao, %proto_item_set_hidden.exit
  %indvars.iv347 = phi i16 [ %indvars.iv.next348, %bb.ao ], [ 1, %proto_item_set_hidden.exit ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ao ], [ 0, %proto_item_set_hidden.exit ] ; 12 uses
  %.0268 = phi i32 [ %.3380, %bb.ao ], [ 0, %proto_item_set_hidden.exit ] ; 10 uses
  %.0262 = phi ptr [ %spec.select, %bb.ao ], [ null, %proto_item_set_hidden.exit ]
  %.0260 = phi i1 [ %.1261, %bb.ao ], [ false, %proto_item_set_hidden.exit ] ; 2 uses
  %.0257 = phi i8 [ %.1258, %bb.ao ], [ 0, %proto_item_set_hidden.exit ] ; 2 uses
  %.0255 = phi i1 [ %.1256, %bb.ao ], [ false, %proto_item_set_hidden.exit ] ; 2 uses
  %.0253 = phi i1 [ %.1254, %bb.ao ], [ false, %proto_item_set_hidden.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 0, ptr %i.c, align 8
  %i.v = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0268) ; 5 uses
  %i.w = load i32, ptr @hf_mac_lte_mch_subheader, align 4
  %i.x = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %i.t, i32 noundef %i.w, ptr noundef %0, i32 noundef %.0268, i32 noundef 1, ptr noundef nonnull @.str.840, ptr noundef nonnull @.str.1543) ; 7 uses
  %i.y = load i32, ptr @ett_mac_lte_mch_subheader, align 4
  %i.z = call ptr @proto_item_add_subtree(ptr noundef %i.x, i32 noundef %i.y) ; 7 uses
  %i.aa = load i32, ptr @hf_mac_lte_mch_reserved, align 4
  %i.ab = call ptr @proto_tree_add_item(ptr noundef %i.z, i32 noundef %i.aa, ptr noundef %0, i32 noundef %.0268, i32 noundef 1, i32 noundef 0) ; 2 uses
  %.not = icmp sgt i8 %i.v, -1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ab, ptr noundef nonnull @ei_mac_lte_reserved_not_zero, ptr noundef nonnull @.str.1608) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = load i32, ptr @hf_mac_lte_mch_format2, align 4
  %i.ae = call ptr @proto_tree_add_item(ptr noundef %i.z, i32 noundef %i.ad, ptr noundef %0, i32 noundef %.0268, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.af = load i32, ptr @hf_mac_lte_mch_extended, align 4
  %i.ag = call ptr @proto_tree_add_item(ptr noundef %i.z, i32 noundef %i.af, ptr noundef %0, i32 noundef %.0268, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ah = and i8 %i.v, 31                         ; 3 uses
  %i.ai = getelementptr i8, ptr %i.a, i64 %indvars.iv ; 3 uses
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = load i32, ptr @hf_mac_lte_mch_lcid, align 4
  %i.ak = call ptr @proto_tree_add_item(ptr noundef %i.z, i32 noundef %i.aj, ptr noundef %0, i32 noundef %.0268, i32 noundef 1, i32 noundef 0) ; 4 uses
  %i.al = icmp eq i8 %i.ah, 30
  %spec.select = select i1 %i.al, ptr %i.ak, ptr %.0262 ; 2 uses
  %i.am = zext nneg i8 %i.ah to i32
  %i.an = call ptr @val_to_str_const(i32 noundef %i.am, ptr noundef nonnull @mch_lcid_vals, ptr noundef nonnull @.str.1546)
  call void (ptr, ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %3, ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.1545, ptr noundef %i.an)
  %i.ao = add i32 %.0268, 1                       ; 5 uses
  %i.ap = load i8, ptr %i.ai, align 1             ; 9 uses
  %i.aq = icmp ult i8 %i.ap, 29                   ; 4 uses
  %.1261 = or i1 %i.aq, %.0260
  %.1254 = select i1 %i.aq, i1 true, i1 %.0253    ; 2 uses
  %.not280 = icmp eq i8 %i.ap, 31
  %i.ar = xor i1 %.0260, true
  %i.as = or i1 %.not280, %i.ar
  %or.cond = or i1 %i.as, %i.aq
  br i1 %or.cond, label %bb.k, label %bb.an

bb.k:                                             ; preds = %bb.j
  %i.at = icmp eq i8 %i.ap, 31                    ; 3 uses
  %i.au = and i8 %i.v, 32
  %i.av = icmp ne i8 %i.au, 0                     ; 2 uses
  %or.cond289 = select i1 %i.at, i1 %i.av, i1 false
  br i1 %or.cond289, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.aw = add i8 %.0257, 1                        ; 3 uses
  %i.ax = icmp ugt i8 %i.aw, 2
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ak, ptr noundef nonnull @ei_mac_lte_padding_data_multiple) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %.0255, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ak, ptr noundef nonnull @ei_mac_lte_padding_data_before_control_subheader) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.k
  %.1258 = phi i8 [ %i.aw, %bb.o ], [ %i.aw, %bb.n ], [ %.0257, %bb.k ]
  %or.cond290 = or i1 %i.aq, %i.at
  %not.or.cond290 = xor i1 %or.cond290, true
  %.1256 = select i1 %not.or.cond290, i1 true, i1 %.0255
  %i.ba = and i8 %i.v, 32
  %.not282 = icmp eq i8 %i.ba, 0
  br i1 %.not282, label %.thread382, label %bb.q

.thread382:                                       ; preds = %bb.p
  %i.bb = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 -1, ptr %i.bb, align 4
  %i.bc = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv
  br label %bb.ac

bb.q:                                             ; preds = %bb.p
  br i1 %i.at, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = and i8 %i.v, 64
  %.not284 = icmp eq i8 %i.bd, 0
  br i1 %.not284, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = load i32, ptr @hf_mac_lte_mch_length, align 4
  %i.bf = shl i32 %i.ao, 3
  %i.bg = call ptr @proto_tree_add_bits_ret_val(ptr noundef %i.z, i32 noundef %i.be, ptr noundef %0, i32 noundef %i.bf, i32 noundef 16, ptr noundef nonnull %i.c, i32 noundef 0) ; 0 uses
  %i.bh = load i64, ptr %i.c, align 8
  %i.bi = icmp ult i64 %i.bh, 32768
  br i1 %i.bi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bj = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ab, ptr noundef nonnull @ei_mac_lte_mch_invalid_length) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bk = add i32 %.0268, 3
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.bl = load i32, ptr @hf_mac_lte_mch_format, align 4
  %i.bm = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.z, i32 noundef %i.bl, ptr noundef %0, i32 noundef %i.ao, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.d) ; 0 uses
  %i.bn = load i8, ptr %i.d, align 1, !range !7, !noundef !8
  %i.bo = trunc nuw i8 %i.bn to i1                ; 2 uses
  %i.bp = load i32, ptr @hf_mac_lte_mch_length, align 4
  %i.bq = shl i32 %i.ao, 3
  %i.br = or disjoint i32 %i.bq, 1
  %. = select i1 %i.bo, i32 15, i32 7
  %.394 = select i1 %i.bo, i32 3, i32 2
  %i.bs = call ptr @proto_tree_add_bits_ret_val(ptr noundef %i.z, i32 noundef %i.bp, ptr noundef %0, i32 noundef %i.br, i32 noundef %., ptr noundef nonnull %i.c, i32 noundef 0) ; 0 uses
  %i.bt = add i32 %.0268, %.394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.w

.thread:                                          ; preds = %bb.q
  %i.bu = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 0, ptr %i.bu, align 4
  %i.bv = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv
  br label %bb.x

bb.w:                                             ; preds = %bb.u, %bb.v
  %.2270 = phi i32 [ %i.bk, %bb.u ], [ %i.bt, %bb.v ] ; 3 uses
  %i.bw = load i64, ptr %i.c, align 8
  %i.bx = trunc i64 %i.bw to i32                  ; 3 uses
  %i.by = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.bx, ptr %i.by, align 4
  %i.bz = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv ; 3 uses
  switch i32 %i.bx, label %bb.ah [
    i32 0, label %bb.x
    i32 -1, label %bb.ac
  ]

bb.x:                                             ; preds = %.thread, %bb.w
  %i.ca = phi ptr [ %i.bv, %.thread ], [ %i.bz, %bb.w ] ; 3 uses
  %.3381 = phi i32 [ %i.ao, %.thread ], [ %.2270, %bb.w ] ; 3 uses
  br i1 %or.cond3.i, label %write_pdu_label_and_info_literal.exit292, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %i.g, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = load ptr, ptr %i.u, align 8
  call void @col_append_str(ptr noundef %i.cb, i32 noundef 25, ptr noundef nonnull @.str.1553)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %i.f, label %write_pdu_label_and_info_literal.exit292, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %3, ptr noundef nonnull @.str.1507, ptr noundef nonnull @.str.1553)
  br label %write_pdu_label_and_info_literal.exit292

bb.ac:                                            ; preds = %.thread382, %bb.w
  %i.cc = phi ptr [ %i.bc, %.thread382 ], [ %i.bz, %bb.w ] ; 3 uses
  %.3384 = phi i32 [ %i.ao, %.thread382 ], [ %.2270, %bb.w ] ; 3 uses
  br i1 %or.cond3.i, label %write_pdu_label_and_info_literal.exit292, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.g, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = load ptr, ptr %i.u, align 8
  call void @col_append_str(ptr noundef %i.cd, i32 noundef 25, ptr noundef nonnull @.str.1554)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %i.f, label %write_pdu_label_and_info_literal.exit292, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %3, ptr noundef nonnull @.str.1507, ptr noundef nonnull @.str.1554)
  br label %write_pdu_label_and_info_literal.exit292

bb.ah:                                            ; preds = %bb.w
  call void (ptr, ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %3, ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.1555, i32 noundef %i.bx)
  %.pre = load i8, ptr %i.ai, align 1
  br label %write_pdu_label_and_info_literal.exit292

write_pdu_label_and_info_literal.exit292:         ; preds = %bb.ag, %bb.af, %bb.ac, %bb.ab, %bb.aa, %bb.x, %bb.ah
  %i.ce = phi ptr [ %i.cc, %bb.ag ], [ %i.cc, %bb.af ], [ %i.cc, %bb.ac ], [ %i.ca, %bb.ab ], [ %i.ca, %bb.aa ], [ %i.ca, %bb.x ], [ %i.bz, %bb.ah ]
  %.3380 = phi i32 [ %.3384, %bb.ag ], [ %.3384, %bb.af ], [ %.3384, %bb.ac ], [ %.3381, %bb.ab ], [ %.3381, %bb.aa ], [ %.3381, %bb.x ], [ %.2270, %bb.ah ] ; 5 uses
  %i.cf = phi i8 [ %i.ap, %bb.ag ], [ %i.ap, %bb.af ], [ %i.ap, %bb.ac ], [ %i.ap, %bb.ab ], [ %i.ap, %bb.aa ], [ %i.ap, %bb.x ], [ %.pre, %bb.ah ]
  %i.cg = zext i8 %i.cf to i32                    ; 6 uses
  %i.ch = call ptr @val_to_str_const(i32 noundef %i.cg, ptr noundef nonnull @mch_lcid_vals, ptr noundef nonnull @.str.1492)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.x, ptr noundef nonnull @.str.1557, ptr noundef %i.ch)
  %i.ci = load i32, ptr %i.ce, align 4            ; 3 uses
  switch i32 %i.ci, label %bb.ak [
    i32 -1, label %bb.ai
    i32 0, label %bb.aj
  ]

bb.ai:                                            ; preds = %write_pdu_label_and_info_literal.exit292
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.x, ptr noundef nonnull @.str.1558)
  %i.cj = call ptr @val_to_str_const(i32 noundef %i.cg, ptr noundef nonnull @mch_lcid_vals, ptr noundef nonnull @.str.1492)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.r, ptr noundef nonnull @.str.1559, ptr noundef %i.cj)
  br label %bb.al

bb.aj:                                            ; preds = %write_pdu_label_and_info_literal.exit292
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.x, ptr noundef nonnull @.str.1521)
  %i.ck = call ptr @val_to_str_const(i32 noundef %i.cg, ptr noundef nonnull @mch_lcid_vals, ptr noundef nonnull @.str.1492)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.r, ptr noundef nonnull @.str.1560, ptr noundef %i.ck)
  br label %bb.al

bb.ak:                                            ; preds = %write_pdu_label_and_info_literal.exit292
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.x, ptr noundef nonnull @.str.1561, i32 noundef %i.ci)
  %i.cl = call ptr @val_to_str_const(i32 noundef %i.cg, ptr noundef nonnull @mch_lcid_vals, ptr noundef nonnull @.str.1492)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.r, ptr noundef nonnull @.str.1610, ptr noundef %i.cl, i32 noundef %i.ci)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.cm = call ptr @try_val_to_str(i32 noundef %i.cg, ptr noundef nonnull @mch_lcid_vals)
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.co = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.x, ptr noundef nonnull @ei_mac_lte_lcid_unexpected, ptr noundef nonnull @.str.1611, i32 noundef %i.cg) ; 0 uses
  br label %bb.ao

bb.an:                                            ; preds = %bb.j
  %i.cp = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ak, ptr noundef nonnull @ei_mac_lte_control_subheader_after_data_subheader, ptr noundef nonnull @.str.1609) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.cb

bb.ao:                                            ; preds = %bb.al, %bb.am
  %i.cq = sub i32 %.3380, %.0268
  call void @proto_item_set_len(ptr noundef %i.x, i32 noundef %i.cq)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.cr = icmp samesign ult i64 %indvars.iv, 1023
  %i.cs = select i1 %i.cr, i1 %i.av, i1 false
  %indvars.iv.next348 = add nuw nsw i16 %indvars.iv347, 1
  br i1 %i.cs, label %bb.h, label %bb.ap, !llvm.loop !31

bb.ap:                                            ; preds = %bb.ao
  %i.ct = trunc nuw nsw i64 %indvars.iv to i16
  %i.cu = icmp samesign ugt i64 %indvars.iv, 1022
  br i1 %i.cu, label %bb.aq, label %.lr.ph327.preheader

bb.aq:                                            ; preds = %bb.ap
  %i.cv = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_mac_lte_too_many_subheaders, ptr noundef %0, i32 noundef %.3380, i32 noundef 1, ptr noundef nonnull @.str.1564, i32 noundef 1024) ; 0 uses
  br label %bb.cb

.lr.ph327.preheader:                              ; preds = %bb.ap
  %i.cw = trunc nuw nsw i64 %indvars.iv.next to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.r, ptr noundef nonnull @.str.1612, i32 noundef %i.cw)
  call void @proto_item_set_len(ptr noundef %i.r, i32 noundef %.3380)
  %wide.trip.count = zext nneg i16 %indvars.iv347 to i64 ; 2 uses
  br label %.lr.ph327

.lr.ph327:                                        ; preds = %.lr.ph327.preheader, %bb.az
  %indvars.iv345.a = phi i64 [ 0, %.lr.ph327.preheader ], [ %indvars.iv.next346.a, %bb.az ] ; 4 uses
  %.5324 = phi i32 [ %.3380, %.lr.ph327.preheader ], [ %.6, %bb.az ] ; 6 uses
  %i.cx = getelementptr i8, ptr %i.a, i64 %indvars.iv345.a
  %i.cy = load i8, ptr %i.cx, align 1             ; 2 uses
  %i.cz = icmp ult i8 %i.cy, 29
  br i1 %i.cz, label %._crit_edge328.split.loop.exit390, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph327
  %cond9 = icmp eq i8 %i.cy, 30
  br i1 %cond9, label %bb.as, label %bb.az

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.da = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv345.a ; 3 uses
  %i.db = load i32, ptr %i.da, align 4            ; 2 uses
  %i.dc = icmp eq i32 %i.db, -1
  br i1 %i.dc, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dd = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.5324)
  %sext = shl i32 %i.dd, 16
  %i.de = ashr exact i32 %sext, 16                ; 2 uses
  store i32 %i.de, ptr %i.da, align 4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.df = phi i32 [ %i.de, %bb.at ], [ %i.db, %bb.as ] ; 2 uses
  %i.dg = and i32 %i.df, 1
  %.not285 = icmp eq i32 %i.dg, 0
  br i1 %.not285, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dh = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %spec.select, ptr noundef nonnull @ei_mac_lte_context_length, ptr noundef nonnull @.str.1613) ; 0 uses
  %.pre358 = load i32, ptr %i.da, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.di = phi i32 [ %.pre358, %bb.av ], [ %i.df, %bb.au ] ; 4 uses
  %i.dj = load i32, ptr @hf_mac_lte_control_mch_scheduling_info, align 4
  %i.dk = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %2, i32 noundef %i.dj, ptr noundef %0, i32 noundef %.5324, i32 noundef %i.di, ptr noundef nonnull @.str.840, ptr noundef nonnull @.str.486)
  %i.dl = load i32, ptr @ett_mac_lte_mch_scheduling_info, align 4
  %i.dm = call ptr @proto_item_add_subtree(ptr noundef %i.dk, i32 noundef %i.dl) ; 2 uses
  %i.dn = sdiv i32 %i.di, 2
  %i.do = icmp sgt i32 %i.di, 1
  br i1 %i.do, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ay, %bb.aw
  %i.dp = add i32 %i.di, %.5324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.az

.lr.ph:                                           ; preds = %bb.aw, %bb.ay
  %.0323 = phi i32 [ %i.dy, %bb.ay ], [ 0, %bb.aw ]
  %.0251322 = phi i32 [ %i.dx, %bb.ay ], [ %.5324, %bb.aw ] ; 3 uses
  %i.dq = load i32, ptr @hf_mac_lte_control_mch_scheduling_info_lcid, align 4
  %i.dr = call ptr @proto_tree_add_item(ptr noundef %i.dm, i32 noundef %i.dq, ptr noundef %0, i32 noundef %.0251322, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ds = load i32, ptr @hf_mac_lte_control_mch_scheduling_info_stop_mtch, align 4
  %i.dt = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.dm, i32 noundef %i.ds, ptr noundef %0, i32 noundef %.0251322, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.e)
  %i.du = load i32, ptr %i.e, align 4             ; 2 uses
  %i.dv = add i32 %i.du, -2043
  %or.cond4 = icmp ult i32 %i.dv, 4
  br i1 %or.cond4, label %.sink.split, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph
  %i.dw = icmp eq i32 %i.du, 2047
  br i1 %i.dw, label %.sink.split, label %bb.ay

.sink.split:                                      ; preds = %bb.ax, %.lr.ph
  %.str.1615.sink = phi ptr [ @.str.1614, %.lr.ph ], [ @.str.1615, %bb.ax ]
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.dt, ptr noundef nonnull %.str.1615.sink)
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split, %bb.ax
  %i.dx = add i32 %.0251322, 2
  %i.dy = add nuw nsw i32 %.0323, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.dy, %i.dn
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

bb.az:                                            ; preds = %bb.ar, %._crit_edge
  %.6 = phi i32 [ %i.dp, %._crit_edge ], [ %.5324, %bb.ar ] ; 2 uses
  %indvars.iv.next346.a = add nuw nsw i64 %indvars.iv345.a, 1 ; 2 uses
  %exitcond351.not = icmp eq i64 %indvars.iv.next346.a, %wide.trip.count
  br i1 %exitcond351.not, label %._crit_edge328, label %.lr.ph327, !llvm.loop !33

._crit_edge328.split.loop.exit390:                ; preds = %.lr.ph327
  %i.dz = trunc nuw nsw i64 %indvars.iv345.a to i16
  br label %._crit_edge328

._crit_edge328:                                   ; preds = %bb.az, %._crit_edge328.split.loop.exit390
  %.5.lcssa.ph = phi i32 [ %.5324, %._crit_edge328.split.loop.exit390 ], [ %.6, %bb.az ] ; 3 uses
  %.0266.lcssa.ph = phi i16 [ %i.dz, %._crit_edge328.split.loop.exit390 ], [ %indvars.iv347, %bb.az ] ; 2 uses
  %i.ea = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.5.lcssa.ph)
  %i.eb = icmp eq i32 %i.ea, 0
  %i.ec = select i1 %i.eb, i1 %.1254, i1 false    ; 2 uses
  %i.ed = zext i1 %i.ec to i32
  %i.ee = load i32, ptr @hf_mac_lte_mch_header_only, align 4
  %i.ef = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ee, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ed) ; 4 uses
  %.not.i295 = icmp eq ptr %i.ef, null            ; 2 uses
  br i1 %i.ec, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %._crit_edge328
  br i1 %.not.i295, label %proto_item_set_generated.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.eg = getelementptr i8, ptr %i.ef, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8            ; 2 uses
  %.not5.i296 = icmp eq ptr %i.eh, null
  br i1 %.not5.i296, label %proto_item_set_generated.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ei = getelementptr i8, ptr %i.eh, i64 28     ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = or i32 %i.ej, 2
  store i32 %i.ek, ptr %i.ei, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.ba, %bb.bb, %bb.bc
  %i.el = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ef, ptr noundef nonnull @ei_mac_lte_mch_header_only_truncated) ; 0 uses
  br label %bb.cb

bb.bd:                                            ; preds = %._crit_edge328
  br i1 %.not.i295, label %proto_item_set_hidden.exit299, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.em = getelementptr i8, ptr %i.ef, i64 40
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %.not5.i298 = icmp eq ptr %i.en, null
  br i1 %.not5.i298, label %proto_item_set_hidden.exit299, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.eo = getelementptr i8, ptr %i.en, i64 28     ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = or i32 %i.ep, 1
  store i32 %i.eq, ptr %i.eo, align 4
  br label %proto_item_set_hidden.exit299

proto_item_set_hidden.exit299:                    ; preds = %bb.bd, %bb.be, %bb.bf
  %.not332 = icmp ugt i16 %.0266.lcssa.ph, %i.ct
  br i1 %.not332, label %._crit_edge336, label %.lr.ph335

.lr.ph335:                                        ; preds = %proto_item_set_hidden.exit299
  %i.er = getelementptr i8, ptr %1, i64 416
  %i.es = getelementptr i8, ptr %4, i64 44        ; 2 uses
  %i.et = zext nneg i16 %.0266.lcssa.ph to i64
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph335, %bb.bq
  %indvars.iv352 = phi i64 [ %i.et, %.lr.ph335 ], [ %indvars.iv.next353, %bb.bq ] ; 3 uses
  %.7333 = phi i32 [ %.5.lcssa.ph, %.lr.ph335 ], [ %i.fw, %bb.bq ] ; 8 uses
  %i.eu = getelementptr i8, ptr %i.a, i64 %indvars.iv352
  %i.ev = load i8, ptr %i.eu, align 1             ; 4 uses
  %i.ew = icmp eq i8 %i.ev, 31
  br i1 %i.ew, label %._crit_edge336, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ex = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv352 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4            ; 3 uses
  %i.ez = icmp eq i32 %i.ey, -1
  br i1 %i.ez, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.fa = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.7333)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.fb = phi i32 [ %i.fa, %bb.bi ], [ %i.ey, %bb.bh ] ; 3 uses
  %i.fc = trunc i32 %i.fb to i16                  ; 2 uses
  %i.fd = zext i8 %i.ev to i32
  %i.fe = icmp eq i8 %i.ev, 0
  %i.ff = load i8, ptr @global_mac_lte_attempt_mcch_decode, align 1, !range !7
  %i.fg = trunc nuw i8 %i.ff to i1
  %or.cond6 = select i1 %i.fe, i1 %i.fg, i1 false
  br i1 %or.cond6, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.fh = load i32, ptr %i.es, align 4
  call fastcc void @call_rlc_dissector(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %.7333, i16 noundef zeroext %i.fc, i8 noundef zeroext 2, i8 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 7, i16 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 0, i1 noundef zeroext false, i32 noundef %i.fh)
  br label %bb.bq

bb.bl:                                            ; preds = %bb.bj
  %i.fi = icmp ult i8 %i.ev, 29
  %i.fj = load i8, ptr @global_mac_lte_call_rlc_for_mtch, align 1, !range !7
  %i.fk = trunc nuw i8 %i.fj to i1
  %or.cond8 = select i1 %i.fi, i1 %i.fk, i1 false
  br i1 %or.cond8, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.fl = load i32, ptr %i.es, align 4
  call fastcc void @call_rlc_dissector(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %.7333, i16 noundef zeroext %i.fc, i8 noundef zeroext 2, i8 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 8, i16 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 0, i1 noundef zeroext false, i32 noundef %i.fl)
  br label %bb.bq

bb.bn:                                            ; preds = %bb.bl
  %i.fm = load i32, ptr @hf_mac_lte_mch_sdu, align 4
  %i.fn = call ptr @val_to_str_const(i32 noundef %i.fd, ptr noundef nonnull @mch_lcid_vals, ptr noundef nonnull @.str.1492)
  %i.fo = and i32 %i.fb, 65535                    ; 2 uses
  %i.fp = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %2, i32 noundef %i.fm, ptr noundef %0, i32 noundef %.7333, i32 noundef %i.ey, ptr noundef null, ptr noundef nonnull @.str.1598, ptr noundef %i.fn, i32 noundef %i.fo) ; 3 uses
  %i.fq = load i32, ptr %i.ex, align 4
  %i.fr = icmp sgt i32 %i.fq, 29
  %i.fs = load ptr, ptr %i.er, align 8            ; 2 uses
  br i1 %i.fr, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ft = call ptr @tvb_bytes_to_str(ptr noundef %i.fs, ptr noundef %0, i32 noundef %.7333, i32 noundef 30)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.fp, ptr noundef nonnull @.str.1507, ptr noundef %i.ft)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.fp, ptr noundef nonnull @.str.1599)
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.fu = call ptr @tvb_bytes_to_str(ptr noundef %i.fs, ptr noundef %0, i32 noundef %.7333, i32 noundef %i.fo)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.fp, ptr noundef nonnull @.str.1507, ptr noundef %i.fu)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bk, %bb.bo, %bb.bp, %bb.bm
  %i.fv = and i32 %i.fb, 65535
  %i.fw = add i32 %i.fv, %.7333                   ; 2 uses
  %indvars.iv.next353 = add nuw nsw i64 %indvars.iv352, 1 ; 2 uses
  %exitcond357.not = icmp eq i64 %indvars.iv.next353, %wide.trip.count
  br i1 %exitcond357.not, label %._crit_edge336, label %bb.bg, !llvm.loop !34

._crit_edge336:                                   ; preds = %bb.bq, %bb.bg, %proto_item_set_hidden.exit299
  %.7.lcssa = phi i32 [ %.5.lcssa.ph, %proto_item_set_hidden.exit299 ], [ %.7333, %bb.bg ], [ %i.fw, %bb.bq ] ; 10 uses
  %i.fx = getelementptr i8, ptr %i.a, i64 %indvars.iv
  %i.fy = load i8, ptr %i.fx, align 1
  %i.fz = icmp eq i8 %i.fy, 31
  br i1 %i.fz, label %bb.br, label %bb.bx

bb.br:                                            ; preds = %._crit_edge336
  %i.ga = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.7.lcssa)
  %.not286 = icmp eq i32 %i.ga, 0
  br i1 %.not286, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gb = load i32, ptr @hf_mac_lte_padding_data, align 4
  %i.gc = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.gb, ptr noundef %0, i32 noundef %.7.lcssa, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.gd = load i32, ptr @hf_mac_lte_padding_length, align 4
  %i.ge = getelementptr i8, ptr %4, i64 18        ; 2 uses
  %i.gf = load i16, ptr %i.ge, align 2
  %i.gg = zext i16 %i.gf to i32
  %i.gh = sub i32 %i.gg, %.7.lcssa
  %i.gi = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.gd, ptr noundef %0, i32 noundef %.7.lcssa, i32 noundef 0, i32 noundef %i.gh) ; 3 uses
  %.not.i300 = icmp eq ptr %i.gi, null
  br i1 %.not.i300, label %proto_item_set_generated.exit302, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gj = getelementptr i8, ptr %i.gi, i64 40
  %i.gk = load ptr, ptr %i.gj, align 8            ; 2 uses
  %.not5.i301 = icmp eq ptr %i.gk, null
  br i1 %.not5.i301, label %proto_item_set_generated.exit302, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gl = getelementptr i8, ptr %i.gk, i64 28     ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4
  %i.gn = or i32 %i.gm, 2
  store i32 %i.gn, ptr %i.gl, align 4
  br label %proto_item_set_generated.exit302

proto_item_set_generated.exit302:                 ; preds = %bb.bt, %bb.bu, %bb.bv
  %i.go = load i16, ptr %i.ge, align 2
  %i.gp = zext i16 %i.go to i32                   ; 2 uses
  %i.gq = icmp ugt i32 %.7.lcssa, %i.gp
  br i1 %i.gq, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %proto_item_set_generated.exit302
  %i.gr = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.gi, ptr noundef nonnull @ei_mac_lte_context_length, ptr noundef nonnull @.str.1616, i32 noundef %i.gp, i32 noundef %.7.lcssa) ; 0 uses
  br label %bb.cb

bb.bx:                                            ; preds = %._crit_edge336
  %i.gs = getelementptr i8, ptr %4, i64 18        ; 2 uses
  %i.gt = load i16, ptr %i.gs, align 2
  %i.gu = zext i16 %i.gt to i32                   ; 3 uses
  %i.gv = icmp ult i32 %.7.lcssa, %i.gu
  br i1 %i.gv, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.gw = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %3, ptr noundef nonnull @ei_mac_lte_context_length, ptr noundef nonnull @.str.1617, i32 noundef %i.gu, i32 noundef %.7.lcssa) ; 0 uses
  %.pre359 = load i16, ptr %i.gs, align 2
  %.pre360 = zext i16 %.pre359 to i32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.pre-phi = phi i32 [ %.pre360, %bb.by ], [ %i.gu, %bb.bx ] ; 2 uses
  %i.gx = icmp ugt i32 %.7.lcssa, %.pre-phi
  br i1 %i.gx, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.gy = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %3, ptr noundef nonnull @ei_mac_lte_context_length, ptr noundef nonnull @.str.1618, i32 noundef %.pre-phi, i32 noundef %.7.lcssa) ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.an, %bb.bw, %proto_item_set_generated.exit302, %bb.ca, %bb.bz, %proto_item_set_generated.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_sl_bch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  tail call void (ptr, ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %3, ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.1619, i32 noundef %i.a)
  %i.b = load i32, ptr @hf_mac_lte_slbch_pdu, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.d = load i8, ptr @global_mac_lte_attempt_rrc_decode, align 1, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 0)
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.c, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.h, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.h, i64 28       ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = or i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  %i.l = load ptr, ptr @lte_rrc_sbcch_sl_bch_handle, align 8
  tail call fastcc void @call_with_catch_all(ptr noundef %i.l, ptr noundef %i.f, ptr noundef %1, ptr noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %proto_item_set_hidden.exit, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_slsch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 6 uses
  %i.b = alloca [1024 x i16], align 16            ; 9 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.g = getelementptr i8, ptr %4, i64 8
  %i.h = load i16, ptr %i.g, align 4
  %i.i = zext i16 %i.h to i32
  %i.j = getelementptr i8, ptr %4, i64 10
  %i.k = load i16, ptr %i.j, align 2
  %i.l = zext i16 %i.k to i32
  %i.m = getelementptr i8, ptr %4, i64 6          ; 3 uses
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %3, ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.1541, ptr noundef nonnull @.str.118, i32 noundef %i.i, i32 noundef %i.l, i32 noundef %i.o)
  %i.p = load i32, ptr @hf_mac_lte_slsch_header, align 4
  %i.q = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %2, i32 noundef %i.p, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.840, ptr noundef nonnull @.str.1542) ; 7 uses
  %i.r = load i32, ptr @ett_mac_lte_slsch_header, align 4
  %i.s = tail call ptr @proto_item_add_subtree(ptr noundef %i.q, i32 noundef %i.r) ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.q, ptr noundef nonnull @.str.1620)
  %i.t = load i32, ptr @hf_mac_lte_slsch_subheader, align 4
  %i.u = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %i.s, i32 noundef %i.t, ptr noundef %0, i32 noundef 0, i32 noundef 6, ptr noundef nonnull @.str.840, ptr noundef nonnull @.str.1621)
  %i.v = load i32, ptr @ett_mac_lte_slsch_subheader, align 4
  %i.w = tail call ptr @proto_item_add_subtree(ptr noundef %i.u, i32 noundef %i.v) ; 4 uses
  %i.x = load i32, ptr @hf_mac_lte_slsch_version, align 4
  %i.y = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.w, i32 noundef %i.x, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.d) ; 0 uses
  %i.z = load i32, ptr @hf_mac_lte_slsch_reserved, align 4
  %i.aa = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.w, i32 noundef %i.z, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.c)
  %i.ab = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.aa, ptr noundef nonnull @ei_mac_lte_reserved_not_zero, ptr noundef nonnull @.str.1622) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ad = load i32, ptr @hf_mac_lte_slsch_src_l2_id, align 4
  %i.ae = call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.ad, ptr noundef %0, i32 noundef 1, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.af = load i32, ptr %i.d, align 4
  %i.ag = icmp eq i32 %i.af, 3                    ; 3 uses
  %. = select i1 %i.ag, i32 3, i32 2
  %.314 = select i1 %i.ag, i32 7, i32 6
  %hf_mac_lte_slsch_dst_l2_id2.val = load i32, ptr @hf_mac_lte_slsch_dst_l2_id2, align 4
  %hf_mac_lte_slsch_dst_l2_id.val = load i32, ptr @hf_mac_lte_slsch_dst_l2_id, align 4
  %i.ah = select i1 %i.ag, i32 %hf_mac_lte_slsch_dst_l2_id2.val, i32 %hf_mac_lte_slsch_dst_l2_id.val
  %i.ai = call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.ah, ptr noundef %0, i32 noundef 4, i32 noundef %., i32 noundef 0) ; 0 uses
  %i.aj = getelementptr i8, ptr %4, i64 1         ; 2 uses
  %i.ak = icmp eq ptr %3, null                    ; 3 uses
  %i.al = icmp eq ptr %1, null                    ; 3 uses
  %or.cond3.i229 = and i1 %i.al, %i.ak            ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 8         ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.ad, %bb.c
  %indvars.iv266 = phi i16 [ %indvars.iv.next267, %bb.ad ], [ 1, %bb.c ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ad ], [ 0, %bb.c ] ; 12 uses
  %.1219 = phi i32 [ %.3299, %bb.ad ], [ %.314, %bb.c ] ; 8 uses
  %.0213 = phi i8 [ %.1214240297, %bb.ad ], [ 0, %bb.c ] ; 8 uses
  %.0212 = phi i1 [ %i.bk, %bb.ad ], [ false, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i64 0, ptr %i.e, align 8
  %i.an = load i32, ptr @hf_mac_lte_slsch_subheader, align 4
  %i.ao = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %i.s, i32 noundef %i.an, ptr noundef %0, i32 noundef %.1219, i32 noundef 1, ptr noundef nonnull @.str.840, ptr noundef nonnull @.str.1543) ; 7 uses
  %i.ap = load i32, ptr @ett_mac_lte_slsch_subheader, align 4
  %i.aq = call ptr @proto_item_add_subtree(ptr noundef %i.ao, i32 noundef %i.ap) ; 5 uses
  %i.ar = load i32, ptr @hf_mac_lte_slsch_reserved2, align 4
  %i.as = call ptr @proto_tree_add_item(ptr noundef %i.aq, i32 noundef %i.ar, ptr noundef %0, i32 noundef %.1219, i32 noundef 1, i32 noundef 0)
  %i.at = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1219) ; 3 uses
  %.not225 = icmp ult i8 %i.at, 64
  br i1 %.not225, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.as, ptr noundef nonnull @ei_mac_lte_reserved_not_zero, ptr noundef nonnull @.str.1622) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.av = load i32, ptr @hf_mac_lte_slsch_extended, align 4
  %i.aw = call ptr @proto_tree_add_item(ptr noundef %i.aq, i32 noundef %i.av, ptr noundef %0, i32 noundef %.1219, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ax = and i8 %i.at, 31                        ; 2 uses
  %i.ay = getelementptr i8, ptr %i.a, i64 %indvars.iv ; 3 uses
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = load i32, ptr @hf_mac_lte_slsch_lcid, align 4
  %i.ba = call ptr @proto_tree_add_item(ptr noundef %i.aq, i32 noundef %i.az, ptr noundef %0, i32 noundef %.1219, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.bb = zext nneg i8 %i.ax to i32
  %i.bc = call ptr @val_to_str_const(i32 noundef %i.bb, ptr noundef nonnull @slsch_lcid_vals, ptr noundef nonnull @.str.1546)
  call void (ptr, ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %3, ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.1545, ptr noundef %i.bc)
  %i.bd = add i32 %.1219, 1                       ; 4 uses
  %i.be = load i8, ptr %i.ay, align 1             ; 9 uses
  %i.bf = icmp ult i8 %i.be, 11
  br i1 %i.bf, label %is_data_lcid.exit.thread, label %is_data_lcid.exit

is_data_lcid.exit:                                ; preds = %bb.f
  %i.bg = load i8, ptr %i.aj, align 1
  %i.bh = icmp eq i8 %i.bg, 0
  %i.bi = icmp ult i8 %i.be, 14
  %i.bj = and i1 %i.bi, %i.bh
  %cond.fr = freeze i1 %i.bj
  br i1 %cond.fr, label %is_data_lcid.exit.thread, label %bb.g

is_data_lcid.exit.thread:                         ; preds = %bb.f, %is_data_lcid.exit
  br label %bb.g

bb.g:                                             ; preds = %is_data_lcid.exit, %is_data_lcid.exit.thread
  %i.bk = phi i1 [ true, %is_data_lcid.exit.thread ], [ %.0212, %is_data_lcid.exit ] ; 2 uses
  %i.bl = icmp eq i8 %i.be, 31                    ; 3 uses
  %i.bm = and i8 %i.at, 32                        ; 2 uses
  %i.bn = icmp ne i8 %i.bm, 0                     ; 2 uses
  %or.cond = and i1 %i.bn, %i.bl
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bo = add i8 %.0213, 1                        ; 3 uses
  %i.bp = icmp ugt i8 %i.bo, 2
  br i1 %i.bp, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.bq = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ba, ptr noundef nonnull @ei_mac_lte_padding_data_multiple) ; 0 uses
  br label %.thread

bb.j:                                             ; preds = %bb.g
  %.not226 = icmp eq i8 %i.bm, 0
  br i1 %.not226, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.br = icmp ne i8 %.0213, 0
  %or.cond5 = select i1 %i.bl, i1 %i.br, i1 false
  br i1 %or.cond5, label %bb.l, label %.thread301

bb.l:                                             ; preds = %bb.k
  %i.bs = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ba, ptr noundef nonnull @ei_mac_lte_padding_data_start_and_end) ; 0 uses
  br label %.thread301

.thread301:                                       ; preds = %bb.l, %bb.k
  %i.bt = getelementptr [2 x i8], ptr %i.b, i64 %indvars.iv
  store i16 -1, ptr %i.bt, align 2
  %i.bu = getelementptr [2 x i8], ptr %i.b, i64 %indvars.iv
  br label %bb.s

.critedge:                                        ; preds = %bb.j
  br i1 %i.bl, label %.thread, label %bb.m

bb.m:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.bv = load i32, ptr @hf_mac_lte_slsch_format, align 4
  %i.bw = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.aq, i32 noundef %i.bv, ptr noundef %0, i32 noundef %i.bd, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.f) ; 0 uses
  %i.bx = load i8, ptr %i.f, align 1, !range !7, !noundef !8
  %i.by = trunc nuw i8 %i.bx to i1                ; 2 uses
  %i.bz = load i32, ptr @hf_mac_lte_slsch_length, align 4
  %i.ca = shl i32 %i.bd, 3
  %i.cb = or disjoint i32 %i.ca, 1
  %.315 = select i1 %i.by, i32 15, i32 7
  %.316 = select i1 %i.by, i32 3, i32 2
  %i.cc = call ptr @proto_tree_add_bits_ret_val(ptr noundef %i.aq, i32 noundef %i.bz, ptr noundef %0, i32 noundef %i.cb, i32 noundef %.315, ptr noundef nonnull %i.e, i32 noundef 0) ; 0 uses
  %i.cd = add i32 %.1219, %.316                   ; 3 uses
  %i.ce = load i64, ptr %i.e, align 8
  %i.cf = trunc i64 %i.ce to i16                  ; 3 uses
  %i.cg = getelementptr [2 x i8], ptr %i.b, i64 %indvars.iv
  store i16 %i.cf, ptr %i.cg, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %i.ch = getelementptr [2 x i8], ptr %i.b, i64 %indvars.iv ; 3 uses
  switch i16 %i.cf, label %bb.x [
    i16 0, label %bb.n
    i16 -1, label %bb.s
  ]

.thread:                                          ; preds = %.critedge, %bb.i, %bb.h
  %.1214241243 = phi i8 [ %.0213, %.critedge ], [ %i.bo, %bb.i ], [ %i.bo, %bb.h ]
  %i.ci = getelementptr [2 x i8], ptr %i.b, i64 %indvars.iv
  store i16 0, ptr %i.ci, align 2
  %i.cj = getelementptr [2 x i8], ptr %i.b, i64 %indvars.iv
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %i.ck = phi ptr [ %i.cj, %.thread ], [ %i.ch, %bb.m ] ; 3 uses
  %.3300.a = phi i32 [ %i.bd, %.thread ], [ %i.cd, %bb.m ] ; 3 uses
  %.1214240298 = phi i8 [ %.1214241243, %.thread ], [ %.0213, %bb.m ] ; 3 uses
  br i1 %or.cond3.i229, label %write_pdu_label_and_info_literal.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.al, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = load ptr, ptr %i.am, align 8
  call void @col_append_str(ptr noundef %i.cl, i32 noundef 25, ptr noundef nonnull @.str.1553)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.ak, label %write_pdu_label_and_info_literal.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %3, ptr noundef nonnull @.str.1507, ptr noundef nonnull @.str.1553)
  br label %write_pdu_label_and_info_literal.exit

bb.s:                                             ; preds = %.thread301, %bb.m
  %i.cm = phi ptr [ %i.bu, %.thread301 ], [ %i.ch, %bb.m ] ; 3 uses
  %.3305 = phi i32 [ %i.bd, %.thread301 ], [ %i.cd, %bb.m ] ; 3 uses
  br i1 %or.cond3.i229, label %write_pdu_label_and_info_literal.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.al, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = load ptr, ptr %i.am, align 8
  call void @col_append_str(ptr noundef %i.cn, i32 noundef 25, ptr noundef nonnull @.str.1554)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %i.ak, label %write_pdu_label_and_info_literal.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %3, ptr noundef nonnull @.str.1507, ptr noundef nonnull @.str.1554)
  br label %write_pdu_label_and_info_literal.exit

bb.x:                                             ; preds = %bb.m
  %i.co = sext i16 %i.cf to i32
  call void (ptr, ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %3, ptr noundef null, ptr noundef %1, ptr noundef nonnull @.str.1555, i32 noundef %i.co)
  %.pre = load i8, ptr %i.ay, align 1
  br label %write_pdu_label_and_info_literal.exit

write_pdu_label_and_info_literal.exit:            ; preds = %bb.w, %bb.v, %bb.s, %bb.r, %bb.q, %bb.n, %bb.x
  %i.cp = phi ptr [ %i.cm, %bb.w ], [ %i.cm, %bb.v ], [ %i.cm, %bb.s ], [ %i.ck, %bb.r ], [ %i.ck, %bb.q ], [ %i.ck, %bb.n ], [ %i.ch, %bb.x ]
  %.3299 = phi i32 [ %.3305, %bb.w ], [ %.3305, %bb.v ], [ %.3305, %bb.s ], [ %.3300.a, %bb.r ], [ %.3300.a, %bb.q ], [ %.3300.a, %bb.n ], [ %i.cd, %bb.x ] ; 7 uses
  %.1214240297 = phi i8 [ %.0213, %bb.w ], [ %.0213, %bb.v ], [ %.0213, %bb.s ], [ %.1214240298, %bb.r ], [ %.1214240298, %bb.q ], [ %.1214240298, %bb.n ], [ %.0213, %bb.x ]
  %i.cq = phi i8 [ %i.be, %bb.w ], [ %i.be, %bb.v ], [ %i.be, %bb.s ], [ %i.be, %bb.r ], [ %i.be, %bb.q ], [ %i.be, %bb.n ], [ %.pre, %bb.x ] ; 2 uses
  %i.cr = zext i8 %i.cq to i32                    ; 6 uses
  %i.cs = call ptr @val_to_str_const(i32 noundef %i.cr, ptr noundef nonnull @slsch_lcid_vals, ptr noundef nonnull @.str.1492)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef nonnull @.str.1557, ptr noundef %i.cs)
  %i.ct = load i16, ptr %i.cp, align 2            ; 2 uses
  switch i16 %i.ct, label %bb.aa [
    i16 -1, label %bb.y
    i16 0, label %bb.z
  ]

bb.y:                                             ; preds = %write_pdu_label_and_info_literal.exit
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef nonnull @.str.1558)
  %i.cu = call ptr @val_to_str_const(i32 noundef %i.cr, ptr noundef nonnull @slsch_lcid_vals, ptr noundef nonnull @.str.1492)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.q, ptr noundef nonnull @.str.1559, ptr noundef %i.cu)
  br label %bb.ab

bb.z:                                             ; preds = %write_pdu_label_and_info_literal.exit
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef nonnull @.str.1521)
  %i.cv = call ptr @val_to_str_const(i32 noundef %i.cr, ptr noundef nonnull @slsch_lcid_vals, ptr noundef nonnull @.str.1492)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.q, ptr noundef nonnull @.str.1560, ptr noundef %i.cv)
  br label %bb.ab

bb.aa:                                            ; preds = %write_pdu_label_and_info_literal.exit
  %i.cw = sext i16 %i.ct to i32                   ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ao, ptr noundef nonnull @.str.1561, i32 noundef %i.cw)
  %i.cx = call ptr @val_to_str_const(i32 noundef %i.cr, ptr noundef nonnull @slsch_lcid_vals, ptr noundef nonnull @.str.1492)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.q, ptr noundef nonnull @.str.1610, ptr noundef %i.cx, i32 noundef %i.cw)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.cy = call ptr @try_val_to_str(i32 noundef %i.cr, ptr noundef nonnull @slsch_lcid_vals)
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.da = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ao, ptr noundef nonnull @ei_mac_lte_lcid_unexpected, ptr noundef nonnull @.str.1623, i32 noundef %i.cr) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.db = sub i32 %.3299, %.1219
  call void @proto_item_set_len(ptr noundef %i.ao, i32 noundef %i.db)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.dc = icmp samesign ult i64 %indvars.iv, 1023
  %i.dd = and i1 %i.dc, %i.bn
  %indvars.iv.next267 = add nuw nsw i16 %indvars.iv266, 1
  br i1 %i.dd, label %bb.d, label %bb.ae, !llvm.loop !35

bb.ae:                                            ; preds = %bb.ad
  %i.de = trunc nuw nsw i64 %indvars.iv to i16
  %i.df = icmp samesign ugt i64 %indvars.iv, 1022
  br i1 %i.df, label %bb.af, label %.lr.ph.preheader

bb.af:                                            ; preds = %bb.ae
  %i.dg = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_mac_lte_too_many_subheaders, ptr noundef %0, i32 noundef %.3299, i32 noundef 1, ptr noundef nonnull @.str.1564, i32 noundef 1024) ; 0 uses
  br label %bb.be

.lr.ph.preheader:                                 ; preds = %bb.ae
  %i.dh = trunc nuw nsw i64 %indvars.iv.next to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.q, ptr noundef nonnull @.str.1565, i32 noundef %i.dh)
  call void @proto_item_set_len(ptr noundef %i.q, i32 noundef %.3299)
  %wide.trip.count = zext nneg i16 %indvars.iv266 to i64 ; 2 uses
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph.preheader, %bb.ag
  %indvars.iv264.a = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next265.a, %bb.ag ] ; 4 uses
  %i.di = getelementptr i8, ptr %i.a, i64 %indvars.iv264.a
  %i.dj = load i8, ptr %i.di, align 1             ; 2 uses
  %i.dk = icmp ult i8 %i.dj, 11
  br i1 %i.dk, label %is_data_lcid.exit231.thread.split.loop.exit307, label %is_data_lcid.exit231

is_data_lcid.exit231:                             ; preds = %.lr.ph.a
  %i.dl = load i8, ptr %i.aj, align 1
  %i.dm = icmp eq i8 %i.dl, 0
  %i.dn = icmp ult i8 %i.dj, 14
  %i.do = and i1 %i.dn, %i.dm
  br i1 %i.do, label %is_data_lcid.exit231.thread.split.loop.exit309, label %bb.ag

bb.ag:                                            ; preds = %is_data_lcid.exit231
  %indvars.iv.next265.a = add nuw nsw i64 %indvars.iv264.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next265.a, %wide.trip.count
  br i1 %exitcond.not, label %is_data_lcid.exit231.thread, label %.lr.ph.a, !llvm.loop !36

is_data_lcid.exit231.thread.split.loop.exit307:   ; preds = %.lr.ph.a
  %i.dp = trunc nuw nsw i64 %indvars.iv264.a to i16
  br label %is_data_lcid.exit231.thread

is_data_lcid.exit231.thread.split.loop.exit309:   ; preds = %is_data_lcid.exit231
  %i.dq = trunc nuw nsw i64 %indvars.iv264.a to i16
  br label %is_data_lcid.exit231.thread

is_data_lcid.exit231.thread:                      ; preds = %bb.ag, %is_data_lcid.exit231.thread.split.loop.exit309, %is_data_lcid.exit231.thread.split.loop.exit307
  %.0215.lcssa.ph = phi i16 [ %i.dq, %is_data_lcid.exit231.thread.split.loop.exit309 ], [ %i.dp, %is_data_lcid.exit231.thread.split.loop.exit307 ], [ %indvars.iv266, %bb.ag ] ; 2 uses
  %i.dr = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.3299)
  %i.ds = icmp eq i32 %i.dr, 0
  %i.dt = select i1 %i.ds, i1 %i.bk, i1 false     ; 2 uses
  %i.du = load i32, ptr @hf_mac_lte_slsch_header_only, align 4
  %i.dv = zext i1 %i.dt to i32
  %i.dw = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.du, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.dv) ; 4 uses
  %.not.i = icmp eq ptr %i.dw, null               ; 2 uses
  br i1 %i.dt, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %is_data_lcid.exit231.thread
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dx = getelementptr i8, ptr %i.dw, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.dy, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dz = getelementptr i8, ptr %i.dy, i64 28     ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = or i32 %i.ea, 2
  store i32 %i.eb, ptr %i.dz, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.ec = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.dw, ptr noundef nonnull @ei_mac_lte_slsch_header_only_truncated) ; 0 uses
  br label %bb.be

bb.ak:                                            ; preds = %is_data_lcid.exit231.thread
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ed = getelementptr i8, ptr %i.dw, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8            ; 2 uses
  %.not5.i233 = icmp eq ptr %i.ee, null
  br i1 %.not5.i233, label %proto_item_set_hidden.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ef = getelementptr i8, ptr %i.ee, i64 28     ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = or i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ef, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.ak, %bb.al, %bb.am
  %.not257 = icmp ugt i16 %.0215.lcssa.ph, %i.de
  br i1 %.not257, label %._crit_edge, label %.lr.ph258

.lr.ph258:                                        ; preds = %proto_item_set_hidden.exit
  %i.ei = getelementptr i8, ptr %1, i64 416
  %i.ej = zext nneg i16 %.0215.lcssa.ph to i64
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph258, %bb.at
  %indvars.iv269 = phi i64 [ %i.ej, %.lr.ph258 ], [ %indvars.iv.next270, %bb.at ] ; 3 uses
  %.4256 = phi i32 [ %.3299, %.lr.ph258 ], [ %i.fe, %bb.at ] ; 6 uses
  %i.ek = getelementptr i8, ptr %i.a, i64 %indvars.iv269
  %i.el = load i8, ptr %i.ek, align 1             ; 2 uses
  %i.em = icmp eq i8 %i.el, 31
  br i1 %i.em, label %._crit_edge.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.en = getelementptr [2 x i8], ptr %i.b, i64 %indvars.iv269 ; 2 uses
  %i.eo = load i16, ptr %i.en, align 2            ; 3 uses
  %i.ep = icmp eq i16 %i.eo, -1
  br i1 %i.ep, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.eq = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.4256)
  %i.er = trunc i32 %i.eq to i16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.es = phi i16 [ %i.er, %bb.ap ], [ %i.eo, %bb.ao ]
  %i.et = load i32, ptr @hf_mac_lte_slsch_sdu, align 4
  %i.eu = sext i16 %i.eo to i32
  %i.ev = zext i8 %i.el to i32
  %i.ew = call ptr @val_to_str_const(i32 noundef %i.ev, ptr noundef nonnull @slsch_lcid_vals, ptr noundef nonnull @.str.1492)
  %i.ex = zext i16 %i.es to i32                   ; 3 uses
  %i.ey = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %2, i32 noundef %i.et, ptr noundef %0, i32 noundef %.4256, i32 noundef %i.eu, ptr noundef null, ptr noundef nonnull @.str.1598, ptr noundef %i.ew, i32 noundef %i.ex) ; 3 uses
  %i.ez = load i16, ptr %i.en, align 2
  %i.fa = icmp sgt i16 %i.ez, 29
  %i.fb = load ptr, ptr %i.ei, align 8            ; 2 uses
  br i1 %i.fa, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fc = call ptr @tvb_bytes_to_str(ptr noundef %i.fb, ptr noundef %0, i32 noundef %.4256, i32 noundef 30)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ey, ptr noundef nonnull @.str.1507, ptr noundef %i.fc)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ey, ptr noundef nonnull @.str.1599)
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.fd = call ptr @tvb_bytes_to_str(ptr noundef %i.fb, ptr noundef %0, i32 noundef %.4256, i32 noundef %i.ex)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ey, ptr noundef nonnull @.str.1507, ptr noundef %i.fd)
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.fe = add i32 %.4256, %i.ex                   ; 2 uses
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next270, %wide.trip.count
  br i1 %exitcond274.not, label %._crit_edge.loopexit, label %bb.an, !llvm.loop !37

._crit_edge.loopexit:                             ; preds = %bb.an, %bb.at
  %.4.lcssa.ph = phi i32 [ %i.fe, %bb.at ], [ %.4256, %bb.an ]
  %.phi.trans.insert275 = getelementptr i8, ptr %i.a, i64 %indvars.iv
  %.pre276 = load i8, ptr %.phi.trans.insert275, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %proto_item_set_hidden.exit
  %i.ff = phi i8 [ %i.cq, %proto_item_set_hidden.exit ], [ %.pre276, %._crit_edge.loopexit ]
  %.4.lcssa = phi i32 [ %.3299, %proto_item_set_hidden.exit ], [ %.4.lcssa.ph, %._crit_edge.loopexit ] ; 10 uses
  %i.fg = icmp eq i8 %i.ff, 31
  br i1 %i.fg, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %._crit_edge
  %i.fh = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.4.lcssa)
  %.not228 = icmp eq i32 %i.fh, 0
  br i1 %.not228, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fi = load i32, ptr @hf_mac_lte_padding_data, align 4
  %i.fj = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fi, ptr noundef %0, i32 noundef %.4.lcssa, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fk = load i32, ptr @hf_mac_lte_padding_length, align 4
  %i.fl = getelementptr i8, ptr %4, i64 18        ; 2 uses
  %i.fm = load i16, ptr %i.fl, align 2
  %i.fn = zext i16 %i.fm to i32
  %i.fo = sub i32 %i.fn, %.4.lcssa
  %i.fp = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.fk, ptr noundef %0, i32 noundef %.4.lcssa, i32 noundef 0, i32 noundef %i.fo) ; 3 uses
  %.not.i234 = icmp eq ptr %i.fp, null
  br i1 %.not.i234, label %proto_item_set_generated.exit236, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fq = getelementptr i8, ptr %i.fp, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8            ; 2 uses
  %.not5.i235 = icmp eq ptr %i.fr, null
  br i1 %.not5.i235, label %proto_item_set_generated.exit236, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fs = getelementptr i8, ptr %i.fr, i64 28     ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = or i32 %i.ft, 2
  store i32 %i.fu, ptr %i.fs, align 4
  br label %proto_item_set_generated.exit236

proto_item_set_generated.exit236:                 ; preds = %bb.aw, %bb.ax, %bb.ay
  %i.fv = load i16, ptr %i.fl, align 2
  %i.fw = zext i16 %i.fv to i32                   ; 2 uses
  %i.fx = icmp sgt i32 %.4.lcssa, %i.fw
  br i1 %i.fx, label %bb.az, label %bb.be

bb.az:                                            ; preds = %proto_item_set_generated.exit236
  %i.fy = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.fp, ptr noundef nonnull @ei_mac_lte_context_length, ptr noundef nonnull @.str.1624, i32 noundef %i.fw, i32 noundef %.4.lcssa) ; 0 uses
  br label %bb.be

bb.ba:                                            ; preds = %._crit_edge
  %i.fz = getelementptr i8, ptr %4, i64 18        ; 2 uses
  %i.ga = load i16, ptr %i.fz, align 2
  %i.gb = zext i16 %i.ga to i32                   ; 3 uses
  %i.gc = icmp slt i32 %.4.lcssa, %i.gb
  br i1 %i.gc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gd = load i16, ptr %i.m, align 2
  %i.ge = zext i16 %i.gd to i32
  %i.gf = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %3, ptr noundef nonnull @ei_mac_lte_context_length, ptr noundef nonnull @.str.1625, i32 noundef %i.ge, i32 noundef %i.gb, i32 noundef %.4.lcssa) ; 0 uses
  %.pre277 = load i16, ptr %i.fz, align 2
  %.pre278 = zext i16 %.pre277 to i32
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pre-phi = phi i32 [ %.pre278, %bb.bb ], [ %i.gb, %bb.ba ] ; 2 uses
  %i.gg = icmp sgt i32 %.4.lcssa, %.pre-phi
  br i1 %i.gg, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gh = load i16, ptr %i.m, align 2
  %i.gi = zext i16 %i.gh to i32
  %i.gj = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %3, ptr noundef nonnull @ei_mac_lte_context_length, ptr noundef nonnull @.str.1626, i32 noundef %i.gi, i32 noundef %.pre-phi, i32 noundef %.4.lcssa) ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.az, %proto_item_set_generated.exit236, %bb.bd, %bb.bc, %proto_item_set_generated.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__vsnprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @col_set_writable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @call_with_catch_all(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 13 uses
  %4 = alloca %struct.except_stacknode, align 8   ; 3 uses
  %5 = alloca %struct.except_catch, align 8       ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @except_setup_try(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @call_with_catch_all.catch_spec, i64 noundef 1)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.d = call i32 @_setjmp(ptr noundef nonnull %i.c) #21
  %.not16 = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sink = select i1 %.not16, ptr null, ptr %i.e
  store volatile ptr %.sink, ptr %i.a, align 8
  %.0..0..0..0. = load volatile i32, ptr %i.b, align 4
  %i.f = and i32 %.0..0..0..0., 1
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0..0..0..0.1 = load volatile i32, ptr %i.b, align 4
  %i.g = or i32 %.0..0..0..0.1, 2
  store volatile i32 %i.g, ptr %i.b, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0..0..0..0.2 = load volatile i32, ptr %i.b, align 4
  %i.h = and i32 %.0..0..0..0.2, -2
  store volatile i32 %i.h, ptr %i.b, align 4
  %.0..0..0..0.3 = load volatile i32, ptr %i.b, align 4
  %i.i = icmp eq i32 %.0..0..0..0.3, 0
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.0..0..0..0.7 = load volatile ptr, ptr %i.a, align 8
  %i.j = icmp eq ptr %.0..0..0..0.7, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = call i32 @call_dissector_only(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0..0..0..0.4 = load volatile i32, ptr %i.b, align 4
  %i.l = icmp eq i32 %.0..0..0..0.4, 0
  br i1 %i.l, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.0..0..0..0.8 = load volatile ptr, ptr %i.a, align 8
  %.not18 = icmp eq ptr %.0..0..0..0.8, null
  br i1 %.not18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.0..0..0..0.5 = load volatile i32, ptr %i.b, align 4
  %i.m = or i32 %.0..0..0..0.5, 1
  store volatile i32 %i.m, ptr %i.b, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.0..0..0..0.6 = load volatile i32, ptr %i.b, align 4
  %i.n = and i32 %.0..0..0..0.6, 1
  %.not19 = icmp eq i32 %i.n, 0
  br i1 %.not19, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.0..0..0..0.9 = load volatile ptr, ptr %i.a, align 8
  %.not20 = icmp eq ptr %.0..0..0..0.9, null
  br i1 %.not20, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.0..0..0..0.10 = load volatile ptr, ptr %i.a, align 8
  call void @except_rethrow(ptr noundef %.0..0..0..0.10) #22
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 40
end_hunk_2
