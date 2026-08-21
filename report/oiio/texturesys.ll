inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_:bb.a
  store <4 x i32> %i.ym, ptr %i.fm, align 16, !tbaa !34
  %indvars.iv.next2197.2.a = add nsw i64 %indvars.iv.next2195.1, %i.el ; 2 uses
  %i.yn = getelementptr inbounds i8, ptr %i.oi, i64 %indvars.iv.next2197.2.a
  %i.yo = load <4 x i16>, ptr %i.yn, align 2, !tbaa !489 ; 2 uses
  %i.yp = and <4 x i16> %i.yo, splat (i16 32767)  ; 2 uses
  %i.yq = zext nneg <4 x i16> %i.yp to <4 x i32>
  %i.yr = shl nuw nsw <4 x i32> %i.yq, splat (i32 13)
  %i.ys = bitcast <4 x i32> %i.yr to <4 x float>
  %i.yt = fmul nnan <4 x float> %i.ys, splat (float f0x77800000)
  %i.yu = icmp samesign ugt <4 x i16> %i.yp, splat (i16 31743)
  %i.yv = select <4 x i1> %i.yu, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2353.2 = sext <4 x i16> %i.yo to <4 x i32>
  %i.yw = and <4 x i32> %.signext2353.2, splat (i32 -2147483648)
  %i.yx = or disjoint <4 x i32> %i.yv, %i.yw
  %i.yy = bitcast <4 x float> %i.yt to <4 x i32>
  %i.yz = or <4 x i32> %i.yx, %i.yy
  store <4 x i32> %i.yz, ptr %i.fn, align 16, !tbaa !34
  %indvars.iv.next2197.1.2 = add nsw i64 %indvars.iv.next2197.2.a, %i.el ; 2 uses
  %i.za = getelementptr inbounds i8, ptr %i.oi, i64 %indvars.iv.next2197.1.2
  %i.zb = load <4 x i16>, ptr %i.za, align 2, !tbaa !489 ; 2 uses
  %i.zc = and <4 x i16> %i.zb, splat (i16 32767)  ; 2 uses
  %i.zd = zext nneg <4 x i16> %i.zc to <4 x i32>
  %i.ze = shl nuw nsw <4 x i32> %i.zd, splat (i32 13)
  %i.zf = bitcast <4 x i32> %i.ze to <4 x float>
  %i.zg = fmul nnan <4 x float> %i.zf, splat (float f0x77800000)
  %i.zh = icmp samesign ugt <4 x i16> %i.zc, splat (i16 31743)
  %i.zi = select <4 x i1> %i.zh, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2354.2 = sext <4 x i16> %i.zb to <4 x i32>
  %i.zj = and <4 x i32> %.signext2354.2, splat (i32 -2147483648)
  %i.zk = or disjoint <4 x i32> %i.zi, %i.zj
  %i.zl = bitcast <4 x float> %i.zg to <4 x i32>
  %i.zm = or <4 x i32> %i.zk, %i.zl
  store <4 x i32> %i.zm, ptr %i.fo, align 16, !tbaa !34
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next2197.1.2
  %i.zn = load <4 x i16>, ptr %gep.2, align 2, !tbaa !489 ; 2 uses
  %i.zo = and <4 x i16> %i.zn, splat (i16 32767)  ; 2 uses
  %i.zp = zext nneg <4 x i16> %i.zo to <4 x i32>
  %i.zq = shl nuw nsw <4 x i32> %i.zp, splat (i32 13)
  %i.zr = bitcast <4 x i32> %i.zq to <4 x float>
  %i.zs = fmul nnan <4 x float> %i.zr, splat (float f0x77800000)
  %i.zt = icmp samesign ugt <4 x i16> %i.zo, splat (i16 31743)
  %i.zu = select <4 x i1> %i.zt, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2355.2 = sext <4 x i16> %i.zn to <4 x i32>
  %i.zv = and <4 x i32> %.signext2355.2, splat (i32 -2147483648)
  %i.zw = or disjoint <4 x i32> %i.zu, %i.zv
  %i.zx = bitcast <4 x float> %i.zs to <4 x i32>
  %i.zy = or <4 x i32> %i.zw, %i.zx
  store <4 x i32> %i.zy, ptr %i.fp, align 16, !tbaa !34
  %indvars.iv.next2195.2 = mul nsw i64 %i.uc, 3   ; 2 uses
  %i.zz = getelementptr inbounds i8, ptr %i.oi, i64 %indvars.iv.next2195.2
  %i.aaa = load <4 x i16>, ptr %i.zz, align 2, !tbaa !489 ; 2 uses
  %i.aab = and <4 x i16> %i.aaa, splat (i16 32767) ; 2 uses
  %i.aac = zext nneg <4 x i16> %i.aab to <4 x i32>
  %i.aad = shl nuw nsw <4 x i32> %i.aac, splat (i32 13)
  %i.aae = bitcast <4 x i32> %i.aad to <4 x float>
  %i.aaf = fmul nnan <4 x float> %i.aae, splat (float f0x77800000)
  %i.aag = icmp samesign ugt <4 x i16> %i.aab, splat (i16 31743)
  %i.aah = select <4 x i1> %i.aag, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2352.3 = sext <4 x i16> %i.aaa to <4 x i32>
  %i.aai = and <4 x i32> %.signext2352.3, splat (i32 -2147483648)
  %i.aaj = or disjoint <4 x i32> %i.aah, %i.aai
  %i.aak = bitcast <4 x float> %i.aaf to <4 x i32>
  %i.aal = or <4 x i32> %i.aaj, %i.aak
  store <4 x i32> %i.aal, ptr %i.fq, align 16, !tbaa !34
  %indvars.iv.next2197.3 = add nsw i64 %indvars.iv.next2195.2, %i.el ; 2 uses
  %i.aam = getelementptr inbounds i8, ptr %i.oi, i64 %indvars.iv.next2197.3
  %i.aan = load <4 x i16>, ptr %i.aam, align 2, !tbaa !489 ; 2 uses
  %i.aao = and <4 x i16> %i.aan, splat (i16 32767) ; 2 uses
  %i.aap = zext nneg <4 x i16> %i.aao to <4 x i32>
  %i.aaq = shl nuw nsw <4 x i32> %i.aap, splat (i32 13)
  %i.aar = bitcast <4 x i32> %i.aaq to <4 x float>
  %i.aas = fmul nnan <4 x float> %i.aar, splat (float f0x77800000)
  %i.aat = icmp samesign ugt <4 x i16> %i.aao, splat (i16 31743)
  %i.aau = select <4 x i1> %i.aat, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2353.3 = sext <4 x i16> %i.aan to <4 x i32>
  %i.aav = and <4 x i32> %.signext2353.3, splat (i32 -2147483648)
  %i.aaw = or disjoint <4 x i32> %i.aau, %i.aav
  %i.aax = bitcast <4 x float> %i.aas to <4 x i32>
  %i.aay = or <4 x i32> %i.aaw, %i.aax
  store <4 x i32> %i.aay, ptr %i.fr, align 16, !tbaa !34
  %indvars.iv.next2197.1.3 = add nsw i64 %indvars.iv.next2197.3, %i.el ; 2 uses
  %i.aaz = getelementptr inbounds i8, ptr %i.oi, i64 %indvars.iv.next2197.1.3
  %i.aba = load <4 x i16>, ptr %i.aaz, align 2, !tbaa !489 ; 2 uses
  %i.abb = and <4 x i16> %i.aba, splat (i16 32767) ; 2 uses
  %i.abc = zext nneg <4 x i16> %i.abb to <4 x i32>
  %i.abd = shl nuw nsw <4 x i32> %i.abc, splat (i32 13)
  %i.abe = bitcast <4 x i32> %i.abd to <4 x float>
  %i.abf = fmul nnan <4 x float> %i.abe, splat (float f0x77800000)
  %i.abg = icmp samesign ugt <4 x i16> %i.abb, splat (i16 31743)
  %i.abh = select <4 x i1> %i.abg, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2354.3 = sext <4 x i16> %i.aba to <4 x i32>
  %i.abi = and <4 x i32> %.signext2354.3, splat (i32 -2147483648)
  %i.abj = or disjoint <4 x i32> %i.abh, %i.abi
  %i.abk = bitcast <4 x float> %i.abf to <4 x i32>
  %i.abl = or <4 x i32> %i.abj, %i.abk
  store <4 x i32> %i.abl, ptr %i.fs, align 16, !tbaa !34
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next2197.1.3
  %i.abm = load <4 x i16>, ptr %gep.3, align 2, !tbaa !489 ; 2 uses
  %i.abn = and <4 x i16> %i.abm, splat (i16 32767) ; 2 uses
  %i.abo = zext nneg <4 x i16> %i.abn to <4 x i32>
  %i.abp = shl nuw nsw <4 x i32> %i.abo, splat (i32 13)
  %i.abq = bitcast <4 x i32> %i.abp to <4 x float>
  %i.abr = fmul nnan <4 x float> %i.abq, splat (float f0x77800000)
  %i.abs = icmp samesign ugt <4 x i16> %i.abn, splat (i16 31743)
  %i.abt = select <4 x i1> %i.abs, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2355.3 = sext <4 x i16> %i.abm to <4 x i32>
  %i.abu = and <4 x i32> %.signext2355.3, splat (i32 -2147483648)
  %i.abv = or disjoint <4 x i32> %i.abt, %i.abu
  %i.abw = bitcast <4 x float> %i.abr to <4 x i32>
  %i.abx = or <4 x i32> %i.abv, %i.abw
  store <4 x i32> %i.abx, ptr %i.ft, align 16, !tbaa !34
  br label %.loopexit2107

