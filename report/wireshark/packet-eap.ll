Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-eap?download=true
inline.NumInlined: 17
inline.NumDeleted: 8
begin_hunk_0_@dissect_eap:bb.a
  %i.fa = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.ez, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0)
  %i.fb = load i32, ptr @ett_eap_tls_flags, align 4
  %i.fc = call ptr @proto_item_add_subtree(ptr noundef %i.fa, i32 noundef %i.fb) ; 5 uses
  %i.fd = load i32, ptr @hf_eap_tls_flag_l, align 4
  %i.fe = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.fc, i32 noundef %i.fd, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.ff = load i32, ptr @hf_eap_tls_flag_m, align 4
  %i.fg = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.fc, i32 noundef %i.ff, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.fh = load i32, ptr @hf_eap_tls_flag_s, align 4
  %i.fi = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.fc, i32 noundef %i.fh, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.e) ; 0 uses
  switch i8 %i.dr, label %bb.ak [
    i8 55, label %bb.ai
    i8 21, label %bb.aj
    i8 43, label %bb.aj
    i8 25, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fj = load i32, ptr @hf_eap_tls_flag_o, align 4
  %i.fk = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.fc, i32 noundef %i.fj, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ah, %bb.ah
  %i.fl = load i32, ptr @hf_eap_tls_flags_version, align 4
  %i.fm = call ptr @proto_tree_add_item(ptr noundef %i.fc, i32 noundef %i.fl, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %i.fn = add nsw i32 %i.cj, -6
  %i.fo = load i8, ptr %i.c, align 1, !range !8, !noundef !9
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fq = load i32, ptr @hf_eap_tls_len, align 4
  %i.fr = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.cn, i32 noundef %i.fq, ptr noundef %0, i32 noundef 6, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.d) ; 0 uses
  %i.fs = add nsw i32 %i.cj, -10
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0471 = phi i32 [ 10, %bb.al ], [ 6, %bb.ak ]  ; 3 uses
  %.0467 = phi i32 [ %i.fs, %bb.al ], [ %i.fn, %bb.ak ] ; 2 uses
  %i.ft = load i8, ptr %i.f, align 1, !range !8, !noundef !9
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fv = load i32, ptr @hf_eap_tls_outer_tlvs_len, align 4
  %i.fw = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.cn, i32 noundef %i.fv, ptr noundef %0, i32 noundef %.0471, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.g) ; 0 uses
  %i.fx = add nsw i32 %.0467, -4
  %i.fy = add nuw nsw i32 %.0471, 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.1472 = phi i32 [ %i.fy, %bb.an ], [ %.0471, %bb.am ] ; 5 uses
  %.1468 = phi i32 [ %i.fx, %bb.an ], [ %.0467, %bb.am ] ; 3 uses
  %i.fz = load i8, ptr %i.e, align 1, !range !8, !noundef !9
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.ap, label %.thread524

bb.ap:                                            ; preds = %bb.ao
  store i32 -1, ptr %.0483, align 4
  %i.gb = icmp eq i8 %i.dr, 43
  br i1 %i.gb, label %bb.aq, label %.thread524

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  %i.gc = load i32, ptr @hf_eap_fast_type, align 4
  %i.gd = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.cn, i32 noundef %i.gc, ptr noundef %0, i32 noundef %.1472, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.i) ; 0 uses
  %i.ge = add nuw nsw i32 %.1472, 2
  %i.gf = load i32, ptr @hf_eap_fast_length, align 4
  %i.gg = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.cn, i32 noundef %i.gf, ptr noundef %0, i32 noundef %i.ge, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.h) ; 0 uses
  %i.gh = add nsw i32 %.1468, -4
  %i.gi = add nuw nsw i32 %.1472, 4               ; 3 uses
  %i.gj = load i32, ptr @hf_eap_data, align 4
  %i.gk = load i32, ptr %i.h, align 4
  %i.gl = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.gj, ptr noundef %0, i32 noundef %i.gi, i32 noundef %i.gk, i32 noundef 0) ; 0 uses
  %i.gm = load i32, ptr %i.i, align 4
  %cond2 = icmp eq i32 %i.gm, 4
  br i1 %cond2, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gn = load i32, ptr @hf_eap_fast_aidd, align 4
  %i.go = load i32, ptr %i.h, align 4
  %i.gp = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.gn, ptr noundef %0, i32 noundef %i.gi, i32 noundef %i.go, i32 noundef 0) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.gq = load i32, ptr %i.h, align 4             ; 2 uses
  %i.gr = sub i32 %i.gh, %i.gq
  %i.gs = add i32 %i.gq, %i.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  br label %.thread524

