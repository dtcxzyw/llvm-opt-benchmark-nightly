begin_hunk_0
  %i.b = load i8, ptr %0, align 1, !tbaa !65
  %i.c = add i8 %i.b, -48                         ; 2 uses
  %i.d = icmp ult i8 %i.c, 10
  %i.e = zext i8 %i.c to i32                      ; 2 uses
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %i.i = mul nuw nsw i32 %i.e, 10
  %i.j = icmp ult i8 %i.h, 10
  %i.k = zext i8 %i.h to i32
  %i.l = add nuw nsw i32 %i.i, %i.k               ; 2 uses
  br i1 %i.j, label %bb.e, label %.critedge

end_hunk_1
begin_hunk_2
  %i.o = add i8 %i.n, -48                         ; 2 uses
  %i.p = mul nuw nsw i32 %i.l, 10
  %i.q = icmp ult i8 %i.o, 10
  %i.r = zext i8 %i.o to i32
  %i.s = add nuw nsw i32 %i.p, %i.r               ; 2 uses
  br i1 %i.q, label %bb.g, label %.critedge

end_hunk_2
begin_hunk_3
  %i.v = add i8 %i.u, -48                         ; 2 uses
  %i.w = mul nuw nsw i32 %i.s, 10
  %i.x = icmp ult i8 %i.v, 10
  %i.y = zext i8 %i.v to i32
  %i.z = add nuw nsw i32 %i.w, %i.y               ; 2 uses
  br i1 %i.x, label %bb.i, label %.critedge

end_hunk_3
begin_hunk_4
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %i.ad = mul nuw nsw i32 %i.z, 10
  %i.ae = icmp ult i8 %i.ac, 10
  %i.af = zext i8 %i.ac to i32
  %i.ag = add nuw nsw i32 %i.ad, %i.af            ; 2 uses
  br i1 %i.ae, label %bb.k, label %.critedge

end_hunk_4
begin_hunk_5
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = mul nuw nsw i32 %i.ag, 10
  %i.al = icmp ult i8 %i.aj, 10
  %i.am = zext i8 %i.aj to i32
  %i.an = add nuw nsw i32 %i.ak, %i.am            ; 2 uses
  br i1 %i.al, label %bb.m, label %.critedge

end_hunk_5
begin_hunk_6
  %i.aq = add i8 %i.ap, -48                       ; 2 uses
  %i.ar = mul nuw nsw i32 %i.an, 10
  %i.as = icmp ult i8 %i.aq, 10
  %i.at = zext i8 %i.aq to i32
  %i.au = add nuw nsw i32 %i.ar, %i.at            ; 2 uses
  br i1 %i.as, label %bb.o, label %.critedge

end_hunk_6
begin_hunk_7
  %i.ax = add i8 %i.aw, -48                       ; 2 uses
  %i.ay = mul nuw nsw i32 %i.au, 10
  %i.az = icmp ult i8 %i.ax, 10
  %i.ba = zext i8 %i.ax to i32
  %i.bb = add nuw nsw i32 %i.ay, %i.ba            ; 2 uses
  br i1 %i.az, label %bb.q, label %.critedge

end_hunk_7
begin_hunk_8
  %i.bf = mul nuw nsw i32 %i.bb, 10
  %i.bg = add i64 %1, -9                          ; 2 uses
  %i.bh = icmp ult i8 %i.be, 10
  %i.bi = zext i8 %i.be to i32
  %i.bj = add nuw nsw i32 %i.bf, %i.bi            ; 3 uses
  br i1 %i.bh, label %bb.s, label %.critedge

end_hunk_8
begin_hunk_9
  %i.bv = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i, i64 1
  %i.bw = add i8 %i.br, -48                       ; 2 uses
  %i.bx = icmp ult i8 %i.bw, 10
  %i.by = zext i8 %i.bw to i32                    ; 2 uses
  br i1 %i.bx, label %bb.u, label %.loopexit.i.i.i.i, !prof !2463

