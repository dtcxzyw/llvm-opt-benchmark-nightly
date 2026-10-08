Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ncp?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
begin_hunk_0_@dissect_ncp_common:bb.a
  %i.en = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ei)
  %i.eo = icmp eq i8 %i.en, 36
  %i.ep = load i8, ptr @ncp_echo_file, align 1, !range !6
  %i.eq = trunc nuw i8 %i.ep to i1
  %or.cond8 = select i1 %i.eo, i1 %i.eq, i1 false
  br i1 %or.cond8, label %bb.ab, label %bb.ba

bb.ab:                                            ; preds = %bb.aa
  %i.er = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.el)
  %i.es = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef null, ptr noundef nonnull @ei_ncp_oplock_handle, ptr noundef nonnull @.str.309, i32 noundef %i.er) ; 0 uses
  br label %bb.ba

bb.ac:                                            ; preds = %bb.z
  %i.et = load i32, ptr @hf_lip_echo_magic, align 4
  %i.eu = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.et, ptr noundef %0, i32 noundef %.2, i32 noundef 13, i32 noundef 0) ; 0 uses
  br label %bb.ba

bb.ad:                                            ; preds = %bb.z
  %i.ev = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.am) ; 5 uses
  %i.ew = load i32, ptr @hf_ncp_system_flags, align 4
  %i.ex = zext i8 %i.ev to i32                    ; 2 uses
  %i.ey = call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.ew, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef %i.ex) ; 6 uses
  %i.ez = load i32, ptr @ett_ncp_system_flags, align 4
  %i.fa = call ptr @proto_item_add_subtree(ptr noundef %i.ey, i32 noundef %i.ez) ; 5 uses
  %i.fb = load i32, ptr @hf_ncp_system_flags_abt, align 4
  %i.fc = call ptr @proto_tree_add_item(ptr noundef %i.fa, i32 noundef %i.fb, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fd = and i32 %i.ex, 4
  %.not424 = icmp eq i32 %i.fd, 0
  br i1 %.not424, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ey, ptr noundef nonnull @.str.310)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fe = load i32, ptr @hf_ncp_system_flags_bsy, align 4
  %i.ff = call ptr @proto_tree_add_item(ptr noundef %i.fa, i32 noundef %i.fe, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fg = and i8 %i.ev, 8
  %.not425 = icmp eq i8 %i.fg, 0
  br i1 %.not425, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ey, ptr noundef nonnull @.str.311)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fh = load i32, ptr @hf_ncp_system_flags_eob, align 4
  %i.fi = call ptr @proto_tree_add_item(ptr noundef %i.fa, i32 noundef %i.fh, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fj = and i8 %i.ev, 16
  %.not426 = icmp eq i8 %i.fj, 0
  br i1 %.not426, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ey, ptr noundef nonnull @.str.312)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fk = load i32, ptr @hf_ncp_system_flags_lst, align 4
  %i.fl = call ptr @proto_tree_add_item(ptr noundef %i.fa, i32 noundef %i.fk, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fm = and i8 %i.ev, 64
  %.not427 = icmp eq i8 %i.fm, 0
  br i1 %.not427, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ey, ptr noundef nonnull @.str.313)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fn = load i32, ptr @hf_ncp_system_flags_sys, align 4
  %i.fo = call ptr @proto_tree_add_item(ptr noundef %i.fa, i32 noundef %i.fn, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not428 = icmp sgt i8 %i.ev, -1
  br i1 %.not428, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ey, ptr noundef nonnull @.str.314)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fp = load i32, ptr @hf_ncp_stream_type, align 4
  %i.fq = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.fp, ptr noundef %0, i32 noundef %i.ao, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fr = load i32, ptr @hf_ncp_src_connection, align 4
  %i.fs = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.fr, ptr noundef %0, i32 noundef %i.aq, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ft = load i32, ptr @hf_ncp_dst_connection, align 4
  %i.fu = add nuw nsw i32 %.2, 8
  %i.fv = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.ft, ptr noundef %0, i32 noundef %i.fu, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.fw = load i32, ptr @hf_ncp_packet_seqno, align 4
  %i.fx = add nuw nsw i32 %.2, 12
  %i.fy = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.fw, ptr noundef %0, i32 noundef %i.fx, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.fz = load i32, ptr @hf_ncp_delay_time, align 4
  %i.ga = add nuw nsw i32 %.2, 16
  %i.gb = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.fz, ptr noundef %0, i32 noundef %i.ga, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.gc = add nuw nsw i32 %.2, 20                 ; 2 uses
  %i.gd = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.gc)
  %i.ge = load i32, ptr @hf_ncp_burst_seqno, align 4
  %i.gf = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.ge, ptr noundef %0, i32 noundef %i.gc, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.gg = add nuw nsw i32 %.2, 22                 ; 2 uses
  %i.gh = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.gg)
  %i.gi = load i32, ptr @hf_ncp_ack_seqno, align 4
  %i.gj = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.gi, ptr noundef %0, i32 noundef %i.gg, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.gk = load i32, ptr @hf_ncp_burst_len, align 4
  %i.gl = add nuw nsw i32 %.2, 24
  %i.gm = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.gk, ptr noundef %0, i32 noundef %i.gl, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.gn = add nuw nsw i32 %.2, 28                 ; 2 uses
  %i.go = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.gn) ; 2 uses
  %i.gp = load i32, ptr @hf_ncp_data_offset, align 4
  %i.gq = call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.gp, ptr noundef %0, i32 noundef %i.gn, i32 noundef 4, i32 noundef %i.go) ; 0 uses
  %i.gr = add nuw nsw i32 %.2, 32                 ; 2 uses
  %i.gs = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.gr) ; 7 uses
  %i.gt = load i32, ptr @hf_ncp_data_bytes, align 4
  %i.gu = zext i16 %i.gs to i32
  %i.gv = call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.gt, ptr noundef %0, i32 noundef %i.gr, i32 noundef 2, i32 noundef %i.gu) ; 0 uses
  %i.gw = add nuw nsw i32 %.2, 34                 ; 2 uses
  %i.gx = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.gw) ; 0 uses
  %i.gy = load i32, ptr @hf_ncp_missing_fraglist_count, align 4
  %i.gz = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.gy, ptr noundef %0, i32 noundef %i.gw, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ha = add nuw nsw i32 %.2, 36                 ; 4 uses
  %i.hb = icmp eq i16 %i.gd, %i.gh
  %i.hc = icmp eq i32 %i.go, 0
  %or.cond10 = and i1 %i.hb, %i.hc
  br i1 %or.cond10, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.hd = icmp ult i16 %i.gs, 4
  br i1 %i.hd, label %bb.bu, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.he = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.ha)
  %i.hf = load i32, ptr @hf_ncp_burst_command, align 4
  %i.hg = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.hf, ptr noundef %0, i32 noundef %i.ha, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.hh = and i16 %i.gs, -4                       ; 3 uses
  %i.hi = icmp eq i16 %i.hh, 4
  br i1 %i.hi, label %bb.bu, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hj = add nuw nsw i32 %.2, 40                 ; 2 uses
  %i.hk = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.hj)
  %i.hl = load i32, ptr @hf_ncp_burst_file_handle, align 4
  %i.hm = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.hl, ptr noundef %0, i32 noundef %i.hj, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.hn = and i16 %i.gs, -8
  %i.ho = icmp eq i16 %i.hn, 8
  br i1 %i.ho, label %bb.bu, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hp = add nuw nsw i32 %.2, 44
  %i.hq = load i32, ptr @hf_ncp_burst_reserved, align 4
  %i.hr = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.hq, ptr noundef %0, i32 noundef %i.hp, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.hs = icmp eq i16 %i.hh, 16
  br i1 %i.hs, label %bb.bu, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ht = add nuw nsw i32 %.2, 52                 ; 2 uses
  %i.hu = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.ht) ; 2 uses
  %i.hv = load i32, ptr @hf_ncp_burst_offset, align 4
  %i.hw = call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.hv, ptr noundef %0, i32 noundef %i.ht, i32 noundef 4, i32 noundef %i.hu) ; 0 uses
  %i.hx = icmp eq i16 %i.hh, 20
  br i1 %i.hx, label %bb.bu, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hy = add nuw nsw i32 %.2, 56                 ; 2 uses
  %i.hz = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.hy) ; 2 uses
  %i.ia = load i32, ptr @hf_ncp_burst_len, align 4
  %i.ib = call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.ia, ptr noundef %0, i32 noundef %i.hy, i32 noundef 4, i32 noundef %i.hz) ; 0 uses
  %i.ic = add nuw nsw i32 %.2, 60
  %i.id = add i16 %i.gs, -24
  %i.ie = load ptr, ptr %i.a, align 8
  %i.if = load ptr, ptr %i.dt, align 8
  %i.ig = call ptr @val_to_str(ptr noundef %i.if, i32 noundef %i.he, ptr noundef nonnull @burst_command, ptr noundef nonnull @.str.316)
  call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.ie, i32 noundef 25, ptr noundef nonnull @.str.315, ptr noundef %i.ig, i32 noundef %i.hz, i32 noundef %i.hu, i32 noundef %i.hk)
  br label %bb.ba

