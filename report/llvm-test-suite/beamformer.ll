inline.NumInlined: 22
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 71
begin_hunk_0_@begin_StrictFP:bb.a
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 %.idx214
  %.idx215 = mul nuw nsw i64 %indvars.iv181.7, 96
  %i.zb = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx215
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 56
  %i.zd = load <2 x float>, ptr %i.za, align 16, !tbaa !21
  store <2 x float> %i.zd, ptr %i.zc, align 8, !tbaa !21
  %indvars.iv.next182.7 = or disjoint i64 %indvars.iv181.7, 1 ; 2 uses
  %.idx214.1 = shl nuw nsw i64 %indvars.iv.next182.7, 3
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yz, i64 %.idx214.1
  %.idx215.1 = mul nuw nsw i64 %indvars.iv.next182.7, 96
  %i.zf = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx215.1
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 56
  %i.zh = load <2 x float>, ptr %i.ze, align 8, !tbaa !21
  store <2 x float> %i.zh, ptr %i.zg, align 8, !tbaa !21
  %indvars.iv.next182.7.1 = or disjoint i64 %indvars.iv181.7, 2 ; 2 uses
  %.idx214.2 = shl nuw nsw i64 %indvars.iv.next182.7.1, 3
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yz, i64 %.idx214.2
  %.idx215.2 = mul nuw nsw i64 %indvars.iv.next182.7.1, 96
  %i.zj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx215.2
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 56
  %i.zl = load <2 x float>, ptr %i.zi, align 16, !tbaa !21
  store <2 x float> %i.zl, ptr %i.zk, align 8, !tbaa !21
  %indvars.iv.next182.7.2 = or disjoint i64 %indvars.iv181.7, 3 ; 2 uses
  %.idx214.3 = shl nuw nsw i64 %indvars.iv.next182.7.2, 3
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yz, i64 %.idx214.3
  %.idx215.3 = mul nuw nsw i64 %indvars.iv.next182.7.2, 96
  %i.zn = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx215.3
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 56
  %i.zp = load <2 x float>, ptr %i.zm, align 8, !tbaa !21
  store <2 x float> %i.zp, ptr %i.zo, align 8, !tbaa !21
  %indvars.iv.next182.7.3 = add nuw nsw i64 %indvars.iv181.7, 4 ; 2 uses
  %exitcond184.7.not.3 = icmp eq i64 %indvars.iv.next182.7.3, 512
  br i1 %exitcond184.7.not.3, label %.preheader97.8, label %bb.ax, !llvm.loop !29

.preheader97.8:                                   ; preds = %bb.ax
  %i.zq = getelementptr inbounds nuw i8, ptr %i.c, i64 393216 ; 4 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.preheader97.8
  %indvars.iv181.8 = phi i64 [ 0, %.preheader97.8 ], [ %indvars.iv.next182.8.3, %bb.ay ] ; 6 uses
  %.idx216 = shl nuw nsw i64 %indvars.iv181.8, 3
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 %.idx216
  %.idx217 = mul nuw nsw i64 %indvars.iv181.8, 96
  %i.zs = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx217
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 64
  %i.zu = load <2 x float>, ptr %i.zr, align 16, !tbaa !21
  store <2 x float> %i.zu, ptr %i.zt, align 16, !tbaa !21
  %indvars.iv.next182.8 = or disjoint i64 %indvars.iv181.8, 1 ; 2 uses
  %.idx216.1 = shl nuw nsw i64 %indvars.iv.next182.8, 3
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zq, i64 %.idx216.1
  %.idx217.1 = mul nuw nsw i64 %indvars.iv.next182.8, 96
  %i.zw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx217.1
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 64
  %i.zy = load <2 x float>, ptr %i.zv, align 8, !tbaa !21
  store <2 x float> %i.zy, ptr %i.zx, align 16, !tbaa !21
  %indvars.iv.next182.8.1 = or disjoint i64 %indvars.iv181.8, 2 ; 2 uses
  %.idx216.2 = shl nuw nsw i64 %indvars.iv.next182.8.1, 3
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zq, i64 %.idx216.2
  %.idx217.2 = mul nuw nsw i64 %indvars.iv.next182.8.1, 96
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx217.2
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 64
  %i.aac = load <2 x float>, ptr %i.zz, align 16, !tbaa !21
  store <2 x float> %i.aac, ptr %i.aab, align 16, !tbaa !21
  %indvars.iv.next182.8.2 = or disjoint i64 %indvars.iv181.8, 3 ; 2 uses
  %.idx216.3 = shl nuw nsw i64 %indvars.iv.next182.8.2, 3
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zq, i64 %.idx216.3
  %.idx217.3 = mul nuw nsw i64 %indvars.iv.next182.8.2, 96
  %i.aae = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx217.3
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 64
  %i.aag = load <2 x float>, ptr %i.aad, align 8, !tbaa !21
  store <2 x float> %i.aag, ptr %i.aaf, align 16, !tbaa !21
  %indvars.iv.next182.8.3 = add nuw nsw i64 %indvars.iv181.8, 4 ; 2 uses
  %exitcond184.8.not.3 = icmp eq i64 %indvars.iv.next182.8.3, 512
  br i1 %exitcond184.8.not.3, label %.preheader97.9, label %bb.ay, !llvm.loop !29

.preheader97.9:                                   ; preds = %bb.ay
  %i.aah = getelementptr inbounds nuw i8, ptr %i.c, i64 442368 ; 4 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.preheader97.9
  %indvars.iv181.9 = phi i64 [ 0, %.preheader97.9 ], [ %indvars.iv.next182.9.3, %bb.az ] ; 6 uses
  %.idx218 = shl nuw nsw i64 %indvars.iv181.9, 3
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 %.idx218
  %.idx219 = mul nuw nsw i64 %indvars.iv181.9, 96
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx219
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 72
  %i.aal = load <2 x float>, ptr %i.aai, align 16, !tbaa !21
  store <2 x float> %i.aal, ptr %i.aak, align 8, !tbaa !21
  %indvars.iv.next182.9 = or disjoint i64 %indvars.iv181.9, 1 ; 2 uses
  %.idx218.1 = shl nuw nsw i64 %indvars.iv.next182.9, 3
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aah, i64 %.idx218.1
  %.idx219.1 = mul nuw nsw i64 %indvars.iv.next182.9, 96
  %i.aan = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx219.1
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 72
  %i.aap = load <2 x float>, ptr %i.aam, align 8, !tbaa !21
  store <2 x float> %i.aap, ptr %i.aao, align 8, !tbaa !21
  %indvars.iv.next182.9.1 = or disjoint i64 %indvars.iv181.9, 2 ; 2 uses
  %.idx218.2 = shl nuw nsw i64 %indvars.iv.next182.9.1, 3
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aah, i64 %.idx218.2
  %.idx219.2 = mul nuw nsw i64 %indvars.iv.next182.9.1, 96
  %i.aar = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx219.2
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 72
  %i.aat = load <2 x float>, ptr %i.aaq, align 16, !tbaa !21
  store <2 x float> %i.aat, ptr %i.aas, align 8, !tbaa !21
  %indvars.iv.next182.9.2 = or disjoint i64 %indvars.iv181.9, 3 ; 2 uses
  %.idx218.3 = shl nuw nsw i64 %indvars.iv.next182.9.2, 3
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aah, i64 %.idx218.3
  %.idx219.3 = mul nuw nsw i64 %indvars.iv.next182.9.2, 96
  %i.aav = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx219.3
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 72
  %i.aax = load <2 x float>, ptr %i.aau, align 8, !tbaa !21
  store <2 x float> %i.aax, ptr %i.aaw, align 8, !tbaa !21
  %indvars.iv.next182.9.3 = add nuw nsw i64 %indvars.iv181.9, 4 ; 2 uses
  %exitcond184.9.not.3 = icmp eq i64 %indvars.iv.next182.9.3, 512
  br i1 %exitcond184.9.not.3, label %.preheader97.10, label %bb.az, !llvm.loop !29

.preheader97.10:                                  ; preds = %bb.az
  %i.aay = getelementptr inbounds nuw i8, ptr %i.c, i64 491520 ; 4 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.preheader97.10
  %indvars.iv181.10 = phi i64 [ 0, %.preheader97.10 ], [ %indvars.iv.next182.10.3, %bb.ba ] ; 6 uses
  %.idx220 = shl nuw nsw i64 %indvars.iv181.10, 3
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 %.idx220
  %.idx221 = mul nuw nsw i64 %indvars.iv181.10, 96
  %i.aba = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx221
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 80
  %i.abc = load <2 x float>, ptr %i.aaz, align 16, !tbaa !21
  store <2 x float> %i.abc, ptr %i.abb, align 16, !tbaa !21
  %indvars.iv.next182.10 = or disjoint i64 %indvars.iv181.10, 1 ; 2 uses
  %.idx220.1 = shl nuw nsw i64 %indvars.iv.next182.10, 3
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aay, i64 %.idx220.1
  %.idx221.1 = mul nuw nsw i64 %indvars.iv.next182.10, 96
  %i.abe = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx221.1
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 80
  %i.abg = load <2 x float>, ptr %i.abd, align 8, !tbaa !21
  store <2 x float> %i.abg, ptr %i.abf, align 16, !tbaa !21
  %indvars.iv.next182.10.1 = or disjoint i64 %indvars.iv181.10, 2 ; 2 uses
  %.idx220.2 = shl nuw nsw i64 %indvars.iv.next182.10.1, 3
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aay, i64 %.idx220.2
  %.idx221.2 = mul nuw nsw i64 %indvars.iv.next182.10.1, 96
  %i.abi = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx221.2
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 80
  %i.abk = load <2 x float>, ptr %i.abh, align 16, !tbaa !21
  store <2 x float> %i.abk, ptr %i.abj, align 16, !tbaa !21
  %indvars.iv.next182.10.2 = or disjoint i64 %indvars.iv181.10, 3 ; 2 uses
  %.idx220.3 = shl nuw nsw i64 %indvars.iv.next182.10.2, 3
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aay, i64 %.idx220.3
  %.idx221.3 = mul nuw nsw i64 %indvars.iv.next182.10.2, 96
  %i.abm = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx221.3
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 80
  %i.abo = load <2 x float>, ptr %i.abl, align 8, !tbaa !21
  store <2 x float> %i.abo, ptr %i.abn, align 16, !tbaa !21
  %indvars.iv.next182.10.3 = add nuw nsw i64 %indvars.iv181.10, 4 ; 2 uses
  %exitcond184.10.not.3 = icmp eq i64 %indvars.iv.next182.10.3, 512
  br i1 %exitcond184.10.not.3, label %.preheader97.11, label %bb.ba, !llvm.loop !29

.preheader97.11:                                  ; preds = %bb.ba
  %i.abp = getelementptr inbounds nuw i8, ptr %i.c, i64 540672 ; 4 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.preheader97.11
  %indvars.iv181.11 = phi i64 [ 0, %.preheader97.11 ], [ %indvars.iv.next182.11.3, %bb.bb ] ; 6 uses
  %.idx222 = shl nuw nsw i64 %indvars.iv181.11, 3
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 %.idx222
  %.idx223 = mul nuw nsw i64 %indvars.iv181.11, 96
  %i.abr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx223
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 88
  %i.abt = load <2 x float>, ptr %i.abq, align 16, !tbaa !21
  store <2 x float> %i.abt, ptr %i.abs, align 8, !tbaa !21
  %indvars.iv.next182.11 = or disjoint i64 %indvars.iv181.11, 1 ; 2 uses
  %.idx222.1 = shl nuw nsw i64 %indvars.iv.next182.11, 3
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abp, i64 %.idx222.1
  %.idx223.1 = mul nuw nsw i64 %indvars.iv.next182.11, 96
  %i.abv = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx223.1
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 88
  %i.abx = load <2 x float>, ptr %i.abu, align 8, !tbaa !21
  store <2 x float> %i.abx, ptr %i.abw, align 8, !tbaa !21
  %indvars.iv.next182.11.1 = or disjoint i64 %indvars.iv181.11, 2 ; 2 uses
  %.idx222.2 = shl nuw nsw i64 %indvars.iv.next182.11.1, 3
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abp, i64 %.idx222.2
  %.idx223.2 = mul nuw nsw i64 %indvars.iv.next182.11.1, 96
  %i.abz = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx223.2
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 88
  %i.acb = load <2 x float>, ptr %i.aby, align 16, !tbaa !21
  store <2 x float> %i.acb, ptr %i.aca, align 8, !tbaa !21
  %indvars.iv.next182.11.2 = or disjoint i64 %indvars.iv181.11, 3 ; 2 uses
  %.idx222.3 = shl nuw nsw i64 %indvars.iv.next182.11.2, 3
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abp, i64 %.idx222.3
  %.idx223.3 = mul nuw nsw i64 %indvars.iv.next182.11.2, 96
  %i.acd = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx223.3
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 88
  %i.acf = load <2 x float>, ptr %i.acc, align 8, !tbaa !21
  store <2 x float> %i.acf, ptr %i.ace, align 8, !tbaa !21
  %indvars.iv.next182.11.3 = add nuw nsw i64 %indvars.iv181.11, 4 ; 2 uses
  %exitcond184.11.not.3 = icmp eq i64 %indvars.iv.next182.11.3, 512
  br i1 %exitcond184.11.not.3, label %.preheader95, label %bb.bb, !llvm.loop !29

