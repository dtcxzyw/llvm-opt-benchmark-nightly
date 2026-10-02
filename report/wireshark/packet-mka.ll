Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-mka?download=true
inline.NumInlined: 32
inline.NumDeleted: 24
begin_hunk_0_@dissect_mka:bb.a
  %i.md = load i32, ptr @hf_mka_key_number, align 4
  %i.me = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ln, i32 noundef %i.md, ptr noundef %0, i32 noundef %i.lz, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.g) ; 0 uses
  %i.mf = add i32 %.0159, 8                       ; 2 uses
  br i1 %i.mc, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.mg = load i32, ptr @hf_mka_macsec_cipher_suite, align 4
  %i.mh = call ptr @proto_tree_add_item_ret_uint64(ptr noundef %i.ln, i32 noundef %i.mg, ptr noundef %0, i32 noundef %i.mf, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %i.f) ; 0 uses
  %i.mi = add i32 %.0159, 16                      ; 3 uses
  %i.mj = load i64, ptr %i.f, align 8
  switch i64 %i.mj, label %bb.bj [
    i64 36242102291529731, label %bb.bk
    i64 36242102291529732, label %bb.bi
    i64 36242102291529730, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bh
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.mk = add nsw i32 %i.lj, -12
  %i.ml = call ptr @proto_tree_add_expert(ptr noundef %i.ln, ptr noundef %1, ptr noundef nonnull @ei_mka_undecoded, ptr noundef %0, i32 noundef %i.mi, i32 noundef %i.mk) ; 0 uses
  br label %bb.ci

bb.bk:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %.0128.i = phi i16 [ 24, %bb.bh ], [ 40, %bb.bi ], [ 24, %bb.bg ] ; 2 uses
  %.0125.i = phi i32 [ %i.mi, %bb.bh ], [ %i.mi, %bb.bi ], [ %i.mf, %bb.bg ] ; 2 uses
  %i.mm = load ptr, ptr %i.bd, align 8
  %i.mn = zext nneg i16 %.0128.i to i64           ; 2 uses
  %i.mo = call ptr @tvb_memdup(ptr noundef %i.mm, ptr noundef %0, i32 noundef %.0125.i, i64 noundef %i.mn)
  %i.mp = load i32, ptr @hf_mka_aes_key_wrap_sak, align 4
  %i.mq = zext nneg i16 %.0128.i to i32           ; 2 uses
  %i.mr = call ptr @proto_tree_add_item(ptr noundef %i.ln, i32 noundef %i.mp, ptr noundef %0, i32 noundef %.0125.i, i32 noundef %i.mq, i32 noundef 0) ; 0 uses
  %i.ms = load ptr, ptr %i.bd, align 8
  %i.mt = load i32, ptr @proto_mka, align 4
  %i.mu = call ptr @p_get_proto_data(ptr noundef %i.ms, ptr noundef %1, i32 noundef %i.mt, i32 noundef 0) ; 6 uses
  %i.mv = icmp eq ptr %i.mu, null
  br i1 %i.mv, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.193, i32 noundef 3, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.194)
  br label %bb.ci

bb.bm:                                            ; preds = %bb.bk
  %i.mw = getelementptr i8, ptr %i.mu, i64 40
  %i.mx = getelementptr i8, ptr %i.mu, i64 72     ; 2 uses
  %i.my = load i32, ptr %i.mx, align 4
  %i.mz = icmp eq i32 %i.my, 0
  br i1 %i.mz, label %bb.ci, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.na = load ptr, ptr %i.cz, align 8
  %i.nb = getelementptr i8, ptr %i.na, i64 53
  %i.nc = load i16, ptr %i.nb, align 1
  %i.nd = and i16 %i.nc, 8
  %.not.i92 = icmp eq i16 %i.nd, 0
  br i1 %.not.i92, label %bb.bo, label %bb.cg

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.ne = call i32 @gcry_cipher_open(ptr noundef nonnull %i.h, i32 noundef 7, i32 noundef 7, i32 noundef 0)
  %.not134.i = icmp eq i32 %i.ne, 0
  br i1 %.not134.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.193, i32 noundef 5, ptr noundef nonnull @.str.189, i64 noundef 1118, ptr noundef nonnull @__func__.dissect_distributed_sak, ptr noundef nonnull @.str.195)
  br label %.critedge.i

