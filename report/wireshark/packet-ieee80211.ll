Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ieee80211?download=true
inline.NumInlined: 916
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ieee80211_tag_measure_req:bb.a
  %i.t = load i32, ptr @hf_ieee80211_tag_measure_request_channel_number, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.t, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_ieee80211_tag_measure_request_start_time, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.v, ptr noundef %0, i32 noundef 4, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.x = load i32, ptr @hf_ieee80211_tag_measure_request_duration, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.x, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.z = load i32, ptr @hf_ieee80211_tag_measure_request_operating_class, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.z, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ab = load i32, ptr @hf_ieee80211_tag_measure_request_channel_number, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.ab, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = load i32, ptr @hf_ieee80211_tag_measure_request_randomization_interval, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.ad, ptr noundef %0, i32 noundef 5, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.af = load i32, ptr @hf_ieee80211_tag_measure_request_duration, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.af, ptr noundef %0, i32 noundef 7, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ah = icmp samesign ugt i32 %i.d, 9
  br i1 %i.ah, label %.lr.ph300, label %.loopexit

.lr.ph300:                                        ; preds = %bb.e, %bb.g
  %.0282299 = phi i32 [ %.1283, %bb.g ], [ 9, %bb.e ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ai = load i32, ptr @hf_ieee80211_tag_measure_request_channel_load_sub_id, align 4
  %i.aj = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.r, i32 noundef %i.ai, ptr noundef %0, i32 noundef %.0282299, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.ak = add nsw i32 %.0282299, 1
  %i.al = load i32, ptr @hf_ieee80211_tag_measure_request_subelement_length, align 4
  %i.am = call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.ak, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.an = add i32 %.0282299, 2                    ; 2 uses
  %i.ao = load i8, ptr %i.a, align 1
  %cond2 = icmp eq i8 %i.ao, 1
  br i1 %cond2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph300
  %i.ap = load i32, ptr @hf_ieee80211_tag_measure_request_channel_load_sub_reporting_condition, align 4
  %i.aq = call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.an, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ar = add i32 %.0282299, 3
  %i.as = load i32, ptr @hf_ieee80211_tag_measure_request_channel_load_sub_reporting_ref, align 4
  %i.at = call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.as, ptr noundef %0, i32 noundef %i.ar, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.au = add i32 %.0282299, 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph300, %bb.f
  %.1283 = phi i32 [ %i.au, %bb.f ], [ %i.an, %.lr.ph300 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.av = icmp slt i32 %.1283, %i.d
  br i1 %i.av, label %.lr.ph300, label %.loopexit, !llvm.loop !103

bb.h:                                             ; preds = %bb.c
  %i.aw = load i32, ptr @hf_ieee80211_tag_measure_request_operating_class, align 4
  %i.ax = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.aw, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ay = load i32, ptr @hf_ieee80211_tag_measure_request_channel_number, align 4
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.ay, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ba = load i32, ptr @hf_ieee80211_tag_measure_request_randomization_interval, align 4
  %i.bb = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.ba, ptr noundef %0, i32 noundef 5, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bc = load i32, ptr @hf_ieee80211_tag_measure_request_duration, align 4
  %i.bd = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.bc, ptr noundef %0, i32 noundef 7, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.be = icmp samesign ugt i32 %i.d, 9
  br i1 %i.be, label %.lr.ph297, label %.loopexit

.lr.ph297:                                        ; preds = %bb.h, %bb.j
  %.2284296 = phi i32 [ %.3, %bb.j ], [ 9, %bb.h ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.bf = load i32, ptr @hf_ieee80211_tag_measure_request_noise_histogram_sub_id, align 4
  %i.bg = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.r, i32 noundef %i.bf, ptr noundef %0, i32 noundef %.2284296, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.bh = add nsw i32 %.2284296, 1
  %i.bi = load i32, ptr @hf_ieee80211_tag_measure_request_subelement_length, align 4
  %i.bj = call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.bi, ptr noundef %0, i32 noundef %i.bh, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bk = add i32 %.2284296, 2                    ; 2 uses
  %i.bl = load i8, ptr %i.b, align 1
  %cond1 = icmp eq i8 %i.bl, 1
  br i1 %cond1, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph297
  %i.bm = load i32, ptr @hf_ieee80211_tag_measure_request_noise_histogram_sub_reporting_condition, align 4
  %i.bn = call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.bm, ptr noundef %0, i32 noundef %i.bk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bo = add i32 %.2284296, 3
  %i.bp = load i32, ptr @hf_ieee80211_tag_measure_request_noise_histogram_sub_reporting_anpi_ref, align 4
  %i.bq = call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.bp, ptr noundef %0, i32 noundef %i.bo, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.br = add i32 %.2284296, 4
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph297, %bb.i
  %.3 = phi i32 [ %i.br, %bb.i ], [ %i.bk, %.lr.ph297 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.bs = icmp slt i32 %.3, %i.d
  br i1 %i.bs, label %.lr.ph297, label %.loopexit, !llvm.loop !104

bb.k:                                             ; preds = %bb.c
  %i.bt = load i32, ptr @hf_ieee80211_tag_measure_request_operating_class, align 4
  %i.bu = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.bt, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bv = load i32, ptr @hf_ieee80211_tag_measure_request_channel_number, align 4
  %i.bw = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.bv, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bx = load i32, ptr @hf_ieee80211_tag_measure_request_randomization_interval, align 4
  %i.by = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.bx, ptr noundef %0, i32 noundef 5, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bz = load i32, ptr @hf_ieee80211_tag_measure_request_duration, align 4
  %i.ca = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.bz, ptr noundef %0, i32 noundef 7, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.cb = load i32, ptr @hf_ieee80211_tag_measure_request_measurement_mode, align 4
  %i.cc = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.cb, ptr noundef %0, i32 noundef 9, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cd = load i32, ptr @hf_ieee80211_tag_measure_request_bssid, align 4
  %i.ce = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.cd, ptr noundef %0, i32 noundef 10, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.cf = icmp samesign ugt i32 %i.d, 16
  br i1 %i.cf, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.x
  %.4295 = phi i32 [ 16, %.lr.ph ], [ %.7, %bb.x ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.ci = load i32, ptr @hf_ieee80211_tag_measure_request_beacon_sub_id, align 4
  %i.cj = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.r, i32 noundef %i.ci, ptr noundef %0, i32 noundef %.4295, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.c) ; 2 uses
  %i.ck = add nuw nsw i32 %.4295, 1               ; 2 uses
  %i.cl = load i32, ptr @ett_tag_measure_request_sub_element_tree, align 4
  %i.cm = call ptr @proto_item_add_subtree(ptr noundef %i.cj, i32 noundef %i.cl) ; 15 uses
  %i.cn = load i32, ptr @hf_ieee80211_tag_measure_request_subelement_length, align 4
  %i.co = call ptr @proto_tree_add_item(ptr noundef %i.cm, i32 noundef %i.cn, ptr noundef %0, i32 noundef %i.ck, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.cp = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ck) ; 2 uses
  %i.cq = add nuw i32 %.4295, 2                   ; 13 uses
  %i.cr = zext i8 %i.cp to i32                    ; 6 uses
  %i.cs = add nuw i32 %i.cq, %i.cr                ; 4 uses
  %i.ct = and i32 %i.cs, 255                      ; 4 uses
  %.not = icmp sgt i32 %i.ct, %i.d
  br i1 %.not, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.cu = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.co, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10317) ; 0 uses
  %i.cv = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.ae

bb.m:                                             ; preds = %bb.l
  %i.cw = load i8, ptr %i.c, align 1
  switch i8 %i.cw, label %dissect_extended_request.exit [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 10, label %bb.q
    i8 11, label %bb.r
    i8 51, label %bb.t
    i8 -93, label %bb.u
    i8 -92, label %bb.v
  ]

bb.n:                                             ; preds = %bb.m
  %i.cx = load i32, ptr @hf_ieee80211_tag_measure_request_beacon_sub_ssid, align 4
  %i.cy = call ptr @proto_tree_add_item(ptr noundef %i.cm, i32 noundef %i.cx, ptr noundef %0, i32 noundef %i.cq, i32 noundef %i.cr, i32 noundef 0) ; 0 uses
  br label %dissect_extended_request.exit

bb.o:                                             ; preds = %bb.m
  %i.cz = load i32, ptr @hf_ieee80211_tag_measure_request_beacon_sub_bri_reporting_condition, align 4
  %i.da = call ptr @proto_tree_add_item(ptr noundef %i.cm, i32 noundef %i.cz, ptr noundef %0, i32 noundef %i.cq, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.db = add nuw i32 %.4295, 3
  %i.dc = load i32, ptr @hf_ieee80211_tag_measure_request_beacon_sub_bri_threshold_offset, align 4
  %i.dd = call ptr @proto_tree_add_item(ptr noundef %i.cm, i32 noundef %i.dc, ptr noundef %0, i32 noundef %i.db, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.de = add nuw i32 %.4295, 4
  br label %dissect_extended_request.exit

bb.p:                                             ; preds = %bb.m
  %i.df = load i32, ptr @hf_ieee80211_tag_measure_request_beacon_sub_reporting_detail, align 4
  %i.dg = call ptr @proto_tree_add_item(ptr noundef %i.cm, i32 noundef %i.df, ptr noundef %0, i32 noundef %i.cq, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.dh = add nuw i32 %.4295, 3
  br label %dissect_extended_request.exit

bb.q:                                             ; preds = %bb.m
  %i.di = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.cq, i32 noundef %i.cr) ; 2 uses
  %i.dj = call i32 @tvb_reported_length(ptr noundef %i.di) ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph.i, label %ieee80211_tag_request.exit

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.i
  %.09.i = phi i32 [ %i.dn, %.lr.ph.i ], [ 0, %bb.q ] ; 2 uses
  %i.dl = load i32, ptr @hf_ieee80211_tag_request, align 4
  %i.dm = call ptr @proto_tree_add_item(ptr noundef %i.cm, i32 noundef %i.dl, ptr noundef %i.di, i32 noundef %.09.i, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.dn = add nuw nsw i32 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dn, %i.dj
  br i1 %exitcond.not.i, label %ieee80211_tag_request.exit, label %.lr.ph.i, !llvm.loop !0

ieee80211_tag_request.exit:                       ; preds = %.lr.ph.i, %bb.q
  %i.do = call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %i.dj, i32 1)
  %i.dp = add nuw i32 %i.do, %i.cq
  br label %dissect_extended_request.exit

bb.r:                                             ; preds = %bb.m
  %i.dq = icmp ult i8 %i.cp, 2
  br i1 %i.dq, label %bb.s, label %.lr.ph.preheader.i

bb.s:                                             ; preds = %bb.r
  %i.dr = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.cm, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10318) ; 0 uses
  br label %dissect_extended_request.exit

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.ds = load i32, ptr @hf_ieee80211_tag_extended_request_id, align 4
  %i.dt = call ptr @proto_tree_add_item(ptr noundef %i.cm, i32 noundef %i.ds, ptr noundef %0, i32 noundef %i.cq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.014.i = add nsw i32 %i.cr, -1
  br label %.lr.ph.i289

.lr.ph.i289:                                      ; preds = %.lr.ph.i289, %.lr.ph.preheader.i
  %.017.i = phi i32 [ %.0.i, %.lr.ph.i289 ], [ %.014.i, %.lr.ph.preheader.i ]
  %.012.in16.i = phi i32 [ %.012.i, %.lr.ph.i289 ], [ %i.cq, %.lr.ph.preheader.i ]
  %.012.i = add i32 %.012.in16.i, 1               ; 2 uses
  %i.du = load i32, ptr @hf_ieee80211_tag_extended_request_extension, align 4
  %i.dv = call ptr @proto_tree_add_item(ptr noundef %i.cm, i32 noundef %i.du, ptr noundef %0, i32 noundef %.012.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.0.i = add nsw i32 %.017.i, -1                 ; 2 uses
  %.not.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i, label %dissect_extended_request.exit, label %.lr.ph.i289, !llvm.loop !1

bb.t:                                             ; preds = %bb.m
  %i.dw = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.cq, i32 noundef %i.cr)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store ptr %i.cj, ptr %i.cg, align 8
  store ptr %i.co, ptr %i.ch, align 8
  %i.dx = call i32 @dissect_ap_channel_report(ptr noundef %i.dw, ptr noundef %1, ptr noundef %i.cm, ptr noundef nonnull %4)
  %i.dy = add i32 %i.dx, %i.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %dissect_extended_request.exit

bb.u:                                             ; preds = %bb.m
  %i.dz = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.cq, i32 noundef %i.cr) ; 3 uses
  %i.ea = load i32, ptr @hf_ieee80211_wide_bw_new_channel_width, align 4
  %i.eb = call ptr @proto_tree_add_item(ptr noundef %i.cm, i32 noundef %i.ea, ptr noundef %i.dz, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ec = load i32, ptr @hf_ieee80211_wide_bw_new_channel_center_freq_segment0, align 4
  %i.ed = call ptr @proto_tree_add_item(ptr noundef %i.cm, i32 noundef %i.ec, ptr noundef %i.dz, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ee = load i32, ptr @hf_ieee80211_wide_bw_new_channel_center_freq_segment1, align 4
  %i.ef = call ptr @proto_tree_add_item(ptr noundef %i.cm, i32 noundef %i.ee, ptr noundef %i.dz, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.eg = add nuw i32 %.4295, 5
  br label %dissect_extended_request.exit

bb.v:                                             ; preds = %bb.m
  %i.eh = load i32, ptr @hf_ieee80211_tag_measure_request_beacon_sub_last_report_indication_request, align 4
  %i.ei = call ptr @proto_tree_add_item(ptr noundef %i.cm, i32 noundef %i.eh, ptr noundef %0, i32 noundef %i.cq, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ej = add nuw i32 %.4295, 3
  br label %dissect_extended_request.exit

dissect_extended_request.exit:                    ; preds = %.lr.ph.i289, %bb.s, %bb.m, %bb.v, %bb.u, %bb.t, %ieee80211_tag_request.exit, %bb.p, %bb.o, %bb.n
  %.5 = phi i32 [ %i.cq, %bb.m ], [ %i.cs, %bb.n ], [ %i.de, %bb.o ], [ %i.dh, %bb.p ], [ %i.dp, %ieee80211_tag_request.exit ], [ %i.ej, %bb.v ], [ %i.dy, %bb.t ], [ %i.eg, %bb.u ], [ %i.cs, %bb.s ], [ %i.cs, %.lr.ph.i289 ] ; 4 uses
  %i.ek = icmp slt i32 %.5, %i.ct
  br i1 %i.ek, label %bb.w, label %bb.x

bb.w:                                             ; preds = %dissect_extended_request.exit
  %i.el = load i32, ptr @hf_ieee80211_tag_measure_request_beacon_unknown, align 4
  %i.em = sub i32 %i.ct, %.5
  %i.en = call ptr @proto_tree_add_item(ptr noundef %i.cm, i32 noundef %i.el, ptr noundef %0, i32 noundef %.5, i32 noundef %i.em, i32 noundef 0)
  %i.eo = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.en, ptr noundef nonnull @ei_ieee80211_tag_measure_request_beacon_unknown) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %dissect_extended_request.exit, %bb.w
  %.7 = phi i32 [ %.5, %dissect_extended_request.exit ], [ %i.ct, %bb.w ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.ep = icmp slt i32 %.7, %i.d
  br i1 %i.ep, label %bb.l, label %.loopexit

bb.y:                                             ; preds = %bb.c
  %i.eq = load i32, ptr @hf_ieee80211_tag_measure_request_operating_class, align 4
  %i.er = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.eq, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.es = load i32, ptr @hf_ieee80211_tag_measure_request_channel_number, align 4
  %i.et = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.es, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.eu = load i32, ptr @hf_ieee80211_tag_measure_request_randomization_interval, align 4
  %i.ev = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.eu, ptr noundef %0, i32 noundef 5, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ew = load i32, ptr @hf_ieee80211_tag_measure_request_duration, align 4
  %i.ex = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.ew, ptr noundef %0, i32 noundef 7, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ey = load i32, ptr @hf_ieee80211_tag_measure_request_frame_request_type, align 4
  %i.ez = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.ey, ptr noundef %0, i32 noundef 9, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fa = load i32, ptr @hf_ieee80211_tag_measure_request_mac_address, align 4
  %i.fb = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.fa, ptr noundef %0, i32 noundef 10, i32 noundef 6, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.z:                                             ; preds = %bb.c
  %i.fc = load i32, ptr @hf_ieee80211_tag_measure_request_peer_mac_address, align 4
  %i.fd = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.fc, ptr noundef %0, i32 noundef 3, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.fe = load i32, ptr @hf_ieee80211_tag_measure_request_randomization_interval, align 4
  %i.ff = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.fe, ptr noundef %0, i32 noundef 9, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.fg = load i32, ptr @hf_ieee80211_tag_measure_request_duration, align 4
  %i.fh = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.fg, ptr noundef %0, i32 noundef 11, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.fi = load i32, ptr @hf_ieee80211_tag_measure_request_group_id, align 4
  %i.fj = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.fi, ptr noundef %0, i32 noundef 13, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.aa:                                            ; preds = %bb.c
  %i.fk = load i32, ptr @hf_ieee80211_tag_measure_request_location_subject, align 4
  %i.fl = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.fk, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.ab:                                            ; preds = %bb.c, %bb.c, %bb.c
  %i.fm = load i32, ptr @hf_ieee80211_tag_measure_request_location_subject, align 4
  %i.fn = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.fm, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fo = load i32, ptr @hf_ieee80211_tag_measure_request_civic_location_type, align 4
  %i.fp = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.fo, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fq = load i32, ptr @hf_ieee80211_tag_measure_request_location_service_interval_units, align 4
  %i.fr = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.fq, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fs = load i32, ptr @hf_ieee80211_tag_measure_request_location_service_interval, align 4
  %i.ft = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.fs, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %bb.j, %bb.g, %bb.k, %bb.h, %bb.e, %bb.c, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.d
  %.8 = phi i32 [ 3, %bb.c ], [ 14, %bb.d ], [ 8, %bb.ab ], [ %.3, %bb.j ], [ %.1283, %bb.g ], [ 16, %bb.y ], [ 14, %bb.z ], [ 4, %bb.aa ], [ 9, %bb.e ], [ 9, %bb.h ], [ 16, %bb.k ], [ %.7, %bb.x ] ; 3 uses
  %i.fu = icmp slt i32 %.8, %i.d
  br i1 %i.fu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.loopexit
  %i.fv = load i32, ptr @hf_ieee80211_tag_measure_request_unknown, align 4
  %i.fw = sub nsw i32 %i.d, %.8
  %i.fx = call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.fv, ptr noundef %0, i32 noundef %.8, i32 noundef %i.fw, i32 noundef 0)
  %i.fy = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.fx, ptr noundef nonnull @ei_ieee80211_tag_measure_request_unknown) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.loopexit
  %i.fz = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.ae

bb.ae:                                            ; preds = %.thread, %bb.ad, %bb.b
  %.2 = phi i32 [ %i.i, %bb.b ], [ %i.fz, %bb.ad ], [ %i.cv, %.thread ]
  ret i32 %.2
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @ieee80211_tag_measure_rep(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = tail call i32 @tvb_reported_length(ptr noundef %0) ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.d = icmp slt i32 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %3, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.f, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10316, i32 noundef %i.c) ; 0 uses
  %i.h = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.ao

bb.c:                                             ; preds = %bb.a
  %i.i = load i32, ptr @hf_ieee80211_tag_measure_report_measurement_token, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_ieee80211_tag_measure_report_mode, align 4
  %i.l = load i32, ptr @ett_tag_measure_report_mode_tree, align 4
  %i.m = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %2, ptr noundef %0, i32 noundef 1, i32 noundef %i.k, i32 noundef %i.l, ptr noundef nonnull @ieee80211_tag_measure_rep.ieee80211_tag_measure_report_mode, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  %i.n = load i32, ptr @hf_ieee80211_tag_measure_report_type, align 4
  %i.o = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %2, i32 noundef %i.n, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.a)
  %i.p = load i32, ptr @ett_tag_measure_report_type_tree, align 4
  %i.q = call ptr @proto_item_add_subtree(ptr noundef %i.o, i32 noundef %i.p) ; 62 uses
  %i.r = icmp eq i32 %i.c, 3
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.ao

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr %i.a, align 1
  switch i8 %i.t, label %.loopexit [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
    i8 5, label %bb.k
    i8 6, label %bb.x
    i8 7, label %.lr.ph493.preheader
    i8 8, label %.lr.ph493.preheader
    i8 9, label %bb.ag
    i8 10, label %bb.ag
    i8 11, label %bb.ag
  ]

.lr.ph493.preheader:                              ; preds = %bb.e, %bb.e
  br label %.lr.ph493

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr @hf_ieee80211_tag_measure_report_channel_number, align 4
  %i.v = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.u, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.w = load i32, ptr @hf_ieee80211_tag_measure_report_start_time, align 4
  %i.x = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.w, ptr noundef %0, i32 noundef 4, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.y = load i32, ptr @hf_ieee80211_tag_measure_report_duration, align 4
  %i.z = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.y, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aa = load i32, ptr @hf_ieee80211_tag_measure_basic_map_field, align 4
  %i.ab = load i32, ptr @ett_tag_measure_report_basic_map_tree, align 4
  %i.ac = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %2, ptr noundef %0, i32 noundef 14, i32 noundef %i.aa, i32 noundef %i.ab, ptr noundef nonnull @ieee80211_tag_measure_rep.ieee80211_tag_measure_map_field, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.ad = load i32, ptr @hf_ieee80211_tag_measure_report_channel_number, align 4
  %i.ae = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.ad, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.af = load i32, ptr @hf_ieee80211_tag_measure_report_start_time, align 4
  %i.ag = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.af, ptr noundef %0, i32 noundef 4, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.ah = load i32, ptr @hf_ieee80211_tag_measure_report_duration, align 4
  %i.ai = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.ah, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aj = load i32, ptr @hf_ieee80211_tag_measure_cca_busy_fraction, align 4
  %i.ak = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.aj, ptr noundef %0, i32 noundef 14, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.e
  %i.al = load i32, ptr @hf_ieee80211_tag_measure_report_channel_number, align 4
  %i.am = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.al, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.an = load i32, ptr @hf_ieee80211_tag_measure_report_start_time, align 4
  %i.ao = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.an, ptr noundef %0, i32 noundef 4, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.ap = load i32, ptr @hf_ieee80211_tag_measure_report_duration, align 4
  %i.aq = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.ap, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
end_hunk_0
begin_hunk_1_@ieee80211_frame_classifier:bb.a
  %.not521 = icmp eq i32 %i.kq, 0
  br i1 %.not521, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kr = load i32, ptr @hf_ieee80211_tclas8_address_2_sid_spec, align 4
  %i.ks = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.kr, ptr noundef %0, i32 noundef %.14, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.kt = add i32 %.14, 2                         ; 2 uses
  %i.ku = and i32 %i.jv, 32
  %.not522 = icmp eq i32 %i.ku, 0
  br i1 %.not522, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kv = load i32, ptr @hf_ieee80211_tclas8_address_2_sid_mask, align 4
  %i.kw = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.kv, ptr noundef %0, i32 noundef %i.kt, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.kx = add i32 %.14, 4
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo, %bb.bm
  %.15 = phi i32 [ %i.kx, %bb.bo ], [ %i.kt, %bb.bn ], [ %.14, %bb.bm ] ; 4 uses
  %i.ky = and i32 %i.jv, 64
  %.not523 = icmp eq i32 %i.ky, 0
  br i1 %.not523, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kz = load i32, ptr @hf_ieee80211_tclas8_sequence_control_spec, align 4
  %i.la = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.kz, ptr noundef %0, i32 noundef %.15, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.lb = add i32 %.15, 2                         ; 2 uses
  %i.lc = and i32 %i.jv, 128
  %.not524 = icmp eq i32 %i.lc, 0
  br i1 %.not524, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ld = load i32, ptr @hf_ieee80211_tclas8_sequence_control_mask, align 4
  %i.le = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ld, ptr noundef %0, i32 noundef %i.lb, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.lf = add i32 %.15, 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br, %bb.bp
  %.16 = phi i32 [ %i.lf, %bb.br ], [ %i.lb, %bb.bq ], [ %.15, %bb.bp ] ; 4 uses
  %i.lg = and i32 %i.jv, 256
  %.not525 = icmp eq i32 %i.lg, 0
  br i1 %.not525, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lh = load i32, ptr @hf_ieee80211_tclas8_address_3_spec, align 4
  %i.li = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.lh, ptr noundef %0, i32 noundef %.16, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.lj = add i32 %.16, 6                         ; 2 uses
  %i.lk = and i32 %i.jv, 512
  %.not526 = icmp eq i32 %i.lk, 0
  br i1 %.not526, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ll = load i32, ptr @hf_ieee80211_tclas8_address_3_mask, align 4
  %i.lm = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ll, ptr noundef %0, i32 noundef %i.lj, i32 noundef 6, i32 noundef -2147483648) ; 0 uses
  %i.ln = add i32 %.16, 12
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu, %bb.bs
  %.17 = phi i32 [ %i.ln, %bb.bu ], [ %i.lj, %bb.bt ], [ %.16, %bb.bs ] ; 2 uses
  %i.lo = and i32 %i.jv, 1024
  %.not527 = icmp eq i32 %i.lo, 0
  br i1 %.not527, label %bb.cl, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lp = load i32, ptr @hf_ieee80211_tclas8_address_4_spec, align 4
  %i.lq = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.lp, ptr noundef %0, i32 noundef %.17, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.lr = and i32 %i.jv, 2048
  %.not528 = icmp eq i32 %i.lr, 0
  br i1 %.not528, label %bb.cl, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ls = add i32 %.17, 6
  %i.lt = load i32, ptr @hf_ieee80211_tclas8_address_4_mask, align 4
  %i.lu = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.lt, ptr noundef %0, i32 noundef %i.ls, i32 noundef 6, i32 noundef -2147483648) ; 0 uses
  br label %bb.cl

bb.by:                                            ; preds = %bb.a
  %i.lv = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.d)
  %i.lw = zext i16 %i.lv to i32                   ; 8 uses
  %i.lx = load i32, ptr @hf_ieee80211_tclas_class_mask6_a_above, align 4
  %i.ly = load i32, ptr @ett_tag_tclas_mask_tree, align 4
  %i.lz = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %1, ptr noundef %0, i32 noundef %i.d, i32 noundef %i.lx, i32 noundef %i.ly, ptr noundef nonnull @ieee80211_tclas_class_mask9, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  %i.ma = add i32 %2, 4                           ; 2 uses
  %i.mb = and i32 %i.lw, 1
  %.not = icmp eq i32 %i.mb, 0
  br i1 %.not, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mc = load i32, ptr @hf_ieee80211_tclas9_frame_control_spec, align 4
  %i.md = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.mc, ptr noundef %0, i32 noundef %i.ma, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.me = add i32 %2, 6                           ; 2 uses
  %i.mf = and i32 %i.lw, 2
  %.not510 = icmp eq i32 %i.mf, 0
  br i1 %.not510, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mg = load i32, ptr @hf_ieee80211_tclas9_frame_control_mask, align 4
  %i.mh = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.mg, ptr noundef %0, i32 noundef %i.me, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.mi = add i32 %2, 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca, %bb.by
  %.18 = phi i32 [ %i.mi, %bb.ca ], [ %i.me, %bb.bz ], [ %i.ma, %bb.by ] ; 4 uses
  %i.mj = and i32 %i.lw, 4
  %.not511 = icmp eq i32 %i.mj, 0
  br i1 %.not511, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mk = load i32, ptr @hf_ieee80211_tclas9_address_1_spec, align 4
  %i.ml = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.mk, ptr noundef %0, i32 noundef %.18, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.mm = add i32 %.18, 6                         ; 2 uses
  %i.mn = and i32 %i.lw, 8
  %.not512 = icmp eq i32 %i.mn, 0
  br i1 %.not512, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mo = load i32, ptr @hf_ieee80211_tclas9_address_1_mask, align 4
  %i.mp = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.mo, ptr noundef %0, i32 noundef %i.mm, i32 noundef 6, i32 noundef -2147483648) ; 0 uses
  %i.mq = add i32 %.18, 12
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd, %bb.cb
  %.19 = phi i32 [ %i.mq, %bb.cd ], [ %i.mm, %bb.cc ], [ %.18, %bb.cb ] ; 4 uses
  %i.mr = and i32 %i.lw, 16
  %.not513 = icmp eq i32 %i.mr, 0
  br i1 %.not513, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ms = load i32, ptr @hf_ieee80211_tclas9_address_2_spec, align 4
  %i.mt = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ms, ptr noundef %0, i32 noundef %.19, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.mu = add i32 %.19, 6                         ; 2 uses
  %i.mv = and i32 %i.lw, 32
  %.not514 = icmp eq i32 %i.mv, 0
  br i1 %.not514, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mw = load i32, ptr @hf_ieee80211_tclas9_address_2_mask, align 4
  %i.mx = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.mw, ptr noundef %0, i32 noundef %i.mu, i32 noundef 6, i32 noundef -2147483648) ; 0 uses
  %i.my = add i32 %.19, 12
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg, %bb.ce
  %.20 = phi i32 [ %i.my, %bb.cg ], [ %i.mu, %bb.cf ], [ %.19, %bb.ce ] ; 2 uses
  %i.mz = and i32 %i.lw, 64
  %.not515 = icmp eq i32 %i.mz, 0
  br i1 %.not515, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.na = load i32, ptr @hf_ieee80211_tclas9_sequence_control_spec, align 4
  %i.nb = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.na, ptr noundef %0, i32 noundef %.20, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.nc = and i32 %i.lw, 128
  %.not516 = icmp eq i32 %i.nc, 0
  br i1 %.not516, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.nd = add i32 %.20, 2
  %i.ne = load i32, ptr @hf_ieee80211_tclas9_sequence_control_mask, align 4
  %i.nf = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ne, ptr noundef %0, i32 noundef %i.nd, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %bb.cl