bb.u:                                             ; preds = %bb.t
end_hunk_9
begin_hunk_10
  %i.cb = add i8 %i.ca, -48                       ; 2 uses
  %i.cc = mul nuw nsw i32 %i.by, 10
  %i.cd = icmp ult i8 %i.cb, 10
  %i.ce = zext i8 %i.cb to i32
  %i.cf = add nuw nsw i32 %i.cc, %i.ce            ; 2 uses
  br i1 %i.cd, label %bb.w, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_10
begin_hunk_11
  %i.ci = add i8 %i.ch, -48                       ; 2 uses
  %i.cj = mul nuw nsw i32 %i.cf, 10
  %i.ck = icmp ult i8 %i.ci, 10
  %i.cl = zext i8 %i.ci to i32
  %i.cm = add nuw nsw i32 %i.cj, %i.cl            ; 2 uses
  br i1 %i.ck, label %bb.y, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_11
begin_hunk_12
  %i.cp = add i8 %i.co, -48                       ; 2 uses
  %i.cq = mul nuw nsw i32 %i.cm, 10
  %i.cr = icmp ult i8 %i.cp, 10
  %i.cs = zext i8 %i.cp to i32
  %i.ct = add nuw nsw i32 %i.cq, %i.cs            ; 2 uses
  br i1 %i.cr, label %bb.aa, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_12
begin_hunk_13
  %i.cw = add i8 %i.cv, -48                       ; 2 uses
  %i.cx = mul nuw nsw i32 %i.ct, 10
  %i.cy = icmp ult i8 %i.cw, 10
  %i.cz = zext i8 %i.cw to i32
  %i.da = add nuw nsw i32 %i.cx, %i.cz            ; 2 uses
  br i1 %i.cy, label %bb.ac, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_13
begin_hunk_14
  %i.dd = add i8 %i.dc, -48                       ; 2 uses
  %i.de = mul nuw nsw i32 %i.da, 10
  %i.df = icmp ult i8 %i.dd, 10
  %i.dg = zext i8 %i.dd to i32
  %i.dh = add nuw nsw i32 %i.de, %i.dg            ; 2 uses
  br i1 %i.df, label %bb.ae, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_14
begin_hunk_15
  %i.dk = add i8 %i.dj, -48                       ; 2 uses
  %i.dl = mul nuw nsw i32 %i.dh, 10
  %i.dm = icmp ult i8 %i.dk, 10
  %i.dn = zext i8 %i.dk to i32
  %i.do = add nuw nsw i32 %i.dl, %i.dn            ; 2 uses
  br i1 %i.dm, label %bb.ag, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_15
begin_hunk_16
  %i.dr = add i8 %i.dq, -48                       ; 2 uses
  %i.ds = mul nuw nsw i32 %i.do, 10
  %i.dt = icmp ult i8 %i.dr, 10
  %i.du = zext i8 %i.dr to i32
  %i.dv = add nuw nsw i32 %i.ds, %i.du            ; 2 uses
  br i1 %i.dt, label %bb.ai, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_16
begin_hunk_17
  %i.dz = mul nuw nsw i32 %i.dv, 10
  %i.ea = add i64 %.01722.i.i.i.i.i.i, -9         ; 2 uses
  %i.eb = icmp ult i8 %i.dy, 10
  %i.ec = zext i8 %i.dy to i32
  %i.ed = add nuw nsw i32 %i.dz, %i.ec            ; 3 uses
  br i1 %i.eb, label %bb.ak, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_17
begin_hunk_18
  %i.io = getelementptr inbounds nuw i8, ptr %.01821.i.i57.i.i.i.i, i64 1
  %i.ip = add i8 %i.ik, -48                       ; 2 uses
  %i.iq = icmp ult i8 %i.ip, 10
  %i.ir = zext i8 %i.ip to i32                    ; 2 uses
  br i1 %i.iq, label %bb.bw, label %.loopexit117.i.i.i.i, !prof !2463

bb.bw:                                            ; preds = %bb.bv
end_hunk_18
begin_hunk_19
  %i.iu = add i8 %i.it, -48                       ; 2 uses
  %i.iv = mul nuw nsw i32 %i.ir, 10
  %i.iw = icmp ult i8 %i.iu, 10
  %i.ix = zext i8 %i.iu to i32
  %i.iy = add nuw nsw i32 %i.iv, %i.ix            ; 2 uses
  br i1 %i.iw, label %bb.by, label %.loopexit117.i.i.i.i, !prof !2463

