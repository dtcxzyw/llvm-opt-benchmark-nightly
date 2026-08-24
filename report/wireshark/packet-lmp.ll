Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-lmp?download=true
inline.NumInlined: 8
inline.NumDeleted: 7
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_lmp:bb.a
  %i.xg = add i32 %.010671196, 16                 ; 2 uses
  %i.xh = call ptr @tvb_address_to_str(ptr noundef %i.xf, ptr noundef %0, i32 noundef 2, i32 noundef %i.xg)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ch, ptr noundef nonnull @.str.584, ptr noundef %i.xh)
  %i.xi = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 652), align 4
  %i.xj = call ptr @proto_tree_add_item(ptr noundef %i.cl, i32 noundef %i.xi, ptr noundef %0, i32 noundef %i.xg, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread1149

bb.dm:                                            ; preds = %bb.dh
  %i.xk = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 656), align 16
  %i.xl = load i32, ptr getelementptr inbounds nuw (i8, ptr @lmp_subtree, i64 56), align 8
  %i.xm = call ptr @proto_tree_add_bitmask(ptr noundef %i.cl, ptr noundef %0, i32 noundef %i.cy, i32 noundef %i.xk, i32 noundef %i.xl, ptr noundef nonnull @dissect_lmp.t_flags, i32 noundef 0) ; 0 uses
  %i.xn = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.cy) ; 2 uses
  %i.xo = load ptr, ptr %i.a, align 8
  %i.xp = and i32 %i.xn, 1
  %.not1083 = icmp eq i32 %i.xp, 0
  %i.xq = select i1 %.not1083, ptr @.str.522, ptr @.str.585
  %i.xr = and i32 %i.xn, 2
  %.not1084 = icmp eq i32 %i.xr, 0
  %i.xs = select i1 %.not1084, ptr @.str.522, ptr @.str.586
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.xo, ptr noundef nonnull @.str.574, ptr noundef nonnull %i.xq, ptr noundef nonnull %i.xs)
  %i.xt = add i32 %.010671196, 11                 ; 2 uses
  %i.xu = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 668), align 4
  %i.xv = load i32, ptr getelementptr inbounds nuw (i8, ptr @lmp_subtree, i64 60), align 4
  %i.xw = call ptr @proto_tree_add_bitmask(ptr noundef %i.cl, ptr noundef %0, i32 noundef %i.xt, i32 noundef %i.xu, i32 noundef %i.xv, ptr noundef nonnull @dissect_lmp.tcm_flags, i32 noundef 0) ; 0 uses
  %i.xx = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.xt)
  %i.xy = load ptr, ptr %i.a, align 8
  %i.xz = and i8 %i.xx, 1
  %.not1085 = icmp eq i8 %i.xz, 0
  %i.ya = select i1 %.not1085, ptr @.str.522, ptr @.str.587
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.xy, ptr noundef nonnull @.str.512, ptr noundef nonnull %i.ya)
  br label %.thread1149

bb.dn:                                            ; preds = %bb.dh
  %i.yb = add i32 %.010671196, 7                  ; 2 uses
  %i.yc = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 676), align 4
  %i.yd = load i32, ptr getelementptr inbounds nuw (i8, ptr @lmp_subtree, i64 64), align 16
  %i.ye = call ptr @proto_tree_add_bitmask(ptr noundef %i.cl, ptr noundef %0, i32 noundef %i.yb, i32 noundef %i.yc, i32 noundef %i.yd, ptr noundef nonnull @dissect_lmp.diversity_flags, i32 noundef 0) ; 0 uses
  %i.yf = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.yb)
  %i.yg = zext i8 %i.yf to i32                    ; 3 uses
  %i.yh = load ptr, ptr %i.a, align 8
  %i.yi = and i32 %i.yg, 1
  %.not1080 = icmp eq i32 %i.yi, 0
  %i.yj = select i1 %.not1080, ptr @.str.522, ptr @.str.588
  %i.yk = and i32 %i.yg, 2
  %.not1081 = icmp eq i32 %i.yk, 0
  %i.yl = select i1 %.not1081, ptr @.str.522, ptr @.str.589
  %i.ym = and i32 %i.yg, 4
  %.not1082 = icmp eq i32 %i.ym, 0
  %i.yn = select i1 %.not1082, ptr @.str.522, ptr @.str.590
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.yh, ptr noundef nonnull @.str.578, ptr noundef nonnull %i.yj, ptr noundef nonnull %i.yl, ptr noundef nonnull %i.yn)
  br label %.thread1149

