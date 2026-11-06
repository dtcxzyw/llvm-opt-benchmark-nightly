Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-mka?download=true
inline.NumInlined: 32
inline.NumDeleted: 24
begin_hunk_0_@dissect_mka:bb.a

bb.ay:                                            ; preds = %bb.ax
  %i.kl = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.l, i32 noundef %i.kc, i64 noundef 16) ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.km = add i32 %.0159, 36
  %i.kn = load i32, ptr @hf_mka_old_key_number, align 4
  %i.ko = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.kn, ptr noundef %0, i32 noundef %i.km, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.kp = add i32 %.0159, 40                      ; 2 uses
  %i.kq = load i8, ptr %i.j, align 1, !range !14, !noundef !15
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.ks = load ptr, ptr %i.cz, align 8
  %i.kt = getelementptr i8, ptr %i.ks, i64 53
  %i.ku = load i16, ptr %i.kt, align 1
  %i.kv = and i16 %i.ku, 8
  %.not100.i = icmp eq i16 %i.kv, 0
  br i1 %.not100.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kw = load i32, ptr @hf_mka_old_lowest_acceptable_pn, align 4
  %i.kx = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.hz, i32 noundef %i.kw, ptr noundef %0, i32 noundef %i.kp, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.k) ; 0 uses
  %i.ky = load ptr, ptr %i.bd, align 8
  %i.kz = call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.ky, i64 noundef 24) #18 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(16) %i.kz, ptr noundef nonnull align 16 dereferenceable(16) %i.l, i64 noundef 16, i1 noundef false) #16
  %i.la = load i32, ptr %i.k, align 4
  %i.lb = zext i32 %i.la to i64
  %i.lc = getelementptr i8, ptr %i.kz, i64 16
  store i64 %i.lb, ptr %i.lc, align 8
  %i.ld = load ptr, ptr %i.bd, align 8
  %i.le = load i32, ptr @proto_mka, align 4
  call void @p_add_proto_data(ptr noundef %i.ld, ptr noundef %1, i32 noundef %i.le, i32 noundef 7, ptr noundef %i.kz)
  br label %dissect_sak_use.exit

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.lf = load i32, ptr @hf_mka_old_lowest_acceptable_pn, align 4
  %i.lg = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.lf, ptr noundef %0, i32 noundef %i.kp, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_sak_use.exit

bb.bd:                                            ; preds = %bb.ao
  %i.lh = call ptr @proto_tree_add_expert(ptr noundef %i.hz, ptr noundef %1, ptr noundef @ei_mka_undecoded, ptr noundef %0, i32 noundef %i.ix, i32 noundef %i.hv) ; 0 uses
  br label %dissect_sak_use.exit

dissect_sak_use.exit:                             ; preds = %bb.ao, %bb.bb, %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  br label %dissect_live_peer_list.exit.thread

