inline.NumInlined: 153
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dissect_opts:bb.a

bb.ax:                                            ; preds = %bb.aw
  %i.gt = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef nonnull @ei_ipv6_opt_invalid_len, ptr noundef nonnull @.str.914, i32 noundef %i.cd, i32 noundef 12) ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gu = load i32, ptr @hf_ipv6_opt_apn_id_part3, align 4
  %i.gv = call ptr @proto_tree_add_item(ptr noundef %i.ft, i32 noundef %i.gu, ptr noundef %0, i32 noundef %i.gp, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.gw = add nuw nsw i32 %.0296, 18
  %i.gx = load i32, ptr @hf_ipv6_opt_apn_id_part4, align 4
  %i.gy = call ptr @proto_tree_add_item(ptr noundef %i.ft, i32 noundef %i.gx, ptr noundef %0, i32 noundef %i.gw, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.gz = add nuw nsw i32 %.0296, 22
  br label %dissect_opt_apn6.exit

bb.az:                                            ; preds = %ipv6_opt_type_hdr.exit.thread
  %i.ha = call ptr @proto_tree_get_parent(ptr noundef %i.ch) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  store i32 0, ptr %i.f, align 4
  %.not.i258 = icmp eq i8 %i.by, 6
  br i1 %.not.i258, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hb = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef nonnull @ei_ipv6_opt_invalid_len, ptr noundef nonnull @.str.915, i32 noundef %i.cd) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.hc = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm) ; 2 uses
  %i.hd = lshr i8 %i.hc, 4
  %i.he = and i8 %i.hc, 15                        ; 2 uses
  %i.hf = load i32, ptr @hf_ipv6_opt_qs_func, align 4
  %i.hg = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.hf, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef 1, i32 noundef 0) ; 0 uses
  switch i8 %i.hd, label %dissect_opt_quickstart.exit [
    i8 0, label %bb.bc
    i8 8, label %bb.bg
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.hh = load i32, ptr @hf_ipv6_opt_qs_rate, align 4
  %i.hi = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.hh, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.hj = add nuw nsw i32 %.0296, 3               ; 2 uses
  %i.hk = load i32, ptr @hf_ipv6_opt_qs_ttl, align 4
  %i.hl = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ch, i32 noundef %i.hk, ptr noundef %0, i32 noundef %i.hj, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.f) ; 0 uses
  %i.hm = load ptr, ptr %i.o, align 8
  %i.hn = zext nneg i8 %i.he to i32
  %i.ho = call ptr @val_to_str_ext(ptr noundef %i.hm, i32 noundef %i.hn, ptr noundef nonnull @qs_rate_vals_ext, ptr noundef nonnull @.str.917)
  %i.hp = load i32, ptr %i.f, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ha, ptr noundef nonnull @.str.916, ptr noundef %i.ho, i32 noundef %i.hp)
  br i1 %.not60.i, label %dissect_opt_quickstart.exit.sink.split, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hq = load i8, ptr %i.bv, align 1
  %i.hr = load i32, ptr %i.f, align 4
  %.tr.i = trunc i32 %i.hr to i8
  %.narrow.i = sub i8 %i.hq, %.tr.i
  %i.hs = load i32, ptr @hf_ipv6_opt_qs_ttl_diff, align 4
  %i.ht = zext i8 %.narrow.i to i32               ; 2 uses
  %i.hu = call ptr @proto_tree_add_uint(ptr noundef %i.ch, i32 noundef %i.hs, ptr noundef %0, i32 noundef %i.hj, i32 noundef 1, i32 noundef %i.ht) ; 2 uses
  %.not.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i, label %proto_item_set_generated.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hv = getelementptr i8, ptr %i.hu, i64 40
  %i.hw = load ptr, ptr %i.hv, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.hw, null
  br i1 %.not5.i.i, label %proto_item_set_generated.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hx = getelementptr i8, ptr %i.hw, i64 28     ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = or i32 %i.hy, 2
  store i32 %i.hz, ptr %i.hx, align 4
  br label %proto_item_set_generated.exit.i

proto_item_set_generated.exit.i:                  ; preds = %bb.bf, %bb.be, %bb.bd
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ha, ptr noundef nonnull @.str.918, i32 noundef %i.ht)
  br label %dissect_opt_quickstart.exit.sink.split

bb.bg:                                            ; preds = %bb.bb
  %i.ia = load i32, ptr @hf_ipv6_opt_qs_rate, align 4
  %i.ib = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.ia, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ic = load ptr, ptr %i.o, align 8
  %i.id = zext nneg i8 %i.he to i32
  %i.ie = call ptr @val_to_str_ext(ptr noundef %i.ic, i32 noundef %i.id, ptr noundef nonnull @qs_rate_vals_ext, ptr noundef nonnull @.str.917)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ha, ptr noundef nonnull @.str.919, ptr noundef %i.ie)
  %i.if = add nuw nsw i32 %.0296, 3
  %i.ig = load i32, ptr @hf_ipv6_opt_qs_unused, align 4
  %i.ih = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.ig, ptr noundef %0, i32 noundef %i.if, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_opt_quickstart.exit.sink.split

dissect_opt_quickstart.exit.sink.split:           ; preds = %bb.bc, %proto_item_set_generated.exit.i, %bb.bg
  %i.ii = add nuw nsw i32 %.0296, 4               ; 2 uses
  %i.ij = load i32, ptr @hf_ipv6_opt_qs_nonce, align 4
  %i.ik = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.ij, ptr noundef %0, i32 noundef %i.ii, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.il = load i32, ptr @hf_ipv6_opt_qs_reserved, align 4
  %i.im = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.il, ptr noundef %0, i32 noundef %i.ii, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.in = add nuw nsw i32 %.0296, 8
  br label %dissect_opt_quickstart.exit