bb.ck:                                            ; preds = %bb.a
  %i.ng = load i32, ptr @hf_ieee80211_tclas10_protocol_instance, align 4
  %i.nh = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ng, ptr noundef %0, i32 noundef %i.d, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ni = add i32 %2, 2
  %i.nj = load i32, ptr @hf_ieee80211_tclas10_protocol_num_next_hdr, align 4
  %i.nk = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.nj, ptr noundef %0, i32 noundef %i.ni, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nl = add i32 %2, 3                           ; 2 uses
  %i.nm = add nsw i32 %3, -4
  %i.nn = sdiv i32 %i.nm, 2
  %i.no = load i32, ptr @hf_ieee80211_tclas_filter_value, align 4
  %i.np = and i32 %i.nn, 255                      ; 3 uses
  %i.nq = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.no, ptr noundef %0, i32 noundef %i.nl, i32 noundef %i.np, i32 noundef 0) ; 0 uses
  %i.nr = add i32 %i.np, %i.nl
  %i.ns = load i32, ptr @hf_ieee80211_tclas_filter_mask, align 4
  %i.nt = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ns, ptr noundef %0, i32 noundef %i.nr, i32 noundef %i.np, i32 noundef 0) ; 0 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.a, %bb.ch, %bb.cj, %bb.ci, %bb.bv, %bb.bx, %bb.bw, %bb.bd, %bb.bf, %bb.be, %bb.al, %bb.an, %bb.am, %bb.k, %bb.l, %bb.d, %bb.f, %bb.e, %bb.ck, %bb.m, %bb.j, %bb.h, %bb.g, %bb.b
  %i.nu = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %i.nu
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_extended_request(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2147483647) %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp samesign ult i32 %4, 2
  br i1 %i.a, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10318) ; 0 uses
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = load i32, ptr @hf_ieee80211_tag_extended_request_id, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.014 = add nsw i32 %4, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.017 = phi i32 [ %.0, %.lr.ph ], [ %.014, %.lr.ph.preheader ]
  %.012.in16 = phi i32 [ %.012, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.012 = add i32 %.012.in16, 1                   ; 2 uses
  %i.e = load i32, ptr @hf_ieee80211_tag_extended_request_extension, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef %.012, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.0 = add nsw i32 %.017, -1                     ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_address_to_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_get_parent(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_rsn_ie(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 1, -2147483648) %3, ptr nofree noundef captures(address_is_null) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [84 x i8], align 16               ; 5 uses
  %i.b = alloca [84 x i8], align 16               ; 5 uses
  %i.c = alloca i16, align 2                      ; 7 uses
  %i.d = alloca i16, align 2                      ; 7 uses
  %i.e = alloca i16, align 2                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.f = load i32, ptr @hf_ieee80211_rsn_version, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.f, ptr noundef %2, i32 noundef 0, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.h = icmp samesign ult i32 %3, 3
  br i1 %i.h, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr @hf_ieee80211_rsn_gcs, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.i, ptr noundef %2, i32 noundef 2, i32 noundef 4, i32 noundef 0)
  %i.k = load i32, ptr @ett_rsn_gcs_tree, align 4
  %i.l = tail call ptr @proto_item_add_subtree(ptr noundef %i.j, i32 noundef %i.k) ; 3 uses
  %i.m = load i32, ptr @hf_ieee80211_rsn_gcs_oui, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.m, ptr noundef %2, i32 noundef 2, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.o = tail call i32 @tvb_get_ntoh24(ptr noundef %2, i32 noundef 2)
  %i.p = icmp eq i32 %i.o, 4012
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr @hf_ieee80211_rsn_gcs_80211_type, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.q, ptr noundef %2, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.s = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef 5)
  %i.t = load i8, ptr @enable_decryption, align 1, !range !9, !noundef !10
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %save_proto_data_value.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %0, i64 416
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load i32, ptr @proto_wlan, align 4
  %i.y = zext i8 %i.s to i64
  %i.z = inttoptr i64 %i.y to ptr
  tail call void @p_add_proto_data(ptr noundef %i.w, ptr noundef %0, i32 noundef %i.x, i32 noundef 12, ptr noundef %i.z)
  br label %save_proto_data_value.exit