bb.be:                                            ; preds = %bb.n
  %i.li = load i32, ptr @hf_mka_distributed_sak_set, align 4
  %i.lj = zext nneg i16 %i.dl to i32              ; 6 uses
  %i.lk = add nuw nsw i32 %i.lj, 4
  %i.ll = call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.li, ptr noundef %0, i32 noundef %.0159, i32 noundef %i.lk, i32 noundef 0)
  %i.lm = load i32, ptr @ett_mka_distributed_sak_set, align 4
  %i.ln = call ptr @proto_item_add_subtree(ptr noundef %i.ll, i32 noundef %i.lm) ; 13 uses
  %i.lo = load i32, ptr @hf_mka_param_set_type, align 4
  %i.lp = call ptr @proto_tree_add_uint(ptr noundef %i.ln, i32 noundef %i.lo, ptr noundef %0, i32 noundef %.0159, i32 noundef 1, i32 noundef 4) ; 0 uses
  %i.lq = add i32 %.0159, 1                       ; 3 uses
  %i.lr = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.lq)
  %i.ls = lshr i8 %i.lr, 6                        ; 3 uses
  %i.lt = load i32, ptr @hf_mka_distributed_an, align 4
  %i.lu = call ptr @proto_tree_add_item(ptr noundef %i.ln, i32 noundef %i.lt, ptr noundef %0, i32 noundef %i.lq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.lv = load i32, ptr @hf_mka_confidentiality_offset, align 4
  %i.lw = call ptr @proto_tree_add_item(ptr noundef %i.ln, i32 noundef %i.lv, ptr noundef %0, i32 noundef %i.lq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.lx = load i32, ptr @hf_mka_param_body_length, align 4
  %i.ly = call ptr @proto_tree_add_uint(ptr noundef %i.ln, i32 noundef %i.lx, ptr noundef %0, i32 noundef %i.dj, i32 noundef 2, i32 noundef %i.lj) ; 0 uses
  %i.lz = add i32 %.0159, 4                       ; 5 uses
  %i.ma = icmp eq i16 %i.dl, 0
  br i1 %i.ma, label %dissect_live_peer_list.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mb = icmp eq i16 %i.dl, 28
  %i.mc = icmp samesign ugt i16 %i.dl, 35         ; 2 uses
  %or.cond.i91 = or i1 %i.mb, %i.mc
  br i1 %or.cond.i91, label %bb.bg, label %bb.cj

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  store i64 36242102291529729, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
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
  %i.ml = call ptr @proto_tree_add_expert(ptr noundef %i.ln, ptr noundef %1, ptr noundef @ei_mka_undecoded, ptr noundef %0, i32 noundef %i.mi, i32 noundef %i.mk) ; 0 uses
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
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str.193, i32 noundef 3, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef @.str.194)
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
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str.193, i32 noundef 5, ptr noundef @.str.189, i64 noundef 1118, ptr noundef @__func__.dissect_distributed_sak, ptr noundef @.str.195)
  br label %.critedge.i

