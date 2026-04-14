inline.NumInlined: 243
inline.NumDeleted: 22
begin_hunk_0_@CreateBackwardReferencesDH5:bb.a
  %i.aut = xor i32 %notmask.i, -1
  %i.auu = zext nneg i32 %i.aut to i64
  %i.auv = and i64 %i.auo, %i.auu
  %i.auw = lshr i64 %i.auo, %i.aus                ; 2 uses
  %i.aux = and i64 %i.auw, 1
  %i.auy = or disjoint i64 %i.aux, 2
  %i.auz = shl i64 %i.auy, %i.aus
  %i.ava = sub nsw i64 %i.aus, %i.auk             ; 2 uses
  %i.avb = shl nsw i64 %i.ava, 10
  %i.avc = shl nsw i64 %i.ava, 1
  %12 = or i64 %i.auw, 65534
  %13 = add i64 %i.avc, %12
  %i.avd = shl i64 %13, %i.auk
  %i.ave = add nuw nsw i64 %i.auv, %i.auh
  %i.avf = add i64 %i.ave, %i.avd
end_hunk_0
begin_hunk_1_@CreateBackwardReferencesDH6:bb.a
  %i.aux = xor i32 %notmask.i, -1
  %i.auy = zext nneg i32 %i.aux to i64
  %i.auz = and i64 %i.aus, %i.auy
  %i.ava = lshr i64 %i.aus, %i.auw                ; 2 uses
  %i.avb = and i64 %i.ava, 1
  %i.avc = or disjoint i64 %i.avb, 2
  %i.avd = shl i64 %i.avc, %i.auw
  %i.ave = sub nsw i64 %i.auw, %i.auo             ; 2 uses
  %i.avf = shl nsw i64 %i.ave, 10
  %i.avg = shl nsw i64 %i.ave, 1
  %12 = or i64 %i.ava, 65534
  %13 = add i64 %i.avg, %12
  %i.avh = shl i64 %13, %i.auo
  %i.avi = add nuw nsw i64 %i.auz, %i.aul
  %i.avj = add i64 %i.avi, %i.avh
end_hunk_1
begin_hunk_2_@CreateBackwardReferencesDH58:bb.a
  %i.azi = xor i32 %notmask.i, -1
  %i.azj = zext nneg i32 %i.azi to i64
  %i.azk = and i64 %i.azd, %i.azj
  %i.azl = lshr i64 %i.azd, %i.azh                ; 2 uses
  %i.azm = and i64 %i.azl, 1
  %i.azn = or disjoint i64 %i.azm, 2
  %i.azo = shl i64 %i.azn, %i.azh
  %i.azp = sub nsw i64 %i.azh, %i.ayz             ; 2 uses
  %i.azq = shl nsw i64 %i.azp, 10
  %i.azr = shl nsw i64 %i.azp, 1
  %12 = or i64 %i.azl, 65534
  %13 = add i64 %i.azr, %12
  %i.azs = shl i64 %13, %i.ayz
  %i.azt = add nuw nsw i64 %i.azk, %i.ayw
  %i.azu = add i64 %i.azt, %i.azs
end_hunk_2
begin_hunk_3_@CreateBackwardReferencesDH68:bb.a
  %i.azn = xor i32 %notmask.i, -1
  %i.azo = zext nneg i32 %i.azn to i64
  %i.azp = and i64 %i.azi, %i.azo
  %i.azq = lshr i64 %i.azi, %i.azm                ; 2 uses
  %i.azr = and i64 %i.azq, 1
  %i.azs = or disjoint i64 %i.azr, 2
  %i.azt = shl i64 %i.azs, %i.azm
  %i.azu = sub nsw i64 %i.azm, %i.aze             ; 2 uses
  %i.azv = shl nsw i64 %i.azu, 10
  %i.azw = shl nsw i64 %i.azu, 1
  %12 = or i64 %i.azq, 65534
  %13 = add i64 %i.azw, %12
  %i.azx = shl i64 %13, %i.aze
  %i.azy = add nuw nsw i64 %i.azp, %i.azb
  %i.azz = add i64 %i.azy, %i.azx
