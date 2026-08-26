Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-mbim?download=true
inline.NumInlined: 56
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dissect_mbim_control:bb.a
  %i.blm = call ptr @proto_tree_add_expert_remaining(ptr noundef %i.amz, ptr noundef %1, ptr noundef nonnull @ei_mbim_unexpected_msg, ptr noundef %.01674, i32 noundef %i.bll) ; 0 uses
  br label %bb.aff

bb.aer:                                           ; preds = %bb.aep, %bb.aeo
  %i.bln = load i32, ptr %i.a, align 4
  call fastcc void @mbim_dissect_ms_file_status(ptr noundef %.01674, ptr noundef %i.amz, i32 noundef %i.bln)
  br label %bb.aff

bb.aes:                                           ; preds = %bb.aen
  %i.blo = load i32, ptr %i.a, align 4
  %i.blp = call ptr @proto_tree_add_expert_remaining(ptr noundef %i.amz, ptr noundef %1, ptr noundef nonnull @ei_mbim_unexpected_msg, ptr noundef %.01674, i32 noundef %i.blo) ; 0 uses
  br label %bb.aff

bb.aet:                                           ; preds = %bb.adj
  %i.blq = load i32, ptr %i.a, align 4
  %i.blr = call ptr @proto_tree_add_expert_remaining(ptr noundef %i.amz, ptr noundef %1, ptr noundef nonnull @ei_mbim_unexpected_msg, ptr noundef %.01674, i32 noundef %i.blq) ; 0 uses
  br label %bb.aff

bb.aeu:                                           ; preds = %bb.rf
  %cond = icmp eq i32 %i.amk, 10
  %i.bls = load i32, ptr %i.a, align 4            ; 2 uses
  br i1 %cond, label %bb.aev, label %bb.aew

bb.aev:                                           ; preds = %bb.aeu
  call fastcc void @mbim_dissect_ms_nitz(ptr noundef %.01674, ptr noundef %i.amz, i32 noundef %i.bls)
  br label %bb.aff

bb.aew:                                           ; preds = %bb.aeu
  %i.blt = call ptr @proto_tree_add_expert_remaining(ptr noundef %i.amz, ptr noundef %1, ptr noundef nonnull @ei_mbim_unexpected_msg, ptr noundef %.01674, i32 noundef %i.bls) ; 0 uses
  br label %bb.aff

bb.aex:                                           ; preds = %bb.rf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #11
  %i.blu = load ptr, ptr %i.p, align 8            ; 2 uses
  %i.blv = getelementptr i8, ptr %i.blu, i64 24
  %i.blw = load ptr, ptr %i.blv, align 8
  %i.blx = call ptr @try_val_to_str_idx(i32 noundef %i.amk, ptr noundef %i.blw, ptr noundef nonnull %i.r) ; 0 uses
  %i.bly = load i32, ptr %i.r, align 4            ; 2 uses
  %.not1880 = icmp eq i32 %i.bly, -1
  br i1 %.not1880, label %bb.afc, label %bb.aey

bb.aey:                                           ; preds = %bb.aex
  %i.blz = load i32, ptr %i.b, align 4
  %i.bma = icmp eq i32 %i.blz, -2147483645
  %i.bmb = getelementptr i8, ptr %i.blu, i64 32
  %i.bmc = load ptr, ptr %i.bmb, align 8
  %i.bmd = sext i32 %i.bly to i64
  %i.bme = getelementptr [32 x i8], ptr %i.bmc, i64 %i.bmd
  %. = select i1 %i.bma, i64 16, i64 24
  %i.bmf = getelementptr i8, ptr %i.bme, i64 %.
  %i.bmg = load ptr, ptr %i.bmf, align 8          ; 2 uses
  %.not1882 = icmp eq ptr %i.bmg, null
  br i1 %.not1882, label %bb.afa, label %bb.aez

bb.aez:                                           ; preds = %bb.aey
  %i.bmh = load i32, ptr %i.a, align 4
  call void %i.bmg(ptr noundef %.01674, ptr noundef %1, ptr noundef %i.amz, i32 noundef %i.bmh, ptr noundef %.11673)
  br label %bb.afd

bb.afa:                                           ; preds = %bb.aey
  %i.bmi = load i32, ptr %i.m, align 4            ; 2 uses
  %.not1883 = icmp eq i32 %i.bmi, 0
  br i1 %.not1883, label %bb.afd, label %bb.afb

bb.afb:                                           ; preds = %bb.afa
  %i.bmj = load i32, ptr %i.a, align 4
  %i.bmk = call ptr @proto_tree_add_expert(ptr noundef %i.amz, ptr noundef %1, ptr noundef nonnull @ei_mbim_unexpected_info_buffer, ptr noundef %.01674, i32 noundef %i.bmj, i32 noundef %i.bmi) ; 0 uses
  br label %bb.afd

bb.afc:                                           ; preds = %bb.aex
  %i.bml = load i32, ptr %i.a, align 4
  %i.bmm = call ptr @proto_tree_add_expert_remaining(ptr noundef %i.amz, ptr noundef %1, ptr noundef nonnull @ei_mbim_unexpected_msg, ptr noundef %.01674, i32 noundef %i.bml) ; 0 uses
  br label %bb.afd

bb.afd:                                           ; preds = %bb.aez, %bb.afb, %bb.afa, %bb.afc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #11
  br label %bb.aff

bb.afe:                                           ; preds = %bb.rf
  %i.bmn = load i32, ptr @hf_mbim_info_buffer, align 4
  %i.bmo = load i32, ptr %i.a, align 4
  %i.bmp = load i32, ptr %i.m, align 4
  %i.bmq = call ptr @proto_tree_add_item(ptr noundef %i.amz, i32 noundef %i.bmn, ptr noundef %.01674, i32 noundef %i.bmo, i32 noundef %i.bmp, i32 noundef 0) ; 0 uses
  br label %bb.aff

