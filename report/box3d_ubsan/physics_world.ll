Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/physics_world?download=true
inline.NumInlined: 282
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@b3World_Draw:bb.a
  br i1 %i.aan, label %.lr.ph25772, label %.split8139.us8862.us.us

.split8139.us8862.us.us:                          ; preds = %.lr.ph8133.split.us.split.us8863.us.us, %.lr.ph8133.us.us.us
  %i.aao = load ptr, ptr %i.ac, align 8, !tbaa !256 ; 3 uses
  %i.aap = zext nneg i32 %i.oj to i64             ; 2 uses
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.aao, i64 %i.aap ; 3 uses
  %i.aar = shl nuw nsw i64 %i.aap, 3
  %i.aas = ptrtoint ptr %i.aao to i64, !nosanitize !10 ; 3 uses
  %i.aat = add i64 %i.aar, %i.aas, !nosanitize !10 ; 3 uses
  %i.aau = icmp ne ptr %i.aao, null, !nosanitize !10 ; 2 uses
  %i.aav = icmp eq i64 %i.aat, 0
  %i.aaw = xor i1 %i.aau, %i.aav
  %i.aax = icmp uge i64 %i.aat, %i.aas, !nosanitize !10
  %i.aay = and i1 %i.aax, %i.aaw, !nosanitize !10
  br i1 %i.aay, label %bb.dp, label %.split9190.us, !prof !11, !nosanitize !10

bb.dp:                                            ; preds = %.split8139.us8862.us.us
  %i.aaz = ptrtoint ptr %i.aaq to i64, !nosanitize !10 ; 2 uses
  %i.aba = and i64 %i.aaz, 7, !nosanitize !10
  %i.abb = icmp eq i64 %i.aba, 0, !nosanitize !10
  %i.abc = and i1 %i.aau, %i.abb
  br i1 %i.abc, label %b3SetBit.exit771.us.us.us, label %.split9194.us, !prof !11, !nosanitize !10

b3SetBit.exit771.us.us.us:                        ; preds = %bb.dp
  %i.abd = and i32 %i.ne, 63
  %i.abe = zext nneg i32 %i.abd to i64
  %i.abf = shl nuw i64 1, %i.abe
  %i.abg = load i64, ptr %i.aaq, align 8, !tbaa !257
  %i.abh = or i64 %i.abg, %i.abf
  store i64 %i.abh, ptr %i.aaq, align 8, !tbaa !257
  br label %bb.dq

bb.dq:                                            ; preds = %b3SetBit.exit771.us.us.us, %b3GetBit.exit684.us.us.us
  br i1 %.not654.us.us.us, label %.split9197.us, label %bb.dr, !prof !78, !nosanitize !10

bb.dr:                                            ; preds = %bb.dq
  %i.abi = load i32, ptr %i.od, align 4, !tbaa !485
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.bh, %bb.bg
  %.1563.us.us.us = phi i32 [ %i.abi, %bb.dr ], [ %i.oe, %bb.bh ], [ %i.oe, %bb.bg ] ; 2 uses
  %.not649.us.us.us = icmp eq i32 %.1563.us.us.us, -1
  br i1 %.not649.us.us.us, label %.loopexit.us.us.us, label %.lr.ph.split.us.us.us

.loopexit.us.us.us:                               ; preds = %bb.ds, %bb.az, %bb.bb, %bb.bc, %bb.bd
  %i.abj = load i8, ptr %i.cc, align 1, !tbaa !496 ; 3 uses
  %i.abk = icmp ult i8 %i.abj, 2
  br i1 %i.abk, label %bb.dt, label %.split9203.us, !prof !11, !nosanitize !10

bb.dt:                                            ; preds = %.loopexit.us.us.us
  %i.abl = trunc nuw i8 %i.abj to i1
  br i1 %i.abl, label %bb.du, label %.thread812.us.us.us

bb.du:                                            ; preds = %bb.dt
  %i.abm = ptrtoint ptr %i.cz to i64, !nosanitize !10 ; 2 uses
  %i.abn = and i64 %i.abm, 7, !nosanitize !10
  %i.abo = icmp eq i64 %i.abn, 0, !nosanitize !10
  %i.abp = and i1 %i.dd, %i.abo
  br i1 %i.abp, label %bb.dv, label %.split9206.us, !prof !11, !nosanitize !10

bb.dv:                                            ; preds = %bb.du
  %i.abq = getelementptr inbounds nuw i8, ptr %i.cz, i64 44
  %i.abr = load i32, ptr %i.abq, align 4, !tbaa !497 ; 6 uses
  %.not651.us.us.us = icmp eq i32 %i.abr, -1
  br i1 %.not651.us.us.us, label %.thread812.us.us.us, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.abs = lshr i32 %i.abr, 6                     ; 3 uses
  %i.abt = load i32, ptr %i.cd, align 4, !tbaa !255
  %.not.i772.us.us.us = icmp ult i32 %i.abs, %i.abt
  br i1 %.not.i772.us.us.us, label %bb.dx, label %b3GetBit.exit774.thread.us.us.us

bb.dx:                                            ; preds = %bb.dw
  %i.abu = load ptr, ptr %i.af, align 8, !tbaa !256 ; 3 uses
  %i.abv = zext nneg i32 %i.abs to i64            ; 2 uses
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.abu, i64 %i.abv ; 2 uses
  %i.abx = shl nuw nsw i64 %i.abv, 3
  %i.aby = ptrtoint ptr %i.abu to i64, !nosanitize !10 ; 3 uses
  %i.abz = add i64 %i.abx, %i.aby, !nosanitize !10 ; 3 uses
  %i.aca = icmp ne ptr %i.abu, null, !nosanitize !10 ; 2 uses
  %i.acb = icmp eq i64 %i.abz, 0
  %i.acc = xor i1 %i.aca, %i.acb
  %i.acd = icmp uge i64 %i.abz, %i.aby, !nosanitize !10
  %i.ace = and i1 %i.acd, %i.acc, !nosanitize !10
  br i1 %i.ace, label %bb.dy, label %.split9217.us, !prof !11, !nosanitize !10

bb.dy:                                            ; preds = %bb.dx
  %i.acf = ptrtoint ptr %i.abw to i64, !nosanitize !10 ; 2 uses
  %i.acg = and i64 %i.acf, 7, !nosanitize !10
  %i.ach = icmp eq i64 %i.acg, 0, !nosanitize !10
  %i.aci = and i1 %i.aca, %i.ach
  br i1 %i.aci, label %b3GetBit.exit774.us.us.us, label %.split9221.us, !prof !11, !nosanitize !10