_ZN11OpenImageIO4v3_14simdrmERKNS1_5vint4Ei.exit956: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #3
  %i.aby = load <4 x i32>, ptr %27, align 16, !tbaa !34 ; 2 uses
  %i.abz = load <4 x i32>, ptr %17, align 16, !tbaa !34
  %i.aca = sub <4 x i32> %i.aby, %i.abz           ; 4 uses
  %i.acb = load i32, ptr %i.aw, align 4, !tbaa !325 ; 4 uses
  %.sroa.02283.0.extract.trunc.a = extractelement <4 x i32> %i.aca, i64 0
  %i.acc = srem i32 %.sroa.02283.0.extract.trunc.a, %i.acb
  %.sroa.02287.0.insert.ext.a = zext i32 %i.acc to i64
  %.sroa.02283.4.extract.trunc.a = extractelement <4 x i32> %i.aca, i64 1
  %i.acd = srem i32 %.sroa.02283.4.extract.trunc.a, %i.acb
  %.sroa.02287.4.insert.ext.a = zext i32 %i.acd to i64
  %.sroa.02287.4.insert.shift.a = shl nuw i64 %.sroa.02287.4.insert.ext.a, 32
  %.sroa.02287.4.insert.insert.a = or disjoint i64 %.sroa.02287.4.insert.shift.a, %.sroa.02287.0.insert.ext.a
  %.sroa.52284.8.extract.trunc.a = extractelement <4 x i32> %i.aca, i64 2
  %i.ace = srem i32 %.sroa.52284.8.extract.trunc.a, %i.acb
  %.sroa.52288.8.insert.ext.a = zext i32 %i.ace to i64
  %.sroa.52284.12.extract.trunc.a = extractelement <4 x i32> %i.aca, i64 3
  %i.acf = srem i32 %.sroa.52284.12.extract.trunc.a, %i.acb
  %.sroa.52288.12.insert.ext.a = zext i32 %i.acf to i64
  %.sroa.52288.12.insert.shift.a = shl nuw i64 %.sroa.52288.12.insert.ext.a, 32
  %.sroa.52288.12.insert.insert.a = or disjoint i64 %.sroa.52288.12.insert.shift.a, %.sroa.52288.8.insert.ext.a
  store i64 %.sroa.02287.4.insert.insert.a, ptr %33, align 16
  store i64 %.sroa.52288.12.insert.insert.a, ptr %.sroa.487.0..sroa_idx, align 8, !tbaa !34
  %i.acg = load <4 x i32>, ptr %28, align 16, !tbaa !34 ; 2 uses
  %i.ach = load <4 x i32>, ptr %18, align 16, !tbaa !34
  %i.aci = sub <4 x i32> %i.acg, %i.ach           ; 4 uses
  %i.acj = load i32, ptr %i.bk, align 4, !tbaa !322 ; 4 uses
  %.sroa.02281.0.extract.trunc = extractelement <4 x i32> %i.aci, i64 0
  %i.ack = srem i32 %.sroa.02281.0.extract.trunc, %i.acj
  %.sroa.02285.0.insert.ext = zext i32 %i.ack to i64
  %.sroa.02281.4.extract.trunc = extractelement <4 x i32> %i.aci, i64 1
  %i.acl = srem i32 %.sroa.02281.4.extract.trunc, %i.acj
  %.sroa.02285.4.insert.ext = zext i32 %i.acl to i64
  %.sroa.02285.4.insert.shift = shl nuw i64 %.sroa.02285.4.insert.ext, 32
  %.sroa.02285.4.insert.insert = or disjoint i64 %.sroa.02285.4.insert.shift, %.sroa.02285.0.insert.ext
  %.sroa.52282.8.extract.trunc = extractelement <4 x i32> %i.aci, i64 2
  %i.acm = srem i32 %.sroa.52282.8.extract.trunc, %i.acj
  %.sroa.52286.8.insert.ext = zext i32 %i.acm to i64
  %.sroa.52282.12.extract.trunc = extractelement <4 x i32> %i.aci, i64 3
  %i.acn = srem i32 %.sroa.52282.12.extract.trunc, %i.acj
  %.sroa.52286.12.insert.ext = zext i32 %i.acn to i64
  %.sroa.52286.12.insert.shift = shl nuw i64 %.sroa.52286.12.insert.ext, 32
  %.sroa.52286.12.insert.insert = or disjoint i64 %.sroa.52286.12.insert.shift, %.sroa.52286.8.insert.ext
  store i64 %.sroa.02285.4.insert.insert, ptr %34, align 16
  store i64 %.sroa.52286.12.insert.insert, ptr %.sroa.485.0..sroa_idx, align 8, !tbaa !34
  %i.aco = load <2 x i64>, ptr %33, align 16, !tbaa !34 ; 2 uses
  %i.acp = bitcast <2 x i64> %i.aco to <4 x i32>  ; 2 uses
  %i.acq = sub <4 x i32> %i.aby, %i.acp
  store <4 x i32> %i.acq, ptr %35, align 16
  %i.acr = load <4 x i32>, ptr %34, align 16, !tbaa !34
  %i.acs = sub <4 x i32> %i.acg, %i.acr
  store <4 x i32> %i.acs, ptr %36, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #3
  %i.act = and <2 x i64> %i.aco, splat (i64 4294967295)
  %i.acu = mul nuw <2 x i64> %i.act, %i.dn
  %i.acv = and <4 x i32> %i.acp, <i32 0, i32 -1, i32 0, i32 -1>
  %.inner2346 = shufflevector <4 x i32> %i.acv, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.acw = bitcast <4 x i32> %.inner2346 to <2 x i64>
  %i.acx = mul nuw <2 x i64> %i.dn, %i.acw
  %i.acy = bitcast <2 x i64> %i.acu to <4 x i32>
  %i.acz = bitcast <2 x i64> %i.acx to <4 x i32>
  %i.ada = shufflevector <4 x i32> %i.acy, <4 x i32> %i.acz, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.adb = add <4 x i32> %i.ada, %i.dq
  store <4 x i32> %i.adb, ptr %37, align 16
  %i.adc = icmp eq i64 %indvars.iv2268, 0
  br label %bb.z

