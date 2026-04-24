inline.NumInlined: 10
inline.NumDeleted: 3
begin_hunk_0_@_ZNK7NCrypto5NSha112CContextBase12PrepareBlockEPjj:bb.a
  %min.iters.check = icmp ult i32 %i.d, 8
  %i.e = icmp samesign ugt i32 %i.a, 12
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.e
  br i1 %or.cond, label %.lr.ph.preheader16, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader
  %n.vec = and i32 %i.d, -8                       ; 2 uses
  %offset.idx = add nuw nsw i32 %.013, %n.vec
  %i.f = zext nneg i32 %.013 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <4 x i32> zeroinitializer, ptr %i.g, align 4, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %i.h, align 4, !tbaa !4
  %i.i = icmp eq i32 %i.d, %n.vec
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %.lr.ph.preheader, %vector.body
  %.015.ph = phi i32 [ %.013, %.lr.ph.preheader ], [ %offset.idx, %vector.body ] ; 4 uses
  %i.j = sub nsw i32 6, %.015.ph
  %xtraiter = and i32 %i.j, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_0
begin_hunk_1_@_ZNK7NCrypto5NSha112CContextBase12PrepareBlockEPjj:bb.a
  %.0.prol = add i32 %.015.prol, 1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !15

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader16
  %.015.unr = phi i32 [ %.015.ph, %.lr.ph.preheader16 ], [ %.0.prol, %.lr.ph.prol ]
end_hunk_1
begin_hunk_2_@_ZNK7NCrypto5NSha112CContextBase12PrepareBlockEPjj:bb.a
  store i32 0, ptr %i.ad, align 4, !tbaa !4
  %.0.7 = add i32 %.015, 8                        ; 2 uses
  %.not.7 = icmp eq i32 %.0.7, 14
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vector.body, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !8
  %i.ag = shl i64 %i.af, 9
end_hunk_2
begin_hunk_3_@_ZN7NCrypto5NSha18CContext6UpdateEPKhm
define dso_local void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 captures(none) dereferenceable(100) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not12 = icmp eq i64 %2, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

end_hunk_3
begin_hunk_4_@_ZN7NCrypto5NSha18CContext6UpdateEPKhm:bb.a

._crit_edge15:                                    ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %i.l = load i8, ptr %.014, align 1, !tbaa !21
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.f, 3
  %i.o = xor i32 %i.n, 24
end_hunk_4
begin_hunk_5_@_ZN7NCrypto5NSha18CContext6UpdateEPKhm:bb.a
bb.e:                                             ; preds = %bb.d, %._crit_edge15
  %.1 = phi i32 [ 0, %bb.d ], [ %i.t, %._crit_edge15 ] ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.09.lcssa = phi i32 [ %i.b, %bb.a ], [ %.1, %bb.e ]
  store i32 %.09.lcssa, ptr %i.a, align 8, !tbaa !19
  ret void
}

