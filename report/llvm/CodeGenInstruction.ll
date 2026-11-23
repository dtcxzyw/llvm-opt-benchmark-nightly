Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeGenInstruction?download=true
inline.NumInlined: 1211
inline.NumDeleted: 586
begin_hunk_0_@_ZN4llvm18CodeGenInstructionC2EPKNS_6RecordE:bb.a
  %i.al = and i64 %i.aj, -9
  %i.am = or disjoint i64 %i.al, %i.ak
  store i64 %i.am, ptr %i.t, align 8
  %i.an = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.57, i64 16) #16
  %i.ao = load i64, ptr %i.t, align 8
  %i.ap = select i1 %i.an, i64 16, i64 0
  %i.aq = and i64 %i.ao, -17
  %i.ar = or disjoint i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.t, align 8
  %i.as = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.58, i64 9) #16
  %i.at = load i64, ptr %i.t, align 8
  %i.au = select i1 %i.as, i64 32, i64 0
  %i.av = and i64 %i.at, -33
  %i.aw = or disjoint i64 %i.av, %i.au
  store i64 %i.aw, ptr %i.t, align 8
  %i.ax = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.59, i64 9) #16
  %i.ay = load i64, ptr %i.t, align 8
  %i.az = select i1 %i.ax, i64 64, i64 0
  %i.ba = and i64 %i.ay, -65
  %i.bb = or disjoint i64 %i.ba, %i.az
  store i64 %i.bb, ptr %i.t, align 8
  %i.bc = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.60, i64 9) #16
  %i.bd = load i64, ptr %i.t, align 8
  %i.be = select i1 %i.bc, i64 128, i64 0
  %i.bf = and i64 %i.bd, -129
  %i.bg = or disjoint i64 %i.bf, %i.be
  store i64 %i.bg, ptr %i.t, align 8
  %i.bh = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.61, i64 9) #16
  %i.bi = load i64, ptr %i.t, align 8
  %i.bj = select i1 %i.bh, i64 256, i64 0
  %i.bk = and i64 %i.bi, -257
  %i.bl = or disjoint i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %i.t, align 8
  %i.bm = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.62, i64 8) #16
  %i.bn = load i64, ptr %i.t, align 8
  %i.bo = select i1 %i.bm, i64 512, i64 0
  %i.bp = and i64 %i.bn, -513
  %i.bq = or disjoint i64 %i.bp, %i.bo
  store i64 %i.bq, ptr %i.t, align 8
  %i.br = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.63, i64 9) #16
  %i.bs = load i64, ptr %i.t, align 8
  %i.bt = select i1 %i.br, i64 1024, i64 0
  %i.bu = and i64 %i.bs, -1025
  %i.bv = or disjoint i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %i.t, align 8
  %i.bw = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.64, i64 6) #16
  %i.bx = load i64, ptr %i.t, align 8
  %i.by = select i1 %i.bw, i64 2048, i64 0
  %i.bz = and i64 %i.bx, -2049
  %i.ca = or disjoint i64 %i.bz, %i.by
  store i64 %i.ca, ptr %i.t, align 8
  %i.cb = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.65, i64 5) #16
  %i.cc = load i64, ptr %i.t, align 8
  %i.cd = select i1 %i.cb, i64 4096, i64 0
  %i.ce = and i64 %i.cc, -4097
  %i.cf = or disjoint i64 %i.ce, %i.cd
  store i64 %i.cf, ptr %i.t, align 8
  %i.cg = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.66, i64 6) #16
  %i.ch = load i64, ptr %i.t, align 8
  %i.ci = select i1 %i.cg, i64 8192, i64 0
  %i.cj = and i64 %i.ch, -8193
  %i.ck = or disjoint i64 %i.cj, %i.ci
  store i64 %i.ck, ptr %i.t, align 8
  %i.cl = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.67, i64 13) #16
  %i.cm = load i64, ptr %i.t, align 8
  %i.cn = select i1 %i.cl, i64 16384, i64 0
  %i.co = and i64 %i.cm, -16385
  %i.cp = or disjoint i64 %i.co, %i.cn
  store i64 %i.cp, ptr %i.t, align 8
  %i.cq = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.68, i64 14) #16
  br i1 %i.cq, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !322, !range !110, !noundef !111
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cu = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.69, i64 12) #16
  %i.cv = select i1 %i.cu, i64 1048576, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.cw = phi i64 [ 0, %bb.a ], [ 1048576, %bb.b ], [ %i.cv, %bb.c ]
  %i.cx = load i64, ptr %i.t, align 8
  %i.cy = and i64 %i.cx, -1048577
  %i.cz = or disjoint i64 %i.cy, %i.cw
  store i64 %i.cz, ptr %i.t, align 8
  %i.da = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.70, i64 27) #16
  %i.db = load i64, ptr %i.t, align 8
  %i.dc = select i1 %i.da, i64 2097152, i64 0
  %i.dd = and i64 %i.db, -2097153
  %i.de = or disjoint i64 %i.dd, %i.dc
  store i64 %i.de, ptr %i.t, align 8
  %i.df = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.71, i64 12) #16
  %i.dg = load i64, ptr %i.t, align 8
  %i.dh = select i1 %i.df, i64 4194304, i64 0
  %i.di = and i64 %i.dg, -4194305
  %i.dj = or disjoint i64 %i.di, %i.dh
  store i64 %i.dj, ptr %i.t, align 8
  %i.dk = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.72, i64 12) #16
  %i.dl = load i64, ptr %i.t, align 8
  %i.dm = select i1 %i.dk, i64 8388608, i64 0
  %i.dn = and i64 %i.dl, -8388609
  %i.do = or disjoint i64 %i.dn, %i.dm
  store i64 %i.do, ptr %i.t, align 8
  %i.dp = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.73, i64 18) #16
  %i.dq = load i64, ptr %i.t, align 8
  %i.dr = select i1 %i.dp, i64 16777216, i64 0
  %i.ds = and i64 %i.dq, -16777217
  %i.dt = or disjoint i64 %i.ds, %i.dr
  store i64 %i.dt, ptr %i.t, align 8
  %i.du = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.74, i64 12) #16
  %i.dv = load i64, ptr %i.t, align 8
  %i.dw = select i1 %i.du, i64 33554432, i64 0
  %i.dx = and i64 %i.dv, -33554433
  %i.dy = or disjoint i64 %i.dx, %i.dw
  store i64 %i.dy, ptr %i.t, align 8
  %i.dz = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.75, i64 18) #16
  %i.ea = load i64, ptr %i.t, align 8
  %i.eb = select i1 %i.dz, i64 67108864, i64 0
  %i.ec = and i64 %i.ea, -67108865
  %i.ed = or disjoint i64 %i.ec, %i.eb
  store i64 %i.ed, ptr %i.t, align 8
  %i.ee = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.76, i64 15) #16
  %i.ef = load i64, ptr %i.t, align 8
  %i.eg = select i1 %i.ee, i64 134217728, i64 0
  %i.eh = and i64 %i.ef, -134217729
  %i.ei = or disjoint i64 %i.eh, %i.eg
  store i64 %i.ei, ptr %i.t, align 8
  %i.ej = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.77, i64 10) #16
  %i.ek = load i64, ptr %i.t, align 8
  %i.el = select i1 %i.ej, i64 268435456, i64 0
  %i.em = and i64 %i.ek, -268435457
  %i.en = or disjoint i64 %i.em, %i.el
  store i64 %i.en, ptr %i.t, align 8
  %i.eo = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.78, i64 15) #16
  %i.ep = load i64, ptr %i.t, align 8
  %i.eq = select i1 %i.eo, i64 536870912, i64 0
  %i.er = and i64 %i.ep, -536870913
  %i.es = or disjoint i64 %i.er, %i.eq
  store i64 %i.es, ptr %i.t, align 8
  %i.et = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.79, i64 13) #16
  %i.eu = load i64, ptr %i.t, align 8
  %i.ev = select i1 %i.et, i64 274877906944, i64 0
  %i.ew = and i64 %i.eu, -274877906945
  %i.ex = or disjoint i64 %i.ew, %i.ev
  store i64 %i.ex, ptr %i.t, align 8
  %i.ey = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.80, i64 15) #16
  %i.ez = load i64, ptr %i.t, align 8
  %i.fa = select i1 %i.ey, i64 549755813888, i64 0
  %i.fb = and i64 %i.ez, -549755813889
  %i.fc = or disjoint i64 %i.fb, %i.fa
  store i64 %i.fc, ptr %i.t, align 8
  %i.fd = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.81, i64 14) #16
  %i.fe = load i64, ptr %i.t, align 8
  %i.ff = select i1 %i.fd, i64 1099511627776, i64 0
  %i.fg = and i64 %i.fe, -1099511627777
  %i.fh = or disjoint i64 %i.fg, %i.ff
  store i64 %i.fh, ptr %i.t, align 8
  %i.fi = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.82, i64 12) #16
  %i.fj = load i64, ptr %i.t, align 8
  %i.fk = select i1 %i.fi, i64 2199023255552, i64 0
  %i.fl = and i64 %i.fj, -2199023255553
  %i.fm = or disjoint i64 %i.fl, %i.fk
  store i64 %i.fm, ptr %i.t, align 8
  %i.fn = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.83, i64 19) #16
  %i.fo = load i64, ptr %i.t, align 8
  %i.fp = select i1 %i.fn, i64 4398046511104, i64 0
  %i.fq = and i64 %i.fo, -4398046511105
  %i.fr = or disjoint i64 %i.fq, %i.fp
  store i64 %i.fr, ptr %i.t, align 8
  %i.fs = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.84, i64 20) #16
  %i.ft = load i64, ptr %i.t, align 8
  %i.fu = select i1 %i.fs, i64 8796093022208, i64 0
  %i.fv = and i64 %i.ft, -8796093022209
  %i.fw = or disjoint i64 %i.fv, %i.fu
  store i64 %i.fw, ptr %i.t, align 8
  %i.fx = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.85, i64 18) #16
  %i.fy = load i64, ptr %i.t, align 8
  %i.fz = select i1 %i.fx, i64 70368744177664, i64 0
  %i.ga = and i64 %i.fy, -70368744177665
  %i.gb = or disjoint i64 %i.ga, %i.fz
  store i64 %i.gb, ptr %i.t, align 8
  %i.gc = tail call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.86, i64 15) #16
  %i.gd = load i64, ptr %i.t, align 8
  %i.ge = select i1 %i.gc, i64 140737488355328, i64 0
  %i.gf = and i64 %i.gd, -140737488355329
  %i.gg = or disjoint i64 %i.gf, %i.ge
  store i64 %i.gg, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.gh = call noundef zeroext i1 @_ZNK4llvm6Record20getValueAsBitOrUnsetENS_9StringRefERb(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.87, i64 7, ptr noundef nonnull align 1 dereferenceable(1) %i.b) #16
  %i.gi = load i64, ptr %i.t, align 8
  %i.gj = select i1 %i.gh, i64 32768, i64 0
  %i.gk = and i64 %i.gi, -98305
  %i.gl = or disjoint i64 %i.gk, %i.gj
  %i.gm = load i8, ptr %i.b, align 1, !tbaa !323, !range !110, !noundef !111
  %i.gn = zext nneg i8 %i.gm to i64
  %i.go = shl nuw nsw i64 %i.gn, 16
  %i.gp = or disjoint i64 %i.gl, %i.go
  store i64 %i.gp, ptr %i.t, align 8
  %i.gq = call noundef zeroext i1 @_ZNK4llvm6Record20getValueAsBitOrUnsetENS_9StringRefERb(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.88, i64 8, ptr noundef nonnull align 1 dereferenceable(1) %i.b) #16
  %i.gr = load i64, ptr %i.t, align 8
  %i.gs = select i1 %i.gq, i64 131072, i64 0
  %i.gt = and i64 %i.gr, -393217
  %i.gu = or disjoint i64 %i.gt, %i.gs
  %i.gv = load i8, ptr %i.b, align 1, !tbaa !323, !range !110, !noundef !111
  %i.gw = zext nneg i8 %i.gv to i64
  %i.gx = shl nuw nsw i64 %i.gw, 18
  %i.gy = or disjoint i64 %i.gu, %i.gx
  store i64 %i.gy, ptr %i.t, align 8
  %i.gz = call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.89, i64 19) #16
  %i.ha = load i64, ptr %i.t, align 8
  %i.hb = select i1 %i.gz, i64 524288, i64 0
  %i.hc = and i64 %i.ha, -524289
  %i.hd = or disjoint i64 %i.hc, %i.hb
  store i64 %i.hd, ptr %i.t, align 8
  %i.he = call noundef zeroext i1 @_ZNK4llvm6Record20getValueAsBitOrUnsetENS_9StringRefERb(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.90, i64 14, ptr noundef nonnull align 1 dereferenceable(1) %i.b) #16
  %i.hf = load i64, ptr %i.t, align 8
  %i.hg = select i1 %i.he, i64 1073741824, i64 0
  %i.hh = and i64 %i.hf, -3221225473
  %i.hi = or disjoint i64 %i.hh, %i.hg
  %i.hj = load i8, ptr %i.b, align 1, !tbaa !323, !range !110, !noundef !111
  %i.hk = zext nneg i8 %i.hj to i64
  %i.hl = shl nuw nsw i64 %i.hk, 31
  %i.hm = or disjoint i64 %i.hi, %i.hl
  store i64 %i.hm, ptr %i.t, align 8
  %i.hn = call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.91, i64 16) #16
  %i.ho = load i64, ptr %i.t, align 8
  %i.hp = select i1 %i.hn, i64 4294967296, i64 0
  %i.hq = and i64 %i.ho, -4294967297
  %i.hr = or disjoint i64 %i.hq, %i.hp
  store i64 %i.hr, ptr %i.t, align 8
  %i.hs = call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.92, i64 22) #16
  %i.ht = load i64, ptr %i.t, align 8
  %i.hu = select i1 %i.hs, i64 8589934592, i64 0
  %i.hv = and i64 %i.ht, -8589934593
  %i.hw = or disjoint i64 %i.hv, %i.hu
  store i64 %i.hw, ptr %i.t, align 8
  %i.hx = call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.93, i64 22) #16
  %i.hy = load i64, ptr %i.t, align 8
  %i.hz = select i1 %i.hx, i64 17179869184, i64 0
  %i.ia = and i64 %i.hy, -17179869185
  %i.ib = or disjoint i64 %i.ia, %i.hz
  store i64 %i.ib, ptr %i.t, align 8
  %i.ic = call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.94, i64 13) #16
  %i.id = load i64, ptr %i.t, align 8
  %i.ie = select i1 %i.ic, i64 34359738368, i64 0
  %i.if = and i64 %i.id, -34359738369
  %i.ig = or disjoint i64 %i.if, %i.ie
  store i64 %i.ig, ptr %i.t, align 8
  %i.ih = call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.95, i64 8) #16
  %i.ii = load i64, ptr %i.t, align 8
  %i.ij = select i1 %i.ih, i64 68719476736, i64 0
  %i.ik = and i64 %i.ii, -68719476737
  %i.il = or disjoint i64 %i.ik, %i.ij
  store i64 %i.il, ptr %i.t, align 8
  %i.im = call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.96, i64 6) #16
  %i.in = load i64, ptr %i.t, align 8
  %i.io = select i1 %i.im, i64 137438953472, i64 0
  %i.ip = and i64 %i.in, -137438953473
  %i.iq = or disjoint i64 %i.ip, %i.io
  store i64 %i.iq, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #16
  call void @_ZNK4llvm6Record20getValueAsListOfDefsENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.79") align 8 %72, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.97, i64 4) #16
  %i.ir = load ptr, ptr %i.f, align 8, !tbaa !324 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !325
  %i.iu = load <2 x ptr>, ptr %72, align 16, !tbaa !145
  store <2 x ptr> %i.iu, ptr %i.f, align 8, !tbaa !145
  %i.iv = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 16, !tbaa !325
  store ptr %i.iw, ptr %i.is, align 8, !tbaa !325
  %.not.i.i.i.i.i = icmp eq ptr %i.ir, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %72, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit, label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EEaSEOS5_.exit