end_hunk_3
begin_hunk_4_@CreateBackwardReferencesDH40:bb.a
  %i.azw = xor i32 %notmask.i, -1
  %i.azx = zext nneg i32 %i.azw to i64
  %i.azy = and i64 %i.azr, %i.azx
  %i.azz = lshr i64 %i.azr, %i.azv                ; 2 uses
  %i.baa = and i64 %i.azz, 1
  %i.bab = or disjoint i64 %i.baa, 2
  %i.bac = shl i64 %i.bab, %i.azv
  %i.bad = sub nsw i64 %i.azv, %i.azn             ; 2 uses
  %i.bae = shl nsw i64 %i.bad, 10
  %i.baf = shl nsw i64 %i.bad, 1
  %12 = or i64 %i.azz, 65534
  %13 = add i64 %i.baf, %12
  %i.bag = shl i64 %13, %i.azn
  %i.bah = add nuw nsw i64 %i.azy, %i.azk
  %i.bai = add i64 %i.bah, %i.bag
end_hunk_4
begin_hunk_5_@CreateBackwardReferencesDH41:bb.a
  %i.ath = xor i32 %notmask.i, -1
  %i.ati = zext nneg i32 %i.ath to i64
  %i.atj = and i64 %i.atc, %i.ati
  %i.atk = lshr i64 %i.atc, %i.atg                ; 2 uses
  %i.atl = and i64 %i.atk, 1
  %i.atm = or disjoint i64 %i.atl, 2
  %i.atn = shl i64 %i.atm, %i.atg
  %i.ato = sub nsw i64 %i.atg, %i.asy             ; 2 uses
  %i.atp = shl nsw i64 %i.ato, 10
  %i.atq = shl nsw i64 %i.ato, 1
  %12 = or i64 %i.atk, 65534
  %13 = add i64 %i.atq, %12
  %i.atr = shl i64 %13, %i.asy
  %i.ats = add nuw nsw i64 %i.atj, %i.asv
  %i.att = add i64 %i.ats, %i.atr
end_hunk_5
begin_hunk_6_@CreateBackwardReferencesDH42:bb.a
  %i.aua = xor i32 %notmask.i, -1
  %i.aub = zext nneg i32 %i.aua to i64
  %i.auc = and i64 %i.atv, %i.aub
  %i.aud = lshr i64 %i.atv, %i.atz                ; 2 uses
  %i.aue = and i64 %i.aud, 1
  %i.auf = or disjoint i64 %i.aue, 2
  %i.aug = shl i64 %i.auf, %i.atz
  %i.auh = sub nsw i64 %i.atz, %i.atr             ; 2 uses
  %i.aui = shl nsw i64 %i.auh, 10
  %i.auj = shl nsw i64 %i.auh, 1
  %12 = or i64 %i.aud, 65534
  %13 = add i64 %i.auj, %12
  %i.auk = shl i64 %13, %i.atr
  %i.aul = add nuw nsw i64 %i.auc, %i.ato
  %i.aum = add i64 %i.aul, %i.auk
end_hunk_6
begin_hunk_7_@CreateBackwardReferencesDH55:bb.a
  %i.arb = xor i32 %notmask.i, -1
  %i.arc = zext nneg i32 %i.arb to i64
  %i.ard = and i64 %i.aqw, %i.arc
  %i.are = lshr i64 %i.aqw, %i.ara                ; 2 uses
  %i.arf = and i64 %i.are, 1
  %i.arg = or disjoint i64 %i.arf, 2
  %i.arh = shl i64 %i.arg, %i.ara
  %i.ari = sub nsw i64 %i.ara, %i.aqs             ; 2 uses
  %i.arj = shl nsw i64 %i.ari, 10
  %i.ark = shl nsw i64 %i.ari, 1
  %11 = or i64 %i.are, 65534
  %12 = add i64 %i.ark, %11
  %i.arl = shl i64 %12, %i.aqs
  %i.arm = add nuw nsw i64 %i.ard, %i.aqp
  %i.arn = add i64 %i.arm, %i.arl