.thread2051:                                      ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #3
  br label %.loopexit2107

bb.z:                                             ; preds = %_ZN11OpenImageIO4v3_14simdrmERKNS1_5vint4Ei.exit956, %.thread
  %indvar = phi i64 [ 0, %_ZN11OpenImageIO4v3_14simdrmERKNS1_5vint4Ei.exit956 ], [ %indvar.next, %.thread ] ; 6 uses
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %indvar
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !3
  %.not372 = icmp eq i32 %i.ade, 0
  br i1 %.not372, label %.preheader2104, label %bb.aa

.preheader2104:                                   ; preds = %bb.z
  %39 = getelementptr inbounds nuw [64 x i8], ptr %31, i64 %indvar
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %39, i8 0, i64 64, i1 false), !tbaa !34
  br label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %indvar
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !3
  %i.adh = sext i32 %i.adg to i64
  %i.adi = load i32, ptr %i.aw, align 4, !tbaa !325
  %i.adj = mul nsw i32 %i.adi, %i.cz
  %i.adk = sext i32 %i.adj to i64
  %i.adl = mul nsw i64 %i.adk, %i.adh
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %36, i64 %indvar
  %i.adn = getelementptr inbounds nuw [64 x i8], ptr %31, i64 %indvar ; 5 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.bo
  %indvars.iv = phi i64 [ 0, %bb.aa ], [ %indvars.iv.next, %bb.bo ] ; 11 uses
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %indvars.iv
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !3
  %.not373 = icmp eq i32 %i.adp, 0
  br i1 %.not373, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.adq = getelementptr inbounds nuw [16 x i8], ptr %i.adn, i64 %indvars.iv
  store <4 x float> zeroinitializer, ptr %i.adq, align 16, !tbaa !34
  br label %bb.bo