end_hunk_5
begin_hunk_6_@_ZN7NCrypto5NSha18CContext9UpdateRarEPhmb
define dso_local void @_ZN7NCrypto5NSha18CContext9UpdateRarEPhmb(ptr noundef nonnull align 8 captures(none) dereferenceable(100) %0, ptr noundef captures(none) %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not34 = icmp eq i64 %2, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

end_hunk_6
begin_hunk_7_@_ZN7NCrypto5NSha18CContext9UpdateRarEPhmb:bb.a

._crit_edge39:                                    ; preds = %bb.b, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.037, i64 1
  %i.aa = load i8, ptr %.037, align 1, !tbaa !21
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.u, 3
  %i.ad = xor i32 %i.ac, 24
end_hunk_7
begin_hunk_8_@_ZN7NCrypto5NSha18CContext9UpdateRarEPhmb:bb.a
  %i.am = load i32, ptr %i.c, align 4, !tbaa !4   ; 4 uses
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %.037, i64 4294967233
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !21
  %i.ap = lshr i32 %i.am, 8
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %.037, i64 4294967234
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !21
  %i.as = lshr i32 %i.am, 16
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %.037, i64 4294967235
  store i8 %i.at, ptr %i.au, align 1, !tbaa !21
  %i.av = lshr i32 %i.am, 24
  %i.aw = trunc nuw i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %.037, i64 4294967236
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !21
  %i.ay = load i32, ptr %i.e, align 8, !tbaa !4   ; 4 uses
  %i.az = trunc i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %.037, i64 4294967237
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !21
  %i.bb = lshr i32 %i.ay, 8
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.037, i64 4294967238
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !21
  %i.be = lshr i32 %i.ay, 16
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %.037, i64 4294967239
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !21
  %i.bh = lshr i32 %i.ay, 24
  %i.bi = trunc nuw i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %.037, i64 4294967240
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !21
  %i.bk = load i32, ptr %i.f, align 4, !tbaa !4   ; 4 uses
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %.037, i64 4294967241
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !21
  %i.bn = lshr i32 %i.bk, 8
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %.037, i64 4294967242
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !21
  %i.bq = lshr i32 %i.bk, 16
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %.037, i64 4294967243
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !21
  %i.bt = lshr i32 %i.bk, 24
  %i.bu = trunc nuw i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.037, i64 4294967244
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !21
  %i.bw = load i32, ptr %i.g, align 8, !tbaa !4   ; 4 uses
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.037, i64 4294967245
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !21
  %i.bz = lshr i32 %i.bw, 8
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %.037, i64 4294967246
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !21
  %i.cc = lshr i32 %i.bw, 16
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.037, i64 4294967247
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !21
  %i.cf = lshr i32 %i.bw, 24
  %i.cg = trunc nuw i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %.037, i64 4294967248
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !21
  %i.ci = load i32, ptr %i.h, align 4, !tbaa !4   ; 4 uses
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.037, i64 4294967249
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !21
  %i.cl = lshr i32 %i.ci, 8
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %.037, i64 4294967250
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !21
  %i.co = lshr i32 %i.ci, 16
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %.037, i64 4294967251
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !21
  %i.cr = lshr i32 %i.ci, 24
  %i.cs = trunc nuw i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.037, i64 4294967252
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !21
  %i.cu = load i32, ptr %i.i, align 8, !tbaa !4   ; 4 uses
  %i.cv = trunc i32 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %.037, i64 4294967253
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !21
  %i.cx = lshr i32 %i.cu, 8
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %.037, i64 4294967254
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !21
  %i.da = lshr i32 %i.cu, 16
  %i.db = trunc i32 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %.037, i64 4294967255
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !21
  %i.dd = lshr i32 %i.cu, 24
  %i.de = trunc nuw i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %.037, i64 4294967256
  store i8 %i.de, ptr %i.df, align 1, !tbaa !21
  %i.dg = load i32, ptr %i.j, align 4, !tbaa !4   ; 4 uses
  %i.dh = trunc i32 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %.037, i64 4294967257
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !21
  %i.dj = lshr i32 %i.dg, 8
  %i.dk = trunc i32 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %.037, i64 4294967258
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !21
  %i.dm = lshr i32 %i.dg, 16
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %.037, i64 4294967259
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !21
  %i.dp = lshr i32 %i.dg, 24
  %i.dq = trunc nuw i32 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %.037, i64 4294967260
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !21
  %i.ds = load i32, ptr %i.k, align 8, !tbaa !4   ; 4 uses
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %.037, i64 4294967261
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !21
  %i.dv = lshr i32 %i.ds, 8
  %i.dw = trunc i32 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %.037, i64 4294967262
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !21
  %i.dy = lshr i32 %i.ds, 16
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %.037, i64 4294967263
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !21
  %i.eb = lshr i32 %i.ds, 24
  %i.ec = trunc nuw i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %.037, i64 4294967264
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !21
  %i.ee = load i32, ptr %i.l, align 4, !tbaa !4   ; 4 uses
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %.037, i64 4294967265
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !21
  %i.eh = lshr i32 %i.ee, 8
  %i.ei = trunc i32 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %.037, i64 4294967266
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !21
  %i.ek = lshr i32 %i.ee, 16
  %i.el = trunc i32 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %.037, i64 4294967267
  store i8 %i.el, ptr %i.em, align 1, !tbaa !21
  %i.en = lshr i32 %i.ee, 24
  %i.eo = trunc nuw i32 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %.037, i64 4294967268
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !21
  %i.eq = load i32, ptr %i.m, align 8, !tbaa !4   ; 4 uses
  %i.er = trunc i32 %i.eq to i8
  %i.es = getelementptr inbounds nuw i8, ptr %.037, i64 4294967269
  store i8 %i.er, ptr %i.es, align 1, !tbaa !21
  %i.et = lshr i32 %i.eq, 8
  %i.eu = trunc i32 %i.et to i8
  %i.ev = getelementptr inbounds nuw i8, ptr %.037, i64 4294967270
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !21
  %i.ew = lshr i32 %i.eq, 16
  %i.ex = trunc i32 %i.ew to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %.037, i64 4294967271
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !21
  %i.ez = lshr i32 %i.eq, 24
  %i.fa = trunc nuw i32 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %.037, i64 4294967272
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !21
  %i.fc = load i32, ptr %i.n, align 4, !tbaa !4   ; 4 uses
  %i.fd = trunc i32 %i.fc to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %.037, i64 4294967273
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !21
  %i.ff = lshr i32 %i.fc, 8
  %i.fg = trunc i32 %i.ff to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %.037, i64 4294967274
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !21
  %i.fi = lshr i32 %i.fc, 16
  %i.fj = trunc i32 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %.037, i64 4294967275
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !21
  %i.fl = lshr i32 %i.fc, 24
  %i.fm = trunc nuw i32 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %.037, i64 4294967276
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !21
  %i.fo = load i32, ptr %i.o, align 8, !tbaa !4   ; 4 uses
  %i.fp = trunc i32 %i.fo to i8
  %i.fq = getelementptr inbounds nuw i8, ptr %.037, i64 4294967277
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !21
  %i.fr = lshr i32 %i.fo, 8
  %i.fs = trunc i32 %i.fr to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %.037, i64 4294967278
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !21
  %i.fu = lshr i32 %i.fo, 16
  %i.fv = trunc i32 %i.fu to i8
  %i.fw = getelementptr inbounds nuw i8, ptr %.037, i64 4294967279
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !21
  %i.fx = lshr i32 %i.fo, 24
  %i.fy = trunc nuw i32 %i.fx to i8
  %i.fz = getelementptr inbounds nuw i8, ptr %.037, i64 4294967280
  store i8 %i.fy, ptr %i.fz, align 1, !tbaa !21
  %i.ga = load i32, ptr %i.p, align 4, !tbaa !4   ; 4 uses
  %i.gb = trunc i32 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %.037, i64 4294967281
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !21
  %i.gd = lshr i32 %i.ga, 8
  %i.ge = trunc i32 %i.gd to i8
  %i.gf = getelementptr inbounds nuw i8, ptr %.037, i64 4294967282
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !21
  %i.gg = lshr i32 %i.ga, 16
  %i.gh = trunc i32 %i.gg to i8
  %i.gi = getelementptr inbounds nuw i8, ptr %.037, i64 4294967283
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !21
  %i.gj = lshr i32 %i.ga, 24
  %i.gk = trunc nuw i32 %i.gj to i8
  %i.gl = getelementptr inbounds nuw i8, ptr %.037, i64 4294967284
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !21
  %i.gm = load i32, ptr %i.q, align 8, !tbaa !4   ; 4 uses
  %i.gn = trunc i32 %i.gm to i8
  %i.go = getelementptr inbounds nuw i8, ptr %.037, i64 4294967285
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !21
  %i.gp = lshr i32 %i.gm, 8
  %i.gq = trunc i32 %i.gp to i8
  %i.gr = getelementptr inbounds nuw i8, ptr %.037, i64 4294967286
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !21
  %i.gs = lshr i32 %i.gm, 16
  %i.gt = trunc i32 %i.gs to i8
  %i.gu = getelementptr inbounds nuw i8, ptr %.037, i64 4294967287
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !21
  %i.gv = lshr i32 %i.gm, 24
  %i.gw = trunc nuw i32 %i.gv to i8
  %i.gx = getelementptr inbounds nuw i8, ptr %.037, i64 4294967288
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !21
  %i.gy = load i32, ptr %i.r, align 4, !tbaa !4   ; 4 uses
  %i.gz = trunc i32 %i.gy to i8
  %i.ha = getelementptr inbounds nuw i8, ptr %.037, i64 4294967289
  store i8 %i.gz, ptr %i.ha, align 1, !tbaa !21
  %i.hb = lshr i32 %i.gy, 8
  %i.hc = trunc i32 %i.hb to i8
  %i.hd = getelementptr inbounds nuw i8, ptr %.037, i64 4294967290
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !21
  %i.he = lshr i32 %i.gy, 16
  %i.hf = trunc i32 %i.he to i8
  %i.hg = getelementptr inbounds nuw i8, ptr %.037, i64 4294967291
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !21
  %i.hh = lshr i32 %i.gy, 24
  %i.hi = trunc nuw i32 %i.hh to i8
  %i.hj = getelementptr inbounds nuw i8, ptr %.037, i64 4294967292
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !21
  %i.hk = load i32, ptr %i.s, align 8, !tbaa !4   ; 4 uses
  %i.hl = trunc i32 %i.hk to i8
  %i.hm = getelementptr inbounds nuw i8, ptr %.037, i64 4294967293
  store i8 %i.hl, ptr %i.hm, align 1, !tbaa !21
  %i.hn = lshr i32 %i.hk, 8
  %i.ho = trunc i32 %i.hn to i8
  %i.hp = getelementptr inbounds nuw i8, ptr %.037, i64 4294967294
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !21
  %i.hq = lshr i32 %i.hk, 16
  %i.hr = trunc i32 %i.hq to i8
  %i.hs = getelementptr inbounds nuw i8, ptr %.037, i64 4294967295
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !21
  %i.ht = lshr i32 %i.hk, 24
  %i.hu = trunc nuw i32 %i.ht to i8
  %i.hv = getelementptr inbounds nuw i8, ptr %.037, i64 4294967296
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.d, %._crit_edge39
  %.131 = phi i1 [ %.03035, %._crit_edge39 ], [ %3, %bb.d ], [ %3, %.preheader.preheader ]
  %.1 = phi i32 [ %i.ai, %._crit_edge39 ], [ 0, %bb.d ], [ 0, %.preheader.preheader ] ; 2 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.029.lcssa = phi i32 [ %i.b, %bb.a ], [ %.1, %.loopexit ]
  store i32 %.029.lcssa, ptr %i.a, align 8, !tbaa !19
  ret void
}

