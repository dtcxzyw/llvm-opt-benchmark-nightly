Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ike?download=true
inline.NumInlined: 53
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dissect_payloads:bb.a

bb.hj:                                            ; preds = %bb.hg
  %i.aka = load ptr, ptr %i.l, align 8
  %i.akb = load i32, ptr @hf_isakmp_cfg_attr_internal_ip4_netmask, align 4
  %i.akc = call ptr @proto_tree_add_item(ptr noundef %i.aka, i32 noundef %i.akb, ptr noundef %0, i32 noundef %i.ajm, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.loopexit.i.i

bb.hk:                                            ; preds = %bb.hg
  %i.akd = and i32 %i.ajn, 3
  %i.ake = icmp eq i32 %i.akd, 0
  br i1 %i.ake, label %.lr.ph243.i.i, label %.loopexit.i.i

.lr.ph243.i.i:                                    ; preds = %bb.hk
  %i.akf = lshr exact i32 %i.ajn, 2
  %i.akg = load ptr, ptr %i.l, align 8
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hl, %.lr.ph243.i.i
  %.1242.i.i = phi i32 [ 0, %.lr.ph243.i.i ], [ %i.akk, %bb.hl ]
  %.1163241.i.i = phi i32 [ %i.ajm, %.lr.ph243.i.i ], [ %i.akj, %bb.hl ] ; 2 uses
  %i.akh = load i32, ptr @hf_isakmp_cfg_attr_internal_ip4_dns, align 4
  %i.aki = call ptr @proto_tree_add_item(ptr noundef %i.akg, i32 noundef %i.akh, ptr noundef %0, i32 noundef %.1163241.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.akj = add i32 %.1163241.i.i, 4
  %i.akk = add nuw nsw i32 %.1242.i.i, 1          ; 2 uses
  %exitcond282.not.i.i = icmp eq i32 %i.akk, %i.akf
  br i1 %exitcond282.not.i.i, label %.loopexit.i.i, label %bb.hl, !llvm.loop !29

bb.hm:                                            ; preds = %bb.hg
  %i.akl = and i32 %i.ajn, 3
  %i.akm = icmp eq i32 %i.akl, 0
  br i1 %i.akm, label %.lr.ph240.i.i, label %.loopexit.i.i

.lr.ph240.i.i:                                    ; preds = %bb.hm
  %i.akn = lshr exact i32 %i.ajn, 2
  %i.ako = load ptr, ptr %i.l, align 8
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hn, %.lr.ph240.i.i
  %.2239.i.i = phi i32 [ 0, %.lr.ph240.i.i ], [ %i.aks, %bb.hn ]
  %.2164238.i.i = phi i32 [ %i.ajm, %.lr.ph240.i.i ], [ %i.akr, %bb.hn ] ; 2 uses
  %i.akp = load i32, ptr @hf_isakmp_cfg_attr_internal_ip4_nbns, align 4
  %i.akq = call ptr @proto_tree_add_item(ptr noundef %i.ako, i32 noundef %i.akp, ptr noundef %0, i32 noundef %.2164238.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.akr = add i32 %.2164238.i.i, 4
  %i.aks = add nuw nsw i32 %.2239.i.i, 1          ; 2 uses
  %exitcond281.not.i.i = icmp eq i32 %i.aks, %i.akn
  br i1 %exitcond281.not.i.i, label %.loopexit.i.i, label %bb.hn, !llvm.loop !30

bb.ho:                                            ; preds = %bb.hg
  %i.akt = load ptr, ptr %i.l, align 8
  %i.aku = load i32, ptr @hf_isakmp_cfg_attr_internal_address_expiry, align 4
  %i.akv = call ptr @proto_tree_add_item(ptr noundef %i.akt, i32 noundef %i.aku, ptr noundef %0, i32 noundef %i.ajm, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.loopexit.i.i

bb.hp:                                            ; preds = %bb.hg
  %i.akw = and i32 %i.ajn, 3
  %i.akx = icmp eq i32 %i.akw, 0
  br i1 %i.akx, label %.lr.ph237.i.i, label %.loopexit.i.i

.lr.ph237.i.i:                                    ; preds = %bb.hp
  %i.aky = lshr exact i32 %i.ajn, 2
  %i.akz = load ptr, ptr %i.l, align 8
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hq, %.lr.ph237.i.i
  %.3236.i.i = phi i32 [ 0, %.lr.ph237.i.i ], [ %i.ald, %bb.hq ]
  %.3165235.i.i = phi i32 [ %i.ajm, %.lr.ph237.i.i ], [ %i.alc, %bb.hq ] ; 2 uses
  %i.ala = load i32, ptr @hf_isakmp_cfg_attr_internal_ip4_dhcp, align 4
  %i.alb = call ptr @proto_tree_add_item(ptr noundef %i.akz, i32 noundef %i.ala, ptr noundef %0, i32 noundef %.3165235.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.alc = add i32 %.3165235.i.i, 4
  %i.ald = add nuw nsw i32 %.3236.i.i, 1          ; 2 uses
  %exitcond280.not.i.i = icmp eq i32 %i.ald, %i.aky
  br i1 %exitcond280.not.i.i, label %.loopexit.i.i, label %bb.hq, !llvm.loop !31

bb.hr:                                            ; preds = %bb.hg
  %i.ale = load ptr, ptr %i.l, align 8
  %i.alf = load i32, ptr @hf_isakmp_cfg_attr_application_version, align 4
  %i.alg = load ptr, ptr %i.bk, align 8
  %i.alh = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.ale, i32 noundef %i.alf, ptr noundef %0, i32 noundef %i.ajm, i32 noundef %i.ajn, i32 noundef 0, ptr noundef %i.alg, ptr noundef nonnull %i.m) ; 0 uses
  %i.ali = load ptr, ptr %i.k, align 8
  %i.alj = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ali, ptr noundef nonnull @.str.885, ptr noundef %i.alj)
  br label %.loopexit.i.i

bb.hs:                                            ; preds = %bb.hg
  %i.alk = urem i32 %i.ajn, 17
  %i.all = icmp eq i32 %i.alk, 0
  br i1 %i.all, label %.preheader186.i.i, label %.loopexit.i.i

.preheader186.i.i:                                ; preds = %bb.hs
  %i.alm = udiv i32 %i.ajn, 17
  %.not253.i.i = icmp ult i32 %i.ajn, 17
  br i1 %.not253.i.i, label %.loopexit.i.i, label %.lr.ph234.i.i

.lr.ph234.i.i:                                    ; preds = %.preheader186.i.i
  %i.aln = load ptr, ptr %i.l, align 8            ; 2 uses
  br label %bb.ht

bb.ht:                                            ; preds = %bb.ht, %.lr.ph234.i.i
  %.4233.i.i = phi i32 [ 0, %.lr.ph234.i.i ], [ %i.alu, %bb.ht ]
  %.4166232.i.i = phi i32 [ %i.ajm, %.lr.ph234.i.i ], [ %i.alt, %bb.ht ] ; 3 uses
  %i.alo = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_address_ip, align 4
  %i.alp = call ptr @proto_tree_add_item(ptr noundef %i.aln, i32 noundef %i.alo, ptr noundef %0, i32 noundef %.4166232.i.i, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.alq = add i32 %.4166232.i.i, 16
  %i.alr = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_address_prefix, align 4
  %i.als = call ptr @proto_tree_add_item(ptr noundef %i.aln, i32 noundef %i.alr, ptr noundef %0, i32 noundef %i.alq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.alt = add i32 %.4166232.i.i, 17
  %i.alu = add nuw nsw i32 %.4233.i.i, 1          ; 2 uses
  %exitcond279.not.i.i = icmp eq i32 %i.alu, %i.alm
  br i1 %exitcond279.not.i.i, label %.loopexit.i.i, label %bb.ht, !llvm.loop !32

bb.hu:                                            ; preds = %bb.hg
  %i.alv = load ptr, ptr %i.l, align 8
  %i.alw = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_netmask, align 4
  %i.alx = call ptr @proto_tree_add_item(ptr noundef %i.alv, i32 noundef %i.alw, ptr noundef %0, i32 noundef %i.ajm, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %.loopexit.i.i

bb.hv:                                            ; preds = %bb.hg
  %i.aly = and i32 %i.ajn, 15
  %i.alz = icmp eq i32 %i.aly, 0
  br i1 %i.alz, label %.lr.ph231.i.i, label %.loopexit.i.i

.lr.ph231.i.i:                                    ; preds = %bb.hv
  %i.ama = lshr exact i32 %i.ajn, 4
  %i.amb = load ptr, ptr %i.l, align 8
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hw, %.lr.ph231.i.i
  %.5230.i.i = phi i32 [ 0, %.lr.ph231.i.i ], [ %i.amf, %bb.hw ]
  %.5167229.i.i = phi i32 [ %i.ajm, %.lr.ph231.i.i ], [ %i.ame, %bb.hw ] ; 2 uses
  %i.amc = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_dns, align 4
  %i.amd = call ptr @proto_tree_add_item(ptr noundef %i.amb, i32 noundef %i.amc, ptr noundef %0, i32 noundef %.5167229.i.i, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.ame = add i32 %.5167229.i.i, 16
  %i.amf = add nuw nsw i32 %.5230.i.i, 1          ; 2 uses
  %exitcond278.not.i.i = icmp eq i32 %i.amf, %i.ama
  br i1 %exitcond278.not.i.i, label %.loopexit.i.i, label %bb.hw, !llvm.loop !33

bb.hx:                                            ; preds = %bb.hg
  %i.amg = and i32 %i.ajn, 15
  %i.amh = icmp eq i32 %i.amg, 0
  br i1 %i.amh, label %.lr.ph228.i.i, label %.loopexit.i.i

.lr.ph228.i.i:                                    ; preds = %bb.hx
  %i.ami = lshr exact i32 %i.ajn, 4
  %i.amj = load ptr, ptr %i.l, align 8
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hy, %.lr.ph228.i.i
  %.6227.i.i = phi i32 [ 0, %.lr.ph228.i.i ], [ %i.amn, %bb.hy ]
  %.6168226.i.i = phi i32 [ %i.ajm, %.lr.ph228.i.i ], [ %i.amm, %bb.hy ] ; 2 uses
  %i.amk = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_nbns, align 4
  %i.aml = call ptr @proto_tree_add_item(ptr noundef %i.amj, i32 noundef %i.amk, ptr noundef %0, i32 noundef %.6168226.i.i, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.amm = add i32 %.6168226.i.i, 16
  %i.amn = add nuw nsw i32 %.6227.i.i, 1          ; 2 uses
  %exitcond277.not.i.i = icmp eq i32 %i.amn, %i.ami
  br i1 %exitcond277.not.i.i, label %.loopexit.i.i, label %bb.hy, !llvm.loop !34

bb.hz:                                            ; preds = %bb.hg
  %i.amo = and i32 %i.ajn, 15
  %i.amp = icmp eq i32 %i.amo, 0
  br i1 %i.amp, label %.lr.ph225.i.i, label %.loopexit.i.i

.lr.ph225.i.i:                                    ; preds = %bb.hz
  %i.amq = lshr exact i32 %i.ajn, 4
  %i.amr = load ptr, ptr %i.l, align 8
  br label %bb.ia

bb.ia:                                            ; preds = %bb.ia, %.lr.ph225.i.i
  %.7224.i.i = phi i32 [ 0, %.lr.ph225.i.i ], [ %i.amv, %bb.ia ]
  %.7169223.i.i = phi i32 [ %i.ajm, %.lr.ph225.i.i ], [ %i.amu, %bb.ia ] ; 2 uses
  %i.ams = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_dhcp, align 4
  %i.amt = call ptr @proto_tree_add_item(ptr noundef %i.amr, i32 noundef %i.ams, ptr noundef %0, i32 noundef %.7169223.i.i, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.amu = add i32 %.7169223.i.i, 16
  %i.amv = add nuw nsw i32 %.7224.i.i, 1          ; 2 uses
  %exitcond276.not.i.i = icmp eq i32 %i.amv, %i.amq
  br i1 %exitcond276.not.i.i, label %.loopexit.i.i, label %bb.ia, !llvm.loop !35

bb.ib:                                            ; preds = %bb.hg
  %i.amw = and i32 %i.ajn, 7
  %i.amx = icmp eq i32 %i.amw, 0
  br i1 %i.amx, label %.lr.ph222.i.i, label %.loopexit.i.i

.lr.ph222.i.i:                                    ; preds = %bb.ib
  %i.amy = lshr exact i32 %i.ajn, 3
  %i.amz = load ptr, ptr %i.l, align 8            ; 2 uses
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ic, %.lr.ph222.i.i
  %.8221.i.i = phi i32 [ 0, %.lr.ph222.i.i ], [ %i.ang, %bb.ic ]
  %.8170220.i.i = phi i32 [ %i.ajm, %.lr.ph222.i.i ], [ %i.anf, %bb.ic ] ; 3 uses
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
  %12 = trunc i32 %i.ajn to i1
  br i1 %12, label %.loopexit.i.i, label %.lr.ph219.i.i

.lr.ph219.i.i:                                    ; preds = %bb.id
  %i.anh = lshr exact i32 %i.ajn, 1
  %i.ani = load ptr, ptr %i.l, align 8
  %umax.i.i = call i32 @llvm.umax.i32(i32 %i.anh, i32 1)
  br label %bb.ie

bb.ie:                                            ; preds = %bb.ie, %.lr.ph219.i.i
  %.9218.i.i = phi i32 [ 0, %.lr.ph219.i.i ], [ %i.anm, %bb.ie ]
  %.9171217.i.i = phi i32 [ %i.ajm, %.lr.ph219.i.i ], [ %i.anl, %bb.ie ] ; 2 uses
  %i.anj = load i32, ptr @hf_isakmp_cfg_attr_supported_attributes, align 4
  %i.ank = call ptr @proto_tree_add_item(ptr noundef %i.ani, i32 noundef %i.anj, ptr noundef %0, i32 noundef %.9171217.i.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.anl = add i32 %.9171217.i.i, 2
  %i.anm = add nuw nsw i32 %.9218.i.i, 1          ; 2 uses
  %exitcond274.not.i.i = icmp eq i32 %i.anm, %umax.i.i
  br i1 %exitcond274.not.i.i, label %.loopexit.i.i, label %bb.ie, !llvm.loop !37

bb.if:                                            ; preds = %bb.hg
  %i.ann = urem i32 %i.ajn, 17
  %i.ano = icmp eq i32 %i.ann, 0
  br i1 %i.ano, label %.preheader198.i.i, label %.loopexit.i.i

.preheader198.i.i:                                ; preds = %bb.if
  %i.anp = udiv i32 %i.ajn, 17
  %.not247.i.i = icmp ult i32 %i.ajn, 17
  br i1 %.not247.i.i, label %.loopexit.i.i, label %.lr.ph216.i.i

.lr.ph216.i.i:                                    ; preds = %.preheader198.i.i
  %i.anq = load ptr, ptr %i.l, align 8            ; 2 uses
  br label %bb.ig

bb.ig:                                            ; preds = %bb.ig, %.lr.ph216.i.i
  %.10215.i.i = phi i32 [ 0, %.lr.ph216.i.i ], [ %i.anx, %bb.ig ]
  %.10172214.i.i = phi i32 [ %i.ajm, %.lr.ph216.i.i ], [ %i.anw, %bb.ig ] ; 3 uses
  %i.anr = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_subnet_ip, align 4
  %i.ans = call ptr @proto_tree_add_item(ptr noundef %i.anq, i32 noundef %i.anr, ptr noundef %0, i32 noundef %.10172214.i.i, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.ant = add i32 %.10172214.i.i, 16
  %i.anu = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_subnet_prefix, align 4
  %i.anv = call ptr @proto_tree_add_item(ptr noundef %i.anq, i32 noundef %i.anu, ptr noundef %0, i32 noundef %i.ant, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.anw = add i32 %.10172214.i.i, 17
  %i.anx = add nuw nsw i32 %.10215.i.i, 1         ; 2 uses
  %exitcond273.not.i.i = icmp eq i32 %i.anx, %i.anp
  br i1 %exitcond273.not.i.i, label %.loopexit.i.i, label %bb.ig, !llvm.loop !38

bb.ih:                                            ; preds = %bb.hg
  %i.any = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.anz = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_link_interface, align 4
  %i.aoa = call ptr @proto_tree_add_item(ptr noundef %i.any, i32 noundef %i.anz, ptr noundef %0, i32 noundef %i.ajm, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.aob = add i32 %i.ajm, 8
  %i.aoc = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_link_id, align 4
  %i.aod = add i32 %i.ajn, -8
  %i.aoe = call ptr @proto_tree_add_item(ptr noundef %i.any, i32 noundef %i.aoc, ptr noundef %0, i32 noundef %i.aob, i32 noundef %i.aod, i32 noundef 0) ; 0 uses
  br label %.loopexit.i.i

bb.ii:                                            ; preds = %bb.hg
  %i.aof = urem i32 %i.ajn, 17
  %i.aog = udiv i32 %i.ajn, 17
  %i.aoh = icmp ne i32 %i.aof, 0
  %.not.i.i179 = icmp ult i32 %i.ajn, 17
  %or.cond = or i1 %i.aoh, %.not.i.i179
  br i1 %or.cond, label %.loopexit.i.i, label %.lr.ph213.i.i

.lr.ph213.i.i:                                    ; preds = %bb.ii
  %i.aoi = load ptr, ptr %i.l, align 8            ; 2 uses
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ij, %.lr.ph213.i.i
  %.11212.i.i = phi i32 [ 0, %.lr.ph213.i.i ], [ %i.aop, %bb.ij ]
  %.11173211.i.i = phi i32 [ %i.ajm, %.lr.ph213.i.i ], [ %i.aoo, %bb.ij ] ; 3 uses
  %i.aoj = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_prefix_ip, align 4
  %i.aok = call ptr @proto_tree_add_item(ptr noundef %i.aoi, i32 noundef %i.aoj, ptr noundef %0, i32 noundef %.11173211.i.i, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.aol = add i32 %.11173211.i.i, 16
  %i.aom = load i32, ptr @hf_isakmp_cfg_attr_internal_ip6_prefix_length, align 4
  %i.aon = call ptr @proto_tree_add_item(ptr noundef %i.aoi, i32 noundef %i.aom, ptr noundef %0, i32 noundef %i.aol, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aoo = add i32 %.11173211.i.i, 17
  %i.aop = add nuw nsw i32 %.11212.i.i, 1         ; 2 uses
  %exitcond272.not.i.i = icmp eq i32 %i.aop, %i.aog
  br i1 %exitcond272.not.i.i, label %.loopexit.i.i, label %bb.ij, !llvm.loop !39

bb.ik:                                            ; preds = %bb.hg
  %i.aoq = and i32 %i.ajn, 3
  %i.aor = icmp eq i32 %i.aoq, 0
  br i1 %i.aor, label %.lr.ph210.i.i, label %.loopexit.i.i

.lr.ph210.i.i:                                    ; preds = %bb.ik
  %i.aos = lshr exact i32 %i.ajn, 2
  %i.aot = load ptr, ptr %i.l, align 8
  br label %bb.il

bb.il:                                            ; preds = %bb.il, %.lr.ph210.i.i
  %.12209.i.i = phi i32 [ 0, %.lr.ph210.i.i ], [ %i.aox, %bb.il ]
  %.12174208.i.i = phi i32 [ %i.ajm, %.lr.ph210.i.i ], [ %i.aow, %bb.il ] ; 2 uses
  %i.aou = load i32, ptr @hf_isakmp_cfg_attr_p_cscf_ip4_address, align 4
  %i.aov = call ptr @proto_tree_add_item(ptr noundef %i.aot, i32 noundef %i.aou, ptr noundef %0, i32 noundef %.12174208.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aow = add i32 %.12174208.i.i, 4
  %i.aox = add nuw nsw i32 %.12209.i.i, 1         ; 2 uses
  %exitcond271.not.i.i = icmp eq i32 %i.aox, %i.aos
  br i1 %exitcond271.not.i.i, label %.loopexit.i.i, label %bb.il, !llvm.loop !40

bb.im:                                            ; preds = %bb.hg
  %i.aoy = and i32 %i.ajn, 15
  %i.aoz = icmp eq i32 %i.aoy, 0
  br i1 %i.aoz, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.im
  %i.apa = lshr exact i32 %i.ajn, 4
  %i.apb = load ptr, ptr %i.l, align 8
  br label %bb.in

bb.in:                                            ; preds = %bb.in, %.lr.ph.i.i
  %.13207.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.apf, %bb.in ]
  %.13175206.i.i = phi i32 [ %i.ajm, %.lr.ph.i.i ], [ %i.ape, %bb.in ] ; 2 uses
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
  %i.apj = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.apg, i32 noundef %i.aph, ptr noundef %0, i32 noundef %i.ajm, i32 noundef %i.ajn, i32 noundef 0, ptr noundef %i.api, ptr noundef nonnull %i.m) ; 0 uses
  %i.apk = load ptr, ptr %i.k, align 8
  %i.apl = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.apk, ptr noundef nonnull @.str.885, ptr noundef %i.apl)
  br label %.loopexit.i.i

bb.ip:                                            ; preds = %bb.hg
  %i.apm = load ptr, ptr %i.l, align 8
  %i.apn = load i32, ptr @hf_isakmp_cfg_attr_xauth_type, align 4
  %i.apo = call ptr @proto_tree_add_item(ptr noundef %i.apm, i32 noundef %i.apn, ptr noundef %0, i32 noundef %i.ajm, i32 noundef %i.ajn, i32 noundef 0) ; 0 uses
  %i.app = load ptr, ptr %i.k, align 8
  %i.apq = load ptr, ptr %i.bk, align 8
  %i.apr = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.ajm)
  %i.aps = zext i16 %i.apr to i32
  %i.apt = call ptr @rval_to_str_wmem(ptr noundef %i.apq, i32 noundef %i.aps, ptr noundef nonnull @cfgattr_xauth_type, ptr noundef nonnull @.str.886)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.app, ptr noundef nonnull @.str.885, ptr noundef %i.apt)
  br label %.loopexit.i.i

bb.iq:                                            ; preds = %bb.hg
  %i.apu = load ptr, ptr %i.l, align 8
  %i.apv = load i32, ptr @hf_isakmp_cfg_attr_xauth_user_name, align 4
  %i.apw = load ptr, ptr %i.bk, align 8
  %i.apx = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.apu, i32 noundef %i.apv, ptr noundef %0, i32 noundef %i.ajm, i32 noundef %i.ajn, i32 noundef 0, ptr noundef %i.apw, ptr noundef nonnull %i.m) ; 0 uses
  %i.apy = load ptr, ptr %i.k, align 8
  %i.apz = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.apy, ptr noundef nonnull @.str.885, ptr noundef %i.apz)
  br label %.loopexit.i.i

bb.ir:                                            ; preds = %bb.hg
  %i.aqa = load ptr, ptr %i.l, align 8
  %i.aqb = load i32, ptr @hf_isakmp_cfg_attr_xauth_user_password, align 4
  %i.aqc = load ptr, ptr %i.bk, align 8
  %i.aqd = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.aqa, i32 noundef %i.aqb, ptr noundef %0, i32 noundef %i.ajm, i32 noundef %i.ajn, i32 noundef 0, ptr noundef %i.aqc, ptr noundef nonnull %i.m) ; 0 uses
  %i.aqe = load ptr, ptr %i.k, align 8
  %i.aqf = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aqe, ptr noundef nonnull @.str.885, ptr noundef %i.aqf)
  br label %.loopexit.i.i

bb.is:                                            ; preds = %bb.hg
  %i.aqg = load ptr, ptr %i.l, align 8
  %i.aqh = load i32, ptr @hf_isakmp_cfg_attr_xauth_passcode, align 4
  %i.aqi = load ptr, ptr %i.bk, align 8
  %i.aqj = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.aqg, i32 noundef %i.aqh, ptr noundef %0, i32 noundef %i.ajm, i32 noundef %i.ajn, i32 noundef 0, ptr noundef %i.aqi, ptr noundef nonnull %i.m) ; 0 uses
  %i.aqk = load ptr, ptr %i.k, align 8
  %i.aql = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aqk, ptr noundef nonnull @.str.885, ptr noundef %i.aql)
  br label %.loopexit.i.i

bb.it:                                            ; preds = %bb.hg
  %i.aqm = load ptr, ptr %i.l, align 8
  %i.aqn = load i32, ptr @hf_isakmp_cfg_attr_xauth_message, align 4
  %i.aqo = load ptr, ptr %i.bk, align 8
  %i.aqp = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.aqm, i32 noundef %i.aqn, ptr noundef %0, i32 noundef %i.ajm, i32 noundef %i.ajn, i32 noundef 0, ptr noundef %i.aqo, ptr noundef nonnull %i.m) ; 0 uses
  %i.aqq = load ptr, ptr %i.k, align 8
  %i.aqr = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aqq, ptr noundef nonnull @.str.885, ptr noundef %i.aqr)
  br label %.loopexit.i.i

bb.iu:                                            ; preds = %bb.hg
  %i.aqs = load ptr, ptr %i.l, align 8
  %i.aqt = load i32, ptr @hf_isakmp_cfg_attr_xauth_challenge, align 4
  %i.aqu = load ptr, ptr %i.bk, align 8
  %i.aqv = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.aqs, i32 noundef %i.aqt, ptr noundef %0, i32 noundef %i.ajm, i32 noundef %i.ajn, i32 noundef 0, ptr noundef %i.aqu, ptr noundef nonnull %i.m) ; 0 uses
  %i.aqw = load ptr, ptr %i.k, align 8
  %i.aqx = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aqw, ptr noundef nonnull @.str.885, ptr noundef %i.aqx)
  br label %.loopexit.i.i

bb.iv:                                            ; preds = %bb.hg
  %i.aqy = load ptr, ptr %i.l, align 8
  %i.aqz = load i32, ptr @hf_isakmp_cfg_attr_xauth_domain, align 4
  %i.ara = load ptr, ptr %i.bk, align 8
  %i.arb = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.aqy, i32 noundef %i.aqz, ptr noundef %0, i32 noundef %i.ajm, i32 noundef %i.ajn, i32 noundef 0, ptr noundef %i.ara, ptr noundef nonnull %i.m) ; 0 uses
  %i.arc = load ptr, ptr %i.k, align 8
  %i.ard = load ptr, ptr %i.m, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.arc, ptr noundef nonnull @.str.885, ptr noundef %i.ard)
  br label %.loopexit.i.i

