Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_triangle?download=true
inline.NumInlined: 20
inline.NumDeleted: 4
begin_hunk_0_@SDL_BlitTriangle_Slow:bb.a
  %i.abs = load i8, ptr %i.ci, align 1
  %i.abt = zext nneg i8 %i.abs to i32
  %i.abu = lshr i32 %i.abr, %i.abt
  %i.abv = zext nneg i32 %i.abu to i64
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abp, i64 %i.abv
  %i.abx = load i8, ptr %i.abw, align 1
  %i.aby = load i8, ptr %i.cj, align 2
  %i.abz = zext i8 %i.aby to i64
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.abz
  %i.acb = load ptr, ptr %i.aca, align 8
  %i.acc = load i32, ptr %i.ck, align 4
  %i.acd = and i32 %i.acc, %i.aaz
  %i.ace = load i8, ptr %i.cl, align 2
  %i.acf = zext nneg i8 %i.ace to i32
  %i.acg = lshr i32 %i.acd, %i.acf
  %i.ach = zext nneg i32 %i.acg to i64
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acb, i64 %i.ach
  %i.acj = load i8, ptr %i.aci, align 1
  br label %bb.au

bb.as:                                            ; preds = %bb.ap
  %i.ack = load i8, ptr %i.cf, align 4
  %i.acl = lshr i8 %i.ack, 3
  %i.acm = zext nneg i8 %i.acl to i64
  %i.acn = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.acm
  %i.aco = load i8, ptr %i.acn, align 1
  %i.acp = load i8, ptr %i.ci, align 1
  %i.acq = lshr i8 %i.acp, 3
  %i.acr = zext nneg i8 %i.acq to i64
  %i.acs = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.acr
  %i.act = load i8, ptr %i.acs, align 1
  %i.acu = load i8, ptr %i.cl, align 2
  %i.acv = lshr i8 %i.acu, 3
  %i.acw = zext nneg i8 %i.acv to i64
  %i.acx = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.acw
  %i.acy = load i8, ptr %i.acx, align 1
  br label %bb.au

bb.at:                                            ; preds = %bb.ap
  %i.acz = load i32, ptr %i.ea, align 4           ; 3 uses
  %i.ada = load i8, ptr %i.cd, align 4
  %i.adb = zext i8 %i.ada to i64
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.adb
  %i.add = load ptr, ptr %i.adc, align 8
  %i.ade = load i32, ptr %i.ce, align 4
  %i.adf = and i32 %i.ade, %i.acz
  %i.adg = load i8, ptr %i.cf, align 4
  %i.adh = zext nneg i8 %i.adg to i32
  %i.adi = lshr i32 %i.adf, %i.adh
  %i.adj = zext i32 %i.adi to i64
  %i.adk = getelementptr inbounds nuw i8, ptr %i.add, i64 %i.adj
  %i.adl = load i8, ptr %i.adk, align 1
  %i.adm = load i8, ptr %i.cg, align 1
  %i.adn = zext i8 %i.adm to i64
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.adn
  %i.adp = load ptr, ptr %i.ado, align 8
  %i.adq = load i32, ptr %i.ch, align 4
  %i.adr = and i32 %i.adq, %i.acz
  %i.ads = load i8, ptr %i.ci, align 1
  %i.adt = zext nneg i8 %i.ads to i32
  %i.adu = lshr i32 %i.adr, %i.adt
  %i.adv = zext i32 %i.adu to i64
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.adv
  %i.adx = load i8, ptr %i.adw, align 1
  %i.ady = load i8, ptr %i.cj, align 2
  %i.adz = zext i8 %i.ady to i64
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.adz
  %i.aeb = load ptr, ptr %i.aea, align 8
  %i.aec = load i32, ptr %i.ck, align 4
  %i.aed = and i32 %i.aec, %i.acz
  %i.aee = load i8, ptr %i.cl, align 2
  %i.aef = zext nneg i8 %i.aee to i32
  %i.aeg = lshr i32 %i.aed, %i.aef
  %i.aeh = zext i32 %i.aeg to i64
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeb, i64 %i.aeh
  %i.aej = load i8, ptr %i.aei, align 1
  br label %bb.au