end_hunk_8
begin_hunk_9_@_ZN7NCrypto5NSha18CContext5FinalEPh:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 3 uses
  %i.e = and i32 %i.d, 3                          ; 2 uses
  %i.f = lshr i32 %i.d, 2                         ; 2 uses
  %i.g = icmp eq i32 %i.e, 0
end_hunk_9
begin_hunk_10_@_ZN7NCrypto5NSha18CContext5FinalEPh:bb.a
  store i32 0, ptr %i.w, align 4, !tbaa !4
  %.026 = add nuw nsw i32 %i.r, 1                 ; 2 uses
  %.not = icmp eq i32 %.026, 14
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %i.x = zext i32 %i.d to i64
end_hunk_10
begin_hunk_11_@_ZN7NCrypto5NSha18CContext5FinalEPh:bb.a
  %i.ah = lshr i32 %i.ag, 24
  %i.ai = trunc nuw i32 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.ai, ptr %1, align 1, !tbaa !21
  %i.ak = lshr i32 %i.ag, 16
  %i.al = trunc i32 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !21
  %i.an = lshr i32 %i.ag, 8
  %i.ao = trunc i32 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !21
  %i.aq = trunc i32 %i.ag to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4  ; 4 uses
  %i.au = lshr i32 %i.at, 24
  %i.av = trunc nuw i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.av, ptr %i.ar, align 1, !tbaa !21
  %i.ax = lshr i32 %i.at, 16
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !21
  %i.ba = lshr i32 %i.at, 8
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !21
  %i.bd = trunc i32 %i.at to i8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !4  ; 4 uses
  %i.bh = lshr i32 %i.bg, 24
  %i.bi = trunc nuw i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.bi, ptr %i.be, align 1, !tbaa !21
  %i.bk = lshr i32 %i.bg, 16
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !21
  %i.bn = lshr i32 %i.bg, 8
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !21
  %i.bq = trunc i32 %i.bg to i8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4  ; 4 uses
  %i.bu = lshr i32 %i.bt, 24
  %i.bv = trunc nuw i32 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !21
  %i.bx = lshr i32 %i.bt, 16
  %i.by = trunc i32 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !21
  %i.ca = lshr i32 %i.bt, 8
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !21
  %i.cd = trunc i32 %i.bt to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !21
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !4  ; 4 uses
  %i.ch = lshr i32 %i.cg, 24
  %i.ci = trunc nuw i32 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.ci, ptr %i.ce, align 1, !tbaa !21
  %i.ck = lshr i32 %i.cg, 16
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !21
  %i.cn = lshr i32 %i.cg, 8
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !21
  %i.cq = trunc i32 %i.cg to i8
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !21
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 8, !tbaa !4
  store i32 -1009589776, ptr %i.cf, align 8, !tbaa !4
  store i64 0, ptr %i.a, align 8, !tbaa !8
  store i32 0, ptr %i.c, align 8, !tbaa !19
  ret void
}

