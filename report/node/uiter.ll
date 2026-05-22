inline.NumInlined: 23
inline.NumDeleted: 9
begin_hunk_0_@_ZL20utf8IteratorGetIndexP13UCharIterator19UCharIteratorOrigin:bb.a
  %.2145 = phi i32 [ %i.dz, %bb.ae ], [ %i.cf, %bb.ag ] ; 3 uses
  %i.ec = sext i32 %.2145 to i64
  %i.ed = getelementptr inbounds i8, ptr %i.by, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = icmp slt i8 %i.ee, -64
  br i1 %i.ef, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eg = add nsw i32 %.2145, 1
  %i.eh = icmp samesign ult i32 %.1147, 1024
  %i.ei = select i1 %i.eh, i32 1, i32 2
  br label %bb.aj

.thread265:                                       ; preds = %bb.ae, %bb.ac
  %i.ej = add nuw nsw i32 %.0142223, 1
  br label %._crit_edge

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.aa, %bb.y, %.lr.ph
  %.3149 = phi i32 [ 1, %.lr.ph ], [ %i.ei, %bb.ai ], [ 1, %bb.ah ], [ 1, %bb.af ], [ 1, %bb.aa ], [ 1, %bb.ad ], [ 1, %bb.y ], [ 1, %bb.ab ]
  %.5 = phi i32 [ %i.cf, %.lr.ph ], [ %i.eg, %bb.ai ], [ %.2145, %bb.ah ], [ %i.cf, %bb.af ], [ %i.cf, %bb.aa ], [ %i.dn, %bb.ad ], [ %i.cf, %bb.y ], [ %i.cf, %bb.ab ] ; 3 uses
  %i.ek = add nuw nsw i32 %.3149, %.0142223       ; 2 uses
  %i.el = icmp slt i32 %.5, %i.cd
  br i1 %i.el, label %.lr.ph, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.aj, %.thread265, %bb.v
  %.0143.lcssa = phi i32 [ 0, %bb.v ], [ %i.cd, %.thread265 ], [ %.5, %bb.aj ] ; 2 uses
  %.0142.lcssa = phi i32 [ 0, %bb.v ], [ %i.ej, %.thread265 ], [ %i.ek, %bb.aj ] ; 2 uses
  store i32 %.0143.lcssa, ptr %i.cc, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.en = load i32, ptr %i.em, align 8
  %.not202 = icmp ne i32 %i.en, 0
  %i.eo = sext i1 %.not202 to i32
  %i.ep = add nsw i32 %.0142.lcssa, %i.eo
  store i32 %i.ep, ptr %i.bz, align 8
  br label %bb.al