bb.aff:                                           ; preds = %bb.afd, %bb.afe, %bb.tb, %bb.tc, %bb.sx, %bb.sy, %bb.su, %bb.sv, %bb.sr, %bb.ss, %bb.so, %bb.sp, %bb.sk, %bb.sl, %bb.rz, %bb.sa, %bb.rv, %bb.rw, %bb.rs, %bb.rt, %bb.rq, %bb.ri, %bb.rj, %bb.te, %bb.td, %bb.sz, %bb.sm, %bb.sf, %bb.se, %bb.sd, %bb.sc, %bb.sb, %bb.rx, %bb.rl, %bb.rk, %bb.to, %bb.tn, %bb.tm, %bb.tj, %bb.tk, %bb.tq, %bb.tp, %bb.th, %bb.tg, %bb.tt, %bb.ts, %bb.uc, %bb.ub, %bb.ua, %bb.tx, %bb.ty, %bb.ud, %bb.tv, %bb.un, %bb.uo, %bb.uk, %bb.ul, %bb.ug, %bb.up, %bb.uy, %bb.uz, %bb.uv, %bb.uw, %bb.us, %bb.ut, %bb.va, %bb.vf, %bb.ve, %bb.vd, %bb.vg, %bb.vq, %bb.vr, %bb.vm, %bb.vo, %bb.vn, %bb.vj, %bb.vk, %bb.vs, %bb.wa, %bb.vy, %bb.vz, %bb.vx, %bb.wb, %bb.we, %bb.wg, %bb.wf, %bb.wh, %bb.wj, %bb.wk, %bb.wl, %bb.wq, %bb.wp, %bb.wo, %bb.wr, %bb.wv, %bb.ww, %bb.wx, %bb.xa, %bb.xb, %bb.xc, %bb.xg, %bb.xh, %bb.xi, %bb.xo, %bb.xp, %bb.xl, %bb.xm, %bb.xq, %bb.yf, %.critedge1922, %bb.ye, %bb.yd, %bb.yc, %bb.xy, %.critedge, %bb.xx, %bb.xw, %bb.xv, %bb.yg, %bb.ym, %bb.yn, %bb.yo, %bb.yw, %.critedge1924, %bb.yv, %bb.yu, %bb.yt, %bb.yx, %bb.aal, %.critedge1930, %bb.aak, %bb.aaj, %bb.aai, %bb.aae, %bb.aad, %bb.aac, %bb.zy, %.critedge1928, %bb.zx, %bb.zw, %bb.zv, %bb.zr, %.critedge1926, %bb.zq, %bb.zp, %bb.zo, %bb.zk, %bb.zj, %bb.zi, %bb.ze, %bb.zd, %bb.zc, %bb.aam, %bb.aaz, %bb.aba, %bb.aav, %bb.aaw, %bb.aat, %bb.aas, %bb.aar, %bb.abb, %bb.acw, %bb.acy, %bb.acx, %bb.acr, %bb.acs, %bb.acn, %bb.aco, %bb.ack, %bb.aci, %bb.acj, %bb.ach, %bb.acb, %bb.acc, %bb.abx, %bb.aby, %bb.abv, %bb.abt, %bb.abu, %bb.abq, %bb.abm, %bb.abl, %bb.abk, %bb.ade, %bb.add, %bb.adc, %bb.adb, %bb.ada, %bb.acz, %bb.act, %bb.acd, %bb.abg, %bb.abf, %bb.abe, %bb.abd, %bb.adi, %bb.adh, %bb.adg, %bb.aes, %bb.aer, %bb.aeq, %bb.aek, %bb.aej, %bb.aei, %bb.aed, %bb.aee, %bb.aea, %bb.aeb, %bb.adx, %bb.ady, %bb.adu, %bb.adv, %bb.adr, %bb.ads, %bb.adp, %bb.ado, %bb.adn, %bb.aet, %bb.aem, %bb.ael, %bb.aew, %bb.aev, %bb.rp, %bb.ro, %bb.ui, %bb.uh, %bb.re, %bb.qs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #11
  br label %bb.afg

bb.afg:                                           ; preds = %bb.o, %bb.q, %bb.p, %bb.aff, %bb.qg, %proto_item_set_hidden.exit, %bb.qp, %proto_item_set_generated.exit1935
  %i.bmr = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.afh

bb.afh:                                           ; preds = %bb.f, %bb.afg
  %.0 = phi i32 [ %i.bmr, %bb.afg ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 13) i32 @dissect_mbim_descriptor(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 4 uses
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2) ; 2 uses
  %.not = icmp eq i8 %i.b, 36
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %i.c, 27                      ; 2 uses
  %i.e = icmp eq i8 %i.a, 12
  %or.cond = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i8 %i.c, 28
  %i.g = icmp eq i8 %i.a, 8
  %or.cond5 = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond5, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = load i32, ptr @hf_mbim_descriptor, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.k, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.k, i64 28       ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = or i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.d, %bb.e, %bb.f
  br i1 %i.d, label %bb.g, label %bb.h

