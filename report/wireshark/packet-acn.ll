Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-acn?download=true
inline.NumInlined: 128
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_acn_root_pdu:bb.a
  %i.gp = load i32, ptr %i.er, align 4            ; 2 uses
  %hf_acn_pdu_length.val.i.i = load i32, ptr @hf_acn_pdu_length, align 4
  %i.gq = call ptr @proto_tree_add_uint(ptr noundef %i.gm, i32 noundef %hf_acn_pdu_length.val.i.i, ptr noundef %0, i32 noundef %i.gn, i32 noundef %i.go, i32 noundef %i.gp) ; 0 uses
  %i.gr = load i8, ptr %i.ep, align 1             ; 2 uses
  %i.gs = and i8 %i.gr, 64
  %.not.i.i.i = icmp eq i8 %i.gs, 0
  %.pre252 = load i32, ptr %i.eo, align 4         ; 3 uses
  br i1 %.not.i.i.i, label %dissect_acn_common_base_pdu.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gt = add i32 %.pre252, 4                     ; 2 uses
  store i32 %i.gt, ptr %i.eo, align 4
  %i.gu = add i32 %i.go, 4
  store i32 %i.gu, ptr %i.es, align 4
  br label %dissect_acn_common_base_pdu.exit.i

dissect_acn_common_base_pdu.exit.i:               ; preds = %bb.g, %bb.h
  %i.gv = phi i32 [ %i.gt, %bb.h ], [ %.pre252, %bb.g ]
  %.sroa.3.7 = phi i32 [ %.pre252, %bb.h ], [ %.sroa.3.0, %bb.g ] ; 2 uses
  %i.gw = load i32, ptr @hf_acn_dmx_vector, align 4
  %i.gx = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.gm, i32 noundef %i.gw, ptr noundef %0, i32 noundef %.sroa.3.7, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.ev) ; 0 uses
  %i.gy = load ptr, ptr %i.gf, align 8
  %i.gz = load i32, ptr %i.ev, align 4
  %i.ha = call ptr @val_to_str(ptr noundef %i.gy, i32 noundef %i.gz, ptr noundef @acn_dmx_vector_vals, ptr noundef @.str.780)
  %i.hb = load ptr, ptr %i.et, align 8            ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.hb, ptr noundef @.str.781, ptr noundef %i.ha)
  %i.hc = and i8 %i.gr, 16
  %.not.i.i = icmp eq i8 %i.hc, 0
  %spec.select = select i1 %.not.i.i, i32 %.sroa.19177.0, i32 %i.gv ; 3 uses
  %i.hd = load i32, ptr %i.ev, align 4
  %cond.i = icmp eq i32 %i.hd, 2
  br i1 %cond.i, label %bb.i, label %dissect_acn_dmx_base_pdu.exit

