Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-twamp?download=true
begin_hunk_0_@dissect_twamp_control:bb.a
  %i.bp = sext i32 %i.bo to i64
  %i.bq = call ptr @__memcpy_chk(ptr noundef %i.bi, ptr noundef %i.bm, i64 noundef range(i64 -2147483648, 2147483648) %i.bp, i64 noundef 20) #7, !alias.scope !13 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.br = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 64)
  %i.bs = getelementptr i8, ptr %i.am, i64 4
  store i32 %i.br, ptr %i.bs, align 4
  %i.bt = load ptr, ptr %i.ai, align 8
  %i.bu = call ptr @g_slist_append(ptr noundef %i.bt, ptr noundef %i.am)
  store ptr %i.bu, ptr %i.ai, align 8
  br label %bb.ae

bb.t:                                             ; preds = %bb.h
  store i32 5, ptr %.0325, align 8
  %i.bv = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %bb.t
  %i.bx = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.by = getelementptr i8, ptr %.0325, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call ptr @g_slist_find_custom(ptr noundef %i.bz, ptr noundef null, ptr noundef @find_twamp_session_by_first_accept_waiting) ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.ap, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = load ptr, ptr %i.ca, align 8            ; 3 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 10     ; 2 uses
  store i16 %i.bx, ptr %i.cd, align 2
  %i.ce = load ptr, ptr %i.z, align 8
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = getelementptr i8, ptr %1, i64 232       ; 2 uses
  %i.ch = getelementptr i8, ptr %1, i64 208       ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cc, i64 8      ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 4
  %i.ck = zext i16 %i.cj to i32
  %i.cl = zext i16 %i.bx to i32
  %i.cm = tail call ptr @find_conversation(i32 noundef %i.cf, ptr noundef %i.cg, ptr noundef %i.ch, i32 noundef 3, i32 noundef %i.ck, i32 noundef %i.cl, i32 noundef 0) ; 2 uses
  %i.cn = getelementptr i8, ptr %i.w, i64 8       ; 3 uses
  store ptr %i.cm, ptr %i.cn, align 8
  %i.co = icmp eq ptr %i.cm, null
  br i1 %i.co, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.cp = load ptr, ptr %i.z, align 8
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = load i16, ptr %i.ci, align 4
  %i.cs = zext i16 %i.cr to i32
  %i.ct = load i16, ptr %i.cd, align 2
  %i.cu = zext i16 %i.ct to i32
  %i.cv = tail call ptr @conversation_new(i32 noundef %i.cq, ptr noundef %i.cg, ptr noundef %i.ch, i32 noundef 3, i32 noundef %i.cs, i32 noundef %i.cu, i32 noundef 0) ; 3 uses
  store ptr %i.cv, ptr %i.cn, align 8
  %.not332 = icmp eq ptr %i.cv, null
  br i1 %.not332, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = load i32, ptr @proto_twamp_test, align 4
  tail call void @conversation_add_proto_data(ptr noundef nonnull %i.cv, i32 noundef %i.cw, ptr noundef %i.cc)
  %i.cx = load ptr, ptr %i.cn, align 8
  %i.cy = load ptr, ptr @twamp_test_handle, align 8
  tail call void @conversation_set_dissector(ptr noundef %i.cx, ptr noundef %i.cy)
  br label %bb.ae