bb.e:                                             ; preds = %bb.b
  %i.aa = load i32, ptr @hf_ieee80211_rsn_gcs_type, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.aa, ptr noundef %2, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %save_proto_data_value.exit

save_proto_data_value.exit:                       ; preds = %bb.d, %bb.c, %bb.e
  %i.ac = icmp samesign ult i32 %3, 7
  br i1 %i.ac, label %bb.ad, label %bb.f

bb.f:                                             ; preds = %save_proto_data_value.exit
  %i.ad = load i32, ptr @hf_ieee80211_rsn_pcs_count, align 4
  %i.ae = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %1, i32 noundef %i.ad, ptr noundef %2, i32 noundef 6, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.c)
  %i.af = load i16, ptr %i.c, align 2
  %i.ag = zext i16 %i.af to i32                   ; 2 uses
  %i.ah = shl nuw nsw i32 %i.ag, 2                ; 2 uses
  %i.ai = add nuw nsw i32 %i.ah, 8
  %i.aj = icmp samesign ugt i32 %i.ai, %3
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i32 %3, -8                      ; 2 uses
  %i.al = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %0, ptr noundef %i.ae, ptr noundef nonnull @ei_ieee80211_rsn_pcs_count, ptr noundef nonnull @.str.10330, i32 noundef %i.ag, i32 noundef %i.ak) ; 0 uses
  %i.am = sdiv i32 %i.ak, 4                       ; 2 uses
  %i.an = trunc nuw i32 %i.am to i16
  store i16 %i.an, ptr %i.c, align 2
  %.pre228 = shl nuw nsw i32 %i.am, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi229 = phi i32 [ %.pre228, %bb.g ], [ %i.ah, %bb.f ]
  %i.ao = load i32, ptr @hf_ieee80211_rsn_pcs_list, align 4
  %i.ap = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ao, ptr noundef %2, i32 noundef 8, i32 noundef %.pre-phi229, i32 noundef 0) ; 2 uses
  %i.aq = load i32, ptr @ett_rsn_pcs_tree, align 4
  %i.ar = call ptr @proto_item_add_subtree(ptr noundef %i.ap, i32 noundef %i.aq)
  %i.as = load i16, ptr %i.c, align 2
  %.not223 = icmp eq i16 %i.as, 0
  br i1 %.not223, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.at = getelementptr i8, ptr %0, i64 416       ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %save_proto_data_value.exit206
  %.0211 = phi i32 [ 0, %.lr.ph ], [ %i.bw, %save_proto_data_value.exit206 ]
  %.0190210 = phi i32 [ 8, %.lr.ph ], [ %i.bv, %save_proto_data_value.exit206 ] ; 6 uses
  %i.au = load i32, ptr @hf_ieee80211_rsn_pcs, align 4
  %i.av = call ptr @proto_tree_add_item(ptr noundef %i.ar, i32 noundef %i.au, ptr noundef %2, i32 noundef %.0190210, i32 noundef 4, i32 noundef 0)
  %i.aw = load i32, ptr @ett_rsn_sub_pcs_tree, align 4
  %i.ax = call ptr @proto_item_add_subtree(ptr noundef %i.av, i32 noundef %i.aw) ; 3 uses
  %i.ay = load i32, ptr @hf_ieee80211_rsn_pcs_oui, align 4
  %i.az = call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.ay, ptr noundef %2, i32 noundef %.0190210, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ba = call i32 @tvb_get_ntoh24(ptr noundef %2, i32 noundef %.0190210)
  %i.bb = icmp eq i32 %i.ba, 4012
  %i.bc = or disjoint i32 %.0190210, 3            ; 3 uses
  br i1 %i.bb, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bd = load i32, ptr @hf_ieee80211_rsn_pcs_80211_type, align 4
  %i.be = call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.bd, ptr noundef %2, i32 noundef %i.bc, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bf = load ptr, ptr %i.at, align 8
  %i.bg = call i32 @tvb_get_ntohl(ptr noundef %2, i32 noundef %.0190210) ; 2 uses
  %i.bh = call noalias dereferenceable_or_null(256) ptr @wmem_alloc(ptr noundef %i.bf, i64 noundef 256) #21 ; 3 uses
  store i8 0, ptr %i.bh, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i8 0, ptr %i.b, align 16
  %i.bi = lshr i32 %i.bg, 8
  call fastcc void @oui_base_custom(ptr noundef nonnull %i.b, i32 noundef %i.bi)
  %i.bj = and i32 %i.bg, 255
  %i.bk = call ptr @val_to_str(ptr noundef null, i32 noundef %i.bj, ptr noundef nonnull @ieee80211_rsn_cipher_vals, ptr noundef nonnull @.str.9036) ; 2 uses
  %i.bl = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.bh, i64 noundef 240, i32 noundef 2, i64 noundef 256, ptr noundef nonnull @.str.9037, ptr noundef nonnull %i.b, ptr noundef %i.bk) ; 0 uses
  call void @wmem_free(ptr noundef null, ptr noundef %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ap, ptr noundef nonnull @.str.7940, ptr noundef %i.bh)
  %i.bm = call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.bc)
  %i.bn = load i8, ptr @enable_decryption, align 1, !range !9, !noundef !10
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.k, label %save_proto_data_value.exit206

