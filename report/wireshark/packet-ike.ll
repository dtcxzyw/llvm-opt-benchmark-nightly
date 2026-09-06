Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ike?download=true
inline.NumInlined: 53
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dissect_payloads:bb.a
  %i.afi = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %i.cr, i32 noundef range(i32 -4, 65532) %i.cs) ; 10 uses
  %i.afj = load ptr, ptr %i.bk, align 8
  %i.afk = zext nneg i32 %i.cs to i64
  %i.afl = call ptr @bytesprefix_to_str(ptr noundef %i.afj, ptr noundef %i.afi, i64 noundef %i.afk, ptr noundef nonnull @vendor_id, ptr noundef nonnull @.str.960) ; 2 uses
  %i.afm = load i32, ptr @hf_isakmp_vid_bytes, align 4
  %i.afn = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.afm, ptr noundef %0, i32 noundef %i.cr, i32 noundef range(i32 -4, 65532) %i.cs, i32 noundef 0) ; 0 uses
  %i.afo = load i32, ptr @hf_isakmp_vid_string, align 4
  %i.afp = call ptr @proto_tree_add_string(ptr noundef %i.cn, i32 noundef %i.afo, ptr noundef %0, i32 noundef %i.cr, i32 noundef range(i32 -4, 65532) %i.cs, ptr noundef %i.afl) ; 0 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.cn, ptr noundef nonnull @.str.961, ptr noundef %i.afl)
  %i.afq = icmp ugt i16 %i.co, 27
  br i1 %i.afq, label %bb.gq, label %bb.gs

bb.gq:                                            ; preds = %bb.gp
  %i.afr = load i128, ptr %i.afi, align 1
  %i.afs = xor i128 %i.afr, 54080325072175107182218808170877939188
  %i.aft = getelementptr i8, ptr %i.afi, i64 16
  %i.afu = load i32, ptr %i.aft, align 1
  %i.afv = zext i32 %i.afu to i128
  %i.afw = xor i128 %i.afv, 523809799
  %i.afx = or i128 %i.afs, %i.afw
  %i.afy = icmp ne i128 %i.afx, 0
  %i.afz = zext i1 %i.afy to i32
  %i.aga = icmp eq i32 %i.afz, 0
  br i1 %i.aga, label %bb.gr, label %.thread

bb.gr:                                            ; preds = %bb.gq
  %i.agb = add i32 %.0155259, 24
  %i.agc = load i32, ptr @hf_isakmp_vid_cp_product, align 4
  %i.agd = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.agc, ptr noundef %0, i32 noundef %i.agb, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.age = add i32 %.0155259, 28
  %i.agf = load i32, ptr @hf_isakmp_vid_cp_version, align 4
  %i.agg = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.agf, ptr noundef %0, i32 noundef %i.age, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.agh = add i32 %.0155259, 32
  %i.agi = load i32, ptr @hf_isakmp_vid_cp_timestamp, align 4
  %i.agj = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.agi, ptr noundef %0, i32 noundef %i.agh, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.agk = add i32 %.0155259, 36
  %i.agl = load i32, ptr @hf_isakmp_vid_cp_reserved, align 4
  %i.agm = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.agl, ptr noundef %0, i32 noundef %i.agk, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.agn = add i32 %.0155259, 40
  %i.ago = load i32, ptr @hf_isakmp_vid_cp_features, align 4
  %i.agp = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.ago, ptr noundef %0, i32 noundef %i.agn, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.agq = add i32 %.0155259, 44
  br label %.thread

bb.gs:                                            ; preds = %bb.gp
  %i.agr = icmp samesign ugt i16 %i.co, 17
  br i1 %i.agr, label %.thread, label %.thread89.i

.thread:                                          ; preds = %bb.gq, %bb.gr, %bb.gs
  %.0.i174199 = phi i32 [ %i.cr, %bb.gs ], [ %i.cr, %bb.gq ], [ %i.agq, %bb.gr ] ; 4 uses
  %i.ags = load i64, ptr %i.afi, align 1
  %i.agt = xor i64 %i.ags, -6239612740190407406
  %i.agu = getelementptr i8, ptr %i.afi, i64 6
  %i.agv = load i64, ptr %i.agu, align 1
  %i.agw = xor i64 %i.agv, -3714094619383781016
  %i.agx = or i64 %i.agt, %i.agw
  %i.agy = icmp ne i64 %i.agx, 0
  %i.agz = zext i1 %i.agy to i32
  %i.aha = icmp eq i32 %i.agz, 0
  br i1 %i.aha, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %.thread
  %i.ahb = add i32 %.0.i174199, 14                ; 2 uses
  %i.ahc = load i32, ptr @hf_isakmp_vid_cisco_unity_major, align 4
  %i.ahd = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.ahc, ptr noundef %0, i32 noundef %i.ahb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ahe = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ahb)
  %i.ahf = zext i8 %i.ahe to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.cn, ptr noundef nonnull @.str.962, i32 noundef %i.ahf)
  %i.ahg = add i32 %.0.i174199, 15                ; 2 uses
  %i.ahh = load i32, ptr @hf_isakmp_vid_cisco_unity_minor, align 4
  %i.ahi = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.ahh, ptr noundef %0, i32 noundef %i.ahg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ahj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ahg)
  %i.ahk = zext i8 %i.ahj to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.cn, ptr noundef nonnull @.str.963, i32 noundef %i.ahk)
  %i.ahl = add i32 %.0.i174199, 16
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %.thread
  %.1.i175 = phi i32 [ %i.ahl, %bb.gt ], [ %.0.i174199, %.thread ] ; 4 uses
  %i.ahm = icmp ugt i16 %i.co, 19
  br i1 %i.ahm, label %bb.gv, label %.thread89.i.thread

bb.gv:                                            ; preds = %bb.gu
  %i.ahn = load i128, ptr %i.afi, align 1
  %i.aho = icmp ne i128 %i.ahn, 130121711799893685262130314388469525278
  %i.ahp = zext i1 %i.aho to i32
  %i.ahq = icmp eq i32 %i.ahp, 0
  br i1 %i.ahq, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.ahr = add i32 %.1.i175, 16
  %i.ahs = load i32, ptr @hf_isakmp_vid_ms_nt5_isakmpoakley, align 4
  %i.aht = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.ahs, ptr noundef %0, i32 noundef %i.ahr, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ahu = add i32 %.1.i175, 20
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.2.i = phi i32 [ %i.ahu, %bb.gw ], [ %.1.i175, %bb.gv ] ; 4 uses
  %i.ahv = icmp ugt i16 %i.co, 22
  br i1 %i.ahv, label %bb.gy, label %.thread89.i.thread

bb.gy:                                            ; preds = %bb.gx
  %i.ahw = load i128, ptr %i.afi, align 1
  %i.ahx = xor i128 %i.ahw, 134814933403770256448269335779245902166
  %i.ahy = getelementptr i8, ptr %i.afi, i64 3
  %i.ahz = load i128, ptr %i.ahy, align 1
  %i.aia = xor i128 %i.ahz, 42837106155615860738500025698701623584
  %i.aib = or i128 %i.ahx, %i.aia
  %i.aic = icmp ne i128 %i.aib, 0
  %i.aid = zext i1 %i.aic to i32
  %i.aie = icmp eq i32 %i.aid, 0
  br i1 %i.aie, label %bb.gz, label %.thread89.i.thread

bb.gz:                                            ; preds = %bb.gy
  %i.aif = add i32 %.2.i, 19
  %i.aig = load i32, ptr @hf_isakmp_vid_aruba_via_auth_profile, align 4
  %i.aih = add nsw i32 %i.cp, -23
  %i.aii = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.aig, ptr noundef %0, i32 noundef %i.aif, i32 noundef %i.aih, i32 noundef 0) ; 0 uses
  %i.aij = add i32 %.2.i, 23
  br label %.thread89.i.thread

.thread89.i:                                      ; preds = %bb.gs
  %i.aik = icmp samesign ugt i16 %i.co, 15
  br i1 %i.aik, label %.thread89.i.thread, label %dissect_key_exch.exit

