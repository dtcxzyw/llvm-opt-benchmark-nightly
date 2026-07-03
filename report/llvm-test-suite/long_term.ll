inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Gsm_Long_Term_Predictor:iter.check
  %i.xs = sext i16 %i.xr to i64                   ; 2 uses
  %i.xt = mul nsw i64 %i.xs, %i.xs
  %i.xu = add nuw nsw i64 %i.xn, %i.xt
  %i.xv = sub nsw i64 18, %i.sz
  %i.xw = getelementptr inbounds [2 x i8], ptr %2, i64 %i.xv
  %i.xx = load i16, ptr %i.xw, align 2, !tbaa !8
  %i.xy = ashr i16 %i.xx, 3
  %i.xz = sext i16 %i.xy to i64                   ; 2 uses
  %i.ya = mul nsw i64 %i.xz, %i.xz
  %i.yb = add nuw nsw i64 %i.xu, %i.ya
  %i.yc = sub nsw i64 19, %i.sz
  %i.yd = getelementptr inbounds [2 x i8], ptr %2, i64 %i.yc
  %i.ye = load i16, ptr %i.yd, align 2, !tbaa !8
  %i.yf = ashr i16 %i.ye, 3
  %i.yg = sext i16 %i.yf to i64                   ; 2 uses
  %i.yh = mul nsw i64 %i.yg, %i.yg
  %i.yi = add nuw nsw i64 %i.yb, %i.yh
  %i.yj = sub nsw i64 20, %i.sz
  %i.yk = getelementptr inbounds [2 x i8], ptr %2, i64 %i.yj
  %i.yl = load i16, ptr %i.yk, align 2, !tbaa !8
  %i.ym = ashr i16 %i.yl, 3
  %i.yn = sext i16 %i.ym to i64                   ; 2 uses
  %i.yo = mul nsw i64 %i.yn, %i.yn
  %i.yp = add nuw nsw i64 %i.yi, %i.yo
  %i.yq = sub nsw i64 21, %i.sz
  %i.yr = getelementptr inbounds [2 x i8], ptr %2, i64 %i.yq
  %i.ys = load i16, ptr %i.yr, align 2, !tbaa !8
  %i.yt = ashr i16 %i.ys, 3
  %i.yu = sext i16 %i.yt to i64                   ; 2 uses
  %i.yv = mul nsw i64 %i.yu, %i.yu
  %i.yw = add nuw nsw i64 %i.yp, %i.yv
  %i.yx = sub nsw i64 22, %i.sz
  %i.yy = getelementptr inbounds [2 x i8], ptr %2, i64 %i.yx
  %i.yz = load i16, ptr %i.yy, align 2, !tbaa !8
  %i.za = ashr i16 %i.yz, 3
  %i.zb = sext i16 %i.za to i64                   ; 2 uses
  %i.zc = mul nsw i64 %i.zb, %i.zb
  %i.zd = add nuw nsw i64 %i.yw, %i.zc
  %i.ze = sub nsw i64 23, %i.sz
  %i.zf = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ze
  %i.zg = load i16, ptr %i.zf, align 2, !tbaa !8
  %i.zh = ashr i16 %i.zg, 3
  %i.zi = sext i16 %i.zh to i64                   ; 2 uses
  %i.zj = mul nsw i64 %i.zi, %i.zi
  %i.zk = add nuw nsw i64 %i.zd, %i.zj
  %i.zl = sub nsw i64 24, %i.sz
  %i.zm = getelementptr inbounds [2 x i8], ptr %2, i64 %i.zl
  %i.zn = load i16, ptr %i.zm, align 2, !tbaa !8
  %i.zo = ashr i16 %i.zn, 3
  %i.zp = sext i16 %i.zo to i64                   ; 2 uses
  %i.zq = mul nsw i64 %i.zp, %i.zp
  %i.zr = add nuw nsw i64 %i.zk, %i.zq
  %i.zs = sub nsw i64 25, %i.sz
  %i.zt = getelementptr inbounds [2 x i8], ptr %2, i64 %i.zs
  %i.zu = load i16, ptr %i.zt, align 2, !tbaa !8
  %i.zv = ashr i16 %i.zu, 3
  %i.zw = sext i16 %i.zv to i64                   ; 2 uses
  %i.zx = mul nsw i64 %i.zw, %i.zw
  %i.zy = add nuw nsw i64 %i.zr, %i.zx
  %i.zz = sub nsw i64 26, %i.sz
  %i.aaa = getelementptr inbounds [2 x i8], ptr %2, i64 %i.zz
  %i.aab = load i16, ptr %i.aaa, align 2, !tbaa !8
  %i.aac = ashr i16 %i.aab, 3
  %i.aad = sext i16 %i.aac to i64                 ; 2 uses
  %i.aae = mul nsw i64 %i.aad, %i.aad
  %i.aaf = add nuw nsw i64 %i.zy, %i.aae
  %i.aag = sub nsw i64 27, %i.sz
  %i.aah = getelementptr inbounds [2 x i8], ptr %2, i64 %i.aag
  %i.aai = load i16, ptr %i.aah, align 2, !tbaa !8
  %i.aaj = ashr i16 %i.aai, 3
  %i.aak = sext i16 %i.aaj to i64                 ; 2 uses
  %i.aal = mul nsw i64 %i.aak, %i.aak
  %i.aam = add nuw nsw i64 %i.aaf, %i.aal
  %i.aan = sub nsw i64 28, %i.sz
  %i.aao = getelementptr inbounds [2 x i8], ptr %2, i64 %i.aan
  %i.aap = load i16, ptr %i.aao, align 2, !tbaa !8
  %i.aaq = ashr i16 %i.aap, 3
  %i.aar = sext i16 %i.aaq to i64                 ; 2 uses
  %i.aas = mul nsw i64 %i.aar, %i.aar
  %i.aat = add nuw nsw i64 %i.aam, %i.aas
  %i.aau = sub nsw i64 29, %i.sz
  %i.aav = getelementptr inbounds [2 x i8], ptr %2, i64 %i.aau
  %i.aaw = load i16, ptr %i.aav, align 2, !tbaa !8
  %i.aax = ashr i16 %i.aaw, 3
  %i.aay = sext i16 %i.aax to i64                 ; 2 uses
  %i.aaz = mul nsw i64 %i.aay, %i.aay
  %i.aba = add nuw nsw i64 %i.aat, %i.aaz
  %i.abb = sub nsw i64 30, %i.sz
  %i.abc = getelementptr inbounds [2 x i8], ptr %2, i64 %i.abb
  %i.abd = load i16, ptr %i.abc, align 2, !tbaa !8
  %i.abe = ashr i16 %i.abd, 3
  %i.abf = sext i16 %i.abe to i64                 ; 2 uses
  %i.abg = mul nsw i64 %i.abf, %i.abf
  %i.abh = add nuw nsw i64 %i.aba, %i.abg
  %i.abi = sub nsw i64 31, %i.sz
  %i.abj = getelementptr inbounds [2 x i8], ptr %2, i64 %i.abi
  %i.abk = load i16, ptr %i.abj, align 2, !tbaa !8
  %i.abl = ashr i16 %i.abk, 3
  %i.abm = sext i16 %i.abl to i64                 ; 2 uses
  %i.abn = mul nsw i64 %i.abm, %i.abm
  %i.abo = add nuw nsw i64 %i.abh, %i.abn
  %i.abp = sub nsw i64 32, %i.sz
  %i.abq = getelementptr inbounds [2 x i8], ptr %2, i64 %i.abp
  %i.abr = load i16, ptr %i.abq, align 2, !tbaa !8
  %i.abs = ashr i16 %i.abr, 3
  %i.abt = sext i16 %i.abs to i64                 ; 2 uses
  %i.abu = mul nsw i64 %i.abt, %i.abt
  %i.abv = add nuw nsw i64 %i.abo, %i.abu
  %i.abw = sub nsw i64 33, %i.sz
  %i.abx = getelementptr inbounds [2 x i8], ptr %2, i64 %i.abw
  %i.aby = load i16, ptr %i.abx, align 2, !tbaa !8
  %i.abz = ashr i16 %i.aby, 3
  %i.aca = sext i16 %i.abz to i64                 ; 2 uses
  %i.acb = mul nsw i64 %i.aca, %i.aca
  %i.acc = add nuw nsw i64 %i.abv, %i.acb
  %i.acd = sub nsw i64 34, %i.sz
  %i.ace = getelementptr inbounds [2 x i8], ptr %2, i64 %i.acd
  %i.acf = load i16, ptr %i.ace, align 2, !tbaa !8
  %i.acg = ashr i16 %i.acf, 3
  %i.ach = sext i16 %i.acg to i64                 ; 2 uses
  %i.aci = mul nsw i64 %i.ach, %i.ach
  %i.acj = add nuw nsw i64 %i.acc, %i.aci
  %i.ack = sub nsw i64 35, %i.sz
  %i.acl = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ack
  %i.acm = load i16, ptr %i.acl, align 2, !tbaa !8
  %i.acn = ashr i16 %i.acm, 3
  %i.aco = sext i16 %i.acn to i64                 ; 2 uses
  %i.acp = mul nsw i64 %i.aco, %i.aco
  %i.acq = add nuw nsw i64 %i.acj, %i.acp
  %i.acr = sub nsw i64 36, %i.sz
  %i.acs = getelementptr inbounds [2 x i8], ptr %2, i64 %i.acr
  %i.act = load i16, ptr %i.acs, align 2, !tbaa !8
  %i.acu = ashr i16 %i.act, 3
  %i.acv = sext i16 %i.acu to i64                 ; 2 uses
  %i.acw = mul nsw i64 %i.acv, %i.acv
  %i.acx = add nuw nsw i64 %i.acq, %i.acw
  %i.acy = sub nsw i64 37, %i.sz
  %i.acz = getelementptr inbounds [2 x i8], ptr %2, i64 %i.acy
  %i.ada = load i16, ptr %i.acz, align 2, !tbaa !8
  %i.adb = ashr i16 %i.ada, 3
  %i.adc = sext i16 %i.adb to i64                 ; 2 uses
  %i.add = mul nsw i64 %i.adc, %i.adc
  %i.ade = add nuw nsw i64 %i.acx, %i.add
  %i.adf = sub nsw i64 38, %i.sz
  %i.adg = getelementptr inbounds [2 x i8], ptr %2, i64 %i.adf
  %i.adh = load i16, ptr %i.adg, align 2, !tbaa !8
  %i.adi = ashr i16 %i.adh, 3
  %i.adj = sext i16 %i.adi to i64                 ; 2 uses
  %i.adk = mul nsw i64 %i.adj, %i.adj
  %i.adl = add nuw nsw i64 %i.ade, %i.adk
  %i.adm = sub nsw i64 39, %i.sz
  %i.adn = getelementptr inbounds [2 x i8], ptr %2, i64 %i.adm
  %i.ado = load i16, ptr %i.adn, align 2, !tbaa !8
  %i.adp = ashr i16 %i.ado, 3
  %i.adq = sext i16 %i.adp to i64                 ; 2 uses
  %i.adr = mul nsw i64 %i.adq, %i.adq
  %i.ads = add nuw nsw i64 %i.adl, %i.adr
  %i.adt = shl nuw nsw i64 %spec.select.i, 1
  %i.adu = sub nsw i32 6, %i.am
  %i.adv = zext nneg i32 %i.adu to i64
  %i.adw = lshr i64 %i.adt, %i.adv                ; 3 uses
  %i.adx = shl nuw nsw i64 %i.ads, 1              ; 3 uses
  %i.ady = icmp eq i64 %i.adw, 0
  br i1 %i.ady, label %.preheader.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp samesign ult i64 %i.adw, %i.adx
  br i1 %.not.i, label %bb.e, label %.preheader64.i

