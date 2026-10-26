Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 280
begin_hunk_0_@ma_dr_mp3dec_decode_frame:bb.a
  %indvars.iv135.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next136.i.i, %ma_dr_mp3_L3_ldexp_q2.exit83.i.i ] ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv135.i.i
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !119
  %i.zv = zext i8 %i.zu to i32
  %i.zw = shl i32 %i.zv, %i.pj
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.lr.ph.i.i
  %.07.i81.i.i = phi float [ %i.zn, %.lr.ph.i.i ], [ %i.aag, %bb.bv ]
  %.0.i82.i.i = phi i32 [ %i.zw, %.lr.ph.i.i ], [ %i.aah, %bb.bv ] ; 2 uses
  %i.zx = tail call i32 @llvm.smin.i32(i32 %.0.i82.i.i, i32 120) ; 3 uses
  %i.zy = and i32 %i.zx, 3
  %i.zz = zext nneg i32 %i.zy to i64
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_L3_ldexp_q2.g_expfrac, i64 %i.zz
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !349
  %i.aac = ashr i32 %i.zx, 2
  %i.aad = lshr i32 1073741824, %i.aac
  %i.aae = uitofp nneg i32 %i.aad to float
  %i.aaf = fmul float %i.aab, %i.aae
  %i.aag = fmul float %.07.i81.i.i, %i.aaf        ; 2 uses
  %i.aah = sub nsw i32 %.0.i82.i.i, %i.zx         ; 2 uses
  %i.aai = icmp sgt i32 %i.aah, 0
  br i1 %i.aai, label %bb.bv, label %ma_dr_mp3_L3_ldexp_q2.exit83.i.i, !llvm.loop !2977

ma_dr_mp3_L3_ldexp_q2.exit83.i.i:                 ; preds = %bb.bv
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv135.i.i
  store float %i.aag, ptr %i.aaj, align 4, !tbaa !349
  %indvars.iv.next136.i.i = add nuw nsw i64 %indvars.iv135.i.i, 1 ; 2 uses
  %exitcond.not.i.i154 = icmp eq i64 %indvars.iv.next136.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i154, label %ma_dr_mp3_L3_decode_scalefactors.exit.i, label %.lr.ph.i.i, !llvm.loop !2978

ma_dr_mp3_L3_decode_scalefactors.exit.i:          ; preds = %ma_dr_mp3_L3_ldexp_q2.exit83.i.i, %ma_dr_mp3_L3_ldexp_q2.exit.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  %i.aak = getelementptr inbounds nuw [2304 x i8], ptr %i.nr, i64 %indvars.iv.i151 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.or, i64 10
  %i.aam = load i16, ptr %i.aal, align 2, !tbaa !1129 ; 2 uses
  %i.aan = load ptr, ptr %i.or, align 8, !tbaa !1130 ; 2 uses
  %i.aao = sdiv i32 %i.xj, 8
  %i.aap = sext i32 %i.aao to i64
  %i.aaq = getelementptr inbounds i8, ptr %i.op, i64 %i.aap ; 5 uses
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !119
  %i.aas = zext i8 %i.aar to i32
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaq, i64 1
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !119
  %i.aav = zext i8 %i.aau to i32
  %i.aaw = shl nuw nsw i32 %i.aas, 16
  %i.aax = shl nuw nsw i32 %i.aav, 8
  %i.aay = or disjoint i32 %i.aax, %i.aaw
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaq, i64 2
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !119
  %i.abb = zext i8 %i.aba to i32
  %i.abc = or disjoint i32 %i.aay, %i.abb
  %i.abd = shl nuw i32 %i.abc, 8
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aaq, i64 3
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !119
  %i.abg = zext i8 %i.abf to i32
  %i.abh = or disjoint i32 %i.abd, %i.abg
  %i.abi = and i32 %i.xj, 7
  %i.abj = shl i32 %i.abh, %i.abi                 ; 2 uses
  %i.abk = or i32 %i.xj, -8                       ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aaq, i64 4 ; 2 uses
  %.not421.i.i = icmp eq i16 %i.aam, 0
  br i1 %.not421.i.i, label %._crit_edge403.i.i, label %.lr.ph402.i.i

.lr.ph402.i.i:                                    ; preds = %ma_dr_mp3_L3_decode_scalefactors.exit.i
  %i.abm = zext i16 %i.aam to i32
  %i.abn = getelementptr inbounds nuw i8, ptr %i.or, i64 19
  %i.abo = getelementptr inbounds nuw i8, ptr %i.or, i64 22
  br label %bb.bw

bb.bw:                                            ; preds = %.critedge.i.i, %.lr.ph402.i.i
  %indvars.iv.i59.i = phi i64 [ 0, %.lr.ph402.i.i ], [ %indvars.iv.next.i60.i, %.critedge.i.i ] ; 3 uses
  %.0190400.i.i = phi ptr [ %i.aak, %.lr.ph402.i.i ], [ %.7.i.i, %.critedge.i.i ] ; 2 uses
  %.0202399.i.i = phi i32 [ %i.abk, %.lr.ph402.i.i ], [ %.13.i.i, %.critedge.i.i ] ; 2 uses
  %.0217398.i.i = phi i32 [ %i.abj, %.lr.ph402.i.i ], [ %.13230.i.i, %.critedge.i.i ] ; 2 uses
  %.0238397.i.i = phi ptr [ %i.abl, %.lr.ph402.i.i ], [ %.10248.i.i, %.critedge.i.i ] ; 2 uses
  %.0252396.i.i = phi ptr [ %i.aan, %.lr.ph402.i.i ], [ %.3255.i.i, %.critedge.i.i ] ; 2 uses
  %.0260395.i.i = phi i32 [ %i.abm, %.lr.ph402.i.i ], [ %.3263.i.i, %.critedge.i.i ] ; 2 uses
  %.0271393.i.i = phi ptr [ %i.nu, %.lr.ph402.i.i ], [ %.3274.i.i, %.critedge.i.i ] ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 %indvars.iv.i59.i
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !119 ; 2 uses
  %indvars.iv.next.i60.i = add nuw nsw i64 %indvars.iv.i59.i, 1
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abo, i64 %indvars.iv.i59.i
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !119
  %i.abt = zext i8 %i.abs to i32                  ; 2 uses
  %i.abu = zext i8 %i.abq to i64                  ; 2 uses
  %i.abv = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_mp3_L3_huffman.tabindex, i64 %i.abu
  %i.abw = load i16, ptr %i.abv, align 2, !tbaa !122
  %i.abx = sext i16 %i.abw to i64
  %i.aby = getelementptr inbounds [2 x i8], ptr @ma_dr_mp3_L3_huffman.tabs, i64 %i.abx ; 4 uses
  %i.abz = getelementptr inbounds nuw i8, ptr @ma_dr_mp3_L3_huffman.g_linbits, i64 %i.abu
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !119
  %i.acb = zext i8 %i.aca to i32                  ; 5 uses
  %.not304.i.i = icmp ult i8 %i.abq, 16
  br i1 %.not304.i.i, label %.preheader323.i.i, label %.preheader324.i.i

.preheader324.i.i:                                ; preds = %bb.bw
  %i.acc = sub nsw i32 32, %i.acb                 ; 2 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.ci, %.preheader324.i.i
  %.1272.i.i = phi ptr [ %i.ajx, %bb.ci ], [ %.0271393.i.i, %.preheader324.i.i ] ; 2 uses
  %.1261.i.i = phi i32 [ %i.ajy, %bb.ci ], [ %.0260395.i.i, %.preheader324.i.i ] ; 2 uses
  %.1253.i.i = phi ptr [ %i.ajw, %bb.ci ], [ %.0252396.i.i, %.preheader324.i.i ] ; 2 uses
  %.1239.i.i = phi ptr [ %.6244.lcssa.i.i, %bb.ci ], [ %.0238397.i.i, %.preheader324.i.i ]
  %.1218.i.i = phi i32 [ %.7224.lcssa.i.i, %bb.ci ], [ %.0217398.i.i, %.preheader324.i.i ]
  %.1203.i.i = phi i32 [ %.7209.lcssa.i.i, %bb.ci ], [ %.0202399.i.i, %.preheader324.i.i ]
  %.0200.i.i = phi i32 [ %i.aka, %bb.ci ], [ %i.abt, %.preheader324.i.i ] ; 2 uses
  %.1.i.i = phi ptr [ %i.air, %bb.ci ], [ %.0190400.i.i, %.preheader324.i.i ]
  %i.acd = load i8, ptr %.1253.i.i, align 1, !tbaa !119
  %i.ace = lshr i8 %i.acd, 1
  %i.acf = zext nneg i8 %i.ace to i32             ; 2 uses
  %i.acg = tail call i32 @llvm.umin.i32(i32 %.1261.i.i, i32 %i.acf)
  %i.ach = load float, ptr %.1272.i.i, align 4, !tbaa !349 ; 5 uses
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge362.i.i, %bb.bx
  %.2240.i.i = phi ptr [ %.1239.i.i, %bb.bx ], [ %.6244.lcssa.i.i, %._crit_edge362.i.i ] ; 5 uses
  %.2219.i.i = phi i32 [ %.1218.i.i, %bb.bx ], [ %.7224.lcssa.i.i, %._crit_edge362.i.i ] ; 3 uses
  %.0215.i.i = phi i32 [ %i.acg, %bb.bx ], [ %i.ajv, %._crit_edge362.i.i ]
  %.2204.i.i = phi i32 [ %.1203.i.i, %bb.bx ], [ %.7209.lcssa.i.i, %._crit_edge362.i.i ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %bb.bx ], [ %i.air, %._crit_edge362.i.i ] ; 3 uses
  %i.aci = lshr i32 %.2219.i.i, 27
  %.pn333.i.i = zext nneg i32 %i.aci to i64
  %.0196.in.in334.i.i = getelementptr inbounds nuw [2 x i8], ptr %i.aby, i64 %.pn333.i.i
  %.0196.in335.i.i = load i16, ptr %.0196.in.in334.i.i, align 2, !tbaa !122 ; 2 uses
  %.0196336.i.i = sext i16 %.0196.in335.i.i to i32 ; 2 uses
  %i.acj = icmp slt i16 %.0196.in335.i.i, 0
  br i1 %i.acj, label %.lr.ph.i63.i, label %._crit_edge.i.i

.lr.ph.i63.i:                                     ; preds = %bb.by, %.lr.ph.i63.i
  %.0196340.i.i = phi i32 [ %.0196.i.i, %.lr.ph.i63.i ], [ %.0196336.i.i, %bb.by ] ; 2 uses
  %.0198339.i.i = phi i32 [ %i.acm, %.lr.ph.i63.i ], [ 5, %bb.by ] ; 2 uses
  %.3205338.i.i = phi i32 [ %i.acl, %.lr.ph.i63.i ], [ %.2204.i.i, %bb.by ]
  %.3220337.i.i = phi i32 [ %i.ack, %.lr.ph.i63.i ], [ %.2219.i.i, %bb.by ]
  %i.ack = shl i32 %.3220337.i.i, %.0198339.i.i   ; 3 uses
  %i.acl = add nsw i32 %.3205338.i.i, %.0198339.i.i ; 2 uses
  %i.acm = and i32 %.0196340.i.i, 7               ; 2 uses
  %i.acn = sub nuw nsw i32 32, %i.acm
  %i.aco = lshr i32 %i.ack, %i.acn
  %i.acp = ashr i32 %.0196340.i.i, 3
  %i.acq = sub nsw i32 %i.aco, %i.acp
  %.pn.i.i = zext nneg i32 %i.acq to i64
  %.0196.in.in.i.i = getelementptr inbounds nuw [2 x i8], ptr %i.aby, i64 %.pn.i.i
  %.0196.in.i.i = load i16, ptr %.0196.in.in.i.i, align 2, !tbaa !122 ; 2 uses
  %.0196.i.i = sext i16 %.0196.in.i.i to i32      ; 2 uses
  %i.acr = icmp slt i16 %.0196.in.i.i, 0
  br i1 %i.acr, label %.lr.ph.i63.i, label %._crit_edge.i.i, !llvm.loop !2979