bb.iw:                                            ; preds = %bb.hg
  %i.are = load ptr, ptr %i.l, align 8
  %i.arf = load i32, ptr @hf_isakmp_cfg_attr_xauth_status, align 4
  %i.arg = call ptr @proto_tree_add_item(ptr noundef %i.are, i32 noundef %i.arf, ptr noundef %0, i32 noundef %i.ajm, i32 noundef %i.ajn, i32 noundef 0) ; 0 uses
  %i.arh = load ptr, ptr %i.k, align 8
  %i.ari = load ptr, ptr %i.bk, align 8
  %i.arj = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.ajm)
  %i.ark = zext i16 %i.arj to i32
  %i.arl = call ptr @val_to_str(ptr noundef %i.ari, i32 noundef %i.ark, ptr noundef nonnull @cfgattr_xauth_status, ptr noundef nonnull @.str.886)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.arh, ptr noundef nonnull @.str.885, ptr noundef %i.arl)
  br label %.loopexit.i.i

bb.ix:                                            ; preds = %bb.hg
  %i.arm = load ptr, ptr %i.l, align 8
end_hunk_0
begin_hunk_1_@dissect_isakmp:bb.a
  %i.ba = load i32, ptr %i.az, align 4            ; 3 uses
  %i.bb = getelementptr i8, ptr %1, i64 216
  %i.bc = load ptr, ptr %i.bb, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  store i32 %i.ay, ptr %i.aq, align 8
  %i.bd = icmp eq i32 %i.ba, 0
  br i1 %i.bd, label %addresses_equal.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = sext i32 %i.ba to i64
  %i.bf = call ptr @wmem_memdup(ptr noundef %i.aw, ptr noundef %i.bc, i64 noundef %i.be) #23 ; 2 uses
  %i.bg = getelementptr i8, ptr %.0, i64 24
  store ptr %i.bf, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %.0, i64 16
  store ptr %i.bf, ptr %i.bh, align 8
  store i32 %i.ba, ptr %i.at, align 4
  br label %addresses_equal.exit