bb.g:                                             ; preds = %proto_item_set_hidden.exit
  %i.o = load i32, ptr @hf_mbim_descriptor_version, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef 3, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.q = load i32, ptr @hf_mbim_descriptor_max_control_message, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef 5, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.s = load i32, ptr @hf_mbim_descriptor_number_filters, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.s, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.u = load i32, ptr @hf_mbim_descriptor_max_filter_size, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.u, ptr noundef %0, i32 noundef 8, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.w = load i32, ptr @hf_mbim_descriptor_max_segment_size, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.w, ptr noundef %0, i32 noundef 9, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.y = load i32, ptr @hf_mbim_descriptor_network_capabilities, align 4
  %i.z = load i32, ptr @ett_mbim_bitmap, align 4
  %i.aa = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef 11, i32 noundef %i.y, i32 noundef %i.z, ptr noundef nonnull @mbim_descriptor_network_capabilities_fields, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %proto_item_set_hidden.exit
  %i.ab = load i32, ptr @hf_mbim_descriptor_extended_version, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ab, ptr noundef %0, i32 noundef 3, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ad = load i32, ptr @hf_mbim_descriptor_max_outstanding_command_messages, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ad, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.af = load i32, ptr @hf_mbim_descriptor_mtu, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.af, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a, %bb.c
  %.0.shrunk = phi i8 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.a, %bb.h ], [ %i.a, %bb.g ]
  %.0 = zext nneg i8 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_mbim_bulk(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.g = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.h = icmp ult i32 %i.g, 12
  br i1 %i.h, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 0) ; 2 uses
  %.not = icmp eq i32 %i.i, 1213023054            ; 9 uses
  switch i32 %i.i, label %bb.av [
    i32 1751999342, label %bb.c
    i32 1213023054, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.j = getelementptr i8, ptr %1, i64 8          ; 15 uses
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @col_set_str(ptr noundef %i.k, i32 noundef 35, ptr noundef nonnull @.str.1728)
  %i.l = load ptr, ptr %i.j, align 8
  tail call void @col_clear(ptr noundef %i.l, i32 noundef 25)
  %i.m = load i32, ptr @proto_mbim, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.o = load i32, ptr @ett_mbim, align 4
  %i.p = tail call ptr @proto_item_add_subtree(ptr noundef %i.n, i32 noundef %i.o) ; 4 uses
  %i.q = load i32, ptr @hf_mbim_bulk, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.q, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.t, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.t, i64 28       ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = or i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.c, %bb.d, %bb.e
  %i.x = load i32, ptr @ett_mbim_msg_header, align 4
  %i.y = tail call ptr @proto_tree_add_subtree(ptr noundef %i.p, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.x, ptr noundef null, ptr noundef nonnull @.str.2755) ; 7 uses
  %i.z = load i32, ptr @hf_mbim_bulk_nth_signature, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.z, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ab = load i32, ptr @hf_mbim_bulk_nth_header_length, align 4
  %i.ac = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.y, i32 noundef %i.ab, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.ad = load i32, ptr %i.a, align 4
  call void @proto_item_set_len(ptr noundef %i.r, i32 noundef %i.ad)
  %i.ae = load i32, ptr @hf_mbim_bulk_nth_sequence_number, align 4
  %i.af = call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.ae, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %proto_item_set_hidden.exit
  %i.ag = load i32, ptr @hf_mbim_bulk_nth_block_length, align 4
  %i.ah = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.y, i32 noundef %i.ag, ptr noundef %0, i32 noundef 8, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.e)
  %i.ai = load i32, ptr @hf_mbim_bulk_nth_ndp_index, align 4
  %i.aj = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.y, i32 noundef %i.ai, ptr noundef %0, i32 noundef 10, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %proto_item_set_hidden.exit
  %i.ak = load i32, ptr @hf_mbim_bulk_nth_block_length_32, align 4
  %i.al = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.y, i32 noundef %i.ak, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.e)
  %i.am = load i32, ptr @hf_mbim_bulk_nth_ndp_index_32, align 4
  %i.an = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.y, i32 noundef %i.am, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0266 = phi ptr [ %i.an, %bb.g ], [ %i.aj, %bb.f ] ; 2 uses
  %.0265 = phi ptr [ %i.al, %bb.g ], [ %i.ah, %bb.f ] ; 2 uses
  %i.ao = call i32 @tvb_reported_length(ptr noundef %0) ; 4 uses
  %i.ap = load i32, ptr %i.e, align 4
  %.not285 = icmp eq i32 %i.ap, %i.ao
  br i1 %.not285, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = call ptr @expert_add_info(ptr noundef %1, ptr noundef %.0265, ptr noundef nonnull @ei_mbim_invalid_block_len) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = load i32, ptr %i.b, align 4             ; 4 uses
  %i.as = and i32 %i.ar, 3
  %.not286 = icmp eq i32 %i.as, 0
  br i1 %.not286, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %.0266, ptr noundef nonnull @ei_mbim_alignment_error, ptr noundef nonnull @.str.2756) ; 0 uses
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  %i.au = icmp ugt i32 %i.ar, %i.ao
  br i1 %i.au, label %bb.m, label %.preheader359

.preheader359:                                    ; preds = %bb.l
  %.not287393 = icmp eq i32 %i.ar, 0
  br i1 %.not287393, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader359
  %i.av = getelementptr i8, ptr %1, i64 416
  %i.aw = select i1 %.not, i32 3, i32 7
  %. = select i1 %.not, i32 2, i32 4              ; 3 uses
  %.513 = select i1 %.not, i32 4, i32 8
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = call ptr @expert_add_info(ptr noundef %1, ptr noundef %.0266, ptr noundef nonnull @ei_mbim_out_of_bounds_index) ; 0 uses
  br label %.sink.split