bb.bq:                                            ; preds = %bb.bo
  %i.nf = load ptr, ptr %i.h, align 8
  %i.ng = load i32, ptr %i.mx, align 4
  %i.nh = zext i32 %i.ng to i64
  %i.ni = call i32 @gcry_cipher_setkey(ptr noundef %i.nf, ptr noundef %i.mw, i64 noundef %i.nh)
  %.not135.i94 = icmp eq i32 %i.ni, 0
  br i1 %.not135.i94, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.193, i32 noundef 5, ptr noundef nonnull @.str.189, i64 noundef 1123, ptr noundef nonnull @__func__.dissect_distributed_sak, ptr noundef nonnull @.str.196)
  %i.nj = load ptr, ptr %i.h, align 8
  call void @gcry_cipher_close(ptr noundef %i.nj)
  br label %.critedge.i

bb.bs:                                            ; preds = %bb.bq
  %i.nk = load i32, ptr %i.cx, align 4            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.mu, ptr %4, align 8
  store i8 %i.ls, ptr %i.dc, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.dd, i8 0, i64 7, i1 false)
  %i.nl = load ptr, ptr @mka_ckn_sak_map, align 8
  %i.nm = call ptr @wmem_multimap_lookup32(ptr noundef %i.nl, ptr noundef nonnull %4, i32 noundef %i.nk) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.nn = icmp eq ptr %i.nm, null
  br i1 %i.nn, label %bb.bt, label %get_or_create_sak_info.exit

bb.bt:                                            ; preds = %bb.bs
  %i.no = call ptr @wmem_file_scope()
  %i.np = call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.no, i64 noundef 16) #18 ; 3 uses
  store ptr %i.mu, ptr %i.np, align 8
  %i.nq = getelementptr i8, ptr %i.np, i64 8
  store i8 %i.ls, ptr %i.nq, align 8
  %i.nr = call ptr @wmem_file_scope()
  %i.ns = call noalias dereferenceable_or_null(96) ptr @wmem_alloc0(ptr noundef %i.nr, i64 noundef 96) #18 ; 4 uses
  %i.nt = call ptr @wmem_file_scope()
  %i.nu = call ptr @wmem_map_new(ptr noundef %i.nt, ptr noundef nonnull @mka_sci_hash, ptr noundef nonnull @mka_sci_equal)
  %i.nv = getelementptr i8, ptr %i.ns, i64 48
  store ptr %i.nu, ptr %i.nv, align 8
  %i.nw = call ptr @wmem_file_scope()
  %i.nx = call ptr @wmem_array_new(ptr noundef %i.nw, i64 noundef 12)
  %i.ny = getelementptr i8, ptr %i.ns, i64 56
  store ptr %i.nx, ptr %i.ny, align 8
  %i.nz = load ptr, ptr @mka_ckn_sak_map, align 8
  %i.oa = call zeroext i1 @wmem_multimap_insert32(ptr noundef %i.nz, ptr noundef %i.np, i32 noundef %i.nk, ptr noundef %i.ns) ; 0 uses
  br label %get_or_create_sak_info.exit

get_or_create_sak_info.exit:                      ; preds = %bb.bs, %bb.bt
  %.0.i119 = phi ptr [ %i.ns, %bb.bt ], [ %i.nm, %bb.bs ] ; 15 uses
  %i.ob = add nsw i32 %i.mq, -8                   ; 2 uses
  %i.oc = getelementptr i8, ptr %.0.i119, i64 88  ; 3 uses
  store i32 %i.ob, ptr %i.oc, align 8
  %i.od = load ptr, ptr %i.h, align 8
  %i.oe = zext nneg i32 %i.ob to i64
  %i.of = call i32 @gcry_cipher_decrypt(ptr noundef %i.od, ptr noundef %.0.i119, i64 noundef %i.oe, ptr noundef %i.mo, i64 noundef %i.mn)
  %.not136.i95 = icmp eq i32 %i.of, 0
  br i1 %.not136.i95, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %get_or_create_sak_info.exit
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.193, i32 noundef 3, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.197)
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %.0.i119, i8 noundef 0, i64 noundef 32, i1 noundef false) #16
  store i32 0, ptr %i.oc, align 8
  %i.og = load ptr, ptr %i.h, align 8
  call void @gcry_cipher_close(ptr noundef %i.og)
  br label %.critedge.i