bb.i:                                             ; preds = %dissect_acn_common_base_pdu.exit.i
  %i.he = load i32, ptr @hf_acn_dmx_source_name, align 4
  %i.hf = call ptr @proto_tree_add_item(ptr noundef %i.gm, i32 noundef %i.he, ptr noundef %0, i32 noundef %spec.select, i32 noundef %i.gg, i32 noundef 2) ; 0 uses
  %i.hg = add i32 %spec.select, %i.gg             ; 5 uses
  %i.hh = load i32, ptr @hf_acn_dmx_priority, align 4
  %i.hi = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.gm, i32 noundef %i.hh, ptr noundef %0, i32 noundef %i.hg, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.ex) ; 0 uses
  %i.hj = add i32 %i.hg, 1                        ; 2 uses
  switch i32 %i.fy, label %bb.k [
    i32 4, label %.thread.i
    i32 1346568193, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.i
  %hf_acn_dmx_3_reserved.sink.i = phi ptr [ @hf_acn_dmx_3_reserved, %bb.j ], [ @hf_acn_dmx_2_sync_universe, %bb.i ]
  %i.hk = load i32, ptr %hf_acn_dmx_3_reserved.sink.i, align 4
  %i.hl = call ptr @proto_tree_add_item(ptr noundef %i.gm, i32 noundef %i.hk, ptr noundef %0, i32 noundef %i.hj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.0.ph.i = add i32 %i.hg, 3
  %i.hm = load i32, ptr @hf_acn_dmx_sequence_number, align 4
  %i.hn = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.gm, i32 noundef %i.hm, ptr noundef %0, i32 noundef %.0.ph.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.ey) ; 0 uses
  %i.ho = add i32 %i.hg, 4                        ; 5 uses
  %i.hp = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ho)
  %i.hq = load i32, ptr @hf_acn_dmx_2_options, align 4
  %i.hr = zext i8 %i.hp to i32
  %i.hs = call ptr @proto_tree_add_uint(ptr noundef %i.gm, i32 noundef %i.hq, ptr noundef %0, i32 noundef %i.ho, i32 noundef 1, i32 noundef %i.hr)
  %i.ht = load i32, ptr @ett_acn_dmx_2_options, align 4
  %i.hu = call ptr @proto_item_add_subtree(ptr noundef %i.hs, i32 noundef %i.ht) ; 3 uses
  %i.hv = load i32, ptr @hf_acn_dmx_2_option_p, align 4
  %i.hw = call ptr @proto_tree_add_item(ptr noundef %i.hu, i32 noundef %i.hv, ptr noundef %0, i32 noundef %i.ho, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.hx = load i32, ptr @hf_acn_dmx_2_option_s, align 4
  %i.hy = call ptr @proto_tree_add_item(ptr noundef %i.hu, i32 noundef %i.hx, ptr noundef %0, i32 noundef %i.ho, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.hz = load i32, ptr @hf_acn_dmx_2_option_f, align 4
  %i.ia = call ptr @proto_tree_add_item(ptr noundef %i.hu, i32 noundef %i.hz, ptr noundef %0, i32 noundef %i.ho, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ib = load i32, ptr @hf_acn_dmx_sequence_number, align 4
  %i.ic = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.gm, i32 noundef %i.ib, ptr noundef %0, i32 noundef %i.hj, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.ey) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread.i
  %.sink72.i = phi i32 [ 2, %bb.k ], [ 5, %.thread.i ]
  %i.id = add i32 %.sink72.i, %i.hg               ; 2 uses
  %i.ie = load i32, ptr @hf_acn_dmx_universe, align 4
  %i.if = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.gm, i32 noundef %i.ie, ptr noundef %0, i32 noundef %i.id, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.ew) ; 0 uses
  %i.ig = add i32 %i.id, 2
  %i.ih = load ptr, ptr %i.gh, align 8
  %i.ii = load i32, ptr %i.ew, align 4
  %i.ij = load i32, ptr %i.ey, align 4
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ih, i32 noundef 25, ptr noundef @.str.782, i32 noundef %i.ii, i32 noundef %i.ij)
  %i.ik = load i32, ptr %i.ew, align 4
  %i.il = load i32, ptr %i.ex, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.hb, ptr noundef @.str.783, i32 noundef %i.ik, i32 noundef %i.il)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  store i32 %i.ig, ptr %i.ef, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en) #7
  %i.im = load ptr, ptr %i.gf, align 8
  %i.in = call noalias dereferenceable_or_null(128) ptr @wmem_alloc(ptr noundef %i.im, i64 noundef 128) #8 ; 11 uses
  store i8 0, ptr %i.in, align 1
  %i.io = load i32, ptr @ett_acn_dmx_data_pdu, align 4
  call fastcc void @begin_dissect_acn_pdu(ptr noundef nonnull %i.el, ptr noundef %0, ptr noundef nonnull %i.ek, ptr noundef %i.gm, ptr noundef nonnull %i.eh, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ej, i32 noundef %i.io, i1 noundef zeroext true)
  %i.ip = load ptr, ptr %i.el, align 8            ; 7 uses
  %i.iq = load i32, ptr @hf_acn_pdu_length, align 4
  %i.ir = load i32, ptr %i.eh, align 4
  %i.is = load i32, ptr %i.ej, align 4            ; 3 uses
  %i.it = load i32, ptr %i.ei, align 4            ; 2 uses
  %i.iu = call ptr @proto_tree_add_uint(ptr noundef %i.ip, i32 noundef %i.iq, ptr noundef %0, i32 noundef %i.ir, i32 noundef %i.is, i32 noundef %i.it) ; 0 uses
  %i.iv = load i8, ptr %i.eg, align 1             ; 3 uses
  %i.iw = and i8 %i.iv, 64
  %.not.i.i36.i = icmp eq i8 %i.iw, 0
  %.pre.pre.i = load i32, ptr %i.ef, align 4      ; 3 uses
  br i1 %.not.i.i36.i, label %dissect_pdu_bit_flag_v.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ix = add i32 %.pre.pre.i, 1                  ; 2 uses
  store i32 %i.ix, ptr %i.ef, align 4
  %i.iy = add i32 %i.is, 1                        ; 2 uses
  store i32 %i.iy, ptr %i.ej, align 4
  br label %dissect_pdu_bit_flag_v.exit.i.i

dissect_pdu_bit_flag_v.exit.i.i:                  ; preds = %bb.m, %bb.l
  %.pre.i = phi i32 [ %i.ix, %bb.m ], [ %.pre.pre.i, %bb.l ] ; 3 uses
  %i.iz = phi i32 [ %i.iy, %bb.m ], [ %i.is, %bb.l ] ; 2 uses
  %.0168.i.i = phi i32 [ %.pre.pre.i, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ja = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0168.i.i) ; 2 uses
  %i.jb = zext i8 %i.ja to i32                    ; 2 uses
  %i.jc = load i32, ptr @hf_acn_dmp_vector, align 4
  %i.jd = call ptr @proto_tree_add_uint(ptr noundef %i.ip, i32 noundef %i.jc, ptr noundef %0, i32 noundef %.0168.i.i, i32 noundef 1, i32 noundef %i.jb) ; 0 uses
  %i.je = load ptr, ptr %i.gf, align 8
  %i.jf = call ptr @val_to_str(ptr noundef %i.je, i32 noundef %i.jb, ptr noundef @acn_dmp_vector_vals, ptr noundef @.str.780)
  %i.jg = load ptr, ptr %i.ek, align 8            ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.jg, ptr noundef @.str.784)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.jg, ptr noundef @.str.777, ptr noundef %i.jf)
  %i.jh = and i8 %i.iv, 32
  %.not.i120.i.i = icmp eq i8 %i.jh, 0
  br i1 %.not.i120.i.i, label %dissect_pdu_bit_flag_h.exit.i.i, label %bb.n