thread-pre-split:                                 ; preds = %proto_item_set_generated.exit
  %i.ay = add nuw nsw i32 %.0270395, 1
  %.pr = load i32, ptr %i.b, align 4              ; 2 uses
  %.not287 = icmp eq i32 %.pr, 0
  br i1 %.not287, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %.lr.ph, %thread-pre-split
  %.1396 = phi ptr [ %.0265, %.lr.ph ], [ %i.km, %thread-pre-split ]
  %.0270395 = phi i32 [ 0, %.lr.ph ], [ %i.ay, %thread-pre-split ] ; 2 uses
  %.0271394 = phi i32 [ 0, %.lr.ph ], [ %.1272, %thread-pre-split ] ; 3 uses
  %i.az = phi i32 [ %i.ar, %.lr.ph ], [ %.pr, %thread-pre-split ] ; 27 uses
  %i.ba = load i32, ptr @ett_mbim_msg_header, align 4
  %i.bb = call ptr @proto_tree_add_subtree(ptr noundef %i.p, ptr noundef %0, i32 noundef %i.az, i32 noundef 0, i32 noundef %i.ba, ptr noundef null, ptr noundef nonnull @.str.2757) ; 17 uses
  %i.bc = load ptr, ptr %i.av, align 8
  %i.bd = call ptr @tvb_get_string_enc(ptr noundef %i.bc, ptr noundef %0, i32 noundef %i.az, i32 noundef 4, i32 noundef 0) ; 45 uses
  %i.be = load i8, ptr %i.bd, align 1             ; 2 uses
  br i1 %.not, label %sub_0, label %sub_0331

sub_0:                                            ; preds = %bb.n
  switch i8 %i.be, label %.critedge318 [
    i8 73, label %sub_1
    i8 68, label %sub_1344
  ]

sub_1:                                            ; preds = %sub_0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bg = load i8, ptr %i.bf, align 1
  %.not406.a = icmp eq i8 %i.bg, 80
  br i1 %.not406.a, label %.tail, label %sub_1336

.tail:                                            ; preds = %sub_1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = icmp eq i8 %i.bi, 83
  br i1 %i.bj, label %bb.o, label %sub_1336

sub_0331:                                         ; preds = %bb.n
  switch i8 %i.be, label %.critedge320 [
    i8 105, label %sub_1332
    i8 100, label %sub_1348
  ]

sub_1332:                                         ; preds = %sub_0331
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bl = load i8, ptr %i.bk, align 1
  %.not398.a = icmp eq i8 %i.bl, 112
  br i1 %.not398.a, label %.critedge.tail, label %sub_1340

.critedge.tail:                                   ; preds = %sub_1332
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = icmp eq i8 %i.bn, 115
  br i1 %i.bo, label %bb.o, label %sub_1340

bb.o:                                             ; preds = %.critedge.tail, %.tail
  %i.bp = load i32, ptr @hf_mbim_bulk_ndp_signature, align 4
  %i.bq = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.az)
  %i.br = load i8, ptr %i.bd, align 1
  %i.bs = sext i8 %i.br to i32
  %i.bt = getelementptr i8, ptr %i.bd, i64 1      ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = sext i8 %i.bu to i32
  %i.bw = getelementptr i8, ptr %i.bd, i64 2      ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = sext i8 %i.bx to i32
  %i.bz = getelementptr i8, ptr %i.bd, i64 3      ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = sext i8 %i.ca to i32
  %i.cc = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.bb, i32 noundef %i.bp, ptr noundef %0, i32 noundef %i.az, i32 noundef 4, i32 noundef %i.bq, ptr noundef nonnull @.str.2760, i32 noundef %i.bs, i32 noundef %i.bv, i32 noundef %i.by, i32 noundef %i.cb)
  %i.cd = load i32, ptr @ett_mbim_msg_header, align 4
  %i.ce = call ptr @proto_item_add_subtree(ptr noundef %i.cc, i32 noundef %i.cd)
  %i.cf = load i32, ptr @hf_mbim_bulk_ndp_signature_ips_session_id, align 4
  %i.cg = add i32 %i.az, 3
  %i.ch = call ptr @proto_tree_add_item(ptr noundef %i.ce, i32 noundef %i.cf, ptr noundef %0, i32 noundef %i.cg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ci = load ptr, ptr %i.j, align 8
  %i.cj = load i8, ptr %i.bd, align 1
  %i.ck = sext i8 %i.cj to i32
  %i.cl = load i8, ptr %i.bt, align 1
  %i.cm = sext i8 %i.cl to i32
  %i.cn = load i8, ptr %i.bw, align 1
  %i.co = sext i8 %i.cn to i32
  %i.cp = load i8, ptr %i.bz, align 1
  %i.cq = sext i8 %i.cp to i32
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.ci, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.2760, i32 noundef %i.ck, i32 noundef %i.cm, i32 noundef %i.co, i32 noundef %i.cq)
  %i.cr = load ptr, ptr @ip_handle, align 8
  br label %bb.v

sub_1336:                                         ; preds = %.tail, %sub_1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.ct = load i8, ptr %i.cs, align 1
  %.not408 = icmp eq i8 %i.ct, 80
  br i1 %.not408, label %.critedge306.tail, label %.critedge318

.critedge306.tail:                                ; preds = %sub_1336
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = icmp eq i8 %i.cv, 67
  br i1 %i.cw, label %bb.p, label %.critedge318

sub_1340:                                         ; preds = %.critedge.tail, %sub_1332
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.cy = load i8, ptr %i.cx, align 1
  %.not400 = icmp eq i8 %i.cy, 112
  br i1 %.not400, label %.critedge308.tail, label %.critedge320

.critedge308.tail:                                ; preds = %sub_1340
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = icmp eq i8 %i.da, 99
  br i1 %i.db, label %bb.p, label %.critedge320

