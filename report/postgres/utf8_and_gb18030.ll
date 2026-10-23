Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/utf8_and_gb18030?download=true
inline.NumInlined: 75
inline.NumDeleted: 8
begin_hunk_0_@conv_18030_to_utf8:bb.a
  %i.cu = lshr i32 %0, 8
  %i.cv = and i32 %i.cu, 255
  %i.cw = and i32 %0, 255
  %i.cx = mul nuw nsw i32 %i.cv, 10
  %i.cy = add nuw nsw i32 %i.cw, 14671
  %i.cz = add nuw nsw i32 %i.cy, %i.cx            ; 3 uses
  %i.da = shl nuw nsw i32 %i.cz, 4
  %i.db = and i32 %i.da, 458752
  %i.dc = shl nuw nsw i32 %i.cz, 2
  %i.dd = and i32 %i.dc, 16128
  %i.de = and i32 %i.cz, 63
  %i.df = or disjoint i32 %i.de, %i.dd
  %i.dg = or disjoint i32 %i.df, %i.db
  %i.dh = or disjoint i32 %i.dg, 14712960
  br label %unicode_to_utf8word.exit

bb.u:                                             ; preds = %bb.s
  %i.di = add i32 %0, 2110545095
  %or.cond11 = icmp ult i32 %i.di, 9721
  br i1 %or.cond11, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dj = lshr i32 %0, 8
  %i.dk = and i32 %i.dj, 255
  %i.dl = and i32 %0, 255
  %i.dm = mul nuw nsw i32 %i.dk, 10
  %i.dn = add nuw nsw i32 %i.dl, 15936
  %i.do = add nuw nsw i32 %i.dn, %i.dm
  %i.dp = tail call fastcc i32 @unicode_to_utf8word(i32 noundef %i.do)
  br label %unicode_to_utf8word.exit

bb.w:                                             ; preds = %bb.u
  %i.dq = add i32 %0, 2110527432
  %or.cond13 = icmp ult i32 %i.dq, 44545
  br i1 %or.cond13, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dr = lshr i32 %0, 16
  %i.ds = and i32 %i.dr, 55
  %i.dt = lshr i32 %0, 8
  %i.du = and i32 %i.dt, 255
  %i.dv = and i32 %0, 255
  %i.dw = mul nuw nsw i32 %i.ds, 1260
  %i.dx = mul nuw nsw i32 %i.du, 10
  %i.dy = add nuw nsw i32 %i.dv, -48318
  %i.dz = add nsw i32 %i.dy, %i.dw
  %i.ea = add nuw nsw i32 %i.dz, %i.dx
  %i.eb = tail call fastcc i32 @unicode_to_utf8word(i32 noundef %i.ea)
  br label %unicode_to_utf8word.exit

bb.y:                                             ; preds = %bb.w
  %i.ec = add i32 %0, 2110480079
  %or.cond15 = icmp ult i32 %i.ec, 17923
  br i1 %or.cond15, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ed = lshr i32 %0, 8
  %i.ee = and i32 %i.ed, 255
  %i.ef = and i32 %0, 255
  %i.eg = mul nuw nsw i32 %i.ee, 10
  %i.eh = add nuw nsw i32 %i.ef, 17213
  %i.ei = add nuw nsw i32 %i.eh, %i.eg
  %i.ej = tail call fastcc i32 @unicode_to_utf8word(i32 noundef %i.ei)
  br label %unicode_to_utf8word.exit