bb.bq:                                            ; preds = %bb.bo
  %i.nf = load ptr, ptr %i.h, align 8
  %i.ng = load i32, ptr %i.mx, align 4
  %i.nh = zext i32 %i.ng to i64
  %i.ni = call i32 @gcry_cipher_setkey(ptr noundef %i.nf, ptr noundef %i.mw, i64 noundef %i.nh)
  %.not135.i94 = icmp eq i32 %i.ni, 0
  br i1 %.not135.i94, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str.193, i32 noundef 5, ptr noundef @.str.189, i64 noundef 1123, ptr noundef @__func__.dissect_distributed_sak, ptr noundef @.str.196)
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
  %i.nu = call ptr @wmem_map_new(ptr noundef %i.nt, ptr noundef @mka_sci_hash, ptr noundef @mka_sci_equal)
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
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str.193, i32 noundef 3, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef @.str.197)
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
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.188, ptr noundef @.str.189, i32 noundef 1144, ptr noundef @.str.198) #17
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.ok = getelementptr i8, ptr %.0.i119, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(12) %i.ok, ptr noundef nonnull align 1 dereferenceable(12) %i.oj, i64 noundef 12, i1 noundef false) #16
  %i.ol = getelementptr i8, ptr %.0.i119, i64 44
  %i.om = load i32, ptr %i.g, align 4             ; 4 uses
  %8 = lshr i32 %i.om, 24
  %9 = trunc nuw i32 %8 to i8
  store i8 %9, ptr %i.ol, align 4
  %10 = lshr i32 %i.om, 16
  %11 = trunc i32 %10 to i8
  %12 = getelementptr i8, ptr %.0.i119, i64 45
  store i8 %11, ptr %12, align 1
  %13 = lshr i32 %i.om, 8
  %14 = trunc i32 %13 to i8
  %15 = getelementptr i8, ptr %.0.i119, i64 46
  store i8 %14, ptr %15, align 2
  %16 = trunc i32 %i.om to i8
  %17 = getelementptr i8, ptr %.0.i119, i64 47
  store i8 %16, ptr %17, align 1
  %i.on = load i64, ptr %i.f, align 8
  %i.oo = getelementptr i8, ptr %.0.i119, i64 80
  store i64 %i.on, ptr %i.oo, align 8
  %i.op = load ptr, ptr %i.bd, align 8
  %i.oq = load i32, ptr @proto_mka, align 4
  %i.or = call ptr @p_get_proto_data(ptr noundef %i.op, ptr noundef %1, i32 noundef %i.oq, i32 noundef 4) ; 2 uses
  %.not138.i97 = icmp eq ptr %i.or, null
  br i1 %.not138.i97, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.os = getelementptr i8, ptr %.0.i119, i64 48
  %i.ot = load ptr, ptr %i.os, align 8
  call void @wmem_map_foreach(ptr noundef nonnull %i.or, ptr noundef @mka_sci_map_copy, ptr noundef %i.ot)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.ou = load ptr, ptr %i.bd, align 8
  %i.ov = load i32, ptr @proto_mka, align 4
  %i.ow = call ptr @p_get_proto_data(ptr noundef %i.ou, ptr noundef %1, i32 noundef %i.ov, i32 noundef 5) ; 3 uses
  %.not139.i98 = icmp eq ptr %i.ow, null
  br i1 %.not139.i98, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ox = getelementptr i8, ptr %.0.i119, i64 56
  %i.oy = load ptr, ptr %i.ox, align 8
  %i.oz = call ptr @wmem_array_get_raw(ptr noundef nonnull %i.ow)
  %i.pa = call i32 @wmem_array_get_count(ptr noundef nonnull %i.ow)
  %i.pb = call zeroext i1 @wmem_array_append(ptr noundef %i.oy, ptr noundef %i.oz, i32 noundef %i.pa) ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.pc = load i64, ptr %i.f, align 8
  %i.pd = add i64 %i.pc, -36242102291529731
  %or.cond4.i = icmp ult i64 %i.pd, 2
  br i1 %or.cond4.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.pe = load i8, ptr %i.oj, align 1
  %i.pf = zext i8 %i.pe to i32
  %i.pg = shl nuw i32 %i.pf, 24
  %i.ph = getelementptr i8, ptr %i.oj, i64 1      ; 2 uses
  %i.pi = load i8, ptr %i.ph, align 1
  %i.pj = zext i8 %i.pi to i32
  %i.pk = shl nuw nsw i32 %i.pj, 16
  %i.pl = or disjoint i32 %i.pk, %i.pg
  %i.pm = getelementptr i8, ptr %i.oj, i64 2      ; 2 uses
  %i.pn = load i8, ptr %i.pm, align 1
  %i.po = zext i8 %i.pn to i32
  %i.pp = shl nuw nsw i32 %i.po, 8
  %i.pq = or disjoint i32 %i.pl, %i.pp
  %i.pr = getelementptr i8, ptr %i.oj, i64 3      ; 2 uses
  %i.ps = load i8, ptr %i.pr, align 1
  %i.pt = zext i8 %i.ps to i32
  %i.pu = or disjoint i32 %i.pq, %i.pt
  %i.pv = load i32, ptr %i.g, align 4             ; 2 uses
  %i.pw = lshr i32 %i.pv, 16
  %i.px = xor i32 %i.pu, %i.pw                    ; 3 uses
  %i.py = shl i32 %i.pv, 16
  %i.pz = xor i32 %i.px, %i.py                    ; 2 uses
  %i.qa = lshr i32 %i.pz, 24
  %i.qb = trunc nuw i32 %i.qa to i8
  store i8 %i.qb, ptr %i.oj, align 1
  %i.qc = lshr i32 %i.pz, 16
  %i.qd = trunc i32 %i.qc to i8
  store i8 %i.qd, ptr %i.ph, align 1
  %i.qe = lshr i32 %i.px, 8
  %i.qf = trunc i32 %i.qe to i8
  store i8 %i.qf, ptr %i.pm, align 1
  %i.qg = trunc i32 %i.px to i8
  store i8 %i.qg, ptr %i.pr, align 1
  %i.qh = getelementptr i8, ptr %.0.i119, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(12) %i.qh, ptr noundef nonnull align 1 dereferenceable(12) %i.oj, i64 noundef 12, i1 noundef false) #16
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.qi = load ptr, ptr %i.h, align 8
  call void @gcry_cipher_close(ptr noundef %i.qi)
  %i.qj = load ptr, ptr %i.bd, align 8
  %i.qk = load i32, ptr @proto_mka, align 4
  call void @p_add_proto_data(ptr noundef %i.qj, ptr noundef %1, i32 noundef %i.qk, i32 noundef 3, ptr noundef %.0.i119)
  %i.ql = call zeroext i1 @ws_log_msg_is_active(ptr noundef @.str.193, i32 noundef 2)
  br i1 %i.ql, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.qm = load ptr, ptr %i.bd, align 8
  %i.qn = load i32, ptr %i.oc, align 8
  %i.qo = zext i32 %i.qn to i64
  %i.qp = call ptr @bytes_to_str_maxlen(ptr noundef %i.qm, ptr noundef %.0.i119, i64 noundef %i.qo, i64 noundef 0) ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  br label %bb.ch