._crit_edge.i.i:                                  ; preds = %.lr.ph.i63.i, %bb.by
  %.3220.lcssa.i.i = phi i32 [ %.2219.i.i, %bb.by ], [ %i.ack, %.lr.ph.i63.i ]
  %.3205.lcssa.i.i = phi i32 [ %.2204.i.i, %bb.by ], [ %i.acl, %.lr.ph.i63.i ]
  %.0196.lcssa.i.i = phi i32 [ %.0196336.i.i, %bb.by ], [ %.0196.i.i, %.lr.ph.i63.i ] ; 3 uses
  %i.acs = lshr i32 %.0196.lcssa.i.i, 8           ; 2 uses
  %i.act = shl i32 %.3220.lcssa.i.i, %i.acs       ; 4 uses
  %i.acu = add nsw i32 %i.acs, %.3205.lcssa.i.i   ; 2 uses
  %i.acv = and i32 %.0196.lcssa.i.i, 15           ; 3 uses
  %i.acw = icmp eq i32 %i.acv, 15
  br i1 %i.acw, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %._crit_edge.i.i
  %i.acx = lshr i32 %i.act, %i.acc
  %i.acy = add i32 %i.acx, 15                     ; 6 uses
  %i.acz = shl i32 %i.act, %i.acb                 ; 3 uses
  %i.ada = add nsw i32 %i.acu, %i.acb             ; 7 uses
  %i.adb = icmp sgt i32 %i.ada, -1
  br i1 %i.adb, label %.lr.ph347.i.i.preheader, label %._crit_edge348.i.i

.lr.ph347.i.i.preheader:                          ; preds = %bb.bz
  %i.adc = lshr i32 %i.ada, 3
  %i.add = add nuw nsw i32 %i.adc, 1
  %xtraiter757 = and i32 %i.add, 3                ; 2 uses
  %lcmp.mod758.not = icmp eq i32 %xtraiter757, 0
  br i1 %lcmp.mod758.not, label %.lr.ph347.i.i.prol.loopexit, label %.lr.ph347.i.i.prol

.lr.ph347.i.i.prol:                               ; preds = %.lr.ph347.i.i.preheader, %.lr.ph347.i.i.prol
  %.5207345.i.i.prol = phi i32 [ %i.adj, %.lr.ph347.i.i.prol ], [ %i.ada, %.lr.ph347.i.i.preheader ] ; 2 uses
  %.5222344.i.i.prol = phi i32 [ %i.adi, %.lr.ph347.i.i.prol ], [ %i.acz, %.lr.ph347.i.i.preheader ]
  %.4242343.i.i.prol = phi ptr [ %i.ade, %.lr.ph347.i.i.prol ], [ %.2240.i.i, %.lr.ph347.i.i.preheader ] ; 2 uses
  %prol.iter759 = phi i32 [ %prol.iter759.next, %.lr.ph347.i.i.prol ], [ 0, %.lr.ph347.i.i.preheader ]
  %i.ade = getelementptr inbounds nuw i8, ptr %.4242343.i.i.prol, i64 1 ; 2 uses
  %i.adf = load i8, ptr %.4242343.i.i.prol, align 1, !tbaa !119
  %i.adg = zext i8 %i.adf to i32
  %i.adh = shl i32 %i.adg, %.5207345.i.i.prol
  %i.adi = or i32 %i.adh, %.5222344.i.i.prol      ; 3 uses
  %i.adj = add nsw i32 %.5207345.i.i.prol, -8     ; 3 uses
  %prol.iter759.next = add i32 %prol.iter759, 1   ; 2 uses
  %prol.iter759.cmp.not = icmp eq i32 %prol.iter759.next, %xtraiter757
  br i1 %prol.iter759.cmp.not, label %.lr.ph347.i.i.prol.loopexit, label %.lr.ph347.i.i.prol, !llvm.loop !2980

.lr.ph347.i.i.prol.loopexit:                      ; preds = %.lr.ph347.i.i.prol, %.lr.ph347.i.i.preheader
  %.5207345.i.i.unr = phi i32 [ %i.ada, %.lr.ph347.i.i.preheader ], [ %i.adj, %.lr.ph347.i.i.prol ]
  %.5222344.i.i.unr = phi i32 [ %i.acz, %.lr.ph347.i.i.preheader ], [ %i.adi, %.lr.ph347.i.i.prol ]
  %.4242343.i.i.unr = phi ptr [ %.2240.i.i, %.lr.ph347.i.i.preheader ], [ %i.ade, %.lr.ph347.i.i.prol ]
  %.lcssa704.unr = phi i32 [ poison, %.lr.ph347.i.i.preheader ], [ %i.adi, %.lr.ph347.i.i.prol ]
  %.lcssa703.unr = phi i32 [ poison, %.lr.ph347.i.i.preheader ], [ %i.adj, %.lr.ph347.i.i.prol ]
  %i.adk = icmp ult i32 %i.ada, 24
  br i1 %i.adk, label %._crit_edge348.i.loopexit.i, label %.lr.ph347.i.i

.lr.ph347.i.i:                                    ; preds = %.lr.ph347.i.i.prol.loopexit, %.lr.ph347.i.i
  %.5207345.i.i = phi i32 [ %i.aea, %.lr.ph347.i.i ], [ %.5207345.i.i.unr, %.lr.ph347.i.i.prol.loopexit ] ; 4 uses
  %.5222344.i.i = phi i32 [ %i.adz, %.lr.ph347.i.i ], [ %.5222344.i.i.unr, %.lr.ph347.i.i.prol.loopexit ]
  %.4242343.i.i = phi ptr [ %i.adu, %.lr.ph347.i.i ], [ %.4242343.i.i.unr, %.lr.ph347.i.i.prol.loopexit ] ; 5 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.4242343.i.i, i64 1
  %i.adm = load i8, ptr %.4242343.i.i, align 1, !tbaa !119
  %i.adn = zext i8 %i.adm to i32
  %i.ado = shl i32 %i.adn, %.5207345.i.i
  %i.adp = or i32 %i.ado, %.5222344.i.i
  %i.adq = getelementptr inbounds nuw i8, ptr %.4242343.i.i, i64 2
  %i.adr = load i8, ptr %i.adl, align 1, !tbaa !119
  %i.ads = zext i8 %i.adr to i32
  %7 = getelementptr inbounds nuw i8, ptr %.4242343.i.i, i64 3
  %8 = load i8, ptr %i.adq, align 1, !tbaa !119
  %9 = zext i8 %8 to i32
  %i.adt = add nsw i32 %.5207345.i.i, -24
  %i.adu = getelementptr inbounds nuw i8, ptr %.4242343.i.i, i64 4
  %i.adv = load i8, ptr %7, align 1, !tbaa !119
  %i.adw = zext i8 %i.adv to i32
  %i.adx = shl nuw nsw i32 %i.ads, 16
  %10 = shl nuw nsw i32 %9, 8
  %11 = or disjoint i32 %i.adx, %10
  %12 = or disjoint i32 %11, %i.adw
  %i.ady = shl i32 %12, %i.adt
  %i.adz = or i32 %i.ady, %i.adp                  ; 2 uses
  %i.aea = add nsw i32 %.5207345.i.i, -32         ; 2 uses
  %i.aeb = icmp sgt i32 %.5207345.i.i, 31
  br i1 %i.aeb, label %.lr.ph347.i.i, label %._crit_edge348.i.loopexit.i, !llvm.loop !2981

._crit_edge348.i.loopexit.i:                      ; preds = %.lr.ph347.i.i, %.lr.ph347.i.i.prol.loopexit
  %.lcssa704 = phi i32 [ %.lcssa704.unr, %.lr.ph347.i.i.prol.loopexit ], [ %i.adz, %.lr.ph347.i.i ]
  %.lcssa703 = phi i32 [ %.lcssa703.unr, %.lr.ph347.i.i.prol.loopexit ], [ %i.aea, %.lr.ph347.i.i ]
  %scevgep.i = getelementptr i8, ptr %.2240.i.i, i64 1
  %i.aec = lshr i32 %i.ada, 3
  %i.aed = zext nneg i32 %i.aec to i64
  %scevgep207.i = getelementptr i8, ptr %scevgep.i, i64 %i.aed
  br label %._crit_edge348.i.i

._crit_edge348.i.i:                               ; preds = %._crit_edge348.i.loopexit.i, %bb.bz
  %.4242.lcssa.i.i = phi ptr [ %.2240.i.i, %bb.bz ], [ %scevgep207.i, %._crit_edge348.i.loopexit.i ]
  %.5222.lcssa.i.i = phi i32 [ %i.acz, %bb.bz ], [ %.lcssa704, %._crit_edge348.i.loopexit.i ] ; 2 uses
  %.5207.lcssa.i.i = phi i32 [ %i.ada, %bb.bz ], [ %.lcssa703, %._crit_edge348.i.loopexit.i ]
  %i.aee = icmp slt i32 %i.acy, 129
  br i1 %i.aee, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %._crit_edge348.i.i
  %i.aef = sext i32 %i.acy to i64
  %i.aeg = getelementptr [4 x i8], ptr @ma_dr_mp3_g_pow43, i64 %i.aef
  %i.aeh = getelementptr i8, ptr %i.aeg, i64 64
  %i.aei = load float, ptr %i.aeh, align 4, !tbaa !349
  br label %ma_dr_mp3_L3_pow_43.exit.i.i

bb.cb:                                            ; preds = %._crit_edge348.i.i
  %i.aej = icmp samesign ult i32 %i.acy, 1024     ; 2 uses
  %i.aek = shl nuw nsw i32 %i.acy, 3
  %.014.i.i.i = select i1 %i.aej, i32 %i.aek, i32 %i.acy ; 4 uses
  %.0.i.i62.i = select i1 %i.aej, float 1.600000e+01, float 2.560000e+02
  %i.ael = shl nuw nsw i32 %.014.i.i.i, 1
  %i.aem = and i32 %i.ael, 64                     ; 3 uses
  %i.aen = and i32 %.014.i.i.i, 63
  %i.aeo = sub nsw i32 %i.aen, %i.aem
  %i.aep = sitofp i32 %i.aeo to float
  %i.aeq = and i32 %.014.i.i.i, 2147483584
  %i.aer = add nuw nsw i32 %i.aem, %i.aeq
  %i.aes = uitofp nneg i32 %i.aer to float
  %i.aet = fdiv float %i.aep, %i.aes              ; 2 uses
  %i.aeu = add nuw nsw i32 %i.aem, %.014.i.i.i
  %i.aev = lshr i32 %i.aeu, 6
  %i.aew = zext nneg i32 %i.aev to i64
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_g_pow43, i64 %i.aew
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 64
  %i.aez = load float, ptr %i.aey, align 4, !tbaa !349
  %i.afa = tail call float @llvm.fmuladd.f32(float %i.aet, float f0x3E638E39, float f0x3FAAAAAB)
  %i.afb = tail call float @llvm.fmuladd.f32(float %i.aet, float %i.afa, float 1.000000e+00)
  %i.afc = fmul float %i.afb, %i.aez
  %i.afd = fmul float %.0.i.i62.i, %i.afc
  br label %ma_dr_mp3_L3_pow_43.exit.i.i

ma_dr_mp3_L3_pow_43.exit.i.i:                     ; preds = %bb.cb, %bb.ca
  %.015.i.i.i = phi float [ %i.aei, %bb.ca ], [ %i.afd, %bb.cb ]
  %i.afe = fmul float %i.ach, %.015.i.i.i
  %.inv.i.i = icmp sgt i32 %.5222.lcssa.i.i, -1
  %i.aff = select i1 %.inv.i.i, i32 1, i32 -1
  %i.afg = sitofp i32 %i.aff to float
  %i.afh = fmul float %i.afe, %i.afg
  br label %bb.cd