.thread89.i.thread:                               ; preds = %bb.gu, %bb.gx, %bb.gy, %bb.gz, %.thread89.i
  %.3.i201 = phi i32 [ %i.cr, %.thread89.i ], [ %.1.i175, %bb.gu ], [ %.2.i, %bb.gx ], [ %.2.i, %bb.gy ], [ %i.aij, %bb.gz ] ; 2 uses
  %i.ail = load i64, ptr %i.afi, align 1
  %i.aim = xor i64 %i.ail, -9052055656571102846
  %i.ain = getelementptr i8, ptr %i.afi, i64 8
  %i.aio = load i32, ptr %i.ain, align 1
  %i.aip = zext i32 %i.aio to i64
  %i.aiq = xor i64 %i.aip, 3726747334
  %i.air = or i64 %i.aim, %i.aiq
  %i.ais = icmp ne i64 %i.air, 0
  %i.ait = zext i1 %i.ais to i32
  %i.aiu = icmp eq i32 %i.ait, 0
  br i1 %i.aiu, label %bb.ha, label %dissect_key_exch.exit

bb.ha:                                            ; preds = %.thread89.i.thread
  %i.aiv = add i32 %.3.i201, 12
  %i.aiw = load i32, ptr @hf_isakmp_vid_fortinet_fortigate_release, align 4
  %i.aix = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.aiw, ptr noundef %0, i32 noundef %i.aiv, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aiy = add i32 %.3.i201, 14
  %i.aiz = load i32, ptr @hf_isakmp_vid_fortinet_fortigate_build, align 4
  %i.aja = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.aiz, ptr noundef %0, i32 noundef %i.aiy, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %dissect_key_exch.exit

bb.hb:                                            ; preds = %bb.e, %bb.e
  %i.ajb = add i32 %.0155259, %i.cp               ; 2 uses
  switch i32 %2, label %dissect_key_exch.exit [
    i32 1, label %bb.hc
    i32 2, label %bb.hd
  ]

bb.hc:                                            ; preds = %bb.hb
  %i.ajc = load i32, ptr @hf_isakmp_cfg_type_v1, align 4
  %i.ajd = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.ajc, ptr noundef %0, i32 noundef %i.cr, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aje = add i32 %.0155259, 5
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %hf_isakmp_cfg_type_v2.sink.i = phi ptr [ @hf_isakmp_reserved, %bb.hc ], [ @hf_isakmp_cfg_type_v2, %bb.hb ]
  %.sink79.i = phi i32 [ %i.aje, %bb.hc ], [ %i.cr, %bb.hb ]
  %.sink.i176 = phi i32 [ 2, %bb.hc ], [ 1, %bb.hb ]
  %hf_isakmp_reserved.sink.i = phi ptr [ @hf_isakmp_cfg_identifier, %bb.hc ], [ @hf_isakmp_reserved, %bb.hb ]
  %.sink77.i = phi i32 [ 2, %bb.hc ], [ 3, %bb.hb ]
  %i.ajf = load i32, ptr %hf_isakmp_cfg_type_v2.sink.i, align 4
  %i.ajg = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.ajf, ptr noundef %0, i32 noundef %.sink79.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ajh = add i32 %.sink.i176, %i.cr
  %i.aji = load i32, ptr %hf_isakmp_reserved.sink.i, align 4
  %i.ajj = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.aji, ptr noundef %0, i32 noundef %i.ajh, i32 noundef %.sink77.i, i32 noundef 0) ; 0 uses
  %.0.i177 = add i32 %.0155259, 8                 ; 2 uses
  %i.ajk = icmp ult i32 %.0.i177, %i.ajb
  br i1 %i.ajk, label %.lr.ph.i178, label %dissect_key_exch.exit

