Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ubx-galileo_e1b_inav?download=true
inline.NumInlined: 8
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dissect_ubx_gal_inav:bb.a
  %i.zl = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_npkt, align 4
  %i.zm = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ys, i32 noundef %i.zl, ptr noundef %i.ww, i32 noundef 129, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.q) ; 0 uses
  %i.zn = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_npkid, align 4
  %i.zo = call ptr @proto_tree_add_item(ptr noundef %i.ys, i32 noundef %i.zn, ptr noundef %i.ww, i32 noundef 129, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.zp = load i32, ptr %i.o, align 4             ; 3 uses
  %i.zq = add i32 %i.zp, -7
  %or.cond11 = icmp ult i32 %i.zq, 4
  br i1 %or.cond11, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.zr = load i32, ptr %i.q, align 4
  switch i32 %i.zr, label %bb.aw [
    i32 1, label %bb.av
    i32 4, label %bb.at
    i32 3, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.zs = mul nuw nsw i32 %i.zp, 104
  %i.zt = add nsw i32 %i.zs, -416
  br label %bb.av

bb.av:                                            ; preds = %bb.as, %bb.at, %bb.au
  %.0541 = phi i32 [ %i.zt, %bb.au ], [ 536, %bb.at ], [ 264, %bb.as ] ; 2 uses
  %i.zu = mul nuw nsw i32 %i.zp, 104
  %i.zv = add nsw i32 %i.zu, -416
  %i.zw = sub nsw i32 %i.zv, %.0541
  %i.zx = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_npk, align 4
  %i.zy = lshr i32 %.0541, 3                      ; 2 uses
  %i.zz = call ptr @proto_tree_add_item(ptr noundef %i.ys, i32 noundef %i.zx, ptr noundef %i.ww, i32 noundef 130, i32 noundef %i.zy, i32 noundef 0) ; 0 uses
  %i.aaa = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_p_dp, align 4
  %i.aab = add nuw nsw i32 %i.zy, 130
  %i.aac = lshr i32 %i.zw, 3
  %i.aad = call ptr @proto_tree_add_item(ptr noundef %i.ys, i32 noundef %i.aaa, ptr noundef %i.ww, i32 noundef %i.aab, i32 noundef %i.aac, i32 noundef 0) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.as, %bb.av, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #8
  br label %.thread

.thread:                                          ; preds = %.preheader598.5, %.preheader598.4, %.preheader598.3, %.preheader598.2, %.preheader598.1, %bb.ak, %bb.ao, %bb.ap, %bb.aw, %bb.ai, %bb.aj, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %.critedge

.critedge.critedge:                               ; preds = %.preheader599.preheader, %.preheader599.1, %.preheader599.2, %.preheader599.3, %.preheader599.4, %.preheader599.5, %.preheader599.6, %.preheader599.7, %.preheader599.8, %.preheader599.9, %.preheader599.10, %.preheader599.11, %.preheader599.12, %.preheader599.13, %.preheader599.14, %bb.o, %bb.k, %bb.n, %.loopexit601
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.critedge, %bb.g, %bb.f, %.thread
  %i.aae = load i32, ptr @ett_ubx_gal_inav_sar, align 4
  %i.aaf = call ptr @proto_tree_add_subtree(ptr noundef %i.v, ptr noundef %0, i32 noundef 23, i32 noundef 4, i32 noundef %i.aae, ptr noundef null, ptr noundef @.str.365) ; 4 uses
  %i.aag = load i32, ptr @hf_ubx_gal_inav_sar_start_bit, align 4
  %i.aah = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.aaf, i32 noundef %i.aag, ptr noundef %0, i32 noundef 23, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.aai = load i32, ptr @hf_ubx_gal_inav_sar_long_rlm, align 4
  %i.aaj = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.aaf, i32 noundef %i.aai, ptr noundef %0, i32 noundef 23, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.aak = load i32, ptr @hf_ubx_gal_inav_sar_rlm_data, align 4
  %i.aal = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.aaf, i32 noundef %i.aak, ptr noundef %0, i32 noundef 23, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.g) ; 0 uses
  br i1 %i.bc, label %bb.ax, label %bb.bq

bb.ax:                                            ; preds = %.critedge
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 76
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx, i8 0, i64 20, i1 false)
  %i.aam = load i8, ptr %3, align 1
  %i.aan = zext i8 %i.aam to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef align 8 dereferenceable(32) @__const.dissect_ubx_gal_inav.constellation.366, i64 32, i1 false)
  %i.aao = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aao, ptr noundef align 8 dereferenceable(32) @__const.dissect_ubx_gal_inav.type.367, i64 32, i1 false)
  %i.aap = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 6, ptr %i.aap, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i32 %i.aan, ptr %.sroa.545.0..sroa_idx, align 8
  %i.aaq = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aaq, ptr noundef align 8 dereferenceable(32) @__const.dissect_ubx_gal_inav.end.368, i64 32, i1 false)
  %i.aar = getelementptr i8, ptr %1, i64 20       ; 6 uses
  %i.aas = load i32, ptr %i.aar, align 4
  %i.aat = call ptr @find_conversation_full(i32 noundef %i.aas, ptr noundef nonnull %6) ; 7 uses
  %i.aau = icmp eq ptr %i.aat, null               ; 3 uses
  %i.aav = load i8, ptr %i.a, align 1, !range !12
  %i.aaw = trunc nuw i8 %i.aav to i1              ; 2 uses
  %or.cond17 = select i1 %i.aau, i1 %i.aaw, i1 false
  br i1 %or.cond17, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.aax = load i32, ptr %i.aar, align 4
  %i.aay = call ptr @conversation_new_full(i32 noundef %i.aax, ptr noundef nonnull %6) ; 2 uses
  %i.aaz = call ptr @wmem_file_scope()
  %i.aba = load i8, ptr %i.b, align 1, !range !12, !noundef !13
  %i.abb = trunc nuw i8 %i.aba to i1
  %i.abc = select i1 %i.abb, i64 96, i64 48
  %i.abd = call noalias ptr @wmem_alloc0(ptr noundef %i.aaz, i64 noundef %i.abc) #9 ; 5 uses
  %i.abe = load i32, ptr %i.aar, align 4
  store i32 %i.abe, ptr %i.abd, align 4
  %i.abf = load i8, ptr %i.b, align 1, !range !12, !noundef !13
  %i.abg = getelementptr i8, ptr %i.abd, i64 4
  store i8 %i.abf, ptr %i.abg, align 4
  %i.abh = load i32, ptr %i.g, align 4
  %i.abi = getelementptr i8, ptr %i.abd, i64 8
  store i32 %i.abh, ptr %i.abi, align 4
  %i.abj = load i32, ptr @proto_ubx_gal_inav, align 4
  call void @conversation_add_proto_data(ptr noundef %i.aay, i32 noundef %i.abj, ptr noundef %i.abd)
  br label %.loopexit

