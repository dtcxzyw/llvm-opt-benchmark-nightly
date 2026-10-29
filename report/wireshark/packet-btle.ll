Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-btle?download=true
inline.NumInlined: 118
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_btle_adv:bb.a
  store i32 %i.ya, ptr %i.xz, align 4
  store i32 1, ptr %i.x, align 16
  store ptr %i.xl, ptr %i.y, align 8
  %i.yb = load ptr, ptr @connection_parameter_info_tree, align 8
  call void @wmem_tree_insert32_array(ptr noundef %i.yb, ptr noundef nonnull %7, ptr noundef %i.xz)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bu
  %i.yc = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %.5697, i32 noundef -2147483648)
  %i.yd = load i32, ptr @hf_extended_advertising_sync_info_offset, align 4
  %i.ye = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.xd, i32 noundef %i.yd, ptr noundef %0, i32 noundef %.5697, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.k) ; 2 uses
  %i.yf = load i32, ptr @hf_extended_advertising_sync_info_offset_units, align 4
  %i.yg = call ptr @proto_tree_add_item(ptr noundef %i.xd, i32 noundef %i.yf, ptr noundef %0, i32 noundef %.5697, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.yh = load i32, ptr @hf_extended_advertising_sync_info_offset_adjust, align 4
  %i.yi = call ptr @proto_tree_add_item(ptr noundef %i.xd, i32 noundef %i.yh, ptr noundef %0, i32 noundef %.5697, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.yj = load i32, ptr @hf_extended_advertising_sync_info_reserved, align 4
  %i.yk = call ptr @proto_tree_add_item(ptr noundef %i.xd, i32 noundef %i.yj, ptr noundef %0, i32 noundef %.5697, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.yl = load i32, ptr %i.k, align 4             ; 2 uses
  %.not736 = icmp eq i32 %i.yl, 0
  br i1 %.not736, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ym = zext i16 %i.yc to i32                   ; 2 uses
  %i.yn = and i32 %i.ym, 8192
  %.not737 = icmp eq i32 %i.yn, 0
  %i.yo = select i1 %.not737, i32 30, i32 300
  %i.yp = mul i32 %i.yl, %i.yo
  %i.yq = and i32 %i.ym, 16384
  %.not738 = icmp eq i32 %i.yq, 0
  %i.yr = select i1 %.not738, i32 0, i32 2457600
  %i.ys = add i32 %i.yp, %i.yr
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ye, ptr noundef @.str.978, i32 noundef %i.ys)
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ye, ptr noundef @.str.979)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.yt = add i32 %.5697, 2
  %i.yu = load i32, ptr @hf_extended_advertising_sync_info_interval, align 4
  %i.yv = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.xd, i32 noundef %i.yu, ptr noundef %0, i32 noundef %i.yt, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.l)
  %i.yw = load i32, ptr %i.l, align 4
  %i.yx = uitofp i32 %i.yw to double
  %i.yy = fmul nnan double %i.yx, 1.250000e+00
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.yv, ptr noundef @.str.975, double noundef %i.yy)
  %i.yz = add i32 %.5697, 4                       ; 3 uses
  %i.za = load i32, ptr @hf_extended_advertising_sync_info_channel_map, align 4
  %i.zb = call ptr @proto_tree_add_item(ptr noundef %i.xd, i32 noundef %i.za, ptr noundef %0, i32 noundef %i.yz, i32 noundef 5, i32 noundef 0)
  %i.zc = load i32, ptr @ett_channel_map, align 4
  %i.zd = call ptr @proto_item_add_subtree(ptr noundef %i.zb, i32 noundef %i.zc)
  %i.ze = load ptr, ptr @btcommon_le_channel_map_handle, align 8
  %i.zf = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.yz, i32 noundef 5)
  %i.zg = call i32 @call_dissector_with_data(ptr noundef %i.ze, ptr noundef %i.zf, ptr noundef %1, ptr noundef %i.zd, ptr noundef nonnull %i.m) ; 0 uses
  %i.zh = load i32, ptr @hf_extended_advertising_sync_info_sleep_clock_accuracy, align 4
  %i.zi = load i32, ptr %i.m, align 4
  %i.zj = add i32 %i.zi, %i.yz
  %i.zk = call ptr @proto_tree_add_item(ptr noundef %i.xd, i32 noundef %i.zh, ptr noundef %0, i32 noundef %i.zj, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.zl = add i32 %.5697, 9
  %i.zm = load i32, ptr @hf_extended_advertising_sync_info_access_address, align 4
  %i.zn = call ptr @proto_tree_add_item(ptr noundef %i.xd, i32 noundef %i.zm, ptr noundef %0, i32 noundef %i.zl, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.zo = add i32 %.5697, 13
  %i.zp = load i32, ptr @hf_extended_advertising_sync_info_crc_init, align 4
  %i.zq = call ptr @proto_tree_add_item(ptr noundef %i.xd, i32 noundef %i.zp, ptr noundef %0, i32 noundef %i.zo, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.zr = add i32 %.5697, 16
  %i.zs = load i32, ptr @hf_extended_advertising_sync_info_event_counter, align 4
  %i.zt = call ptr @proto_tree_add_item(ptr noundef %i.xd, i32 noundef %i.zs, ptr noundef %0, i32 noundef %i.zr, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.zu = add i32 %.5697, 18
  %i.zv = add nsw i8 %.5, -18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bt
  %.6698 = phi i32 [ %i.zu, %bb.cb ], [ %.5697, %bb.bt ] ; 3 uses
  %.6 = phi i8 [ %i.zv, %bb.cb ], [ %.5, %bb.bt ] ; 2 uses
  %i.zw = and i32 %.0691795, 64
  %.not739 = icmp eq i32 %i.zw, 0
  br i1 %.not739, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.zx = load i32, ptr @hf_extended_advertising_tx_power, align 4
  %i.zy = call ptr @proto_tree_add_item(ptr noundef %i.su, i32 noundef %i.zx, ptr noundef %0, i32 noundef %.6698, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.zz = add i32 %.6698, 1
  %i.aaa = add nsw i8 %.6, -1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.7699 = phi i32 [ %i.zz, %bb.cd ], [ %.6698, %bb.cc ] ; 4 uses
  %.7 = phi i8 [ %i.aaa, %bb.cd ], [ %.6, %bb.cc ] ; 2 uses
  %.not740 = icmp eq i8 %.7, 0
  br i1 %.not740, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.aab = zext i8 %.7 to i32                     ; 3 uses
  %i.aac = load i32, ptr @hf_extended_advertising_header_acad, align 4
  %i.aad = call ptr @proto_tree_add_item(ptr noundef %i.su, i32 noundef %i.aac, ptr noundef %0, i32 noundef %.7699, i32 noundef %i.aab, i32 noundef 0)
  %i.aae = load i32, ptr @ett_extended_advertising_acad, align 4
  %i.aaf = call ptr @proto_item_add_subtree(ptr noundef %i.aad, i32 noundef %i.aae)
  %i.aag = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.7699, i32 noundef %i.aab)
  %i.aah = load i32, ptr %i.b, align 4
  %i.aai = load i32, ptr %i.a, align 4
  %i.aaj = getelementptr i8, ptr %1, i64 20
  %i.aak = load i32, ptr %i.aaj, align 4
  call fastcc void @dissect_ad_eir(ptr noundef %i.aag, i32 noundef %i.aah, i32 noundef %i.aai, i32 noundef %i.aak, ptr noundef %i.p, ptr noundef %1, ptr noundef %i.aaf)
  %i.aal = add i32 %.7699, %i.aab
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.8 = phi i32 [ %i.aal, %bb.cf ], [ %.7699, %bb.ce ] ; 17 uses
  %i.aam = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.8)
  %i.aan = icmp ugt i32 %i.aam, 3
  br i1 %i.aan, label %bb.ch, label %bb.dm

bb.ch:                                            ; preds = %bb.cg
  %.not741 = icmp eq ptr %3, null                 ; 2 uses
  br i1 %.not741, label %.critedge, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  switch i8 %i.az, label %.critedge [
    i8 9, label %bb.cj
    i8 7, label %bb.cj
  ]

bb.cj:                                            ; preds = %bb.ci, %bb.ci
  %i.aao = getelementptr i8, ptr %3, i64 4
  %i.aap = load i8, ptr %i.aao, align 4
  %i.aaq = and i8 %i.aap, 64
  %.not742 = icmp eq i8 %i.aaq, 0
  br i1 %.not742, label %.critedge, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.aar = getelementptr i8, ptr %3, i64 6
  %i.aas = load i8, ptr %i.aar, align 2
  switch i8 %i.aas, label %.critedge [
    i8 0, label %bb.cl
    i8 2, label %bb.cl
    i8 3, label %bb.cl
    i8 1, label %bb.cq
  ]

bb.cl:                                            ; preds = %bb.ck, %bb.ck, %bb.ck
  br i1 %.not732.not, label %bb.cm, label %.critedge

bb.cm:                                            ; preds = %bb.cl
  %i.aat = getelementptr i8, ptr %1, i64 80
  %i.aau = load ptr, ptr %i.aat, align 8
  %i.aav = getelementptr i8, ptr %i.aau, i64 53
  %i.aaw = load i16, ptr %i.aav, align 1
  %i.aax = and i16 %i.aaw, 8
  %i.aay = icmp eq i16 %i.aax, 0
  %or.cond4 = and i1 %.not731, %i.aay
  br i1 %or.cond4, label %bb.cn, label %bb.cx

bb.cn:                                            ; preds = %bb.cm
  %i.aaz = call ptr @wmem_file_scope()
  %i.aba = call noalias dereferenceable_or_null(32) ptr @wmem_alloc0(ptr noundef %i.aaz, i64 noundef 32) #12 ; 6 uses
  %i.abb = getelementptr i8, ptr %1, i64 20
  %i.abc = load i32, ptr %i.abb, align 4
  %i.abd = getelementptr i8, ptr %i.aba, i64 4    ; 2 uses
  store i32 %i.abc, ptr %i.abd, align 4
  br i1 %.not727798, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.abe = call ptr @wmem_file_scope()
  %i.abf = getelementptr i8, ptr %i.aba, i64 8
  %i.abg = getelementptr i8, ptr %1, i64 208
  call fastcc void @copy_address_wmem(ptr noundef %i.abe, ptr noundef %i.abf, ptr noundef %i.abg)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  store i32 1, ptr %8, align 16
  %i.abh = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.b, ptr %i.abh, align 8
  %i.abi = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 1, ptr %i.abi, align 16
  %i.abj = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.a, ptr %i.abj, align 8
  %i.abk = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 1, ptr %i.abk, align 16
  %i.abl = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.h, ptr %i.abl, align 8
  %i.abm = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 0, ptr %i.abm, align 16
  %i.abn = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr null, ptr %i.abn, align 8
  %i.abo = load ptr, ptr @adi_to_first_frame_tree, align 8
  call void @wmem_tree_insert32_array(ptr noundef %i.abo, ptr noundef nonnull %8, ptr noundef %i.aba)
  %i.abp = load i32, ptr %i.abd, align 4
  %i.abq = load i32, ptr %i.aba, align 8
  %i.abr = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.8)
  %i.abs = add i32 %i.abr, -3
  %i.abt = call ptr @fragment_add_seq(ptr noundef @btle_ea_host_advertising_data_reassembly_table, ptr noundef %0, i32 noundef %.8, ptr noundef %1, i32 noundef %i.abp, ptr noundef null, i32 noundef %i.abq, i32 noundef %i.abs, i1 noundef zeroext true, i32 noundef 0) ; 0 uses
  %i.abu = load i32, ptr %i.aba, align 8
  %i.abv = add i32 %i.abu, 1
  store i32 %i.abv, ptr %i.aba, align 8
  br label %bb.cx

bb.cq:                                            ; preds = %bb.ck
  %i.abw = getelementptr i8, ptr %1, i64 80
  %i.abx = load ptr, ptr %i.abw, align 8
  %i.aby = getelementptr i8, ptr %i.abx, i64 53
  %i.abz = load i16, ptr %i.aby, align 1
  %i.aca = and i16 %i.abz, 8
  %i.acb = icmp eq i16 %i.aca, 0
  %or.cond6 = and i1 %.not731, %i.acb
  br i1 %or.cond6, label %bb.cr, label %bb.cx

bb.cr:                                            ; preds = %bb.cq
  store i32 1, ptr %8, align 16
  %i.acc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.b, ptr %i.acc, align 8
  %i.acd = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 1, ptr %i.acd, align 16
  %i.ace = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.a, ptr %i.ace, align 8
  %i.acf = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 1, ptr %i.acf, align 16
  %i.acg = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.h, ptr %i.acg, align 8
  %i.ach = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 0, ptr %i.ach, align 16
  %i.aci = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr null, ptr %i.aci, align 8
  %i.acj = load ptr, ptr @adi_to_first_frame_tree, align 8
  %i.ack = call ptr @wmem_tree_lookup32_array(ptr noundef %i.acj, ptr noundef nonnull %8) ; 9 uses
  %.not743 = icmp eq ptr %i.ack, null
  br i1 %.not743, label %bb.cx, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  br i1 %.not727798, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.acl = getelementptr i8, ptr %i.ack, i64 12
  %i.acm = load i32, ptr %i.acl, align 4          ; 2 uses
  %i.acn = icmp sgt i32 %i.acm, 0
  br i1 %i.acn, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.aco = getelementptr i8, ptr %i.ack, i64 8
  %i.acp = getelementptr i8, ptr %1, i64 208
  %i.acq = load i32, ptr %i.aco, align 8
  %i.acr = getelementptr i8, ptr %i.ack, i64 16
  %i.acs = load ptr, ptr %i.acr, align 8
  store i32 %i.acq, ptr %i.acp, align 8
  %i.act = getelementptr i8, ptr %1, i64 212
  store i32 %i.acm, ptr %i.act, align 4
  %i.acu = getelementptr i8, ptr %1, i64 216
  store ptr %i.acs, ptr %i.acu, align 8
  %i.acv = getelementptr i8, ptr %1, i64 224
  store ptr null, ptr %i.acv, align 8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs
  %i.acw = getelementptr i8, ptr %i.ack, i64 4
  %i.acx = load i32, ptr %i.acw, align 4
  %i.acy = load i32, ptr %i.ack, align 8
  %i.acz = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.8)
  %i.ada = add i32 %i.acz, -3
  %i.adb = call ptr @fragment_add_seq(ptr noundef @btle_ea_host_advertising_data_reassembly_table, ptr noundef %0, i32 noundef %.8, ptr noundef %1, i32 noundef %i.acx, ptr noundef null, i32 noundef %i.acy, i32 noundef %i.ada, i1 noundef zeroext %.not732.not, i32 noundef 0) ; 0 uses
  %i.adc = load i32, ptr %i.ack, align 8
  %i.add = add i32 %i.adc, 1
  store i32 %i.add, ptr %i.ack, align 8
  br i1 %.not732.not, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ade = call ptr @wmem_file_scope()
  %i.adf = load i32, ptr @proto_btle, align 4
  %i.adg = getelementptr i8, ptr %1, i64 384
  %i.adh = load i8, ptr %i.adg, align 8
  %i.adi = zext i8 %i.adh to i32
  %i.adj = shl nuw nsw i32 %i.adi, 8
  call void @p_add_proto_data(ptr noundef %i.ade, ptr noundef %1, i32 noundef %i.adf, i32 noundef %i.adj, ptr noundef nonnull %i.ack)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cp, %bb.cm, %bb.cr, %bb.cw, %bb.cv, %bb.cq
  %i.adk = getelementptr i8, ptr %1, i64 80
  %i.adl = load ptr, ptr %i.adk, align 8
  %i.adm = getelementptr i8, ptr %i.adl, i64 53
  %i.adn = load i16, ptr %i.adm, align 1
  %i.ado = and i16 %i.adn, 8
  %.not744 = icmp eq i16 %i.ado, 0
  br i1 %.not744, label %.critedge, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.adp = load i32, ptr @hf_extended_advertising_had_fragment, align 4
  %i.adq = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.8)
  %i.adr = add i32 %i.adq, -3
  %i.ads = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.adp, ptr noundef %0, i32 noundef %.8, i32 noundef %i.adr, i32 noundef 0) ; 0 uses
  br i1 %.not732.not, label %bb.df, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.adt = call ptr @wmem_file_scope()
  %i.adu = load i32, ptr @proto_btle, align 4
  %i.adv = getelementptr i8, ptr %1, i64 384
  %i.adw = load i8, ptr %i.adv, align 8
  %i.adx = zext i8 %i.adw to i32
  %i.ady = shl nuw nsw i32 %i.adx, 8
  %i.adz = call ptr @p_get_proto_data(ptr noundef %i.adt, ptr noundef %1, i32 noundef %i.adu, i32 noundef %i.ady) ; 5 uses
  %.not745 = icmp eq ptr %i.adz, null
  br i1 %.not745, label %bb.dg, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aea = load ptr, ptr %i.da, align 8
  call void @col_append_str(ptr noundef %i.aea, i32 noundef 25, ptr noundef @.str.980)
  br i1 %.not727798, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.aeb = getelementptr i8, ptr %i.adz, i64 12
  %i.aec = load i32, ptr %i.aeb, align 4          ; 2 uses
  %i.aed = icmp sgt i32 %i.aec, 0
  br i1 %i.aed, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.aee = getelementptr i8, ptr %i.adz, i64 8
  %i.aef = getelementptr i8, ptr %1, i64 208
  %i.aeg = load i32, ptr %i.aee, align 8
  %i.aeh = getelementptr i8, ptr %i.adz, i64 16
  %i.aei = load ptr, ptr %i.aeh, align 8
  store i32 %i.aeg, ptr %i.aef, align 8
  %i.aej = getelementptr i8, ptr %1, i64 212
  store i32 %i.aec, ptr %i.aej, align 4
  %i.aek = getelementptr i8, ptr %1, i64 216
  store ptr %i.aei, ptr %i.aek, align 8
  %i.ael = getelementptr i8, ptr %1, i64 224
  store ptr null, ptr %i.ael, align 8
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da
  %i.aem = getelementptr i8, ptr %i.adz, i64 4
  %i.aen = load i32, ptr %i.aem, align 4
  %i.aeo = call ptr @fragment_get(ptr noundef @btle_ea_host_advertising_data_reassembly_table, ptr noundef %1, i32 noundef %i.aen, ptr noundef null)
  %i.aep = call ptr @process_reassembled_data(ptr noundef %0, i32 noundef %.8, ptr noundef %1, ptr noundef @.str.981, ptr noundef %i.aeo, ptr noundef @btle_ea_host_advertising_data_frag_items, ptr noundef null, ptr noundef %2) ; 2 uses
  %.not746 = icmp eq ptr %i.aep, null
  br i1 %.not746, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.aeq = load i32, ptr %i.b, align 4
  %i.aer = load i32, ptr %i.a, align 4
  %i.aes = getelementptr i8, ptr %1, i64 20
  %i.aet = load i32, ptr %i.aes, align 4
  call fastcc void @dissect_ad_eir(ptr noundef nonnull %i.aep, i32 noundef %i.aeq, i32 noundef %i.aer, i32 noundef %i.aet, ptr noundef %i.p, ptr noundef %1, ptr noundef %2)
  br label %bb.dg