bb.aa:                                            ; preds = %bb.y
  %i.ek = add i32 %0, 2110419149
  %or.cond17 = icmp ult i32 %i.ek, 16857094
  br i1 %or.cond17, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.el = lshr i32 %0, 24
  %i.em = lshr i32 %0, 16
  %i.en = and i32 %i.em, 255
  %i.eo = lshr i32 %0, 8
  %i.ep = and i32 %i.eo, 255
  %i.eq = and i32 %0, 255
  %i.er = mul nuw nsw i32 %i.el, 12600
  %i.es = mul nuw nsw i32 %i.en, 1260
  %i.et = mul nuw nsw i32 %i.ep, 10
  %i.eu = add nuw nsw i32 %i.eq, -1665391
  %i.ev = add nuw nsw i32 %i.eu, %i.er
  %i.ew = add nsw i32 %i.ev, %i.es
  %i.ex = add nsw i32 %i.ew, %i.et
  %i.ey = tail call fastcc i32 @unicode_to_utf8word(i32 noundef %i.ex)
  br label %unicode_to_utf8word.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ez = add i32 %0, 2093559760
  %or.cond19 = icmp ult i32 %i.ez, 16364805
  br i1 %or.cond19, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fa = lshr i32 %0, 24
  %i.fb = lshr i32 %0, 16
  %i.fc = and i32 %i.fb, 255
  %i.fd = lshr i32 %0, 8
  %i.fe = and i32 %i.fd, 255
  %i.ff = and i32 %0, 255
  %i.fg = mul nuw nsw i32 %i.fa, 12600
  %i.fh = mul nuw nsw i32 %i.fc, 1260
  %i.fi = mul nuw nsw i32 %i.fe, 10
  %i.fj = add nuw nsw i32 %i.ff, -1661275
  %i.fk = add nsw i32 %i.fj, %i.fg
  %i.fl = add nsw i32 %i.fk, %i.fh
  %i.fm = add nsw i32 %i.fl, %i.fi
  %i.fn = tail call fastcc i32 @unicode_to_utf8word(i32 noundef %i.fm)
  br label %unicode_to_utf8word.exit

bb.ae:                                            ; preds = %bb.ac
  %i.fo = add i32 %0, 2077189064
  %or.cond21 = icmp ult i32 %i.fo, 59648
  br i1 %or.cond21, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fp = lshr i32 %0, 16
  %i.fq = and i32 %i.fp, 49
  %i.fr = lshr i32 %0, 8
  %i.fs = and i32 %i.fr, 255
  %i.ft = and i32 %0, 255
  %i.fu = mul nuw nsw i32 %i.fq, 1260
  %i.fv = mul nuw nsw i32 %i.fs, 10
  %i.fw = add nuw nsw i32 %i.ft, 1946
  %i.fx = add nuw nsw i32 %i.fw, %i.fu
  %i.fy = add nuw nsw i32 %i.fx, %i.fv
  %i.fz = tail call fastcc i32 @unicode_to_utf8word(i32 noundef %i.fy)
  br label %unicode_to_utf8word.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ga = add i32 %0, 2077121996
  %or.cond23 = icmp ult i32 %i.ga, 518
  br i1 %or.cond23, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gb = lshr i32 %0, 8
  %i.gc = and i32 %i.gb, 167
  %i.gd = and i32 %0, 255
  %i.ge = mul nuw nsw i32 %i.gc, 10
  %i.gf = add nuw nsw i32 %i.gd, 63838
  %i.gg = add nuw nsw i32 %i.gf, %i.ge
  %i.gh = tail call fastcc i32 @unicode_to_utf8word(i32 noundef %i.gg)
  br label %unicode_to_utf8word.exit

bb.ai:                                            ; preds = %bb.ag
  %i.gi = add i32 %0, 1875869392
  %or.cond25 = icmp ult i32 %i.gi, 1392646406
  br i1 %or.cond25, label %bb.aj, label %unicode_to_utf8word.exit

bb.aj:                                            ; preds = %bb.ai
  %i.gj = lshr i32 %0, 24
  %i.gk = lshr i32 %0, 16
  %i.gl = and i32 %i.gk, 255
  %i.gm = lshr i32 %0, 8
  %i.gn = and i32 %i.gm, 255
  %i.go = and i32 %0, 255
  %i.gp = mul nuw nsw i32 %i.gj, 12600
  %i.gq = mul nuw nsw i32 %i.gl, 1260
  %i.gr = mul nuw nsw i32 %i.gn, 10
  %i.gs = add nuw nsw i32 %i.go, -1810682
  %i.gt = add nsw i32 %i.gs, %i.gp
  %i.gu = add nuw nsw i32 %i.gt, %i.gq
  %i.gv = add nuw nsw i32 %i.gu, %i.gr
  %i.gw = tail call fastcc i32 @unicode_to_utf8word(i32 noundef %i.gv)
  br label %unicode_to_utf8word.exit