.preheader95:                                     ; preds = %bb.bb, %Magnitude_StrictFP.exit
  %indvar = phi i64 [ %indvar.next, %Magnitude_StrictFP.exit ], [ 0, %bb.bb ] ; 4 uses
  %3 = shl nuw nsw i64 %indvar, 11
  %scevgep = getelementptr i8, ptr @detector_out_StrictFP, i64 %3
  %i.acg = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %indvar ; 24 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 92
  %i.aci = load float, ptr %i.ach, align 4, !tbaa !21
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acg, i64 88
  %i.ack = load float, ptr %i.acj, align 8, !tbaa !21
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acg, i64 84
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !21
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acg, i64 80
  %i.aco = load float, ptr %i.acn, align 16, !tbaa !21
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acg, i64 76
  %i.acq = load float, ptr %i.acp, align 4, !tbaa !21
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acg, i64 72
  %i.acs = load float, ptr %i.acr, align 8, !tbaa !21
  %i.act = getelementptr inbounds nuw i8, ptr %i.acg, i64 68
  %i.acu = load float, ptr %i.act, align 4, !tbaa !21
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acg, i64 64
  %i.acw = load float, ptr %i.acv, align 16, !tbaa !21
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acg, i64 60
  %i.acy = load float, ptr %i.acx, align 4, !tbaa !21
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acg, i64 56
  %i.ada = load float, ptr %i.acz, align 8, !tbaa !21
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acg, i64 52
  %i.adc = load float, ptr %i.adb, align 4, !tbaa !21
  %i.add = getelementptr inbounds nuw i8, ptr %i.acg, i64 48
  %i.ade = load float, ptr %i.add, align 16, !tbaa !21
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acg, i64 44
  %i.adg = load float, ptr %i.adf, align 4, !tbaa !21
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acg, i64 40
  %i.adi = load float, ptr %i.adh, align 8, !tbaa !21
  %i.adj = getelementptr inbounds nuw i8, ptr %i.acg, i64 36
  %i.adk = load float, ptr %i.adj, align 4, !tbaa !21
  %i.adl = getelementptr inbounds nuw i8, ptr %i.acg, i64 32
  %i.adm = load float, ptr %i.adl, align 16, !tbaa !21
  %i.adn = getelementptr inbounds nuw i8, ptr %i.acg, i64 28
  %i.ado = load float, ptr %i.adn, align 4, !tbaa !21
  %i.adp = getelementptr inbounds nuw i8, ptr %i.acg, i64 24
  %i.adq = load float, ptr %i.adp, align 8, !tbaa !21
  %i.adr = getelementptr inbounds nuw i8, ptr %i.acg, i64 20
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !21
  %i.adt = getelementptr inbounds nuw i8, ptr %i.acg, i64 16
  %i.adu = load float, ptr %i.adt, align 16, !tbaa !21
  %i.adv = getelementptr inbounds nuw i8, ptr %i.acg, i64 12
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !21
  %i.adx = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  %i.ady = load float, ptr %i.adx, align 8, !tbaa !21
  %i.adz = getelementptr inbounds nuw i8, ptr %i.acg, i64 4
  %i.aea = load float, ptr %i.adz, align 4, !tbaa !21
  %i.aeb = load float, ptr %i.acg, align 16, !tbaa !21
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aeb, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert253 = insertelement <4 x float> poison, float %i.aea, i64 0
  %broadcast.splat254 = shufflevector <4 x float> %broadcast.splatinsert253, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert255 = insertelement <4 x float> poison, float %i.ady, i64 0
  %broadcast.splat256 = shufflevector <4 x float> %broadcast.splatinsert255, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert257 = insertelement <4 x float> poison, float %i.adw, i64 0
  %broadcast.splat258 = shufflevector <4 x float> %broadcast.splatinsert257, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert259 = insertelement <4 x float> poison, float %i.adu, i64 0
  %broadcast.splat260 = shufflevector <4 x float> %broadcast.splatinsert259, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert261 = insertelement <4 x float> poison, float %i.ads, i64 0
  %broadcast.splat262 = shufflevector <4 x float> %broadcast.splatinsert261, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert263 = insertelement <4 x float> poison, float %i.adq, i64 0
  %broadcast.splat264 = shufflevector <4 x float> %broadcast.splatinsert263, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert265 = insertelement <4 x float> poison, float %i.ado, i64 0
  %broadcast.splat266 = shufflevector <4 x float> %broadcast.splatinsert265, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert267 = insertelement <4 x float> poison, float %i.adm, i64 0
  %broadcast.splat268 = shufflevector <4 x float> %broadcast.splatinsert267, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert269 = insertelement <4 x float> poison, float %i.adk, i64 0
  %broadcast.splat270 = shufflevector <4 x float> %broadcast.splatinsert269, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert271 = insertelement <4 x float> poison, float %i.adi, i64 0
  %broadcast.splat272 = shufflevector <4 x float> %broadcast.splatinsert271, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert273 = insertelement <4 x float> poison, float %i.adg, i64 0
  %broadcast.splat274 = shufflevector <4 x float> %broadcast.splatinsert273, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert275 = insertelement <4 x float> poison, float %i.ade, i64 0
  %broadcast.splat276 = shufflevector <4 x float> %broadcast.splatinsert275, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert277 = insertelement <4 x float> poison, float %i.adc, i64 0
  %broadcast.splat278 = shufflevector <4 x float> %broadcast.splatinsert277, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert279 = insertelement <4 x float> poison, float %i.ada, i64 0
  %broadcast.splat280 = shufflevector <4 x float> %broadcast.splatinsert279, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert281 = insertelement <4 x float> poison, float %i.acy, i64 0
  %broadcast.splat282 = shufflevector <4 x float> %broadcast.splatinsert281, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert283 = insertelement <4 x float> poison, float %i.acw, i64 0
  %broadcast.splat284 = shufflevector <4 x float> %broadcast.splatinsert283, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert285 = insertelement <4 x float> poison, float %i.acu, i64 0
  %broadcast.splat286 = shufflevector <4 x float> %broadcast.splatinsert285, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert287 = insertelement <4 x float> poison, float %i.acs, i64 0
  %broadcast.splat288 = shufflevector <4 x float> %broadcast.splatinsert287, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert289 = insertelement <4 x float> poison, float %i.acq, i64 0
  %broadcast.splat290 = shufflevector <4 x float> %broadcast.splatinsert289, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert291 = insertelement <4 x float> poison, float %i.aco, i64 0
  %broadcast.splat292 = shufflevector <4 x float> %broadcast.splatinsert291, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert293 = insertelement <4 x float> poison, float %i.acm, i64 0
  %broadcast.splat294 = shufflevector <4 x float> %broadcast.splatinsert293, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert295 = insertelement <4 x float> poison, float %i.ack, i64 0
  %broadcast.splat296 = shufflevector <4 x float> %broadcast.splatinsert295, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert297 = insertelement <4 x float> poison, float %i.aci, i64 0
  %broadcast.splat298 = shufflevector <4 x float> %broadcast.splatinsert297, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %.preheader95
  %index300 = phi i64 [ 0, %.preheader95 ], [ %index.next301, %vector.body299 ] ; 6 uses
  %i.aec = mul nuw nsw i64 %index300, 96
  %i.aed = mul nuw i64 %index300, 96
  %i.aee = mul nuw i64 %index300, 96
  %i.aef = mul nuw i64 %index300, 96
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aec ; 24 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aed ; 24 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 96
  %i.aej = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aee ; 24 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 192
  %i.ael = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aef ; 24 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 288
  %i.aen = shl nuw nsw i64 %index300, 3
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.aen
  %i.aep = load float, ptr %i.aeg, align 16, !tbaa !21
  %i.aeq = load float, ptr %i.aei, align 16, !tbaa !21
  %i.aer = load float, ptr %i.aek, align 16, !tbaa !21
  %i.aes = load float, ptr %i.aem, align 16, !tbaa !21
  %i.aet = insertelement <4 x float> poison, float %i.aep, i64 0
  %i.aeu = insertelement <4 x float> %i.aet, float %i.aeq, i64 1
  %i.aev = insertelement <4 x float> %i.aeu, float %i.aer, i64 2
  %i.aew = insertelement <4 x float> %i.aev, float %i.aes, i64 3 ; 2 uses
  %i.aex = fmul <4 x float> %broadcast.splat, %i.aew
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeg, i64 4
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aeh, i64 100
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aej, i64 196
  %i.afb = getelementptr inbounds nuw i8, ptr %i.ael, i64 292
  %i.afc = load float, ptr %i.aey, align 4, !tbaa !21
  %i.afd = load float, ptr %i.aez, align 4, !tbaa !21
  %i.afe = load float, ptr %i.afa, align 4, !tbaa !21
  %i.aff = load float, ptr %i.afb, align 4, !tbaa !21
  %i.afg = insertelement <4 x float> poison, float %i.afc, i64 0
  %i.afh = insertelement <4 x float> %i.afg, float %i.afd, i64 1
  %i.afi = insertelement <4 x float> %i.afh, float %i.afe, i64 2
  %i.afj = insertelement <4 x float> %i.afi, float %i.aff, i64 3 ; 2 uses
  %i.afk = fmul <4 x float> %broadcast.splat254, %i.afj
  %i.afl = fsub <4 x float> %i.aex, %i.afk
  %i.afm = fadd <4 x float> %i.afl, zeroinitializer
  %i.afn = fmul <4 x float> %broadcast.splat, %i.afj
  %i.afo = fmul <4 x float> %i.aew, %broadcast.splat254
  %i.afp = fadd <4 x float> %i.afo, %i.afn
  %i.afq = fadd <4 x float> %i.afp, zeroinitializer
  %i.afr = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  %i.afs = getelementptr inbounds nuw i8, ptr %i.aeh, i64 104
  %i.aft = getelementptr inbounds nuw i8, ptr %i.aej, i64 200
  %i.afu = getelementptr inbounds nuw i8, ptr %i.ael, i64 296
  %i.afv = load float, ptr %i.afr, align 8, !tbaa !21
  %i.afw = load float, ptr %i.afs, align 8, !tbaa !21
  %i.afx = load float, ptr %i.aft, align 8, !tbaa !21
  %i.afy = load float, ptr %i.afu, align 8, !tbaa !21
  %i.afz = insertelement <4 x float> poison, float %i.afv, i64 0
  %i.aga = insertelement <4 x float> %i.afz, float %i.afw, i64 1
  %i.agb = insertelement <4 x float> %i.aga, float %i.afx, i64 2
  %i.agc = insertelement <4 x float> %i.agb, float %i.afy, i64 3 ; 2 uses
  %i.agd = fmul <4 x float> %broadcast.splat256, %i.agc
  %i.age = getelementptr inbounds nuw i8, ptr %i.aeg, i64 12
  %i.agf = getelementptr inbounds nuw i8, ptr %i.aeh, i64 108
  %i.agg = getelementptr inbounds nuw i8, ptr %i.aej, i64 204
  %i.agh = getelementptr inbounds nuw i8, ptr %i.ael, i64 300
  %i.agi = load float, ptr %i.age, align 4, !tbaa !21
  %i.agj = load float, ptr %i.agf, align 4, !tbaa !21
  %i.agk = load float, ptr %i.agg, align 4, !tbaa !21
  %i.agl = load float, ptr %i.agh, align 4, !tbaa !21
  %i.agm = insertelement <4 x float> poison, float %i.agi, i64 0
  %i.agn = insertelement <4 x float> %i.agm, float %i.agj, i64 1
  %i.ago = insertelement <4 x float> %i.agn, float %i.agk, i64 2
  %i.agp = insertelement <4 x float> %i.ago, float %i.agl, i64 3 ; 2 uses
  %i.agq = fmul <4 x float> %broadcast.splat258, %i.agp
  %i.agr = fsub <4 x float> %i.agd, %i.agq
  %i.ags = fadd <4 x float> %i.afm, %i.agr
  %i.agt = fmul <4 x float> %broadcast.splat256, %i.agp
  %i.agu = fmul <4 x float> %i.agc, %broadcast.splat258
  %i.agv = fadd <4 x float> %i.agu, %i.agt
  %i.agw = fadd <4 x float> %i.afq, %i.agv
  %i.agx = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16
  %i.agy = getelementptr inbounds nuw i8, ptr %i.aeh, i64 112
  %i.agz = getelementptr inbounds nuw i8, ptr %i.aej, i64 208
  %i.aha = getelementptr inbounds nuw i8, ptr %i.ael, i64 304
  %i.ahb = load float, ptr %i.agx, align 16, !tbaa !21
  %i.ahc = load float, ptr %i.agy, align 16, !tbaa !21
  %i.ahd = load float, ptr %i.agz, align 16, !tbaa !21
  %i.ahe = load float, ptr %i.aha, align 16, !tbaa !21
  %i.ahf = insertelement <4 x float> poison, float %i.ahb, i64 0
  %i.ahg = insertelement <4 x float> %i.ahf, float %i.ahc, i64 1
  %i.ahh = insertelement <4 x float> %i.ahg, float %i.ahd, i64 2
  %i.ahi = insertelement <4 x float> %i.ahh, float %i.ahe, i64 3 ; 2 uses
  %i.ahj = fmul <4 x float> %broadcast.splat260, %i.ahi
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.aeg, i64 20
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.aeh, i64 116
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.aej, i64 212
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ael, i64 308
  %i.aho = load float, ptr %i.ahk, align 4, !tbaa !21
  %i.ahp = load float, ptr %i.ahl, align 4, !tbaa !21
  %i.ahq = load float, ptr %i.ahm, align 4, !tbaa !21
  %i.ahr = load float, ptr %i.ahn, align 4, !tbaa !21
  %i.ahs = insertelement <4 x float> poison, float %i.aho, i64 0
  %i.aht = insertelement <4 x float> %i.ahs, float %i.ahp, i64 1
  %i.ahu = insertelement <4 x float> %i.aht, float %i.ahq, i64 2
  %i.ahv = insertelement <4 x float> %i.ahu, float %i.ahr, i64 3 ; 2 uses
  %i.ahw = fmul <4 x float> %broadcast.splat262, %i.ahv
  %i.ahx = fsub <4 x float> %i.ahj, %i.ahw