bb.e:                                             ; preds = %bb.d
  %i.adz = tail call signext i16 @gsm_norm(i64 noundef %i.adx) #5
  %i.aea = sext i16 %i.adz to i64
  %i.aeb = and i64 %i.aea, 4294967295             ; 2 uses
  %i.aec = shl i64 %i.adw, %i.aeb
  %i.aed = lshr i64 %i.aec, 16
  %i.aee = trunc i64 %i.aed to i16                ; 3 uses
  %i.aef = shl i64 %i.adx, %i.aeb
  %i.aeg = lshr i64 %i.aef, 16
  %i.aeh = trunc i64 %i.aeg to i16                ; 3 uses
  %i.aei = load i16, ptr @gsm_DLB, align 2, !tbaa !8
  %i.aej = tail call signext i16 @gsm_mult(i16 noundef signext %i.aeh, i16 noundef signext %i.aei) #5
  %.not193.i = icmp slt i16 %i.aej, %i.aee
  br i1 %.not193.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.aek = load i16, ptr getelementptr inbounds nuw (i8, ptr @gsm_DLB, i64 2), align 2, !tbaa !8
  %i.ael = tail call signext i16 @gsm_mult(i16 noundef signext %i.aeh, i16 noundef signext %i.aek) #5
  %.not193.1.i = icmp slt i16 %i.ael, %i.aee
  br i1 %.not193.1.i, label %bb.g, label %.preheader60.i

