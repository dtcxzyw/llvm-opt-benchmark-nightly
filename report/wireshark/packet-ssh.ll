Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ssh?download=true
inline.NumInlined: 154
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ssh_try_dissect_encrypted_packet:bb.a

bb.bm:                                            ; preds = %bb.bl
  %i.ke = icmp samesign ult i32 %i.ab, 49
  br i1 %i.ke, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kf = add i32 %.3292.i, %3
  %i.kg = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %i.kf, i32 noundef %spec.select.i)
  %i.kh = zext nneg i32 %spec.select.i to i64
  %bcmp.i = call i32 @bcmp(ptr %i.kg, ptr nonnull %i.f, i64 %i.kh)
  %i.ki = icmp eq i32 %bcmp.i, 0
  %i.kj = load i8, ptr @ssh_ignore_mac_failed, align 1, !range !12
  %i.kk = trunc nuw i8 %i.kj to i1
  %or.cond20.i = select i1 %i.ki, i1 true, i1 %i.kk
  br i1 %or.cond20.i, label %bb.bq, label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %.old.i = load i8, ptr @ssh_ignore_mac_failed, align 1, !range !12, !noundef !13
  %.old19.i = trunc nuw i8 %.old.i to i1
  br i1 %.old19.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.kl = call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.bq:                                            ; preds = %bb.bo, %bb.bn, %bb.bl
  %.not332.i = icmp eq ptr %.1294.i, null
  br i1 %.not332.i, label %ssh_decrypt_packet.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.km = call ptr @wmem_file_scope()
  %i.kn = load i32, ptr @proto_ssh, align 4
  %i.ko = call ptr @p_get_proto_data(ptr noundef %i.km, ptr noundef %1, i32 noundef %i.kn, i32 noundef 0) ; 2 uses
  %.not.i.i = icmp eq ptr %i.ko, null
  br i1 %.not.i.i, label %bb.bs, label %ssh_get_packet_info.exit.i

bb.bs:                                            ; preds = %bb.br
  %i.kp = zext i1 %i.y to i8
  %i.kq = call ptr @wmem_file_scope()
  %i.kr = call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.kq, i64 noundef 16) #23 ; 4 uses
  store i8 %i.kp, ptr %i.kr, align 8
  %i.ks = getelementptr i8, ptr %i.kr, i64 8
  store ptr null, ptr %i.ks, align 8
  %i.kt = call ptr @wmem_file_scope()
  %i.ku = load i32, ptr @proto_ssh, align 4
  call void @p_add_proto_data(ptr noundef %i.kt, ptr noundef %1, i32 noundef %i.ku, i32 noundef 0, ptr noundef %i.kr)
  br label %ssh_get_packet_info.exit.i

ssh_get_packet_info.exit.i:                       ; preds = %bb.bs, %bb.br
  %.0.i.i = phi ptr [ %i.ko, %bb.br ], [ %i.kr, %bb.bs ]
  %i.kv = call i32 @tvb_raw_offset(ptr noundef %0)
  %i.kw = add i32 %i.kv, %3
  %i.kx = call ptr @wmem_file_scope()
  %i.ky = call noalias dereferenceable_or_null(88) ptr @wmem_alloc(ptr noundef %i.kx, i64 noundef 88) #23 ; 7 uses
  %i.kz = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.la = add i32 %i.kz, 1
  store i32 %i.la, ptr %i.ac, align 8
  store i32 %i.kz, ptr %i.ky, align 8
  %i.lb = call ptr @wmem_file_scope()
  %i.lc = zext nneg i32 %.3292.i to i64
  %i.ld = call ptr @wmem_memdup(ptr noundef %i.lb, ptr noundef nonnull %.1294.i, i64 noundef %i.lc) #24
  %i.le = getelementptr i8, ptr %i.ky, i64 8
  store ptr %i.ld, ptr %i.le, align 8
  %i.lf = getelementptr i8, ptr %i.ky, i64 16
  store i32 %.3292.i, ptr %i.lf, align 8
  %i.lg = getelementptr i8, ptr %i.ky, i64 20
  store i32 %i.kw, ptr %i.lg, align 4
  %i.lh = getelementptr i8, ptr %i.ky, i64 32
  store ptr null, ptr %i.lh, align 8
  %i.li = getelementptr i8, ptr %i.ky, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) %i.li, ptr noundef nonnull align 16 dereferenceable(48) %i.f, i64 noundef 48, i1 noundef false) #25
  %i.lj = select i1 %i.y, ptr @.str.783, ptr @.str.784
  %i.lk = load i32, ptr %i.ac, align 8
  call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.782, ptr noundef nonnull %i.lj, i32 noundef %i.lk)
  %i.ll = getelementptr i8, ptr %.0.i.i, i64 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %ssh_get_packet_info.exit.i
  %.0.i = phi ptr [ %i.ll, %ssh_get_packet_info.exit.i ], [ %i.ln, %bb.bt ] ; 2 uses
  %i.lm = load ptr, ptr %.0.i, align 8            ; 2 uses
  %.not333.i = icmp eq ptr %i.lm, null
  %i.ln = getelementptr i8, ptr %i.lm, i64 32
  br i1 %.not333.i, label %bb.bu, label %bb.bt, !llvm.loop !27

bb.bu:                                            ; preds = %bb.bt
  store ptr %i.ky, ptr %.0.i, align 8
  br label %ssh_decrypt_packet.exit

ssh_decrypt_packet.exit:                          ; preds = %bb.c, %bb.bq, %bb.bu, %bb.f, %.thread.i, %bb.r, %bb.t, %bb.y, %bb.ab, %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.am, %bb.ap, %bb.aq, %bb.aw, %bb.ba, %bb.bd, %bb.bf, %bb.bi, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.lo = getelementptr i8, ptr %1, i64 344
  %i.lp = load i32, ptr %i.lo, align 8
  %.not34 = icmp eq i32 %i.lp, 0
  br i1 %.not34, label %bb.bv, label %bb.fa

bb.bv:                                            ; preds = %ssh_decrypt_packet.exit, %.critedge
  %i.lq = call i32 @tvb_raw_offset(ptr noundef %0)
  %i.lr = add i32 %i.lq, %3
  %i.ls = call ptr @wmem_file_scope()
  %i.lt = load i32, ptr @proto_ssh, align 4
  %i.lu = call ptr @p_get_proto_data(ptr noundef %i.ls, ptr noundef %1, i32 noundef %i.lt, i32 noundef 0) ; 2 uses
  %.not.i36 = icmp eq ptr %i.lu, null
  br i1 %.not.i36, label %.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lv = getelementptr i8, ptr %i.lu, i64 8
  %.011.i = load ptr, ptr %i.lv, align 8          ; 2 uses
  %.not1012.i = icmp eq ptr %.011.i, null
  br i1 %.not1012.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bw, %bb.bx
  %.013.i = phi ptr [ %.0.i37, %bb.bx ], [ %.011.i, %bb.bw ] ; 7 uses
  %i.lw = getelementptr i8, ptr %.013.i, i64 20
  %i.lx = load i32, ptr %i.lw, align 4
  %i.ly = icmp eq i32 %i.lx, %i.lr
  br i1 %i.ly, label %ssh_get_message.exit, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i
  %i.lz = getelementptr i8, ptr %.013.i, i64 32
  %.0.i37 = load ptr, ptr %i.lz, align 8          ; 2 uses
  %.not10.i = icmp eq ptr %.0.i37, null
  br i1 %.not10.i, label %.thread, label %.lr.ph.i, !llvm.loop !14

