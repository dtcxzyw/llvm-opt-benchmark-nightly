Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-aruba-ubt?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dissect_ubt:bb.a
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bq, ptr noundef nonnull @.str.173, ptr noundef %i.ee)
  %i.ef = load ptr, ptr %i.g, align 8
  %i.eg = call ptr @tvb_get_ether_name(ptr noundef %0, i32 noundef %i.bz)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ef, i32 noundef 25, ptr noundef nonnull @.str.178, ptr noundef %i.eg)
  %i.eh = add i32 %i.bz, %i.bn
  br label %.loopexit

bb.r:                                             ; preds = %bb.e
  %i.ei = load i32, ptr @hf_ubt_dt_uservlan, align 4
  %i.ej = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.bu, i32 noundef %i.ei, ptr noundef %0, i32 noundef %i.bz, i32 noundef %i.bn, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.ek = load i32, ptr %i.b, align 4             ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bq, ptr noundef nonnull @.str.171, i32 noundef %i.ek, i32 noundef %i.ek)
  %i.el = load ptr, ptr %i.g, align 8
  %i.em = load i32, ptr %i.b, align 4
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.el, i32 noundef 25, ptr noundef nonnull @.str.179, i32 noundef %i.em)
  %i.en = add i32 %i.bz, %i.bn
  br label %.loopexit

bb.s:                                             ; preds = %bb.e
  %i.eo = load i32, ptr %i.a, align 4
  switch i32 %i.eo, label %bb.u [
    i32 1, label %.sink.split
    i32 11, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.t
  %dissect_ubt.ubt_user_flags.sink = phi ptr [ @dissect_ubt.ubt_user_flags, %bb.t ], [ @dissect_ubt.ubt_switch_flags, %bb.s ]
  %i.ep = load i32, ptr @hf_ubt_dt_flags, align 4
  %i.eq = load i32, ptr @ett_ubt_flags, align 4
  %i.er = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.bu, ptr noundef %0, i32 noundef %i.bz, i32 noundef %i.ep, i32 noundef %i.eq, ptr noundef nonnull %dissect_ubt.ubt_user_flags.sink, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.s
  %i.es = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bz)
  %i.et = zext i8 %i.es to i32                    ; 2 uses
  store i32 %i.et, ptr %i.b, align 4
  %i.eu = load ptr, ptr %i.g, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.eu, i32 noundef 25, ptr noundef nonnull @.str.180, i32 noundef %i.et)
  %i.ev = add i32 %i.bz, %i.bn
  br label %.loopexit

bb.v:                                             ; preds = %bb.e
  %i.ew = load i32, ptr @hf_ubt_dt_tunnelmtu, align 4
  %i.ex = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.bu, i32 noundef %i.ew, ptr noundef %0, i32 noundef %i.bz, i32 noundef %i.bn, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.ey = load i32, ptr %i.b, align 4             ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bq, ptr noundef nonnull @.str.171, i32 noundef %i.ey, i32 noundef %i.ey)
  %i.ez = load ptr, ptr %i.g, align 8
  %i.fa = load i32, ptr %i.b, align 4
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ez, i32 noundef 25, ptr noundef nonnull @.str.181, i32 noundef %i.fa)
  %i.fb = add i32 %i.bz, %i.bn
  br label %.loopexit

bb.w:                                             ; preds = %bb.e
  %i.fc = load i32, ptr @hf_ubt_dt_userrole, align 4
  %i.fd = call ptr @proto_tree_add_item(ptr noundef %i.bu, i32 noundef %i.fc, ptr noundef %0, i32 noundef %i.bz, i32 noundef %i.bn, i32 noundef 0) ; 0 uses
  %i.fe = load ptr, ptr %i.r, align 8
  %i.ff = call ptr @tvb_get_string_enc(ptr noundef %i.fe, ptr noundef %0, i32 noundef %i.bz, i32 noundef %i.bn, i32 noundef 0) ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bq, ptr noundef nonnull @.str.173, ptr noundef %i.ff)
  %i.fg = load ptr, ptr %i.g, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.fg, i32 noundef 25, ptr noundef nonnull @.str.182, ptr noundef %i.ff)
  %i.fh = add i32 %i.bz, %i.bn
  br label %.loopexit

bb.x:                                             ; preds = %bb.e
  %i.fi = load i32, ptr @hf_ubt_dt_reasoncode, align 4
  %i.fj = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.bu, i32 noundef %i.fi, ptr noundef %0, i32 noundef %i.bz, i32 noundef %i.bn, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.fk = load i32, ptr %i.b, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bq, ptr noundef nonnull @.str.175, i32 noundef %i.fk)
  %i.fl = load ptr, ptr %i.g, align 8
  %i.fm = load i32, ptr %i.b, align 4
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.fl, i32 noundef 25, ptr noundef nonnull @.str.183, i32 noundef %i.fm)
  %i.fn = add i32 %i.bz, %i.bn
  br label %.loopexit