bb.n:                                             ; preds = %dissect_pdu_bit_flag_v.exit.i.i
  %i.ji = add i32 %.pre.i, 1                      ; 2 uses
  store i32 %i.ji, ptr %i.ef, align 4
  %i.jj = add i32 %i.iz, 1                        ; 2 uses
  store i32 %i.jj, ptr %i.ej, align 4
  br label %dissect_pdu_bit_flag_h.exit.i.i

dissect_pdu_bit_flag_h.exit.i.i:                  ; preds = %bb.n, %dissect_pdu_bit_flag_v.exit.i.i
  %i.jk = phi i32 [ %i.ji, %bb.n ], [ %.pre.i, %dissect_pdu_bit_flag_v.exit.i.i ]
  %i.jl = phi i32 [ %i.jj, %bb.n ], [ %i.iz, %dissect_pdu_bit_flag_v.exit.i.i ]
  %.0162.i.i = phi i32 [ %.pre.i, %bb.n ], [ 0, %dissect_pdu_bit_flag_v.exit.i.i ]
  %i.jm = call fastcc i32 @acn_add_dmp_address_type(ptr noundef %0, ptr noundef readonly %1, ptr noundef %i.ip, i32 noundef %.0162.i.i, ptr noundef nonnull %14) ; 0 uses
  %i.jn = and i8 %i.iv, 16
  %.not.i121.i.i = icmp eq i8 %i.jn, 0            ; 2 uses
  %i.jo = sub i32 %i.it, %i.jl
  %.3167.i.i = select i1 %.not.i121.i.i, i32 0, i32 %i.jk ; 7 uses
  %.0163.i.i = select i1 %.not.i121.i.i, i32 0, i32 %i.jo
  %i.jp = add i32 %.0163.i.i, %.3167.i.i          ; 3 uses
  %cond.i.i = icmp eq i8 %i.ja, 2
  br i1 %cond.i.i, label %bb.o, label %dissect_acn_dmx_data_pdu.exit.i

