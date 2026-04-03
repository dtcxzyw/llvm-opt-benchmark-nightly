begin_hunk_0
  %i.jv = mul nuw nsw i32 %i.ju, %i.jt            ; 3 uses
  %i.jw = lshr i32 %i.jv, 16                      ; 2 uses
  %i.jx = and i32 %i.jv, 65535
  %i.jy = sub nsw i32 %i.jv, %i.jw
  %i.jz = icmp samesign ult i32 %i.jx, %i.jw
  %i.ka = zext i1 %i.jz to i32
  %i.kb = add i32 %i.jy, %i.ka
  %i.kc = trunc i32 %i.kb to i16
  br label %mul.exit.i80

end_hunk_0
begin_hunk_1
  %i.kp = mul nuw nsw i32 %i.ko, %i.kn            ; 3 uses
  %i.kq = lshr i32 %i.kp, 16                      ; 2 uses
  %i.kr = and i32 %i.kp, 65535
  %i.ks = sub nsw i32 %i.kp, %i.kq
  %i.kt = icmp samesign ult i32 %i.kr, %i.kq
  %i.ku = zext i1 %i.kt to i32
  %i.kv = add i32 %i.ks, %i.ku
  %i.kw = trunc i32 %i.kv to i16
  br label %mul.exit54.i84

end_hunk_1
begin_hunk_2
  %i.le = mul nuw nsw i32 %i.ld, %i.lc            ; 3 uses
  %i.lf = lshr i32 %i.le, 16                      ; 2 uses
  %i.lg = and i32 %i.le, 65535
  %i.lh = sub nsw i32 %i.le, %i.lf
  %i.li = icmp samesign ult i32 %i.lg, %i.lf
  %i.lj = zext i1 %i.li to i32
  %i.lk = add i32 %i.lh, %i.lj
  %i.ll = trunc i32 %i.lk to i16
  br label %mul.exit58.i88

end_hunk_2
begin_hunk_3
  %i.lu = mul nuw nsw i32 %i.lt, %i.ls            ; 3 uses
  %i.lv = lshr i32 %i.lu, 16                      ; 2 uses
  %i.lw = and i32 %i.lu, 65535
  %i.lx = sub nsw i32 %i.lu, %i.lv
  %i.ly = icmp samesign ult i32 %i.lw, %i.lv
  %i.lz = zext i1 %i.ly to i32
  %i.ma = add i32 %i.lx, %i.lz
  %i.mb = trunc i32 %i.ma to i16
  br label %mul.exit62.i92

end_hunk_3
begin_hunk_4
  %i.mm = mul nuw nsw i32 %i.ja, %i.ml            ; 3 uses
  %i.mn = lshr i32 %i.mm, 16                      ; 2 uses
  %i.mo = and i32 %i.mm, 65535
  %i.mp = sub nsw i32 %i.mm, %i.mn
  %i.mq = icmp samesign ult i32 %i.mo, %i.mn
  %i.mr = zext i1 %i.mq to i32
  %i.ms = add i32 %i.mp, %i.mr
  %i.mt = trunc i32 %i.ms to i16
  br label %mul.exit66.i98

end_hunk_4
begin_hunk_5
  %i.na = mul nuw nsw i32 %i.jf, %i.mz            ; 3 uses
  %i.nb = lshr i32 %i.na, 16                      ; 2 uses
  %i.nc = and i32 %i.na, 65535
  %i.nd = sub nsw i32 %i.na, %i.nb
  %i.ne = icmp samesign ult i32 %i.nc, %i.nb
  %i.nf = zext i1 %i.ne to i32
  %i.ng = add i32 %i.nd, %i.nf
  %i.nh = trunc i32 %i.ng to i16
  br label %cipher_idea.exit103

end_hunk_5
begin_hunk_6
  %i.ny = mul nuw nsw i32 %i.nx, %i.nw            ; 3 uses
  %i.nz = lshr i32 %i.ny, 16                      ; 2 uses
  %i.oa = and i32 %i.ny, 65535
  %i.ob = sub nsw i32 %i.ny, %i.nz
  %i.oc = icmp samesign ult i32 %i.oa, %i.nz
  %i.od = zext i1 %i.oc to i32
  %i.oe = add i32 %i.ob, %i.od
  %i.of = trunc i32 %i.oe to i16
  br label %mul.exit.i

end_hunk_6
begin_hunk_7
  %i.os = mul nuw nsw i32 %i.or, %i.oq            ; 3 uses
  %i.ot = lshr i32 %i.os, 16                      ; 2 uses
  %i.ou = and i32 %i.os, 65535
  %i.ov = sub nsw i32 %i.os, %i.ot
  %i.ow = icmp samesign ult i32 %i.ou, %i.ot
  %i.ox = zext i1 %i.ow to i32
  %i.oy = add i32 %i.ov, %i.ox
  %i.oz = trunc i32 %i.oy to i16
  br label %mul.exit54.i

