inline.NumInlined: 56
inline.NumDeleted: 12
begin_hunk_0_@_ZN16OpenColorIO_v2_519applyTetrahedralAVXEPKfiS1_Pfi:bb.a
  %i.ox = fmul <8 x float> %i.ow, %i.op
  %i.oy = fmul <8 x float> %i.ow, %i.or
  %i.oz = fmul <8 x float> %i.ow, %i.ov
  %.sroa.0.16.vec.extract279.i87.i = extractelement <8 x i32> %i.nl, i64 4
  %i.pa = zext i32 %.sroa.0.16.vec.extract279.i87.i to i64
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pa
  %.sroa.0.0.vec.extract253.i88.i = extractelement <8 x i32> %i.nl, i64 0
  %i.pc = zext i32 %.sroa.0.0.vec.extract253.i88.i to i64
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pc
  %.val238.i89.i = load <4 x float>, ptr %i.pb, align 1, !tbaa !7, !noalias !13
  %.val239.i90.i = load <4 x float>, ptr %i.pd, align 1, !tbaa !7, !noalias !13
  %i.pe = shufflevector <4 x float> %.val239.i90.i, <4 x float> %.val238.i89.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.0.20.vec.extract285.i91.i = extractelement <8 x i32> %i.nl, i64 5
  %i.pf = zext i32 %.sroa.0.20.vec.extract285.i91.i to i64
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pf
  %.sroa.0.4.vec.extract261.i92.i = extractelement <8 x i32> %i.nl, i64 1
  %i.ph = zext i32 %.sroa.0.4.vec.extract261.i92.i to i64
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ph
  %.val236.i93.i = load <4 x float>, ptr %i.pg, align 1, !tbaa !7, !noalias !13
  %.val237.i94.i = load <4 x float>, ptr %i.pi, align 1, !tbaa !7, !noalias !13
  %i.pj = shufflevector <4 x float> %.val237.i94.i, <4 x float> %.val236.i93.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.0.24.vec.extract291.i95.i = extractelement <8 x i32> %i.nl, i64 6
  %i.pk = zext i32 %.sroa.0.24.vec.extract291.i95.i to i64
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pk
  %.sroa.0.8.vec.extract267.i96.i = extractelement <8 x i32> %i.nl, i64 2
  %i.pm = zext i32 %.sroa.0.8.vec.extract267.i96.i to i64
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pm
  %.val234.i97.i = load <4 x float>, ptr %i.pl, align 1, !tbaa !7, !noalias !13
  %.val235.i98.i = load <4 x float>, ptr %i.pn, align 1, !tbaa !7, !noalias !13
  %i.po = shufflevector <4 x float> %.val235.i98.i, <4 x float> %.val234.i97.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.0.28.vec.extract297.i99.i = extractelement <8 x i32> %i.nl, i64 7
  %i.pp = zext i32 %.sroa.0.28.vec.extract297.i99.i to i64
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pp
  %.sroa.0.12.vec.extract273.i100.i = extractelement <8 x i32> %i.nl, i64 3
  %i.pr = zext i32 %.sroa.0.12.vec.extract273.i100.i to i64
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pr
  %.val232.i101.i = load <4 x float>, ptr %i.pq, align 1, !tbaa !7, !noalias !13
  %.val233.i102.i = load <4 x float>, ptr %i.ps, align 1, !tbaa !7, !noalias !13
  %i.pt = shufflevector <4 x float> %.val233.i102.i, <4 x float> %.val232.i101.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.pu = shufflevector <8 x float> %i.pe, <8 x float> %i.pj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.pv = shufflevector <8 x float> %i.po, <8 x float> %i.pt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.pw = shufflevector <8 x float> %i.pe, <8 x float> %i.pj, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.px = shufflevector <8 x float> %i.po, <8 x float> %i.pt, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.py = bitcast <8 x float> %i.pu to <4 x double> ; 2 uses
  %i.pz = bitcast <8 x float> %i.pv to <4 x double> ; 2 uses
  %i.qa = shufflevector <4 x double> %i.py, <4 x double> %i.pz, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.qb = bitcast <4 x double> %i.qa to <8 x float>
  %i.qc = shufflevector <4 x double> %i.py, <4 x double> %i.pz, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.qd = bitcast <4 x double> %i.qc to <8 x float>
  %i.qe = bitcast <8 x float> %i.pw to <4 x double>
  %i.qf = bitcast <8 x float> %i.px to <4 x double>
  %i.qg = shufflevector <4 x double> %i.qe, <4 x double> %i.qf, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.qh = bitcast <4 x double> %i.qg to <8 x float>
  %i.qi = fsub <8 x float> %i.ni, %i.nj           ; 3 uses
  %i.qj = fmul <8 x float> %i.qi, %i.qb
  %i.qk = fadd <8 x float> %i.ox, %i.qj
  %i.ql = fmul <8 x float> %i.qi, %i.qd
  %i.qm = fadd <8 x float> %i.oy, %i.ql
  %i.qn = fmul <8 x float> %i.qi, %i.qh
  %i.qo = fadd <8 x float> %i.oz, %i.qn
  %.sroa.0.16.vec.extract277.i103.i = extractelement <8 x i32> %i.nm, i64 4
  %i.qp = zext i32 %.sroa.0.16.vec.extract277.i103.i to i64
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qp
  %.sroa.0.0.vec.extract255.i104.i = extractelement <8 x i32> %i.nm, i64 0
  %i.qr = zext i32 %.sroa.0.0.vec.extract255.i104.i to i64
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qr
  %.val230.i105.i = load <4 x float>, ptr %i.qq, align 1, !tbaa !7, !noalias !13
  %.val231.i106.i = load <4 x float>, ptr %i.qs, align 1, !tbaa !7, !noalias !13
  %i.qt = shufflevector <4 x float> %.val231.i106.i, <4 x float> %.val230.i105.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.0.20.vec.extract283.i107.i = extractelement <8 x i32> %i.nm, i64 5
  %i.qu = zext i32 %.sroa.0.20.vec.extract283.i107.i to i64
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qu
  %.sroa.0.4.vec.extract259.i108.i = extractelement <8 x i32> %i.nm, i64 1
  %i.qw = zext i32 %.sroa.0.4.vec.extract259.i108.i to i64
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qw
  %.val228.i109.i = load <4 x float>, ptr %i.qv, align 1, !tbaa !7, !noalias !13
  %.val229.i110.i = load <4 x float>, ptr %i.qx, align 1, !tbaa !7, !noalias !13
  %i.qy = shufflevector <4 x float> %.val229.i110.i, <4 x float> %.val228.i109.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.0.24.vec.extract289.i111.i = extractelement <8 x i32> %i.nm, i64 6
  %i.qz = zext i32 %.sroa.0.24.vec.extract289.i111.i to i64
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qz
  %.sroa.0.8.vec.extract265.i112.i = extractelement <8 x i32> %i.nm, i64 2
  %i.rb = zext i32 %.sroa.0.8.vec.extract265.i112.i to i64
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.rb
  %.val226.i113.i = load <4 x float>, ptr %i.ra, align 1, !tbaa !7, !noalias !13
  %.val227.i114.i = load <4 x float>, ptr %i.rc, align 1, !tbaa !7, !noalias !13
  %i.rd = shufflevector <4 x float> %.val227.i114.i, <4 x float> %.val226.i113.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.0.28.vec.extract295.i115.i = extractelement <8 x i32> %i.nm, i64 7
  %i.re = zext i32 %.sroa.0.28.vec.extract295.i115.i to i64
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.re
  %.sroa.0.12.vec.extract271.i116.i = extractelement <8 x i32> %i.nm, i64 3
  %i.rg = zext i32 %.sroa.0.12.vec.extract271.i116.i to i64
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.rg
  %.val224.i117.i = load <4 x float>, ptr %i.rf, align 1, !tbaa !7, !noalias !13
  %.val225.i118.i = load <4 x float>, ptr %i.rh, align 1, !tbaa !7, !noalias !13
  %i.ri = shufflevector <4 x float> %.val225.i118.i, <4 x float> %.val224.i117.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.rj = shufflevector <8 x float> %i.qt, <8 x float> %i.qy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.rk = shufflevector <8 x float> %i.rd, <8 x float> %i.ri, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.rl = shufflevector <8 x float> %i.qt, <8 x float> %i.qy, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.rm = shufflevector <8 x float> %i.rd, <8 x float> %i.ri, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.rn = bitcast <8 x float> %i.rj to <4 x double> ; 2 uses
  %i.ro = bitcast <8 x float> %i.rk to <4 x double> ; 2 uses
  %i.rp = shufflevector <4 x double> %i.rn, <4 x double> %i.ro, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.rq = bitcast <4 x double> %i.rp to <8 x float>
  %i.rr = shufflevector <4 x double> %i.rn, <4 x double> %i.ro, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.rs = bitcast <4 x double> %i.rr to <8 x float>
  %i.rt = bitcast <8 x float> %i.rl to <4 x double>
  %i.ru = bitcast <8 x float> %i.rm to <4 x double>
  %i.rv = shufflevector <4 x double> %i.rt, <4 x double> %i.ru, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.rw = bitcast <4 x double> %i.rv to <8 x float>
  %i.rx = fsub <8 x float> %i.nj, %i.ng           ; 3 uses
  %i.ry = fmul <8 x float> %i.rx, %i.rq
  %i.rz = fadd <8 x float> %i.qk, %i.ry
  %i.sa = fmul <8 x float> %i.rx, %i.rs
  %i.sb = fadd <8 x float> %i.qm, %i.sa
  %i.sc = fmul <8 x float> %i.rx, %i.rw
  %i.sd = fadd <8 x float> %i.qo, %i.sc
  %.sroa.0.16.vec.extract.i119.i = extractelement <8 x i32> %i.nn, i64 4
  %i.se = zext i32 %.sroa.0.16.vec.extract.i119.i to i64
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.se
  %.sroa.0.0.vec.extract257.i120.i = extractelement <8 x i32> %i.nn, i64 0
  %i.sg = zext i32 %.sroa.0.0.vec.extract257.i120.i to i64
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.sg
  %.val222.i121.i = load <4 x float>, ptr %i.sf, align 1, !tbaa !7, !noalias !13
  %.val223.i122.i = load <4 x float>, ptr %i.sh, align 1, !tbaa !7, !noalias !13
  %i.si = shufflevector <4 x float> %.val223.i122.i, <4 x float> %.val222.i121.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.0.20.vec.extract.i123.i = extractelement <8 x i32> %i.nn, i64 5
  %i.sj = zext i32 %.sroa.0.20.vec.extract.i123.i to i64
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.sj
  %.sroa.0.4.vec.extract.i124.i = extractelement <8 x i32> %i.nn, i64 1
  %i.sl = zext i32 %.sroa.0.4.vec.extract.i124.i to i64
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.sl
  %.val220.i125.i = load <4 x float>, ptr %i.sk, align 1, !tbaa !7, !noalias !13
  %.val221.i126.i = load <4 x float>, ptr %i.sm, align 1, !tbaa !7, !noalias !13
  %i.sn = shufflevector <4 x float> %.val221.i126.i, <4 x float> %.val220.i125.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.0.24.vec.extract.i127.i = extractelement <8 x i32> %i.nn, i64 6
  %i.so = zext i32 %.sroa.0.24.vec.extract.i127.i to i64
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.so
  %.sroa.0.8.vec.extract.i128.i = extractelement <8 x i32> %i.nn, i64 2
  %i.sq = zext i32 %.sroa.0.8.vec.extract.i128.i to i64
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.sq
  %.val218.i129.i = load <4 x float>, ptr %i.sp, align 1, !tbaa !7, !noalias !13
  %.val219.i130.i = load <4 x float>, ptr %i.sr, align 1, !tbaa !7, !noalias !13
  %i.ss = shufflevector <4 x float> %.val219.i130.i, <4 x float> %.val218.i129.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.0.28.vec.extract.i131.i = extractelement <8 x i32> %i.nn, i64 7
  %i.st = zext i32 %.sroa.0.28.vec.extract.i131.i to i64
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.st
  %.sroa.0.12.vec.extract.i132.i = extractelement <8 x i32> %i.nn, i64 3
  %i.sv = zext i32 %.sroa.0.12.vec.extract.i132.i to i64
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.sv
  %.val.i133.i = load <4 x float>, ptr %i.su, align 1, !tbaa !7, !noalias !13
  %.val217.i134.i = load <4 x float>, ptr %i.sw, align 1, !tbaa !7, !noalias !13
  %i.sx = shufflevector <4 x float> %.val217.i134.i, <4 x float> %.val.i133.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.sy = shufflevector <8 x float> %i.si, <8 x float> %i.sn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.sz = shufflevector <8 x float> %i.ss, <8 x float> %i.sx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.ta = shufflevector <8 x float> %i.si, <8 x float> %i.sn, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.tb = shufflevector <8 x float> %i.ss, <8 x float> %i.sx, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.tc = bitcast <8 x float> %i.sy to <4 x double> ; 2 uses
  %i.td = bitcast <8 x float> %i.sz to <4 x double> ; 2 uses
  %i.te = shufflevector <4 x double> %i.tc, <4 x double> %i.td, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.tf = bitcast <4 x double> %i.te to <8 x float>
  %i.tg = shufflevector <4 x double> %i.tc, <4 x double> %i.td, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.th = bitcast <4 x double> %i.tg to <8 x float>
  %i.ti = bitcast <8 x float> %i.ta to <4 x double>
  %i.tj = bitcast <8 x float> %i.tb to <4 x double>
  %i.tk = shufflevector <4 x double> %i.ti, <4 x double> %i.tj, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.tl = bitcast <4 x double> %i.tk to <8 x float>
  %i.tm = fmul <8 x float> %i.ng, %i.tf
  %i.tn = fadd <8 x float> %i.rz, %i.tm           ; 2 uses
  %i.to = fmul <8 x float> %i.ng, %i.th
  %i.tp = fadd <8 x float> %i.sb, %i.to           ; 2 uses
  %i.tq = fmul <8 x float> %i.ng, %i.tl
  %i.tr = fadd <8 x float> %i.sd, %i.tq           ; 2 uses
  %i.ts = shufflevector <8 x float> %i.tn, <8 x float> %i.tp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.tt = shufflevector <8 x float> %i.tr, <8 x float> %i.lg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.tu = shufflevector <8 x float> %i.tn, <8 x float> %i.tp, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.tv = shufflevector <8 x float> %i.tr, <8 x float> %i.lg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.tw = bitcast <8 x float> %i.ts to <4 x double> ; 2 uses
  %i.tx = bitcast <8 x float> %i.tt to <4 x double> ; 2 uses
  %i.ty = shufflevector <4 x double> %i.tw, <4 x double> %i.tx, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.tz = shufflevector <4 x double> %i.tw, <4 x double> %i.tx, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.ua = bitcast <8 x float> %i.tu to <4 x double> ; 2 uses
  %i.ub = bitcast <8 x float> %i.tv to <4 x double> ; 2 uses
  %i.uc = shufflevector <4 x double> %i.ua, <4 x double> %i.ub, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.ud = shufflevector <4 x double> %i.ua, <4 x double> %i.ub, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  store <4 x double> %i.ty, ptr %i.b, align 16, !tbaa !7
  %i.ue = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <4 x double> %i.tz, ptr %i.ue, align 16, !tbaa !7
  %i.uf = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store <4 x double> %i.uc, ptr %i.uf, align 16, !tbaa !7
  %i.ug = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store <4 x double> %i.ud, ptr %i.ug, align 16, !tbaa !7
  br i1 %i.kc, label %.lr.ph214.preheader.i, label %._crit_edge215.i