bb.au:                                            ; preds = %bb.an
  %i.ih = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.am)
  %i.ii = and i8 %i.ih, 16
  %.not429 = icmp eq i8 %i.ii, 0
  br i1 %.not429, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ij = load ptr, ptr %i.a, align 8
  call void @col_set_str(ptr noundef %i.ij, i32 noundef 25, ptr noundef nonnull @.str.317)
  br label %bb.ba

bb.aw:                                            ; preds = %bb.z
  %i.ik = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.aq)
  %i.il = icmp ugt i32 %i.ik, 15
  br i1 %i.il, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.im = call i32 @tvb_memeql(ptr noundef %0, i32 noundef %i.aq, ptr noundef nonnull @lip_echo_magic, i64 noundef 16)
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.io = load ptr, ptr %i.a, align 8
  call void @col_set_str(ptr noundef %i.io, i32 noundef 25, ptr noundef nonnull @.str.318)
  %i.ip = load i32, ptr @hf_ncp_seq, align 4
  %i.iq = load i8, ptr getelementptr inbounds nuw (i8, ptr @header, i64 2), align 2
  %i.ir = zext i8 %i.iq to i32
  %i.is = call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.ip, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef %i.ir) ; 0 uses
  br label %bb.ba

bb.az:                                            ; preds = %bb.z, %bb.ax, %bb.aw
  %i.it = load i32, ptr @hf_ncp_seq, align 4
  %i.iu = load i8, ptr getelementptr inbounds nuw (i8, ptr @header, i64 2), align 2
  %i.iv = zext i8 %i.iu to i32
  %i.iw = call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.it, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef %i.iv) ; 0 uses
  %i.ix = load i32, ptr @hf_ncp_connection, align 4
  %i.iy = call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.ix, ptr noundef %0, i32 noundef %i.ao, i32 noundef 3, i32 noundef %i.bd) ; 0 uses
  %i.iz = load i32, ptr @hf_ncp_task, align 4
  %i.ja = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.iz, ptr noundef %0, i32 noundef %i.aq, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az, %bb.av, %bb.au, %bb.aa, %bb.ab, %bb.at, %bb.ac
  %.1404 = phi i1 [ true, %bb.ay ], [ false, %bb.az ], [ false, %bb.ab ], [ false, %bb.aa ], [ false, %bb.ac ], [ false, %bb.av ], [ false, %bb.au ], [ false, %bb.at ] ; 2 uses
  %.0398 = phi i32 [ 0, %bb.ay ], [ 0, %bb.az ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ %i.ha, %bb.av ], [ %i.ha, %bb.au ], [ %i.ic, %bb.at ]
  %.0397 = phi i16 [ 0, %bb.ay ], [ 0, %bb.az ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ %i.gs, %bb.av ], [ %i.gs, %bb.au ], [ %i.id, %bb.at ] ; 2 uses
  %i.jb = load i16, ptr @header, align 2          ; 2 uses
  switch i16 %i.jb, label %bb.bt [
    i16 4369, label %bb.bb
    i16 21845, label %bb.bf
    i16 8738, label %bb.bg
    i16 -17477, label %bb.bg
    i16 13107, label %bb.bm
    i16 -26215, label %bb.bn
    i16 15934, label %bb.bo
    i16 30583, label %bb.bq
    i16 19561, label %bb.bs
  ]