bb.o:                                             ; preds = %dissect_pdu_bit_flag_h.exit.i.i
  %i.jq = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.3167.i.i)
  %hf_acn_dmx_2_first_property_address.val.i.i = load i32, ptr @hf_acn_dmx_2_first_property_address, align 4
  %hf_acn_dmx_start_code.val.i.i = load i32, ptr @hf_acn_dmx_start_code, align 4
  %i.jr = select i1 %switch.selectcmp.i, i32 %hf_acn_dmx_2_first_property_address.val.i.i, i32 %hf_acn_dmx_start_code.val.i.i
  %i.js = call ptr @proto_tree_add_item(ptr noundef %i.ip, i32 noundef %i.jr, ptr noundef %0, i32 noundef %.3167.i.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jt = add i32 %.3167.i.i, 2
  %i.ju = load i32, ptr @hf_acn_dmx_increment, align 4
  %i.jv = call ptr @proto_tree_add_item(ptr noundef %i.ip, i32 noundef %i.ju, ptr noundef %0, i32 noundef %i.jt, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jw = add i32 %.3167.i.i, 4
  %i.jx = load i32, ptr @hf_acn_dmx_count, align 4
  %i.jy = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.ip, i32 noundef %i.jx, ptr noundef %0, i32 noundef %i.jw, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.em) ; 0 uses
  %i.jz = add i32 %.3167.i.i, 6                   ; 2 uses
  switch i32 %i.fy, label %bb.q [
    i32 1346568193, label %bb.p
    i32 4, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.ka = load i32, ptr @hf_acn_dmx_2_start_code, align 4
  %i.kb = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.ip, i32 noundef %i.ka, ptr noundef %0, i32 noundef %i.jz, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.en) ; 0 uses
  %i.kc = add i32 %.3167.i.i, 7
  %i.kd = load i16, ptr %i.em, align 2
  %i.ke = add i16 %i.kd, -1
  store i16 %i.ke, ptr %i.em, align 2
  %.pre.i.i = load i8, ptr %i.en, align 1
  %i.kf = zext i8 %.pre.i.i to i16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.kg = phi i16 [ 0, %bb.o ], [ %i.kf, %bb.p ]
  %.0164.i.i = phi i32 [ %i.jz, %bb.o ], [ %i.kc, %bb.p ] ; 11 uses
  %i.kh = load i32, ptr @global_acn_dmx_display_line_format, align 4
  %cond1.i.i = icmp eq i32 %i.kh, 1               ; 2 uses
  %..i.i = select i1 %cond1.i.i, i32 16, i32 20   ; 5 uses
  %.117.i.i = select i1 %cond1.i.i, i32 8, i32 10 ; 3 uses
  %i.ki = load i32, ptr @global_acn_dmx_display_view, align 4
  %cond2.i.i = icmp eq i32 %i.ki, 0               ; 2 uses
  %.0107.i.i = select i1 %cond2.i.i, i8 2, i8 3   ; 7 uses
  %i.kj = load i8, ptr @global_acn_dmx_display_leading_zeros, align 1, !range !7, !noundef !8
  %.0.i.i = select i1 %switch.selectcmp.i, i16 %i.kg, i16 %i.jq
  %i.kk = load ptr, ptr %i.gh, align 8
  %i.kl = zext i16 %.0.i.i to i32
  %i.km = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0164.i.i)
  %i.kn = zext i8 %i.km to i32
  %i.ko = add i32 %.0164.i.i, 1
  %i.kp = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ko)
  %i.kq = zext i8 %i.kp to i32
  %i.kr = add i32 %.0164.i.i, 2
  %i.ks = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.kr)
  %i.kt = zext i8 %i.ks to i32
  %i.ku = add i32 %.0164.i.i, 3
  %i.kv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ku)
  %i.kw = zext i8 %i.kv to i32
  %i.kx = add i32 %.0164.i.i, 4
  %i.ky = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.kx)
  %i.kz = zext i8 %i.ky to i32
  %i.la = add i32 %.0164.i.i, 5
  %i.lb = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.la)
  %i.lc = zext i8 %i.lb to i32
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.kk, i32 noundef 25, ptr noundef @.str.785, i32 noundef %i.kl, i32 noundef %i.kn, i32 noundef %i.kq, i32 noundef %i.kt, i32 noundef %i.kw, i32 noundef %i.kz, i32 noundef %i.lc)
  %i.ld = getelementptr i8, ptr %i.in, i64 1
  store i8 32, ptr %i.in, align 1
  %i.le = getelementptr i8, ptr %i.in, i64 2
  store i8 32, ptr %i.ld, align 1
  %i.lf = getelementptr i8, ptr %i.in, i64 3
  store i8 32, ptr %i.le, align 1
  %15 = add nsw i8 %.0107.i.i, -2                 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.0109171.i.i = phi i32 [ 0, %bb.q ], [ %i.lg, %bb.t ]
  %.0110170.i.i = phi ptr [ %i.lf, %bb.q ], [ %.1111.i.i, %bb.t ] ; 5 uses
  %i.lg = add nuw nsw i32 %.0109171.i.i, 1        ; 4 uses
  %i.lh = trunc nuw nsw i32 %i.lg to i8
  br label %.preheader45.i.i.i

.preheader45.i.i.i:                               ; preds = %.preheader45.i.i.i, %bb.r
  %.043.i.i.i = phi i8 [ %18, %.preheader45.i.i.i ], [ %i.lh, %bb.r ] ; 3 uses
  %.1.i.i.i = phi i8 [ %16, %.preheader45.i.i.i ], [ 0, %bb.r ] ; 3 uses
  %i.li = urem i8 %.043.i.i.i, 10
  %i.lj = zext nneg i8 %i.li to i64
  %i.lk = getelementptr i8, ptr @.str.789, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1
  %16 = add i8 %.1.i.i.i, 1                       ; 4 uses
  %17 = zext i8 %.1.i.i.i to i64
  %i.lm = getelementptr i8, ptr %.0110170.i.i, i64 %17
  store i8 %i.ll, ptr %i.lm, align 1
  %18 = udiv i8 %.043.i.i.i, 10
  %.not.i122.i.i.a = icmp ult i8 %.043.i.i.i, 10
  br i1 %.not.i122.i.i.a, label %.preheader.i.i.i, label %.preheader45.i.i.i, !llvm.loop !35

.preheader.i.i.i:                                 ; preds = %.preheader45.i.i.i
  %19 = icmp ult i8 %16, %.0107.i.i
  br i1 %19, label %.lr.ph.preheader.i.i.i, label %ltos.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %20 = zext nneg i8 %16 to i64
  %scevgep.i.i.i = getelementptr i8, ptr %.0110170.i.i, i64 %20
  %21 = sub i8 %15, %.1.i.i.i
  %i.ln = zext i8 %21 to i64
  %22 = add nuw nsw i64 %i.ln, 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 %scevgep.i.i.i, i8 32, i64 range(i64 0, 5) %22, i1 false)
  br label %ltos.exit.i.i