ssh_get_message.exit:                             ; preds = %.lr.ph.i
  %i.ma = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %3) ; 3 uses
  %i.mb = getelementptr i8, ptr %.013.i, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = getelementptr i8, ptr %.013.i, i64 16
  %i.me = load i32, ptr %i.md, align 8            ; 3 uses
  %i.mf = getelementptr i8, ptr %1, i64 8         ; 8 uses
  %i.mg = load ptr, ptr %i.mf, align 8
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.mg, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.792, i32 noundef %i.me)
  %i.mh = call ptr @tvb_new_child_real_data(ptr noundef %i.ma, ptr noundef %i.mc, i32 noundef %i.me, i32 noundef %i.me) ; 25 uses
  %i.mi = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.mh, ptr noundef nonnull @.str.793) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.mj = call i32 @tvb_ensure_captured_length_remaining(ptr noundef %i.mh, i32 noundef 0) ; 4 uses
  %i.mk = load i8, ptr @ssh_desegment, align 1, !range !12, !noundef !13
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %ssh_get_message.exit
  %i.mm = getelementptr i8, ptr %1, i64 336
  %i.mn = load i16, ptr %i.mm, align 8
  %i.mo = icmp ne i16 %i.mn, 0
  %i.mp = icmp ult i32 %i.mj, 4
  %or.cond19.i = select i1 %i.mo, i1 %i.mp, i1 false
  br i1 %or.cond19.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.mq = getelementptr i8, ptr %1, i64 340
  store i32 0, ptr %i.mq, align 4
  %i.mr = getelementptr i8, ptr %1, i64 344
  store i32 268435455, ptr %i.mr, align 8
  br label %bb.ez

bb.ca:                                            ; preds = %bb.by, %ssh_get_message.exit
  %i.ms = call i32 @tvb_get_ntohl(ptr noundef %i.mh, i32 noundef 0) ; 8 uses
  %i.mt = load i8, ptr @ssh_desegment, align 1, !range !12, !noundef !13
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.mv = getelementptr i8, ptr %1, i64 336
  %i.mw = load i16, ptr %i.mv, align 8
  %.not.i43 = icmp eq i16 %i.mw, 0
  br i1 %.not.i43, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mx = add i32 %i.ms, 4                        ; 2 uses
  %i.my = icmp ugt i32 %i.mx, %i.mj
  br i1 %i.my, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.mz = getelementptr i8, ptr %1, i64 340
  store i32 0, ptr %i.mz, align 4
  %i.na = sub nuw i32 %i.mx, %i.mj
  %i.nb = getelementptr i8, ptr %1, i64 344
  store i32 %i.na, ptr %i.nb, align 8
  br label %bb.ez

bb.ce:                                            ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.nc = load i32, ptr @hf_ssh_packet_length, align 4
  %i.nd = call ptr @proto_tree_add_uint(ptr noundef %4, i32 noundef %i.nc, ptr noundef %i.mh, i32 noundef 0, i32 noundef 4, i32 noundef %i.ms) ; 3 uses
  %i.ne = icmp ult i32 %i.ms, 8
  br i1 %i.ne, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.nf = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.nd, ptr noundef nonnull @ei_ssh_packet_length, ptr noundef nonnull @.str.794, i32 noundef %i.ms) ; 0 uses
  br label %bb.ci

bb.cg:                                            ; preds = %bb.ce
  %i.ng = icmp ugt i32 %i.ms, 32767
  br i1 %i.ng, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.nh = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.nd, ptr noundef nonnull @ei_ssh_packet_length, ptr noundef nonnull @.str.795, i32 noundef %i.ms) ; 0 uses
  %i.ni = add i32 %i.mj, -4
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %.0271.i = phi i32 [ %i.ms, %bb.cf ], [ %i.ni, %bb.ch ], [ %i.ms, %bb.cg ] ; 10 uses
  %i.nj = load i32, ptr @hf_ssh_padding_length, align 4
  %i.nk = call ptr @proto_tree_add_item_ret_uint(ptr noundef %4, i32 noundef %i.nj, ptr noundef %i.mh, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.d) ; 2 uses
  %i.nl = load i32, ptr %i.d, align 4             ; 3 uses
  %i.nm = icmp ult i32 %i.nl, 4
  br i1 %i.nm, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.nn = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.nk, ptr noundef nonnull @ei_ssh_padding_length, ptr noundef nonnull @.str.796, i32 noundef %i.nl) ; 0 uses
  %.pre.i = load i32, ptr %i.d, align 4
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.no = phi i32 [ %.pre.i, %bb.cj ], [ %i.nl, %bb.ci ] ; 2 uses
  %i.np = add i32 %i.no, 1
  %5 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.0271.i, i32 %i.np) ; 2 uses
  %6 = extractvalue { i32, i1 } %5, 1
  %7 = extractvalue { i32, i1 } %5, 0
  br i1 %6, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.nq = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.nk, ptr noundef nonnull @ei_ssh_padding_length, ptr noundef nonnull @.str.797, i32 noundef %i.no) ; 0 uses
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.0.i38 = phi i32 [ 0, %bb.cl ], [ %7, %bb.ck ] ; 6 uses
  %i.nr = call zeroext i8 @tvb_get_uint8(ptr noundef %i.mh, i32 noundef 5) ; 14 uses
  %i.ns = zext i8 %i.nr to i32                    ; 12 uses
  %i.nt = call ptr @tvb_new_subset_length(ptr noundef %i.mh, i32 noundef 5, i32 noundef %.0.i38) ; 79 uses
  %i.nu = getelementptr i8, ptr %2, i64 264       ; 10 uses
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = getelementptr i8, ptr %i.nv, i64 328
  %i.nx = icmp eq ptr %i.nw, %2                   ; 6 uses
  %i.ny = add i8 %i.nr, -1
  %or.cond.i39 = icmp ult i8 %i.ny, 19
  br i1 %or.cond.i39, label %bb.cn, label %bb.dg