b3GetBit.exit774.us.us.us:                        ; preds = %bb.dy
  %i.acj = and i32 %i.abr, 63
  %i.ack = zext nneg i32 %i.acj to i64
  %i.acl = load i64, ptr %i.abw, align 8, !tbaa !257
  %i.acm = shl nuw i64 1, %i.ack
  %i.acn = and i64 %i.acl, %i.acm
  %.not820.us.us.us = icmp eq i64 %i.acn, 0
  br i1 %.not820.us.us.us, label %b3GetBit.exit774.thread.us.us.us, label %.thread812.us.us.us

b3GetBit.exit774.thread.us.us.us:                 ; preds = %bb.dw, %b3GetBit.exit774.us.us.us
  %i.aco = load ptr, ptr %i.ce, align 8, !tbaa !120 ; 3 uses
  %i.acp = sext i32 %i.abr to i64                 ; 2 uses
  %i.acq = getelementptr inbounds [64 x i8], ptr %i.aco, i64 %i.acp ; 4 uses
  %i.acr = shl nsw i64 %i.acp, 6
  %i.acs = ptrtoint ptr %i.aco to i64, !nosanitize !10 ; 3 uses
  %i.act = add i64 %i.acr, %i.acs, !nosanitize !10 ; 3 uses
  %i.acu = icmp ne ptr %i.aco, null, !nosanitize !10 ; 2 uses
  %i.acv = icmp eq i64 %i.act, 0
  %i.acw = xor i1 %i.acu, %i.acv
  %i.acx = icmp uge i64 %i.act, %i.acs, !nosanitize !10
  %i.acy = icmp slt i32 %i.abr, 0
  %i.acz = xor i1 %i.acy, %i.acx
  %i.ada = and i1 %i.acw, %i.acz, !nosanitize !10
  br i1 %i.ada, label %bb.dz, label %.split9227.us, !prof !11, !nosanitize !10

bb.dz:                                            ; preds = %b3GetBit.exit774.thread.us.us.us
  %i.adb = ptrtoint ptr %i.acq to i64, !nosanitize !10 ; 2 uses
  %i.adc = and i64 %i.adb, 7, !nosanitize !10
  %i.add = icmp eq i64 %i.adc, 0, !nosanitize !10
  %i.ade = and i1 %i.acu, %i.add
  br i1 %i.ade, label %bb.ea, label %.split9231.us, !prof !11, !nosanitize !10

bb.ea:                                            ; preds = %bb.dz
  %i.adf = load i32, ptr %i.acq, align 8, !tbaa !498
  %.not653.us.us.us = icmp eq i32 %i.adf, -1
  br i1 %.not653.us.us.us, label %bb.en, label %.lr.ph8756.us.us.us, !llvm.loop !466

.lr.ph8756.us.us.us:                              ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acq, i64 16
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acq, i64 24
  %i.adi = load i32, ptr %i.adh, align 8, !tbaa !213 ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.adi, i32 0)
  %wide.trip.count18566 = zext nneg i32 %smax to i64
  %exitcond18567.not25785 = icmp slt i32 %i.adi, 1
  br i1 %exitcond18567.not25785, label %.critedge, label %.lr.ph25792.preheader

.lr.ph25792.preheader:                            ; preds = %.lr.ph8756.us.us.us
  %i.adj = load ptr, ptr %i.adg, align 8, !tbaa !211 ; 3 uses
  %i.adk = ptrtoint ptr %i.adj to i64, !nosanitize !10 ; 3 uses
  %i.adl = icmp ne ptr %i.adj, null, !nosanitize !10 ; 2 uses
  br label %.lr.ph25792

bb.eb:                                            ; preds = %.split8646.us8871.us.us
  %indvars.iv.next18564 = add nuw nsw i64 %indvars.iv1856325786, 1 ; 2 uses
  %exitcond18567.not = icmp eq i64 %indvars.iv.next18564, %wide.trip.count18566
  br i1 %exitcond18567.not, label %._crit_edge25793, label %.lr.ph25792

.lr.ph25792:                                      ; preds = %.lr.ph25792.preheader, %bb.eb
  %.us-phi865087398752.us.us.us25791 = phi <2 x float> [ %.sroa.0800.0.copyload8611.us.us.us.us.lcssa, %bb.eb ], [ splat (float f0x7F7FFFFF), %.lr.ph25792.preheader ] ; 2 uses
  %.05588753.us.us.us25790 = phi i32 [ %.1559.us.us.us.us.lcssa, %bb.eb ], [ 0, %.lr.ph25792.preheader ] ; 2 uses
  %.us-phi86498763.us.us.us25789 = phi float [ %.lcssa24800, %bb.eb ], [ f0x7F7FFFFF, %.lr.ph25792.preheader ] ; 2 uses
  %.us-phi86488790.us.us.us25788 = phi <2 x float> [ %.sroa.05.4.vec.insert.i21.i8626.us.us.us.us.lcssa, %bb.eb ], [ splat (float f0xFF7FFFFF), %.lr.ph25792.preheader ] ; 2 uses
  %.us-phi86478817.us.us.us25787 = phi float [ %.lcssa24807, %bb.eb ], [ f0xFF7FFFFF, %.lr.ph25792.preheader ] ; 2 uses
  %indvars.iv1856325786 = phi i64 [ %indvars.iv.next18564, %bb.eb ], [ 0, %.lr.ph25792.preheader ] ; 4 uses
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.adj, i64 %indvars.iv1856325786 ; 2 uses
  %i.adn = shl nuw nsw i64 %indvars.iv1856325786, 2
  %i.ado = add i64 %i.adn, %i.adk, !nosanitize !10 ; 3 uses
  %i.adp = icmp eq i64 %i.ado, 0
  %i.adq = xor i1 %i.adl, %i.adp
  %i.adr = icmp uge i64 %i.ado, %i.adk, !nosanitize !10
  %i.ads = and i1 %i.adq, %i.adr, !nosanitize !10
  br i1 %i.ads, label %bb.ec, label %.split9237.us, !prof !11, !nosanitize !10

bb.ec:                                            ; preds = %.lr.ph25792
  %i.adt = ptrtoint ptr %i.adm to i64, !nosanitize !10 ; 2 uses
  %i.adu = and i64 %i.adt, 3, !nosanitize !10
  %i.adv = icmp eq i64 %i.adu, 0, !nosanitize !10
  %i.adw = and i1 %i.adl, %i.adv
  br i1 %i.adw, label %bb.ed, label %.split9248.us, !prof !11, !nosanitize !10