bb.do:                                            ; preds = %bb.dh
  %i.yo = load i32, ptr @hf_lmp_data, align 4
  %i.yp = call ptr @proto_tree_add_item(ptr noundef %i.cl, i32 noundef %i.yo, ptr noundef %0, i32 noundef %i.cy, i32 noundef %i.cz, i32 noundef 0) ; 0 uses
  br label %.thread1149

bb.dp:                                            ; preds = %lmp_class_to_subtree.exit
  switch i8 %i.bq, label %bb.ds [
    i8 1, label %bb.dq
    i8 2, label %bb.dr
  ]

bb.dq:                                            ; preds = %bb.dp
  %i.yq = load ptr, ptr %i.g, align 8
  %i.yr = call ptr @tvb_address_to_str(ptr noundef %i.yq, ptr noundef %0, i32 noundef 2, i32 noundef %i.cy)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ch, ptr noundef nonnull @.str.512, ptr noundef %i.yr)
  %i.ys = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 692), align 4
  %i.yt = call ptr @proto_tree_add_item(ptr noundef %i.cl, i32 noundef %i.ys, ptr noundef %0, i32 noundef %i.cy, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread1149

bb.dr:                                            ; preds = %bb.dp
  %i.yu = load ptr, ptr %i.g, align 8
  %i.yv = call ptr @tvb_address_to_str(ptr noundef %i.yu, ptr noundef %0, i32 noundef 2, i32 noundef %i.cy)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ch, ptr noundef nonnull @.str.512, ptr noundef %i.yv)
  %i.yw = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 696), align 8
  %i.yx = call ptr @proto_tree_add_item(ptr noundef %i.cl, i32 noundef %i.yw, ptr noundef %0, i32 noundef %i.cy, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread1149

bb.ds:                                            ; preds = %bb.dp
  %i.yy = load i32, ptr @hf_lmp_data, align 4
  %i.yz = call ptr @proto_tree_add_item(ptr noundef %i.cl, i32 noundef %i.yy, ptr noundef %0, i32 noundef %i.cy, i32 noundef %i.cz, i32 noundef 0) ; 0 uses
  br label %.thread1149

bb.dt:                                            ; preds = %lmp_class_to_subtree.exit
  %cond = icmp eq i8 %i.bq, 1
  br i1 %cond, label %bb.du, label %bb.ed

bb.du:                                            ; preds = %bb.dt
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ch, ptr noundef nonnull @.str.591)
  %i.za = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 700), align 4
  %i.zb = call ptr @proto_tree_add_item(ptr noundef %i.cl, i32 noundef %i.za, ptr noundef %0, i32 noundef %i.cy, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.zc = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 704), align 16
  %i.zd = add i32 %.010671196, 8
  %i.ze = call ptr @proto_tree_add_item(ptr noundef %i.cl, i32 noundef %i.zc, ptr noundef %0, i32 noundef %i.zd, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.zf = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 708), align 4
  %i.zg = add i32 %.010671196, 12
  %i.zh = call ptr @proto_tree_add_item(ptr noundef %i.cl, i32 noundef %i.zf, ptr noundef %0, i32 noundef %i.zg, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.zi = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 712), align 8
  %i.zj = add i32 %.010671196, 16
  %i.zk = call ptr @proto_tree_add_item(ptr noundef %i.cl, i32 noundef %i.zi, ptr noundef %0, i32 noundef %i.zj, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.zl = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 716), align 4
  %i.zm = add i32 %.010671196, 20
  %i.zn = call ptr @proto_tree_add_item(ptr noundef %i.cl, i32 noundef %i.zl, ptr noundef %0, i32 noundef %i.zm, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.zo = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 720), align 16
  %i.zp = add i32 %.010671196, 24
  %i.zq = call ptr @proto_tree_add_item(ptr noundef %i.cl, i32 noundef %i.zo, ptr noundef %0, i32 noundef %i.zp, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.zr = icmp ugt i16 %i.bj, 28
  br i1 %i.zr, label %.lr.ph1179, label %.thread1149

.lr.ph1179:                                       ; preds = %bb.du, %bb.ec
  %.71178 = phi i32 [ %i.adb, %bb.ec ], [ 24, %bb.du ] ; 3 uses
  %i.zs = add i32 %.71178, %i.cy                  ; 15 uses
  %i.zt = add i32 %i.zs, 1                        ; 6 uses
  %i.zu = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.zt) ; 4 uses
  %i.zv = zext i8 %i.zu to i32                    ; 4 uses
  %i.zw = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 724), align 4
  %i.zx = call ptr @proto_tree_add_item(ptr noundef %i.cl, i32 noundef %i.zw, ptr noundef %0, i32 noundef %i.zs, i32 noundef %i.zv, i32 noundef 0) ; 2 uses
  store ptr %i.zx, ptr %i.a, align 8
  %i.zy = load i32, ptr getelementptr inbounds nuw (i8, ptr @lmp_subtree, i64 68), align 4
  %i.zz = call ptr @proto_item_add_subtree(ptr noundef %i.zx, i32 noundef %i.zy) ; 12 uses
  %i.aaa = load i32, ptr @hf_lmp_subobject_type, align 4
  %i.aab = call ptr @proto_tree_add_item(ptr noundef %i.zz, i32 noundef %i.aaa, ptr noundef %0, i32 noundef %i.zs, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aac = icmp eq i8 %i.zu, 0
  %i.aad = add nuw nsw i32 %.71178, %i.zv
  %i.aae = icmp sgt i32 %i.aad, %i.cz
  %or.cond1123 = select i1 %i.aac, i1 true, i1 %i.aae
  %i.aaf = load i32, ptr @hf_lmp_subobject_length, align 4 ; 2 uses
  br i1 %or.cond1123, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %.lr.ph1179
  %i.aag = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.cl, i32 noundef %i.aaf, ptr noundef %0, i32 noundef %i.zt, i32 noundef 1, i32 noundef %i.zv, ptr noundef nonnull @.str.592, i32 noundef %i.zv) ; 0 uses
  br label %.thread1149