bb.y:                                             ; preds = %bb.h
  %i.cz = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  switch i8 %i.cz, label %bb.ae [
    i8 2, label %bb.z
    i8 3, label %bb.aa
    i8 5, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  store i32 6, ptr %.0325, align 8
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  store i32 9, ptr %.0325, align 8
  br label %bb.ae

bb.ab:                                            ; preds = %bb.y
  store i32 4, ptr %.0325, align 8
  br label %bb.ae

bb.ac:                                            ; preds = %bb.h
  store i32 7, ptr %.0325, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.h
  store i32 9, ptr %.0325, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.h, %bb.i, %bb.s, %bb.k, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.ad, %bb.ac, %bb.t, %bb.w, %bb.x, %bb.v, %bb.j, %bb.g
  %i.da = load i32, ptr %.0325, align 8
  %i.db = getelementptr i8, ptr %i.w, i64 4
  store i32 %i.da, ptr %i.db, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.e
  %.0324 = phi ptr [ %i.w, %bb.ae ], [ %i.t, %bb.e ]
  %i.dc = getelementptr i8, ptr %1, i64 8         ; 5 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  call void @col_set_str(ptr noundef %i.dd, i32 noundef 35, ptr noundef @.str.95)
  %i.de = load i32, ptr @proto_twamp_control, align 4
  %i.df = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.de, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.dg = load i32, ptr @ett_twamp_control, align 4
  %i.dh = call ptr @proto_item_add_subtree(ptr noundef %i.df, i32 noundef %i.dg) ; 45 uses
  %i.di = load ptr, ptr %i.dc, align 8
  %i.dj = getelementptr i8, ptr %.0324, i64 4     ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = call ptr @val_to_str_const(i32 noundef %i.dk, ptr noundef @twamp_control_state_vals, ptr noundef @.str.121)
  call void @col_set_str(ptr noundef %i.di, i32 noundef 25, ptr noundef %i.dl)
  %i.dm = load i32, ptr %i.dj, align 4
  switch i32 %i.dm, label %bb.ao [
    i32 1, label %bb.ag
    i32 2, label %bb.ah
    i32 3, label %bb.ai
    i32 4, label %bb.aj
    i32 5, label %bb.ak
    i32 6, label %bb.al
    i32 7, label %bb.am
    i32 9, label %bb.an
  ]

bb.ag:                                            ; preds = %bb.af
  %i.dn = load i32, ptr @hf_twamp_control_unused, align 4
  %i.do = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.dn, ptr noundef %0, i32 noundef 0, i32 noundef 12, i32 noundef 0) ; 0 uses
  %i.dp = load i32, ptr @hf_twamp_control_modes, align 4
  %i.dq = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.dh, i32 noundef %i.dp, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.b)
  %i.dr = load i32, ptr %i.b, align 4             ; 3 uses
  %i.ds = and i32 %i.dr, 1
  %.not333 = icmp eq i32 %i.ds, 0
  %i.dt = select i1 %.not333, ptr @.str.124, ptr @.str.123
  %i.du = and i32 %i.dr, 2
  %.not334 = icmp eq i32 %i.du, 0
  %i.dv = select i1 %.not334, ptr @.str.124, ptr @.str.125
  %i.dw = and i32 %i.dr, 4
  %.not335 = icmp eq i32 %i.dw, 0
  %i.dx = select i1 %.not335, ptr @.str.124, ptr @.str.126
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.dq, ptr noundef @.str.122, ptr noundef nonnull %i.dt, ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dx)
  %i.dy = load i32, ptr @hf_twamp_control_challenge, align 4
  %i.dz = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.dy, ptr noundef %0, i32 noundef 16, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.ea = load i32, ptr @hf_twamp_control_salt, align 4
  %i.eb = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.ea, ptr noundef %0, i32 noundef 32, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.ec = load i32, ptr @hf_twamp_control_count, align 4
  %i.ed = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.ec, ptr noundef %0, i32 noundef 48, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ee = load i32, ptr @hf_twamp_control_mbz1, align 4
  %i.ef = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.ee, ptr noundef %0, i32 noundef 52, i32 noundef 12, i32 noundef 0) ; 0 uses
  br label %bb.ao

bb.ah:                                            ; preds = %bb.af
  %i.eg = load i32, ptr @hf_twamp_control_mode, align 4
  %i.eh = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.eg, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ei = load i32, ptr @hf_twamp_control_keyid, align 4
  %i.ej = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.ei, ptr noundef %0, i32 noundef 4, i32 noundef 40, i32 noundef 0) ; 0 uses
  br label %bb.ao

bb.ai:                                            ; preds = %bb.af
  %i.ek = load i32, ptr @hf_twamp_control_mbz1, align 4
  %i.el = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.ek, ptr noundef %0, i32 noundef 0, i32 noundef 15, i32 noundef 0) ; 0 uses
  %i.em = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 15) ; 2 uses
  %i.en = load i32, ptr @hf_twamp_control_accept, align 4
  %i.eo = zext i8 %i.em to i32                    ; 2 uses
  %i.ep = call ptr @proto_tree_add_uint(ptr noundef %i.dh, i32 noundef %i.en, ptr noundef %0, i32 noundef 15, i32 noundef 1, i32 noundef %i.eo) ; 0 uses
  %i.eq = load ptr, ptr %i.dc, align 8
  %i.er = icmp eq i8 %i.em, 0
  %i.es = select i1 %i.er, ptr @.str.124, ptr @.str.128
  %i.et = getelementptr i8, ptr %1, i64 416
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = call ptr @val_to_str(ptr noundef %i.eu, i32 noundef %i.eo, ptr noundef @twamp_control_accept_vals, ptr noundef @.str.129)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.eq, i32 noundef 25, ptr noundef @.str.127, ptr noundef nonnull %i.es, ptr noundef %i.ev)
  %i.ew = load i32, ptr @hf_twamp_control_iv, align 4
  %i.ex = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.ew, ptr noundef %0, i32 noundef 16, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.ey = load i32, ptr @hf_twamp_control_server_uptime, align 4
  %i.ez = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.ey, ptr noundef %0, i32 noundef 32, i32 noundef 8, i32 noundef 2) ; 0 uses
  %i.fa = load i32, ptr @hf_twamp_control_mbz2, align 4
  %i.fb = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.fa, ptr noundef %0, i32 noundef 40, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %bb.ao