ltos.exit.i.i:                                    ; preds = %.lr.ph.preheader.i.i.i, %.preheader.i.i.i
  %.2.lcssa.i.i.i = phi i8 [ %16, %.preheader.i.i.i ], [ %.0107.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.lo = zext i8 %.2.lcssa.i.i.i to i64
  %i.lp = getelementptr i8, ptr %.0110170.i.i, i64 %i.lo ; 2 uses
  store i8 0, ptr %i.lp, align 1
  %i.lq = call ptr @g_strreverse(ptr noundef %.0110170.i.i) ; 0 uses
  store i8 32, ptr %i.lp, align 1
  %.sink.i.i.i = add i8 %.2.lcssa.i.i.i, 1
  %i.lr = zext i8 %.sink.i.i.i to i64
  %i.ls = getelementptr i8, ptr %.0110170.i.i, i64 %i.lr ; 5 uses
  store i8 0, ptr %i.ls, align 1
  %i.lt = icmp eq i32 %i.lg, %.117.i.i
  br i1 %i.lt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %ltos.exit.i.i
  %i.lu = getelementptr i8, ptr %i.ls, i64 1
  store i8 124, ptr %i.ls, align 1
  %i.lv = getelementptr i8, ptr %i.ls, i64 2
  store i8 32, ptr %i.lu, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %ltos.exit.i.i
  %.1111.i.i = phi ptr [ %i.lv, %bb.s ], [ %i.ls, %ltos.exit.i.i ] ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.lg, %..i.i
  br i1 %exitcond.not.i.i, label %bb.u, label %bb.r, !llvm.loop !36

bb.u:                                             ; preds = %bb.t
  %.0106.i.i = select i1 %cond2.i.i, i8 16, i8 10 ; 3 uses
  %i.lw = trunc nuw i8 %i.kj to i1
  %.0105.i.i = select i1 %i.lw, i8 48, i8 32
  store i8 0, ptr %.1111.i.i, align 1
  %i.lx = load ptr, ptr %i.el, align 8
  %i.ly = load i32, ptr @hf_acn_dmx_data, align 4
  %i.lz = load i16, ptr %i.em, align 2
  %i.ma = zext i16 %i.lz to i32
  %i.mb = call ptr @proto_tree_add_string(ptr noundef %i.lx, i32 noundef %i.ly, ptr noundef %0, i32 noundef %.0164.i.i, i32 noundef %i.ma, ptr noundef %i.in) ; 0 uses
  %i.mc = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.in, i64 noundef 128, i32 noundef 2, i64 noundef 128, ptr noundef @.str.786, i32 noundef %..i.i) ; 0 uses
  %i.md = getelementptr i8, ptr %i.in, i64 9      ; 2 uses
  %i.me = icmp ult i32 %.0164.i.i, %i.jp
  br i1 %i.me, label %.lr.ph.i.i, label %dissect_acn_dmx_data_pdu.exit.i

.lr.ph.i.i:                                       ; preds = %bb.u
  %i.mf = zext nneg i8 %.0107.i.i to i64          ; 3 uses
  %i.mg = add i32 %i.jp, -1
  %i.mh = sub nuw i32 %i.jp, %.0164.i.i
  br label %bb.v

bb.v:                                             ; preds = %bb.ac, %.lr.ph.i.i
  %.1176.i.i = phi i32 [ %.0164.i.i, %.lr.ph.i.i ], [ %i.nx, %bb.ac ] ; 3 uses
  %.2175.i.i = phi ptr [ %i.md, %.lr.ph.i.i ], [ %.3.i.i, %bb.ac ] ; 7 uses
  %.0112174.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1113.i.i, %bb.ac ]
  %.0114173.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.nk, %bb.ac ]
  %.1165172.i.i = phi i32 [ %.0164.i.i, %.lr.ph.i.i ], [ %.2166.i.i, %bb.ac ] ; 4 uses
  %i.mi = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1176.i.i) ; 3 uses
  %i.mj = load i32, ptr @global_acn_dmx_display_view, align 4
  %i.mk = icmp eq i32 %i.mj, 2
  br i1 %i.mk, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ml = add i8 %i.mi, -1
  %or.cond10.i.i = icmp ult i8 %i.ml, 2
  br i1 %or.cond10.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.mm = zext i8 %i.mi to i16
  %i.mn = mul nuw nsw i16 %i.mm, 20
  %i.mo = udiv i16 %i.mn, 51
  %i.mp = trunc nuw nsw i16 %i.mo to i8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.0108.i.i = phi i8 [ %i.mi, %bb.v ], [ %i.mp, %bb.x ], [ 1, %bb.w ] ; 2 uses
  %i.mq = load i8, ptr @global_acn_dmx_display_zeros, align 1, !range !7, !noundef !8
  %i.mr = or i8 %i.mq, %.0108.i.i
  %or.cond4.i.not.i.i = icmp eq i8 %i.mr, 0
  br i1 %or.cond4.i.not.i.i, label %.preheader46.preheader.i.i.i, label %.preheader45.i125.i.i

.preheader46.preheader.i.i.i:                     ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef align 1 %.2175.i.i, i8 46, i64 range(i64 0, 4) %i.mf, i1 false)
  %i.ms = getelementptr i8, ptr %.2175.i.i, i64 %i.mf
  store i8 32, ptr %i.ms, align 1
  br label %ltos.exit140.i.i