bb.bb:                                            ; preds = %bb.ba
  br i1 %.1404, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.jc = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.aq) ; 2 uses
  %i.jd = load i32, ptr @hf_lip_echo_magic, align 4
  %i.je = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.jd, ptr noundef %0, i32 noundef %i.aq, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.jf = icmp ugt i32 %i.jc, 16
  br i1 %i.jf, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jg = load i32, ptr @hf_lip_echo_payload, align 4
  %i.jh = add nuw nsw i32 %.2, 20
  %i.ji = add i32 %i.jc, -16
  %i.jj = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.jg, ptr noundef %0, i32 noundef %i.jh, i32 noundef %i.ji, i32 noundef 0) ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd, %bb.bb
  %i.jk = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.2)
  %i.jl = load i8, ptr getelementptr inbounds nuw (i8, ptr @header, i64 2), align 2
  %i.jm = load i16, ptr @header, align 2
  call void @dissect_ncp_request(ptr noundef %i.jk, ptr noundef %1, i32 noundef %i.bd, i8 noundef zeroext %i.jl, i16 noundef zeroext %i.jm, i1 noundef zeroext %.1404, ptr noundef %i.g)
  br label %bb.bu

bb.bf:                                            ; preds = %bb.ba
  %i.jn = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.2)
  %i.jo = load i8, ptr getelementptr inbounds nuw (i8, ptr @header, i64 2), align 2
  %i.jp = load i16, ptr @header, align 2
  call void @dissect_ncp_request(ptr noundef %i.jn, ptr noundef %1, i32 noundef %i.bd, i8 noundef zeroext %i.jo, i16 noundef zeroext %i.jp, i1 noundef zeroext false, ptr noundef %i.g)
  br label %bb.bu

