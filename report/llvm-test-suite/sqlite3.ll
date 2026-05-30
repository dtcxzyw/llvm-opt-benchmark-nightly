inline.NumInlined: 3252
inline.NumDeleted: 426
begin_hunk_0_@allocateBtreePage:bb.a
  %i.z = icmp eq i32 %i.y, %i.x
  %spec.select.v.i.i = select i1 %i.z, i32 3, i32 2
  %spec.select.i.i = add nsw i32 %spec.select.v.i.i, %i.v
  %i.aa = load ptr, ptr %0, align 8, !tbaa !461
  %i.ab = call fastcc i32 @sqlite3PagerAcquire(ptr noundef %i.aa, i32 noundef %spec.select.i.i, ptr noundef %i.e, i32 noundef 0) ; 2 uses
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !652 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 80
  %.val.i = load ptr, ptr %i.ad, align 8, !tbaa !657
  %.val22.i = load i16, ptr %i.p, align 4, !tbaa !832
  %.val23.i = load i16, ptr %i.q, align 2, !tbaa !831
  %i.ae = udiv i16 %.val23.i, 5
  %narrow.i26.i = add nuw nsw i16 %i.ae, 1
  %i.af = zext nneg i16 %narrow.i26.i to i32
  %i.ag = urem i32 %i.t, %i.af
  %i.ah = sub nuw i32 %i.t, %i.ag                 ; 2 uses
  %i.ai = zext i16 %.val22.i to i32
  %i.aj = udiv i32 1073741824, %i.ai
  %i.ak = add nsw i32 %i.ah, 1
  %i.al = icmp eq i32 %i.ak, %i.aj
  %i.am = select i1 %i.al, i32 -4, i32 -3
  %i.an = sub i32 %3, %i.ah
  %i.ao = add i32 %i.an, %i.am
  %i.ap = mul i32 %i.ao, 5
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %.val.i, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !37  ; 2 uses
  tail call fastcc void @sqlite3PagerUnref(ptr noundef nonnull %i.ac)
  %i.at = add i8 %i.as, -6
  %or.cond.i = icmp ult i8 %i.at, -5
  br i1 %or.cond.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  %i.au = icmp eq i8 %i.as, 2
  store i32 %3, ptr %2, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.b
  %.2158 = phi i1 [ %i.au, %bb.f ], [ false, %bb.c ], [ false, %bb.b ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !629
  %i.ax = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.aw) ; 2 uses
  %.not205 = icmp eq i32 %i.ax, 0
  br i1 %.not205, label %bb.h, label %releasePage.exit238

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !801 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 36
  %i.ba = add nsw i32 %i.l, -1                    ; 4 uses
  %i.bb = lshr i32 %i.ba, 24
  %i.bc = trunc nuw nsw i32 %i.bb to i8
  store i8 %i.bc, ptr %i.az, align 1, !tbaa !37
  %i.bd = lshr i32 %i.ba, 16
  %i.be = trunc i32 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 37
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !37
  %i.bg = lshr i32 %i.ba, 8
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 38
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !37
  %i.bj = trunc i32 %i.ba to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 39
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 46
  %.not211 = icmp ne i32 %3, 0
  br label %bb.i