.lr.ph.i178:                                      ; preds = %bb.hd, %dissect_config_attribute.exit.i
  %.146.i = phi i32 [ %i.atd, %dissect_config_attribute.exit.i ], [ %.0.i177, %bb.hd ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  switch i32 %2, label %dissect_config_attribute.exit.i [
    i32 1, label %.split177.i.i
    i32 2, label %.split.i.i
  ]

.split.i.i:                                       ; preds = %.lr.ph.i178
  br label %.split177.i.i

.split177.i.i:                                    ; preds = %.split.i.i, %.lr.ph.i178
  %hf_isakmp_cfg_attr_type_v2.sink.i.i = phi ptr [ @hf_isakmp_cfg_attr_type_v2, %.split.i.i ], [ @hf_isakmp_cfg_attr_type_v1, %.lr.ph.i178 ]
  %vs_v2_cfgattr.sink.i.i = phi ptr [ @vs_v2_cfgattr, %.split.i.i ], [ @vs_v1_cfgattr, %.lr.ph.i178 ]
  %i.ajl = load i32, ptr %hf_isakmp_cfg_attr_type_v2.sink.i.i, align 4
  store i32 %i.ajl, ptr getelementptr inbounds nuw (i8, ptr @hf_isakmp_cfg_attr, i64 8), align 8
  call fastcc void @dissect_attribute_header(ptr noundef %0, ptr noundef %6, ptr noundef %i.cn, i32 noundef %.146.i, ptr noundef nonnull byval(%struct._attribute_common_fields) align 8 @hf_isakmp_cfg_attr, ptr noundef nonnull %vs_v2_cfgattr.sink.i.i, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l)
  %i.ajm = load i32, ptr %i.h, align 4            ; 4 uses
  %i.ajn = add i32 %i.ajm, %.146.i                ; 40 uses
  %i.ajo = load i32, ptr %i.i, align 4            ; 46 uses
  %i.ajp = icmp eq i32 %i.ajo, 0
  br i1 %i.ajp, label %bb.he, label %bb.hg

bb.he:                                            ; preds = %.split177.i.i
  br i1 %8, label %dissect_config_attribute.exit.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.ajq = load ptr, ptr %i.k, align 8
  %i.ajr = call ptr @expert_add_info(ptr noundef %6, ptr noundef %i.ajq, ptr noundef nonnull @ei_isakmp_attribute_value_empty) ; 0 uses
  br label %dissect_config_attribute.exit.i

bb.hg:                                            ; preds = %.split177.i.i
  %i.ajs = load i32, ptr %i.j, align 4
  switch i32 %i.ajs, label %.loopexit.i.i [
    i32 1, label %bb.hh
    i32 2, label %bb.hj
    i32 3, label %bb.hk
    i32 4, label %bb.hm
    i32 5, label %bb.ho
    i32 6, label %bb.hp
    i32 7, label %bb.hr
    i32 8, label %bb.hs
    i32 9, label %bb.hu
    i32 10, label %bb.hv
    i32 11, label %bb.hx
    i32 12, label %bb.hz
    i32 13, label %bb.ib
    i32 14, label %bb.id
    i32 15, label %bb.if
    i32 17, label %bb.ih
    i32 18, label %bb.ii
    i32 20, label %bb.ik
    i32 21, label %bb.im
    i32 25, label %bb.io
    i32 16520, label %bb.ip
    i32 16521, label %bb.iq
    i32 16522, label %bb.ir
    i32 16523, label %bb.is
    i32 16524, label %bb.it
    i32 16525, label %bb.iu
    i32 16526, label %bb.iv
    i32 16527, label %bb.iw
    i32 16528, label %bb.ix
    i32 16529, label %bb.iy
    i32 21514, label %bb.iz
    i32 21515, label %bb.ja
    i32 21516, label %bb.jb
    i32 28672, label %bb.jc
    i32 28673, label %bb.jd
    i32 28678, label %bb.je
    i32 28674, label %bb.jf
  ]

bb.hh:                                            ; preds = %bb.hg
  %i.ajt = and i32 %i.ajo, 3
  %i.aju = icmp eq i32 %i.ajt, 0
  br i1 %i.aju, label %.lr.ph246.i.i, label %.loopexit.i.i

.lr.ph246.i.i:                                    ; preds = %bb.hh
  %i.ajv = lshr exact i32 %i.ajo, 2
  %i.ajw = load ptr, ptr %i.l, align 8
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hi, %.lr.ph246.i.i
  %.0245.i.i = phi i32 [ 0, %.lr.ph246.i.i ], [ %i.aka, %bb.hi ]
  %.0162244.i.i = phi i32 [ %i.ajn, %.lr.ph246.i.i ], [ %i.ajz, %bb.hi ] ; 2 uses
  %i.ajx = load i32, ptr @hf_isakmp_cfg_attr_internal_ip4_address, align 4
  %i.ajy = call ptr @proto_tree_add_item(ptr noundef %i.ajw, i32 noundef %i.ajx, ptr noundef %0, i32 noundef %.0162244.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ajz = add i32 %.0162244.i.i, 4
  %i.aka = add nuw nsw i32 %.0245.i.i, 1          ; 2 uses
  %exitcond283.not.i.i = icmp eq i32 %i.aka, %i.ajv
  br i1 %exitcond283.not.i.i, label %.loopexit.i.i, label %bb.hi, !llvm.loop !28

bb.hj:                                            ; preds = %bb.hg
  %i.akb = load ptr, ptr %i.l, align 8
  %i.akc = load i32, ptr @hf_isakmp_cfg_attr_internal_ip4_netmask, align 4
  %i.akd = call ptr @proto_tree_add_item(ptr noundef %i.akb, i32 noundef %i.akc, ptr noundef %0, i32 noundef %i.ajn, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.loopexit.i.i

bb.hk:                                            ; preds = %bb.hg
  %i.ake = and i32 %i.ajo, 3
  %i.akf = icmp eq i32 %i.ake, 0
  br i1 %i.akf, label %.lr.ph243.i.i, label %.loopexit.i.i

.lr.ph243.i.i:                                    ; preds = %bb.hk
  %i.akg = lshr exact i32 %i.ajo, 2
  %i.akh = load ptr, ptr %i.l, align 8
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hl, %.lr.ph243.i.i
  %.1242.i.i = phi i32 [ 0, %.lr.ph243.i.i ], [ %i.akl, %bb.hl ]
  %.1163241.i.i = phi i32 [ %i.ajn, %.lr.ph243.i.i ], [ %i.akk, %bb.hl ] ; 2 uses
  %i.aki = load i32, ptr @hf_isakmp_cfg_attr_internal_ip4_dns, align 4
  %i.akj = call ptr @proto_tree_add_item(ptr noundef %i.akh, i32 noundef %i.aki, ptr noundef %0, i32 noundef %.1163241.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.akk = add i32 %.1163241.i.i, 4
  %i.akl = add nuw nsw i32 %.1242.i.i, 1          ; 2 uses
  %exitcond282.not.i.i = icmp eq i32 %i.akl, %i.akg
  br i1 %exitcond282.not.i.i, label %.loopexit.i.i, label %bb.hl, !llvm.loop !29

bb.hm:                                            ; preds = %bb.hg
  %i.akm = and i32 %i.ajo, 3
  %i.akn = icmp eq i32 %i.akm, 0
  br i1 %i.akn, label %.lr.ph240.i.i, label %.loopexit.i.i

.lr.ph240.i.i:                                    ; preds = %bb.hm
  %i.ako = lshr exact i32 %i.ajo, 2
  %i.akp = load ptr, ptr %i.l, align 8
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hn, %.lr.ph240.i.i
  %.2239.i.i = phi i32 [ 0, %.lr.ph240.i.i ], [ %i.akt, %bb.hn ]
  %.2164238.i.i = phi i32 [ %i.ajn, %.lr.ph240.i.i ], [ %i.aks, %bb.hn ] ; 2 uses
  %i.akq = load i32, ptr @hf_isakmp_cfg_attr_internal_ip4_nbns, align 4
  %i.akr = call ptr @proto_tree_add_item(ptr noundef %i.akp, i32 noundef %i.akq, ptr noundef %0, i32 noundef %.2164238.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aks = add i32 %.2164238.i.i, 4
  %i.akt = add nuw nsw i32 %.2239.i.i, 1          ; 2 uses
  %exitcond281.not.i.i = icmp eq i32 %i.akt, %i.ako
  br i1 %exitcond281.not.i.i, label %.loopexit.i.i, label %bb.hn, !llvm.loop !30

bb.ho:                                            ; preds = %bb.hg
  %i.aku = load ptr, ptr %i.l, align 8
  %i.akv = load i32, ptr @hf_isakmp_cfg_attr_internal_address_expiry, align 4
  %i.akw = call ptr @proto_tree_add_item(ptr noundef %i.aku, i32 noundef %i.akv, ptr noundef %0, i32 noundef %i.ajn, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.loopexit.i.i

bb.hp:                                            ; preds = %bb.hg
  %i.akx = and i32 %i.ajo, 3
  %i.aky = icmp eq i32 %i.akx, 0
  br i1 %i.aky, label %.lr.ph237.i.i, label %.loopexit.i.i

.lr.ph237.i.i:                                    ; preds = %bb.hp
  %i.akz = lshr exact i32 %i.ajo, 2
  %i.ala = load ptr, ptr %i.l, align 8
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hq, %.lr.ph237.i.i
  %.3236.i.i = phi i32 [ 0, %.lr.ph237.i.i ], [ %i.ale, %bb.hq ]
  %.3165235.i.i = phi i32 [ %i.ajn, %.lr.ph237.i.i ], [ %i.ald, %bb.hq ] ; 2 uses
  %i.alb = load i32, ptr @hf_isakmp_cfg_attr_internal_ip4_dhcp, align 4
  %i.alc = call ptr @proto_tree_add_item(ptr noundef %i.ala, i32 noundef %i.alb, ptr noundef %0, i32 noundef %.3165235.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ald = add i32 %.3165235.i.i, 4
  %i.ale = add nuw nsw i32 %.3236.i.i, 1          ; 2 uses
  %exitcond280.not.i.i = icmp eq i32 %i.ale, %i.akz
  br i1 %exitcond280.not.i.i, label %.loopexit.i.i, label %bb.hq, !llvm.loop !31

bb.hr:                                            ; preds = %bb.hg
  %i.alf = load ptr, ptr %i.l, align 8
  %i.alg = load i32, ptr @hf_isakmp_cfg_attr_application_version, align 4
  %i.alh = load ptr, ptr %i.bk, align 8
  %i.ali = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.alf, i32 noundef %i.alg, ptr noundef %0, i32 noundef %i.ajn, i32 noundef %i.ajo, i32 noundef 0, ptr noundef %i.alh, ptr noundef nonnull %i.m) ; 0 uses
  %i.alj = load ptr, ptr %i.k, align 8
  %i.alk = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.alj, ptr noundef nonnull @.str.885, ptr noundef %i.alk)
  br label %.loopexit.i.i

bb.hs:                                            ; preds = %bb.hg
  %i.all = urem i32 %i.ajo, 17
  %i.alm = icmp eq i32 %i.all, 0
  br i1 %i.alm, label %.preheader186.i.i, label %.loopexit.i.i

.preheader186.i.i:                                ; preds = %bb.hs
  %i.aln = udiv exact i32 %i.ajo, 17
  %12 = load ptr, ptr %i.l, align 8               ; 2 uses
  br label %bb.ht

bb.ht:                                            ; preds = %bb.ht, %.preheader186.i.i
  %.4233.i.i = phi i32 [ 0, %.preheader186.i.i ], [ %i.alu, %bb.ht ]
  %.4166232.i.i = phi i32 [ %i.ajn, %.preheader186.i.i ], [ %i.alt, %bb.ht ] ; 3 uses
  %i.alo = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_address_ip, align 4
  %i.alp = call ptr @proto_tree_add_item(ptr noundef %12, i32 noundef %i.alo, ptr noundef %0, i32 noundef %.4166232.i.i, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.alq = add i32 %.4166232.i.i, 16
  %i.alr = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_address_prefix, align 4
  %i.als = call ptr @proto_tree_add_item(ptr noundef %12, i32 noundef %i.alr, ptr noundef %0, i32 noundef %i.alq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.alt = add i32 %.4166232.i.i, 17
  %i.alu = add nuw nsw i32 %.4233.i.i, 1          ; 2 uses
  %exitcond279.not.i.i = icmp eq i32 %i.alu, %i.aln
  br i1 %exitcond279.not.i.i, label %.loopexit.i.i, label %bb.ht, !llvm.loop !32

bb.hu:                                            ; preds = %bb.hg
  %i.alv = load ptr, ptr %i.l, align 8
  %i.alw = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_netmask, align 4
  %i.alx = call ptr @proto_tree_add_item(ptr noundef %i.alv, i32 noundef %i.alw, ptr noundef %0, i32 noundef %i.ajn, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %.loopexit.i.i

bb.hv:                                            ; preds = %bb.hg
  %i.aly = and i32 %i.ajo, 15
  %i.alz = icmp eq i32 %i.aly, 0
  br i1 %i.alz, label %.lr.ph231.i.i, label %.loopexit.i.i

.lr.ph231.i.i:                                    ; preds = %bb.hv
  %i.ama = lshr exact i32 %i.ajo, 4
  %i.amb = load ptr, ptr %i.l, align 8
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hw, %.lr.ph231.i.i
  %.5230.i.i = phi i32 [ 0, %.lr.ph231.i.i ], [ %i.amf, %bb.hw ]
  %.5167229.i.i = phi i32 [ %i.ajn, %.lr.ph231.i.i ], [ %i.ame, %bb.hw ] ; 2 uses
  %i.amc = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_dns, align 4
  %i.amd = call ptr @proto_tree_add_item(ptr noundef %i.amb, i32 noundef %i.amc, ptr noundef %0, i32 noundef %.5167229.i.i, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.ame = add i32 %.5167229.i.i, 16
  %i.amf = add nuw nsw i32 %.5230.i.i, 1          ; 2 uses
  %exitcond278.not.i.i = icmp eq i32 %i.amf, %i.ama
  br i1 %exitcond278.not.i.i, label %.loopexit.i.i, label %bb.hw, !llvm.loop !33

bb.hx:                                            ; preds = %bb.hg
  %i.amg = and i32 %i.ajo, 15
  %i.amh = icmp eq i32 %i.amg, 0
  br i1 %i.amh, label %.lr.ph228.i.i, label %.loopexit.i.i

.lr.ph228.i.i:                                    ; preds = %bb.hx
  %i.ami = lshr exact i32 %i.ajo, 4
  %i.amj = load ptr, ptr %i.l, align 8
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hy, %.lr.ph228.i.i
  %.6227.i.i = phi i32 [ 0, %.lr.ph228.i.i ], [ %i.amn, %bb.hy ]
  %.6168226.i.i = phi i32 [ %i.ajn, %.lr.ph228.i.i ], [ %i.amm, %bb.hy ] ; 2 uses
  %i.amk = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_nbns, align 4
  %i.aml = call ptr @proto_tree_add_item(ptr noundef %i.amj, i32 noundef %i.amk, ptr noundef %0, i32 noundef %.6168226.i.i, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.amm = add i32 %.6168226.i.i, 16
  %i.amn = add nuw nsw i32 %.6227.i.i, 1          ; 2 uses
  %exitcond277.not.i.i = icmp eq i32 %i.amn, %i.ami
  br i1 %exitcond277.not.i.i, label %.loopexit.i.i, label %bb.hy, !llvm.loop !34

bb.hz:                                            ; preds = %bb.hg
  %i.amo = and i32 %i.ajo, 15
  %i.amp = icmp eq i32 %i.amo, 0
  br i1 %i.amp, label %.lr.ph225.i.i, label %.loopexit.i.i

.lr.ph225.i.i:                                    ; preds = %bb.hz
  %i.amq = lshr exact i32 %i.ajo, 4
  %i.amr = load ptr, ptr %i.l, align 8
  br label %bb.ia

bb.ia:                                            ; preds = %bb.ia, %.lr.ph225.i.i
  %.7224.i.i = phi i32 [ 0, %.lr.ph225.i.i ], [ %i.amv, %bb.ia ]
  %.7169223.i.i = phi i32 [ %i.ajn, %.lr.ph225.i.i ], [ %i.amu, %bb.ia ] ; 2 uses
  %i.ams = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_dhcp, align 4
  %i.amt = call ptr @proto_tree_add_item(ptr noundef %i.amr, i32 noundef %i.ams, ptr noundef %0, i32 noundef %.7169223.i.i, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.amu = add i32 %.7169223.i.i, 16
  %i.amv = add nuw nsw i32 %.7224.i.i, 1          ; 2 uses
  %exitcond276.not.i.i = icmp eq i32 %i.amv, %i.amq
  br i1 %exitcond276.not.i.i, label %.loopexit.i.i, label %bb.ia, !llvm.loop !35

bb.ib:                                            ; preds = %bb.hg
  %i.amw = and i32 %i.ajo, 7
  %i.amx = icmp eq i32 %i.amw, 0
  br i1 %i.amx, label %.lr.ph222.i.i, label %.loopexit.i.i

.lr.ph222.i.i:                                    ; preds = %bb.ib
  %i.amy = lshr exact i32 %i.ajo, 3
  %i.amz = load ptr, ptr %i.l, align 8            ; 2 uses
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ic, %.lr.ph222.i.i
  %.8221.i.i = phi i32 [ 0, %.lr.ph222.i.i ], [ %i.ang, %bb.ic ]
  %.8170220.i.i = phi i32 [ %i.ajn, %.lr.ph222.i.i ], [ %i.anf, %bb.ic ] ; 3 uses
  %i.ana = load i32, ptr @hf_isakmp_cfg_attr_internal_ip4_subnet_ip, align 4
  %i.anb = call ptr @proto_tree_add_item(ptr noundef %i.amz, i32 noundef %i.ana, ptr noundef %0, i32 noundef %.8170220.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.anc = add i32 %.8170220.i.i, 4
  %i.and = load i32, ptr @hf_isakmp_cfg_attr_internal_ip4_subnet_netmask, align 4
  %i.ane = call ptr @proto_tree_add_item(ptr noundef %i.amz, i32 noundef %i.and, ptr noundef %0, i32 noundef %i.anc, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.anf = add i32 %.8170220.i.i, 8
  %i.ang = add nuw nsw i32 %.8221.i.i, 1          ; 2 uses
  %exitcond275.not.i.i = icmp eq i32 %i.ang, %i.amy
  br i1 %exitcond275.not.i.i, label %.loopexit.i.i, label %bb.ic, !llvm.loop !36

bb.id:                                            ; preds = %bb.hg
  %i.anh = and i32 %i.ajo, 1
  %i.ani = icmp eq i32 %i.anh, 0
  br i1 %i.ani, label %.lr.ph219.i.i, label %.loopexit.i.i

.lr.ph219.i.i:                                    ; preds = %bb.id
  %i.anj = lshr exact i32 %i.ajo, 1
  %i.ank = load ptr, ptr %i.l, align 8
  br label %bb.ie

bb.ie:                                            ; preds = %bb.ie, %.lr.ph219.i.i
  %.9218.i.i = phi i32 [ 0, %.lr.ph219.i.i ], [ %i.ano, %bb.ie ]
  %.9171217.i.i = phi i32 [ %i.ajn, %.lr.ph219.i.i ], [ %i.ann, %bb.ie ] ; 2 uses
  %i.anl = load i32, ptr @hf_isakmp_cfg_attr_supported_attributes, align 4
  %i.anm = call ptr @proto_tree_add_item(ptr noundef %i.ank, i32 noundef %i.anl, ptr noundef %0, i32 noundef %.9171217.i.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ann = add i32 %.9171217.i.i, 2
  %i.ano = add nuw nsw i32 %.9218.i.i, 1          ; 2 uses
  %exitcond274.not.i.i = icmp eq i32 %i.ano, %i.anj
  br i1 %exitcond274.not.i.i, label %.loopexit.i.i, label %bb.ie, !llvm.loop !37

bb.if:                                            ; preds = %bb.hg
  %i.anp = urem i32 %i.ajo, 17
  %i.anq = icmp eq i32 %i.anp, 0
  br i1 %i.anq, label %.preheader198.i.i, label %.loopexit.i.i

.preheader198.i.i:                                ; preds = %bb.if
  %i.anr = udiv exact i32 %i.ajo, 17
  %13 = load ptr, ptr %i.l, align 8               ; 2 uses
  br label %bb.ig

bb.ig:                                            ; preds = %bb.ig, %.preheader198.i.i
  %.10215.i.i = phi i32 [ 0, %.preheader198.i.i ], [ %i.any, %bb.ig ]
  %.10172214.i.i = phi i32 [ %i.ajn, %.preheader198.i.i ], [ %i.anx, %bb.ig ] ; 3 uses
  %i.ans = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_subnet_ip, align 4
  %i.ant = call ptr @proto_tree_add_item(ptr noundef %13, i32 noundef %i.ans, ptr noundef %0, i32 noundef %.10172214.i.i, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.anu = add i32 %.10172214.i.i, 16
  %i.anv = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_subnet_prefix, align 4
  %i.anw = call ptr @proto_tree_add_item(ptr noundef %13, i32 noundef %i.anv, ptr noundef %0, i32 noundef %i.anu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.anx = add i32 %.10172214.i.i, 17
  %i.any = add nuw nsw i32 %.10215.i.i, 1         ; 2 uses
  %exitcond273.not.i.i = icmp eq i32 %i.any, %i.anr
  br i1 %exitcond273.not.i.i, label %.loopexit.i.i, label %bb.ig, !llvm.loop !38

bb.ih:                                            ; preds = %bb.hg
  %i.anz = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.aoa = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_link_interface, align 4
  %i.aob = call ptr @proto_tree_add_item(ptr noundef %i.anz, i32 noundef %i.aoa, ptr noundef %0, i32 noundef %i.ajn, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.aoc = add i32 %i.ajn, 8
  %i.aod = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_link_id, align 4
  %i.aoe = add i32 %i.ajo, -8
  %i.aof = call ptr @proto_tree_add_item(ptr noundef %i.anz, i32 noundef %i.aod, ptr noundef %0, i32 noundef %i.aoc, i32 noundef %i.aoe, i32 noundef 0) ; 0 uses
  br label %.loopexit.i.i

bb.ii:                                            ; preds = %bb.hg
  %i.aog = urem i32 %i.ajo, 17
  %i.aoh = udiv exact i32 %i.ajo, 17
  %14 = icmp eq i32 %i.aog, 0
  br i1 %14, label %.lr.ph213.i.i, label %.loopexit.i.i

.lr.ph213.i.i:                                    ; preds = %bb.ii
  %i.aoi = load ptr, ptr %i.l, align 8            ; 2 uses
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ij, %.lr.ph213.i.i
  %.11212.i.i = phi i32 [ 0, %.lr.ph213.i.i ], [ %i.aop, %bb.ij ]
  %.11173211.i.i = phi i32 [ %i.ajn, %.lr.ph213.i.i ], [ %i.aoo, %bb.ij ] ; 3 uses
  %i.aoj = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_prefix_ip, align 4
  %i.aok = call ptr @proto_tree_add_item(ptr noundef %i.aoi, i32 noundef %i.aoj, ptr noundef %0, i32 noundef %.11173211.i.i, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.aol = add i32 %.11173211.i.i, 16
  %i.aom = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_prefix_length, align 4
  %i.aon = call ptr @proto_tree_add_item(ptr noundef %i.aoi, i32 noundef %i.aom, ptr noundef %0, i32 noundef %i.aol, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aoo = add i32 %.11173211.i.i, 17
  %i.aop = add nuw nsw i32 %.11212.i.i, 1         ; 2 uses
  %exitcond272.not.i.i = icmp eq i32 %i.aop, %i.aoh
  br i1 %exitcond272.not.i.i, label %.loopexit.i.i, label %bb.ij, !llvm.loop !39

bb.ik:                                            ; preds = %bb.hg
  %i.aoq = and i32 %i.ajo, 3
  %i.aor = icmp eq i32 %i.aoq, 0
  br i1 %i.aor, label %.lr.ph210.i.i, label %.loopexit.i.i

.lr.ph210.i.i:                                    ; preds = %bb.ik
  %i.aos = lshr exact i32 %i.ajo, 2
  %i.aot = load ptr, ptr %i.l, align 8
  br label %bb.il

bb.il:                                            ; preds = %bb.il, %.lr.ph210.i.i
  %.12209.i.i = phi i32 [ 0, %.lr.ph210.i.i ], [ %i.aox, %bb.il ]
  %.12174208.i.i = phi i32 [ %i.ajn, %.lr.ph210.i.i ], [ %i.aow, %bb.il ] ; 2 uses
  %i.aou = load i32, ptr @hf_isakmp_cfg_attr_p_cscf_ip4_address, align 4
  %i.aov = call ptr @proto_tree_add_item(ptr noundef %i.aot, i32 noundef %i.aou, ptr noundef %0, i32 noundef %.12174208.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aow = add i32 %.12174208.i.i, 4
  %i.aox = add nuw nsw i32 %.12209.i.i, 1         ; 2 uses
  %exitcond271.not.i.i = icmp eq i32 %i.aox, %i.aos
  br i1 %exitcond271.not.i.i, label %.loopexit.i.i, label %bb.il, !llvm.loop !40

bb.im:                                            ; preds = %bb.hg
  %i.aoy = and i32 %i.ajo, 15
  %i.aoz = icmp eq i32 %i.aoy, 0
  br i1 %i.aoz, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.im
  %i.apa = lshr exact i32 %i.ajo, 4
  %i.apb = load ptr, ptr %i.l, align 8
  br label %bb.in

bb.in:                                            ; preds = %bb.in, %.lr.ph.i.i
  %.13207.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.apf, %bb.in ]
  %.13175206.i.i = phi i32 [ %i.ajn, %.lr.ph.i.i ], [ %i.ape, %bb.in ] ; 2 uses
  %i.apc = load i32, ptr @hf_isakmp_cfg_attr_p_cscf_ip6_address, align 4
  %i.apd = call ptr @proto_tree_add_item(ptr noundef %i.apb, i32 noundef %i.apc, ptr noundef %0, i32 noundef %.13175206.i.i, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.ape = add i32 %.13175206.i.i, 16
  %i.apf = add nuw nsw i32 %.13207.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.apf, %i.apa
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.in, !llvm.loop !41

bb.io:                                            ; preds = %bb.hg
  %i.apg = load ptr, ptr %i.l, align 8
  %i.aph = load i32, ptr @hf_isakmp_cfg_attr_internal_dns_domain, align 4
  %i.api = load ptr, ptr %i.bk, align 8
  %i.apj = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.apg, i32 noundef %i.aph, ptr noundef %0, i32 noundef %i.ajn, i32 noundef %i.ajo, i32 noundef 0, ptr noundef %i.api, ptr noundef nonnull %i.m) ; 0 uses
  %i.apk = load ptr, ptr %i.k, align 8
  %i.apl = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.apk, ptr noundef nonnull @.str.885, ptr noundef %i.apl)
  br label %.loopexit.i.i

bb.ip:                                            ; preds = %bb.hg
  %i.apm = load ptr, ptr %i.l, align 8
  %i.apn = load i32, ptr @hf_isakmp_cfg_attr_xauth_type, align 4
  %i.apo = call ptr @proto_tree_add_item(ptr noundef %i.apm, i32 noundef %i.apn, ptr noundef %0, i32 noundef %i.ajn, i32 noundef %i.ajo, i32 noundef 0) ; 0 uses
  %i.app = load ptr, ptr %i.k, align 8
  %i.apq = load ptr, ptr %i.bk, align 8
  %i.apr = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.ajn)
  %i.aps = zext i16 %i.apr to i32
  %i.apt = call ptr @rval_to_str_wmem(ptr noundef %i.apq, i32 noundef %i.aps, ptr noundef nonnull @cfgattr_xauth_type, ptr noundef nonnull @.str.886)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.app, ptr noundef nonnull @.str.885, ptr noundef %i.apt)
  br label %.loopexit.i.i

bb.iq:                                            ; preds = %bb.hg
  %i.apu = load ptr, ptr %i.l, align 8
  %i.apv = load i32, ptr @hf_isakmp_cfg_attr_xauth_user_name, align 4
  %i.apw = load ptr, ptr %i.bk, align 8
  %i.apx = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.apu, i32 noundef %i.apv, ptr noundef %0, i32 noundef %i.ajn, i32 noundef %i.ajo, i32 noundef 0, ptr noundef %i.apw, ptr noundef nonnull %i.m) ; 0 uses
  %i.apy = load ptr, ptr %i.k, align 8
  %i.apz = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.apy, ptr noundef nonnull @.str.885, ptr noundef %i.apz)
  br label %.loopexit.i.i

bb.ir:                                            ; preds = %bb.hg
  %i.aqa = load ptr, ptr %i.l, align 8
  %i.aqb = load i32, ptr @hf_isakmp_cfg_attr_xauth_user_password, align 4
  %i.aqc = load ptr, ptr %i.bk, align 8
  %i.aqd = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.aqa, i32 noundef %i.aqb, ptr noundef %0, i32 noundef %i.ajn, i32 noundef %i.ajo, i32 noundef 0, ptr noundef %i.aqc, ptr noundef nonnull %i.m) ; 0 uses
  %i.aqe = load ptr, ptr %i.k, align 8
  %i.aqf = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aqe, ptr noundef nonnull @.str.885, ptr noundef %i.aqf)
  br label %.loopexit.i.i

bb.is:                                            ; preds = %bb.hg
  %i.aqg = load ptr, ptr %i.l, align 8
  %i.aqh = load i32, ptr @hf_isakmp_cfg_attr_xauth_passcode, align 4
  %i.aqi = load ptr, ptr %i.bk, align 8
  %i.aqj = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.aqg, i32 noundef %i.aqh, ptr noundef %0, i32 noundef %i.ajn, i32 noundef %i.ajo, i32 noundef 0, ptr noundef %i.aqi, ptr noundef nonnull %i.m) ; 0 uses
  %i.aqk = load ptr, ptr %i.k, align 8
  %i.aql = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aqk, ptr noundef nonnull @.str.885, ptr noundef %i.aql)
  br label %.loopexit.i.i

bb.it:                                            ; preds = %bb.hg
  %i.aqm = load ptr, ptr %i.l, align 8
  %i.aqn = load i32, ptr @hf_isakmp_cfg_attr_xauth_message, align 4
  %i.aqo = load ptr, ptr %i.bk, align 8
  %i.aqp = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.aqm, i32 noundef %i.aqn, ptr noundef %0, i32 noundef %i.ajn, i32 noundef %i.ajo, i32 noundef 0, ptr noundef %i.aqo, ptr noundef nonnull %i.m) ; 0 uses
  %i.aqq = load ptr, ptr %i.k, align 8
  %i.aqr = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aqq, ptr noundef nonnull @.str.885, ptr noundef %i.aqr)
  br label %.loopexit.i.i

bb.iu:                                            ; preds = %bb.hg
  %i.aqs = load ptr, ptr %i.l, align 8
  %i.aqt = load i32, ptr @hf_isakmp_cfg_attr_xauth_challenge, align 4
  %i.aqu = load ptr, ptr %i.bk, align 8
  %i.aqv = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.aqs, i32 noundef %i.aqt, ptr noundef %0, i32 noundef %i.ajn, i32 noundef %i.ajo, i32 noundef 0, ptr noundef %i.aqu, ptr noundef nonnull %i.m) ; 0 uses
  %i.aqw = load ptr, ptr %i.k, align 8
  %i.aqx = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aqw, ptr noundef nonnull @.str.885, ptr noundef %i.aqx)
  br label %.loopexit.i.i

bb.iv:                                            ; preds = %bb.hg
  %i.aqy = load ptr, ptr %i.l, align 8
  %i.aqz = load i32, ptr @hf_isakmp_cfg_attr_xauth_domain, align 4
  %i.ara = load ptr, ptr %i.bk, align 8
  %i.arb = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.aqy, i32 noundef %i.aqz, ptr noundef %0, i32 noundef %i.ajn, i32 noundef %i.ajo, i32 noundef 0, ptr noundef %i.ara, ptr noundef nonnull %i.m) ; 0 uses
  %i.arc = load ptr, ptr %i.k, align 8
  %i.ard = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.arc, ptr noundef nonnull @.str.885, ptr noundef %i.ard)
  br label %.loopexit.i.i

bb.iw:                                            ; preds = %bb.hg
  %i.are = load ptr, ptr %i.l, align 8
  %i.arf = load i32, ptr @hf_isakmp_cfg_attr_xauth_status, align 4
  %i.arg = call ptr @proto_tree_add_item(ptr noundef %i.are, i32 noundef %i.arf, ptr noundef %0, i32 noundef %i.ajn, i32 noundef %i.ajo, i32 noundef 0) ; 0 uses
  %i.arh = load ptr, ptr %i.k, align 8
  %i.ari = load ptr, ptr %i.bk, align 8
  %i.arj = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.ajn)
  %i.ark = zext i16 %i.arj to i32
  %i.arl = call ptr @val_to_str(ptr noundef %i.ari, i32 noundef %i.ark, ptr noundef nonnull @cfgattr_xauth_status, ptr noundef nonnull @.str.886)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.arh, ptr noundef nonnull @.str.885, ptr noundef %i.arl)
  br label %.loopexit.i.i

bb.ix:                                            ; preds = %bb.hg
  %i.arm = load ptr, ptr %i.l, align 8
  %i.arn = load i32, ptr @hf_isakmp_cfg_attr_xauth_next_pin, align 4
  %i.aro = load ptr, ptr %i.bk, align 8
  %i.arp = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.arm, i32 noundef %i.arn, ptr noundef %0, i32 noundef %i.ajn, i32 noundef %i.ajo, i32 noundef 0, ptr noundef %i.aro, ptr noundef nonnull %i.m) ; 0 uses
  %i.arq = load ptr, ptr %i.k, align 8
  %i.arr = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.arq, ptr noundef nonnull @.str.885, ptr noundef %i.arr)
  br label %.loopexit.i.i