end_hunk_7
begin_hunk_8_@CreateBackwardReferencesDH65:bb.a
  %i.azw = xor i32 %notmask.i, -1
  %i.azx = zext nneg i32 %i.azw to i64
  %i.azy = and i64 %i.azr, %i.azx
  %i.azz = lshr i64 %i.azr, %i.azv                ; 2 uses
  %i.baa = and i64 %i.azz, 1
  %i.bab = or disjoint i64 %i.baa, 2
  %i.bac = shl i64 %i.bab, %i.azv
  %i.bad = sub nsw i64 %i.azv, %i.azn             ; 2 uses
  %i.bae = shl nsw i64 %i.bad, 10
  %i.baf = shl nsw i64 %i.bad, 1
  %12 = or i64 %i.azz, 65534
  %13 = add i64 %i.baf, %12
  %i.bag = shl i64 %13, %i.azn
  %i.bah = add nuw nsw i64 %i.azy, %i.azk
  %i.bai = add i64 %i.bah, %i.bag
end_hunk_8
begin_hunk_9_@CreateBackwardReferencesNH2:bb.a
  %i.rw = xor i32 %notmask.i, -1
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = and i64 %i.rr, %i.rx
  %i.rz = lshr i64 %i.rr, %i.rv                   ; 2 uses
  %i.sa = and i64 %i.rz, 1
  %i.sb = or disjoint i64 %i.sa, 2
  %i.sc = shl i64 %i.sb, %i.rv
  %i.sd = sub nsw i64 %i.rv, %i.rn                ; 2 uses
  %i.se = shl nsw i64 %i.sd, 10
  %i.sf = shl nsw i64 %i.sd, 1
  %12 = or i64 %i.rz, 65534
  %13 = add i64 %i.sf, %12
  %i.sg = shl i64 %13, %i.rn
  %i.sh = add nuw nsw i64 %i.ry, %i.rk
  %i.si = add i64 %i.sh, %i.sg
end_hunk_9
begin_hunk_10_@CreateBackwardReferencesNH3:bb.a
  %i.nb = xor i32 %notmask.i, -1
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = and i64 %i.mw, %i.nc
  %i.ne = lshr i64 %i.mw, %i.na                   ; 2 uses
  %i.nf = and i64 %i.ne, 1
  %i.ng = or disjoint i64 %i.nf, 2
  %i.nh = shl i64 %i.ng, %i.na
  %i.ni = sub nsw i64 %i.na, %i.ms                ; 2 uses
  %i.nj = shl nsw i64 %i.ni, 10
  %i.nk = shl nsw i64 %i.ni, 1
  %11 = or i64 %i.ne, 65534
  %12 = add i64 %i.nk, %11
  %i.nl = shl i64 %12, %i.ms
  %i.nm = add nuw nsw i64 %i.nd, %i.mp
  %i.nn = add i64 %i.nm, %i.nl
end_hunk_10
begin_hunk_11_@CreateBackwardReferencesNH4:bb.a
  %i.acs = xor i32 %notmask.i, -1
  %i.act = zext nneg i32 %i.acs to i64
  %i.acu = and i64 %i.acn, %i.act
  %i.acv = lshr i64 %i.acn, %i.acr                ; 2 uses
  %i.acw = and i64 %i.acv, 1
  %i.acx = or disjoint i64 %i.acw, 2
  %i.acy = shl i64 %i.acx, %i.acr
  %i.acz = sub nsw i64 %i.acr, %i.acj             ; 2 uses
  %i.ada = shl nsw i64 %i.acz, 10
  %i.adb = shl nsw i64 %i.acz, 1
  %12 = or i64 %i.acv, 65534
  %13 = add i64 %i.adb, %12
  %i.adc = shl i64 %13, %i.acj
  %i.add = add nuw nsw i64 %i.acu, %i.acg
  %i.ade = add i64 %i.add, %i.adc