unicode_to_utf8word.exit:                         ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d, %bb.b, %bb.ai, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v
  %.0 = phi i32 [ 0, %bb.ai ], [ %i.k, %bb.b ], [ %i.aq, %bb.i ], [ %i.cs, %bb.r ], [ %i.dh, %bb.t ], [ %i.dp, %bb.v ], [ %i.eb, %bb.x ], [ %i.ej, %bb.z ], [ %i.ey, %bb.ab ], [ %i.fn, %bb.ad ], [ %i.fz, %bb.af ], [ %i.gh, %bb.ah ], [ %i.gw, %bb.aj ], [ %i.ae, %bb.g ], [ %i.r, %bb.d ], [ %i.aa, %bb.f ], [ %i.bk, %bb.n ], [ %i.ax, %bb.k ], [ %i.bg, %bb.m ], [ %i.bz, %bb.p ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i64 -2147483648, 2147483648) i64 @utf8_to_gb18030(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.h, align 8
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp ne i64 %i.l, 0
  %i.n = load i64, ptr %i.a, align 8
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i64, ptr %i.p, align 8
  %i.r = trunc i64 %i.q to i32
  tail call void @check_encoding_conversion_args(i32 noundef %i.o, i32 noundef %i.r, i32 noundef %i.j, i32 noundef 6, i32 noundef 39) #4
  %i.s = tail call i32 @UtfToLocal(ptr noundef %i.d, i32 noundef %i.j, ptr noundef %i.g, ptr noundef nonnull @gb18030_from_unicode_tree, ptr noundef null, i32 noundef 0, ptr noundef nonnull @conv_utf8_to_18030, i32 noundef 39, i1 noundef zeroext %i.m) #4
  %i.t = sext i32 %i.s to i64
  ret i64 %i.t
}

declare i32 @UtfToLocal(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i32 -2127527888, 1) i32 @conv_utf8_to_18030(i32 noundef %0) #0 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %utf8word_to_unicode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 65536
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = lshr i32 %0, 2
  %i.d = and i32 %i.c, 1984
  %i.e = and i32 %0, 63
  %i.f = or disjoint i32 %i.d, %i.e
  br label %utf8word_to_unicode.exit

bb.d:                                             ; preds = %bb.b
  %i.g = icmp ult i32 %0, 16777216
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = lshr i32 %0, 4
  %i.i = and i32 %i.h, 61440
  %i.j = lshr i32 %0, 2
  %i.k = and i32 %i.j, 4032
  %i.l = and i32 %0, 63
  %i.m = or disjoint i32 %i.k, %i.l
  %i.n = or disjoint i32 %i.m, %i.i
  br label %utf8word_to_unicode.exit

bb.f:                                             ; preds = %bb.d
  %i.o = lshr i32 %0, 6
  %i.p = and i32 %i.o, 1835008
  %i.q = lshr i32 %0, 4
  %i.r = and i32 %i.q, 258048
  %i.s = lshr i32 %0, 2
  %i.t = and i32 %i.s, 4032
  %i.u = and i32 %0, 63
  %i.v = or disjoint i32 %i.r, %i.u
  %i.w = or disjoint i32 %i.v, %i.p
  %i.x = or disjoint i32 %i.w, %i.t
  br label %utf8word_to_unicode.exit

utf8word_to_unicode.exit:                         ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.x, %bb.f ], [ %i.f, %bb.c ], [ %i.n, %bb.e ], [ %0, %bb.a ] ; 26 uses
  %i.y = add nsw i32 %.0.i, -1106
  %or.cond = icmp ult i32 %i.y, 7102
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %utf8word_to_unicode.exit
  %i.z = trunc nuw nsw i32 %.0.i to i16
  %.lhs.trunc = add nsw i16 %i.z, -286            ; 3 uses
  %i.aa = udiv i16 %.lhs.trunc, 1260
  %.zext = zext nneg i16 %i.aa to i32
  %i.ab = udiv i16 %.lhs.trunc, 10
  %i.ac = urem i16 %i.ab, 126
  %i.ad = urem i16 %.lhs.trunc, 10
  %.zext72 = zext nneg i16 %i.ad to i32
  %i.ae = shl nuw nsw i32 %.zext, 16
  %i.af = shl nuw nsw i16 %i.ac, 8
  %i.ag = zext nneg i16 %i.af to i32
  %i.ah = add nuw nsw i32 %i.ag, 33024
  %1 = or disjoint i32 %i.ah, %.zext72
  %i.ai = or i32 %i.ae, %1
  %i.aj = or i32 %i.ai, -2127560656
  br label %bb.af