bb.bv:                                            ; preds = %get_or_create_sak_info.exit
  %i.oh = load ptr, ptr %i.bd, align 8
  %i.oi = load i32, ptr @proto_mka, align 4
  %i.oj = call ptr @p_get_proto_data(ptr noundef %i.oh, ptr noundef %1, i32 noundef %i.oi, i32 noundef 2) ; 8 uses
  %.not137.i96 = icmp eq ptr %i.oj, null
  br i1 %.not137.i96, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.189, i32 noundef 1144, ptr noundef nonnull @.str.198) #17
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.ok = getelementptr i8, ptr %.0.i119, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(12) %i.ok, ptr noundef nonnull align 1 dereferenceable(12) %i.oj, i64 noundef 12, i1 noundef false) #16
  %i.ol = getelementptr i8, ptr %.0.i119, i64 44
  %i.om = load i32, ptr %i.g, align 4             ; 4 uses
  %i.on = lshr i32 %i.om, 24
  %i.oo = trunc nuw i32 %i.on to i8
  store i8 %i.oo, ptr %i.ol, align 4
  %i.op = lshr i32 %i.om, 16
  %i.oq = trunc i32 %i.op to i8
  %i.or = getelementptr i8, ptr %.0.i119, i64 45
  store i8 %i.oq, ptr %i.or, align 1
  %i.os = lshr i32 %i.om, 8
  %i.ot = trunc i32 %i.os to i8
  %i.ou = getelementptr i8, ptr %.0.i119, i64 46
  store i8 %i.ot, ptr %i.ou, align 2
  %i.ov = trunc i32 %i.om to i8
  %i.ow = getelementptr i8, ptr %.0.i119, i64 47
  store i8 %i.ov, ptr %i.ow, align 1
  %i.ox = load i64, ptr %i.f, align 8
  %i.oy = getelementptr i8, ptr %.0.i119, i64 80
  store i64 %i.ox, ptr %i.oy, align 8
  %i.oz = load ptr, ptr %i.bd, align 8
  %i.pa = load i32, ptr @proto_mka, align 4
  %i.pb = call ptr @p_get_proto_data(ptr noundef %i.oz, ptr noundef %1, i32 noundef %i.pa, i32 noundef 4) ; 2 uses
  %.not138.i97 = icmp eq ptr %i.pb, null
  br i1 %.not138.i97, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pc = getelementptr i8, ptr %.0.i119, i64 48
  %i.pd = load ptr, ptr %i.pc, align 8
  call void @wmem_map_foreach(ptr noundef nonnull %i.pb, ptr noundef nonnull @mka_sci_map_copy, ptr noundef %i.pd)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.pe = load ptr, ptr %i.bd, align 8
  %i.pf = load i32, ptr @proto_mka, align 4
  %i.pg = call ptr @p_get_proto_data(ptr noundef %i.pe, ptr noundef %1, i32 noundef %i.pf, i32 noundef 5) ; 3 uses
  %.not139.i98 = icmp eq ptr %i.pg, null
  br i1 %.not139.i98, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ph = getelementptr i8, ptr %.0.i119, i64 56
  %i.pi = load ptr, ptr %i.ph, align 8
  %i.pj = call ptr @wmem_array_get_raw(ptr noundef nonnull %i.pg)
  %i.pk = call i32 @wmem_array_get_count(ptr noundef nonnull %i.pg)
  %i.pl = call zeroext i1 @wmem_array_append(ptr noundef %i.pi, ptr noundef %i.pj, i32 noundef %i.pk) ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.pm = load i64, ptr %i.f, align 8
  %i.pn = add i64 %i.pm, -36242102291529731
  %or.cond4.i = icmp ult i64 %i.pn, 2
  br i1 %or.cond4.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %8 = load i32, ptr %i.oj, align 1
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %i.po = load i32, ptr %i.g, align 4             ; 2 uses
  %i.pp = lshr i32 %i.po, 16
  %i.pq = xor i32 %i.pp, %9                       ; 3 uses
  %i.pr = shl i32 %i.po, 16
  %i.ps = xor i32 %i.pq, %i.pr                    ; 2 uses
  %i.pt = lshr i32 %i.ps, 24
  %i.pu = trunc nuw i32 %i.pt to i8
  store i8 %i.pu, ptr %i.oj, align 1
  %i.pv = lshr i32 %i.ps, 16
  %i.pw = trunc i32 %i.pv to i8
  %10 = getelementptr i8, ptr %i.oj, i64 1
  store i8 %i.pw, ptr %10, align 1
  %i.px = lshr i32 %i.pq, 8
  %i.py = trunc i32 %i.px to i8
  %11 = getelementptr i8, ptr %i.oj, i64 2
  store i8 %i.py, ptr %11, align 1
  %i.pz = trunc i32 %i.pq to i8
  %12 = getelementptr i8, ptr %i.oj, i64 3
  store i8 %i.pz, ptr %12, align 1
  %i.qa = getelementptr i8, ptr %.0.i119, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(12) %i.qa, ptr noundef nonnull align 1 dereferenceable(12) %i.oj, i64 noundef 12, i1 noundef false) #16
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.qb = load ptr, ptr %i.h, align 8
  call void @gcry_cipher_close(ptr noundef %i.qb)
  %i.qc = load ptr, ptr %i.bd, align 8
  %i.qd = load i32, ptr @proto_mka, align 4
  call void @p_add_proto_data(ptr noundef %i.qc, ptr noundef %1, i32 noundef %i.qd, i32 noundef 3, ptr noundef %.0.i119)
  %i.qe = call zeroext i1 @ws_log_msg_is_active(ptr noundef nonnull @.str.193, i32 noundef 2)
  br i1 %i.qe, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.qf = load ptr, ptr %i.bd, align 8
  %i.qg = load i32, ptr %i.oc, align 8
  %i.qh = zext i32 %i.qg to i64
  %i.qi = call ptr @bytes_to_str_maxlen(ptr noundef %i.qf, ptr noundef %.0.i119, i64 noundef %i.qh, i64 noundef 0) ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  br label %bb.ch

