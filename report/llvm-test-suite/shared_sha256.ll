begin_hunk_0_@sha256_transform:bb.a
  %i.aba = xor i32 %i.aay, %i.aaz
  %i.abb = tail call i32 @llvm.fshl.i32(i32 %i.zw, i32 %i.zw, i32 10)
  %i.abc = xor i32 %i.aba, %i.abb
  %i.abd = and i32 %i.zw, %i.yj
  %i.abe = xor i32 %i.zw, %i.yj
  %i.abf = and i32 %i.abe, %i.ww
  %i.abg = xor i32 %i.abf, %i.abd
  %i.abh = add i32 %i.abc, %i.abg
  %i.abi = add i32 %i.aax, %i.vj                  ; 11 uses
  %i.abj = add i32 %i.abh, %i.aax                 ; 12 uses
  %i.abk = tail call i32 @llvm.fshl.i32(i32 %i.abi, i32 %i.abi, i32 26)
  %i.abl = tail call i32 @llvm.fshl.i32(i32 %i.abi, i32 %i.abi, i32 21)
  %i.abm = xor i32 %i.abk, %i.abl
  %i.abn = tail call i32 @llvm.fshl.i32(i32 %i.abi, i32 %i.abi, i32 7)
  %i.abo = xor i32 %i.abm, %i.abn
  %i.abp = xor i32 %i.zv, %i.yi
  %i.abq = and i32 %i.abi, %i.abp
  %i.abr = xor i32 %i.abq, %i.yi
  %i.abs = getelementptr inbounds nuw i8, ptr %.1896912, i64 48
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !4
  %i.abu = tail call i32 @llvm.fshl.i32(i32 %i.zg, i32 %i.zg, i32 15)
  %i.abv = tail call i32 @llvm.fshl.i32(i32 %i.zg, i32 %i.zg, i32 13)
  %i.abw = xor i32 %i.abu, %i.abv
  %i.abx = lshr i32 %i.zg, 10
  %i.aby = xor i32 %i.abw, %i.abx
  %i.abz = tail call i32 @llvm.fshl.i32(i32 %i.iz, i32 %i.iz, i32 25)
  %i.aca = tail call i32 @llvm.fshl.i32(i32 %i.iz, i32 %i.iz, i32 14)
  %i.acb = xor i32 %i.abz, %i.aca
  %i.acc = lshr i32 %i.iz, 3
  %i.acd = xor i32 %i.acb, %i.acc
  %i.ace = add i32 %i.acd, %i.jb
  %i.acf = add i32 %i.ace, %i.rt
  %i.acg = add i32 %i.acf, %i.aby                 ; 8 uses
  store i32 %i.acg, ptr %i.x, align 4, !tbaa !4
  %i.ach = add i32 %i.acg, %i.abt
  %i.aci = add i32 %i.ach, %i.wv
  %i.acj = add i32 %i.aci, %i.abr
  %i.ack = add i32 %i.acj, %i.abo                 ; 2 uses
  %i.acl = tail call i32 @llvm.fshl.i32(i32 %i.abj, i32 %i.abj, i32 30)
  %i.acm = tail call i32 @llvm.fshl.i32(i32 %i.abj, i32 %i.abj, i32 19)
  %i.acn = xor i32 %i.acl, %i.acm
  %i.aco = tail call i32 @llvm.fshl.i32(i32 %i.abj, i32 %i.abj, i32 10)
  %i.acp = xor i32 %i.acn, %i.aco
  %i.acq = and i32 %i.abj, %i.zw
  %i.acr = xor i32 %i.abj, %i.zw
  %i.acs = and i32 %i.acr, %i.yj
  %i.act = xor i32 %i.acs, %i.acq
  %i.acu = add i32 %i.acp, %i.act
  %i.acv = xor i32 %i.abi, %i.zv
  %i.acw = getelementptr inbounds nuw i8, ptr %.1896912, i64 52
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !4
  %i.acy = tail call i32 @llvm.fshl.i32(i32 %i.aat, i32 %i.aat, i32 15)
  %i.acz = tail call i32 @llvm.fshl.i32(i32 %i.aat, i32 %i.aat, i32 13)
  %i.ada = xor i32 %i.acy, %i.acz
  %i.adb = lshr i32 %i.aat, 10
  %i.adc = xor i32 %i.ada, %i.adb
  %i.add = tail call i32 @llvm.fshl.i32(i32 %i.jk, i32 %i.jk, i32 25)
  %i.ade = tail call i32 @llvm.fshl.i32(i32 %i.jk, i32 %i.jk, i32 14)
  %i.adf = xor i32 %i.add, %i.ade
  %i.adg = lshr i32 %i.jk, 3
  %i.adh = xor i32 %i.adf, %i.adg
  %i.adi = add i32 %i.iz, %i.adh
  %i.adj = add i32 %i.adi, %i.tg
  %i.adk = add i32 %i.adj, %i.adc                 ; 8 uses
  store i32 %i.adk, ptr %i.z, align 4, !tbaa !4
  %i.adl = add i32 %i.adk, %i.acx
  %i.adm = add i32 %i.adl, %i.yi
  %i.adn = getelementptr inbounds nuw i8, ptr %.1896912, i64 56
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !4
  %i.adp = tail call i32 @llvm.fshl.i32(i32 %i.acg, i32 %i.acg, i32 15)
  %i.adq = tail call i32 @llvm.fshl.i32(i32 %i.acg, i32 %i.acg, i32 13)
  %i.adr = xor i32 %i.adp, %i.adq
  %i.ads = lshr i32 %i.acg, 10
  %i.adt = xor i32 %i.adr, %i.ads
  %i.adu = tail call i32 @llvm.fshl.i32(i32 %i.jg, i32 %i.jg, i32 25)
  %i.adv = tail call i32 @llvm.fshl.i32(i32 %i.jg, i32 %i.jg, i32 14)
  %i.adw = xor i32 %i.adu, %i.adv
  %i.adx = lshr i32 %i.jg, 3
  %i.ady = xor i32 %i.adw, %i.adx
  %i.adz = add i32 %i.ady, %i.jk
  %i.aea = add i32 %i.adz, %i.ut
  %i.aeb = add i32 %i.aea, %i.adt                 ; 3 uses
  store i32 %i.aeb, ptr %i.p, align 4, !tbaa !4
  %i.aec = add i32 %i.aeb, %i.ado
  %i.aed = add i32 %i.aec, %i.zv
  %i.aee = getelementptr inbounds nuw i8, ptr %.1896912, i64 60
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !4
  %i.aeg = tail call i32 @llvm.fshl.i32(i32 %i.adk, i32 %i.adk, i32 15)
  %i.aeh = tail call i32 @llvm.fshl.i32(i32 %i.adk, i32 %i.adk, i32 13)
  %i.aei = xor i32 %i.aeg, %i.aeh
  %i.aej = lshr i32 %i.adk, 10
  %i.aek = xor i32 %i.aei, %i.aej
  %i.ael = tail call i32 @llvm.fshl.i32(i32 %i.kg, i32 %i.kg, i32 25)
  %i.aem = tail call i32 @llvm.fshl.i32(i32 %i.kg, i32 %i.kg, i32 14)
  %i.aen = xor i32 %i.ael, %i.aem
  %i.aeo = lshr i32 %i.kg, 3
  %i.aep = xor i32 %i.aen, %i.aeo
  %i.aeq = add i32 %i.aep, %i.jg
  %i.aer = add i32 %i.aeq, %i.wg
  %i.aes = add i32 %i.aer, %i.aek                 ; 3 uses
  store i32 %i.aes, ptr %i.s, align 4, !tbaa !4
  %i.aet = add i32 %i.aes, %i.aef
  %i.aeu = add i32 %i.aet, %i.abi
  %i.aev = add i32 %i.ack, %i.ww                  ; 12 uses
  %i.aew = tail call i32 @llvm.fshl.i32(i32 %i.aev, i32 %i.aev, i32 26)
  %i.aex = tail call i32 @llvm.fshl.i32(i32 %i.aev, i32 %i.aev, i32 21)
  %i.aey = xor i32 %i.aew, %i.aex
  %i.aez = tail call i32 @llvm.fshl.i32(i32 %i.aev, i32 %i.aev, i32 7)
  %i.afa = xor i32 %i.aey, %i.aez
  %i.afb = and i32 %i.aev, %i.acv
  %i.afc = xor i32 %i.afb, %i.zv
  %i.afd = add i32 %i.adm, %i.afc
  %i.afe = add i32 %i.afd, %i.afa                 ; 2 uses
  %i.aff = add i32 %i.afe, %i.yj                  ; 10 uses
  %i.afg = tail call i32 @llvm.fshl.i32(i32 %i.aff, i32 %i.aff, i32 26)
  %i.afh = tail call i32 @llvm.fshl.i32(i32 %i.aff, i32 %i.aff, i32 21)
  %i.afi = xor i32 %i.afg, %i.afh
  %i.afj = tail call i32 @llvm.fshl.i32(i32 %i.aff, i32 %i.aff, i32 7)
  %i.afk = xor i32 %i.afi, %i.afj
  %i.afl = xor i32 %i.aev, %i.abi
  %i.afm = and i32 %i.aff, %i.afl
  %i.afn = xor i32 %i.afm, %i.abi
  %i.afo = add i32 %i.aed, %i.afn
  %i.afp = add i32 %i.afo, %i.afk                 ; 2 uses
  %i.afq = add i32 %i.afp, %i.zw                  ; 9 uses
  %i.afr = tail call i32 @llvm.fshl.i32(i32 %i.afq, i32 %i.afq, i32 26)
  %i.afs = tail call i32 @llvm.fshl.i32(i32 %i.afq, i32 %i.afq, i32 21)
  %i.aft = xor i32 %i.afr, %i.afs
  %i.afu = tail call i32 @llvm.fshl.i32(i32 %i.afq, i32 %i.afq, i32 7)
  %i.afv = xor i32 %i.aft, %i.afu
  %i.afw = xor i32 %i.aff, %i.aev
  %i.afx = and i32 %i.afq, %i.afw
  %i.afy = xor i32 %i.afx, %i.aev
  %i.afz = add i32 %i.aeu, %i.afy
  %i.aga = add i32 %i.afz, %i.afv                 ; 2 uses
  %i.agb = add i32 %i.aga, %i.abj                 ; 2 uses
  %i.agc = add i32 %i.acu, %i.ack                 ; 13 uses
  %i.agd = tail call i32 @llvm.fshl.i32(i32 %i.agc, i32 %i.agc, i32 30)
  %i.age = tail call i32 @llvm.fshl.i32(i32 %i.agc, i32 %i.agc, i32 19)
  %i.agf = xor i32 %i.agd, %i.age
  %i.agg = tail call i32 @llvm.fshl.i32(i32 %i.agc, i32 %i.agc, i32 10)
  %i.agh = xor i32 %i.agf, %i.agg
  %i.agi = and i32 %i.agc, %i.abj
  %i.agj = xor i32 %i.agc, %i.abj
  %i.agk = and i32 %i.agj, %i.zw
  %i.agl = xor i32 %i.agk, %i.agi
  %i.agm = add i32 %i.agh, %i.agl
  %i.agn = add i32 %i.agm, %i.afe                 ; 12 uses
  %i.ago = tail call i32 @llvm.fshl.i32(i32 %i.agn, i32 %i.agn, i32 30)
  %i.agp = tail call i32 @llvm.fshl.i32(i32 %i.agn, i32 %i.agn, i32 19)
  %i.agq = xor i32 %i.ago, %i.agp
  %i.agr = tail call i32 @llvm.fshl.i32(i32 %i.agn, i32 %i.agn, i32 10)
  %i.ags = xor i32 %i.agq, %i.agr
  %i.agt = and i32 %i.agn, %i.agc
  %i.agu = xor i32 %i.agn, %i.agc
  %i.agv = and i32 %i.agu, %i.abj
  %i.agw = xor i32 %i.agv, %i.agt
  %i.agx = add i32 %i.ags, %i.agw
  %i.agy = add i32 %i.agx, %i.afp                 ; 10 uses
  %i.agz = tail call i32 @llvm.fshl.i32(i32 %i.agy, i32 %i.agy, i32 30)
  %i.aha = tail call i32 @llvm.fshl.i32(i32 %i.agy, i32 %i.agy, i32 19)
  %i.ahb = xor i32 %i.agz, %i.aha
  %i.ahc = tail call i32 @llvm.fshl.i32(i32 %i.agy, i32 %i.agy, i32 10)
  %i.ahd = xor i32 %i.ahb, %i.ahc
  %i.ahe = and i32 %i.agy, %i.agn
  %i.ahf = xor i32 %i.agy, %i.agn
  %i.ahg = and i32 %i.ahf, %i.agc
  %i.ahh = xor i32 %i.ahg, %i.ahe
  %i.ahi = add i32 %i.ahd, %i.ahh
  %i.ahj = add i32 %i.ahi, %i.aga                 ; 2 uses
  %narrow = add nuw nsw i8 %.1894913, 16
  %i.ahk = getelementptr inbounds nuw i8, ptr %.1896912, i64 64
  %i.ahl = icmp samesign ult i8 %.1894913, 48
  br i1 %i.ahl, label %bb.c, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.c
  %i.ahm = load <4 x i32>, ptr %0, align 4, !tbaa !4
  %i.ahn = insertelement <4 x i32> poison, i32 %i.ahj, i64 0
  %i.aho = insertelement <4 x i32> %i.ahn, i32 %i.agy, i64 1
  %i.ahp = insertelement <4 x i32> %i.aho, i32 %i.agn, i64 2
  %i.ahq = insertelement <4 x i32> %i.ahp, i32 %i.agc, i64 3
  %i.ahr = add <4 x i32> %i.ahm, %i.ahq
  store <4 x i32> %i.ahr, ptr %0, align 4, !tbaa !4
  %i.ahs = load <4 x i32>, ptr %i.h, align 4, !tbaa !4
  %i.aht = insertelement <4 x i32> poison, i32 %i.agb, i64 0
  %i.ahu = insertelement <4 x i32> %i.aht, i32 %i.afq, i64 1
  %i.ahv = insertelement <4 x i32> %i.ahu, i32 %i.aff, i64 2
  %i.ahw = insertelement <4 x i32> %i.ahv, i32 %i.aev, i64 3
  %i.ahx = add <4 x i32> %i.ahs, %i.ahw
  store <4 x i32> %i.ahx, ptr %i.h, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sha256_digest(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 3
  %2 = load i8, ptr %.shift, align 1, !tbaa !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %2, ptr %1, align 1, !tbaa !14
  %.shift16 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %3 = load i16, ptr %.shift16, align 2, !tbaa !4
  %i.b = trunc i16 %3 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.b, ptr %i.a, align 1, !tbaa !14
  %i.d = load i32, ptr %0, align 4, !tbaa !4
  %i.e = lshr i32 %i.d, 8
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.f, ptr %i.c, align 1, !tbaa !14
  %i.h = load i32, ptr %0, align 4, !tbaa !4
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.i, ptr %i.g, align 1, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.shift.1 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %4 = load i8, ptr %.shift.1, align 1, !tbaa !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %4, ptr %i.j, align 1, !tbaa !14
  %.shift16.1 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %5 = load i16, ptr %.shift16.1, align 2, !tbaa !4
  %i.m = trunc i16 %5 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.m, ptr %i.l, align 1, !tbaa !14
  %i.o = load i32, ptr %i.k, align 4, !tbaa !4
  %i.p = lshr i32 %i.o, 8
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.q, ptr %i.n, align 1, !tbaa !14
  %i.s = load i32, ptr %i.k, align 4, !tbaa !4
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.t, ptr %i.r, align 1, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.shift.2 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %6 = load i8, ptr %.shift.2, align 1, !tbaa !4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %6, ptr %i.u, align 1, !tbaa !14
  %.shift16.2 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %7 = load i16, ptr %.shift16.2, align 2, !tbaa !4
  %i.x = trunc i16 %7 to i8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.x, ptr %i.w, align 1, !tbaa !14
  %i.z = load i32, ptr %i.v, align 4, !tbaa !4
  %i.aa = lshr i32 %i.z, 8
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.ab, ptr %i.y, align 1, !tbaa !14
  %i.ad = load i32, ptr %i.v, align 4, !tbaa !4
  %i.ae = trunc i32 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.shift.3 = getelementptr inbounds nuw i8, ptr %0, i64 15
  %8 = load i8, ptr %.shift.3, align 1, !tbaa !4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %8, ptr %i.af, align 1, !tbaa !14
  %.shift16.3 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %9 = load i16, ptr %.shift16.3, align 2, !tbaa !4
  %i.ai = trunc i16 %9 to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !14
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.al = lshr i32 %i.ak, 8
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !14
  %i.ao = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.shift.4 = getelementptr inbounds nuw i8, ptr %0, i64 19
  %10 = load i8, ptr %.shift.4, align 1, !tbaa !4
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %10, ptr %i.aq, align 1, !tbaa !14
  %.shift16.4 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %11 = load i16, ptr %.shift16.4, align 2, !tbaa !4
  %i.at = trunc i16 %11 to i8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.at, ptr %i.as, align 1, !tbaa !14
  %i.av = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.aw = lshr i32 %i.av, 8
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.ax, ptr %i.au, align 1, !tbaa !14
  %i.az = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.shift.5 = getelementptr inbounds nuw i8, ptr %0, i64 23
  %12 = load i8, ptr %.shift.5, align 1, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 %12, ptr %i.bb, align 1, !tbaa !14
  %.shift16.5 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %13 = load i16, ptr %.shift16.5, align 2, !tbaa !4
  %i.be = trunc i16 %13 to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !14
  %i.bg = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.bh = lshr i32 %i.bg, 8
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !14
  %i.bk = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.shift.6 = getelementptr inbounds nuw i8, ptr %0, i64 27
  %14 = load i8, ptr %.shift.6, align 1, !tbaa !4
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %14, ptr %i.bm, align 1, !tbaa !14
  %.shift16.6 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %15 = load i16, ptr %.shift16.6, align 2, !tbaa !4
  %i.bp = trunc i16 %15 to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !14
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bs = lshr i32 %i.br, 8
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %i.bt, ptr %i.bq, align 1, !tbaa !14
  %i.bv = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.shift.7 = getelementptr inbounds nuw i8, ptr %0, i64 31
  %16 = load i8, ptr %.shift.7, align 1, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 %16, ptr %i.bx, align 1, !tbaa !14
  %.shift16.7 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %17 = load i16, ptr %.shift16.7, align 2, !tbaa !4
  %i.ca = trunc i16 %17 to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !14
  %i.cc = load i32, ptr %i.by, align 4, !tbaa !4
  %i.cd = lshr i32 %i.cc, 8
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 %i.ce, ptr %i.cb, align 1, !tbaa !14
  %i.cg = load i32, ptr %i.by, align 4, !tbaa !4
  %i.ch = trunc i32 %i.cg to i8
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
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
!8 = !{!9, !5, i64 36}
!9 = !{!"sha256_ctx", !6, i64 0, !5, i64 32, !5, i64 36, !6, i64 40, !5, i64 104}
!10 = !{!9, !5, i64 32}
!11 = !{!9, !5, i64 104}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!6, !6, i64 0}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
end_hunk_0