bb.k:                                             ; preds = %bb.j
  %i.bp = load ptr, ptr %i.at, align 8
  %i.bq = load i32, ptr @proto_wlan, align 4
  %i.br = zext i8 %i.bm to i64
  %i.bs = inttoptr i64 %i.br to ptr
  call void @p_add_proto_data(ptr noundef %i.bp, ptr noundef %0, i32 noundef %i.bq, i32 noundef 13, ptr noundef %i.bs)
  br label %save_proto_data_value.exit206

bb.l:                                             ; preds = %bb.i
  %i.bt = load i32, ptr @hf_ieee80211_rsn_pcs_type, align 4
  %i.bu = call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.bt, ptr noundef %2, i32 noundef %i.bc, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %save_proto_data_value.exit206

save_proto_data_value.exit206:                    ; preds = %bb.k, %bb.j, %bb.l
  %i.bv = add nuw nsw i32 %.0190210, 4            ; 2 uses
  %i.bw = add nuw nsw i32 %.0211, 1               ; 2 uses
  %i.bx = load i16, ptr %i.c, align 2
  %i.by = zext i16 %i.bx to i32
  %i.bz = icmp samesign ult i32 %i.bw, %i.by
  br i1 %i.bz, label %bb.i, label %._crit_edge, !llvm.loop !231