.lr.ph214.preheader.i:                            ; preds = %._crit_edge209.i
  %i.uh = zext nneg i32 %i.kb to i64
  br label %.lr.ph214.i

.lr.ph208.i:                                      ; preds = %.lr.ph208.i, %.lr.ph208.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph208.preheader.i ], [ %indvars.iv.next.i, %.lr.ph208.i ] ; 2 uses
  %.1205.i = phi ptr [ %.066.lcssa.i, %.lr.ph208.preheader.i ], [ %i.uj, %.lr.ph208.i ] ; 5 uses
  %5 = load float, ptr %.1205.i, align 4, !tbaa !16
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 4 uses
  store float %5, ptr %i.ui, align 16, !tbaa !16
  %6 = getelementptr inbounds nuw i8, ptr %.1205.i, i64 4
  %7 = load float, ptr %6, align 4, !tbaa !16
  %8 = getelementptr inbounds nuw i8, ptr %i.ui, i64 4
  store float %7, ptr %8, align 4, !tbaa !16
  %9 = getelementptr inbounds nuw i8, ptr %.1205.i, i64 8
  %10 = load float, ptr %9, align 4, !tbaa !16
  %11 = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  store float %10, ptr %11, align 8, !tbaa !16
  %12 = getelementptr inbounds nuw i8, ptr %.1205.i, i64 12
  %13 = load float, ptr %12, align 4, !tbaa !16
  %14 = getelementptr inbounds nuw i8, ptr %i.ui, i64 12
  store float %13, ptr %14, align 4, !tbaa !16
  %i.uj = getelementptr inbounds nuw i8, ptr %.1205.i, i64 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.uk = icmp samesign ult i64 %indvars.iv.next.i, %i.kd
  br i1 %i.uk, label %.lr.ph208.i, label %._crit_edge209.loopexit.i, !llvm.loop !18