end_hunk_11
begin_hunk_12_@_ZN7NCrypto5NSha110CContext326UpdateEPKjm:bb.a
  %i.d = add i64 %.in, -1                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.024, i64 4
  %i.f = load i32, ptr %.024, align 4, !tbaa !4
  %i.g = load i32, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %i.b, align 8, !tbaa !19
  %i.i = zext i32 %i.g to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.i
  store i32 %i.f, ptr %i.j, align 4, !tbaa !4
end_hunk_12
begin_hunk_13_@_ZN7NCrypto5NSha110CContext326UpdateEPKjm:bb.a
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !19
  tail call void @_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(100) %0, i1 noundef zeroext false)
  %i.l = load i64, ptr %i.c, align 8, !tbaa !8
  %i.m = add i64 %i.l, 1
end_hunk_13
begin_hunk_14_@_ZN7NCrypto5NSha110CContext326UpdateEPKjm:bb.a

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
end_hunk_14
begin_hunk_15_@_ZN7NCrypto5NSha110CContext325FinalEPj:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e
end_hunk_15
begin_hunk_16_@_ZN7NCrypto5NSha110CContext325FinalEPj:bb.a
  store i32 0, ptr %i.m, align 4, !tbaa !4
  %.0 = add nuw nsw i32 %i.h, 1                   ; 2 uses
  %.not = icmp eq i32 %.0, 14
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.n = shl i64 %i.b, 9
end_hunk_16
begin_hunk_17_@_ZN7NCrypto5NSha110CContext325FinalEPj:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.v, align 8, !tbaa !4
  store i64 0, ptr %i.a, align 8, !tbaa !8
  store i32 0, ptr %i.c, align 8, !tbaa !19
  ret void
}

end_hunk_17
begin_hunk_18_@llvm.memcpy.p0.p0.i64
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !12, !18}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!20, !5, i64 32}
!20 = !{!"_ZTSN7NCrypto5NSha113CContextBase2E", !9, i64 0, !5, i64 32, !6, i64 36}
!21 = !{!6, !6, i64 0}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
end_hunk_18