bb.cc:                                            ; preds = %._crit_edge.i.i
  %i.afi = lshr i32 %i.act, 27
  %.not422.i.i = and i32 %i.afi, 16
  %i.afj = or disjoint i32 %.not422.i.i, %i.acv
  %i.afk = xor i32 %i.afj, 16
  %i.afl = zext nneg i32 %i.afk to i64
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_g_pow43, i64 %i.afl
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !349
  %i.afo = fmul float %i.ach, %i.afn
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %ma_dr_mp3_L3_pow_43.exit.i.i
  %storemerge.i.i = phi float [ %i.afo, %bb.cc ], [ %i.afh, %ma_dr_mp3_L3_pow_43.exit.i.i ]
  %.5243.i.i = phi ptr [ %.2240.i.i, %bb.cc ], [ %.4242.lcssa.i.i, %ma_dr_mp3_L3_pow_43.exit.i.i ] ; 5 uses
  %.6223.i.i = phi i32 [ %i.act, %bb.cc ], [ %.5222.lcssa.i.i, %ma_dr_mp3_L3_pow_43.exit.i.i ]
  %.6208.i.i = phi i32 [ %i.acu, %bb.cc ], [ %.5207.lcssa.i.i, %ma_dr_mp3_L3_pow_43.exit.i.i ]
  %.0195.i.i = phi i32 [ %i.acv, %bb.cc ], [ %i.acy, %ma_dr_mp3_L3_pow_43.exit.i.i ]
  store float %storemerge.i.i, ptr %.2.i.i, align 4, !tbaa !349
  %.not308.i.i = icmp ne i32 %.0195.i.i, 0
  %i.afp = zext i1 %.not308.i.i to i32            ; 2 uses
  %i.afq = shl i32 %.6223.i.i, %i.afp             ; 4 uses
  %i.afr = add nsw i32 %.6208.i.i, %i.afp         ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 4
  %i.aft = lshr i32 %.0196.lcssa.i.i, 4
  %i.afu = and i32 %i.aft, 15                     ; 3 uses
  %i.afv = icmp eq i32 %i.afu, 15
  br i1 %i.afv, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.afw = lshr i32 %i.afq, 27
  %.not422.1.i.i = and i32 %i.afw, 16
  %i.afx = or disjoint i32 %.not422.1.i.i, %i.afu
  %i.afy = xor i32 %i.afx, 16
  %i.afz = zext nneg i32 %i.afy to i64
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_g_pow43, i64 %i.afz
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !349
  %i.agc = fmul float %i.ach, %i.agb
  br label %.preheader322.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.agd = lshr i32 %i.afq, %i.acc
  %i.age = add i32 %i.agd, 15                     ; 6 uses
  %i.agf = shl i32 %i.afq, %i.acb                 ; 3 uses
  %i.agg = add nsw i32 %i.afr, %i.acb             ; 7 uses
  %i.agh = icmp sgt i32 %i.agg, -1
  br i1 %i.agh, label %.lr.ph347.1.i.i.preheader, label %._crit_edge348.1.i.i

.lr.ph347.1.i.i.preheader:                        ; preds = %bb.cf
  %i.agi = lshr i32 %i.agg, 3
  %i.agj = add nuw nsw i32 %i.agi, 1
  %xtraiter760 = and i32 %i.agj, 3                ; 2 uses
  %lcmp.mod761.not = icmp eq i32 %xtraiter760, 0
  br i1 %lcmp.mod761.not, label %.lr.ph347.1.i.i.prol.loopexit, label %.lr.ph347.1.i.i.prol

.lr.ph347.1.i.i.prol:                             ; preds = %.lr.ph347.1.i.i.preheader, %.lr.ph347.1.i.i.prol
  %.5207345.1.i.i.prol = phi i32 [ %i.agp, %.lr.ph347.1.i.i.prol ], [ %i.agg, %.lr.ph347.1.i.i.preheader ] ; 2 uses
  %.5222344.1.i.i.prol = phi i32 [ %i.ago, %.lr.ph347.1.i.i.prol ], [ %i.agf, %.lr.ph347.1.i.i.preheader ]
  %.4242343.1.i.i.prol = phi ptr [ %i.agk, %.lr.ph347.1.i.i.prol ], [ %.5243.i.i, %.lr.ph347.1.i.i.preheader ] ; 2 uses
  %prol.iter762 = phi i32 [ %prol.iter762.next, %.lr.ph347.1.i.i.prol ], [ 0, %.lr.ph347.1.i.i.preheader ]
  %i.agk = getelementptr inbounds nuw i8, ptr %.4242343.1.i.i.prol, i64 1 ; 2 uses
  %i.agl = load i8, ptr %.4242343.1.i.i.prol, align 1, !tbaa !119
  %i.agm = zext i8 %i.agl to i32
  %i.agn = shl i32 %i.agm, %.5207345.1.i.i.prol
  %i.ago = or i32 %i.agn, %.5222344.1.i.i.prol    ; 3 uses
  %i.agp = add nsw i32 %.5207345.1.i.i.prol, -8   ; 3 uses
  %prol.iter762.next = add i32 %prol.iter762, 1   ; 2 uses
  %prol.iter762.cmp.not = icmp eq i32 %prol.iter762.next, %xtraiter760
  br i1 %prol.iter762.cmp.not, label %.lr.ph347.1.i.i.prol.loopexit, label %.lr.ph347.1.i.i.prol, !llvm.loop !2982

.lr.ph347.1.i.i.prol.loopexit:                    ; preds = %.lr.ph347.1.i.i.prol, %.lr.ph347.1.i.i.preheader
  %.5207345.1.i.i.unr = phi i32 [ %i.agg, %.lr.ph347.1.i.i.preheader ], [ %i.agp, %.lr.ph347.1.i.i.prol ]
  %.5222344.1.i.i.unr = phi i32 [ %i.agf, %.lr.ph347.1.i.i.preheader ], [ %i.ago, %.lr.ph347.1.i.i.prol ]
  %.4242343.1.i.i.unr = phi ptr [ %.5243.i.i, %.lr.ph347.1.i.i.preheader ], [ %i.agk, %.lr.ph347.1.i.i.prol ]
  %.lcssa706.unr = phi i32 [ poison, %.lr.ph347.1.i.i.preheader ], [ %i.ago, %.lr.ph347.1.i.i.prol ]
  %.lcssa705.unr = phi i32 [ poison, %.lr.ph347.1.i.i.preheader ], [ %i.agp, %.lr.ph347.1.i.i.prol ]
  %i.agq = icmp ult i32 %i.agg, 24
  br i1 %i.agq, label %._crit_edge348.1.i.loopexit.i, label %.lr.ph347.1.i.i

.lr.ph347.1.i.i:                                  ; preds = %.lr.ph347.1.i.i.prol.loopexit, %.lr.ph347.1.i.i
  %.5207345.1.i.i = phi i32 [ %i.ahg, %.lr.ph347.1.i.i ], [ %.5207345.1.i.i.unr, %.lr.ph347.1.i.i.prol.loopexit ] ; 4 uses
  %.5222344.1.i.i = phi i32 [ %i.ahf, %.lr.ph347.1.i.i ], [ %.5222344.1.i.i.unr, %.lr.ph347.1.i.i.prol.loopexit ]
  %.4242343.1.i.i = phi ptr [ %i.aha, %.lr.ph347.1.i.i ], [ %.4242343.1.i.i.unr, %.lr.ph347.1.i.i.prol.loopexit ] ; 5 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %.4242343.1.i.i, i64 1
  %i.ags = load i8, ptr %.4242343.1.i.i, align 1, !tbaa !119
  %i.agt = zext i8 %i.ags to i32
  %i.agu = shl i32 %i.agt, %.5207345.1.i.i
  %i.agv = or i32 %i.agu, %.5222344.1.i.i
  %i.agw = getelementptr inbounds nuw i8, ptr %.4242343.1.i.i, i64 2
  %i.agx = load i8, ptr %i.agr, align 1, !tbaa !119
  %i.agy = zext i8 %i.agx to i32
  %13 = getelementptr inbounds nuw i8, ptr %.4242343.1.i.i, i64 3
  %14 = load i8, ptr %i.agw, align 1, !tbaa !119
  %15 = zext i8 %14 to i32
  %i.agz = add nsw i32 %.5207345.1.i.i, -24
  %i.aha = getelementptr inbounds nuw i8, ptr %.4242343.1.i.i, i64 4
  %i.ahb = load i8, ptr %13, align 1, !tbaa !119
  %i.ahc = zext i8 %i.ahb to i32
  %i.ahd = shl nuw nsw i32 %i.agy, 16
  %16 = shl nuw nsw i32 %15, 8
  %17 = or disjoint i32 %i.ahd, %16
  %18 = or disjoint i32 %17, %i.ahc
  %i.ahe = shl i32 %18, %i.agz
  %i.ahf = or i32 %i.ahe, %i.agv                  ; 2 uses
  %i.ahg = add nsw i32 %.5207345.1.i.i, -32       ; 2 uses
  %i.ahh = icmp sgt i32 %.5207345.1.i.i, 31
  br i1 %i.ahh, label %.lr.ph347.1.i.i, label %._crit_edge348.1.i.loopexit.i, !llvm.loop !2981

._crit_edge348.1.i.loopexit.i:                    ; preds = %.lr.ph347.1.i.i, %.lr.ph347.1.i.i.prol.loopexit
  %.lcssa706 = phi i32 [ %.lcssa706.unr, %.lr.ph347.1.i.i.prol.loopexit ], [ %i.ahf, %.lr.ph347.1.i.i ]
  %.lcssa705 = phi i32 [ %.lcssa705.unr, %.lr.ph347.1.i.i.prol.loopexit ], [ %i.ahg, %.lr.ph347.1.i.i ]
  %scevgep208.i = getelementptr i8, ptr %.5243.i.i, i64 1
  %i.ahi = lshr i32 %i.agg, 3
  %i.ahj = zext nneg i32 %i.ahi to i64
  %scevgep209.i = getelementptr i8, ptr %scevgep208.i, i64 %i.ahj
  br label %._crit_edge348.1.i.i

._crit_edge348.1.i.i:                             ; preds = %._crit_edge348.1.i.loopexit.i, %bb.cf
  %.4242.lcssa.1.i.i = phi ptr [ %.5243.i.i, %bb.cf ], [ %scevgep209.i, %._crit_edge348.1.i.loopexit.i ]
  %.5222.lcssa.1.i.i = phi i32 [ %i.agf, %bb.cf ], [ %.lcssa706, %._crit_edge348.1.i.loopexit.i ] ; 2 uses
  %.5207.lcssa.1.i.i = phi i32 [ %i.agg, %bb.cf ], [ %.lcssa705, %._crit_edge348.1.i.loopexit.i ]
  %i.ahk = icmp slt i32 %i.age, 129
  br i1 %i.ahk, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge348.1.i.i
  %i.ahl = icmp samesign ult i32 %i.age, 1024     ; 2 uses
  %i.ahm = shl nuw nsw i32 %i.age, 3
  %.014.i.1.i.i = select i1 %i.ahl, i32 %i.ahm, i32 %i.age ; 4 uses
  %.0.i.1.i.i = select i1 %i.ahl, float 1.600000e+01, float 2.560000e+02
  %i.ahn = shl nuw nsw i32 %.014.i.1.i.i, 1
  %i.aho = and i32 %i.ahn, 64                     ; 3 uses
  %i.ahp = and i32 %.014.i.1.i.i, 63
  %i.ahq = sub nsw i32 %i.ahp, %i.aho
  %i.ahr = sitofp i32 %i.ahq to float
  %i.ahs = and i32 %.014.i.1.i.i, 2147483584
  %i.aht = add nuw nsw i32 %i.aho, %i.ahs
  %i.ahu = uitofp nneg i32 %i.aht to float
  %i.ahv = fdiv float %i.ahr, %i.ahu              ; 2 uses
  %i.ahw = add nuw nsw i32 %i.aho, %.014.i.1.i.i
  %i.ahx = lshr i32 %i.ahw, 6
  %i.ahy = zext nneg i32 %i.ahx to i64
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_g_pow43, i64 %i.ahy
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 64
  %i.aib = load float, ptr %i.aia, align 4, !tbaa !349
  %i.aic = tail call float @llvm.fmuladd.f32(float %i.ahv, float f0x3E638E39, float f0x3FAAAAAB)
  %i.aid = tail call float @llvm.fmuladd.f32(float %i.ahv, float %i.aic, float 1.000000e+00)
  %i.aie = fmul float %i.aid, %i.aib
  %i.aif = fmul float %.0.i.1.i.i, %i.aie
  br label %ma_dr_mp3_L3_pow_43.exit.1.i.i