._crit_edge215.i:                                 ; preds = %.lr.ph214.i, %._crit_edge209.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123applyTetrahedralAVXFuncILNS_8BitDepthE8ELS2_8EEEvPKfiS4_Pfi.exit

.lr.ph214.i:                                      ; preds = %.lr.ph214.i, %.lr.ph214.preheader.i
  %indvars.iv218.i = phi i64 [ 0, %.lr.ph214.preheader.i ], [ %indvars.iv.next219.i, %.lr.ph214.i ] ; 2 uses
  %.168211.i = phi ptr [ %.067.lcssa.i, %.lr.ph214.preheader.i ], [ %i.um, %.lr.ph214.i ] ; 4 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv218.i ; 3 uses
  %15 = load <2 x float>, ptr %i.ul, align 16, !tbaa !16
  store <2 x float> %15, ptr %.168211.i, align 4, !tbaa !16
  %16 = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %17 = load float, ptr %16, align 8, !tbaa !16
  %18 = getelementptr inbounds nuw i8, ptr %.168211.i, i64 8
  store float %17, ptr %18, align 4, !tbaa !16
  %19 = getelementptr inbounds nuw i8, ptr %i.ul, i64 12
  %20 = load float, ptr %19, align 4, !tbaa !16
  %21 = getelementptr inbounds nuw i8, ptr %.168211.i, i64 12
  store float %20, ptr %21, align 4, !tbaa !16
  %i.um = getelementptr inbounds nuw i8, ptr %.168211.i, i64 16
  %indvars.iv.next219.i = add nuw nsw i64 %indvars.iv218.i, 4 ; 2 uses
  %i.un = icmp samesign ult i64 %indvars.iv.next219.i, %i.uh
  br i1 %i.un, label %.lr.ph214.i, label %._crit_edge215.i, !llvm.loop !19

_ZN16OpenColorIO_v2_512_GLOBAL__N_123applyTetrahedralAVXFuncILNS_8BitDepthE8ELS2_8EEEvPKfiS4_Pfi.exit: ; preds = %._crit_edge.i, %._crit_edge215.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float>, <8 x float>, <8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN16OpenColorIO_v2_512_GLOBAL__N_122interp_tetrahedral_avxERKNS0_15Lut3DContextAVXEDv8_fS4_S4_S4_: argument 0"}
!10 = distinct !{!10, !"_ZN16OpenColorIO_v2_512_GLOBAL__N_122interp_tetrahedral_avxERKNS0_15Lut3DContextAVXEDv8_fS4_S4_S4_"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZN16OpenColorIO_v2_512_GLOBAL__N_122interp_tetrahedral_avxERKNS0_15Lut3DContextAVXEDv8_fS4_S4_S4_: argument 0"}
!15 = distinct !{!15, !"_ZN16OpenColorIO_v2_512_GLOBAL__N_122interp_tetrahedral_avxERKNS0_15Lut3DContextAVXEDv8_fS4_S4_S4_"}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !5, i64 0}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
end_hunk_0