end_hunk_19
begin_hunk_20
  %i.jb = add i8 %i.ja, -48                       ; 2 uses
  %i.jc = mul nuw nsw i32 %i.iy, 10
  %i.jd = icmp ult i8 %i.jb, 10
  %i.je = zext i8 %i.jb to i32
  %i.jf = add nuw nsw i32 %i.jc, %i.je            ; 2 uses
  br i1 %i.jd, label %bb.ca, label %.loopexit117.i.i.i.i, !prof !2463

end_hunk_20
begin_hunk_21
  %i.ji = add i8 %i.jh, -48                       ; 2 uses
  %i.jj = mul nuw nsw i32 %i.jf, 10
  %i.jk = icmp ult i8 %i.ji, 10
  %i.jl = zext i8 %i.ji to i32
  %i.jm = add nuw nsw i32 %i.jj, %i.jl            ; 2 uses
  br i1 %i.jk, label %bb.cc, label %.loopexit117.i.i.i.i, !prof !2463

end_hunk_21
begin_hunk_22
  %i.jp = add i8 %i.jo, -48                       ; 2 uses
  %i.jq = mul nuw nsw i32 %i.jm, 10
  %i.jr = icmp ult i8 %i.jp, 10
  %i.js = zext i8 %i.jp to i32
  %i.jt = add nuw nsw i32 %i.jq, %i.js            ; 2 uses
  br i1 %i.jr, label %bb.ce, label %.loopexit117.i.i.i.i, !prof !2463

end_hunk_22
begin_hunk_23
  %i.jw = add i8 %i.jv, -48                       ; 2 uses
  %i.jx = mul nuw nsw i32 %i.jt, 10
  %i.jy = icmp ult i8 %i.jw, 10
  %i.jz = zext i8 %i.jw to i32
  %i.ka = add nuw nsw i32 %i.jx, %i.jz            ; 2 uses
  br i1 %i.jy, label %bb.cg, label %.loopexit117.i.i.i.i, !prof !2463

end_hunk_23
begin_hunk_24
  %i.kd = add i8 %i.kc, -48                       ; 2 uses
  %i.ke = mul nuw nsw i32 %i.ka, 10
  %i.kf = icmp ult i8 %i.kd, 10
  %i.kg = zext i8 %i.kd to i32
  %i.kh = add nuw nsw i32 %i.ke, %i.kg            ; 2 uses
  br i1 %i.kf, label %bb.ci, label %.loopexit117.i.i.i.i, !prof !2463

end_hunk_24
begin_hunk_25
  %i.kk = add i8 %i.kj, -48                       ; 2 uses
  %i.kl = mul nuw nsw i32 %i.kh, 10
  %i.km = icmp ult i8 %i.kk, 10
  %i.kn = zext i8 %i.kk to i32
  %i.ko = add nuw nsw i32 %i.kl, %i.kn            ; 2 uses
  br i1 %i.km, label %bb.ck, label %.loopexit117.i.i.i.i, !prof !2463

end_hunk_25
begin_hunk_26
  %i.ks = mul nuw nsw i32 %i.ko, 10
  %i.kt = add i64 %.01722.i.i56.i.i.i.i, -9       ; 2 uses
  %i.ku = icmp ult i8 %i.kr, 10
  %i.kv = zext i8 %i.kr to i32
  %i.kw = add nuw nsw i32 %i.ks, %i.kv            ; 3 uses
  br i1 %i.ku, label %bb.cm, label %.loopexit117.i.i.i.i, !prof !2463

end_hunk_26
begin_hunk_27
  %i.bt = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i, i64 1
  %i.bu = add i8 %i.bp, -48                       ; 2 uses
  %i.bv = icmp ult i8 %i.bu, 10
  %i.bw = zext i8 %i.bu to i32                    ; 2 uses
  br i1 %i.bv, label %bb.t, label %.loopexit.i.i.i.i, !prof !2463