bb.au:                                            ; preds = %bb.ap, %bb.at, %bb.as, %bb.ar, %bb.aq
  %.0595.shrunk = phi i8 [ %i.adl, %bb.at ], [ %i.zz, %bb.aq ], [ %i.abl, %bb.ar ], [ %i.aco, %bb.as ], [ 0, %bb.ap ]
  %.0592.shrunk = phi i8 [ %i.adx, %bb.at ], [ %i.aal, %bb.aq ], [ %i.abx, %bb.ar ], [ %i.act, %bb.as ], [ 0, %bb.ap ]
  %.0589.shrunk = phi i8 [ %i.aej, %bb.at ], [ %i.aax, %bb.aq ], [ %i.acj, %bb.ar ], [ %i.acy, %bb.as ], [ 0, %bb.ap ]
  %.0589 = zext i8 %.0589.shrunk to i32
  %.0592 = zext i8 %.0592.shrunk to i32
  %.0595 = zext i8 %.0595.shrunk to i32
  br label %bb.aw

bb.av:                                            ; preds = %bb.ao
  %i.aek = load i32, ptr %i.ea, align 4           ; 4 uses
  %i.ael = lshr i32 %i.aek, 22
  %i.aem = and i32 %i.ael, 255
  %i.aen = lshr i32 %i.aek, 12
  %i.aeo = and i32 %i.aen, 255
  %i.aep = lshr i32 %i.aek, 2
  %i.aeq = and i32 %i.aep, 255
  %i.aer = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 16), align 16
  %i.aes = lshr i32 %i.aek, 30
  %i.aet = zext nneg i32 %i.aes to i64
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.aet
  %i.aev = load i8, ptr %i.aeu, align 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ah, %bb.aj, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.av, %bb.au
  %.1596 = phi i32 [ 0, %bb.aj ], [ %i.tg, %bb.ak ], [ %i.vh, %bb.al ], [ %i.wz, %bb.am ], [ %i.xz, %bb.an ], [ %.0595, %bb.au ], [ %i.aem, %bb.av ], [ 0, %bb.ah ] ; 5 uses
  %.1593 = phi i32 [ 0, %bb.aj ], [ %i.tt, %bb.ak ], [ %i.vu, %bb.al ], [ %i.xf, %bb.am ], [ %i.ym, %bb.an ], [ %.0592, %bb.au ], [ %i.aeo, %bb.av ], [ 0, %bb.ah ] ; 5 uses
  %.1590 = phi i32 [ 0, %bb.aj ], [ %i.ug, %bb.ak ], [ %i.wh, %bb.al ], [ %i.xl, %bb.am ], [ %i.yz, %bb.an ], [ %.0589, %bb.au ], [ %i.aeq, %bb.av ], [ 0, %bb.ah ] ; 5 uses
  %.0587.shrunk = phi i8 [ 0, %bb.aj ], [ %i.us, %bb.ak ], [ %i.wt, %bb.al ], [ -1, %bb.am ], [ %i.zl, %bb.an ], [ -1, %bb.au ], [ %i.aev, %bb.av ], [ 0, %bb.ah ]
  %.0587 = zext i8 %.0587.shrunk to i32           ; 5 uses
  br i1 %23, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.aew = mul nsw i64 %.0582678, %i.cq
  %i.aex = mul nsw i64 %.0580680, %i.cs
  %i.aey = add nuw nsw i64 %i.aex, %i.aew
  %i.aez = mul nsw i64 %.0578682, %i.cu
  %i.afa = add nuw nsw i64 %i.aey, %i.aez
  %i.afb = udiv i64 %i.afa, %i.bd
  %i.afc = trunc i64 %i.afb to i32
  %i.afd = mul nsw i64 %.0582678, %i.cw
  %i.afe = mul nsw i64 %.0580680, %i.cy
  %i.aff = add nuw nsw i64 %i.afe, %i.afd
  %i.afg = mul nsw i64 %.0578682, %i.da
  %i.afh = add nuw nsw i64 %i.aff, %i.afg
  %i.afi = udiv i64 %i.afh, %i.bd
  %i.afj = trunc i64 %i.afi to i32
  %i.afk = mul nsw i64 %.0582678, %i.dc
  %i.afl = mul nsw i64 %.0580680, %i.de
  %i.afm = add nuw nsw i64 %i.afl, %i.afk
  %i.afn = mul nsw i64 %.0578682, %i.dg
  %i.afo = add nuw nsw i64 %i.afm, %i.afn
  %i.afp = udiv i64 %i.afo, %i.bd
  %i.afq = trunc i64 %i.afp to i32
  %i.afr = mul nsw i64 %.0582678, %.sroa.4542.0.extract.trunc
  %i.afs = mul nsw i64 %.0580680, %.sroa.4538.0.extract.trunc
  %i.aft = add nuw nsw i64 %i.afs, %i.afr
  %i.afu = mul nsw i64 %.0578682, %.sroa.4.0.extract.trunc
  %i.afv = add nuw nsw i64 %i.aft, %i.afu
  %i.afw = udiv i64 %i.afv, %i.bd
  %i.afx = trunc i64 %i.afw to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.2564 = phi i32 [ %.1563684, %bb.aw ], [ %i.afx, %bb.ax ] ; 12 uses
  %.2558 = phi i32 [ %.1557685, %bb.aw ], [ %i.afq, %bb.ax ] ; 12 uses
  %.2552 = phi i32 [ %.1551686, %bb.aw ], [ %i.afj, %bb.ax ] ; 12 uses
  %.2 = phi i32 [ %.1687, %bb.aw ], [ %i.afc, %bb.ax ] ; 12 uses
  br i1 %.not625, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.afy = mul i32 %.2, %.1573652
  %i.afz = udiv i32 %i.afy, 255
  %i.aga = mul i32 %.2552, %.1605648
  %i.agb = udiv i32 %i.aga, 255
  %i.agc = mul i32 %.2558, %.1601650
  %i.agd = udiv i32 %i.agc, 255
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.2606 = phi i32 [ %i.agb, %bb.az ], [ %.1605648, %bb.ay ] ; 2 uses
  %.2602 = phi i32 [ %i.agd, %bb.az ], [ %.1601650, %bb.ay ] ; 2 uses
  %.2574 = phi i32 [ %i.afz, %bb.az ], [ %.1573652, %bb.ay ] ; 2 uses
  br i1 %.not626, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.age = mul i32 %.2564, %.0598655
  %i.agf = udiv i32 %i.age, 255
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.1599 = phi i32 [ %i.agf, %bb.bb ], [ %.0598655, %bb.ba ] ; 8 uses
  %i.agg = icmp samesign ult i32 %.1599, 255
  %or.cond = select i1 %i.dk, i1 %i.agg, i1 false
  br i1 %or.cond, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.agh = mul nuw i32 %.1599, %.2574
  %i.agi = udiv i32 %i.agh, 255
  %i.agj = mul nuw i32 %.1599, %.2606
  %i.agk = udiv i32 %i.agj, 255
  %i.agl = mul nuw i32 %.1599, %.2602
  %i.agm = udiv i32 %i.agl, 255
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.3607 = phi i32 [ %i.agk, %bb.bd ], [ %.2606, %bb.bc ] ; 5 uses
  %.3603 = phi i32 [ %i.agm, %bb.bd ], [ %.2602, %bb.bc ] ; 5 uses
  %.3575 = phi i32 [ %i.agi, %bb.bd ], [ %.2574, %bb.bc ] ; 5 uses
  switch i32 %i.ca, label %bb.bk [
    i32 0, label %bb.bf
    i32 16, label %bb.bg
    i32 64, label %bb.bh
    i32 256, label %bb.bi
    i32 512, label %bb.bj
  ]