bb.az:                                            ; preds = %bb.ax
  %.not621 = xor i1 %i.aau, true
  %or.cond19 = select i1 %.not621, i1 %i.aaw, i1 false
  br i1 %or.cond19, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.abk = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.abl = call ptr @conversation_get_proto_data(ptr noundef nonnull %i.aat, i32 noundef %i.abk) ; 3 uses
  %.not584 = icmp eq ptr %i.abl, null
  br i1 %.not584, label %.thread593, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.abm = load i32, ptr %i.abl, align 4
  %i.abn = load i32, ptr %i.aar, align 4          ; 2 uses
  %.not585 = icmp eq i32 %i.abm, %i.abn
  br i1 %.not585, label %.loopexit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.abo = call ptr @conversation_new_full(i32 noundef %i.abn, ptr noundef nonnull %6) ; 2 uses
  %i.abp = call ptr @wmem_file_scope()
  %i.abq = load i8, ptr %i.b, align 1, !range !12, !noundef !13
  %i.abr = trunc nuw i8 %i.abq to i1
  %i.abs = select i1 %i.abr, i64 96, i64 48
  %i.abt = call noalias ptr @wmem_alloc0(ptr noundef %i.abp, i64 noundef %i.abs) #9 ; 5 uses
  %i.abu = load i32, ptr %i.aar, align 4
  store i32 %i.abu, ptr %i.abt, align 4
  %i.abv = load i8, ptr %i.b, align 1, !range !12, !noundef !13
  %i.abw = getelementptr i8, ptr %i.abt, i64 4
  store i8 %i.abv, ptr %i.abw, align 4
  %i.abx = load i32, ptr %i.g, align 4
  %i.aby = getelementptr i8, ptr %i.abt, i64 8
  store i32 %i.abx, ptr %i.aby, align 4
  %i.abz = load i32, ptr @proto_ubx_gal_inav, align 4
  call void @conversation_add_proto_data(ptr noundef %i.abo, i32 noundef %i.abz, ptr noundef %i.abt)
  br label %.loopexit