end_hunk_11
begin_hunk_12_@CreateBackwardReferencesNH5:bb.a
  %i.acr = xor i32 %notmask.i, -1
  %i.acs = zext nneg i32 %i.acr to i64
  %i.act = and i64 %i.acm, %i.acs
  %i.acu = lshr i64 %i.acm, %i.acq                ; 2 uses
  %i.acv = and i64 %i.acu, 1
  %i.acw = or disjoint i64 %i.acv, 2
  %i.acx = shl i64 %i.acw, %i.acq
  %i.acy = sub nsw i64 %i.acq, %i.aci             ; 2 uses
  %i.acz = shl nsw i64 %i.acy, 10
  %i.ada = shl nsw i64 %i.acy, 1
  %12 = or i64 %i.acu, 65534
  %13 = add i64 %i.ada, %12
  %i.adb = shl i64 %13, %i.aci
  %i.adc = add nuw nsw i64 %i.act, %i.acf
  %i.add = add i64 %i.adc, %i.adb
end_hunk_12
begin_hunk_13_@CreateBackwardReferencesNH6:bb.a
  %i.acv = xor i32 %notmask.i, -1
  %i.acw = zext nneg i32 %i.acv to i64
  %i.acx = and i64 %i.acq, %i.acw
  %i.acy = lshr i64 %i.acq, %i.acu                ; 2 uses
  %i.acz = and i64 %i.acy, 1
  %i.ada = or disjoint i64 %i.acz, 2
  %i.adb = shl i64 %i.ada, %i.acu
  %i.adc = sub nsw i64 %i.acu, %i.acm             ; 2 uses
  %i.add = shl nsw i64 %i.adc, 10
  %i.ade = shl nsw i64 %i.adc, 1
  %12 = or i64 %i.acy, 65534
  %13 = add i64 %i.ade, %12
  %i.adf = shl i64 %13, %i.acm
  %i.adg = add nuw nsw i64 %i.acx, %i.acj
  %i.adh = add i64 %i.adg, %i.adf
end_hunk_13
begin_hunk_14_@CreateBackwardReferencesNH40:bb.a
  %i.ahr = xor i32 %notmask.i, -1
  %i.ahs = zext nneg i32 %i.ahr to i64
  %i.aht = and i64 %i.ahm, %i.ahs
  %i.ahu = lshr i64 %i.ahm, %i.ahq                ; 2 uses
  %i.ahv = and i64 %i.ahu, 1
  %i.ahw = or disjoint i64 %i.ahv, 2
  %i.ahx = shl i64 %i.ahw, %i.ahq
  %i.ahy = sub nsw i64 %i.ahq, %i.ahi             ; 2 uses
  %i.ahz = shl nsw i64 %i.ahy, 10
  %i.aia = shl nsw i64 %i.ahy, 1
  %12 = or i64 %i.ahu, 65534
  %13 = add i64 %i.aia, %12
  %i.aib = shl i64 %13, %i.ahi
  %i.aic = add nuw nsw i64 %i.aht, %i.ahf
  %i.aid = add i64 %i.aic, %i.aib