bb.ch:                                            ; preds = %._crit_edge348.1.i.i
  %i.aig = sext i32 %i.age to i64
  %i.aih = getelementptr [4 x i8], ptr @ma_dr_mp3_g_pow43, i64 %i.aig
  %i.aii = getelementptr i8, ptr %i.aih, i64 64
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !349
  br label %ma_dr_mp3_L3_pow_43.exit.1.i.i

ma_dr_mp3_L3_pow_43.exit.1.i.i:                   ; preds = %bb.ch, %bb.cg
  %.015.i.1.i.i = phi float [ %i.aij, %bb.ch ], [ %i.aif, %bb.cg ]
  %i.aik = fmul float %i.ach, %.015.i.1.i.i
  %.inv.1.i.i = icmp sgt i32 %.5222.lcssa.1.i.i, -1
  %i.ail = select i1 %.inv.1.i.i, i32 1, i32 -1
  %i.aim = sitofp i32 %i.ail to float
  %i.ain = fmul float %i.aik, %i.aim
  br label %.preheader322.i.i

.preheader322.i.i:                                ; preds = %ma_dr_mp3_L3_pow_43.exit.1.i.i, %bb.ce
  %storemerge.1.i.i = phi float [ %i.agc, %bb.ce ], [ %i.ain, %ma_dr_mp3_L3_pow_43.exit.1.i.i ]
  %.5243.1.i.i = phi ptr [ %.5243.i.i, %bb.ce ], [ %.4242.lcssa.1.i.i, %ma_dr_mp3_L3_pow_43.exit.1.i.i ] ; 4 uses
  %.6223.1.i.i = phi i32 [ %i.afq, %bb.ce ], [ %.5222.lcssa.1.i.i, %ma_dr_mp3_L3_pow_43.exit.1.i.i ]
  %.6208.1.i.i = phi i32 [ %i.afr, %bb.ce ], [ %.5207.lcssa.1.i.i, %ma_dr_mp3_L3_pow_43.exit.1.i.i ]
  %.0195.1.i.i = phi i32 [ %i.afu, %bb.ce ], [ %i.age, %ma_dr_mp3_L3_pow_43.exit.1.i.i ]
  store float %storemerge.1.i.i, ptr %i.afs, align 4, !tbaa !349
  %.not308.1.i.i = icmp ne i32 %.0195.1.i.i, 0
  %i.aio = zext i1 %.not308.1.i.i to i32          ; 2 uses
  %i.aip = shl i32 %.6223.1.i.i, %i.aio           ; 3 uses
  %i.aiq = add nsw i32 %.6208.1.i.i, %i.aio       ; 7 uses
  %i.air = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 8 ; 3 uses
  %i.ais = icmp sgt i32 %i.aiq, -1
  br i1 %i.ais, label %.lr.ph361.i.i.preheader, label %._crit_edge362.i.i

.lr.ph361.i.i.preheader:                          ; preds = %.preheader322.i.i
  %i.ait = lshr i32 %i.aiq, 3
  %i.aiu = add nuw nsw i32 %i.ait, 1
  %xtraiter763 = and i32 %i.aiu, 3                ; 2 uses
  %lcmp.mod764.not = icmp eq i32 %xtraiter763, 0
  br i1 %lcmp.mod764.not, label %.lr.ph361.i.i.prol.loopexit, label %.lr.ph361.i.i.prol

.lr.ph361.i.i.prol:                               ; preds = %.lr.ph361.i.i.preheader, %.lr.ph361.i.i.prol
  %.7209360.i.i.prol = phi i32 [ %i.aja, %.lr.ph361.i.i.prol ], [ %i.aiq, %.lr.ph361.i.i.preheader ] ; 2 uses
  %.7224359.i.i.prol = phi i32 [ %i.aiz, %.lr.ph361.i.i.prol ], [ %i.aip, %.lr.ph361.i.i.preheader ]
  %.6244358.i.i.prol = phi ptr [ %i.aiv, %.lr.ph361.i.i.prol ], [ %.5243.1.i.i, %.lr.ph361.i.i.preheader ] ; 2 uses
  %prol.iter765 = phi i32 [ %prol.iter765.next, %.lr.ph361.i.i.prol ], [ 0, %.lr.ph361.i.i.preheader ]
  %i.aiv = getelementptr inbounds nuw i8, ptr %.6244358.i.i.prol, i64 1 ; 2 uses
  %i.aiw = load i8, ptr %.6244358.i.i.prol, align 1, !tbaa !119
  %i.aix = zext i8 %i.aiw to i32
  %i.aiy = shl i32 %i.aix, %.7209360.i.i.prol
  %i.aiz = or i32 %i.aiy, %.7224359.i.i.prol      ; 3 uses
  %i.aja = add nsw i32 %.7209360.i.i.prol, -8     ; 3 uses
  %prol.iter765.next = add i32 %prol.iter765, 1   ; 2 uses
  %prol.iter765.cmp.not = icmp eq i32 %prol.iter765.next, %xtraiter763
  br i1 %prol.iter765.cmp.not, label %.lr.ph361.i.i.prol.loopexit, label %.lr.ph361.i.i.prol, !llvm.loop !2983

.lr.ph361.i.i.prol.loopexit:                      ; preds = %.lr.ph361.i.i.prol, %.lr.ph361.i.i.preheader
  %.7209360.i.i.unr = phi i32 [ %i.aiq, %.lr.ph361.i.i.preheader ], [ %i.aja, %.lr.ph361.i.i.prol ]
  %.7224359.i.i.unr = phi i32 [ %i.aip, %.lr.ph361.i.i.preheader ], [ %i.aiz, %.lr.ph361.i.i.prol ]
  %.6244358.i.i.unr = phi ptr [ %.5243.1.i.i, %.lr.ph361.i.i.preheader ], [ %i.aiv, %.lr.ph361.i.i.prol ]
  %.lcssa708.unr = phi i32 [ poison, %.lr.ph361.i.i.preheader ], [ %i.aiz, %.lr.ph361.i.i.prol ]
  %.lcssa707.unr = phi i32 [ poison, %.lr.ph361.i.i.preheader ], [ %i.aja, %.lr.ph361.i.i.prol ]
  %i.ajb = icmp ult i32 %i.aiq, 24
  br i1 %i.ajb, label %._crit_edge362.i.loopexit.i, label %.lr.ph361.i.i

.lr.ph361.i.i:                                    ; preds = %.lr.ph361.i.i.prol.loopexit, %.lr.ph361.i.i
  %.7209360.i.i = phi i32 [ %i.ajr, %.lr.ph361.i.i ], [ %.7209360.i.i.unr, %.lr.ph361.i.i.prol.loopexit ] ; 4 uses
  %.7224359.i.i = phi i32 [ %i.ajq, %.lr.ph361.i.i ], [ %.7224359.i.i.unr, %.lr.ph361.i.i.prol.loopexit ]
  %.6244358.i.i = phi ptr [ %i.ajl, %.lr.ph361.i.i ], [ %.6244358.i.i.unr, %.lr.ph361.i.i.prol.loopexit ] ; 5 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %.6244358.i.i, i64 1
  %i.ajd = load i8, ptr %.6244358.i.i, align 1, !tbaa !119
  %i.aje = zext i8 %i.ajd to i32
  %i.ajf = shl i32 %i.aje, %.7209360.i.i
  %i.ajg = or i32 %i.ajf, %.7224359.i.i
  %i.ajh = getelementptr inbounds nuw i8, ptr %.6244358.i.i, i64 2
  %i.aji = load i8, ptr %i.ajc, align 1, !tbaa !119
  %i.ajj = zext i8 %i.aji to i32
  %19 = getelementptr inbounds nuw i8, ptr %.6244358.i.i, i64 3
  %20 = load i8, ptr %i.ajh, align 1, !tbaa !119
  %21 = zext i8 %20 to i32
  %i.ajk = add nsw i32 %.7209360.i.i, -24
  %i.ajl = getelementptr inbounds nuw i8, ptr %.6244358.i.i, i64 4
  %i.ajm = load i8, ptr %19, align 1, !tbaa !119
  %i.ajn = zext i8 %i.ajm to i32
  %i.ajo = shl nuw nsw i32 %i.ajj, 16
  %22 = shl nuw nsw i32 %21, 8
  %23 = or disjoint i32 %i.ajo, %22
  %24 = or disjoint i32 %23, %i.ajn
  %i.ajp = shl i32 %24, %i.ajk
  %i.ajq = or i32 %i.ajp, %i.ajg                  ; 2 uses
  %i.ajr = add nsw i32 %.7209360.i.i, -32         ; 2 uses
  %i.ajs = icmp sgt i32 %.7209360.i.i, 31
  br i1 %i.ajs, label %.lr.ph361.i.i, label %._crit_edge362.i.loopexit.i, !llvm.loop !2984

._crit_edge362.i.loopexit.i:                      ; preds = %.lr.ph361.i.i, %.lr.ph361.i.i.prol.loopexit
  %.lcssa708 = phi i32 [ %.lcssa708.unr, %.lr.ph361.i.i.prol.loopexit ], [ %i.ajq, %.lr.ph361.i.i ]
  %.lcssa707 = phi i32 [ %.lcssa707.unr, %.lr.ph361.i.i.prol.loopexit ], [ %i.ajr, %.lr.ph361.i.i ]
  %scevgep210.i = getelementptr i8, ptr %.5243.1.i.i, i64 1
  %i.ajt = lshr i32 %i.aiq, 3
  %i.aju = zext nneg i32 %i.ajt to i64
  %scevgep211.i = getelementptr i8, ptr %scevgep210.i, i64 %i.aju
  br label %._crit_edge362.i.i

._crit_edge362.i.i:                               ; preds = %._crit_edge362.i.loopexit.i, %.preheader322.i.i
  %.6244.lcssa.i.i = phi ptr [ %.5243.1.i.i, %.preheader322.i.i ], [ %scevgep211.i, %._crit_edge362.i.loopexit.i ] ; 3 uses
  %.7224.lcssa.i.i = phi i32 [ %i.aip, %.preheader322.i.i ], [ %.lcssa708, %._crit_edge362.i.loopexit.i ] ; 3 uses
  %.7209.lcssa.i.i = phi i32 [ %i.aiq, %.preheader322.i.i ], [ %.lcssa707, %._crit_edge362.i.loopexit.i ] ; 3 uses
  %i.ajv = add nsw i32 %.0215.i.i, -1             ; 2 uses
  %.not307.i.i = icmp eq i32 %i.ajv, 0
  br i1 %.not307.i.i, label %bb.ci, label %bb.by, !llvm.loop !2985

bb.ci:                                            ; preds = %._crit_edge362.i.i
  %i.ajw = getelementptr inbounds nuw i8, ptr %.1253.i.i, i64 1 ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %.1272.i.i, i64 4 ; 2 uses
  %i.ajy = sub nsw i32 %.1261.i.i, %i.acf         ; 3 uses
  %i.ajz = icmp sgt i32 %i.ajy, 0
  %i.aka = add nsw i32 %.0200.i.i, -1
  %i.akb = icmp sgt i32 %.0200.i.i, 0
  %or.cond.i.i155 = select i1 %i.ajz, i1 %i.akb, i1 false
  br i1 %or.cond.i.i155, label %bb.bx, label %.critedge.i.i, !llvm.loop !2986