._crit_edge:                                      ; preds = %save_proto_data_value.exit206, %bb.h
  %.0190.lcssa = phi i32 [ 8, %bb.h ], [ %i.bv, %save_proto_data_value.exit206 ] ; 3 uses
  %.not = icmp slt i32 %.0190.lcssa, %3
  br i1 %.not, label %bb.m, label %bb.ad

bb.m:                                             ; preds = %._crit_edge
  %i.ca = load i32, ptr @hf_ieee80211_rsn_akms_count, align 4
  %i.cb = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %1, i32 noundef %i.ca, ptr noundef %2, i32 noundef %.0190.lcssa, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.d)
  %i.cc = or disjoint i32 %.0190.lcssa, 2         ; 5 uses
  %i.cd = load i16, ptr %i.d, align 2
  %i.ce = zext i16 %i.cd to i32                   ; 2 uses
  %i.cf = shl nuw nsw i32 %i.ce, 2                ; 2 uses
  %i.cg = add i32 %i.cf, %i.cc
  %i.ch = icmp sgt i32 %i.cg, %3
  br i1 %i.ch, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ci = sub i32 %3, %i.cc                       ; 2 uses
  %i.cj = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %0, ptr noundef %i.cb, ptr noundef nonnull @ei_ieee80211_rsn_pmkid_count, ptr noundef nonnull @.str.10331, i32 noundef %i.ce, i32 noundef %i.ci) ; 0 uses
  %i.ck = sdiv i32 %i.ci, 4                       ; 2 uses
  %i.cl = trunc i32 %i.ck to i16
  store i16 %i.cl, ptr %i.d, align 2
  %.pre230 = shl nsw i32 %i.ck, 2
  %.pre232 = and i32 %.pre230, 262140
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre-phi233 = phi i32 [ %.pre232, %bb.n ], [ %i.cf, %bb.m ]
  %i.cm = load i32, ptr @hf_ieee80211_rsn_akms_list, align 4
  %i.cn = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.cm, ptr noundef %2, i32 noundef %i.cc, i32 noundef %.pre-phi233, i32 noundef 0) ; 2 uses
  %i.co = load i32, ptr @ett_rsn_akms_tree, align 4
  %i.cp = call ptr @proto_item_add_subtree(ptr noundef %i.cn, i32 noundef %i.co)
  %i.cq = getelementptr i8, ptr %0, i64 416       ; 5 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load i32, ptr @proto_wlan, align 4
  %i.ct = call ptr @p_get_proto_data(ptr noundef %i.cr, ptr noundef %0, i32 noundef %i.cs, i32 noundef 7) ; 2 uses
  %.not.i = icmp eq ptr %i.ct, null
  br i1 %.not.i, label %bb.p, label %get_or_create_packet_data.exit