bb.g:                                             ; preds = %bb.f
  %i.aem = load i16, ptr getelementptr inbounds nuw (i8, ptr @gsm_DLB, i64 4), align 2, !tbaa !8
  %i.aen = tail call signext i16 @gsm_mult(i16 noundef signext %i.aeh, i16 noundef signext %i.aem) #5
  %.not193.2.i = icmp slt i16 %i.aen, %i.aee
  br i1 %.not193.2.i, label %.preheader64.i, label %.preheader62.i

.preheader64.i:                                   ; preds = %bb.g, %bb.d
  store i16 3, ptr %6, align 2, !tbaa !8
  %i.aeo = load i16, ptr %5, align 2, !tbaa !8
  %i.aep = sext i16 %i.aeo to i64                 ; 7 uses
  %i.aeq = sub i64 %i.d, %i.c
  %diff.check73 = icmp ult i64 %i.aeq, 16
  %i.aer = shl nsw i64 %i.aep, 1                  ; 2 uses
  %i.aes = add i64 %i.aer, %i.c
  %i.aet = sub i64 %i.aes, %i.b
  %diff.check74 = icmp ult i64 %i.aet, 16
  %conflict.rdx75 = or i1 %diff.check73, %diff.check74
  %i.aeu = sub i64 %i.a, %i.c
  %diff.check76 = icmp ult i64 %i.aeu, 16
  %conflict.rdx77 = or i1 %conflict.rdx75, %diff.check76
  %i.aev = add i64 %i.aer, %i.d
  %i.aew = sub i64 %i.aev, %i.b
  %diff.check78 = icmp ult i64 %i.aew, 16
  %conflict.rdx79 = or i1 %conflict.rdx77, %diff.check78
  %i.aex = sub i64 %i.d, %i.a
  %diff.check80 = icmp ult i64 %i.aex, 16
  %conflict.rdx81 = or i1 %conflict.rdx79, %diff.check80
  br i1 %conflict.rdx81, label %scalar.ph82, label %vector.body84

vector.body84:                                    ; preds = %.preheader64.i
  %i.aey = sub nsw i64 0, %i.aep
  %i.aez = getelementptr inbounds [2 x i8], ptr %2, i64 %i.aey
  %wide.load86 = load <8 x i16>, ptr %i.aez, align 2, !tbaa !8
  %i.afa = sext <8 x i16> %wide.load86 to <8 x i32>
  %i.afb = mul nsw <8 x i32> %i.afa, splat (i32 32767)
  %i.afc = add nsw <8 x i32> %i.afb, splat (i32 16384)
  %i.afd = lshr <8 x i32> %i.afc, splat (i32 15)
  %i.afe = trunc <8 x i32> %i.afd to <8 x i16>    ; 2 uses
  store <8 x i16> %i.afe, ptr %4, align 2, !tbaa !8
  %wide.load87 = load <8 x i16>, ptr %1, align 2, !tbaa !8
  %i.aff = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load87, <8 x i16> %i.afe)
  store <8 x i16> %i.aff, ptr %3, align 2, !tbaa !8
  %i.afg = sub nsw i64 8, %i.aep
  %i.afh = getelementptr inbounds [2 x i8], ptr %2, i64 %i.afg
  %wide.load86.1 = load <8 x i16>, ptr %i.afh, align 2, !tbaa !8
  %i.afi = sext <8 x i16> %wide.load86.1 to <8 x i32>
  %i.afj = mul nsw <8 x i32> %i.afi, splat (i32 32767)
  %i.afk = add nsw <8 x i32> %i.afj, splat (i32 16384)
  %i.afl = lshr <8 x i32> %i.afk, splat (i32 15)
  %i.afm = trunc <8 x i32> %i.afl to <8 x i16>    ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <8 x i16> %i.afm, ptr %i.afn, align 2, !tbaa !8
  %i.afo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load87.1 = load <8 x i16>, ptr %i.afo, align 2, !tbaa !8
  %i.afp = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load87.1, <8 x i16> %i.afm)
  %i.afq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <8 x i16> %i.afp, ptr %i.afq, align 2, !tbaa !8
  %i.afr = sub nsw i64 16, %i.aep
  %i.afs = getelementptr inbounds [2 x i8], ptr %2, i64 %i.afr
  %wide.load86.2 = load <8 x i16>, ptr %i.afs, align 2, !tbaa !8
  %i.aft = sext <8 x i16> %wide.load86.2 to <8 x i32>
  %i.afu = mul nsw <8 x i32> %i.aft, splat (i32 32767)
  %i.afv = add nsw <8 x i32> %i.afu, splat (i32 16384)
  %i.afw = lshr <8 x i32> %i.afv, splat (i32 15)
  %i.afx = trunc <8 x i32> %i.afw to <8 x i16>    ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %4, i64 32
  store <8 x i16> %i.afx, ptr %i.afy, align 2, !tbaa !8
  %i.afz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.load87.2 = load <8 x i16>, ptr %i.afz, align 2, !tbaa !8
  %i.aga = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load87.2, <8 x i16> %i.afx)
  %i.agb = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <8 x i16> %i.aga, ptr %i.agb, align 2, !tbaa !8
  %i.agc = sub nsw i64 24, %i.aep
  %i.agd = getelementptr inbounds [2 x i8], ptr %2, i64 %i.agc
  %wide.load86.3 = load <8 x i16>, ptr %i.agd, align 2, !tbaa !8
  %i.age = sext <8 x i16> %wide.load86.3 to <8 x i32>
  %i.agf = mul nsw <8 x i32> %i.age, splat (i32 32767)
  %i.agg = add nsw <8 x i32> %i.agf, splat (i32 16384)
  %i.agh = lshr <8 x i32> %i.agg, splat (i32 15)
  %i.agi = trunc <8 x i32> %i.agh to <8 x i16>    ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <8 x i16> %i.agi, ptr %i.agj, align 2, !tbaa !8
  %i.agk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load87.3 = load <8 x i16>, ptr %i.agk, align 2, !tbaa !8
  %i.agl = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load87.3, <8 x i16> %i.agi)
  %i.agm = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <8 x i16> %i.agl, ptr %i.agm, align 2, !tbaa !8
  %i.agn = sub nsw i64 32, %i.aep
  %i.ago = getelementptr inbounds [2 x i8], ptr %2, i64 %i.agn
  %wide.load86.4 = load <8 x i16>, ptr %i.ago, align 2, !tbaa !8
  %i.agp = sext <8 x i16> %wide.load86.4 to <8 x i32>
  %i.agq = mul nsw <8 x i32> %i.agp, splat (i32 32767)
  %i.agr = add nsw <8 x i32> %i.agq, splat (i32 16384)
  %i.ags = lshr <8 x i32> %i.agr, splat (i32 15)
  %i.agt = trunc <8 x i32> %i.ags to <8 x i16>    ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %4, i64 64
  store <8 x i16> %i.agt, ptr %i.agu, align 2, !tbaa !8
  %i.agv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.load87.4 = load <8 x i16>, ptr %i.agv, align 2, !tbaa !8
  %i.agw = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load87.4, <8 x i16> %i.agt)
  %i.agx = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <8 x i16> %i.agw, ptr %i.agx, align 2, !tbaa !8
  br label %Long_term_analysis_filtering.exit