bb.y:                                             ; preds = %bb.e
  %i.fo = load i32, ptr @hf_ubt_dt_nodelist, align 4
  %i.fp = call ptr @proto_tree_add_item(ptr noundef %i.bu, i32 noundef %i.fo, ptr noundef %0, i32 noundef %i.bz, i32 noundef %i.bn, i32 noundef 0)
  %i.fq = load i32, ptr @ett_ubt_tlv, align 4
  %i.fr = call ptr @proto_item_add_subtree(ptr noundef %i.fp, i32 noundef %i.fq) ; 6 uses
  %i.fs = load i32, ptr @hf_ubt_dt_clustername, align 4
  %i.ft = call ptr @proto_tree_add_item(ptr noundef %i.fr, i32 noundef %i.fs, ptr noundef %0, i32 noundef %i.bz, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.fu = add i32 %.1578610, 35
  %i.fv = load i32, ptr @hf_ubt_dt_clusterenabled, align 4
  %i.fw = call ptr @proto_tree_add_item(ptr noundef %i.fr, i32 noundef %i.fv, ptr noundef %0, i32 noundef %i.fu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fx = add i32 %.1578610, 36
  %i.fy = load i32, ptr @hf_ubt_dt_ssacindex, align 4
  %i.fz = call ptr @proto_tree_add_item(ptr noundef %i.fr, i32 noundef %i.fy, ptr noundef %0, i32 noundef %i.fx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ga = add i32 %.1578610, 37
  %i.gb = load i32, ptr @hf_ubt_dt_reserved, align 4
  %i.gc = call ptr @proto_tree_add_item(ptr noundef %i.fr, i32 noundef %i.gb, ptr noundef %0, i32 noundef %i.ga, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gd = add i32 %.1578610, 38
  %i.ge = load i32, ptr @hf_ubt_dt_uaccount, align 4
  %i.gf = call ptr @proto_tree_add_item(ptr noundef %i.fr, i32 noundef %i.ge, ptr noundef %0, i32 noundef %i.gd, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gg = add i32 %.1578610, 39
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.ae
  %.0574609 = phi i32 [ 0, %bb.y ], [ %i.gl, %bb.ae ]
  %.2579608 = phi i32 [ %i.gg, %bb.y ], [ %.3, %bb.ae ] ; 7 uses
  %i.gh = load i32, ptr @hf_ubt_dt_uaciplist, align 4
  %i.gi = call ptr @proto_tree_add_item(ptr noundef %i.fr, i32 noundef %i.gh, ptr noundef %0, i32 noundef %.2579608, i32 noundef 20, i32 noundef 0) ; 2 uses
  %i.gj = load i32, ptr @ett_ubt_tlv, align 4
  %i.gk = call ptr @proto_item_add_subtree(ptr noundef %i.gi, i32 noundef %i.gj) ; 8 uses
  %i.gl = add nuw nsw i32 %.0574609, 1            ; 3 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gi, ptr noundef nonnull @.str.184, i32 noundef %i.gl)
  %i.gm = load i32, ptr @hf_ubt_ip_type, align 4
  %i.gn = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.gk, i32 noundef %i.gm, ptr noundef %0, i32 noundef %.2579608, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.go = add i32 %.2579608, 2                    ; 4 uses
  %i.gp = load i32, ptr %i.b, align 4
  switch i32 %i.gp, label %bb.ad [
    i32 10, label %bb.aa
    i32 2, label %bb.ab
    i32 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %i.gq = load i32, ptr @hf_ubt_ip_padding, align 4
  %i.gr = call ptr @proto_tree_add_item(ptr noundef %i.gk, i32 noundef %i.gq, ptr noundef %0, i32 noundef %i.go, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.gs = add i32 %.2579608, 4
  %i.gt = load i32, ptr @hf_ubt_dt_uacipv6, align 4
  %i.gu = call ptr @proto_tree_add_item(ptr noundef %i.gk, i32 noundef %i.gt, ptr noundef %0, i32 noundef %i.gs, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.gv = load i32, ptr @hf_ubt_ip_padding, align 4
  %i.gw = call ptr @proto_tree_add_item(ptr noundef %i.gk, i32 noundef %i.gv, ptr noundef %0, i32 noundef %i.go, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.gx = add i32 %.2579608, 4
  %i.gy = load i32, ptr @hf_ubt_dt_uacipv4, align 4
  %i.gz = call ptr @proto_tree_add_item(ptr noundef %i.gk, i32 noundef %i.gy, ptr noundef %0, i32 noundef %i.gx, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ha = add i32 %.2579608, 8
  %i.hb = load i32, ptr @hf_ubt_ip_padding, align 4
  %i.hc = call ptr @proto_tree_add_item(ptr noundef %i.gk, i32 noundef %i.hb, ptr noundef %0, i32 noundef %i.ha, i32 noundef 12, i32 noundef 0) ; 0 uses
  br label %bb.ae

bb.ac:                                            ; preds = %bb.z
  %i.hd = load i32, ptr @hf_ubt_ip_unassigned, align 4
  %i.he = call ptr @proto_tree_add_item(ptr noundef %i.gk, i32 noundef %i.hd, ptr noundef %0, i32 noundef %i.go, i32 noundef 18, i32 noundef 0) ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %i.hf = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.gk, ptr noundef %1, ptr noundef nonnull @ei_ubt_unknown, ptr noundef %0, i32 noundef %i.go, i32 noundef 18, ptr noundef nonnull @.str.177) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.3 = add i32 %.2579608, 20                     ; 2 uses
  %exitcond624.not = icmp eq i32 %i.gl, 12
  br i1 %exitcond624.not, label %.loopexit, label %bb.z, !llvm.loop !6

bb.af:                                            ; preds = %bb.e
  %i.hg = load i32, ptr @hf_ubt_dt_bucketmap, align 4
  %i.hh = call ptr @proto_tree_add_item(ptr noundef %i.bu, i32 noundef %i.hg, ptr noundef %0, i32 noundef %i.bz, i32 noundef %i.bn, i32 noundef 0)
  %i.hi = load i32, ptr @ett_ubt_tlv, align 4
  %i.hj = call ptr @proto_item_add_subtree(ptr noundef %i.hh, i32 noundef %i.hi) ; 16 uses
  %i.hk = load i32, ptr @hf_ubt_dt_timestamp, align 4
  %i.hl = call ptr @proto_tree_add_item(ptr noundef %i.hj, i32 noundef %i.hk, ptr noundef %0, i32 noundef %i.bz, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.hm = add i32 %.1578610, 11
  %i.hn = load i32, ptr @hf_ubt_dt_identifier, align 4
  %i.ho = call ptr @proto_tree_add_item(ptr noundef %i.hj, i32 noundef %i.hn, ptr noundef %0, i32 noundef %i.hm, i32 noundef 33, i32 noundef 0) ; 0 uses
  %i.hp = add i32 %.1578610, 44
  %i.hq = load i32, ptr @hf_ubt_dt_activemap1, align 4 ; 2 uses
  store i32 %i.hq, ptr %i.d, align 16
  %i.hr = load i32, ptr @hf_ubt_dt_activemap2, align 4
  store i32 %i.hr, ptr %i.ao, align 4
  %i.hs = load i32, ptr @hf_ubt_dt_activemap3, align 4
  store i32 %i.hs, ptr %i.ap, align 8
  %i.ht = load i32, ptr @hf_ubt_dt_activemap4, align 4 ; 2 uses
  store i32 %i.ht, ptr %i.aq, align 4
  %i.hu = load i32, ptr @hf_ubt_dt_activemap5, align 4
  store i32 %i.hu, ptr %i.ar, align 16
  %i.hv = load i32, ptr @hf_ubt_dt_activemap6, align 4
  store i32 %i.hv, ptr %i.as, align 4
  %i.hw = load i32, ptr @hf_ubt_dt_activemap7, align 4
  store i32 %i.hw, ptr %i.at, align 8
  %i.hx = load i32, ptr @hf_ubt_dt_activemap8, align 4
  store i32 %i.hx, ptr %i.au, align 4
  br label %bb.ah

bb.ag:                                            ; preds = %bb.am
  %i.hy = load i32, ptr @hf_ubt_dt_standbymap1, align 4 ; 2 uses
  store i32 %i.hy, ptr %i.e, align 16
  %i.hz = load i32, ptr @hf_ubt_dt_standbymap2, align 4
  store i32 %i.hz, ptr %i.av, align 4
  %i.ia = load i32, ptr @hf_ubt_dt_standbymap3, align 4
  store i32 %i.ia, ptr %i.aw, align 8
  %i.ib = load i32, ptr @hf_ubt_dt_standbymap4, align 4 ; 2 uses
  store i32 %i.ib, ptr %i.ax, align 4
  %i.ic = load i32, ptr @hf_ubt_dt_standbymap5, align 4
  store i32 %i.ic, ptr %i.ay, align 16
  %i.id = load i32, ptr @hf_ubt_dt_standbymap6, align 4
  store i32 %i.id, ptr %i.az, align 4
  %i.ie = load i32, ptr @hf_ubt_dt_standbymap7, align 4
  store i32 %i.ie, ptr %i.ba, align 8
  %i.if = load i32, ptr @hf_ubt_dt_standbymap8, align 4
  store i32 %i.if, ptr %i.bb, align 4
  br label %bb.ao

bb.ah:                                            ; preds = %bb.af, %bb.am
  %indvars.iv = phi i64 [ 0, %bb.af ], [ %indvars.iv.next, %bb.am ] ; 5 uses
  %.4594 = phi i32 [ %i.hp, %bb.af ], [ %.5.30, %bb.am ] ; 40 uses
  %i.ig = lshr exact i64 %indvars.iv, 5
  %i.ih = trunc nuw nsw i64 %i.ig to i32
  switch i32 %i.ih, label %bb.al [
    i32 0, label %bb.ai
    i32 1, label %bb.aj
    i32 2, label %bb.aj
    i32 3, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ii = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.4594)
  %i.ij = sext i8 %i.ii to i32
  %i.ik = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.hj, i32 noundef %i.hq, ptr noundef %0, i32 noundef %.4594, i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.185, i32 noundef %i.ij)
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah, %bb.ah
  %.0..sroa_stride648 = lshr exact i64 %indvars.iv, 3
  %.0..0..sroa_idx691 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0..sroa_stride648
  %i.il = load i32, ptr %.0..0..sroa_idx691, align 4
  %i.im = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.4594)
  %i.in = sext i8 %i.im to i32
  %i.io = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.hj, i32 noundef %i.il, ptr noundef %0, i32 noundef %.4594, i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.186, i32 noundef %i.in)
  br label %bb.am

bb.ak:                                            ; preds = %bb.ah
  %i.ip = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.4594)
  %i.iq = sext i8 %i.ip to i32
  %i.ir = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.hj, i32 noundef %i.ht, ptr noundef %0, i32 noundef %.4594, i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.187, i32 noundef %i.iq)
  br label %bb.am

bb.al:                                            ; preds = %bb.ah
  %.0..sroa_stride644 = lshr exact i64 %indvars.iv, 3
  %.0..0..sroa_idx688 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0..sroa_stride644
  %i.is = load i32, ptr %.0..0..sroa_idx688, align 4
  %i.it = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.4594)
  %i.iu = sext i8 %i.it to i32
  %i.iv = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.hj, i32 noundef %i.is, ptr noundef %0, i32 noundef %.4594, i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.188, i32 noundef %i.iu)
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %bb.al, %bb.ak, %bb.ai
  %.0576 = phi ptr [ %i.ik, %bb.ai ], [ %i.io, %bb.aj ], [ %i.ir, %bb.ak ], [ %i.iv, %bb.al ] ; 31 uses
  %.5591 = add i32 %.4594, 1
  %i.iw = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5591)
  %i.ix = sext i8 %i.iw to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.ix)
  %.5 = add i32 %.4594, 2
  %i.iy = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5)
  %i.iz = sext i8 %i.iy to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.iz)
  %.5.1 = add i32 %.4594, 3
  %i.ja = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.1)
  %i.jb = sext i8 %i.ja to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.jb)
  %.5.2 = add i32 %.4594, 4
  %i.jc = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.2)
  %i.jd = sext i8 %i.jc to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.jd)
  %.5.3 = add i32 %.4594, 5
  %i.je = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.3)
  %i.jf = sext i8 %i.je to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.jf)
  %.5.4 = add i32 %.4594, 6
  %i.jg = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.4)
  %i.jh = sext i8 %i.jg to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.jh)
  %.5.5 = add i32 %.4594, 7
  %i.ji = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.5)
  %i.jj = sext i8 %i.ji to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.jj)
  %.5.6 = add i32 %.4594, 8
  %i.jk = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.6)
  %i.jl = sext i8 %i.jk to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.jl)
  %.5.7 = add i32 %.4594, 9
  %i.jm = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.7)
  %i.jn = sext i8 %i.jm to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.jn)
  %.5.8 = add i32 %.4594, 10
  %i.jo = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.8)
  %i.jp = sext i8 %i.jo to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.jp)
  %.5.9 = add i32 %.4594, 11
  %i.jq = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.9)
  %i.jr = sext i8 %i.jq to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.jr)
  %.5.10 = add i32 %.4594, 12
  %i.js = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.10)
  %i.jt = sext i8 %i.js to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.jt)
  %.5.11 = add i32 %.4594, 13
  %i.ju = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.11)
  %i.jv = sext i8 %i.ju to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.jv)
  %.5.12 = add i32 %.4594, 14
  %i.jw = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.12)
  %i.jx = sext i8 %i.jw to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.jx)
  %.5.13 = add i32 %.4594, 15
  %i.jy = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.13)
  %i.jz = sext i8 %i.jy to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.jz)
  %.5.14 = add i32 %.4594, 16
  %i.ka = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.14)
  %i.kb = sext i8 %i.ka to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.kb)
  %.5.15 = add i32 %.4594, 17
  %i.kc = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.15)
  %i.kd = sext i8 %i.kc to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.kd)
  %.5.16 = add i32 %.4594, 18
  %i.ke = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.16)
  %i.kf = sext i8 %i.ke to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.kf)
  %.5.17 = add i32 %.4594, 19
  %i.kg = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.17)
  %i.kh = sext i8 %i.kg to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.kh)
  %.5.18 = add i32 %.4594, 20
  %i.ki = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.18)
  %i.kj = sext i8 %i.ki to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.kj)
  %.5.19 = add i32 %.4594, 21
  %i.kk = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.19)
  %i.kl = sext i8 %i.kk to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.kl)
  %.5.20 = add i32 %.4594, 22
  %i.km = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.20)
  %i.kn = sext i8 %i.km to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.kn)
  %.5.21 = add i32 %.4594, 23
  %i.ko = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.21)
  %i.kp = sext i8 %i.ko to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.kp)
  %.5.22 = add i32 %.4594, 24
  %i.kq = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.22)
  %i.kr = sext i8 %i.kq to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.kr)
  %.5.23 = add i32 %.4594, 25
  %i.ks = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.23)
  %i.kt = sext i8 %i.ks to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.kt)
  %.5.24 = add i32 %.4594, 26
  %i.ku = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.24)
  %i.kv = sext i8 %i.ku to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.kv)
  %.5.25 = add i32 %.4594, 27
  %i.kw = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.25)
  %i.kx = sext i8 %i.kw to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.kx)
  %.5.26 = add i32 %.4594, 28
  %i.ky = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.26)
  %i.kz = sext i8 %i.ky to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.kz)
  %.5.27 = add i32 %.4594, 29
  %i.la = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.27)
  %i.lb = sext i8 %i.la to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.lb)
  %.5.28 = add i32 %.4594, 30
  %i.lc = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.28)
  %i.ld = sext i8 %i.lc to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.ld)
  %.5.29 = add i32 %.4594, 31
  %i.le = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.5.29)
  %i.lf = sext i8 %i.le to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0576, ptr noundef nonnull @.str.188, i32 noundef %i.lf)
  %.5.30 = add i32 %.4594, 32                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.lg = icmp samesign ult i64 %indvars.iv, 224
  br i1 %i.lg, label %bb.ah, label %bb.ag, !llvm.loop !8