bb.iy:                                            ; preds = %bb.hg
  %i.ars = load ptr, ptr %i.l, align 8
  %i.art = load i32, ptr @hf_isakmp_cfg_attr_xauth_answer, align 4
  %i.aru = load ptr, ptr %i.bk, align 8
  %i.arv = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.ars, i32 noundef %i.art, ptr noundef %0, i32 noundef %i.ajn, i32 noundef %i.ajo, i32 noundef 0, ptr noundef %i.aru, ptr noundef nonnull %i.m) ; 0 uses
  %i.arw = load ptr, ptr %i.k, align 8
  %i.arx = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.arw, ptr noundef nonnull @.str.885, ptr noundef %i.arx)
  br label %.loopexit.i.i

bb.iz:                                            ; preds = %bb.hg
  %i.ary = load ptr, ptr %i.l, align 8
  %i.arz = load i32, ptr @hf_isakmp_cfg_attr_fortinet_auto_negotiate, align 4
  %i.asa = call ptr @proto_tree_add_item(ptr noundef %i.ary, i32 noundef %i.arz, ptr noundef %0, i32 noundef %i.ajn, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.loopexit.i.i

bb.ja:                                            ; preds = %bb.hg
  %i.asb = load ptr, ptr %i.l, align 8
  %i.asc = load i32, ptr @hf_isakmp_cfg_attr_fortinet_keep_alive, align 4
  %i.asd = call ptr @proto_tree_add_item(ptr noundef %i.asb, i32 noundef %i.asc, ptr noundef %0, i32 noundef %i.ajn, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.loopexit.i.i

bb.jb:                                            ; preds = %bb.hg
  %i.ase = load ptr, ptr %i.l, align 8
  %i.asf = load i32, ptr @hf_isakmp_cfg_attr_fortinet_dns_suffix, align 4
  %i.asg = load ptr, ptr %i.bk, align 8
  %i.ash = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.ase, i32 noundef %i.asf, ptr noundef %0, i32 noundef %i.ajn, i32 noundef %i.ajo, i32 noundef 0, ptr noundef %i.asg, ptr noundef nonnull %i.m) ; 0 uses
  %i.asi = load ptr, ptr %i.k, align 8
  %i.asj = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.asi, ptr noundef nonnull @.str.885, ptr noundef %i.asj)
  br label %.loopexit.i.i