bb.ed:                                            ; preds = %bb.ec
  %i.adx = load i32, ptr %i.adm, align 4, !tbaa !84 ; 2 uses
  %i.ady = load ptr, ptr %i.ba, align 8, !tbaa !93 ; 3 uses
  %i.adz = sext i32 %i.adx to i64                 ; 2 uses
  %i.aea = getelementptr inbounds [128 x i8], ptr %i.ady, i64 %i.adz ; 2 uses
  %i.aeb = shl nsw i64 %i.adz, 7
  %i.aec = ptrtoint ptr %i.ady to i64, !nosanitize !10 ; 3 uses
  %i.aed = add i64 %i.aeb, %i.aec, !nosanitize !10 ; 3 uses
  %i.aee = icmp ne ptr %i.ady, null, !nosanitize !10 ; 2 uses
  %i.aef = icmp eq i64 %i.aed, 0
  %i.aeg = xor i1 %i.aee, %i.aef
  %i.aeh = icmp uge i64 %i.aed, %i.aec, !nosanitize !10
  %i.aei = icmp slt i32 %i.adx, 0
  %i.aej = xor i1 %i.aei, %i.aeh
  %i.aek = and i1 %i.aeg, %i.aej, !nosanitize !10
  br i1 %i.aek, label %bb.ee, label %.split9258.us, !prof !11, !nosanitize !10

bb.ee:                                            ; preds = %bb.ed
  %i.ael = ptrtoint ptr %i.aea to i64, !nosanitize !10 ; 2 uses
  %i.aem = and i64 %i.ael, 7, !nosanitize !10
  %i.aen = icmp eq i64 %i.aem, 0, !nosanitize !10
  %i.aeo = and i1 %i.aee, %i.aen
  br i1 %i.aeo, label %.preheader.us.us.us, label %.split9269.us, !prof !11, !nosanitize !10

.preheader.us.us.us:                              ; preds = %bb.ee
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aea, i64 24
  %.0556.us.us.us.us25773 = load i32, ptr %i.aep, align 4, !tbaa !84 ; 2 uses
  %.not652.us.us.us.us25774 = icmp eq i32 %.0556.us.us.us.us25773, -1
  br i1 %.not652.us.us.us.us25774, label %.split8646.us8871.us.us, label %.lr.ph25779.preheader

.lr.ph25779.preheader:                            ; preds = %.preheader.us.us.us
  %i.aeq = load ptr, ptr %i.cf, align 16, !tbaa !113 ; 3 uses
  %i.aer = ptrtoint ptr %i.aeq to i64, !nosanitize !10 ; 3 uses
  %i.aes = icmp ne ptr %i.aeq, null, !nosanitize !10 ; 2 uses
  br label %.lr.ph25779

.lr.ph25779:                                      ; preds = %.lr.ph25779.preheader, %.preheader.split.us.us.us.us
  %.0556.us.us.us.us25778 = phi i32 [ %.0556.us.us.us.us, %.preheader.split.us.us.us.us ], [ %.0556.us.us.us.us25773, %.lr.ph25779.preheader ] ; 2 uses
  %.1559.us.us.us.us25777 = phi i32 [ %i.afu, %.preheader.split.us.us.us.us ], [ %.05588753.us.us.us25790, %.lr.ph25779.preheader ]
  %.sroa.0800.0.copyload8611.us.us.us.us25776 = phi <2 x float> [ %i.aft, %.preheader.split.us.us.us.us ], [ %.us-phi865087398752.us.us.us25791, %.lr.ph25779.preheader ] ; 2 uses
  %i.aet = phi float [ %i.afq, %.preheader.split.us.us.us.us ], [ %.us-phi86498763.us.us.us25789, %.lr.ph25779.preheader ] ; 2 uses
  %.sroa.05.4.vec.insert.i21.i8626.us.us.us.us25775 = phi <2 x float> [ %i.afo, %.preheader.split.us.us.us.us ], [ %.us-phi86488790.us.us.us25788, %.lr.ph25779.preheader ] ; 2 uses
  %i.aeu = phi float [ %i.afm, %.preheader.split.us.us.us.us ], [ %.us-phi86478817.us.us.us25787, %.lr.ph25779.preheader ] ; 2 uses
  %i.aev = sext i32 %.0556.us.us.us.us25778 to i64 ; 2 uses
  %i.aew = getelementptr inbounds [232 x i8], ptr %i.aeq, i64 %i.aev ; 6 uses
  %i.aex = mul nsw i64 %i.aev, 232
  %i.aey = add i64 %i.aex, %i.aer, !nosanitize !10 ; 3 uses
  %i.aez = icmp eq i64 %i.aey, 0
  %i.afa = xor i1 %i.aes, %i.aez
  %i.afb = icmp uge i64 %i.aey, %i.aer, !nosanitize !10
  %i.afc = icmp slt i32 %.0556.us.us.us.us25778, 0
  %i.afd = xor i1 %i.afc, %i.afb
  %i.afe = and i1 %i.afa, %i.afd, !nosanitize !10
  br i1 %i.afe, label %bb.ef, label %.split8653.us, !prof !11, !nosanitize !10

bb.ef:                                            ; preds = %.lr.ph25779
  %i.aff = ptrtoint ptr %i.aew to i64, !nosanitize !10 ; 2 uses
  %i.afg = and i64 %i.aff, 7, !nosanitize !10
  %i.afh = icmp eq i64 %i.afg, 0, !nosanitize !10
  %i.afi = and i1 %i.aes, %i.afh
  br i1 %i.afi, label %bb.eg, label %.split8664.us, !prof !11, !nosanitize !10

bb.eg:                                            ; preds = %bb.ef
  %i.afj = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.1559.us.us.us.us25777, i32 1), !nosanitize !10 ; 2 uses
  %i.afk = extractvalue { i32, i1 } %i.afj, 1, !nosanitize !10
  br i1 %i.afk, label %.split8674.us, label %.preheader.split.us.us.us.us, !prof !78, !nosanitize !10