bb.ad:                                            ; preds = %bb.ab
  %i.adr = icmp eq i64 %indvars.iv, 0
  br i1 %i.adr, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %33, i64 %indvars.iv
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !3
  %i.adu = icmp eq i32 %i.adt, 0
  br i1 %i.adu, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.adv = load i8, ptr %i.q, align 8, !tbaa !245
  %i.adw = icmp eq i8 %i.adv, 4
  br i1 %i.adw, label %bb.ag, label %.split362

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %indvars.iv
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !3 ; 3 uses
  %i.adz = load i32, ptr %i.adm, align 4, !tbaa !3 ; 3 uses
  store i32 %i.ady, ptr %21, align 8, !tbaa !307
  store i32 %i.adz, ptr %i.cg, align 4, !tbaa !309
  %i.aea = load ptr, ptr %i.dr, align 8, !tbaa !92
  %i.aeb = load i64, ptr %i.ds, align 8, !tbaa !494
  %i.aec = add nsw i64 %i.aeb, 1
  store i64 %i.aec, ptr %i.ds, align 8, !tbaa !494
  %i.aed = load ptr, ptr %i.dt, align 8, !tbaa !326 ; 12 uses
  %.not.i1171 = icmp eq ptr %i.aed, null
  br i1 %.not.i1171, label %_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 8
  %i.aef = load i32, ptr %i.aee, align 8, !tbaa !307
  %i.aeg = icmp eq i32 %i.aef, %i.ady
  br i1 %i.aeg, label %bb.ai, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.ai:                                            ; preds = %bb.ah
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aed, i64 12
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !309
  %i.aej = icmp eq i32 %i.aei, %i.adz
  br i1 %i.aej, label %bb.aj, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.aj:                                            ; preds = %bb.ai
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aed, i64 16
  %i.ael = load i32, ptr %i.aek, align 8, !tbaa !310
  %i.aem = load i32, ptr %i.ch, align 8, !tbaa !310
  %i.aen = icmp eq i32 %i.ael, %i.aem
  br i1 %i.aen, label %bb.ak, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aed, i64 20
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !311
  %i.aeq = load i32, ptr %i.ci, align 4, !tbaa !311
  %i.aer = icmp eq i32 %i.aep, %i.aeq
  br i1 %i.aer, label %bb.al, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.al:                                            ; preds = %bb.ak
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aed, i64 24
  %i.aet = load i32, ptr %i.aes, align 8, !tbaa !312
  %i.aeu = load i32, ptr %i.cj, align 8, !tbaa !312
  %i.aev = icmp eq i32 %i.aet, %i.aeu
  br i1 %i.aev, label %bb.am, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.am:                                            ; preds = %bb.al
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aed, i64 40
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !317
  %i.aey = load ptr, ptr %i.cq, align 8, !tbaa !317
  %i.aez = icmp eq ptr %i.aex, %i.aey
  br i1 %i.aez, label %bb.an, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.an:                                            ; preds = %bb.am
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aed, i64 28
  %i.afb = load i16, ptr %i.afa, align 4, !tbaa !313
  %i.afc = load i16, ptr %i.ck, align 4, !tbaa !313
  %i.afd = icmp eq i16 %i.afb, %i.afc
  br i1 %i.afd, label %bb.ao, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.ao:                                            ; preds = %bb.an
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aed, i64 30
  %i.aff = load i16, ptr %i.afe, align 2, !tbaa !314
  %i.afg = load i16, ptr %i.cm, align 2, !tbaa !314
  %i.afh = icmp eq i16 %i.aff, %i.afg
  br i1 %i.afh, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.i, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.i:     ; preds = %bb.ao
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aed, i64 32
  %i.afj = load i32, ptr %i.afi, align 8, !tbaa !315
  %i.afk = load i32, ptr %i.co, align 8, !tbaa !315
  %i.afl = icmp eq i32 %i.afj, %i.afk
  br i1 %i.afl, label %bb.ap, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.ap:                                            ; preds = %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.i
  br i1 %i.adc, label %bb.aq, label %_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aed, i64 80
  store atomic i32 1, ptr %i.afm seq_cst, align 8
  br label %_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit.thread