.thread524:                                       ; preds = %bb.ao, %bb.as, %bb.ap
  %.2473 = phi i32 [ %i.gs, %bb.as ], [ %.1472, %bb.ap ], [ %.1472, %bb.ao ] ; 3 uses
  %.2469 = phi i32 [ %i.gr, %bb.as ], [ %.1468, %bb.ap ], [ %.1468, %bb.ao ] ; 4 uses
  %.not502 = icmp eq i32 %.2469, 0
  br i1 %.not502, label %bb.bx, label %bb.at

bb.at:                                            ; preds = %.thread524
  br i1 %.1476.shrunk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gt = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.2473, i32 noundef %.2469)
  %i.gu = call i32 @call_data_dissector(ptr noundef %i.gt, ptr noundef %1, ptr noundef %i.cn) ; 0 uses
  br label %bb.bx

bb.av:                                            ; preds = %bb.at
  %i.gv = call ptr @wmem_file_scope()
  %i.gw = load i32, ptr @proto_eap, align 4
  %i.gx = or disjoint i32 %i.ab, 1                ; 2 uses
  %i.gy = call ptr @p_get_proto_data(ptr noundef %i.gv, ptr noundef %1, i32 noundef %i.gw, i32 noundef %i.gx) ; 4 uses
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %i.ha = load ptr, ptr %i.bj, align 8
  %i.hb = getelementptr i8, ptr %i.ha, i64 53
  %i.hc = load i16, ptr %i.hb, align 1
  %i.hd = and i16 %i.hc, 8
  %.not504 = icmp eq i16 %i.hd, 0
  br i1 %.not504, label %bb.ax, label %bb.bo

bb.ax:                                            ; preds = %bb.aw
  %i.he = load i32, ptr %.0483, align 4           ; 2 uses
  %.not505 = icmp eq i32 %i.he, -1
  br i1 %.not505, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hf = add nuw i32 %i.he, 1                    ; 2 uses
  store i32 %i.hf, ptr %.0483, align 4
  %i.hg = getelementptr i8, ptr %.0483, i64 12
  %i.hh = load i32, ptr %i.hg, align 4
  %i.hi = getelementptr i8, ptr %.0483, i64 4
  %i.hj = load i32, ptr %i.hi, align 4
  store i32 %i.hj, ptr %i.d, align 4
  %i.hk = getelementptr i8, ptr %.0483, i64 8
  %i.hl = load i32, ptr %i.hk, align 4            ; 2 uses
  store i32 %i.hl, ptr %i.g, align 4
  %i.hm = icmp ne i32 %i.hl, 0
  %i.hn = zext i1 %i.hm to i8
  store i8 %i.hn, ptr %i.f, align 1
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.ho = load i8, ptr %i.b, align 1, !range !8, !noundef !9
  %i.hp = trunc nuw i8 %i.ho to i1
  %i.hq = load i8, ptr %i.c, align 1, !range !8
  %i.hr = trunc nuw i8 %i.hq to i1
  %or.cond23 = select i1 %i.hp, i1 %i.hr, i1 false
  br i1 %or.cond23, label %bb.ba, label %bb.bo