.preheader.split.us.us.us.us:                     ; preds = %bb.eg
  %.sroa.6807.0..sroa_idx.us.us.us.us = getelementptr inbounds nuw i8, ptr %i.aew, i64 84
  %.sroa.6807.0.copyload.us.us.us.us = load float, ptr %.sroa.6807.0..sroa_idx.us.us.us.us, align 4 ; 2 uses
  %i.afl = fcmp ogt float %i.aeu, %.sroa.6807.0.copyload.us.us.us.us
  %i.afm = select i1 %i.afl, float %i.aeu, float %.sroa.6807.0.copyload.us.us.us.us ; 2 uses
  %.sroa.5806.0..sroa_idx.us.us.us.us = getelementptr inbounds nuw i8, ptr %i.aew, i64 76
  %.sroa.5806.0.copyload.us.us.us.us = load <2 x float>, ptr %.sroa.5806.0..sroa_idx.us.us.us.us, align 4 ; 2 uses
  %i.afn = fcmp ogt <2 x float> %.sroa.05.4.vec.insert.i21.i8626.us.us.us.us25775, %.sroa.5806.0.copyload.us.us.us.us
  %i.afo = select <2 x i1> %i.afn, <2 x float> %.sroa.05.4.vec.insert.i21.i8626.us.us.us.us25775, <2 x float> %.sroa.5806.0.copyload.us.us.us.us ; 2 uses
  %.sroa.4805.0..sroa_idx.us.us.us.us = getelementptr inbounds nuw i8, ptr %i.aew, i64 72
  %.sroa.4805.0.copyload.us.us.us.us = load float, ptr %.sroa.4805.0..sroa_idx.us.us.us.us, align 8 ; 2 uses
  %i.afp = fcmp olt float %i.aet, %.sroa.4805.0.copyload.us.us.us.us
  %i.afq = select i1 %i.afp, float %i.aet, float %.sroa.4805.0.copyload.us.us.us.us ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.aew, i64 64
  %.sroa.0804.0.copyload.us.us.us.us = load <2 x float>, ptr %i.afr, align 8 ; 2 uses
  %i.afs = fcmp olt <2 x float> %.sroa.0800.0.copyload8611.us.us.us.us25776, %.sroa.0804.0.copyload.us.us.us.us
  %i.aft = select <2 x i1> %i.afs, <2 x float> %.sroa.0800.0.copyload8611.us.us.us.us25776, <2 x float> %.sroa.0804.0.copyload.us.us.us.us ; 2 uses
  %i.afu = extractvalue { i32, i1 } %i.afj, 0, !nosanitize !10 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.aew, i64 12
  %.0556.us.us.us.us = load i32, ptr %i.afv, align 4, !tbaa !84 ; 2 uses
  %.not652.us.us.us.us = icmp eq i32 %.0556.us.us.us.us, -1
  br i1 %.not652.us.us.us.us, label %.split8646.us8871.us.us, label %.lr.ph25779

.split8646.us8871.us.us:                          ; preds = %.preheader.split.us.us.us.us, %.preheader.us.us.us
  %.lcssa24807 = phi float [ %.us-phi86478817.us.us.us25787, %.preheader.us.us.us ], [ %i.afm, %.preheader.split.us.us.us.us ] ; 2 uses
  %.sroa.05.4.vec.insert.i21.i8626.us.us.us.us.lcssa = phi <2 x float> [ %.us-phi86488790.us.us.us25788, %.preheader.us.us.us ], [ %i.afo, %.preheader.split.us.us.us.us ] ; 2 uses
  %.lcssa24800 = phi float [ %.us-phi86498763.us.us.us25789, %.preheader.us.us.us ], [ %i.afq, %.preheader.split.us.us.us.us ] ; 2 uses
  %.sroa.0800.0.copyload8611.us.us.us.us.lcssa = phi <2 x float> [ %.us-phi865087398752.us.us.us25791, %.preheader.us.us.us ], [ %i.aft, %.preheader.split.us.us.us.us ] ; 2 uses
  %.1559.us.us.us.us.lcssa = phi i32 [ %.05588753.us.us.us25790, %.preheader.us.us.us ], [ %i.afu, %.preheader.split.us.us.us.us ] ; 2 uses
  %exitcond18568 = icmp eq i64 %indvars.iv1856325786, 2147483647
  br i1 %exitcond18568, label %.split9367.us, label %bb.eb, !prof !78, !nosanitize !10

._crit_edge25793:                                 ; preds = %bb.eb
  %i.afw = icmp sgt i32 %.1559.us.us.us.us.lcssa, 0
  store float %.lcssa24800, ptr %.sroa.4801.0..sroa_idx, align 8
  store <2 x float> %.sroa.05.4.vec.insert.i21.i8626.us.us.us.us.lcssa, ptr %.sroa.5802.0..sroa_idx, align 4
  store float %.lcssa24807, ptr %.sroa.6803.0..sroa_idx, align 4
  store <2 x float> %.sroa.0800.0.copyload8611.us.us.us.us.lcssa, ptr %5, align 8
  br i1 %i.afw, label %bb.eh, label %bb.ek

bb.eh:                                            ; preds = %._crit_edge25793
  %i.afx = load ptr, ptr %i.cg, align 8, !tbaa !289 ; 4 uses
  %i.afy = getelementptr i8, ptr %i.afx, i64 -8
  %i.afz = load i32, ptr %i.afy, align 4, !nosanitize !10
  %i.aga = icmp eq i32 %i.afz, -1056584962, !nosanitize !10
  br i1 %i.aga, label %bb.ei, label %bb.ej, !nosanitize !10

bb.ei:                                            ; preds = %bb.eh
  %i.agb = getelementptr i8, ptr %i.afx, i64 -4
  %i.agc = load i32, ptr %i.agb, align 8, !nosanitize !10
  %i.agd = icmp eq i32 %i.agc, -1434405476, !nosanitize !10
  br i1 %i.agd, label %bb.ej, label %.split9388.us, !prof !11, !nosanitize !10

bb.ej:                                            ; preds = %bb.eh, %bb.ei
  %i.age = load ptr, ptr %i.be, align 8, !tbaa !276
  call void %i.afx(ptr noundef nonnull byval(%struct.b3AABB) align 8 %5, i32 noundef 16729344, ptr noundef %i.age) #16
  br label %bb.ek

.critedge:                                        ; preds = %.lr.ph8756.us.us.us
  store float f0x7F7FFFFF, ptr %.sroa.4801.0..sroa_idx, align 8
  store <2 x float> splat (float f0xFF7FFFFF), ptr %.sroa.5802.0..sroa_idx, align 4
  store float f0xFF7FFFFF, ptr %.sroa.6803.0..sroa_idx, align 4
  store <2 x float> splat (float f0x7F7FFFFF), ptr %5, align 8
  br label %bb.ek

bb.ek:                                            ; preds = %.critedge, %bb.ej, %._crit_edge25793
  %i.agf = load ptr, ptr %i.af, align 8, !tbaa !256 ; 3 uses
  %i.agg = zext nneg i32 %i.abs to i64            ; 2 uses
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %i.agf, i64 %i.agg ; 3 uses
  %i.agi = shl nuw nsw i64 %i.agg, 3
  %i.agj = ptrtoint ptr %i.agf to i64, !nosanitize !10 ; 3 uses
  %i.agk = add i64 %i.agi, %i.agj, !nosanitize !10 ; 3 uses
  %i.agl = icmp ne ptr %i.agf, null, !nosanitize !10 ; 2 uses
  %i.agm = icmp eq i64 %i.agk, 0
  %i.agn = xor i1 %i.agl, %i.agm
  %i.ago = icmp uge i64 %i.agk, %i.agj, !nosanitize !10
  %i.agp = and i1 %i.ago, %i.agn, !nosanitize !10
  br i1 %i.agp, label %bb.el, label %.split9394.us, !prof !11, !nosanitize !10