bb.df:                                            ; preds = %bb.cy
  %i.aeu = load ptr, ptr %i.da, align 8
  call void @col_append_str(ptr noundef %i.aeu, i32 noundef 25, ptr noundef @.str.982)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.cz, %bb.de, %bb.dd, %bb.df
  %i.aev = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.8)
  %i.aew = add i32 %.8, -3
  %i.aex = add i32 %i.aew, %i.aev
  br label %.critedge

.critedge:                                        ; preds = %bb.dg, %bb.cx, %bb.cl, %bb.ck, %bb.ci, %bb.cj, %bb.ch
  %.10 = phi i32 [ %.8, %bb.ch ], [ %.8, %bb.cj ], [ %.8, %bb.ci ], [ %i.aex, %bb.dg ], [ %.8, %bb.cx ], [ %.8, %bb.cl ], [ %.8, %bb.ck ] ; 8 uses
  %i.aey = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.10)
  %i.aez = icmp ugt i32 %i.aey, 3
  br i1 %i.aez, label %bb.dh, label %bb.dm

bb.dh:                                            ; preds = %.critedge
  %i.afa = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.10)
  %i.afb = add i32 %i.afa, -3
  %i.afc = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.10, i32 noundef %i.afb)
  br i1 %.not741, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.afd = getelementptr i8, ptr %3, i64 4
  %i.afe = load i8, ptr %i.afd, align 4
  %i.aff = and i8 %i.afe, 64
  %.not747 = icmp eq i8 %i.aff, 0
  br i1 %.not747, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.afg = getelementptr i8, ptr %3, i64 6
  %i.afh = load i8, ptr %i.afg, align 2
  %i.afi = icmp eq i8 %i.afh, 3
  br i1 %i.afi, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.afj = load i32, ptr @hf_scan_response_data, align 4
  %i.afk = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.10)
  %i.afl = add i32 %i.afk, -3
  %i.afm = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.afj, ptr noundef %0, i32 noundef %.10, i32 noundef %i.afl, i32 noundef 0)
  %i.afn = load i32, ptr @ett_scan_response_data, align 4
  %i.afo = call ptr @proto_item_add_subtree(ptr noundef %i.afm, i32 noundef %i.afn)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dh, %bb.di, %bb.dj, %bb.dk
  %.sink821 = phi ptr [ %i.afo, %bb.dk ], [ %2, %bb.dj ], [ %2, %bb.di ], [ %2, %bb.dh ]
  %i.afp = load i32, ptr %i.b, align 4
  %i.afq = load i32, ptr %i.a, align 4
  %i.afr = getelementptr i8, ptr %1, i64 20
  %i.afs = load i32, ptr %i.afr, align 4
  call fastcc void @dissect_ad_eir(ptr noundef %i.afc, i32 noundef %i.afp, i32 noundef %i.afq, i32 noundef %i.afs, ptr noundef %i.p, ptr noundef %1, ptr noundef %.sink821)
  %i.aft = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.10)
  %i.afu = add i32 %.10, -3
  %i.afv = add i32 %i.afu, %i.aft
  br label %bb.dm