bb.aj:                                            ; preds = %bb.af
  %i.fc = load i32, ptr @hf_twamp_control_command, align 4
  %i.fd = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.fc, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fe = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.ff = and i8 %i.fe, 15                        ; 2 uses
  %i.fg = load i32, ptr @hf_twamp_control_ipvn, align 4
  %i.fh = zext nneg i8 %i.ff to i32
  %i.fi = call ptr @proto_tree_add_uint(ptr noundef %i.dh, i32 noundef %i.fg, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.fh) ; 0 uses
  %i.fj = load i32, ptr @hf_twamp_control_conf_sender, align 4
  %i.fk = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.fj, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fl = load i32, ptr @hf_twamp_control_conf_receiver, align 4
  %i.fm = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.fl, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fn = load i32, ptr @hf_twamp_control_number_of_schedule_slots, align 4
  %i.fo = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.fn, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.fp = load i32, ptr @hf_twamp_control_number_of_packets, align 4
  %i.fq = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.fp, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.fr = load i32, ptr @hf_twamp_control_sender_port, align 4
  %i.fs = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.fr, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ft = load i32, ptr @hf_twamp_control_receiver_port, align 4
  %i.fu = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.ft, ptr noundef %0, i32 noundef 14, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fv = icmp eq i8 %i.ff, 6                     ; 3 uses
  %. = select i1 %i.fv, i32 16, i32 4             ; 2 uses
  %hf_twamp_control_sender_ipv6.val = load i32, ptr @hf_twamp_control_sender_ipv6, align 4
  %hf_twamp_control_sender_ipv4.val = load i32, ptr @hf_twamp_control_sender_ipv4, align 4
  %i.fw = select i1 %i.fv, i32 %hf_twamp_control_sender_ipv6.val, i32 %hf_twamp_control_sender_ipv4.val
  %i.fx = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.fw, ptr noundef %0, i32 noundef 16, i32 noundef %., i32 noundef 0) ; 0 uses
  %hf_twamp_control_receiver_ipv6.val = load i32, ptr @hf_twamp_control_receiver_ipv6, align 4
  %hf_twamp_control_receiver_ipv4.val = load i32, ptr @hf_twamp_control_receiver_ipv4, align 4
  %i.fy = select i1 %i.fv, i32 %hf_twamp_control_receiver_ipv6.val, i32 %hf_twamp_control_receiver_ipv4.val
  %i.fz = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.fy, ptr noundef %0, i32 noundef 32, i32 noundef %., i32 noundef 0) ; 0 uses
  %i.ga = load i32, ptr @hf_twamp_control_sessionid, align 4
  %i.gb = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.ga, ptr noundef %0, i32 noundef 48, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.gc = load i32, ptr @hf_twamp_control_padding_length, align 4
  %i.gd = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.gc, ptr noundef %0, i32 noundef 64, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ge = load i32, ptr @hf_twamp_control_start_time, align 4
  %i.gf = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.ge, ptr noundef %0, i32 noundef 68, i32 noundef 8, i32 noundef 2) ; 0 uses
  %i.gg = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 76)
  %i.gh = zext i32 %i.gg to i64
  store i64 %i.gh, ptr %4, align 8
  %i.gi = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 80)
  %i.gj = uitofp i32 %i.gi to double
  %i.gk = fdiv double %i.gj, f0x40B0C6F7A0B5ED8D
  %i.gl = fptosi double %i.gk to i32
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.gl, ptr %i.gm, align 8
  %i.gn = load i32, ptr @hf_twamp_control_timeout, align 4
  %i.go = call ptr @proto_tree_add_time(ptr noundef %i.dh, i32 noundef %i.gn, ptr noundef %0, i32 noundef 76, i32 noundef 8, ptr noundef nonnull %4) ; 0 uses
  %i.gp = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 84)
  %i.gq = load i32, ptr @hf_twamp_control_type_p, align 4
  %i.gr = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.gq, ptr noundef %0, i32 noundef 84, i32 noundef 4, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gr, ptr noundef @.str.130, i32 noundef %i.gp)
  br label %bb.ao