bb.an:                                            ; preds = %bb.at
  %i.lh = load i32, ptr @hf_ubt_dt_l2conn1, align 4 ; 2 uses
  store i32 %i.lh, ptr %i.f, align 16
  %i.li = load i32, ptr @hf_ubt_dt_l2conn2, align 4
  store i32 %i.li, ptr %i.bc, align 4
  %i.lj = load i32, ptr @hf_ubt_dt_l2conn3, align 4
  store i32 %i.lj, ptr %i.bd, align 8
  %i.lk = load i32, ptr @hf_ubt_dt_l2conn4, align 4 ; 2 uses
  store i32 %i.lk, ptr %i.be, align 4
  %i.ll = load i32, ptr @hf_ubt_dt_l2conn5, align 4
  store i32 %i.ll, ptr %i.bf, align 16
  %i.lm = load i32, ptr @hf_ubt_dt_l2conn6, align 4
  store i32 %i.lm, ptr %i.bg, align 4
  %i.ln = load i32, ptr @hf_ubt_dt_l2conn7, align 4
  store i32 %i.ln, ptr %i.bh, align 8
  %i.lo = load i32, ptr @hf_ubt_dt_l2conn8, align 4
  store i32 %i.lo, ptr %i.bi, align 4
  br label %bb.av

