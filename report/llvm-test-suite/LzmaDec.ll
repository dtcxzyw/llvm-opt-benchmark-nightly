begin_hunk_0
  %i.dg = sub i32 %.3871.i, %i.cz
  %i.dh = sub nuw i32 %.3855.i, %i.cz
  %i.di = lshr i16 %i.cp, 5
  %i.dj = sub nuw i16 %i.cp, %i.di
  %i.dk = or disjoint i32 %i.db, 1
  br label %bb.o

end_hunk_0
begin_hunk_1
  %i.ev = sub i32 %.6874.i, %i.en
  %i.ew = sub nuw i32 %.6858.i, %i.en
  %i.ex = lshr i16 %i.ed, 5
  %i.ey = sub nuw i16 %i.ed, %i.ex
  %i.ez = or disjoint i32 %i.ep, 1
  br label %bb.v

end_hunk_1
begin_hunk_2
  %i.fh = sub i32 %.1869.i, %i.bs                 ; 3 uses
  %i.fi = sub nuw i32 %.1853.i, %i.bs             ; 2 uses
  %i.fj = lshr i16 %i.bi, 5
  %i.fk = sub nuw i16 %i.bi, %i.fj
  store i16 %i.fk, ptr %i.bh, align 2, !tbaa !34
  %i.fl = zext i32 %.0777.i to i64                ; 4 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.fl ; 3 uses
end_hunk_2
begin_hunk_3
  %i.ge = sub i32 %.9877.i, %i.fx                 ; 3 uses
  %i.gf = sub nuw i32 %.9861.i, %i.fx             ; 2 uses
  %i.gg = lshr i16 %i.fn, 5
  %i.gh = sub nuw i16 %i.fn, %i.gg
  store i16 %i.gh, ptr %i.fm, align 2, !tbaa !34
  %i.gi = or i32 %.0848.i, %i.s
  %or.cond4.i = icmp eq i32 %i.gi, 0
end_hunk_3
begin_hunk_4
  %i.id = sub i32 %.11879.i, %i.hm
  %i.ie = sub nuw i32 %.11863.i, %i.hm
  %i.if = lshr i16 %i.hc, 5
  %i.ig = sub nuw i16 %i.hc, %i.if
  store i16 %i.ig, ptr %i.hb, align 2, !tbaa !34
  br label %bb.at

end_hunk_4
begin_hunk_5
  %i.ih = sub i32 %.10878.i, %i.gu                ; 3 uses
  %i.ii = sub nuw i32 %.10862.i, %i.gu            ; 2 uses
  %i.ij = lshr i16 %i.gk, 5
  %i.ik = sub nuw i16 %i.gk, %i.ij
  store i16 %i.ik, ptr %i.gj, align 2, !tbaa !34
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.fl ; 3 uses
  %i.im = load i16, ptr %i.il, align 2, !tbaa !34 ; 4 uses
end_hunk_5
begin_hunk_6
  %i.jc = sub i32 %.12880.i, %i.iw                ; 3 uses
  %i.jd = sub nuw i32 %.12864.i, %i.iw            ; 2 uses
  %i.je = lshr i16 %i.im, 5
  %i.jf = sub nuw i16 %i.im, %i.je
  store i16 %i.jf, ptr %i.il, align 2, !tbaa !34
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.fl ; 2 uses
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !34 ; 4 uses
end_hunk_6
begin_hunk_7
  %i.jx = sub i32 %.13881.i, %i.jr
  %i.jy = sub nuw i32 %.13865.i, %i.jr
  %i.jz = lshr i16 %i.jh, 5
  %i.ka = sub nuw i16 %i.jh, %i.jz
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
end_hunk_7
begin_hunk_8
  %i.kx = sub i32 %.18886.i, %i.kn                ; 3 uses
  %i.ky = sub nuw i32 %.18.i, %i.kn               ; 2 uses
  %i.kz = lshr i16 %i.kd, 5
  %i.la = sub nuw i16 %i.kd, %i.kz
  store i16 %i.la, ptr %.1851.i, align 2, !tbaa !34
  %i.lb = getelementptr inbounds nuw i8, ptr %.1851.i, i64 2 ; 3 uses
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !34 ; 4 uses
end_hunk_8
begin_hunk_9
  %i.lw = sub i32 %.19887.i, %i.lm
  %i.lx = sub nuw i32 %.19.i, %i.lm
  %i.ly = lshr i16 %i.lc, 5
  %i.lz = sub nuw i16 %i.lc, %i.ly
  store i16 %i.lz, ptr %i.lb, align 2, !tbaa !34
  %i.ma = getelementptr inbounds nuw i8, ptr %.1851.i, i64 516
  br label %bb.bd
end_hunk_9
begin_hunk_10
  %i.mu = sub i32 %.22890.i, %i.mn
  %i.mv = sub nuw i32 %.22.i, %i.mn
  %i.mw = lshr i16 %i.md, 5
  %i.mx = sub nuw i16 %i.md, %i.mw
  %i.my = or disjoint i32 %i.mp, 1
  br label %bb.bj

end_hunk_10
begin_hunk_11
  %i.ny = sub i32 %.24892.i, %i.ns
  %i.nz = sub nuw i32 %.24.i, %i.ns
  %i.oa = lshr i16 %i.ni, 5
  %i.ob = sub nuw i16 %i.ni, %i.oa
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
end_hunk_11
begin_hunk_12
  %i.ov = sub i32 %.26894.i, %i.oo
  %i.ow = sub nuw i32 %.26.i, %i.oo
  %i.ox = lshr i16 %i.oe, 5
  %i.oy = sub nuw i16 %i.oe, %i.ox
  %i.oz = or disjoint i32 %i.oq, 1
  br label %bb.bv