bb.o:                                             ; preds = %bb.h
  %i.bi = icmp eq i32 %i.ac, 2
  br i1 %i.bi, label %bb.p, label %addresses_equal.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.bj = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 0, i64 noundef 8) ; 0 uses
  %i.bk = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 8, i64 noundef 8) ; 0 uses
  store ptr %i.b, ptr %4, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.c, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 8, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 8, ptr %i.bn, align 8
  %i.bo = load ptr, ptr @ikev2_key_hash, align 8
  %i.bp = call ptr @g_hash_table_lookup(ptr noundef %i.bo, ptr noundef nonnull %4) ; 4 uses
  %.not222 = icmp eq ptr %i.bp, null
  br i1 %.not222, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = and i8 %i.ad, 8
  %i.br = getelementptr i8, ptr %1, i64 416
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noalias dereferenceable_or_null(32) ptr @wmem_alloc(ptr noundef %i.bs, i64 noundef 32) #22 ; 2 uses
  %.not223 = icmp eq i8 %i.bq, 0                  ; 2 uses
  %.in.v = select i1 %.not223, i64 56, i64 40
  %.in = getelementptr i8, ptr %i.bp, i64 %.in.v
  %i.bu = load ptr, ptr %.in, align 8
  %.in224.v = select i1 %.not223, i64 88, i64 72
  %.in224 = getelementptr i8, ptr %i.bp, i64 %.in224.v
  %i.bv = load ptr, ptr %.in224, align 8
  %i.bw = getelementptr i8, ptr %i.bp, i64 104
  %i.bx = load <2 x ptr>, ptr %i.bw, align 8
  %i.by = insertelement <4 x ptr> poison, ptr %i.bu, i64 0
  %i.bz = insertelement <4 x ptr> %i.by, ptr %i.bv, i64 1
  %i.ca = shufflevector <2 x ptr> %i.bx, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x ptr> %i.bz, <4 x ptr> %i.ca, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.cb, ptr %i.bt, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0210 = phi ptr [ %i.bt, %bb.q ], [ null, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %addresses_equal.exit

addresses_equal.exit:                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.o, %bb.r
  %.1211 = phi ptr [ null, %bb.o ], [ %.0210, %bb.r ], [ %.0, %bb.l ], [ %.0, %bb.k ], [ %.0, %bb.m ], [ %.0, %bb.n ] ; 3 uses
  %.1 = phi ptr [ null, %bb.o ], [ null, %bb.r ], [ %.0, %bb.l ], [ %.0, %bb.k ], [ %.0, %bb.m ], [ %.0, %bb.n ] ; 3 uses
  %i.cc = load i32, ptr @hf_isakmp_ispi, align 4
  %i.cd = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.cc, ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.ce = load i32, ptr @hf_isakmp_rspi, align 4
  %i.cf = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.ce, ptr noundef %0, i32 noundef 8, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.cg = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 16) ; 3 uses
  %i.ch = load i32, ptr @hf_isakmp_nextpayload, align 4
  %i.ci = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.ch, ptr noundef %0, i32 noundef 16, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cj = load i32, ptr @hf_isakmp_version, align 4
  %i.ck = and i32 %i.ab, 15
  %i.cl = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.q, i32 noundef %i.cj, ptr noundef %0, i32 noundef 17, i32 noundef 1, i32 noundef %i.ab, ptr noundef nonnull @.str.1771, i32 noundef %i.ac, i32 noundef %i.ck)
  %i.cm = load i32, ptr @ett_isakmp_version, align 4
  %i.cn = call ptr @proto_item_add_subtree(ptr noundef %i.cl, i32 noundef %i.cm) ; 2 uses
  %i.co = load i32, ptr @hf_isakmp_mjver, align 4
  %i.cp = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.co, ptr noundef %0, i32 noundef 17, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cq = load i32, ptr @hf_isakmp_mnver, align 4
  %i.cr = call ptr @proto_tree_add_item(ptr noundef %i.cn, i32 noundef %i.cq, ptr noundef %0, i32 noundef 17, i32 noundef 1, i32 noundef 0) ; 0 uses
  br i1 %i.ae, label %.sink.split, label %bb.s