.preheader323.i.i:                                ; preds = %bb.bw, %bb.ck
  %.2273.i.i = phi ptr [ %i.amy, %bb.ck ], [ %.0271393.i.i, %bb.bw ] ; 2 uses
  %.2262.i.i = phi i32 [ %i.amz, %bb.ck ], [ %.0260395.i.i, %bb.bw ] ; 2 uses
  %.2254.i.i = phi ptr [ %i.amx, %bb.ck ], [ %.0252396.i.i, %bb.bw ] ; 2 uses
  %.7245.i.i = phi ptr [ %.9247.lcssa.i.i, %bb.ck ], [ %.0238397.i.i, %bb.bw ]
  %.8225.i.i = phi i32 [ %.12229.lcssa.i.i, %bb.ck ], [ %.0217398.i.i, %bb.bw ]
  %.8210.i.i = phi i32 [ %.12.lcssa.i.i, %bb.ck ], [ %.0202399.i.i, %bb.bw ]
  %.1201.i.i = phi i32 [ %i.anb, %bb.ck ], [ %i.abt, %bb.bw ] ; 2 uses
  %.4.i.i = phi ptr [ %i.als, %bb.ck ], [ %.0190400.i.i, %bb.bw ]
  %i.akc = load i8, ptr %.2254.i.i, align 1, !tbaa !119
  %i.akd = lshr i8 %i.akc, 1
  %i.ake = zext nneg i8 %i.akd to i32             ; 2 uses
  %i.akf = tail call i32 @llvm.umin.i32(i32 %.2262.i.i, i32 %i.ake)
  %i.akg = load float, ptr %.2273.i.i, align 4, !tbaa !349 ; 3 uses
  br label %bb.cj

bb.cj:                                            ; preds = %._crit_edge389.i.i, %.preheader323.i.i
  %.8246.i.i = phi ptr [ %.7245.i.i, %.preheader323.i.i ], [ %.9247.lcssa.i.i, %._crit_edge389.i.i ] ; 4 uses
  %.9226.i.i = phi i32 [ %.8225.i.i, %.preheader323.i.i ], [ %.12229.lcssa.i.i, %._crit_edge389.i.i ] ; 3 uses
  %.1216.i.i = phi i32 [ %i.akf, %.preheader323.i.i ], [ %i.amw, %._crit_edge389.i.i ]
  %.9.i.i = phi i32 [ %.8210.i.i, %.preheader323.i.i ], [ %.12.lcssa.i.i, %._crit_edge389.i.i ] ; 2 uses
  %.5.i.i = phi ptr [ %.4.i.i, %.preheader323.i.i ], [ %i.als, %._crit_edge389.i.i ] ; 3 uses
  %i.akh = lshr i32 %.9226.i.i, 27
  %.pn320366.i.i = zext nneg i32 %i.akh to i64
  %.0191.in.in367.i.i = getelementptr inbounds nuw [2 x i8], ptr %i.aby, i64 %.pn320366.i.i
  %.0191.in368.i.i = load i16, ptr %.0191.in.in367.i.i, align 2, !tbaa !122 ; 2 uses
  %.0191369.i.i = sext i16 %.0191.in368.i.i to i32 ; 2 uses
  %i.aki = icmp slt i16 %.0191.in368.i.i, 0
  br i1 %i.aki, label %.lr.ph375.i.i, label %._crit_edge376.i.i

.lr.ph375.i.i:                                    ; preds = %bb.cj, %.lr.ph375.i.i
  %.0191373.i.i = phi i32 [ %.0191.i.i, %.lr.ph375.i.i ], [ %.0191369.i.i, %bb.cj ] ; 2 uses
  %.0193372.i.i = phi i32 [ %i.akl, %.lr.ph375.i.i ], [ 5, %bb.cj ] ; 2 uses
  %.10371.i.i = phi i32 [ %i.akk, %.lr.ph375.i.i ], [ %.9.i.i, %bb.cj ]
  %.10227370.i.i = phi i32 [ %i.akj, %.lr.ph375.i.i ], [ %.9226.i.i, %bb.cj ]
  %i.akj = shl i32 %.10227370.i.i, %.0193372.i.i  ; 3 uses
  %i.akk = add nsw i32 %.10371.i.i, %.0193372.i.i ; 2 uses
  %i.akl = and i32 %.0191373.i.i, 7               ; 2 uses
  %i.akm = sub nuw nsw i32 32, %i.akl
  %i.akn = lshr i32 %i.akj, %i.akm
  %i.ako = ashr i32 %.0191373.i.i, 3
  %i.akp = sub nsw i32 %i.akn, %i.ako
  %.pn320.i.i = zext nneg i32 %i.akp to i64
  %.0191.in.in.i.i = getelementptr inbounds nuw [2 x i8], ptr %i.aby, i64 %.pn320.i.i
  %.0191.in.i.i = load i16, ptr %.0191.in.in.i.i, align 2, !tbaa !122 ; 2 uses
  %.0191.i.i = sext i16 %.0191.in.i.i to i32      ; 2 uses
  %i.akq = icmp slt i16 %.0191.in.i.i, 0
  br i1 %i.akq, label %.lr.ph375.i.i, label %._crit_edge376.i.i, !llvm.loop !2987

._crit_edge376.i.i:                               ; preds = %.lr.ph375.i.i, %bb.cj
  %.10227.lcssa.i.i = phi i32 [ %.9226.i.i, %bb.cj ], [ %i.akj, %.lr.ph375.i.i ]
  %.10.lcssa.i.i = phi i32 [ %.9.i.i, %bb.cj ], [ %i.akk, %.lr.ph375.i.i ]
  %.0191.lcssa.i.i = phi i32 [ %.0191369.i.i, %bb.cj ], [ %.0191.i.i, %.lr.ph375.i.i ] ; 3 uses
  %i.akr = lshr i32 %.0191.lcssa.i.i, 8           ; 2 uses
  %i.aks = shl i32 %.10227.lcssa.i.i, %i.akr      ; 2 uses
  %i.akt = add nsw i32 %i.akr, %.10.lcssa.i.i
  %i.aku = and i32 %.0191.lcssa.i.i, 15           ; 2 uses
  %i.akv = lshr i32 %i.aks, 27
  %.not423.i.i = and i32 %i.akv, 16
  %i.akw = or disjoint i32 %.not423.i.i, %i.aku
  %i.akx = xor i32 %i.akw, 16
  %i.aky = zext nneg i32 %i.akx to i64
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_g_pow43, i64 %i.aky
  %i.ala = load float, ptr %i.akz, align 4, !tbaa !349
  %i.alb = fmul float %i.akg, %i.ala
  store float %i.alb, ptr %.5.i.i, align 4, !tbaa !349
  %.not306.i.i = icmp ne i32 %i.aku, 0
  %i.alc = zext i1 %.not306.i.i to i32            ; 2 uses
  %i.ald = shl i32 %i.aks, %i.alc                 ; 2 uses
  %i.ale = add nsw i32 %i.akt, %i.alc
  %i.alf = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 4
  %i.alg = lshr i32 %.0191.lcssa.i.i, 4
  %i.alh = and i32 %i.alg, 15                     ; 2 uses
  %i.ali = lshr i32 %i.ald, 27
  %.not423.1.i.i = and i32 %i.ali, 16
  %i.alj = or disjoint i32 %.not423.1.i.i, %i.alh
  %i.alk = xor i32 %i.alj, 16
  %i.all = zext nneg i32 %i.alk to i64
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_g_pow43, i64 %i.all
  %i.aln = load float, ptr %i.alm, align 4, !tbaa !349
  %i.alo = fmul float %i.akg, %i.aln
  store float %i.alo, ptr %i.alf, align 4, !tbaa !349
  %.not306.1.i.i = icmp ne i32 %i.alh, 0
  %i.alp = zext i1 %.not306.1.i.i to i32          ; 2 uses
  %i.alq = shl i32 %i.ald, %i.alp                 ; 3 uses
  %i.alr = add nsw i32 %i.ale, %i.alp             ; 7 uses
  %i.als = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 8 ; 3 uses
  %i.alt = icmp sgt i32 %i.alr, -1
  br i1 %i.alt, label %.lr.ph388.i.i.preheader, label %._crit_edge389.i.i

.lr.ph388.i.i.preheader:                          ; preds = %._crit_edge376.i.i
  %i.alu = lshr i32 %i.alr, 3
  %i.alv = add nuw nsw i32 %i.alu, 1
  %xtraiter766 = and i32 %i.alv, 3                ; 2 uses
  %lcmp.mod767.not = icmp eq i32 %xtraiter766, 0
  br i1 %lcmp.mod767.not, label %.lr.ph388.i.i.prol.loopexit, label %.lr.ph388.i.i.prol

.lr.ph388.i.i.prol:                               ; preds = %.lr.ph388.i.i.preheader, %.lr.ph388.i.i.prol
  %.12387.i.i.prol = phi i32 [ %i.amb, %.lr.ph388.i.i.prol ], [ %i.alr, %.lr.ph388.i.i.preheader ] ; 2 uses
  %.12229386.i.i.prol = phi i32 [ %i.ama, %.lr.ph388.i.i.prol ], [ %i.alq, %.lr.ph388.i.i.preheader ]
  %.9247385.i.i.prol = phi ptr [ %i.alw, %.lr.ph388.i.i.prol ], [ %.8246.i.i, %.lr.ph388.i.i.preheader ] ; 2 uses
  %prol.iter768 = phi i32 [ %prol.iter768.next, %.lr.ph388.i.i.prol ], [ 0, %.lr.ph388.i.i.preheader ]
  %i.alw = getelementptr inbounds nuw i8, ptr %.9247385.i.i.prol, i64 1 ; 2 uses
  %i.alx = load i8, ptr %.9247385.i.i.prol, align 1, !tbaa !119
  %i.aly = zext i8 %i.alx to i32
  %i.alz = shl i32 %i.aly, %.12387.i.i.prol
  %i.ama = or i32 %i.alz, %.12229386.i.i.prol     ; 3 uses
  %i.amb = add nsw i32 %.12387.i.i.prol, -8       ; 3 uses
  %prol.iter768.next = add i32 %prol.iter768, 1   ; 2 uses
  %prol.iter768.cmp.not = icmp eq i32 %prol.iter768.next, %xtraiter766
  br i1 %prol.iter768.cmp.not, label %.lr.ph388.i.i.prol.loopexit, label %.lr.ph388.i.i.prol, !llvm.loop !2988

.lr.ph388.i.i.prol.loopexit:                      ; preds = %.lr.ph388.i.i.prol, %.lr.ph388.i.i.preheader
  %.12387.i.i.unr = phi i32 [ %i.alr, %.lr.ph388.i.i.preheader ], [ %i.amb, %.lr.ph388.i.i.prol ]
  %.12229386.i.i.unr = phi i32 [ %i.alq, %.lr.ph388.i.i.preheader ], [ %i.ama, %.lr.ph388.i.i.prol ]
  %.9247385.i.i.unr = phi ptr [ %.8246.i.i, %.lr.ph388.i.i.preheader ], [ %i.alw, %.lr.ph388.i.i.prol ]
  %.lcssa717.unr = phi i32 [ poison, %.lr.ph388.i.i.preheader ], [ %i.ama, %.lr.ph388.i.i.prol ]
  %.lcssa716.unr = phi i32 [ poison, %.lr.ph388.i.i.preheader ], [ %i.amb, %.lr.ph388.i.i.prol ]
  %i.amc = icmp ult i32 %i.alr, 24
  br i1 %i.amc, label %._crit_edge389.i.loopexit.i, label %.lr.ph388.i.i