end_hunk_12
begin_hunk_13
  %i.pt = sub i32 %.28896.i, %i.pm
  %i.pu = sub nuw i32 %.28.i, %i.pm
  %i.pv = lshr i16 %i.pc, 5
  %i.pw = sub nuw i16 %i.pc, %i.pv
  %i.px = or disjoint i32 %i.po, 1
  br label %bb.ca

end_hunk_13
begin_hunk_14
  %i.qr = sub i32 %.30898.i, %i.qk
  %i.qs = sub nuw i32 %.30.i, %i.qk
  %i.qt = lshr i16 %i.qa, 5
  %i.qu = sub nuw i16 %i.qa, %i.qt
  %i.qv = or disjoint i32 %i.qm, 1
  br label %bb.cf

end_hunk_14
begin_hunk_15
  %i.rp = sub i32 %.32900.i, %i.ri
  %i.rq = sub nuw i32 %.32.i, %i.ri
  %i.rr = lshr i16 %i.qy, 5
  %i.rs = sub nuw i16 %i.qy, %i.rr
  %i.rt = or disjoint i32 %i.rk, 1
  br label %bb.ck

end_hunk_15
begin_hunk_16
  %i.sn = sub i32 %.34902.i, %i.sg
  %i.so = sub nuw i32 %.34.i, %i.sg
  %i.sp = lshr i16 %i.rw, 5
  %i.sq = sub nuw i16 %i.rw, %i.sp
  %i.sr = or disjoint i32 %i.si, 1
  br label %bb.cp

end_hunk_16
begin_hunk_17
  %i.tx = sub i32 %.37905.i, %i.tr
  %i.ty = sub nuw i32 %.37.i, %i.tr
  %i.tz = lshr i16 %i.th, 5
  %i.ua = sub nuw i16 %i.th, %i.tz
  %i.ub = or i32 %i.sz, 1
  br label %bb.cw

end_hunk_17
begin_hunk_18
  %i.ur = sub i32 %.37905.i.1, %i.uo
  %i.us = sub nuw i32 %.37.i.1, %i.uo
  %i.ut = lshr i16 %i.ue, 5
  %i.uu = sub nuw i16 %i.ue, %i.ut
  %i.uv = or disjoint i32 %i.uq, 1
  %i.uw = or i32 %.7819.i, 2
  br label %bb.dc
end_hunk_18
begin_hunk_19
  %i.vq = sub i32 %.37905.i.2, %i.vn
  %i.vr = sub nuw i32 %.37.i.2, %i.vn
  %i.vs = lshr i16 %i.vd, 5
  %i.vt = sub nuw i16 %i.vd, %i.vs
  %i.vu = or disjoint i32 %i.vp, 1
  %i.vv = or i32 %.7819.i.1, 4
  br label %bb.di
end_hunk_19
begin_hunk_20
  %i.wp = sub i32 %.37905.i.3, %i.wm
  %i.wq = sub nuw i32 %.37.i.3, %i.wm
  %i.wr = lshr i16 %i.wc, 5
  %i.ws = sub nuw i16 %i.wc, %i.wr
  %i.wt = or disjoint i32 %i.wo, 1
  %i.wu = or i32 %.7819.i.2, 8
  br label %bb.do
end_hunk_20
begin_hunk_21
  %i.xn = sub i32 %.37905.i.4, %i.xl
  %i.xo = sub nuw i32 %.37.i.4, %i.xl
  %i.xp = lshr i16 %i.xb, 5
  %i.xq = sub nuw i16 %i.xb, %i.xp
  %i.xr = or i32 %.7819.i.3, 16
  br label %bb.du

end_hunk_21
begin_hunk_22
  %i.zd = sub i32 %.41909.i, %i.yx
  %i.ze = sub nuw i32 %.41.i, %i.yx
  %i.zf = lshr i16 %i.yn, 5
  %i.zg = sub nuw i16 %i.yn, %i.zf
  %i.zh = or disjoint i32 %i.ym, 1
  br label %bb.ee

end_hunk_22
begin_hunk_23
  %i.aab = sub i32 %.43911.i, %i.zu
  %i.aac = sub nuw i32 %.43.i, %i.zu
  %i.aad = lshr i16 %i.zk, 5
  %i.aae = sub nuw i16 %i.zk, %i.aad
  %i.aaf = or disjoint i32 %i.zw, 1
  %i.aag = or i32 %.9.i, 2
  br label %bb.ej
end_hunk_23
begin_hunk_24
  %i.aba = sub i32 %.45913.i, %i.aat
  %i.abb = sub nuw i32 %.45.i, %i.aat
  %i.abc = lshr i16 %i.aaj, 5
  %i.abd = sub nuw i16 %i.aaj, %i.abc
  %i.abe = or disjoint i32 %i.aav, 1
  %i.abf = or i32 %.10.i, 4
  br label %bb.eo
end_hunk_24
begin_hunk_25
  %i.aby = sub i32 %.47915.i, %i.abs              ; 2 uses
  %i.abz = sub nuw i32 %.47.i, %i.abs             ; 2 uses
  %i.aca = lshr i16 %i.abi, 5
  %i.acb = sub nuw i16 %i.abi, %i.aca
  store i16 %i.acb, ptr %i.abh, align 2, !tbaa !34
  %i.acc = or i32 %.11.i, 8                       ; 2 uses
  %i.acd = icmp eq i32 %i.acc, -1
end_hunk_25