bb.s:                                             ; preds = %addresses_equal.exit
  %i.cs = icmp eq i32 %i.ac, 2
  br i1 %i.cs, label %.sink.split, label %bb.t

.sink.split:                                      ; preds = %bb.s, %addresses_equal.exit
  %hf_isakmp_exchangetype_v2.sink = phi ptr [ @hf_isakmp_exchangetype_v1, %addresses_equal.exit ], [ @hf_isakmp_exchangetype_v2, %bb.s ]
  %exchange_v2_type.sink = phi ptr [ @exchange_v1_type, %addresses_equal.exit ], [ @exchange_v2_type, %bb.s ]
  %i.ct = load i32, ptr %hf_isakmp_exchangetype_v2.sink, align 4
  %i.cu = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.ct, ptr noundef %0, i32 noundef 18, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cv = load ptr, ptr %i.d, align 8
  %i.cw = getelementptr i8, ptr %1, i64 416
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = zext i8 %i.z to i32
  %i.cz = call ptr @val_to_str(ptr noundef %i.cx, i32 noundef %i.cy, ptr noundef nonnull %exchange_v2_type.sink, ptr noundef nonnull @.str.886)
  call void @col_add_str(ptr noundef %i.cv, i32 noundef 25, ptr noundef %i.cz)
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.s
  %i.da = load i32, ptr @hf_isakmp_flags, align 4
  %i.db = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.da, ptr noundef %0, i32 noundef 19, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.dc = load i32, ptr @ett_isakmp_flags, align 4
  %i.dd = call ptr @proto_item_add_subtree(ptr noundef %i.db, i32 noundef %i.dc) ; 6 uses
  %i.de = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 19) ; 5 uses
  br i1 %i.ae, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.df = load i32, ptr @hf_isakmp_flag_e, align 4
  %i.dg = call ptr @proto_tree_add_item(ptr noundef %i.dd, i32 noundef %i.df, ptr noundef %0, i32 noundef 19, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dh = load i32, ptr @hf_isakmp_flag_c, align 4
  %i.di = call ptr @proto_tree_add_item(ptr noundef %i.dd, i32 noundef %i.dh, ptr noundef %0, i32 noundef 19, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dj = load i32, ptr @hf_isakmp_flag_a, align 4
  %i.dk = call ptr @proto_tree_add_item(ptr noundef %i.dd, i32 noundef %i.dj, ptr noundef %0, i32 noundef 19, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.dl = icmp eq i32 %i.ac, 2
  br i1 %i.dl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dm = load i32, ptr @hf_isakmp_flag_i, align 4
  %i.dn = call ptr @proto_tree_add_item(ptr noundef %i.dd, i32 noundef %i.dm, ptr noundef %0, i32 noundef 19, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.do = load i32, ptr @hf_isakmp_flag_v, align 4
  %i.dp = call ptr @proto_tree_add_item(ptr noundef %i.dd, i32 noundef %i.do, ptr noundef %0, i32 noundef 19, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dq = load i32, ptr @hf_isakmp_flag_r, align 4
  %i.dr = call ptr @proto_tree_add_item(ptr noundef %i.dd, i32 noundef %i.dq, ptr noundef %0, i32 noundef 19, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ds = zext i8 %i.de to i32                    ; 3 uses
  %i.dt = and i32 %i.ds, 8
  %i.du = icmp ne i32 %i.dt, 0
  %i.dv = call ptr @tfs_get_string(i1 noundef zeroext %i.du, ptr noundef nonnull @flag_i)
  %i.dw = and i32 %i.ds, 16
  %i.dx = icmp ne i32 %i.dw, 0
  %i.dy = call ptr @tfs_get_string(i1 noundef zeroext %i.dx, ptr noundef nonnull @flag_v)
  %i.dz = and i32 %i.ds, 32
  %i.ea = icmp ne i32 %i.dz, 0
  %i.eb = call ptr @tfs_get_string(i1 noundef zeroext %i.ea, ptr noundef nonnull @tfs_response_request)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.db, ptr noundef nonnull @.str.1772, ptr noundef %i.dv, ptr noundef %i.dy, ptr noundef %i.eb)
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u
  %i.ec = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 20) ; 5 uses
  %i.ed = load i32, ptr @hf_isakmp_messageid, align 4
  %i.ee = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.ed, ptr noundef %0, i32 noundef 20, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ef = icmp eq i32 %i.ac, 2
  br i1 %i.ef, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eg = load ptr, ptr %i.d, align 8
  %i.eh = zext i8 %i.de to i32                    ; 2 uses
  %i.ei = and i32 %i.eh, 8
  %i.ej = icmp ne i32 %i.ei, 0
  %i.ek = call ptr @tfs_get_string(i1 noundef zeroext %i.ej, ptr noundef nonnull @flag_i)
  %i.el = and i32 %i.eh, 32
  %i.em = icmp ne i32 %i.el, 0
  %i.en = call ptr @tfs_get_string(i1 noundef zeroext %i.em, ptr noundef nonnull @tfs_response_request)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.eg, i32 noundef 25, ptr noundef nonnull @.str.1773, i32 noundef %i.ec, ptr noundef %i.ek, ptr noundef %i.en)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.eo = icmp ult i32 %i.y, 28
  br i1 %i.eo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ep = load i32, ptr @hf_isakmp_length, align 4
  %i.eq = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.q, i32 noundef %i.ep, ptr noundef %0, i32 noundef 24, i32 noundef 4, i32 noundef %i.y, ptr noundef nonnull @.str.1774, i32 noundef %i.y, i64 noundef 28) ; 0 uses
  %i.er = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.am

bb.ab:                                            ; preds = %bb.z
  %i.es = add i32 %i.y, -28                       ; 12 uses
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eu = load i32, ptr @hf_isakmp_length, align 4
  %i.ev = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.q, i32 noundef %i.eu, ptr noundef %0, i32 noundef 24, i32 noundef 4, i32 noundef %i.y, ptr noundef nonnull @.str.1775, i32 noundef %i.y) ; 0 uses
  %i.ew = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.am

bb.ad:                                            ; preds = %bb.ab
  call void @tvb_ensure_bytes_exist(ptr noundef %0, i32 noundef 24, i32 noundef %i.es)
  %i.ex = load i32, ptr @hf_isakmp_length, align 4
  %i.ey = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.ex, ptr noundef %0, i32 noundef 24, i32 noundef 4, i32 noundef 0) ; 0 uses
  br i1 %i.ae, label %bb.ae, label %.split