_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i: ; preds = %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.i, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.afn = load ptr, ptr %i.du, align 8, !tbaa !326 ; 12 uses
  store ptr %i.afn, ptr %i.dt, align 8, !tbaa !326
  store ptr %i.aed, ptr %i.du, align 8, !tbaa !326
  %.not18.i = icmp eq ptr %i.afn, null
  br i1 %.not18.i, label %_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 8
  %i.afp = load i32, ptr %i.afo, align 8, !tbaa !307
  %i.afq = icmp eq i32 %i.afp, %i.ady
  br i1 %i.afq, label %bb.as, label %_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit

bb.as:                                            ; preds = %bb.ar
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afn, i64 12
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !309
  %i.aft = icmp eq i32 %i.afs, %i.adz
  br i1 %i.aft, label %bb.at, label %_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit

bb.at:                                            ; preds = %bb.as
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afn, i64 16
  %i.afv = load i32, ptr %i.afu, align 8, !tbaa !310
  %i.afw = load i32, ptr %i.ch, align 8, !tbaa !310
  %i.afx = icmp eq i32 %i.afv, %i.afw
  br i1 %i.afx, label %bb.au, label %_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit

bb.au:                                            ; preds = %bb.at
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afn, i64 20
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !311
  %i.aga = load i32, ptr %i.ci, align 4, !tbaa !311
  %i.agb = icmp eq i32 %i.afz, %i.aga
  br i1 %i.agb, label %bb.av, label %_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit

bb.av:                                            ; preds = %bb.au
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afn, i64 24
  %i.agd = load i32, ptr %i.agc, align 8, !tbaa !312
  %i.age = load i32, ptr %i.cj, align 8, !tbaa !312
  %i.agf = icmp eq i32 %i.agd, %i.age
  br i1 %i.agf, label %bb.aw, label %_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit

bb.aw:                                            ; preds = %bb.av
  %i.agg = getelementptr inbounds nuw i8, ptr %i.afn, i64 40
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !317
  %i.agi = load ptr, ptr %i.cq, align 8, !tbaa !317
  %i.agj = icmp eq ptr %i.agh, %i.agi
  br i1 %i.agj, label %bb.ax, label %_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit

bb.ax:                                            ; preds = %bb.aw
  %i.agk = getelementptr inbounds nuw i8, ptr %i.afn, i64 28
  %i.agl = load i16, ptr %i.agk, align 4, !tbaa !313
  %i.agm = load i16, ptr %i.ck, align 4, !tbaa !313
  %i.agn = icmp eq i16 %i.agl, %i.agm
  br i1 %i.agn, label %bb.ay, label %_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit

bb.ay:                                            ; preds = %bb.ax
  %i.ago = getelementptr inbounds nuw i8, ptr %i.afn, i64 30
  %i.agp = load i16, ptr %i.ago, align 2, !tbaa !314
  %i.agq = load i16, ptr %i.cm, align 2, !tbaa !314
  %i.agr = icmp eq i16 %i.agp, %i.agq
  br i1 %i.agr, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.i, label %_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit

_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.i:   ; preds = %bb.ay
  %i.ags = getelementptr inbounds nuw i8, ptr %i.afn, i64 32
  %i.agt = load i32, ptr %i.ags, align 8, !tbaa !315
  %i.agu = load i32, ptr %i.co, align 8, !tbaa !315
  %i.agv = icmp eq i32 %i.agt, %i.agu
  br i1 %i.agv, label %bb.az, label %_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit

bb.az:                                            ; preds = %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.i
  %i.agw = getelementptr inbounds nuw i8, ptr %i.afn, i64 80
  store atomic i32 1, ptr %i.agw seq_cst, align 8
  br label %_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit.thread

_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit: ; preds = %bb.ag, %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.i
  %i.agx = call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl20find_tile_main_cacheERKNS0_6TileIDERNS0_13intrusive_ptrINS0_14ImageCacheTileEEEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.aea, ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull %6)
  br i1 %i.agx, label %_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit.thread, label %bb.ba
end_hunk_0