end_hunk_0
begin_hunk_1_@begin_StrictFP:bb.a
  %i.aqm = fmul <4 x float> %broadcast.splat290, %i.aql
  %i.aqn = fsub <4 x float> %i.apz, %i.aqm
  %i.aqo = fadd <4 x float> %i.api, %i.aqn
  %i.aqp = fmul <4 x float> %broadcast.splat288, %i.aql
  %i.aqq = fmul <4 x float> %i.apy, %broadcast.splat290
  %i.aqr = fadd <4 x float> %i.aqq, %i.aqp
  %i.aqs = fadd <4 x float> %i.apm, %i.aqr
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aeg, i64 80
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aeh, i64 176
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aej, i64 272
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.ael, i64 368
  %i.aqx = load float, ptr %i.aqt, align 16, !tbaa !21
  %i.aqy = load float, ptr %i.aqu, align 16, !tbaa !21
  %i.aqz = load float, ptr %i.aqv, align 16, !tbaa !21
  %i.ara = load float, ptr %i.aqw, align 16, !tbaa !21
  %i.arb = insertelement <4 x float> poison, float %i.aqx, i64 0
  %i.arc = insertelement <4 x float> %i.arb, float %i.aqy, i64 1
  %i.ard = insertelement <4 x float> %i.arc, float %i.aqz, i64 2
  %i.are = insertelement <4 x float> %i.ard, float %i.ara, i64 3 ; 2 uses
  %i.arf = fmul <4 x float> %broadcast.splat292, %i.are
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aeg, i64 84
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aeh, i64 180
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aej, i64 276
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ael, i64 372
  %i.ark = load float, ptr %i.arg, align 4, !tbaa !21
  %i.arl = load float, ptr %i.arh, align 4, !tbaa !21
  %i.arm = load float, ptr %i.ari, align 4, !tbaa !21
  %i.arn = load float, ptr %i.arj, align 4, !tbaa !21
  %i.aro = insertelement <4 x float> poison, float %i.ark, i64 0
  %i.arp = insertelement <4 x float> %i.aro, float %i.arl, i64 1
  %i.arq = insertelement <4 x float> %i.arp, float %i.arm, i64 2
  %i.arr = insertelement <4 x float> %i.arq, float %i.arn, i64 3 ; 2 uses
  %i.ars = fmul <4 x float> %broadcast.splat294, %i.arr
  %i.art = fsub <4 x float> %i.arf, %i.ars
  %i.aru = fadd <4 x float> %i.aqo, %i.art
  %i.arv = fmul <4 x float> %broadcast.splat292, %i.arr
  %i.arw = fmul <4 x float> %i.are, %broadcast.splat294
  %i.arx = fadd <4 x float> %i.arw, %i.arv
  %i.ary = fadd <4 x float> %i.aqs, %i.arx
  %i.arz = getelementptr inbounds nuw i8, ptr %i.aeg, i64 88
  %i.asa = getelementptr inbounds nuw i8, ptr %i.aeh, i64 184
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aej, i64 280
  %i.asc = getelementptr inbounds nuw i8, ptr %i.ael, i64 376
  %i.asd = load float, ptr %i.arz, align 8, !tbaa !21
  %i.ase = load float, ptr %i.asa, align 8, !tbaa !21
  %i.asf = load float, ptr %i.asb, align 8, !tbaa !21
  %i.asg = load float, ptr %i.asc, align 8, !tbaa !21
  %i.ash = insertelement <4 x float> poison, float %i.asd, i64 0
  %i.asi = insertelement <4 x float> %i.ash, float %i.ase, i64 1
  %i.asj = insertelement <4 x float> %i.asi, float %i.asf, i64 2
  %i.ask = insertelement <4 x float> %i.asj, float %i.asg, i64 3 ; 2 uses
  %i.asl = fmul <4 x float> %broadcast.splat296, %i.ask
  %i.asm = getelementptr inbounds nuw i8, ptr %i.aeg, i64 92
  %i.asn = getelementptr inbounds nuw i8, ptr %i.aeh, i64 188
  %i.aso = getelementptr inbounds nuw i8, ptr %i.aej, i64 284
  %i.asp = getelementptr inbounds nuw i8, ptr %i.ael, i64 380
  %i.asq = load float, ptr %i.asm, align 4, !tbaa !21
  %i.asr = load float, ptr %i.asn, align 4, !tbaa !21
  %i.ass = load float, ptr %i.aso, align 4, !tbaa !21
  %i.ast = load float, ptr %i.asp, align 4, !tbaa !21
  %i.asu = insertelement <4 x float> poison, float %i.asq, i64 0
  %i.asv = insertelement <4 x float> %i.asu, float %i.asr, i64 1
  %i.asw = insertelement <4 x float> %i.asv, float %i.ass, i64 2
  %i.asx = insertelement <4 x float> %i.asw, float %i.ast, i64 3 ; 2 uses
  %i.asy = fmul <4 x float> %broadcast.splat298, %i.asx
  %i.asz = fsub <4 x float> %i.asl, %i.asy
  %i.ata = fadd <4 x float> %i.aru, %i.asz
  %i.atb = fmul <4 x float> %broadcast.splat296, %i.asx
  %i.atc = fmul <4 x float> %i.ask, %broadcast.splat298
  %i.atd = fadd <4 x float> %i.atc, %i.atb
  %i.ate = fadd <4 x float> %i.ary, %i.atd
  %interleaved.vec = shufflevector <4 x float> %i.ata, <4 x float> %i.ate, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.aeo, align 16, !tbaa !21
  %index.next301 = add nuw i64 %index300, 4       ; 2 uses
  %i.atf = icmp eq i64 %index.next301, 512
  br i1 %i.atf, label %.preheader, label %vector.body299, !llvm.loop !30

.preheader:                                       ; preds = %vector.body299
  %i.atg = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %indvar ; 5 uses
  %i.ath = load i32, ptr %i.atg, align 16, !tbaa !14 ; 3 uses
  %i.ati = add nsw i32 %i.ath, -1                 ; 2 uses
  %i.atj = shl i32 %i.ath, 1                      ; 3 uses
  %i.atk = add nsw i32 %i.atj, -1
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atg, i64 8 ; 2 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atg, i64 24
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !20 ; 3 uses
  %i.ato = icmp slt i32 %i.ath, 1                 ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atg, i64 4 ; 2 uses
  %.promoted126 = load i32, ptr %i.atl, align 8, !tbaa !18
  %.promoted128 = load i32, ptr %i.atp, align 4, !tbaa !17
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atg, i64 16
  %i.atr = sext i32 %i.atj to i64
  %smax.i78 = tail call i32 @llvm.smax.i32(i32 %i.atj, i32 1)
  %i.ats = zext nneg i32 %smax.i78 to i64
  %i.att = shl nuw nsw i64 %i.ats, 2
  br label %bb.bc

.lr.ph.i86.preheader:                             ; preds = %BeamFirFilter_StrictFP.exit85
  store i32 %i.avu, ptr %i.atl, align 8, !tbaa !18
  store i32 %i.avt, ptr %i.atp, align 4, !tbaa !17
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.i86.preheader
  %index = phi i64 [ 0, %.lr.ph.i86.preheader ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.atu = shl nuw nsw i64 %index, 3
  %i.atv = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.atu
  %wide.vec = load <8 x float>, ptr %i.atv, align 16, !tbaa !21 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec251 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.atw = fmul <4 x float> %strided.vec, %strided.vec
  %i.atx = fmul <4 x float> %strided.vec251, %strided.vec251
  %i.aty = fadd <4 x float> %i.atw, %i.atx
  %i.atz = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.aty)
  %i.aua = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index
  store <4 x float> %i.atz, ptr %i.aua, align 16, !tbaa !21
  %index.next = or disjoint i64 %index, 4         ; 2 uses
  %i.aub = shl nuw nsw i64 %index.next, 3
  %i.auc = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aub
  %wide.vec.1 = load <8 x float>, ptr %i.auc, align 16, !tbaa !21 ; 2 uses
  %strided.vec.1 = shufflevector <8 x float> %wide.vec.1, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec251.1 = shufflevector <8 x float> %wide.vec.1, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.aud = fmul <4 x float> %strided.vec.1, %strided.vec.1
  %i.aue = fmul <4 x float> %strided.vec251.1, %strided.vec251.1
  %i.auf = fadd <4 x float> %i.aud, %i.aue
  %i.aug = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.auf)
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index.next
  store <4 x float> %i.aug, ptr %i.auh, align 16, !tbaa !21
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.aui = icmp eq i64 %index.next.1, 512
  br i1 %i.aui, label %Magnitude_StrictFP.exit, label %vector.body, !llvm.loop !33