bb.t:                                             ; preds = %.critedge.i.i.i.i.i.i
end_hunk_27
begin_hunk_28
  %i.bz = add i8 %i.by, -48                       ; 2 uses
  %i.ca = mul nuw nsw i32 %i.bw, 10
  %i.cb = icmp ult i8 %i.bz, 10
  %i.cc = zext i8 %i.bz to i32
  %i.cd = add nuw nsw i32 %i.ca, %i.cc            ; 2 uses
  br i1 %i.cb, label %bb.v, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_28
begin_hunk_29
  %i.cg = add i8 %i.cf, -48                       ; 2 uses
  %i.ch = mul nuw nsw i32 %i.cd, 10
  %i.ci = icmp ult i8 %i.cg, 10
  %i.cj = zext i8 %i.cg to i32
  %i.ck = add nuw nsw i32 %i.ch, %i.cj            ; 2 uses
  br i1 %i.ci, label %bb.x, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_29
begin_hunk_30
  %i.cn = add i8 %i.cm, -48                       ; 2 uses
  %i.co = mul nuw nsw i32 %i.ck, 10
  %i.cp = icmp ult i8 %i.cn, 10
  %i.cq = zext i8 %i.cn to i32
  %i.cr = add nuw nsw i32 %i.co, %i.cq            ; 2 uses
  br i1 %i.cp, label %bb.z, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_30
begin_hunk_31
  %i.cu = add i8 %i.ct, -48                       ; 2 uses
  %i.cv = mul nuw nsw i32 %i.cr, 10
  %i.cw = icmp ult i8 %i.cu, 10
  %i.cx = zext i8 %i.cu to i32
  %i.cy = add nuw nsw i32 %i.cv, %i.cx            ; 2 uses
  br i1 %i.cw, label %bb.ab, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_31
begin_hunk_32
  %i.db = add i8 %i.da, -48                       ; 2 uses
  %i.dc = mul nuw nsw i32 %i.cy, 10
  %i.dd = icmp ult i8 %i.db, 10
  %i.de = zext i8 %i.db to i32
  %i.df = add nuw nsw i32 %i.dc, %i.de            ; 2 uses
  br i1 %i.dd, label %bb.ad, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_32
begin_hunk_33
  %i.di = add i8 %i.dh, -48                       ; 2 uses
  %i.dj = mul nuw nsw i32 %i.df, 10
  %i.dk = icmp ult i8 %i.di, 10
  %i.dl = zext i8 %i.di to i32
  %i.dm = add nuw nsw i32 %i.dj, %i.dl            ; 2 uses
  br i1 %i.dk, label %bb.af, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_33
begin_hunk_34
  %i.dp = add i8 %i.do, -48                       ; 2 uses
  %i.dq = mul nuw nsw i32 %i.dm, 10
  %i.dr = icmp ult i8 %i.dp, 10
  %i.ds = zext i8 %i.dp to i32
  %i.dt = add nuw nsw i32 %i.dq, %i.ds            ; 2 uses
  br i1 %i.dr, label %bb.ah, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_34
begin_hunk_35
  %i.dx = mul nuw nsw i32 %i.dt, 10
  %i.dy = add i64 %.01722.i.i.i.i.i.i, -9         ; 2 uses
  %i.dz = icmp ult i8 %i.dw, 10
  %i.ea = zext i8 %i.dw to i32
  %i.eb = add nuw nsw i32 %i.dx, %i.ea            ; 3 uses
  br i1 %i.dz, label %bb.aj, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_35
begin_hunk_36
  %i.ik = getelementptr inbounds nuw i8, ptr %.01821.i.i57.i.i.i.i, i64 1
  %i.il = add i8 %i.ig, -48                       ; 2 uses
  %i.im = icmp ult i8 %i.il, 10
  %i.in = zext i8 %i.il to i32                    ; 2 uses
  br i1 %i.im, label %bb.bu, label %.loopexit117.i.i.i.i, !prof !2463