bb.cn:                                            ; preds = %bb.cm
  %i.nz = load ptr, ptr %i.mf, align 8
  %i.oa = getelementptr i8, ptr %1, i64 416       ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = call ptr @val_to_str(ptr noundef %i.ob, i32 noundef %i.ns, ptr noundef nonnull @ssh2_msg_vals, ptr noundef nonnull @.str.678)
  call void @col_append_sep_str(ptr noundef %i.nz, i32 noundef 25, ptr noundef null, ptr noundef %i.oc)
  %i.od = add i32 %.0271.i, -1
  %i.oe = load i32, ptr @ett_key_exchange, align 4
  %i.of = call ptr @proto_tree_add_subtree(ptr noundef %4, ptr noundef %i.mh, i32 noundef 5, i32 noundef %i.od, i32 noundef %i.oe, ptr noundef null, ptr noundef nonnull @.str.798) ; 27 uses
  %i.og = load i32, ptr @hf_ssh2_msg_code, align 4
  %i.oh = call ptr @proto_tree_add_item(ptr noundef %i.of, i32 noundef %i.og, ptr noundef %i.mh, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  switch i8 %i.nr, label %ssh_dissect_transport_generic.exit.i [
    i8 1, label %bb.co
    i8 2, label %bb.cp
    i8 4, label %bb.cq
    i8 5, label %bb.cr
    i8 6, label %bb.cs
    i8 7, label %bb.ct
  ]

bb.co:                                            ; preds = %bb.cn
  %i.oi = load i32, ptr @hf_ssh_disconnect_reason, align 4
  %i.oj = call ptr @proto_tree_add_item(ptr noundef %i.of, i32 noundef %i.oi, ptr noundef %i.nt, i32 noundef 1, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ok = call i32 @tvb_get_ntohl(ptr noundef %i.nt, i32 noundef 5) ; 3 uses
  %i.ol = load i32, ptr @hf_ssh_disconnect_description_length, align 4
  %i.om = call ptr @proto_tree_add_item(ptr noundef %i.of, i32 noundef %i.ol, ptr noundef %i.nt, i32 noundef 5, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.on = load i32, ptr @hf_ssh_disconnect_description, align 4
  %i.oo = call ptr @proto_tree_add_item(ptr noundef %i.of, i32 noundef %i.on, ptr noundef %i.nt, i32 noundef 9, i32 noundef %i.ok, i32 noundef 0) ; 0 uses
  %i.op = add i32 %i.ok, 9                        ; 2 uses
  %i.oq = call i32 @tvb_get_ntohl(ptr noundef %i.nt, i32 noundef %i.op) ; 2 uses
  %i.or = load i32, ptr @hf_ssh_lang_tag_length, align 4
  %i.os = call ptr @proto_tree_add_item(ptr noundef %i.of, i32 noundef %i.or, ptr noundef %i.nt, i32 noundef %i.op, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ot = add i32 %i.ok, 13                       ; 2 uses
  %i.ou = load i32, ptr @hf_ssh_lang_tag, align 4
  %i.ov = call ptr @proto_tree_add_item(ptr noundef %i.of, i32 noundef %i.ou, ptr noundef %i.nt, i32 noundef %i.ot, i32 noundef %i.oq, i32 noundef 0) ; 0 uses
  %i.ow = add i32 %i.oq, %i.ot
  br label %ssh_dissect_transport_generic.exit.i

bb.cp:                                            ; preds = %bb.cn
  %i.ox = load i32, ptr @hf_ssh_ignore_data, align 4
  %i.oy = load i32, ptr @hf_ssh_ignore_data_length, align 4
  %i.oz = call i32 @tvb_get_ntohl(ptr noundef %i.nt, i32 noundef 1) ; 3 uses
  %i.pa = call ptr @proto_tree_add_uint(ptr noundef %i.of, i32 noundef %i.oy, ptr noundef %i.nt, i32 noundef 1, i32 noundef 4, i32 noundef %i.oz) ; 0 uses
  %i.pb = call ptr @proto_tree_add_item(ptr noundef %i.of, i32 noundef %i.ox, ptr noundef %i.nt, i32 noundef 5, i32 noundef %i.oz, i32 noundef 0) ; 0 uses
  %i.pc = add i32 %i.oz, 5
  br label %ssh_dissect_transport_generic.exit.i

bb.cq:                                            ; preds = %bb.cn
  %i.pd = load i32, ptr @hf_ssh_debug_always_display, align 4
  %i.pe = call ptr @proto_tree_add_item(ptr noundef %i.of, i32 noundef %i.pd, ptr noundef %i.nt, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.pf = call i32 @tvb_get_ntohl(ptr noundef %i.nt, i32 noundef 2) ; 3 uses
  %i.pg = load i32, ptr @hf_ssh_debug_message_length, align 4
  %i.ph = call ptr @proto_tree_add_item(ptr noundef %i.of, i32 noundef %i.pg, ptr noundef %i.nt, i32 noundef 2, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.pi = load i32, ptr @hf_ssh_debug_message, align 4
  %i.pj = call ptr @proto_tree_add_item(ptr noundef %i.of, i32 noundef %i.pi, ptr noundef %i.nt, i32 noundef 6, i32 noundef %i.pf, i32 noundef 2) ; 0 uses
  %i.pk = add i32 %i.pf, 6                        ; 2 uses
  %i.pl = call i32 @tvb_get_ntohl(ptr noundef %i.nt, i32 noundef %i.pk) ; 2 uses
  %i.pm = load i32, ptr @hf_ssh_lang_tag_length, align 4
  %i.pn = call ptr @proto_tree_add_item(ptr noundef %i.of, i32 noundef %i.pm, ptr noundef %i.nt, i32 noundef %i.pk, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.po = add i32 %i.pf, 10                       ; 2 uses
  %i.pp = load i32, ptr @hf_ssh_lang_tag, align 4
  %i.pq = call ptr @proto_tree_add_item(ptr noundef %i.of, i32 noundef %i.pp, ptr noundef %i.nt, i32 noundef %i.po, i32 noundef %i.pl, i32 noundef 0) ; 0 uses
  %i.pr = add i32 %i.pl, %i.po
  br label %ssh_dissect_transport_generic.exit.i

bb.cr:                                            ; preds = %bb.cn
  %i.ps = call i32 @tvb_get_ntohl(ptr noundef %i.nt, i32 noundef 1) ; 2 uses
  %i.pt = load i32, ptr @hf_ssh_service_name_length, align 4
  %i.pu = call ptr @proto_tree_add_item(ptr noundef %i.of, i32 noundef %i.pt, ptr noundef %i.nt, i32 noundef 1, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.pv = load i32, ptr @hf_ssh_service_name, align 4
  %i.pw = call ptr @proto_tree_add_item(ptr noundef %i.of, i32 noundef %i.pv, ptr noundef %i.nt, i32 noundef 5, i32 noundef %i.ps, i32 noundef 0) ; 0 uses
  %i.px = add i32 %i.ps, 5
  br label %ssh_dissect_transport_generic.exit.i

bb.cs:                                            ; preds = %bb.cn
  %i.py = call i32 @tvb_get_ntohl(ptr noundef %i.nt, i32 noundef 1) ; 2 uses
  %i.pz = load i32, ptr @hf_ssh_service_name_length, align 4
  %i.qa = call ptr @proto_tree_add_item(ptr noundef %i.of, i32 noundef %i.pz, ptr noundef %i.nt, i32 noundef 1, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.qb = load i32, ptr @hf_ssh_service_name, align 4
  %i.qc = call ptr @proto_tree_add_item(ptr noundef %i.of, i32 noundef %i.qb, ptr noundef %i.nt, i32 noundef 5, i32 noundef %i.py, i32 noundef 0) ; 0 uses
  %i.qd = add i32 %i.py, 5
  br label %ssh_dissect_transport_generic.exit.i

bb.ct:                                            ; preds = %bb.cn
  %i.qe = call i32 @tvb_get_ntohl(ptr noundef %i.nt, i32 noundef 1) ; 2 uses
  %i.qf = load i32, ptr @hf_ssh_ext_count, align 4
  %i.qg = call ptr @proto_tree_add_item(ptr noundef %i.of, i32 noundef %i.qf, ptr noundef %i.nt, i32 noundef 1, i32 noundef 4, i32 noundef 0) ; 0 uses
  %.not.i.i42 = icmp eq i32 %i.qe, 0
  br i1 %.not.i.i42, label %ssh_dissect_transport_generic.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ct, %ssh_dissect_rfc8308_extension.exit.i.i
  %.0107.i.i = phi i32 [ %i.sq, %ssh_dissect_rfc8308_extension.exit.i.i ], [ 0, %bb.ct ]
  %.0104106.i.i = phi i32 [ %.0.i.i.i, %ssh_dissect_rfc8308_extension.exit.i.i ], [ 5, %bb.ct ] ; 4 uses
  %i.qh = call i32 @tvb_get_ntohl(ptr noundef %i.nt, i32 noundef %.0104106.i.i) ; 4 uses
  %i.qi = load ptr, ptr %i.oa, align 8
  %i.qj = add i32 %.0104106.i.i, 4                ; 3 uses
  %i.qk = call ptr @tvb_get_string_enc(ptr noundef %i.qi, ptr noundef %i.nt, i32 noundef %i.qj, i32 noundef %i.qh, i32 noundef 0) ; 7 uses
  %i.ql = add i32 %i.qh, %i.qj                    ; 4 uses
  %i.qm = call i32 @tvb_get_ntohl(ptr noundef %i.nt, i32 noundef %i.ql) ; 12 uses
  %i.qn = add i32 %i.qh, 8
  %i.qo = add i32 %i.qn, %i.qm
  %i.qp = load i32, ptr @ett_extension, align 4
  %i.qq = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.of, ptr noundef %i.nt, i32 noundef %.0104106.i.i, i32 noundef %i.qo, i32 noundef %i.qp, ptr noundef null, ptr noundef nonnull @.str.811, ptr noundef %i.qk) ; 12 uses
  %i.qr = load i32, ptr @hf_ssh_ext_name_length, align 4
  %i.qs = call ptr @proto_tree_add_item(ptr noundef %i.qq, i32 noundef %i.qr, ptr noundef %i.nt, i32 noundef %.0104106.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.qt = load i32, ptr @hf_ssh_ext_name, align 4
  %i.qu = call ptr @proto_tree_add_item(ptr noundef %i.qq, i32 noundef %i.qt, ptr noundef %i.nt, i32 noundef %i.qj, i32 noundef %i.qh, i32 noundef 0) ; 0 uses
  %i.qv = load i32, ptr @hf_ssh_ext_value_length, align 4
  %i.qw = call ptr @proto_tree_add_item(ptr noundef %i.qq, i32 noundef %i.qv, ptr noundef %i.nt, i32 noundef %i.ql, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.qx = add i32 %i.ql, 4                        ; 13 uses
  %i.qy = load i32, ptr @hf_ssh_ext_value, align 4
  %i.qz = call ptr @proto_tree_add_item(ptr noundef %i.qq, i32 noundef %i.qy, ptr noundef %i.nt, i32 noundef %i.qx, i32 noundef %i.qm, i32 noundef 0) ; 0 uses
  %i.ra = call i32 @strcmp(ptr noundef %i.qk, ptr noundef nonnull dereferenceable(16) @.str.812) #22
  %i.rb = icmp eq i32 %i.ra, 0
  br i1 %i.rb, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %.lr.ph.i.i
  %i.rc = load i32, ptr @hf_ssh_ext_server_sig_algs_algorithms, align 4
  %i.rd = call ptr @proto_tree_add_item(ptr noundef %i.qq, i32 noundef %i.rc, ptr noundef %i.nt, i32 noundef %i.qx, i32 noundef %i.qm, i32 noundef 0) ; 0 uses
  %i.re = add i32 %i.qm, %i.qx
  br label %ssh_dissect_rfc8308_extension.exit.i.i

bb.cv:                                            ; preds = %.lr.ph.i.i
  %i.rf = call i32 @strcmp(ptr noundef %i.qk, ptr noundef nonnull dereferenceable(18) @.str.813) #22
  %i.rg = icmp eq i32 %i.rf, 0
  br i1 %i.rg, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.rh = call i32 @tvb_get_ntohl(ptr noundef %i.nt, i32 noundef %i.qx) ; 2 uses
  %i.ri = load i32, ptr @hf_ssh_ext_delay_compression_algorithms_client_to_server_length, align 4
  %i.rj = call ptr @proto_tree_add_item(ptr noundef %i.qq, i32 noundef %i.ri, ptr noundef %i.nt, i32 noundef %i.qx, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.rk = add i32 %i.ql, 8                        ; 2 uses
  %i.rl = load i32, ptr @hf_ssh_ext_delay_compression_algorithms_client_to_server, align 4
  %i.rm = call ptr @proto_tree_add_item(ptr noundef %i.qq, i32 noundef %i.rl, ptr noundef %i.nt, i32 noundef %i.rk, i32 noundef %i.rh, i32 noundef 0) ; 0 uses
  %i.rn = add i32 %i.rh, %i.rk                    ; 3 uses
  %i.ro = call i32 @tvb_get_ntohl(ptr noundef %i.nt, i32 noundef %i.rn) ; 2 uses
  %i.rp = load i32, ptr @hf_ssh_ext_delay_compression_algorithms_server_to_client_length, align 4
  %i.rq = call ptr @proto_tree_add_item(ptr noundef %i.qq, i32 noundef %i.rp, ptr noundef %i.nt, i32 noundef %i.rn, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.rr = add i32 %i.rn, 4                        ; 2 uses
  %i.rs = load i32, ptr @hf_ssh_ext_delay_compression_algorithms_server_to_client, align 4
  %i.rt = call ptr @proto_tree_add_item(ptr noundef %i.qq, i32 noundef %i.rs, ptr noundef %i.nt, i32 noundef %i.rr, i32 noundef %i.ro, i32 noundef 0) ; 0 uses
  %i.ru = add i32 %i.ro, %i.rr
  br label %ssh_dissect_rfc8308_extension.exit.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.rv = call i32 @strcmp(ptr noundef %i.qk, ptr noundef nonnull dereferenceable(16) @.str.814) #22
  %i.rw = icmp eq i32 %i.rv, 0
  br i1 %i.rw, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.rx = load i32, ptr @hf_ssh_ext_no_flow_control_value, align 4
  %i.ry = call ptr @proto_tree_add_item(ptr noundef %i.qq, i32 noundef %i.rx, ptr noundef %i.nt, i32 noundef %i.qx, i32 noundef %i.qm, i32 noundef 0) ; 0 uses
  %i.rz = add i32 %i.qm, %i.qx
  br label %ssh_dissect_rfc8308_extension.exit.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.sa = call i32 @strcmp(ptr noundef %i.qk, ptr noundef nonnull dereferenceable(10) @.str.815) #22
  %i.sb = icmp eq i32 %i.sa, 0
  br i1 %i.sb, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.sc = load i32, ptr @hf_ssh_ext_elevation_value, align 4
  %i.sd = call ptr @proto_tree_add_item(ptr noundef %i.qq, i32 noundef %i.sc, ptr noundef %i.nt, i32 noundef %i.qx, i32 noundef %i.qm, i32 noundef 0) ; 0 uses
  %i.se = add i32 %i.qm, %i.qx
  br label %ssh_dissect_rfc8308_extension.exit.i.i

bb.db:                                            ; preds = %bb.cz
  %i.sf = call i32 @strcmp(ptr noundef %i.qk, ptr noundef nonnull dereferenceable(39) @.str.816) #22
  %i.sg = icmp eq i32 %i.sf, 0
  br i1 %i.sg, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.sh = load i32, ptr @hf_ssh_ext_prop_publickey_algorithms_algorithms, align 4
  %i.si = call ptr @proto_tree_add_item(ptr noundef %i.qq, i32 noundef %i.sh, ptr noundef %i.nt, i32 noundef %i.qx, i32 noundef %i.qm, i32 noundef 0) ; 0 uses
  %i.sj = add i32 %i.qm, %i.qx
  br label %ssh_dissect_rfc8308_extension.exit.i.i

bb.dd:                                            ; preds = %bb.db
  %i.sk = call i32 @strcmp(ptr noundef %i.qk, ptr noundef nonnull dereferenceable(17) @.str.817) #22
  %i.sl = icmp eq i32 %i.sk, 0
  br i1 %i.sl, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.sm = load ptr, ptr %i.nu, align 8
  %i.sn = getelementptr i8, ptr %i.sm, i64 729
  store i8 1, ptr %i.sn, align 1
  %i.so = add i32 %i.qm, %i.qx
  br label %ssh_dissect_rfc8308_extension.exit.i.i

end_hunk_0
begin_hunk_1_@ssh_decrypt_chacha20:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.j, ptr %i.k, align 2
  %i.l = trunc i32 %1 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.l, ptr %i.m, align 1
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.a
  %i.n = call i32 @gcry_cipher_setiv(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 8)
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %i.b, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i64, ptr %i.a, align 8
  store i64 %i.q, ptr %i.p, align 8
  %i.r = call i32 @gcry_cipher_setiv(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 16)
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %.critedge
  %i.t = zext nneg i32 %6 to i64
  %i.u = zext nneg i32 %4 to i64
  %i.v = call i32 @gcry_cipher_decrypt(ptr noundef %0, ptr noundef %5, i64 noundef %i.t, ptr noundef %3, i64 noundef %i.u)
  %i.w = icmp eq i32 %i.v, 0
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c, %bb.b
  %i.x = phi i1 [ false, %bb.b ], [ %i.w, %bb.c ], [ false, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i1 %i.x
}

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_setiv(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_open(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_setkey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_verify(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_mac_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_uint32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_authenticate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_decrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_gettag(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_ctl(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @ssh_calc_mac(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef range(i32 12, 32773) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.c = getelementptr i8, ptr %0, i64 120
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.d, 131073
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(48) %4, i8 noundef 0, i64 noundef 48, i1 noundef false) #25
  br i1 %.not, label %bb.b, label %ssh_hmac_init.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 172        ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 220        ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = call i32 @gcry_md_open(ptr noundef nonnull %i.a, i32 noundef range(i32 0, -1) 8, i32 noundef 2) ; 3 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call ptr @gcry_strerror(i32 noundef %i.h)
  %i.j = call ptr @gcry_strsource(i32 noundef %i.h)
  call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.789, ptr noundef %i.i, ptr noundef %i.j)
  br label %ssh_hmac_init.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = sext i32 %i.g to i64
  %i.m = call i32 @gcry_md_setkey(ptr noundef %i.k, ptr noundef %i.e, i64 noundef %i.l) ; 3 uses
  %.not18.i = icmp eq i32 %i.m, 0
  br i1 %.not18.i, label %ssh_hmac_init.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = call ptr @gcry_strerror(i32 noundef %i.m)
  %i.o = call ptr @gcry_strsource(i32 noundef %i.m)
  call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.790, i32 noundef %i.g, ptr noundef %i.n, ptr noundef %i.o)
  br label %ssh_hmac_init.exit.thread

ssh_hmac_init.exit:                               ; preds = %bb.d
  %i.p = lshr i32 %1, 24
  %i.q = trunc nuw i32 %i.p to i8
  store i8 %i.q, ptr %i.b, align 16
  %i.r = lshr i32 %1, 16
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.s, ptr %i.t, align 1
  %i.u = lshr i32 %1, 8
  %i.v = trunc i32 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.v, ptr %i.w, align 2
  %i.x = trunc i32 %1 to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.x, ptr %i.y, align 1
  %i.z = load i32, ptr %i.f, align 4
  %i.aa = zext i32 %i.z to i64
  call fastcc void @ssh_print_data(ptr noundef nonnull @.str.785, ptr noundef %i.e, i64 noundef %i.aa)
  call fastcc void @ssh_print_data(ptr noundef nonnull @.str.786, ptr noundef nonnull %i.b, i64 noundef 4)
  %i.ab = zext nneg i32 %3 to i64                 ; 2 uses
  call fastcc void @ssh_print_data(ptr noundef nonnull @.str.787, ptr noundef %2, i64 noundef %i.ab)
  %.val13 = load ptr, ptr %i.a, align 8
  call void @gcry_md_write(ptr noundef %.val13, ptr noundef nonnull %i.b, i64 noundef 4)
  %.val = load ptr, ptr %i.a, align 8
  call void @gcry_md_write(ptr noundef %.val, ptr noundef %2, i64 noundef %i.ab)
  %i.ac = load ptr, ptr %i.a, align 8
  %i.ad = call i32 @gcry_md_get_algo(ptr noundef %i.ac) ; 2 uses
  %i.ae = call i32 @gcry_md_get_algo_dlen(i32 noundef %i.ad) ; 2 uses
  %.not.i15 = icmp ugt i32 %i.ae, 48
  br i1 %.not.i15, label %bb.f, label %ssh_hmac_final.exit

bb.f:                                             ; preds = %ssh_hmac_init.exit
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.744, ptr noundef nonnull @.str.745, i32 noundef 3845, ptr noundef nonnull @.str.791) #28
  unreachable

ssh_hmac_final.exit:                              ; preds = %ssh_hmac_init.exit
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = call ptr @gcry_md_read(ptr noundef %i.af, i32 noundef %i.ad)
  %i.ah = zext nneg i32 %i.ae to i64              ; 3 uses
  %i.ai = call ptr @__memcpy_chk(ptr noundef nonnull %i.b, ptr noundef %i.ag, i64 noundef range(i64 0, 4294967296) %i.ah, i64 noundef 48) #25, !alias.scope !76 ; 0 uses
  %.val14 = load ptr, ptr %i.a, align 8
  call void @gcry_md_close(ptr noundef %.val14)
  call fastcc void @ssh_print_data(ptr noundef nonnull @.str.788, ptr noundef nonnull %i.b, i64 noundef %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %4, ptr noundef nonnull align 16 %i.b, i64 noundef range(i64 0, 4294967296) %i.ah, i1 noundef false) #25
  br label %ssh_hmac_init.exit.thread

ssh_hmac_init.exit.thread:                        ; preds = %bb.e, %bb.c, %bb.a, %ssh_hmac_final.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memset_chk(ptr noundef writeonly, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare ptr @gcry_strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @gcry_strsource(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_md_setkey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_md_get_algo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @p_get_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @p_add_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_ensure_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #17

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @ssh_dissect_key_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef captures(address) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = getelementptr i8, ptr %5, i64 56
  %i.c = zext nneg i32 %4 to i64
  %i.d = getelementptr [272 x i8], ptr %i.b, i64 %i.c ; 8 uses
  %i.e = load i32, ptr @ett_key_init, align 4
  %i.f = call ptr @proto_tree_add_subtree(ptr noundef %3, ptr noundef %0, i32 noundef %2, i32 noundef -1, i32 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.818) ; 27 uses
  %i.g = getelementptr i8, ptr %1, i64 80         ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 53
  %i.j = load i16, ptr %i.i, align 1
  %i.k = and i16 %i.j, 8
  %.not = icmp eq i16 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %2, i32 noundef 16) ; 2 uses
  %i.m = call ptr @wmem_file_scope()
  %i.n = call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.m, i64 noundef 16) #23 ; 3 uses
  %i.o = call ptr @wmem_file_scope()
  %i.p = call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.o, i64 noundef 16) #23 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %ssh_kex_make_bignum.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(16) %i.p, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.l, i64 noundef range(i64 0, 4294967296) 16, i1 noundef false) #25
  br label %ssh_kex_make_bignum.exit

ssh_kex_make_bignum.exit:                         ; preds = %bb.b, %bb.c
  %i.q = getelementptr i8, ptr %i.n, i64 8
  store i32 16, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.d, i64 152
  store ptr %i.n, ptr %i.r, align 8
  br label %bb.d

bb.d:                                             ; preds = %ssh_kex_make_bignum.exit, %bb.a
  %i.s = load i32, ptr @hf_ssh_cookie, align 4
  %i.t = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.s, ptr noundef %0, i32 noundef %2, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.u = add i32 %2, 16                           ; 2 uses
  %i.v = load i32, ptr @hf_ssh_kex_algorithms_length, align 4
  %i.w = load i32, ptr @hf_ssh_kex_algorithms, align 4
  %i.x = getelementptr i8, ptr %i.d, i64 24       ; 3 uses
  %i.y = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.u) ; 4 uses
  %i.z = call ptr @proto_tree_add_uint(ptr noundef %i.f, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.u, i32 noundef 4, i32 noundef %i.y) ; 0 uses
  %i.aa = add i32 %2, 20                          ; 3 uses
  %i.ab = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.aa, i32 noundef %i.y, i32 noundef 0) ; 0 uses
  %.not.i132 = icmp eq ptr %i.x, null
  br i1 %.not.i132, label %ssh_dissect_proposal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = call ptr @wmem_file_scope()
  %i.ad = call ptr @tvb_get_string_enc(ptr noundef %i.ac, ptr noundef %0, i32 noundef %i.aa, i32 noundef %i.y, i32 noundef 0)
  store ptr %i.ad, ptr %i.x, align 8
  br label %ssh_dissect_proposal.exit

ssh_dissect_proposal.exit:                        ; preds = %bb.d, %bb.e
  %i.ae = add i32 %i.y, %i.aa                     ; 3 uses
  %i.af = load i32, ptr @hf_ssh_server_host_key_algorithms_length, align 4
  %i.ag = load i32, ptr @hf_ssh_server_host_key_algorithms, align 4
  %i.ah = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.ae) ; 3 uses
  %i.ai = call ptr @proto_tree_add_uint(ptr noundef %i.f, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.ae, i32 noundef 4, i32 noundef %i.ah) ; 0 uses
  %i.aj = add i32 %i.ae, 4                        ; 2 uses
  %i.ak = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.aj, i32 noundef %i.ah, i32 noundef 0) ; 0 uses
  %i.al = add i32 %i.ah, %i.aj                    ; 3 uses
  %i.am = load i32, ptr @hf_ssh_encryption_algorithms_client_to_server_length, align 4
  %i.an = load i32, ptr @hf_ssh_encryption_algorithms_client_to_server, align 4
  %i.ao = getelementptr i8, ptr %i.d, i64 64      ; 3 uses
  %i.ap = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.al) ; 4 uses
  %i.aq = call ptr @proto_tree_add_uint(ptr noundef %i.f, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.al, i32 noundef 4, i32 noundef %i.ap) ; 0 uses
  %i.ar = add i32 %i.al, 4                        ; 3 uses
  %i.as = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.ar, i32 noundef %i.ap, i32 noundef 0) ; 0 uses
  %.not.i133 = icmp eq ptr %i.ao, null
  br i1 %.not.i133, label %ssh_dissect_proposal.exit134, label %bb.f

bb.f:                                             ; preds = %ssh_dissect_proposal.exit
  %i.at = call ptr @wmem_file_scope()
  %i.au = call ptr @tvb_get_string_enc(ptr noundef %i.at, ptr noundef %0, i32 noundef %i.ar, i32 noundef %i.ap, i32 noundef 0)
  store ptr %i.au, ptr %i.ao, align 8
  br label %ssh_dissect_proposal.exit134

ssh_dissect_proposal.exit134:                     ; preds = %ssh_dissect_proposal.exit, %bb.f
  %i.av = add i32 %i.ap, %i.ar                    ; 3 uses
  %i.aw = load i32, ptr @hf_ssh_encryption_algorithms_server_to_client_length, align 4
  %i.ax = load i32, ptr @hf_ssh_encryption_algorithms_server_to_client, align 4
  %i.ay = getelementptr i8, ptr %i.d, i64 72      ; 3 uses
  %i.az = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.av) ; 4 uses
  %i.ba = call ptr @proto_tree_add_uint(ptr noundef %i.f, i32 noundef %i.aw, ptr noundef %0, i32 noundef %i.av, i32 noundef 4, i32 noundef %i.az) ; 0 uses
  %i.bb = add i32 %i.av, 4                        ; 3 uses
  %i.bc = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ax, ptr noundef %0, i32 noundef %i.bb, i32 noundef %i.az, i32 noundef 0) ; 0 uses
  %.not.i135 = icmp eq ptr %i.ay, null
  br i1 %.not.i135, label %ssh_dissect_proposal.exit136, label %bb.g

bb.g:                                             ; preds = %ssh_dissect_proposal.exit134
  %i.bd = call ptr @wmem_file_scope()
  %i.be = call ptr @tvb_get_string_enc(ptr noundef %i.bd, ptr noundef %0, i32 noundef %i.bb, i32 noundef %i.az, i32 noundef 0)
  store ptr %i.be, ptr %i.ay, align 8
  br label %ssh_dissect_proposal.exit136

ssh_dissect_proposal.exit136:                     ; preds = %ssh_dissect_proposal.exit134, %bb.g
  %i.bf = add i32 %i.az, %i.bb                    ; 3 uses
  %i.bg = load i32, ptr @hf_ssh_mac_algorithms_client_to_server_length, align 4
  %i.bh = load i32, ptr @hf_ssh_mac_algorithms_client_to_server, align 4
  %i.bi = getelementptr i8, ptr %i.d, i64 32      ; 3 uses
  %i.bj = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.bf) ; 4 uses
  %i.bk = call ptr @proto_tree_add_uint(ptr noundef %i.f, i32 noundef %i.bg, ptr noundef %0, i32 noundef %i.bf, i32 noundef 4, i32 noundef %i.bj) ; 0 uses
  %i.bl = add i32 %i.bf, 4                        ; 3 uses
  %i.bm = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.bh, ptr noundef %0, i32 noundef %i.bl, i32 noundef %i.bj, i32 noundef 0) ; 0 uses
  %.not.i137 = icmp eq ptr %i.bi, null
  br i1 %.not.i137, label %ssh_dissect_proposal.exit138, label %bb.h

bb.h:                                             ; preds = %ssh_dissect_proposal.exit136
  %i.bn = call ptr @wmem_file_scope()
  %i.bo = call ptr @tvb_get_string_enc(ptr noundef %i.bn, ptr noundef %0, i32 noundef %i.bl, i32 noundef %i.bj, i32 noundef 0)
  store ptr %i.bo, ptr %i.bi, align 8
  br label %ssh_dissect_proposal.exit138

ssh_dissect_proposal.exit138:                     ; preds = %ssh_dissect_proposal.exit136, %bb.h
  %i.bp = add i32 %i.bj, %i.bl                    ; 3 uses
  %i.bq = load i32, ptr @hf_ssh_mac_algorithms_server_to_client_length, align 4
  %i.br = load i32, ptr @hf_ssh_mac_algorithms_server_to_client, align 4
  %i.bs = getelementptr i8, ptr %i.d, i64 40      ; 3 uses
  %i.bt = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.bp) ; 4 uses
  %i.bu = call ptr @proto_tree_add_uint(ptr noundef %i.f, i32 noundef %i.bq, ptr noundef %0, i32 noundef %i.bp, i32 noundef 4, i32 noundef %i.bt) ; 0 uses
  %i.bv = add i32 %i.bp, 4                        ; 3 uses
  %i.bw = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.br, ptr noundef %0, i32 noundef %i.bv, i32 noundef %i.bt, i32 noundef 0) ; 0 uses
  %.not.i139 = icmp eq ptr %i.bs, null
  br i1 %.not.i139, label %ssh_dissect_proposal.exit140, label %bb.i

bb.i:                                             ; preds = %ssh_dissect_proposal.exit138
  %i.bx = call ptr @wmem_file_scope()
  %i.by = call ptr @tvb_get_string_enc(ptr noundef %i.bx, ptr noundef %0, i32 noundef %i.bv, i32 noundef %i.bt, i32 noundef 0)
  store ptr %i.by, ptr %i.bs, align 8
  br label %ssh_dissect_proposal.exit140

ssh_dissect_proposal.exit140:                     ; preds = %ssh_dissect_proposal.exit138, %bb.i
  %i.bz = add i32 %i.bt, %i.bv                    ; 3 uses
  %i.ca = load i32, ptr @hf_ssh_compression_algorithms_client_to_server_length, align 4
  %i.cb = load i32, ptr @hf_ssh_compression_algorithms_client_to_server, align 4
  %i.cc = getelementptr i8, ptr %i.d, i64 88      ; 3 uses
  %i.cd = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.bz) ; 4 uses
  %i.ce = call ptr @proto_tree_add_uint(ptr noundef %i.f, i32 noundef %i.ca, ptr noundef %0, i32 noundef %i.bz, i32 noundef 4, i32 noundef %i.cd) ; 0 uses
  %i.cf = add i32 %i.bz, 4                        ; 3 uses
  %i.cg = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.cb, ptr noundef %0, i32 noundef %i.cf, i32 noundef %i.cd, i32 noundef 0) ; 0 uses
  %.not.i141 = icmp eq ptr %i.cc, null
  br i1 %.not.i141, label %ssh_dissect_proposal.exit142, label %bb.j