bb.ba:                                            ; preds = %bb.az
  %i.hs = getelementptr i8, ptr %1, i64 20
  %i.ht = load i32, ptr %i.hs, align 4            ; 2 uses
  %i.hu = getelementptr i8, ptr %.0483, i64 12
  store i32 %i.ht, ptr %i.hu, align 4
  %i.hv = load i32, ptr %i.d, align 4
  %i.hw = getelementptr i8, ptr %.0483, i64 4
  store i32 %i.hv, ptr %i.hw, align 4
  %i.hx = load i32, ptr %i.g, align 4
  %i.hy = getelementptr i8, ptr %.0483, i64 8
  store i32 %i.hx, ptr %i.hy, align 4
  store i32 0, ptr %.0483, align 4
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ay, %bb.ba
  %.0464.ph = phi i32 [ 0, %bb.ba ], [ %i.hf, %bb.ay ]
  %.0462.ph = phi i32 [ %i.ht, %bb.ba ], [ %i.hh, %bb.ay ] ; 2 uses
  %i.hz = call ptr @wmem_file_scope()
  %i.ia = call noalias dereferenceable_or_null(12) ptr @wmem_alloc(ptr noundef %i.hz, i64 noundef 12) #7 ; 4 uses
  store i32 %.0462.ph, ptr %i.ia, align 4
  %i.ib = load i32, ptr %i.d, align 4
  %i.ic = getelementptr i8, ptr %i.ia, i64 4
  store i32 %i.ib, ptr %i.ic, align 4
  %i.id = load i32, ptr %i.g, align 4
  %i.ie = getelementptr i8, ptr %i.ia, i64 8
  store i32 %i.id, ptr %i.ie, align 4
  %i.if = call ptr @wmem_file_scope()
  %i.ig = load i32, ptr @proto_eap, align 4
  call void @p_add_proto_data(ptr noundef %i.if, ptr noundef %1, i32 noundef %i.ig, i32 noundef %i.gx, ptr noundef %i.ia)
  br label %bb.be

bb.bc:                                            ; preds = %bb.av
  %i.ih = load i32, ptr %i.gy, align 4            ; 2 uses
  %i.ii = getelementptr i8, ptr %i.gy, i64 4
  %i.ij = load i32, ptr %i.ii, align 4
  store i32 %i.ij, ptr %i.d, align 4
  %i.ik = getelementptr i8, ptr %i.gy, i64 8
  %i.il = load i32, ptr %i.ik, align 4            ; 2 uses
  %.not503 = icmp eq i32 %i.il, 0
  br i1 %.not503, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i8 1, ptr %i.f, align 1
  store i32 %i.il, ptr %i.g, align 4
  br label %bb.be

bb.be:                                            ; preds = %bb.bb, %bb.bc, %bb.bd
  %.1465.ph = phi i32 [ 0, %bb.bd ], [ 0, %bb.bc ], [ %.0464.ph, %bb.bb ]
  %.1463.ph = phi i32 [ %i.ih, %bb.bd ], [ %i.ih, %bb.bc ], [ %.0462.ph, %bb.bb ]
  %i.im = getelementptr i8, ptr %1, i64 272       ; 3 uses
  %i.in = load i8, ptr %i.im, align 8, !range !8, !noundef !9
  store i8 1, ptr %i.im, align 8
  %i.io = load i8, ptr %i.b, align 1, !range !8, !noundef !9
  %i.ip = trunc nuw i8 %i.io to i1
  %i.iq = call ptr @fragment_add_seq(ptr noundef nonnull @eap_tls_reassembly_table, ptr noundef %0, i32 noundef %.2473, ptr noundef %1, i32 noundef %.1463.ph, ptr noundef null, i32 noundef %.1465.ph, i32 noundef %.2469, i1 noundef zeroext %i.ip, i32 noundef 0) ; 4 uses
  %.not506 = icmp eq ptr %i.iq, null
  br i1 %.not506, label %proto_item_set_generated.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ir = getelementptr i8, ptr %i.iq, i64 40
  %i.is = load i32, ptr %i.ir, align 8            ; 2 uses
  %i.it = getelementptr i8, ptr %1, i64 20
  %i.iu = load i32, ptr %i.it, align 4
  %i.iv = icmp eq i32 %i.is, %i.iu
  br i1 %i.iv, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  %i.iw = getelementptr i8, ptr %i.iq, i64 56
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = call ptr @tvb_new_chain(ptr noundef %0, ptr noundef %i.ix) ; 4 uses
  %i.iz = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.iy, ptr noundef nonnull @.str.558) ; 0 uses
  %i.ja = call zeroext i1 @show_fragment_seq_tree(ptr noundef nonnull %i.iq, ptr noundef nonnull @eap_tls_frag_items, ptr noundef %i.cn, ptr noundef %1, ptr noundef %i.iy, ptr noundef nonnull %i.j) ; 0 uses
  %i.jb = call i32 @tvb_reported_length(ptr noundef %i.iy)
  %i.jc = load i32, ptr %i.d, align 4
  %.not507 = icmp eq i32 %i.jb, %i.jc
  br i1 %.not507, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jd = load ptr, ptr %i.j, align 8
  %i.je = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.jd, ptr noundef nonnull @ei_eap_tls_fragment_missing) ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.jf = load ptr, ptr %i.bj, align 8
  %i.jg = getelementptr i8, ptr %i.jf, i64 53
  %i.jh = load i16, ptr %i.jg, align 1
  %i.ji = and i16 %i.jh, 8
  %.not508 = icmp eq i16 %i.ji, 0
  br i1 %.not508, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 -1, ptr %.0483, align 4
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  br label %proto_item_set_generated.exit