bb.el:                                            ; preds = %bb.ek
  %i.agq = ptrtoint ptr %i.agh to i64, !nosanitize !10 ; 2 uses
  %i.agr = and i64 %i.agq, 7, !nosanitize !10
  %i.ags = icmp eq i64 %i.agr, 0, !nosanitize !10
  %i.agt = and i1 %i.agl, %i.ags
  br i1 %i.agt, label %bb.em, label %.split9398.us, !prof !11, !nosanitize !10

bb.em:                                            ; preds = %bb.el
  %i.agu = and i32 %i.abr, 63
  %i.agv = zext nneg i32 %i.agu to i64
  %i.agw = shl nuw i64 1, %i.agv
  %i.agx = load i64, ptr %i.agh, align 8, !tbaa !257
  %i.agy = or i64 %i.agx, %i.agw
  store i64 %i.agy, ptr %i.agh, align 8, !tbaa !257
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.thread812.us.us.us

.thread812.us.us.us:                              ; preds = %bb.em, %b3GetBit.exit774.us.us.us, %bb.dv, %bb.dt
  %i.agz = add i64 %.05528844.us.us11328.us, -1
  %i.aha = and i64 %i.agz, %.05528844.us.us11328.us
  br label %bb.en

bb.en:                                            ; preds = %.thread812.us.us.us, %bb.ea
  %.1553.us.us.us = phi i64 [ %i.aha, %.thread812.us.us.us ], [ %.05528844.us.us11328.us, %bb.ea ] ; 2 uses
  %.not.us.us.us = icmp eq i64 %.1553.us.us.us, 0
  br i1 %.not.us.us.us, label %._crit_edge8847.split.us.us.us, label %bb.i

._crit_edge8847.split.us.us.us:                   ; preds = %bb.en, %bb.h
  %i.ahb = add nuw i32 %.055111314.us11326.us, 1  ; 2 uses
  %exitcond18569.not = icmp eq i32 %i.ahb, %i.ax
  br i1 %exitcond18569.not, label %._crit_edge11316, label %.lr.ph.split.split.us.split.us.split, !llvm.loop !467

._crit_edge11316:                                 ; preds = %._crit_edge8847.split.us.us.us, %.split8010.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.ahc = call float @b3GetLengthUnitsPerMeter() #16
  %i.ahd = fmul float %i.ahc, 2.000000e-03        ; 4 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %..i, i64 4680 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %..i, i64 4144 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ahk = load i32, ptr %i.ahe, align 8, !tbaa !153
  %i.ahl = icmp sgt i32 %i.ahk, 0
  br i1 %i.ahl, label %.lr.ph25800.preheader, label %.split12634.us

.lr.ph25800.preheader:                            ; preds = %._crit_edge11316
  %i.ahm = insertelement <2 x float> poison, float %i.ahd, i64 0
  %i.ahn = shufflevector <2 x float> %i.ahm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aho = insertelement <2 x float> poison, float %i.ahd, i64 0
  %i.ahp = shufflevector <2 x float> %i.aho, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph25800

.lr.ph25800:                                      ; preds = %.lr.ph25800.preheader, %._crit_edge12355.split.us.split.us.split.us.split.us.us
  %indvars.iv1858525799 = phi i64 [ %indvars.iv.next18586, %._crit_edge12355.split.us.split.us.split.us.split.us.us ], [ 0, %.lr.ph25800.preheader ] ; 4 uses
  %i.ahq = load ptr, ptr %i.ahf, align 16, !tbaa !162 ; 4 uses
  %i.ahr = getelementptr inbounds nuw [3848 x i8], ptr %i.ahq, i64 %indvars.iv1858525799 ; 3 uses
  %i.ahs = mul nuw nsw i64 %indvars.iv1858525799, 3848 ; 2 uses
  %i.aht = ptrtoint ptr %i.ahq to i64, !nosanitize !10 ; 4 uses
  %i.ahu = add i64 %i.ahs, %i.aht, !nosanitize !10 ; 4 uses
  %i.ahv = icmp ne ptr %i.ahq, null, !nosanitize !10 ; 2 uses
  %i.ahw = icmp eq i64 %i.ahu, 0
  %i.ahx = xor i1 %i.ahv, %i.ahw
  %i.ahy = icmp uge i64 %i.ahu, %i.aht, !nosanitize !10
  %i.ahz = and i1 %i.ahx, %i.ahy, !nosanitize !10
  br i1 %i.ahz, label %bb.eo, label %.split12636.us, !prof !11, !nosanitize !10

bb.eo:                                            ; preds = %.lr.ph25800
  %i.aia = ptrtoint ptr %i.ahr to i64, !nosanitize !10 ; 2 uses
  %i.aib = and i64 %i.aia, 7, !nosanitize !10
  %i.aic = icmp eq i64 %i.aib, 0, !nosanitize !10
  %i.aid = and i1 %i.ahv, %i.aic
  br i1 %i.aid, label %bb.ep, label %.split12640.us, !prof !11, !nosanitize !10

bb.ep:                                            ; preds = %bb.eo
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ahr, i64 1696
  %i.aif = load i32, ptr %i.aie, align 8, !tbaa !223 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahr, i64 160 ; 2 uses
  %i.aih = icmp sgt i32 %i.aif, 0
  br i1 %i.aih, label %.lr.ph12055.split.us.us, label %._crit_edge12056.split.us.split.us.split.us.split.us.us

.lr.ph12055.split.us.us:                          ; preds = %bb.ep
  %i.aii = ptrtoint ptr %i.aig to i64, !nosanitize !10 ; 3 uses
  %wide.trip.count18578 = zext nneg i32 %i.aif to i64
  br label %.lr.ph12055.split.us.split.us.split.us.split.us.us

.lr.ph12055.split.us.split.us.split.us.split.us.us: ; preds = %.lr.ph12055.split.us.us, %bb.eu
  %indvars.iv18575 = phi i64 [ 0, %.lr.ph12055.split.us.us ], [ %indvars.iv.next18576, %bb.eu ] ; 3 uses
  %i.aij = getelementptr inbounds nuw [24 x i8], ptr %i.aig, i64 %indvars.iv18575 ; 5 uses
  %i.aik = mul nuw nsw i64 %indvars.iv18575, 24
  %i.ail = add i64 %i.aik, %i.aii, !nosanitize !10 ; 2 uses
  %.not816.us.us.us.us.us = icmp ult i64 %i.ail, %i.aii, !nosanitize !10
  br i1 %.not816.us.us.us.us.us, label %.split12058.us, label %bb.eq, !prof !78, !nosanitize !10