dissect_opt_quickstart.exit:                      ; preds = %dissect_opt_quickstart.exit.sink.split, %bb.bb
  %.0.i259 = phi i32 [ %i.dm, %bb.bb ], [ %i.in, %dissect_opt_quickstart.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  br label %dissect_opt_apn6.exit

bb.bh:                                            ; preds = %ipv6_opt_type_hdr.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.io = icmp ult i8 %i.by, 2
  br i1 %i.io, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ip = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef nonnull @ei_ipv6_opt_invalid_len, ptr noundef nonnull @.str.920, i32 noundef %i.cd) ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.iq = load i32, ptr @hf_ipv6_opt_ioam_rsv, align 4
  %i.ir = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.iq, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.is = load i32, ptr @hf_ipv6_opt_ioam_opt_type, align 4
  %i.it = add nuw nsw i32 %.0296, 3
  %i.iu = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ch, i32 noundef %i.is, ptr noundef %0, i32 noundef %i.it, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.e) ; 0 uses
  %i.iv = add nuw nsw i32 %.0296, 4               ; 4 uses
  %i.iw = add nsw i32 %i.cd, -2
  %i.ix = load i32, ptr %i.e, align 4
  %i.iy = call ptr @val_to_str_const(i32 noundef %i.ix, ptr noundef nonnull @ipv6_ioam_opt_types, ptr noundef nonnull @.str.921)
  %i.iz = call ptr @proto_tree_add_subtree(ptr noundef %i.ch, ptr noundef %0, i32 noundef %i.iv, i32 noundef %i.iw, i32 noundef 0, ptr noundef null, ptr noundef %i.iy) ; 14 uses
  %i.ja = load i32, ptr %i.e, align 4
  switch i32 %i.ja, label %dissect_opt_ioam.exit [
    i32 0, label %bb.bk
    i32 1, label %bb.bk
    i32 4, label %bb.du
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.jb = icmp ult i8 %i.by, 10
  br i1 %i.jb, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.jc = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef nonnull @ei_ipv6_opt_invalid_len, ptr noundef nonnull @.str.920, i32 noundef %i.cd) ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.jd = load i32, ptr @hf_ipv6_opt_ioam_trace_ns, align 4
  %i.je = call ptr @proto_tree_add_item(ptr noundef %i.iz, i32 noundef %i.jd, ptr noundef %0, i32 noundef range(i32 -2147483644, 2052) %i.iv, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jf = add nuw nsw i32 %.0296, 6               ; 2 uses
  %i.jg = shl nuw nsw i32 %i.jf, 3                ; 3 uses
  %i.jh = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.jg, i32 noundef 5) ; 2 uses
  %i.ji = load i32, ptr @hf_ipv6_opt_ioam_trace_nodelen, align 4
  %i.jj = call ptr @proto_tree_add_bits_item(ptr noundef %i.iz, i32 noundef %i.ji, ptr noundef %0, i32 noundef %i.jg, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.jk = load i32, ptr @hf_ipv6_opt_ioam_trace_flags, align 4
  %i.jl = load i32, ptr @ett_ipv6_opt_ioam_trace_flags, align 4
  %i.jm = call ptr @proto_tree_add_bitmask(ptr noundef %i.iz, ptr noundef %0, i32 noundef %i.jf, i32 noundef %i.jk, i32 noundef %i.jl, ptr noundef nonnull @dissect_opt_ioam_trace.ioam_trace_flags, i32 noundef 0) ; 0 uses
  %i.jn = add nuw nsw i32 %i.jg, 9                ; 2 uses
  %i.jo = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.jn, i32 noundef 7) ; 2 uses
  %i.jp = load i32, ptr @hf_ipv6_opt_ioam_trace_remlen, align 4
  %i.jq = call ptr @proto_tree_add_bits_item(ptr noundef %i.iz, i32 noundef %i.jp, ptr noundef %0, i32 noundef %i.jn, i32 noundef 7, i32 noundef 0)
  %i.jr = zext i8 %i.jo to i32
  %i.js = shl nuw nsw i32 %i.jr, 2                ; 6 uses
  %i.jt = add nsw i32 %i.cd, -10                  ; 4 uses
  %i.ju = icmp sgt i32 %i.js, %i.jt               ; 2 uses
  br i1 %i.ju, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.jv = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.jq, ptr noundef nonnull @ei_ipv6_opt_ioam_invalid_remlen, ptr noundef nonnull @.str.922, i32 noundef %i.js) ; 0 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.jw = add nuw nsw i32 %.0296, 8               ; 2 uses
  %i.jx = shl nuw nsw i32 %i.jw, 3
  %i.jy = call i32 @tvb_get_bits32(ptr noundef %0, i32 noundef %i.jx, i32 noundef 24, i32 noundef 0) ; 5 uses
  %i.jz = load i32, ptr @hf_ipv6_opt_ioam_trace_type, align 4
  %i.ka = load i32, ptr @ett_ipv6_opt_ioam_trace_types, align 4
  %i.kb = call ptr @proto_tree_add_bitmask(ptr noundef %i.iz, ptr noundef %0, i32 noundef %i.jw, i32 noundef %i.jz, i32 noundef %i.ka, ptr noundef nonnull @dissect_opt_ioam_trace.ioam_trace_types, i32 noundef 0) ; 2 uses
  %i.kc = load i32, ptr @hf_ipv6_opt_ioam_trace_rsv, align 4
  %i.kd = add nuw nsw i32 %.0296, 11
  %i.ke = call ptr @proto_tree_add_item(ptr noundef %i.iz, i32 noundef %i.kc, ptr noundef %0, i32 noundef %i.kd, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.kf = add nuw nsw i32 %.0296, 12              ; 6 uses
  %i.kg = icmp eq i8 %i.jh, 0
  %i.kh = icmp ne i32 %i.jy, 2
  %or.cond.i.i = select i1 %i.kg, i1 %i.kh, i1 false
  br i1 %or.cond.i.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ki = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.kb, ptr noundef nonnull @ei_ipv6_opt_ioam_invalid_nodelen) ; 0 uses
  br label %dissect_opt_ioam_trace.exit.i