end_hunk_14
begin_hunk_15_@CreateBackwardReferencesNH41:bb.a
  %i.abc = xor i32 %notmask.i, -1
  %i.abd = zext nneg i32 %i.abc to i64
  %i.abe = and i64 %i.aax, %i.abd
  %i.abf = lshr i64 %i.aax, %i.abb                ; 2 uses
  %i.abg = and i64 %i.abf, 1
  %i.abh = or disjoint i64 %i.abg, 2
  %i.abi = shl i64 %i.abh, %i.abb
  %i.abj = sub nsw i64 %i.abb, %i.aat             ; 2 uses
  %i.abk = shl nsw i64 %i.abj, 10
  %i.abl = shl nsw i64 %i.abj, 1
  %12 = or i64 %i.abf, 65534
  %13 = add i64 %i.abl, %12
  %i.abm = shl i64 %13, %i.aat
  %i.abn = add nuw nsw i64 %i.abe, %i.aaq
  %i.abo = add i64 %i.abn, %i.abm
end_hunk_15
begin_hunk_16_@CreateBackwardReferencesNH42:bb.a
  %i.abv = xor i32 %notmask.i, -1
  %i.abw = zext nneg i32 %i.abv to i64
  %i.abx = and i64 %i.abq, %i.abw
  %i.aby = lshr i64 %i.abq, %i.abu                ; 2 uses
  %i.abz = and i64 %i.aby, 1
  %i.aca = or disjoint i64 %i.abz, 2
  %i.acb = shl i64 %i.aca, %i.abu
  %i.acc = sub nsw i64 %i.abu, %i.abm             ; 2 uses
  %i.acd = shl nsw i64 %i.acc, 10
  %i.ace = shl nsw i64 %i.acc, 1
  %12 = or i64 %i.aby, 65534
  %13 = add i64 %i.ace, %12
  %i.acf = shl i64 %13, %i.abm
  %i.acg = add nuw nsw i64 %i.abx, %i.abj
  %i.ach = add i64 %i.acg, %i.acf
end_hunk_16
begin_hunk_17_@CreateBackwardReferencesNH54:bb.a
  %i.tv = xor i32 %notmask.i, -1
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = and i64 %i.tq, %i.tw
  %i.ty = lshr i64 %i.tq, %i.tu                   ; 2 uses
  %i.tz = and i64 %i.ty, 1
  %i.ua = or disjoint i64 %i.tz, 2
  %i.ub = shl i64 %i.ua, %i.tu
  %i.uc = sub nsw i64 %i.tu, %i.tm                ; 2 uses
  %i.ud = shl nsw i64 %i.uc, 10
  %i.ue = shl nsw i64 %i.uc, 1
  %11 = or i64 %i.ty, 65534
  %12 = add i64 %i.ue, %11
  %i.uf = shl i64 %12, %i.tm
  %i.ug = add nuw nsw i64 %i.tx, %i.tj
  %i.uh = add i64 %i.ug, %i.uf
end_hunk_17
begin_hunk_18_@CreateBackwardReferencesNH58:bb.a
  %i.ahd = xor i32 %notmask.i, -1
  %i.ahe = zext nneg i32 %i.ahd to i64
  %i.ahf = and i64 %i.agy, %i.ahe
  %i.ahg = lshr i64 %i.agy, %i.ahc                ; 2 uses
  %i.ahh = and i64 %i.ahg, 1
  %i.ahi = or disjoint i64 %i.ahh, 2
  %i.ahj = shl i64 %i.ahi, %i.ahc
  %i.ahk = sub nsw i64 %i.ahc, %i.agu             ; 2 uses
  %i.ahl = shl nsw i64 %i.ahk, 10
  %i.ahm = shl nsw i64 %i.ahk, 1
  %12 = or i64 %i.ahg, 65534
  %13 = add i64 %i.ahm, %12
  %i.ahn = shl i64 %13, %i.agu
  %i.aho = add nuw nsw i64 %i.ahf, %i.agr
  %i.ahp = add i64 %i.aho, %i.ahn