bb.cg:                                            ; preds = %bb.bn
  %i.qj = load i32, ptr %i.cx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %i.mu, ptr %6, align 8
  store i8 %i.ls, ptr %i.da, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.db, i8 0, i64 7, i1 false)
  %i.qk = load ptr, ptr @mka_ckn_sak_map, align 8
  %i.ql = call ptr @wmem_multimap_lookup32(ptr noundef %i.qk, ptr noundef nonnull %6, i32 noundef %i.qj) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %.not140.i93 = icmp eq ptr %i.ql, null
  br i1 %.not140.i93, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.1127.i = phi ptr [ %i.ql, %bb.cg ], [ %.0.i119, %bb.cf ] ; 2 uses
  %i.qm = getelementptr i8, ptr %.1127.i, i64 88  ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 8            ; 2 uses
  %i.qo = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %.1127.i, i32 noundef %i.qn, i32 noundef %i.qn) ; 2 uses
  %i.qp = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.qo, ptr noundef nonnull @.str.108) ; 0 uses
  %i.qq = load i32, ptr @hf_mka_aes_key_wrap_unwrapped_sak, align 4
  %i.qr = load i32, ptr %i.qm, align 8
  %i.qs = call ptr @proto_tree_add_item(ptr noundef %i.ln, i32 noundef %i.qq, ptr noundef %i.qo, i32 noundef 0, i32 noundef %i.qr, i32 noundef 0) ; 0 uses
  br label %bb.ci

.critedge.i:                                      ; preds = %bb.bu, %bb.br, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  br label %bb.ci

bb.ci:                                            ; preds = %.critedge.i, %bb.ch, %bb.cg, %bb.bm, %bb.bl, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  br label %dissect_live_peer_list.exit.thread

bb.cj:                                            ; preds = %bb.bf
  %i.qt = call ptr @proto_tree_add_expert(ptr noundef %i.ln, ptr noundef %1, ptr noundef nonnull @ei_mka_undecoded, ptr noundef %0, i32 noundef %i.lz, i32 noundef %i.lj) ; 0 uses
  br label %dissect_live_peer_list.exit.thread