bb.bg:                                            ; preds = %bb.ba, %bb.ba
  %i.jq = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.2) ; 4 uses
  %i.jr = add nuw nsw i32 %.2, 6
  %i.js = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.jr)
  %i.jt = icmp eq i8 %i.js, 104
  br i1 %i.jt, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.ju = add nuw nsw i32 %.2, 7
  %i.jv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ju)
  %i.jw = load i8, ptr getelementptr inbounds nuw (i8, ptr @header, i64 2), align 2 ; 3 uses
  %i.jx = load i16, ptr @header, align 2          ; 3 uses
  switch i8 %i.jv, label %bb.bk [
    i8 2, label %bb.bi
    i8 1, label %bb.bj
  ]

bb.bi:                                            ; preds = %bb.bh
  call void @dissect_nds_request(ptr noundef %i.jq, ptr noundef %1, i32 noundef %i.bd, i8 noundef zeroext %i.jw, i16 noundef zeroext %i.jx, ptr noundef %i.g)
  br label %bb.bu

bb.bj:                                            ; preds = %bb.bh
  call void @dissect_ping_req(ptr noundef %i.jq, ptr noundef %1, i32 noundef %i.bd, i8 noundef zeroext %i.jw, i16 noundef zeroext %i.jx, ptr noundef %i.g)
  br label %bb.bu

bb.bk:                                            ; preds = %bb.bh
  call void @dissect_ncp_request(ptr noundef %i.jq, ptr noundef %1, i32 noundef %i.bd, i8 noundef zeroext %i.jw, i16 noundef zeroext %i.jx, i1 noundef zeroext false, ptr noundef %i.g)
  br label %bb.bu

bb.bl:                                            ; preds = %bb.bg
  %i.jy = load i8, ptr getelementptr inbounds nuw (i8, ptr @header, i64 2), align 2
  %i.jz = load i16, ptr @header, align 2
  call void @dissect_ncp_request(ptr noundef %i.jq, ptr noundef %1, i32 noundef %i.bd, i8 noundef zeroext %i.jy, i16 noundef zeroext %i.jz, i1 noundef zeroext false, ptr noundef %i.g)
  br label %bb.bu

