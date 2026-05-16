inline.NumInlined: 1537
inline.NumDeleted: 102
begin_hunk_0_@_ZN10ContextMapD2Ev:bb.a
  store i32 %i.ah, ptr @programChecker, align 8, !tbaa !15
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.aj = icmp sgt i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.f, label %_ZN5ArrayIjLi0EED2Ev.exit

bb.f:                                             ; preds = %_ZN5ArrayIPhLi0EED2Ev.exit
  store i32 %i.ah, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIjLi0EED2Ev.exit

_ZN5ArrayIjLi0EED2Ev.exit:                        ; preds = %_ZN5ArrayIPhLi0EED2Ev.exit, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.al) #38
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = load i32, ptr %i.am, align 8, !tbaa !107
  %i.ao = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.ap = shl i32 %i.an, 3
  %i.aq = sub i32 %i.ao, %i.ap                    ; 3 uses
  store i32 %i.aq, ptr @programChecker, align 8, !tbaa !15
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.as = icmp sgt i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.g, label %_ZN5ArrayIPhLi0EED2Ev.exit2

bb.g:                                             ; preds = %_ZN5ArrayIjLi0EED2Ev.exit
  store i32 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIPhLi0EED2Ev.exit2

_ZN5ArrayIPhLi0EED2Ev.exit2:                      ; preds = %_ZN5ArrayIjLi0EED2Ev.exit, %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !108
  tail call void @free(ptr noundef %i.au) #38
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !107
  %i.ax = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.ay = shl i32 %i.aw, 3
  %i.az = sub i32 %i.ax, %i.ay                    ; 3 uses
  store i32 %i.az, ptr @programChecker, align 8, !tbaa !15
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.bb = icmp sgt i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.h, label %_ZN5ArrayIPhLi0EED2Ev.exit3

bb.h:                                             ; preds = %_ZN5ArrayIPhLi0EED2Ev.exit2
  store i32 %i.az, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIPhLi0EED2Ev.exit3

_ZN5ArrayIPhLi0EED2Ev.exit3:                      ; preds = %_ZN5ArrayIPhLi0EED2Ev.exit2, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !108
  tail call void @free(ptr noundef %i.bd) #38
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !103
  %i.bg = shl i32 %i.bf, 6
  %i.bh = load i32, ptr @programChecker, align 8, !tbaa !15
  %reass.sub.i = sub i32 %i.bh, %i.bg
  %i.bi = add i32 %reass.sub.i, -64               ; 3 uses
  store i32 %i.bi, ptr @programChecker, align 8, !tbaa !15
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.bk = icmp sgt i32 %i.bi, %i.bj
  br i1 %i.bk, label %bb.i, label %_ZN5ArrayIN10ContextMap1EELi64EED2Ev.exit

bb.i:                                             ; preds = %_ZN5ArrayIPhLi0EED2Ev.exit3
  store i32 %i.bi, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIN10ContextMap1EELi64EED2Ev.exit

_ZN5ArrayIN10ContextMap1EELi64EED2Ev.exit:        ; preds = %_ZN5ArrayIPhLi0EED2Ev.exit3, %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !104
  tail call void @free(ptr noundef %i.bm) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN10ContextMap4mix1ER5Mixeriiii(ptr noundef nonnull align 8 captures(none) dereferenceable(140) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(136) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !110
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.e = sext i32 %5 to i64
  %invariant.gep = getelementptr i8, ptr @_ZL11State_table, i64 %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.k = and i32 %2, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = and i32 %2, 1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = trunc i32 %4 to i8                       ; 2 uses
  %i.p = sub nsw i32 8, %3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = sub nsw i32 7, %3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !109
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ab, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.ab ]
  %i.u = icmp eq i32 %3, 7
  br i1 %i.u, label %bb.ac, label %bb.ad