.lr.ph388.i.i:                                    ; preds = %.lr.ph388.i.i.prol.loopexit, %.lr.ph388.i.i
  %.12387.i.i = phi i32 [ %i.ams, %.lr.ph388.i.i ], [ %.12387.i.i.unr, %.lr.ph388.i.i.prol.loopexit ] ; 4 uses
  %.12229386.i.i = phi i32 [ %i.amr, %.lr.ph388.i.i ], [ %.12229386.i.i.unr, %.lr.ph388.i.i.prol.loopexit ]
  %.9247385.i.i = phi ptr [ %i.amm, %.lr.ph388.i.i ], [ %.9247385.i.i.unr, %.lr.ph388.i.i.prol.loopexit ] ; 5 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %.9247385.i.i, i64 1
  %i.ame = load i8, ptr %.9247385.i.i, align 1, !tbaa !119
  %i.amf = zext i8 %i.ame to i32
  %i.amg = shl i32 %i.amf, %.12387.i.i
  %i.amh = or i32 %i.amg, %.12229386.i.i
  %i.ami = getelementptr inbounds nuw i8, ptr %.9247385.i.i, i64 2
  %i.amj = load i8, ptr %i.amd, align 1, !tbaa !119
  %i.amk = zext i8 %i.amj to i32
  %25 = getelementptr inbounds nuw i8, ptr %.9247385.i.i, i64 3
  %26 = load i8, ptr %i.ami, align 1, !tbaa !119
  %27 = zext i8 %26 to i32
  %i.aml = add nsw i32 %.12387.i.i, -24
  %i.amm = getelementptr inbounds nuw i8, ptr %.9247385.i.i, i64 4
  %i.amn = load i8, ptr %25, align 1, !tbaa !119
  %i.amo = zext i8 %i.amn to i32
  %i.amp = shl nuw nsw i32 %i.amk, 16
  %28 = shl nuw nsw i32 %27, 8
  %29 = or disjoint i32 %i.amp, %28
  %30 = or disjoint i32 %29, %i.amo
  %i.amq = shl i32 %30, %i.aml
  %i.amr = or i32 %i.amq, %i.amh                  ; 2 uses
  %i.ams = add nsw i32 %.12387.i.i, -32           ; 2 uses
  %i.amt = icmp sgt i32 %.12387.i.i, 31
  br i1 %i.amt, label %.lr.ph388.i.i, label %._crit_edge389.i.loopexit.i, !llvm.loop !2989

._crit_edge389.i.loopexit.i:                      ; preds = %.lr.ph388.i.i, %.lr.ph388.i.i.prol.loopexit
  %.lcssa717 = phi i32 [ %.lcssa717.unr, %.lr.ph388.i.i.prol.loopexit ], [ %i.amr, %.lr.ph388.i.i ]
  %.lcssa716 = phi i32 [ %.lcssa716.unr, %.lr.ph388.i.i.prol.loopexit ], [ %i.ams, %.lr.ph388.i.i ]
  %scevgep212.i = getelementptr i8, ptr %.8246.i.i, i64 1
  %i.amu = lshr i32 %i.alr, 3
  %i.amv = zext nneg i32 %i.amu to i64
  %scevgep213.i = getelementptr i8, ptr %scevgep212.i, i64 %i.amv
  br label %._crit_edge389.i.i

._crit_edge389.i.i:                               ; preds = %._crit_edge389.i.loopexit.i, %._crit_edge376.i.i
  %.9247.lcssa.i.i = phi ptr [ %.8246.i.i, %._crit_edge376.i.i ], [ %scevgep213.i, %._crit_edge389.i.loopexit.i ] ; 3 uses
  %.12229.lcssa.i.i = phi i32 [ %i.alq, %._crit_edge376.i.i ], [ %.lcssa717, %._crit_edge389.i.loopexit.i ] ; 3 uses
  %.12.lcssa.i.i = phi i32 [ %i.alr, %._crit_edge376.i.i ], [ %.lcssa716, %._crit_edge389.i.loopexit.i ] ; 3 uses
  %i.amw = add nsw i32 %.1216.i.i, -1             ; 2 uses
  %.not305.i.i = icmp eq i32 %i.amw, 0
  br i1 %.not305.i.i, label %bb.ck, label %bb.cj, !llvm.loop !2990

bb.ck:                                            ; preds = %._crit_edge389.i.i
  %i.amx = getelementptr inbounds nuw i8, ptr %.2254.i.i, i64 1 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %.2273.i.i, i64 4 ; 2 uses
  %i.amz = sub nsw i32 %.2262.i.i, %i.ake         ; 3 uses
  %i.ana = icmp sgt i32 %i.amz, 0
  %i.anb = add nsw i32 %.1201.i.i, -1
  %i.anc = icmp sgt i32 %.1201.i.i, 0
  %or.cond311.i.i = select i1 %i.ana, i1 %i.anc, i1 false
  br i1 %or.cond311.i.i, label %.preheader323.i.i, label %.critedge.i.i, !llvm.loop !2991

.critedge.i.i:                                    ; preds = %bb.ci, %bb.ck
  %.3274.i.i = phi ptr [ %i.amy, %bb.ck ], [ %i.ajx, %bb.ci ] ; 2 uses
  %.1266.i.i = phi float [ %i.akg, %bb.ck ], [ %i.ach, %bb.ci ]
  %.3263.i.i = phi i32 [ %i.amz, %bb.ck ], [ %i.ajy, %bb.ci ] ; 3 uses
  %.3255.i.i = phi ptr [ %i.amx, %bb.ck ], [ %i.ajw, %bb.ci ] ; 2 uses
  %.10248.i.i = phi ptr [ %.9247.lcssa.i.i, %bb.ck ], [ %.6244.lcssa.i.i, %bb.ci ] ; 2 uses
  %.13230.i.i = phi i32 [ %.12229.lcssa.i.i, %bb.ck ], [ %.7224.lcssa.i.i, %bb.ci ] ; 2 uses
  %.13.i.i = phi i32 [ %.12.lcssa.i.i, %bb.ck ], [ %.7209.lcssa.i.i, %bb.ci ] ; 2 uses
  %.7.i.i = phi ptr [ %i.als, %bb.ck ], [ %i.air, %bb.ci ] ; 2 uses
  %i.and = icmp sgt i32 %.3263.i.i, 0
  br i1 %i.and, label %bb.bw, label %._crit_edge403.i.loopexit.i, !llvm.loop !2992

._crit_edge403.i.loopexit.i:                      ; preds = %.critedge.i.i
  %i.ane = sub nsw i32 1, %.3263.i.i
  br label %._crit_edge403.i.i

._crit_edge403.i.i:                               ; preds = %._crit_edge403.i.loopexit.i, %ma_dr_mp3_L3_decode_scalefactors.exit.i
  %.0271.lcssa.i.i = phi ptr [ %i.nu, %ma_dr_mp3_L3_decode_scalefactors.exit.i ], [ %.3274.i.i, %._crit_edge403.i.loopexit.i ]
  %.0265.lcssa.i.i = phi float [ 0.000000e+00, %ma_dr_mp3_L3_decode_scalefactors.exit.i ], [ %.1266.i.i, %._crit_edge403.i.loopexit.i ]
  %.0260.lcssa.i.i = phi i32 [ 1, %ma_dr_mp3_L3_decode_scalefactors.exit.i ], [ %i.ane, %._crit_edge403.i.loopexit.i ]
  %.0252.lcssa.i.i = phi ptr [ %i.aan, %ma_dr_mp3_L3_decode_scalefactors.exit.i ], [ %.3255.i.i, %._crit_edge403.i.loopexit.i ]
  %.0238.lcssa.i.i = phi ptr [ %i.abl, %ma_dr_mp3_L3_decode_scalefactors.exit.i ], [ %.10248.i.i, %._crit_edge403.i.loopexit.i ]
  %.0217.lcssa.i.i = phi i32 [ %i.abj, %ma_dr_mp3_L3_decode_scalefactors.exit.i ], [ %.13230.i.i, %._crit_edge403.i.loopexit.i ]
  %.0202.lcssa.i.i = phi i32 [ %i.abk, %ma_dr_mp3_L3_decode_scalefactors.exit.i ], [ %.13.i.i, %._crit_edge403.i.loopexit.i ]
  %.0190.lcssa.i.i = phi ptr [ %i.aak, %ma_dr_mp3_L3_decode_scalefactors.exit.i ], [ %.7.i.i, %._crit_edge403.i.loopexit.i ]
  %i.anf = getelementptr inbounds nuw i8, ptr %i.or, i64 30
  %i.ang = load i8, ptr %i.anf, align 2, !tbaa !1131
  %.not.i61.i = icmp eq i8 %i.ang, 0
  %i.anh = select i1 %.not.i61.i, ptr @ma_dr_mp3_L3_huffman.tab32, ptr @ma_dr_mp3_L3_huffman.tab33 ; 2 uses
  %i.ani = sext i32 %i.ov to i64
  br label %bb.cl