bb.jc:                                            ; preds = %bb.hg
  %i.ask = load ptr, ptr %i.l, align 8
  %i.asl = load i32, ptr @hf_isakmp_cfg_attr_unity_banner, align 4
  %i.asm = load ptr, ptr %i.bk, align 8
  %i.asn = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.ask, i32 noundef %i.asl, ptr noundef %0, i32 noundef %i.ajn, i32 noundef %i.ajo, i32 noundef 0, ptr noundef %i.asm, ptr noundef nonnull %i.m) ; 0 uses
  %i.aso = load ptr, ptr %i.k, align 8
  %i.asp = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aso, ptr noundef nonnull @.str.885, ptr noundef %i.asp)
  br label %.loopexit.i.i

bb.jd:                                            ; preds = %bb.hg
  %i.asq = load ptr, ptr %i.l, align 8
  %i.asr = load i32, ptr @hf_isakmp_cfg_attr_unity_save_passwd, align 4
  %i.ass = call ptr @proto_tree_add_item(ptr noundef %i.asq, i32 noundef %i.asr, ptr noundef %0, i32 noundef %i.ajn, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.loopexit.i.i

bb.je:                                            ; preds = %bb.hg
  %i.ast = load ptr, ptr %i.l, align 8
  %i.asu = load i32, ptr @hf_isakmp_cfg_attr_unity_split_exclude, align 4
  %i.asv = call ptr @proto_tree_add_item(ptr noundef %i.ast, i32 noundef %i.asu, ptr noundef %0, i32 noundef %i.ajn, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.loopexit.i.i

bb.jf:                                            ; preds = %bb.hg
  %i.asw = load ptr, ptr %i.l, align 8
  %i.asx = load i32, ptr @hf_isakmp_cfg_attr_unity_def_domain, align 4
  %i.asy = load ptr, ptr %i.bk, align 8
  %i.asz = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.asw, i32 noundef %i.asx, ptr noundef %0, i32 noundef %i.ajn, i32 noundef %i.ajo, i32 noundef 0, ptr noundef %i.asy, ptr noundef nonnull %i.m) ; 0 uses
  %i.ata = load ptr, ptr %i.k, align 8
  %i.atb = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ata, ptr noundef nonnull @.str.885, ptr noundef %i.atb)
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.in, %bb.il, %bb.ij, %bb.ig, %bb.ie, %bb.ic, %bb.ia, %bb.hy, %bb.hw, %bb.ht, %bb.hq, %bb.hn, %bb.hl, %bb.hi, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.im, %bb.ik, %bb.ii, %bb.ih, %bb.if, %bb.id, %bb.ib, %bb.hz, %bb.hx, %bb.hv, %bb.hu, %bb.hs, %bb.hr, %bb.hp, %bb.ho, %bb.hm, %bb.hk, %bb.hj, %bb.hh, %bb.hg
  %i.atc = add i32 %i.ajo, %i.ajm
  br label %dissect_config_attribute.exit.i