bb.b:                                             ; preds = %.lr.ph, %bb.ab
  %i.v = phi ptr [ %.pre, %.lr.ph ], [ %i.hs, %bb.ab ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 22 uses
  %.0100 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.ab ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8    ; 3 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11
  %i.z = zext i8 %i.y to i64
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.z
  %i.aa = load i8, ptr %gep, align 1, !tbaa !11   ; 5 uses
  %i.ab = icmp ugt i8 %i.aa, -53
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = zext i8 %i.aa to i32
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @rnd, i64 24), align 8, !tbaa !114 ; 3 uses
  %i.ae = add nsw i32 %i.ad, 1                    ; 2 uses
  store i32 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @rnd, i64 24), align 8, !tbaa !114
  %i.af = add i32 %i.ad, 41
  %i.ag = and i32 %i.af, 63
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rnd, i64 16), align 8, !tbaa !88 ; 3 uses
  %i.ai = zext nneg i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = add i32 %i.ad, 10
  %i.am = and i32 %i.al, 63
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = xor i32 %i.ap, %i.ak                    ; 2 uses
  %i.ar = and i32 %i.ae, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.as
  store i32 %i.aq, ptr %i.at, align 4, !tbaa !4
  %i.au = sub nuw nsw i32 452, %i.ac
  %i.av = lshr i32 %i.au, 3
  %i.aw = shl i32 %i.aq, %i.av
  %.not94 = icmp eq i32 %i.aw, 0
  %i.ax = add nsw i8 %i.aa, -4
  %spec.select = select i1 %.not94, i8 %i.aa, i8 %i.ax
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.090 = phi i8 [ %i.aa, %bb.c ], [ %spec.select, %bb.d ]
  store i8 %.090, ptr %i.x, align 1, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.ay = load i32, ptr @bpos, align 4, !tbaa !4  ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 1
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = load ptr, ptr %i.f, align 8, !tbaa !109
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !8
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !11
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  switch i32 %i.ay, label %bb.l [
    i32 1, label %bb.i
    i32 3, label %bb.i
    i32 6, label %bb.i
    i32 4, label %bb.j
    i32 7, label %bb.j
    i32 2, label %bb.k
    i32 5, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.bf = load ptr, ptr %i.j, align 8, !tbaa !109
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.n
  br label %bb.w

bb.j:                                             ; preds = %bb.h, %bb.h
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !109
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.l
  br label %bb.w

bb.k:                                             ; preds = %bb.h, %bb.h
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4            ; 2 uses
  %i.bs = add i32 %i.br, %2
  %i.bt = load i32, ptr %i.g, align 8, !tbaa !103
  %i.bu = add nsw i32 %i.bt, -1
  %i.bv = and i32 %i.bu, %i.bs
  %i.bw = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.bx = sext i32 %i.bv to i64
  %i.by = getelementptr inbounds [64 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = lshr i32 %i.br, 16
  %i.ca = trunc nuw i32 %i.bz to i16
  %i.cb = tail call noundef ptr @_ZN10ContextMap1E3getEt(ptr noundef nonnull align 2 dereferenceable(64) %i.by, i16 noundef zeroext %i.ca) ; 2 uses
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !109
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv
  store ptr %i.cb, ptr %i.cd, align 8, !tbaa !8
  br label %bb.w

bb.l:                                             ; preds = %bb.h
  %i.ce = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv
  %i.cg = load i32, ptr %i.cf, align 4            ; 2 uses
  %i.ch = add i32 %i.cg, %2
  %i.ci = load i32, ptr %i.g, align 8, !tbaa !103
  %i.cj = add nsw i32 %i.ci, -1
  %i.ck = and i32 %i.cj, %i.ch
  %i.cl = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.cm = sext i32 %i.ck to i64
  %i.cn = getelementptr inbounds [64 x i8], ptr %i.cl, i64 %i.cm
  %i.co = lshr i32 %i.cg, 16
  %i.cp = trunc nuw i32 %i.co to i16
  %i.cq = tail call noundef ptr @_ZN10ContextMap1E3getEt(ptr noundef nonnull align 2 dereferenceable(64) %i.cn, i16 noundef zeroext %i.cp) ; 4 uses
  %i.cr = load ptr, ptr %i.d, align 8, !tbaa !109
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !8
  %i.ct = load ptr, ptr %i.j, align 8, !tbaa !109
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv
  store ptr %i.cq, ptr %i.cu, align 8, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 3
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !11
  %i.cx = icmp eq i8 %i.cw, 2
  br i1 %i.cx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !11  ; 2 uses
  %i.da = zext i8 %i.cz to i32                    ; 3 uses
  %i.db = or disjoint i32 %i.da, 256              ; 4 uses
  %i.dc = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv
  %i.de = load i32, ptr %i.dd, align 4            ; 2 uses
  %i.df = lshr i32 %i.db, 6
  %i.dg = add i32 %i.df, %i.de
  %i.dh = load i32, ptr %i.g, align 8, !tbaa !103
  %i.di = add nsw i32 %i.dh, -1
  %i.dj = and i32 %i.dg, %i.di
  %i.dk = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.dl = sext i32 %i.dj to i64
  %i.dm = getelementptr inbounds [64 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = lshr i32 %i.de, 16
  %i.do = trunc nuw i32 %i.dn to i16
  %i.dp = tail call noundef ptr @_ZN10ContextMap1E3getEt(ptr noundef nonnull align 2 dereferenceable(64) %i.dm, i16 noundef zeroext %i.do) ; 3 uses
  %i.dq = lshr i32 %i.da, 5
  %i.dr = and i32 %i.dq, 1
  %i.ds = add nuw nsw i32 %i.dr, 1                ; 2 uses
  %i.dt = trunc nuw nsw i32 %i.ds to i8
  store i8 %i.dt, ptr %i.dp, align 1, !tbaa !11
  %i.du = lshr i32 %i.db, 4                       ; 2 uses
  %i.dv = trunc nuw nsw i32 %i.du to i8
  %i.dw = and i8 %i.dv, 1
  %i.dx = add nuw nsw i8 %i.dw, 1
  %i.dy = zext nneg i32 %i.ds to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dy
  store i8 %i.dx, ptr %i.dz, align 1, !tbaa !11
  %i.ea = lshr i32 %i.db, 3                       ; 2 uses
  %i.eb = trunc nuw nsw i32 %i.ea to i8
  %i.ec = and i8 %i.eb, 1
  %i.ed = add nuw nsw i8 %i.ec, 1
  %i.ee = and i32 %i.du, 3
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  store i8 %i.ed, ptr %i.eh, align 1, !tbaa !11
  %i.ei = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv
  %i.ek = load i32, ptr %i.ej, align 4            ; 2 uses
  %i.el = add i32 %i.ek, %i.ea
  %i.em = load i32, ptr %i.g, align 8, !tbaa !103
  %i.en = add nsw i32 %i.em, -1
  %i.eo = and i32 %i.en, %i.el
  %i.ep = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.eq = sext i32 %i.eo to i64
  %i.er = getelementptr inbounds [64 x i8], ptr %i.ep, i64 %i.eq
  %i.es = lshr i32 %i.ek, 16
  %i.et = trunc nuw i32 %i.es to i16
  %i.eu = tail call noundef ptr @_ZN10ContextMap1E3getEt(ptr noundef nonnull align 2 dereferenceable(64) %i.er, i16 noundef zeroext %i.et) ; 3 uses
  %i.ev = lshr i32 %i.da, 2
  %i.ew = and i32 %i.ev, 1
  %i.ex = add nuw nsw i32 %i.ew, 1                ; 2 uses
  %i.ey = trunc nuw nsw i32 %i.ex to i8
  store i8 %i.ey, ptr %i.eu, align 1, !tbaa !11
  %i.ez = lshr i32 %i.db, 1                       ; 2 uses
  %i.fa = trunc nuw i32 %i.ez to i8
  %i.fb = and i8 %i.fa, 1
  %i.fc = add nuw nsw i8 %i.fb, 1
  %i.fd = zext nneg i32 %i.ex to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fd
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !11
  %i.ff = and i8 %i.cz, 1
  %i.fg = add nuw nsw i8 %i.ff, 1
  %i.fh = and i32 %i.ez, 3
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 3
  store i8 %i.fg, ptr %i.fk, align 1, !tbaa !11
  %i.fl = load ptr, ptr %i.j, align 8, !tbaa !109
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 6
  store i8 0, ptr %i.fo, align 1, !tbaa !11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.fp = load ptr, ptr %i.f, align 8, !tbaa !109
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !8  ; 6 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !11  ; 4 uses
  %i.ft = icmp eq i8 %i.fs, 0
  br i1 %i.ft, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 2, ptr %i.fr, align 1, !tbaa !11
  %i.fu = load ptr, ptr %i.f, align 8, !tbaa !109
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1
  store i8 %i.o, ptr %i.fx, align 1, !tbaa !11
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !11
  %i.ga = zext i8 %i.fz to i32
  %.not95 = icmp eq i32 %4, %i.ga
  br i1 %.not95, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.fr, align 1, !tbaa !11
  %i.gb = load ptr, ptr %i.f, align 8, !tbaa !109
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  store i8 %i.o, ptr %i.ge, align 1, !tbaa !11
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.gf = icmp ult i8 %i.fs, -2
  br i1 %i.gf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gg = add nuw i8 %i.fs, 2
  store i8 %i.gg, ptr %i.fr, align 1, !tbaa !11
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.gh = icmp eq i8 %i.fs, -1
  br i1 %i.gh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i8 -128, ptr %i.fr, align 1, !tbaa !11
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.t, %bb.u, %bb.s, %bb.o
  %i.gi = load ptr, ptr %i.j, align 8, !tbaa !109
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 3
  br label %bb.w

bb.w:                                             ; preds = %bb.g, %bb.i, %bb.j, %bb.k, %bb.v
  %.sink107.in = phi ptr [ %i.d, %bb.i ], [ %i.d, %bb.j ], [ %i.j, %bb.k ], [ %i.f, %bb.v ], [ %i.d, %bb.g ]
  %.sink = phi ptr [ %i.bj, %bb.i ], [ %i.bo, %bb.j ], [ %i.cb, %bb.k ], [ %i.gl, %bb.v ], [ null, %bb.g ]
  %.sink107 = load ptr, ptr %.sink107.in, align 8, !tbaa !109
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.sink107, i64 %indvars.iv
  store ptr %.sink, ptr %i.gm, align 8, !tbaa !8
  %i.gn = load ptr, ptr %i.f, align 8, !tbaa !109
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !8  ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !11
  %i.gs = zext i8 %i.gr to i32                    ; 2 uses
  %i.gt = or disjoint i32 %i.gs, 256
  %i.gu = lshr i32 %i.gt, %i.p
  %i.gv = icmp eq i32 %i.gu, %2
  br i1 %i.gv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gw = load i8, ptr %i.gp, align 1, !tbaa !11  ; 2 uses
  %i.gx = lshr i32 %i.gs, %i.s
  %i.gy = shl nuw nsw i32 %i.gx, 1
  %i.gz = and i32 %i.gy, 2
  %i.ha = add nuw nsw i32 %i.gz, 65535
  %i.hb = zext i8 %i.gw to i64
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ilog, i64 16), align 8, !tbaa !24
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hb
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !11
  %i.hg = zext i8 %i.hf to i32
  %i.hh = and i8 %i.gw, 1
  %i.hi = xor i8 %i.hh, 3
  %i.hj = zext nneg i8 %i.hi to i32
  %i.hk = shl nuw nsw i32 %i.hg, %i.hj
  %i.hl = mul nuw nsw i32 %i.hk, %i.ha
  %i.hm = trunc i32 %i.hl to i16
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sink108 = phi i16 [ %i.hm, %bb.x ], [ 0, %bb.w ]
  %i.hn = load i32, ptr %i.q, align 8, !tbaa !69  ; 2 uses
  %i.ho = add nsw i32 %i.hn, 1
  store i32 %i.ho, ptr %i.q, align 8, !tbaa !69
  %i.hp = load ptr, ptr %i.r, align 8, !tbaa !64  ; 3 uses
  %i.hq = sext i32 %i.hn to i64
  %i.hr = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %i.hq
  store i16 %.sink108, ptr %i.hr, align 2, !tbaa !33
  %i.hs = load ptr, ptr %i.d, align 8, !tbaa !109 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !8  ; 2 uses
  %.not96 = icmp eq ptr %i.hu, null
  br i1 %.not96, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !11  ; 3 uses
  %i.hw = zext i8 %i.hv to i32
  %i.hx = load ptr, ptr %i.t, align 8, !tbaa !111
  %i.hy = getelementptr inbounds nuw [32 x i8], ptr %i.hx, i64 %indvars.iv ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !86
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !88 ; 2 uses
  %i.id = sext i32 %i.ia to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.id ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !4  ; 4 uses
  %i.ig = and i32 %i.if, 1023                     ; 2 uses
  %.not28.i = icmp eq i32 %i.ig, 1023
  %i.ih = add i32 %i.if, 1
  %i.ii = or i32 %i.if, 1023
  %.0.i.i.i = select i1 %.not28.i, i32 %i.ii, i32 %i.ih
  %i.ij = lshr i32 %i.if, 10
  %i.ik = load i32, ptr @y, align 4, !tbaa !4
  %i.il = shl i32 %i.ik, 22
  %i.im = sub nsw i32 %i.il, %i.ij
  %i.in = ashr i32 %i.im, 3
  %i.io = zext nneg i32 %i.ig to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr @_ZL2dt, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !4
  %i.ir = mul nsw i32 %i.in, %i.iq
  %i.is = and i32 %i.ir, -1024
  %i.it = add i32 %i.is, %.0.i.i.i
  store i32 %i.it, ptr %i.ie, align 4, !tbaa !4
  store i32 %i.hw, ptr %i.hz, align 4, !tbaa !86
  %i.iu = zext i8 %i.hv to i64                    ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !4  ; 2 uses
  %i.ix = lshr i32 %i.iw, 20
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr @_ZL11State_table, i64 %i.iu ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 2
  %i.ja = load i8, ptr %i.iz, align 2, !tbaa !11
  %.not.i = icmp eq i8 %i.ja, 0                   ; 3 uses
  %.neg.neg.i = zext i1 %.not.i to i16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 3
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !11
  %.not26.i = icmp eq i8 %i.jc, 0                 ; 3 uses
  %.neg27.i = sext i1 %.not26.i to i16
  %i.jd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @stretch, i64 16), align 8, !tbaa !32
  %i.je = zext nneg i32 %i.ix to i64
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %i.je
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !33
  %i.jh = ashr i16 %i.jg, 2                       ; 2 uses
  %i.ji = load i32, ptr %i.q, align 8, !tbaa !69  ; 2 uses
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %i.jj ; 5 uses
  store i16 %i.jh, ptr %i.jk, align 2, !tbaa !33
  %i.jl = lshr i32 %i.iw, 24                      ; 4 uses
  %i.jm = xor i32 %i.jl, 255                      ; 3 uses
  %i.jn = sub nsw i32 %i.jl, %i.jm
end_hunk_0