bb.i:                                             ; preds = %releasePage.exit240, %bb.h
  %.0274 = phi ptr [ null, %bb.h ], [ %.1275303, %releasePage.exit240 ] ; 14 uses
  %.3159 = phi i1 [ %.2158, %bb.h ], [ true, %releasePage.exit240 ] ; 3 uses
  %.not206 = icmp eq ptr %.0274, null             ; 4 uses
  br i1 %.not206, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.0274, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !801 ; 4 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !37
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw i32 %i.bp, 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !37
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 16
  %i.bv = or disjoint i32 %i.bu, %i.bq
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !37
  %i.by = zext i8 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 8
  %i.ca = or disjoint i32 %i.bv, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !801 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !37
  %i.cf = zext i8 %i.ce to i32
  %i.cg = shl nuw i32 %i.cf, 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 33
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !37
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 16
  %i.cl = or disjoint i32 %i.ck, %i.cg
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 34
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !37
  %i.co = zext i8 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 8
  %i.cq = or disjoint i32 %i.cl, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 35
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink516.in = phi ptr [ %i.cr, %bb.k ], [ %i.cb, %bb.j ]
  %.sink = phi i32 [ %i.cq, %bb.k ], [ %i.ca, %bb.j ]
  %.sink516 = load i8, ptr %.sink516.in, align 1, !tbaa !37
  %i.cs = zext i8 %.sink516 to i32
  %i.ct = or disjoint i32 %.sink, %i.cs           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #43
  %i.cu = load ptr, ptr %0, align 8, !tbaa !461
  %i.cv = call fastcc i32 @sqlite3PagerAcquire(ptr noundef %i.cu, i32 noundef %i.ct, ptr noundef %i.d, i32 noundef 0) ; 2 uses
  %.not.i224 = icmp eq i32 %i.cv, 0
  br i1 %.not.i224, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  br label %releasePage.exit249

bb.n:                                             ; preds = %bb.l
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !652 ; 12 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !635
  %.not.i.i = icmp eq ptr %i.cx, null
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 88 ; 13 uses
  %i.cz = select i1 %.not.i.i, ptr null, ptr %i.cy ; 3 uses
  %i.da = getelementptr i8, ptr %i.cw, i64 80
  %.val.i225 = load ptr, ptr %i.da, align 8, !tbaa !657
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 200
  store ptr %.val.i225, ptr %i.db, align 8, !tbaa !801
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 208
  store ptr %i.cw, ptr %i.dc, align 8, !tbaa !629
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 192
  store ptr %0, ptr %i.dd, align 8, !tbaa !802
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 216
  store i32 %i.ct, ptr %i.de, align 8, !tbaa !329
  %i.df = icmp eq i32 %i.ct, 1
  %i.dg = select i1 %i.df, i8 100, i8 0
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  store i8 %i.dg, ptr %i.dh, align 8, !tbaa !803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 112 ; 5 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !801 ; 13 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 5
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 6
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 7
  %i.do = load i32, ptr %i.dk, align 1            ; 4 uses
  %i.dp = tail call i32 @llvm.bswap.i32(i32 %i.do) ; 6 uses
  %i.dq = icmp ne i32 %i.do, 0
  %or.cond = or i1 %.3159, %i.dq
  br i1 %or.cond, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dr = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef nonnull %i.cw) ; 2 uses
  %.not208 = icmp eq i32 %i.dr, 0
  br i1 %.not208, label %bb.p, label %releasePage.exit247.thread

bb.p:                                             ; preds = %bb.o
  store i32 %i.ct, ptr %2, align 4, !tbaa !4
  %i.ds = load ptr, ptr %i.h, align 8, !tbaa !801
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.di, align 8, !tbaa !801
  %i.dv = load i32, ptr %i.du, align 1
  store i32 %i.dv, ptr %i.dt, align 1
  store ptr %i.cz, ptr %1, align 8, !tbaa !806
  br label %releasePage.exit238.thread

bb.q:                                             ; preds = %bb.n
  %i.dw = load i16, ptr %i.bl, align 2, !tbaa !831
  %i.dx = lshr i16 %i.dw, 2
  %i.dy = zext nneg i16 %i.dx to i32
  %i.dz = add nsw i32 %i.dy, -8
  %i.ea = icmp sgt i32 %i.dp, %i.dz
  br i1 %i.ea, label %releasePage.exit247, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eb = icmp eq i32 %3, %i.ct
  %or.cond218 = and i1 %.3159, %i.eb
  br i1 %or.cond218, label %bb.s, label %bb.ac

bb.s:                                             ; preds = %bb.r
  store ptr %i.cz, ptr %1, align 8, !tbaa !806
  %i.ec = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef nonnull %i.cw) ; 2 uses
  %.not213 = icmp eq i32 %i.ec, 0
  br i1 %.not213, label %bb.t, label %releasePage.exit247.thread