bb.p:                                             ; preds = %.critedge308.tail, %.critedge306.tail
  %i.dc = load i32, ptr @hf_mbim_bulk_ndp_signature, align 4
  %i.dd = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.az)
  %i.de = load i8, ptr %i.bd, align 1
  %i.df = sext i8 %i.de to i32
  %i.dg = getelementptr i8, ptr %i.bd, i64 1      ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = sext i8 %i.dh to i32
  %i.dj = getelementptr i8, ptr %i.bd, i64 2      ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = sext i8 %i.dk to i32
  %i.dm = getelementptr i8, ptr %i.bd, i64 3      ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = sext i8 %i.dn to i32
  %i.dp = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.bb, i32 noundef %i.dc, ptr noundef %0, i32 noundef %i.az, i32 noundef 4, i32 noundef %i.dd, ptr noundef nonnull @.str.2760, i32 noundef %i.df, i32 noundef %i.di, i32 noundef %i.dl, i32 noundef %i.do)
  %i.dq = load i32, ptr @ett_mbim_msg_header, align 4
  %i.dr = call ptr @proto_item_add_subtree(ptr noundef %i.dp, i32 noundef %i.dq)
  %i.ds = load i32, ptr @hf_mbim_bulk_ndp_signature_ipc_session_id, align 4
  %i.dt = add i32 %i.az, 3
  %i.du = call ptr @proto_tree_add_item(ptr noundef %i.dr, i32 noundef %i.ds, ptr noundef %0, i32 noundef %i.dt, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dv = load ptr, ptr %i.j, align 8
  %i.dw = load i8, ptr %i.bd, align 1
  %i.dx = sext i8 %i.dw to i32
  %i.dy = load i8, ptr %i.dg, align 1
  %i.dz = sext i8 %i.dy to i32
  %i.ea = load i8, ptr %i.dj, align 1
  %i.eb = sext i8 %i.ea to i32
  %i.ec = load i8, ptr %i.dm, align 1
  %i.ed = sext i8 %i.ec to i32
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.dv, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.2760, i32 noundef %i.dx, i32 noundef %i.dz, i32 noundef %i.eb, i32 noundef %i.ed)
  %i.ee = load ptr, ptr @bulk_ndp_ctrl_handle, align 8
  br label %bb.v

sub_1344:                                         ; preds = %sub_0
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.eg = load i8, ptr %i.ef, align 1
  %.not410 = icmp eq i8 %i.eg, 83
  br i1 %.not410, label %.critedge310.tail, label %sub_1352

.critedge310.tail:                                ; preds = %sub_1344
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = icmp eq i8 %i.ei, 83
  br i1 %i.ej, label %bb.q, label %sub_1352

sub_1348:                                         ; preds = %sub_0331
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.el = load i8, ptr %i.ek, align 1
  %.not402 = icmp eq i8 %i.el, 115
  br i1 %.not402, label %.critedge312.tail, label %sub_1356

.critedge312.tail:                                ; preds = %sub_1348
  %i.em = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = icmp eq i8 %i.en, 115
  br i1 %i.eo, label %bb.q, label %sub_1356

bb.q:                                             ; preds = %.critedge312.tail, %.critedge310.tail
  %i.ep = load i32, ptr @hf_mbim_bulk_ndp_signature, align 4
  %i.eq = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.az)
  %i.er = load i8, ptr %i.bd, align 1
  %i.es = sext i8 %i.er to i32
  %i.et = getelementptr i8, ptr %i.bd, i64 1      ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = sext i8 %i.eu to i32
  %i.ew = getelementptr i8, ptr %i.bd, i64 2      ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = sext i8 %i.ex to i32
  %i.ez = getelementptr i8, ptr %i.bd, i64 3      ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = sext i8 %i.fa to i32
  %i.fc = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.bb, i32 noundef %i.ep, ptr noundef %0, i32 noundef %i.az, i32 noundef 4, i32 noundef %i.eq, ptr noundef nonnull @.str.2760, i32 noundef %i.es, i32 noundef %i.ev, i32 noundef %i.ey, i32 noundef %i.fb)
  %i.fd = load i32, ptr @ett_mbim_msg_header, align 4
  %i.fe = call ptr @proto_item_add_subtree(ptr noundef %i.fc, i32 noundef %i.fd)
  %i.ff = load i32, ptr @hf_mbim_bulk_ndp_signature_dss_session_id, align 4
  %i.fg = add i32 %i.az, 3
  %i.fh = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.fe, i32 noundef %i.ff, ptr noundef %0, i32 noundef %i.fg, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.f) ; 0 uses
  %i.fi = load ptr, ptr %i.j, align 8
  %i.fj = load i8, ptr %i.bd, align 1
  %i.fk = sext i8 %i.fj to i32
  %i.fl = load i8, ptr %i.et, align 1
  %i.fm = sext i8 %i.fl to i32
  %i.fn = load i8, ptr %i.ew, align 1
  %i.fo = sext i8 %i.fn to i32
  %i.fp = load i8, ptr %i.ez, align 1
  %i.fq = sext i8 %i.fp to i32
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.fi, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.2760, i32 noundef %i.fk, i32 noundef %i.fm, i32 noundef %i.fo, i32 noundef %i.fq)
  %i.fr = load ptr, ptr @dss_dissector_table, align 8
  %i.fs = load i32, ptr %i.f, align 4
  %i.ft = call ptr @dissector_get_uint_handle(ptr noundef %i.fr, i32 noundef %i.fs) ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  %i.fv = load ptr, ptr @data_handle, align 8
  %spec.select = select i1 %i.fu, ptr %i.fv, ptr %i.ft
  br label %bb.v

sub_1352:                                         ; preds = %.critedge310.tail, %sub_1344
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.fx = load i8, ptr %i.fw, align 1
  %.not412 = icmp eq i8 %i.fx, 83
  br i1 %.not412, label %.critedge314.tail, label %.critedge318

.critedge314.tail:                                ; preds = %sub_1352
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = icmp eq i8 %i.fz, 67
  br i1 %i.ga, label %bb.r, label %.critedge318

sub_1356:                                         ; preds = %.critedge312.tail, %sub_1348
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.gc = load i8, ptr %i.gb, align 1
  %.not404 = icmp eq i8 %i.gc, 115
  br i1 %.not404, label %.critedge316.tail, label %.critedge320