bb.eq:                                            ; preds = %.lr.ph12055.split.us.split.us.split.us.split.us.us
  %.sroa.043.0.copyload.us.us.us.us.us = load <2 x float>, ptr %i.aij, align 4, !tbaa !144 ; 2 uses
  %.sroa.5.0..sroa_idx.us.us.us.us.us = getelementptr inbounds nuw i8, ptr %i.aij, i64 8
  %.sroa.5.0.copyload.us.us.us.us.us = load float, ptr %.sroa.5.0..sroa_idx.us.us.us.us.us, align 4, !tbaa !144 ; 2 uses
  %i.aim = load ptr, ptr %i.ahg, align 8, !tbaa !481 ; 4 uses
  %i.ain = getelementptr i8, ptr %i.aim, i64 -8
  %i.aio = load i32, ptr %i.ain, align 4, !nosanitize !10
  %i.aip = icmp eq i32 %i.aio, -1056584962, !nosanitize !10
  br i1 %i.aip, label %bb.er, label %bb.es, !nosanitize !10

bb.er:                                            ; preds = %bb.eq
  %i.aiq = getelementptr i8, ptr %i.aim, i64 -4
  %i.air = load i32, ptr %i.aiq, align 8, !nosanitize !10
  %i.ais = icmp eq i32 %i.air, -127790077, !nosanitize !10
  br i1 %i.ais, label %bb.es, label %.split12068.us, !prof !11, !nosanitize !10

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aij, i64 20 ; 2 uses
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !500
  %i.aiv = load ptr, ptr %i.ahh, align 8, !tbaa !276
  call void %i.aim(<2 x float> %.sroa.043.0.copyload.us.us.us.us.us, float %.sroa.5.0.copyload.us.us.us.us.us, float noundef 5.000000e+00, i32 noundef %i.aiu, ptr noundef %i.aiv) #16
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aij, i64 12
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aij, i64 16
  %i.aiy = load i32, ptr %i.aiw, align 4, !tbaa !501
  %i.aiz = load float, ptr %i.aix, align 4, !tbaa !502
  %i.aja = fpext float %i.aiz to double
  %i.ajb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %i.aiy, double noundef %i.aja) #16 ; 0 uses
  %i.ajc = fadd <2 x float> %i.ahn, %.sroa.043.0.copyload.us.us.us.us.us
  %i.ajd = fadd float %i.ahd, %.sroa.5.0.copyload.us.us.us.us.us
  %i.aje = load ptr, ptr %i.ahi, align 8, !tbaa !475 ; 4 uses
  %i.ajf = getelementptr i8, ptr %i.aje, i64 -8
  %i.ajg = load i32, ptr %i.ajf, align 4, !nosanitize !10
  %i.ajh = icmp eq i32 %i.ajg, -1056584962, !nosanitize !10
  br i1 %i.ajh, label %bb.et, label %bb.eu, !nosanitize !10

bb.et:                                            ; preds = %bb.es
  %i.aji = getelementptr i8, ptr %i.aje, i64 -4
  %i.ajj = load i32, ptr %i.aji, align 8, !nosanitize !10
  %i.ajk = icmp eq i32 %i.ajj, -449580001, !nosanitize !10
  br i1 %i.ajk, label %bb.eu, label %.split12086.us, !prof !11, !nosanitize !10

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.ajl = load i32, ptr %i.ait, align 4, !tbaa !500
  %i.ajm = load ptr, ptr %i.ahh, align 8, !tbaa !276
  call void %i.aje(<2 x float> %i.ajc, float %i.ajd, ptr noundef nonnull %i.f, i32 noundef %i.ajl, ptr noundef %i.ajm) #16
  %indvars.iv.next18576 = add nuw nsw i64 %indvars.iv18575, 1 ; 2 uses
  %exitcond18579.not = icmp eq i64 %indvars.iv.next18576, %wide.trip.count18578
  br i1 %exitcond18579.not, label %._crit_edge12056.split.us.split.us.split.us.split.us.us.loopexit, label %.lr.ph12055.split.us.split.us.split.us.split.us.us, !llvm.loop !468

._crit_edge12056.split.us.split.us.split.us.split.us.us.loopexit: ; preds = %bb.eu
  %.pre = load ptr, ptr %i.ahf, align 16, !tbaa !162 ; 2 uses
  %.pre18589 = ptrtoint ptr %.pre to i64, !nosanitize !10 ; 2 uses
  %.pre18590 = add i64 %i.ahs, %.pre18589, !nosanitize !10
  br label %._crit_edge12056.split.us.split.us.split.us.split.us.us

._crit_edge12056.split.us.split.us.split.us.split.us.us: ; preds = %._crit_edge12056.split.us.split.us.split.us.split.us.us.loopexit, %bb.ep
  %.pre-phi18591 = phi i64 [ %.pre18590, %._crit_edge12056.split.us.split.us.split.us.split.us.us.loopexit ], [ %i.ahu, %bb.ep ] ; 3 uses
  %.pre-phi = phi i64 [ %.pre18589, %._crit_edge12056.split.us.split.us.split.us.split.us.us.loopexit ], [ %i.aht, %bb.ep ] ; 2 uses
  %i.ajn = phi ptr [ %.pre, %._crit_edge12056.split.us.split.us.split.us.split.us.us.loopexit ], [ %i.ahq, %bb.ep ] ; 2 uses
  %i.ajo = getelementptr inbounds nuw [3848 x i8], ptr %i.ajn, i64 %indvars.iv1858525799 ; 3 uses
  %i.ajp = icmp ne ptr %i.ajn, null, !nosanitize !10 ; 2 uses
  %i.ajq = icmp eq i64 %.pre-phi18591, 0
  %i.ajr = xor i1 %i.ajp, %i.ajq
  %i.ajs = icmp uge i64 %.pre-phi18591, %.pre-phi, !nosanitize !10
  %i.ajt = and i1 %i.ajr, %i.ajs, !nosanitize !10
  br i1 %i.ajt, label %bb.ev, label %.split12669.us, !prof !11, !nosanitize !10