bb.bc:                                            ; preds = %.preheader, %BeamFirFilter_StrictFP.exit85
  %indvars.iv193 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next194, %BeamFirFilter_StrictFP.exit85 ] ; 2 uses
  %i.auj = phi i32 [ %.promoted126, %.preheader ], [ %i.avu, %BeamFirFilter_StrictFP.exit85 ] ; 2 uses
  %i.auk = phi i32 [ %.promoted128, %.preheader ], [ %i.avt, %BeamFirFilter_StrictFP.exit85 ]
  %i.aul = shl nuw nsw i64 %indvars.iv193, 1      ; 2 uses
  %i.aum = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.aul
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aul
  %i.auo = sub nsw i32 %i.ati, %i.auj
  %i.aup = shl nsw i32 %i.auo, 1                  ; 2 uses
  %i.auq = sext i32 %i.aup to i64
  %i.aur = getelementptr inbounds [4 x i8], ptr %i.atn, i64 %i.auq
  %i.aus = load <2 x float>, ptr %i.aum, align 8, !tbaa !21
  store <2 x float> %i.aus, ptr %i.aur, align 4, !tbaa !21
  br i1 %i.ato, label %._crit_edge.i74, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.bc
  %i.aut = load ptr, ptr %i.atq, align 16, !tbaa !19
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph.i79
  %indvars.iv.i80 = phi i64 [ 0, %.lr.ph.i79 ], [ %indvars.iv.next.i84, %bb.bd ] ; 2 uses
  %.05556.i83 = phi i32 [ %i.aup, %.lr.ph.i79 ], [ %i.avm, %bb.bd ] ; 2 uses
  %i.auu = phi <2 x float> [ zeroinitializer, %.lr.ph.i79 ], [ %i.avk, %bb.bd ]
  %i.auv = sext i32 %.05556.i83 to i64
  %i.auw = getelementptr inbounds [4 x i8], ptr %i.atn, i64 %i.auv
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %indvars.iv.i80 ; 2 uses
  %i.auy = load float, ptr %i.aux, align 4, !tbaa !21
  %i.auz = getelementptr inbounds nuw i8, ptr %i.aux, i64 4
  %i.ava = load float, ptr %i.auz, align 4, !tbaa !21
  %i.avb = load <2 x float>, ptr %i.auw, align 4, !tbaa !21 ; 2 uses
  %i.avc = insertelement <2 x float> poison, float %i.auy, i64 0
  %i.avd = shufflevector <2 x float> %i.avc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ave = fmul <2 x float> %i.avb, %i.avd
  %i.avf = insertelement <2 x float> poison, float %i.ava, i64 0
  %i.avg = shufflevector <2 x float> %i.avb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.avh = shufflevector <2 x float> %i.avf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avi = fmul <2 x float> %i.avg, %i.avh
  %i.avj = fadd <2 x float> %i.ave, %i.avi
  %i.avk = fadd <2 x float> %i.auu, %i.avj        ; 2 uses
  %i.avl = add nsw i32 %.05556.i83, 2
  %i.avm = and i32 %i.avl, %i.atk
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i80, 2 ; 2 uses
  %i.avn = icmp slt i64 %indvars.iv.next.i84, %i.atr
  br i1 %i.avn, label %bb.bd, label %._crit_edge.i74, !llvm.loop !25

._crit_edge.i74:                                  ; preds = %bb.bd, %bb.bc
  %i.avo = phi <2 x float> [ zeroinitializer, %bb.bc ], [ %i.avk, %bb.bd ]
  %i.avp = add nsw i32 %i.auj, 1
  %i.avq = and i32 %i.avp, %i.ati
  store <2 x float> %i.avo, ptr %i.aun, align 8, !tbaa !21
  %i.avr = add nsw i32 %i.auk, 1                  ; 2 uses
  %i.avs = icmp ne i32 %i.avr, 512                ; 3 uses
  %brmerge141 = or i1 %i.avs, %i.ato
  %.mux142 = select i1 %i.avs, i32 %i.avr, i32 0
  %.mux143 = select i1 %i.avs, i32 %i.avq, i32 0
  br i1 %brmerge141, label %BeamFirFilter_StrictFP.exit85, label %.lr.ph63.preheader.i77

.lr.ph63.preheader.i77:                           ; preds = %._crit_edge.i74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.atn, i8 0, i64 %i.att, i1 false), !tbaa !21
  br label %BeamFirFilter_StrictFP.exit85

BeamFirFilter_StrictFP.exit85:                    ; preds = %._crit_edge.i74, %.lr.ph63.preheader.i77
  %i.avt = phi i32 [ %.mux142, %._crit_edge.i74 ], [ 0, %.lr.ph63.preheader.i77 ] ; 2 uses
  %i.avu = phi i32 [ %.mux143, %._crit_edge.i74 ], [ 0, %.lr.ph63.preheader.i77 ] ; 2 uses
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next194, 512
  br i1 %exitcond196.not, label %.lr.ph.i86.preheader, label %bb.bc, !llvm.loop !34

Magnitude_StrictFP.exit:                          ; preds = %vector.body
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %scevgep, ptr noundef nonnull align 16 dereferenceable(2048) %i.h, i64 2048, i1 false), !tbaa !21
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond198.not = icmp eq i64 %indvar.next, 4
  br i1 %exitcond198.not, label %bb.be, label %.preheader95, !llvm.loop !35

bb.be:                                            ; preds = %Magnitude_StrictFP.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @begin() local_unnamed_addr #4 {
bb.a:
  %0 = alloca [12 x %struct.BeamFirData], align 16 ; 4 uses
  %1 = alloca [12 x %struct.BeamFirData], align 16 ; 4 uses
  %2 = alloca [4 x %struct.BeamFirData], align 16 ; 23 uses
  %i.a = alloca [24576 x float], align 16         ; 40 uses
  %i.b = alloca [24576 x float], align 16         ; 4 uses
  %i.c = alloca [12 x [12288 x float]], align 16  ; 18 uses
  %i.d = alloca [4 x [24 x float]], align 16      ; 7 uses
  %i.e = alloca [12288 x float], align 16         ; 54 uses
  %i.f = alloca [1024 x float], align 16          ; 4 uses
  %i.g = alloca [1024 x float], align 16          ; 5 uses
  %i.h = alloca [512 x float], align 16           ; 5 uses
  %i.i = alloca [4 x [512 x float]], align 16     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  store i32 64, ptr %i.j, align 16, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !18
  %i.m = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #20 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.m, ptr %i.n, align 16, !tbaa !19
  %i.o = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #20 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.o, ptr %i.p, align 8, !tbaa !20
  store float 1.000000e+00, ptr %i.m, align 4, !tbaa !21
  %i.q = getelementptr i8, ptr %i.m, i64 4
  %scevgep17.i = getelementptr i8, ptr %i.o, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(508) %i.q, i8 0, i64 508, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(508) %scevgep17.i, i8 0, i64 508, i1 false), !tbaa !21
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  store i32 64, ptr %i.r, align 16, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 0, ptr %i.t, align 8, !tbaa !18
  %i.u = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #20 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.u, ptr %i.v, align 16, !tbaa !19
  %i.w = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #20 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !20
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !21
  %i.y = getelementptr i8, ptr %i.u, i64 4
  %scevgep17.i70 = getelementptr i8, ptr %i.w, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(508) %i.y, i8 0, i64 508, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(508) %scevgep17.i70, i8 0, i64 508, i1 false), !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 12
  br i1 %exitcond.not, label %.preheader120.preheader, label %bb.b, !llvm.loop !36