bb.bu:                                            ; preds = %.critedge.i.i58.i.i.i.i
end_hunk_36
begin_hunk_37
  %i.iq = add i8 %i.ip, -48                       ; 2 uses
  %i.ir = mul nuw nsw i32 %i.in, 10
  %i.is = icmp ult i8 %i.iq, 10
  %i.it = zext i8 %i.iq to i32
  %i.iu = add nuw nsw i32 %i.ir, %i.it            ; 2 uses
  br i1 %i.is, label %bb.bw, label %.loopexit117.i.i.i.i, !prof !2463

end_hunk_37
begin_hunk_38
  %i.ix = add i8 %i.iw, -48                       ; 2 uses
  %i.iy = mul nuw nsw i32 %i.iu, 10
  %i.iz = icmp ult i8 %i.ix, 10
  %i.ja = zext i8 %i.ix to i32
  %i.jb = add nuw nsw i32 %i.iy, %i.ja            ; 2 uses
  br i1 %i.iz, label %bb.by, label %.loopexit117.i.i.i.i, !prof !2463

end_hunk_38
begin_hunk_39
  %i.je = add i8 %i.jd, -48                       ; 2 uses
  %i.jf = mul nuw nsw i32 %i.jb, 10
  %i.jg = icmp ult i8 %i.je, 10
  %i.jh = zext i8 %i.je to i32
  %i.ji = add nuw nsw i32 %i.jf, %i.jh            ; 2 uses
  br i1 %i.jg, label %bb.ca, label %.loopexit117.i.i.i.i, !prof !2463

end_hunk_39
begin_hunk_40
  %i.jl = add i8 %i.jk, -48                       ; 2 uses
  %i.jm = mul nuw nsw i32 %i.ji, 10
  %i.jn = icmp ult i8 %i.jl, 10
  %i.jo = zext i8 %i.jl to i32
  %i.jp = add nuw nsw i32 %i.jm, %i.jo            ; 2 uses
  br i1 %i.jn, label %bb.cc, label %.loopexit117.i.i.i.i, !prof !2463

end_hunk_40
begin_hunk_41
  %i.js = add i8 %i.jr, -48                       ; 2 uses
  %i.jt = mul nuw nsw i32 %i.jp, 10
  %i.ju = icmp ult i8 %i.js, 10
  %i.jv = zext i8 %i.js to i32
  %i.jw = add nuw nsw i32 %i.jt, %i.jv            ; 2 uses
  br i1 %i.ju, label %bb.ce, label %.loopexit117.i.i.i.i, !prof !2463

end_hunk_41
begin_hunk_42
  %i.jz = add i8 %i.jy, -48                       ; 2 uses
  %i.ka = mul nuw nsw i32 %i.jw, 10
  %i.kb = icmp ult i8 %i.jz, 10
  %i.kc = zext i8 %i.jz to i32
  %i.kd = add nuw nsw i32 %i.ka, %i.kc            ; 2 uses
  br i1 %i.kb, label %bb.cg, label %.loopexit117.i.i.i.i, !prof !2463

end_hunk_42
begin_hunk_43
  %i.kg = add i8 %i.kf, -48                       ; 2 uses
  %i.kh = mul nuw nsw i32 %i.kd, 10
  %i.ki = icmp ult i8 %i.kg, 10
  %i.kj = zext i8 %i.kg to i32
  %i.kk = add nuw nsw i32 %i.kh, %i.kj            ; 2 uses
  br i1 %i.ki, label %bb.ci, label %.loopexit117.i.i.i.i, !prof !2463

end_hunk_43
begin_hunk_44
  %i.ko = mul nuw nsw i32 %i.kk, 10
  %i.kp = add i64 %.01722.i.i56.i.i.i.i, -9       ; 2 uses
  %i.kq = icmp ult i8 %i.kn, 10
  %i.kr = zext i8 %i.kn to i32
  %i.ks = add nuw nsw i32 %i.ko, %i.kr            ; 3 uses
  br i1 %i.kq, label %bb.ck, label %.loopexit117.i.i.i.i, !prof !2463

end_hunk_44
begin_hunk_45
  %i.ci = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i, i64 1
  %i.cj = add i8 %i.ce, -48                       ; 2 uses
  %i.ck = icmp ult i8 %i.cj, 10
  %i.cl = zext i8 %i.cj to i32                    ; 2 uses
  br i1 %i.ck, label %bb.w, label %.loopexit.i.i.i.i, !prof !2463