bb.ev:                                            ; preds = %._crit_edge12056.split.us.split.us.split.us.split.us.us
  %i.aju = ptrtoint ptr %i.ajo to i64, !nosanitize !10 ; 2 uses
  %i.ajv = and i64 %i.aju, 7, !nosanitize !10
  %i.ajw = icmp eq i64 %i.ajv, 0, !nosanitize !10
  %i.ajx = and i1 %i.ajp, %i.ajw
  br i1 %i.ajx, label %bb.ew, label %.split12673.us, !prof !11, !nosanitize !10

bb.ew:                                            ; preds = %bb.ev
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajo, i64 3748
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !224 ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajo, i64 1700 ; 2 uses
  %i.akb = icmp sgt i32 %i.ajz, 0
  br i1 %i.akb, label %.lr.ph12354.split.us.us, label %._crit_edge12355.split.us.split.us.split.us.split.us.us

.lr.ph12354.split.us.us:                          ; preds = %bb.ew
  %i.akc = ptrtoint ptr %i.aka to i64, !nosanitize !10 ; 3 uses
  %wide.trip.count18583 = zext nneg i32 %i.ajz to i64
  br label %.lr.ph12354.split.us.split.us.split.us.split.us.us

.lr.ph12354.split.us.split.us.split.us.split.us.us: ; preds = %.lr.ph12354.split.us.us, %bb.fd
  %indvars.iv18580 = phi i64 [ 0, %.lr.ph12354.split.us.us ], [ %indvars.iv.next18581, %bb.fd ] ; 3 uses
  %i.akd = getelementptr inbounds nuw [32 x i8], ptr %i.aka, i64 %indvars.iv18580 ; 6 uses
  %i.ake = shl nuw nsw i64 %indvars.iv18580, 5
  %i.akf = add i64 %i.ake, %i.akc, !nosanitize !10 ; 2 uses
  %.not815.us.us.us.us.us = icmp ult i64 %i.akf, %i.akc, !nosanitize !10
  br i1 %.not815.us.us.us.us.us, label %.split12357.us, label %bb.ex, !prof !78, !nosanitize !10

bb.ex:                                            ; preds = %.lr.ph12354.split.us.split.us.split.us.split.us.us
  %.sroa.017.0.copyload.us.us.us.us.us = load <2 x float>, ptr %i.akd, align 4, !tbaa !144 ; 3 uses
  %.sroa.6.0..sroa_idx.us.us.us.us.us = getelementptr inbounds nuw i8, ptr %i.akd, i64 8
  %.sroa.6.0.copyload.us.us.us.us.us = load float, ptr %.sroa.6.0..sroa_idx.us.us.us.us.us, align 4, !tbaa !144 ; 3 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akd, i64 12
  %.sroa.015.0.copyload.us.us.us.us.us = load <2 x float>, ptr %i.akg, align 4, !tbaa !144
  %.sroa.416.0..sroa_idx.us.us.us.us.us = getelementptr inbounds nuw i8, ptr %i.akd, i64 20
  %.sroa.416.0.copyload.us.us.us.us.us = load float, ptr %.sroa.416.0..sroa_idx.us.us.us.us.us, align 4, !tbaa !144
  %i.akh = load ptr, ptr %i.ahj, align 8, !tbaa !494 ; 4 uses
  %i.aki = getelementptr i8, ptr %i.akh, i64 -8
  %i.akj = load i32, ptr %i.aki, align 4, !nosanitize !10
  %i.akk = icmp eq i32 %i.akj, -1056584962, !nosanitize !10
  br i1 %i.akk, label %bb.ey, label %bb.ez, !nosanitize !10

bb.ey:                                            ; preds = %bb.ex
  %i.akl = getelementptr i8, ptr %i.akh, i64 -4
  %i.akm = load i32, ptr %i.akl, align 8, !nosanitize !10
  %i.akn = icmp eq i32 %i.akm, -341714709, !nosanitize !10
  br i1 %i.akn, label %bb.ez, label %.split12370.us, !prof !11, !nosanitize !10

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akd, i64 28 ; 3 uses
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !504
  %i.akq = load ptr, ptr %i.ahh, align 8, !tbaa !276
  call void %i.akh(<2 x float> %.sroa.017.0.copyload.us.us.us.us.us, float %.sroa.6.0.copyload.us.us.us.us.us, <2 x float> %.sroa.015.0.copyload.us.us.us.us.us, float %.sroa.416.0.copyload.us.us.us.us.us, i32 noundef %i.akp, ptr noundef %i.akq) #16
  %i.akr = load ptr, ptr %i.ahg, align 8, !tbaa !481 ; 4 uses
  %i.aks = getelementptr i8, ptr %i.akr, i64 -8
  %i.akt = load i32, ptr %i.aks, align 4, !nosanitize !10
  %i.aku = icmp eq i32 %i.akt, -1056584962, !nosanitize !10
  br i1 %i.aku, label %bb.fa, label %bb.fb, !nosanitize !10

bb.fa:                                            ; preds = %bb.ez
  %i.akv = getelementptr i8, ptr %i.akr, i64 -4
  %i.akw = load i32, ptr %i.akv, align 8, !nosanitize !10
  %i.akx = icmp eq i32 %i.akw, -127790077, !nosanitize !10
  br i1 %i.akx, label %bb.fb, label %.split12382.us, !prof !11, !nosanitize !10

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %i.aky = load i32, ptr %i.ako, align 4, !tbaa !504
  %i.akz = load ptr, ptr %i.ahh, align 8, !tbaa !276
  call void %i.akr(<2 x float> %.sroa.017.0.copyload.us.us.us.us.us, float %.sroa.6.0.copyload.us.us.us.us.us, float noundef 1.000000e+01, i32 noundef %i.aky, ptr noundef %i.akz) #16
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akd, i64 24
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !505
  %i.alc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %i.alb) #16 ; 0 uses
  %i.ald = fadd <2 x float> %i.ahp, %.sroa.017.0.copyload.us.us.us.us.us
  %i.ale = fadd float %i.ahd, %.sroa.6.0.copyload.us.us.us.us.us
  %i.alf = load ptr, ptr %i.ahi, align 8, !tbaa !475 ; 4 uses
  %i.alg = getelementptr i8, ptr %i.alf, i64 -8
  %i.alh = load i32, ptr %i.alg, align 4, !nosanitize !10
  %i.ali = icmp eq i32 %i.alh, -1056584962, !nosanitize !10
  br i1 %i.ali, label %bb.fc, label %bb.fd, !nosanitize !10