.preheader62.i:                                   ; preds = %bb.g
  store i16 2, ptr %6, align 2, !tbaa !8
  %i.agy = load i16, ptr %5, align 2, !tbaa !8
  %i.agz = sext i16 %i.agy to i64                 ; 7 uses
  %i.aha = sub i64 %i.d, %i.c
  %diff.check55 = icmp ult i64 %i.aha, 16
  %i.ahb = shl nsw i64 %i.agz, 1                  ; 2 uses
  %i.ahc = add i64 %i.ahb, %i.c
  %i.ahd = sub i64 %i.ahc, %i.b
  %diff.check56 = icmp ult i64 %i.ahd, 16
  %conflict.rdx57 = or i1 %diff.check55, %diff.check56
  %i.ahe = sub i64 %i.a, %i.c
  %diff.check58 = icmp ult i64 %i.ahe, 16
  %conflict.rdx59 = or i1 %conflict.rdx57, %diff.check58
  %i.ahf = add i64 %i.ahb, %i.d
  %i.ahg = sub i64 %i.ahf, %i.b
  %diff.check60 = icmp ult i64 %i.ahg, 16
  %conflict.rdx61 = or i1 %conflict.rdx59, %diff.check60
  %i.ahh = sub i64 %i.d, %i.a
  %diff.check62 = icmp ult i64 %i.ahh, 16
  %conflict.rdx63 = or i1 %conflict.rdx61, %diff.check62
  br i1 %conflict.rdx63, label %scalar.ph64, label %vector.body66

vector.body66:                                    ; preds = %.preheader62.i
  %i.ahi = sub nsw i64 0, %i.agz
  %i.ahj = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ahi
  %wide.load68 = load <8 x i16>, ptr %i.ahj, align 2, !tbaa !8
  %i.ahk = sext <8 x i16> %wide.load68 to <8 x i32>
  %i.ahl = mul nsw <8 x i32> %i.ahk, splat (i32 21299)
  %i.ahm = add nsw <8 x i32> %i.ahl, splat (i32 16384)
  %i.ahn = lshr <8 x i32> %i.ahm, splat (i32 15)
  %i.aho = trunc <8 x i32> %i.ahn to <8 x i16>    ; 2 uses
  store <8 x i16> %i.aho, ptr %4, align 2, !tbaa !8
  %wide.load69 = load <8 x i16>, ptr %1, align 2, !tbaa !8
  %i.ahp = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load69, <8 x i16> %i.aho)
  store <8 x i16> %i.ahp, ptr %3, align 2, !tbaa !8
  %i.ahq = sub nsw i64 8, %i.agz
  %i.ahr = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ahq
  %wide.load68.1 = load <8 x i16>, ptr %i.ahr, align 2, !tbaa !8
  %i.ahs = sext <8 x i16> %wide.load68.1 to <8 x i32>
  %i.aht = mul nsw <8 x i32> %i.ahs, splat (i32 21299)
  %i.ahu = add nsw <8 x i32> %i.aht, splat (i32 16384)
  %i.ahv = lshr <8 x i32> %i.ahu, splat (i32 15)
  %i.ahw = trunc <8 x i32> %i.ahv to <8 x i16>    ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <8 x i16> %i.ahw, ptr %i.ahx, align 2, !tbaa !8
  %i.ahy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load69.1 = load <8 x i16>, ptr %i.ahy, align 2, !tbaa !8
  %i.ahz = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load69.1, <8 x i16> %i.ahw)
  %i.aia = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <8 x i16> %i.ahz, ptr %i.aia, align 2, !tbaa !8
  %i.aib = sub nsw i64 16, %i.agz
  %i.aic = getelementptr inbounds [2 x i8], ptr %2, i64 %i.aib
  %wide.load68.2 = load <8 x i16>, ptr %i.aic, align 2, !tbaa !8
  %i.aid = sext <8 x i16> %wide.load68.2 to <8 x i32>
  %i.aie = mul nsw <8 x i32> %i.aid, splat (i32 21299)
  %i.aif = add nsw <8 x i32> %i.aie, splat (i32 16384)
  %i.aig = lshr <8 x i32> %i.aif, splat (i32 15)
  %i.aih = trunc <8 x i32> %i.aig to <8 x i16>    ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %4, i64 32
  store <8 x i16> %i.aih, ptr %i.aii, align 2, !tbaa !8
  %i.aij = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.load69.2 = load <8 x i16>, ptr %i.aij, align 2, !tbaa !8
  %i.aik = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load69.2, <8 x i16> %i.aih)
  %i.ail = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <8 x i16> %i.aik, ptr %i.ail, align 2, !tbaa !8
  %i.aim = sub nsw i64 24, %i.agz
  %i.ain = getelementptr inbounds [2 x i8], ptr %2, i64 %i.aim
  %wide.load68.3 = load <8 x i16>, ptr %i.ain, align 2, !tbaa !8
  %i.aio = sext <8 x i16> %wide.load68.3 to <8 x i32>
  %i.aip = mul nsw <8 x i32> %i.aio, splat (i32 21299)
  %i.aiq = add nsw <8 x i32> %i.aip, splat (i32 16384)
  %i.air = lshr <8 x i32> %i.aiq, splat (i32 15)
  %i.ais = trunc <8 x i32> %i.air to <8 x i16>    ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <8 x i16> %i.ais, ptr %i.ait, align 2, !tbaa !8
  %i.aiu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load69.3 = load <8 x i16>, ptr %i.aiu, align 2, !tbaa !8
  %i.aiv = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load69.3, <8 x i16> %i.ais)
  %i.aiw = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <8 x i16> %i.aiv, ptr %i.aiw, align 2, !tbaa !8
  %i.aix = sub nsw i64 32, %i.agz
  %i.aiy = getelementptr inbounds [2 x i8], ptr %2, i64 %i.aix
  %wide.load68.4 = load <8 x i16>, ptr %i.aiy, align 2, !tbaa !8
  %i.aiz = sext <8 x i16> %wide.load68.4 to <8 x i32>
  %i.aja = mul nsw <8 x i32> %i.aiz, splat (i32 21299)
  %i.ajb = add nsw <8 x i32> %i.aja, splat (i32 16384)
  %i.ajc = lshr <8 x i32> %i.ajb, splat (i32 15)
  %i.ajd = trunc <8 x i32> %i.ajc to <8 x i16>    ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %4, i64 64
  store <8 x i16> %i.ajd, ptr %i.aje, align 2, !tbaa !8
  %i.ajf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.load69.4 = load <8 x i16>, ptr %i.ajf, align 2, !tbaa !8
  %i.ajg = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load69.4, <8 x i16> %i.ajd)
  %i.ajh = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <8 x i16> %i.ajg, ptr %i.ajh, align 2, !tbaa !8
  br label %Long_term_analysis_filtering.exit