bb.w:                                             ; preds = %bb.v
end_hunk_45
begin_hunk_46
  %i.co = add i8 %i.cn, -48                       ; 2 uses
  %i.cp = mul nuw nsw i32 %i.cl, 10
  %i.cq = icmp ult i8 %i.co, 10
  %i.cr = zext i8 %i.co to i32
  %i.cs = add nuw nsw i32 %i.cp, %i.cr            ; 2 uses
  br i1 %i.cq, label %bb.y, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_46
begin_hunk_47
  %i.cv = add i8 %i.cu, -48                       ; 2 uses
  %i.cw = mul nuw nsw i32 %i.cs, 10
  %i.cx = icmp ult i8 %i.cv, 10
  %i.cy = zext i8 %i.cv to i32
  %i.cz = add nuw nsw i32 %i.cw, %i.cy            ; 2 uses
  br i1 %i.cx, label %bb.aa, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_47
begin_hunk_48
  %i.dc = add i8 %i.db, -48                       ; 2 uses
  %i.dd = mul nuw nsw i32 %i.cz, 10
  %i.de = icmp ult i8 %i.dc, 10
  %i.df = zext i8 %i.dc to i32
  %i.dg = add nuw nsw i32 %i.dd, %i.df            ; 2 uses
  br i1 %i.de, label %bb.ac, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_48
begin_hunk_49
  %i.dj = add i8 %i.di, -48                       ; 2 uses
  %i.dk = mul nuw nsw i32 %i.dg, 10
  %i.dl = icmp ult i8 %i.dj, 10
  %i.dm = zext i8 %i.dj to i32
  %i.dn = add nuw nsw i32 %i.dk, %i.dm            ; 2 uses
  br i1 %i.dl, label %bb.ae, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_49
begin_hunk_50
  %i.dq = add i8 %i.dp, -48                       ; 2 uses
  %i.dr = mul nuw nsw i32 %i.dn, 10
  %i.ds = icmp ult i8 %i.dq, 10
  %i.dt = zext i8 %i.dq to i32
  %i.du = add nuw nsw i32 %i.dr, %i.dt            ; 2 uses
  br i1 %i.ds, label %bb.ag, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_50
begin_hunk_51
  %i.dx = add i8 %i.dw, -48                       ; 2 uses
  %i.dy = mul nuw nsw i32 %i.du, 10
  %i.dz = icmp ult i8 %i.dx, 10
  %i.ea = zext i8 %i.dx to i32
  %i.eb = add nuw nsw i32 %i.dy, %i.ea            ; 2 uses
  br i1 %i.dz, label %bb.ai, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_51
begin_hunk_52
  %i.ee = add i8 %i.ed, -48                       ; 2 uses
  %i.ef = mul nuw nsw i32 %i.eb, 10
  %i.eg = icmp ult i8 %i.ee, 10
  %i.eh = zext i8 %i.ee to i32
  %i.ei = add nuw nsw i32 %i.ef, %i.eh            ; 2 uses
  br i1 %i.eg, label %bb.ak, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_52
begin_hunk_53
  %i.em = mul nuw nsw i32 %i.ei, 10
  %i.en = add i64 %.01722.i.i.i.i.i.i, -9         ; 2 uses
  %i.eo = icmp ult i8 %i.el, 10
  %i.ep = zext i8 %i.el to i32
  %i.eq = add nuw nsw i32 %i.em, %i.ep            ; 3 uses
  br i1 %i.eo, label %bb.am, label %.loopexit.i.i.i.i, !prof !2463

end_hunk_53
begin_hunk_54
  %i.jo = getelementptr inbounds nuw i8, ptr %.01821.i.i58.i.i.i.i, i64 1
  %i.jp = add i8 %i.jk, -48                       ; 2 uses
  %i.jq = icmp ult i8 %i.jp, 10
  %i.jr = zext i8 %i.jp to i32                    ; 2 uses
  br i1 %i.jq, label %bb.ca, label %.loopexit118.i.i.i.i, !prof !2463