bb.ao:                                            ; preds = %bb.ag, %bb.at
  %indvars.iv616 = phi i64 [ 0, %bb.ag ], [ %indvars.iv.next617, %bb.at ] ; 5 uses
  %.6599 = phi i32 [ %.5.30, %bb.ag ], [ %.7.30, %bb.at ] ; 40 uses
  %i.lp = lshr exact i64 %indvars.iv616, 5
  %i.lq = trunc nuw nsw i64 %i.lp to i32
  switch i32 %i.lq, label %bb.as [
    i32 0, label %bb.ap
    i32 1, label %bb.aq
    i32 2, label %bb.aq
    i32 3, label %bb.ar
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.lr = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.6599)
  %i.ls = sext i8 %i.lr to i32
  %i.lt = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.hj, i32 noundef %i.hy, ptr noundef %0, i32 noundef %.6599, i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.185, i32 noundef %i.ls)
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao, %bb.ao
  %.0..sroa_stride633 = lshr exact i64 %indvars.iv616, 3
  %.0..0..sroa_idx678 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0..sroa_stride633
  %i.lu = load i32, ptr %.0..0..sroa_idx678, align 4
  %i.lv = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.6599)
  %i.lw = sext i8 %i.lv to i32
  %i.lx = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.hj, i32 noundef %i.lu, ptr noundef %0, i32 noundef %.6599, i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.186, i32 noundef %i.lw)
  br label %bb.at