bb.bf:                                            ; preds = %bb.be
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.agn = sub nsw i32 255, %.1599                ; 4 uses
  %i.ago = mul i32 %i.agn, %.1596
  %26 = udiv i32 %i.ago, 255
  %27 = add nuw nsw i32 %.3575, %26
  %i.agp = mul i32 %i.agn, %.1593
  %28 = udiv i32 %i.agp, 255
  %i.agq = add nuw nsw i32 %.3607, %28
  %29 = mul i32 %i.agn, %.1590
  %30 = udiv i32 %29, 255
  %31 = add nuw nsw i32 %.3603, %30
  %32 = mul i32 %i.agn, %.0587
  %33 = udiv i32 %32, 255
  %i.agr = add nuw nsw i32 %33, %.1599
  br label %bb.bk

bb.bh:                                            ; preds = %bb.be
  %i.ags = add nuw nsw i32 %.3575, %.1596
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.ags, i32 255)
  %i.agt = add nuw nsw i32 %.3607, %.1593
  %spec.store.select6 = tail call i32 @llvm.umin.i32(i32 %i.agt, i32 255)
  %i.agu = add nuw nsw i32 %.3603, %.1590
  %spec.store.select1 = tail call i32 @llvm.umin.i32(i32 %i.agu, i32 255)
  br label %bb.bk