bb.dw:                                            ; preds = %.lr.ph1179
  %i.aah = call ptr @proto_tree_add_item(ptr noundef %i.zz, i32 noundef %i.aaf, ptr noundef %0, i32 noundef %i.zt, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aai = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.zs)
  switch i8 %i.aai, label %bb.eb [
    i8 -6, label %bb.dx
    i8 -5, label %bb.dy
    i8 -4, label %bb.dz
  ]

bb.dx:                                            ; preds = %bb.dw
  %i.aaj = load ptr, ptr %i.a, align 8
  %i.aak = load ptr, ptr %i.g, align 8
  %i.aal = add i32 %i.zs, 4                       ; 2 uses
  %i.aam = call ptr @tvb_address_to_str(ptr noundef %i.aak, ptr noundef %0, i32 noundef 2, i32 noundef %i.aal)
  %i.aan = load ptr, ptr %i.g, align 8
  %i.aao = add i32 %i.zs, 8                       ; 2 uses
  %i.aap = call ptr @tvb_address_to_str(ptr noundef %i.aan, ptr noundef %0, i32 noundef 2, i32 noundef %i.aao)
  %i.aaq = load ptr, ptr %i.g, align 8
  %i.aar = add i32 %i.zs, 12                      ; 2 uses
  %i.aas = call ptr @tvb_address_to_str(ptr noundef %i.aaq, ptr noundef %0, i32 noundef 2, i32 noundef %i.aar)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.aaj, ptr noundef nonnull @.str.593, ptr noundef %i.aam, ptr noundef %i.aap, ptr noundef %i.aas)
  %i.aat = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 728), align 8
  %i.aau = call ptr @proto_tree_add_item(ptr noundef %i.zz, i32 noundef %i.aat, ptr noundef %0, i32 noundef %i.aal, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aav = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 732), align 4
  %i.aaw = call ptr @proto_tree_add_item(ptr noundef %i.zz, i32 noundef %i.aav, ptr noundef %0, i32 noundef %i.aao, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aax = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 736), align 16
  %i.aay = call ptr @proto_tree_add_item(ptr noundef %i.zz, i32 noundef %i.aax, ptr noundef %0, i32 noundef %i.aar, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.dy:                                            ; preds = %bb.dw
  %i.aaz = load ptr, ptr %i.a, align 8
  %i.aba = load ptr, ptr %i.g, align 8
  %i.abb = add i32 %i.zs, 4                       ; 2 uses
  %i.abc = call ptr @tvb_address_to_str(ptr noundef %i.aba, ptr noundef %0, i32 noundef 2, i32 noundef %i.abb)
  %i.abd = load ptr, ptr %i.g, align 8
  %i.abe = add i32 %i.zs, 8                       ; 2 uses
  %i.abf = call ptr @tvb_address_to_str(ptr noundef %i.abd, ptr noundef %0, i32 noundef 2, i32 noundef %i.abe)
  %i.abg = load ptr, ptr %i.g, align 8
  %i.abh = add i32 %i.zs, 12                      ; 2 uses
  %i.abi = call ptr @tvb_address_to_str(ptr noundef %i.abg, ptr noundef %0, i32 noundef 2, i32 noundef %i.abh)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.aaz, ptr noundef nonnull @.str.594, ptr noundef %i.abc, ptr noundef %i.abf, ptr noundef %i.abi)
  %i.abj = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 740), align 4
  %i.abk = call ptr @proto_tree_add_item(ptr noundef %i.zz, i32 noundef %i.abj, ptr noundef %0, i32 noundef %i.abb, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.abl = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 744), align 8
  %i.abm = call ptr @proto_tree_add_item(ptr noundef %i.zz, i32 noundef %i.abl, ptr noundef %0, i32 noundef %i.abe, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.abn = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 748), align 4
  %i.abo = call ptr @proto_tree_add_item(ptr noundef %i.zz, i32 noundef %i.abn, ptr noundef %0, i32 noundef %i.abh, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.dz:                                            ; preds = %bb.dw
  %i.abp = load ptr, ptr %i.a, align 8
  %i.abq = load ptr, ptr %i.g, align 8
  %i.abr = add i32 %i.zs, 4                       ; 2 uses
  %i.abs = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.abr)
  %i.abt = zext i8 %i.abs to i32
  %i.abu = call ptr @rval_to_str_wmem(ptr noundef %i.abq, i32 noundef %i.abt, ptr noundef nonnull @gmpls_switching_type_rvals, ptr noundef nonnull @.str.533)
  %i.abv = load ptr, ptr %i.g, align 8
  %i.abw = add i32 %i.zs, 5                       ; 2 uses
  %i.abx = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.abw)
  %i.aby = zext i8 %i.abx to i32
  %i.abz = call ptr @rval_to_str_wmem(ptr noundef %i.abv, i32 noundef %i.aby, ptr noundef nonnull @gmpls_lsp_enc_rvals, ptr noundef nonnull @.str.533)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.abp, ptr noundef nonnull @.str.595, ptr noundef %i.abu, ptr noundef %i.abz)
  %i.aca = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 752), align 16
  %i.acb = call ptr @proto_tree_add_item(ptr noundef %i.zz, i32 noundef %i.aca, ptr noundef %0, i32 noundef %i.abr, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acc = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_lmp_filter, i64 756), align 4
  %i.acd = call ptr @proto_tree_add_item(ptr noundef %i.zz, i32 noundef %i.acc, ptr noundef %0, i32 noundef %i.abw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ace = icmp ugt i8 %i.zu, 11
  br i1 %i.ace, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.dz
  %.lhs.trunc = add i8 %i.zu, -8
  %5 = lshr i8 %.lhs.trunc, 2
  %.zext = zext nneg i8 %5 to i32
  %i.acf = add i32 %i.zs, 8
  %i.acg = add i32 %i.zs, 9
  br label %bb.ea

bb.ea:                                            ; preds = %.lr.ph, %bb.ea
  %.110661177 = phi i32 [ 0, %.lr.ph ], [ %i.acs, %bb.ea ] ; 2 uses
  %i.ach = load i32, ptr @hf_lmp_free_timeslots, align 4
  %i.aci = shl nuw nsw i32 %.110661177, 2         ; 2 uses
  %i.acj = add i32 %i.acf, %i.aci                 ; 2 uses
  %i.ack = add i32 %i.acg, %i.aci                 ; 2 uses
  %i.acl = call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef %i.ack)
  %i.acm = load ptr, ptr %i.g, align 8
  %i.acn = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.acj)
  %i.aco = zext i8 %i.acn to i32
  %i.acp = call ptr @val_to_str_ext(ptr noundef %i.acm, i32 noundef %i.aco, ptr noundef nonnull @gmpls_sonet_signal_type_str_ext, ptr noundef nonnull @.str.597)
  %i.acq = call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef %i.ack)
  %i.acr = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.zz, i32 noundef %i.ach, ptr noundef %0, i32 noundef %i.acj, i32 noundef 4, i32 noundef %i.acl, ptr noundef nonnull @.str.596, ptr noundef %i.acp, i32 noundef %i.acq) ; 0 uses
  %i.acs = add nuw nsw i32 %.110661177, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.acs, %.zext
  br i1 %exitcond.not, label %.loopexit, label %bb.ea, !llvm.loop !11