bb.ca:                                            ; preds = %bb.bz
end_hunk_54
begin_hunk_55
  %i.ju = add i8 %i.jt, -48                       ; 2 uses
  %i.jv = mul nuw nsw i32 %i.jr, 10
  %i.jw = icmp ult i8 %i.ju, 10
  %i.jx = zext i8 %i.ju to i32
  %i.jy = add nuw nsw i32 %i.jv, %i.jx            ; 2 uses
  br i1 %i.jw, label %bb.cc, label %.loopexit118.i.i.i.i, !prof !2463

end_hunk_55
begin_hunk_56
  %i.kb = add i8 %i.ka, -48                       ; 2 uses
  %i.kc = mul nuw nsw i32 %i.jy, 10
  %i.kd = icmp ult i8 %i.kb, 10
  %i.ke = zext i8 %i.kb to i32
  %i.kf = add nuw nsw i32 %i.kc, %i.ke            ; 2 uses
  br i1 %i.kd, label %bb.ce, label %.loopexit118.i.i.i.i, !prof !2463

end_hunk_56
begin_hunk_57
  %i.ki = add i8 %i.kh, -48                       ; 2 uses
  %i.kj = mul nuw nsw i32 %i.kf, 10
  %i.kk = icmp ult i8 %i.ki, 10
  %i.kl = zext i8 %i.ki to i32
  %i.km = add nuw nsw i32 %i.kj, %i.kl            ; 2 uses
  br i1 %i.kk, label %bb.cg, label %.loopexit118.i.i.i.i, !prof !2463

end_hunk_57
begin_hunk_58
  %i.kp = add i8 %i.ko, -48                       ; 2 uses
  %i.kq = mul nuw nsw i32 %i.km, 10
  %i.kr = icmp ult i8 %i.kp, 10
  %i.ks = zext i8 %i.kp to i32
  %i.kt = add nuw nsw i32 %i.kq, %i.ks            ; 2 uses
  br i1 %i.kr, label %bb.ci, label %.loopexit118.i.i.i.i, !prof !2463

end_hunk_58
begin_hunk_59
  %i.kw = add i8 %i.kv, -48                       ; 2 uses
  %i.kx = mul nuw nsw i32 %i.kt, 10
  %i.ky = icmp ult i8 %i.kw, 10
  %i.kz = zext i8 %i.kw to i32
  %i.la = add nuw nsw i32 %i.kx, %i.kz            ; 2 uses
  br i1 %i.ky, label %bb.ck, label %.loopexit118.i.i.i.i, !prof !2463

end_hunk_59
begin_hunk_60
  %i.ld = add i8 %i.lc, -48                       ; 2 uses
  %i.le = mul nuw nsw i32 %i.la, 10
  %i.lf = icmp ult i8 %i.ld, 10
  %i.lg = zext i8 %i.ld to i32
  %i.lh = add nuw nsw i32 %i.le, %i.lg            ; 2 uses
  br i1 %i.lf, label %bb.cm, label %.loopexit118.i.i.i.i, !prof !2463

end_hunk_60
begin_hunk_61
  %i.lk = add i8 %i.lj, -48                       ; 2 uses
  %i.ll = mul nuw nsw i32 %i.lh, 10
  %i.lm = icmp ult i8 %i.lk, 10
  %i.ln = zext i8 %i.lk to i32
  %i.lo = add nuw nsw i32 %i.ll, %i.ln            ; 2 uses
  br i1 %i.lm, label %bb.co, label %.loopexit118.i.i.i.i, !prof !2463

end_hunk_61
begin_hunk_62
  %i.ls = mul nuw nsw i32 %i.lo, 10
  %i.lt = add i64 %.01722.i.i57.i.i.i.i, -9       ; 2 uses
  %i.lu = icmp ult i8 %i.lr, 10
  %i.lv = zext i8 %i.lr to i32
  %i.lw = add nuw nsw i32 %i.ls, %i.lv            ; 3 uses
  br i1 %i.lu, label %bb.cq, label %.loopexit118.i.i.i.i, !prof !2463

end_hunk_62