.split:                                           ; preds = %bb.ad
  %i.ez = and i8 %i.de, 32
  %.not226 = icmp eq i8 %i.ez, 0
  call fastcc void @dissect_payloads(ptr noundef %0, ptr noundef %i.q, i32 noundef %i.ac, i8 noundef zeroext %i.cg, i32 noundef 28, i32 noundef %i.es, ptr noundef %1, i32 noundef %i.ec, i1 noundef zeroext %.not226, ptr noundef %.1211)
  br label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %.not227 = trunc i8 %i.ad to i1
  br i1 %.not227, label %bb.af, label %.split213

.split213:                                        ; preds = %bb.ae
  %i.fa = and i8 %i.de, 32
  %.not228 = icmp eq i8 %i.fa, 0
  call fastcc void @dissect_payloads(ptr noundef %0, ptr noundef %i.q, i32 noundef 1, i8 noundef zeroext %i.cg, i32 noundef 28, i32 noundef %i.es, ptr noundef %1, i32 noundef %i.ec, i1 noundef zeroext %.not228, ptr noundef %.1211)
  br label %bb.al

bb.af:                                            ; preds = %bb.ae
  %.not229 = icmp eq i32 %i.es, 0
  br i1 %.not229, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fb = load i32, ptr @hf_isakmp_enc_data, align 4
  %i.fc = call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.fb, ptr noundef %0, i32 noundef 28, i32 noundef %i.es, i32 noundef 0) ; 2 uses
  %i.fd = icmp eq i32 %i.es, 1
  %i.fe = select i1 %i.fd, ptr @.str.1101, ptr @.str.1102
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.fc, ptr noundef nonnull @.str.1100, i32 noundef %i.es, ptr noundef nonnull %i.fe)
  %i.ff = getelementptr i8, ptr %1, i64 80
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = getelementptr i8, ptr %i.fg, i64 53
  %i.fi = load i16, ptr %i.fh, align 1
  %i.fj = and i16 %i.fi, 8
  %.not230 = icmp eq i16 %i.fj, 0
  br i1 %.not230, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.fk = call fastcc zeroext i1 @prepare_decrypt(ptr noundef %.1)
  br i1 %i.fk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fl = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 28, i32 noundef %i.es)
  call fastcc void @update_ivs(ptr noundef %1, ptr noundef %i.fl, i32 noundef %i.es, i32 noundef %i.ec, ptr noundef %.1)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ag
  %i.fm = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 28, i32 noundef %i.es)
  %i.fn = call fastcc ptr @decrypt_payload(ptr noundef %0, ptr noundef %1, ptr noundef %i.fm, i32 noundef %i.es, ptr noundef %.1) ; 3 uses
  %.not231 = icmp eq ptr %i.fn, null
  br i1 %.not231, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fo = load i32, ptr @ett_isakmp, align 4
  %i.fp = call ptr @proto_item_add_subtree(ptr noundef %i.fc, i32 noundef %i.fo)
  %i.fq = call i32 @tvb_reported_length(ptr noundef nonnull %i.fn)
  %i.fr = and i8 %i.de, 32
  %.not232 = icmp eq i8 %i.fr, 0
  call fastcc void @dissect_payloads(ptr noundef nonnull %i.fn, ptr noundef %i.fp, i32 noundef 1, i8 noundef zeroext %i.cg, i32 noundef 0, i32 noundef %i.fq, ptr noundef %1, i32 noundef %i.ec, i1 noundef zeroext %.not232, ptr noundef %.1211)
  br label %bb.al

