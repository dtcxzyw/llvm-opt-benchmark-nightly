Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/msg_rng_rsp?download=true
begin_hunk_0_@dissect_mac_mgmt_msg_rng_rsp_decoder:bb.a
  %i.cg = load i32, ptr @hf_rng_rsp_ho_process_optimization_3, align 4
  %i.ch = call ptr @proto_tree_add_item(ptr noundef %i.cb, i32 noundef %i.cg, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ci = load i32, ptr @hf_rng_rsp_ho_process_optimization_4, align 4
  %i.cj = call ptr @proto_tree_add_item(ptr noundef %i.cb, i32 noundef %i.ci, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ck = load i32, ptr @hf_rng_rsp_ho_process_optimization_5, align 4
  %i.cl = call ptr @proto_tree_add_item(ptr noundef %i.cb, i32 noundef %i.ck, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cm = load i32, ptr @hf_rng_rsp_ho_process_optimization_6, align 4
  %i.cn = call ptr @proto_tree_add_item(ptr noundef %i.cb, i32 noundef %i.cm, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.co = load i32, ptr @hf_rng_rsp_ho_process_optimization_7, align 4
  %i.cp = call ptr @proto_tree_add_item(ptr noundef %i.cb, i32 noundef %i.co, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cq = load i32, ptr @hf_rng_rsp_ho_process_optimization_8, align 4
  %i.cr = call ptr @proto_tree_add_item(ptr noundef %i.cb, i32 noundef %i.cq, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cs = load i32, ptr @hf_rng_rsp_ho_process_optimization_9, align 4
  %i.ct = call ptr @proto_tree_add_item(ptr noundef %i.cb, i32 noundef %i.cs, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cu = load i32, ptr @hf_rng_rsp_ho_process_optimization_10, align 4
  %i.cv = call ptr @proto_tree_add_item(ptr noundef %i.cb, i32 noundef %i.cu, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cw = load i32, ptr @hf_rng_rsp_ho_process_optimization_11, align 4
  %i.cx = call ptr @proto_tree_add_item(ptr noundef %i.cb, i32 noundef %i.cw, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cy = load i32, ptr @hf_rng_rsp_ho_process_optimization_12, align 4
  %i.cz = call ptr @proto_tree_add_item(ptr noundef %i.cb, i32 noundef %i.cy, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.da = load i32, ptr @hf_rng_rsp_ho_process_optimization_13, align 4
  %i.db = call ptr @proto_tree_add_item(ptr noundef %i.cb, i32 noundef %i.da, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dc = load i32, ptr @hf_rng_rsp_ho_process_optimization_14, align 4
  %i.dd = call ptr @proto_tree_add_item(ptr noundef %i.cb, i32 noundef %i.dc, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.de = load i32, ptr @hf_rng_rsp_ho_process_optimization_15, align 4
  %i.df = call ptr @proto_tree_add_item(ptr noundef %i.cb, i32 noundef %i.de, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.y:                                             ; preds = %bb.d
  %i.dg = load i32, ptr @ett_rng_rsp_message_tree, align 4
  %i.dh = load i32, ptr @proto_mac_mgmt_msg_rng_rsp_decoder, align 4
  %i.di = call ptr @add_protocol_subtree(ptr noundef nonnull %4, i32 noundef %i.dg, ptr noundef %i.e, i32 noundef %i.dh, ptr noundef %0, i32 noundef %.0320352, i32 noundef %i.l, ptr noundef @.str.181)
  %i.dj = load ptr, ptr @sbc_rsp_handle, align 8
  %i.dk = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.u, i32 noundef %i.l)
  %i.dl = call i32 @call_dissector(ptr noundef %i.dj, ptr noundef %i.dk, ptr noundef %1, ptr noundef %i.di) ; 0 uses
  br label %.loopexit

bb.z:                                             ; preds = %bb.d
  %i.dm = load i32, ptr @ett_rng_rsp_message_tree, align 4
  %i.dn = load i32, ptr @proto_mac_mgmt_msg_rng_rsp_decoder, align 4
  %i.do = call ptr @add_protocol_subtree(ptr noundef nonnull %4, i32 noundef %i.dm, ptr noundef %i.e, i32 noundef %i.dn, ptr noundef %0, i32 noundef %.0320352, i32 noundef %i.l, ptr noundef @.str.182)
  %i.dp = load ptr, ptr @reg_rsp_handle, align 8
  %i.dq = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.u, i32 noundef %i.l)
  %i.dr = call i32 @call_dissector(ptr noundef %i.dp, ptr noundef %i.dq, ptr noundef %1, ptr noundef %i.do) ; 0 uses
  br label %.loopexit

bb.aa:                                            ; preds = %bb.d
  %i.ds = load i32, ptr @hf_rng_rsp_dl_op_burst_profile_ofdma, align 4
  %i.dt = call ptr @add_tlv_subtree(ptr noundef nonnull %4, ptr noundef %i.e, i32 noundef %i.ds, ptr noundef %0, i32 noundef %.0320352, i32 noundef 0)
  %i.du = load i32, ptr @ett_rng_rsp_message_tree, align 4
  %i.dv = call ptr @proto_item_add_subtree(ptr noundef %i.dt, i32 noundef %i.du) ; 3 uses
  %i.dw = load i32, ptr @hf_rng_rsp_least_robust_diuc, align 4
  %i.dx = call ptr @proto_tree_add_item(ptr noundef %i.dv, i32 noundef %i.dw, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dy = load i32, ptr @hf_rng_rsp_repetition_coding_indication, align 4
  %i.dz = call ptr @proto_tree_add_item(ptr noundef %i.dv, i32 noundef %i.dy, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ea = load i32, ptr @hf_rng_rsp_config_change_count_of_dcd, align 4
  %i.eb = call ptr @proto_tree_add_item(ptr noundef %i.dv, i32 noundef %i.ea, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.ab:                                            ; preds = %bb.d
  %i.ec = load i32, ptr @hf_rng_rsp_ho_id, align 4
  %i.ed = call ptr @add_tlv_subtree(ptr noundef nonnull %4, ptr noundef %i.e, i32 noundef %i.ec, ptr noundef %0, i32 noundef %.0320352, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.ac:                                            ; preds = %bb.d
  %i.ee = load i32, ptr @hf_rng_rsp_location_update_response, align 4
  %i.ef = call ptr @add_tlv_subtree(ptr noundef nonnull %4, ptr noundef %i.e, i32 noundef %i.ee, ptr noundef %0, i32 noundef %.0320352, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.ad:                                            ; preds = %bb.d
  %i.eg = load i32, ptr @hf_rng_rsp_paging_information, align 4
  %i.eh = call ptr @add_tlv_subtree(ptr noundef nonnull %4, ptr noundef %i.e, i32 noundef %i.eg, ptr noundef %0, i32 noundef %.0320352, i32 noundef 0)
  %i.ei = load i32, ptr @ett_rng_rsp_message_tree, align 4
  %i.ej = call ptr @proto_item_add_subtree(ptr noundef %i.eh, i32 noundef %i.ei) ; 3 uses
  %i.ek = load i32, ptr @hf_rng_rsp_paging_cycle, align 4
  %i.el = call ptr @proto_tree_add_item(ptr noundef %i.ej, i32 noundef %i.ek, ptr noundef %0, i32 noundef %i.u, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.em = load i32, ptr @hf_rng_rsp_paging_offset, align 4
  %i.en = add i32 %i.u, 2
  %i.eo = call ptr @proto_tree_add_item(ptr noundef %i.ej, i32 noundef %i.em, ptr noundef %0, i32 noundef %i.en, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ep = load i32, ptr @hf_rng_rsp_paging_group_id, align 4
  %i.eq = add i32 %i.u, 3
  %i.er = call ptr @proto_tree_add_item(ptr noundef %i.ej, i32 noundef %i.ep, ptr noundef %0, i32 noundef %i.eq, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.ae:                                            ; preds = %bb.d
  %i.es = load i32, ptr @ett_rng_rsp_message_tree, align 4
  %i.et = load i32, ptr @proto_mac_mgmt_msg_rng_rsp_decoder, align 4
  %i.eu = call ptr @add_protocol_subtree(ptr noundef nonnull %4, i32 noundef %i.es, ptr noundef %i.e, i32 noundef %i.et, ptr noundef %0, i32 noundef %.0320352, i32 noundef %i.l, ptr noundef @.str.183)
  call void @dissect_power_saving_class(ptr noundef %i.eu, i32 noundef 27, ptr noundef %0, i32 noundef %i.l, ptr noundef %1, i32 noundef %i.u)
  br label %.loopexit

bb.af:                                            ; preds = %bb.d
  %i.ev = load i32, ptr @ett_rng_rsp_message_tree, align 4
  %i.ew = load i32, ptr @proto_mac_mgmt_msg_rng_rsp_decoder, align 4
  %i.ex = call ptr @add_protocol_subtree(ptr noundef nonnull %4, i32 noundef %i.ev, ptr noundef %i.e, i32 noundef %i.ew, ptr noundef %0, i32 noundef %.0320352, i32 noundef %i.l, ptr noundef @.str.184)
  %i.ey = icmp ult i32 %i.u, %i.l
  br i1 %i.ey, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.af, %bb.ah
  %.0346 = phi i32 [ %i.fl, %bb.ah ], [ %i.u, %bb.af ] ; 3 uses
  %i.ez = call i32 @init_tlv_info(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %.0346) ; 0 uses
  %i.fa = call i32 @get_tlv_type(ptr noundef nonnull %5) ; 2 uses
  %i.fb = call i32 @get_tlv_length(ptr noundef nonnull %5) ; 2 uses
  %i.fc = add i32 %i.fb, -64001
  %or.cond9 = icmp ult i32 %i.fc, -64000
  br i1 %or.cond9, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph
  %i.fd = load ptr, ptr %i.i, align 8
  call void @col_append_sep_str(ptr noundef %i.fd, i32 noundef 25, ptr noundef null, ptr noundef @.str.176)
  %i.fe = load i32, ptr @hf_rng_invalid_tlv, align 4
  %i.ff = sub i32 %i.a, %i.u
  %i.fg = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.fe, ptr noundef %0, i32 noundef %i.u, i32 noundef %i.ff, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.ah:                                            ; preds = %.lr.ph
  %i.fh = call i32 @get_tlv_value_offset(ptr noundef nonnull %5)
  %switch.selectcmp = icmp eq i32 %i.fa, 2
  %switch.selectcmp395 = icmp eq i32 %i.fa, 1
  %hf_rng_rsp_bs_random.val = load i32, ptr @hf_rng_rsp_bs_random, align 4
  %hf_rng_rsp_akid.val = load i32, ptr @hf_rng_rsp_akid, align 4
  %hf_tlv_type.val = load i32, ptr @hf_tlv_type, align 4
  %switch.select.val = select i1 %switch.selectcmp, i32 %hf_rng_rsp_akid.val, i32 %hf_tlv_type.val
  %i.fi = select i1 %switch.selectcmp395, i32 %hf_rng_rsp_bs_random.val, i32 %switch.select.val
  %i.fj = call ptr @add_tlv_subtree(ptr noundef nonnull %5, ptr noundef %i.ex, i32 noundef %i.fi, ptr noundef %0, i32 noundef %.0346, i32 noundef 0) ; 0 uses
  %i.fk = add i32 %i.fb, %.0346
  %i.fl = add i32 %i.fk, %i.fh                    ; 2 uses
  %i.fm = icmp ult i32 %i.fl, %i.l
  br i1 %i.fm, label %.lr.ph, label %.loopexit, !llvm.loop !6

bb.ai:                                            ; preds = %bb.d
  %i.fn = load i32, ptr @ett_mac_mgmt_msg_rng_rsp_decoder, align 4
  %i.fo = load i32, ptr @proto_mac_mgmt_msg_rng_rsp_decoder, align 4
  %i.fp = call ptr @add_protocol_subtree(ptr noundef nonnull %4, i32 noundef %i.fn, ptr noundef %i.e, i32 noundef %i.fo, ptr noundef %0, i32 noundef %.0320352, i32 noundef %i.l, ptr noundef @.str.185)
  %i.fq = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.u, i32 noundef %i.l)
  call void @wimax_service_flow_encodings_decoder(ptr noundef %i.fq, ptr noundef %1, ptr noundef %i.fp)
  br label %.loopexit

bb.aj:                                            ; preds = %bb.d
  %i.fr = load i32, ptr @ett_mac_mgmt_msg_rng_rsp_decoder, align 4
  %i.fs = load i32, ptr @proto_mac_mgmt_msg_rng_rsp_decoder, align 4
  %i.ft = call ptr @add_protocol_subtree(ptr noundef nonnull %4, i32 noundef %i.fr, ptr noundef %i.e, i32 noundef %i.fs, ptr noundef %0, i32 noundef %.0320352, i32 noundef %i.l, ptr noundef @.str.186)
  %i.fu = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.u, i32 noundef %i.l)
  call void @wimax_service_flow_encodings_decoder(ptr noundef %i.fu, ptr noundef %1, ptr noundef %i.ft)
  br label %.loopexit

bb.ak:                                            ; preds = %bb.d
  %i.fv = load i32, ptr @hf_rng_rsp_ranging_subchan, align 4
  %i.fw = call ptr @add_tlv_subtree(ptr noundef nonnull %4, ptr noundef %i.e, i32 noundef %i.fv, ptr noundef %0, i32 noundef %.0320352, i32 noundef 0)
  %i.fx = load i32, ptr @ett_rng_rsp_message_tree, align 4
  %i.fy = call ptr @proto_item_add_subtree(ptr noundef %i.fw, i32 noundef %i.fx) ; 4 uses
  %i.fz = load i32, ptr @hf_rng_rsp_time_symbol_reference, align 4
  %i.ga = call ptr @proto_tree_add_item(ptr noundef %i.fy, i32 noundef %i.fz, ptr noundef %0, i32 noundef %i.u, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.gb = load i32, ptr @hf_rng_rsp_subchannel_reference, align 4
  %i.gc = call ptr @proto_tree_add_item(ptr noundef %i.fy, i32 noundef %i.gb, ptr noundef %0, i32 noundef %i.u, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.gd = load i32, ptr @hf_rng_rsp_ranging_code_index, align 4
  %i.ge = call ptr @proto_tree_add_item(ptr noundef %i.fy, i32 noundef %i.gd, ptr noundef %0, i32 noundef %i.u, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.gf = load i32, ptr @hf_rng_rsp_frame_number2, align 4
  %i.gg = call ptr @proto_tree_add_item(ptr noundef %i.fy, i32 noundef %i.gf, ptr noundef %0, i32 noundef %i.u, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.al:                                            ; preds = %bb.d
  %i.gh = load i8, ptr @include_cor2_changes, align 1, !range !9, !noundef !10
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gj = load i32, ptr @ett_rng_rsp_message_tree, align 4
  %i.gk = load i32, ptr @proto_mac_mgmt_msg_rng_rsp_decoder, align 4
  %i.gl = call ptr @add_protocol_subtree(ptr noundef nonnull %4, i32 noundef %i.gj, ptr noundef %i.e, i32 noundef %i.gk, ptr noundef %0, i32 noundef %.0320352, i32 noundef %i.l, ptr noundef @.str.187)
  %i.gm = sub nuw i32 %i.a, %.0320352
  call void @wimax_short_hmac_tuple_decoder(ptr noundef %i.gl, ptr noundef %0, i32 noundef %i.u, i32 noundef %i.gm)
  br label %.loopexit

bb.an:                                            ; preds = %bb.al
  %i.gn = load i32, ptr @hf_tlv_type, align 4
  %i.go = call ptr @add_tlv_subtree(ptr noundef nonnull %4, ptr noundef %i.e, i32 noundef %i.gn, ptr noundef %0, i32 noundef %.0320352, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.ao:                                            ; preds = %bb.d
  %i.gp = load i32, ptr @hf_tlv_type, align 4
  %i.gq = call ptr @add_tlv_subtree(ptr noundef nonnull %4, ptr noundef %i.e, i32 noundef %i.gp, ptr noundef %0, i32 noundef %.0320352, i32 noundef 0) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ah, %bb.af, %bb.am, %bb.an, %bb.ag, %bb.t, %bb.u, %bb.n, %bb.o, %bb.f, %bb.e, %bb.ao, %bb.ak, %bb.aj, %bb.ai, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.s, %bb.r, %bb.q, %bb.p, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.1329 = phi ptr [ %.0328347, %bb.ao ], [ %.0328347, %bb.f ], [ %.0328347, %bb.e ], [ %.0328347, %bb.g ], [ %.0328347, %bb.h ], [ %i.aq, %bb.i ], [ %.0328347, %bb.j ], [ %.0328347, %bb.k ], [ %.0328347, %bb.l ], [ %.0328347, %bb.n ], [ %.0328347, %bb.o ], [ %.0328347, %bb.p ], [ %.0328347, %bb.q ], [ %.0328347, %bb.r ], [ %.0328347, %bb.s ], [ %.0328347, %bb.u ], [ %.0328347, %bb.t ], [ %.0328347, %bb.v ], [ %.0328347, %bb.w ], [ %.0328347, %bb.x ], [ %.0328347, %bb.y ], [ %.0328347, %bb.z ], [ %.0328347, %bb.aa ], [ %.0328347, %bb.ab ], [ %.0328347, %bb.ac ], [ %.0328347, %bb.ad ], [ %.0328347, %bb.ae ], [ %.0328347, %bb.ag ], [ %.0328347, %bb.an ], [ %.0328347, %bb.ai ], [ %.0328347, %bb.aj ], [ %.0328347, %bb.ak ], [ %.0328347, %bb.am ], [ %.0328347, %bb.af ], [ %.0328347, %bb.ah ] ; 2 uses
  %.1327 = phi ptr [ %.0326348, %bb.ao ], [ %.0326348, %bb.f ], [ %.0326348, %bb.e ], [ %.0326348, %bb.g ], [ %.0326348, %bb.h ], [ %.0326348, %bb.i ], [ %i.as, %bb.j ], [ %.0326348, %bb.k ], [ %.0326348, %bb.l ], [ %.0326348, %bb.n ], [ %.0326348, %bb.o ], [ %.0326348, %bb.p ], [ %.0326348, %bb.q ], [ %.0326348, %bb.r ], [ %.0326348, %bb.s ], [ %.0326348, %bb.u ], [ %.0326348, %bb.t ], [ %.0326348, %bb.v ], [ %.0326348, %bb.w ], [ %.0326348, %bb.x ], [ %.0326348, %bb.y ], [ %.0326348, %bb.z ], [ %.0326348, %bb.aa ], [ %.0326348, %bb.ab ], [ %.0326348, %bb.ac ], [ %.0326348, %bb.ad ], [ %.0326348, %bb.ae ], [ %.0326348, %bb.ag ], [ %.0326348, %bb.an ], [ %.0326348, %bb.ai ], [ %.0326348, %bb.aj ], [ %.0326348, %bb.ak ], [ %.0326348, %bb.am ], [ %.0326348, %bb.af ], [ %.0326348, %bb.ah ] ; 2 uses
  %.1325 = phi ptr [ %.0324349, %bb.ao ], [ %.0324349, %bb.f ], [ %.0324349, %bb.e ], [ %.0324349, %bb.g ], [ %.0324349, %bb.h ], [ %.0324349, %bb.i ], [ %.0324349, %bb.j ], [ %.0324349, %bb.k ], [ %.0324349, %bb.l ], [ %i.bf, %bb.n ], [ %.0324349, %bb.o ], [ %.0324349, %bb.p ], [ %.0324349, %bb.q ], [ %.0324349, %bb.r ], [ %.0324349, %bb.s ], [ %.0324349, %bb.u ], [ %.0324349, %bb.t ], [ %.0324349, %bb.v ], [ %.0324349, %bb.w ], [ %.0324349, %bb.x ], [ %.0324349, %bb.y ], [ %.0324349, %bb.z ], [ %.0324349, %bb.aa ], [ %.0324349, %bb.ab ], [ %.0324349, %bb.ac ], [ %.0324349, %bb.ad ], [ %.0324349, %bb.ae ], [ %.0324349, %bb.ag ], [ %.0324349, %bb.an ], [ %.0324349, %bb.ai ], [ %.0324349, %bb.aj ], [ %.0324349, %bb.ak ], [ %.0324349, %bb.am ], [ %.0324349, %bb.af ], [ %.0324349, %bb.ah ] ; 2 uses
  %.1323 = phi ptr [ %.0322350, %bb.ao ], [ %.0322350, %bb.f ], [ %.0322350, %bb.e ], [ %.0322350, %bb.g ], [ %.0322350, %bb.h ], [ %.0322350, %bb.i ], [ %.0322350, %bb.j ], [ %.0322350, %bb.k ], [ %.0322350, %bb.l ], [ %.0322350, %bb.n ], [ %.0322350, %bb.o ], [ %.0322350, %bb.p ], [ %.0322350, %bb.q ], [ %.0322350, %bb.r ], [ %i.bp, %bb.s ], [ %.0322350, %bb.u ], [ %.0322350, %bb.t ], [ %.0322350, %bb.v ], [ %.0322350, %bb.w ], [ %.0322350, %bb.x ], [ %.0322350, %bb.y ], [ %.0322350, %bb.z ], [ %.0322350, %bb.aa ], [ %.0322350, %bb.ab ], [ %.0322350, %bb.ac ], [ %.0322350, %bb.ad ], [ %.0322350, %bb.ae ], [ %.0322350, %bb.ag ], [ %.0322350, %bb.an ], [ %.0322350, %bb.ai ], [ %.0322350, %bb.aj ], [ %.0322350, %bb.ak ], [ %.0322350, %bb.am ], [ %.0322350, %bb.af ], [ %.0322350, %bb.ah ] ; 2 uses
  %.1 = phi ptr [ %.0321351, %bb.ao ], [ %.0321351, %bb.f ], [ %.0321351, %bb.e ], [ %.0321351, %bb.g ], [ %.0321351, %bb.h ], [ %.0321351, %bb.i ], [ %.0321351, %bb.j ], [ %.0321351, %bb.k ], [ %.0321351, %bb.l ], [ %.0321351, %bb.n ], [ %.0321351, %bb.o ], [ %.0321351, %bb.p ], [ %.0321351, %bb.q ], [ %.0321351, %bb.r ], [ %.0321351, %bb.s ], [ %i.br, %bb.u ], [ %i.br, %bb.t ], [ %.0321351, %bb.v ], [ %.0321351, %bb.w ], [ %.0321351, %bb.x ], [ %.0321351, %bb.y ], [ %.0321351, %bb.z ], [ %.0321351, %bb.aa ], [ %.0321351, %bb.ab ], [ %.0321351, %bb.ac ], [ %.0321351, %bb.ad ], [ %.0321351, %bb.ae ], [ %.0321351, %bb.ag ], [ %.0321351, %bb.an ], [ %.0321351, %bb.ai ], [ %.0321351, %bb.aj ], [ %.0321351, %bb.ak ], [ %.0321351, %bb.am ], [ %.0321351, %bb.af ], [ %.0321351, %bb.ah ] ; 2 uses
  %i.gr = add i32 %i.u, %i.l                      ; 2 uses
  %i.gs = icmp ult i32 %i.gr, %i.a
  br i1 %i.gs, label %bb.b, label %.loopexit334, !llvm.loop !7

.loopexit334:                                     ; preds = %.loopexit, %bb.c
  %.0328345 = phi ptr [ %.0328347, %bb.c ], [ %.1329, %.loopexit ] ; 2 uses
  %.0326343 = phi ptr [ %.0326348, %bb.c ], [ %.1327, %.loopexit ]
  %.0324341 = phi ptr [ %.0324349, %bb.c ], [ %.1325, %.loopexit ] ; 3 uses
  %.0322339 = phi ptr [ %.0322350, %bb.c ], [ %.1323, %.loopexit ] ; 2 uses
  %.0321337 = phi ptr [ %.0321351, %bb.c ], [ %.1, %.loopexit ] ; 2 uses
  %i.gt = icmp ne ptr %.0328345, null             ; 3 uses
  %i.gu = icmp ne ptr %.0326343, null
  %or.cond11 = select i1 %i.gt, i1 %i.gu, i1 false
  br i1 %or.cond11, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.loopexit334
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %.0328345, ptr noundef @.str.188)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.loopexit334
  %i.gv = icmp ne ptr %.0324341, null             ; 2 uses
  %i.gw = icmp ne ptr %.0322339, null
  %or.cond13 = select i1 %i.gv, i1 %i.gw, i1 false
  br i1 %or.cond13, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %.0322339, ptr noundef @.str.189)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %.0324341, ptr noundef @.str.190)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gx = icmp ne ptr %.0321337, null
  %or.cond15 = select i1 %i.gv, i1 %i.gx, i1 false
  br i1 %or.cond15, label %.split, label %bb.at

.split:                                           ; preds = %bb.as
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %.0321337, ptr noundef @.str.189)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %.0324341, ptr noundef @.str.191)
  br i1 %i.gt, label %bb.au, label %.thread388

bb.at:                                            ; preds = %bb.as
  br i1 %i.gt, label %bb.au, label %.thread388

.thread388:                                       ; preds = %bb.a, %.split, %bb.at
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.e, ptr noundef @.str.192)
  br label %bb.au

bb.au:                                            ; preds = %.split, %.thread388, %bb.at
  %i.gy = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  ret i32 %i.gy
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_mac_mgmt_msg_rng_rsp() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rng_rsp_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.109, i32 noundef 5, ptr noundef %i.a)
  %i.b = tail call ptr @find_dissector(ptr noundef @.str.110)
  store ptr %i.b, ptr @sbc_rsp_handle, align 8
  %i.c = tail call ptr @find_dissector(ptr noundef @.str.111)
  store ptr %i.c, ptr @reg_rsp_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_protocol_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @init_tlv_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @get_tlv_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @get_tlv_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_sep_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @get_tlv_value_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @add_tlv_subtree_no_item(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_float_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @add_tlv_subtree(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @add_protocol_subtree(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @dissect_power_saving_class(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wimax_service_flow_encodings_decoder(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wimax_short_hmac_tuple_decoder(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !8}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{i8 0, i8 2}
!10 = !{}
end_hunk_0