bb.p:                                             ; preds = %bb.o
end_hunk_1
begin_hunk_2_@dissect_multi_link:bb.a
  %.0 = phi i32 [ %.0.i, %.critedge.i ], [ 0, %bb.ao ] ; 3 uses
  %.034.i = phi ptr [ %i.gb, %.critedge.i ], [ %i.gq, %bb.ao ] ; 51 uses
  %i.gr = tail call i32 @tvb_captured_length_remaining(ptr noundef %.034.i, i32 noundef 0) ; 3 uses
  %i.gs = load i32, ptr @hf_ieee80211_eht_multi_link_subelt_tag, align 4
  %i.gt = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.gs, ptr noundef %0, i32 noundef %.11329, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gu = icmp slt i32 %i.gr, 256
  %i.gv = load i32, ptr @hf_ieee80211_eht_multi_link_subelt_len, align 4 ; 2 uses
  br i1 %i.gu, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %get_subelt_tvb.exit
  %i.gw = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.gv, ptr noundef %0, i32 noundef %i.fr, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.ar

bb.aq:                                            ; preds = %get_subelt_tvb.exit
  %i.gx = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.gv, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.gr) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gy = add i32 %.11329, 2                      ; 3 uses
  %i.gz = load i32, ptr @ett_eht_multi_link_subelt, align 4
  %i.ha = add i32 %.0264330, 1                    ; 2 uses
  %i.hb = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %.034.i, i32 noundef 0, i32 noundef %i.gr, i32 noundef %i.gz, ptr noundef null, ptr noundef nonnull @.str.10502, i32 noundef %i.ha) ; 5 uses
  %i.hc = tail call i32 @tvb_captured_length_remaining(ptr noundef %.034.i, i32 noundef 0) ; 10 uses
  %i.hd = tail call zeroext i16 @tvb_get_uint16(ptr noundef %.034.i, i32 noundef 0, i32 noundef -2147483648) ; 3 uses
  %i.he = load i32, ptr @ett_eht_multi_link_per_sta, align 4
  %i.hf = tail call ptr @proto_tree_add_subtree(ptr noundef %i.hb, ptr noundef %.034.i, i32 noundef 0, i32 noundef %i.hc, i32 noundef %i.he, ptr noundef null, ptr noundef nonnull @.str.10054) ; 13 uses
  switch i8 %i.c, label %bb.bz [
    i8 0, label %bb.as
    i8 1, label %bb.bf
    i8 2, label %bb.bo
    i8 3, label %bb.bx
    i8 4, label %bb.by
  ]