bb.h:                                             ; preds = %utf8word_to_unicode.exit
  %i.ak = add nsw i32 %.0.i, -9795
  %or.cond3 = icmp ult i32 %i.ak, 2110
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = trunc nuw nsw i32 %.0.i to i16
  %.lhs.trunc73 = add nsw i16 %i.al, -576         ; 3 uses
  %i.am = udiv i16 %.lhs.trunc73, 1260
  %.zext74 = zext nneg i16 %i.am to i32
  %i.an = udiv i16 %.lhs.trunc73, 10
  %i.ao = urem i16 %i.an, 126
  %i.ap = urem i16 %.lhs.trunc73, 10
  %.zext80 = zext nneg i16 %i.ap to i32
  %i.aq = shl nuw nsw i32 %.zext74, 16
  %i.ar = shl nuw nsw i16 %i.ao, 8
  %i.as = zext nneg i16 %i.ar to i32
  %i.at = add nuw nsw i32 %i.as, 33024
  %2 = or disjoint i32 %i.at, %.zext80
  %i.au = or i32 %i.aq, %2
  %i.av = or i32 %i.au, -2127560656
  br label %bb.af

bb.j:                                             ; preds = %bb.h
  %i.aw = add nsw i32 %.0.i, -13851
  %or.cond5 = icmp ult i32 %i.aw, 765
  br i1 %or.cond5, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = trunc nuw nsw i32 %.0.i to i16
  %.lhs.trunc81 = add nsw i16 %i.ax, -878         ; 3 uses
  %i.ay = udiv i16 %.lhs.trunc81, 1260
  %.zext82 = zext nneg i16 %i.ay to i32
  %i.az = udiv i16 %.lhs.trunc81, 10
  %i.ba = urem i16 %i.az, 126
  %i.bb = urem i16 %.lhs.trunc81, 10
  %.zext88 = zext nneg i16 %i.bb to i32
  %i.bc = shl nuw nsw i32 %.zext82, 16
  %i.bd = add nuw i32 %i.bc, 2146828288
  %i.be = shl nuw nsw i16 %i.ba, 8
  %i.bf = zext nneg i16 %i.be to i32
  %i.bg = add nuw nsw i32 %i.bf, 33024
  %i.bh = or disjoint i32 %i.bg, %.zext88
  %i.bi = or i32 %i.bd, %i.bh
  %i.bj = or i32 %i.bi, -2110783440
  br label %bb.af

bb.l:                                             ; preds = %bb.j
  %i.bk = add nsw i32 %.0.i, -15585
  %or.cond7 = icmp ult i32 %i.bk, 885
  br i1 %or.cond7, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bl = trunc nuw nsw i32 %.0.i to i16
  %.lhs.trunc89 = add nsw i16 %i.bl, -887         ; 3 uses
  %i.bm = udiv i16 %.lhs.trunc89, 1260
  %.zext90 = zext nneg i16 %i.bm to i32
  %i.bn = udiv i16 %.lhs.trunc89, 10
  %i.bo = urem i16 %i.bn, 126
  %i.bp = urem i16 %.lhs.trunc89, 10
  %.zext96 = zext nneg i16 %i.bp to i32
  %i.bq = shl nuw nsw i32 %.zext90, 16
  %i.br = add nuw i32 %i.bq, 2146828288
  %i.bs = shl nuw nsw i16 %i.bo, 8
  %i.bt = zext nneg i16 %i.bs to i32
  %i.bu = add nuw nsw i32 %i.bt, 33024
  %i.bv = or disjoint i32 %i.bu, %.zext96
  %i.bw = or i32 %i.br, %i.bv
  %i.bx = or i32 %i.bw, -2110783440
  br label %bb.af

bb.n:                                             ; preds = %bb.l
  %i.by = add nsw i32 %.0.i, -16736
  %or.cond9 = icmp ult i32 %i.by, 471
  br i1 %or.cond9, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bz = trunc nuw nsw i32 %.0.i to i16
  %.lhs.trunc97 = add nsw i16 %i.bz, -889         ; 3 uses
  %i.ca = udiv i16 %.lhs.trunc97, 1260
  %.zext98 = zext nneg i16 %i.ca to i32
  %i.cb = udiv i16 %.lhs.trunc97, 10
  %i.cc = urem i16 %i.cb, 126
  %i.cd = urem i16 %.lhs.trunc97, 10
  %.zext104 = zext nneg i16 %i.cd to i32
  %i.ce = shl nuw nsw i32 %.zext98, 16
  %i.cf = add nuw i32 %i.ce, 2146828288
  %i.cg = shl nuw nsw i16 %i.cc, 8
  %i.ch = zext nneg i16 %i.cg to i32
  %i.ci = add nuw nsw i32 %i.ch, 33024
  %i.cj = or disjoint i32 %i.ci, %.zext104
  %i.ck = or i32 %i.cf, %i.cj
  %i.cl = or i32 %i.ck, -2110783440
  br label %bb.af