bb.ar:                                            ; preds = %bb.ao
  %i.ly = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.6599)
  %i.lz = sext i8 %i.ly to i32
  %i.ma = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.hj, i32 noundef %i.ib, ptr noundef %0, i32 noundef %.6599, i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.187, i32 noundef %i.lz)
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  %.0..sroa_stride629 = lshr exact i64 %indvars.iv616, 3
  %.0..0..sroa_idx675 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0..sroa_stride629
  %i.mb = load i32, ptr %.0..0..sroa_idx675, align 4
  %i.mc = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.6599)
  %i.md = sext i8 %i.mc to i32
  %i.me = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.hj, i32 noundef %i.mb, ptr noundef %0, i32 noundef %.6599, i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.188, i32 noundef %i.md)
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.as, %bb.ar, %bb.ap
  %.1 = phi ptr [ %i.lt, %bb.ap ], [ %i.lx, %bb.aq ], [ %i.ma, %bb.ar ], [ %i.me, %bb.as ] ; 31 uses
  %.7596 = add i32 %.6599, 1
  %i.mf = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7596)
  %i.mg = sext i8 %i.mf to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.mg)
  %.7 = add i32 %.6599, 2
  %i.mh = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7)
  %i.mi = sext i8 %i.mh to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.mi)
  %.7.1 = add i32 %.6599, 3
  %i.mj = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.1)
  %i.mk = sext i8 %i.mj to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.mk)
  %.7.2 = add i32 %.6599, 4
  %i.ml = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.2)
  %i.mm = sext i8 %i.ml to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.mm)
  %.7.3 = add i32 %.6599, 5
  %i.mn = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.3)
  %i.mo = sext i8 %i.mn to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.mo)
  %.7.4 = add i32 %.6599, 6
  %i.mp = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.4)
  %i.mq = sext i8 %i.mp to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.mq)
  %.7.5 = add i32 %.6599, 7
  %i.mr = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.5)
  %i.ms = sext i8 %i.mr to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.ms)
  %.7.6 = add i32 %.6599, 8
  %i.mt = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.6)
  %i.mu = sext i8 %i.mt to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.mu)
  %.7.7 = add i32 %.6599, 9
  %i.mv = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.7)
  %i.mw = sext i8 %i.mv to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.mw)
  %.7.8 = add i32 %.6599, 10
  %i.mx = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.8)
  %i.my = sext i8 %i.mx to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.my)
  %.7.9 = add i32 %.6599, 11
  %i.mz = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.9)
  %i.na = sext i8 %i.mz to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.na)
  %.7.10 = add i32 %.6599, 12
  %i.nb = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.10)
  %i.nc = sext i8 %i.nb to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.nc)
  %.7.11 = add i32 %.6599, 13
  %i.nd = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.11)
  %i.ne = sext i8 %i.nd to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.ne)
  %.7.12 = add i32 %.6599, 14
  %i.nf = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.12)
  %i.ng = sext i8 %i.nf to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.ng)
  %.7.13 = add i32 %.6599, 15
  %i.nh = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.13)
  %i.ni = sext i8 %i.nh to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.ni)
  %.7.14 = add i32 %.6599, 16
  %i.nj = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.14)
  %i.nk = sext i8 %i.nj to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.nk)
  %.7.15 = add i32 %.6599, 17
  %i.nl = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.15)
  %i.nm = sext i8 %i.nl to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.nm)
  %.7.16 = add i32 %.6599, 18
  %i.nn = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.16)
  %i.no = sext i8 %i.nn to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.no)
  %.7.17 = add i32 %.6599, 19
  %i.np = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.17)
  %i.nq = sext i8 %i.np to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.nq)
  %.7.18 = add i32 %.6599, 20
  %i.nr = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.18)
  %i.ns = sext i8 %i.nr to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.ns)
  %.7.19 = add i32 %.6599, 21
  %i.nt = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.19)
  %i.nu = sext i8 %i.nt to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.nu)
  %.7.20 = add i32 %.6599, 22
  %i.nv = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.20)
  %i.nw = sext i8 %i.nv to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.nw)
  %.7.21 = add i32 %.6599, 23
  %i.nx = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.21)
  %i.ny = sext i8 %i.nx to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.ny)
  %.7.22 = add i32 %.6599, 24
  %i.nz = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.22)
  %i.oa = sext i8 %i.nz to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.oa)
  %.7.23 = add i32 %.6599, 25
  %i.ob = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.23)
  %i.oc = sext i8 %i.ob to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.oc)
  %.7.24 = add i32 %.6599, 26
  %i.od = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.24)
  %i.oe = sext i8 %i.od to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.oe)
  %.7.25 = add i32 %.6599, 27
  %i.of = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.25)
  %i.og = sext i8 %i.of to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.og)
  %.7.26 = add i32 %.6599, 28
  %i.oh = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.26)
  %i.oi = sext i8 %i.oh to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.oi)
  %.7.27 = add i32 %.6599, 29
  %i.oj = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.27)
  %i.ok = sext i8 %i.oj to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.ok)
  %.7.28 = add i32 %.6599, 30
  %i.ol = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.28)
  %i.om = sext i8 %i.ol to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.om)
  %.7.29 = add i32 %.6599, 31
  %i.on = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.7.29)
  %i.oo = sext i8 %i.on to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1, ptr noundef nonnull @.str.188, i32 noundef %i.oo)
  %.7.30 = add i32 %.6599, 32                     ; 2 uses
  %indvars.iv.next617 = add nuw nsw i64 %indvars.iv616, 32
  %i.op = icmp samesign ult i64 %indvars.iv616, 224
  br i1 %i.op, label %bb.ao, label %bb.an, !llvm.loop !9