dissect_config_attribute.exit.i:                  ; preds = %.loopexit.i.i, %bb.hf, %bb.he, %.lr.ph.i178
  %.0161.i.i = phi i32 [ 4, %.lr.ph.i178 ], [ %i.atc, %.loopexit.i.i ], [ %i.ajm, %bb.hf ], [ %i.ajm, %bb.he ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  %i.atd = add i32 %.0161.i.i, %.146.i            ; 2 uses
  %i.ate = icmp ult i32 %i.atd, %i.ajb
  br i1 %i.ate, label %.lr.ph.i178, label %dissect_key_exch.exit, !llvm.loop !42

bb.jg:                                            ; preds = %bb.e
  call fastcc void @dissect_sa_kek(ptr noundef %0, ptr noundef %6, i32 noundef %i.cr, i32 noundef %i.cs, ptr noundef %i.cn)
  br label %dissect_key_exch.exit

bb.jh:                                            ; preds = %bb.e
  call fastcc void @dissect_sa_tek(ptr noundef %0, ptr noundef %6, i32 noundef %i.cr, i32 noundef %i.cs, ptr noundef %i.cn)
  br label %dissect_key_exch.exit

bb.ji:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.atf = add i32 %.0155259, %i.cp               ; 2 uses
  br i1 %i.bl, label %bb.jj, label %dissect_key_download.exit

bb.jj:                                            ; preds = %bb.ji
  %i.atg = load i32, ptr @hf_isakmp_kd_num_key_pkt, align 4
  %i.ath = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.cn, i32 noundef %i.atg, ptr noundef %0, i32 noundef %i.cr, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.e) ; 0 uses
  %i.ati = add i32 %.0155259, 6
  %i.atj = load i32, ptr @hf_isakmp_reserved, align 4
  %i.atk = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.atj, ptr noundef %0, i32 noundef %i.ati, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.atl = add i32 %.0155259, 8                   ; 2 uses
  %i.atm = load i32, ptr %i.e, align 4
  %i.atn = icmp ne i32 %i.atm, 0
  %i.ato = icmp ugt i32 %i.atf, %i.atl
  %i.atp = and i1 %i.ato, %i.atn
  br i1 %i.atp, label %.lr.ph65.i, label %dissect_key_download.exit