.critedge316.tail:                                ; preds = %sub_1356
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = icmp eq i8 %i.ge, 99
  br i1 %i.gf, label %bb.r, label %.critedge320

bb.r:                                             ; preds = %.critedge316.tail, %.critedge314.tail
  %i.gg = load i32, ptr @hf_mbim_bulk_ndp_signature, align 4
  %i.gh = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.az)
  %i.gi = load i8, ptr %i.bd, align 1
  %i.gj = sext i8 %i.gi to i32
  %i.gk = getelementptr i8, ptr %i.bd, i64 1      ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = sext i8 %i.gl to i32
  %i.gn = getelementptr i8, ptr %i.bd, i64 2      ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1
  %i.gp = sext i8 %i.go to i32
  %i.gq = getelementptr i8, ptr %i.bd, i64 3      ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1
  %i.gs = sext i8 %i.gr to i32
  %i.gt = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.bb, i32 noundef %i.gg, ptr noundef %0, i32 noundef %i.az, i32 noundef 4, i32 noundef %i.gh, ptr noundef nonnull @.str.2760, i32 noundef %i.gj, i32 noundef %i.gm, i32 noundef %i.gp, i32 noundef %i.gs)
  %i.gu = load i32, ptr @ett_mbim_msg_header, align 4
  %i.gv = call ptr @proto_item_add_subtree(ptr noundef %i.gt, i32 noundef %i.gu)
  %i.gw = load i32, ptr @hf_mbim_bulk_ndp_signature_dsc_session_id, align 4
  %i.gx = add i32 %i.az, 3
  %i.gy = call ptr @proto_tree_add_item(ptr noundef %i.gv, i32 noundef %i.gw, ptr noundef %0, i32 noundef %i.gx, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.gz = load ptr, ptr %i.j, align 8
  %i.ha = load i8, ptr %i.bd, align 1
  %i.hb = sext i8 %i.ha to i32
  %i.hc = load i8, ptr %i.gk, align 1
  %i.hd = sext i8 %i.hc to i32
  %i.he = load i8, ptr %i.gn, align 1
  %i.hf = sext i8 %i.he to i32
  %i.hg = load i8, ptr %i.gq, align 1
  %i.hh = sext i8 %i.hg to i32
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.gz, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.2760, i32 noundef %i.hb, i32 noundef %i.hd, i32 noundef %i.hf, i32 noundef %i.hh)
  %i.hi = load ptr, ptr @bulk_ndp_ctrl_handle, align 8
  br label %bb.v

.critedge318:                                     ; preds = %sub_0, %sub_1336, %.critedge306.tail, %sub_1352, %.critedge314.tail
  %i.hj = call i32 @strcmp(ptr noundef %i.bd, ptr noundef nonnull dereferenceable(5) @.str.2767) #12
  %.not296 = icmp eq i32 %i.hj, 0
  br i1 %.not296, label %bb.s, label %.critedge322

.critedge320:                                     ; preds = %sub_0331, %sub_1340, %.critedge308.tail, %sub_1356, %.critedge316.tail
  %i.hk = call i32 @strcmp(ptr noundef %i.bd, ptr noundef nonnull dereferenceable(5) @.str.2768) #12
  %.not297 = icmp eq i32 %i.hk, 0
  br i1 %.not297, label %bb.s, label %.critedge324

bb.s:                                             ; preds = %.critedge320, %.critedge318
  %i.hl = load i32, ptr @hf_mbim_bulk_ndp_signature, align 4
  %i.hm = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.az)
  %i.hn = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.bb, i32 noundef %i.hl, ptr noundef %0, i32 noundef %i.az, i32 noundef 4, i32 noundef %i.hm, ptr noundef nonnull @.str.2769, ptr noundef %i.bd) ; 0 uses
  %i.ho = load ptr, ptr %i.j, align 8
  call void @col_append_sep_str(ptr noundef %i.ho, i32 noundef 25, ptr noundef null, ptr noundef %i.bd)
  %i.hp = load ptr, ptr @eth_handle, align 8
  br label %bb.v

.critedge322:                                     ; preds = %.critedge318
  %i.hq = call i32 @strcmp(ptr noundef %i.bd, ptr noundef nonnull dereferenceable(5) @.str.2770) #12
  %.not298 = icmp eq i32 %i.hq, 0
  br i1 %.not298, label %bb.t, label %bb.u

.critedge324:                                     ; preds = %.critedge320
  %i.hr = call i32 @strcmp(ptr noundef %i.bd, ptr noundef nonnull dereferenceable(5) @.str.2771) #12
  %.not299 = icmp eq i32 %i.hr, 0
  br i1 %.not299, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.critedge324, %.critedge322
  %i.hs = load i32, ptr @hf_mbim_bulk_ndp_signature, align 4
  %i.ht = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.az)
  %i.hu = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.bb, i32 noundef %i.hs, ptr noundef %0, i32 noundef %i.az, i32 noundef 4, i32 noundef %i.ht, ptr noundef nonnull @.str.2769, ptr noundef %i.bd) ; 0 uses
  %i.hv = load ptr, ptr %i.j, align 8
  call void @col_append_sep_str(ptr noundef %i.hv, i32 noundef 25, ptr noundef null, ptr noundef %i.bd)
  %i.hw = load ptr, ptr @eth_fcs_handle, align 8
  br label %bb.v