.preheader45.i125.i.i:                            ; preds = %bb.y, %.preheader45.i125.i.i
  %.043.i127.i.i = phi i8 [ %i.na, %.preheader45.i125.i.i ], [ %.0108.i.i, %bb.y ] ; 3 uses
  %.1.i128.i.i = phi i8 [ %i.mx, %.preheader45.i125.i.i ], [ 0, %bb.y ] ; 3 uses
  %i.mt = urem i8 %.043.i127.i.i, %.0106.i.i
  %i.mu = zext nneg i8 %i.mt to i64
  %i.mv = getelementptr i8, ptr @.str.789, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1
  %i.mx = add i8 %.1.i128.i.i, 1                  ; 4 uses
  %i.my = zext i8 %.1.i128.i.i to i64
  %i.mz = getelementptr i8, ptr %.2175.i.i, i64 %i.my
  store i8 %i.mw, ptr %i.mz, align 1
  %i.na = udiv i8 %.043.i127.i.i, %.0106.i.i
  %.not.i129.i.i = icmp ugt i8 %.0106.i.i, %.043.i127.i.i
  br i1 %.not.i129.i.i, label %.preheader.i131.i.i, label %.preheader45.i125.i.i, !llvm.loop !35

.preheader.i131.i.i:                              ; preds = %.preheader45.i125.i.i
  %i.nb = icmp ult i8 %i.mx, %.0107.i.i
  %i.nc = zext i8 %i.mx to i64                    ; 2 uses
  br i1 %i.nb, label %.lr.ph.preheader.i133.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i133.i.i:                        ; preds = %.preheader.i131.i.i
  %scevgep.i134.i.i = getelementptr i8, ptr %.2175.i.i, i64 %i.nc
  %i.nd = sub i8 %15, %.1.i128.i.i
  %i.ne = zext i8 %i.nd to i64
  %i.nf = add nuw nsw i64 %i.ne, 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 %scevgep.i134.i.i, i8 range(i8 32, 49) %.0105.i.i, i64 range(i64 0, 5) %i.nf, i1 false)
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.preheader.i133.i.i, %.preheader.i131.i.i
  %.pre-phi.i.i = phi i64 [ %i.mf, %.lr.ph.preheader.i133.i.i ], [ %i.nc, %.preheader.i131.i.i ]
  %.2.lcssa.i132.i.i = phi i8 [ %.0107.i.i, %.lr.ph.preheader.i133.i.i ], [ %i.mx, %.preheader.i131.i.i ]
  %i.ng = getelementptr i8, ptr %.2175.i.i, i64 %.pre-phi.i.i ; 2 uses
  store i8 0, ptr %i.ng, align 1
  %i.nh = call ptr @g_strreverse(ptr noundef %.2175.i.i) ; 0 uses
  store i8 32, ptr %i.ng, align 1
  br label %ltos.exit140.i.i

ltos.exit140.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader46.preheader.i.i.i
  %.sink.in.i.i.i = phi i8 [ %.2.lcssa.i132.i.i, %._crit_edge.i.i.i ], [ %.0107.i.i, %.preheader46.preheader.i.i.i ]
  %.sink.i123.i.i = add i8 %.sink.in.i.i.i, 1
  %i.ni = zext i8 %.sink.i123.i.i to i64
  %i.nj = getelementptr i8, ptr %.2175.i.i, i64 %i.ni ; 5 uses
  store i8 0, ptr %i.nj, align 1
  %i.nk = add i32 %.0114173.i.i, 1                ; 4 uses
  %i.nl = add i32 %.0112174.i.i, 1                ; 4 uses
  %i.nm = icmp eq i32 %i.nl, %..i.i
  %i.nn = icmp eq i32 %.1176.i.i, %i.mg
  %or.cond119.i.i = select i1 %i.nm, i1 true, i1 %i.nn
  br i1 %or.cond119.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %ltos.exit140.i.i
  %i.no = load ptr, ptr %i.el, align 8
  %i.np = load i32, ptr @hf_acn_dmx_data, align 4
  %i.nq = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %i.no, i32 noundef %i.np, ptr noundef %0, i32 noundef %.1165172.i.i, i32 noundef %i.nl, ptr noundef %i.in, ptr noundef @.str.777, ptr noundef %i.in) ; 0 uses
  %i.nr = add i32 %.1165172.i.i, %..i.i
  %i.ns = add i32 %i.nk, %..i.i
  %i.nt = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.in, i64 noundef 128, i32 noundef 2, i64 noundef 128, ptr noundef @.str.787, i32 noundef %i.nk, i32 noundef %i.ns) ; 0 uses
  br label %bb.ac