bb.j:                                             ; preds = %ssh_dissect_proposal.exit140
  %i.ch = call ptr @wmem_file_scope()
  %i.ci = call ptr @tvb_get_string_enc(ptr noundef %i.ch, ptr noundef %0, i32 noundef %i.cf, i32 noundef %i.cd, i32 noundef 0)
  store ptr %i.ci, ptr %i.cc, align 8
  br label %ssh_dissect_proposal.exit142

ssh_dissect_proposal.exit142:                     ; preds = %ssh_dissect_proposal.exit140, %bb.j
  %i.cj = add i32 %i.cd, %i.cf                    ; 3 uses
  %i.ck = load i32, ptr @hf_ssh_compression_algorithms_server_to_client_length, align 4
  %i.cl = load i32, ptr @hf_ssh_compression_algorithms_server_to_client, align 4
  %i.cm = getelementptr i8, ptr %i.d, i64 96      ; 3 uses
  %i.cn = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.cj) ; 4 uses
  %i.co = call ptr @proto_tree_add_uint(ptr noundef %i.f, i32 noundef %i.ck, ptr noundef %0, i32 noundef %i.cj, i32 noundef 4, i32 noundef %i.cn) ; 0 uses
  %i.cp = add i32 %i.cj, 4                        ; 3 uses
  %i.cq = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.cl, ptr noundef %0, i32 noundef %i.cp, i32 noundef %i.cn, i32 noundef 0) ; 0 uses
  %.not.i143 = icmp eq ptr %i.cm, null
  br i1 %.not.i143, label %ssh_dissect_proposal.exit144, label %bb.k