bb.p:                                             ; preds = %bb.n
  %i.cm = add nsw i32 %.0.i, -17623
  %or.cond11 = icmp ult i32 %i.cm, 373
  br i1 %or.cond11, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cn = trunc nuw nsw i32 %.0.i to i16
  %.lhs.trunc105 = add nsw i16 %i.cn, -894        ; 3 uses
  %i.co = udiv i16 %.lhs.trunc105, 1260
  %.zext106 = zext nneg i16 %i.co to i32
  %i.cp = udiv i16 %.lhs.trunc105, 10
  %i.cq = urem i16 %i.cp, 126
  %i.cr = urem i16 %.lhs.trunc105, 10
  %.zext112 = zext nneg i16 %i.cr to i32
  %i.cs = shl nuw nsw i32 %.zext106, 16
  %i.ct = add nuw i32 %i.cs, 2146828288
  %i.cu = shl nuw nsw i16 %i.cq, 8
  %i.cv = zext nneg i16 %i.cu to i32
  %i.cw = add nuw nsw i32 %i.cv, 33024
  %i.cx = or disjoint i32 %i.cw, %.zext112
  %i.cy = or i32 %i.ct, %i.cx
  %i.cz = or i32 %i.cy, -2110783440
  br label %bb.af

bb.r:                                             ; preds = %bb.p
  %i.da = add nsw i32 %.0.i, -18318
  %or.cond13 = icmp ult i32 %i.da, 441
  br i1 %or.cond13, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.db = trunc nuw nsw i32 %.0.i to i16
  %.lhs.trunc113 = add nsw i16 %i.db, -900        ; 3 uses
  %i.dc = udiv i16 %.lhs.trunc113, 1260
  %.zext114 = zext nneg i16 %i.dc to i32
  %i.dd = udiv i16 %.lhs.trunc113, 10
  %i.de = urem i16 %i.dd, 126
  %i.df = urem i16 %.lhs.trunc113, 10
  %.zext120 = zext nneg i16 %i.df to i32
  %i.dg = shl nuw nsw i32 %.zext114, 16
  %i.dh = add nuw i32 %i.dg, 2146828288
  %i.di = shl nuw nsw i16 %i.de, 8
  %i.dj = zext nneg i16 %i.di to i32
  %i.dk = add nuw nsw i32 %i.dj, 33024
  %i.dl = or disjoint i32 %i.dk, %.zext120
  %i.dm = or i32 %i.dh, %i.dl
  %i.dn = or i32 %i.dm, -2110783440
  br label %bb.af

bb.t:                                             ; preds = %bb.r
  %i.do = add nsw i32 %.0.i, -18872
  %or.cond15 = icmp ult i32 %i.do, 703
  br i1 %or.cond15, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dp = trunc nuw nsw i32 %.0.i to i16
  %.lhs.trunc121 = add nsw i16 %i.dp, -911        ; 3 uses
  %i.dq = udiv i16 %.lhs.trunc121, 1260
  %.zext122 = zext nneg i16 %i.dq to i32
  %i.dr = udiv i16 %.lhs.trunc121, 10
  %i.ds = urem i16 %i.dr, 126
  %i.dt = urem i16 %.lhs.trunc121, 10
  %.zext128 = zext nneg i16 %i.dt to i32
  %i.du = shl nuw nsw i32 %.zext122, 16
  %i.dv = add nuw i32 %i.du, 2146828288
  %i.dw = shl nuw nsw i16 %i.ds, 8
  %i.dx = zext nneg i16 %i.dw to i32
  %i.dy = add nuw nsw i32 %i.dx, 33024
  %i.dz = or disjoint i32 %i.dy, %.zext128
  %i.ea = or i32 %i.dv, %i.dz
  %i.eb = or i32 %i.ea, -2110783440
  br label %bb.af