bb.ck:                                            ; preds = %bb.n
  %i.qu = load i32, ptr @hf_mka_distributed_cak_set, align 4
  %i.qv = zext nneg i16 %i.dl to i32              ; 3 uses
  %i.qw = add nuw nsw i32 %i.qv, 4
  %i.qx = call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.qu, ptr noundef %0, i32 noundef %.0159, i32 noundef %i.qw, i32 noundef 0)
  %i.qy = load i32, ptr @ett_mka_distributed_cak_set, align 4
  %i.qz = call ptr @proto_item_add_subtree(ptr noundef %i.qx, i32 noundef %i.qy) ; 6 uses
  %i.ra = load i32, ptr @hf_mka_param_set_type, align 4
  %i.rb = call ptr @proto_tree_add_uint(ptr noundef %i.qz, i32 noundef %i.ra, ptr noundef %0, i32 noundef %.0159, i32 noundef 1, i32 noundef 5) ; 0 uses
  %i.rc = load i32, ptr @hf_mka_param_body_length, align 4
  %i.rd = call ptr @proto_tree_add_uint(ptr noundef %i.qz, i32 noundef %i.rc, ptr noundef %0, i32 noundef %i.dj, i32 noundef 2, i32 noundef %i.qv) ; 0 uses
  %i.re = add i32 %.0159, 4                       ; 2 uses
  %i.rf = load i32, ptr @hf_mka_aes_key_wrap_cak, align 4
  %i.rg = call ptr @proto_tree_add_item(ptr noundef %i.qz, i32 noundef %i.rf, ptr noundef %0, i32 noundef %i.re, i32 noundef 24, i32 noundef 0) ; 0 uses
  %i.rh = add i32 %.0159, 28                      ; 3 uses
  %i.ri = add nsw i16 %i.dl, -24                  ; 2 uses
  %i.rj = load i32, ptr @hf_mka_cak_name, align 4
  %i.rk = zext i16 %i.ri to i32                   ; 3 uses
  %i.rl = call ptr @proto_tree_add_item(ptr noundef %i.qz, i32 noundef %i.rj, ptr noundef %0, i32 noundef %i.rh, i32 noundef %i.rk, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.rm = add nsw i16 %i.dl, -25
  %or.cond.i.i99 = icmp ult i16 %i.rm, 32
  br i1 %or.cond.i.i99, label %bb.cl, label %dissect_distributed_cak.exit

bb.cl:                                            ; preds = %bb.ck
  %i.rn = zext nneg i16 %i.ri to i64
  %i.ro = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.e, i32 noundef %i.rh, i64 noundef %i.rn) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.cy, i8 0, i64 104, i1 false)
  store ptr %i.e, ptr %5, align 8
  store i32 %i.rk, ptr %i.cy, align 8
  %i.rp = load ptr, ptr @ht_mka_ckn, align 8      ; 2 uses
  %i.rq = icmp eq ptr %i.rp, null
  br i1 %i.rq, label %ckn_info_lookup.exit.thread.i.i104, label %ckn_info_lookup.exit.i.i100

ckn_info_lookup.exit.thread.i.i104:               ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %dissect_distributed_cak.exit

ckn_info_lookup.exit.i.i100:                      ; preds = %bb.cl
  %i.rr = call ptr @g_hash_table_lookup(ptr noundef nonnull %i.rp, ptr noundef nonnull %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.not.i.i101 = icmp eq ptr %i.rr, null
  br i1 %.not.i.i101, label %dissect_distributed_cak.exit, label %bb.cm

bb.cm:                                            ; preds = %ckn_info_lookup.exit.i.i100
  %i.rs = load i32, ptr @hf_mka_cak_name_info, align 4
  %i.rt = getelementptr i8, ptr %i.rr, i64 32
  %i.ru = load ptr, ptr %i.rt, align 8
  %i.rv = call ptr @proto_tree_add_string(ptr noundef %i.qz, i32 noundef %i.rs, ptr noundef %0, i32 noundef %i.rh, i32 noundef %i.rk, ptr noundef %i.ru) ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.rv, null
  br i1 %.not.i.i.i102, label %dissect_distributed_cak.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.rw = getelementptr i8, ptr %i.rv, i64 40
  %i.rx = load ptr, ptr %i.rw, align 8            ; 2 uses
  %.not5.i.i.i103 = icmp eq ptr %i.rx, null
  br i1 %.not5.i.i.i103, label %dissect_distributed_cak.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ry = getelementptr i8, ptr %i.rx, i64 28     ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 4
  %i.sa = or i32 %i.rz, 2
  store i32 %i.sa, ptr %i.ry, align 4
  br label %dissect_distributed_cak.exit

dissect_distributed_cak.exit:                     ; preds = %bb.ck, %ckn_info_lookup.exit.thread.i.i104, %ckn_info_lookup.exit.i.i100, %bb.cm, %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %dissect_live_peer_list.exit.thread

bb.cp:                                            ; preds = %bb.n
  %i.sb = load i32, ptr @hf_mka_kmd_set, align 4
  %i.sc = zext nneg i16 %i.dl to i32              ; 4 uses
  %i.sd = add nuw nsw i32 %i.sc, 4
  %i.se = call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.sb, ptr noundef %0, i32 noundef %.0159, i32 noundef %i.sd, i32 noundef 0)
  %i.sf = load i32, ptr @ett_mka_kmd_set, align 4
  %i.sg = call ptr @proto_item_add_subtree(ptr noundef %i.se, i32 noundef %i.sf) ; 4 uses
  %i.sh = load i32, ptr @hf_mka_param_set_type, align 4
  %i.si = call ptr @proto_tree_add_uint(ptr noundef %i.sg, i32 noundef %i.sh, ptr noundef %0, i32 noundef %.0159, i32 noundef 1, i32 noundef 6) ; 0 uses
  %i.sj = load i32, ptr @hf_mka_param_body_length, align 4
  %i.sk = call ptr @proto_tree_add_uint(ptr noundef %i.sg, i32 noundef %i.sj, ptr noundef %0, i32 noundef %i.dj, i32 noundef 2, i32 noundef %i.sc) ; 0 uses
  %i.sl = add i32 %.0159, 4                       ; 2 uses
  %i.sm = load i32, ptr @hf_mka_kmd, align 4
  %i.sn = call ptr @proto_tree_add_item(ptr noundef %i.sg, i32 noundef %i.sm, ptr noundef %0, i32 noundef %i.sl, i32 noundef %i.sc, i32 noundef 2) ; 0 uses
  br label %dissect_live_peer_list.exit.thread