bb.cg:                                            ; preds = %bb.bn
  %i.qq = load i32, ptr %i.cx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %i.mu, ptr %6, align 8
  store i8 %i.ls, ptr %i.da, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.db, i8 0, i64 7, i1 false)
  %i.qr = load ptr, ptr @mka_ckn_sak_map, align 8
  %i.qs = call ptr @wmem_multimap_lookup32(ptr noundef %i.qr, ptr noundef nonnull %6, i32 noundef %i.qq) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %.not140.i93 = icmp eq ptr %i.qs, null
  br i1 %.not140.i93, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.1127.i = phi ptr [ %i.qs, %bb.cg ], [ %.0.i119, %bb.cf ] ; 2 uses
  %i.qt = getelementptr i8, ptr %.1127.i, i64 88  ; 2 uses
  %i.qu = load i32, ptr %i.qt, align 8            ; 2 uses
  %i.qv = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %.1127.i, i32 noundef %i.qu, i32 noundef %i.qu) ; 2 uses
  %i.qw = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.qv, ptr noundef @.str.108) ; 0 uses
  %i.qx = load i32, ptr @hf_mka_aes_key_wrap_unwrapped_sak, align 4
  %i.qy = load i32, ptr %i.qt, align 8
  %i.qz = call ptr @proto_tree_add_item(ptr noundef %i.ln, i32 noundef %i.qx, ptr noundef %i.qv, i32 noundef 0, i32 noundef %i.qy, i32 noundef 0) ; 0 uses
  br label %bb.ci

.critedge.i:                                      ; preds = %bb.bu, %bb.br, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  br label %bb.ci

bb.ci:                                            ; preds = %.critedge.i, %bb.ch, %bb.cg, %bb.bm, %bb.bl, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  br label %dissect_live_peer_list.exit.thread

bb.cj:                                            ; preds = %bb.bf
  %i.ra = call ptr @proto_tree_add_expert(ptr noundef %i.ln, ptr noundef %1, ptr noundef @ei_mka_undecoded, ptr noundef %0, i32 noundef %i.lz, i32 noundef %i.lj) ; 0 uses
  br label %dissect_live_peer_list.exit.thread

bb.ck:                                            ; preds = %bb.n
  %i.rb = load i32, ptr @hf_mka_distributed_cak_set, align 4
  %i.rc = zext nneg i16 %i.dl to i32              ; 3 uses
  %i.rd = add nuw nsw i32 %i.rc, 4
  %i.re = call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.rb, ptr noundef %0, i32 noundef %.0159, i32 noundef %i.rd, i32 noundef 0)
  %i.rf = load i32, ptr @ett_mka_distributed_cak_set, align 4
  %i.rg = call ptr @proto_item_add_subtree(ptr noundef %i.re, i32 noundef %i.rf) ; 6 uses
  %i.rh = load i32, ptr @hf_mka_param_set_type, align 4
  %i.ri = call ptr @proto_tree_add_uint(ptr noundef %i.rg, i32 noundef %i.rh, ptr noundef %0, i32 noundef %.0159, i32 noundef 1, i32 noundef 5) ; 0 uses
  %i.rj = load i32, ptr @hf_mka_param_body_length, align 4
  %i.rk = call ptr @proto_tree_add_uint(ptr noundef %i.rg, i32 noundef %i.rj, ptr noundef %0, i32 noundef %i.dj, i32 noundef 2, i32 noundef %i.rc) ; 0 uses
  %i.rl = add i32 %.0159, 4                       ; 2 uses
  %i.rm = load i32, ptr @hf_mka_aes_key_wrap_cak, align 4
  %i.rn = call ptr @proto_tree_add_item(ptr noundef %i.rg, i32 noundef %i.rm, ptr noundef %0, i32 noundef %i.rl, i32 noundef 24, i32 noundef 0) ; 0 uses
  %i.ro = add i32 %.0159, 28                      ; 3 uses
  %i.rp = add nsw i16 %i.dl, -24                  ; 2 uses
  %i.rq = load i32, ptr @hf_mka_cak_name, align 4
  %i.rr = zext i16 %i.rp to i32                   ; 3 uses
  %i.rs = call ptr @proto_tree_add_item(ptr noundef %i.rg, i32 noundef %i.rq, ptr noundef %0, i32 noundef %i.ro, i32 noundef %i.rr, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.rt = add nsw i16 %i.dl, -25
  %or.cond.i.i99 = icmp ult i16 %i.rt, 32
  br i1 %or.cond.i.i99, label %bb.cl, label %dissect_distributed_cak.exit

bb.cl:                                            ; preds = %bb.ck
  %i.ru = zext nneg i16 %i.rp to i64
  %i.rv = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.e, i32 noundef %i.ro, i64 noundef %i.ru) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.cy, i8 0, i64 104, i1 false)
  store ptr %i.e, ptr %5, align 8
  store i32 %i.rr, ptr %i.cy, align 8
  %i.rw = load ptr, ptr @ht_mka_ckn, align 8      ; 2 uses
  %i.rx = icmp eq ptr %i.rw, null
  br i1 %i.rx, label %ckn_info_lookup.exit.thread.i.i104, label %ckn_info_lookup.exit.i.i100