end_hunk_7
begin_hunk_8
  %i.ph = mul nuw nsw i32 %i.pg, %i.pf            ; 3 uses
  %i.pi = lshr i32 %i.ph, 16                      ; 2 uses
  %i.pj = and i32 %i.ph, 65535
  %i.pk = sub nsw i32 %i.ph, %i.pi
  %i.pl = icmp samesign ult i32 %i.pj, %i.pi
  %i.pm = zext i1 %i.pl to i32
  %i.pn = add i32 %i.pk, %i.pm
  %i.po = trunc i32 %i.pn to i16
  br label %mul.exit58.i

end_hunk_8
begin_hunk_9
  %i.px = mul nuw nsw i32 %i.pw, %i.pv            ; 3 uses
  %i.py = lshr i32 %i.px, 16                      ; 2 uses
  %i.pz = and i32 %i.px, 65535
  %i.qa = sub nsw i32 %i.px, %i.py
  %i.qb = icmp samesign ult i32 %i.pz, %i.py
  %i.qc = zext i1 %i.qb to i32
  %i.qd = add i32 %i.qa, %i.qc
  %i.qe = trunc i32 %i.qd to i16
  br label %mul.exit62.i

end_hunk_9
begin_hunk_10
  %i.qr = mul nuw nsw i32 %i.qq, %i.qp            ; 3 uses
  %i.qs = lshr i32 %i.qr, 16                      ; 2 uses
  %i.qt = and i32 %i.qr, 65535
  %i.qu = sub nsw i32 %i.qr, %i.qs
  %i.qv = icmp samesign ult i32 %i.qt, %i.qs
  %i.qw = zext i1 %i.qv to i32
  %i.qx = add i32 %i.qu, %i.qw
  %i.qy = trunc i32 %i.qx to i16
  br label %mul.exit66.i

end_hunk_10
begin_hunk_11
  %i.rk = mul nuw nsw i32 %i.rj, %i.ri            ; 3 uses
  %i.rl = lshr i32 %i.rk, 16                      ; 2 uses
  %i.rm = and i32 %i.rk, 65535
  %i.rn = sub nsw i32 %i.rk, %i.rl
  %i.ro = icmp samesign ult i32 %i.rm, %i.rl
  %i.rp = zext i1 %i.ro to i32
  %i.rq = add i32 %i.rn, %i.rp
  %i.rr = trunc i32 %i.rq to i16
  br label %cipher_idea.exit

end_hunk_11
begin_hunk_12
  %i.te = mul nuw nsw i32 %i.td, %i.tc            ; 3 uses
  %i.tf = lshr i32 %i.te, 16                      ; 2 uses
  %i.tg = and i32 %i.te, 65535
  %i.th = sub nsw i32 %i.te, %i.tf
  %i.ti = icmp samesign ult i32 %i.tg, %i.tf
  %i.tj = zext i1 %i.ti to i32
  %i.tk = add i32 %i.th, %i.tj
  %i.tl = trunc i32 %i.tk to i16
  br label %mul.exit.i144

end_hunk_12
begin_hunk_13
  %i.ty = mul nuw nsw i32 %i.tx, %i.tw            ; 3 uses
  %i.tz = lshr i32 %i.ty, 16                      ; 2 uses
  %i.ua = and i32 %i.ty, 65535
  %i.ub = sub nsw i32 %i.ty, %i.tz
  %i.uc = icmp samesign ult i32 %i.ua, %i.tz
  %i.ud = zext i1 %i.uc to i32
  %i.ue = add i32 %i.ub, %i.ud
  %i.uf = trunc i32 %i.ue to i16
  br label %mul.exit54.i148

end_hunk_13
begin_hunk_14
  %i.un = mul nuw nsw i32 %i.um, %i.ul            ; 3 uses
  %i.uo = lshr i32 %i.un, 16                      ; 2 uses
  %i.up = and i32 %i.un, 65535
  %i.uq = sub nsw i32 %i.un, %i.uo
  %i.ur = icmp samesign ult i32 %i.up, %i.uo
  %i.us = zext i1 %i.ur to i32
  %i.ut = add i32 %i.uq, %i.us
  %i.uu = trunc i32 %i.ut to i16
  br label %mul.exit58.i152

end_hunk_14
begin_hunk_15
  %i.vd = mul nuw nsw i32 %i.vc, %i.vb            ; 3 uses
  %i.ve = lshr i32 %i.vd, 16                      ; 2 uses
  %i.vf = and i32 %i.vd, 65535
  %i.vg = sub nsw i32 %i.vd, %i.ve
  %i.vh = icmp samesign ult i32 %i.vf, %i.ve
  %i.vi = zext i1 %i.vh to i32
  %i.vj = add i32 %i.vg, %i.vi
  %i.vk = trunc i32 %i.vj to i16
  br label %mul.exit62.i156