.preheader60.i:                                   ; preds = %bb.f
  store i16 1, ptr %6, align 2, !tbaa !8
  %i.aji = load i16, ptr %5, align 2, !tbaa !8
  %i.ajj = sext i16 %i.aji to i64                 ; 7 uses
  %i.ajk = sub i64 %i.d, %i.c
  %diff.check = icmp ult i64 %i.ajk, 16
  %i.ajl = shl nsw i64 %i.ajj, 1                  ; 2 uses
  %i.ajm = add i64 %i.ajl, %i.c
  %i.ajn = sub i64 %i.ajm, %i.b
  %diff.check40 = icmp ult i64 %i.ajn, 16
  %conflict.rdx = or i1 %diff.check, %diff.check40
  %i.ajo = sub i64 %i.a, %i.c
  %diff.check41 = icmp ult i64 %i.ajo, 16
  %conflict.rdx42 = or i1 %conflict.rdx, %diff.check41
  %i.ajp = add i64 %i.ajl, %i.d
  %i.ajq = sub i64 %i.ajp, %i.b
  %diff.check43 = icmp ult i64 %i.ajq, 16
  %conflict.rdx44 = or i1 %conflict.rdx42, %diff.check43
  %i.ajr = sub i64 %i.d, %i.a
  %diff.check45 = icmp ult i64 %i.ajr, 16
  %conflict.rdx46 = or i1 %conflict.rdx44, %diff.check45
  br i1 %conflict.rdx46, label %scalar.ph, label %vector.body48

vector.body48:                                    ; preds = %.preheader60.i
  %i.ajs = sub nsw i64 0, %i.ajj
  %i.ajt = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ajs
  %wide.load50 = load <8 x i16>, ptr %i.ajt, align 2, !tbaa !8
  %i.aju = sext <8 x i16> %wide.load50 to <8 x i32>
  %i.ajv = mul nsw <8 x i32> %i.aju, splat (i32 11469)
  %i.ajw = add nsw <8 x i32> %i.ajv, splat (i32 16384)
  %i.ajx = lshr <8 x i32> %i.ajw, splat (i32 15)
  %i.ajy = trunc <8 x i32> %i.ajx to <8 x i16>    ; 2 uses
  store <8 x i16> %i.ajy, ptr %4, align 2, !tbaa !8
  %wide.load51 = load <8 x i16>, ptr %1, align 2, !tbaa !8
  %i.ajz = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load51, <8 x i16> %i.ajy)
  store <8 x i16> %i.ajz, ptr %3, align 2, !tbaa !8
  %i.aka = sub nsw i64 8, %i.ajj
  %i.akb = getelementptr inbounds [2 x i8], ptr %2, i64 %i.aka
  %wide.load50.1 = load <8 x i16>, ptr %i.akb, align 2, !tbaa !8
  %i.akc = sext <8 x i16> %wide.load50.1 to <8 x i32>
  %i.akd = mul nsw <8 x i32> %i.akc, splat (i32 11469)
  %i.ake = add nsw <8 x i32> %i.akd, splat (i32 16384)
  %i.akf = lshr <8 x i32> %i.ake, splat (i32 15)
  %i.akg = trunc <8 x i32> %i.akf to <8 x i16>    ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <8 x i16> %i.akg, ptr %i.akh, align 2, !tbaa !8
  %i.aki = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load51.1 = load <8 x i16>, ptr %i.aki, align 2, !tbaa !8
  %i.akj = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load51.1, <8 x i16> %i.akg)
  %i.akk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <8 x i16> %i.akj, ptr %i.akk, align 2, !tbaa !8
  %i.akl = sub nsw i64 16, %i.ajj
  %i.akm = getelementptr inbounds [2 x i8], ptr %2, i64 %i.akl
  %wide.load50.2 = load <8 x i16>, ptr %i.akm, align 2, !tbaa !8
  %i.akn = sext <8 x i16> %wide.load50.2 to <8 x i32>
  %i.ako = mul nsw <8 x i32> %i.akn, splat (i32 11469)
  %i.akp = add nsw <8 x i32> %i.ako, splat (i32 16384)
  %i.akq = lshr <8 x i32> %i.akp, splat (i32 15)
  %i.akr = trunc <8 x i32> %i.akq to <8 x i16>    ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %4, i64 32
  store <8 x i16> %i.akr, ptr %i.aks, align 2, !tbaa !8
  %i.akt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.load51.2 = load <8 x i16>, ptr %i.akt, align 2, !tbaa !8
  %i.aku = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load51.2, <8 x i16> %i.akr)
  %i.akv = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <8 x i16> %i.aku, ptr %i.akv, align 2, !tbaa !8
  %i.akw = sub nsw i64 24, %i.ajj
  %i.akx = getelementptr inbounds [2 x i8], ptr %2, i64 %i.akw
  %wide.load50.3 = load <8 x i16>, ptr %i.akx, align 2, !tbaa !8
  %i.aky = sext <8 x i16> %wide.load50.3 to <8 x i32>
  %i.akz = mul nsw <8 x i32> %i.aky, splat (i32 11469)
  %i.ala = add nsw <8 x i32> %i.akz, splat (i32 16384)
  %i.alb = lshr <8 x i32> %i.ala, splat (i32 15)
  %i.alc = trunc <8 x i32> %i.alb to <8 x i16>    ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <8 x i16> %i.alc, ptr %i.ald, align 2, !tbaa !8
  %i.ale = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load51.3 = load <8 x i16>, ptr %i.ale, align 2, !tbaa !8
  %i.alf = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load51.3, <8 x i16> %i.alc)
  %i.alg = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <8 x i16> %i.alf, ptr %i.alg, align 2, !tbaa !8
  %i.alh = sub nsw i64 32, %i.ajj
  %i.ali = getelementptr inbounds [2 x i8], ptr %2, i64 %i.alh
  %wide.load50.4 = load <8 x i16>, ptr %i.ali, align 2, !tbaa !8
  %i.alj = sext <8 x i16> %wide.load50.4 to <8 x i32>
  %i.alk = mul nsw <8 x i32> %i.alj, splat (i32 11469)
  %i.all = add nsw <8 x i32> %i.alk, splat (i32 16384)
  %i.alm = lshr <8 x i32> %i.all, splat (i32 15)
  %i.aln = trunc <8 x i32> %i.alm to <8 x i16>    ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %4, i64 64
  store <8 x i16> %i.aln, ptr %i.alo, align 2, !tbaa !8
  %i.alp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.load51.4 = load <8 x i16>, ptr %i.alp, align 2, !tbaa !8
  %i.alq = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load51.4, <8 x i16> %i.aln)
  %i.alr = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <8 x i16> %i.alq, ptr %i.alr, align 2, !tbaa !8
  br label %Long_term_analysis_filtering.exit