end_hunk_18
begin_hunk_19_@CreateBackwardReferencesNH68:bb.a
  %i.ahi = xor i32 %notmask.i, -1
  %i.ahj = zext nneg i32 %i.ahi to i64
  %i.ahk = and i64 %i.ahd, %i.ahj
  %i.ahl = lshr i64 %i.ahd, %i.ahh                ; 2 uses
  %i.ahm = and i64 %i.ahl, 1
  %i.ahn = or disjoint i64 %i.ahm, 2
  %i.aho = shl i64 %i.ahn, %i.ahh
  %i.ahp = sub nsw i64 %i.ahh, %i.agz             ; 2 uses
  %i.ahq = shl nsw i64 %i.ahp, 10
  %i.ahr = shl nsw i64 %i.ahp, 1
  %12 = or i64 %i.ahl, 65534
  %13 = add i64 %i.ahr, %12
  %i.ahs = shl i64 %13, %i.agz
  %i.aht = add nuw nsw i64 %i.ahk, %i.agw
  %i.ahu = add i64 %i.aht, %i.ahs
end_hunk_19
begin_hunk_20_@CreateBackwardReferencesNH35:bb.a
  %i.sc = xor i32 %notmask.i, -1
  %i.sd = zext nneg i32 %i.sc to i64
  %i.se = and i64 %i.rx, %i.sd
  %i.sf = lshr i64 %i.rx, %i.sb                   ; 2 uses
  %i.sg = and i64 %i.sf, 1
  %i.sh = or disjoint i64 %i.sg, 2
  %i.si = shl i64 %i.sh, %i.sb
  %i.sj = sub nsw i64 %i.sb, %i.rt                ; 2 uses
  %i.sk = shl nsw i64 %i.sj, 10
  %i.sl = shl nsw i64 %i.sj, 1
  %11 = or i64 %i.sf, 65534
  %12 = add i64 %i.sl, %11
  %i.sm = shl i64 %12, %i.rt
  %i.sn = add nuw nsw i64 %i.se, %i.rq
  %i.so = add i64 %i.sn, %i.sm
end_hunk_20
begin_hunk_21_@CreateBackwardReferencesNH55:bb.a
  %i.yw = xor i32 %notmask.i, -1
  %i.yx = zext nneg i32 %i.yw to i64
  %i.yy = and i64 %i.yr, %i.yx
  %i.yz = lshr i64 %i.yr, %i.yv                   ; 2 uses
  %i.za = and i64 %i.yz, 1
  %i.zb = or disjoint i64 %i.za, 2
  %i.zc = shl i64 %i.zb, %i.yv
  %i.zd = sub nsw i64 %i.yv, %i.yn                ; 2 uses
  %i.ze = shl nsw i64 %i.zd, 10
  %i.zf = shl nsw i64 %i.zd, 1
  %11 = or i64 %i.yz, 65534
  %12 = add i64 %i.zf, %11
  %i.zg = shl i64 %12, %i.yn
  %i.zh = add nuw nsw i64 %i.yy, %i.yk
  %i.zi = add i64 %i.zh, %i.zg
end_hunk_21
begin_hunk_22_@CreateBackwardReferencesNH65:bb.a
  %i.aht = xor i32 %notmask.i, -1
  %i.ahu = zext nneg i32 %i.aht to i64
  %i.ahv = and i64 %i.aho, %i.ahu
  %i.ahw = lshr i64 %i.aho, %i.ahs                ; 2 uses
  %i.ahx = and i64 %i.ahw, 1
  %i.ahy = or disjoint i64 %i.ahx, 2
  %i.ahz = shl i64 %i.ahy, %i.ahs
  %i.aia = sub nsw i64 %i.ahs, %i.ahk             ; 2 uses
  %i.aib = shl nsw i64 %i.aia, 10
  %i.aic = shl nsw i64 %i.aia, 1
  %12 = or i64 %i.ahw, 65534
  %13 = add i64 %i.aic, %12
  %i.aid = shl i64 %13, %i.ahk
  %i.aie = add nuw nsw i64 %i.ahv, %i.ahh
  %i.aif = add i64 %i.aie, %i.aid
end_hunk_22