bb.k:                                             ; preds = %ssh_dissect_proposal.exit142
  %i.cr = call ptr @wmem_file_scope()
  %i.cs = call ptr @tvb_get_string_enc(ptr noundef %i.cr, ptr noundef %0, i32 noundef %i.cp, i32 noundef %i.cn, i32 noundef 0)
  store ptr %i.cs, ptr %i.cm, align 8
  br label %ssh_dissect_proposal.exit144

ssh_dissect_proposal.exit144:                     ; preds = %ssh_dissect_proposal.exit142, %bb.k
  %i.ct = add i32 %i.cn, %i.cp                    ; 3 uses
  %i.cu = load i32, ptr @hf_ssh_languages_client_to_server_length, align 4
  %i.cv = load i32, ptr @hf_ssh_languages_client_to_server, align 4
  %i.cw = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.ct) ; 3 uses
  %i.cx = call ptr @proto_tree_add_uint(ptr noundef %i.f, i32 noundef %i.cu, ptr noundef %0, i32 noundef %i.ct, i32 noundef 4, i32 noundef %i.cw) ; 0 uses
  %i.cy = add i32 %i.ct, 4                        ; 2 uses
  %i.cz = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.cv, ptr noundef %0, i32 noundef %i.cy, i32 noundef %i.cw, i32 noundef 0) ; 0 uses
  %i.da = add i32 %i.cw, %i.cy                    ; 3 uses
  %i.db = load i32, ptr @hf_ssh_languages_server_to_client_length, align 4
  %i.dc = load i32, ptr @hf_ssh_languages_server_to_client, align 4
  %i.dd = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.da) ; 3 uses
  %i.de = call ptr @proto_tree_add_uint(ptr noundef %i.f, i32 noundef %i.db, ptr noundef %0, i32 noundef %i.da, i32 noundef 4, i32 noundef %i.dd) ; 0 uses
  %i.df = add i32 %i.da, 4                        ; 2 uses
  %i.dg = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.dc, ptr noundef %0, i32 noundef %i.df, i32 noundef %i.dd, i32 noundef 0) ; 0 uses
  %i.dh = add i32 %i.dd, %i.df                    ; 3 uses
  %i.di = load i32, ptr @hf_ssh_first_kex_packet_follows, align 4
  %i.dj = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.di, ptr noundef %0, i32 noundef %i.dh, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dk = add i32 %i.dh, 1
  %i.dl = load i32, ptr @hf_ssh_kex_reserved, align 4