bb.ak:                                            ; preds = %bb.u
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.er = load i32, ptr %i.eq, align 8
  %.not = icmp ne i32 %i.er, 0
  %i.es = zext i1 %.not to i32
  %spec.select219 = add nuw nsw i32 %i.ca, %i.es
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge
  %.6 = phi i32 [ %.0143.lcssa, %._crit_edge ], [ %i.cd, %bb.ak ] ; 2 uses
  %.1 = phi i32 [ %.0142.lcssa, %._crit_edge ], [ %spec.select219, %bb.ak ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eu = load i32, ptr %i.et, align 4            ; 5 uses
  %i.ev = icmp slt i32 %.6, %i.eu
  br i1 %i.ev, label %.lr.ph228, label %._crit_edge229

.lr.ph228:                                        ; preds = %bb.al, %bb.az
  %.2226 = phi i32 [ %i.hb, %bb.az ], [ %.1, %bb.al ] ; 2 uses
  %.7225 = phi i32 [ %.12, %bb.az ], [ %.6, %bb.al ] ; 3 uses
  %i.ew = add nsw i32 %.7225, 1                   ; 10 uses
  %i.ex = sext i32 %.7225 to i64
  %i.ey = getelementptr inbounds i8, ptr %i.by, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1             ; 6 uses
  %i.fa = zext i8 %i.ez to i32                    ; 3 uses
  %i.fb = icmp sgt i8 %i.ez, -1
  %.not203 = icmp eq i32 %i.ew, %i.eu
  %or.cond221 = select i1 %i.fb, i1 true, i1 %.not203
  br i1 %or.cond221, label %bb.az, label %bb.am

bb.am:                                            ; preds = %.lr.ph228
  %i.fc = icmp samesign ugt i8 %i.ez, -33
  br i1 %i.fc, label %bb.an, label %bb.av

bb.an:                                            ; preds = %bb.am
  %i.fd = icmp samesign ult i8 %i.ez, -16
  br i1 %i.fd, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.fe = and i32 %i.fa, 15                       ; 2 uses
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @.str, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = zext i8 %i.fh to i32
  %i.fj = sext i32 %i.ew to i64
  %i.fk = getelementptr inbounds i8, ptr %i.by, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1             ; 2 uses
  %i.fm = lshr i8 %i.fl, 5
  %i.fn = zext nneg i8 %i.fm to i32
  %i.fo = shl nuw nsw i32 1, %i.fn
  %i.fp = and i32 %i.fo, %i.fi
  %.not206 = icmp eq i32 %i.fp, 0
  br i1 %.not206, label %bb.az, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fq = and i8 %i.fl, 63
  br label %bb.au

bb.aq:                                            ; preds = %bb.an
  %i.fr = add nsw i32 %i.fa, -240                 ; 2 uses
  %i.fs = icmp samesign ult i8 %i.ez, -11
  br i1 %i.fs, label %bb.ar, label %bb.az

bb.ar:                                            ; preds = %bb.aq
  %i.ft = sext i32 %i.ew to i64
  %i.fu = getelementptr inbounds i8, ptr %i.by, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = zext i8 %i.fv to i32                    ; 2 uses
  %i.fx = lshr i32 %i.fw, 4
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = sext i8 %i.ga to i32
  %i.gc = shl nuw nsw i32 1, %i.fr
  %i.gd = and i32 %i.gc, %i.gb
  %.not204 = icmp eq i32 %i.gd, 0
  br i1 %.not204, label %bb.az, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ge = add nsw i32 %.7225, 2                   ; 4 uses
  %.not205 = icmp eq i32 %i.ge, %i.eu
  br i1 %.not205, label %.thread270, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gf = shl nuw nsw i32 %i.fr, 6
  %i.gg = and i32 %i.fw, 63
  %i.gh = or disjoint i32 %i.gg, %i.gf
  %i.gi = sext i32 %i.ge to i64
  %i.gj = getelementptr inbounds i8, ptr %i.by, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1
  %i.gl = xor i8 %i.gk, -128                      ; 2 uses
  %i.gm = icmp ult i8 %i.gl, 64
  br i1 %i.gm, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.ap, %bb.at
  %.4150 = phi i32 [ %i.fe, %bb.ap ], [ %i.gh, %bb.at ]
  %.8 = phi i32 [ %i.ew, %bb.ap ], [ %i.ge, %bb.at ]
  %.0 = phi i8 [ %i.fq, %bb.ap ], [ %i.gl, %bb.at ]
  %i.gn = shl nuw nsw i32 %.4150, 6
  %i.go = zext nneg i8 %.0 to i32
  %i.gp = or disjoint i32 %i.gn, %i.go
  %i.gq = add nsw i32 %.8, 1                      ; 2 uses
  %.not207 = icmp eq i32 %i.gq, %i.eu
  br i1 %.not207, label %.thread270, label %bb.ax

bb.av:                                            ; preds = %bb.am
  %i.gr = icmp samesign ugt i8 %i.ez, -63
  br i1 %i.gr, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.gs = and i32 %i.fa, 31
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %.5151 = phi i32 [ %i.gp, %bb.au ], [ %i.gs, %bb.aw ]
  %.9 = phi i32 [ %i.gq, %bb.au ], [ %i.ew, %bb.aw ] ; 3 uses
  %i.gt = sext i32 %.9 to i64
  %i.gu = getelementptr inbounds i8, ptr %i.by, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1
  %i.gw = icmp slt i8 %i.gv, -64
  br i1 %i.gw, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gx = add nsw i32 %.9, 1
  %i.gy = icmp samesign ult i32 %.5151, 1024
  %i.gz = select i1 %i.gy, i32 1, i32 2
  br label %bb.az

.thread270:                                       ; preds = %bb.au, %bb.as
  %i.ha = add nsw i32 %.2226, 1
  br label %._crit_edge229

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.aq, %bb.ao, %.lr.ph228
  %.7153 = phi i32 [ 1, %.lr.ph228 ], [ %i.gz, %bb.ay ], [ 1, %bb.ax ], [ 1, %bb.av ], [ 1, %bb.aq ], [ 1, %bb.at ], [ 1, %bb.ao ], [ 1, %bb.ar ]
  %.12 = phi i32 [ %i.ew, %.lr.ph228 ], [ %i.gx, %bb.ay ], [ %.9, %bb.ax ], [ %i.ew, %bb.av ], [ %i.ew, %bb.aq ], [ %i.ge, %bb.at ], [ %i.ew, %bb.ao ], [ %i.ew, %bb.ar ] ; 2 uses
  %i.hb = add nsw i32 %.7153, %.2226              ; 2 uses
  %i.hc = icmp slt i32 %.12, %i.eu
  br i1 %i.hc, label %.lr.ph228, label %._crit_edge229, !llvm.loop !11

._crit_edge229:                                   ; preds = %bb.az, %.thread270, %bb.al
  %.2.lcssa = phi i32 [ %.1, %bb.al ], [ %i.ha, %.thread270 ], [ %i.hb, %bb.az ] ; 2 uses
  store i32 %.2.lcssa, ptr %i.bv, align 8
  br label %bb.bb

bb.ba:                                            ; preds = %bb.a
  br label %bb.bb

bb.bb:                                            ; preds = %bb.t, %._crit_edge229, %bb.b, %bb.s, %bb.a, %bb.a, %bb.ba
  %.0154 = phi i32 [ -1, %bb.ba ], [ %i.b, %bb.b ], [ 0, %bb.a ], [ 0, %bb.a ], [ %spec.select, %bb.s ], [ %.2.lcssa, %._crit_edge229 ], [ %i.bw, %bb.t ]
  ret i32 %.0154
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL16utf8IteratorMoveP13UCharIteratori19UCharIteratorOrigin(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  switch i32 %2, label %bb.az [
    i32 3, label %.thread.a
    i32 0, label %.thread.a
    i32 1, label %3
    i32 2, label %bb.b
    i32 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.c, %1
  br label %.thread.a

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.h, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.j, align 8
  %i.k = icmp sgt i32 %1, -1
  br i1 %i.k, label %bb.az, label %.thread197

3:                                                ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load i32, ptr %4, align 8                  ; 3 uses
  %6 = icmp slt i32 %5, 0
  %7 = add nsw i32 %5, %1
  br i1 %6, label %bb.n, label %.thread.a

.thread.a:                                        ; preds = %bb.c, %bb.a, %bb.a, %3
  %.0144193 = phi i32 [ %7, %3 ], [ %1, %bb.a ], [ %i.e, %bb.c ], [ %1, %bb.a ] ; 6 uses
  %i.l = icmp slt i32 %.0144193, 1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.o, align 8
  br label %bb.az

bb.f:                                             ; preds = %.thread.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8              ; 7 uses
  %or.cond = icmp ugt i32 %i.q, %.0144193
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.t, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.v, align 8
  br label %bb.az

bb.h:                                             ; preds = %bb.f
  %i.w = load i32, ptr %i.r, align 8              ; 5 uses
  %i.x = icmp slt i32 %i.w, 0
  %i.y = lshr i32 %i.w, 1
  %i.z = icmp samesign ult i32 %.0144193, %i.y
  %or.cond188 = select i1 %i.x, i1 true, i1 %i.z
  br i1 %or.cond188, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ab, align 4
  store i32 0, ptr %i.r, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ac = icmp sgt i32 %i.q, -1
  br i1 %i.ac, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ad = sub nsw i32 %i.q, %.0144193
  %i.ae = sub nsw i32 %.0144193, %i.w
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.q, ptr %i.r, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.aj, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.i
  %i.ak = phi i32 [ %i.w, %bb.j ], [ %i.w, %bb.k ], [ %i.q, %bb.l ], [ 0, %bb.i ] ; 3 uses
  %i.al = sub nsw i32 %.0144193, %i.ak            ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.az, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m
  %.phi.trans.insert220 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre221 = load i32, ptr %.phi.trans.insert220, align 4
  br label %bb.r

bb.n:                                             ; preds = %3
  %i.an = icmp eq i32 %1, 0
  br i1 %i.an, label %bb.az, label %..thread197_crit_edge

..thread197_crit_edge:                            ; preds = %bb.n
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %.thread197

.thread197:                                       ; preds = %..thread197_crit_edge, %bb.d
  %i.ao = phi i32 [ %5, %..thread197_crit_edge ], [ -1, %bb.d ]
  %i.ap = phi i32 [ %.pre, %..thread197_crit_edge ], [ %i.h, %bb.d ] ; 3 uses
  %i.aq = sub nsw i32 0, %1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.not177 = icmp sgt i32 %i.ap, %i.aq
  br i1 %.not177, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread197
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.as, align 8
  store i32 0, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.at, align 8
  br label %bb.az

bb.p:                                             ; preds = %.thread197
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.av = load i32, ptr %i.au, align 4            ; 2 uses
  %i.aw = sub nsw i32 %i.av, %i.ap
  %.not178 = icmp slt i32 %1, %i.aw
  br i1 %.not178, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i32, ptr %i.ax, align 8            ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ay, ptr %i.az, align 8
  store i32 %i.av, ptr %i.ar, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ba, align 8
  %i.bb = icmp sgt i32 %i.ay, -1
  %spec.select = select i1 %i.bb, i32 %i.ay, i32 -2
  br label %bb.az

bb.r:                                             ; preds = %._crit_edge, %bb.p
  %.promoted = phi i32 [ %.pre221, %._crit_edge ], [ %i.ap, %bb.p ] ; 5 uses
  %i.bc = phi i32 [ %i.ak, %._crit_edge ], [ %i.ao, %bb.p ] ; 6 uses
  %.0150 = phi i32 [ %i.al, %._crit_edge ], [ %1, %bb.p ] ; 5 uses
  %i.bd = load ptr, ptr %0, align 8               ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bg = icmp sgt i32 %.0150, 0
  br i1 %i.bg, label %bb.s, label %bb.ap

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bi = load i32, ptr %i.bh, align 4            ; 12 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 8
  %.not181 = icmp eq i32 %i.bk, 0
  br i1 %.not181, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bj, align 8
  %i.bl = add nsw i32 %i.bc, 1
  %i.bm = add nsw i32 %.0150, -1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1151 = phi i32 [ %i.bm, %bb.t ], [ %.0150, %bb.s ] ; 2 uses
  %.1 = phi i32 [ %i.bl, %bb.t ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bn = icmp ne i32 %.1151, 0
  %i.bo = icmp slt i32 %.promoted, %i.bi
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %i.bp, label %.lr.ph215, label %.loopexit

.lr.ph215:                                        ; preds = %bb.u, %.thread199
  %.2214 = phi i32 [ %i.ed, %.thread199 ], [ %.1, %bb.u ] ; 2 uses
  %.2152213 = phi i32 [ %i.ee, %.thread199 ], [ %.1151, %bb.u ] ; 2 uses
  %i.bq = phi i32 [ %i.ec, %.thread199 ], [ %.promoted, %bb.u ] ; 3 uses
  %i.br = add nsw i32 %i.bq, 1                    ; 10 uses
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bd, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1             ; 6 uses
  %i.bv = zext i8 %i.bu to i32                    ; 3 uses
  %i.bw = icmp sgt i8 %i.bu, -1
  %.not182 = icmp eq i32 %i.br, %i.bi
  %or.cond205 = select i1 %i.bw, i1 true, i1 %.not182
  br i1 %or.cond205, label %.thread199, label %bb.v

bb.v:                                             ; preds = %.lr.ph215
  %i.bx = icmp samesign ugt i8 %i.bu, -33
  br i1 %i.bx, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.by = icmp samesign ult i8 %i.bu, -16
  br i1 %i.by, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bz = and i32 %i.bv, 15                       ; 2 uses
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @.str, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = zext i8 %i.cc to i32
  %i.ce = sext i32 %i.br to i64
  %i.cf = getelementptr inbounds i8, ptr %i.bd, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1             ; 2 uses
  %i.ch = lshr i8 %i.cg, 5
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = shl nuw nsw i32 1, %i.ci
  %i.ck = and i32 %i.cj, %i.cd
  %.not185 = icmp eq i32 %i.ck, 0
  br i1 %.not185, label %.thread199, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = and i8 %i.cg, 63
  br label %bb.ad

bb.z:                                             ; preds = %bb.w
  %i.cm = add nsw i32 %i.bv, -240                 ; 2 uses
  %i.cn = icmp samesign ult i8 %i.bu, -11
  br i1 %i.cn, label %bb.aa, label %.thread199

bb.aa:                                            ; preds = %bb.z
  %i.co = sext i32 %i.br to i64
  %i.cp = getelementptr inbounds i8, ptr %i.bd, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = zext i8 %i.cq to i32                    ; 2 uses
  %i.cs = lshr i32 %i.cr, 4
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = sext i8 %i.cv to i32
  %i.cx = shl nuw nsw i32 1, %i.cm
  %i.cy = and i32 %i.cx, %i.cw
  %.not183 = icmp eq i32 %i.cy, 0
  br i1 %.not183, label %.thread199, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = add nsw i32 %i.bq, 2                    ; 4 uses
  %.not184 = icmp eq i32 %i.cz, %i.bi
  br i1 %.not184, label %.thread199, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = shl nuw nsw i32 %i.cm, 6
  %i.db = and i32 %i.cr, 63
  %i.dc = or disjoint i32 %i.db, %i.da
  %i.dd = sext i32 %i.cz to i64
  %i.de = getelementptr inbounds i8, ptr %i.bd, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = xor i8 %i.df, -128                      ; 2 uses
  %i.dh = icmp ult i8 %i.dg, 64
  br i1 %i.dh, label %bb.ad, label %.thread199

bb.ad:                                            ; preds = %bb.y, %bb.ac
  %i.di = phi i32 [ %i.br, %bb.y ], [ %i.cz, %bb.ac ]
  %.0145 = phi i32 [ %i.bz, %bb.y ], [ %i.dc, %bb.ac ]
  %.0 = phi i8 [ %i.cl, %bb.y ], [ %i.dg, %bb.ac ]
  %i.dj = shl nuw nsw i32 %.0145, 6
end_hunk_0