.preheader.i:                                     ; preds = %bb.c, %bb.e
  store i16 0, ptr %6, align 2, !tbaa !8
  %i.als = load i16, ptr %5, align 2, !tbaa !8
  %i.alt = sext i16 %i.als to i64                 ; 7 uses
  %i.alu = sub i64 %i.d, %i.c
  %diff.check91 = icmp ult i64 %i.alu, 16
  %i.alv = shl nsw i64 %i.alt, 1                  ; 2 uses
  %i.alw = add i64 %i.alv, %i.c
  %i.alx = sub i64 %i.alw, %i.b
  %diff.check92 = icmp ult i64 %i.alx, 16
  %conflict.rdx93 = or i1 %diff.check91, %diff.check92
  %i.aly = sub i64 %i.a, %i.c
  %diff.check94 = icmp ult i64 %i.aly, 16
  %conflict.rdx95 = or i1 %conflict.rdx93, %diff.check94
  %i.alz = add i64 %i.alv, %i.d
  %i.ama = sub i64 %i.alz, %i.b
  %diff.check96 = icmp ult i64 %i.ama, 16
  %conflict.rdx97 = or i1 %conflict.rdx95, %diff.check96
  %i.amb = sub i64 %i.d, %i.a
  %diff.check98 = icmp ult i64 %i.amb, 16
  %conflict.rdx99 = or i1 %conflict.rdx97, %diff.check98
  br i1 %conflict.rdx99, label %scalar.ph100, label %vector.body102