bb.eb:                                            ; preds = %bb.dw
  %i.act = load i32, ptr @hf_lmp_data, align 4
  %i.acu = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.zt)
  %i.acv = zext i8 %i.acu to i32
  %i.acw = call ptr @proto_tree_add_item(ptr noundef %i.zz, i32 noundef %i.act, ptr noundef %0, i32 noundef %i.zs, i32 noundef %i.acv, i32 noundef 0) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ea, %bb.dz, %bb.eb, %bb.dy, %bb.dx
  %i.acx = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.zt)
  %i.acy = icmp eq i8 %i.acx, 0
  br i1 %i.acy, label %.thread1149, label %bb.ec

bb.ec:                                            ; preds = %.loopexit
  %i.acz = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.zt)
  %i.ada = zext i8 %i.acz to i32
  %i.adb = add nuw nsw i32 %.71178, %i.ada        ; 2 uses
  %i.adc = icmp slt i32 %i.adb, %i.cz
  br i1 %i.adc, label %.lr.ph1179, label %.thread1149, !llvm.loop !12

bb.ed:                                            ; preds = %bb.dt
  %i.add = load i32, ptr @hf_lmp_data, align 4
  %i.ade = call ptr @proto_tree_add_item(ptr noundef %i.cl, i32 noundef %i.add, ptr noundef %0, i32 noundef %i.cy, i32 noundef %i.cz, i32 noundef 0) ; 0 uses
  br label %.thread1149