bb.cq:                                            ; preds = %bb.n
  %i.so = load i32, ptr @hf_mka_announcement_set, align 4
  %i.sp = zext nneg i16 %i.dl to i32              ; 5 uses
  %i.sq = add nuw nsw i32 %i.sp, 4
  %i.sr = call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.so, ptr noundef %0, i32 noundef %.0159, i32 noundef %i.sq, i32 noundef 0)
  %i.ss = load i32, ptr @ett_mka_announcement_set, align 4
  %i.st = call ptr @proto_item_add_subtree(ptr noundef %i.sr, i32 noundef %i.ss) ; 6 uses
  %i.su = load i32, ptr @hf_mka_param_set_type, align 4
  %i.sv = call ptr @proto_tree_add_uint(ptr noundef %i.st, i32 noundef %i.su, ptr noundef %0, i32 noundef %.0159, i32 noundef 1, i32 noundef 7) ; 0 uses
  %i.sw = load i32, ptr @hf_mka_param_body_length, align 4
  %i.sx = call ptr @proto_tree_add_uint(ptr noundef %i.st, i32 noundef %i.sw, ptr noundef %0, i32 noundef %i.dj, i32 noundef 2, i32 noundef %i.sp) ; 0 uses
  %i.sy = add i32 %.0159, 4                       ; 6 uses
  %.not112.i = icmp samesign ult i16 %i.dl, 2
  br i1 %.not112.i, label %dissect_live_peer_list.exit.thread, label %.lr.ph114.i