bb.cl:                                            ; preds = %._crit_edge417.i.i, %._crit_edge403.i.i
  %.4275.i.i = phi ptr [ %.0271.lcssa.i.i, %._crit_edge403.i.i ], [ %.6277.i.i, %._crit_edge417.i.i ] ; 3 uses
  %.2267.i.i = phi float [ %.0265.lcssa.i.i, %._crit_edge403.i.i ], [ %.4269.i.i, %._crit_edge417.i.i ]
  %.4256.i.i = phi ptr [ %.0252.lcssa.i.i, %._crit_edge403.i.i ], [ %.6258.i.i, %._crit_edge417.i.i ] ; 3 uses
  %.11249.i.i = phi ptr [ %.0238.lcssa.i.i, %._crit_edge403.i.i ], [ %.12250.lcssa.i.i, %._crit_edge417.i.i ] ; 5 uses
  %.14231.i.i = phi i32 [ %.0217.lcssa.i.i, %._crit_edge403.i.i ], [ %.19236.lcssa.i.i, %._crit_edge417.i.i ] ; 3 uses
  %.0211.i.i = phi i32 [ %.0260.lcssa.i.i, %._crit_edge403.i.i ], [ %.2213.i.i, %._crit_edge417.i.i ]
  %.14.i.i = phi i32 [ %.0202.lcssa.i.i, %._crit_edge403.i.i ], [ %.19.lcssa.i.i, %._crit_edge417.i.i ]
  %.8.i.i = phi ptr [ %.0190.lcssa.i.i, %._crit_edge403.i.i ], [ %i.ard, %._crit_edge417.i.i ] ; 5 uses
  %i.anj = lshr i32 %.14231.i.i, 28
  %i.ank = zext nneg i32 %i.anj to i64
  %i.anl = getelementptr inbounds nuw i8, ptr %i.anh, i64 %i.ank
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !119
  %i.ann = zext i8 %i.anm to i32                  ; 4 uses
  %i.ano = and i32 %i.ann, 8
  %.not295.i.i = icmp eq i32 %i.ano, 0
  br i1 %.not295.i.i, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.anp = lshr i32 %i.ann, 3
  %i.anq = shl i32 %.14231.i.i, 4
  %i.anr = and i32 %i.ann, 3
  %i.ans = sub nuw nsw i32 32, %i.anr
  %i.ant = lshr i32 %i.anq, %i.ans
  %i.anu = add nuw nsw i32 %i.ant, %i.anp
  %i.anv = zext nneg i32 %i.anu to i64
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anh, i64 %i.anv
  %i.anx = load i8, ptr %i.anw, align 1, !tbaa !119
  %i.any = zext i8 %i.anx to i32
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.0189.i.i = phi i32 [ %i.ann, %bb.cl ], [ %i.any, %bb.cm ] ; 5 uses
  %i.anz = and i32 %.0189.i.i, 7                  ; 2 uses
  %i.aoa = shl i32 %.14231.i.i, %i.anz            ; 3 uses
  %i.aob = add nsw i32 %i.anz, %.14.i.i           ; 3 uses
  %i.aoc = ptrtoint ptr %.11249.i.i to i64
  %i.aod = sub i64 %i.aoc, %i.oq
  %i.aoe = shl nsw i64 %i.aod, 3
  %i.aof = add nsw i64 %i.aoe, -24
  %i.aog = sext i32 %i.aob to i64
  %i.aoh = add nsw i64 %i.aof, %i.aog
  %i.aoi = icmp sgt i64 %i.aoh, %i.ani
  br i1 %i.aoi, label %ma_dr_mp3_L3_huffman.exit.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.aoj = add nsw i32 %.0211.i.i, -1             ; 2 uses
  %.not296.i.i = icmp eq i32 %i.aoj, 0
  br i1 %.not296.i.i, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.aok = load i8, ptr %.4256.i.i, align 1, !tbaa !119
  %i.aol = lshr i8 %i.aok, 1                      ; 2 uses
  %.not297.i.i = icmp eq i8 %i.aol, 0
  br i1 %.not297.i.i, label %ma_dr_mp3_L3_huffman.exit.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.aom = getelementptr inbounds nuw i8, ptr %.4256.i.i, i64 1
  %i.aon = zext nneg i8 %i.aol to i32
  %i.aoo = getelementptr inbounds nuw i8, ptr %.4275.i.i, i64 4
  %i.aop = load float, ptr %.4275.i.i, align 4, !tbaa !349
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.co
  %.5276.i.i = phi ptr [ %.4275.i.i, %bb.co ], [ %i.aoo, %bb.cq ] ; 3 uses
  %.3268.i.i = phi float [ %.2267.i.i, %bb.co ], [ %i.aop, %bb.cq ] ; 5 uses
  %.5257.i.i = phi ptr [ %.4256.i.i, %bb.co ], [ %i.aom, %bb.cq ] ; 3 uses
  %.1212.i.i = phi i32 [ %i.aoj, %bb.co ], [ %i.aon, %bb.cq ]
  %.not298.i.i = icmp samesign ult i32 %.0189.i.i, 128
  br i1 %.not298.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.aoq = icmp slt i32 %i.aoa, 0
  %i.aor = fneg float %.3268.i.i
  %i.aos = select i1 %i.aoq, float %i.aor, float %.3268.i.i
  store float %i.aos, ptr %.8.i.i, align 4, !tbaa !349
  %i.aot = shl i32 %i.aoa, 1
  %i.aou = add nsw i32 %i.aob, 1
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.15232.i.i = phi i32 [ %i.aot, %bb.cs ], [ %i.aoa, %bb.cr ] ; 3 uses
  %.15.i.i = phi i32 [ %i.aou, %bb.cs ], [ %i.aob, %bb.cr ] ; 2 uses
  %i.aov = and i32 %.0189.i.i, 64
  %.not299.i.i = icmp eq i32 %i.aov, 0
  br i1 %.not299.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aow = icmp slt i32 %.15232.i.i, 0
  %i.aox = fneg float %.3268.i.i
  %i.aoy = select i1 %i.aow, float %i.aox, float %.3268.i.i
  %i.aoz = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 4
  store float %i.aoy, ptr %i.aoz, align 4, !tbaa !349
  %i.apa = shl i32 %.15232.i.i, 1
  %i.apb = add nsw i32 %.15.i.i, 1
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.16233.i.i = phi i32 [ %i.apa, %bb.cu ], [ %.15232.i.i, %bb.ct ] ; 3 uses
  %.16.i.i = phi i32 [ %i.apb, %bb.cu ], [ %.15.i.i, %bb.ct ] ; 2 uses
  %i.apc = add nsw i32 %.1212.i.i, -1             ; 2 uses
  %.not300.i.i = icmp eq i32 %i.apc, 0
  br i1 %.not300.i.i, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.apd = load i8, ptr %.5257.i.i, align 1, !tbaa !119
  %i.ape = lshr i8 %i.apd, 1                      ; 2 uses
  %.not301.i.i = icmp eq i8 %i.ape, 0
  br i1 %.not301.i.i, label %ma_dr_mp3_L3_huffman.exit.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.apf = getelementptr inbounds nuw i8, ptr %.5257.i.i, i64 1
  %i.apg = zext nneg i8 %i.ape to i32
  %i.aph = getelementptr inbounds nuw i8, ptr %.5276.i.i, i64 4
  %i.api = load float, ptr %.5276.i.i, align 4, !tbaa !349
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cv
  %.6277.i.i = phi ptr [ %.5276.i.i, %bb.cv ], [ %i.aph, %bb.cx ]
  %.4269.i.i = phi float [ %.3268.i.i, %bb.cv ], [ %i.api, %bb.cx ] ; 5 uses
  %.6258.i.i = phi ptr [ %.5257.i.i, %bb.cv ], [ %i.apf, %bb.cx ]
  %.2213.i.i = phi i32 [ %i.apc, %bb.cv ], [ %i.apg, %bb.cx ]
  %i.apj = and i32 %.0189.i.i, 32
  %.not302.i.i = icmp eq i32 %i.apj, 0
  br i1 %.not302.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.apk = icmp slt i32 %.16233.i.i, 0
  %i.apl = fneg float %.4269.i.i
  %i.apm = select i1 %i.apk, float %i.apl, float %.4269.i.i
  %i.apn = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 8
  store float %i.apm, ptr %i.apn, align 4, !tbaa !349
  %i.apo = shl i32 %.16233.i.i, 1
  %i.app = add nsw i32 %.16.i.i, 1
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.17234.i.i = phi i32 [ %i.apo, %bb.cz ], [ %.16233.i.i, %bb.cy ] ; 3 uses
  %.17.i.i = phi i32 [ %i.app, %bb.cz ], [ %.16.i.i, %bb.cy ] ; 2 uses
  %i.apq = and i32 %.0189.i.i, 16
  %.not303.i.i = icmp eq i32 %i.apq, 0
  br i1 %.not303.i.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.apr = icmp slt i32 %.17234.i.i, 0
  %i.aps = fneg float %.4269.i.i
  %i.apt = select i1 %i.apr, float %i.aps, float %.4269.i.i
  %i.apu = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 12
  store float %i.apt, ptr %i.apu, align 4, !tbaa !349
  %i.apv = shl i32 %.17234.i.i, 1
  %i.apw = add nsw i32 %.17.i.i, 1
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.18235.i.i = phi i32 [ %i.apv, %bb.db ], [ %.17234.i.i, %bb.da ] ; 3 uses
  %.18.i.i = phi i32 [ %i.apw, %bb.db ], [ %.17.i.i, %bb.da ] ; 9 uses
  %i.apx = icmp sgt i32 %.18.i.i, -1
  br i1 %i.apx, label %.lr.ph416.i.i.preheader, label %._crit_edge417.i.i

.lr.ph416.i.i.preheader:                          ; preds = %bb.dc
  %i.apy = lshr i32 %.18.i.i, 3
  %i.apz = add nuw nsw i32 %i.apy, 1
  %xtraiter769 = and i32 %i.apz, 3                ; 2 uses
  %lcmp.mod770.not = icmp eq i32 %xtraiter769, 0
  br i1 %lcmp.mod770.not, label %.lr.ph416.i.i.prol.loopexit, label %.lr.ph416.i.i.prol

.lr.ph416.i.i.prol:                               ; preds = %.lr.ph416.i.i.preheader, %.lr.ph416.i.i.prol
  %.19414.i.i.prol = phi i32 [ %i.aqf, %.lr.ph416.i.i.prol ], [ %.18.i.i, %.lr.ph416.i.i.preheader ] ; 2 uses
  %.19236413.i.i.prol = phi i32 [ %i.aqe, %.lr.ph416.i.i.prol ], [ %.18235.i.i, %.lr.ph416.i.i.preheader ]
  %.12250412.i.i.prol = phi ptr [ %i.aqa, %.lr.ph416.i.i.prol ], [ %.11249.i.i, %.lr.ph416.i.i.preheader ] ; 2 uses
  %prol.iter771 = phi i32 [ %prol.iter771.next, %.lr.ph416.i.i.prol ], [ 0, %.lr.ph416.i.i.preheader ]
  %i.aqa = getelementptr inbounds nuw i8, ptr %.12250412.i.i.prol, i64 1 ; 2 uses
  %i.aqb = load i8, ptr %.12250412.i.i.prol, align 1, !tbaa !119
  %i.aqc = zext i8 %i.aqb to i32
  %i.aqd = shl i32 %i.aqc, %.19414.i.i.prol
  %i.aqe = or i32 %i.aqd, %.19236413.i.i.prol     ; 3 uses
  %i.aqf = add nsw i32 %.19414.i.i.prol, -8       ; 2 uses
  %prol.iter771.next = add i32 %prol.iter771, 1   ; 2 uses
  %prol.iter771.cmp.not = icmp eq i32 %prol.iter771.next, %xtraiter769
  br i1 %prol.iter771.cmp.not, label %.lr.ph416.i.i.prol.loopexit, label %.lr.ph416.i.i.prol, !llvm.loop !2993

.lr.ph416.i.i.prol.loopexit:                      ; preds = %.lr.ph416.i.i.prol, %.lr.ph416.i.i.preheader
  %.19414.i.i.unr = phi i32 [ %.18.i.i, %.lr.ph416.i.i.preheader ], [ %i.aqf, %.lr.ph416.i.i.prol ]
  %.19236413.i.i.unr = phi i32 [ %.18235.i.i, %.lr.ph416.i.i.preheader ], [ %i.aqe, %.lr.ph416.i.i.prol ]
  %.12250412.i.i.unr = phi ptr [ %.11249.i.i, %.lr.ph416.i.i.preheader ], [ %i.aqa, %.lr.ph416.i.i.prol ]
  %.lcssa723.unr = phi i32 [ poison, %.lr.ph416.i.i.preheader ], [ %i.aqe, %.lr.ph416.i.i.prol ]
  %i.aqg = icmp ult i32 %.18.i.i, 24
  br i1 %i.aqg, label %._crit_edge417.i.loopexit.i, label %.lr.ph416.i.i

.lr.ph416.i.i:                                    ; preds = %.lr.ph416.i.i.prol.loopexit, %.lr.ph416.i.i
  %.19414.i.i = phi i32 [ %i.aqw, %.lr.ph416.i.i ], [ %.19414.i.i.unr, %.lr.ph416.i.i.prol.loopexit ] ; 4 uses
  %.19236413.i.i = phi i32 [ %i.aqv, %.lr.ph416.i.i ], [ %.19236413.i.i.unr, %.lr.ph416.i.i.prol.loopexit ]
  %.12250412.i.i = phi ptr [ %i.aqq, %.lr.ph416.i.i ], [ %.12250412.i.i.unr, %.lr.ph416.i.i.prol.loopexit ] ; 5 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %.12250412.i.i, i64 1
  %i.aqi = load i8, ptr %.12250412.i.i, align 1, !tbaa !119
  %i.aqj = zext i8 %i.aqi to i32
  %i.aqk = shl i32 %i.aqj, %.19414.i.i
  %i.aql = or i32 %i.aqk, %.19236413.i.i
  %i.aqm = getelementptr inbounds nuw i8, ptr %.12250412.i.i, i64 2
  %i.aqn = load i8, ptr %i.aqh, align 1, !tbaa !119
  %i.aqo = zext i8 %i.aqn to i32
  %31 = getelementptr inbounds nuw i8, ptr %.12250412.i.i, i64 3
  %32 = load i8, ptr %i.aqm, align 1, !tbaa !119
  %33 = zext i8 %32 to i32
  %i.aqp = add nsw i32 %.19414.i.i, -24
  %i.aqq = getelementptr inbounds nuw i8, ptr %.12250412.i.i, i64 4
  %i.aqr = load i8, ptr %31, align 1, !tbaa !119
  %i.aqs = zext i8 %i.aqr to i32
  %i.aqt = shl nuw nsw i32 %i.aqo, 16
  %34 = shl nuw nsw i32 %33, 8
  %35 = or disjoint i32 %i.aqt, %34
  %36 = or disjoint i32 %35, %i.aqs
  %i.aqu = shl i32 %36, %i.aqp
  %i.aqv = or i32 %i.aqu, %i.aql                  ; 2 uses
  %i.aqw = add nsw i32 %.19414.i.i, -32
  %i.aqx = icmp sgt i32 %.19414.i.i, 31
  br i1 %i.aqx, label %.lr.ph416.i.i, label %._crit_edge417.i.loopexit.i, !llvm.loop !2994