bb.al:                                            ; preds = %.split, %.split213, %bb.af, %bb.ak, %bb.aj
  call void @proto_item_set_end(ptr noundef %i.o, ptr noundef %0, i32 noundef %i.y)
  br label %bb.am

bb.am:                                            ; preds = %bb.d, %bb.c, %bb.b, %bb.al, %bb.ac, %bb.aa, %bb.g
  %.0212 = phi i32 [ %i.y, %bb.al ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.g ], [ %i.er, %bb.aa ], [ %i.ew, %bb.ac ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.0212
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_iketcp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = tail call i64 @tvb_get_ntoh48(ptr noundef %0, i32 noundef 0)
  %i.c = icmp eq i64 %i.b, 80587634525008
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @col_set_str(ptr noundef %i.e, i32 noundef 35, ptr noundef nonnull @.str.1777)
  %i.f = load ptr, ptr %i.d, align 8
  tail call void @col_set_str(ptr noundef %i.f, i32 noundef 25, ptr noundef nonnull @.str.1778)
  %i.g = load i32, ptr @hf_isakmp_iketcp_magic, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 6, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2)
  %i.j = icmp eq i16 %i.i, 0
  %i.k = load i32, ptr @hf_isakmp_iketcp_length, align 4
  %i.l = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr @hf_isakmp_iketcp_non_esp_marker, align 4
  %i.n = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr %i.a, align 4
  %i.p = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 6, i32 noundef %i.o)
  %i.q = call i32 @dissect_isakmp(ptr noundef %i.p, ptr noundef %1, ptr noundef %2, ptr poison)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.a, align 4
  %i.s = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 2, i32 noundef %i.r)
  %i.t = load ptr, ptr @esp_handle, align 8
  %i.u = call i32 @call_dissector(ptr noundef %i.t, ptr noundef %i.s, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.v = load i32, ptr %i.a, align 4
  %i.w = add i32 %i.v, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.034 = phi i32 [ 6, %bb.b ], [ %i.q, %bb.d ], [ %i.w, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.034
}

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @uat_new(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef ptr @ikev1_uat_data_copy_cb(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 12), (16, 28)) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64
  %i.e = tail call ptr @g_memdup2(ptr noundef %i.a, i64 noundef %i.d) #22
  store ptr %i.e, ptr %0, align 8
  %i.f = load i32, ptr %i.b, align 8
  %i.g = getelementptr i8, ptr %0, i64 8
  store i32 %i.f, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64
  %i.m = tail call ptr @g_memdup2(ptr noundef %i.i, i64 noundef %i.l) #22
  %i.n = getelementptr i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8
  %i.o = load i32, ptr %i.j, align 8
  %i.p = getelementptr i8, ptr %0, i64 24
  store i32 %i.o, ptr %i.p, align 8
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @ikev1_uat_data_update_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.1779, i32 noundef 8, i32 noundef 16)
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %g_strdup_inline.exit, label %bb.d