bb.bq:                                            ; preds = %bb.bo
  br i1 %i.ju, label %dissect_opt_ioam_trace.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kj = call ptr @proto_tree_add_subtree(ptr noundef %i.iz, ptr noundef %0, i32 noundef %i.kf, i32 noundef %i.jt, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.923) ; 2 uses
  %.not.i.i261 = icmp eq i8 %i.jo, 0
  br i1 %.not.i.i261, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kk = load i32, ptr @hf_ipv6_opt_ioam_trace_free_space, align 4
  %i.kl = call ptr @proto_tree_add_item(ptr noundef %i.kj, i32 noundef %i.kk, ptr noundef %0, i32 noundef %i.kf, i32 noundef %i.js, i32 noundef 0) ; 0 uses
  %i.km = add nuw nsw i32 %i.js, %i.kf
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.0122.i.i = phi i32 [ %i.km, %bb.bs ], [ %i.kf, %bb.br ] ; 2 uses
  %i.kn = sub nuw nsw i32 %i.jt, %i.js            ; 2 uses
  %i.ko = trunc nuw nsw i32 %i.kn to i16          ; 2 uses
  %i.kp = zext i8 %i.jh to i32
  %i.kq = shl nuw nsw i32 %i.kp, 2                ; 5 uses
  %i.kr = icmp ne i32 %i.jt, %i.js
  %i.ks = icmp samesign ule i32 %i.kq, %i.kn
  %i.kt = select i1 %i.kr, i1 %i.ks, i1 false
  br i1 %i.kt, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.bt
  %i.ku = and i32 %i.jy, 8388608
  %.not.i.i.i = icmp eq i32 %i.ku, 0
  %i.kv = and i32 %i.jy, 4194304
  %.not134.i.i.i = icmp eq i32 %i.kv, 0
  %i.kw = and i32 %i.jy, 2097152
  %.not135.i.i.i = icmp eq i32 %i.kw, 0
  %i.kx = insertelement <20 x i32> poison, i32 %i.jy, i64 0
  %i.ky = shufflevector <20 x i32> %i.kx, <20 x i32> poison, <20 x i32> zeroinitializer
  %i.kz = and <20 x i32> %i.ky, <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576>
  %i.la = trunc nuw nsw i32 %i.kq to i16
  %i.lb = icmp eq <20 x i32> %i.kz, zeroinitializer ; 20 uses
  %i.lc = extractelement <20 x i1> %i.lb, i64 0
  %i.ld = extractelement <20 x i1> %i.lb, i64 1
  %i.le = extractelement <20 x i1> %i.lb, i64 2
  %i.lf = extractelement <20 x i1> %i.lb, i64 3
  %i.lg = extractelement <20 x i1> %i.lb, i64 4
  %i.lh = extractelement <20 x i1> %i.lb, i64 5
  %i.li = extractelement <20 x i1> %i.lb, i64 6
  %i.lj = extractelement <20 x i1> %i.lb, i64 7
  %i.lk = extractelement <20 x i1> %i.lb, i64 8
  %i.ll = extractelement <20 x i1> %i.lb, i64 9
  %i.lm = extractelement <20 x i1> %i.lb, i64 10
  %i.ln = extractelement <20 x i1> %i.lb, i64 11
  %i.lo = extractelement <20 x i1> %i.lb, i64 12
  %i.lp = extractelement <20 x i1> %i.lb, i64 13
  %i.lq = extractelement <20 x i1> %i.lb, i64 14
  %i.lr = extractelement <20 x i1> %i.lb, i64 15
  %i.ls = extractelement <20 x i1> %i.lb, i64 16
  %i.lt = extractelement <20 x i1> %i.lb, i64 17
  %i.lu = extractelement <20 x i1> %i.lb, i64 18
  %i.lv = extractelement <20 x i1> %i.lb, i64 19
  br label %bb.bu