bb.bm:                                            ; preds = %bb.ba
  %i.ka = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.2)
  %i.kb = load i8, ptr getelementptr inbounds nuw (i8, ptr @header, i64 2), align 2
  %i.kc = load i16, ptr @header, align 2
  call void @nds_defrag(ptr noundef %i.ka, ptr noundef %1, i32 noundef %i.bd, i8 noundef zeroext %i.kb, i16 noundef zeroext %i.kc, ptr noundef %i.g, ptr noundef nonnull @ncp_tap)
  br label %bb.bu

bb.bn:                                            ; preds = %bb.ba
  %i.kd = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.2)
  %i.ke = load i8, ptr getelementptr inbounds nuw (i8, ptr @header, i64 2), align 2
  %i.kf = load i16, ptr @header, align 2
  call void @dissect_ncp_reply(ptr noundef %i.kd, ptr noundef %1, i32 noundef %i.bd, i8 noundef zeroext %i.ke, i16 noundef zeroext %i.kf, ptr noundef %i.g, ptr noundef nonnull @ncp_tap)
  br label %bb.bu

bb.bo:                                            ; preds = %bb.ba
  %i.kg = load i32, ptr @hf_ncp_completion_code, align 4
  %i.kh = add nuw nsw i32 %.2, 6
  %i.ki = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.kg, ptr noundef %0, i32 noundef %i.kh, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.kj = load i32, ptr @hf_ncp_connection_status, align 4
  %i.kk = add nuw nsw i32 %.2, 7
  %i.kl = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.kj, ptr noundef %0, i32 noundef %i.kk, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.km = load i32, ptr @hf_ncp_slot, align 4
  %i.kn = add nuw nsw i32 %.2, 8
  %i.ko = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.km, ptr noundef %0, i32 noundef %i.kn, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.kp = load i32, ptr @hf_ncp_signature_character, align 4
  %i.kq = add nuw nsw i32 %.2, 9
  %i.kr = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.kp, ptr noundef %0, i32 noundef %i.kq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ks = add nuw nsw i32 %.2, 10                 ; 2 uses
  %i.kt = call zeroext i1 @tvb_offset_exists(ptr noundef %0, i32 noundef %i.ks)
  br i1 %i.kt, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  %i.ku = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.ks)
  %i.kv = call i32 @call_data_dissector(ptr noundef %i.ku, ptr noundef %1, ptr noundef %i.g) ; 0 uses
  br label %bb.bu

bb.bq:                                            ; preds = %bb.ba
  %.not430 = icmp eq i16 %.0397, 0
  br i1 %.not430, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kw = zext i16 %.0397 to i32
  %i.kx = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.0398, i32 noundef %i.kw)
  %i.ky = call i32 @call_data_dissector(ptr noundef %i.kx, ptr noundef %1, ptr noundef %i.g) ; 0 uses
  br label %bb.bu

bb.bs:                                            ; preds = %bb.ba
  %i.kz = load i32, ptr @hf_lip_echo_payload, align 4
  %i.la = add nuw nsw i32 %.2, 13
  %i.lb = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.kz, ptr noundef %0, i32 noundef %i.la, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.bu

bb.bt:                                            ; preds = %bb.ba
  %i.lc = zext i16 %i.jb to i32
  %i.ld = add nuw nsw i32 %.2, 6
  %i.le = load ptr, ptr %i.dt, align 8
  %i.lf = call ptr @val_to_str(ptr noundef %i.le, i32 noundef %i.lc, ptr noundef nonnull @ncp_type_vals, ptr noundef nonnull @.str.308)
  %i.lg = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.g, ptr noundef %1, ptr noundef nonnull @ei_ncp_type, ptr noundef %0, i32 noundef %i.ld, ptr noundef nonnull @.str.319, ptr noundef %i.lf) ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.be, %bb.bf, %bb.bm, %bb.bn, %bb.bs, %bb.bt, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bp, %bb.bo, %bb.bq, %bb.br, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @try_val_to_str(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_conversation(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @mncp_hash_insert(ptr noundef %0, i32 noundef range(i32 0, 65536) %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wmem_file_scope()
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.a, i64 noundef 16) #7 ; 4 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 12
  store i8 %2, ptr %i.d, align 4
end_hunk_0