._crit_edge417.i.loopexit.i:                      ; preds = %.lr.ph416.i.i, %.lr.ph416.i.i.prol.loopexit
  %.lcssa723 = phi i32 [ %.lcssa723.unr, %.lr.ph416.i.i.prol.loopexit ], [ %i.aqv, %.lr.ph416.i.i ]
  %scevgep214.i = getelementptr i8, ptr %.11249.i.i, i64 1
  %i.aqy = lshr i32 %.18.i.i, 3
  %i.aqz = zext nneg i32 %i.aqy to i64
  %scevgep215.i = getelementptr i8, ptr %scevgep214.i, i64 %i.aqz
  %i.ara = add nsw i32 %.18.i.i, -8
  %i.arb = and i32 %.18.i.i, 2147483640
  %i.arc = sub nsw i32 %i.ara, %i.arb
  br label %._crit_edge417.i.i

._crit_edge417.i.i:                               ; preds = %._crit_edge417.i.loopexit.i, %bb.dc
  %.12250.lcssa.i.i = phi ptr [ %.11249.i.i, %bb.dc ], [ %scevgep215.i, %._crit_edge417.i.loopexit.i ]
  %.19236.lcssa.i.i = phi i32 [ %.18235.i.i, %bb.dc ], [ %.lcssa723, %._crit_edge417.i.loopexit.i ]
  %.19.lcssa.i.i = phi i32 [ %.18.i.i, %bb.dc ], [ %i.arc, %._crit_edge417.i.loopexit.i ]
  %i.ard = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 16
  br label %bb.cl

ma_dr_mp3_L3_huffman.exit.i:                      ; preds = %bb.cw, %bb.cp, %bb.cn
  store i32 %i.ov, ptr %i.nk, align 8, !tbaa !777
  %indvars.iv.next.i156 = add nuw nsw i64 %indvars.iv.i151, 1 ; 2 uses
  %exitcond.not.i157 = icmp eq i64 %indvars.iv.next.i156, %wide.trip.count.i150
  br i1 %exitcond.not.i157, label %._crit_edge.i146, label %bb.ak, !llvm.loop !2995

._crit_edge.i146:                                 ; preds = %ma_dr_mp3_L3_huffman.exit.i, %bb.aj
  %i.are = load i8, ptr %i.ns, align 1, !tbaa !119
  %i.arf = zext i8 %i.are to i32                  ; 2 uses
  %i.arg = and i32 %i.arf, 16
  %.not.i147 = icmp eq i32 %i.arg, 0
  br i1 %.not.i147, label %bb.eb, label %bb.dd

bb.dd:                                            ; preds = %._crit_edge.i146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.arh = getelementptr inbounds nuw i8, ptr %i.on, i64 17
  %i.ari = load i8, ptr %i.arh, align 1, !tbaa !1123 ; 2 uses
  %i.arj = zext i8 %i.ari to i32
  %i.ark = getelementptr inbounds nuw i8, ptr %i.on, i64 18
  %i.arl = load i8, ptr %i.ark, align 2, !tbaa !1122 ; 2 uses
  %i.arm = zext i8 %i.arl to i32
  %i.arn = add nuw nsw i32 %i.arm, %i.arj         ; 3 uses
  %.not.i64.i = icmp eq i8 %i.arl, 0              ; 2 uses
  %i.aro = select i1 %.not.i64.i, i32 1, i32 3    ; 4 uses
  %i.arp = load ptr, ptr %i.on, align 8, !tbaa !1130
  store i32 -1, ptr %i.oa, align 4, !tbaa !118
  store i32 -1, ptr %i.ob, align 4, !tbaa !118
  store i32 -1, ptr %i.a, align 4, !tbaa !118
  %.not.i.i65.i = icmp eq i32 %i.arn, 0
  br i1 %.not.i.i65.i, label %ma_dr_mp3_L3_stereo_top_band.exit.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.dd
  %wide.trip.count.i.i66.i = zext nneg i32 %i.arn to i64
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.loopexit.i.i69.i, %.preheader.preheader.i.i.i
  %indvars.iv30.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ %indvars.iv.next31.i.i.i, %.loopexit.i.i69.i ] ; 3 uses
  %.02025.i.i.i = phi ptr [ %i.oc, %.preheader.preheader.i.i.i ], [ %i.ase, %.loopexit.i.i69.i ] ; 2 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 %indvars.iv30.i.i.i
  %i.arr = load i8, ptr %i.arq, align 1, !tbaa !119 ; 2 uses
  %.not28.i.i.i = icmp eq i8 %i.arr, 0
  br i1 %.not28.i.i.i, label %.loopexit.i.i69.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %i.ars = zext i8 %i.arr to i64                  ; 3 uses
  br label %.lr.ph.i.i.i

bb.de:                                            ; preds = %bb.df
  %indvars.iv.next.i.i68.i = add nuw nsw i64 %indvars.iv.i.i67.i, 2 ; 2 uses
  %i.art = icmp samesign ult i64 %indvars.iv.next.i.i68.i, %i.ars
  br i1 %i.art, label %.lr.ph.i.i.i, label %.loopexit.i.i69.i, !llvm.loop !2996

.lr.ph.i.i.i:                                     ; preds = %bb.de, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i67.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i68.i, %bb.de ] ; 2 uses
  %i.aru = getelementptr inbounds nuw [4 x i8], ptr %.02025.i.i.i, i64 %indvars.iv.i.i67.i ; 2 uses
  %i.arv = load float, ptr %i.aru, align 4, !tbaa !349
  %i.arw = fcmp une float %i.arv, 0.000000e+00
  br i1 %i.arw, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %.lr.ph.i.i.i
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aru, i64 4
  %i.ary = load float, ptr %i.arx, align 4, !tbaa !349
  %i.arz = fcmp une float %i.ary, 0.000000e+00
  br i1 %i.arz, label %bb.dg, label %bb.de

bb.dg:                                            ; preds = %bb.df, %.lr.ph.i.i.i
  %i.asa = trunc nuw nsw i64 %indvars.iv30.i.i.i to i32 ; 2 uses
  %i.asb = urem i32 %i.asa, 3
  %i.asc = zext nneg i32 %i.asb to i64
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.asc
  store i32 %i.asa, ptr %i.asd, align 4, !tbaa !118
  br label %.loopexit.i.i69.i

.loopexit.i.i69.i:                                ; preds = %bb.de, %bb.dg, %.preheader.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.ars, %bb.dg ], [ 0, %.preheader.i.i.i ], [ %i.ars, %bb.de ]
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr %.02025.i.i.i, i64 %.pre-phi.i.i
  %indvars.iv.next31.i.i.i = add nuw nsw i64 %indvars.iv30.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i70.i = icmp eq i64 %indvars.iv.next31.i.i.i, %wide.trip.count.i.i66.i
  br i1 %exitcond.not.i.i70.i, label %ma_dr_mp3_L3_stereo_top_band.exit.i.i, label %.preheader.i.i.i, !llvm.loop !2997

ma_dr_mp3_L3_stereo_top_band.exit.i.i:            ; preds = %.loopexit.i.i69.i, %bb.dd
  %.not31.i.i = icmp eq i8 %i.ari, 0
  br i1 %.not31.i.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %ma_dr_mp3_L3_stereo_top_band.exit.i.i
  %i.asf = load i32, ptr %i.a, align 4, !tbaa !118
  %i.asg = load i32, ptr %i.ob, align 4, !tbaa !118
  %i.ash = tail call i32 @llvm.smax.i32(i32 %i.asf, i32 %i.asg)
  %i.asi = load i32, ptr %i.oa, align 4, !tbaa !118
  %..i.i = tail call i32 @llvm.smax.i32(i32 %i.ash, i32 %i.asi) ; 3 uses
  store i32 %..i.i, ptr %i.oa, align 4, !tbaa !118
  store i32 %..i.i, ptr %i.ob, align 4, !tbaa !118
  store i32 %..i.i, ptr %i.a, align 4, !tbaa !118
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %ma_dr_mp3_L3_stereo_top_band.exit.i.i
  %i.asj = sub nsw i32 %i.arn, %i.aro             ; 4 uses
  %i.ask = sub nsw i32 %i.asj, %i.aro             ; 2 uses
  %i.asl = load i32, ptr %i.a, align 4, !tbaa !118
  %.not33.i.i = icmp slt i32 %i.asl, %i.ask
  br i1 %.not33.i.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.asm = load i8, ptr %i.nv, align 1, !tbaa !119
  %i.asn = and i8 %i.asm, 8
  %.not32.i.i = icmp eq i8 %i.asn, 0
  %i.aso = select i1 %.not32.i.i, i8 0, i8 3
  br label %bb.dl

bb.dk:                                            ; preds = %bb.di
  %i.asp = sext i32 %i.ask to i64
  %i.asq = getelementptr inbounds i8, ptr %i.nz, i64 %i.asp
  %i.asr = load i8, ptr %i.asq, align 1, !tbaa !119
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.ass = phi i8 [ %i.aso, %bb.dj ], [ %i.asr, %bb.dk ]
  %i.ast = sext i32 %i.asj to i64
  %i.asu = getelementptr inbounds i8, ptr %i.nz, i64 %i.ast
  store i8 %i.ass, ptr %i.asu, align 1, !tbaa !119
  br i1 %.not.i64.i, label %bb.dt, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.asv = add nsw i32 %i.asj, 1                  ; 2 uses
  %i.asw = sub nsw i32 %i.asv, %i.aro             ; 2 uses
  %i.asx = load i32, ptr %i.oh, align 4, !tbaa !118
  %.not33.i.i.1 = icmp slt i32 %i.asx, %i.asw
  br i1 %.not33.i.i.1, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.asy = load i8, ptr %i.nv, align 1, !tbaa !119
  %i.asz = and i8 %i.asy, 8
  %.not32.i.i.1 = icmp eq i8 %i.asz, 0
  %i.ata = select i1 %.not32.i.i.1, i8 0, i8 3
  br label %bb.dp

bb.do:                                            ; preds = %bb.dm
  %i.atb = sext i32 %i.asw to i64
  %i.atc = getelementptr inbounds i8, ptr %i.nz, i64 %i.atb
  %i.atd = load i8, ptr %i.atc, align 1, !tbaa !119
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.ate = phi i8 [ %i.ata, %bb.dn ], [ %i.atd, %bb.do ]
  %i.atf = sext i32 %i.asv to i64
  %i.atg = getelementptr inbounds i8, ptr %i.nz, i64 %i.atf
  store i8 %i.ate, ptr %i.atg, align 1, !tbaa !119
  %i.ath = add nsw i32 %i.asj, 2                  ; 2 uses
  %i.ati = sub nsw i32 %i.ath, %i.aro             ; 2 uses
  %i.atj = load i32, ptr %i.oi, align 4, !tbaa !118
  %.not33.i.i.2 = icmp slt i32 %i.atj, %i.ati
  br i1 %.not33.i.i.2, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.atk = load i8, ptr %i.nv, align 1, !tbaa !119
  %i.atl = and i8 %i.atk, 8
  %.not32.i.i.2 = icmp eq i8 %i.atl, 0
  %i.atm = select i1 %.not32.i.i.2, i8 0, i8 3
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  %i.atn = sext i32 %i.ati to i64
  %i.ato = getelementptr inbounds i8, ptr %i.nz, i64 %i.atn
  %i.atp = load i8, ptr %i.ato, align 1, !tbaa !119
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.atq = phi i8 [ %i.atm, %bb.dq ], [ %i.atp, %bb.dr ]
  %i.atr = sext i32 %i.ath to i64
  %i.ats = getelementptr inbounds i8, ptr %i.nz, i64 %i.atr
  store i8 %i.atq, ptr %i.ats, align 1, !tbaa !119
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dl
  %i.att = load ptr, ptr %i.on, align 8, !tbaa !1130 ; 3 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %i.on, i64 44
  %i.atv = load i16, ptr %i.atu, align 4, !tbaa !1126
  %i.atw = and i16 %i.atv, 1
end_hunk_0