.lr.ph65.i:                                       ; preds = %bb.jj, %._crit_edge.i
  %.063.i = phi i32 [ %.2.lcssa.i, %._crit_edge.i ], [ %i.atl, %bb.jj ] ; 7 uses
  %i.atq = load i32, ptr @hf_isakmp_kd_payload, align 4
  %i.atr = add i32 %.063.i, 2                     ; 2 uses
  %i.ats = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.atr)
  %i.att = zext i16 %i.ats to i32
  %i.atu = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.atq, ptr noundef %0, i32 noundef %.063.i, i32 noundef %i.att, i32 noundef 0)
  %i.atv = load i32, ptr @ett_isakmp_kd, align 4
  %i.atw = call ptr @proto_item_add_subtree(ptr noundef %i.atu, i32 noundef %i.atv) ; 6 uses
  %i.atx = load i32, ptr @hf_isakmp_kdp_type, align 4
  %i.aty = call ptr @proto_tree_add_item(ptr noundef %i.atw, i32 noundef %i.atx, ptr noundef %0, i32 noundef %.063.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.atz = add nuw i32 %.063.i, 1
  %i.aua = load i32, ptr @hf_isakmp_reserved, align 4
  %i.aub = call ptr @proto_tree_add_item(ptr noundef %i.atw, i32 noundef %i.aua, ptr noundef %0, i32 noundef %i.atz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.auc = load i32, ptr @hf_isakmp_kdp_length, align 4
  %i.aud = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.atw, i32 noundef %i.auc, ptr noundef %0, i32 noundef %i.atr, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.f) ; 0 uses
  %i.aue = load i32, ptr %i.f, align 4
  %i.auf = add i32 %i.aue, %.063.i                ; 2 uses
  %i.aug = add i32 %.063.i, 4
  %i.auh = load i32, ptr @hf_isakmp_kdp_spi_size, align 4
  %i.aui = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.atw, i32 noundef %i.auh, ptr noundef %0, i32 noundef %i.aug, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.g) ; 0 uses
  %i.auj = add i32 %.063.i, 5                     ; 3 uses
  %i.auk = load i32, ptr %i.g, align 4            ; 2 uses
  %.not.i180 = icmp eq i32 %i.auk, 0
  br i1 %.not.i180, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %.lr.ph65.i
  %i.aul = load i32, ptr @hf_isakmp_kdp_spi, align 4
  %i.aum = call ptr @proto_tree_add_item(ptr noundef %i.atw, i32 noundef %i.aul, ptr noundef %0, i32 noundef %i.auj, i32 noundef %i.auk, i32 noundef 0) ; 0 uses
  %i.aun = load i32, ptr %i.g, align 4
  %i.auo = add i32 %i.aun, %i.auj
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %.lr.ph65.i
  %.1.i181 = phi i32 [ %i.auo, %bb.jk ], [ %i.auj, %.lr.ph65.i ] ; 3 uses
  %i.aup = icmp ult i32 %.1.i181, %i.auf
  br i1 %i.aup, label %.lr.ph.i182, label %._crit_edge.i