g_strdup_inline.exit:                             ; preds = %bb.c
  %i.g = tail call noalias dereferenceable_or_null(26) ptr @g_malloc(i64 noundef 26) #20 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(26) %i.g, ptr noundef nonnull align 1 dereferenceable(26) @.str.1780, i64 noundef 26, i1 noundef false) #19
  br label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %i.e, 256
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.1781, i32 noundef 256, i32 noundef 512)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %g_strdup_inline.exit, %bb.e
  %.sink = phi ptr [ %i.i, %bb.e ], [ %i.g, %g_strdup_inline.exit ], [ %i.c, %bb.b ]
  store ptr %.sink, ptr %1, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ false, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @ikev1_uat_data_free_cb(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @g_free(ptr noundef %i.a)
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @g_free(ptr noundef %i.c)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_uat_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef ptr @ikev2_uat_data_copy_cb(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 12), (16, 28), (32, 52), (56, 68), (72, 84), (88, 100), (104, 120)) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
end_hunk_1
begin_hunk_2_@prepare_decrypt:bb.a

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @update_ivs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 1, -2147483648) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = getelementptr i8, ptr %4, i64 56         ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = zext i32 %3 to i64
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = getelementptr i8, ptr %4, i64 368        ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call i32 @g_hash_table_lookup_extended(ptr noundef %i.h, ptr noundef %i.f, ptr noundef null, ptr noundef nonnull %i.a)
  %.not.i = icmp eq i32 %i.i, 0
  %i.j = load ptr, ptr %i.g, align 8              ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call i32 @g_hash_table_steal(ptr noundef %i.j, ptr noundef %i.f) ; 0 uses
  %i.l = load ptr, ptr %i.a, align 8
  br label %get_iv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = call ptr @g_hash_table_lookup(ptr noundef %i.j, ptr noundef null)
  %i.n = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %3) #25, !srcloc !80
  store i32 %i.n, ptr %i.b, align 4
  %i.o = getelementptr i8, ptr %4, i64 64
  %i.p = load i32, ptr %i.o, align 8
  %i.q = call fastcc ptr @generate_iv(ptr noundef %i.m, i64 noundef %i.d, ptr noundef nonnull %i.b, i64 noundef 4, i32 noundef %i.p, i64 noundef %i.d)
  br label %get_iv.exit

get_iv.exit:                                      ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.l, %bb.b ], [ %i.q, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.r = call ptr @wmem_file_scope()
  %i.s = load i32, ptr @proto_isakmp, align 4
  call void @p_add_proto_data(ptr noundef %i.r, ptr noundef %0, i32 noundef %i.s, i32 noundef 1, ptr noundef %.0.i)
  %i.t = load i64, ptr %i.c, align 8              ; 4 uses
  %i.u = zext nneg i32 %2 to i64                  ; 2 uses
  %i.v = icmp ugt i64 %i.t, %i.u
  br i1 %i.v, label %set_next_iv.exit, label %bb.d

bb.d:                                             ; preds = %get_iv.exit
  %i.w = call ptr @wmem_file_scope()
  %i.x = call noalias ptr @wmem_alloc(ptr noundef %i.w, i64 noundef %i.t) #22 ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 %i.u
  %i.z = sub nsw i64 0, %i.t
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.x, ptr noundef readonly align 1 %i.aa, i64 noundef %i.t, i1 noundef false) #19
  br label %set_next_iv.exit