end_hunk_1
begin_hunk_2_@ssh_dissect_term_modes:bb.a
  br label %bb.d

.fold.split66:                                    ; preds = %bb.b
  br label %bb.d

.fold.split67:                                    ; preds = %bb.b
  br label %bb.d

.fold.split68:                                    ; preds = %bb.b
  br label %bb.d

.fold.split69:                                    ; preds = %bb.b
  br label %bb.d

.fold.split70:                                    ; preds = %bb.b
  br label %bb.d

.fold.split71:                                    ; preds = %bb.b
  br label %bb.d

.fold.split72:                                    ; preds = %bb.b
  br label %bb.d

.fold.split73:                                    ; preds = %bb.b
  br label %bb.d

.fold.split74:                                    ; preds = %bb.b
  br label %bb.d

.fold.split75:                                    ; preds = %bb.b
  br label %bb.d

.fold.split76:                                    ; preds = %bb.b
  br label %bb.d

.fold.split77:                                    ; preds = %bb.b
  br label %bb.d

.fold.split78:                                    ; preds = %bb.b
  br label %bb.d

.fold.split79:                                    ; preds = %bb.b
  br label %bb.d

.fold.split80:                                    ; preds = %bb.b
  br label %bb.d

.fold.split81:                                    ; preds = %bb.b
  br label %bb.d