bb.as:                                            ; preds = %bb.ar
  %i.hg = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.034.i, i32 noundef 0)
  %i.hh = and i8 %i.hg, 15
  %i.hi = zext nneg i8 %i.hh to i32               ; 4 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.hf, ptr noundef nonnull @.str.10505, i32 noundef %i.hi)
  %i.hj = load i32, ptr @hf_ieee80211_eht_profile_sta_control, align 4
  %i.hk = load i32, ptr @ett_eht_multi_link_sta_control, align 4
  %i.hl = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.hf, ptr noundef %.034.i, i32 noundef 0, i32 noundef %i.hj, i32 noundef %i.hk, ptr noundef nonnull @sta_control_hdrs, i32 noundef -2147483648) ; 0 uses
  %i.hm = icmp slt i32 %i.hc, 3
  br i1 %i.hm, label %.thread316, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hn = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.034.i, i32 noundef 2)
  %i.ho = zext i8 %i.hn to i32
  %i.hp = load i32, ptr @ett_eht_multi_link_per_sta_info, align 4
  %i.hq = tail call ptr @proto_tree_add_subtree(ptr noundef %i.hf, ptr noundef %.034.i, i32 noundef 2, i32 noundef %i.ho, i32 noundef %i.hp, ptr noundef null, ptr noundef nonnull @.str.698) ; 7 uses
  %i.hr = load i32, ptr @hf_ieee80211_eht_sta_profile_info_len, align 4
  %i.hs = tail call ptr @proto_tree_add_item(ptr noundef %i.hq, i32 noundef %i.hr, ptr noundef %.034.i, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ht = zext i16 %i.hd to i32                   ; 7 uses
  %i.hu = and i32 %i.ht, 32
  %.not294.i = icmp eq i32 %i.hu, 0
  br i1 %.not294.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hv = load i32, ptr @hf_ieee80211_eht_sta_profile_info_mac, align 4
  %i.hw = tail call ptr @proto_tree_add_item(ptr noundef %i.hq, i32 noundef %i.hv, ptr noundef %.034.i, i32 noundef 3, i32 noundef 6, i32 noundef 0) ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0274.i = phi i32 [ 9, %bb.au ], [ 3, %bb.at ] ; 3 uses
  %i.hx = and i32 %i.ht, 64
  %.not295.i = icmp eq i32 %i.hx, 0
  br i1 %.not295.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hy = load i32, ptr @hf_ieee80211_eht_sta_profile_info_beacon, align 4
  %i.hz = tail call ptr @proto_tree_add_item(ptr noundef %i.hq, i32 noundef %i.hy, ptr noundef %.034.i, i32 noundef %.0274.i, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ia = add nuw nsw i32 %.0274.i, 2
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.1275.i = phi i32 [ %i.ia, %bb.aw ], [ %.0274.i, %bb.av ] ; 3 uses
  %i.ib = and i32 %i.ht, 128
  %.not296.i = icmp eq i32 %i.ib, 0
  br i1 %.not296.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ic = load i32, ptr @hf_ieee80211_eht_sta_profile_info_tsf_offset, align 4
  %i.id = tail call ptr @proto_tree_add_item(ptr noundef %i.hq, i32 noundef %i.ic, ptr noundef %.034.i, i32 noundef %.1275.i, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.ie = add nuw nsw i32 %.1275.i, 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.2276.i = phi i32 [ %i.ie, %bb.ay ], [ %.1275.i, %bb.ax ] ; 5 uses
  %i.if = and i32 %i.ht, 256
  %.not297.i = icmp eq i32 %i.if, 0
  br i1 %.not297.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ig = load i32, ptr @ett_eht_multi_link_sta_dtim, align 4
  %i.ih = tail call ptr @proto_tree_add_subtree(ptr noundef %i.hq, ptr noundef %.034.i, i32 noundef %.2276.i, i32 noundef 2, i32 noundef %i.ig, ptr noundef null, ptr noundef nonnull @.str.10506) ; 2 uses
  %i.ii = load i32, ptr @hf_ieee80211_eht_sta_profile_info_dtim_count, align 4
  %i.ij = tail call ptr @proto_tree_add_item(ptr noundef %i.ih, i32 noundef %i.ii, ptr noundef %.034.i, i32 noundef %.2276.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ik = add nuw nsw i32 %.2276.i, 1
  %i.il = load i32, ptr @hf_ieee80211_eht_sta_profile_info_dtim_period, align 4
  %i.im = tail call ptr @proto_tree_add_item(ptr noundef %i.ih, i32 noundef %i.il, ptr noundef %.034.i, i32 noundef %i.ik, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.in = add nuw nsw i32 %.2276.i, 2
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.3277.i = phi i32 [ %i.in, %bb.ba ], [ %.2276.i, %bb.az ] ; 3 uses
  %i.io = and i32 %i.ht, 512
  %.not298.i = icmp eq i32 %i.io, 0
  br i1 %.not298.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ip = and i32 %i.ht, 1024
  %.not299.i = icmp eq i32 %i.ip, 0
  %i.iq = select i1 %.not299.i, i32 1, i32 2      ; 2 uses
  %i.ir = load i32, ptr @hf_ieee80211_eht_sta_profile_info_bitmap, align 4
  %i.is = tail call ptr @proto_tree_add_item(ptr noundef %i.hq, i32 noundef %i.ir, ptr noundef %.034.i, i32 noundef %.3277.i, i32 noundef %i.iq, i32 noundef 0) ; 0 uses
  %i.it = add nuw nsw i32 %.3277.i, %i.iq
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.4278.i = phi i32 [ %i.it, %bb.bc ], [ %.3277.i, %bb.bb ] ; 3 uses
  %i.iu = and i32 %i.ht, 2048
  %.not300.i = icmp eq i32 %i.iu, 0
  br i1 %.not300.i, label %.thread308.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.iv = load i32, ptr @hf_ieee80211_eht_sta_profile_bss_params_change_count, align 4
  %i.iw = tail call ptr @proto_tree_add_item(ptr noundef %i.hq, i32 noundef %i.iv, ptr noundef %.034.i, i32 noundef %.4278.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ix = add nuw nsw i32 %.4278.i, 1
  br label %.thread308.i

bb.bf:                                            ; preds = %bb.ar
  %i.iy = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.034.i, i32 noundef 0)
  %i.iz = and i8 %i.iy, 15
  %i.ja = zext nneg i8 %i.iz to i32               ; 4 uses
  %i.jb = load i32, ptr @hf_ieee80211_eht_profile_sta_control, align 4
  %i.jc = load i32, ptr @ett_eht_multi_link_sta_control, align 4
  %i.jd = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.hf, ptr noundef %.034.i, i32 noundef 0, i32 noundef %i.jb, i32 noundef %i.jc, ptr noundef nonnull @probe_sta_control_hdrs, i32 noundef -2147483648) ; 0 uses
  %i.je = and i16 %i.hd, 16
  %i.jf = icmp eq i16 %i.je, 0
  br i1 %i.jf, label %.preheader.i, label %.thread308.i

.preheader.i:                                     ; preds = %bb.bf
  %i.jg = tail call i32 @tvb_captured_length_remaining(ptr noundef %.034.i, i32 noundef 2)
  %i.jh = icmp ult i32 %i.jg, 2
  br i1 %i.jh, label %.thread308.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.bn
  %.0268323.i = phi i1 [ %.2270.i, %bb.bn ], [ false, %.preheader.i ] ; 2 uses
  %.0271322.i = phi i1 [ %.2273.i, %bb.bn ], [ false, %.preheader.i ] ; 2 uses
  %.5279321.i = phi i32 [ %.7281.i, %bb.bn ], [ 2, %.preheader.i ] ; 7 uses
  %i.ji = tail call i32 @tvb_captured_length_remaining(ptr noundef %.034.i, i32 noundef %.5279321.i)
  %i.jj = icmp ult i32 %i.ji, 2
  br i1 %i.jj, label %.thread316.sink.split, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i
  %i.jk = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.034.i, i32 noundef %.5279321.i)
  switch i8 %i.jk, label %.thread316.sink.split [
    i8 -1, label %bb.bh
    i8 10, label %bb.bj
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.jl = add i32 %.5279321.i, 1                  ; 2 uses
  %i.jm = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.034.i, i32 noundef %i.jl)
  %i.jn = icmp ult i8 %i.jm, 3
  br i1 %i.jn, label %.thread316.sink.split, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jo = add i32 %.5279321.i, 2
  %i.jp = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.034.i, i32 noundef %i.jo)
  %.not293.i = icmp ne i8 %i.jp, 10               ; 2 uses
  %brmerge = select i1 %.not293.i, i1 true, i1 %.0268323.i
  br i1 %brmerge, label %.thread316.sink.split.split.loop.exit, label %bb.bl

bb.bj:                                            ; preds = %bb.bg
  br i1 %.0271322.i, label %.thread316.sink.split, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jq = tail call i32 @add_tagged_field_with_validation(ptr noundef %1, ptr noundef %i.hb, ptr noundef %.034.i, i32 noundef %.5279321.i, i32 noundef 0, ptr noundef nonnull @dissect_multi_link_per_sta.ids, i32 noundef 1, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  %i.jr = add i32 %i.jq, %.5279321.i
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bi
  %i.js = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.034.i, i32 noundef %i.jl) ; 2 uses
  %i.jt = add i32 %.5279321.i, 3                  ; 3 uses
  %i.ju = zext i8 %i.js to i32                    ; 2 uses
  %i.jv = icmp ult i8 %i.js, 2
  br i1 %i.jv, label %bb.bm, label %.lr.ph.preheader.i

bb.bm:                                            ; preds = %bb.bl
  %i.jw = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.hb, ptr noundef nonnull @ei_ieee80211_tag_length, ptr noundef nonnull @.str.10318) ; 0 uses
  br label %dissect_extended_request.exit

.lr.ph.preheader.i:                               ; preds = %bb.bl
  %i.jx = load i32, ptr @hf_ieee80211_tag_extended_request_id, align 4
  %i.jy = tail call ptr @proto_tree_add_item(ptr noundef %i.hb, i32 noundef %i.jx, ptr noundef %.034.i, i32 noundef %i.jt, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.014.i = add nsw i32 %i.ju, -1
  br label %.lr.ph.i287

.lr.ph.i287:                                      ; preds = %.lr.ph.i287, %.lr.ph.preheader.i
  %.017.i = phi i32 [ %.0.i288, %.lr.ph.i287 ], [ %.014.i, %.lr.ph.preheader.i ]
  %.012.in16.i = phi i32 [ %.012.i, %.lr.ph.i287 ], [ %i.jt, %.lr.ph.preheader.i ]
  %.012.i = add i32 %.012.in16.i, 1               ; 2 uses
  %i.jz = load i32, ptr @hf_ieee80211_tag_extended_request_extension, align 4
  %i.ka = tail call ptr @proto_tree_add_item(ptr noundef %i.hb, i32 noundef %i.jz, ptr noundef %.034.i, i32 noundef %.012.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.0.i288 = add nsw i32 %.017.i, -1              ; 2 uses
  %.not.i289 = icmp eq i32 %.0.i288, 0
  br i1 %.not.i289, label %dissect_extended_request.exit, label %.lr.ph.i287, !llvm.loop !1

dissect_extended_request.exit:                    ; preds = %.lr.ph.i287, %bb.bm
  %i.kb = add i32 %i.jt, %i.ju
  br label %bb.bn

bb.bn:                                            ; preds = %dissect_extended_request.exit, %bb.bk
  %.7281.i = phi i32 [ %i.jr, %bb.bk ], [ %i.kb, %dissect_extended_request.exit ] ; 3 uses
  %.2273.i = phi i1 [ true, %bb.bk ], [ %.0271322.i, %dissect_extended_request.exit ]
  %.2270.i = phi i1 [ %.0268323.i, %bb.bk ], [ true, %dissect_extended_request.exit ]
  %i.kc = tail call i32 @tvb_captured_length_remaining(ptr noundef %.034.i, i32 noundef %.7281.i)
  %i.kd = icmp ult i32 %i.kc, 2
  br i1 %i.kd, label %.thread308.i, label %.lr.ph.i, !llvm.loop !236

bb.bo:                                            ; preds = %bb.ar
  %i.ke = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.034.i, i32 noundef 0)
  %i.kf = and i8 %i.ke, 15
  %i.kg = zext nneg i8 %i.kf to i32               ; 3 uses
  %i.kh = load i32, ptr @hf_ieee80211_eht_profile_sta_control, align 4
  %i.ki = load i32, ptr @ett_eht_multi_link_sta_control, align 4
  %i.kj = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.hf, ptr noundef %.034.i, i32 noundef 0, i32 noundef %i.kh, i32 noundef %i.ki, ptr noundef nonnull @reconfig_sta_control_hdrs, i32 noundef -2147483648) ; 0 uses
  %i.kk = icmp slt i32 %i.hc, 3
  br i1 %i.kk, label %.thread316, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kl = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.034.i, i32 noundef 2)
  %i.km = zext i8 %i.kl to i32
  %i.kn = load i32, ptr @ett_eht_multi_link_per_sta_info, align 4
  %i.ko = tail call ptr @proto_tree_add_subtree(ptr noundef %i.hf, ptr noundef %.034.i, i32 noundef 2, i32 noundef %i.km, i32 noundef %i.kn, ptr noundef null, ptr noundef nonnull @.str.698) ; 5 uses
  %i.kp = load i32, ptr @hf_ieee80211_eht_sta_profile_info_len, align 4
  %i.kq = tail call ptr @proto_tree_add_item(ptr noundef %i.ko, i32 noundef %i.kp, ptr noundef %.034.i, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.kr = zext i16 %i.hd to i32                   ; 5 uses
  %i.ks = and i32 %i.kr, 32
  %.not.i = icmp eq i32 %i.ks, 0
  br i1 %.not.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kt = load i32, ptr @hf_ieee80211_eht_sta_profile_info_mac, align 4
  %i.ku = tail call ptr @proto_tree_add_item(ptr noundef %i.ko, i32 noundef %i.kt, ptr noundef %.034.i, i32 noundef 3, i32 noundef 6, i32 noundef 0) ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.9.i = phi i32 [ 9, %bb.bq ], [ 3, %bb.bp ]    ; 3 uses
  %i.kv = and i32 %i.kr, 64
  %.not289.i = icmp eq i32 %i.kv, 0
  br i1 %.not289.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kw = load i32, ptr @hf_ieee80211_eht_sta_profile_removal_timer, align 4
  %i.kx = tail call ptr @proto_tree_add_item(ptr noundef %i.ko, i32 noundef %i.kw, ptr noundef %.034.i, i32 noundef %.9.i, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ky = add nuw nsw i32 %.9.i, 2
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.10.i = phi i32 [ %i.ky, %bb.bs ], [ %.9.i, %bb.br ] ; 5 uses
  %i.kz = and i32 %i.kr, 2048
  %.not290.i = icmp eq i32 %i.kz, 0
  br i1 %.not290.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.la = load i32, ptr @ett_eht_multi_link_reconf_oper_param, align 4
  %i.lb = tail call ptr @proto_tree_add_subtree(ptr noundef %i.ko, ptr noundef %.034.i, i32 noundef %.10.i, i32 noundef 3, i32 noundef %i.la, ptr noundef null, ptr noundef nonnull @.str.10511) ; 2 uses
  %i.lc = load i32, ptr @hf_ieee80211_eht_sta_profile_presence_indi, align 4
  %i.ld = load i32, ptr @ett_eht_multi_link_reconfig_presence_indi, align 4
  %i.le = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.lb, ptr noundef %.034.i, i32 noundef %.10.i, i32 noundef %i.lc, i32 noundef %i.ld, ptr noundef nonnull @reconfig_presence_indi_hdrs, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  %i.lf = add nuw nsw i32 %.10.i, 1
  %i.lg = load i32, ptr @hf_ieee80211_eht_sta_profile_operation_para_info, align 4
  %i.lh = load i32, ptr @ett_eht_multi_link_reconfig_operation_para_info, align 4
  %i.li = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.lb, ptr noundef %.034.i, i32 noundef %i.lf, i32 noundef %i.lg, i32 noundef %i.lh, ptr noundef nonnull @reconfig_operation_para_info_hdrs, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  %i.lj = add nuw nsw i32 %.10.i, 3
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.11.i = phi i32 [ %i.lj, %bb.bu ], [ %.10.i, %bb.bt ] ; 3 uses
  %i.lk = and i32 %i.kr, 8192
  %.not291.i = icmp eq i32 %i.lk, 0
  br i1 %.not291.i, label %.thread308.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ll = and i32 %i.kr, 4096
  %.not292.i = icmp eq i32 %i.ll, 0
  %i.lm = select i1 %.not292.i, i32 1, i32 2      ; 2 uses
  %i.ln = load i32, ptr @hf_ieee80211_eht_sta_profile_info_bitmap, align 4
  %i.lo = tail call ptr @proto_tree_add_item(ptr noundef %i.ko, i32 noundef %i.ln, ptr noundef %.034.i, i32 noundef %.11.i, i32 noundef %i.lm, i32 noundef 0) ; 0 uses
  %i.lp = add nuw nsw i32 %.11.i, %i.lm
  br label %.thread308.i

bb.bx:                                            ; preds = %bb.ar
  %i.lq = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.hf, ptr noundef nonnull @ei_ieee80211_eht_invalid_multi_link, ptr noundef nonnull @.str.10512) ; 0 uses
  br label %.thread308.i

bb.by:                                            ; preds = %bb.ar
  %i.lr = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.034.i, i32 noundef 0)
  %i.ls = and i8 %i.lr, 15
  %i.lt = zext nneg i8 %i.ls to i32
  %i.lu = load i32, ptr @hf_ieee80211_eht_profile_sta_control, align 4
  %i.lv = load i32, ptr @ett_eht_multi_link_sta_control, align 4
  %i.lw = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.hf, ptr noundef %.034.i, i32 noundef 0, i32 noundef %i.lu, i32 noundef %i.lv, ptr noundef nonnull @prio_access_sta_control_hdrs, i32 noundef -2147483648) ; 0 uses
  %i.lx = tail call i32 @tvb_captured_length_remaining(ptr noundef %.034.i, i32 noundef 2) ; 0 uses
  br label %.thread308.i