bb.bd:                                            ; preds = %bb.az
  br i1 %i.aau, label %.thread593, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.aca = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.acb = call ptr @conversation_get_proto_data(ptr noundef nonnull %i.aat, i32 noundef %i.aca) ; 6 uses
  %.not583 = icmp eq ptr %i.acb, null
  br i1 %.not583, label %.thread593, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.acc = getelementptr i8, ptr %i.acb, i64 4
  %i.acd = load i8, ptr %i.acc, align 4, !range !12, !noundef !13 ; 3 uses
  %i.ace = load i8, ptr %i.b, align 1, !range !12, !noundef !13
  %i.acf = icmp eq i8 %i.acd, %i.ace
  br i1 %i.acf, label %.preheader597, label %.loopexit

.preheader597:                                    ; preds = %bb.bf
  %i.acg = trunc nuw i8 %i.acd to i1
  %i.ach = select i1 %i.acg, i64 8, i64 4
  %i.aci = load i32, ptr %i.aar, align 4          ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %.preheader597
  %.7612 = phi i64 [ 0, %.preheader597 ], [ %i.acq, %bb.bi ] ; 2 uses
  %i.acj = getelementptr [12 x i8], ptr %i.acb, i64 %.7612 ; 4 uses
  %i.ack = load i32, ptr %i.acj, align 4          ; 2 uses
  %i.acl = icmp eq i32 %i.ack, 0
  br i1 %i.acl, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.aci, ptr %i.acj, align 4
  %i.acm = getelementptr i8, ptr %i.acj, i64 4
  store i8 %i.acd, ptr %i.acm, align 4
  %i.acn = load i32, ptr %i.g, align 4
  %i.aco = getelementptr i8, ptr %i.acj, i64 8
  store i32 %i.acn, ptr %i.aco, align 4
  br label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %i.acp = icmp eq i32 %i.ack, %i.aci
  %i.acq = add nuw nsw i64 %.7612, 1              ; 2 uses
  %exitcond618.not = icmp eq i64 %i.acq, %i.ach
  %or.cond653 = select i1 %i.acp, i1 true, i1 %exitcond618.not
  br i1 %or.cond653, label %.loopexit, label %bb.bg, !llvm.loop !10

.loopexit:                                        ; preds = %bb.bi, %bb.bc, %bb.bb, %bb.bf, %bb.bh, %bb.ay
  %.0548 = phi ptr [ %i.abd, %bb.ay ], [ %i.abt, %bb.bc ], [ %i.abl, %bb.bb ], [ %i.acb, %bb.bf ], [ %i.acb, %bb.bh ], [ %i.acb, %bb.bi ] ; 9 uses
  %.0540 = phi ptr [ %i.aay, %bb.ay ], [ %i.abo, %bb.bc ], [ %i.aat, %bb.bb ], [ %i.aat, %bb.bf ], [ %i.aat, %bb.bh ], [ %i.aat, %bb.bi ]
  %i.acr = icmp ne ptr %.0540, null
  %i.acs = icmp ne ptr %.0548, null
  %or.cond21 = and i1 %i.acs, %i.acr
  br i1 %or.cond21, label %.preheader, label %.thread593