end_hunk_15
begin_hunk_16
  %i.vv = mul nuw nsw i32 %i.si, %i.vu            ; 3 uses
  %i.vw = lshr i32 %i.vv, 16                      ; 2 uses
  %i.vx = and i32 %i.vv, 65535
  %i.vy = sub nsw i32 %i.vv, %i.vw
  %i.vz = icmp samesign ult i32 %i.vx, %i.vw
  %i.wa = zext i1 %i.vz to i32
  %i.wb = add i32 %i.vy, %i.wa
  %i.wc = trunc i32 %i.wb to i16
  br label %mul.exit66.i162

end_hunk_16
begin_hunk_17
  %i.wj = mul nuw nsw i32 %i.sn, %i.wi            ; 3 uses
  %i.wk = lshr i32 %i.wj, 16                      ; 2 uses
  %i.wl = and i32 %i.wj, 65535
  %i.wm = sub nsw i32 %i.wj, %i.wk
  %i.wn = icmp samesign ult i32 %i.wl, %i.wk
  %i.wo = zext i1 %i.wn to i32
  %i.wp = add i32 %i.wm, %i.wo
  %i.wq = trunc i32 %i.wp to i16
  br label %cipher_idea.exit167

end_hunk_17
begin_hunk_18
  %i.xh = mul nuw nsw i32 %i.xg, %i.xf            ; 3 uses
  %i.xi = lshr i32 %i.xh, 16                      ; 2 uses
  %i.xj = and i32 %i.xh, 65535
  %i.xk = sub nsw i32 %i.xh, %i.xi
  %i.xl = icmp samesign ult i32 %i.xj, %i.xi
  %i.xm = zext i1 %i.xl to i32
  %i.xn = add i32 %i.xk, %i.xm
  %i.xo = trunc i32 %i.xn to i16
  br label %mul.exit.i112

end_hunk_18
begin_hunk_19
  %i.yb = mul nuw nsw i32 %i.ya, %i.xz            ; 3 uses
  %i.yc = lshr i32 %i.yb, 16                      ; 2 uses
  %i.yd = and i32 %i.yb, 65535
  %i.ye = sub nsw i32 %i.yb, %i.yc
  %i.yf = icmp samesign ult i32 %i.yd, %i.yc
  %i.yg = zext i1 %i.yf to i32
  %i.yh = add i32 %i.ye, %i.yg
  %i.yi = trunc i32 %i.yh to i16
  br label %mul.exit54.i116

end_hunk_19
begin_hunk_20
  %i.yq = mul nuw nsw i32 %i.yp, %i.yo            ; 3 uses
  %i.yr = lshr i32 %i.yq, 16                      ; 2 uses
  %i.ys = and i32 %i.yq, 65535
  %i.yt = sub nsw i32 %i.yq, %i.yr
  %i.yu = icmp samesign ult i32 %i.ys, %i.yr
  %i.yv = zext i1 %i.yu to i32
  %i.yw = add i32 %i.yt, %i.yv
  %i.yx = trunc i32 %i.yw to i16
  br label %mul.exit58.i120

end_hunk_20
begin_hunk_21
  %i.zg = mul nuw nsw i32 %i.zf, %i.ze            ; 3 uses
  %i.zh = lshr i32 %i.zg, 16                      ; 2 uses
  %i.zi = and i32 %i.zg, 65535
  %i.zj = sub nsw i32 %i.zg, %i.zh
  %i.zk = icmp samesign ult i32 %i.zi, %i.zh
  %i.zl = zext i1 %i.zk to i32
  %i.zm = add i32 %i.zj, %i.zl
  %i.zn = trunc i32 %i.zm to i16
  br label %mul.exit62.i124

end_hunk_21
begin_hunk_22
  %i.aaa = mul nuw nsw i32 %i.zz, %i.zy           ; 3 uses
  %i.aab = lshr i32 %i.aaa, 16                    ; 2 uses
  %i.aac = and i32 %i.aaa, 65535
  %i.aad = sub nsw i32 %i.aaa, %i.aab
  %i.aae = icmp samesign ult i32 %i.aac, %i.aab
  %i.aaf = zext i1 %i.aae to i32
  %i.aag = add i32 %i.aad, %i.aaf
  %i.aah = trunc i32 %i.aag to i16
  br label %mul.exit66.i130

end_hunk_22
begin_hunk_23
  %i.aat = mul nuw nsw i32 %i.aas, %i.aar         ; 3 uses
  %i.aau = lshr i32 %i.aat, 16                    ; 2 uses
  %i.aav = and i32 %i.aat, 65535
  %i.aaw = sub nsw i32 %i.aat, %i.aau
  %i.aax = icmp samesign ult i32 %i.aav, %i.aau
  %i.aay = zext i1 %i.aax to i32
  %i.aaz = add i32 %i.aaw, %i.aay
  %i.aba = trunc i32 %i.aaz to i16
  br label %cipher_idea.exit135

end_hunk_23