vector.body102:                                   ; preds = %.preheader.i
  %i.amc = sub nsw i64 0, %i.alt
  %i.amd = getelementptr inbounds [2 x i8], ptr %2, i64 %i.amc
  %wide.load104 = load <8 x i16>, ptr %i.amd, align 2, !tbaa !8
  %i.ame = sext <8 x i16> %wide.load104 to <8 x i32>
  %i.amf = mul nsw <8 x i32> %i.ame, splat (i32 3277)
  %i.amg = add nsw <8 x i32> %i.amf, splat (i32 16384)
  %i.amh = lshr <8 x i32> %i.amg, splat (i32 15)
  %i.ami = trunc <8 x i32> %i.amh to <8 x i16>    ; 2 uses
  store <8 x i16> %i.ami, ptr %4, align 2, !tbaa !8
  %wide.load105 = load <8 x i16>, ptr %1, align 2, !tbaa !8
  %i.amj = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load105, <8 x i16> %i.ami)
  store <8 x i16> %i.amj, ptr %3, align 2, !tbaa !8
  %i.amk = sub nsw i64 8, %i.alt
  %i.aml = getelementptr inbounds [2 x i8], ptr %2, i64 %i.amk
  %wide.load104.1 = load <8 x i16>, ptr %i.aml, align 2, !tbaa !8
  %i.amm = sext <8 x i16> %wide.load104.1 to <8 x i32>
  %i.amn = mul nsw <8 x i32> %i.amm, splat (i32 3277)
  %i.amo = add nsw <8 x i32> %i.amn, splat (i32 16384)
  %i.amp = lshr <8 x i32> %i.amo, splat (i32 15)
  %i.amq = trunc <8 x i32> %i.amp to <8 x i16>    ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <8 x i16> %i.amq, ptr %i.amr, align 2, !tbaa !8
  %i.ams = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load105.1 = load <8 x i16>, ptr %i.ams, align 2, !tbaa !8
  %i.amt = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load105.1, <8 x i16> %i.amq)
  %i.amu = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <8 x i16> %i.amt, ptr %i.amu, align 2, !tbaa !8
  %i.amv = sub nsw i64 16, %i.alt
  %i.amw = getelementptr inbounds [2 x i8], ptr %2, i64 %i.amv
  %wide.load104.2 = load <8 x i16>, ptr %i.amw, align 2, !tbaa !8
  %i.amx = sext <8 x i16> %wide.load104.2 to <8 x i32>
  %i.amy = mul nsw <8 x i32> %i.amx, splat (i32 3277)
  %i.amz = add nsw <8 x i32> %i.amy, splat (i32 16384)
  %i.ana = lshr <8 x i32> %i.amz, splat (i32 15)
  %i.anb = trunc <8 x i32> %i.ana to <8 x i16>    ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %4, i64 32
  store <8 x i16> %i.anb, ptr %i.anc, align 2, !tbaa !8
  %i.and = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.load105.2 = load <8 x i16>, ptr %i.and, align 2, !tbaa !8
  %i.ane = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load105.2, <8 x i16> %i.anb)
  %i.anf = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <8 x i16> %i.ane, ptr %i.anf, align 2, !tbaa !8
  %i.ang = sub nsw i64 24, %i.alt
  %i.anh = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ang
  %wide.load104.3 = load <8 x i16>, ptr %i.anh, align 2, !tbaa !8
  %i.ani = sext <8 x i16> %wide.load104.3 to <8 x i32>
  %i.anj = mul nsw <8 x i32> %i.ani, splat (i32 3277)
  %i.ank = add nsw <8 x i32> %i.anj, splat (i32 16384)
  %i.anl = lshr <8 x i32> %i.ank, splat (i32 15)
  %i.anm = trunc <8 x i32> %i.anl to <8 x i16>    ; 2 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <8 x i16> %i.anm, ptr %i.ann, align 2, !tbaa !8
  %i.ano = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load105.3 = load <8 x i16>, ptr %i.ano, align 2, !tbaa !8
  %i.anp = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load105.3, <8 x i16> %i.anm)
  %i.anq = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <8 x i16> %i.anp, ptr %i.anq, align 2, !tbaa !8
  %i.anr = sub nsw i64 32, %i.alt
  %i.ans = getelementptr inbounds [2 x i8], ptr %2, i64 %i.anr
  %wide.load104.4 = load <8 x i16>, ptr %i.ans, align 2, !tbaa !8
  %i.ant = sext <8 x i16> %wide.load104.4 to <8 x i32>
  %i.anu = mul nsw <8 x i32> %i.ant, splat (i32 3277)
  %i.anv = add nsw <8 x i32> %i.anu, splat (i32 16384)
  %i.anw = lshr <8 x i32> %i.anv, splat (i32 15)
  %i.anx = trunc <8 x i32> %i.anw to <8 x i16>    ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %4, i64 64
  store <8 x i16> %i.anx, ptr %i.any, align 2, !tbaa !8
  %i.anz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.load105.4 = load <8 x i16>, ptr %i.anz, align 2, !tbaa !8
  %i.aoa = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load105.4, <8 x i16> %i.anx)
  %i.aob = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <8 x i16> %i.aoa, ptr %i.aob, align 2, !tbaa !8
  br label %Long_term_analysis_filtering.exit

scalar.ph100:                                     ; preds = %.preheader.i, %scalar.ph100
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i, %scalar.ph100 ], [ 0, %.preheader.i ] ; 5 uses
  %i.aoc = sub nsw i64 %indvars.iv82.i, %i.alt
  %i.aod = getelementptr inbounds [2 x i8], ptr %2, i64 %i.aoc
  %i.aoe = load i16, ptr %i.aod, align 2, !tbaa !8
  %i.aof = sext i16 %i.aoe to i32
  %i.aog = mul nsw i32 %i.aof, 3277
  %i.aoh = add nsw i32 %i.aog, 16384
  %i.aoi = lshr i32 %i.aoh, 15
  %i.aoj = trunc i32 %i.aoi to i16                ; 2 uses
  %i.aok = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv82.i
  store i16 %i.aoj, ptr %i.aok, align 2, !tbaa !8
  %i.aol = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv82.i
  %i.aom = load i16, ptr %i.aol, align 2, !tbaa !8
  %i.aon = tail call i16 @llvm.ssub.sat.i16(i16 %i.aom, i16 %i.aoj)
  %i.aoo = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv82.i
  store i16 %i.aon, ptr %i.aoo, align 2, !tbaa !8
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %exitcond85.not.i = icmp eq i64 %indvars.iv.next83.i, 40
  br i1 %exitcond85.not.i, label %Long_term_analysis_filtering.exit, label %scalar.ph100, !llvm.loop !12

scalar.ph:                                        ; preds = %.preheader60.i, %scalar.ph
  %indvars.iv78.i = phi i64 [ %indvars.iv.next79.i, %scalar.ph ], [ 0, %.preheader60.i ] ; 5 uses
  %i.aop = sub nsw i64 %indvars.iv78.i, %i.ajj
  %i.aoq = getelementptr inbounds [2 x i8], ptr %2, i64 %i.aop
  %i.aor = load i16, ptr %i.aoq, align 2, !tbaa !8
  %i.aos = sext i16 %i.aor to i32
  %i.aot = mul nsw i32 %i.aos, 11469
  %i.aou = add nsw i32 %i.aot, 16384
  %i.aov = lshr i32 %i.aou, 15
  %i.aow = trunc i32 %i.aov to i16                ; 2 uses
  %i.aox = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv78.i
  store i16 %i.aow, ptr %i.aox, align 2, !tbaa !8
  %i.aoy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv78.i
  %i.aoz = load i16, ptr %i.aoy, align 2, !tbaa !8
  %i.apa = tail call i16 @llvm.ssub.sat.i16(i16 %i.aoz, i16 %i.aow)
  %i.apb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv78.i
  store i16 %i.apa, ptr %i.apb, align 2, !tbaa !8
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next79.i, 40
  br i1 %exitcond81.not.i, label %Long_term_analysis_filtering.exit, label %scalar.ph, !llvm.loop !14

scalar.ph64:                                      ; preds = %.preheader62.i, %scalar.ph64
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i, %scalar.ph64 ], [ 0, %.preheader62.i ] ; 5 uses
  %i.apc = sub nsw i64 %indvars.iv74.i, %i.agz
  %i.apd = getelementptr inbounds [2 x i8], ptr %2, i64 %i.apc
  %i.ape = load i16, ptr %i.apd, align 2, !tbaa !8
  %i.apf = sext i16 %i.ape to i32
  %i.apg = mul nsw i32 %i.apf, 21299
  %i.aph = add nsw i32 %i.apg, 16384
  %i.api = lshr i32 %i.aph, 15
  %i.apj = trunc i32 %i.api to i16                ; 2 uses
  %i.apk = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv74.i
  store i16 %i.apj, ptr %i.apk, align 2, !tbaa !8
  %i.apl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv74.i
  %i.apm = load i16, ptr %i.apl, align 2, !tbaa !8
  %i.apn = tail call i16 @llvm.ssub.sat.i16(i16 %i.apm, i16 %i.apj)
  %i.apo = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv74.i
  store i16 %i.apn, ptr %i.apo, align 2, !tbaa !8
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next75.i, 40
  br i1 %exitcond77.not.i, label %Long_term_analysis_filtering.exit, label %scalar.ph64, !llvm.loop !15