.preheader:                                       ; preds = %.loopexit
  %i.act = load i8, ptr %i.b, align 1, !range !12, !noundef !13 ; 2 uses
  %i.acu = trunc nuw i8 %i.act to i1
  %i.acv = select i1 %i.acu, i64 8, i64 4         ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bn, %.preheader
  %.8613 = phi i64 [ 0, %.preheader ], [ %i.adl, %bb.bn ] ; 6 uses
  %i.acw = getelementptr [12 x i8], ptr %.0548, i64 %.8613
  %i.acx = load i32, ptr %i.acw, align 4
  %i.acy = icmp eq i32 %i.acx, 0
  br i1 %i.acy, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.acz = or disjoint i64 %.8613, 1              ; 2 uses
  %i.ada = getelementptr [12 x i8], ptr %.0548, i64 %i.acz
  %i.adb = load i32, ptr %i.ada, align 4
  %i.adc = icmp eq i32 %i.adb, 0
  br i1 %i.adc, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.add = or disjoint i64 %.8613, 2              ; 2 uses
  %i.ade = getelementptr [12 x i8], ptr %.0548, i64 %i.add
  %i.adf = load i32, ptr %i.ade, align 4
  %i.adg = icmp eq i32 %i.adf, 0
  br i1 %i.adg, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.adh = or disjoint i64 %.8613, 3              ; 2 uses
  %i.adi = getelementptr [12 x i8], ptr %.0548, i64 %i.adh
  %i.adj = load i32, ptr %i.adi, align 4
  %i.adk = icmp eq i32 %i.adj, 0
  br i1 %i.adk, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.adl = add nuw nsw i64 %.8613, 4              ; 2 uses
  %exitcond619.not.3 = icmp eq i64 %i.adl, %i.acv
  br i1 %exitcond619.not.3, label %bb.bo, label %bb.bj, !llvm.loop !11

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %.8.lcssa = phi i64 [ %.8613, %bb.bj ], [ %i.acv, %bb.bn ], [ %i.acz, %bb.bk ], [ %i.adh, %bb.bm ], [ %i.add, %bb.bl ]
  %.not = icmp eq i8 %i.act, 0
  %7 = icmp eq i64 %.8.lcssa, 4
  %or.cond23 = and i1 %7, %.not
  br i1 %or.cond23, label %bb.bp, label %.thread593