ckn_info_lookup.exit.thread.i.i104:               ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %dissect_distributed_cak.exit

ckn_info_lookup.exit.i.i100:                      ; preds = %bb.cl
  %i.ry = call ptr @g_hash_table_lookup(ptr noundef nonnull %i.rw, ptr noundef nonnull %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.not.i.i101 = icmp eq ptr %i.ry, null
  br i1 %.not.i.i101, label %dissect_distributed_cak.exit, label %bb.cm

bb.cm:                                            ; preds = %ckn_info_lookup.exit.i.i100
  %i.rz = load i32, ptr @hf_mka_cak_name_info, align 4
  %i.sa = getelementptr i8, ptr %i.ry, i64 32
  %i.sb = load ptr, ptr %i.sa, align 8
  %i.sc = call ptr @proto_tree_add_string(ptr noundef %i.rg, i32 noundef %i.rz, ptr noundef %0, i32 noundef %i.ro, i32 noundef %i.rr, ptr noundef %i.sb) ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.sc, null
  br i1 %.not.i.i.i102, label %dissect_distributed_cak.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sd = getelementptr i8, ptr %i.sc, i64 40
  %i.se = load ptr, ptr %i.sd, align 8            ; 2 uses
  %.not5.i.i.i103 = icmp eq ptr %i.se, null
  br i1 %.not5.i.i.i103, label %dissect_distributed_cak.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.sf = getelementptr i8, ptr %i.se, i64 28     ; 2 uses
  %i.sg = load i32, ptr %i.sf, align 4
  %i.sh = or i32 %i.sg, 2
  store i32 %i.sh, ptr %i.sf, align 4
  br label %dissect_distributed_cak.exit

dissect_distributed_cak.exit:                     ; preds = %bb.ck, %ckn_info_lookup.exit.thread.i.i104, %ckn_info_lookup.exit.i.i100, %bb.cm, %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %dissect_live_peer_list.exit.thread

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
  %i.o = call zeroext i1 @ws_log_msg_is_active(ptr noundef @.str.193, i32 noundef 2)
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
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str.193, i32 noundef 5, ptr noundef @.str.189, i64 noundef 288, ptr noundef @__func__.mka_derive_key, ptr noundef @.str.214)
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
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str.193, i32 noundef 5, ptr noundef @.str.189, i64 noundef 294, ptr noundef @__func__.mka_derive_key, ptr noundef @.str.215)
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
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str.193, i32 noundef 5, ptr noundef @.str.189, i64 noundef 303, ptr noundef @__func__.mka_derive_key, ptr noundef @.str.216)
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
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef @.str.193, i32 noundef 5, ptr noundef @.str.189, i64 noundef 317, ptr noundef @__func__.mka_derive_key, ptr noundef @.str.217)
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
  %i.bd = call zeroext i1 @ws_log_msg_is_active(ptr noundef @.str.193, i32 noundef 2)
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
!21 = distinct !{!21, i1 true, !"memcpy.inline"}
!22 = distinct !{!22, !21, !"memcpy.inline: argument 1"}
!23 = distinct !{!23, !21, !"memcpy.inline: argument 0"}
!24 = distinct !{!24, !6, !26}
!25 = !{!23, !22}
!26 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