bb.v:                                             ; preds = %bb.t
  %i.ec = add nsw i32 %.0.i, -40870
  %or.cond17 = icmp ult i32 %i.ec, 14426
  br i1 %or.cond17, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ed = trunc nuw i32 %.0.i to i16
  %.lhs.trunc129 = add i16 %i.ed, -21827          ; 4 uses
  %i.ee = udiv i16 %.lhs.trunc129, 12600
  %.zext130 = zext nneg i16 %i.ee to i32
  %i.ef = udiv i16 %.lhs.trunc129, 1260
  %.lhs.trunc133 = trunc nuw nsw i16 %i.ef to i8
  %i.eg = urem i8 %.lhs.trunc133, 10
  %.zext134 = zext nneg i8 %i.eg to i32
  %i.eh = udiv i16 %.lhs.trunc129, 10
  %i.ei = urem i16 %i.eh, 126
  %i.ej = urem i16 %.lhs.trunc129, 10
  %.zext140 = zext nneg i16 %i.ej to i32
  %i.ek = shl nuw nsw i32 %.zext130, 24
  %3 = add nuw nsw i32 %i.ek, -2130706432
  %4 = shl nuw nsw i32 %.zext134, 16
  %i.el = or disjoint i32 %4, %3
  %i.em = shl nuw nsw i16 %i.ei, 8
  %i.en = zext nneg i16 %i.em to i32
  %i.eo = add nuw nsw i32 %i.en, 33024
  %5 = or disjoint i32 %i.eo, %.zext140
  %i.ep = or i32 %i.el, %5
  %i.eq = or disjoint i32 %i.ep, 3145776
  br label %bb.af

bb.x:                                             ; preds = %bb.v
  %i.er = add nsw i32 %.0.i, -59493
  %or.cond19 = icmp ult i32 %i.er, 4295
  br i1 %or.cond19, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.es = trunc nuw i32 %.0.i to i16
  %.lhs.trunc141 = add nsw i16 %i.es, -25943      ; 4 uses
  %i.et = udiv i16 %.lhs.trunc141, 12600
  %.zext142 = zext nneg i16 %i.et to i32
  %i.eu = udiv i16 %.lhs.trunc141, 1260
  %.lhs.trunc145 = trunc nuw nsw i16 %i.eu to i8
  %i.ev = urem i8 %.lhs.trunc145, 10
  %.zext146 = zext nneg i8 %i.ev to i32
  %i.ew = udiv i16 %.lhs.trunc141, 10
  %i.ex = urem i16 %i.ew, 126
  %i.ey = urem i16 %.lhs.trunc141, 10
  %.zext152 = zext nneg i16 %i.ey to i32
  %i.ez = shl nuw nsw i32 %.zext142, 24
  %6 = add nuw nsw i32 %i.ez, -2130706432
  %7 = shl nuw nsw i32 %.zext146, 16
  %i.fa = or disjoint i32 %7, %6
  %i.fb = shl nuw nsw i16 %i.ex, 8
  %i.fc = zext nneg i16 %i.fb to i32
  %i.fd = add nuw nsw i32 %i.fc, 33024
  %8 = or disjoint i32 %i.fd, %.zext152
  %i.fe = or i32 %i.fa, %8
  %i.ff = or disjoint i32 %i.fe, 3145776
  br label %bb.af