bb.bp:                                            ; preds = %bb.bo
  %i.adm = getelementptr i8, ptr %1, i64 416
  %i.adn = load ptr, ptr %i.adm, align 8
  %i.ado = call noalias dereferenceable_or_null(10) ptr @wmem_alloc(ptr noundef %i.adn, i64 noundef 10) #9 ; 11 uses
  %i.adp = getelementptr i8, ptr %.0548, i64 8
  %i.adq = load i32, ptr %i.adp, align 4
  %i.adr = shl i32 %i.adq, 12                     ; 2 uses
  %i.ads = getelementptr i8, ptr %.0548, i64 20
  %i.adt = load i32, ptr %i.ads, align 4          ; 2 uses
  %i.adu = lshr i32 %i.adt, 8                     ; 2 uses
  %i.adv = or i32 %i.adu, %i.adr                  ; 2 uses
  %i.adw = lshr i32 %i.adr, 24
  %i.adx = trunc nuw i32 %i.adw to i8
  store i8 %i.adx, ptr %i.ado, align 1
  %i.ady = lshr i32 %i.adv, 16
  %i.adz = trunc i32 %i.ady to i8
  %i.aea = getelementptr i8, ptr %i.ado, i64 1
  store i8 %i.adz, ptr %i.aea, align 1
  %i.aeb = lshr i32 %i.adv, 8
  %i.aec = trunc i32 %i.aeb to i8
  %i.aed = getelementptr i8, ptr %i.ado, i64 2
  store i8 %i.aec, ptr %i.aed, align 1
  %i.aee = trunc i32 %i.adu to i8
  %i.aef = getelementptr i8, ptr %i.ado, i64 3
  store i8 %i.aee, ptr %i.aef, align 1
  %i.aeg = getelementptr i8, ptr %i.ado, i64 4
  %i.aeh = shl i32 %i.adt, 24
  %i.aei = getelementptr i8, ptr %.0548, i64 32
  %i.aej = load i32, ptr %i.aei, align 4
  %i.aek = shl i32 %i.aej, 4                      ; 2 uses
  %i.ael = or i32 %i.aek, %i.aeh                  ; 2 uses
  %i.aem = getelementptr i8, ptr %.0548, i64 44
  %i.aen = load i32, ptr %i.aem, align 4          ; 3 uses
  %i.aeo = lshr i32 %i.aen, 16
  %i.aep = or i32 %i.ael, %i.aeo                  ; 2 uses
  %i.aeq = lshr i32 %i.ael, 24
  %i.aer = trunc nuw i32 %i.aeq to i8
  store i8 %i.aer, ptr %i.aeg, align 1
  %i.aes = lshr i32 %i.aek, 16
  %i.aet = trunc i32 %i.aes to i8
  %i.aeu = getelementptr i8, ptr %i.ado, i64 5
  store i8 %i.aet, ptr %i.aeu, align 1
  %i.aev = lshr i32 %i.aep, 8
  %i.aew = trunc i32 %i.aev to i8
  %i.aex = getelementptr i8, ptr %i.ado, i64 6
  store i8 %i.aew, ptr %i.aex, align 1
  %i.aey = trunc i32 %i.aep to i8
  %i.aez = getelementptr i8, ptr %i.ado, i64 7
  store i8 %i.aey, ptr %i.aez, align 1
  %i.afa = getelementptr i8, ptr %i.ado, i64 8
  %i.afb = lshr i32 %i.aen, 8
  %i.afc = trunc i32 %i.afb to i8
  store i8 %i.afc, ptr %i.afa, align 1
  %i.afd = trunc i32 %i.aen to i8
  %i.afe = getelementptr i8, ptr %i.ado, i64 9
  store i8 %i.afd, ptr %i.afe, align 1
  %i.aff = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.ado, i32 noundef 10, i32 noundef 10) ; 4 uses
  %i.afg = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.aff, ptr noundef @.str.369) ; 0 uses
  %i.afh = load i32, ptr @ett_ubx_gal_inav_sar_rlm, align 4
  %i.afi = call ptr @proto_tree_add_subtree(ptr noundef %i.aaf, ptr noundef %i.aff, i32 noundef 0, i32 noundef 10, i32 noundef %i.afh, ptr noundef null, ptr noundef @.str.370) ; 2 uses
  %i.afj = load i32, ptr @hf_ubx_gal_inav_sar_beacon_id, align 4
  %i.afk = call ptr @proto_tree_add_item(ptr noundef %i.afi, i32 noundef %i.afj, ptr noundef %i.aff, i32 noundef 0, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.afl = load i32, ptr @hf_ubx_gal_inav_sar_msg_code, align 4
  %i.afm = call ptr @proto_tree_add_item(ptr noundef %i.afi, i32 noundef %i.afl, ptr noundef %i.aff, i32 noundef 6, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread593

.thread593:                                       ; preds = %bb.be, %bb.ba, %bb.bd, %bb.bo, %bb.bp, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.bq

bb.bq:                                            ; preds = %.thread593, %.critedge
  %i.afn = load i32, ptr @hf_ubx_gal_inav_spare, align 4
  %i.afo = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.afn, ptr noundef %0, i32 noundef 26, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.d, %bb.bq, %bb.e
  %i.afp = load i32, ptr @hf_ubx_gal_inav_crc, align 4
  %i.afq = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.afp, ptr noundef %0, i32 noundef 26, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.afr = load i32, ptr @hf_ubx_gal_inav_ssp, align 4
  %i.afs = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.afr, ptr noundef %0, i32 noundef 28, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aft = load i32, ptr @hf_ubx_gal_inav_tail, align 4
  %i.afu = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.aft, ptr noundef %0, i32 noundef 30, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afv = load i32, ptr @hf_ubx_gal_inav_pad, align 4
  %i.afw = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.afv, ptr noundef %0, i32 noundef 31, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afx = load i32, ptr %i.d, align 4
  %i.afy = icmp eq i32 %i.afx, 0
  %i.afz = load i32, ptr %i.e, align 4
  %i.aga = icmp eq i32 %i.afz, 0
  %or.cond27 = select i1 %i.afy, i1 %i.aga, i1 false
  br i1 %or.cond27, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.agb = getelementptr i8, ptr %1, i64 416
  %i.agc = load ptr, ptr %i.agb, align 8
  %i.agd = call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.agc, i64 noundef 16) #9 ; 17 uses
  %i.age = getelementptr i8, ptr %i.agd, i64 14
  %i.agf = load i64, ptr %i.n, align 8            ; 2 uses
  %i.agg = lshr i64 %i.agf, 8
  %i.agh = trunc i64 %i.agg to i8
  store i8 %i.agh, ptr %i.age, align 1
  %i.agi = trunc i64 %i.agf to i8
  %i.agj = getelementptr i8, ptr %i.agd, i64 15
  store i8 %i.agi, ptr %i.agj, align 1
  %i.agk = getelementptr i8, ptr %i.agd, i64 6
  %i.agl = load i64, ptr %i.m, align 8            ; 7 uses
  %i.agm = lshr i64 %i.agl, 48
  %i.agn = getelementptr i8, ptr %i.agd, i64 7
  %i.ago = lshr i64 %i.agl, 40
  %i.agp = trunc i64 %i.ago to i8
  %i.agq = getelementptr i8, ptr %i.agd, i64 8
  store i8 %i.agp, ptr %i.agq, align 1
  %i.agr = lshr i64 %i.agl, 32
  %i.ags = trunc i64 %i.agr to i8
  %i.agt = getelementptr i8, ptr %i.agd, i64 9
  store i8 %i.ags, ptr %i.agt, align 1
  %i.agu = lshr i64 %i.agl, 24
  %i.agv = trunc i64 %i.agu to i8
  %i.agw = getelementptr i8, ptr %i.agd, i64 10
  store i8 %i.agv, ptr %i.agw, align 1
  %i.agx = lshr i64 %i.agl, 16
  %i.agy = trunc i64 %i.agx to i8
  %i.agz = getelementptr i8, ptr %i.agd, i64 11
  store i8 %i.agy, ptr %i.agz, align 1
  %i.aha = lshr i64 %i.agl, 8
  %i.ahb = trunc i64 %i.aha to i8
  %i.ahc = getelementptr i8, ptr %i.agd, i64 12
  store i8 %i.ahb, ptr %i.ahc, align 1
  %i.ahd = trunc i64 %i.agl to i8
  %i.ahe = getelementptr i8, ptr %i.agd, i64 13
  store i8 %i.ahd, ptr %i.ahe, align 1
  %i.ahf = load i32, ptr %i.c, align 4
  %i.ahg = zext i32 %i.ahf to i64
  %i.ahh = shl i64 %i.ahg, 58
  %i.ahi = load i64, ptr %i.l, align 8
  %i.ahj = shl i64 %i.ahi, 2                      ; 6 uses
  %i.ahk = or i64 %i.ahh, %i.ahj                  ; 2 uses
  %i.ahl = or i64 %i.ahk, %i.agm                  ; 2 uses
  %i.ahm = lshr i64 %i.ahk, 56
  %i.ahn = trunc nuw i64 %i.ahm to i8
  store i8 %i.ahn, ptr %i.agd, align 1
  %i.aho = lshr i64 %i.ahj, 48
  %i.ahp = trunc i64 %i.aho to i8
  %i.ahq = getelementptr i8, ptr %i.agd, i64 1
  store i8 %i.ahp, ptr %i.ahq, align 1
  %i.ahr = lshr i64 %i.ahj, 40
  %i.ahs = trunc i64 %i.ahr to i8
  %i.aht = getelementptr i8, ptr %i.agd, i64 2
  store i8 %i.ahs, ptr %i.aht, align 1
  %i.ahu = lshr i64 %i.ahj, 32
  %i.ahv = trunc i64 %i.ahu to i8
  %i.ahw = getelementptr i8, ptr %i.agd, i64 3
  store i8 %i.ahv, ptr %i.ahw, align 1
  %i.ahx = lshr i64 %i.ahj, 24
  %i.ahy = trunc i64 %i.ahx to i8
  %i.ahz = getelementptr i8, ptr %i.agd, i64 4
  store i8 %i.ahy, ptr %i.ahz, align 1
  %i.aia = lshr i64 %i.ahj, 16
  %i.aib = trunc i64 %i.aia to i8
  %i.aic = getelementptr i8, ptr %i.agd, i64 5
  store i8 %i.aib, ptr %i.aic, align 1
  %i.aid = lshr i64 %i.ahl, 8
  %i.aie = trunc i64 %i.aid to i8
  store i8 %i.aie, ptr %i.agk, align 1
  %i.aif = trunc i64 %i.ahl to i8
  store i8 %i.aif, ptr %i.agn, align 1
  %i.aig = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.agd, i32 noundef 16, i32 noundef 16) ; 3 uses
  %i.aih = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.aig, ptr noundef @.str.279) ; 0 uses
  %i.aii = load ptr, ptr @ubx_gal_inav_word_dissector_table, align 8
  %i.aij = load i32, ptr %i.c, align 4
  %i.aik = call i32 @dissector_try_uint(ptr noundef %i.aii, i32 noundef %i.aij, ptr noundef %i.aig, ptr noundef %1, ptr noundef %2)
  %.not.a = icmp eq i32 %i.aik, 0
  br i1 %.not.a, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ail = call i32 @call_data_dissector(ptr noundef %i.aig, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %bb.br
  %i.aim = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %i.aim
}

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector_table(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

end_hunk_0