bb.bu:                                            ; preds = %.backedge.i.i, %.lr.ph.i.i
  %.1123168.i.i = phi i32 [ %.0122.i.i, %.lr.ph.i.i ], [ %.1123.be.i.i, %.backedge.i.i ] ; 8 uses
  %.0130167.i.i = phi i16 [ %i.ko, %.lr.ph.i.i ], [ %.0130.be.i.i, %.backedge.i.i ]
  %.0135166.i.i = phi i8 [ 0, %.lr.ph.i.i ], [ %i.lw, %.backedge.i.i ]
  %i.lw = add i8 %.0135166.i.i, 1                 ; 2 uses
  %i.lx = zext i8 %i.lw to i32
  %i.ly = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.kj, ptr noundef %0, i32 noundef %.1123168.i.i, i32 noundef %i.kq, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.924, i32 noundef %i.lx) ; 23 uses
  br i1 %.not.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lz = call ptr @proto_tree_add_subtree(ptr noundef %i.ly, ptr noundef %0, i32 noundef %.1123168.i.i, i32 noundef 4, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.381) ; 2 uses
  %i.ma = load i32, ptr @hf_ipv6_opt_ioam_trace_node_hlim, align 4
  %i.mb = call ptr @proto_tree_add_item(ptr noundef %i.lz, i32 noundef %i.ma, ptr noundef %0, i32 noundef %.1123168.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mc = load i32, ptr @hf_ipv6_opt_ioam_trace_node_id, align 4
  %i.md = add i32 %.1123168.i.i, 1
  %i.me = call ptr @proto_tree_add_item(ptr noundef %i.lz, i32 noundef %i.mc, ptr noundef %0, i32 noundef %i.md, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.mf = add i32 %.1123168.i.i, 4
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.0.i.i.i = phi i32 [ %i.mf, %bb.bv ], [ %.1123168.i.i, %bb.bu ] ; 5 uses
  br i1 %.not134.i.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.mg = call ptr @proto_tree_add_subtree(ptr noundef %i.ly, ptr noundef %0, i32 noundef %.0.i.i.i, i32 noundef 4, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.383) ; 2 uses
  %i.mh = load i32, ptr @hf_ipv6_opt_ioam_trace_node_iif, align 4
  %i.mi = call ptr @proto_tree_add_item(ptr noundef %i.mg, i32 noundef %i.mh, ptr noundef %0, i32 noundef %.0.i.i.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.mj = load i32, ptr @hf_ipv6_opt_ioam_trace_node_eif, align 4
  %i.mk = add i32 %.0.i.i.i, 2
  %i.ml = call ptr @proto_tree_add_item(ptr noundef %i.mg, i32 noundef %i.mj, ptr noundef %0, i32 noundef %i.mk, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.mm = add i32 %.0.i.i.i, 4
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.1.i.i.i = phi i32 [ %i.mm, %bb.bx ], [ %.0.i.i.i, %bb.bw ] ; 3 uses
  br i1 %.not135.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mn = load i32, ptr @hf_ipv6_opt_ioam_trace_node_tss, align 4
  %i.mo = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.mn, ptr noundef %0, i32 noundef %.1.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.mp = add i32 %.1.i.i.i, 4
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.2.i.i.i = phi i32 [ %i.mp, %bb.bz ], [ %.1.i.i.i, %bb.by ] ; 3 uses
  br i1 %i.lv, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mq = load i32, ptr @hf_ipv6_opt_ioam_trace_node_tsf, align 4
  %i.mr = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.mq, ptr noundef %0, i32 noundef %.2.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ms = add i32 %.2.i.i.i, 4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.3.i.i.i = phi i32 [ %i.ms, %bb.cb ], [ %.2.i.i.i, %bb.ca ] ; 3 uses
  br i1 %i.lu, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mt = load i32, ptr @hf_ipv6_opt_ioam_trace_node_trdelay, align 4
  %i.mu = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.mt, ptr noundef %0, i32 noundef %.3.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.mv = add i32 %.3.i.i.i, 4
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.4.i.i.i = phi i32 [ %i.mv, %bb.cd ], [ %.3.i.i.i, %bb.cc ] ; 3 uses
  br i1 %i.lt, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mw = load i32, ptr @hf_ipv6_opt_ioam_trace_node_nsdata, align 4
  %i.mx = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.mw, ptr noundef %0, i32 noundef %.4.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.my = add i32 %.4.i.i.i, 4
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.5.i.i.i = phi i32 [ %i.my, %bb.cf ], [ %.4.i.i.i, %bb.ce ] ; 3 uses
  br i1 %i.ls, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mz = load i32, ptr @hf_ipv6_opt_ioam_trace_node_qdepth, align 4
  %i.na = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.mz, ptr noundef %0, i32 noundef %.5.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.nb = add i32 %.5.i.i.i, 4
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.6.i.i.i = phi i32 [ %i.nb, %bb.ch ], [ %.5.i.i.i, %bb.cg ] ; 3 uses
  br i1 %i.lr, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.nc = load i32, ptr @hf_ipv6_opt_ioam_trace_node_csum, align 4
  %i.nd = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.nc, ptr noundef %0, i32 noundef %.6.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ne = add i32 %.6.i.i.i, 4
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.7.i.i.i = phi i32 [ %i.ne, %bb.cj ], [ %.6.i.i.i, %bb.ci ] ; 5 uses
  br i1 %i.lq, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nf = call ptr @proto_tree_add_subtree(ptr noundef %i.ly, ptr noundef %0, i32 noundef %.7.i.i.i, i32 noundef 8, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.397) ; 2 uses
  %i.ng = load i32, ptr @hf_ipv6_opt_ioam_trace_node_hlim, align 4
  %i.nh = call ptr @proto_tree_add_item(ptr noundef %i.nf, i32 noundef %i.ng, ptr noundef %0, i32 noundef %.7.i.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ni = load i32, ptr @hf_ipv6_opt_ioam_trace_node_id_wide, align 4
  %i.nj = add i32 %.7.i.i.i, 1
  %i.nk = call ptr @proto_tree_add_item(ptr noundef %i.nf, i32 noundef %i.ni, ptr noundef %0, i32 noundef %i.nj, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.nl = add i32 %.7.i.i.i, 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.8.i.i.i = phi i32 [ %i.nl, %bb.cl ], [ %.7.i.i.i, %bb.ck ] ; 5 uses
  br i1 %i.lp, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.nm = call ptr @proto_tree_add_subtree(ptr noundef %i.ly, ptr noundef %0, i32 noundef %.8.i.i.i, i32 noundef 8, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.399) ; 2 uses
  %i.nn = load i32, ptr @hf_ipv6_opt_ioam_trace_node_iif_wide, align 4
  %i.no = call ptr @proto_tree_add_item(ptr noundef %i.nm, i32 noundef %i.nn, ptr noundef %0, i32 noundef %.8.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.np = load i32, ptr @hf_ipv6_opt_ioam_trace_node_eif_wide, align 4
  %i.nq = add i32 %.8.i.i.i, 4
  %i.nr = call ptr @proto_tree_add_item(ptr noundef %i.nm, i32 noundef %i.np, ptr noundef %0, i32 noundef %i.nq, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ns = add i32 %.8.i.i.i, 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.9.i.i.i = phi i32 [ %i.ns, %bb.cn ], [ %.8.i.i.i, %bb.cm ] ; 3 uses
  br i1 %i.lo, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.nt = load i32, ptr @hf_ipv6_opt_ioam_trace_node_nsdata_wide, align 4
  %i.nu = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.nt, ptr noundef %0, i32 noundef %.9.i.i.i, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.nv = add i32 %.9.i.i.i, 8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.10.i.i.i = phi i32 [ %i.nv, %bb.cp ], [ %.9.i.i.i, %bb.co ] ; 3 uses
  br i1 %i.ln, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nw = load i32, ptr @hf_ipv6_opt_ioam_trace_node_bufoccup, align 4
  %i.nx = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.nw, ptr noundef %0, i32 noundef %.10.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ny = add i32 %.10.i.i.i, 4
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.11.i.i.i = phi i32 [ %i.ny, %bb.cr ], [ %.10.i.i.i, %bb.cq ] ; 3 uses
  br i1 %i.lm, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.nz = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.oa = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.nz, ptr noundef %0, i32 noundef %.11.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ob = add i32 %.11.i.i.i, 4
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.12.i.i.i = phi i32 [ %i.ob, %bb.ct ], [ %.11.i.i.i, %bb.cs ] ; 3 uses
  br i1 %i.ll, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.oc = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.od = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.oc, ptr noundef %0, i32 noundef %.12.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.oe = add i32 %.12.i.i.i, 4
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.13.i.i.i = phi i32 [ %i.oe, %bb.cv ], [ %.12.i.i.i, %bb.cu ] ; 3 uses
  br i1 %i.lk, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.of = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.og = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.of, ptr noundef %0, i32 noundef %.13.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.oh = add i32 %.13.i.i.i, 4
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.14.i.i.i = phi i32 [ %i.oh, %bb.cx ], [ %.13.i.i.i, %bb.cw ] ; 3 uses
  br i1 %i.lj, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.oi = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.oj = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.oi, ptr noundef %0, i32 noundef %.14.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ok = add i32 %.14.i.i.i, 4
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.15.i.i.i = phi i32 [ %i.ok, %bb.cz ], [ %.14.i.i.i, %bb.cy ] ; 3 uses
  br i1 %i.li, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ol = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.om = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.ol, ptr noundef %0, i32 noundef %.15.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.on = add i32 %.15.i.i.i, 4
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.16.i.i.i = phi i32 [ %i.on, %bb.db ], [ %.15.i.i.i, %bb.da ] ; 3 uses
  br i1 %i.lh, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.oo = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.op = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.oo, ptr noundef %0, i32 noundef %.16.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.oq = add i32 %.16.i.i.i, 4
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.17.i.i.i = phi i32 [ %i.oq, %bb.dd ], [ %.16.i.i.i, %bb.dc ] ; 3 uses
  br i1 %i.lg, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.or = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.os = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.or, ptr noundef %0, i32 noundef %.17.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ot = add i32 %.17.i.i.i, 4
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.18.i.i.i = phi i32 [ %i.ot, %bb.df ], [ %.17.i.i.i, %bb.de ] ; 3 uses
  br i1 %i.lf, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ou = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.ov = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.ou, ptr noundef %0, i32 noundef %.18.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ow = add i32 %.18.i.i.i, 4
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.19.i.i.i = phi i32 [ %i.ow, %bb.dh ], [ %.18.i.i.i, %bb.dg ] ; 3 uses
  br i1 %i.le, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ox = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.oy = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.ox, ptr noundef %0, i32 noundef %.19.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.oz = add i32 %.19.i.i.i, 4
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.20.i.i.i = phi i32 [ %i.oz, %bb.dj ], [ %.19.i.i.i, %bb.di ] ; 3 uses
  br i1 %i.ld, label %dissect_opt_ioam_trace_node.exit.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pa = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.pb = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.pa, ptr noundef %0, i32 noundef %.20.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.pc = add i32 %.20.i.i.i, 4
  br label %dissect_opt_ioam_trace_node.exit.i.i

dissect_opt_ioam_trace_node.exit.i.i:             ; preds = %bb.dl, %bb.dk
  %.21.i.i.i = phi i32 [ %i.pc, %bb.dl ], [ %.20.i.i.i, %bb.dk ] ; 8 uses
  %i.pd = sub i32 %.21.i.i.i, %.1123168.i.i
  %.not146.i.i = icmp eq i32 %i.pd, %i.kq
  br i1 %.not146.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %dissect_opt_ioam_trace_node.exit.i.i
  %i.pe = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.kb, ptr noundef nonnull @ei_ipv6_opt_ioam_invalid_trace_type) ; 0 uses
  br label %dissect_opt_ioam_trace.exit.i

bb.dn:                                            ; preds = %dissect_opt_ioam_trace_node.exit.i.i
  %i.pf = sub nuw nsw i16 %.0130167.i.i, %i.la    ; 3 uses
  br i1 %i.lc, label %.backedge.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.pg = icmp ult i16 %i.pf, 4
  br i1 %i.pg, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.ph = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef nonnull @ei_ipv6_opt_invalid_len, ptr noundef nonnull @.str.920, i32 noundef %i.cd) ; 0 uses
  br label %dissect_opt_ioam_trace.exit.i

bb.dq:                                            ; preds = %bb.do
  %i.pi = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.21.i.i.i) ; 2 uses
  %i.pj = zext i8 %i.pi to i32
  %i.pk = shl nuw nsw i32 %i.pj, 2                ; 5 uses
  %i.pl = add nuw nsw i32 %i.pk, 4
  %i.pm = call ptr @proto_tree_add_subtree(ptr noundef %i.ly, ptr noundef %0, i32 noundef %.21.i.i.i, i32 noundef %i.pl, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.407) ; 3 uses
  %i.pn = load i32, ptr @hf_ipv6_opt_ioam_trace_node_oss_len, align 4
  %i.po = call ptr @proto_tree_add_item(ptr noundef %i.pm, i32 noundef %i.pn, ptr noundef %0, i32 noundef %.21.i.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.pp = load i32, ptr @hf_ipv6_opt_ioam_trace_node_oss_scid, align 4
  %i.pq = add i32 %.21.i.i.i, 1
  %i.pr = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.pm, i32 noundef %i.pp, ptr noundef %0, i32 noundef %i.pq, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %i.d) ; 0 uses
  %i.ps = add i32 %.21.i.i.i, 4                   ; 4 uses
  %i.pt = add nsw i16 %i.pf, -4                   ; 3 uses
  %i.pu = zext nneg i16 %i.pt to i32
  %.not149.i.i = icmp samesign ugt i32 %i.pk, %i.pu
  br i1 %.not149.i.i, label %.split.thread.i.i, label %bb.dr

.split.thread.i.i:                                ; preds = %bb.dq
  %i.pv = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef nonnull @ei_ipv6_opt_invalid_len, ptr noundef nonnull @.str.920, i32 noundef %i.cd) ; 0 uses
  br label %dissect_opt_ioam_trace.exit.i

bb.dr:                                            ; preds = %bb.dq
  %.not148.i.i = icmp eq i8 %i.pi, 0
  br i1 %.not148.i.i, label %.backedge.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.pw = load i32, ptr @hf_ipv6_opt_ioam_trace_node_oss_data, align 4
  %i.px = call ptr @proto_tree_add_item(ptr noundef %i.pm, i32 noundef %i.pw, ptr noundef %0, i32 noundef %i.ps, i32 noundef %i.pk, i32 noundef 0) ; 0 uses
  %i.py = trunc nuw nsw i32 %i.pk to i16
  %i.pz = sub nuw nsw i16 %i.pt, %i.py
  %i.qa = add i32 %i.pk, %i.ps
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.ds, %bb.dr, %bb.dn
  %.0130.be.i.i = phi i16 [ %i.pf, %bb.dn ], [ %i.pt, %bb.dr ], [ %i.pz, %bb.ds ] ; 4 uses
  %.1123.be.i.i = phi i32 [ %.21.i.i.i, %bb.dn ], [ %i.ps, %bb.dr ], [ %i.qa, %bb.ds ] ; 2 uses
  %i.qb = zext nneg i16 %.0130.be.i.i to i32
  %i.qc = icmp ne i16 %.0130.be.i.i, 0
  %i.qd = icmp samesign ule i32 %i.kq, %i.qb
  %i.qe = select i1 %i.qc, i1 %i.qd, i1 false
  br i1 %i.qe, label %bb.bu, label %._crit_edge.i.i, !llvm.loop !23

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.bt
  %.0130.lcssa.i.i = phi i16 [ %i.ko, %bb.bt ], [ %.0130.be.i.i, %.backedge.i.i ]
  %.1123.lcssa.i.i = phi i32 [ %.0122.i.i, %bb.bt ], [ %.1123.be.i.i, %.backedge.i.i ] ; 2 uses
  %.not145.i.i = icmp eq i16 %.0130.lcssa.i.i, 0
  br i1 %.not145.i.i, label %dissect_opt_ioam_trace.exit.i, label %bb.dt

bb.dt:                                            ; preds = %._crit_edge.i.i
  %i.qf = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef nonnull @ei_ipv6_opt_invalid_len, ptr noundef nonnull @.str.920, i32 noundef %i.cd) ; 0 uses
  br label %dissect_opt_ioam_trace.exit.i

dissect_opt_ioam_trace.exit.i:                    ; preds = %bb.dt, %._crit_edge.i.i, %.split.thread.i.i, %bb.dp, %bb.dm, %bb.bq, %bb.bp
  %.5.i.i = phi i32 [ %i.kf, %bb.bp ], [ %i.kf, %bb.bq ], [ %i.ps, %.split.thread.i.i ], [ %.1123.lcssa.i.i, %bb.dt ], [ %.1123.lcssa.i.i, %._crit_edge.i.i ], [ %.21.i.i.i, %bb.dp ], [ %.1123168.i.i, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %dissect_opt_ioam.exit

bb.du:                                            ; preds = %bb.bj
  %i.qg = icmp ult i8 %i.by, 10
  br i1 %i.qg, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.qh = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef nonnull @ei_ipv6_opt_invalid_len, ptr noundef nonnull @.str.920, i32 noundef %i.cd) ; 0 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.qi = load i32, ptr @hf_ipv6_opt_ioam_dex_ns, align 4
  %i.qj = call ptr @proto_tree_add_item(ptr noundef %i.iz, i32 noundef %i.qi, ptr noundef %0, i32 noundef range(i32 -2147483644, 2052) %i.iv, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.qk = add nuw nsw i32 %.0296, 6
  %i.ql = load i32, ptr @hf_ipv6_opt_ioam_dex_flags, align 4
  %i.qm = call ptr @proto_tree_add_item(ptr noundef %i.iz, i32 noundef %i.ql, ptr noundef %0, i32 noundef %i.qk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.qn = add nuw nsw i32 %.0296, 7               ; 2 uses
  %i.qo = shl nuw nsw i32 %i.qn, 3
  %i.qp = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.qo, i32 noundef 8) ; 2 uses
  %i.qq = load i32, ptr @hf_ipv6_opt_ioam_dex_extflags, align 4
  %i.qr = load i32, ptr @ett_ipv6_opt_ioam_dex_extflags, align 4
  %i.qs = call ptr @proto_tree_add_bitmask(ptr noundef %i.iz, ptr noundef %0, i32 noundef %i.qn, i32 noundef %i.qq, i32 noundef %i.qr, ptr noundef nonnull @dissect_opt_ioam_dex.ioam_dex_extflags, i32 noundef 0) ; 0 uses
  %i.qt = add nuw nsw i32 %.0296, 8
  %i.qu = load i32, ptr @hf_ipv6_opt_ioam_trace_type, align 4
  %i.qv = load i32, ptr @ett_ipv6_opt_ioam_trace_types, align 4
  %i.qw = call ptr @proto_tree_add_bitmask(ptr noundef %i.iz, ptr noundef %0, i32 noundef %i.qt, i32 noundef %i.qu, i32 noundef %i.qv, ptr noundef nonnull @dissect_opt_ioam_dex.ioam_dex_trace_types, i32 noundef 0) ; 0 uses
  %i.qx = load i32, ptr @hf_ipv6_opt_ioam_trace_rsv, align 4
  %i.qy = add nuw nsw i32 %.0296, 11
  %i.qz = call ptr @proto_tree_add_item(ptr noundef %i.iz, i32 noundef %i.qx, ptr noundef %0, i32 noundef %i.qy, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ra = add nuw nsw i32 %.0296, 12              ; 2 uses
  %.not.i28.i = icmp sgt i8 %i.qp, -1
  br i1 %.not.i28.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.rb = load i32, ptr @hf_ipv6_opt_ioam_dex_extflag_flowid, align 4
  %i.rc = call ptr @proto_tree_add_item(ptr noundef %i.iz, i32 noundef %i.rb, ptr noundef %0, i32 noundef %i.ra, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.rd = add nuw nsw i32 %.0296, 16
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.0.i.i = phi i32 [ %i.rd, %bb.dx ], [ %i.ra, %bb.dw ] ; 3 uses
  %i.re = and i8 %i.qp, 64
  %.not36.i.i = icmp eq i8 %i.re, 0
  br i1 %.not36.i.i, label %dissect_opt_ioam.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.rf = load i32, ptr @hf_ipv6_opt_ioam_dex_extflag_seqnum, align 4
  %i.rg = call ptr @proto_tree_add_item(ptr noundef %i.iz, i32 noundef %i.rf, ptr noundef %0, i32 noundef %.0.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.rh = add nsw i32 %.0.i.i, 4
  br label %dissect_opt_ioam.exit

dissect_opt_ioam.exit:                            ; preds = %bb.bj, %dissect_opt_ioam_trace.exit.i, %bb.dy, %bb.dz
  %.0.i260 = phi i32 [ %i.iv, %bb.bj ], [ %.5.i.i, %dissect_opt_ioam_trace.exit.i ], [ %i.rh, %bb.dz ], [ %.0.i.i, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %dissect_opt_apn6.exit

bb.ea:                                            ; preds = %ipv6_opt_type_hdr.exit.thread
  %.not.i262 = icmp eq i8 %i.by, 4
  br i1 %.not.i262, label %dissect_opt_tpf.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ri = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef nonnull @ei_ipv6_opt_invalid_len, ptr noundef nonnull @.str.925, i32 noundef %i.cd) ; 0 uses
  br label %dissect_opt_tpf.exit

dissect_opt_tpf.exit:                             ; preds = %bb.ea, %bb.eb
  %i.rj = load i32, ptr @hf_ipv6_opt_tpf_information, align 4
  %i.rk = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.rj, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.rl = add nuw nsw i32 %.0296, 6
  br label %dissect_opt_apn6.exit

bb.ec:                                            ; preds = %ipv6_opt_type_hdr.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i32 0, ptr %i.c, align 4
  %i.rm = icmp ult i8 %i.by, 8
  br i1 %i.rm, label %bb.ed, label %dissect_opt_calipso.exit

bb.ed:                                            ; preds = %bb.ec
  %i.rn = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef nonnull @ei_ipv6_opt_invalid_len, ptr noundef nonnull @.str.926, i32 noundef %i.cd) ; 0 uses
  br label %dissect_opt_calipso.exit

dissect_opt_calipso.exit:                         ; preds = %bb.ec, %bb.ed
  %i.ro = load i32, ptr @hf_ipv6_opt_calipso_doi, align 4
  %i.rp = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.ro, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.rq = add nuw nsw i32 %.0296, 6
  %i.rr = load i32, ptr @hf_ipv6_opt_calipso_cmpt_length, align 4
  %i.rs = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ch, i32 noundef %i.rr, ptr noundef %0, i32 noundef %i.rq, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.rt = add nuw nsw i32 %.0296, 7
  %i.ru = load i32, ptr @hf_ipv6_opt_calipso_sens_level, align 4
  %i.rv = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.ru, ptr noundef %0, i32 noundef %i.rt, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.rw = add nuw nsw i32 %.0296, 8
  %i.rx = load i32, ptr @hf_ipv6_opt_calipso_checksum, align 4
  %i.ry = call ptr @proto_tree_add_checksum(ptr noundef %i.ch, ptr noundef %0, i32 noundef %i.rw, i32 noundef %i.rx, i32 noundef -1, ptr noundef null, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.rz = add nuw nsw i32 %.0296, 10              ; 2 uses
  %i.sa = load i32, ptr @hf_ipv6_opt_calipso_cmpt_bitmap, align 4
  %i.sb = load i32, ptr %i.c, align 4
  %i.sc = shl i32 %i.sb, 2
  %i.sd = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.sa, ptr noundef %0, i32 noundef %i.rz, i32 noundef %i.sc, i32 noundef 0) ; 0 uses
  %i.se = load i32, ptr %i.c, align 4
  %i.sf = shl i32 %i.se, 2
  %i.sg = add i32 %i.sf, %i.rz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %dissect_opt_apn6.exit

bb.ee:                                            ; preds = %ipv6_opt_type_hdr.exit.thread
  %i.sh = load i32, ptr @hf_ipv6_opt_smf_dpd_hash_bit, align 4
  %i.si = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.sh, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm) ; 3 uses
  %.not.i263 = icmp sgt i8 %i.sj, -1
  br i1 %.not.i263, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.sk = load i32, ptr @hf_ipv6_opt_smf_dpd_hav, align 4
  %i.sl = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.sk, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef %i.cd, i32 noundef 0) ; 0 uses
  %i.sm = add nuw nsw i32 %i.dm, %i.cd
  br label %dissect_opt_apn6.exit

bb.eg:                                            ; preds = %bb.ee
  %i.sn = load i32, ptr @hf_ipv6_opt_smf_dpd_tid_type, align 4
  %i.so = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.sn, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sp = load i32, ptr @hf_ipv6_opt_smf_dpd_tid_len, align 4
  %i.sq = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.sp, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sr = add nuw nsw i32 %.0296, 3               ; 3 uses
  %i.ss = add nsw i32 %i.cd, -1                   ; 2 uses
  %.not40.i = icmp samesign ult i8 %i.sj, 16
  br i1 %.not40.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.st = and i8 %i.sj, 15
  %narrow.i = add nuw nsw i8 %i.st, 1
  %i.su = load i32, ptr @hf_ipv6_opt_smf_dpd_tagger_id, align 4
  %i.sv = zext nneg i8 %narrow.i to i32           ; 3 uses
  %i.sw = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.su, ptr noundef %0, i32 noundef %i.sr, i32 noundef %i.sv, i32 noundef 0) ; 0 uses
  %i.sx = add nuw nsw i32 %i.sr, %i.sv
  %i.sy = sub nsw i32 %i.ss, %i.sv
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.039.i = phi i32 [ %i.sx, %bb.eh ], [ %i.sr, %bb.eg ] ; 3 uses
  %.0.i264 = phi i32 [ %i.sy, %bb.eh ], [ %i.ss, %bb.eg ] ; 3 uses
  %i.sz = icmp sgt i32 %.0.i264, 0
  br i1 %i.sz, label %bb.ej, label %dissect_opt_apn6.exit

bb.ej:                                            ; preds = %bb.ei
  %i.ta = load i32, ptr @hf_ipv6_opt_smf_dpd_ident, align 4
  %i.tb = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.ta, ptr noundef %0, i32 noundef %.039.i, i32 noundef %.0.i264, i32 noundef 0) ; 0 uses
  %i.tc = add nsw i32 %.0.i264, %.039.i
  br label %dissect_opt_apn6.exit

bb.ek:                                            ; preds = %ipv6_opt_type_hdr.exit.thread
  %.not.i265 = icmp eq i8 %i.by, 10
  br i1 %.not.i265, label %dissect_opt_pdm.exit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.td = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef nonnull @ei_ipv6_opt_invalid_len, ptr noundef nonnull @.str.927, i32 noundef %i.cd) ; 0 uses
  br label %dissect_opt_pdm.exit

dissect_opt_pdm.exit:                             ; preds = %bb.ek, %bb.el
  %i.te = load i32, ptr @hf_ipv6_opt_pdm_scale_dtlr, align 4
  %i.tf = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.te, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.tg = add nuw nsw i32 %.0296, 3
  %i.th = load i32, ptr @hf_ipv6_opt_pdm_scale_dtls, align 4
  %i.ti = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.th, ptr noundef %0, i32 noundef %i.tg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.tj = add nuw nsw i32 %.0296, 4
  %i.tk = load i32, ptr @hf_ipv6_opt_pdm_psn_this_pkt, align 4
  %i.tl = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.tk, ptr noundef %0, i32 noundef %i.tj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tm = add nuw nsw i32 %.0296, 6
  %i.tn = load i32, ptr @hf_ipv6_opt_pdm_psn_last_recv, align 4
  %i.to = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.tn, ptr noundef %0, i32 noundef %i.tm, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tp = add nuw nsw i32 %.0296, 8
  %i.tq = load i32, ptr @hf_ipv6_opt_pdm_delta_last_recv, align 4
  %i.tr = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.tq, ptr noundef %0, i32 noundef %i.tp, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ts = add nuw nsw i32 %.0296, 10
  %i.tt = load i32, ptr @hf_ipv6_opt_pdm_delta_last_sent, align 4
  %i.tu = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.tt, ptr noundef %0, i32 noundef %i.ts, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tv = add nuw nsw i32 %.0296, 12
  br label %dissect_opt_apn6.exit

bb.em:                                            ; preds = %ipv6_opt_type_hdr.exit.thread
  %.not.i266 = icmp eq i8 %i.by, 16
  br i1 %.not.i266, label %dissect_opt_home_address.exit, label %bb.en

bb.en:                                            ; preds = %bb.em
end_hunk_0