bb.bi:                                            ; preds = %bb.be
  %i.agv = mul nuw i32 %.3575, %.1596
  %i.agw = udiv i32 %i.agv, 255
  %i.agx = mul nuw i32 %.3607, %.1593
  %i.agy = udiv i32 %i.agx, 255
  %i.agz = mul nuw i32 %.3603, %.1590
  %i.aha = udiv i32 %i.agz, 255
  br label %bb.bk

bb.bj:                                            ; preds = %bb.be
  %i.ahb = sub nsw i32 255, %.1599                ; 3 uses
  %i.ahc = add nsw i32 %.3575, %i.ahb
  %i.ahd = mul i32 %i.ahc, %.1596
  %i.ahe = udiv i32 %i.ahd, 255
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %i.ahe, i32 255)
  %i.ahf = add nsw i32 %.3607, %i.ahb
  %i.ahg = mul i32 %i.ahf, %.1593
  %i.ahh = udiv i32 %i.ahg, 255
  %spec.store.select7 = tail call i32 @llvm.umin.i32(i32 %i.ahh, i32 255)
  %i.ahi = add nsw i32 %.3603, %i.ahb
  %i.ahj = mul i32 %i.ahi, %.1590
  %i.ahk = udiv i32 %i.ahj, 255
  %spec.store.select3 = tail call i32 @llvm.umin.i32(i32 %i.ahk, i32 255)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be
  %.2597 = phi i32 [ %.1596, %bb.be ], [ %.3575, %bb.bf ], [ %27, %bb.bg ], [ %spec.store.select, %bb.bh ], [ %i.agw, %bb.bi ], [ %spec.store.select2, %bb.bj ] ; 10 uses
  %.2594 = phi i32 [ %.1593, %bb.be ], [ %.3607, %bb.bf ], [ %i.agq, %bb.bg ], [ %spec.store.select6, %bb.bh ], [ %i.agy, %bb.bi ], [ %spec.store.select7, %bb.bj ] ; 10 uses
  %.2591 = phi i32 [ %.1590, %bb.be ], [ %.3603, %bb.bf ], [ %31, %bb.bg ], [ %spec.store.select1, %bb.bh ], [ %i.aha, %bb.bi ], [ %spec.store.select3, %bb.bj ] ; 10 uses
  %.1588 = phi i32 [ %.0587, %bb.be ], [ %.1599, %bb.bf ], [ %i.agr, %bb.bg ], [ %.0587, %bb.bh ], [ %.0587, %bb.bi ], [ %.0587, %bb.bj ] ; 4 uses
  br i1 %i.cb, label %bb.bl, label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  switch i8 %i.z, label %.thread670 [
    i8 1, label %bb.bm
    i8 2, label %bb.bn
    i8 3, label %bb.bo
    i8 4, label %bb.bp
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.ahl = load i8, ptr %i.cd, align 4
  %i.ahm = zext i8 %i.ahl to i32
  %i.ahn = sub nsw i32 8, %i.ahm
  %i.aho = lshr i32 %.2597, %i.ahn
  %i.ahp = load i8, ptr %i.cf, align 4
  %i.ahq = zext nneg i8 %i.ahp to i32
  %i.ahr = shl i32 %i.aho, %i.ahq
  %i.ahs = load i8, ptr %i.cg, align 1
  %i.aht = zext i8 %i.ahs to i32
  %i.ahu = sub nsw i32 8, %i.aht
  %i.ahv = lshr i32 %.2594, %i.ahu
  %i.ahw = load i8, ptr %i.ci, align 1
  %i.ahx = zext nneg i8 %i.ahw to i32
  %i.ahy = shl i32 %i.ahv, %i.ahx
  %i.ahz = or i32 %i.ahy, %i.ahr
  %i.aia = load i8, ptr %i.cj, align 2
  %i.aib = zext i8 %i.aia to i32
  %i.aic = sub nsw i32 8, %i.aib
  %i.aid = lshr i32 %.2591, %i.aic
  %i.aie = load i8, ptr %i.cl, align 2
  %i.aif = zext nneg i8 %i.aie to i32
  %i.aig = shl i32 %i.aid, %i.aif
  %i.aih = or i32 %i.ahz, %i.aig
  %i.aii = load i8, ptr %i.cm, align 1
  %i.aij = zext i8 %i.aii to i32
  %i.aik = sub nsw i32 8, %i.aij
  %i.ail = lshr i32 %.1588, %i.aik
  %i.aim = load i8, ptr %i.co, align 1
  %i.ain = zext nneg i8 %i.aim to i32
  %i.aio = shl i32 %i.ail, %i.ain
  %i.aip = or i32 %i.aih, %i.aio
  %i.aiq = trunc i32 %i.aip to i8
  store i8 %i.aiq, ptr %i.ea, align 1
  br label %.thread670

bb.bn:                                            ; preds = %bb.bl
  %i.air = load i8, ptr %i.cd, align 4
  %i.ais = zext i8 %i.air to i32
  %i.ait = sub nsw i32 8, %i.ais
  %i.aiu = lshr i32 %.2597, %i.ait
  %i.aiv = load i8, ptr %i.cf, align 4
  %i.aiw = zext nneg i8 %i.aiv to i32
  %i.aix = shl i32 %i.aiu, %i.aiw
  %i.aiy = load i8, ptr %i.cg, align 1
  %i.aiz = zext i8 %i.aiy to i32
  %i.aja = sub nsw i32 8, %i.aiz
  %i.ajb = lshr i32 %.2594, %i.aja
  %i.ajc = load i8, ptr %i.ci, align 1
  %i.ajd = zext nneg i8 %i.ajc to i32
  %i.aje = shl i32 %i.ajb, %i.ajd
  %i.ajf = or i32 %i.aje, %i.aix
  %i.ajg = load i8, ptr %i.cj, align 2
  %i.ajh = zext i8 %i.ajg to i32
  %i.aji = sub nsw i32 8, %i.ajh
  %i.ajj = lshr i32 %.2591, %i.aji
  %i.ajk = load i8, ptr %i.cl, align 2
  %i.ajl = zext nneg i8 %i.ajk to i32
  %i.ajm = shl i32 %i.ajj, %i.ajl
  %i.ajn = or i32 %i.ajf, %i.ajm
  %i.ajo = load i8, ptr %i.cm, align 1
  %i.ajp = zext i8 %i.ajo to i32
  %i.ajq = sub nsw i32 8, %i.ajp
  %i.ajr = lshr i32 %.1588, %i.ajq
  %i.ajs = load i8, ptr %i.co, align 1
  %i.ajt = zext nneg i8 %i.ajs to i32
  %i.aju = shl i32 %i.ajr, %i.ajt
  %i.ajv = or i32 %i.ajn, %i.aju
  %i.ajw = trunc i32 %i.ajv to i16
  store i16 %i.ajw, ptr %i.ea, align 2
  br label %.thread670

bb.bo:                                            ; preds = %bb.bl
  %i.ajx = trunc i32 %.2597 to i8
  %i.ajy = load i8, ptr %i.cf, align 4
  %i.ajz = lshr i8 %i.ajy, 3
  %i.aka = zext nneg i8 %i.ajz to i64
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.aka
  store i8 %i.ajx, ptr %i.akb, align 1
  %i.akc = trunc i32 %.2594 to i8
  %i.akd = load i8, ptr %i.ci, align 1
  %i.ake = lshr i8 %i.akd, 3
  %i.akf = zext nneg i8 %i.ake to i64
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.akf
  store i8 %i.akc, ptr %i.akg, align 1
  %i.akh = trunc i32 %.2591 to i8
  %i.aki = load i8, ptr %i.cl, align 2
  %i.akj = lshr i8 %i.aki, 3
  %i.akk = zext nneg i8 %i.akj to i64
  %i.akl = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.akk
  store i8 %i.akh, ptr %i.akl, align 1
  br label %.thread670

bb.bp:                                            ; preds = %bb.bl
  %i.akm = load i8, ptr %i.cd, align 4
  %i.akn = zext i8 %i.akm to i32
  %i.ako = sub nsw i32 8, %i.akn
  %i.akp = lshr i32 %.2597, %i.ako
  %i.akq = load i8, ptr %i.cf, align 4
  %i.akr = zext nneg i8 %i.akq to i32
  %i.aks = shl i32 %i.akp, %i.akr
  %i.akt = load i8, ptr %i.cg, align 1
  %i.aku = zext i8 %i.akt to i32
  %i.akv = sub nsw i32 8, %i.aku
  %i.akw = lshr i32 %.2594, %i.akv
  %i.akx = load i8, ptr %i.ci, align 1
  %i.aky = zext nneg i8 %i.akx to i32
  %i.akz = shl i32 %i.akw, %i.aky
  %i.ala = or i32 %i.akz, %i.aks
  %i.alb = load i8, ptr %i.cj, align 2
  %i.alc = zext i8 %i.alb to i32
  %i.ald = sub nsw i32 8, %i.alc
  %i.ale = lshr i32 %.2591, %i.ald
  %i.alf = load i8, ptr %i.cl, align 2
  %i.alg = zext nneg i8 %i.alf to i32
  %i.alh = shl i32 %i.ale, %i.alg
  %i.ali = or i32 %i.ala, %i.alh
  %i.alj = load i8, ptr %i.cm, align 1
  %i.alk = zext i8 %i.alj to i32
  %i.all = sub nsw i32 8, %i.alk
  %i.alm = lshr i32 %.1588, %i.all
  %i.aln = load i8, ptr %i.co, align 1
  %i.alo = zext nneg i8 %i.aln to i32
  %i.alp = shl i32 %i.alm, %i.alo
  %i.alq = or i32 %i.ali, %i.alp
  store i32 %i.alq, ptr %i.ea, align 4
  br label %.thread670

bb.bq:                                            ; preds = %bb.bk
  br i1 %i.cc, label %bb.br, label %bb.bw

bb.br:                                            ; preds = %bb.bq
  switch i8 %i.z, label %.thread670 [
    i8 1, label %bb.bs
    i8 2, label %bb.bt
    i8 3, label %bb.bu
    i8 4, label %bb.bv
  ]

bb.bs:                                            ; preds = %bb.br
  %i.alr = load i8, ptr %i.cd, align 4
  %i.als = zext i8 %i.alr to i32
  %i.alt = sub nsw i32 8, %i.als
  %i.alu = lshr i32 %.2597, %i.alt
  %i.alv = load i8, ptr %i.cf, align 4
  %i.alw = zext nneg i8 %i.alv to i32
  %i.alx = shl i32 %i.alu, %i.alw
  %i.aly = load i8, ptr %i.cg, align 1
  %i.alz = zext i8 %i.aly to i32
  %i.ama = sub nsw i32 8, %i.alz
  %i.amb = lshr i32 %.2594, %i.ama
  %i.amc = load i8, ptr %i.ci, align 1
  %i.amd = zext nneg i8 %i.amc to i32
  %i.ame = shl i32 %i.amb, %i.amd
  %i.amf = or i32 %i.ame, %i.alx
  %i.amg = load i8, ptr %i.cj, align 2
  %i.amh = zext i8 %i.amg to i32
  %i.ami = sub nsw i32 8, %i.amh
  %i.amj = lshr i32 %.2591, %i.ami
  %i.amk = load i8, ptr %i.cl, align 2
  %i.aml = zext nneg i8 %i.amk to i32
  %i.amm = shl i32 %i.amj, %i.aml
  %i.amn = load i32, ptr %i.cn, align 4
  %i.amo = or i32 %i.amf, %i.amn
  %i.amp = or i32 %i.amo, %i.amm
  %i.amq = trunc i32 %i.amp to i8
  store i8 %i.amq, ptr %i.ea, align 1
  br label %.thread670

bb.bt:                                            ; preds = %bb.br
  %i.amr = load i8, ptr %i.cd, align 4
  %i.ams = zext i8 %i.amr to i32
  %i.amt = sub nsw i32 8, %i.ams
  %i.amu = lshr i32 %.2597, %i.amt
  %i.amv = load i8, ptr %i.cf, align 4
  %i.amw = zext nneg i8 %i.amv to i32
  %i.amx = shl i32 %i.amu, %i.amw
  %i.amy = load i8, ptr %i.cg, align 1
  %i.amz = zext i8 %i.amy to i32
  %i.ana = sub nsw i32 8, %i.amz
  %i.anb = lshr i32 %.2594, %i.ana
  %i.anc = load i8, ptr %i.ci, align 1
  %i.and = zext nneg i8 %i.anc to i32
  %i.ane = shl i32 %i.anb, %i.and
  %i.anf = or i32 %i.ane, %i.amx
  %i.ang = load i8, ptr %i.cj, align 2
  %i.anh = zext i8 %i.ang to i32
  %i.ani = sub nsw i32 8, %i.anh
  %i.anj = lshr i32 %.2591, %i.ani
end_hunk_0