bb.fc:                                            ; preds = %bb.fb
  %i.alj = getelementptr i8, ptr %i.alf, i64 -4
  %i.alk = load i32, ptr %i.alj, align 8, !nosanitize !10
  %i.all = icmp eq i32 %i.alk, -449580001, !nosanitize !10
  br i1 %i.all, label %bb.fd, label %.split12391.us, !prof !11, !nosanitize !10

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.alm = load i32, ptr %i.ako, align 4, !tbaa !504
  %i.aln = load ptr, ptr %i.ahh, align 8, !tbaa !276
  call void %i.alf(<2 x float> %i.ald, float %i.ale, ptr noundef nonnull %i.f, i32 noundef %i.alm, ptr noundef %i.aln) #16
  %indvars.iv.next18581 = add nuw nsw i64 %indvars.iv18580, 1 ; 2 uses
  %exitcond18584.not = icmp eq i64 %indvars.iv.next18581, %wide.trip.count18583
  br i1 %exitcond18584.not, label %._crit_edge12355.split.us.split.us.split.us.split.us.us, label %.lr.ph12354.split.us.split.us.split.us.split.us.us, !llvm.loop !469

._crit_edge12355.split.us.split.us.split.us.split.us.us: ; preds = %bb.fd, %bb.ew
  %indvars.iv.next18586 = add nuw nsw i64 %indvars.iv1858525799, 1 ; 2 uses
  %i.alo = load i32, ptr %i.ahe, align 8, !tbaa !153
  %i.alp = sext i32 %i.alo to i64
  %i.alq = icmp slt i64 %indvars.iv.next18586, %i.alp
  br i1 %i.alq, label %.lr.ph25800, label %.split12634.us

.split11319.us:                                   ; preds = %.lr.ph.split.split.us.split.us.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @140, i64 %i.az, i64 %i.co) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split11323:                                      ; preds = %bb.g, %.lr.ph
  %.us-phi11324 = phi i64 [ 0, %.lr.ph ], [ %i.cp, %bb.g ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @141, i64 %.us-phi11324) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8873.us:                                    ; preds = %bb.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @142, i64 %i.db, i64 %i.dc) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8880.us:                                    ; preds = %bb.j
  %i.alr = zext i8 %i.dk to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @143, i64 %i.alr) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8883.us:                                    ; preds = %bb.l
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @145, i64 %i.dn) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8889.us:                                    ; preds = %bb.n
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @147, i64 %i.du) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8901.us:                                    ; preds = %bb.q
  %i.als = ptrtoint ptr %i.ey to i64, !nosanitize !10
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @149, i64 %i.als) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8910.us:                                    ; preds = %bb.s
  %i.alt = zext i8 %i.fg to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @150, i64 %i.alt) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8913.us:                                    ; preds = %bb.u
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @151, i64 %i.fk) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8925.us:                                    ; preds = %bb.w
  %i.alu = ptrtoint ptr %i.fq to i64, !nosanitize !10
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @153, i64 %i.alu) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8931.us:                                    ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @154, i64 %i.fy) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8943.us:                                    ; preds = %bb.aa
  %i.alv = ptrtoint ptr %i.hj to i64, !nosanitize !10
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @155, i64 %i.alv) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8949.us:                                    ; preds = %bb.ad
  %i.alw = zext i8 %i.hr to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @156, i64 %i.alw) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8952.us:                                    ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @157, i64 %i.hv) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8961.us:                                    ; preds = %bb.ai
  %i.alx = bitcast float %i.ie to i32, !nosanitize !10
  %i.aly = zext i32 %i.alx to i64, !nosanitize !10
  call void @__ubsan_handle_float_cast_overflow_abort(ptr nonnull @158, i64 %i.aly) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8967.us:                                    ; preds = %bb.ak
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @159, i64 %i.ip) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8976.us:                                    ; preds = %bb.am
  %i.alz = ptrtoint ptr %i.iu to i64, !nosanitize !10
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @161, i64 %i.alz) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8988.us:                                    ; preds = %bb.ao
  %i.ama = ptrtoint ptr %i.ji to i64, !nosanitize !10
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @162, i64 %i.ama) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8994.us:                                    ; preds = %bb.aq
  %i.amb = zext i8 %i.jq to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @163, i64 %i.amb) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8997.us:                                    ; preds = %bb.as
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @164, i64 %i.jt) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8012.us:                                    ; preds = %.lr.ph25763
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @165, i64 %i.ke, i64 %i.kf) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8021.us:                                    ; preds = %bb.au
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @627, i64 %i.kt, i64 %i.ku) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8025.us:                                    ; preds = %bb.av
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @628, i64 %i.la) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8028.us:                                    ; preds = %b3GetBit.exit.thread.us.us.us.us.us.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @629, i64 %i.ll, i64 %i.lm) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8032.us:                                    ; preds = %bb.aw
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @630, i64 %i.ls) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8035.us:                                    ; preds = %bb.ax
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @167, i64 %i.mb) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8038.us:                                    ; preds = %bb.ay
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @168, i64 %i.mi, i64 %i.mj) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split9032.us:                                    ; preds = %.loopexit822.us.us.us
  %i.amc = zext i8 %i.mp to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @169, i64 %i.amc) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split9035.us:                                    ; preds = %bb.ba
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @170, i64 %i.ms) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split9050.us:                                    ; preds = %.lr.ph.split.us.us.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @171, i64 %i.nk, i64 %i.nl) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split9054.us:                                    ; preds = %bb.be
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @172, i64 %i.nt) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split9057.us:                                    ; preds = %bb.bf
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @173, i64 %i.oa, i64 %i.ob) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split9075.us:                                    ; preds = %bb.bj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @627, i64 %i.op, i64 %i.oq) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split9079.us:                                    ; preds = %bb.bk
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @628, i64 %i.ow) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split9085.us:                                    ; preds = %b3GetBit.exit684.thread.us.us.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @174, i64 %i.pj, i64 %i.pk) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split9089.us:                                    ; preds = %bb.bl
  %i.amd = add i64 %i.oa, 12, !nosanitize !10
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @175, i64 %i.oa, i64 %i.amd) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split9095.us:                                    ; preds = %bb.bm
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @176, i64 %i.pz, i64 %i.qa) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8141.us:                                    ; preds = %.lr.ph25772
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @177, i64 %i.rb, i64 %i.rc) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8145.us:                                    ; preds = %bb.bn
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @179, i64 %i.ri) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8154.us:                                    ; preds = %bb.bo
  %i.ame = zext i8 %i.rn to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @180, i64 %i.ame) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8163.us:                                    ; preds = %bb.br
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @181, i64 %i.qs) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8157.us:                                    ; preds = %bb.bq
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @182, i64 %i.qn) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split8170.us:                                    ; preds = %.lr.ph25768
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @183, i64 %i.ri, i64 %i.sc) #15, !nosanitize !10
  unreachable, !nosanitize !10

end_hunk_0