.lr.ph114.i:                                      ; preds = %bb.cq, %.loopexit.i105
  %i.sz = phi i32 [ %i.ve, %.loopexit.i105 ], [ 2, %bb.cq ] ; 6 uses
  %.0101113.i = phi i32 [ %.2.i106, %.loopexit.i105 ], [ 0, %bb.cq ]
  %i.ta = add i32 %.0101113.i, %i.sy              ; 5 uses
  %i.tb = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ta)
  %i.tc = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.ta)
  %i.td = and i16 %i.tc, 511                      ; 3 uses
  %i.te = zext nneg i16 %i.td to i32              ; 7 uses
  %i.tf = add nsw i32 %i.sz, %i.te                ; 6 uses
  %i.tg = icmp sgt i32 %i.tf, %i.sp
  br i1 %i.tg, label %dissect_live_peer_list.exit, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph114.i
  %i.th = lshr i8 %i.tb, 1                        ; 2 uses
  %i.ti = load i32, ptr @hf_mka_tlv_entry, align 4
  %i.tj = add nuw nsw i32 %i.te, 2                ; 2 uses
  %i.tk = load ptr, ptr %i.bd, align 8
  %i.tl = zext nneg i8 %i.th to i32
  %i.tm = call ptr @val_to_str(ptr noundef %i.tk, i32 noundef %i.tl, ptr noundef nonnull @macsec_tlvs, ptr noundef nonnull @.str.200)
  %i.tn = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.st, i32 noundef %i.ti, ptr noundef %0, i32 noundef %i.ta, i32 noundef %i.tj, ptr noundef nonnull @.str.199, ptr noundef %i.tm)
  %i.to = load i32, ptr @ett_mka_tlv, align 4
  %i.tp = call ptr @proto_item_add_subtree(ptr noundef %i.tn, i32 noundef %i.to) ; 7 uses
  %i.tq = load i32, ptr @hf_mka_tlv_type, align 4
  %i.tr = call ptr @proto_tree_add_item(ptr noundef %i.tp, i32 noundef %i.tq, ptr noundef %0, i32 noundef %i.ta, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ts = load i32, ptr @hf_mka_tlv_info_string_length, align 4
  %i.tt = call ptr @proto_tree_add_item(ptr noundef %i.tp, i32 noundef %i.ts, ptr noundef %0, i32 noundef %i.ta, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.not106.i = icmp eq i16 %i.td, 0
  br i1 %.not106.i, label %.loopexit.i105, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  switch i8 %i.th, label %bb.cw [
    i8 112, label %.preheader.i
    i8 113, label %bb.cu
    i8 111, label %bb.cv
    i8 114, label %bb.cv
  ]

.preheader.i:                                     ; preds = %bb.cs
  %.not107110.i = icmp samesign ult i16 %i.td, 10
end_hunk_0
begin_hunk_1_@g_memdup2
; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strndup(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_new(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @mka_derive_key(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  %i.c = alloca [32 x i8], align 16               ; 11 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = getelementptr i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %2, align 8
  %i.h = getelementptr i8, ptr %2, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %2, i64 24
  %i.k = load i32, ptr %i.j, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.l = tail call i32 @llvm.umin.i32(i32 %i.i, i32 16)
  %i.m = zext nneg i32 %i.l to i64
  %i.n = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef %i.g, i64 noundef %i.m, i64 noundef 16) #16, !alias.scope !25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.o = call zeroext i1 @ws_log_msg_is_active(ptr noundef nonnull @.str.193, i32 noundef 2)
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = zext i32 %i.k to i64
  %i.q = call ptr @bytes_to_str_maxlen(ptr noundef null, ptr noundef %i.f, i64 noundef %i.p, i64 noundef 0)
  call void @g_free(ptr noundef %i.q)
  %i.r = call ptr @bytes_to_str_maxlen(ptr noundef null, ptr noundef %0, i64 noundef 12, i64 noundef 0)
  call void @g_free(ptr noundef %i.r)
  %i.s = call ptr @bytes_to_str_maxlen(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef 0)
  call void @g_free(ptr noundef %i.s)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i64 16, ptr %i.d, align 8
  %i.t = shl i32 %i.k, 3                          ; 2 uses
  %i.u = lshr i32 %i.k, 4                         ; 3 uses
  %i.v = call i32 @gcry_mac_open(ptr noundef nonnull %i.b, i32 noundef 201, i32 noundef 0, ptr noundef null)
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.193, i32 noundef 5, ptr noundef nonnull @.str.189, i64 noundef 288, ptr noundef nonnull @__func__.mka_derive_key, ptr noundef nonnull @.str.214)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = zext i32 %i.k to i64                     ; 2 uses
  %i.y = call i32 @gcry_mac_setkey(ptr noundef %i.w, ptr noundef %i.f, i64 noundef %i.x)
  %.not37 = icmp eq i32 %i.y, 0
  br i1 %.not37, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.e
  %.not4144.not = icmp eq i32 %i.u, 0
  br i1 %.not4144.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 13 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 14 ; 2 uses
  %i.ac = lshr i32 %i.t, 8
  %i.ad = trunc i32 %i.ac to i8                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 30 ; 2 uses
  %i.af = trunc i32 %i.t to i8                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 31 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.u to i64
  %.pre = load ptr, ptr %i.b, align 8
  store i8 1, ptr %i.c, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.z, ptr noundef align 1 dereferenceable(12) %0, i64 noundef 12, i1 noundef false) #16
  store i8 0, ptr %i.aa, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ab, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 noundef 16, i1 noundef false) #16
  store i8 %i.ad, ptr %i.ae, align 2
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = call i32 @gcry_mac_write(ptr noundef %.pre, ptr noundef nonnull %i.c, i64 noundef 32)
  %.not40.peel = icmp eq i32 %i.ah, 0
  br i1 %.not40.peel, label %bb.g, label %.loopexit49

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.b, align 8
  %i.aj = call i32 @gcry_mac_read(ptr noundef %i.ai, ptr noundef %1, ptr noundef nonnull %i.d) ; 0 uses
  %i.ak = load i64, ptr %i.d, align 8
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %exitcond.peel.not = icmp eq i32 %i.u, 1
  br i1 %exitcond.peel.not, label %.critedge, label %.peel.next

bb.h:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.193, i32 noundef 5, ptr noundef nonnull @.str.189, i64 noundef 294, ptr noundef nonnull @__func__.mka_derive_key, ptr noundef nonnull @.str.215)
  %i.am = load ptr, ptr %i.b, align 8
  call void @gcry_mac_close(ptr noundef %i.am)
  br label %bb.l