.fold.split82:                                    ; preds = %bb.b
  br label %bb.d

.fold.split83:                                    ; preds = %bb.b
  br label %bb.d

.fold.split84:                                    ; preds = %bb.b
  br label %bb.d

.fold.split85:                                    ; preds = %bb.b
  br label %bb.d

.fold.split86:                                    ; preds = %bb.b
  br label %bb.d

.fold.split87:                                    ; preds = %bb.b
  br label %bb.d

.fold.split88:                                    ; preds = %bb.b
  br label %bb.d

.fold.split89:                                    ; preds = %bb.b
  br label %bb.d

.fold.split90:                                    ; preds = %bb.b
  br label %bb.d

.fold.split91:                                    ; preds = %bb.b
  br label %bb.d

.fold.split92:                                    ; preds = %bb.b
  br label %bb.d

.fold.split93:                                    ; preds = %bb.b
  br label %bb.d

.fold.split94:                                    ; preds = %bb.b
  br label %bb.d

.fold.split95:                                    ; preds = %bb.b
  br label %bb.d

.fold.split96:                                    ; preds = %bb.b
  br label %bb.d

.fold.split97:                                    ; preds = %bb.b
  br label %bb.d

.fold.split98:                                    ; preds = %.preheader.42
  br label %bb.d

.fold.split99:                                    ; preds = %.preheader.42
  br label %bb.d

.fold.split100:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split101:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split102:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split103:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split104:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split105:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split106:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split107:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split108:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split109:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split110:                                   ; preds = %.preheader.42
  br label %bb.d

.fold.split111:                                   ; preds = %.preheader.42
  br label %bb.d