bb.z:                                             ; preds = %bb.x
  %i.fg = add nsw i32 %.0.i, -64042
  %or.cond21 = icmp ult i32 %i.fg, 1030
  br i1 %or.cond21, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fh = trunc nuw i32 %.0.i to i16
  %.lhs.trunc153 = add nsw i16 %i.fh, -25964      ; 4 uses
  %i.fi = udiv i16 %.lhs.trunc153, 12600
  %.zext154 = zext nneg i16 %i.fi to i32
  %i.fj = udiv i16 %.lhs.trunc153, 1260
  %.lhs.trunc157 = trunc nuw nsw i16 %i.fj to i8
  %i.fk = urem i8 %.lhs.trunc157, 10
  %.zext158 = zext nneg i8 %i.fk to i32
  %i.fl = udiv i16 %.lhs.trunc153, 10
  %i.fm = urem i16 %i.fl, 126
  %i.fn = urem i16 %.lhs.trunc153, 10
  %.zext164 = zext nneg i16 %i.fn to i32
  %i.fo = shl nuw nsw i32 %.zext154, 24
  %9 = add nuw nsw i32 %i.fo, -2130706432
  %10 = shl nuw nsw i32 %.zext158, 16
  %i.fp = or disjoint i32 %10, %9
  %i.fq = shl nuw nsw i16 %i.fm, 8
  %i.fr = zext nneg i16 %i.fq to i32
  %i.fs = add nuw nsw i32 %i.fr, 33024
  %11 = or disjoint i32 %i.fs, %.zext164
  %i.ft = or i32 %i.fp, %11
  %i.fu = or disjoint i32 %i.ft, 3145776
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  %i.fv = add nsw i32 %.0.i, -65510
  %or.cond23 = icmp ult i32 %i.fv, 26
  br i1 %or.cond23, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fw = trunc nuw i32 %.0.i to i16
  %.lhs.trunc171 = add nsw i16 %i.fw, -26116      ; 2 uses
  %i.fx = udiv i16 %.lhs.trunc171, 10
  %i.fy = urem i16 %i.fx, 126
  %i.fz = urem i16 %.lhs.trunc171, 10
  %.zext176 = zext nneg i16 %i.fz to i32
  %i.ga = shl nuw nsw i16 %i.fy, 8
  %i.gb = zext nneg i16 %i.ga to i32
  %i.gc = add nuw nsw i32 %i.gb, 33024
  %i.gd = or disjoint i32 %i.gc, %.zext176
  %i.ge = or i32 %i.gd, -2077163472
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.gf = add nsw i32 %.0.i, -65536
  %or.cond25 = icmp ult i32 %i.gf, 1048576
  br i1 %or.cond25, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gg = add nuw nsw i32 %.0.i, 123464           ; 4 uses
  %i.gh = udiv i32 %i.gg, 12600
  %i.gi = udiv i32 %i.gg, 1260
  %.lhs.trunc177 = trunc nuw nsw i32 %i.gi to i16
  %i.gj = urem i16 %.lhs.trunc177, 10
  %.zext178 = zext nneg i16 %i.gj to i32
  %i.gk = udiv i32 %i.gg, 10
  %i.gl = urem i32 %i.gk, 126
  %i.gm = urem i32 %i.gg, 10
  %i.gn = shl nuw nsw i32 %i.gh, 24
  %12 = add nuw nsw i32 %i.gn, -2130706432
  %13 = shl nuw nsw i32 %.zext178, 16
  %i.go = or disjoint i32 %13, %12
  %i.gp = shl nuw nsw i32 %i.gl, 8
  %i.gq = add nuw nsw i32 %i.gp, 33024
  %14 = or disjoint i32 %i.gq, %i.gm
  %i.gr = or i32 %14, %i.go
  %i.gs = or disjoint i32 %i.gr, 3145776
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g
  %.0 = phi i32 [ %i.aj, %bb.g ], [ %i.av, %bb.i ], [ %i.bj, %bb.k ], [ %i.bx, %bb.m ], [ %i.cl, %bb.o ], [ %i.cz, %bb.q ], [ %i.dn, %bb.s ], [ %i.eb, %bb.u ], [ %i.eq, %bb.w ], [ %i.ff, %bb.y ], [ %i.fu, %bb.aa ], [ %i.ge, %bb.ac ], [ %i.gs, %bb.ae ], [ 0, %bb.ad ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 -260013952, 15712192) i32 @unicode_to_utf8word(i32 noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 2048
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = shl nuw nsw i32 %0, 2
  %i.d = and i32 %i.c, 7936
  %i.e = and i32 %0, 63
  %i.f = or disjoint i32 %i.e, %i.d
  %i.g = or disjoint i32 %i.f, 49280
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, 65536
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw nsw i32 %0, 4
  %i.j = and i32 %i.i, 983040
  %i.k = shl nuw nsw i32 %0, 2
  %i.l = and i32 %i.k, 16128
  %i.m = and i32 %0, 63
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = or disjoint i32 %i.n, %i.j
  %i.p = or disjoint i32 %i.o, 14712960
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = shl i32 %0, 6
  %i.r = and i32 %i.q, 117440512
  %i.s = shl i32 %0, 4
  %i.t = and i32 %i.s, 4128768
  %i.u = shl i32 %0, 2
  %i.v = and i32 %i.u, 16128
  %i.w = and i32 %0, 63
  %i.x = or disjoint i32 %i.w, %i.t
  %i.y = or disjoint i32 %i.x, %i.r
  %i.z = or disjoint i32 %i.y, %i.v
  %i.aa = or disjoint i32 %i.z, -260013952
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.c, %bb.f, %bb.e
  %.0 = phi i32 [ %i.aa, %bb.f ], [ %i.g, %bb.c ], [ %i.p, %bb.e ], [ %0, %bb.a ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
end_hunk_0