bb.bl:                                            ; preds = %bb.bf
  %i.jj = load i32, ptr @hf_eap_tls_reassembled_in, align 4
  %i.jk = call ptr @proto_tree_add_uint(ptr noundef %i.cn, i32 noundef %i.jj, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.is) ; 2 uses
  %.not.i = icmp eq ptr %i.jk, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jl = getelementptr i8, ptr %i.jk, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.jm, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jn = getelementptr i8, ptr %i.jm, i64 28     ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4
  %i.jp = or i32 %i.jo, 2
  store i32 %i.jp, ptr %i.jn, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.be
  %.0457 = phi ptr [ %i.iy, %bb.bk ], [ null, %bb.be ], [ null, %bb.bl ], [ null, %bb.bm ], [ null, %bb.bn ]
  store i8 %i.in, ptr %i.im, align 8
  br label %bb.bp

bb.bo:                                            ; preds = %bb.aw, %bb.az
  %i.jq = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.2473, i32 noundef %.2469)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %proto_item_set_generated.exit
  %.1 = phi ptr [ %.0457, %proto_item_set_generated.exit ], [ %i.jq, %bb.bo ] ; 12 uses
  %.not509 = icmp eq ptr %.1, null
  br i1 %.not509, label %bb.bx, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  switch i8 %i.dr, label %bb.bw [
    i8 21, label %.sink.split
    i8 25, label %bb.br
    i8 55, label %bb.bs
  ]

bb.br:                                            ; preds = %bb.bq
  %i.jr = load ptr, ptr %i.u, align 8
  %i.js = load i32, ptr @proto_eap, align 4
  %i.jt = or disjoint i32 %i.ab, 2
  call void @p_add_proto_data(ptr noundef %i.jr, ptr noundef %1, i32 noundef %i.js, i32 noundef %i.jt, ptr noundef %0)
  br label %.sink.split

bb.bs:                                            ; preds = %bb.bq
  %i.ju = load i8, ptr %i.f, align 1, !range !8, !noundef !9
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %bb.bt, label %.sink.split

bb.bt:                                            ; preds = %bb.bs
  %i.jw = load i32, ptr %i.g, align 4
  %i.jx = call i32 @tvb_reported_length(ptr noundef nonnull %.1)
  %i.jy = icmp ugt i32 %i.jw, %i.jx
  br i1 %i.jy, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jz = call i32 @tvb_reported_length(ptr noundef nonnull %.1)
  %i.ka = load i32, ptr %i.g, align 4             ; 2 uses
  %i.kb = sub i32 %i.jz, %i.ka
  %i.kc = call ptr @tvb_new_subset_length(ptr noundef nonnull %.1, i32 noundef %i.kb, i32 noundef %i.ka)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %.0 = phi ptr [ %i.kc, %bb.bu ], [ %.1, %bb.bt ]
  %i.kd = load ptr, ptr @teap_handle, align 8
  %i.ke = call i32 @call_dissector(ptr noundef %i.kd, ptr noundef %.0, ptr noundef %1, ptr noundef %i.cn) ; 0 uses
  %i.kf = call i32 @tvb_reported_length(ptr noundef nonnull %.1)
  %i.kg = load i32, ptr %i.g, align 4             ; 2 uses
  %.not510 = icmp ugt i32 %i.kf, %i.kg
  br i1 %.not510, label %.thread540, label %bb.bx