bb.ak:                                            ; preds = %bb.af
  %i.gs = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.gt = load i32, ptr @hf_twamp_control_accept, align 4
  %i.gu = zext i8 %i.gs to i32                    ; 2 uses
  %i.gv = call ptr @proto_tree_add_uint(ptr noundef %i.dh, i32 noundef %i.gt, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.gu) ; 0 uses
  %i.gw = load ptr, ptr %i.dc, align 8
  %i.gx = icmp eq i8 %i.gs, 0
  %i.gy = select i1 %i.gx, ptr @.str.124, ptr @.str.128
  %i.gz = getelementptr i8, ptr %1, i64 416
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = call ptr @val_to_str(ptr noundef %i.ha, i32 noundef %i.gu, ptr noundef @twamp_control_accept_vals, ptr noundef @.str.129)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.gw, i32 noundef 25, ptr noundef @.str.127, ptr noundef nonnull %i.gy, ptr noundef %i.hb)
  %i.hc = load i32, ptr @hf_twamp_control_receiver_port, align 4
  %i.hd = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.hc, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.he = load i32, ptr @hf_twamp_control_sessionid, align 4
  %i.hf = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.he, ptr noundef %0, i32 noundef 4, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.hg = load i32, ptr @hf_twamp_control_mbz1, align 4
  %i.hh = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.hg, ptr noundef %0, i32 noundef 20, i32 noundef 12, i32 noundef 0) ; 0 uses
  %i.hi = load i32, ptr @hf_twamp_control_hmac, align 4
  %i.hj = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.hi, ptr noundef %0, i32 noundef 32, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.ao

bb.al:                                            ; preds = %bb.af
  %i.hk = load i32, ptr @hf_twamp_control_command, align 4
  %i.hl = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.hk, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.hm = load i32, ptr @hf_twamp_control_mbz1, align 4
  %i.hn = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.hm, ptr noundef %0, i32 noundef 1, i32 noundef 15, i32 noundef 0) ; 0 uses
  %i.ho = load i32, ptr @hf_twamp_control_hmac, align 4
  %i.hp = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.ho, ptr noundef %0, i32 noundef 16, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.ao

bb.am:                                            ; preds = %bb.af
  %i.hq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.hr = load i32, ptr @hf_twamp_control_accept, align 4
  %i.hs = zext i8 %i.hq to i32                    ; 2 uses
  %i.ht = call ptr @proto_tree_add_uint(ptr noundef %i.dh, i32 noundef %i.hr, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.hs) ; 0 uses
  %i.hu = load ptr, ptr %i.dc, align 8
  %i.hv = icmp eq i8 %i.hq, 0
  %i.hw = select i1 %i.hv, ptr @.str.124, ptr @.str.128
  %i.hx = getelementptr i8, ptr %1, i64 416
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = call ptr @val_to_str(ptr noundef %i.hy, i32 noundef %i.hs, ptr noundef @twamp_control_accept_vals, ptr noundef @.str.129)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.hu, i32 noundef 25, ptr noundef @.str.127, ptr noundef nonnull %i.hw, ptr noundef %i.hz)
  %i.ia = load i32, ptr @hf_twamp_control_mbz1, align 4
  %i.ib = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.ia, ptr noundef %0, i32 noundef 1, i32 noundef 15, i32 noundef 0) ; 0 uses
  %i.ic = load i32, ptr @hf_twamp_control_hmac, align 4
  %i.id = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.ic, ptr noundef %0, i32 noundef 16, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.ao

bb.an:                                            ; preds = %bb.af
  %i.ie = load i32, ptr @hf_twamp_control_command, align 4
  %i.if = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.ie, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ig = load i32, ptr @hf_twamp_control_accept, align 4
  %i.ih = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.ig, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ii = load i32, ptr @hf_twamp_control_mbz1, align 4
  %i.ij = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.ii, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ik = load i32, ptr @hf_twamp_control_num_sessions, align 4
  %i.il = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.ik, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.im = load i32, ptr @hf_twamp_control_mbz2, align 4
  %i.in = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.im, ptr noundef %0, i32 noundef 8, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.io = load i32, ptr @hf_twamp_control_hmac, align 4
  %i.ip = call ptr @proto_tree_add_item(ptr noundef %i.dh, i32 noundef %i.io, ptr noundef %0, i32 noundef 16, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.af, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.iq = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.u, %bb.b, %bb.c, %bb.ao
  %.0 = phi i32 [ %i.iq, %bb.ao ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @find_or_create_conversation(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @p_get_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @p_add_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @g_slist_find_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @find_twamp_session_by_sender_port(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 4
  %i.c = load i16, ptr %1, align 2
  %i.d = icmp ne i16 %i.b, %i.c
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @tvb_get_ipv6(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ipv4(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @g_slist_append(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @find_twamp_session_by_first_accept_waiting(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #4 {
bb.a:
  %i.a = load i8, ptr %0, align 4
  %i.b = icmp ne i8 %i.a, 0
  %. = zext i1 %i.b to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_conversation(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_new(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @conversation_set_dissector(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_time(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #6

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_0