.preheader120.preheader:                          ; preds = %bb.b
  store i32 512, ptr %2, align 16, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.z, align 4, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !18
  %i.ab = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #20 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ab, ptr %i.ac, align 16, !tbaa !19
  %i.ad = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #20 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !20
  store float 1.000000e+00, ptr %i.ab, align 4, !tbaa !21
  %i.af = getelementptr i8, ptr %i.ab, i64 4
  %scevgep17.i71 = getelementptr i8, ptr %i.ad, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4092) %i.af, i8 0, i64 4092, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4092) %scevgep17.i71, i8 0, i64 4092, i1 false), !tbaa !21
  call void @BeamFormWeights(i32 noundef 0, ptr noundef nonnull %i.d)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 512, ptr %i.ag, align 16, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 0, ptr %i.ah, align 4, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 0, ptr %i.ai, align 8, !tbaa !18
  %i.aj = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #20 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.aj, ptr %i.ak, align 16, !tbaa !19
  %i.al = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #20 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.al, ptr %i.am, align 8, !tbaa !20
  store float 1.000000e+00, ptr %i.aj, align 4, !tbaa !21
  %i.an = getelementptr i8, ptr %i.aj, i64 4
  %scevgep17.i71.1 = getelementptr i8, ptr %i.al, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4092) %i.an, i8 0, i64 4092, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4092) %scevgep17.i71.1, i8 0, i64 4092, i1 false), !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  call void @BeamFormWeights(i32 noundef 1, ptr noundef nonnull %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 512, ptr %i.ap, align 16, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 0, ptr %i.aq, align 4, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 0, ptr %i.ar, align 8, !tbaa !18
  %i.as = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #20 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.as, ptr %i.at, align 16, !tbaa !19
  %i.au = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #20 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.au, ptr %i.av, align 8, !tbaa !20
  store float 1.000000e+00, ptr %i.as, align 4, !tbaa !21
  %i.aw = getelementptr i8, ptr %i.as, i64 4
  %scevgep17.i71.2 = getelementptr i8, ptr %i.au, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4092) %i.aw, i8 0, i64 4092, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4092) %scevgep17.i71.2, i8 0, i64 4092, i1 false), !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  call void @BeamFormWeights(i32 noundef 2, ptr noundef nonnull %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 512, ptr %i.ay, align 16, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 100
  store i32 0, ptr %i.az, align 4, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i32 0, ptr %i.ba, align 8, !tbaa !18
  %i.bb = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #20 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 112
  store ptr %i.bb, ptr %i.bc, align 16, !tbaa !19
  %i.bd = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #20 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !20
  store float 1.000000e+00, ptr %i.bb, align 4, !tbaa !21
  %i.bf = getelementptr i8, ptr %i.bb, i64 4
  %scevgep17.i71.3 = getelementptr i8, ptr %i.bd, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4092) %i.bf, i8 0, i64 4092, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4092) %scevgep17.i71.3, i8 0, i64 4092, i1 false), !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  call void @BeamFormWeights(i32 noundef 3, ptr noundef nonnull %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8192 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16384 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 24576 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 32768 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 40960 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 49152 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 57344 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 65536 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 73728 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 81920 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 90112 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 2048
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 8192
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 10240
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 16384
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 18432
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 24576
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 26624
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 32768
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 34816
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 40960
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 43008
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 49152
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 51200
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 57344
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 59392
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 65536
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 67584
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 73728
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 75776
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 81920
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 83968
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 90112
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 92160
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 49152 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 98304 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 147456 ; 4 uses
end_hunk_1
begin_hunk_2_@begin:bb.a
  store <2 x float> %i.zc, ptr %i.zb, align 16, !tbaa !21
  %indvars.iv.next208.6.2 = or disjoint i64 %indvars.iv207.6, 3 ; 2 uses
  %.idx246.3 = shl nuw nsw i64 %indvars.iv.next208.6.2, 3
  %i.zd = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.idx246.3
  %.idx247.3 = mul nuw nsw i64 %indvars.iv.next208.6.2, 96
  %i.ze = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx247.3
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 48
  %i.zg = load <2 x float>, ptr %i.zd, align 8, !tbaa !21
  store <2 x float> %i.zg, ptr %i.zf, align 16, !tbaa !21
  %indvars.iv.next208.6.3 = add nuw nsw i64 %indvars.iv207.6, 4 ; 2 uses
  %exitcond210.6.not.3 = icmp eq i64 %indvars.iv.next208.6.3, 512
  br i1 %exitcond210.6.not.3, label %.preheader112.7, label %.preheader112.6, !llvm.loop !43

.preheader112.7:                                  ; preds = %.preheader112.6, %.preheader112.7
  %indvars.iv207.7 = phi i64 [ %indvars.iv.next208.7.3, %.preheader112.7 ], [ 0, %.preheader112.6 ] ; 6 uses
  %.idx248 = shl nuw nsw i64 %indvars.iv207.7, 3
  %i.zh = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx248
  %.idx249 = mul nuw nsw i64 %indvars.iv207.7, 96
  %i.zi = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx249
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 56
  %i.zk = load <2 x float>, ptr %i.zh, align 16, !tbaa !21
  store <2 x float> %i.zk, ptr %i.zj, align 8, !tbaa !21
  %indvars.iv.next208.7 = or disjoint i64 %indvars.iv207.7, 1 ; 2 uses
  %.idx248.1 = shl nuw nsw i64 %indvars.iv.next208.7, 3
  %i.zl = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx248.1
  %.idx249.1 = mul nuw nsw i64 %indvars.iv.next208.7, 96
  %i.zm = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx249.1
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 56
  %i.zo = load <2 x float>, ptr %i.zl, align 8, !tbaa !21
  store <2 x float> %i.zo, ptr %i.zn, align 8, !tbaa !21
  %indvars.iv.next208.7.1 = or disjoint i64 %indvars.iv207.7, 2 ; 2 uses
  %.idx248.2 = shl nuw nsw i64 %indvars.iv.next208.7.1, 3
  %i.zp = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx248.2
  %.idx249.2 = mul nuw nsw i64 %indvars.iv.next208.7.1, 96
  %i.zq = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx249.2
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 56
  %i.zs = load <2 x float>, ptr %i.zp, align 16, !tbaa !21
  store <2 x float> %i.zs, ptr %i.zr, align 8, !tbaa !21
  %indvars.iv.next208.7.2 = or disjoint i64 %indvars.iv207.7, 3 ; 2 uses
  %.idx248.3 = shl nuw nsw i64 %indvars.iv.next208.7.2, 3
  %i.zt = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx248.3
  %.idx249.3 = mul nuw nsw i64 %indvars.iv.next208.7.2, 96
  %i.zu = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx249.3
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 56
  %i.zw = load <2 x float>, ptr %i.zt, align 8, !tbaa !21
  store <2 x float> %i.zw, ptr %i.zv, align 8, !tbaa !21
  %indvars.iv.next208.7.3 = add nuw nsw i64 %indvars.iv207.7, 4 ; 2 uses
  %exitcond210.7.not.3 = icmp eq i64 %indvars.iv.next208.7.3, 512
  br i1 %exitcond210.7.not.3, label %.preheader112.8, label %.preheader112.7, !llvm.loop !43

.preheader112.8:                                  ; preds = %.preheader112.7, %.preheader112.8
  %indvars.iv207.8 = phi i64 [ %indvars.iv.next208.8.3, %.preheader112.8 ], [ 0, %.preheader112.7 ] ; 6 uses
  %.idx250 = shl nuw nsw i64 %indvars.iv207.8, 3
  %i.zx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx250
  %.idx251 = mul nuw nsw i64 %indvars.iv207.8, 96
  %i.zy = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx251
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 64
  %i.aaa = load <2 x float>, ptr %i.zx, align 16, !tbaa !21
  store <2 x float> %i.aaa, ptr %i.zz, align 16, !tbaa !21
  %indvars.iv.next208.8 = or disjoint i64 %indvars.iv207.8, 1 ; 2 uses
  %.idx250.1 = shl nuw nsw i64 %indvars.iv.next208.8, 3
  %i.aab = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx250.1
  %.idx251.1 = mul nuw nsw i64 %indvars.iv.next208.8, 96
  %i.aac = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx251.1
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 64
  %i.aae = load <2 x float>, ptr %i.aab, align 8, !tbaa !21
  store <2 x float> %i.aae, ptr %i.aad, align 16, !tbaa !21
  %indvars.iv.next208.8.1 = or disjoint i64 %indvars.iv207.8, 2 ; 2 uses
  %.idx250.2 = shl nuw nsw i64 %indvars.iv.next208.8.1, 3
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx250.2
  %.idx251.2 = mul nuw nsw i64 %indvars.iv.next208.8.1, 96
  %i.aag = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx251.2
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 64
  %i.aai = load <2 x float>, ptr %i.aaf, align 16, !tbaa !21
  store <2 x float> %i.aai, ptr %i.aah, align 16, !tbaa !21
  %indvars.iv.next208.8.2 = or disjoint i64 %indvars.iv207.8, 3 ; 2 uses
  %.idx250.3 = shl nuw nsw i64 %indvars.iv.next208.8.2, 3
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx250.3
  %.idx251.3 = mul nuw nsw i64 %indvars.iv.next208.8.2, 96
  %i.aak = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx251.3
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 64
  %i.aam = load <2 x float>, ptr %i.aaj, align 8, !tbaa !21
  store <2 x float> %i.aam, ptr %i.aal, align 16, !tbaa !21
  %indvars.iv.next208.8.3 = add nuw nsw i64 %indvars.iv207.8, 4 ; 2 uses
  %exitcond210.8.not.3 = icmp eq i64 %indvars.iv.next208.8.3, 512
  br i1 %exitcond210.8.not.3, label %.preheader112.9, label %.preheader112.8, !llvm.loop !43

.preheader112.9:                                  ; preds = %.preheader112.8, %.preheader112.9
  %indvars.iv207.9 = phi i64 [ %indvars.iv.next208.9.3, %.preheader112.9 ], [ 0, %.preheader112.8 ] ; 6 uses
  %.idx252 = shl nuw nsw i64 %indvars.iv207.9, 3
  %i.aan = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx252
  %.idx253 = mul nuw nsw i64 %indvars.iv207.9, 96
  %i.aao = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx253
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 72
  %i.aaq = load <2 x float>, ptr %i.aan, align 16, !tbaa !21
  store <2 x float> %i.aaq, ptr %i.aap, align 8, !tbaa !21
  %indvars.iv.next208.9 = or disjoint i64 %indvars.iv207.9, 1 ; 2 uses
  %.idx252.1 = shl nuw nsw i64 %indvars.iv.next208.9, 3
  %i.aar = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx252.1
  %.idx253.1 = mul nuw nsw i64 %indvars.iv.next208.9, 96
  %i.aas = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx253.1
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 72
  %i.aau = load <2 x float>, ptr %i.aar, align 8, !tbaa !21
  store <2 x float> %i.aau, ptr %i.aat, align 8, !tbaa !21
  %indvars.iv.next208.9.1 = or disjoint i64 %indvars.iv207.9, 2 ; 2 uses
  %.idx252.2 = shl nuw nsw i64 %indvars.iv.next208.9.1, 3
  %i.aav = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx252.2
  %.idx253.2 = mul nuw nsw i64 %indvars.iv.next208.9.1, 96
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx253.2
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 72
  %i.aay = load <2 x float>, ptr %i.aav, align 16, !tbaa !21
  store <2 x float> %i.aay, ptr %i.aax, align 8, !tbaa !21
  %indvars.iv.next208.9.2 = or disjoint i64 %indvars.iv207.9, 3 ; 2 uses
  %.idx252.3 = shl nuw nsw i64 %indvars.iv.next208.9.2, 3
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx252.3
  %.idx253.3 = mul nuw nsw i64 %indvars.iv.next208.9.2, 96
  %i.aba = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx253.3
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 72
  %i.abc = load <2 x float>, ptr %i.aaz, align 8, !tbaa !21
  store <2 x float> %i.abc, ptr %i.abb, align 8, !tbaa !21
  %indvars.iv.next208.9.3 = add nuw nsw i64 %indvars.iv207.9, 4 ; 2 uses
  %exitcond210.9.not.3 = icmp eq i64 %indvars.iv.next208.9.3, 512
  br i1 %exitcond210.9.not.3, label %.preheader112.10, label %.preheader112.9, !llvm.loop !43

.preheader112.10:                                 ; preds = %.preheader112.9, %.preheader112.10
  %indvars.iv207.10 = phi i64 [ %indvars.iv.next208.10.3, %.preheader112.10 ], [ 0, %.preheader112.9 ] ; 6 uses
  %.idx254 = shl nuw nsw i64 %indvars.iv207.10, 3
  %i.abd = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx254
  %.idx255 = mul nuw nsw i64 %indvars.iv207.10, 96
  %i.abe = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx255
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 80
  %i.abg = load <2 x float>, ptr %i.abd, align 16, !tbaa !21
  store <2 x float> %i.abg, ptr %i.abf, align 16, !tbaa !21
  %indvars.iv.next208.10 = or disjoint i64 %indvars.iv207.10, 1 ; 2 uses
  %.idx254.1 = shl nuw nsw i64 %indvars.iv.next208.10, 3
  %i.abh = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx254.1
  %.idx255.1 = mul nuw nsw i64 %indvars.iv.next208.10, 96
  %i.abi = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx255.1
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 80
  %i.abk = load <2 x float>, ptr %i.abh, align 8, !tbaa !21
  store <2 x float> %i.abk, ptr %i.abj, align 16, !tbaa !21
  %indvars.iv.next208.10.1 = or disjoint i64 %indvars.iv207.10, 2 ; 2 uses
  %.idx254.2 = shl nuw nsw i64 %indvars.iv.next208.10.1, 3
  %i.abl = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx254.2
  %.idx255.2 = mul nuw nsw i64 %indvars.iv.next208.10.1, 96
  %i.abm = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx255.2
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 80
  %i.abo = load <2 x float>, ptr %i.abl, align 16, !tbaa !21
  store <2 x float> %i.abo, ptr %i.abn, align 16, !tbaa !21
  %indvars.iv.next208.10.2 = or disjoint i64 %indvars.iv207.10, 3 ; 2 uses
  %.idx254.3 = shl nuw nsw i64 %indvars.iv.next208.10.2, 3
  %i.abp = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx254.3
  %.idx255.3 = mul nuw nsw i64 %indvars.iv.next208.10.2, 96
  %i.abq = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx255.3
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 80
  %i.abs = load <2 x float>, ptr %i.abp, align 8, !tbaa !21
  store <2 x float> %i.abs, ptr %i.abr, align 16, !tbaa !21
  %indvars.iv.next208.10.3 = add nuw nsw i64 %indvars.iv207.10, 4 ; 2 uses
  %exitcond210.10.not.3 = icmp eq i64 %indvars.iv.next208.10.3, 512
  br i1 %exitcond210.10.not.3, label %.preheader112.11, label %.preheader112.10, !llvm.loop !43

.preheader112.11:                                 ; preds = %.preheader112.10, %.preheader112.11
  %indvars.iv207.11 = phi i64 [ %indvars.iv.next208.11.3, %.preheader112.11 ], [ 0, %.preheader112.10 ] ; 6 uses
  %.idx256 = shl nuw nsw i64 %indvars.iv207.11, 3
  %i.abt = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx256
  %.idx257 = mul nuw nsw i64 %indvars.iv207.11, 96
  %i.abu = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx257
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 88
  %i.abw = load <2 x float>, ptr %i.abt, align 16, !tbaa !21
  store <2 x float> %i.abw, ptr %i.abv, align 8, !tbaa !21
  %indvars.iv.next208.11 = or disjoint i64 %indvars.iv207.11, 1 ; 2 uses
  %.idx256.1 = shl nuw nsw i64 %indvars.iv.next208.11, 3
  %i.abx = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx256.1
  %.idx257.1 = mul nuw nsw i64 %indvars.iv.next208.11, 96
  %i.aby = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx257.1
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 88
  %i.aca = load <2 x float>, ptr %i.abx, align 8, !tbaa !21
  store <2 x float> %i.aca, ptr %i.abz, align 8, !tbaa !21
  %indvars.iv.next208.11.1 = or disjoint i64 %indvars.iv207.11, 2 ; 2 uses
  %.idx256.2 = shl nuw nsw i64 %indvars.iv.next208.11.1, 3
  %i.acb = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx256.2
  %.idx257.2 = mul nuw nsw i64 %indvars.iv.next208.11.1, 96
  %i.acc = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx257.2
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 88
  %i.ace = load <2 x float>, ptr %i.acb, align 16, !tbaa !21
  store <2 x float> %i.ace, ptr %i.acd, align 8, !tbaa !21
  %indvars.iv.next208.11.2 = or disjoint i64 %indvars.iv207.11, 3 ; 2 uses
  %.idx256.3 = shl nuw nsw i64 %indvars.iv.next208.11.2, 3
  %i.acf = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx256.3
  %.idx257.3 = mul nuw nsw i64 %indvars.iv.next208.11.2, 96
  %i.acg = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx257.3
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 88
  %i.aci = load <2 x float>, ptr %i.acf, align 8, !tbaa !21
  store <2 x float> %i.aci, ptr %i.ach, align 8, !tbaa !21
  %indvars.iv.next208.11.3 = add nuw nsw i64 %indvars.iv207.11, 4 ; 2 uses
  %exitcond210.11.not.3 = icmp eq i64 %indvars.iv.next208.11.3, 512
  br i1 %exitcond210.11.not.3, label %.preheader111, label %.preheader112.11, !llvm.loop !43

.preheader111:                                    ; preds = %.preheader112.11, %Magnitude.exit
  %indvar = phi i64 [ %indvar.next, %Magnitude.exit ], [ 0, %.preheader112.11 ] ; 4 uses
  %3 = shl nuw nsw i64 %indvar, 11
  %scevgep = getelementptr i8, ptr %i.i, i64 %3
  %i.acj = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %indvar ; 24 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 92
  %i.acl = load float, ptr %i.ack, align 4, !tbaa !21
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acj, i64 88
  %i.acn = load float, ptr %i.acm, align 8, !tbaa !21
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acj, i64 84
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !21
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acj, i64 80
  %i.acr = load float, ptr %i.acq, align 16, !tbaa !21
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acj, i64 76
  %i.act = load float, ptr %i.acs, align 4, !tbaa !21
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acj, i64 72
  %i.acv = load float, ptr %i.acu, align 8, !tbaa !21
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acj, i64 68
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !21
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acj, i64 64
  %i.acz = load float, ptr %i.acy, align 16, !tbaa !21
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acj, i64 60
  %i.adb = load float, ptr %i.ada, align 4, !tbaa !21
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acj, i64 56
  %i.add = load float, ptr %i.adc, align 8, !tbaa !21
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acj, i64 52
  %i.adf = load float, ptr %i.ade, align 4, !tbaa !21
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acj, i64 48
  %i.adh = load float, ptr %i.adg, align 16, !tbaa !21
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acj, i64 44
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !21
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acj, i64 40
  %i.adl = load float, ptr %i.adk, align 8, !tbaa !21
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acj, i64 36
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !21
  %i.ado = getelementptr inbounds nuw i8, ptr %i.acj, i64 32
  %i.adp = load float, ptr %i.ado, align 16, !tbaa !21
  %i.adq = getelementptr inbounds nuw i8, ptr %i.acj, i64 28
  %i.adr = load float, ptr %i.adq, align 4, !tbaa !21
  %i.ads = getelementptr inbounds nuw i8, ptr %i.acj, i64 24
  %i.adt = load float, ptr %i.ads, align 8, !tbaa !21
  %i.adu = getelementptr inbounds nuw i8, ptr %i.acj, i64 20
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !21
  %i.adw = getelementptr inbounds nuw i8, ptr %i.acj, i64 16
  %i.adx = load float, ptr %i.adw, align 16, !tbaa !21
  %i.ady = getelementptr inbounds nuw i8, ptr %i.acj, i64 12
  %i.adz = load float, ptr %i.ady, align 4, !tbaa !21
  %i.aea = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  %i.aeb = load float, ptr %i.aea, align 8, !tbaa !21
  %i.aec = getelementptr inbounds nuw i8, ptr %i.acj, i64 4
  %i.aed = load float, ptr %i.aec, align 4, !tbaa !21
  %i.aee = load float, ptr %i.acj, align 16, !tbaa !21
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aee, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert287 = insertelement <4 x float> poison, float %i.aed, i64 0
  %broadcast.splat288 = shufflevector <4 x float> %broadcast.splatinsert287, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert289 = insertelement <4 x float> poison, float %i.aeb, i64 0
  %broadcast.splat290 = shufflevector <4 x float> %broadcast.splatinsert289, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert291 = insertelement <4 x float> poison, float %i.adz, i64 0
  %broadcast.splat292 = shufflevector <4 x float> %broadcast.splatinsert291, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert293 = insertelement <4 x float> poison, float %i.adx, i64 0
  %broadcast.splat294 = shufflevector <4 x float> %broadcast.splatinsert293, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert295 = insertelement <4 x float> poison, float %i.adv, i64 0
  %broadcast.splat296 = shufflevector <4 x float> %broadcast.splatinsert295, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert297 = insertelement <4 x float> poison, float %i.adt, i64 0
  %broadcast.splat298 = shufflevector <4 x float> %broadcast.splatinsert297, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert299 = insertelement <4 x float> poison, float %i.adr, i64 0
  %broadcast.splat300 = shufflevector <4 x float> %broadcast.splatinsert299, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert301 = insertelement <4 x float> poison, float %i.adp, i64 0
  %broadcast.splat302 = shufflevector <4 x float> %broadcast.splatinsert301, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert303 = insertelement <4 x float> poison, float %i.adn, i64 0
  %broadcast.splat304 = shufflevector <4 x float> %broadcast.splatinsert303, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert305 = insertelement <4 x float> poison, float %i.adl, i64 0
  %broadcast.splat306 = shufflevector <4 x float> %broadcast.splatinsert305, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert307 = insertelement <4 x float> poison, float %i.adj, i64 0
  %broadcast.splat308 = shufflevector <4 x float> %broadcast.splatinsert307, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert309 = insertelement <4 x float> poison, float %i.adh, i64 0
  %broadcast.splat310 = shufflevector <4 x float> %broadcast.splatinsert309, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert311 = insertelement <4 x float> poison, float %i.adf, i64 0
  %broadcast.splat312 = shufflevector <4 x float> %broadcast.splatinsert311, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert313 = insertelement <4 x float> poison, float %i.add, i64 0
  %broadcast.splat314 = shufflevector <4 x float> %broadcast.splatinsert313, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert315 = insertelement <4 x float> poison, float %i.adb, i64 0
  %broadcast.splat316 = shufflevector <4 x float> %broadcast.splatinsert315, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert317 = insertelement <4 x float> poison, float %i.acz, i64 0
  %broadcast.splat318 = shufflevector <4 x float> %broadcast.splatinsert317, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert319 = insertelement <4 x float> poison, float %i.acx, i64 0
  %broadcast.splat320 = shufflevector <4 x float> %broadcast.splatinsert319, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert321 = insertelement <4 x float> poison, float %i.acv, i64 0
  %broadcast.splat322 = shufflevector <4 x float> %broadcast.splatinsert321, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert323 = insertelement <4 x float> poison, float %i.act, i64 0
  %broadcast.splat324 = shufflevector <4 x float> %broadcast.splatinsert323, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert325 = insertelement <4 x float> poison, float %i.acr, i64 0
  %broadcast.splat326 = shufflevector <4 x float> %broadcast.splatinsert325, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert327 = insertelement <4 x float> poison, float %i.acp, i64 0
  %broadcast.splat328 = shufflevector <4 x float> %broadcast.splatinsert327, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert329 = insertelement <4 x float> poison, float %i.acn, i64 0
  %broadcast.splat330 = shufflevector <4 x float> %broadcast.splatinsert329, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert331 = insertelement <4 x float> poison, float %i.acl, i64 0
  %broadcast.splat332 = shufflevector <4 x float> %broadcast.splatinsert331, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %.preheader111
  %index334 = phi i64 [ 0, %.preheader111 ], [ %index.next335, %vector.body333 ] ; 6 uses
  %i.aef = mul nuw nsw i64 %index334, 96
  %i.aeg = mul nuw i64 %index334, 96
  %i.aeh = mul nuw i64 %index334, 96
  %i.aei = mul nuw i64 %index334, 96
  %i.aej = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aef ; 24 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aeg ; 24 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 96
  %i.aem = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aeh ; 24 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 192
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aei ; 24 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 288
  %i.aeq = shl nuw nsw i64 %index334, 3
  %i.aer = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.aeq
  %i.aes = load float, ptr %i.aej, align 16, !tbaa !21
  %i.aet = load float, ptr %i.ael, align 16, !tbaa !21
  %i.aeu = load float, ptr %i.aen, align 16, !tbaa !21
  %i.aev = load float, ptr %i.aep, align 16, !tbaa !21
  %i.aew = insertelement <4 x float> poison, float %i.aes, i64 0
  %i.aex = insertelement <4 x float> %i.aew, float %i.aet, i64 1
  %i.aey = insertelement <4 x float> %i.aex, float %i.aeu, i64 2
  %i.aez = insertelement <4 x float> %i.aey, float %i.aev, i64 3 ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aej, i64 4
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aek, i64 100
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aem, i64 196
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aeo, i64 292
  %i.afe = load float, ptr %i.afa, align 4, !tbaa !21
  %i.aff = load float, ptr %i.afb, align 4, !tbaa !21
  %i.afg = load float, ptr %i.afc, align 4, !tbaa !21
  %i.afh = load float, ptr %i.afd, align 4, !tbaa !21
  %i.afi = insertelement <4 x float> poison, float %i.afe, i64 0
  %i.afj = insertelement <4 x float> %i.afi, float %i.aff, i64 1
  %i.afk = insertelement <4 x float> %i.afj, float %i.afg, i64 2
  %i.afl = insertelement <4 x float> %i.afk, float %i.afh, i64 3 ; 2 uses
  %i.afm = fneg <4 x float> %i.afl
  %i.afn = fmul <4 x float> %broadcast.splat288, %i.afm
  %i.afo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.aez, <4 x float> %i.afn)
  %i.afp = fadd <4 x float> %i.afo, zeroinitializer
  %i.afq = fmul <4 x float> %i.aez, %broadcast.splat288
  %i.afr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.afl, <4 x float> %i.afq)
  %i.afs = fadd <4 x float> %i.afr, zeroinitializer
  %i.aft = getelementptr inbounds nuw i8, ptr %i.aej, i64 8
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aek, i64 104
  %i.afv = getelementptr inbounds nuw i8, ptr %i.aem, i64 200
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aeo, i64 296
  %i.afx = load float, ptr %i.aft, align 8, !tbaa !21
  %i.afy = load float, ptr %i.afu, align 8, !tbaa !21
  %i.afz = load float, ptr %i.afv, align 8, !tbaa !21
  %i.aga = load float, ptr %i.afw, align 8, !tbaa !21
  %i.agb = insertelement <4 x float> poison, float %i.afx, i64 0
  %i.agc = insertelement <4 x float> %i.agb, float %i.afy, i64 1
  %i.agd = insertelement <4 x float> %i.agc, float %i.afz, i64 2
  %i.age = insertelement <4 x float> %i.agd, float %i.aga, i64 3 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.aej, i64 12
  %i.agg = getelementptr inbounds nuw i8, ptr %i.aek, i64 108
  %i.agh = getelementptr inbounds nuw i8, ptr %i.aem, i64 204
  %i.agi = getelementptr inbounds nuw i8, ptr %i.aeo, i64 300
  %i.agj = load float, ptr %i.agf, align 4, !tbaa !21
  %i.agk = load float, ptr %i.agg, align 4, !tbaa !21
  %i.agl = load float, ptr %i.agh, align 4, !tbaa !21
  %i.agm = load float, ptr %i.agi, align 4, !tbaa !21
  %i.agn = insertelement <4 x float> poison, float %i.agj, i64 0
  %i.ago = insertelement <4 x float> %i.agn, float %i.agk, i64 1
  %i.agp = insertelement <4 x float> %i.ago, float %i.agl, i64 2
  %i.agq = insertelement <4 x float> %i.agp, float %i.agm, i64 3 ; 2 uses
  %i.agr = fneg <4 x float> %i.agq
  %i.ags = fmul <4 x float> %broadcast.splat292, %i.agr
  %i.agt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat290, <4 x float> %i.age, <4 x float> %i.ags)
  %i.agu = fadd <4 x float> %i.afp, %i.agt
  %i.agv = fmul <4 x float> %i.age, %broadcast.splat292
  %i.agw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat290, <4 x float> %i.agq, <4 x float> %i.agv)
  %i.agx = fadd <4 x float> %i.afs, %i.agw
  %i.agy = getelementptr inbounds nuw i8, ptr %i.aej, i64 16
  %i.agz = getelementptr inbounds nuw i8, ptr %i.aek, i64 112
  %i.aha = getelementptr inbounds nuw i8, ptr %i.aem, i64 208
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aeo, i64 304
  %i.ahc = load float, ptr %i.agy, align 16, !tbaa !21
  %i.ahd = load float, ptr %i.agz, align 16, !tbaa !21
  %i.ahe = load float, ptr %i.aha, align 16, !tbaa !21
  %i.ahf = load float, ptr %i.ahb, align 16, !tbaa !21
  %i.ahg = insertelement <4 x float> poison, float %i.ahc, i64 0
  %i.ahh = insertelement <4 x float> %i.ahg, float %i.ahd, i64 1
  %i.ahi = insertelement <4 x float> %i.ahh, float %i.ahe, i64 2
  %i.ahj = insertelement <4 x float> %i.ahi, float %i.ahf, i64 3 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.aej, i64 20
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.aek, i64 116
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.aem, i64 212
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.aeo, i64 308
  %i.aho = load float, ptr %i.ahk, align 4, !tbaa !21
  %i.ahp = load float, ptr %i.ahl, align 4, !tbaa !21
  %i.ahq = load float, ptr %i.ahm, align 4, !tbaa !21
  %i.ahr = load float, ptr %i.ahn, align 4, !tbaa !21
  %i.ahs = insertelement <4 x float> poison, float %i.aho, i64 0
  %i.aht = insertelement <4 x float> %i.ahs, float %i.ahp, i64 1
  %i.ahu = insertelement <4 x float> %i.aht, float %i.ahq, i64 2
  %i.ahv = insertelement <4 x float> %i.ahu, float %i.ahr, i64 3 ; 2 uses
  %i.ahw = fneg <4 x float> %i.ahv
  %i.ahx = fmul <4 x float> %broadcast.splat296, %i.ahw
  %i.ahy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat294, <4 x float> %i.ahj, <4 x float> %i.ahx)
  %i.ahz = fadd <4 x float> %i.agu, %i.ahy
  %i.aia = fmul <4 x float> %i.ahj, %broadcast.splat296