_ZNSt6vectorIPKN4llvm6RecordESaIS3_EEaSEOS5_.exit: ; preds = %bb.d
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = ptrtoint ptr %i.ir to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.ir, i64 noundef %i.iz) #18
  %.pr = load ptr, ptr %72, align 16, !tbaa !324  ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EEaSEOS5_.exit
  %i.ja = load ptr, ptr %i.iv, align 16, !tbaa !325
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = ptrtoint ptr %.pr to i64
  %i.jd = sub i64 %i.jb, %i.jc
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.jd) #18
  br label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit:   ; preds = %bb.d, %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EEaSEOS5_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #16
  call void @_ZNK4llvm6Record20getValueAsListOfDefsENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.79") align 8 %73, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.98, i64 4) #16
  %i.je = load ptr, ptr %i.g, align 8, !tbaa !324 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !325
  %i.jh = load <2 x ptr>, ptr %73, align 16, !tbaa !145
  store <2 x ptr> %i.jh, ptr %i.g, align 8, !tbaa !145
  %i.ji = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 16, !tbaa !325
  store ptr %i.jj, ptr %i.jf, align 8, !tbaa !325
  %.not.i.i.i.i.i62 = icmp eq ptr %i.je, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %73, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i62, label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit65, label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EEaSEOS5_.exit63