bb.dm:                                            ; preds = %.critedge, %bb.dl, %bb.cg
  %.12 = phi i32 [ %.8, %bb.cg ], [ %i.afv, %bb.dl ], [ %.10, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  br label %bb.dp

bb.dn:                                            ; preds = %proto_item_set_hidden.exit
  %i.afw = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 2)
  %i.afx = icmp ugt i32 %i.afw, 3
  br i1 %i.afx, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.afy = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 2)
  %i.afz = add i32 %i.afy, -3
  %i.aga = call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef @ei_unknown_data, ptr noundef %0, i32 noundef 2, i32 noundef %i.afz) ; 0 uses
  %i.agb = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 2)
  %i.agc = add i32 %i.agb, -1
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dn, %bb.do, %bb.au, %bb.av, %bb.as, %bb.at, %bb.dm, %bb.bf, %bb.ba, %bb.ar
  %.13 = phi i32 [ %i.agc, %bb.do ], [ 2, %bb.dn ], [ %i.gk, %bb.ar ], [ %i.gs, %bb.as ], [ %i.gs, %bb.at ], [ %i.ix, %bb.au ], [ %i.ix, %bb.av ], [ %i.nn, %bb.ba ], [ %i.rq, %bb.bf ], [ %.12, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  ret i32 %.13
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_btle_acl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 18 uses
  %8 = alloca [5 x %struct._wmem_tree_key_t], align 16 ; 21 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 19 uses
  %i.g = alloca i8, align 1                       ; 72 uses
  %i.h = alloca [3 x ptr], align 16               ; 109 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  store i32 %5, ptr %i.a, align 4
  store i32 %6, ptr %i.b, align 4
  store i32 %7, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.l = icmp ne ptr %4, null                     ; 6 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %4, i64 4
  %i.n = load i8, ptr %i.m, align 4
  %i.o = lshr i8 %i.n, 4
  %i.p = and i8 %i.o, 3                           ; 2 uses
  %i.q = zext nneg i8 %i.p to i32
  %i.r = icmp eq i8 %i.p, 2
  %i.s = select i1 %i.r, i64 1, i64 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.01520 = phi i32 [ %i.q, %bb.b ], [ 0, %bb.a ] ; 89 uses
  %.01519 = phi i64 [ %i.s, %bb.b ], [ 0, %bb.a ] ; 42 uses
  store i32 1, ptr %8, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store ptr %i.b, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store i32 1, ptr %i.u, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  store ptr %i.a, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  store i32 1, ptr %i.w, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  store ptr %i.c, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 4 uses
  store i32 0, ptr %i.y, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 4 uses
  store ptr null, ptr %i.z, align 8
  %i.aa = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 4 uses
  %i.ab = load ptr, ptr @connection_info_tree, align 8
  %i.ac = call ptr @wmem_tree_lookup32_array(ptr noundef %i.ab, ptr noundef nonnull %8) ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.ac, label %bb.d
end_hunk_0