end_hunk_2
begin_hunk_3_@begin:bb.a
  %i.aqa = load float, ptr %i.apw, align 4, !tbaa !21
  %i.aqb = insertelement <4 x float> poison, float %i.apx, i64 0
  %i.aqc = insertelement <4 x float> %i.aqb, float %i.apy, i64 1
  %i.aqd = insertelement <4 x float> %i.aqc, float %i.apz, i64 2
  %i.aqe = insertelement <4 x float> %i.aqd, float %i.aqa, i64 3 ; 2 uses
  %i.aqf = fneg <4 x float> %i.aqe
  %i.aqg = fmul <4 x float> %broadcast.splat324, %i.aqf
  %i.aqh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat322, <4 x float> %i.aps, <4 x float> %i.aqg)
  %i.aqi = fadd <4 x float> %i.apd, %i.aqh
  %i.aqj = fmul <4 x float> %i.aps, %broadcast.splat324
  %i.aqk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat322, <4 x float> %i.aqe, <4 x float> %i.aqj)
  %i.aql = fadd <4 x float> %i.apg, %i.aqk
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aej, i64 80
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aek, i64 176
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aem, i64 272
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aeo, i64 368
  %i.aqq = load float, ptr %i.aqm, align 16, !tbaa !21
  %i.aqr = load float, ptr %i.aqn, align 16, !tbaa !21
  %i.aqs = load float, ptr %i.aqo, align 16, !tbaa !21
  %i.aqt = load float, ptr %i.aqp, align 16, !tbaa !21
  %i.aqu = insertelement <4 x float> poison, float %i.aqq, i64 0
  %i.aqv = insertelement <4 x float> %i.aqu, float %i.aqr, i64 1
  %i.aqw = insertelement <4 x float> %i.aqv, float %i.aqs, i64 2
  %i.aqx = insertelement <4 x float> %i.aqw, float %i.aqt, i64 3 ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aej, i64 84
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aek, i64 180
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aem, i64 276
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aeo, i64 372
  %i.arc = load float, ptr %i.aqy, align 4, !tbaa !21
  %i.ard = load float, ptr %i.aqz, align 4, !tbaa !21
  %i.are = load float, ptr %i.ara, align 4, !tbaa !21
  %i.arf = load float, ptr %i.arb, align 4, !tbaa !21
  %i.arg = insertelement <4 x float> poison, float %i.arc, i64 0
  %i.arh = insertelement <4 x float> %i.arg, float %i.ard, i64 1
  %i.ari = insertelement <4 x float> %i.arh, float %i.are, i64 2
  %i.arj = insertelement <4 x float> %i.ari, float %i.arf, i64 3 ; 2 uses
  %i.ark = fneg <4 x float> %i.arj
  %i.arl = fmul <4 x float> %broadcast.splat328, %i.ark
  %i.arm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat326, <4 x float> %i.aqx, <4 x float> %i.arl)
  %i.arn = fadd <4 x float> %i.aqi, %i.arm
  %i.aro = fmul <4 x float> %i.aqx, %broadcast.splat328
  %i.arp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat326, <4 x float> %i.arj, <4 x float> %i.aro)
  %i.arq = fadd <4 x float> %i.aql, %i.arp
  %i.arr = getelementptr inbounds nuw i8, ptr %i.aej, i64 88
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aek, i64 184
  %i.art = getelementptr inbounds nuw i8, ptr %i.aem, i64 280
  %i.aru = getelementptr inbounds nuw i8, ptr %i.aeo, i64 376
  %i.arv = load float, ptr %i.arr, align 8, !tbaa !21
  %i.arw = load float, ptr %i.ars, align 8, !tbaa !21
  %i.arx = load float, ptr %i.art, align 8, !tbaa !21
  %i.ary = load float, ptr %i.aru, align 8, !tbaa !21
  %i.arz = insertelement <4 x float> poison, float %i.arv, i64 0
  %i.asa = insertelement <4 x float> %i.arz, float %i.arw, i64 1
  %i.asb = insertelement <4 x float> %i.asa, float %i.arx, i64 2
  %i.asc = insertelement <4 x float> %i.asb, float %i.ary, i64 3 ; 2 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %i.aej, i64 92
  %i.ase = getelementptr inbounds nuw i8, ptr %i.aek, i64 188
  %i.asf = getelementptr inbounds nuw i8, ptr %i.aem, i64 284
  %i.asg = getelementptr inbounds nuw i8, ptr %i.aeo, i64 380
  %i.ash = load float, ptr %i.asd, align 4, !tbaa !21
  %i.asi = load float, ptr %i.ase, align 4, !tbaa !21
  %i.asj = load float, ptr %i.asf, align 4, !tbaa !21
  %i.ask = load float, ptr %i.asg, align 4, !tbaa !21
  %i.asl = insertelement <4 x float> poison, float %i.ash, i64 0
  %i.asm = insertelement <4 x float> %i.asl, float %i.asi, i64 1
  %i.asn = insertelement <4 x float> %i.asm, float %i.asj, i64 2
  %i.aso = insertelement <4 x float> %i.asn, float %i.ask, i64 3 ; 2 uses
  %i.asp = fneg <4 x float> %i.aso
  %i.asq = fmul <4 x float> %broadcast.splat332, %i.asp
  %i.asr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat330, <4 x float> %i.asc, <4 x float> %i.asq)
  %i.ass = fadd <4 x float> %i.arn, %i.asr
  %i.ast = fmul <4 x float> %i.asc, %broadcast.splat332
  %i.asu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat330, <4 x float> %i.aso, <4 x float> %i.ast)
  %i.asv = fadd <4 x float> %i.arq, %i.asu
  %interleaved.vec = shufflevector <4 x float> %i.ass, <4 x float> %i.asv, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.aer, align 16, !tbaa !21
  %index.next335 = add nuw i64 %index334, 4       ; 2 uses
  %i.asw = icmp eq i64 %index.next335, 512
  br i1 %i.asw, label %.preheader110, label %vector.body333, !llvm.loop !44