bb.au:                                            ; preds = %bb.ba
  %i.oq = load i32, ptr @hf_ubt_dt_uaccount, align 4
  %i.or = call ptr @proto_tree_add_item(ptr noundef %i.hj, i32 noundef %i.oq, ptr noundef %0, i32 noundef %.9.30, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.os = add i32 %.8604, 33
  br label %bb.bb

bb.av:                                            ; preds = %bb.an, %bb.ba
  %indvars.iv620 = phi i64 [ 0, %bb.an ], [ %indvars.iv.next621, %bb.ba ] ; 5 uses
  %.8604 = phi i32 [ %.7.30, %bb.an ], [ %.9.30, %bb.ba ] ; 41 uses
  %i.ot = lshr exact i64 %indvars.iv620, 5
  %i.ou = trunc nuw nsw i64 %i.ot to i32
  switch i32 %i.ou, label %bb.az [
    i32 0, label %bb.aw
    i32 1, label %bb.ax
    i32 2, label %bb.ax
    i32 3, label %bb.ay
  ]

bb.aw:                                            ; preds = %bb.av
  %i.ov = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.8604)
  %i.ow = sext i8 %i.ov to i32
  %i.ox = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.hj, i32 noundef %i.lh, ptr noundef %0, i32 noundef %.8604, i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.185, i32 noundef %i.ow)
  br label %bb.ba

bb.ax:                                            ; preds = %bb.av, %bb.av
  %.0..sroa_stride625 = lshr exact i64 %indvars.iv620, 3
  %.0..0..sroa_idx672 = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0..sroa_stride625
  %i.oy = load i32, ptr %.0..0..sroa_idx672, align 4
  %i.oz = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.8604)
  %i.pa = sext i8 %i.oz to i32
  %i.pb = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.hj, i32 noundef %i.oy, ptr noundef %0, i32 noundef %.8604, i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.186, i32 noundef %i.pa)
  br label %bb.ba