bb.bz:                                            ; preds = %bb.ar
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.10107, ptr noundef nonnull @.str.10108, i32 noundef 29473) #25
  unreachable

.thread308.i:                                     ; preds = %bb.bn, %bb.by, %bb.bx, %bb.bw, %bb.bv, %.preheader.i, %bb.bf, %bb.be, %bb.bd
  %.1292 = phi i32 [ %i.hi, %bb.bd ], [ %i.hi, %bb.be ], [ %i.ja, %.preheader.i ], [ %i.lt, %bb.by ], [ %i.ja, %bb.bf ], [ %i.kg, %bb.bv ], [ %i.kg, %bb.bw ], [ -1, %bb.bx ], [ %i.ja, %bb.bn ] ; 2 uses
  %.12.i = phi i32 [ %.4278.i, %bb.bd ], [ %i.ix, %bb.be ], [ 2, %.preheader.i ], [ 2, %bb.by ], [ 2, %bb.bf ], [ %.11.i, %bb.bv ], [ %i.lp, %bb.bw ], [ 0, %bb.bx ], [ %.7281.i, %bb.bn ] ; 10 uses
  %i.ly = tail call ptr @wmem_file_scope()
  %i.lz = load i32, ptr @proto_wlan, align 4
  %i.ma = tail call ptr @p_get_proto_data(ptr noundef %i.ly, ptr noundef %1, i32 noundef %i.lz, i32 noundef 40)
  %i.mb = ptrtoint ptr %i.ma to i64
  %i.mc = tail call ptr @wmem_file_scope()
  %i.md = load i32, ptr @proto_wlan, align 4
  %i.me = tail call ptr @p_get_proto_data(ptr noundef %i.mc, ptr noundef %1, i32 noundef %i.md, i32 noundef 41)
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = trunc i64 %i.mf to i32                  ; 2 uses
  %i.mh = icmp slt i32 %.12.i, %i.hc
  br i1 %i.mh, label %bb.ca, label %.thread310.i

bb.ca:                                            ; preds = %.thread308.i
  %i.mi = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.034.i, i32 noundef %.12.i) ; 3 uses
  %i.mj = add nsw i32 %.12.i, 1
  %i.mk = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.034.i, i32 noundef %i.mj) ; 2 uses
  %i.ml = icmp eq i8 %i.mi, -1
  br i1 %i.ml, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.mm = add i32 %.12.i, 2
  %i.mn = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.034.i, i32 noundef %i.mm)
  %i.mo = icmp eq i8 %i.mn, 52
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.0.i286 = phi i1 [ %i.mo, %bb.cb ], [ false, %bb.ca ]
  br i1 %i.fl, label %.thread310.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mp = icmp eq i8 %i.mi, 37
  %i.mq = icmp eq i8 %i.mk, 3
  %or.cond8.i = select i1 %i.mp, i1 %i.mq, i1 false
  br i1 %or.cond8.i, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mr = icmp eq i8 %i.mi, 60
  %i.ms = icmp eq i8 %i.mk, 4
  %i.mt = select i1 %i.mr, i1 true, i1 %.0.i286
  %or.cond.i = select i1 %i.mt, i1 %i.ms, i1 false
  br i1 %or.cond.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call fastcc void @add_ff_cap_info(ptr noundef %i.hf, ptr noundef %.034.i, ptr noundef %1, i32 noundef %.12.i)
  %i.mu = add i32 %.12.i, 2
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  %.13.i = phi i32 [ %i.mu, %bb.cf ], [ %.12.i, %bb.cd ], [ %.12.i, %bb.ce ] ; 3 uses
  %i.mv = and i32 %i.mg, -3
  %or.cond16.i = icmp eq i32 %i.mv, 1
  %or.cond19.i = and i1 %i.fm, %or.cond16.i
  br i1 %or.cond19.i, label %bb.ch, label %.thread310.i

bb.ch:                                            ; preds = %bb.cg
  %i.mw = load i32, ptr @hf_ieee80211_ff_status_code, align 4
  %i.mx = tail call ptr @proto_tree_add_item(ptr noundef %i.hf, i32 noundef %i.mw, ptr noundef %.034.i, i32 noundef %.13.i, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.my = add i32 %.13.i, 2
  br label %.thread310.i

.thread310.i:                                     ; preds = %bb.ch, %bb.cg, %bb.cc, %.thread308.i
  %.15.i = phi i32 [ %.12.i, %.thread308.i ], [ %i.my, %bb.ch ], [ %.13.i, %bb.cg ], [ %.12.i, %bb.cc ] ; 2 uses
  %.not302324.i = icmp slt i32 %.15.i, %i.hc
  br i1 %.not302324.i, label %.lr.ph326.i, label %.loopexit

.lr.ph326.i:                                      ; preds = %.thread310.i, %bb.ci
  %.16325.i = phi i32 [ %i.nh, %bb.ci ], [ %.15.i, %.thread310.i ] ; 3 uses
  %i.mz = add nsw i32 %.16325.i, 1                ; 2 uses
  %i.na = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.034.i, i32 noundef %i.mz)
  %i.nb = zext i8 %i.na to i32
  %i.nc = add i32 %i.mz, %i.nb
  %.not301.i = icmp slt i32 %i.nc, %i.hc
  br i1 %.not301.i, label %bb.ci, label %.thread320

.thread320:                                       ; preds = %.lr.ph326.i
  %i.nd = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.hf, ptr noundef nonnull @ei_ieee80211_eht_invalid_subelement, ptr noundef nonnull @.str.10513) ; 0 uses
  %i.ne = add i32 %.0, %i.gy
  %i.nf = add i32 %i.ne, %i.hc
  br label %.thread310

bb.ci:                                            ; preds = %.lr.ph326.i
  %i.ng = tail call i32 @add_tagged_field_with_validation(ptr noundef %1, ptr noundef %i.hf, ptr noundef %.034.i, i32 noundef %.16325.i, i32 noundef %i.mg, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
  %i.nh = add i32 %i.ng, %.16325.i                ; 2 uses
  %.not302.i = icmp slt i32 %i.nh, %i.hc
  br i1 %.not302.i, label %.lr.ph326.i, label %.loopexit

bb.cj:                                            ; preds = %bb.ag
end_hunk_2