.preheader110:                                    ; preds = %vector.body333
  %i.asx = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %indvar ; 5 uses
  %i.asy = load i32, ptr %i.asx, align 16, !tbaa !14 ; 3 uses
  %i.asz = add nsw i32 %i.asy, -1                 ; 2 uses
  %i.ata = shl i32 %i.asy, 1                      ; 3 uses
  %i.atb = add nsw i32 %i.ata, -1
  %i.atc = getelementptr inbounds nuw i8, ptr %i.asx, i64 8 ; 2 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.asx, i64 24
  %i.ate = load ptr, ptr %i.atd, align 8, !tbaa !20 ; 3 uses
  %i.atf = icmp slt i32 %i.asy, 1                 ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %i.asx, i64 4 ; 2 uses
  %.promoted144 = load i32, ptr %i.atc, align 8, !tbaa !18
  %.promoted146 = load i32, ptr %i.atg, align 4, !tbaa !17
  %i.ath = getelementptr inbounds nuw i8, ptr %i.asx, i64 16
  %i.ati = sext i32 %i.ata to i64
  %smax.i90 = tail call i32 @llvm.smax.i32(i32 %i.ata, i32 1)
  %i.atj = zext nneg i32 %smax.i90 to i64
  %i.atk = shl nuw nsw i64 %i.atj, 2
  br label %bb.as

.lr.ph.i98.preheader:                             ; preds = %BeamFirFilter.exit97
  store i32 %i.avi, ptr %i.atc, align 8, !tbaa !18
  store i32 %i.avh, ptr %i.atg, align 4, !tbaa !17
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.i98.preheader
  %index = phi i64 [ 0, %.lr.ph.i98.preheader ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.atl = shl nuw nsw i64 %index, 3
  %i.atm = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.atl
  %wide.vec = load <8 x float>, ptr %i.atm, align 16, !tbaa !21 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec285 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.atn = fmul <4 x float> %strided.vec285, %strided.vec285
  %i.ato = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %strided.vec, <4 x float> %i.atn)
  %i.atp = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ato)
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index
  store <4 x float> %i.atp, ptr %i.atq, align 16, !tbaa !21
  %index.next = or disjoint i64 %index, 4         ; 2 uses
  %i.atr = shl nuw nsw i64 %index.next, 3
  %i.ats = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.atr
  %wide.vec.1 = load <8 x float>, ptr %i.ats, align 16, !tbaa !21 ; 2 uses
  %strided.vec.1 = shufflevector <8 x float> %wide.vec.1, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec285.1 = shufflevector <8 x float> %wide.vec.1, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.att = fmul <4 x float> %strided.vec285.1, %strided.vec285.1
  %i.atu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec.1, <4 x float> %strided.vec.1, <4 x float> %i.att)
  %i.atv = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.atu)
  %i.atw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index.next
  store <4 x float> %i.atv, ptr %i.atw, align 16, !tbaa !21
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.atx = icmp eq i64 %index.next.1, 512
  br i1 %i.atx, label %Magnitude.exit, label %vector.body, !llvm.loop !45