.lr.ph.i182:                                      ; preds = %bb.jl, %dissect_tek_key_attribute.exit.i
  %.262.i = phi i32 [ %i.avj, %dissect_tek_key_attribute.exit.i ], [ %.1.i181, %bb.jl ] ; 8 uses
  %hf_isakmp_tek_key_attr.sroa.0.0.copyload.i = load i32, ptr @hf_isakmp_tek_key_attr, align 8
  %hf_isakmp_tek_key_attr.sroa.4.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_isakmp_tek_key_attr, i64 4), align 4
  %hf_isakmp_tek_key_attr.sroa.5.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_isakmp_tek_key_attr, i64 8), align 8
  %hf_isakmp_tek_key_attr.sroa.6.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_isakmp_tek_key_attr, i64 12), align 4
  %hf_isakmp_tek_key_attr.sroa.7.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_isakmp_tek_key_attr, i64 16), align 8
  %i.auq = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.262.i) ; 2 uses
  %.not.i.i183 = icmp sgt i16 %i.auq, -1          ; 2 uses
  %i.aur = and i16 %i.auq, 32767
  %i.aus = zext nneg i16 %i.aur to i32            ; 3 uses
  br i1 %.not.i.i183, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %.lr.ph.i182
  %i.aut = add i32 %.262.i, 2
  %i.auu = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.aut)
  %i.auv = zext i16 %i.auu to i32
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %.lr.ph.i182
  %.061.i = phi i32 [ 4, %bb.jm ], [ 2, %.lr.ph.i182 ] ; 3 uses
  %storemerge.i.i = phi i32 [ %i.auv, %bb.jm ], [ 2, %.lr.ph.i182 ] ; 4 uses
  %i.auw = add nuw nsw i32 %storemerge.i.i, %.061.i ; 2 uses
  %i.aux = call ptr @proto_tree_add_item(ptr noundef %i.atw, i32 noundef %hf_isakmp_tek_key_attr.sroa.0.0.copyload.i, ptr noundef %0, i32 noundef %.262.i, i32 noundef %i.auw, i32 noundef 0) ; 3 uses
  %i.auy = load ptr, ptr %i.bk, align 8
  %i.auz = call ptr @rval_to_str_wmem(ptr noundef %i.auy, i32 noundef %i.aus, ptr noundef nonnull @tek_key_attr_type, ptr noundef nonnull @.str.888)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aux, ptr noundef nonnull @.str.889, i32 noundef %i.aus, i32 noundef %storemerge.i.i, ptr noundef %i.auz)
  %i.ava = load i32, ptr @ett_isakmp_attr, align 4
  %i.avb = call ptr @proto_item_add_subtree(ptr noundef %i.aux, i32 noundef %i.ava) ; 4 uses
  %i.avc = call ptr @proto_tree_add_item(ptr noundef %i.avb, i32 noundef %hf_isakmp_tek_key_attr.sroa.4.0.copyload.i, ptr noundef %0, i32 noundef %.262.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.avd = call ptr @proto_tree_add_uint(ptr noundef %i.avb, i32 noundef %hf_isakmp_tek_key_attr.sroa.5.0.copyload.i, ptr noundef %0, i32 noundef %.262.i, i32 noundef 2, i32 noundef %i.aus) ; 0 uses
  br i1 %.not.i.i183, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %i.ave = add i32 %.262.i, 2
  %i.avf = call ptr @proto_tree_add_item(ptr noundef %i.avb, i32 noundef %hf_isakmp_tek_key_attr.sroa.6.0.copyload.i, ptr noundef %0, i32 noundef %i.ave, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  %.not43.i.i = icmp eq i32 %storemerge.i.i, 0
  br i1 %.not43.i.i, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.avg = call ptr @expert_add_info(ptr noundef %6, ptr noundef %i.aux, ptr noundef nonnull @ei_isakmp_attribute_value_empty) ; 0 uses
  br label %dissect_tek_key_attribute.exit.i

bb.jr:                                            ; preds = %bb.jp
  %i.avh = add i32 %.061.i, %.262.i
  %i.avi = call ptr @proto_tree_add_item(ptr noundef %i.avb, i32 noundef %hf_isakmp_tek_key_attr.sroa.7.0.copyload.i, ptr noundef %0, i32 noundef %i.avh, i32 noundef %storemerge.i.i, i32 noundef 0) ; 0 uses
  br label %dissect_tek_key_attribute.exit.i

dissect_tek_key_attribute.exit.i:                 ; preds = %bb.jr, %bb.jq
  %.0.i.i = phi i32 [ %.061.i, %bb.jq ], [ %i.auw, %bb.jr ]
  %i.avj = add i32 %.0.i.i, %.262.i               ; 3 uses
  %i.avk = icmp ult i32 %i.avj, %i.auf
  br i1 %i.avk, label %.lr.ph.i182, label %._crit_edge.i, !llvm.loop !43

._crit_edge.i:                                    ; preds = %dissect_tek_key_attribute.exit.i, %bb.jl
  %.2.lcssa.i = phi i32 [ %.1.i181, %bb.jl ], [ %i.avj, %dissect_tek_key_attribute.exit.i ] ; 2 uses
  %i.avl = load i32, ptr %i.e, align 4
  %i.avm = add i32 %i.avl, -1                     ; 2 uses
  store i32 %i.avm, ptr %i.e, align 4
  %i.avn = icmp ne i32 %i.avm, 0
  %i.avo = icmp ugt i32 %i.atf, %.2.lcssa.i
  %i.avp = and i1 %i.avo, %i.avn
  br i1 %i.avp, label %.lr.ph65.i, label %dissect_key_download.exit, !llvm.loop !44

dissect_key_download.exit:                        ; preds = %._crit_edge.i, %bb.ji, %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %dissect_key_exch.exit

bb.js:                                            ; preds = %bb.e
  %.not.i184.a = icmp eq i32 %i.cs, 4
  br i1 %.not.i184.a, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.avq = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.cn, ptr noundef %6, ptr noundef nonnull @ei_isakmp_payload_bad_length, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.1077, i32 noundef range(i32 -4, 65532) %i.cs) ; 0 uses
  br label %dissect_key_exch.exit

bb.ju:                                            ; preds = %bb.js
  %i.avr = load i32, ptr @hf_isakmp_seq_seq, align 4
  %i.avs = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.avr, ptr noundef %0, i32 noundef %i.cr, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_key_exch.exit

bb.jv:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.avt = load i32, ptr @hf_isakmp_auth_meth, align 4
  %i.avu = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.cn, i32 noundef %i.avt, ptr noundef %0, i32 noundef %i.cr, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.avv = add i32 %.0155259, 5
  %i.avw = load i32, ptr @hf_isakmp_reserved, align 4
  %i.avx = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.avw, ptr noundef %0, i32 noundef %i.avv, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.avy = add i32 %.0155259, 8                   ; 2 uses
  %i.avz = add nsw i32 %i.cp, -8
  %i.awa = load i32, ptr @hf_isakmp_auth_data, align 4
  %i.awb = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.awa, ptr noundef %0, i32 noundef %i.avy, i32 noundef %i.avz, i32 noundef 0)
  %i.awc = load i32, ptr %i.c, align 4
  %i.awd = icmp eq i32 %i.awc, 14
  br i1 %i.awd, label %bb.jw, label %dissect_auth.exit

bb.jw:                                            ; preds = %bb.jv
  %i.awe = load i32, ptr @ett_isakmp_payload_digital_signature, align 4
  %i.awf = call ptr @proto_item_add_subtree(ptr noundef %i.awb, i32 noundef %i.awe) ; 3 uses
  %i.awg = load i32, ptr @hf_isakmp_auth_digital_sig_asn1_len, align 4
  %i.awh = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.awf, i32 noundef %i.awg, ptr noundef %0, i32 noundef %i.avy, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.d) ; 0 uses
  %i.awi = add nsw i32 %i.cp, -9                  ; 2 uses
  %i.awj = load i32, ptr %i.d, align 4            ; 3 uses
  %.not.i185 = icmp ne i32 %i.awj, 0
  %i.awk = icmp ult i32 %i.awj, %i.awi
  %or.cond.i186 = select i1 %.not.i185, i1 %i.awk, i1 false
  br i1 %or.cond.i186, label %bb.jx, label %dissect_auth.exit

bb.jx:                                            ; preds = %bb.jw
  %i.awl = add i32 %.0155259, 9                   ; 3 uses
  %i.awm = load i32, ptr @hf_isakmp_auth_digital_sig_asn1_data, align 4
  %i.awn = call ptr @proto_tree_add_item(ptr noundef %i.awf, i32 noundef %i.awm, ptr noundef %0, i32 noundef %i.awl, i32 noundef %i.awj, i32 noundef 0)
  %i.awo = load i32, ptr @ett_isakmp_payload_digital_signature_asn1_data, align 4
end_hunk_0