.thread540:                                       ; preds = %bb.bv
  %i.kh = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %.1, i32 noundef %i.kg)
  %i.ki = call ptr @tvb_new_subset_length(ptr noundef nonnull %.1, i32 noundef 0, i32 noundef %i.kh)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bs, %.thread540, %bb.bq, %bb.br
  %teap_handle.sink = phi ptr [ @diameter_avps_handle, %bb.bq ], [ @peap_handle, %bb.br ], [ @teap_handle, %.thread540 ], [ @teap_handle, %bb.bs ]
  %.4.ph = phi ptr [ %.1, %bb.bq ], [ %.1, %bb.br ], [ %i.ki, %.thread540 ], [ %.1, %bb.bs ]
  %i.kj = load ptr, ptr @tls_handle, align 8
  %i.kk = load ptr, ptr %teap_handle.sink, align 8
  call void @tls_set_appdata_dissector(ptr noundef %i.kj, ptr noundef %1, ptr noundef %i.kk)
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split, %bb.bq
  %.4 = phi ptr [ %.1, %bb.bq ], [ %.4.ph, %.sink.split ]
  %i.kl = load ptr, ptr @tls_handle, align 8
  %i.km = call i32 @call_dissector(ptr noundef %i.kl, ptr noundef %.4, ptr noundef %1, ptr noundef %i.cn) ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.au, %bb.bw, %bb.bp, %.thread524, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %dissect_eap_aka.exit

bb.by:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  %i.kn = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.dx, ptr noundef nonnull @ei_eap_dictionary_attacks) ; 0 uses
  %i.ko = load i32, ptr @hf_eap_leap_version, align 4
  %i.kp = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.ko, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.kq = load i32, ptr @hf_eap_leap_reserved, align 4
  %i.kr = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.kq, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ks = load i32, ptr @hf_eap_leap_count, align 4
  %i.kt = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.cn, i32 noundef %i.ks, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.k) ; 0 uses
  br i1 %.not, label %bb.ce, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ku = call ptr @wmem_file_scope()
  %i.kv = load i32, ptr @proto_eap, align 4
  %i.kw = or disjoint i32 %i.ab, 1                ; 2 uses
  %i.kx = call ptr @p_get_proto_data(ptr noundef %i.ku, ptr noundef %1, i32 noundef %i.kv, i32 noundef %i.kw) ; 2 uses
  %i.ky = icmp eq ptr %i.kx, null
  br i1 %i.ky, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.kz = getelementptr i8, ptr %.0483, i64 16    ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4            ; 3 uses
  %i.lb = icmp ult i32 %i.la, 5
  br i1 %i.lb, label %switch.lookup, label %bb.cb

switch.lookup:                                    ; preds = %bb.ca
  %i.lc = zext nneg i32 %i.la to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.dissect_eap, i64 %i.lc
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %switch.lookup
  %.0481 = phi i32 [ %switch.load, %switch.lookup ], [ %i.la, %bb.ca ] ; 2 uses
  %i.ld = call ptr @wmem_file_scope()
  %i.le = call noalias dereferenceable_or_null(12) ptr @wmem_alloc(ptr noundef %i.ld, i64 noundef 12) #7 ; 3 uses
  store i32 %.0481, ptr %i.le, align 4
  %i.lf = call ptr @wmem_file_scope()
  %i.lg = load i32, ptr @proto_eap, align 4
  call void @p_add_proto_data(ptr noundef %i.lf, ptr noundef %1, i32 noundef %i.lg, i32 noundef %i.kw, ptr noundef %i.le)
  store i32 %.0481, ptr %i.kz, align 4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bz
  %.0482 = phi ptr [ %i.le, %bb.cb ], [ %i.kx, %bb.bz ]
  %i.lh = load i32, ptr %.0482, align 4
  %i.li = load i8, ptr %i.k, align 1
  %i.lj = zext i8 %i.li to i32
  %switch.tableidx = add i32 %i.lh, -1            ; 2 uses
  %i.lk = icmp ult i32 %switch.tableidx, 4
  br i1 %i.lk, label %switch.lookup570, label %bb.cd