.peel.next:                                       ; preds = %bb.g, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 1, %bb.g ] ; 2 uses
  %.03645 = phi i32 [ %i.bb, %bb.j ], [ %i.al, %bb.g ]
  %i.an = load ptr, ptr %i.b, align 8
  %i.ao = call i32 @gcry_mac_ctl(ptr noundef %i.an, i32 noundef 4, ptr noundef null, i64 noundef 0)
  %.not39 = icmp eq i32 %i.ao, 0
  br i1 %.not39, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %.peel.next
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.193, i32 noundef 5, ptr noundef nonnull @.str.189, i64 noundef 303, ptr noundef nonnull @__func__.mka_derive_key, ptr noundef nonnull @.str.216)
  %i.ap = load ptr, ptr %i.b, align 8
  call void @gcry_mac_close(ptr noundef %i.ap)
  br label %bb.l

bb.i:                                             ; preds = %.peel.next
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aq = trunc i64 %indvars.iv.next to i8
  store i8 %i.aq, ptr %i.c, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.z, ptr noundef align 1 dereferenceable(12) %0, i64 noundef 12, i1 noundef false) #16
  store i8 0, ptr %i.aa, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ab, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 noundef 16, i1 noundef false) #16
  store i8 %i.ad, ptr %i.ae, align 2
  store i8 %i.af, ptr %i.ag, align 1
  %i.ar = load ptr, ptr %i.b, align 8
  %i.as = call i32 @gcry_mac_write(ptr noundef %i.ar, ptr noundef nonnull %i.c, i64 noundef 32)
  %.not40 = icmp eq i32 %i.as, 0
  br i1 %.not40, label %bb.j, label %.loopexit49

.loopexit49:                                      ; preds = %bb.i, %bb.f
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.193, i32 noundef 5, ptr noundef nonnull @.str.189, i64 noundef 317, ptr noundef nonnull @__func__.mka_derive_key, ptr noundef nonnull @.str.217)
  %i.at = load ptr, ptr %i.b, align 8
  call void @gcry_mac_close(ptr noundef %i.at)
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %i.b, align 8
  %i.av = load i64, ptr %i.d, align 8
  %i.aw = mul i64 %i.av, %indvars.iv
  %i.ax = getelementptr i8, ptr %1, i64 %i.aw
  %i.ay = call i32 @gcry_mac_read(ptr noundef %i.au, ptr noundef %i.ax, ptr noundef nonnull %i.d) ; 0 uses
  %i.az = load i64, ptr %i.d, align 8
  %i.ba = trunc i64 %i.az to i32
  %i.bb = add i32 %.03645, %i.ba                  ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.peel.next, !llvm.loop !24

.critedge:                                        ; preds = %bb.j, %bb.g, %.preheader
  %.036.lcssa = phi i32 [ 0, %.preheader ], [ %i.al, %bb.g ], [ %i.bb, %bb.j ] ; 2 uses
  %i.bc = load ptr, ptr %i.b, align 8
  call void @gcry_mac_close(ptr noundef %i.bc)
  %i.bd = call zeroext i1 @ws_log_msg_is_active(ptr noundef nonnull @.str.193, i32 noundef 2)
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge
  %i.be = call ptr @bytes_to_str_maxlen(ptr noundef null, ptr noundef %1, i64 noundef %i.x, i64 noundef 0)
  call void @g_free(ptr noundef %i.be)
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %.loopexit49, %.critedge, %bb.k, %bb.h, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ 0, %bb.h ], [ %.036.lcssa, %.critedge ], [ %.036.lcssa, %bb.k ], [ 0, %.loopexit49 ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_ctl(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { allocsize(1) }
attributes #19 = { allocsize(0) }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = distinct !{!16, !6, !7, !8}
!17 = distinct !{!17, !6, !8, !7}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6, !7, !8}
!20 = distinct !{!20, !6, !8, !7}
!21 = distinct !{!21, i1 false, !"memcpy.inline"}
!22 = distinct !{!22, !21, !"memcpy.inline: argument 1"}
!23 = distinct !{!23, !21, !"memcpy.inline: argument 0"}
!24 = distinct !{!24, !6, !26}
!25 = !{!23, !22}
!26 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