bb.ay:                                            ; preds = %bb.av
  %i.pc = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.8604)
  %i.pd = sext i8 %i.pc to i32
  %i.pe = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.hj, i32 noundef %i.lk, ptr noundef %0, i32 noundef %.8604, i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.187, i32 noundef %i.pd)
  br label %bb.ba

bb.az:                                            ; preds = %bb.av
  %.0..sroa_stride = lshr exact i64 %indvars.iv620, 3
  %.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0..sroa_stride
  %i.pf = load i32, ptr %.0..0..sroa_idx, align 4
  %i.pg = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.8604)
  %i.ph = sext i8 %i.pg to i32
  %i.pi = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.hj, i32 noundef %i.pf, ptr noundef %0, i32 noundef %.8604, i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.188, i32 noundef %i.ph)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ax, %bb.az, %bb.ay, %bb.aw
  %.2 = phi ptr [ %i.ox, %bb.aw ], [ %i.pb, %bb.ax ], [ %i.pe, %bb.ay ], [ %i.pi, %bb.az ] ; 31 uses
  %.9601 = add i32 %.8604, 1
  %i.pj = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9601)
  %i.pk = sext i8 %i.pj to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.pk)
  %.9 = add i32 %.8604, 2
  %i.pl = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9)
  %i.pm = sext i8 %i.pl to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.pm)
  %.9.1 = add i32 %.8604, 3
  %i.pn = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.1)
  %i.po = sext i8 %i.pn to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.po)
  %.9.2 = add i32 %.8604, 4
  %i.pp = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.2)
  %i.pq = sext i8 %i.pp to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.pq)
  %.9.3 = add i32 %.8604, 5
  %i.pr = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.3)
  %i.ps = sext i8 %i.pr to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.ps)
  %.9.4 = add i32 %.8604, 6
  %i.pt = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.4)
  %i.pu = sext i8 %i.pt to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.pu)
  %.9.5 = add i32 %.8604, 7
  %i.pv = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.5)
  %i.pw = sext i8 %i.pv to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.pw)
  %.9.6 = add i32 %.8604, 8
  %i.px = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.6)
  %i.py = sext i8 %i.px to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.py)
  %.9.7 = add i32 %.8604, 9
  %i.pz = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.7)
  %i.qa = sext i8 %i.pz to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.qa)
  %.9.8 = add i32 %.8604, 10
  %i.qb = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.8)
  %i.qc = sext i8 %i.qb to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.qc)
  %.9.9 = add i32 %.8604, 11
  %i.qd = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.9)
  %i.qe = sext i8 %i.qd to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.qe)
  %.9.10 = add i32 %.8604, 12
  %i.qf = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.10)
  %i.qg = sext i8 %i.qf to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.qg)
  %.9.11 = add i32 %.8604, 13
  %i.qh = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.11)
  %i.qi = sext i8 %i.qh to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.qi)
  %.9.12 = add i32 %.8604, 14
  %i.qj = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.12)
  %i.qk = sext i8 %i.qj to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.qk)
  %.9.13 = add i32 %.8604, 15
  %i.ql = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.13)
  %i.qm = sext i8 %i.ql to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.qm)
  %.9.14 = add i32 %.8604, 16
  %i.qn = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.14)
  %i.qo = sext i8 %i.qn to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.qo)
  %.9.15 = add i32 %.8604, 17
  %i.qp = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.15)
  %i.qq = sext i8 %i.qp to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.qq)
  %.9.16 = add i32 %.8604, 18
  %i.qr = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.16)
  %i.qs = sext i8 %i.qr to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.qs)
  %.9.17 = add i32 %.8604, 19
  %i.qt = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.17)
  %i.qu = sext i8 %i.qt to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.qu)
  %.9.18 = add i32 %.8604, 20
  %i.qv = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.18)
  %i.qw = sext i8 %i.qv to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.qw)
  %.9.19 = add i32 %.8604, 21
  %i.qx = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.19)
  %i.qy = sext i8 %i.qx to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.qy)
  %.9.20 = add i32 %.8604, 22
  %i.qz = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.20)
  %i.ra = sext i8 %i.qz to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.ra)
  %.9.21 = add i32 %.8604, 23
  %i.rb = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.21)
  %i.rc = sext i8 %i.rb to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.rc)
  %.9.22 = add i32 %.8604, 24
  %i.rd = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.22)
  %i.re = sext i8 %i.rd to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.re)
  %.9.23 = add i32 %.8604, 25
  %i.rf = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.23)
  %i.rg = sext i8 %i.rf to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.rg)
  %.9.24 = add i32 %.8604, 26
  %i.rh = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.24)
  %i.ri = sext i8 %i.rh to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.ri)
  %.9.25 = add i32 %.8604, 27
  %i.rj = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.25)
  %i.rk = sext i8 %i.rj to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.rk)
  %.9.26 = add i32 %.8604, 28
  %i.rl = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.26)
  %i.rm = sext i8 %i.rl to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.rm)
  %.9.27 = add i32 %.8604, 29
  %i.rn = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.27)
  %i.ro = sext i8 %i.rn to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.ro)
  %.9.28 = add i32 %.8604, 30
  %i.rp = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.28)
  %i.rq = sext i8 %i.rp to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.rq)
  %.9.29 = add i32 %.8604, 31
  %i.rr = call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %.9.29)
  %i.rs = sext i8 %i.rr to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.2, ptr noundef nonnull @.str.188, i32 noundef %i.rs)
  %.9.30 = add i32 %.8604, 32                     ; 2 uses
  %indvars.iv.next621 = add nuw nsw i64 %indvars.iv620, 32
  %i.rt = icmp samesign ult i64 %indvars.iv620, 224
  br i1 %i.rt, label %bb.av, label %bb.au, !llvm.loop !10