switch.lookup570:                                 ; preds = %bb.cc
  %i.ll = zext nneg i32 %switch.tableidx to i64
  %switch.gep571 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_eap.1, i64 %i.ll
  %switch.load572 = load ptr, ptr %switch.gep571, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %switch.lookup570
  %hf_eap_leap_data.sink = phi ptr [ %switch.load572, %switch.lookup570 ], [ @hf_eap_leap_data, %bb.cc ]
  %i.lm = load i32, ptr %hf_eap_leap_data.sink, align 4
  %i.ln = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.lm, ptr noundef %0, i32 noundef 8, i32 noundef %i.lj, i32 noundef 0) ; 0 uses
  %i.lo = load i8, ptr %i.k, align 1
  %i.lp = zext i8 %i.lo to i32
  %i.lq = add nuw nsw i32 %i.lp, 8                ; 2 uses
  %i.lr = sub nsw i32 %i.cj, %i.lq
  %i.ls = load i32, ptr @hf_eap_leap_name, align 4
  %i.lt = and i32 %i.lr, 255
  %i.lu = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.ls, ptr noundef %0, i32 noundef %i.lq, i32 noundef %i.lt, i32 noundef 0) ; 0 uses
  br label %bb.ce

bb.ce:                                            ; preds = %bb.by, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  br label %dissect_eap_aka.exit

bb.cf:                                            ; preds = %bb.x
  call fastcc void @dissect_eap_mschapv2(ptr noundef %i.cn, ptr noundef %0, ptr noundef %1, i32 noundef %i.eb)
  br label %dissect_eap_aka.exit

bb.cg:                                            ; preds = %bb.x
  call fastcc void @dissect_eap_sim(ptr noundef %i.cn, ptr noundef %0, ptr noundef %1, i32 noundef %i.eb)
  br label %dissect_eap_aka.exit

bb.ch:                                            ; preds = %bb.x, %bb.x
  %i.lv = load i32, ptr @hf_eap_aka_subtype, align 4
  %i.lw = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.lv, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.lx = icmp ult i16 %i.ci, 8
  br i1 %i.lx, label %dissect_eap_aka.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ly = load i32, ptr @hf_eap_aka_reserved, align 4
  %i.lz = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.ly, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ma = icmp ugt i16 %i.ci, 9
  br i1 %i.ma, label %.lr.ph.i.preheader, label %dissect_eap_aka.exit

.lr.ph.i.preheader:                               ; preds = %bb.ci
  %i.mb = add nsw i32 %i.cj, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.cv
  %.097107.i = phi i32 [ %i.om, %bb.cv ], [ %i.mb, %.lr.ph.i.preheader ]
  %.098106.i = phi i32 [ %i.ol, %bb.cv ], [ 8, %.lr.ph.i.preheader ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.mc = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.098106.i) ; 2 uses
  %i.md = or disjoint i32 %.098106.i, 1           ; 2 uses
  %i.me = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.md) ; 2 uses
  %i.mf = zext i8 %i.me to i32
  %i.mg = shl nuw nsw i32 %i.mf, 2                ; 7 uses
  %i.mh = load i32, ptr @hf_eap_aka_subtype_attribute, align 4
  %i.mi = zext i8 %i.mc to i32                    ; 3 uses
  %i.mj = call ptr @val_to_str_ext_const(i32 noundef %i.mi, ptr noundef nonnull @eap_sim_aka_attribute_vals_ext, ptr noundef nonnull @.str.19)
  %i.mk = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.cn, i32 noundef %i.mh, ptr noundef %0, i32 noundef %.098106.i, i32 noundef %i.mg, ptr noundef nonnull @.str.561, ptr noundef %i.mj, i32 noundef %i.mi)
  %i.ml = load i32, ptr @ett_eap_aka_attr, align 4
  %i.mm = call ptr @proto_item_add_subtree(ptr noundef %i.mk, i32 noundef %i.ml) ; 16 uses
  %i.mn = load i32, ptr @hf_eap_aka_subtype_type, align 4
  %i.mo = call ptr @proto_tree_add_uint(ptr noundef %i.mm, i32 noundef %i.mn, ptr noundef %0, i32 noundef %.098106.i, i32 noundef 1, i32 noundef %i.mi) ; 0 uses
  %i.mp = load i32, ptr @hf_eap_aka_subtype_length, align 4
  %i.mq = call ptr @proto_tree_add_item(ptr noundef %i.mm, i32 noundef %i.mp, ptr noundef %0, i32 noundef %i.md, i32 noundef 1, i32 noundef 0)
  %i.mr = icmp eq i8 %i.me, 0
  br i1 %i.mr, label %.thread.i, label %bb.cj

.thread.i:                                        ; preds = %.lr.ph.i
  %i.ms = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.mq, ptr noundef nonnull @ei_eap_bad_length) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
end_hunk_0