bb.as:                                            ; preds = %.preheader110, %BeamFirFilter.exit97
  %indvars.iv219 = phi i64 [ 0, %.preheader110 ], [ %indvars.iv.next220, %BeamFirFilter.exit97 ] ; 2 uses
  %i.aty = phi i32 [ %.promoted144, %.preheader110 ], [ %i.avi, %BeamFirFilter.exit97 ] ; 2 uses
  %i.atz = phi i32 [ %.promoted146, %.preheader110 ], [ %i.avh, %BeamFirFilter.exit97 ]
  %i.aua = shl nuw nsw i64 %indvars.iv219, 1      ; 2 uses
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.aua
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aua
  %i.aud = sub nsw i32 %i.asz, %i.aty
  %i.aue = shl nsw i32 %i.aud, 1                  ; 2 uses
  %i.auf = sext i32 %i.aue to i64
  %i.aug = getelementptr inbounds [4 x i8], ptr %i.ate, i64 %i.auf
  %i.auh = load <2 x float>, ptr %i.aub, align 8, !tbaa !21
  store <2 x float> %i.auh, ptr %i.aug, align 4, !tbaa !21
  br i1 %i.atf, label %._crit_edge.i86, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.as
  %i.aui = load ptr, ptr %i.ath, align 16, !tbaa !19
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph.i91
  %indvars.iv.i92 = phi i64 [ 0, %.lr.ph.i91 ], [ %indvars.iv.next.i96, %bb.at ] ; 2 uses
  %.05556.i95 = phi i32 [ %i.aue, %.lr.ph.i91 ], [ %i.ava, %bb.at ] ; 2 uses
  %i.auj = phi <2 x float> [ zeroinitializer, %.lr.ph.i91 ], [ %i.auy, %bb.at ]
  %i.auk = sext i32 %.05556.i95 to i64
  %i.aul = getelementptr inbounds [4 x i8], ptr %i.ate, i64 %i.auk
  %i.aum = getelementptr inbounds nuw [4 x i8], ptr %i.aui, i64 %indvars.iv.i92 ; 2 uses
  %i.aun = load float, ptr %i.aum, align 4, !tbaa !21
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aum, i64 4
  %i.aup = load float, ptr %i.auo, align 4, !tbaa !21
  %i.auq = load <2 x float>, ptr %i.aul, align 4, !tbaa !21 ; 2 uses
  %i.aur = insertelement <2 x float> poison, float %i.aup, i64 0
  %i.aus = shufflevector <2 x float> %i.auq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aut = shufflevector <2 x float> %i.aur, <2 x float> poison, <2 x i32> zeroinitializer
  %i.auu = fmul <2 x float> %i.aus, %i.aut
  %i.auv = insertelement <2 x float> poison, float %i.aun, i64 0
  %i.auw = shufflevector <2 x float> %i.auv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aux = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.auq, <2 x float> %i.auw, <2 x float> %i.auu)
  %i.auy = fadd <2 x float> %i.auj, %i.aux        ; 2 uses
  %i.auz = add nsw i32 %.05556.i95, 2
  %i.ava = and i32 %i.auz, %i.atb
  %indvars.iv.next.i96 = add nuw nsw i64 %indvars.iv.i92, 2 ; 2 uses
  %i.avb = icmp slt i64 %indvars.iv.next.i96, %i.ati
  br i1 %i.avb, label %bb.at, label %._crit_edge.i86, !llvm.loop !39

._crit_edge.i86:                                  ; preds = %bb.at, %bb.as
  %i.avc = phi <2 x float> [ zeroinitializer, %bb.as ], [ %i.auy, %bb.at ]
  %i.avd = add nsw i32 %i.aty, 1
  %i.ave = and i32 %i.avd, %i.asz
  store <2 x float> %i.avc, ptr %i.auc, align 8, !tbaa !21
  %i.avf = add nsw i32 %i.atz, 1                  ; 2 uses
  %i.avg = icmp ne i32 %i.avf, 512                ; 3 uses
  %brmerge163 = or i1 %i.avg, %i.atf
  %.mux164 = select i1 %i.avg, i32 %i.avf, i32 0
  %.mux165 = select i1 %i.avg, i32 %i.ave, i32 0
  br i1 %brmerge163, label %BeamFirFilter.exit97, label %.lr.ph63.preheader.i89

.lr.ph63.preheader.i89:                           ; preds = %._crit_edge.i86
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ate, i8 0, i64 %i.atk, i1 false), !tbaa !21
  br label %BeamFirFilter.exit97

BeamFirFilter.exit97:                             ; preds = %._crit_edge.i86, %.lr.ph63.preheader.i89
  %i.avh = phi i32 [ %.mux164, %._crit_edge.i86 ], [ 0, %.lr.ph63.preheader.i89 ] ; 2 uses
  %i.avi = phi i32 [ %.mux165, %._crit_edge.i86 ], [ 0, %.lr.ph63.preheader.i89 ] ; 2 uses
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next220, 512
  br i1 %exitcond222.not, label %.lr.ph.i98.preheader, label %bb.as, !llvm.loop !46

Magnitude.exit:                                   ; preds = %vector.body
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %scevgep, ptr noundef nonnull align 16 dereferenceable(2048) %i.h, i64 2048, i1 false), !tbaa !21
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond224.not = icmp eq i64 %indvar.next, 4
  br i1 %exitcond224.not, label %.preheader, label %.preheader111, !llvm.loop !47

.preheader:                                       ; preds = %Magnitude.exit, %check_FP.exit.3
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %check_FP.exit.3 ], [ 0, %Magnitude.exit ] ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv229 ; 4 uses
  %invariant.gep150 = getelementptr inbounds nuw [4 x i8], ptr @detector_out_StrictFP, i64 %indvars.iv229 ; 4 uses
  %i.avj = load float, ptr %invariant.gep, align 4, !tbaa !21 ; 2 uses
  %i.avk = load float, ptr %invariant.gep150, align 4, !tbaa !21 ; 3 uses
  %i.avl = fsub float %i.avj, %i.avk
  %i.avm = tail call float @llvm.fabs.f32(float %i.avl)
  %i.avn = fpext float %i.avm to double
  %i.avo = fcmp ogt double %i.avn, 1.000000e-05
  br i1 %i.avo, label %bb.au, label %check_FP.exit

bb.au:                                            ; preds = %check_FP.exit.2, %check_FP.exit.1, %check_FP.exit, %.preheader
  %.lcssa180 = phi float [ %i.avj, %.preheader ], [ %i.avv, %check_FP.exit ], [ %i.awd, %check_FP.exit.1 ], [ %i.awl, %check_FP.exit.2 ]
  %.lcssa178 = phi float [ %i.avk, %.preheader ], [ %i.avw, %check_FP.exit ], [ %i.awe, %check_FP.exit.1 ], [ %i.awm, %check_FP.exit.2 ]
  %i.avp = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.avq = fpext float %.lcssa180 to double
  %i.avr = fpext float %.lcssa178 to double
  %i.avs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.avp, ptr noundef nonnull @.str.2, double noundef %i.avq, double noundef %i.avr, double noundef 1.000000e-05) #21 ; 0 uses
  tail call void @exit(i32 noundef 1) #22
  unreachable

check_FP.exit:                                    ; preds = %.preheader
  %i.avt = fpext float %i.avk to double
  %i.avu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.avt) ; 0 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2048
  %i.avv = load float, ptr %gep.1, align 4, !tbaa !21 ; 2 uses
  %gep151.1 = getelementptr inbounds nuw i8, ptr %invariant.gep150, i64 2048
  %i.avw = load float, ptr %gep151.1, align 4, !tbaa !21 ; 3 uses
  %i.avx = fsub float %i.avv, %i.avw
  %i.avy = tail call float @llvm.fabs.f32(float %i.avx)
  %i.avz = fpext float %i.avy to double
  %i.awa = fcmp ogt double %i.avz, 1.000000e-05
  br i1 %i.awa, label %bb.au, label %check_FP.exit.1

check_FP.exit.1:                                  ; preds = %check_FP.exit
  %i.awb = fpext float %i.avw to double
  %i.awc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.awb) ; 0 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4096
  %i.awd = load float, ptr %gep.2, align 4, !tbaa !21 ; 2 uses
  %gep151.2 = getelementptr inbounds nuw i8, ptr %invariant.gep150, i64 4096
  %i.awe = load float, ptr %gep151.2, align 4, !tbaa !21 ; 3 uses
  %i.awf = fsub float %i.awd, %i.awe
  %i.awg = tail call float @llvm.fabs.f32(float %i.awf)
  %i.awh = fpext float %i.awg to double
  %i.awi = fcmp ogt double %i.awh, 1.000000e-05
  br i1 %i.awi, label %bb.au, label %check_FP.exit.2

check_FP.exit.2:                                  ; preds = %check_FP.exit.1
  %i.awj = fpext float %i.awe to double
  %i.awk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.awj) ; 0 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 6144
  %i.awl = load float, ptr %gep.3, align 4, !tbaa !21 ; 2 uses
  %gep151.3 = getelementptr inbounds nuw i8, ptr %invariant.gep150, i64 6144
  %i.awm = load float, ptr %gep151.3, align 4, !tbaa !21 ; 3 uses
  %i.awn = fsub float %i.awl, %i.awm
  %i.awo = tail call float @llvm.fabs.f32(float %i.awn)
  %i.awp = fpext float %i.awo to double
  %i.awq = fcmp ogt double %i.awp, 1.000000e-05
  br i1 %i.awq, label %bb.au, label %check_FP.exit.3

check_FP.exit.3:                                  ; preds = %check_FP.exit.2
  %i.awr = fpext float %i.awm to double
  %i.aws = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.awr) ; 0 uses
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next230, 512
  br i1 %exitcond232.not, label %.loopexit, label %.preheader, !llvm.loop !50

bb.av:                                            ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @BeamFirSetup(ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 32)) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !18
  %i.c = sext i32 %1 to i64
  %i.d = shl nsw i64 %i.c, 3                      ; 2 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #20 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !19
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.d) #20 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !20
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.e, align 4, !tbaa !21
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.e, i64 4
  %i.k = shl nuw i32 %1, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 2)
  %i.l = zext nneg i32 %smax to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = add nsw i64 %i.m, -4                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.j, i8 0, i64 %i.n, i1 false), !tbaa !21
  %scevgep17 = getelementptr i8, ptr %i.g, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep17, i8 0, i64 %i.n, i1 false), !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BeamFormWeights(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 96)) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  br i1 %i.a, label %.thread15, label %bb.b

.thread15:                                        ; preds = %bb.a
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %1, align 4, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !21
  br label %.thread17

bb.b:                                             ; preds = %bb.a
  store <2 x float> zeroinitializer, ptr %1, align 4, !tbaa !21
  %i.d = icmp eq i32 %0, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.d, label %.thread14, label %bb.c

.thread14:                                        ; preds = %bb.b
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !21
  br label %.thread17

bb.c:                                             ; preds = %bb.b
  store <2 x float> zeroinitializer, ptr %i.e, align 4, !tbaa !21
  %i.f = icmp eq i32 %0, 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.f, label %.thread16, label %bb.d

.thread16:                                        ; preds = %bb.c
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.g, align 4, !tbaa !21
  br label %.thread20

.thread17:                                        ; preds = %.thread14, %.thread15
  store <2 x float> zeroinitializer, ptr %i.b, align 4, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !21
  br label %.thread20

bb.d:                                             ; preds = %bb.c
  store <2 x float> zeroinitializer, ptr %i.g, align 4, !tbaa !21
  %i.i = icmp eq i32 %0, 3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.i, label %.thread18, label %bb.e

.thread18:                                        ; preds = %bb.d
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.j, align 4, !tbaa !21
  br label %.thread23

.thread20:                                        ; preds = %.thread16, %.thread17
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <2 x float> zeroinitializer, ptr %i.k, align 4, !tbaa !21
  br label %.thread23

bb.e:                                             ; preds = %bb.d
  store <2 x float> zeroinitializer, ptr %i.j, align 4, !tbaa !21
  %i.l = icmp eq i32 %0, 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br i1 %i.l, label %.thread21, label %bb.f

.thread21:                                        ; preds = %bb.e
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.m, align 4, !tbaa !21
  br label %.thread26

.thread23:                                        ; preds = %.thread18, %.thread20
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <2 x float> zeroinitializer, ptr %i.n, align 4, !tbaa !21
  br label %.thread26

bb.f:                                             ; preds = %bb.e
  store <2 x float> zeroinitializer, ptr %i.m, align 4, !tbaa !21
  %i.o = icmp eq i32 %0, 5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
end_hunk_3