bb.bb:                                            ; preds = %bb.au, %bb.bg
  %.0567607 = phi i32 [ 0, %bb.au ], [ %i.ry, %bb.bg ]
  %.10606 = phi i32 [ %i.os, %bb.au ], [ %.11, %bb.bg ] ; 7 uses
  %i.ru = load i32, ptr @hf_ubt_dt_uaciplist, align 4
  %i.rv = call ptr @proto_tree_add_item(ptr noundef %i.hj, i32 noundef %i.ru, ptr noundef %0, i32 noundef %.10606, i32 noundef 20, i32 noundef 0) ; 2 uses
  %i.rw = load i32, ptr @ett_ubt_tlv, align 4
  %i.rx = call ptr @proto_item_add_subtree(ptr noundef %i.rv, i32 noundef %i.rw) ; 8 uses
  %i.ry = add nuw nsw i32 %.0567607, 1            ; 3 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.rv, ptr noundef nonnull @.str.184, i32 noundef %i.ry)
  %i.rz = load i32, ptr @hf_ubt_ip_type, align 4
  %i.sa = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.rx, i32 noundef %i.rz, ptr noundef %0, i32 noundef %.10606, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.sb = add i32 %.10606, 2                      ; 4 uses
  %i.sc = load i32, ptr %i.b, align 4
  switch i32 %i.sc, label %bb.bf [
    i32 10, label %bb.bc
    i32 2, label %bb.bd
    i32 0, label %bb.be
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.sd = load i32, ptr @hf_ubt_ip_padding, align 4
  %i.se = call ptr @proto_tree_add_item(ptr noundef %i.rx, i32 noundef %i.sd, ptr noundef %0, i32 noundef %i.sb, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sf = add i32 %.10606, 4
  %i.sg = load i32, ptr @hf_ubt_dt_uacipv6, align 4
  %i.sh = call ptr @proto_tree_add_item(ptr noundef %i.rx, i32 noundef %i.sg, ptr noundef %0, i32 noundef %i.sf, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.bg

bb.bd:                                            ; preds = %bb.bb
  %i.si = load i32, ptr @hf_ubt_ip_padding, align 4
  %i.sj = call ptr @proto_tree_add_item(ptr noundef %i.rx, i32 noundef %i.si, ptr noundef %0, i32 noundef %i.sb, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sk = add i32 %.10606, 4
  %i.sl = load i32, ptr @hf_ubt_dt_uacipv4, align 4
  %i.sm = call ptr @proto_tree_add_item(ptr noundef %i.rx, i32 noundef %i.sl, ptr noundef %0, i32 noundef %i.sk, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.sn = add i32 %.10606, 8
  %i.so = load i32, ptr @hf_ubt_ip_padding, align 4
  %i.sp = call ptr @proto_tree_add_item(ptr noundef %i.rx, i32 noundef %i.so, ptr noundef %0, i32 noundef %i.sn, i32 noundef 12, i32 noundef 0) ; 0 uses
  br label %bb.bg

bb.be:                                            ; preds = %bb.bb
  %i.sq = load i32, ptr @hf_ubt_ip_unassigned, align 4
  %i.sr = call ptr @proto_tree_add_item(ptr noundef %i.rx, i32 noundef %i.sq, ptr noundef %0, i32 noundef %i.sb, i32 noundef 18, i32 noundef 0) ; 0 uses
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb
  %i.ss = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.rx, ptr noundef %1, ptr noundef nonnull @ei_ubt_unknown, ptr noundef %0, i32 noundef %i.sb, i32 noundef 18, ptr noundef nonnull @.str.177) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bc, %bb.bd, %bb.be, %bb.bf
  %.11 = add i32 %.10606, 20                      ; 2 uses
  %exitcond623.not = icmp eq i32 %i.ry, 12
  br i1 %exitcond623.not, label %.loopexit, label %bb.bb, !llvm.loop !11

bb.bh:                                            ; preds = %bb.e
  %i.st = load i32, ptr @hf_ubt_dt_status, align 4
  %i.su = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.bu, i32 noundef %i.st, ptr noundef %0, i32 noundef %i.bz, i32 noundef %i.bn, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.sv = load i8, ptr %i.c, align 1, !range !12, !noundef !13 ; 2 uses
  %i.sw = trunc nuw i8 %i.sv to i1
  %i.sx = zext nneg i8 %i.sv to i32
  %i.sy = select i1 %i.sw, ptr @.str.190, ptr @.str.191
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bq, ptr noundef nonnull @.str.189, i32 noundef %i.sx, ptr noundef nonnull %i.sy)
  %i.sz = load ptr, ptr %i.g, align 8
  %i.ta = load i8, ptr %i.c, align 1, !range !12, !noundef !13 ; 2 uses
  %i.tb = trunc nuw i8 %i.ta to i1
  %i.tc = zext nneg i8 %i.ta to i32
end_hunk_0