set_next_iv.exit:                                 ; preds = %get_iv.exit, %bb.d
  %.0.i7 = phi ptr [ %i.x, %bb.d ], [ null, %get_iv.exit ]
  %i.ab = load ptr, ptr %i.g, align 8
  %i.ac = call i32 @g_hash_table_insert(ptr noundef %i.ab, ptr noundef %i.f, ptr noundef %.0.i7) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef ptr @decrypt_payload(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 1, -2147483648) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = zext nneg i32 %3 to i64                  ; 4 uses
  %i.c = getelementptr i8, ptr %4, i64 56         ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ugt i64 %i.d, %i.b
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @wmem_file_scope()
  %i.g = load i32, ptr @proto_isakmp, align 4
  %i.h = tail call ptr @p_get_proto_data(ptr noundef %i.f, ptr noundef %1, i32 noundef %i.g, i32 noundef 1) ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %4, i64 44
  %i.j = load i32, ptr %i.i, align 4
  %i.k = call i32 @gcry_cipher_open(ptr noundef nonnull %i.a, i32 noundef %i.j, i32 noundef 3, i32 noundef 0)
  %.not25 = icmp eq i32 %i.k, 0
  br i1 %.not25, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %1, i64 416
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noalias ptr @wmem_alloc(ptr noundef %i.m, i64 noundef %i.b) #22 ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = load i64, ptr %i.c, align 8
  %i.q = call i32 @gcry_cipher_setiv(ptr noundef %i.o, ptr noundef nonnull %i.h, i64 noundef %i.p)
  %.not26 = icmp eq i32 %i.q, 0
  br i1 %.not26, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr i8, ptr %4, i64 108
  %i.t = getelementptr i8, ptr %4, i64 364
  %i.u = load i32, ptr %i.t, align 4
  %i.v = zext i32 %i.u to i64
  %i.w = call i32 @gcry_cipher_setkey(ptr noundef %i.r, ptr noundef %i.s, i64 noundef %i.v)
  %.not27 = icmp eq i32 %i.w, 0
  br i1 %.not27, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = call i32 @gcry_cipher_decrypt(ptr noundef %i.x, ptr noundef %i.n, i64 noundef %i.b, ptr noundef %2, i64 noundef %i.b)
  %.not28 = icmp eq i32 %i.y, 0
  %i.z = load ptr, ptr %i.a, align 8
  call void @gcry_cipher_close(ptr noundef %i.z)
  br i1 %.not28, label %bb.g, label %bb.h

.critedge:                                        ; preds = %bb.d, %bb.e
  %i.aa = load ptr, ptr %i.a, align 8
  call void @gcry_cipher_close(ptr noundef %i.aa)
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.n, i32 noundef %3, i32 noundef %3) ; 2 uses
  %i.ac = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.ab, ptr noundef nonnull @.str.1776) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.critedge, %bb.c, %bb.b, %bb.a, %bb.g
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ %i.ab, %bb.g ], [ null, %.critedge ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_end(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare ptr @wmem_memdup(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare i64 @gcry_cipher_get_algo_keylen(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noalias ptr @generate_iv(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 0, 4294967296) %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = call i32 @gcry_md_open(ptr noundef nonnull %i.a, i32 noundef %4, i32 noundef 0)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8
  call void @gcry_md_write(ptr noundef %i.c, ptr noundef %0, i64 noundef %1)
  %i.d = load ptr, ptr %i.a, align 8
  call void @gcry_md_write(ptr noundef %i.d, ptr noundef %2, i64 noundef %3)
  %i.e = call ptr @wmem_file_scope()
  %i.f = call noalias ptr @wmem_alloc(ptr noundef %i.e, i64 noundef %5) #22 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = call ptr @gcry_md_read(ptr noundef %i.g, i32 noundef %4)
  %i.i = icmp ne i64 %5, -1
  call void @llvm.assume(i1 %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.f, ptr noundef align 1 %i.h, i64 noundef %5, i1 noundef false) #19
  %i.j = load ptr, ptr %i.a, align 8
  call void @gcry_md_close(ptr noundef %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare void @p_add_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_lookup_extended(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_steal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @p_get_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @conversation_set_dissector_from_frame_number(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #16

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { allocsize(0) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { allocsize(1) }
attributes #23 = { allocsize(2) }
attributes #24 = { noreturn }
attributes #25 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{null}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, i1 false, !"memcpy.inline"}
!15 = distinct !{!15, !14, !"memcpy.inline: argument 1"}
!16 = distinct !{!16, !14, !"memcpy.inline: argument 0"}
!17 = distinct !{!17, i1 false, !"memcpy.inline"}
!18 = distinct !{!18, !17, !"memcpy.inline: argument 1"}
!19 = distinct !{!19, !17, !"memcpy.inline: argument 0"}
!20 = distinct !{!20, i1 false, !"memcpy.inline"}
!21 = distinct !{!21, !20, !"memcpy.inline: argument 1"}
!22 = distinct !{!22, !20, !"memcpy.inline: argument 0"}
!23 = distinct !{!23, i1 false, !"memcpy.inline"}
!24 = distinct !{!24, !23, !"memcpy.inline: argument 1"}
!25 = distinct !{!25, !23, !"memcpy.inline: argument 0"}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{null}
!47 = distinct !{null}
!48 = !{!16, !15}
!49 = !{!19, !18}
!50 = !{!22, !21}
!51 = !{!25, !24}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = distinct !{!54, !6}
!55 = distinct !{!55, !6}
!56 = distinct !{!56, !6}
!57 = distinct !{!57, !6}
!58 = distinct !{!58, i1 false, !"memcpy.inline"}
!59 = distinct !{!59, !58, !"memcpy.inline: argument 1"}
!60 = distinct !{!60, !58, !"memcpy.inline: argument 0"}
!61 = distinct !{!61, !6}
!62 = distinct !{!62, !6}
!63 = !{!60, !59}
!64 = distinct !{!64, !6}
!65 = distinct !{!65, !6}
!66 = distinct !{!66, i1 false, !"memcpy.inline"}
!67 = distinct !{!67, !66, !"memcpy.inline: argument 1"}
!68 = distinct !{!68, !66, !"memcpy.inline: argument 0"}
!69 = distinct !{!69, i1 false, !"memcpy.inline"}
!70 = distinct !{!70, !69, !"memcpy.inline: argument 1"}
!71 = distinct !{!71, !69, !"memcpy.inline: argument 0"}
!72 = !{!68, !67}
!73 = !{!71, !70}
!74 = distinct !{!74, !6, !78, !79}
!75 = distinct !{!75, !6, !79, !78}
!76 = distinct !{!76, !6, !78, !79}
!77 = distinct !{!77, !6, !79, !78}
!78 = !{!"llvm.loop.isvectorized", i32 1}
!79 = !{!"llvm.loop.unroll.runtime.disable"}
!80 = !{i64 2152484790}
end_hunk_2