bb.t:                                             ; preds = %bb.s
  %i.ed = icmp eq i32 %i.do, 0
  %i.ee = load ptr, ptr %i.di, align 8, !tbaa !801 ; 5 uses
  br i1 %i.ed, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ef = load i32, ptr %i.ee, align 1            ; 2 uses
  br i1 %.not206, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eg = load ptr, ptr %i.h, align 8, !tbaa !801
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  store i32 %i.ef, ptr %i.eh, align 1
  br label %releasePage.exit238

bb.w:                                             ; preds = %bb.u
  %i.ei = getelementptr inbounds nuw i8, ptr %.0274, i64 112
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !801
  store i32 %i.ef, ptr %i.ej, align 1
  br label %.thread309

bb.x:                                             ; preds = %bb.t
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %5 = load i8, ptr %i.ek, align 1, !tbaa !37     ; 3 uses
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 %6, 24
  %8 = getelementptr inbounds nuw i8, ptr %i.ee, i64 9
  %9 = load i8, ptr %8, align 1, !tbaa !37        ; 3 uses
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or disjoint i32 %11, %7
  %13 = getelementptr inbounds nuw i8, ptr %i.ee, i64 10
  %14 = load i8, ptr %13, align 1, !tbaa !37      ; 3 uses
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = getelementptr inbounds nuw i8, ptr %i.ee, i64 11
  %18 = load i8, ptr %17, align 1, !tbaa !37      ; 3 uses
  %19 = zext i8 %18 to i32
  %20 = or disjoint i32 %12, %16
  %21 = or disjoint i32 %20, %19                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  %i.el = load ptr, ptr %0, align 8, !tbaa !461
  %i.em = call fastcc i32 @sqlite3PagerAcquire(ptr noundef %i.el, i32 noundef %21, ptr noundef %i.c, i32 noundef 0) ; 2 uses
  %.not.i226 = icmp eq i32 %i.em, 0
  br i1 %.not.i226, label %bb.y, label %sqlite3BtreeGetPage.exit229

sqlite3BtreeGetPage.exit229:                      ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  br label %releasePage.exit247.thread

bb.y:                                             ; preds = %bb.x
  %i.en = load ptr, ptr %i.c, align 8, !tbaa !652 ; 9 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !635
  %.not.i.i227 = icmp eq ptr %i.eo, null
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 88
  %i.eq = select i1 %.not.i.i227, ptr null, ptr %i.ep ; 2 uses
  %i.er = getelementptr i8, ptr %i.en, i64 80
  %.val.i228 = load ptr, ptr %i.er, align 8, !tbaa !657
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 200
  store ptr %.val.i228, ptr %i.es, align 8, !tbaa !801
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 208
  store ptr %i.en, ptr %i.et, align 8, !tbaa !629
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 192
  store ptr %0, ptr %i.eu, align 8, !tbaa !802
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 216
  store i32 %21, ptr %i.ev, align 8, !tbaa !329
  %i.ew = icmp eq i32 %21, 1
  %i.ex = select i1 %i.ew, i8 100, i8 0
  %i.ey = getelementptr inbounds nuw i8, ptr %i.en, i64 96
  store i8 %i.ex, ptr %i.ey, align 8, !tbaa !803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 120 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !629
  %i.fb = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.fa) ; 2 uses
  %.not215 = icmp eq i32 %i.fb, 0
  br i1 %.not215, label %releasePage.exit232, label %releasePage.exit

releasePage.exit:                                 ; preds = %bb.y
  %i.fc = load ptr, ptr %i.ez, align 8, !tbaa !629
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.fc)
  br label %releasePage.exit247.thread