_ZNSt6vectorIPKN4llvm6RecordESaIS3_EEaSEOS5_.exit63: ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit
  %i.jk = ptrtoint ptr %i.jg to i64
  %i.jl = ptrtoint ptr %i.je to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef %i.jm) #18
  %.pr192 = load ptr, ptr %73, align 16, !tbaa !324 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %.pr192, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit65, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EEaSEOS5_.exit63
  %i.jn = load ptr, ptr %i.ji, align 16, !tbaa !325
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = ptrtoint ptr %.pr192 to i64
  %i.jq = sub i64 %i.jo, %i.jp
  call void @_ZdlPvm(ptr noundef nonnull %.pr192, i64 noundef %i.jq) #18
  br label %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit65

_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit65: ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit, %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EEaSEOS5_.exit63, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #16
  %i.jr = load i64, ptr %i.t, align 8
  %i.js = and i64 %i.jr, -52776558133249
  store i64 %i.js, ptr %i.t, align 8
  %i.jt = call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nonnull @.str.99, i64 11) #16 ; 2 uses
  %i.ju = extractvalue { ptr, i64 } %i.jt, 0
  %i.jv = extractvalue { ptr, i64 } %i.jt, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %71)
  store ptr %i.ju, ptr %71, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 2 uses
  store i64 %i.jv, ptr %i.jw, align 8
  %i.jx = icmp eq i64 %i.jv, 0
  br i1 %i.jx, label %_ZL16ParseConstraintsN4llvm9StringRefERNS_14CGIOperandListEPKNS_6RecordE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN4llvm6RecordESaIS3_EED2Ev.exit65
  %i.jy = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %71, ptr nonnull @.str.105, i64 1, i64 noundef 0) #16 ; 2 uses
  %.not49.i = icmp eq i64 %i.jy, -1
  br i1 %.not49.i, label %_ZL16ParseConstraintsN4llvm9StringRefERNS_14CGIOperandListEPKNS_6RecordE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZL15ParseConstraintN4llvm9StringRefERNS_14CGIOperandListEPKNS_6RecordE.exit.i, %.lr.ph.i
  %.050.i = phi i64 [ %i.jy, %.lr.ph.i ], [ %i.uh, %_ZL15ParseConstraintN4llvm9StringRefERNS_14CGIOperandListEPKNS_6RecordE.exit.i ] ; 3 uses
  %i.ke = call noundef i64 @_ZNK4llvm9StringRef13find_first_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %71, ptr nonnull @.str.105, i64 1, i64 noundef %.050.i) #16 ; 2 uses
  %i.kf = icmp eq i64 %i.ke, -1
  %i.kg = load i64, ptr %i.jw, align 8            ; 3 uses
  %spec.select.i = select i1 %i.kf, i64 %i.kg, i64 %i.ke ; 2 uses
  %i.kh = sub i64 %spec.select.i, %.050.i
  %.sroa.speculated4.i.i = call i64 @llvm.umin.i64(i64 %i.kg, i64 %.050.i) ; 2 uses
  %i.ki = load ptr, ptr %71, align 8, !tbaa !96
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.sroa.speculated4.i.i
  %i.kk = sub i64 %i.kg, %.sroa.speculated4.i.i
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.kk, i64 %i.kh)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.kj, ptr %2, align 8
  store i64 %.sroa.speculated.i.i, ptr %i.jz, align 8
  %i.kl = call noundef i64 @_ZNK4llvm9StringRef13find_first_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.106, i64 2, i64 noundef 0) #16 ; 2 uses
  %i.km = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.106, i64 2, i64 noundef 0) #16 ; 2 uses
  %i.kn = sub i64 %i.kl, %i.km
  %i.ko = load i64, ptr %i.jz, align 8, !tbaa !97 ; 6 uses
  %.sroa.speculated4.i.i.i = call i64 @llvm.umin.i64(i64 %i.ko, i64 %i.km) ; 2 uses
  %i.kp = load ptr, ptr %2, align 8, !tbaa !96    ; 4 uses
  %i.kq = sub nuw i64 %i.ko, %.sroa.speculated4.i.i.i
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.kq, i64 %i.kn)
  %.not.i.i.i66 = icmp eq i64 %.sroa.speculated.i.i.i, 13
  br i1 %.not.i.i.i66, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread274.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i:            ; preds = %bb.h
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 %.sroa.speculated4.i.i.i ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 1
  %i.kt = xor i64 %i.ks, 7810219685472986432
  %i.ku = getelementptr i8, ptr %i.kr, i64 5
  %i.kv = load i64, ptr %i.ku, align 1
  %i.kw = xor i64 %i.kv, 8243102867887252345
  %i.kx = or i64 %i.kt, %i.kw
  %i.ky = icmp ne i64 %i.kx, 0
  %i.kz = zext i1 %i.ky to i32
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread274.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.lb = add i64 %i.kl, 1
  %.sroa.speculated4.i176.i.i = call i64 @llvm.umin.i64(i64 %i.ko, i64 %i.lb) ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kp, i64 %.sroa.speculated4.i176.i.i
  %i.ld = sub nuw i64 %i.ko, %.sroa.speculated4.i176.i.i
  store ptr %i.lc, ptr %3, align 8
  store i64 %i.ld, ptr %i.kd, align 8
  %i.le = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull @.str.106, i64 2, i64 noundef 0) #16 ; 2 uses
  %i.lf = icmp eq i64 %i.le, -1
  br i1 %i.lf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !75
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !76
  %i.lk = zext i32 %i.lj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.ll = load ptr, ptr %1, align 8, !tbaa !70    ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.lm, align 8, !tbaa !74
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !72
  %i.ln = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.ln, align 8, !tbaa !79, !alias.scope !326
  %i.lo = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 5, ptr %i.lo, align 1, !tbaa !80, !alias.scope !326
  store ptr @.str.108, ptr %7, align 8, !tbaa !81, !alias.scope !326
end_hunk_0