bb.u:                                             ; preds = %.critedge322, %.critedge324
  %i.hx = load i32, ptr @hf_mbim_bulk_ndp_signature, align 4
  %i.hy = call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.hx, ptr noundef %0, i32 noundef %i.az, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.hz = load ptr, ptr %i.j, align 8
  %i.ia = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.az)
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.hz, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.2772, i32 noundef %i.ia)
  %i.ib = load ptr, ptr @data_handle, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.p, %bb.r, %bb.t, %bb.u, %bb.s, %bb.o
  %.0268 = phi ptr [ %i.ib, %bb.u ], [ %i.hw, %bb.t ], [ %i.hp, %bb.s ], [ %i.hi, %bb.r ], [ %i.cr, %bb.o ], [ %spec.select, %bb.q ], [ %i.ee, %bb.p ] ; 2 uses
  %i.ic = add i32 %i.az, 4
  %i.id = load i32, ptr @hf_mbim_bulk_ndp_length, align 4
  %i.ie = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.bb, i32 noundef %i.id, ptr noundef %0, i32 noundef %i.ic, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.a)
  %i.if = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ig = and i32 %i.if, %i.aw
  %.not300 = icmp eq i32 %i.ig, 0
  br i1 %.not300, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %4 = select i1 %.not, i32 4, i32 8
  %i.ih = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ie, ptr noundef nonnull @ei_mbim_alignment_error, ptr noundef nonnull @.str.2773, i32 noundef %4) ; 0 uses
  br label %.sink.split

bb.x:                                             ; preds = %bb.v
  call void @proto_item_set_len(ptr noundef %.1396, i32 noundef %i.if)
  %i.ii = add i32 %i.az, 6                        ; 2 uses
  %i.ij = add i32 %i.az, 8                        ; 2 uses
  br i1 %.not, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ik = load i32, ptr @hf_mbim_bulk_ndp_next_ndp_index, align 4
  %i.il = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.bb, i32 noundef %i.ik, ptr noundef %0, i32 noundef %i.ii, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.b)
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.im = load i32, ptr @hf_mbim_bulk_ndp_reserved, align 4
  %i.in = call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.im, ptr noundef %0, i32 noundef %i.ii, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.io = load i32, ptr @hf_mbim_bulk_ndp_next_ndp_index_32, align 4
  %i.ip = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.bb, i32 noundef %i.io, ptr noundef %0, i32 noundef %i.ij, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.b)
  %i.iq = add i32 %i.az, 12
  %i.ir = load i32, ptr @hf_mbim_bulk_ndp_reserved2, align 4
  %i.is = call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.ir, ptr noundef %0, i32 noundef %i.iq, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.it = add i32 %i.az, 16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0274 = phi i32 [ %i.it, %bb.z ], [ %i.ij, %bb.y ]
  %.1267 = phi ptr [ %i.ip, %bb.z ], [ %i.il, %bb.y ] ; 2 uses
  %i.iu = load i32, ptr %i.b, align 4             ; 2 uses
  %i.iv = and i32 %i.iu, 3
  %.not301 = icmp eq i32 %i.iv, 0
  br i1 %.not301, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.iw = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %.1267, ptr noundef nonnull @ei_mbim_alignment_error, ptr noundef nonnull @.str.2756) ; 0 uses
  br label %.sink.split

bb.ac:                                            ; preds = %bb.aa
  %i.ix = icmp ugt i32 %i.iu, %i.ao
  br i1 %i.ix, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %bb.ac
  %.not303 = icmp eq ptr %.0268, null
  %umax = call i32 @llvm.umax.i32(i32 %.0271394, i32 1000)
  %i.iy = add i32 %umax, 1
  %i.iz = sub i32 %i.iy, %.0271394
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ja = call ptr @expert_add_info(ptr noundef %1, ptr noundef %.1267, ptr noundef nonnull @ei_mbim_out_of_bounds_index) ; 0 uses
  br label %.sink.split

bb.ae:                                            ; preds = %.preheader, %bb.am
  %.1275 = phi i32 [ %i.jj, %bb.am ], [ %.0274, %.preheader ] ; 4 uses
  %.0273 = phi i32 [ %i.kd, %bb.am ], [ 0, %.preheader ] ; 2 uses
  %.1272 = phi i32 [ %i.ke, %bb.am ], [ %.0271394, %.preheader ] ; 4 uses
  %i.jb = sub i32 %.1275, %i.az
  %i.jc = load i32, ptr %i.a, align 4
  %i.jd = icmp ult i32 %i.jb, %i.jc
  br i1 %i.jd, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %hf_mbim_bulk_ndp_datagram_index.val = load i32, ptr @hf_mbim_bulk_ndp_datagram_index, align 4
  %hf_mbim_bulk_ndp_datagram_index_32.val = load i32, ptr @hf_mbim_bulk_ndp_datagram_index_32, align 4
  %i.je = select i1 %.not, i32 %hf_mbim_bulk_ndp_datagram_index.val, i32 %hf_mbim_bulk_ndp_datagram_index_32.val
  %i.jf = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.bb, i32 noundef %i.je, ptr noundef %0, i32 noundef %.1275, i32 noundef %., i32 noundef -2147483648, ptr noundef nonnull %i.c)
  %i.jg = add i32 %.1275, %.
  %hf_mbim_bulk_ndp_datagram_length.val = load i32, ptr @hf_mbim_bulk_ndp_datagram_length, align 4
  %hf_mbim_bulk_ndp_datagram_length_32.val = load i32, ptr @hf_mbim_bulk_ndp_datagram_length_32, align 4
  %i.jh = select i1 %.not, i32 %hf_mbim_bulk_ndp_datagram_length.val, i32 %hf_mbim_bulk_ndp_datagram_length_32.val
  %i.ji = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.bb, i32 noundef %i.jh, ptr noundef %0, i32 noundef %i.jg, i32 noundef %., i32 noundef -2147483648, ptr noundef nonnull %i.d) ; 0 uses
  %i.jj = add i32 %.1275, %.513                   ; 3 uses
  %i.jk = load i32, ptr %i.b, align 4
  %i.jl = icmp ugt i32 %i.jk, %i.ao
  br i1 %i.jl, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.jm = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.jf, ptr noundef nonnull @ei_mbim_out_of_bounds_index) ; 0 uses
  br label %.sink.split