releasePage.exit232:                              ; preds = %bb.y
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eq, i64 112 ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !801
  %i.ff = load ptr, ptr %i.di, align 8, !tbaa !801
  %i.fg = load i32, ptr %i.ff, align 1
  store i32 %i.fg, ptr %i.fe, align 1
  %i.fh = load ptr, ptr %i.fd, align 8, !tbaa !801 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = add nsw i32 %i.dp, -1                   ; 5 uses
  %i.fk = lshr i32 %i.fj, 24
  %i.fl = trunc nuw i32 %i.fk to i8
  store i8 %i.fl, ptr %i.fi, align 1, !tbaa !37
  %i.fm = lshr i32 %i.fj, 16
  %i.fn = trunc i32 %i.fm to i8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 5
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !37
  %i.fp = lshr i32 %i.fj, 8
  %i.fq = trunc i32 %i.fp to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 6
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !37
  %i.fs = trunc i32 %i.fj to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fh, i64 7
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !37
  %i.fu = load ptr, ptr %i.fd, align 8, !tbaa !801
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.di, align 8, !tbaa !801
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  %i.fy = shl nsw i32 %i.fj, 2
  %i.fz = sext i32 %i.fy to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fv, ptr nonnull align 1 %i.fx, i64 %i.fz, i1 false)
  %i.ga = load ptr, ptr %i.ez, align 8, !tbaa !629
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.ga)
  br i1 %.not206, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %releasePage.exit232
  %i.gb = load ptr, ptr %i.h, align 8, !tbaa !801 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  store i8 %5, ptr %i.gc, align 1, !tbaa !37
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 33
  store i8 %9, ptr %i.gd, align 1, !tbaa !37
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 34
  store i8 %14, ptr %i.ge, align 1, !tbaa !37
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 35
  store i8 %18, ptr %i.gf, align 1, !tbaa !37
  br label %releasePage.exit238

bb.aa:                                            ; preds = %releasePage.exit232
  %i.gg = getelementptr inbounds nuw i8, ptr %.0274, i64 120
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !629
  %i.gi = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.gh) ; 2 uses
  %.not216 = icmp eq i32 %i.gi, 0
  br i1 %.not216, label %bb.ab, label %releasePage.exit247.thread

bb.ab:                                            ; preds = %bb.aa
  %i.gj = getelementptr inbounds nuw i8, ptr %.0274, i64 112
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !801 ; 4 uses
  store i8 %5, ptr %i.gk, align 1, !tbaa !37
  %22 = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  store i8 %9, ptr %22, align 1, !tbaa !37
  %23 = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  store i8 %14, ptr %23, align 1, !tbaa !37
  %24 = getelementptr inbounds nuw i8, ptr %i.gk, i64 3
  store i8 %18, ptr %24, align 1, !tbaa !37
  br label %.thread309

bb.ac:                                            ; preds = %bb.r
  %i.gl = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef nonnull %i.cw) ; 2 uses
  %.not210 = icmp eq i32 %i.gl, 0
  br i1 %.not210, label %bb.ad, label %releasePage.exit247.thread