bb.aa:                                            ; preds = %ltos.exit140.i.i
  %i.nu = icmp eq i32 %i.nl, %.117.i.i
  br i1 %i.nu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.nv = getelementptr i8, ptr %i.nj, i64 1
  store i8 124, ptr %i.nj, align 1
  %i.nw = getelementptr i8, ptr %i.nj, i64 2      ; 2 uses
  store i8 32, ptr %i.nv, align 1
  store i8 0, ptr %i.nw, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.2166.i.i = phi i32 [ %i.nr, %bb.z ], [ %.1165172.i.i, %bb.ab ], [ %.1165172.i.i, %bb.aa ]
  %.1113.i.i = phi i32 [ 0, %bb.z ], [ %.117.i.i, %bb.ab ], [ %i.nl, %bb.aa ]
  %.3.i.i = phi ptr [ %i.md, %bb.z ], [ %i.nw, %bb.ab ], [ %i.nj, %bb.aa ]
  %i.nx = add nuw i32 %.1176.i.i, 1
  %exitcond178.not.i.i = icmp eq i32 %i.nk, %i.mh
  br i1 %exitcond178.not.i.i, label %dissect_acn_dmx_data_pdu.exit.i, label %bb.v, !llvm.loop !37

dissect_acn_dmx_data_pdu.exit.i:                  ; preds = %bb.ac, %bb.u, %dissect_pdu_bit_flag_h.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  %.pre60.i = load i32, ptr %i.eq, align 4
  %.pre61.i = load i32, ptr %i.er, align 4
  br label %dissect_acn_dmx_base_pdu.exit

dissect_acn_dmx_base_pdu.exit:                    ; preds = %dissect_acn_common_base_pdu.exit.i, %dissect_acn_dmx_data_pdu.exit.i
  %i.ny = phi i32 [ %i.gp, %dissect_acn_common_base_pdu.exit.i ], [ %.pre61.i, %dissect_acn_dmx_data_pdu.exit.i ]
  %i.nz = phi i32 [ %i.gn, %dissect_acn_common_base_pdu.exit.i ], [ %.pre60.i, %dissect_acn_dmx_data_pdu.exit.i ]
  %i.oa = add i32 %i.nz, %i.ny                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  store i32 %i.oa, ptr %i.fe, align 4
  %i.ob = icmp eq i32 %i.oa, %i.gi
  br i1 %i.ob, label %.loopexit, label %bb.f, !llvm.loop !38

bb.ad:                                            ; preds = %dissect_pdu_bit_flag_v.exit
  %i.oc = load ptr, ptr %i.fg, align 8
  %i.od = call fastcc i32 @dissect_acn_root_pdu_header(ptr noundef %0, ptr noundef %1, ptr noundef %i.fj, ptr noundef %i.oc, ptr noundef @.str.771, ptr noundef nonnull %i.ez, i8 noundef zeroext %i.fp, i32 noundef %i.fm, ptr noundef nonnull %i.fe, ptr noundef nonnull %i.ff, ptr noundef %4, i1 noundef zeroext true, ptr noundef nonnull %i.fd, i1 noundef zeroext true)
  %i.oe = getelementptr i8, ptr %1, i64 416       ; 3 uses
  %i.of = getelementptr i8, ptr %1, i64 8         ; 4 uses
  %.pre248 = load i32, ptr %i.fe, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %dissect_acn_dmx_extension_base_pdu.exit, %bb.ad
  %i.og = phi i32 [ %.pre248, %bb.ad ], [ %i.sp, %dissect_acn_dmx_extension_base_pdu.exit ] ; 3 uses
  %.sroa.3.1 = phi i32 [ 0, %bb.ad ], [ %.sroa.3.10, %dissect_acn_dmx_extension_base_pdu.exit ]
  %.sroa.19177.1 = phi i32 [ 0, %bb.ad ], [ %.sroa.19177.10, %dissect_acn_dmx_extension_base_pdu.exit ]
  %i.oh = icmp ult i32 %i.og, %i.od
  br i1 %i.oh, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.oi = load ptr, ptr %i.fh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  store i32 %i.og, ptr %i.dx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee) #7
  %i.oj = load i32, ptr @ett_acn_dmx_pdu, align 4
  call fastcc void @begin_dissect_acn_pdu(ptr noundef nonnull %i.ed, ptr noundef %0, ptr noundef nonnull %i.ec, ptr noundef %i.oi, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dy, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.eb, i32 noundef %i.oj, i1 noundef zeroext true)
  %i.ok = load ptr, ptr %i.ed, align 8            ; 5 uses
  %i.ol = load i32, ptr %i.dz, align 4            ; 5 uses
  %i.om = load i32, ptr %i.eb, align 4            ; 2 uses
  %i.on = load i32, ptr %i.ea, align 4            ; 5 uses
  %hf_acn_pdu_length.val.i.i72 = load i32, ptr @hf_acn_pdu_length, align 4
  %i.oo = call ptr @proto_tree_add_uint(ptr noundef %i.ok, i32 noundef %hf_acn_pdu_length.val.i.i72, ptr noundef %0, i32 noundef %i.ol, i32 noundef %i.om, i32 noundef %i.on) ; 0 uses
  %i.op = load i8, ptr %i.dy, align 1             ; 2 uses
  %i.oq = and i8 %i.op, 64
  %.not.i.i.i73 = icmp eq i8 %i.oq, 0
  %.pre249 = load i32, ptr %i.dx, align 4         ; 3 uses
  br i1 %.not.i.i.i73, label %dissect_acn_common_base_pdu.exit.i74, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.or = add i32 %.pre249, 4                     ; 2 uses
  store i32 %i.or, ptr %i.dx, align 4
  %i.os = add i32 %i.om, 4
  store i32 %i.os, ptr %i.eb, align 4
  br label %dissect_acn_common_base_pdu.exit.i74