bb.d:                                             ; preds = %.preheader.42, %.fold.split111, %.fold.split110, %.fold.split109, %.fold.split108, %.fold.split107, %.fold.split106, %.fold.split105, %.fold.split104, %.fold.split103, %.fold.split102, %.fold.split101, %.fold.split100, %.fold.split99, %.fold.split98, %bb.b, %.fold.split97, %.fold.split96, %.fold.split95, %.fold.split94, %.fold.split93, %.fold.split92, %.fold.split91, %.fold.split90, %.fold.split89, %.fold.split88, %.fold.split87, %.fold.split86, %.fold.split85, %.fold.split84, %.fold.split83, %.fold.split82, %.fold.split81, %.fold.split80, %.fold.split79, %.fold.split78, %.fold.split77, %.fold.split76, %.fold.split75, %.fold.split74, %.fold.split73, %.fold.split72, %.fold.split71, %.fold.split70, %.fold.split69, %.fold.split68, %.fold.split67, %.fold.split66, %.fold.split65, %.fold.split64, %.fold.split63, %.fold.split62, %.fold.split61, %.fold.split60, %.fold.split59, %.fold.split
  %.lcssa = phi i64 [ 55, %.fold.split110 ], [ 1, %bb.b ], [ 54, %.fold.split109 ], [ 2, %.fold.split ], [ 3, %.fold.split59 ], [ 4, %.fold.split60 ], [ 5, %.fold.split61 ], [ 6, %.fold.split62 ], [ 7, %.fold.split63 ], [ 8, %.fold.split64 ], [ 9, %.fold.split65 ], [ 10, %.fold.split66 ], [ 11, %.fold.split67 ], [ 12, %.fold.split68 ], [ 13, %.fold.split69 ], [ 14, %.fold.split70 ], [ 15, %.fold.split71 ], [ 16, %.fold.split72 ], [ 17, %.fold.split73 ], [ 18, %.fold.split74 ], [ 19, %.fold.split75 ], [ 20, %.fold.split76 ], [ 21, %.fold.split77 ], [ 22, %.fold.split78 ], [ 23, %.fold.split79 ], [ 24, %.fold.split80 ], [ 25, %.fold.split81 ], [ 26, %.fold.split82 ], [ 27, %.fold.split83 ], [ 28, %.fold.split84 ], [ 29, %.fold.split85 ], [ 30, %.fold.split86 ], [ 31, %.fold.split87 ], [ 32, %.fold.split88 ], [ 33, %.fold.split89 ], [ 34, %.fold.split90 ], [ 35, %.fold.split91 ], [ 36, %.fold.split92 ], [ 37, %.fold.split93 ], [ 38, %.fold.split94 ], [ 39, %.fold.split95 ], [ 40, %.fold.split96 ], [ 42, %.preheader.42 ], [ 41, %.fold.split97 ], [ 43, %.fold.split98 ], [ 44, %.fold.split99 ], [ 45, %.fold.split100 ], [ 46, %.fold.split101 ], [ 47, %.fold.split102 ], [ 48, %.fold.split103 ], [ 49, %.fold.split104 ], [ 50, %.fold.split105 ], [ 51, %.fold.split106 ], [ 52, %.fold.split107 ], [ 53, %.fold.split108 ], [ 56, %.fold.split111 ]
  %i.x = getelementptr [16 x i8], ptr @ssh_dissect_term_modes.tty_opts, i64 %.lcssa
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load i32, ptr %i.z, align 4             ; 4 uses
  %i.ab = call i32 @proto_registrar_get_ftype(i32 noundef %i.aa)
  switch i32 %i.ab, label %bb.h [
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 7, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ac = add i32 %.04453, 4
  %i.ad = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.n, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.ac, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.ae = load i8, ptr %i.c, align 1, !range !12, !noundef !13
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = select i1 %i.af, ptr @.str.879, ptr @.str.880
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.l, ptr noundef nonnull @.str.878, ptr noundef nonnull %i.ag)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ah = add i32 %.04453, 4
  %i.ai = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.n, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.ah, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.aj = load ptr, ptr %i.j, align 8
  %i.ak = load i32, ptr %i.b, align 4
  %i.al = trunc i32 %i.ak to i8
  %i.am = call ptr @format_char(ptr noundef %i.aj, i8 noundef signext %i.al)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.l, ptr noundef nonnull @.str.881, ptr noundef %i.am)
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.an = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.n, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.s, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.ao = load i32, ptr %i.b, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.l, ptr noundef nonnull @.str.876, i32 noundef %i.ao)
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.839, ptr noundef nonnull @.str.745, i32 noundef 5483) #28
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.c
  %i.ap = add i32 %.04453, 5                      ; 3 uses
  %i.aq = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ap)
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !94

._crit_edge:                                      ; preds = %bb.i, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.s, %bb.b ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_hash(ptr noundef) #18

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_equal(ptr noundef, ptr noundef) #18

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_add(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @fragment_set_partial_reassembly(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_get_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @pdu_store_sequencenumber_of_next_pdu(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_fence(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_writable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bytes_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @show_fragment_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_get_parent_nth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_tree_move_item(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_data_dissector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wmem_map_lookup_extended(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @proto_registrar_get_ftype(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @format_char(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare ptr @gnutls_check_version(ptr noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare ptr @gcry_check_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_strneql(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @conversation_set_dissector(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #17

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind null_pointer_is_valid memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { allocsize(1) }
attributes #24 = { allocsize(2) }
attributes #25 = { nounwind }
attributes #26 = { nounwind willreturn memory(none) }
attributes #27 = { allocsize(0) }
attributes #28 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7, !8, !9}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = distinct !{!10, !7, !9, !8}
!11 = distinct !{!11, !7}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{null, null}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = !{!20, !22}
!20 = distinct !{!20, !21, !"memcpy.inline: argument 0"}
!21 = distinct !{!21, !"memcpy.inline"}
!22 = distinct !{!22, !21, !"memcpy.inline: argument 1"}
!23 = !{!24, !26}
!24 = distinct !{!24, !25, !"memcpy.inline: argument 0"}
!25 = distinct !{!25, !"memcpy.inline"}
!26 = distinct !{!26, !25, !"memcpy.inline: argument 1"}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{null}
!30 = !{!31, !33}
!31 = distinct !{!31, !32, !"memcpy.inline: argument 0"}
!32 = distinct !{!32, !"memcpy.inline"}
!33 = distinct !{!33, !32, !"memcpy.inline: argument 1"}
!34 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!35 = distinct !{!35, !7}
!36 = !{!37, !39}
!37 = distinct !{!37, !38, !"memcpy.inline: argument 0"}
!38 = distinct !{!38, !"memcpy.inline"}
!39 = distinct !{!39, !38, !"memcpy.inline: argument 1"}
!40 = !{!41, !43}
!41 = distinct !{!41, !42, !"memcpy.inline: argument 0"}
!42 = distinct !{!42, !"memcpy.inline"}
!43 = distinct !{!43, !42, !"memcpy.inline: argument 1"}
!44 = !{!45, !47}
!45 = distinct !{!45, !46, !"memcpy.inline: argument 0"}
!46 = distinct !{!46, !"memcpy.inline"}
!47 = distinct !{!47, !46, !"memcpy.inline: argument 1"}
!48 = !{!49, !51}
!49 = distinct !{!49, !50, !"memcpy.inline: argument 0"}
!50 = distinct !{!50, !"memcpy.inline"}
!51 = distinct !{!51, !50, !"memcpy.inline: argument 1"}
!52 = !{!53, !55}
!53 = distinct !{!53, !54, !"memcpy.inline: argument 0"}
!54 = distinct !{!54, !"memcpy.inline"}
!55 = distinct !{!55, !54, !"memcpy.inline: argument 1"}
!56 = !{!57, !59}
!57 = distinct !{!57, !58, !"memcpy.inline: argument 0"}
!58 = distinct !{!58, !"memcpy.inline"}
!59 = distinct !{!59, !58, !"memcpy.inline: argument 1"}
!60 = !{!61, !63}
!61 = distinct !{!61, !62, !"memcpy.inline: argument 0"}
!62 = distinct !{!62, !"memcpy.inline"}
!63 = distinct !{!63, !62, !"memcpy.inline: argument 1"}
!64 = !{!65, !67}
!65 = distinct !{!65, !66, !"memcpy.inline: argument 0"}
!66 = distinct !{!66, !"memcpy.inline"}
!67 = distinct !{!67, !66, !"memcpy.inline: argument 1"}
!68 = distinct !{!68, !7}
!69 = distinct !{!69, !7}
!70 = distinct !{!70, !7}
!71 = distinct !{!71, !7}
!72 = distinct !{!72, !7}
!73 = distinct !{!73, !7}
!74 = distinct !{!74, !7}
!75 = distinct !{!75, !7}
!76 = !{!77, !79}
!77 = distinct !{!77, !78, !"memcpy.inline: argument 0"}
!78 = distinct !{!78, !"memcpy.inline"}
!79 = distinct !{!79, !78, !"memcpy.inline: argument 1"}
!80 = !{!81, !83}
!81 = distinct !{!81, !82, !"memcpy.inline: argument 0"}
!82 = distinct !{!82, !"memcpy.inline"}
!83 = distinct !{!83, !82, !"memcpy.inline: argument 1"}
!84 = !{!85, !87}
!85 = distinct !{!85, !86, !"memcpy.inline: argument 0"}
!86 = distinct !{!86, !"memcpy.inline"}
!87 = distinct !{!87, !86, !"memcpy.inline: argument 1"}
!88 = !{!89, !91}
!89 = distinct !{!89, !90, !"memcpy.inline: argument 0"}
!90 = distinct !{!90, !"memcpy.inline"}
!91 = distinct !{!91, !90, !"memcpy.inline: argument 1"}
!92 = distinct !{!92, !7}
!93 = !{!"branch_weights", !"expected", i32 2789303, i32 2144694345}
!94 = distinct !{!94, !7}
end_hunk_2