bb.ad:                                            ; preds = %bb.ac
  %i.gm = icmp sgt i32 %i.dp, 1
  %or.cond517 = and i1 %.not211, %i.gm
  br i1 %or.cond517, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.ad
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dj, i64 9
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !37
  %i.gp = zext i8 %i.go to i32
  %i.gq = shl nuw nsw i32 %i.gp, 16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !37
  %i.gt = zext i8 %i.gs to i32
  %i.gu = shl nuw i32 %i.gt, 24
  %i.gv = or disjoint i32 %i.gq, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dj, i64 10
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !37
  %i.gy = zext i8 %i.gx to i32
  %i.gz = shl nuw nsw i32 %i.gy, 8
  %i.ha = or disjoint i32 %i.gv, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.dj, i64 11
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !37
  %i.hd = zext i8 %i.hc to i32
  %i.he = or disjoint i32 %i.ha, %i.hd
  %i.hf = sub i32 %i.he, %3
  %spec.select219 = tail call i32 @llvm.abs.i32(i32 %i.hf, i1 true) ; 2 uses
  %wide.trip.count = zext nneg i32 %i.dp to i64
  %i.hg = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.hg, 1
  %i.hh = icmp eq i32 %i.do, 33554432
  br i1 %i.hh, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.hg, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.1396 = phi i32 [ %spec.select219, %.lr.ph.preheader.new ], [ %.2.1, %.lr.ph ] ; 2 uses
  %.0147394 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1148.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.hi = shl nsw i64 %indvars.iv, 2
  %i.hj = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load i32, ptr %i.hk, align 1
  %i.hm = tail call i32 @llvm.bswap.i32(i32 %i.hl)
  %i.hn = sub i32 %i.hm, %3
  %spec.select220 = tail call i32 @llvm.abs.i32(i32 %i.hn, i1 true) ; 2 uses
  %i.ho = icmp samesign ult i32 %spec.select220, %.1396
  %i.hp = trunc nuw nsw i64 %indvars.iv to i32
  %.1148 = select i1 %i.ho, i32 %i.hp, i32 %.0147394
  %.2 = tail call i32 @llvm.umin.i32(i32 %spec.select220, i32 %.1396) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hq = shl nsw i64 %indvars.iv.next, 2
  %i.hr = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load i32, ptr %i.hs, align 1
  %i.hu = tail call i32 @llvm.bswap.i32(i32 %i.ht)
  %i.hv = sub i32 %i.hu, %3
  %spec.select220.1 = tail call i32 @llvm.abs.i32(i32 %i.hv, i1 true) ; 2 uses
  %i.hw = icmp samesign ult i32 %spec.select220.1, %.2
  %i.hx = trunc nuw nsw i64 %indvars.iv.next to i32
  %.1148.1 = select i1 %i.hw, i32 %i.hx, i32 %.1148 ; 3 uses
  %.2.1 = tail call i32 @llvm.umin.i32(i32 %spec.select220.1, i32 %.2) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !918

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.1396.epil.init = phi i32 [ %spec.select219, %.lr.ph.preheader ], [ %.2.1, %.loopexit.loopexit.unr-lcssa ]
  %.0147394.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1148.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod598 = trunc i64 %i.hg to i1
  tail call void @llvm.assume(i1 %lcmp.mod598)
  %i.hy = shl nsw i64 %indvars.iv.epil.init, 2
  %i.hz = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load i32, ptr %i.ia, align 1
  %i.ic = tail call i32 @llvm.bswap.i32(i32 %i.ib)
  %i.id = sub i32 %i.ic, %3
  %spec.select220.epil = tail call i32 @llvm.abs.i32(i32 %i.id, i1 true)
  %i.ie = icmp samesign ult i32 %spec.select220.epil, %.1396.epil.init
  %i.if = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %.1148.epil = select i1 %i.ie, i32 %i.if, i32 %.0147394.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ad
  %.2149 = phi i32 [ 0, %bb.ad ], [ %.1148.1, %.loopexit.loopexit.unr-lcssa ], [ %.1148.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %i.ig = shl nsw i32 %.2149, 2
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr i8, ptr %i.dj, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.ii, i64 8      ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 1
  %i.il = tail call i32 @llvm.bswap.i32(i32 %i.ik) ; 3 uses
  %i.im = icmp ne i32 %i.il, %3
  %or.cond222.not = select i1 %.3159, i1 %i.im, i1 false
  br i1 %or.cond222.not, label %releasePage.exit238.thread, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  store i32 %i.il, ptr %2, align 4, !tbaa !4
  %i.in = load ptr, ptr %0, align 8, !tbaa !461
  %i.io = tail call fastcc i32 @sqlite3PagerPagecount(ptr noundef %i.in)
  %i.ip = icmp ugt i32 %i.il, %i.io
  br i1 %i.ip, label %releasePage.exit238, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iq = add nsw i32 %i.dp, -1                   ; 5 uses
  %i.ir = icmp slt i32 %.2149, %i.iq
  br i1 %i.ir, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.is = shl nsw i32 %i.dp, 2
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr i8, ptr %i.dj, i64 %i.it
  %i.iv = getelementptr i8, ptr %i.iu, i64 4
  %i.iw = load i32, ptr %i.iv, align 1
  store i32 %i.iw, ptr %i.ij, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ix = lshr i32 %i.iq, 24
  %i.iy = trunc nuw i32 %i.ix to i8
  store i8 %i.iy, ptr %i.dk, align 1, !tbaa !37
  %i.iz = lshr i32 %i.iq, 16
  %i.ja = trunc i32 %i.iz to i8
  store i8 %i.ja, ptr %i.dl, align 1, !tbaa !37
  %i.jb = lshr i32 %i.iq, 8
  %i.jc = trunc i32 %i.jb to i8
  store i8 %i.jc, ptr %i.dm, align 1, !tbaa !37
  %i.jd = trunc i32 %i.iq to i8
  store i8 %i.jd, ptr %i.dn, align 1, !tbaa !37
  %i.je = load i32, ptr %2, align 4, !tbaa !4     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.jf = load ptr, ptr %0, align 8, !tbaa !461
  %i.jg = call fastcc i32 @sqlite3PagerAcquire(ptr noundef %i.jf, i32 noundef %i.je, ptr noundef %i.b, i32 noundef 1) ; 2 uses
  %.not.i233 = icmp eq i32 %i.jg, 0
  br i1 %.not.i233, label %bb.ai, label %sqlite3BtreeGetPage.exit236

sqlite3BtreeGetPage.exit236:                      ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br label %releasePage.exit238.thread

bb.ai:                                            ; preds = %bb.ah
  %i.jh = load ptr, ptr %i.b, align 8, !tbaa !652 ; 10 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !635
  %.not.i.i234 = icmp eq ptr %i.ji, null
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 88
  %i.jk = select i1 %.not.i.i234, ptr null, ptr %i.jj
  %i.jl = getelementptr i8, ptr %i.jh, i64 80
  %.val.i235 = load ptr, ptr %i.jl, align 8, !tbaa !657
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 200
  store ptr %.val.i235, ptr %i.jm, align 8, !tbaa !801
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 208
  store ptr %i.jh, ptr %i.jn, align 8, !tbaa !629
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jh, i64 192
  store ptr %0, ptr %i.jo, align 8, !tbaa !802
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jh, i64 216
  store i32 %i.je, ptr %i.jp, align 8, !tbaa !329
  %i.jq = icmp eq i32 %i.je, 1
  %i.jr = select i1 %i.jq, i8 100, i8 0
  %i.js = getelementptr inbounds nuw i8, ptr %i.jh, i64 96
  store i8 %i.jr, ptr %i.js, align 8, !tbaa !803
  store ptr %i.jk, ptr %1, align 8, !tbaa !806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  tail call fastcc void @sqlite3PagerDontRollback(ptr noundef nonnull %i.jh)
  %i.jt = load ptr, ptr %1, align 8, !tbaa !806
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 120
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !629
  %i.jw = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.jv) ; 3 uses
  %.not212 = icmp eq i32 %i.jw, 0
  br i1 %.not212, label %releasePage.exit238.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jx = load ptr, ptr %1, align 8, !tbaa !806   ; 2 uses
  %.not.i237 = icmp eq ptr %i.jx, null
  br i1 %.not.i237, label %releasePage.exit238.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 120
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !629
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.jz)
  br label %releasePage.exit238.thread

releasePage.exit238.thread:                       ; preds = %bb.ak, %bb.aj, %bb.ai, %.loopexit, %sqlite3BtreeGetPage.exit236, %bb.p
  %.1275 = phi ptr [ null, %bb.p ], [ %i.cy, %sqlite3BtreeGetPage.exit236 ], [ %i.cy, %.loopexit ], [ %i.cy, %bb.ai ], [ %i.cy, %bb.aj ], [ %i.cy, %bb.ak ] ; 2 uses
  %.6162 = phi i8 [ 0, %bb.p ], [ 0, %sqlite3BtreeGetPage.exit236 ], [ 1, %.loopexit ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ] ; 2 uses
  %.6146 = phi i32 [ 0, %bb.p ], [ %i.jg, %sqlite3BtreeGetPage.exit236 ], [ 0, %.loopexit ], [ 0, %bb.ai ], [ %i.jw, %bb.aj ], [ %i.jw, %bb.ak ] ; 2 uses
  br i1 %.not206, label %releasePage.exit240, label %.thread309
end_hunk_0