scalar.ph82:                                      ; preds = %.preheader64.i, %scalar.ph82
  %indvars.iv.i10 = phi i64 [ %indvars.iv.next.i11, %scalar.ph82 ], [ 0, %.preheader64.i ] ; 5 uses
  %i.app = sub nsw i64 %indvars.iv.i10, %i.aep
  %i.apq = getelementptr inbounds [2 x i8], ptr %2, i64 %i.app
  %i.apr = load i16, ptr %i.apq, align 2, !tbaa !8
  %i.aps = sext i16 %i.apr to i32
  %i.apt = mul nsw i32 %i.aps, 32767
  %i.apu = add nsw i32 %i.apt, 16384
  %i.apv = lshr i32 %i.apu, 15
  %i.apw = trunc i32 %i.apv to i16                ; 2 uses
  %i.apx = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i10
  store i16 %i.apw, ptr %i.apx, align 2, !tbaa !8
  %i.apy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i10
  %i.apz = load i16, ptr %i.apy, align 2, !tbaa !8
  %i.aqa = tail call i16 @llvm.ssub.sat.i16(i16 %i.apz, i16 %i.apw)
  %i.aqb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.i10
  store i16 %i.aqa, ptr %i.aqb, align 2, !tbaa !8
  %indvars.iv.next.i11 = add nuw nsw i64 %indvars.iv.i10, 1 ; 2 uses
  %exitcond.not.i12 = icmp eq i64 %indvars.iv.next.i11, 40
  br i1 %exitcond.not.i12, label %Long_term_analysis_filtering.exit, label %scalar.ph82, !llvm.loop !16

Long_term_analysis_filtering.exit:                ; preds = %scalar.ph, %scalar.ph64, %scalar.ph82, %scalar.ph100, %vector.body48, %vector.body66, %vector.body84, %vector.body102
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Gsm_Long_Term_Synthesis_Filtering(ptr nofree noundef captures(none) %0, i16 noundef signext %1, i16 noundef signext %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = add i16 %1, -121
  %or.cond = icmp ult i16 %i.c, -81
  br i1 %or.cond, label %bb.b, label %vector.memcheck

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 630
  %i.e = load i16, ptr %i.d, align 2, !tbaa !17
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a, %bb.b
  %.in = phi i16 [ %i.e, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 630
  store i16 %.in, ptr %i.f, align 2, !tbaa !17
  %i.g = sext i16 %2 to i64
  %i.h = getelementptr inbounds [2 x i8], ptr @gsm_QLB, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !8
  %i.j = sext i16 %i.i to i64
  %i.k = shl nsw i64 %i.j, 33                     ; 2 uses
  %i.l = sext i16 %.in to i64                     ; 2 uses
  %diff.check = icmp ult i16 %.in, 8
  %i.m = sub i64 %i.b, %i.a
  %diff.check35 = icmp ult i64 %i.m, 16
  %conflict.rdx = or i1 %diff.check, %diff.check35
  br i1 %conflict.rdx, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = sub nsw i64 %index, %i.l
  %i.o = getelementptr inbounds [2 x i8], ptr %4, i64 %i.n
  %wide.load = load <8 x i16>, ptr %i.o, align 2, !tbaa !8
  %i.p = sext <8 x i16> %wide.load to <8 x i64>
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index
  %wide.load36 = load <8 x i16>, ptr %i.q, align 2, !tbaa !8
  %i.r = mul <8 x i64> %broadcast.splat, %i.p
  %i.s = add <8 x i64> %i.r, splat (i64 140737488355328)
  %i.t = lshr <8 x i64> %i.s, splat (i64 48)
  %i.u = trunc nuw <8 x i64> %i.t to <8 x i16>
  %i.v = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.u, <8 x i16> %wide.load36)
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %index
  store <8 x i16> %i.v, ptr %i.w, align 2, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, 40
  br i1 %i.x, label %.preheader.preheader, label %vector.body, !llvm.loop !20

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %vector.memcheck ] ; 4 uses
  %i.y = sub nsw i64 %indvars.iv, %i.l
  %i.z = getelementptr inbounds [2 x i8], ptr %4, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !8
  %i.ab = sext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !8
  %i.ae = mul i64 %i.k, %i.ab
  %i.af = add i64 %i.ae, 140737488355328
  %i.ag = lshr i64 %i.af, 48
  %i.ah = trunc nuw i64 %i.ag to i16
  %i.ai = tail call i16 @llvm.sadd.sat.i16(i16 %i.ah, i16 %i.ad)
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 40
  br i1 %exitcond.not, label %.preheader.preheader, label %scalar.ph, !llvm.loop !22

.preheader.preheader:                             ; preds = %vector.body, %scalar.ph
  %scevgep = getelementptr i8, ptr %4, i64 -240
  %scevgep31 = getelementptr i8, ptr %4, i64 -160
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(240) %scevgep, ptr noundef nonnull align 2 dereferenceable(240) %scevgep31, i64 240, i1 false), !tbaa !8
  ret void
}

declare signext i16 @gsm_norm(i64 noundef) local_unnamed_addr #2

declare signext i16 @gsm_mult(i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ssub.sat.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.smax.v8i16(<8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11, !13}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !11, !13}
!15 = distinct !{!15, !11, !13}
!16 = distinct !{!16, !11, !13}
!17 = !{!18, !9, i64 630}
!18 = !{!"gsm_state", !6, i64 0, !9, i64 560, !19, i64 568, !5, i64 576, !6, i64 580, !6, i64 596, !9, i64 628, !9, i64 630, !6, i64 632, !9, i64 650, !6, i64 652, !6, i64 653}
!19 = !{!"long", !6, i64 0}
!20 = distinct !{!20, !11, !13, !21}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !11, !13}
end_hunk_0