bb.ee:                                            ; preds = %lmp_class_to_subtree.exit
  %i.adf = load i32, ptr @hf_lmp_data, align 4
  %i.adg = call ptr @proto_tree_add_item(ptr noundef %i.cl, i32 noundef %i.adf, ptr noundef %0, i32 noundef %i.cy, i32 noundef %i.cz, i32 noundef 0) ; 0 uses
  br label %.thread1149

.thread1149:                                      ; preds = %.loopexit, %bb.ec, %.lr.ph1182.split.us1186, %.lr.ph1182.split.us1183, %.lr.ph1182.split.us, %bb.cr, %bb.cm, %bb.ca, %bb.bz, %bb.cb, %bb.du, %.preheader, %.lr.ph1182.split, %switch.lookup, %bb.bv, %lmp_class_to_subtree.exit, %bb.ee, %bb.ad, %bb.ac, %bb.ab, %bb.ah, %bb.ag, %bb.af, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.av, %bb.au, %bb.at, %bb.ay, %bb.ax, %bb.bb, %bb.ba, %bb.be, %bb.bd, %bb.bh, %bb.bg, %bb.bk, %bb.bj, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.da, %bb.db, %bb.dd, %bb.dc, %bb.dg, %bb.df, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.di, %bb.ds, %bb.dr, %bb.dq, %bb.dv, %bb.ed
  %i.adh = add i32 %.010671196, %i.bk
  %i.adi = add nuw nsw i32 %.010591198, %i.bk     ; 2 uses
  %i.adj = icmp samesign ult i32 %i.adi, %i.l
  br i1 %i.adj, label %.lr.ph1199, label %.loopexit1171

.loopexit1171:                                    ; preds = %.thread1149, %bb.o, %.thread1157
  %i.adk = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.ef

bb.ef:                                            ; preds = %.thread1152, %.loopexit1171, %bb.i
  %.2 = phi i32 [ %i.dr, %.thread1152 ], [ %i.adk, %.loopexit1171 ], [ %i.aq, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_lmp() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @lmp_handle, align 8
  tail call void @dissector_add_uint_with_preference(ptr noundef nonnull @.str.428, i32 noundef 701, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_with_preference(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_checksum(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @in_cksum(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_address_to_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare float @tvb_get_ntohieee_float(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_float_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @rval_to_str_wmem(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_format_text(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntoh24(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_obsolete_preference(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
end_hunk_0