bb.ah:                                            ; preds = %bb.af
  %i.jn = load i32, ptr %i.c, align 4             ; 2 uses
  %i.jo = icmp ne i32 %i.jn, 0
  %i.jp = load i32, ptr %i.d, align 4             ; 2 uses
  %i.jq = icmp ne i32 %i.jp, 0
  %or.cond = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.jr = load i32, ptr @hf_mbim_bulk_ndp_datagram, align 4
  %i.js = call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.jr, ptr noundef %0, i32 noundef %i.jn, i32 noundef %i.jp, i32 noundef 0) ; 0 uses
  %i.jt = load i32, ptr %i.c, align 4
  %i.ju = load i32, ptr %i.d, align 4
  %i.jv = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.jt, i32 noundef %i.ju)
  br i1 %.not303, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not304 = icmp eq i32 %.1272, 0
  br i1 %.not304, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jw = load ptr, ptr %i.j, align 8
  call void @col_set_str(ptr noundef %i.jw, i32 noundef 35, ptr noundef nonnull @.str.2774)
  %i.jx = load ptr, ptr %i.j, align 8
  call void @col_set_fence(ptr noundef %i.jx, i32 noundef 35)
  %i.jy = load ptr, ptr %i.j, align 8
  call void @col_set_str(ptr noundef %i.jy, i32 noundef 25, ptr noundef nonnull @.str.2775)
  %i.jz = load ptr, ptr %i.j, align 8
  call void @col_set_fence(ptr noundef %i.jz, i32 noundef 25)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ka = call i32 @call_dissector(ptr noundef nonnull %.0268, ptr noundef %i.jv, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %i.kb = load ptr, ptr %i.j, align 8
  call void @col_set_fence(ptr noundef %i.kb, i32 noundef 35)
  %i.kc = load ptr, ptr %i.j, align 8
  call void @col_set_fence(ptr noundef %i.kc, i32 noundef 25)
  %i.kd = add nuw nsw i32 %.0273, 1               ; 2 uses
  %i.ke = add nuw nsw i32 %.1272, 1
  %exitcond = icmp eq i32 %i.kd, %i.iz
  br i1 %exitcond, label %bb.an, label %bb.ae, !llvm.loop !8

bb.an:                                            ; preds = %bb.am
  %i.kf = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef null, ptr noundef nonnull @ei_mbim_too_many_items, ptr noundef nonnull @.str.2776, i32 noundef 1000) ; 0 uses
  br label %.sink.split

bb.ao:                                            ; preds = %bb.ah
  %i.kg = sub i32 %i.jj, %i.az                    ; 2 uses
  %i.kh = load i32, ptr %i.a, align 4             ; 2 uses
  %.not302.not = icmp ugt i32 %i.kh, %i.kg
  br i1 %.not302.not, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.ki = sub nuw i32 %i.kh, %i.kg
  %i.kj = load i32, ptr @hf_mbim_bulk_ndp_padding, align 4
  %i.kk = call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.kj, ptr noundef %0, i32 noundef %i.jj, i32 noundef %i.ki, i32 noundef 0) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %bb.ao, %bb.ap
  %i.kl = load i32, ptr @hf_mbim_bulk_ndp_nb_datagrams, align 4
  %i.km = call ptr @proto_tree_add_uint(ptr noundef %i.bb, i32 noundef %i.kl, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %.0273) ; 3 uses
  %.not.i326 = icmp eq ptr %i.km, null
  br i1 %.not.i326, label %proto_item_set_generated.exit, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  %i.kn = getelementptr i8, ptr %i.km, i64 40
  %i.ko = load ptr, ptr %i.kn, align 8            ; 2 uses
  %.not5.i327 = icmp eq ptr %i.ko, null
  br i1 %.not5.i327, label %proto_item_set_generated.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kp = getelementptr i8, ptr %i.ko, i64 28     ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4
  %i.kr = or i32 %i.kq, 2
  store i32 %i.kr, ptr %i.kp, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %.loopexit, %bb.aq, %bb.ar
  %exitcond437 = icmp eq i32 %.0270395, 1000
  br i1 %exitcond437, label %bb.as, label %thread-pre-split, !llvm.loop !10

bb.as:                                            ; preds = %proto_item_set_generated.exit
  %i.ks = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef null, ptr noundef nonnull @ei_mbim_too_many_items, ptr noundef nonnull @.str.2777, i32 noundef 1000) ; 0 uses
  br label %.sink.split

._crit_edge:                                      ; preds = %thread-pre-split, %.preheader359
  %.0271.lcssa = phi i32 [ 0, %.preheader359 ], [ %.1272, %thread-pre-split ]
  %i.kt = load i32, ptr @hf_mbim_bulk_total_nb_datagrams, align 4
  %i.ku = call ptr @proto_tree_add_uint(ptr noundef %i.p, i32 noundef %i.kt, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %.0271.lcssa) ; 2 uses
  %.not.i328 = icmp eq ptr %i.ku, null
  br i1 %.not.i328, label %.sink.split, label %bb.at

bb.at:                                            ; preds = %._crit_edge
  %i.kv = getelementptr i8, ptr %i.ku, i64 40
  %i.kw = load ptr, ptr %i.kv, align 8            ; 2 uses
  %.not5.i329 = icmp eq ptr %i.kw, null
  br i1 %.not5.i329, label %.sink.split, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kx = getelementptr i8, ptr %i.kw, i64 28     ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4
  %i.kz = or i32 %i.ky, 2
  store i32 %i.kz, ptr %i.kx, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.au, %bb.at, %._crit_edge, %bb.k, %bb.m, %bb.w, %bb.ab, %bb.ad, %bb.ag, %bb.an, %bb.as
  %i.la = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.la, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
end_hunk_0