dissect_acn_common_base_pdu.exit.i74:             ; preds = %bb.af, %bb.ag
  %i.ot = phi i32 [ %i.or, %bb.ag ], [ %.pre249, %bb.af ]
  %.sroa.3.8 = phi i32 [ %.pre249, %bb.ag ], [ %.sroa.3.1, %bb.af ] ; 4 uses
  %i.ou = load i32, ptr @hf_acn_dmx_extension_vector, align 4
  %i.ov = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ok, i32 noundef %i.ou, ptr noundef %0, i32 noundef %.sroa.3.8, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.ee) ; 0 uses
  %i.ow = load ptr, ptr %i.oe, align 8
  %i.ox = load i32, ptr %i.ee, align 4
  %i.oy = call ptr @val_to_str(ptr noundef %i.ow, i32 noundef %i.ox, ptr noundef @acn_dmx_extension_vector_vals, ptr noundef @.str.780)
  %i.oz = load ptr, ptr %i.ec, align 8            ; 4 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.oz, ptr noundef @.str.781, ptr noundef %i.oy)
  %i.pa = and i8 %i.op, 16
  %.not.i.i75 = icmp eq i8 %i.pa, 0
  %spec.select200 = select i1 %.not.i.i75, i32 %.sroa.19177.1, i32 %i.ot ; 9 uses
  %i.pb = load i32, ptr %i.ee, align 4
  switch i32 %i.pb, label %dissect_acn_dmx_extension_base_pdu.exit [
    i32 2, label %bb.ah
    i32 1, label %bb.ap
  ]

bb.ah:                                            ; preds = %dissect_acn_common_base_pdu.exit.i74
  %i.pc = load i32, ptr @hf_acn_dmx_source_name, align 4
  %i.pd = call ptr @proto_tree_add_item(ptr noundef %i.ok, i32 noundef %i.pc, ptr noundef %0, i32 noundef %spec.select200, i32 noundef 64, i32 noundef 2) ; 0 uses
  %i.pe = add i32 %spec.select200, 64
  %i.pf = load i32, ptr @hf_acn_dmx_discovery_framing_reserved, align 4
  %i.pg = call ptr @proto_tree_add_item(ptr noundef %i.ok, i32 noundef %i.pf, ptr noundef %0, i32 noundef %i.pe, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ph = add i32 %spec.select200, 68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  store i32 %i.ph, ptr %i.do, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw) #7
  %i.pi = load ptr, ptr %i.oe, align 8
  %i.pj = call noalias dereferenceable_or_null(97) ptr @wmem_alloc(ptr noundef %i.pi, i64 noundef 97) #8 ; 5 uses
  store i8 0, ptr %i.pj, align 1
  %i.pk = load i32, ptr @ett_acn_dmx_pdu, align 4
  call fastcc void @begin_dissect_acn_pdu(ptr noundef nonnull %i.du, ptr noundef %0, ptr noundef nonnull %i.dt, ptr noundef %i.ok, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.do, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ds, i32 noundef %i.pk, i1 noundef zeroext true)
  %i.pl = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.pm = load i32, ptr %i.dq, align 4
  %i.pn = load i32, ptr %i.ds, align 4            ; 3 uses
  %i.po = load i32, ptr %i.dr, align 4            ; 2 uses
  %hf_acn_pdu_length.val.i.i.i = load i32, ptr @hf_acn_pdu_length, align 4
  %i.pp = call ptr @proto_tree_add_uint(ptr noundef %i.pl, i32 noundef %hf_acn_pdu_length.val.i.i.i, ptr noundef %0, i32 noundef %i.pm, i32 noundef %i.pn, i32 noundef %i.po) ; 0 uses
  %i.pq = load i8, ptr %i.dp, align 1             ; 2 uses
  %i.pr = and i8 %i.pq, 64
  %.not.i.i.i.i = icmp eq i8 %i.pr, 0
  %.pre250 = load i32, ptr %i.do, align 4         ; 3 uses
  br i1 %.not.i.i.i.i, label %dissect_acn_common_base_pdu.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ps = add i32 %.pre250, 4                     ; 2 uses
  store i32 %i.ps, ptr %i.do, align 4
  %i.pt = add i32 %i.pn, 4                        ; 2 uses
  store i32 %i.pt, ptr %i.ds, align 4
  br label %dissect_acn_common_base_pdu.exit.i.i

dissect_acn_common_base_pdu.exit.i.i:             ; preds = %bb.ah, %bb.ai
  %i.pu = phi i32 [ %i.ps, %bb.ai ], [ %.pre250, %bb.ah ]
  %.sroa.3.9 = phi i32 [ %.pre250, %bb.ai ], [ %.sroa.3.8, %bb.ah ] ; 2 uses
end_hunk_0
