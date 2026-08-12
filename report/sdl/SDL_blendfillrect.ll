begin_hunk_0_@SDL_BlendFillRect:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.a = tail call zeroext i1 @SDL_SurfaceValid(ptr noundef %0) #6
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.mask = and i32 %i.d, -268435456
  %.not73 = icmp ne i32 %.mask, 268435456
  %i.e = and i32 %i.d, 63488
  %i.f = icmp eq i32 %i.e, 0
  %or.cond83 = or i1 %.not73, %i.f
  br i1 %or.cond83, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2) #6
  br label %bb.t

bb.d:                                             ; preds = %bb.c
  %.not74 = icmp eq ptr %1, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  br i1 %.not74, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = call zeroext i1 @SDL_GetRectIntersection_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.h, ptr noundef nonnull %7) #6
  br i1 %i.i, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.d, %bb.e
  %.070 = phi ptr [ %7, %bb.e ], [ %i.h, %bb.d ]  ; 6 uses
  %i.j = add i32 %2, -1
  %or.cond = icmp ult i32 %i.j, 2
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = zext i8 %3 to i32
  %i.l = zext i8 %6 to i32                        ; 3 uses
  %i.m = mul nuw nsw i32 %i.l, %i.k
  %.lhs.trunc = trunc nuw i32 %i.m to i16
  %i.n = udiv i16 %.lhs.trunc, 255
  %i.o = trunc nuw i16 %i.n to i8
  %i.p = zext i8 %4 to i32
  %i.q = mul nuw nsw i32 %i.l, %i.p
  %.lhs.trunc78 = trunc nuw i32 %i.q to i16
  %i.r = udiv i16 %.lhs.trunc78, 255
  %i.s = trunc nuw i16 %i.r to i8
  %i.t = zext i8 %5 to i32
  %i.u = mul nuw nsw i32 %i.l, %i.t
  %.lhs.trunc80 = trunc nuw i32 %i.u to i16
  %i.v = udiv i16 %.lhs.trunc80, 255
  %i.w = trunc nuw i16 %i.v to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.069 = phi i8 [ %i.o, %bb.g ], [ %3, %bb.f ]   ; 6 uses
  %.068 = phi i8 [ %i.s, %bb.g ], [ %4, %bb.f ]   ; 6 uses
  %.067 = phi i8 [ %i.w, %bb.g ], [ %5, %bb.f ]   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8              ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i8, ptr %i.z, align 4
  switch i8 %i.aa, label %bb.q [
    i8 15, label %bb.i
    i8 16, label %bb.k
    i8 32, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i32, ptr %i.ab, align 4
  %cond2 = icmp eq i32 %i.ac, 31744
  br i1 %cond2, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ad = call zeroext i1 @SDL_BlendFillRect_RGB555(ptr noundef nonnull %0, ptr noundef nonnull %.070, i32 noundef %2, i8 noundef zeroext %.069, i8 noundef zeroext %.068, i8 noundef zeroext %.067, i8 noundef zeroext %6) ; 0 uses
  br label %bb.t

bb.k:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.af = load i32, ptr %i.ae, align 4
  %cond1 = icmp eq i32 %i.af, 63488
  br i1 %cond1, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ag = call zeroext i1 @SDL_BlendFillRect_RGB565(ptr noundef nonnull %0, ptr noundef nonnull %.070, i32 noundef %2, i8 noundef zeroext %.069, i8 noundef zeroext %.068, i8 noundef zeroext %.067, i8 noundef zeroext %6) ; 0 uses
  br label %bb.t

bb.m:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ai = load i32, ptr %i.ah, align 4
  %cond = icmp eq i32 %i.ai, 16711680
  br i1 %cond, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ak = load i32, ptr %i.aj, align 4
  %.not75 = icmp eq i32 %i.ak, 0
  br i1 %.not75, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.al = call zeroext i1 @SDL_BlendFillRect_XRGB8888(ptr noundef nonnull %0, ptr noundef nonnull %.070, i32 noundef %2, i8 noundef zeroext %.069, i8 noundef zeroext %.068, i8 noundef zeroext %.067, i8 noundef zeroext %6) ; 0 uses
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.am = call zeroext i1 @SDL_BlendFillRect_ARGB8888(ptr noundef nonnull %0, ptr noundef nonnull %.070, i32 noundef %2, i8 noundef zeroext %.069, i8 noundef zeroext %.068, i8 noundef zeroext %.067, i8 noundef zeroext %6) ; 0 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.h, %bb.m, %bb.k, %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ao = load i32, ptr %i.an, align 4
  %.not76 = icmp eq i32 %i.ao, 0
  br i1 %.not76, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ap = call zeroext i1 @SDL_BlendFillRect_RGB(ptr noundef nonnull %0, ptr noundef nonnull %.070, i32 noundef %2, i8 noundef zeroext %.069, i8 noundef zeroext %.068, i8 noundef zeroext %.067, i8 noundef zeroext %6)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.aq = call zeroext i1 @SDL_BlendFillRect_RGBA(ptr noundef nonnull %0, ptr noundef nonnull %.070, i32 noundef %2, i8 noundef zeroext %.069, i8 noundef zeroext %.068, i8 noundef zeroext %.067, i8 noundef zeroext %6)
  br label %bb.t

bb.t:                                             ; preds = %bb.e, %bb.s, %bb.r, %bb.p, %bb.o, %bb.l, %bb.j, %.critedge, %bb.b
  %.0 = phi i1 [ %i.g, %.critedge ], [ %i.aq, %bb.s ], [ %i.ap, %bb.r ], [ true, %bb.j ], [ true, %bb.l ], [ true, %bb.p ], [ true, %bb.o ], [ %i.b, %bb.b ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @SDL_SurfaceValid(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @SDL_GetRectIntersection_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @SDL_BlendFillRect_RGB555(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #3 {
bb.a:
  %i.a = xor i8 %6, -1
  %i.b = zext i8 %i.a to i32                      ; 36 uses
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.split, label %bb.aj

.split:                                           ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  switch i32 %i.e, label %bb.aj [
    i32 0, label %bb.b
    i32 4, label %bb.h
    i32 1, label %bb.o
    i32 5, label %bb.o
    i32 2, label %bb.v
    i32 3, label %bb.ac
  ]

bb.b:                                             ; preds = %.split
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not633678 = icmp eq i32 %i.g, 0
  br i1 %.not633678, label %.loopexit, label %.lr.ph680

.lr.ph680:                                        ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = sdiv i32 %i.m, %i.r                      ; 2 uses
  %i.t = mul nsw i32 %i.k, %i.s
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.u
  %i.w = load i32, ptr %1, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 4             ; 3 uses
  %i.ab = sub nsw i32 %i.s, %i.aa
  %i.ac = add nsw i32 %i.aa, 3
  %i.ad = sdiv i32 %i.ac, 4                       ; 4 uses
  %i.ae = and i32 %i.aa, 3
  %i.af = zext i8 %3 to i32                       ; 4 uses
  %i.ag = zext i8 %4 to i32                       ; 4 uses
  %i.ah = zext i8 %5 to i32                       ; 4 uses
  %i.ai = sext i32 %i.ab to i64
  br label %.lr.ph680.split

.lr.ph680.split:                                  ; preds = %.lr.ph680, %bb.g
  %.in691 = phi i32 [ %i.aj, %bb.g ], [ %i.g, %.lr.ph680 ]
  %.0569679 = phi ptr [ %i.gi, %bb.g ], [ %i.y, %.lr.ph680 ] ; 4 uses
  %i.aj = add nsw i32 %.in691, -1                 ; 2 uses
  switch i32 %i.ae, label %default.unreachable [
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph680.split, %bb.f
  %.0570 = phi i32 [ %i.ad, %.lr.ph680.split ], [ %i.gg, %bb.f ]
  %.1 = phi ptr [ %.0569679, %.lr.ph680.split ], [ %i.gf, %bb.f ] ; 3 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.al = load i16, ptr %.1, align 2
  %i.am = zext i16 %i.al to i32                   ; 3 uses
  %i.an = lshr i32 %i.am, 10
  %i.ao = and i32 %i.an, 31
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = lshr i32 %i.am, 5
  %i.au = and i32 %i.at, 31
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = and i32 %i.am, 31
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = mul nuw nsw i32 %i.as, %i.b
  %i.bf = udiv i32 %i.be, 255
  %i.bg = add nuw nsw i32 %i.bf, %i.af
  %i.bh = mul nuw nsw i32 %i.ay, %i.b
  %i.bi = udiv i32 %i.bh, 255
  %i.bj = add nuw nsw i32 %i.bi, %i.ag
  %i.bk = mul nuw nsw i32 %i.bd, %i.b
  %i.bl = udiv i32 %i.bk, 255
  %i.bm = add nuw nsw i32 %i.bl, %i.ah
  %i.bn = shl nuw nsw i32 %i.bg, 7
  %i.bo = and i32 %i.bn, 64512
  %i.bp = shl nuw nsw i32 %i.bj, 2
  %i.bq = and i32 %i.bp, 4064
  %i.br = or i32 %i.bq, %i.bo
  %i.bs = lshr i32 %i.bm, 3
  %i.bt = or i32 %i.br, %i.bs
  %i.bu = trunc nuw i32 %i.bt to i16
  store i16 %i.bu, ptr %.1, align 2
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph680.split, %bb.c
  %.1571 = phi i32 [ %.0570, %bb.c ], [ %i.ad, %.lr.ph680.split ]
  %.2 = phi ptr [ %i.bv, %bb.c ], [ %.0569679, %.lr.ph680.split ] ; 3 uses
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.bx = load i16, ptr %.2, align 2
  %i.by = zext i16 %i.bx to i32                   ; 3 uses
  %i.bz = lshr i32 %i.by, 10
  %i.ca = and i32 %i.bz, 31
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i32
  %i.cf = lshr i32 %i.by, 5
  %i.cg = and i32 %i.cf, 31
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i32
  %i.cl = and i32 %i.by, 31
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = zext i8 %i.co to i32
  %i.cq = mul nuw nsw i32 %i.ce, %i.b
  %i.cr = udiv i32 %i.cq, 255
  %i.cs = add nuw nsw i32 %i.cr, %i.af
  %i.ct = mul nuw nsw i32 %i.ck, %i.b
  %i.cu = udiv i32 %i.ct, 255
  %i.cv = add nuw nsw i32 %i.cu, %i.ag
  %i.cw = mul nuw nsw i32 %i.cp, %i.b
  %i.cx = udiv i32 %i.cw, 255
  %i.cy = add nuw nsw i32 %i.cx, %i.ah
  %i.cz = shl nuw nsw i32 %i.cs, 7
  %i.da = and i32 %i.cz, 64512
  %i.db = shl nuw nsw i32 %i.cv, 2
  %i.dc = and i32 %i.db, 4064
  %i.dd = or i32 %i.dc, %i.da
  %i.de = lshr i32 %i.cy, 3
  %i.df = or i32 %i.dd, %i.de
  %i.dg = trunc nuw i32 %i.df to i16
  store i16 %i.dg, ptr %.2, align 2
  %i.dh = getelementptr inbounds nuw i8, ptr %.2, i64 2
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph680.split, %bb.d
  %.2572 = phi i32 [ %.1571, %bb.d ], [ %i.ad, %.lr.ph680.split ]
  %.3 = phi ptr [ %i.dh, %bb.d ], [ %.0569679, %.lr.ph680.split ] ; 3 uses
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.dj = load i16, ptr %.3, align 2
  %i.dk = zext i16 %i.dj to i32                   ; 3 uses
  %i.dl = lshr i32 %i.dk, 10
  %i.dm = and i32 %i.dl, 31
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = zext i8 %i.dp to i32
  %i.dr = lshr i32 %i.dk, 5
  %i.ds = and i32 %i.dr, 31
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = zext i8 %i.dv to i32
  %i.dx = and i32 %i.dk, 31
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i32
  %i.ec = mul nuw nsw i32 %i.dq, %i.b
  %i.ed = udiv i32 %i.ec, 255
  %i.ee = add nuw nsw i32 %i.ed, %i.af
  %i.ef = mul nuw nsw i32 %i.dw, %i.b
  %i.eg = udiv i32 %i.ef, 255
  %i.eh = add nuw nsw i32 %i.eg, %i.ag
  %i.ei = mul nuw nsw i32 %i.eb, %i.b
  %i.ej = udiv i32 %i.ei, 255
  %i.ek = add nuw nsw i32 %i.ej, %i.ah
  %i.el = shl nuw nsw i32 %i.ee, 7
  %i.em = and i32 %i.el, 64512
  %i.en = shl nuw nsw i32 %i.eh, 2
  %i.eo = and i32 %i.en, 4064
  %i.ep = or i32 %i.eo, %i.em
  %i.eq = lshr i32 %i.ek, 3
  %i.er = or i32 %i.ep, %i.eq
  %i.es = trunc nuw i32 %i.er to i16
  store i16 %i.es, ptr %.3, align 2
  %i.et = getelementptr inbounds nuw i8, ptr %.3, i64 2
  br label %bb.f

default.unreachable:                              ; preds = %.lr.ph680.split
  unreachable

bb.f:                                             ; preds = %.lr.ph680.split, %bb.e
  %.3573 = phi i32 [ %.2572, %bb.e ], [ %i.ad, %.lr.ph680.split ] ; 2 uses
  %.4 = phi ptr [ %i.et, %bb.e ], [ %.0569679, %.lr.ph680.split ] ; 3 uses
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.ev = load i16, ptr %.4, align 2
  %i.ew = zext i16 %i.ev to i32                   ; 3 uses
  %i.ex = lshr i32 %i.ew, 10
  %i.ey = and i32 %i.ex, 31
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i32
  %i.fd = lshr i32 %i.ew, 5
  %i.fe = and i32 %i.fd, 31
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = zext i8 %i.fh to i32
  %i.fj = and i32 %i.ew, 31
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = zext i8 %i.fm to i32
  %i.fo = mul nuw nsw i32 %i.fc, %i.b
  %i.fp = udiv i32 %i.fo, 255
  %i.fq = add nuw nsw i32 %i.fp, %i.af
  %i.fr = mul nuw nsw i32 %i.fi, %i.b
  %i.fs = udiv i32 %i.fr, 255
  %i.ft = add nuw nsw i32 %i.fs, %i.ag
  %i.fu = mul nuw nsw i32 %i.fn, %i.b
  %i.fv = udiv i32 %i.fu, 255
  %i.fw = add nuw nsw i32 %i.fv, %i.ah
  %i.fx = shl nuw nsw i32 %i.fq, 7
  %i.fy = and i32 %i.fx, 64512
  %i.fz = shl nuw nsw i32 %i.ft, 2
  %i.ga = and i32 %i.fz, 4064
  %i.gb = or i32 %i.ga, %i.fy
  %i.gc = lshr i32 %i.fw, 3
  %i.gd = or i32 %i.gb, %i.gc
  %i.ge = trunc nuw i32 %i.gd to i16
  store i16 %i.ge, ptr %.4, align 2
  %i.gf = getelementptr inbounds nuw i8, ptr %.4, i64 2 ; 2 uses
  %i.gg = add nsw i32 %.3573, -1
  %i.gh = icmp sgt i32 %.3573, 1
  br i1 %i.gh, label %bb.c, label %bb.g, !llvm.loop !3

bb.g:                                             ; preds = %bb.f
  %i.gi = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %i.ai
  %.not633 = icmp eq i32 %i.aj, 0
  br i1 %.not633, label %.loopexit, label %.lr.ph680.split, !llvm.loop !5

bb.h:                                             ; preds = %.split
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.gk = load i32, ptr %i.gj, align 4            ; 2 uses
  %.not632675 = icmp eq i32 %i.gk, 0
  br i1 %.not632675, label %.loopexit, label %.lr.ph677

.lr.ph677:                                        ; preds = %bb.h
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.go = load i32, ptr %i.gn, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gq = load i32, ptr %i.gp, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 5
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = zext i8 %i.gu to i32
  %i.gw = sdiv i32 %i.gq, %i.gv                   ; 2 uses
  %i.gx = mul nsw i32 %i.go, %i.gw
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [2 x i8], ptr %i.gm, i64 %i.gy
  %i.ha = load i32, ptr %1, align 4
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.gz, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.he = load i32, ptr %i.hd, align 4            ; 3 uses
  %i.hf = sub nsw i32 %i.gw, %i.he
  %i.hg = add nsw i32 %i.he, 3
  %i.hh = sdiv i32 %i.hg, 4                       ; 4 uses
  %i.hi = and i32 %i.he, 3
  %i.hj = zext i8 %3 to i32                       ; 4 uses
  %i.hk = zext i8 %4 to i32                       ; 4 uses
  %i.hl = zext i8 %5 to i32                       ; 4 uses
  %i.hm = sext i32 %i.hf to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph677, %bb.n
  %.in690 = phi i32 [ %i.gk, %.lr.ph677 ], [ %i.hn, %bb.n ]
  %.0575676 = phi ptr [ %i.hc, %.lr.ph677 ], [ %i.nm, %bb.n ] ; 4 uses
  %i.hn = add nsw i32 %.in690, -1                 ; 2 uses
  switch i32 %i.hi, label %.unreachabledefault [
    i32 0, label %bb.j
    i32 3, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i, %bb.m
  %.0580 = phi i32 [ %i.hh, %bb.i ], [ %i.nk, %bb.m ]
  %.1576 = phi ptr [ %.0575676, %bb.i ], [ %i.nj, %bb.m ] ; 3 uses
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.hp = load i16, ptr %.1576, align 2
  %i.hq = zext i16 %i.hp to i32                   ; 3 uses
  %i.hr = lshr i32 %i.hq, 10
  %i.hs = and i32 %i.hr, 31
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1
  %i.hw = zext i8 %i.hv to i32
  %i.hx = lshr i32 %i.hq, 5
  %i.hy = and i32 %i.hx, 31
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1
  %i.ic = zext i8 %i.ib to i32
  %i.id = and i32 %i.hq, 31
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1
  %i.ih = zext i8 %i.ig to i32
  %i.ii = mul nuw nsw i32 %i.hw, %i.b
  %i.ij = udiv i32 %i.ii, 255
  %i.ik = add nuw nsw i32 %i.ij, %i.hj
  %spec.store.select27 = tail call i32 @llvm.umin.i32(i32 %i.ik, i32 255)
  %i.il = mul nuw nsw i32 %i.ic, %i.b
  %i.im = udiv i32 %i.il, 255
  %i.in = add nuw nsw i32 %i.im, %i.hk
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.in, i32 255)
  %i.io = mul nuw nsw i32 %i.ih, %i.b
  %i.ip = udiv i32 %i.io, 255
  %i.iq = add nuw nsw i32 %i.ip, %i.hl
  %spec.store.select39 = tail call i32 @llvm.umin.i32(i32 %i.iq, i32 255)
  %i.ir = shl nuw nsw i32 %spec.store.select27, 7
  %i.is = and i32 %i.ir, 31744
  %i.it = shl nuw nsw i32 %spec.store.select, 2
  %i.iu = and i32 %i.it, 992
  %i.iv = or disjoint i32 %i.iu, %i.is
  %i.iw = lshr i32 %spec.store.select39, 3
  %i.ix = or disjoint i32 %i.iv, %i.iw
  %i.iy = trunc nuw nsw i32 %i.ix to i16
  store i16 %i.iy, ptr %.1576, align 2
  %i.iz = getelementptr inbounds nuw i8, ptr %.1576, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.1581 = phi i32 [ %.0580, %bb.j ], [ %i.hh, %bb.i ]
  %.2577 = phi ptr [ %i.iz, %bb.j ], [ %.0575676, %bb.i ] ; 3 uses
  %i.ja = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.jb = load i16, ptr %.2577, align 2
  %i.jc = zext i16 %i.jb to i32                   ; 3 uses
  %i.jd = lshr i32 %i.jc, 10
  %i.je = and i32 %i.jd, 31
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1
  %i.ji = zext i8 %i.jh to i32
  %i.jj = lshr i32 %i.jc, 5
  %i.jk = and i32 %i.jj, 31
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1
  %i.jo = zext i8 %i.jn to i32
  %i.jp = and i32 %i.jc, 31
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1
  %i.jt = zext i8 %i.js to i32
  %i.ju = mul nuw nsw i32 %i.ji, %i.b
  %i.jv = udiv i32 %i.ju, 255
  %i.jw = add nuw nsw i32 %i.jv, %i.hj
  %spec.store.select3 = tail call i32 @llvm.umin.i32(i32 %i.jw, i32 255)
  %i.jx = mul nuw nsw i32 %i.jo, %i.b
  %i.jy = udiv i32 %i.jx, 255
  %i.jz = add nuw nsw i32 %i.jy, %i.hk
  %spec.store.select28 = tail call i32 @llvm.umin.i32(i32 %i.jz, i32 255)
  %i.ka = mul nuw nsw i32 %i.jt, %i.b
  %i.kb = udiv i32 %i.ka, 255
  %i.kc = add nuw nsw i32 %i.kb, %i.hl
  %spec.store.select4 = tail call i32 @llvm.umin.i32(i32 %i.kc, i32 255)
  %i.kd = shl nuw nsw i32 %spec.store.select3, 7
  %i.ke = and i32 %i.kd, 31744
  %i.kf = shl nuw nsw i32 %spec.store.select28, 2
  %i.kg = and i32 %i.kf, 992
  %i.kh = or disjoint i32 %i.kg, %i.ke
  %i.ki = lshr i32 %spec.store.select4, 3
  %i.kj = or disjoint i32 %i.kh, %i.ki
  %i.kk = trunc nuw nsw i32 %i.kj to i16
  store i16 %i.kk, ptr %.2577, align 2
  %i.kl = getelementptr inbounds nuw i8, ptr %.2577, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.2582 = phi i32 [ %.1581, %bb.k ], [ %i.hh, %bb.i ]
  %.3578 = phi ptr [ %i.kl, %bb.k ], [ %.0575676, %bb.i ] ; 3 uses
  %i.km = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.kn = load i16, ptr %.3578, align 2
  %i.ko = zext i16 %i.kn to i32                   ; 3 uses
  %i.kp = lshr i32 %i.ko, 10
  %i.kq = and i32 %i.kp, 31
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1
  %i.ku = zext i8 %i.kt to i32
  %i.kv = lshr i32 %i.ko, 5
  %i.kw = and i32 %i.kv, 31
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1
  %i.la = zext i8 %i.kz to i32
  %i.lb = and i32 %i.ko, 31
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1
  %i.lf = zext i8 %i.le to i32
  %i.lg = mul nuw nsw i32 %i.ku, %i.b
  %i.lh = udiv i32 %i.lg, 255
  %i.li = add nuw nsw i32 %i.lh, %i.hj
  %spec.store.select5 = tail call i32 @llvm.umin.i32(i32 %i.li, i32 255)
  %i.lj = mul nuw nsw i32 %i.la, %i.b
  %i.lk = udiv i32 %i.lj, 255
  %i.ll = add nuw nsw i32 %i.lk, %i.hk
  %spec.store.select29 = tail call i32 @llvm.umin.i32(i32 %i.ll, i32 255)
  %i.lm = mul nuw nsw i32 %i.lf, %i.b
  %i.ln = udiv i32 %i.lm, 255
  %i.lo = add nuw nsw i32 %i.ln, %i.hl
  %spec.store.select6 = tail call i32 @llvm.umin.i32(i32 %i.lo, i32 255)
  %i.lp = shl nuw nsw i32 %spec.store.select5, 7
  %i.lq = and i32 %i.lp, 31744
  %i.lr = shl nuw nsw i32 %spec.store.select29, 2
  %i.ls = and i32 %i.lr, 992
  %i.lt = or disjoint i32 %i.ls, %i.lq
  %i.lu = lshr i32 %spec.store.select6, 3
  %i.lv = or disjoint i32 %i.lt, %i.lu
  %i.lw = trunc nuw nsw i32 %i.lv to i16
  store i16 %i.lw, ptr %.3578, align 2
  %i.lx = getelementptr inbounds nuw i8, ptr %.3578, i64 2
  br label %bb.m

.unreachabledefault:                              ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.l
  %.3583 = phi i32 [ %.2582, %bb.l ], [ %i.hh, %bb.i ] ; 2 uses
  %.4579 = phi ptr [ %i.lx, %bb.l ], [ %.0575676, %bb.i ] ; 3 uses
  %i.ly = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.lz = load i16, ptr %.4579, align 2
  %i.ma = zext i16 %i.lz to i32                   ; 3 uses
  %i.mb = lshr i32 %i.ma, 10
  %i.mc = and i32 %i.mb, 31
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.md
  %i.mf = load i8, ptr %i.me, align 1
  %i.mg = zext i8 %i.mf to i32
  %i.mh = lshr i32 %i.ma, 5
  %i.mi = and i32 %i.mh, 31
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1
  %i.mm = zext i8 %i.ml to i32
  %i.mn = and i32 %i.ma, 31
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1
  %i.mr = zext i8 %i.mq to i32
  %i.ms = mul nuw nsw i32 %i.mg, %i.b
  %i.mt = udiv i32 %i.ms, 255
  %i.mu = add nuw nsw i32 %i.mt, %i.hj
  %spec.store.select7 = tail call i32 @llvm.umin.i32(i32 %i.mu, i32 255)
  %i.mv = mul nuw nsw i32 %i.mm, %i.b
  %i.mw = udiv i32 %i.mv, 255
  %i.mx = add nuw nsw i32 %i.mw, %i.hk
  %spec.store.select30 = tail call i32 @llvm.umin.i32(i32 %i.mx, i32 255)
  %i.my = mul nuw nsw i32 %i.mr, %i.b
  %i.mz = udiv i32 %i.my, 255
  %i.na = add nuw nsw i32 %i.mz, %i.hl
  %spec.store.select8 = tail call i32 @llvm.umin.i32(i32 %i.na, i32 255)
  %i.nb = shl nuw nsw i32 %spec.store.select7, 7
  %i.nc = and i32 %i.nb, 31744
  %i.nd = shl nuw nsw i32 %spec.store.select30, 2
  %i.ne = and i32 %i.nd, 992
  %i.nf = or disjoint i32 %i.ne, %i.nc
  %i.ng = lshr i32 %spec.store.select8, 3
  %i.nh = or disjoint i32 %i.nf, %i.ng
  %i.ni = trunc nuw nsw i32 %i.nh to i16
  store i16 %i.ni, ptr %.4579, align 2
  %i.nj = getelementptr inbounds nuw i8, ptr %.4579, i64 2 ; 2 uses
  %i.nk = add nsw i32 %.3583, -1
  %i.nl = icmp sgt i32 %.3583, 1
  br i1 %i.nl, label %bb.j, label %bb.n, !llvm.loop !6

bb.n:                                             ; preds = %bb.m
  %i.nm = getelementptr inbounds [2 x i8], ptr %i.nj, i64 %i.hm
  %.not632 = icmp eq i32 %i.hn, 0
  br i1 %.not632, label %.loopexit, label %bb.i, !llvm.loop !7

bb.o:                                             ; preds = %.split, %.split
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.no = load i32, ptr %i.nn, align 4            ; 2 uses
  %.not631672 = icmp eq i32 %i.no, 0
  br i1 %.not631672, label %.loopexit, label %.lr.ph674

.lr.ph674:                                        ; preds = %bb.o
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.nq = load ptr, ptr %i.np, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ns = load i32, ptr %i.nr, align 4
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nu = load i32, ptr %i.nt, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 5
  %i.ny = load i8, ptr %i.nx, align 1
  %i.nz = zext i8 %i.ny to i32
  %i.oa = sdiv i32 %i.nu, %i.nz                   ; 2 uses
  %i.ob = mul nsw i32 %i.ns, %i.oa
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [2 x i8], ptr %i.nq, i64 %i.oc
  %i.oe = load i32, ptr %1, align 4
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds [2 x i8], ptr %i.od, i64 %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oi = load i32, ptr %i.oh, align 4            ; 3 uses
  %i.oj = sub nsw i32 %i.oa, %i.oi
  %i.ok = add nsw i32 %i.oi, 3
  %i.ol = sdiv i32 %i.ok, 4                       ; 4 uses
  %i.om = and i32 %i.oi, 3
  %i.on = zext i8 %3 to i16                       ; 4 uses
  %i.oo = zext i8 %4 to i16                       ; 4 uses
  %i.op = zext i8 %5 to i16                       ; 4 uses
  %i.oq = sext i32 %i.oj to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph674, %bb.u
  %.in689 = phi i32 [ %i.no, %.lr.ph674 ], [ %i.or, %bb.u ]
  %.0585673 = phi ptr [ %i.og, %.lr.ph674 ], [ %i.to, %bb.u ] ; 4 uses
  %i.or = add nsw i32 %.in689, -1                 ; 2 uses
  switch i32 %i.om, label %.unreachabledefault720 [
    i32 0, label %bb.q
    i32 3, label %bb.r
    i32 2, label %bb.s
    i32 1, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p, %bb.t
  %.0590 = phi i32 [ %i.ol, %bb.p ], [ %i.tm, %bb.t ]
  %.1586 = phi ptr [ %.0585673, %bb.p ], [ %i.tl, %bb.t ] ; 3 uses
  %i.os = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.ot = load i16, ptr %.1586, align 2
  %i.ou = zext i16 %i.ot to i32                   ; 3 uses
  %i.ov = lshr i32 %i.ou, 10
  %i.ow = and i32 %i.ov, 31
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.ox
  %i.oz = load i8, ptr %i.oy, align 1
  %i.pa = zext i8 %i.oz to i16
  %i.pb = lshr i32 %i.ou, 5
  %i.pc = and i32 %i.pb, 31
  %i.pd = zext nneg i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.pd
  %i.pf = load i8, ptr %i.pe, align 1
  %i.pg = zext i8 %i.pf to i16
  %i.ph = and i32 %i.ou, 31
  %i.pi = zext nneg i32 %i.ph to i64
  %i.pj = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.pi
  %i.pk = load i8, ptr %i.pj, align 1
  %i.pl = zext i8 %i.pk to i16
  %i.pm = add nuw nsw i16 %i.pa, %i.on
  %spec.store.select31 = tail call i16 @llvm.umin.i16(i16 %i.pm, i16 255)
  %i.pn = add nuw nsw i16 %i.pg, %i.oo
  %spec.store.select10 = tail call i16 @llvm.umin.i16(i16 %i.pn, i16 255)
  %i.po = add nuw nsw i16 %i.pl, %i.op
  %spec.store.select43 = tail call i16 @llvm.umin.i16(i16 %i.po, i16 255)
  %i.pp = shl nuw nsw i16 %spec.store.select31, 7
  %i.pq = and i16 %i.pp, 31744
  %i.pr = shl nuw nsw i16 %spec.store.select10, 2
  %i.ps = and i16 %i.pr, 992
  %i.pt = or disjoint i16 %i.ps, %i.pq
  %i.pu = lshr i16 %spec.store.select43, 3
  %i.pv = or disjoint i16 %i.pt, %i.pu
  store i16 %i.pv, ptr %.1586, align 2
  %i.pw = getelementptr inbounds nuw i8, ptr %.1586, i64 2
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.1591 = phi i32 [ %.0590, %bb.q ], [ %i.ol, %bb.p ]
  %.2587 = phi ptr [ %i.pw, %bb.q ], [ %.0585673, %bb.p ] ; 3 uses
  %i.px = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.py = load i16, ptr %.2587, align 2
  %i.pz = zext i16 %i.py to i32                   ; 3 uses
  %i.qa = lshr i32 %i.pz, 10
  %i.qb = and i32 %i.qa, 31
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.qc
  %i.qe = load i8, ptr %i.qd, align 1
  %i.qf = zext i8 %i.qe to i16
  %i.qg = lshr i32 %i.pz, 5
  %i.qh = and i32 %i.qg, 31
  %i.qi = zext nneg i32 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1
  %i.ql = zext i8 %i.qk to i16
  %i.qm = and i32 %i.pz, 31
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.qn
  %i.qp = load i8, ptr %i.qo, align 1
  %i.qq = zext i8 %i.qp to i16
  %i.qr = add nuw nsw i16 %i.qf, %i.on
  %spec.store.select11 = tail call i16 @llvm.umin.i16(i16 %i.qr, i16 255)
  %i.qs = add nuw nsw i16 %i.ql, %i.oo
  %spec.store.select32 = tail call i16 @llvm.umin.i16(i16 %i.qs, i16 255)
  %i.qt = add nuw nsw i16 %i.qq, %i.op
  %spec.store.select12 = tail call i16 @llvm.umin.i16(i16 %i.qt, i16 255)
  %i.qu = shl nuw nsw i16 %spec.store.select11, 7
  %i.qv = and i16 %i.qu, 31744
  %i.qw = shl nuw nsw i16 %spec.store.select32, 2
  %i.qx = and i16 %i.qw, 992
  %i.qy = or disjoint i16 %i.qx, %i.qv
  %i.qz = lshr i16 %spec.store.select12, 3
  %i.ra = or disjoint i16 %i.qy, %i.qz
  store i16 %i.ra, ptr %.2587, align 2
  %i.rb = getelementptr inbounds nuw i8, ptr %.2587, i64 2
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  %.2592 = phi i32 [ %.1591, %bb.r ], [ %i.ol, %bb.p ]
  %.3588 = phi ptr [ %i.rb, %bb.r ], [ %.0585673, %bb.p ] ; 3 uses
  %i.rc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.rd = load i16, ptr %.3588, align 2
  %i.re = zext i16 %i.rd to i32                   ; 3 uses
  %i.rf = lshr i32 %i.re, 10
  %i.rg = and i32 %i.rf, 31
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1
  %i.rk = zext i8 %i.rj to i16
  %i.rl = lshr i32 %i.re, 5
  %i.rm = and i32 %i.rl, 31
  %i.rn = zext nneg i32 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1
  %i.rq = zext i8 %i.rp to i16
  %i.rr = and i32 %i.re, 31
  %i.rs = zext nneg i32 %i.rr to i64
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.rs
  %i.ru = load i8, ptr %i.rt, align 1
  %i.rv = zext i8 %i.ru to i16
  %i.rw = add nuw nsw i16 %i.rk, %i.on
  %spec.store.select13 = tail call i16 @llvm.umin.i16(i16 %i.rw, i16 255)
  %i.rx = add nuw nsw i16 %i.rq, %i.oo
  %spec.store.select33 = tail call i16 @llvm.umin.i16(i16 %i.rx, i16 255)
  %i.ry = add nuw nsw i16 %i.rv, %i.op
  %spec.store.select14 = tail call i16 @llvm.umin.i16(i16 %i.ry, i16 255)
  %i.rz = shl nuw nsw i16 %spec.store.select13, 7
  %i.sa = and i16 %i.rz, 31744
  %i.sb = shl nuw nsw i16 %spec.store.select33, 2
  %i.sc = and i16 %i.sb, 992
  %i.sd = or disjoint i16 %i.sc, %i.sa
  %i.se = lshr i16 %spec.store.select14, 3
  %i.sf = or disjoint i16 %i.sd, %i.se
  store i16 %i.sf, ptr %.3588, align 2
  %i.sg = getelementptr inbounds nuw i8, ptr %.3588, i64 2
  br label %bb.t

.unreachabledefault720:                           ; preds = %bb.p
  unreachable

bb.t:                                             ; preds = %bb.p, %bb.s
  %.3593 = phi i32 [ %.2592, %bb.s ], [ %i.ol, %bb.p ] ; 2 uses
  %.4589 = phi ptr [ %i.sg, %bb.s ], [ %.0585673, %bb.p ] ; 3 uses
  %i.sh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.si = load i16, ptr %.4589, align 2
  %i.sj = zext i16 %i.si to i32                   ; 3 uses
  %i.sk = lshr i32 %i.sj, 10
  %i.sl = and i32 %i.sk, 31
  %i.sm = zext nneg i32 %i.sl to i64
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sm
  %i.so = load i8, ptr %i.sn, align 1
  %i.sp = zext i8 %i.so to i16
  %i.sq = lshr i32 %i.sj, 5
  %i.sr = and i32 %i.sq, 31
  %i.ss = zext nneg i32 %i.sr to i64
  %i.st = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.ss
  %i.su = load i8, ptr %i.st, align 1
  %i.sv = zext i8 %i.su to i16
  %i.sw = and i32 %i.sj, 31
  %i.sx = zext nneg i32 %i.sw to i64
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sx
  %i.sz = load i8, ptr %i.sy, align 1
  %i.ta = zext i8 %i.sz to i16
  %i.tb = add nuw nsw i16 %i.sp, %i.on
  %spec.store.select15 = tail call i16 @llvm.umin.i16(i16 %i.tb, i16 255)
  %i.tc = add nuw nsw i16 %i.sv, %i.oo
  %spec.store.select34 = tail call i16 @llvm.umin.i16(i16 %i.tc, i16 255)
  %i.td = add nuw nsw i16 %i.ta, %i.op
  %spec.store.select16 = tail call i16 @llvm.umin.i16(i16 %i.td, i16 255)
  %i.te = shl nuw nsw i16 %spec.store.select15, 7
  %i.tf = and i16 %i.te, 31744
  %i.tg = shl nuw nsw i16 %spec.store.select34, 2
  %i.th = and i16 %i.tg, 992
  %i.ti = or disjoint i16 %i.th, %i.tf
  %i.tj = lshr i16 %spec.store.select16, 3
  %i.tk = or disjoint i16 %i.ti, %i.tj
  store i16 %i.tk, ptr %.4589, align 2
  %i.tl = getelementptr inbounds nuw i8, ptr %.4589, i64 2 ; 2 uses
  %i.tm = add nsw i32 %.3593, -1
  %i.tn = icmp sgt i32 %.3593, 1
  br i1 %i.tn, label %bb.q, label %bb.u, !llvm.loop !8

bb.u:                                             ; preds = %bb.t
  %i.to = getelementptr inbounds [2 x i8], ptr %i.tl, i64 %i.oq
  %.not631 = icmp eq i32 %i.or, 0
  br i1 %.not631, label %.loopexit, label %bb.p, !llvm.loop !9

bb.v:                                             ; preds = %.split
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.tq = load i32, ptr %i.tp, align 4            ; 2 uses
  %.not630669 = icmp eq i32 %i.tq, 0
  br i1 %.not630669, label %.loopexit, label %.lr.ph671

.lr.ph671:                                        ; preds = %bb.v
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ts = load ptr, ptr %i.tr, align 8
  %i.tt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.tu = load i32, ptr %i.tt, align 4
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.tw = load i32, ptr %i.tv, align 8
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ty = load ptr, ptr %i.tx, align 8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 5
  %i.ua = load i8, ptr %i.tz, align 1
  %i.ub = zext i8 %i.ua to i32
  %i.uc = sdiv i32 %i.tw, %i.ub                   ; 2 uses
  %i.ud = mul nsw i32 %i.tu, %i.uc
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds [2 x i8], ptr %i.ts, i64 %i.ue
  %i.ug = load i32, ptr %1, align 4
  %i.uh = sext i32 %i.ug to i64
  %i.ui = getelementptr inbounds [2 x i8], ptr %i.uf, i64 %i.uh
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.uk = load i32, ptr %i.uj, align 4            ; 3 uses
  %i.ul = sub nsw i32 %i.uc, %i.uk
  %i.um = add nsw i32 %i.uk, 3
  %i.un = sdiv i32 %i.um, 4                       ; 4 uses
  %i.uo = and i32 %i.uk, 3
  %i.up = insertelement <2 x i8> poison, i8 %4, i64 0
  %i.uq = insertelement <2 x i8> %i.up, i8 %3, i64 1
  %i.ur = zext <2 x i8> %i.uq to <2 x i16>        ; 4 uses
  %i.us = zext i8 %5 to i16                       ; 4 uses
  %i.ut = sext i32 %i.ul to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph671, %bb.ab
  %.in688 = phi i32 [ %i.tq, %.lr.ph671 ], [ %i.uu, %bb.ab ]
  %.0595670 = phi ptr [ %i.ui, %.lr.ph671 ], [ %i.zv, %bb.ab ] ; 4 uses
  %i.uu = add nsw i32 %.in688, -1                 ; 2 uses
  switch i32 %i.uo, label %.unreachabledefault721 [
    i32 0, label %bb.x
    i32 3, label %bb.y
    i32 2, label %bb.z
    i32 1, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w, %bb.aa
  %.0600 = phi i32 [ %i.un, %bb.w ], [ %i.zt, %bb.aa ]
  %.1596 = phi ptr [ %.0595670, %bb.w ], [ %i.zs, %bb.aa ] ; 3 uses
  %i.uv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.uw = load i16, ptr %.1596, align 2
  %i.ux = zext i16 %i.uw to i32                   ; 3 uses
  %i.uy = lshr i32 %i.ux, 10
  %i.uz = and i32 %i.uy, 31
  %i.va = zext nneg i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.va
  %i.vc = load i8, ptr %i.vb, align 1
  %i.vd = lshr i32 %i.ux, 5
  %i.ve = and i32 %i.vd, 31
  %i.vf = zext nneg i32 %i.ve to i64
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.vf
  %i.vh = load i8, ptr %i.vg, align 1
  %i.vi = and i32 %i.ux, 31
  %i.vj = zext nneg i32 %i.vi to i64
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.vj
  %i.vl = load i8, ptr %i.vk, align 1
  %i.vm = zext i8 %i.vl to i16
  %i.vn = mul nuw i16 %i.vm, %i.us
  %i.vo = udiv i16 %i.vn, 255
  %i.vp = zext i8 %i.vc to i16
  %i.vq = zext i8 %i.vh to i16
  %i.vr = insertelement <2 x i16> poison, i16 %i.vq, i64 0
  %i.vs = insertelement <2 x i16> %i.vr, i16 %i.vp, i64 1
  %i.vt = mul nuw <2 x i16> %i.vs, %i.ur
  %i.vu = udiv <2 x i16> %i.vt, splat (i16 255)
  %i.vv = shl nuw nsw <2 x i16> %i.vu, <i16 2, i16 7>
  %i.vw = and <2 x i16> %i.vv, <i16 2016, i16 31744> ; 2 uses
  %shift = shufflevector <2 x i16> %i.vw, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or <2 x i16> %i.vw, %shift
  %i.vx = extractelement <2 x i16> %foldExtExtBinop, i64 0
  %i.vy = lshr i16 %i.vo, 3
  %i.vz = or i16 %i.vx, %i.vy
  store i16 %i.vz, ptr %.1596, align 2
  %i.wa = getelementptr inbounds nuw i8, ptr %.1596, i64 2
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.1601 = phi i32 [ %.0600, %bb.x ], [ %i.un, %bb.w ]
  %.2597 = phi ptr [ %i.wa, %bb.x ], [ %.0595670, %bb.w ] ; 3 uses
  %i.wb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.wc = load i16, ptr %.2597, align 2
  %i.wd = zext i16 %i.wc to i32                   ; 3 uses
  %i.we = lshr i32 %i.wd, 10
  %i.wf = and i32 %i.we, 31
  %i.wg = zext nneg i32 %i.wf to i64
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wg
  %i.wi = load i8, ptr %i.wh, align 1
  %i.wj = lshr i32 %i.wd, 5
  %i.wk = and i32 %i.wj, 31
  %i.wl = zext nneg i32 %i.wk to i64
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wl
  %i.wn = load i8, ptr %i.wm, align 1
  %i.wo = and i32 %i.wd, 31
  %i.wp = zext nneg i32 %i.wo to i64
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wp
  %i.wr = load i8, ptr %i.wq, align 1
  %i.ws = zext i8 %i.wr to i16
  %i.wt = mul nuw i16 %i.ws, %i.us
  %i.wu = udiv i16 %i.wt, 255
  %i.wv = zext i8 %i.wi to i16
  %i.ww = zext i8 %i.wn to i16
  %i.wx = insertelement <2 x i16> poison, i16 %i.ww, i64 0
  %i.wy = insertelement <2 x i16> %i.wx, i16 %i.wv, i64 1
  %i.wz = mul nuw <2 x i16> %i.wy, %i.ur
  %i.xa = udiv <2 x i16> %i.wz, splat (i16 255)
  %i.xb = shl nuw nsw <2 x i16> %i.xa, <i16 2, i16 7>
  %i.xc = and <2 x i16> %i.xb, <i16 2016, i16 31744> ; 2 uses
  %shift729 = shufflevector <2 x i16> %i.xc, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop730 = or <2 x i16> %i.xc, %shift729
  %i.xd = extractelement <2 x i16> %foldExtExtBinop730, i64 0
  %i.xe = lshr i16 %i.wu, 3
  %i.xf = or i16 %i.xd, %i.xe
  store i16 %i.xf, ptr %.2597, align 2
  %i.xg = getelementptr inbounds nuw i8, ptr %.2597, i64 2
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y
  %.2602 = phi i32 [ %.1601, %bb.y ], [ %i.un, %bb.w ]
  %.3598 = phi ptr [ %i.xg, %bb.y ], [ %.0595670, %bb.w ] ; 3 uses
  %i.xh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.xi = load i16, ptr %.3598, align 2
  %i.xj = zext i16 %i.xi to i32                   ; 3 uses
  %i.xk = lshr i32 %i.xj, 10
  %i.xl = and i32 %i.xk, 31
  %i.xm = zext nneg i32 %i.xl to i64
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.xm
  %i.xo = load i8, ptr %i.xn, align 1
  %i.xp = lshr i32 %i.xj, 5
  %i.xq = and i32 %i.xp, 31
  %i.xr = zext nneg i32 %i.xq to i64
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.xr
  %i.xt = load i8, ptr %i.xs, align 1
  %i.xu = and i32 %i.xj, 31
  %i.xv = zext nneg i32 %i.xu to i64
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.xv
  %i.xx = load i8, ptr %i.xw, align 1
  %i.xy = zext i8 %i.xx to i16
  %i.xz = mul nuw i16 %i.xy, %i.us
  %i.ya = udiv i16 %i.xz, 255
  %i.yb = zext i8 %i.xo to i16
  %i.yc = zext i8 %i.xt to i16
  %i.yd = insertelement <2 x i16> poison, i16 %i.yc, i64 0
  %i.ye = insertelement <2 x i16> %i.yd, i16 %i.yb, i64 1
  %i.yf = mul nuw <2 x i16> %i.ye, %i.ur
  %i.yg = udiv <2 x i16> %i.yf, splat (i16 255)
  %i.yh = shl nuw nsw <2 x i16> %i.yg, <i16 2, i16 7>
  %i.yi = and <2 x i16> %i.yh, <i16 2016, i16 31744> ; 2 uses
  %shift732 = shufflevector <2 x i16> %i.yi, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop733 = or <2 x i16> %i.yi, %shift732
  %i.yj = extractelement <2 x i16> %foldExtExtBinop733, i64 0
  %i.yk = lshr i16 %i.ya, 3
  %i.yl = or i16 %i.yj, %i.yk
  store i16 %i.yl, ptr %.3598, align 2
  %i.ym = getelementptr inbounds nuw i8, ptr %.3598, i64 2
  br label %bb.aa

.unreachabledefault721:                           ; preds = %bb.w
  unreachable

bb.aa:                                            ; preds = %bb.w, %bb.z
  %.3603 = phi i32 [ %.2602, %bb.z ], [ %i.un, %bb.w ] ; 2 uses
  %.4599 = phi ptr [ %i.ym, %bb.z ], [ %.0595670, %bb.w ] ; 3 uses
  %i.yn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.yo = load i16, ptr %.4599, align 2
  %i.yp = zext i16 %i.yo to i32                   ; 3 uses
  %i.yq = lshr i32 %i.yp, 10
  %i.yr = and i32 %i.yq, 31
  %i.ys = zext nneg i32 %i.yr to i64
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yn, i64 %i.ys
  %i.yu = load i8, ptr %i.yt, align 1
  %i.yv = lshr i32 %i.yp, 5
  %i.yw = and i32 %i.yv, 31
  %i.yx = zext nneg i32 %i.yw to i64
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yn, i64 %i.yx
  %i.yz = load i8, ptr %i.yy, align 1
  %i.za = and i32 %i.yp, 31
  %i.zb = zext nneg i32 %i.za to i64
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yn, i64 %i.zb
  %i.zd = load i8, ptr %i.zc, align 1
  %i.ze = zext i8 %i.zd to i16
  %i.zf = mul nuw i16 %i.ze, %i.us
  %i.zg = udiv i16 %i.zf, 255
  %i.zh = zext i8 %i.yu to i16
  %i.zi = zext i8 %i.yz to i16
  %i.zj = insertelement <2 x i16> poison, i16 %i.zi, i64 0
  %i.zk = insertelement <2 x i16> %i.zj, i16 %i.zh, i64 1
  %i.zl = mul nuw <2 x i16> %i.zk, %i.ur
  %i.zm = udiv <2 x i16> %i.zl, splat (i16 255)
  %i.zn = shl nuw nsw <2 x i16> %i.zm, <i16 2, i16 7>
  %i.zo = and <2 x i16> %i.zn, <i16 2016, i16 31744> ; 2 uses
  %shift735 = shufflevector <2 x i16> %i.zo, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop736 = or <2 x i16> %i.zo, %shift735
  %i.zp = extractelement <2 x i16> %foldExtExtBinop736, i64 0
  %i.zq = lshr i16 %i.zg, 3
  %i.zr = or i16 %i.zp, %i.zq
  store i16 %i.zr, ptr %.4599, align 2
  %i.zs = getelementptr inbounds nuw i8, ptr %.4599, i64 2 ; 2 uses
  %i.zt = add nsw i32 %.3603, -1
  %i.zu = icmp sgt i32 %.3603, 1
  br i1 %i.zu, label %bb.x, label %bb.ab, !llvm.loop !10

bb.ab:                                            ; preds = %bb.aa
  %i.zv = getelementptr inbounds [2 x i8], ptr %i.zs, i64 %i.ut
  %.not630 = icmp eq i32 %i.uu, 0
  br i1 %.not630, label %.loopexit, label %bb.w, !llvm.loop !11

bb.ac:                                            ; preds = %.split
  %i.zw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.zx = load i32, ptr %i.zw, align 4            ; 2 uses
  %.not667 = icmp eq i32 %i.zx, 0
  br i1 %.not667, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.zz = load ptr, ptr %i.zy, align 8
  %i.aaa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aab = load i32, ptr %i.aaa, align 4
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aad = load i32, ptr %i.aac, align 8
  %i.aae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aaf = load ptr, ptr %i.aae, align 8
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 5
  %i.aah = load i8, ptr %i.aag, align 1
  %i.aai = zext i8 %i.aah to i32
  %i.aaj = sdiv i32 %i.aad, %i.aai                ; 2 uses
  %i.aak = mul nsw i32 %i.aab, %i.aaj
  %i.aal = sext i32 %i.aak to i64
  %i.aam = getelementptr inbounds [2 x i8], ptr %i.zz, i64 %i.aal
  %i.aan = load i32, ptr %1, align 4
  %i.aao = sext i32 %i.aan to i64
  %i.aap = getelementptr inbounds [2 x i8], ptr %i.aam, i64 %i.aao
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aar = load i32, ptr %i.aaq, align 4          ; 3 uses
  %i.aas = sub nsw i32 %i.aaj, %i.aar
  %i.aat = add nsw i32 %i.aar, 3
  %i.aau = sdiv i32 %i.aat, 4                     ; 4 uses
  %i.aav = and i32 %i.aar, 3
  %i.aaw = zext i8 %3 to i32                      ; 4 uses
  %i.aax = zext i8 %4 to i32                      ; 4 uses
  %i.aay = zext i8 %5 to i32                      ; 4 uses
  %i.aaz = sext i32 %i.aas to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %bb.ai
  %.in = phi i32 [ %i.zx, %.lr.ph ], [ %i.aba, %bb.ai ]
  %.0605668 = phi ptr [ %i.aap, %.lr.ph ], [ %i.ahx, %bb.ai ] ; 4 uses
  %i.aba = add nsw i32 %.in, -1                   ; 2 uses
  switch i32 %i.aav, label %.unreachabledefault722 [
    i32 0, label %bb.ae
    i32 3, label %bb.af
    i32 2, label %bb.ag
    i32 1, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ah
  %.0610 = phi i32 [ %i.aau, %bb.ad ], [ %i.ahv, %bb.ah ]
  %.1606 = phi ptr [ %.0605668, %bb.ad ], [ %i.ahu, %bb.ah ] ; 3 uses
  %i.abb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.abc = load i16, ptr %.1606, align 2
  %i.abd = zext i16 %i.abc to i32                 ; 3 uses
  %i.abe = lshr i32 %i.abd, 10
  %i.abf = and i32 %i.abe, 31
  %i.abg = zext nneg i32 %i.abf to i64
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.abg
  %i.abi = load i8, ptr %i.abh, align 1
  %i.abj = zext i8 %i.abi to i32                  ; 2 uses
  %i.abk = lshr i32 %i.abd, 5
  %i.abl = and i32 %i.abk, 31
  %i.abm = zext nneg i32 %i.abl to i64
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.abm
  %i.abo = load i8, ptr %i.abn, align 1
  %i.abp = zext i8 %i.abo to i32                  ; 2 uses
  %i.abq = and i32 %i.abd, 31
  %i.abr = zext nneg i32 %i.abq to i64
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.abr
  %i.abt = load i8, ptr %i.abs, align 1
  %i.abu = zext i8 %i.abt to i32                  ; 2 uses
  %i.abv = mul nuw nsw i32 %i.abj, %i.aaw
  %.lhs.trunc = trunc nuw i32 %i.abv to i16
  %i.abw = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.abw to i32
  %i.abx = mul nuw nsw i32 %i.abj, %i.b
  %i.aby = udiv i32 %i.abx, 255
  %i.abz = add nuw nsw i32 %i.aby, %.zext
  %spec.store.select35 = tail call i32 @llvm.umin.i32(i32 %i.abz, i32 255)
  %i.aca = mul nuw nsw i32 %i.abp, %i.aax
  %.lhs.trunc635 = trunc nuw i32 %i.aca to i16
  %i.acb = udiv i16 %.lhs.trunc635, 255
  %.zext636 = zext nneg i16 %i.acb to i32
  %i.acc = mul nuw nsw i32 %i.abp, %i.b
  %i.acd = udiv i32 %i.acc, 255
  %i.ace = add nuw nsw i32 %i.acd, %.zext636
  %spec.store.select19 = tail call i32 @llvm.umin.i32(i32 %i.ace, i32 255)
  %i.acf = mul nuw nsw i32 %i.abu, %i.aay
  %.lhs.trunc637 = trunc nuw i32 %i.acf to i16
  %i.acg = udiv i16 %.lhs.trunc637, 255
  %.zext638 = zext nneg i16 %i.acg to i32
  %i.ach = mul nuw nsw i32 %i.abu, %i.b
  %i.aci = udiv i32 %i.ach, 255
  %i.acj = add nuw nsw i32 %i.aci, %.zext638
  %spec.store.select44 = tail call i32 @llvm.umin.i32(i32 %i.acj, i32 255)
  %i.ack = shl nuw nsw i32 %spec.store.select35, 7
  %i.acl = and i32 %i.ack, 31744
  %i.acm = shl nuw nsw i32 %spec.store.select19, 2
  %i.acn = and i32 %i.acm, 992
  %i.aco = or disjoint i32 %i.acn, %i.acl
  %i.acp = lshr i32 %spec.store.select44, 3
  %i.acq = or disjoint i32 %i.aco, %i.acp
  %i.acr = trunc nuw nsw i32 %i.acq to i16
  store i16 %i.acr, ptr %.1606, align 2
  %i.acs = getelementptr inbounds nuw i8, ptr %.1606, i64 2
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.1611 = phi i32 [ %.0610, %bb.ae ], [ %i.aau, %bb.ad ]
  %.2607 = phi ptr [ %i.acs, %bb.ae ], [ %.0605668, %bb.ad ] ; 3 uses
  %i.act = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.acu = load i16, ptr %.2607, align 2
  %i.acv = zext i16 %i.acu to i32                 ; 3 uses
  %i.acw = lshr i32 %i.acv, 10
  %i.acx = and i32 %i.acw, 31
  %i.acy = zext nneg i32 %i.acx to i64
  %i.acz = getelementptr inbounds nuw i8, ptr %i.act, i64 %i.acy
  %i.ada = load i8, ptr %i.acz, align 1
  %i.adb = zext i8 %i.ada to i32                  ; 2 uses
  %i.adc = lshr i32 %i.acv, 5
  %i.add = and i32 %i.adc, 31
  %i.ade = zext nneg i32 %i.add to i64
  %i.adf = getelementptr inbounds nuw i8, ptr %i.act, i64 %i.ade
  %i.adg = load i8, ptr %i.adf, align 1
  %i.adh = zext i8 %i.adg to i32                  ; 2 uses
  %i.adi = and i32 %i.acv, 31
  %i.adj = zext nneg i32 %i.adi to i64
  %i.adk = getelementptr inbounds nuw i8, ptr %i.act, i64 %i.adj
  %i.adl = load i8, ptr %i.adk, align 1
  %i.adm = zext i8 %i.adl to i32                  ; 2 uses
  %i.adn = mul nuw nsw i32 %i.adb, %i.aaw
  %.lhs.trunc639 = trunc nuw i32 %i.adn to i16
  %i.ado = udiv i16 %.lhs.trunc639, 255
  %.zext640 = zext nneg i16 %i.ado to i32
  %i.adp = mul nuw nsw i32 %i.adb, %i.b
  %i.adq = udiv i32 %i.adp, 255
  %i.adr = add nuw nsw i32 %i.adq, %.zext640
  %spec.store.select20 = tail call i32 @llvm.umin.i32(i32 %i.adr, i32 255)
  %i.ads = mul nuw nsw i32 %i.adh, %i.aax
  %.lhs.trunc641 = trunc nuw i32 %i.ads to i16
  %i.adt = udiv i16 %.lhs.trunc641, 255
  %.zext642 = zext nneg i16 %i.adt to i32
  %i.adu = mul nuw nsw i32 %i.adh, %i.b
  %i.adv = udiv i32 %i.adu, 255
  %i.adw = add nuw nsw i32 %i.adv, %.zext642
  %spec.store.select36 = tail call i32 @llvm.umin.i32(i32 %i.adw, i32 255)
  %i.adx = mul nuw nsw i32 %i.adm, %i.aay
  %.lhs.trunc643 = trunc nuw i32 %i.adx to i16
  %i.ady = udiv i16 %.lhs.trunc643, 255
  %.zext644 = zext nneg i16 %i.ady to i32
  %i.adz = mul nuw nsw i32 %i.adm, %i.b
  %i.aea = udiv i32 %i.adz, 255
  %i.aeb = add nuw nsw i32 %i.aea, %.zext644
  %spec.store.select21 = tail call i32 @llvm.umin.i32(i32 %i.aeb, i32 255)
  %i.aec = shl nuw nsw i32 %spec.store.select20, 7
  %i.aed = and i32 %i.aec, 31744
  %i.aee = shl nuw nsw i32 %spec.store.select36, 2
  %i.aef = and i32 %i.aee, 992
  %i.aeg = or disjoint i32 %i.aef, %i.aed
  %i.aeh = lshr i32 %spec.store.select21, 3
  %i.aei = or disjoint i32 %i.aeg, %i.aeh
  %i.aej = trunc nuw nsw i32 %i.aei to i16
  store i16 %i.aej, ptr %.2607, align 2
  %i.aek = getelementptr inbounds nuw i8, ptr %.2607, i64 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.af
  %.2612 = phi i32 [ %.1611, %bb.af ], [ %i.aau, %bb.ad ]
  %.3608 = phi ptr [ %i.aek, %bb.af ], [ %.0605668, %bb.ad ] ; 3 uses
  %i.ael = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.aem = load i16, ptr %.3608, align 2
  %i.aen = zext i16 %i.aem to i32                 ; 3 uses
  %i.aeo = lshr i32 %i.aen, 10
  %i.aep = and i32 %i.aeo, 31
  %i.aeq = zext nneg i32 %i.aep to i64
  %i.aer = getelementptr inbounds nuw i8, ptr %i.ael, i64 %i.aeq
  %i.aes = load i8, ptr %i.aer, align 1
  %i.aet = zext i8 %i.aes to i32                  ; 2 uses
  %i.aeu = lshr i32 %i.aen, 5
  %i.aev = and i32 %i.aeu, 31
  %i.aew = zext nneg i32 %i.aev to i64
  %i.aex = getelementptr inbounds nuw i8, ptr %i.ael, i64 %i.aew
  %i.aey = load i8, ptr %i.aex, align 1
  %i.aez = zext i8 %i.aey to i32                  ; 2 uses
  %i.afa = and i32 %i.aen, 31
  %i.afb = zext nneg i32 %i.afa to i64
  %i.afc = getelementptr inbounds nuw i8, ptr %i.ael, i64 %i.afb
  %i.afd = load i8, ptr %i.afc, align 1
  %i.afe = zext i8 %i.afd to i32                  ; 2 uses
  %i.aff = mul nuw nsw i32 %i.aet, %i.aaw
  %.lhs.trunc645 = trunc nuw i32 %i.aff to i16
  %i.afg = udiv i16 %.lhs.trunc645, 255
  %.zext646 = zext nneg i16 %i.afg to i32
  %i.afh = mul nuw nsw i32 %i.aet, %i.b
  %i.afi = udiv i32 %i.afh, 255
  %i.afj = add nuw nsw i32 %i.afi, %.zext646
  %spec.store.select22 = tail call i32 @llvm.umin.i32(i32 %i.afj, i32 255)
  %i.afk = mul nuw nsw i32 %i.aez, %i.aax
  %.lhs.trunc647 = trunc nuw i32 %i.afk to i16
  %i.afl = udiv i16 %.lhs.trunc647, 255
  %.zext648 = zext nneg i16 %i.afl to i32
  %i.afm = mul nuw nsw i32 %i.aez, %i.b
  %i.afn = udiv i32 %i.afm, 255
  %i.afo = add nuw nsw i32 %i.afn, %.zext648
  %spec.store.select37 = tail call i32 @llvm.umin.i32(i32 %i.afo, i32 255)
  %i.afp = mul nuw nsw i32 %i.afe, %i.aay
  %.lhs.trunc649 = trunc nuw i32 %i.afp to i16
  %i.afq = udiv i16 %.lhs.trunc649, 255
  %.zext650 = zext nneg i16 %i.afq to i32
  %i.afr = mul nuw nsw i32 %i.afe, %i.b
  %i.afs = udiv i32 %i.afr, 255
  %i.aft = add nuw nsw i32 %i.afs, %.zext650
  %spec.store.select23 = tail call i32 @llvm.umin.i32(i32 %i.aft, i32 255)
  %i.afu = shl nuw nsw i32 %spec.store.select22, 7
  %i.afv = and i32 %i.afu, 31744
  %i.afw = shl nuw nsw i32 %spec.store.select37, 2
  %i.afx = and i32 %i.afw, 992
  %i.afy = or disjoint i32 %i.afx, %i.afv
  %i.afz = lshr i32 %spec.store.select23, 3
  %i.aga = or disjoint i32 %i.afy, %i.afz
  %i.agb = trunc nuw nsw i32 %i.aga to i16
  store i16 %i.agb, ptr %.3608, align 2
  %i.agc = getelementptr inbounds nuw i8, ptr %.3608, i64 2
  br label %bb.ah

.unreachabledefault722:                           ; preds = %bb.ad
  unreachable

bb.ah:                                            ; preds = %bb.ad, %bb.ag
  %.3613 = phi i32 [ %.2612, %bb.ag ], [ %i.aau, %bb.ad ] ; 2 uses
  %.4609 = phi ptr [ %i.agc, %bb.ag ], [ %.0605668, %bb.ad ] ; 3 uses
  %i.agd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.age = load i16, ptr %.4609, align 2
  %i.agf = zext i16 %i.age to i32                 ; 3 uses
  %i.agg = lshr i32 %i.agf, 10
  %i.agh = and i32 %i.agg, 31
  %i.agi = zext nneg i32 %i.agh to i64
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agd, i64 %i.agi
  %i.agk = load i8, ptr %i.agj, align 1
  %i.agl = zext i8 %i.agk to i32                  ; 2 uses
  %i.agm = lshr i32 %i.agf, 5
  %i.agn = and i32 %i.agm, 31
  %i.ago = zext nneg i32 %i.agn to i64
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agd, i64 %i.ago
  %i.agq = load i8, ptr %i.agp, align 1
  %i.agr = zext i8 %i.agq to i32                  ; 2 uses
  %i.ags = and i32 %i.agf, 31
  %i.agt = zext nneg i32 %i.ags to i64
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agd, i64 %i.agt
  %i.agv = load i8, ptr %i.agu, align 1
  %i.agw = zext i8 %i.agv to i32                  ; 2 uses
  %i.agx = mul nuw nsw i32 %i.agl, %i.aaw
  %.lhs.trunc651 = trunc nuw i32 %i.agx to i16
  %i.agy = udiv i16 %.lhs.trunc651, 255
  %.zext652 = zext nneg i16 %i.agy to i32
  %i.agz = mul nuw nsw i32 %i.agl, %i.b
  %i.aha = udiv i32 %i.agz, 255
  %i.ahb = add nuw nsw i32 %i.aha, %.zext652
  %spec.store.select24 = tail call i32 @llvm.umin.i32(i32 %i.ahb, i32 255)
  %i.ahc = mul nuw nsw i32 %i.agr, %i.aax
  %.lhs.trunc653 = trunc nuw i32 %i.ahc to i16
  %i.ahd = udiv i16 %.lhs.trunc653, 255
  %.zext654 = zext nneg i16 %i.ahd to i32
  %i.ahe = mul nuw nsw i32 %i.agr, %i.b
  %i.ahf = udiv i32 %i.ahe, 255
  %i.ahg = add nuw nsw i32 %i.ahf, %.zext654
  %spec.store.select38 = tail call i32 @llvm.umin.i32(i32 %i.ahg, i32 255)
  %i.ahh = mul nuw nsw i32 %i.agw, %i.aay
  %.lhs.trunc655 = trunc nuw i32 %i.ahh to i16
  %i.ahi = udiv i16 %.lhs.trunc655, 255
  %.zext656 = zext nneg i16 %i.ahi to i32
  %i.ahj = mul nuw nsw i32 %i.agw, %i.b
  %i.ahk = udiv i32 %i.ahj, 255
  %i.ahl = add nuw nsw i32 %i.ahk, %.zext656
  %spec.store.select25 = tail call i32 @llvm.umin.i32(i32 %i.ahl, i32 255)
  %i.ahm = shl nuw nsw i32 %spec.store.select24, 7
  %i.ahn = and i32 %i.ahm, 31744
  %i.aho = shl nuw nsw i32 %spec.store.select38, 2
  %i.ahp = and i32 %i.aho, 992
  %i.ahq = or disjoint i32 %i.ahp, %i.ahn
  %i.ahr = lshr i32 %spec.store.select25, 3
  %i.ahs = or disjoint i32 %i.ahq, %i.ahr
  %i.aht = trunc nuw nsw i32 %i.ahs to i16
  store i16 %i.aht, ptr %.4609, align 2
  %i.ahu = getelementptr inbounds nuw i8, ptr %.4609, i64 2 ; 2 uses
  %i.ahv = add nsw i32 %.3613, -1
  %i.ahw = icmp sgt i32 %.3613, 1
  br i1 %i.ahw, label %bb.ae, label %bb.ai, !llvm.loop !12

bb.ai:                                            ; preds = %bb.ah
  %i.ahx = getelementptr inbounds [2 x i8], ptr %i.ahu, i64 %i.aaz
  %.not = icmp eq i32 %i.aba, 0
  br i1 %.not, label %.loopexit, label %bb.ad, !llvm.loop !13

bb.aj:                                            ; preds = %.split, %bb.a
  %i.ahy = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ahz = load i32, ptr %i.ahy, align 4          ; 2 uses
  %.not634681 = icmp eq i32 %i.ahz, 0
  br i1 %.not634681, label %.loopexit, label %.lr.ph683

.lr.ph683:                                        ; preds = %bb.aj
  %i.aia = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aib = load ptr, ptr %i.aia, align 8
  %i.aic = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aid = load i32, ptr %i.aic, align 4
  %i.aie = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aif = load i32, ptr %i.aie, align 8
  %i.aig = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aih = load ptr, ptr %i.aig, align 8
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 5
  %i.aij = load i8, ptr %i.aii, align 1
  %i.aik = zext i8 %i.aij to i32
  %i.ail = sdiv i32 %i.aif, %i.aik                ; 2 uses
  %i.aim = mul nsw i32 %i.aid, %i.ail
  %i.ain = sext i32 %i.aim to i64
  %i.aio = getelementptr inbounds [2 x i8], ptr %i.aib, i64 %i.ain
  %i.aip = load i32, ptr %1, align 4
  %i.aiq = sext i32 %i.aip to i64
  %i.air = getelementptr inbounds [2 x i8], ptr %i.aio, i64 %i.aiq
  %i.ais = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ait = load i32, ptr %i.ais, align 4          ; 3 uses
  %i.aiu = sub nsw i32 %i.ail, %i.ait
  %i.aiv = add nsw i32 %i.ait, 3
  %i.aiw = sdiv i32 %i.aiv, 4                     ; 4 uses
  %i.aix = and i32 %i.ait, 3
  %i.aiy = lshr i8 %3, 3
  %i.aiz = zext nneg i8 %i.aiy to i16
  %i.aja = shl nuw nsw i16 %i.aiz, 10
  %i.ajb = lshr i8 %4, 3
  %i.ajc = zext nneg i8 %i.ajb to i16
  %i.ajd = shl nuw nsw i16 %i.ajc, 5
  %i.aje = or disjoint i16 %i.ajd, %i.aja
  %i.ajf = lshr i8 %5, 3
  %i.ajg = zext nneg i8 %i.ajf to i16
  %i.ajh = or disjoint i16 %i.aje, %i.ajg         ; 4 uses
  %i.aji = sext i32 %i.aiu to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph683, %bb.ap
  %.in692 = phi i32 [ %i.ahz, %.lr.ph683 ], [ %i.ajj, %bb.ap ]
  %.0619682 = phi ptr [ %i.air, %.lr.ph683 ], [ %i.ajq, %bb.ap ] ; 4 uses
  %i.ajj = add nsw i32 %.in692, -1                ; 2 uses
  switch i32 %i.aix, label %.unreachabledefault723 [
    i32 0, label %bb.al
    i32 3, label %bb.am
    i32 2, label %bb.an
    i32 1, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ao
  %.1620 = phi ptr [ %.0619682, %bb.ak ], [ %i.ajn, %bb.ao ] ; 2 uses
  %.0615 = phi i32 [ %i.aiw, %bb.ak ], [ %i.ajo, %bb.ao ]
  store i16 %i.ajh, ptr %.1620, align 2
  %i.ajk = getelementptr inbounds nuw i8, ptr %.1620, i64 2
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.2621 = phi ptr [ %i.ajk, %bb.al ], [ %.0619682, %bb.ak ] ; 2 uses
  %.1616 = phi i32 [ %.0615, %bb.al ], [ %i.aiw, %bb.ak ]
  store i16 %i.ajh, ptr %.2621, align 2
  %i.ajl = getelementptr inbounds nuw i8, ptr %.2621, i64 2
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.am
  %.3622 = phi ptr [ %i.ajl, %bb.am ], [ %.0619682, %bb.ak ] ; 2 uses
  %.2617 = phi i32 [ %.1616, %bb.am ], [ %i.aiw, %bb.ak ]
  store i16 %i.ajh, ptr %.3622, align 2
  %i.ajm = getelementptr inbounds nuw i8, ptr %.3622, i64 2
  br label %bb.ao

.unreachabledefault723:                           ; preds = %bb.ak
  unreachable

bb.ao:                                            ; preds = %bb.ak, %bb.an
  %.4623 = phi ptr [ %i.ajm, %bb.an ], [ %.0619682, %bb.ak ] ; 2 uses
  %.3618 = phi i32 [ %.2617, %bb.an ], [ %i.aiw, %bb.ak ] ; 2 uses
  store i16 %i.ajh, ptr %.4623, align 2
  %i.ajn = getelementptr inbounds nuw i8, ptr %.4623, i64 2 ; 2 uses
  %i.ajo = add nsw i32 %.3618, -1
  %i.ajp = icmp sgt i32 %.3618, 1
  br i1 %i.ajp, label %bb.al, label %bb.ap, !llvm.loop !14

bb.ap:                                            ; preds = %bb.ao
  %i.ajq = getelementptr inbounds [2 x i8], ptr %i.ajn, i64 %i.aji
  %.not634 = icmp eq i32 %i.ajj, 0
  br i1 %.not634, label %.loopexit, label %bb.ak, !llvm.loop !15

.loopexit:                                        ; preds = %bb.ai, %bb.ab, %bb.u, %bb.n, %bb.g, %bb.ap, %bb.ac, %bb.v, %bb.o, %bb.h, %bb.b, %bb.aj
  ret i1 true
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @SDL_BlendFillRect_RGB565(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #3 {
bb.a:
  %i.a = xor i8 %6, -1                            ; 5 uses
  %i.b = zext i8 %i.a to i32                      ; 28 uses
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.split, label %bb.aj

.split:                                           ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  switch i32 %i.e, label %bb.aj [
    i32 0, label %bb.b
    i32 4, label %bb.h
    i32 1, label %bb.o
    i32 5, label %bb.o
    i32 2, label %bb.v
    i32 3, label %bb.ac
  ]

bb.b:                                             ; preds = %.split
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not633678 = icmp eq i32 %i.g, 0
  br i1 %.not633678, label %.loopexit, label %.lr.ph680

.lr.ph680:                                        ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = sdiv i32 %i.m, %i.r                      ; 2 uses
  %i.t = mul nsw i32 %i.k, %i.s
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.u
  %i.w = load i32, ptr %1, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 4             ; 3 uses
  %i.ab = sub nsw i32 %i.s, %i.aa
  %i.ac = add nsw i32 %i.aa, 3
  %i.ad = sdiv i32 %i.ac, 4                       ; 4 uses
  %i.ae = and i32 %i.aa, 3
  %i.af = zext i8 %3 to i32                       ; 4 uses
  %i.ag = zext i8 %4 to i32                       ; 4 uses
  %i.ah = zext i8 %5 to i32                       ; 4 uses
  %i.ai = sext i32 %i.ab to i64
  br label %.lr.ph680.split

.lr.ph680.split:                                  ; preds = %.lr.ph680, %bb.g
  %.in691 = phi i32 [ %i.aj, %bb.g ], [ %i.g, %.lr.ph680 ]
  %.0569679 = phi ptr [ %i.gi, %bb.g ], [ %i.y, %.lr.ph680 ] ; 4 uses
  %i.aj = add nsw i32 %.in691, -1                 ; 2 uses
  switch i32 %i.ae, label %default.unreachable [
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph680.split, %bb.f
  %.0570 = phi i32 [ %i.ad, %.lr.ph680.split ], [ %i.gg, %bb.f ]
  %.1 = phi ptr [ %.0569679, %.lr.ph680.split ], [ %i.gf, %bb.f ] ; 3 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.al = load i16, ptr %.1, align 2
  %i.am = zext i16 %i.al to i32                   ; 3 uses
  %i.an = lshr i32 %i.am, 11
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.at = lshr i32 %i.am, 5
  %i.au = and i32 %i.at, 63
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = and i32 %i.am, 31
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = mul nuw nsw i32 %i.ar, %i.b
  %i.bf = udiv i32 %i.be, 255
  %i.bg = add nuw nsw i32 %i.bf, %i.af
  %i.bh = mul nuw nsw i32 %i.ay, %i.b
  %i.bi = udiv i32 %i.bh, 255
  %i.bj = add nuw nsw i32 %i.bi, %i.ag
  %i.bk = mul nuw nsw i32 %i.bd, %i.b
  %i.bl = udiv i32 %i.bk, 255
  %i.bm = add nuw nsw i32 %i.bl, %i.ah
  %i.bn = shl nuw nsw i32 %i.bg, 8
  %i.bo = and i32 %i.bn, 63488
  %i.bp = shl nuw nsw i32 %i.bj, 3
  %i.bq = and i32 %i.bp, 8160
  %i.br = or i32 %i.bq, %i.bo
  %i.bs = lshr i32 %i.bm, 3
  %i.bt = or i32 %i.br, %i.bs
  %i.bu = trunc nuw i32 %i.bt to i16
  store i16 %i.bu, ptr %.1, align 2
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph680.split, %bb.c
  %.1571 = phi i32 [ %.0570, %bb.c ], [ %i.ad, %.lr.ph680.split ]
  %.2 = phi ptr [ %i.bv, %bb.c ], [ %.0569679, %.lr.ph680.split ] ; 3 uses
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.bx = load i16, ptr %.2, align 2
  %i.by = zext i16 %i.bx to i32                   ; 3 uses
  %i.bz = lshr i32 %i.by, 11
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = zext i8 %i.cc to i32
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.cf = lshr i32 %i.by, 5
  %i.cg = and i32 %i.cf, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i32
  %i.cl = and i32 %i.by, 31
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = zext i8 %i.co to i32
  %i.cq = mul nuw nsw i32 %i.cd, %i.b
  %i.cr = udiv i32 %i.cq, 255
  %i.cs = add nuw nsw i32 %i.cr, %i.af
  %i.ct = mul nuw nsw i32 %i.ck, %i.b
  %i.cu = udiv i32 %i.ct, 255
  %i.cv = add nuw nsw i32 %i.cu, %i.ag
  %i.cw = mul nuw nsw i32 %i.cp, %i.b
  %i.cx = udiv i32 %i.cw, 255
  %i.cy = add nuw nsw i32 %i.cx, %i.ah
  %i.cz = shl nuw nsw i32 %i.cs, 8
  %i.da = and i32 %i.cz, 63488
  %i.db = shl nuw nsw i32 %i.cv, 3
  %i.dc = and i32 %i.db, 8160
  %i.dd = or i32 %i.dc, %i.da
  %i.de = lshr i32 %i.cy, 3
  %i.df = or i32 %i.dd, %i.de
  %i.dg = trunc nuw i32 %i.df to i16
  store i16 %i.dg, ptr %.2, align 2
  %i.dh = getelementptr inbounds nuw i8, ptr %.2, i64 2
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph680.split, %bb.d
  %.2572 = phi i32 [ %.1571, %bb.d ], [ %i.ad, %.lr.ph680.split ]
  %.3 = phi ptr [ %i.dh, %bb.d ], [ %.0569679, %.lr.ph680.split ] ; 3 uses
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.dj = load i16, ptr %.3, align 2
  %i.dk = zext i16 %i.dj to i32                   ; 3 uses
  %i.dl = lshr i32 %i.dk, 11
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = zext i8 %i.do to i32
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.dr = lshr i32 %i.dk, 5
  %i.ds = and i32 %i.dr, 63
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = zext i8 %i.dv to i32
  %i.dx = and i32 %i.dk, 31
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i32
  %i.ec = mul nuw nsw i32 %i.dp, %i.b
  %i.ed = udiv i32 %i.ec, 255
  %i.ee = add nuw nsw i32 %i.ed, %i.af
  %i.ef = mul nuw nsw i32 %i.dw, %i.b
  %i.eg = udiv i32 %i.ef, 255
  %i.eh = add nuw nsw i32 %i.eg, %i.ag
  %i.ei = mul nuw nsw i32 %i.eb, %i.b
  %i.ej = udiv i32 %i.ei, 255
  %i.ek = add nuw nsw i32 %i.ej, %i.ah
  %i.el = shl nuw nsw i32 %i.ee, 8
  %i.em = and i32 %i.el, 63488
  %i.en = shl nuw nsw i32 %i.eh, 3
  %i.eo = and i32 %i.en, 8160
  %i.ep = or i32 %i.eo, %i.em
  %i.eq = lshr i32 %i.ek, 3
  %i.er = or i32 %i.ep, %i.eq
  %i.es = trunc nuw i32 %i.er to i16
  store i16 %i.es, ptr %.3, align 2
  %i.et = getelementptr inbounds nuw i8, ptr %.3, i64 2
  br label %bb.f

default.unreachable:                              ; preds = %.lr.ph680.split
  unreachable

bb.f:                                             ; preds = %.lr.ph680.split, %bb.e
  %.3573 = phi i32 [ %.2572, %bb.e ], [ %i.ad, %.lr.ph680.split ] ; 2 uses
  %.4 = phi ptr [ %i.et, %bb.e ], [ %.0569679, %.lr.ph680.split ] ; 3 uses
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.ev = load i16, ptr %.4, align 2
  %i.ew = zext i16 %i.ev to i32                   ; 3 uses
  %i.ex = lshr i32 %i.ew, 11
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = zext i8 %i.fa to i32
  %i.fc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.fd = lshr i32 %i.ew, 5
  %i.fe = and i32 %i.fd, 63
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = zext i8 %i.fh to i32
  %i.fj = and i32 %i.ew, 31
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = zext i8 %i.fm to i32
  %i.fo = mul nuw nsw i32 %i.fb, %i.b
  %i.fp = udiv i32 %i.fo, 255
  %i.fq = add nuw nsw i32 %i.fp, %i.af
  %i.fr = mul nuw nsw i32 %i.fi, %i.b
  %i.fs = udiv i32 %i.fr, 255
  %i.ft = add nuw nsw i32 %i.fs, %i.ag
  %i.fu = mul nuw nsw i32 %i.fn, %i.b
  %i.fv = udiv i32 %i.fu, 255
  %i.fw = add nuw nsw i32 %i.fv, %i.ah
  %i.fx = shl nuw nsw i32 %i.fq, 8
  %i.fy = and i32 %i.fx, 63488
  %i.fz = shl nuw nsw i32 %i.ft, 3
  %i.ga = and i32 %i.fz, 8160
  %i.gb = or i32 %i.ga, %i.fy
  %i.gc = lshr i32 %i.fw, 3
  %i.gd = or i32 %i.gb, %i.gc
  %i.ge = trunc nuw i32 %i.gd to i16
  store i16 %i.ge, ptr %.4, align 2
  %i.gf = getelementptr inbounds nuw i8, ptr %.4, i64 2 ; 2 uses
  %i.gg = add nsw i32 %.3573, -1
  %i.gh = icmp sgt i32 %.3573, 1
  br i1 %i.gh, label %bb.c, label %bb.g, !llvm.loop !16

bb.g:                                             ; preds = %bb.f
  %i.gi = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %i.ai
  %.not633 = icmp eq i32 %i.aj, 0
  br i1 %.not633, label %.loopexit, label %.lr.ph680.split, !llvm.loop !17

bb.h:                                             ; preds = %.split
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.gk = load i32, ptr %i.gj, align 4            ; 2 uses
  %.not632675 = icmp eq i32 %i.gk, 0
  br i1 %.not632675, label %.loopexit, label %.lr.ph677

.lr.ph677:                                        ; preds = %bb.h
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.go = load i32, ptr %i.gn, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gq = load i32, ptr %i.gp, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 5
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = zext i8 %i.gu to i32
  %i.gw = sdiv i32 %i.gq, %i.gv                   ; 2 uses
  %i.gx = mul nsw i32 %i.go, %i.gw
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [2 x i8], ptr %i.gm, i64 %i.gy
  %i.ha = load i32, ptr %1, align 4
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.gz, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.he = load i32, ptr %i.hd, align 4            ; 3 uses
  %i.hf = sub nsw i32 %i.gw, %i.he
  %i.hg = add nsw i32 %i.he, 3
  %i.hh = sdiv i32 %i.hg, 4                       ; 4 uses
  %i.hi = and i32 %i.he, 3
  %i.hj = insertelement <2 x i8> poison, i8 %4, i64 0
  %i.hk = insertelement <2 x i8> %i.hj, i8 %3, i64 1 ; 4 uses
  %i.hl = zext <2 x i8> %i.hk to <2 x i16>
  %i.hm = zext i8 %5 to i32                       ; 4 uses
  %i.hn = sext i32 %i.hf to i64
  %i.ho = zext i8 %i.a to i16
  %i.hp = insertelement <2 x i16> poison, i16 %i.ho, i64 0
  %i.hq = shufflevector <2 x i16> %i.hp, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.hr = zext i8 %i.a to i16
  %i.hs = insertelement <2 x i16> poison, i16 %i.hr, i64 0
  %i.ht = shufflevector <2 x i16> %i.hs, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.hu = zext <2 x i8> %i.hk to <2 x i16>
  %i.hv = zext i8 %i.a to i16
  %i.hw = insertelement <2 x i16> poison, i16 %i.hv, i64 0
  %i.hx = shufflevector <2 x i16> %i.hw, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.hy = zext <2 x i8> %i.hk to <2 x i16>
  %i.hz = zext i8 %i.a to i16
  %i.ia = insertelement <2 x i16> poison, i16 %i.hz, i64 0
  %i.ib = shufflevector <2 x i16> %i.ia, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.ic = zext <2 x i8> %i.hk to <2 x i16>
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph677, %bb.n
  %.in690 = phi i32 [ %i.gk, %.lr.ph677 ], [ %i.id, %bb.n ]
  %.0575676 = phi ptr [ %i.hc, %.lr.ph677 ], [ %i.oc, %bb.n ] ; 4 uses
  %i.id = add nsw i32 %.in690, -1                 ; 2 uses
  switch i32 %i.hi, label %.unreachabledefault [
    i32 0, label %bb.j
    i32 3, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i, %bb.m
  %.0580 = phi i32 [ %i.hh, %bb.i ], [ %i.oa, %bb.m ]
  %.1576 = phi ptr [ %.0575676, %bb.i ], [ %i.nz, %bb.m ] ; 3 uses
  %i.ie = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.if = load i16, ptr %.1576, align 2
  %i.ig = zext i16 %i.if to i32                   ; 3 uses
  %i.ih = lshr i32 %i.ig, 11
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1
  %i.il = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.im = lshr i32 %i.ig, 5
  %i.in = and i32 %i.im, 63
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1
  %i.ir = and i32 %i.ig, 31
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1
  %i.iv = zext i8 %i.iu to i32
  %i.iw = mul nuw nsw i32 %i.iv, %i.b
  %i.ix = udiv i32 %i.iw, 255
  %i.iy = add nuw nsw i32 %i.ix, %i.hm
  %spec.store.select39 = tail call i32 @llvm.umin.i32(i32 %i.iy, i32 255)
  %i.iz = zext i8 %i.iq to i16
  %i.ja = insertelement <2 x i16> poison, i16 %i.iz, i64 0
  %i.jb = zext i8 %i.ik to i16
  %i.jc = insertelement <2 x i16> %i.ja, i16 %i.jb, i64 1
  %i.jd = mul nuw <2 x i16> %i.jc, %i.hq
  %i.je = udiv <2 x i16> %i.jd, splat (i16 255)
  %i.jf = add nuw nsw <2 x i16> %i.je, %i.hl
  %i.jg = tail call <2 x i16> @llvm.umin.v2i16(<2 x i16> %i.jf, <2 x i16> splat (i16 255))
  %i.jh = shl <2 x i16> %i.jg, <i16 3, i16 8>
  %i.ji = and <2 x i16> %i.jh, <i16 2016, i16 -2048> ; 2 uses
  %i.jj = extractelement <2 x i16> %i.ji, i64 0
  %i.jk = extractelement <2 x i16> %i.ji, i64 1
  %i.jl = or disjoint i16 %i.jj, %i.jk
  %i.jm = lshr i32 %spec.store.select39, 3
  %i.jn = trunc nuw nsw i32 %i.jm to i16
  %i.jo = or disjoint i16 %i.jl, %i.jn
  store i16 %i.jo, ptr %.1576, align 2
  %i.jp = getelementptr inbounds nuw i8, ptr %.1576, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.1581 = phi i32 [ %.0580, %bb.j ], [ %i.hh, %bb.i ]
  %.2577 = phi ptr [ %i.jp, %bb.j ], [ %.0575676, %bb.i ] ; 3 uses
  %i.jq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.jr = load i16, ptr %.2577, align 2
  %i.js = zext i16 %i.jr to i32                   ; 3 uses
  %i.jt = lshr i32 %i.js, 11
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1
  %i.jx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.jy = lshr i32 %i.js, 5
  %i.jz = and i32 %i.jy, 63
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1
  %i.kd = and i32 %i.js, 31
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1
  %i.kh = zext i8 %i.kg to i32
  %i.ki = mul nuw nsw i32 %i.kh, %i.b
  %i.kj = udiv i32 %i.ki, 255
  %i.kk = add nuw nsw i32 %i.kj, %i.hm
  %spec.store.select4 = tail call i32 @llvm.umin.i32(i32 %i.kk, i32 255)
  %i.kl = zext i8 %i.kc to i16
  %i.km = insertelement <2 x i16> poison, i16 %i.kl, i64 0
  %i.kn = zext i8 %i.jw to i16
  %i.ko = insertelement <2 x i16> %i.km, i16 %i.kn, i64 1
  %i.kp = mul nuw <2 x i16> %i.ko, %i.ht
  %i.kq = udiv <2 x i16> %i.kp, splat (i16 255)
  %i.kr = add nuw nsw <2 x i16> %i.kq, %i.hu
  %i.ks = tail call <2 x i16> @llvm.umin.v2i16(<2 x i16> %i.kr, <2 x i16> splat (i16 255))
  %i.kt = shl <2 x i16> %i.ks, <i16 3, i16 8>
  %i.ku = and <2 x i16> %i.kt, <i16 2016, i16 -2048> ; 2 uses
  %i.kv = extractelement <2 x i16> %i.ku, i64 0
  %i.kw = extractelement <2 x i16> %i.ku, i64 1
  %i.kx = or disjoint i16 %i.kv, %i.kw
  %i.ky = lshr i32 %spec.store.select4, 3
  %i.kz = trunc nuw nsw i32 %i.ky to i16
  %i.la = or disjoint i16 %i.kx, %i.kz
  store i16 %i.la, ptr %.2577, align 2
  %i.lb = getelementptr inbounds nuw i8, ptr %.2577, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.2582 = phi i32 [ %.1581, %bb.k ], [ %i.hh, %bb.i ]
  %.3578 = phi ptr [ %i.lb, %bb.k ], [ %.0575676, %bb.i ] ; 3 uses
  %i.lc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.ld = load i16, ptr %.3578, align 2
  %i.le = zext i16 %i.ld to i32                   ; 3 uses
  %i.lf = lshr i32 %i.le, 11
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1
  %i.lj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.lk = lshr i32 %i.le, 5
  %i.ll = and i32 %i.lk, 63
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1
  %i.lp = and i32 %i.le, 31
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1
  %i.lt = zext i8 %i.ls to i32
  %i.lu = mul nuw nsw i32 %i.lt, %i.b
  %i.lv = udiv i32 %i.lu, 255
  %i.lw = add nuw nsw i32 %i.lv, %i.hm
  %spec.store.select6 = tail call i32 @llvm.umin.i32(i32 %i.lw, i32 255)
  %i.lx = zext i8 %i.lo to i16
  %i.ly = insertelement <2 x i16> poison, i16 %i.lx, i64 0
  %i.lz = zext i8 %i.li to i16
  %i.ma = insertelement <2 x i16> %i.ly, i16 %i.lz, i64 1
  %i.mb = mul nuw <2 x i16> %i.ma, %i.hx
  %i.mc = udiv <2 x i16> %i.mb, splat (i16 255)
  %i.md = add nuw nsw <2 x i16> %i.mc, %i.hy
  %i.me = tail call <2 x i16> @llvm.umin.v2i16(<2 x i16> %i.md, <2 x i16> splat (i16 255))
  %i.mf = shl <2 x i16> %i.me, <i16 3, i16 8>
  %i.mg = and <2 x i16> %i.mf, <i16 2016, i16 -2048> ; 2 uses
  %i.mh = extractelement <2 x i16> %i.mg, i64 0
  %i.mi = extractelement <2 x i16> %i.mg, i64 1
  %i.mj = or disjoint i16 %i.mh, %i.mi
  %i.mk = lshr i32 %spec.store.select6, 3
  %i.ml = trunc nuw nsw i32 %i.mk to i16
  %i.mm = or disjoint i16 %i.mj, %i.ml
  store i16 %i.mm, ptr %.3578, align 2
  %i.mn = getelementptr inbounds nuw i8, ptr %.3578, i64 2
  br label %bb.m

.unreachabledefault:                              ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.l
  %.3583 = phi i32 [ %.2582, %bb.l ], [ %i.hh, %bb.i ] ; 2 uses
  %.4579 = phi ptr [ %i.mn, %bb.l ], [ %.0575676, %bb.i ] ; 3 uses
  %i.mo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.mp = load i16, ptr %.4579, align 2
  %i.mq = zext i16 %i.mp to i32                   ; 3 uses
  %i.mr = lshr i32 %i.mq, 11
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1
  %i.mv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.mw = lshr i32 %i.mq, 5
  %i.mx = and i32 %i.mw, 63
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.my
  %i.na = load i8, ptr %i.mz, align 1
  %i.nb = and i32 %i.mq, 31
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.nc
  %i.ne = load i8, ptr %i.nd, align 1
  %i.nf = zext i8 %i.ne to i32
  %i.ng = mul nuw nsw i32 %i.nf, %i.b
  %i.nh = udiv i32 %i.ng, 255
  %i.ni = add nuw nsw i32 %i.nh, %i.hm
  %spec.store.select8 = tail call i32 @llvm.umin.i32(i32 %i.ni, i32 255)
  %i.nj = zext i8 %i.na to i16
  %i.nk = insertelement <2 x i16> poison, i16 %i.nj, i64 0
  %i.nl = zext i8 %i.mu to i16
  %i.nm = insertelement <2 x i16> %i.nk, i16 %i.nl, i64 1
  %i.nn = mul nuw <2 x i16> %i.nm, %i.ib
  %i.no = udiv <2 x i16> %i.nn, splat (i16 255)
  %i.np = add nuw nsw <2 x i16> %i.no, %i.ic
  %i.nq = tail call <2 x i16> @llvm.umin.v2i16(<2 x i16> %i.np, <2 x i16> splat (i16 255))
  %i.nr = shl <2 x i16> %i.nq, <i16 3, i16 8>
  %i.ns = and <2 x i16> %i.nr, <i16 2016, i16 -2048> ; 2 uses
  %i.nt = extractelement <2 x i16> %i.ns, i64 0
  %i.nu = extractelement <2 x i16> %i.ns, i64 1
  %i.nv = or disjoint i16 %i.nt, %i.nu
  %i.nw = lshr i32 %spec.store.select8, 3
  %i.nx = trunc nuw nsw i32 %i.nw to i16
  %i.ny = or disjoint i16 %i.nv, %i.nx
  store i16 %i.ny, ptr %.4579, align 2
  %i.nz = getelementptr inbounds nuw i8, ptr %.4579, i64 2 ; 2 uses
  %i.oa = add nsw i32 %.3583, -1
  %i.ob = icmp sgt i32 %.3583, 1
  br i1 %i.ob, label %bb.j, label %bb.n, !llvm.loop !18

bb.n:                                             ; preds = %bb.m
  %i.oc = getelementptr inbounds [2 x i8], ptr %i.nz, i64 %i.hn
  %.not632 = icmp eq i32 %i.id, 0
  br i1 %.not632, label %.loopexit, label %bb.i, !llvm.loop !19

bb.o:                                             ; preds = %.split, %.split
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.oe = load i32, ptr %i.od, align 4            ; 2 uses
  %.not631672 = icmp eq i32 %i.oe, 0
  br i1 %.not631672, label %.loopexit, label %.lr.ph674

.lr.ph674:                                        ; preds = %bb.o
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.og = load ptr, ptr %i.of, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.oi = load i32, ptr %i.oh, align 4
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ok = load i32, ptr %i.oj, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.om = load ptr, ptr %i.ol, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 5
  %i.oo = load i8, ptr %i.on, align 1
  %i.op = zext i8 %i.oo to i32
  %i.oq = sdiv i32 %i.ok, %i.op                   ; 2 uses
  %i.or = mul nsw i32 %i.oi, %i.oq
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr inbounds [2 x i8], ptr %i.og, i64 %i.os
  %i.ou = load i32, ptr %1, align 4
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds [2 x i8], ptr %i.ot, i64 %i.ov
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oy = load i32, ptr %i.ox, align 4            ; 3 uses
  %i.oz = sub nsw i32 %i.oq, %i.oy
  %i.pa = add nsw i32 %i.oy, 3
  %i.pb = sdiv i32 %i.pa, 4                       ; 4 uses
  %i.pc = and i32 %i.oy, 3
  %i.pd = zext i8 %3 to i16                       ; 4 uses
  %i.pe = zext i8 %4 to i16                       ; 4 uses
  %i.pf = zext i8 %5 to i16                       ; 4 uses
  %i.pg = sext i32 %i.oz to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph674, %bb.u
  %.in689 = phi i32 [ %i.oe, %.lr.ph674 ], [ %i.ph, %bb.u ]
  %.0585673 = phi ptr [ %i.ow, %.lr.ph674 ], [ %i.ue, %bb.u ] ; 4 uses
  %i.ph = add nsw i32 %.in689, -1                 ; 2 uses
  switch i32 %i.pc, label %.unreachabledefault720 [
    i32 0, label %bb.q
    i32 3, label %bb.r
    i32 2, label %bb.s
    i32 1, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p, %bb.t
  %.0590 = phi i32 [ %i.pb, %bb.p ], [ %i.uc, %bb.t ]
  %.1586 = phi ptr [ %.0585673, %bb.p ], [ %i.ub, %bb.t ] ; 3 uses
  %i.pi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.pj = load i16, ptr %.1586, align 2
  %i.pk = zext i16 %i.pj to i32                   ; 3 uses
  %i.pl = lshr i32 %i.pk, 11
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1
  %i.pp = zext i8 %i.po to i16
  %i.pq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.pr = lshr i32 %i.pk, 5
  %i.ps = and i32 %i.pr, 63
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1
  %i.pw = zext i8 %i.pv to i16
  %i.px = and i32 %i.pk, 31
  %i.py = zext nneg i32 %i.px to i64
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.py
  %i.qa = load i8, ptr %i.pz, align 1
  %i.qb = zext i8 %i.qa to i16
  %i.qc = add nuw nsw i16 %i.pp, %i.pd
  %spec.store.select31 = tail call i16 @llvm.umin.i16(i16 %i.qc, i16 255)
  %i.qd = add nuw nsw i16 %i.pw, %i.pe
  %spec.store.select10 = tail call i16 @llvm.umin.i16(i16 %i.qd, i16 255)
  %i.qe = add nuw nsw i16 %i.qb, %i.pf
  %spec.store.select43 = tail call i16 @llvm.umin.i16(i16 %i.qe, i16 255)
  %i.qf = shl nuw i16 %spec.store.select31, 8
  %i.qg = and i16 %i.qf, -2048
  %i.qh = shl nuw nsw i16 %spec.store.select10, 3
  %i.qi = and i16 %i.qh, 2016
  %i.qj = or disjoint i16 %i.qi, %i.qg
  %i.qk = lshr i16 %spec.store.select43, 3
  %i.ql = or disjoint i16 %i.qj, %i.qk
  store i16 %i.ql, ptr %.1586, align 2
  %i.qm = getelementptr inbounds nuw i8, ptr %.1586, i64 2
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.1591 = phi i32 [ %.0590, %bb.q ], [ %i.pb, %bb.p ]
  %.2587 = phi ptr [ %i.qm, %bb.q ], [ %.0585673, %bb.p ] ; 3 uses
  %i.qn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.qo = load i16, ptr %.2587, align 2
  %i.qp = zext i16 %i.qo to i32                   ; 3 uses
  %i.qq = lshr i32 %i.qp, 11
  %i.qr = zext nneg i32 %i.qq to i64
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.qr
  %i.qt = load i8, ptr %i.qs, align 1
  %i.qu = zext i8 %i.qt to i16
  %i.qv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.qw = lshr i32 %i.qp, 5
  %i.qx = and i32 %i.qw, 63
  %i.qy = zext nneg i32 %i.qx to i64
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.qy
  %i.ra = load i8, ptr %i.qz, align 1
  %i.rb = zext i8 %i.ra to i16
  %i.rc = and i32 %i.qp, 31
  %i.rd = zext nneg i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.rd
  %i.rf = load i8, ptr %i.re, align 1
  %i.rg = zext i8 %i.rf to i16
  %i.rh = add nuw nsw i16 %i.qu, %i.pd
  %spec.store.select11 = tail call i16 @llvm.umin.i16(i16 %i.rh, i16 255)
  %i.ri = add nuw nsw i16 %i.rb, %i.pe
  %spec.store.select32 = tail call i16 @llvm.umin.i16(i16 %i.ri, i16 255)
  %i.rj = add nuw nsw i16 %i.rg, %i.pf
  %spec.store.select12 = tail call i16 @llvm.umin.i16(i16 %i.rj, i16 255)
  %i.rk = shl nuw i16 %spec.store.select11, 8
  %i.rl = and i16 %i.rk, -2048
  %i.rm = shl nuw nsw i16 %spec.store.select32, 3
  %i.rn = and i16 %i.rm, 2016
  %i.ro = or disjoint i16 %i.rn, %i.rl
  %i.rp = lshr i16 %spec.store.select12, 3
  %i.rq = or disjoint i16 %i.ro, %i.rp
  store i16 %i.rq, ptr %.2587, align 2
  %i.rr = getelementptr inbounds nuw i8, ptr %.2587, i64 2
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  %.2592 = phi i32 [ %.1591, %bb.r ], [ %i.pb, %bb.p ]
  %.3588 = phi ptr [ %i.rr, %bb.r ], [ %.0585673, %bb.p ] ; 3 uses
  %i.rs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.rt = load i16, ptr %.3588, align 2
  %i.ru = zext i16 %i.rt to i32                   ; 3 uses
  %i.rv = lshr i32 %i.ru, 11
  %i.rw = zext nneg i32 %i.rv to i64
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1
  %i.rz = zext i8 %i.ry to i16
  %i.sa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.sb = lshr i32 %i.ru, 5
  %i.sc = and i32 %i.sb, 63
  %i.sd = zext nneg i32 %i.sc to i64
  %i.se = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.sd
  %i.sf = load i8, ptr %i.se, align 1
  %i.sg = zext i8 %i.sf to i16
  %i.sh = and i32 %i.ru, 31
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.si
  %i.sk = load i8, ptr %i.sj, align 1
  %i.sl = zext i8 %i.sk to i16
  %i.sm = add nuw nsw i16 %i.rz, %i.pd
  %spec.store.select13 = tail call i16 @llvm.umin.i16(i16 %i.sm, i16 255)
  %i.sn = add nuw nsw i16 %i.sg, %i.pe
  %spec.store.select33 = tail call i16 @llvm.umin.i16(i16 %i.sn, i16 255)
  %i.so = add nuw nsw i16 %i.sl, %i.pf
  %spec.store.select14 = tail call i16 @llvm.umin.i16(i16 %i.so, i16 255)
  %i.sp = shl nuw i16 %spec.store.select13, 8
  %i.sq = and i16 %i.sp, -2048
  %i.sr = shl nuw nsw i16 %spec.store.select33, 3
  %i.ss = and i16 %i.sr, 2016
  %i.st = or disjoint i16 %i.ss, %i.sq
  %i.su = lshr i16 %spec.store.select14, 3
  %i.sv = or disjoint i16 %i.st, %i.su
  store i16 %i.sv, ptr %.3588, align 2
  %i.sw = getelementptr inbounds nuw i8, ptr %.3588, i64 2
  br label %bb.t

.unreachabledefault720:                           ; preds = %bb.p
  unreachable

bb.t:                                             ; preds = %bb.p, %bb.s
  %.3593 = phi i32 [ %.2592, %bb.s ], [ %i.pb, %bb.p ] ; 2 uses
  %.4589 = phi ptr [ %i.sw, %bb.s ], [ %.0585673, %bb.p ] ; 3 uses
  %i.sx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.sy = load i16, ptr %.4589, align 2
  %i.sz = zext i16 %i.sy to i32                   ; 3 uses
  %i.ta = lshr i32 %i.sz, 11
  %i.tb = zext nneg i32 %i.ta to i64
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sx, i64 %i.tb
  %i.td = load i8, ptr %i.tc, align 1
  %i.te = zext i8 %i.td to i16
  %i.tf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.tg = lshr i32 %i.sz, 5
  %i.th = and i32 %i.tg, 63
  %i.ti = zext nneg i32 %i.th to i64
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.ti
  %i.tk = load i8, ptr %i.tj, align 1
  %i.tl = zext i8 %i.tk to i16
  %i.tm = and i32 %i.sz, 31
  %i.tn = zext nneg i32 %i.tm to i64
  %i.to = getelementptr inbounds nuw i8, ptr %i.sx, i64 %i.tn
  %i.tp = load i8, ptr %i.to, align 1
  %i.tq = zext i8 %i.tp to i16
  %i.tr = add nuw nsw i16 %i.te, %i.pd
  %spec.store.select15 = tail call i16 @llvm.umin.i16(i16 %i.tr, i16 255)
  %i.ts = add nuw nsw i16 %i.tl, %i.pe
  %spec.store.select34 = tail call i16 @llvm.umin.i16(i16 %i.ts, i16 255)
  %i.tt = add nuw nsw i16 %i.tq, %i.pf
  %spec.store.select16 = tail call i16 @llvm.umin.i16(i16 %i.tt, i16 255)
  %i.tu = shl nuw i16 %spec.store.select15, 8
  %i.tv = and i16 %i.tu, -2048
  %i.tw = shl nuw nsw i16 %spec.store.select34, 3
  %i.tx = and i16 %i.tw, 2016
  %i.ty = or disjoint i16 %i.tx, %i.tv
  %i.tz = lshr i16 %spec.store.select16, 3
  %i.ua = or disjoint i16 %i.ty, %i.tz
  store i16 %i.ua, ptr %.4589, align 2
  %i.ub = getelementptr inbounds nuw i8, ptr %.4589, i64 2 ; 2 uses
  %i.uc = add nsw i32 %.3593, -1
  %i.ud = icmp sgt i32 %.3593, 1
  br i1 %i.ud, label %bb.q, label %bb.u, !llvm.loop !20

bb.u:                                             ; preds = %bb.t
  %i.ue = getelementptr inbounds [2 x i8], ptr %i.ub, i64 %i.pg
  %.not631 = icmp eq i32 %i.ph, 0
  br i1 %.not631, label %.loopexit, label %bb.p, !llvm.loop !21

bb.v:                                             ; preds = %.split
  %i.uf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ug = load i32, ptr %i.uf, align 4            ; 2 uses
  %.not630669 = icmp eq i32 %i.ug, 0
  br i1 %.not630669, label %.loopexit, label %.lr.ph671

.lr.ph671:                                        ; preds = %bb.v
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ui = load ptr, ptr %i.uh, align 8
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.uk = load i32, ptr %i.uj, align 4
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.um = load i32, ptr %i.ul, align 8
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.uo = load ptr, ptr %i.un, align 8
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 5
  %i.uq = load i8, ptr %i.up, align 1
  %i.ur = zext i8 %i.uq to i32
  %i.us = sdiv i32 %i.um, %i.ur                   ; 2 uses
  %i.ut = mul nsw i32 %i.uk, %i.us
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr inbounds [2 x i8], ptr %i.ui, i64 %i.uu
  %i.uw = load i32, ptr %1, align 4
  %i.ux = sext i32 %i.uw to i64
  %i.uy = getelementptr inbounds [2 x i8], ptr %i.uv, i64 %i.ux
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.va = load i32, ptr %i.uz, align 4            ; 3 uses
  %i.vb = sub nsw i32 %i.us, %i.va
  %i.vc = add nsw i32 %i.va, 3
  %i.vd = sdiv i32 %i.vc, 4                       ; 4 uses
  %i.ve = and i32 %i.va, 3
  %i.vf = insertelement <2 x i8> poison, i8 %4, i64 0
  %i.vg = insertelement <2 x i8> %i.vf, i8 %3, i64 1
  %i.vh = zext <2 x i8> %i.vg to <2 x i16>        ; 4 uses
  %i.vi = zext i8 %5 to i16                       ; 4 uses
  %i.vj = sext i32 %i.vb to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph671, %bb.ab
  %.in688 = phi i32 [ %i.ug, %.lr.ph671 ], [ %i.vk, %bb.ab ]
  %.0595670 = phi ptr [ %i.uy, %.lr.ph671 ], [ %i.aal, %bb.ab ] ; 4 uses
  %i.vk = add nsw i32 %.in688, -1                 ; 2 uses
  switch i32 %i.ve, label %.unreachabledefault721 [
    i32 0, label %bb.x
    i32 3, label %bb.y
    i32 2, label %bb.z
    i32 1, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w, %bb.aa
  %.0600 = phi i32 [ %i.vd, %bb.w ], [ %i.aaj, %bb.aa ]
  %.1596 = phi ptr [ %.0595670, %bb.w ], [ %i.aai, %bb.aa ] ; 3 uses
  %i.vl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.vm = load i16, ptr %.1596, align 2
  %i.vn = zext i16 %i.vm to i32                   ; 3 uses
  %i.vo = lshr i32 %i.vn, 11
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vl, i64 %i.vp
  %i.vr = load i8, ptr %i.vq, align 1
  %i.vs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.vt = lshr i32 %i.vn, 5
  %i.vu = and i32 %i.vt, 63
  %i.vv = zext nneg i32 %i.vu to i64
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vs, i64 %i.vv
  %i.vx = load i8, ptr %i.vw, align 1
  %i.vy = and i32 %i.vn, 31
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vl, i64 %i.vz
  %i.wb = load i8, ptr %i.wa, align 1
  %i.wc = zext i8 %i.wb to i16
  %i.wd = mul nuw i16 %i.wc, %i.vi
  %i.we = udiv i16 %i.wd, 255
  %i.wf = zext i8 %i.vr to i16
  %i.wg = zext i8 %i.vx to i16
  %i.wh = insertelement <2 x i16> poison, i16 %i.wg, i64 0
  %i.wi = insertelement <2 x i16> %i.wh, i16 %i.wf, i64 1
  %i.wj = mul nuw <2 x i16> %i.wi, %i.vh
  %i.wk = udiv <2 x i16> %i.wj, splat (i16 255)
  %i.wl = shl nuw <2 x i16> %i.wk, <i16 3, i16 8>
  %i.wm = and <2 x i16> %i.wl, <i16 4064, i16 -2048> ; 2 uses
  %shift = shufflevector <2 x i16> %i.wm, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or <2 x i16> %i.wm, %shift
  %i.wn = extractelement <2 x i16> %foldExtExtBinop, i64 0
  %i.wo = lshr i16 %i.we, 3
  %i.wp = or i16 %i.wn, %i.wo
  store i16 %i.wp, ptr %.1596, align 2
  %i.wq = getelementptr inbounds nuw i8, ptr %.1596, i64 2
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.1601 = phi i32 [ %.0600, %bb.x ], [ %i.vd, %bb.w ]
  %.2597 = phi ptr [ %i.wq, %bb.x ], [ %.0595670, %bb.w ] ; 3 uses
  %i.wr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.ws = load i16, ptr %.2597, align 2
  %i.wt = zext i16 %i.ws to i32                   ; 3 uses
  %i.wu = lshr i32 %i.wt, 11
  %i.wv = zext nneg i32 %i.wu to i64
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.wv
  %i.wx = load i8, ptr %i.ww, align 1
  %i.wy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.wz = lshr i32 %i.wt, 5
  %i.xa = and i32 %i.wz, 63
  %i.xb = zext nneg i32 %i.xa to i64
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.xb
  %i.xd = load i8, ptr %i.xc, align 1
  %i.xe = and i32 %i.wt, 31
  %i.xf = zext nneg i32 %i.xe to i64
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.xf
  %i.xh = load i8, ptr %i.xg, align 1
  %i.xi = zext i8 %i.xh to i16
  %i.xj = mul nuw i16 %i.xi, %i.vi
  %i.xk = udiv i16 %i.xj, 255
  %i.xl = zext i8 %i.wx to i16
  %i.xm = zext i8 %i.xd to i16
  %i.xn = insertelement <2 x i16> poison, i16 %i.xm, i64 0
  %i.xo = insertelement <2 x i16> %i.xn, i16 %i.xl, i64 1
  %i.xp = mul nuw <2 x i16> %i.xo, %i.vh
  %i.xq = udiv <2 x i16> %i.xp, splat (i16 255)
  %i.xr = shl nuw <2 x i16> %i.xq, <i16 3, i16 8>
  %i.xs = and <2 x i16> %i.xr, <i16 4064, i16 -2048> ; 2 uses
  %shift729 = shufflevector <2 x i16> %i.xs, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop730 = or <2 x i16> %i.xs, %shift729
  %i.xt = extractelement <2 x i16> %foldExtExtBinop730, i64 0
  %i.xu = lshr i16 %i.xk, 3
  %i.xv = or i16 %i.xt, %i.xu
  store i16 %i.xv, ptr %.2597, align 2
  %i.xw = getelementptr inbounds nuw i8, ptr %.2597, i64 2
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y
  %.2602 = phi i32 [ %.1601, %bb.y ], [ %i.vd, %bb.w ]
  %.3598 = phi ptr [ %i.xw, %bb.y ], [ %.0595670, %bb.w ] ; 3 uses
  %i.xx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.xy = load i16, ptr %.3598, align 2
  %i.xz = zext i16 %i.xy to i32                   ; 3 uses
  %i.ya = lshr i32 %i.xz, 11
  %i.yb = zext nneg i32 %i.ya to i64
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xx, i64 %i.yb
  %i.yd = load i8, ptr %i.yc, align 1
  %i.ye = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.yf = lshr i32 %i.xz, 5
  %i.yg = and i32 %i.yf, 63
  %i.yh = zext nneg i32 %i.yg to i64
  %i.yi = getelementptr inbounds nuw i8, ptr %i.ye, i64 %i.yh
  %i.yj = load i8, ptr %i.yi, align 1
  %i.yk = and i32 %i.xz, 31
  %i.yl = zext nneg i32 %i.yk to i64
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xx, i64 %i.yl
  %i.yn = load i8, ptr %i.ym, align 1
  %i.yo = zext i8 %i.yn to i16
  %i.yp = mul nuw i16 %i.yo, %i.vi
  %i.yq = udiv i16 %i.yp, 255
  %i.yr = zext i8 %i.yd to i16
  %i.ys = zext i8 %i.yj to i16
  %i.yt = insertelement <2 x i16> poison, i16 %i.ys, i64 0
  %i.yu = insertelement <2 x i16> %i.yt, i16 %i.yr, i64 1
  %i.yv = mul nuw <2 x i16> %i.yu, %i.vh
  %i.yw = udiv <2 x i16> %i.yv, splat (i16 255)
  %i.yx = shl nuw <2 x i16> %i.yw, <i16 3, i16 8>
  %i.yy = and <2 x i16> %i.yx, <i16 4064, i16 -2048> ; 2 uses
  %shift732 = shufflevector <2 x i16> %i.yy, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop733 = or <2 x i16> %i.yy, %shift732
  %i.yz = extractelement <2 x i16> %foldExtExtBinop733, i64 0
  %i.za = lshr i16 %i.yq, 3
  %i.zb = or i16 %i.yz, %i.za
  store i16 %i.zb, ptr %.3598, align 2
  %i.zc = getelementptr inbounds nuw i8, ptr %.3598, i64 2
  br label %bb.aa

.unreachabledefault721:                           ; preds = %bb.w
  unreachable

bb.aa:                                            ; preds = %bb.w, %bb.z
  %.3603 = phi i32 [ %.2602, %bb.z ], [ %i.vd, %bb.w ] ; 2 uses
  %.4599 = phi ptr [ %i.zc, %bb.z ], [ %.0595670, %bb.w ] ; 3 uses
  %i.zd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.ze = load i16, ptr %.4599, align 2
  %i.zf = zext i16 %i.ze to i32                   ; 3 uses
  %i.zg = lshr i32 %i.zf, 11
  %i.zh = zext nneg i32 %i.zg to i64
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zd, i64 %i.zh
  %i.zj = load i8, ptr %i.zi, align 1
  %i.zk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.zl = lshr i32 %i.zf, 5
  %i.zm = and i32 %i.zl, 63
  %i.zn = zext nneg i32 %i.zm to i64
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zk, i64 %i.zn
  %i.zp = load i8, ptr %i.zo, align 1
  %i.zq = and i32 %i.zf, 31
  %i.zr = zext nneg i32 %i.zq to i64
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zd, i64 %i.zr
  %i.zt = load i8, ptr %i.zs, align 1
  %i.zu = zext i8 %i.zt to i16
  %i.zv = mul nuw i16 %i.zu, %i.vi
  %i.zw = udiv i16 %i.zv, 255
  %i.zx = zext i8 %i.zj to i16
  %i.zy = zext i8 %i.zp to i16
  %i.zz = insertelement <2 x i16> poison, i16 %i.zy, i64 0
  %i.aaa = insertelement <2 x i16> %i.zz, i16 %i.zx, i64 1
  %i.aab = mul nuw <2 x i16> %i.aaa, %i.vh
  %i.aac = udiv <2 x i16> %i.aab, splat (i16 255)
  %i.aad = shl nuw <2 x i16> %i.aac, <i16 3, i16 8>
  %i.aae = and <2 x i16> %i.aad, <i16 4064, i16 -2048> ; 2 uses
  %shift735 = shufflevector <2 x i16> %i.aae, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop736 = or <2 x i16> %i.aae, %shift735
  %i.aaf = extractelement <2 x i16> %foldExtExtBinop736, i64 0
  %i.aag = lshr i16 %i.zw, 3
  %i.aah = or i16 %i.aaf, %i.aag
  store i16 %i.aah, ptr %.4599, align 2
  %i.aai = getelementptr inbounds nuw i8, ptr %.4599, i64 2 ; 2 uses
  %i.aaj = add nsw i32 %.3603, -1
  %i.aak = icmp sgt i32 %.3603, 1
  br i1 %i.aak, label %bb.x, label %bb.ab, !llvm.loop !22

bb.ab:                                            ; preds = %bb.aa
  %i.aal = getelementptr inbounds [2 x i8], ptr %i.aai, i64 %i.vj
  %.not630 = icmp eq i32 %i.vk, 0
  br i1 %.not630, label %.loopexit, label %bb.w, !llvm.loop !23

bb.ac:                                            ; preds = %.split
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aan = load i32, ptr %i.aam, align 4          ; 2 uses
  %.not667 = icmp eq i32 %i.aan, 0
  br i1 %.not667, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aap = load ptr, ptr %i.aao, align 8
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aar = load i32, ptr %i.aaq, align 4
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aat = load i32, ptr %i.aas, align 8
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aav = load ptr, ptr %i.aau, align 8
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 5
  %i.aax = load i8, ptr %i.aaw, align 1
  %i.aay = zext i8 %i.aax to i32
  %i.aaz = sdiv i32 %i.aat, %i.aay                ; 2 uses
  %i.aba = mul nsw i32 %i.aar, %i.aaz
  %i.abb = sext i32 %i.aba to i64
  %i.abc = getelementptr inbounds [2 x i8], ptr %i.aap, i64 %i.abb
  %i.abd = load i32, ptr %1, align 4
  %i.abe = sext i32 %i.abd to i64
  %i.abf = getelementptr inbounds [2 x i8], ptr %i.abc, i64 %i.abe
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.abh = load i32, ptr %i.abg, align 4          ; 3 uses
  %i.abi = sub nsw i32 %i.aaz, %i.abh
  %i.abj = add nsw i32 %i.abh, 3
  %i.abk = sdiv i32 %i.abj, 4                     ; 4 uses
  %i.abl = and i32 %i.abh, 3
  %i.abm = zext i8 %3 to i32                      ; 4 uses
  %i.abn = zext i8 %4 to i32                      ; 4 uses
  %i.abo = zext i8 %5 to i32                      ; 4 uses
  %i.abp = sext i32 %i.abi to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %bb.ai
  %.in = phi i32 [ %i.aan, %.lr.ph ], [ %i.abq, %bb.ai ]
  %.0605668 = phi ptr [ %i.abf, %.lr.ph ], [ %i.ajd, %bb.ai ] ; 4 uses
  %i.abq = add nsw i32 %.in, -1                   ; 2 uses
  switch i32 %i.abl, label %.unreachabledefault722 [
    i32 0, label %bb.ae
    i32 3, label %bb.af
    i32 2, label %bb.ag
    i32 1, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ah
  %.0610 = phi i32 [ %i.abk, %bb.ad ], [ %i.ajb, %bb.ah ]
  %.1606 = phi ptr [ %.0605668, %bb.ad ], [ %i.aja, %bb.ah ] ; 3 uses
  %i.abr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.abs = load i16, ptr %.1606, align 2
  %i.abt = zext i16 %i.abs to i32                 ; 3 uses
  %i.abu = lshr i32 %i.abt, 11
  %i.abv = zext nneg i32 %i.abu to i64
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abr, i64 %i.abv
  %i.abx = load i8, ptr %i.abw, align 1
  %i.aby = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.abz = lshr i32 %i.abt, 5
  %i.aca = and i32 %i.abz, 63
  %i.acb = zext nneg i32 %i.aca to i64
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aby, i64 %i.acb
  %i.acd = load i8, ptr %i.acc, align 1
  %i.ace = and i32 %i.abt, 31
  %i.acf = zext nneg i32 %i.ace to i64
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abr, i64 %i.acf
  %i.ach = load i8, ptr %i.acg, align 1
  %i.aci = zext i8 %i.ach to i32                  ; 2 uses
  %i.acj = mul nuw nsw i32 %i.aci, %i.abo
  %.lhs.trunc637 = trunc nuw i32 %i.acj to i16
  %i.ack = udiv i16 %.lhs.trunc637, 255
  %.zext638 = zext nneg i16 %i.ack to i32
  %i.acl = mul nuw nsw i32 %i.aci, %i.b
  %i.acm = udiv i32 %i.acl, 255
  %i.acn = add nuw nsw i32 %i.acm, %.zext638
  %spec.store.select44 = tail call i32 @llvm.umin.i32(i32 %i.acn, i32 255)
  %i.aco = zext i8 %i.abx to i32                  ; 2 uses
  %i.acp = zext i8 %i.acd to i32                  ; 2 uses
  %i.acq = mul nuw nsw i32 %i.aco, %i.abm
  %i.acr = mul nuw nsw i32 %i.acp, %i.abn
  %.lhs.trunc = trunc nuw i32 %i.acq to i16
  %.lhs.trunc635 = trunc nuw i32 %i.acr to i16
  %i.acs = insertelement <2 x i16> poison, i16 %.lhs.trunc635, i64 0
  %i.act = insertelement <2 x i16> %i.acs, i16 %.lhs.trunc, i64 1
  %i.acu = udiv <2 x i16> %i.act, splat (i16 255)
  %i.acv = mul nuw nsw i32 %i.aco, %i.b
  %i.acw = mul nuw nsw i32 %i.acp, %i.b
  %i.acx = trunc nuw i32 %i.acw to i16
  %i.acy = insertelement <2 x i16> poison, i16 %i.acx, i64 0
  %i.acz = trunc nuw i32 %i.acv to i16
  %i.ada = insertelement <2 x i16> %i.acy, i16 %i.acz, i64 1
  %i.adb = udiv <2 x i16> %i.ada, splat (i16 255)
  %i.adc = add nuw nsw <2 x i16> %i.adb, %i.acu
  %i.add = tail call <2 x i16> @llvm.umin.v2i16(<2 x i16> %i.adc, <2 x i16> splat (i16 255))
  %i.ade = shl <2 x i16> %i.add, <i16 3, i16 8>
  %i.adf = and <2 x i16> %i.ade, <i16 2016, i16 -2048> ; 2 uses
  %i.adg = extractelement <2 x i16> %i.adf, i64 0
  %i.adh = extractelement <2 x i16> %i.adf, i64 1
  %i.adi = or disjoint i16 %i.adg, %i.adh
  %i.adj = lshr i32 %spec.store.select44, 3
  %i.adk = trunc nuw nsw i32 %i.adj to i16
  %i.adl = or disjoint i16 %i.adi, %i.adk
  store i16 %i.adl, ptr %.1606, align 2
  %i.adm = getelementptr inbounds nuw i8, ptr %.1606, i64 2
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.1611 = phi i32 [ %.0610, %bb.ae ], [ %i.abk, %bb.ad ]
  %.2607 = phi ptr [ %i.adm, %bb.ae ], [ %.0605668, %bb.ad ] ; 3 uses
  %i.adn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.ado = load i16, ptr %.2607, align 2
  %i.adp = zext i16 %i.ado to i32                 ; 3 uses
  %i.adq = lshr i32 %i.adp, 11
  %i.adr = zext nneg i32 %i.adq to i64
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adn, i64 %i.adr
  %i.adt = load i8, ptr %i.ads, align 1
  %i.adu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.adv = lshr i32 %i.adp, 5
  %i.adw = and i32 %i.adv, 63
  %i.adx = zext nneg i32 %i.adw to i64
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adu, i64 %i.adx
  %i.adz = load i8, ptr %i.ady, align 1
  %i.aea = and i32 %i.adp, 31
  %i.aeb = zext nneg i32 %i.aea to i64
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adn, i64 %i.aeb
  %i.aed = load i8, ptr %i.aec, align 1
  %i.aee = zext i8 %i.aed to i32                  ; 2 uses
  %i.aef = mul nuw nsw i32 %i.aee, %i.abo
  %.lhs.trunc643 = trunc nuw i32 %i.aef to i16
  %i.aeg = udiv i16 %.lhs.trunc643, 255
  %.zext644 = zext nneg i16 %i.aeg to i32
  %i.aeh = mul nuw nsw i32 %i.aee, %i.b
  %i.aei = udiv i32 %i.aeh, 255
  %i.aej = add nuw nsw i32 %i.aei, %.zext644
  %spec.store.select21 = tail call i32 @llvm.umin.i32(i32 %i.aej, i32 255)
  %i.aek = zext i8 %i.adt to i32                  ; 2 uses
  %i.ael = zext i8 %i.adz to i32                  ; 2 uses
  %i.aem = mul nuw nsw i32 %i.aek, %i.abm
  %i.aen = mul nuw nsw i32 %i.ael, %i.abn
  %.lhs.trunc639 = trunc nuw i32 %i.aem to i16
  %.lhs.trunc641 = trunc nuw i32 %i.aen to i16
  %i.aeo = insertelement <2 x i16> poison, i16 %.lhs.trunc641, i64 0
  %i.aep = insertelement <2 x i16> %i.aeo, i16 %.lhs.trunc639, i64 1
  %i.aeq = udiv <2 x i16> %i.aep, splat (i16 255)
  %i.aer = mul nuw nsw i32 %i.aek, %i.b
  %i.aes = mul nuw nsw i32 %i.ael, %i.b
  %i.aet = trunc nuw i32 %i.aes to i16
  %i.aeu = insertelement <2 x i16> poison, i16 %i.aet, i64 0
  %i.aev = trunc nuw i32 %i.aer to i16
  %i.aew = insertelement <2 x i16> %i.aeu, i16 %i.aev, i64 1
  %i.aex = udiv <2 x i16> %i.aew, splat (i16 255)
  %i.aey = add nuw nsw <2 x i16> %i.aex, %i.aeq
  %i.aez = tail call <2 x i16> @llvm.umin.v2i16(<2 x i16> %i.aey, <2 x i16> splat (i16 255))
  %i.afa = shl <2 x i16> %i.aez, <i16 3, i16 8>
  %i.afb = and <2 x i16> %i.afa, <i16 2016, i16 -2048> ; 2 uses
  %i.afc = extractelement <2 x i16> %i.afb, i64 0
  %i.afd = extractelement <2 x i16> %i.afb, i64 1
  %i.afe = or disjoint i16 %i.afc, %i.afd
  %i.aff = lshr i32 %spec.store.select21, 3
  %i.afg = trunc nuw nsw i32 %i.aff to i16
  %i.afh = or disjoint i16 %i.afe, %i.afg
  store i16 %i.afh, ptr %.2607, align 2
  %i.afi = getelementptr inbounds nuw i8, ptr %.2607, i64 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.af
  %.2612 = phi i32 [ %.1611, %bb.af ], [ %i.abk, %bb.ad ]
  %.3608 = phi ptr [ %i.afi, %bb.af ], [ %.0605668, %bb.ad ] ; 3 uses
  %i.afj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.afk = load i16, ptr %.3608, align 2
  %i.afl = zext i16 %i.afk to i32                 ; 3 uses
  %i.afm = lshr i32 %i.afl, 11
  %i.afn = zext nneg i32 %i.afm to i64
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.afn
  %i.afp = load i8, ptr %i.afo, align 1
  %i.afq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.afr = lshr i32 %i.afl, 5
  %i.afs = and i32 %i.afr, 63
  %i.aft = zext nneg i32 %i.afs to i64
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afq, i64 %i.aft
  %i.afv = load i8, ptr %i.afu, align 1
  %i.afw = and i32 %i.afl, 31
  %i.afx = zext nneg i32 %i.afw to i64
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.afx
  %i.afz = load i8, ptr %i.afy, align 1
  %i.aga = zext i8 %i.afz to i32                  ; 2 uses
  %i.agb = mul nuw nsw i32 %i.aga, %i.abo
  %.lhs.trunc649 = trunc nuw i32 %i.agb to i16
  %i.agc = udiv i16 %.lhs.trunc649, 255
  %.zext650 = zext nneg i16 %i.agc to i32
  %i.agd = mul nuw nsw i32 %i.aga, %i.b
  %i.age = udiv i32 %i.agd, 255
  %i.agf = add nuw nsw i32 %i.age, %.zext650
  %spec.store.select23 = tail call i32 @llvm.umin.i32(i32 %i.agf, i32 255)
  %i.agg = zext i8 %i.afp to i32                  ; 2 uses
  %i.agh = zext i8 %i.afv to i32                  ; 2 uses
  %i.agi = mul nuw nsw i32 %i.agg, %i.abm
  %i.agj = mul nuw nsw i32 %i.agh, %i.abn
  %.lhs.trunc645 = trunc nuw i32 %i.agi to i16
  %.lhs.trunc647 = trunc nuw i32 %i.agj to i16
  %i.agk = insertelement <2 x i16> poison, i16 %.lhs.trunc647, i64 0
  %i.agl = insertelement <2 x i16> %i.agk, i16 %.lhs.trunc645, i64 1
  %i.agm = udiv <2 x i16> %i.agl, splat (i16 255)
  %i.agn = mul nuw nsw i32 %i.agg, %i.b
  %i.ago = mul nuw nsw i32 %i.agh, %i.b
  %i.agp = trunc nuw i32 %i.ago to i16
  %i.agq = insertelement <2 x i16> poison, i16 %i.agp, i64 0
  %i.agr = trunc nuw i32 %i.agn to i16
  %i.ags = insertelement <2 x i16> %i.agq, i16 %i.agr, i64 1
  %i.agt = udiv <2 x i16> %i.ags, splat (i16 255)
  %i.agu = add nuw nsw <2 x i16> %i.agt, %i.agm
  %i.agv = tail call <2 x i16> @llvm.umin.v2i16(<2 x i16> %i.agu, <2 x i16> splat (i16 255))
  %i.agw = shl <2 x i16> %i.agv, <i16 3, i16 8>
  %i.agx = and <2 x i16> %i.agw, <i16 2016, i16 -2048> ; 2 uses
  %i.agy = extractelement <2 x i16> %i.agx, i64 0
  %i.agz = extractelement <2 x i16> %i.agx, i64 1
  %i.aha = or disjoint i16 %i.agy, %i.agz
  %i.ahb = lshr i32 %spec.store.select23, 3
  %i.ahc = trunc nuw nsw i32 %i.ahb to i16
  %i.ahd = or disjoint i16 %i.aha, %i.ahc
  store i16 %i.ahd, ptr %.3608, align 2
  %i.ahe = getelementptr inbounds nuw i8, ptr %.3608, i64 2
  br label %bb.ah

.unreachabledefault722:                           ; preds = %bb.ad
  unreachable

bb.ah:                                            ; preds = %bb.ad, %bb.ag
  %.3613 = phi i32 [ %.2612, %bb.ag ], [ %i.abk, %bb.ad ] ; 2 uses
  %.4609 = phi ptr [ %i.ahe, %bb.ag ], [ %.0605668, %bb.ad ] ; 3 uses
  %i.ahf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.ahg = load i16, ptr %.4609, align 2
  %i.ahh = zext i16 %i.ahg to i32                 ; 3 uses
  %i.ahi = lshr i32 %i.ahh, 11
  %i.ahj = zext nneg i32 %i.ahi to i64
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahf, i64 %i.ahj
  %i.ahl = load i8, ptr %i.ahk, align 1
  %i.ahm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.ahn = lshr i32 %i.ahh, 5
  %i.aho = and i32 %i.ahn, 63
  %i.ahp = zext nneg i32 %i.aho to i64
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahm, i64 %i.ahp
  %i.ahr = load i8, ptr %i.ahq, align 1
  %i.ahs = and i32 %i.ahh, 31
  %i.aht = zext nneg i32 %i.ahs to i64
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahf, i64 %i.aht
  %i.ahv = load i8, ptr %i.ahu, align 1
  %i.ahw = zext i8 %i.ahv to i32                  ; 2 uses
  %i.ahx = mul nuw nsw i32 %i.ahw, %i.abo
  %.lhs.trunc655 = trunc nuw i32 %i.ahx to i16
  %i.ahy = udiv i16 %.lhs.trunc655, 255
  %.zext656 = zext nneg i16 %i.ahy to i32
  %i.ahz = mul nuw nsw i32 %i.ahw, %i.b
  %i.aia = udiv i32 %i.ahz, 255
  %i.aib = add nuw nsw i32 %i.aia, %.zext656
  %spec.store.select25 = tail call i32 @llvm.umin.i32(i32 %i.aib, i32 255)
  %i.aic = zext i8 %i.ahl to i32                  ; 2 uses
  %i.aid = zext i8 %i.ahr to i32                  ; 2 uses
  %i.aie = mul nuw nsw i32 %i.aic, %i.abm
  %i.aif = mul nuw nsw i32 %i.aid, %i.abn
  %.lhs.trunc651 = trunc nuw i32 %i.aie to i16
  %.lhs.trunc653 = trunc nuw i32 %i.aif to i16
  %i.aig = insertelement <2 x i16> poison, i16 %.lhs.trunc653, i64 0
  %i.aih = insertelement <2 x i16> %i.aig, i16 %.lhs.trunc651, i64 1
  %i.aii = udiv <2 x i16> %i.aih, splat (i16 255)
  %i.aij = mul nuw nsw i32 %i.aic, %i.b
  %i.aik = mul nuw nsw i32 %i.aid, %i.b
  %i.ail = trunc nuw i32 %i.aik to i16
  %i.aim = insertelement <2 x i16> poison, i16 %i.ail, i64 0
  %i.ain = trunc nuw i32 %i.aij to i16
  %i.aio = insertelement <2 x i16> %i.aim, i16 %i.ain, i64 1
  %i.aip = udiv <2 x i16> %i.aio, splat (i16 255)
  %i.aiq = add nuw nsw <2 x i16> %i.aip, %i.aii
  %i.air = tail call <2 x i16> @llvm.umin.v2i16(<2 x i16> %i.aiq, <2 x i16> splat (i16 255))
  %i.ais = shl <2 x i16> %i.air, <i16 3, i16 8>
  %i.ait = and <2 x i16> %i.ais, <i16 2016, i16 -2048> ; 2 uses
  %i.aiu = extractelement <2 x i16> %i.ait, i64 0
  %i.aiv = extractelement <2 x i16> %i.ait, i64 1
  %i.aiw = or disjoint i16 %i.aiu, %i.aiv
  %i.aix = lshr i32 %spec.store.select25, 3
  %i.aiy = trunc nuw nsw i32 %i.aix to i16
  %i.aiz = or disjoint i16 %i.aiw, %i.aiy
  store i16 %i.aiz, ptr %.4609, align 2
  %i.aja = getelementptr inbounds nuw i8, ptr %.4609, i64 2 ; 2 uses
  %i.ajb = add nsw i32 %.3613, -1
  %i.ajc = icmp sgt i32 %.3613, 1
  br i1 %i.ajc, label %bb.ae, label %bb.ai, !llvm.loop !24

bb.ai:                                            ; preds = %bb.ah
  %i.ajd = getelementptr inbounds [2 x i8], ptr %i.aja, i64 %i.abp
  %.not = icmp eq i32 %i.abq, 0
  br i1 %.not, label %.loopexit, label %bb.ad, !llvm.loop !25

bb.aj:                                            ; preds = %.split, %bb.a
  %i.aje = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ajf = load i32, ptr %i.aje, align 4          ; 2 uses
  %.not634681 = icmp eq i32 %i.ajf, 0
  br i1 %.not634681, label %.loopexit, label %.lr.ph683

.lr.ph683:                                        ; preds = %bb.aj
  %i.ajg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ajh = load ptr, ptr %i.ajg, align 8
  %i.aji = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ajj = load i32, ptr %i.aji, align 4
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ajl = load i32, ptr %i.ajk, align 8
  %i.ajm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ajn = load ptr, ptr %i.ajm, align 8
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 5
  %i.ajp = load i8, ptr %i.ajo, align 1
  %i.ajq = zext i8 %i.ajp to i32
  %i.ajr = sdiv i32 %i.ajl, %i.ajq                ; 2 uses
  %i.ajs = mul nsw i32 %i.ajj, %i.ajr
  %i.ajt = sext i32 %i.ajs to i64
  %i.aju = getelementptr inbounds [2 x i8], ptr %i.ajh, i64 %i.ajt
  %i.ajv = load i32, ptr %1, align 4
  %i.ajw = sext i32 %i.ajv to i64
  %i.ajx = getelementptr inbounds [2 x i8], ptr %i.aju, i64 %i.ajw
  %i.ajy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ajz = load i32, ptr %i.ajy, align 4          ; 3 uses
  %i.aka = sub nsw i32 %i.ajr, %i.ajz
  %i.akb = add nsw i32 %i.ajz, 3
  %i.akc = sdiv i32 %i.akb, 4                     ; 4 uses
  %i.akd = and i32 %i.ajz, 3
  %i.ake = lshr i8 %3, 3
  %i.akf = zext nneg i8 %i.ake to i16
  %i.akg = shl nuw i16 %i.akf, 11
  %i.akh = lshr i8 %4, 2
  %i.aki = zext nneg i8 %i.akh to i16
  %i.akj = shl nuw nsw i16 %i.aki, 5
  %i.akk = or disjoint i16 %i.akj, %i.akg
  %i.akl = lshr i8 %5, 3
  %i.akm = zext nneg i8 %i.akl to i16
  %i.akn = or disjoint i16 %i.akk, %i.akm         ; 4 uses
  %i.ako = sext i32 %i.aka to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph683, %bb.ap
  %.in692 = phi i32 [ %i.ajf, %.lr.ph683 ], [ %i.akp, %bb.ap ]
  %.0619682 = phi ptr [ %i.ajx, %.lr.ph683 ], [ %i.akw, %bb.ap ] ; 4 uses
  %i.akp = add nsw i32 %.in692, -1                ; 2 uses
  switch i32 %i.akd, label %.unreachabledefault723 [
    i32 0, label %bb.al
    i32 3, label %bb.am
    i32 2, label %bb.an
    i32 1, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ao
  %.1620 = phi ptr [ %.0619682, %bb.ak ], [ %i.akt, %bb.ao ] ; 2 uses
  %.0615 = phi i32 [ %i.akc, %bb.ak ], [ %i.aku, %bb.ao ]
  store i16 %i.akn, ptr %.1620, align 2
  %i.akq = getelementptr inbounds nuw i8, ptr %.1620, i64 2
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.2621 = phi ptr [ %i.akq, %bb.al ], [ %.0619682, %bb.ak ] ; 2 uses
  %.1616 = phi i32 [ %.0615, %bb.al ], [ %i.akc, %bb.ak ]
  store i16 %i.akn, ptr %.2621, align 2
  %i.akr = getelementptr inbounds nuw i8, ptr %.2621, i64 2
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.am
  %.3622 = phi ptr [ %i.akr, %bb.am ], [ %.0619682, %bb.ak ] ; 2 uses
  %.2617 = phi i32 [ %.1616, %bb.am ], [ %i.akc, %bb.ak ]
  store i16 %i.akn, ptr %.3622, align 2
  %i.aks = getelementptr inbounds nuw i8, ptr %.3622, i64 2
  br label %bb.ao

.unreachabledefault723:                           ; preds = %bb.ak
  unreachable

bb.ao:                                            ; preds = %bb.ak, %bb.an
  %.4623 = phi ptr [ %i.aks, %bb.an ], [ %.0619682, %bb.ak ] ; 2 uses
  %.3618 = phi i32 [ %.2617, %bb.an ], [ %i.akc, %bb.ak ] ; 2 uses
  store i16 %i.akn, ptr %.4623, align 2
  %i.akt = getelementptr inbounds nuw i8, ptr %.4623, i64 2 ; 2 uses
  %i.aku = add nsw i32 %.3618, -1
  %i.akv = icmp sgt i32 %.3618, 1
  br i1 %i.akv, label %bb.al, label %bb.ap, !llvm.loop !26

bb.ap:                                            ; preds = %bb.ao
  %i.akw = getelementptr inbounds [2 x i8], ptr %i.akt, i64 %i.ako
  %.not634 = icmp eq i32 %i.akp, 0
  br i1 %.not634, label %.loopexit, label %bb.ak, !llvm.loop !27

.loopexit:                                        ; preds = %bb.ai, %bb.ab, %bb.u, %bb.n, %bb.g, %bb.ap, %bb.ac, %bb.v, %bb.o, %bb.h, %bb.b, %bb.aj
  ret i1 true
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @SDL_BlendFillRect_XRGB8888(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #3 {
bb.a:
  %i.a = xor i8 %6, -1
  %i.b = zext i8 %i.a to i32                      ; 36 uses
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.split, label %bb.aj

.split:                                           ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  switch i32 %i.e, label %bb.aj [
    i32 0, label %bb.b
    i32 4, label %bb.h
    i32 1, label %bb.o
    i32 5, label %bb.o
    i32 2, label %bb.v
    i32 3, label %bb.ac
  ]

bb.b:                                             ; preds = %.split
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not633702 = icmp eq i32 %i.g, 0
  br i1 %.not633702, label %.loopexit, label %.lr.ph704

.lr.ph704:                                        ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = sdiv i32 %i.m, %i.r                      ; 2 uses
  %i.t = mul nsw i32 %i.k, %i.s
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.u
  %i.w = load i32, ptr %1, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 4             ; 3 uses
  %i.ab = sub nsw i32 %i.s, %i.aa
  %i.ac = add nsw i32 %i.aa, 3
  %i.ad = sdiv i32 %i.ac, 4                       ; 4 uses
  %i.ae = and i32 %i.aa, 3
  %i.af = zext i8 %3 to i32                       ; 4 uses
  %i.ag = zext i8 %4 to i32                       ; 4 uses
  %i.ah = zext i8 %5 to i32                       ; 4 uses
  %i.ai = sext i32 %i.ab to i64
  br label %.lr.ph704.split

.lr.ph704.split:                                  ; preds = %.lr.ph704, %bb.g
  %.in715 = phi i32 [ %i.aj, %bb.g ], [ %i.g, %.lr.ph704 ]
  %.0569703 = phi ptr [ %i.do, %bb.g ], [ %i.y, %.lr.ph704 ] ; 4 uses
  %i.aj = add nsw i32 %.in715, -1                 ; 2 uses
  switch i32 %i.ae, label %default.unreachable [
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph704.split, %bb.f
  %.0570 = phi i32 [ %i.ad, %.lr.ph704.split ], [ %i.dm, %bb.f ]
  %.1 = phi ptr [ %.0569703, %.lr.ph704.split ], [ %i.dl, %bb.f ] ; 3 uses
  %i.ak = load i32, ptr %.1, align 4              ; 3 uses
  %i.al = lshr i32 %i.ak, 16
  %i.am = and i32 %i.al, 255
  %i.an = lshr i32 %i.ak, 8
  %i.ao = and i32 %i.an, 255
  %i.ap = and i32 %i.ak, 255
  %i.aq = mul nuw nsw i32 %i.am, %i.b
  %i.ar = udiv i32 %i.aq, 255
  %i.as = add nuw nsw i32 %i.ar, %i.af
  %i.at = mul nuw nsw i32 %i.ao, %i.b
  %i.au = udiv i32 %i.at, 255
  %i.av = add nuw nsw i32 %i.au, %i.ag
  %i.aw = mul nuw nsw i32 %i.ap, %i.b
  %i.ax = udiv i32 %i.aw, 255
  %i.ay = add nuw nsw i32 %i.ax, %i.ah
  %i.az = shl nuw nsw i32 %i.as, 16
  %i.ba = shl nuw nsw i32 %i.av, 8
  %i.bb = or i32 %i.ba, %i.ay
  %i.bc = or i32 %i.bb, %i.az
  store i32 %i.bc, ptr %.1, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.1, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph704.split, %bb.c
  %.1571 = phi i32 [ %.0570, %bb.c ], [ %i.ad, %.lr.ph704.split ]
  %.2 = phi ptr [ %i.bd, %bb.c ], [ %.0569703, %.lr.ph704.split ] ; 3 uses
  %i.be = load i32, ptr %.2, align 4              ; 3 uses
  %i.bf = lshr i32 %i.be, 16
  %i.bg = and i32 %i.bf, 255
  %i.bh = lshr i32 %i.be, 8
  %i.bi = and i32 %i.bh, 255
  %i.bj = and i32 %i.be, 255
  %i.bk = mul nuw nsw i32 %i.bg, %i.b
  %i.bl = udiv i32 %i.bk, 255
  %i.bm = add nuw nsw i32 %i.bl, %i.af
  %i.bn = mul nuw nsw i32 %i.bi, %i.b
  %i.bo = udiv i32 %i.bn, 255
  %i.bp = add nuw nsw i32 %i.bo, %i.ag
  %i.bq = mul nuw nsw i32 %i.bj, %i.b
  %i.br = udiv i32 %i.bq, 255
  %i.bs = add nuw nsw i32 %i.br, %i.ah
  %i.bt = shl nuw nsw i32 %i.bm, 16
  %i.bu = shl nuw nsw i32 %i.bp, 8
  %i.bv = or i32 %i.bu, %i.bs
  %i.bw = or i32 %i.bv, %i.bt
  store i32 %i.bw, ptr %.2, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.2, i64 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph704.split, %bb.d
  %.2572 = phi i32 [ %.1571, %bb.d ], [ %i.ad, %.lr.ph704.split ]
  %.3 = phi ptr [ %i.bx, %bb.d ], [ %.0569703, %.lr.ph704.split ] ; 3 uses
  %i.by = load i32, ptr %.3, align 4              ; 3 uses
  %i.bz = lshr i32 %i.by, 16
  %i.ca = and i32 %i.bz, 255
  %i.cb = lshr i32 %i.by, 8
  %i.cc = and i32 %i.cb, 255
  %i.cd = and i32 %i.by, 255
  %i.ce = mul nuw nsw i32 %i.ca, %i.b
  %i.cf = udiv i32 %i.ce, 255
  %i.cg = add nuw nsw i32 %i.cf, %i.af
  %i.ch = mul nuw nsw i32 %i.cc, %i.b
  %i.ci = udiv i32 %i.ch, 255
  %i.cj = add nuw nsw i32 %i.ci, %i.ag
  %i.ck = mul nuw nsw i32 %i.cd, %i.b
  %i.cl = udiv i32 %i.ck, 255
  %i.cm = add nuw nsw i32 %i.cl, %i.ah
  %i.cn = shl nuw nsw i32 %i.cg, 16
  %i.co = shl nuw nsw i32 %i.cj, 8
  %i.cp = or i32 %i.co, %i.cm
  %i.cq = or i32 %i.cp, %i.cn
  store i32 %i.cq, ptr %.3, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.3, i64 4
  br label %bb.f

default.unreachable:                              ; preds = %.lr.ph704.split
  unreachable

bb.f:                                             ; preds = %.lr.ph704.split, %bb.e
  %.3573 = phi i32 [ %.2572, %bb.e ], [ %i.ad, %.lr.ph704.split ] ; 2 uses
  %.4 = phi ptr [ %i.cr, %bb.e ], [ %.0569703, %.lr.ph704.split ] ; 3 uses
  %i.cs = load i32, ptr %.4, align 4              ; 3 uses
  %i.ct = lshr i32 %i.cs, 16
  %i.cu = and i32 %i.ct, 255
  %i.cv = lshr i32 %i.cs, 8
  %i.cw = and i32 %i.cv, 255
  %i.cx = and i32 %i.cs, 255
  %i.cy = mul nuw nsw i32 %i.cu, %i.b
  %i.cz = udiv i32 %i.cy, 255
  %i.da = add nuw nsw i32 %i.cz, %i.af
  %i.db = mul nuw nsw i32 %i.cw, %i.b
  %i.dc = udiv i32 %i.db, 255
  %i.dd = add nuw nsw i32 %i.dc, %i.ag
  %i.de = mul nuw nsw i32 %i.cx, %i.b
  %i.df = udiv i32 %i.de, 255
  %i.dg = add nuw nsw i32 %i.df, %i.ah
  %i.dh = shl nuw nsw i32 %i.da, 16
  %i.di = shl nuw nsw i32 %i.dd, 8
  %i.dj = or i32 %i.di, %i.dg
  %i.dk = or i32 %i.dj, %i.dh
  store i32 %i.dk, ptr %.4, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %.4, i64 4 ; 2 uses
  %i.dm = add nsw i32 %.3573, -1
  %i.dn = icmp sgt i32 %.3573, 1
  br i1 %i.dn, label %bb.c, label %bb.g, !llvm.loop !28

bb.g:                                             ; preds = %bb.f
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.ai
  %.not633 = icmp eq i32 %i.aj, 0
  br i1 %.not633, label %.loopexit, label %.lr.ph704.split, !llvm.loop !29

bb.h:                                             ; preds = %.split
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  %.not632699 = icmp eq i32 %i.dq, 0
  br i1 %.not632699, label %.loopexit, label %.lr.ph701

.lr.ph701:                                        ; preds = %bb.h
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dw = load i32, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 5
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i32
  %i.ec = sdiv i32 %i.dw, %i.eb                   ; 2 uses
  %i.ed = mul nsw i32 %i.du, %i.ec
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.ee
  %i.eg = load i32, ptr %1, align 4
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ek = load i32, ptr %i.ej, align 4            ; 3 uses
  %i.el = sub nsw i32 %i.ec, %i.ek
  %i.em = add nsw i32 %i.ek, 3
  %i.en = sdiv i32 %i.em, 4                       ; 4 uses
  %i.eo = and i32 %i.ek, 3
  %i.ep = zext i8 %3 to i32                       ; 4 uses
  %i.eq = zext i8 %4 to i32                       ; 4 uses
  %i.er = zext i8 %5 to i32                       ; 4 uses
  %i.es = sext i32 %i.el to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph701, %bb.n
  %.in714 = phi i32 [ %i.dq, %.lr.ph701 ], [ %i.et, %bb.n ]
  %.0575700 = phi ptr [ %i.ei, %.lr.ph701 ], [ %i.hy, %bb.n ] ; 4 uses
  %i.et = add nsw i32 %.in714, -1                 ; 2 uses
  switch i32 %i.eo, label %.unreachabledefault [
    i32 0, label %bb.j
    i32 3, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i, %bb.m
  %.0580 = phi i32 [ %i.en, %bb.i ], [ %i.hw, %bb.m ]
  %.1576 = phi ptr [ %.0575700, %bb.i ], [ %i.hv, %bb.m ] ; 3 uses
  %i.eu = load i32, ptr %.1576, align 4           ; 3 uses
  %i.ev = lshr i32 %i.eu, 16
  %i.ew = and i32 %i.ev, 255
  %i.ex = lshr i32 %i.eu, 8
  %i.ey = and i32 %i.ex, 255
  %i.ez = and i32 %i.eu, 255
  %i.fa = mul nuw nsw i32 %i.ew, %i.b
  %i.fb = udiv i32 %i.fa, 255
  %i.fc = add nuw nsw i32 %i.fb, %i.ep
  %spec.store.select27 = tail call i32 @llvm.umin.i32(i32 %i.fc, i32 255)
  %i.fd = mul nuw nsw i32 %i.ey, %i.b
  %i.fe = udiv i32 %i.fd, 255
  %i.ff = add nuw nsw i32 %i.fe, %i.eq
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.ff, i32 255)
  %i.fg = mul nuw nsw i32 %i.ez, %i.b
  %i.fh = udiv i32 %i.fg, 255
  %i.fi = add nuw nsw i32 %i.fh, %i.er
  %spec.store.select39 = tail call i32 @llvm.umin.i32(i32 %i.fi, i32 255)
  %i.fj = shl nuw nsw i32 %spec.store.select27, 16
  %i.fk = shl nuw nsw i32 %spec.store.select, 8
  %i.fl = or disjoint i32 %i.fj, %i.fk
  %i.fm = or disjoint i32 %i.fl, %spec.store.select39
  store i32 %i.fm, ptr %.1576, align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %.1576, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.1581 = phi i32 [ %.0580, %bb.j ], [ %i.en, %bb.i ]
  %.2577 = phi ptr [ %i.fn, %bb.j ], [ %.0575700, %bb.i ] ; 3 uses
  %i.fo = load i32, ptr %.2577, align 4           ; 3 uses
  %i.fp = lshr i32 %i.fo, 16
  %i.fq = and i32 %i.fp, 255
  %i.fr = lshr i32 %i.fo, 8
  %i.fs = and i32 %i.fr, 255
  %i.ft = and i32 %i.fo, 255
  %i.fu = mul nuw nsw i32 %i.fq, %i.b
  %i.fv = udiv i32 %i.fu, 255
  %i.fw = add nuw nsw i32 %i.fv, %i.ep
  %spec.store.select3 = tail call i32 @llvm.umin.i32(i32 %i.fw, i32 255)
  %i.fx = mul nuw nsw i32 %i.fs, %i.b
  %i.fy = udiv i32 %i.fx, 255
  %i.fz = add nuw nsw i32 %i.fy, %i.eq
  %spec.store.select28 = tail call i32 @llvm.umin.i32(i32 %i.fz, i32 255)
  %i.ga = mul nuw nsw i32 %i.ft, %i.b
  %i.gb = udiv i32 %i.ga, 255
  %i.gc = add nuw nsw i32 %i.gb, %i.er
  %spec.store.select4 = tail call i32 @llvm.umin.i32(i32 %i.gc, i32 255)
  %i.gd = shl nuw nsw i32 %spec.store.select3, 16
  %i.ge = shl nuw nsw i32 %spec.store.select28, 8
  %i.gf = or disjoint i32 %i.gd, %i.ge
  %i.gg = or disjoint i32 %i.gf, %spec.store.select4
  store i32 %i.gg, ptr %.2577, align 4
  %i.gh = getelementptr inbounds nuw i8, ptr %.2577, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.2582 = phi i32 [ %.1581, %bb.k ], [ %i.en, %bb.i ]
  %.3578 = phi ptr [ %i.gh, %bb.k ], [ %.0575700, %bb.i ] ; 3 uses
  %i.gi = load i32, ptr %.3578, align 4           ; 3 uses
  %i.gj = lshr i32 %i.gi, 16
  %i.gk = and i32 %i.gj, 255
  %i.gl = lshr i32 %i.gi, 8
  %i.gm = and i32 %i.gl, 255
  %i.gn = and i32 %i.gi, 255
  %i.go = mul nuw nsw i32 %i.gk, %i.b
  %i.gp = udiv i32 %i.go, 255
  %i.gq = add nuw nsw i32 %i.gp, %i.ep
  %spec.store.select5 = tail call i32 @llvm.umin.i32(i32 %i.gq, i32 255)
  %i.gr = mul nuw nsw i32 %i.gm, %i.b
  %i.gs = udiv i32 %i.gr, 255
  %i.gt = add nuw nsw i32 %i.gs, %i.eq
  %spec.store.select29 = tail call i32 @llvm.umin.i32(i32 %i.gt, i32 255)
  %i.gu = mul nuw nsw i32 %i.gn, %i.b
  %i.gv = udiv i32 %i.gu, 255
  %i.gw = add nuw nsw i32 %i.gv, %i.er
  %spec.store.select6 = tail call i32 @llvm.umin.i32(i32 %i.gw, i32 255)
  %i.gx = shl nuw nsw i32 %spec.store.select5, 16
  %i.gy = shl nuw nsw i32 %spec.store.select29, 8
  %i.gz = or disjoint i32 %i.gx, %i.gy
  %i.ha = or disjoint i32 %i.gz, %spec.store.select6
  store i32 %i.ha, ptr %.3578, align 4
  %i.hb = getelementptr inbounds nuw i8, ptr %.3578, i64 4
  br label %bb.m

.unreachabledefault:                              ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.l
  %.3583 = phi i32 [ %.2582, %bb.l ], [ %i.en, %bb.i ] ; 2 uses
  %.4579 = phi ptr [ %i.hb, %bb.l ], [ %.0575700, %bb.i ] ; 3 uses
  %i.hc = load i32, ptr %.4579, align 4           ; 3 uses
  %i.hd = lshr i32 %i.hc, 16
  %i.he = and i32 %i.hd, 255
  %i.hf = lshr i32 %i.hc, 8
  %i.hg = and i32 %i.hf, 255
  %i.hh = and i32 %i.hc, 255
  %i.hi = mul nuw nsw i32 %i.he, %i.b
  %i.hj = udiv i32 %i.hi, 255
  %i.hk = add nuw nsw i32 %i.hj, %i.ep
  %spec.store.select7 = tail call i32 @llvm.umin.i32(i32 %i.hk, i32 255)
  %i.hl = mul nuw nsw i32 %i.hg, %i.b
  %i.hm = udiv i32 %i.hl, 255
  %i.hn = add nuw nsw i32 %i.hm, %i.eq
  %spec.store.select30 = tail call i32 @llvm.umin.i32(i32 %i.hn, i32 255)
  %i.ho = mul nuw nsw i32 %i.hh, %i.b
  %i.hp = udiv i32 %i.ho, 255
  %i.hq = add nuw nsw i32 %i.hp, %i.er
  %spec.store.select8 = tail call i32 @llvm.umin.i32(i32 %i.hq, i32 255)
  %i.hr = shl nuw nsw i32 %spec.store.select7, 16
  %i.hs = shl nuw nsw i32 %spec.store.select30, 8
  %i.ht = or disjoint i32 %i.hr, %i.hs
  %i.hu = or disjoint i32 %i.ht, %spec.store.select8
  store i32 %i.hu, ptr %.4579, align 4
  %i.hv = getelementptr inbounds nuw i8, ptr %.4579, i64 4 ; 2 uses
  %i.hw = add nsw i32 %.3583, -1
  %i.hx = icmp sgt i32 %.3583, 1
  br i1 %i.hx, label %bb.j, label %bb.n, !llvm.loop !30

bb.n:                                             ; preds = %bb.m
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.es
  %.not632 = icmp eq i32 %i.et, 0
  br i1 %.not632, label %.loopexit, label %bb.i, !llvm.loop !31

bb.o:                                             ; preds = %.split, %.split
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ia = load i32, ptr %i.hz, align 4            ; 2 uses
  %.not631696 = icmp eq i32 %i.ia, 0
  br i1 %.not631696, label %.loopexit, label %.lr.ph698

.lr.ph698:                                        ; preds = %bb.o
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ie = load i32, ptr %i.id, align 4
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ig = load i32, ptr %i.if, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 5
  %i.ik = load i8, ptr %i.ij, align 1
  %i.il = zext i8 %i.ik to i32
  %i.im = sdiv i32 %i.ig, %i.il                   ; 2 uses
  %i.in = mul nsw i32 %i.ie, %i.im
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.io
  %i.iq = load i32, ptr %1, align 4
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iu = load i32, ptr %i.it, align 4            ; 3 uses
  %i.iv = sub nsw i32 %i.im, %i.iu
  %i.iw = add nsw i32 %i.iu, 3
  %i.ix = sdiv i32 %i.iw, 4                       ; 4 uses
  %i.iy = and i32 %i.iu, 3
  %i.iz = zext i8 %3 to i32                       ; 4 uses
  %i.ja = zext i8 %4 to i32                       ; 4 uses
  %i.jb = zext i8 %5 to i32                       ; 4 uses
  %i.jc = sext i32 %i.iv to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph698, %bb.u
  %.in713 = phi i32 [ %i.ia, %.lr.ph698 ], [ %i.jd, %bb.u ]
  %.0585697 = phi ptr [ %i.is, %.lr.ph698 ], [ %i.lk, %bb.u ] ; 4 uses
  %i.jd = add nsw i32 %.in713, -1                 ; 2 uses
  switch i32 %i.iy, label %.unreachabledefault744 [
    i32 0, label %bb.q
    i32 3, label %bb.r
    i32 2, label %bb.s
    i32 1, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p, %bb.t
  %.0590 = phi i32 [ %i.ix, %bb.p ], [ %i.li, %bb.t ]
  %.1586 = phi ptr [ %.0585697, %bb.p ], [ %i.lh, %bb.t ] ; 3 uses
  %i.je = load i32, ptr %.1586, align 4           ; 3 uses
  %i.jf = lshr i32 %i.je, 16
  %i.jg = and i32 %i.jf, 255
  %i.jh = lshr i32 %i.je, 8
  %i.ji = and i32 %i.jh, 255
  %i.jj = and i32 %i.je, 255
  %i.jk = add nuw nsw i32 %i.jg, %i.iz
  %spec.store.select31 = tail call i32 @llvm.umin.i32(i32 %i.jk, i32 255)
  %i.jl = add nuw nsw i32 %i.ji, %i.ja
  %spec.store.select10 = tail call i32 @llvm.umin.i32(i32 %i.jl, i32 255)
  %i.jm = add nuw nsw i32 %i.jj, %i.jb
  %spec.store.select43 = tail call i32 @llvm.umin.i32(i32 %i.jm, i32 255)
  %i.jn = shl nuw nsw i32 %spec.store.select31, 16
  %i.jo = shl nuw nsw i32 %spec.store.select10, 8
  %i.jp = or disjoint i32 %i.jn, %i.jo
  %i.jq = or disjoint i32 %i.jp, %spec.store.select43
  store i32 %i.jq, ptr %.1586, align 4
  %i.jr = getelementptr inbounds nuw i8, ptr %.1586, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.1591 = phi i32 [ %.0590, %bb.q ], [ %i.ix, %bb.p ]
  %.2587 = phi ptr [ %i.jr, %bb.q ], [ %.0585697, %bb.p ] ; 3 uses
  %i.js = load i32, ptr %.2587, align 4           ; 3 uses
  %i.jt = lshr i32 %i.js, 16
  %i.ju = and i32 %i.jt, 255
  %i.jv = lshr i32 %i.js, 8
  %i.jw = and i32 %i.jv, 255
  %i.jx = and i32 %i.js, 255
  %i.jy = add nuw nsw i32 %i.ju, %i.iz
  %spec.store.select11 = tail call i32 @llvm.umin.i32(i32 %i.jy, i32 255)
  %i.jz = add nuw nsw i32 %i.jw, %i.ja
  %spec.store.select32 = tail call i32 @llvm.umin.i32(i32 %i.jz, i32 255)
  %i.ka = add nuw nsw i32 %i.jx, %i.jb
  %spec.store.select12 = tail call i32 @llvm.umin.i32(i32 %i.ka, i32 255)
  %i.kb = shl nuw nsw i32 %spec.store.select11, 16
  %i.kc = shl nuw nsw i32 %spec.store.select32, 8
  %i.kd = or disjoint i32 %i.kb, %i.kc
  %i.ke = or disjoint i32 %i.kd, %spec.store.select12
  store i32 %i.ke, ptr %.2587, align 4
  %i.kf = getelementptr inbounds nuw i8, ptr %.2587, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  %.2592 = phi i32 [ %.1591, %bb.r ], [ %i.ix, %bb.p ]
  %.3588 = phi ptr [ %i.kf, %bb.r ], [ %.0585697, %bb.p ] ; 3 uses
  %i.kg = load i32, ptr %.3588, align 4           ; 3 uses
  %i.kh = lshr i32 %i.kg, 16
  %i.ki = and i32 %i.kh, 255
  %i.kj = lshr i32 %i.kg, 8
  %i.kk = and i32 %i.kj, 255
  %i.kl = and i32 %i.kg, 255
  %i.km = add nuw nsw i32 %i.ki, %i.iz
  %spec.store.select13 = tail call i32 @llvm.umin.i32(i32 %i.km, i32 255)
  %i.kn = add nuw nsw i32 %i.kk, %i.ja
  %spec.store.select33 = tail call i32 @llvm.umin.i32(i32 %i.kn, i32 255)
  %i.ko = add nuw nsw i32 %i.kl, %i.jb
  %spec.store.select14 = tail call i32 @llvm.umin.i32(i32 %i.ko, i32 255)
  %i.kp = shl nuw nsw i32 %spec.store.select13, 16
  %i.kq = shl nuw nsw i32 %spec.store.select33, 8
  %i.kr = or disjoint i32 %i.kp, %i.kq
  %i.ks = or disjoint i32 %i.kr, %spec.store.select14
  store i32 %i.ks, ptr %.3588, align 4
  %i.kt = getelementptr inbounds nuw i8, ptr %.3588, i64 4
  br label %bb.t

.unreachabledefault744:                           ; preds = %bb.p
  unreachable

bb.t:                                             ; preds = %bb.p, %bb.s
  %.3593 = phi i32 [ %.2592, %bb.s ], [ %i.ix, %bb.p ] ; 2 uses
  %.4589 = phi ptr [ %i.kt, %bb.s ], [ %.0585697, %bb.p ] ; 3 uses
  %i.ku = load i32, ptr %.4589, align 4           ; 3 uses
  %i.kv = lshr i32 %i.ku, 16
  %i.kw = and i32 %i.kv, 255
  %i.kx = lshr i32 %i.ku, 8
  %i.ky = and i32 %i.kx, 255
  %i.kz = and i32 %i.ku, 255
  %i.la = add nuw nsw i32 %i.kw, %i.iz
  %spec.store.select15 = tail call i32 @llvm.umin.i32(i32 %i.la, i32 255)
  %i.lb = add nuw nsw i32 %i.ky, %i.ja
  %spec.store.select34 = tail call i32 @llvm.umin.i32(i32 %i.lb, i32 255)
  %i.lc = add nuw nsw i32 %i.kz, %i.jb
  %spec.store.select16 = tail call i32 @llvm.umin.i32(i32 %i.lc, i32 255)
  %i.ld = shl nuw nsw i32 %spec.store.select15, 16
  %i.le = shl nuw nsw i32 %spec.store.select34, 8
  %i.lf = or disjoint i32 %i.ld, %i.le
  %i.lg = or disjoint i32 %i.lf, %spec.store.select16
  store i32 %i.lg, ptr %.4589, align 4
  %i.lh = getelementptr inbounds nuw i8, ptr %.4589, i64 4 ; 2 uses
  %i.li = add nsw i32 %.3593, -1
  %i.lj = icmp sgt i32 %.3593, 1
  br i1 %i.lj, label %bb.q, label %bb.u, !llvm.loop !32

bb.u:                                             ; preds = %bb.t
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %i.jc
  %.not631 = icmp eq i32 %i.jd, 0
  br i1 %.not631, label %.loopexit, label %bb.p, !llvm.loop !33

bb.v:                                             ; preds = %.split
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.lm = load i32, ptr %i.ll, align 4            ; 2 uses
  %.not630693 = icmp eq i32 %i.lm, 0
  br i1 %.not630693, label %.loopexit, label %.lr.ph695

.lr.ph695:                                        ; preds = %bb.v
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lo = load ptr, ptr %i.ln, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.lq = load i32, ptr %i.lp, align 4
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ls = load i32, ptr %i.lr, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 5
  %i.lw = load i8, ptr %i.lv, align 1
  %i.lx = zext i8 %i.lw to i32
  %i.ly = sdiv i32 %i.ls, %i.lx                   ; 2 uses
  %i.lz = mul nsw i32 %i.lq, %i.ly
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.lo, i64 %i.ma
  %i.mc = load i32, ptr %1, align 4
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds [4 x i8], ptr %i.mb, i64 %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mg = load i32, ptr %i.mf, align 4            ; 3 uses
  %i.mh = sub nsw i32 %i.ly, %i.mg
  %i.mi = add nsw i32 %i.mg, 3
  %i.mj = sdiv i32 %i.mi, 4                       ; 4 uses
  %i.mk = and i32 %i.mg, 3
  %i.ml = zext i8 %3 to i32                       ; 4 uses
  %i.mm = zext i8 %4 to i32                       ; 4 uses
  %i.mn = zext i8 %5 to i32                       ; 4 uses
  %i.mo = sext i32 %i.mh to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph695, %bb.ab
  %.in712 = phi i32 [ %i.lm, %.lr.ph695 ], [ %i.mp, %bb.ab ]
  %.0595694 = phi ptr [ %i.me, %.lr.ph695 ], [ %i.pi, %bb.ab ] ; 4 uses
  %i.mp = add nsw i32 %.in712, -1                 ; 2 uses
  switch i32 %i.mk, label %.unreachabledefault745 [
    i32 0, label %bb.x
    i32 3, label %bb.y
    i32 2, label %bb.z
    i32 1, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w, %bb.aa
  %.0600 = phi i32 [ %i.mj, %bb.w ], [ %i.pg, %bb.aa ]
  %.1596 = phi ptr [ %.0595694, %bb.w ], [ %i.pf, %bb.aa ] ; 3 uses
  %i.mq = load i32, ptr %.1596, align 4           ; 3 uses
  %i.mr = lshr i32 %i.mq, 16
  %i.ms = and i32 %i.mr, 255
  %i.mt = lshr i32 %i.mq, 8
  %i.mu = and i32 %i.mt, 255
  %i.mv = and i32 %i.mq, 255
  %i.mw = mul nuw nsw i32 %i.ms, %i.ml
  %.lhs.trunc = trunc nuw i32 %i.mw to i16
  %i.mx = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.mx to i32
  %i.my = mul nuw nsw i32 %i.mu, %i.mm
  %.lhs.trunc635 = trunc nuw i32 %i.my to i16
  %i.mz = udiv i16 %.lhs.trunc635, 255
  %.zext636 = zext nneg i16 %i.mz to i32
  %i.na = mul nuw nsw i32 %i.mv, %i.mn
  %.lhs.trunc637 = trunc nuw i32 %i.na to i16
  %i.nb = udiv i16 %.lhs.trunc637, 255
  %.zext638 = zext nneg i16 %i.nb to i32
  %i.nc = shl nuw nsw i32 %.zext, 16
  %i.nd = shl nuw nsw i32 %.zext636, 8
  %i.ne = or i32 %i.nd, %.zext638
  %i.nf = or i32 %i.ne, %i.nc
  store i32 %i.nf, ptr %.1596, align 4
  %i.ng = getelementptr inbounds nuw i8, ptr %.1596, i64 4
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.1601 = phi i32 [ %.0600, %bb.x ], [ %i.mj, %bb.w ]
  %.2597 = phi ptr [ %i.ng, %bb.x ], [ %.0595694, %bb.w ] ; 3 uses
  %i.nh = load i32, ptr %.2597, align 4           ; 3 uses
  %i.ni = lshr i32 %i.nh, 16
  %i.nj = and i32 %i.ni, 255
  %i.nk = lshr i32 %i.nh, 8
  %i.nl = and i32 %i.nk, 255
  %i.nm = and i32 %i.nh, 255
  %i.nn = mul nuw nsw i32 %i.nj, %i.ml
  %.lhs.trunc639 = trunc nuw i32 %i.nn to i16
  %i.no = udiv i16 %.lhs.trunc639, 255
  %.zext640 = zext nneg i16 %i.no to i32
  %i.np = mul nuw nsw i32 %i.nl, %i.mm
  %.lhs.trunc641 = trunc nuw i32 %i.np to i16
  %i.nq = udiv i16 %.lhs.trunc641, 255
  %.zext642 = zext nneg i16 %i.nq to i32
  %i.nr = mul nuw nsw i32 %i.nm, %i.mn
  %.lhs.trunc643 = trunc nuw i32 %i.nr to i16
  %i.ns = udiv i16 %.lhs.trunc643, 255
  %.zext644 = zext nneg i16 %i.ns to i32
  %i.nt = shl nuw nsw i32 %.zext640, 16
  %i.nu = shl nuw nsw i32 %.zext642, 8
  %i.nv = or i32 %i.nu, %.zext644
  %i.nw = or i32 %i.nv, %i.nt
  store i32 %i.nw, ptr %.2597, align 4
  %i.nx = getelementptr inbounds nuw i8, ptr %.2597, i64 4
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y
  %.2602 = phi i32 [ %.1601, %bb.y ], [ %i.mj, %bb.w ]
  %.3598 = phi ptr [ %i.nx, %bb.y ], [ %.0595694, %bb.w ] ; 3 uses
  %i.ny = load i32, ptr %.3598, align 4           ; 3 uses
  %i.nz = lshr i32 %i.ny, 16
  %i.oa = and i32 %i.nz, 255
  %i.ob = lshr i32 %i.ny, 8
  %i.oc = and i32 %i.ob, 255
  %i.od = and i32 %i.ny, 255
  %i.oe = mul nuw nsw i32 %i.oa, %i.ml
  %.lhs.trunc645 = trunc nuw i32 %i.oe to i16
  %i.of = udiv i16 %.lhs.trunc645, 255
  %.zext646 = zext nneg i16 %i.of to i32
  %i.og = mul nuw nsw i32 %i.oc, %i.mm
  %.lhs.trunc647 = trunc nuw i32 %i.og to i16
  %i.oh = udiv i16 %.lhs.trunc647, 255
  %.zext648 = zext nneg i16 %i.oh to i32
  %i.oi = mul nuw nsw i32 %i.od, %i.mn
  %.lhs.trunc649 = trunc nuw i32 %i.oi to i16
  %i.oj = udiv i16 %.lhs.trunc649, 255
  %.zext650 = zext nneg i16 %i.oj to i32
  %i.ok = shl nuw nsw i32 %.zext646, 16
  %i.ol = shl nuw nsw i32 %.zext648, 8
  %i.om = or i32 %i.ol, %.zext650
  %i.on = or i32 %i.om, %i.ok
  store i32 %i.on, ptr %.3598, align 4
  %i.oo = getelementptr inbounds nuw i8, ptr %.3598, i64 4
  br label %bb.aa

.unreachabledefault745:                           ; preds = %bb.w
  unreachable

bb.aa:                                            ; preds = %bb.w, %bb.z
  %.3603 = phi i32 [ %.2602, %bb.z ], [ %i.mj, %bb.w ] ; 2 uses
  %.4599 = phi ptr [ %i.oo, %bb.z ], [ %.0595694, %bb.w ] ; 3 uses
  %i.op = load i32, ptr %.4599, align 4           ; 3 uses
  %i.oq = lshr i32 %i.op, 16
  %i.or = and i32 %i.oq, 255
  %i.os = lshr i32 %i.op, 8
  %i.ot = and i32 %i.os, 255
  %i.ou = and i32 %i.op, 255
  %i.ov = mul nuw nsw i32 %i.or, %i.ml
  %.lhs.trunc651 = trunc nuw i32 %i.ov to i16
  %i.ow = udiv i16 %.lhs.trunc651, 255
  %.zext652 = zext nneg i16 %i.ow to i32
  %i.ox = mul nuw nsw i32 %i.ot, %i.mm
  %.lhs.trunc653 = trunc nuw i32 %i.ox to i16
  %i.oy = udiv i16 %.lhs.trunc653, 255
  %.zext654 = zext nneg i16 %i.oy to i32
  %i.oz = mul nuw nsw i32 %i.ou, %i.mn
  %.lhs.trunc655 = trunc nuw i32 %i.oz to i16
  %i.pa = udiv i16 %.lhs.trunc655, 255
  %.zext656 = zext nneg i16 %i.pa to i32
  %i.pb = shl nuw nsw i32 %.zext652, 16
  %i.pc = shl nuw nsw i32 %.zext654, 8
  %i.pd = or i32 %i.pc, %.zext656
  %i.pe = or i32 %i.pd, %i.pb
  store i32 %i.pe, ptr %.4599, align 4
  %i.pf = getelementptr inbounds nuw i8, ptr %.4599, i64 4 ; 2 uses
  %i.pg = add nsw i32 %.3603, -1
  %i.ph = icmp sgt i32 %.3603, 1
  br i1 %i.ph, label %bb.x, label %bb.ab, !llvm.loop !34

bb.ab:                                            ; preds = %bb.aa
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.mo
  %.not630 = icmp eq i32 %i.mp, 0
  br i1 %.not630, label %.loopexit, label %bb.w, !llvm.loop !35

bb.ac:                                            ; preds = %.split
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.pk = load i32, ptr %i.pj, align 4            ; 2 uses
  %.not691 = icmp eq i32 %i.pk, 0
  br i1 %.not691, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pm = load ptr, ptr %i.pl, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.po = load i32, ptr %i.pn, align 4
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pq = load i32, ptr %i.pp, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ps = load ptr, ptr %i.pr, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 5
  %i.pu = load i8, ptr %i.pt, align 1
  %i.pv = zext i8 %i.pu to i32
  %i.pw = sdiv i32 %i.pq, %i.pv                   ; 2 uses
  %i.px = mul nsw i32 %i.po, %i.pw
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.pm, i64 %i.py
  %i.qa = load i32, ptr %1, align 4
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr inbounds [4 x i8], ptr %i.pz, i64 %i.qb
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qe = load i32, ptr %i.qd, align 4            ; 3 uses
  %i.qf = sub nsw i32 %i.pw, %i.qe
  %i.qg = add nsw i32 %i.qe, 3
  %i.qh = sdiv i32 %i.qg, 4                       ; 4 uses
  %i.qi = and i32 %i.qe, 3
  %i.qj = zext i8 %3 to i32                       ; 4 uses
  %i.qk = zext i8 %4 to i32                       ; 4 uses
  %i.ql = zext i8 %5 to i32                       ; 4 uses
  %i.qm = sext i32 %i.qf to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %bb.ai
  %.in = phi i32 [ %i.pk, %.lr.ph ], [ %i.qn, %bb.ai ]
  %.0605692 = phi ptr [ %i.qc, %.lr.ph ], [ %i.uq, %bb.ai ] ; 4 uses
  %i.qn = add nsw i32 %.in, -1                    ; 2 uses
  switch i32 %i.qi, label %.unreachabledefault746 [
    i32 0, label %bb.ae
    i32 3, label %bb.af
    i32 2, label %bb.ag
    i32 1, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ah
  %.0610 = phi i32 [ %i.qh, %bb.ad ], [ %i.uo, %bb.ah ]
  %.1606 = phi ptr [ %.0605692, %bb.ad ], [ %i.un, %bb.ah ] ; 3 uses
  %i.qo = load i32, ptr %.1606, align 4           ; 3 uses
  %i.qp = lshr i32 %i.qo, 16
  %i.qq = and i32 %i.qp, 255                      ; 2 uses
  %i.qr = lshr i32 %i.qo, 8
  %i.qs = and i32 %i.qr, 255                      ; 2 uses
  %i.qt = and i32 %i.qo, 255                      ; 2 uses
  %i.qu = mul nuw nsw i32 %i.qq, %i.qj
  %.lhs.trunc657 = trunc nuw i32 %i.qu to i16
  %i.qv = udiv i16 %.lhs.trunc657, 255
  %.zext658 = zext nneg i16 %i.qv to i32
  %i.qw = mul nuw nsw i32 %i.qq, %i.b
  %i.qx = udiv i32 %i.qw, 255
  %i.qy = add nuw nsw i32 %i.qx, %.zext658
  %spec.store.select35 = tail call i32 @llvm.umin.i32(i32 %i.qy, i32 255)
  %i.qz = mul nuw nsw i32 %i.qs, %i.qk
  %.lhs.trunc659 = trunc nuw i32 %i.qz to i16
  %i.ra = udiv i16 %.lhs.trunc659, 255
  %.zext660 = zext nneg i16 %i.ra to i32
  %i.rb = mul nuw nsw i32 %i.qs, %i.b
  %i.rc = udiv i32 %i.rb, 255
  %i.rd = add nuw nsw i32 %i.rc, %.zext660
  %spec.store.select19 = tail call i32 @llvm.umin.i32(i32 %i.rd, i32 255)
  %i.re = mul nuw nsw i32 %i.qt, %i.ql
  %.lhs.trunc661 = trunc nuw i32 %i.re to i16
  %i.rf = udiv i16 %.lhs.trunc661, 255
  %.zext662 = zext nneg i16 %i.rf to i32
  %i.rg = mul nuw nsw i32 %i.qt, %i.b
  %i.rh = udiv i32 %i.rg, 255
  %i.ri = add nuw nsw i32 %i.rh, %.zext662
  %spec.store.select44 = tail call i32 @llvm.umin.i32(i32 %i.ri, i32 255)
  %i.rj = shl nuw nsw i32 %spec.store.select35, 16
  %i.rk = shl nuw nsw i32 %spec.store.select19, 8
  %i.rl = or disjoint i32 %i.rj, %i.rk
  %i.rm = or disjoint i32 %i.rl, %spec.store.select44
  store i32 %i.rm, ptr %.1606, align 4
  %i.rn = getelementptr inbounds nuw i8, ptr %.1606, i64 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.1611 = phi i32 [ %.0610, %bb.ae ], [ %i.qh, %bb.ad ]
  %.2607 = phi ptr [ %i.rn, %bb.ae ], [ %.0605692, %bb.ad ] ; 3 uses
  %i.ro = load i32, ptr %.2607, align 4           ; 3 uses
  %i.rp = lshr i32 %i.ro, 16
  %i.rq = and i32 %i.rp, 255                      ; 2 uses
  %i.rr = lshr i32 %i.ro, 8
  %i.rs = and i32 %i.rr, 255                      ; 2 uses
  %i.rt = and i32 %i.ro, 255                      ; 2 uses
  %i.ru = mul nuw nsw i32 %i.rq, %i.qj
  %.lhs.trunc663 = trunc nuw i32 %i.ru to i16
  %i.rv = udiv i16 %.lhs.trunc663, 255
  %.zext664 = zext nneg i16 %i.rv to i32
  %i.rw = mul nuw nsw i32 %i.rq, %i.b
  %i.rx = udiv i32 %i.rw, 255
  %i.ry = add nuw nsw i32 %i.rx, %.zext664
  %spec.store.select20 = tail call i32 @llvm.umin.i32(i32 %i.ry, i32 255)
  %i.rz = mul nuw nsw i32 %i.rs, %i.qk
  %.lhs.trunc665 = trunc nuw i32 %i.rz to i16
  %i.sa = udiv i16 %.lhs.trunc665, 255
  %.zext666 = zext nneg i16 %i.sa to i32
  %i.sb = mul nuw nsw i32 %i.rs, %i.b
  %i.sc = udiv i32 %i.sb, 255
  %i.sd = add nuw nsw i32 %i.sc, %.zext666
  %spec.store.select36 = tail call i32 @llvm.umin.i32(i32 %i.sd, i32 255)
  %i.se = mul nuw nsw i32 %i.rt, %i.ql
  %.lhs.trunc667 = trunc nuw i32 %i.se to i16
  %i.sf = udiv i16 %.lhs.trunc667, 255
  %.zext668 = zext nneg i16 %i.sf to i32
  %i.sg = mul nuw nsw i32 %i.rt, %i.b
  %i.sh = udiv i32 %i.sg, 255
  %i.si = add nuw nsw i32 %i.sh, %.zext668
  %spec.store.select21 = tail call i32 @llvm.umin.i32(i32 %i.si, i32 255)
  %i.sj = shl nuw nsw i32 %spec.store.select20, 16
  %i.sk = shl nuw nsw i32 %spec.store.select36, 8
  %i.sl = or disjoint i32 %i.sj, %i.sk
  %i.sm = or disjoint i32 %i.sl, %spec.store.select21
  store i32 %i.sm, ptr %.2607, align 4
  %i.sn = getelementptr inbounds nuw i8, ptr %.2607, i64 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.af
  %.2612 = phi i32 [ %.1611, %bb.af ], [ %i.qh, %bb.ad ]
  %.3608 = phi ptr [ %i.sn, %bb.af ], [ %.0605692, %bb.ad ] ; 3 uses
  %i.so = load i32, ptr %.3608, align 4           ; 3 uses
  %i.sp = lshr i32 %i.so, 16
  %i.sq = and i32 %i.sp, 255                      ; 2 uses
  %i.sr = lshr i32 %i.so, 8
  %i.ss = and i32 %i.sr, 255                      ; 2 uses
  %i.st = and i32 %i.so, 255                      ; 2 uses
  %i.su = mul nuw nsw i32 %i.sq, %i.qj
  %.lhs.trunc669 = trunc nuw i32 %i.su to i16
  %i.sv = udiv i16 %.lhs.trunc669, 255
  %.zext670 = zext nneg i16 %i.sv to i32
  %i.sw = mul nuw nsw i32 %i.sq, %i.b
  %i.sx = udiv i32 %i.sw, 255
  %i.sy = add nuw nsw i32 %i.sx, %.zext670
  %spec.store.select22 = tail call i32 @llvm.umin.i32(i32 %i.sy, i32 255)
  %i.sz = mul nuw nsw i32 %i.ss, %i.qk
  %.lhs.trunc671 = trunc nuw i32 %i.sz to i16
  %i.ta = udiv i16 %.lhs.trunc671, 255
  %.zext672 = zext nneg i16 %i.ta to i32
  %i.tb = mul nuw nsw i32 %i.ss, %i.b
  %i.tc = udiv i32 %i.tb, 255
  %i.td = add nuw nsw i32 %i.tc, %.zext672
  %spec.store.select37 = tail call i32 @llvm.umin.i32(i32 %i.td, i32 255)
  %i.te = mul nuw nsw i32 %i.st, %i.ql
  %.lhs.trunc673 = trunc nuw i32 %i.te to i16
  %i.tf = udiv i16 %.lhs.trunc673, 255
  %.zext674 = zext nneg i16 %i.tf to i32
  %i.tg = mul nuw nsw i32 %i.st, %i.b
  %i.th = udiv i32 %i.tg, 255
  %i.ti = add nuw nsw i32 %i.th, %.zext674
  %spec.store.select23 = tail call i32 @llvm.umin.i32(i32 %i.ti, i32 255)
  %i.tj = shl nuw nsw i32 %spec.store.select22, 16
  %i.tk = shl nuw nsw i32 %spec.store.select37, 8
  %i.tl = or disjoint i32 %i.tj, %i.tk
  %i.tm = or disjoint i32 %i.tl, %spec.store.select23
  store i32 %i.tm, ptr %.3608, align 4
  %i.tn = getelementptr inbounds nuw i8, ptr %.3608, i64 4
  br label %bb.ah

.unreachabledefault746:                           ; preds = %bb.ad
  unreachable

bb.ah:                                            ; preds = %bb.ad, %bb.ag
  %.3613 = phi i32 [ %.2612, %bb.ag ], [ %i.qh, %bb.ad ] ; 2 uses
  %.4609 = phi ptr [ %i.tn, %bb.ag ], [ %.0605692, %bb.ad ] ; 3 uses
  %i.to = load i32, ptr %.4609, align 4           ; 3 uses
  %i.tp = lshr i32 %i.to, 16
  %i.tq = and i32 %i.tp, 255                      ; 2 uses
  %i.tr = lshr i32 %i.to, 8
  %i.ts = and i32 %i.tr, 255                      ; 2 uses
  %i.tt = and i32 %i.to, 255                      ; 2 uses
  %i.tu = mul nuw nsw i32 %i.tq, %i.qj
  %.lhs.trunc675 = trunc nuw i32 %i.tu to i16
  %i.tv = udiv i16 %.lhs.trunc675, 255
  %.zext676 = zext nneg i16 %i.tv to i32
  %i.tw = mul nuw nsw i32 %i.tq, %i.b
  %i.tx = udiv i32 %i.tw, 255
  %i.ty = add nuw nsw i32 %i.tx, %.zext676
  %spec.store.select24 = tail call i32 @llvm.umin.i32(i32 %i.ty, i32 255)
  %i.tz = mul nuw nsw i32 %i.ts, %i.qk
  %.lhs.trunc677 = trunc nuw i32 %i.tz to i16
  %i.ua = udiv i16 %.lhs.trunc677, 255
  %.zext678 = zext nneg i16 %i.ua to i32
  %i.ub = mul nuw nsw i32 %i.ts, %i.b
  %i.uc = udiv i32 %i.ub, 255
  %i.ud = add nuw nsw i32 %i.uc, %.zext678
  %spec.store.select38 = tail call i32 @llvm.umin.i32(i32 %i.ud, i32 255)
  %i.ue = mul nuw nsw i32 %i.tt, %i.ql
  %.lhs.trunc679 = trunc nuw i32 %i.ue to i16
  %i.uf = udiv i16 %.lhs.trunc679, 255
  %.zext680 = zext nneg i16 %i.uf to i32
  %i.ug = mul nuw nsw i32 %i.tt, %i.b
  %i.uh = udiv i32 %i.ug, 255
  %i.ui = add nuw nsw i32 %i.uh, %.zext680
  %spec.store.select25 = tail call i32 @llvm.umin.i32(i32 %i.ui, i32 255)
  %i.uj = shl nuw nsw i32 %spec.store.select24, 16
  %i.uk = shl nuw nsw i32 %spec.store.select38, 8
  %i.ul = or disjoint i32 %i.uj, %i.uk
  %i.um = or disjoint i32 %i.ul, %spec.store.select25
  store i32 %i.um, ptr %.4609, align 4
  %i.un = getelementptr inbounds nuw i8, ptr %.4609, i64 4 ; 2 uses
  %i.uo = add nsw i32 %.3613, -1
  %i.up = icmp sgt i32 %.3613, 1
  br i1 %i.up, label %bb.ae, label %bb.ai, !llvm.loop !36

bb.ai:                                            ; preds = %bb.ah
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.qm
  %.not = icmp eq i32 %i.qn, 0
  br i1 %.not, label %.loopexit, label %bb.ad, !llvm.loop !37

bb.aj:                                            ; preds = %.split, %bb.a
  %i.ur = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.us = load i32, ptr %i.ur, align 4            ; 2 uses
  %.not634705 = icmp eq i32 %i.us, 0
  br i1 %.not634705, label %.loopexit, label %.lr.ph707

.lr.ph707:                                        ; preds = %bb.aj
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.uu = load ptr, ptr %i.ut, align 8
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.uw = load i32, ptr %i.uv, align 4
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.uy = load i32, ptr %i.ux, align 8
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.va = load ptr, ptr %i.uz, align 8
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 5
  %i.vc = load i8, ptr %i.vb, align 1
  %i.vd = zext i8 %i.vc to i32
  %i.ve = sdiv i32 %i.uy, %i.vd                   ; 2 uses
  %i.vf = mul nsw i32 %i.uw, %i.ve
  %i.vg = sext i32 %i.vf to i64
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.uu, i64 %i.vg
  %i.vi = load i32, ptr %1, align 4
  %i.vj = sext i32 %i.vi to i64
  %i.vk = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.vm = load i32, ptr %i.vl, align 4            ; 3 uses
  %i.vn = sub nsw i32 %i.ve, %i.vm
  %i.vo = add nsw i32 %i.vm, 3
  %i.vp = sdiv i32 %i.vo, 4                       ; 4 uses
  %i.vq = and i32 %i.vm, 3
  %i.vr = zext i8 %3 to i32
  %i.vs = zext i8 %4 to i32
  %i.vt = zext i8 %5 to i32
  %i.vu = shl nuw nsw i32 %i.vr, 16
  %i.vv = shl nuw nsw i32 %i.vs, 8
  %i.vw = or disjoint i32 %i.vv, %i.vu
  %i.vx = or disjoint i32 %i.vw, %i.vt            ; 4 uses
  %i.vy = sext i32 %i.vn to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph707, %bb.ap
  %.in716 = phi i32 [ %i.us, %.lr.ph707 ], [ %i.vz, %bb.ap ]
  %.0619706 = phi ptr [ %i.vk, %.lr.ph707 ], [ %i.wg, %bb.ap ] ; 4 uses
  %i.vz = add nsw i32 %.in716, -1                 ; 2 uses
  switch i32 %i.vq, label %.unreachabledefault747 [
    i32 0, label %bb.al
    i32 3, label %bb.am
    i32 2, label %bb.an
    i32 1, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ao
  %.1620 = phi ptr [ %.0619706, %bb.ak ], [ %i.wd, %bb.ao ] ; 2 uses
  %.0615 = phi i32 [ %i.vp, %bb.ak ], [ %i.we, %bb.ao ]
  store i32 %i.vx, ptr %.1620, align 4
  %i.wa = getelementptr inbounds nuw i8, ptr %.1620, i64 4
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.2621 = phi ptr [ %i.wa, %bb.al ], [ %.0619706, %bb.ak ] ; 2 uses
  %.1616 = phi i32 [ %.0615, %bb.al ], [ %i.vp, %bb.ak ]
  store i32 %i.vx, ptr %.2621, align 4
  %i.wb = getelementptr inbounds nuw i8, ptr %.2621, i64 4
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.am
  %.3622 = phi ptr [ %i.wb, %bb.am ], [ %.0619706, %bb.ak ] ; 2 uses
  %.2617 = phi i32 [ %.1616, %bb.am ], [ %i.vp, %bb.ak ]
  store i32 %i.vx, ptr %.3622, align 4
  %i.wc = getelementptr inbounds nuw i8, ptr %.3622, i64 4
  br label %bb.ao

.unreachabledefault747:                           ; preds = %bb.ak
  unreachable

bb.ao:                                            ; preds = %bb.ak, %bb.an
  %.4623 = phi ptr [ %i.wc, %bb.an ], [ %.0619706, %bb.ak ] ; 2 uses
  %.3618 = phi i32 [ %.2617, %bb.an ], [ %i.vp, %bb.ak ] ; 2 uses
  store i32 %i.vx, ptr %.4623, align 4
  %i.wd = getelementptr inbounds nuw i8, ptr %.4623, i64 4 ; 2 uses
  %i.we = add nsw i32 %.3618, -1
  %i.wf = icmp sgt i32 %.3618, 1
  br i1 %i.wf, label %bb.al, label %bb.ap, !llvm.loop !38

bb.ap:                                            ; preds = %bb.ao
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.wd, i64 %i.vy
  %.not634 = icmp eq i32 %i.vz, 0
  br i1 %.not634, label %.loopexit, label %bb.ak, !llvm.loop !39

.loopexit:                                        ; preds = %bb.ai, %bb.ab, %bb.u, %bb.n, %bb.g, %bb.ap, %bb.ac, %bb.v, %bb.o, %bb.h, %bb.b, %bb.aj
  ret i1 true
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @SDL_BlendFillRect_ARGB8888(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #3 {
bb.a:
  %i.a = zext i8 %6 to i32                        ; 4 uses
  %i.b = xor i32 %i.a, 255                        ; 44 uses
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.split, label %bb.aj

.split:                                           ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  switch i32 %i.e, label %bb.aj [
    i32 0, label %bb.b
    i32 4, label %bb.h
    i32 1, label %bb.o
    i32 5, label %bb.o
    i32 2, label %bb.v
    i32 3, label %bb.ac
  ]

bb.b:                                             ; preds = %.split
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not677746 = icmp eq i32 %i.g, 0
  br i1 %.not677746, label %.loopexit, label %.lr.ph748

.lr.ph748:                                        ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = sdiv i32 %i.m, %i.r                      ; 2 uses
  %i.t = mul nsw i32 %i.k, %i.s
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.u
  %i.w = load i32, ptr %1, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 4             ; 3 uses
  %i.ab = sub nsw i32 %i.s, %i.aa
  %i.ac = add nsw i32 %i.aa, 3
  %i.ad = sdiv i32 %i.ac, 4                       ; 4 uses
  %i.ae = and i32 %i.aa, 3
  %i.af = zext i8 %3 to i32
  %i.ag = insertelement <2 x i8> poison, i8 %4, i64 0 ; 2 uses
  %i.ah = insertelement <2 x i8> %i.ag, i8 %3, i64 1
  %i.ai = insertelement <2 x i8> poison, i8 %5, i64 0 ; 2 uses
  %i.aj = insertelement <2 x i8> %i.ai, i8 %3, i64 1
  %i.ak = sext i32 %i.ab to i64
  %i.al = insertelement <4 x i32> poison, i32 %i.af, i64 2
  %i.am = insertelement <4 x i32> %i.al, i32 %i.a, i64 3 ; 2 uses
  %i.an = insertelement <2 x i8> %i.ag, i8 %5, i64 1 ; 2 uses
  %i.ao = shufflevector <2 x i8> %i.an, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ap = zext <4 x i8> %i.ao to <4 x i32>
  %i.aq = shufflevector <4 x i32> %i.am, <4 x i32> %i.ap, <4 x i32> <i32 5, i32 4, i32 2, i32 3>
  %i.ar = shufflevector <2 x i8> %i.an, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.as = zext <4 x i8> %i.ar to <4 x i32>
  %i.at = shufflevector <4 x i32> %i.am, <4 x i32> %i.as, <4 x i32> <i32 5, i32 4, i32 2, i32 3>
  %i.au = shufflevector <2 x i8> %i.aj, <2 x i8> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.av = insertelement <4 x i8> %i.au, i8 %4, i64 1
  %i.aw = insertelement <4 x i8> %i.av, i8 %6, i64 3
  %i.ax = zext <4 x i8> %i.aw to <4 x i32>
  %i.ay = shufflevector <2 x i8> %i.ai, <2 x i8> %i.ah, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.az = insertelement <4 x i8> %i.ay, i8 %6, i64 3
  %i.ba = zext <4 x i8> %i.az to <4 x i32>
  br label %.lr.ph748.split

.lr.ph748.split:                                  ; preds = %.lr.ph748, %bb.g
  %.in759 = phi i32 [ %i.bb, %bb.g ], [ %i.g, %.lr.ph748 ]
  %.0613747 = phi ptr [ %i.eg, %bb.g ], [ %i.y, %.lr.ph748 ] ; 4 uses
  %i.bb = add nsw i32 %.in759, -1                 ; 2 uses
  switch i32 %i.ae, label %default.unreachable [
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph748.split, %bb.f
  %.0614 = phi i32 [ %i.ad, %.lr.ph748.split ], [ %i.ee, %bb.f ]
  %.1 = phi ptr [ %.0613747, %.lr.ph748.split ], [ %i.ed, %bb.f ] ; 3 uses
  %i.bc = load i32, ptr %.1, align 4              ; 4 uses
  %i.bd = lshr i32 %i.bc, 24
  %i.be = lshr i32 %i.bc, 16
  %i.bf = lshr i32 %i.bc, 8
  %i.bg = and i32 %i.be, 255
  %i.bh = and i32 %i.bf, 255
  %i.bi = and i32 %i.bc, 255
  %i.bj = mul nuw nsw i32 %i.bd, %i.b
  %i.bk = mul nuw nsw i32 %i.bg, %i.b
  %i.bl = mul nuw nsw i32 %i.bh, %i.b
  %i.bm = mul nuw nsw i32 %i.bi, %i.b
  %i.bn = insertelement <4 x i32> poison, i32 %i.bm, i64 0
  %i.bo = insertelement <4 x i32> %i.bn, i32 %i.bl, i64 1
  %i.bp = insertelement <4 x i32> %i.bo, i32 %i.bk, i64 2
  %i.bq = insertelement <4 x i32> %i.bp, i32 %i.bj, i64 3
  %i.br = udiv <4 x i32> %i.bq, splat (i32 255)
  %i.bs = add nuw nsw <4 x i32> %i.br, %i.aq
  %i.bt = shl <4 x i32> %i.bs, <i32 0, i32 8, i32 16, i32 24>
  %i.bu = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bt)
  store i32 %i.bu, ptr %.1, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph748.split, %bb.c
  %.1615 = phi i32 [ %.0614, %bb.c ], [ %i.ad, %.lr.ph748.split ]
  %.2 = phi ptr [ %i.bv, %bb.c ], [ %.0613747, %.lr.ph748.split ] ; 3 uses
  %i.bw = load i32, ptr %.2, align 4              ; 4 uses
  %i.bx = lshr i32 %i.bw, 24
  %i.by = lshr i32 %i.bw, 16
  %i.bz = lshr i32 %i.bw, 8
  %i.ca = and i32 %i.by, 255
  %i.cb = and i32 %i.bz, 255
  %i.cc = and i32 %i.bw, 255
  %i.cd = mul nuw nsw i32 %i.bx, %i.b
  %i.ce = mul nuw nsw i32 %i.ca, %i.b
  %i.cf = mul nuw nsw i32 %i.cb, %i.b
  %i.cg = mul nuw nsw i32 %i.cc, %i.b
  %i.ch = insertelement <4 x i32> poison, i32 %i.cg, i64 0
  %i.ci = insertelement <4 x i32> %i.ch, i32 %i.cf, i64 1
  %i.cj = insertelement <4 x i32> %i.ci, i32 %i.ce, i64 2
  %i.ck = insertelement <4 x i32> %i.cj, i32 %i.cd, i64 3
  %i.cl = udiv <4 x i32> %i.ck, splat (i32 255)
  %i.cm = add nuw nsw <4 x i32> %i.cl, %i.at
  %i.cn = shl <4 x i32> %i.cm, <i32 0, i32 8, i32 16, i32 24>
  %i.co = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cn)
  store i32 %i.co, ptr %.2, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.2, i64 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph748.split, %bb.d
  %.2616 = phi i32 [ %.1615, %bb.d ], [ %i.ad, %.lr.ph748.split ]
  %.3 = phi ptr [ %i.cp, %bb.d ], [ %.0613747, %.lr.ph748.split ] ; 3 uses
  %i.cq = load i32, ptr %.3, align 4              ; 4 uses
  %i.cr = lshr i32 %i.cq, 24
  %i.cs = lshr i32 %i.cq, 16
  %i.ct = lshr i32 %i.cq, 8
  %i.cu = and i32 %i.cs, 255
  %i.cv = and i32 %i.ct, 255
  %i.cw = and i32 %i.cq, 255
  %i.cx = mul nuw nsw i32 %i.cr, %i.b
  %i.cy = mul nuw nsw i32 %i.cu, %i.b
  %i.cz = mul nuw nsw i32 %i.cv, %i.b
  %i.da = mul nuw nsw i32 %i.cw, %i.b
  %i.db = insertelement <4 x i32> poison, i32 %i.da, i64 0
  %i.dc = insertelement <4 x i32> %i.db, i32 %i.cz, i64 1
  %i.dd = insertelement <4 x i32> %i.dc, i32 %i.cy, i64 2
  %i.de = insertelement <4 x i32> %i.dd, i32 %i.cx, i64 3
  %i.df = udiv <4 x i32> %i.de, splat (i32 255)
  %i.dg = add nuw nsw <4 x i32> %i.df, %i.ax
  %i.dh = shl <4 x i32> %i.dg, <i32 0, i32 8, i32 16, i32 24>
  %i.di = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.dh)
  store i32 %i.di, ptr %.3, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.3, i64 4
  br label %bb.f

default.unreachable:                              ; preds = %.lr.ph748.split
  unreachable

bb.f:                                             ; preds = %.lr.ph748.split, %bb.e
  %.3617 = phi i32 [ %.2616, %bb.e ], [ %i.ad, %.lr.ph748.split ] ; 2 uses
  %.4 = phi ptr [ %i.dj, %bb.e ], [ %.0613747, %.lr.ph748.split ] ; 3 uses
  %i.dk = load i32, ptr %.4, align 4              ; 4 uses
  %i.dl = lshr i32 %i.dk, 24
  %i.dm = lshr i32 %i.dk, 16
  %i.dn = lshr i32 %i.dk, 8
  %i.do = and i32 %i.dm, 255
  %i.dp = and i32 %i.dn, 255
  %i.dq = and i32 %i.dk, 255
  %i.dr = mul nuw nsw i32 %i.dl, %i.b
  %i.ds = mul nuw nsw i32 %i.do, %i.b
  %i.dt = mul nuw nsw i32 %i.dp, %i.b
  %i.du = mul nuw nsw i32 %i.dq, %i.b
  %i.dv = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %i.dw = insertelement <4 x i32> %i.dv, i32 %i.dt, i64 1
  %i.dx = insertelement <4 x i32> %i.dw, i32 %i.ds, i64 2
  %i.dy = insertelement <4 x i32> %i.dx, i32 %i.dr, i64 3
  %i.dz = udiv <4 x i32> %i.dy, splat (i32 255)
  %i.ea = add nuw nsw <4 x i32> %i.dz, %i.ba
  %i.eb = shl <4 x i32> %i.ea, <i32 0, i32 8, i32 16, i32 24>
  %i.ec = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.eb)
  store i32 %i.ec, ptr %.4, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %.4, i64 4 ; 2 uses
  %i.ee = add nsw i32 %.3617, -1
  %i.ef = icmp sgt i32 %.3617, 1
  br i1 %i.ef, label %bb.c, label %bb.g, !llvm.loop !40

bb.g:                                             ; preds = %bb.f
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ak
  %.not677 = icmp eq i32 %i.bb, 0
  br i1 %.not677, label %.loopexit, label %.lr.ph748.split, !llvm.loop !41

bb.h:                                             ; preds = %.split
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ei = load i32, ptr %i.eh, align 4            ; 2 uses
  %.not676743 = icmp eq i32 %i.ei, 0
  br i1 %.not676743, label %.loopexit, label %.lr.ph745

.lr.ph745:                                        ; preds = %bb.h
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.em = load i32, ptr %i.el, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eo = load i32, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 5
  %i.es = load i8, ptr %i.er, align 1
  %i.et = zext i8 %i.es to i32
  %i.eu = sdiv i32 %i.eo, %i.et                   ; 2 uses
  %i.ev = mul nsw i32 %i.em, %i.eu
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.ew
  %i.ey = load i32, ptr %1, align 4
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fc = load i32, ptr %i.fb, align 4            ; 3 uses
  %i.fd = sub nsw i32 %i.eu, %i.fc
  %i.fe = add nsw i32 %i.fc, 3
  %i.ff = sdiv i32 %i.fe, 4                       ; 4 uses
  %i.fg = and i32 %i.fc, 3
  %i.fh = zext i8 %3 to i32
  %i.fi = insertelement <2 x i8> poison, i8 %4, i64 0 ; 2 uses
  %i.fj = insertelement <2 x i8> %i.fi, i8 %3, i64 1
  %i.fk = insertelement <2 x i8> poison, i8 %5, i64 0 ; 2 uses
  %i.fl = insertelement <2 x i8> %i.fk, i8 %3, i64 1
  %i.fm = sext i32 %i.fd to i64
  %i.fn = insertelement <4 x i32> poison, i32 %i.fh, i64 2
  %i.fo = insertelement <4 x i32> %i.fn, i32 %i.a, i64 3 ; 2 uses
  %i.fp = insertelement <2 x i8> %i.fi, i8 %5, i64 1 ; 2 uses
  %i.fq = shufflevector <2 x i8> %i.fp, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fr = zext <4 x i8> %i.fq to <4 x i32>
  %i.fs = shufflevector <4 x i32> %i.fo, <4 x i32> %i.fr, <4 x i32> <i32 5, i32 4, i32 2, i32 3>
  %i.ft = shufflevector <2 x i8> %i.fp, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fu = zext <4 x i8> %i.ft to <4 x i32>
  %i.fv = shufflevector <4 x i32> %i.fo, <4 x i32> %i.fu, <4 x i32> <i32 5, i32 4, i32 2, i32 3>
  %i.fw = shufflevector <2 x i8> %i.fl, <2 x i8> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.fx = insertelement <4 x i8> %i.fw, i8 %4, i64 1
  %i.fy = insertelement <4 x i8> %i.fx, i8 %6, i64 3
  %i.fz = zext <4 x i8> %i.fy to <4 x i32>
  %i.ga = shufflevector <2 x i8> %i.fk, <2 x i8> %i.fj, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.gb = insertelement <4 x i8> %i.ga, i8 %6, i64 3
  %i.gc = zext <4 x i8> %i.gb to <4 x i32>
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph745, %bb.n
  %.in758 = phi i32 [ %i.ei, %.lr.ph745 ], [ %i.gd, %bb.n ]
  %.0619744 = phi ptr [ %i.fa, %.lr.ph745 ], [ %i.jm, %bb.n ] ; 4 uses
  %i.gd = add nsw i32 %.in758, -1                 ; 2 uses
  switch i32 %i.fg, label %.unreachabledefault [
    i32 0, label %bb.j
    i32 3, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i, %bb.m
  %.0624 = phi i32 [ %i.ff, %bb.i ], [ %i.jk, %bb.m ]
  %.1620 = phi ptr [ %.0619744, %bb.i ], [ %i.jj, %bb.m ] ; 3 uses
  %i.ge = load i32, ptr %.1620, align 4           ; 4 uses
  %i.gf = lshr i32 %i.ge, 24
  %i.gg = lshr i32 %i.ge, 16
  %i.gh = lshr i32 %i.ge, 8
  %i.gi = and i32 %i.gg, 255
  %i.gj = and i32 %i.gh, 255
  %i.gk = and i32 %i.ge, 255
  %i.gl = mul nuw nsw i32 %i.gf, %i.b
  %i.gm = mul nuw nsw i32 %i.gi, %i.b
  %i.gn = mul nuw nsw i32 %i.gj, %i.b
  %i.go = mul nuw nsw i32 %i.gk, %i.b
  %i.gp = insertelement <4 x i32> poison, i32 %i.go, i64 0
  %i.gq = insertelement <4 x i32> %i.gp, i32 %i.gn, i64 1
  %i.gr = insertelement <4 x i32> %i.gq, i32 %i.gm, i64 2
  %i.gs = insertelement <4 x i32> %i.gr, i32 %i.gl, i64 3
  %i.gt = udiv <4 x i32> %i.gs, splat (i32 255)
  %i.gu = add nuw nsw <4 x i32> %i.gt, %i.fs
  %i.gv = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gu, <4 x i32> splat (i32 255))
  %i.gw = shl nuw <4 x i32> %i.gv, <i32 0, i32 8, i32 16, i32 24>
  %i.gx = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.gw)
  store i32 %i.gx, ptr %.1620, align 4
  %i.gy = getelementptr inbounds nuw i8, ptr %.1620, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.1625 = phi i32 [ %.0624, %bb.j ], [ %i.ff, %bb.i ]
  %.2621 = phi ptr [ %i.gy, %bb.j ], [ %.0619744, %bb.i ] ; 3 uses
  %i.gz = load i32, ptr %.2621, align 4           ; 4 uses
  %i.ha = lshr i32 %i.gz, 24
  %i.hb = lshr i32 %i.gz, 16
  %i.hc = lshr i32 %i.gz, 8
  %i.hd = and i32 %i.hb, 255
  %i.he = and i32 %i.hc, 255
  %i.hf = and i32 %i.gz, 255
  %i.hg = mul nuw nsw i32 %i.ha, %i.b
  %i.hh = mul nuw nsw i32 %i.hd, %i.b
  %i.hi = mul nuw nsw i32 %i.he, %i.b
  %i.hj = mul nuw nsw i32 %i.hf, %i.b
  %i.hk = insertelement <4 x i32> poison, i32 %i.hj, i64 0
  %i.hl = insertelement <4 x i32> %i.hk, i32 %i.hi, i64 1
  %i.hm = insertelement <4 x i32> %i.hl, i32 %i.hh, i64 2
  %i.hn = insertelement <4 x i32> %i.hm, i32 %i.hg, i64 3
  %i.ho = udiv <4 x i32> %i.hn, splat (i32 255)
  %i.hp = add nuw nsw <4 x i32> %i.ho, %i.fv
  %i.hq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.hp, <4 x i32> splat (i32 255))
  %i.hr = shl nuw <4 x i32> %i.hq, <i32 0, i32 8, i32 16, i32 24>
  %i.hs = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.hr)
  store i32 %i.hs, ptr %.2621, align 4
  %i.ht = getelementptr inbounds nuw i8, ptr %.2621, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.2626 = phi i32 [ %.1625, %bb.k ], [ %i.ff, %bb.i ]
  %.3622 = phi ptr [ %i.ht, %bb.k ], [ %.0619744, %bb.i ] ; 3 uses
  %i.hu = load i32, ptr %.3622, align 4           ; 4 uses
  %i.hv = lshr i32 %i.hu, 24
  %i.hw = lshr i32 %i.hu, 16
  %i.hx = lshr i32 %i.hu, 8
  %i.hy = and i32 %i.hw, 255
  %i.hz = and i32 %i.hx, 255
  %i.ia = and i32 %i.hu, 255
  %i.ib = mul nuw nsw i32 %i.hv, %i.b
  %i.ic = mul nuw nsw i32 %i.hy, %i.b
  %i.id = mul nuw nsw i32 %i.hz, %i.b
  %i.ie = mul nuw nsw i32 %i.ia, %i.b
  %i.if = insertelement <4 x i32> poison, i32 %i.ie, i64 0
  %i.ig = insertelement <4 x i32> %i.if, i32 %i.id, i64 1
  %i.ih = insertelement <4 x i32> %i.ig, i32 %i.ic, i64 2
  %i.ii = insertelement <4 x i32> %i.ih, i32 %i.ib, i64 3
  %i.ij = udiv <4 x i32> %i.ii, splat (i32 255)
  %i.ik = add nuw nsw <4 x i32> %i.ij, %i.fz
  %i.il = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ik, <4 x i32> splat (i32 255))
  %i.im = shl nuw <4 x i32> %i.il, <i32 0, i32 8, i32 16, i32 24>
  %i.in = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.im)
  store i32 %i.in, ptr %.3622, align 4
  %i.io = getelementptr inbounds nuw i8, ptr %.3622, i64 4
  br label %bb.m

.unreachabledefault:                              ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.l
  %.3627 = phi i32 [ %.2626, %bb.l ], [ %i.ff, %bb.i ] ; 2 uses
  %.4623 = phi ptr [ %i.io, %bb.l ], [ %.0619744, %bb.i ] ; 3 uses
  %i.ip = load i32, ptr %.4623, align 4           ; 4 uses
  %i.iq = lshr i32 %i.ip, 24
  %i.ir = lshr i32 %i.ip, 16
  %i.is = lshr i32 %i.ip, 8
  %i.it = and i32 %i.ir, 255
  %i.iu = and i32 %i.is, 255
  %i.iv = and i32 %i.ip, 255
  %i.iw = mul nuw nsw i32 %i.iq, %i.b
  %i.ix = mul nuw nsw i32 %i.it, %i.b
  %i.iy = mul nuw nsw i32 %i.iu, %i.b
  %i.iz = mul nuw nsw i32 %i.iv, %i.b
  %i.ja = insertelement <4 x i32> poison, i32 %i.iz, i64 0
  %i.jb = insertelement <4 x i32> %i.ja, i32 %i.iy, i64 1
  %i.jc = insertelement <4 x i32> %i.jb, i32 %i.ix, i64 2
  %i.jd = insertelement <4 x i32> %i.jc, i32 %i.iw, i64 3
  %i.je = udiv <4 x i32> %i.jd, splat (i32 255)
  %i.jf = add nuw nsw <4 x i32> %i.je, %i.gc
  %i.jg = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.jf, <4 x i32> splat (i32 255))
  %i.jh = shl nuw <4 x i32> %i.jg, <i32 0, i32 8, i32 16, i32 24>
  %i.ji = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.jh)
  store i32 %i.ji, ptr %.4623, align 4
  %i.jj = getelementptr inbounds nuw i8, ptr %.4623, i64 4 ; 2 uses
  %i.jk = add nsw i32 %.3627, -1
  %i.jl = icmp sgt i32 %.3627, 1
  br i1 %i.jl, label %bb.j, label %bb.n, !llvm.loop !42

bb.n:                                             ; preds = %bb.m
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.jj, i64 %i.fm
  %.not676 = icmp eq i32 %i.gd, 0
  br i1 %.not676, label %.loopexit, label %bb.i, !llvm.loop !43

bb.o:                                             ; preds = %.split, %.split
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.jo = load i32, ptr %i.jn, align 4            ; 2 uses
  %.not675740 = icmp eq i32 %i.jo, 0
  br i1 %.not675740, label %.loopexit, label %.lr.ph742

.lr.ph742:                                        ; preds = %bb.o
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.js = load i32, ptr %i.jr, align 4
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ju = load i32, ptr %i.jt, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 5
  %i.jy = load i8, ptr %i.jx, align 1
  %i.jz = zext i8 %i.jy to i32
  %i.ka = sdiv i32 %i.ju, %i.jz                   ; 2 uses
  %i.kb = mul nsw i32 %i.js, %i.ka
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.jq, i64 %i.kc
  %i.ke = load i32, ptr %1, align 4
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ki = load i32, ptr %i.kh, align 4            ; 3 uses
  %i.kj = sub nsw i32 %i.ka, %i.ki
  %i.kk = add nsw i32 %i.ki, 3
  %i.kl = sdiv i32 %i.kk, 4                       ; 4 uses
  %i.km = and i32 %i.ki, 3
  %i.kn = zext i8 %3 to i32                       ; 4 uses
  %i.ko = zext i8 %4 to i32                       ; 4 uses
  %i.kp = zext i8 %5 to i32                       ; 4 uses
  %i.kq = sext i32 %i.kj to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph742, %bb.u
  %.in757 = phi i32 [ %i.jo, %.lr.ph742 ], [ %i.kr, %bb.u ]
  %.0629741 = phi ptr [ %i.kg, %.lr.ph742 ], [ %i.ng, %bb.u ] ; 4 uses
  %i.kr = add nsw i32 %.in757, -1                 ; 2 uses
  switch i32 %i.km, label %.unreachabledefault788 [
    i32 0, label %bb.q
    i32 3, label %bb.r
    i32 2, label %bb.s
    i32 1, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p, %bb.t
  %.0634 = phi i32 [ %i.kl, %bb.p ], [ %i.ne, %bb.t ]
  %.1630 = phi ptr [ %.0629741, %bb.p ], [ %i.nd, %bb.t ] ; 3 uses
  %i.ks = load i32, ptr %.1630, align 4           ; 4 uses
  %i.kt = lshr i32 %i.ks, 16
  %i.ku = and i32 %i.kt, 255
  %i.kv = lshr i32 %i.ks, 8
  %i.kw = and i32 %i.kv, 255
  %i.kx = and i32 %i.ks, 255
  %i.ky = and i32 %i.ks, -16777216
  %i.kz = add nuw nsw i32 %i.ku, %i.kn
  %spec.store.select31 = tail call i32 @llvm.umin.i32(i32 %i.kz, i32 255)
  %i.la = add nuw nsw i32 %i.kw, %i.ko
  %spec.store.select10 = tail call i32 @llvm.umin.i32(i32 %i.la, i32 255)
  %i.lb = add nuw nsw i32 %i.kx, %i.kp
  %spec.store.select43 = tail call i32 @llvm.umin.i32(i32 %i.lb, i32 255)
  %i.lc = shl nuw nsw i32 %spec.store.select31, 16
  %i.ld = or disjoint i32 %i.lc, %i.ky
  %i.le = shl nuw nsw i32 %spec.store.select10, 8
  %i.lf = or disjoint i32 %i.ld, %i.le
  %i.lg = or disjoint i32 %i.lf, %spec.store.select43
  store i32 %i.lg, ptr %.1630, align 4
  %i.lh = getelementptr inbounds nuw i8, ptr %.1630, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.1635 = phi i32 [ %.0634, %bb.q ], [ %i.kl, %bb.p ]
  %.2631 = phi ptr [ %i.lh, %bb.q ], [ %.0629741, %bb.p ] ; 3 uses
  %i.li = load i32, ptr %.2631, align 4           ; 4 uses
  %i.lj = lshr i32 %i.li, 16
  %i.lk = and i32 %i.lj, 255
  %i.ll = lshr i32 %i.li, 8
  %i.lm = and i32 %i.ll, 255
  %i.ln = and i32 %i.li, 255
  %i.lo = and i32 %i.li, -16777216
  %i.lp = add nuw nsw i32 %i.lk, %i.kn
  %spec.store.select11 = tail call i32 @llvm.umin.i32(i32 %i.lp, i32 255)
  %i.lq = add nuw nsw i32 %i.lm, %i.ko
  %spec.store.select32 = tail call i32 @llvm.umin.i32(i32 %i.lq, i32 255)
  %i.lr = add nuw nsw i32 %i.ln, %i.kp
  %spec.store.select12 = tail call i32 @llvm.umin.i32(i32 %i.lr, i32 255)
  %i.ls = shl nuw nsw i32 %spec.store.select11, 16
  %i.lt = or disjoint i32 %i.ls, %i.lo
  %i.lu = shl nuw nsw i32 %spec.store.select32, 8
  %i.lv = or disjoint i32 %i.lt, %i.lu
  %i.lw = or disjoint i32 %i.lv, %spec.store.select12
  store i32 %i.lw, ptr %.2631, align 4
  %i.lx = getelementptr inbounds nuw i8, ptr %.2631, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  %.2636 = phi i32 [ %.1635, %bb.r ], [ %i.kl, %bb.p ]
  %.3632 = phi ptr [ %i.lx, %bb.r ], [ %.0629741, %bb.p ] ; 3 uses
  %i.ly = load i32, ptr %.3632, align 4           ; 4 uses
  %i.lz = lshr i32 %i.ly, 16
  %i.ma = and i32 %i.lz, 255
  %i.mb = lshr i32 %i.ly, 8
  %i.mc = and i32 %i.mb, 255
  %i.md = and i32 %i.ly, 255
  %i.me = and i32 %i.ly, -16777216
  %i.mf = add nuw nsw i32 %i.ma, %i.kn
  %spec.store.select13 = tail call i32 @llvm.umin.i32(i32 %i.mf, i32 255)
  %i.mg = add nuw nsw i32 %i.mc, %i.ko
  %spec.store.select33 = tail call i32 @llvm.umin.i32(i32 %i.mg, i32 255)
  %i.mh = add nuw nsw i32 %i.md, %i.kp
  %spec.store.select14 = tail call i32 @llvm.umin.i32(i32 %i.mh, i32 255)
  %i.mi = shl nuw nsw i32 %spec.store.select13, 16
  %i.mj = or disjoint i32 %i.mi, %i.me
  %i.mk = shl nuw nsw i32 %spec.store.select33, 8
  %i.ml = or disjoint i32 %i.mj, %i.mk
  %i.mm = or disjoint i32 %i.ml, %spec.store.select14
  store i32 %i.mm, ptr %.3632, align 4
  %i.mn = getelementptr inbounds nuw i8, ptr %.3632, i64 4
  br label %bb.t

.unreachabledefault788:                           ; preds = %bb.p
  unreachable

bb.t:                                             ; preds = %bb.p, %bb.s
  %.3637 = phi i32 [ %.2636, %bb.s ], [ %i.kl, %bb.p ] ; 2 uses
  %.4633 = phi ptr [ %i.mn, %bb.s ], [ %.0629741, %bb.p ] ; 3 uses
  %i.mo = load i32, ptr %.4633, align 4           ; 4 uses
  %i.mp = lshr i32 %i.mo, 16
  %i.mq = and i32 %i.mp, 255
  %i.mr = lshr i32 %i.mo, 8
  %i.ms = and i32 %i.mr, 255
  %i.mt = and i32 %i.mo, 255
  %i.mu = and i32 %i.mo, -16777216
  %i.mv = add nuw nsw i32 %i.mq, %i.kn
  %spec.store.select15 = tail call i32 @llvm.umin.i32(i32 %i.mv, i32 255)
  %i.mw = add nuw nsw i32 %i.ms, %i.ko
  %spec.store.select34 = tail call i32 @llvm.umin.i32(i32 %i.mw, i32 255)
  %i.mx = add nuw nsw i32 %i.mt, %i.kp
  %spec.store.select16 = tail call i32 @llvm.umin.i32(i32 %i.mx, i32 255)
  %i.my = shl nuw nsw i32 %spec.store.select15, 16
  %i.mz = or disjoint i32 %i.my, %i.mu
  %i.na = shl nuw nsw i32 %spec.store.select34, 8
  %i.nb = or disjoint i32 %i.mz, %i.na
  %i.nc = or disjoint i32 %i.nb, %spec.store.select16
  store i32 %i.nc, ptr %.4633, align 4
  %i.nd = getelementptr inbounds nuw i8, ptr %.4633, i64 4 ; 2 uses
  %i.ne = add nsw i32 %.3637, -1
  %i.nf = icmp sgt i32 %.3637, 1
  br i1 %i.nf, label %bb.q, label %bb.u, !llvm.loop !44

bb.u:                                             ; preds = %bb.t
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.nd, i64 %i.kq
  %.not675 = icmp eq i32 %i.kr, 0
  br i1 %.not675, label %.loopexit, label %bb.p, !llvm.loop !45

bb.v:                                             ; preds = %.split
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ni = load i32, ptr %i.nh, align 4            ; 2 uses
  %.not674737 = icmp eq i32 %i.ni, 0
  br i1 %.not674737, label %.loopexit, label %.lr.ph739

.lr.ph739:                                        ; preds = %bb.v
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.nk = load ptr, ptr %i.nj, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.nm = load i32, ptr %i.nl, align 4
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.no = load i32, ptr %i.nn, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.nq = load ptr, ptr %i.np, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 5
  %i.ns = load i8, ptr %i.nr, align 1
  %i.nt = zext i8 %i.ns to i32
  %i.nu = sdiv i32 %i.no, %i.nt                   ; 2 uses
  %i.nv = mul nsw i32 %i.nm, %i.nu
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %i.nw
  %i.ny = load i32, ptr %1, align 4
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.nx, i64 %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oc = load i32, ptr %i.ob, align 4            ; 3 uses
  %i.od = sub nsw i32 %i.nu, %i.oc
  %i.oe = add nsw i32 %i.oc, 3
  %i.of = sdiv i32 %i.oe, 4                       ; 4 uses
  %i.og = and i32 %i.oc, 3
  %i.oh = zext i8 %3 to i32                       ; 4 uses
  %i.oi = zext i8 %4 to i32                       ; 4 uses
  %i.oj = zext i8 %5 to i32                       ; 4 uses
  %i.ok = sext i32 %i.od to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph739, %bb.ab
  %.in756 = phi i32 [ %i.ni, %.lr.ph739 ], [ %i.ol, %bb.ab ]
  %.0639738 = phi ptr [ %i.oa, %.lr.ph739 ], [ %i.rm, %bb.ab ] ; 4 uses
  %i.ol = add nsw i32 %.in756, -1                 ; 2 uses
  switch i32 %i.og, label %.unreachabledefault789 [
    i32 0, label %bb.x
    i32 3, label %bb.y
    i32 2, label %bb.z
    i32 1, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w, %bb.aa
  %.0644 = phi i32 [ %i.of, %bb.w ], [ %i.rk, %bb.aa ]
  %.1640 = phi ptr [ %.0639738, %bb.w ], [ %i.rj, %bb.aa ] ; 3 uses
  %i.om = load i32, ptr %.1640, align 4           ; 4 uses
  %i.on = lshr i32 %i.om, 16
  %i.oo = and i32 %i.on, 255
  %i.op = lshr i32 %i.om, 8
  %i.oq = and i32 %i.op, 255
  %i.or = and i32 %i.om, 255
  %i.os = and i32 %i.om, -16777216
  %i.ot = mul nuw nsw i32 %i.oo, %i.oh
  %.lhs.trunc = trunc nuw i32 %i.ot to i16
  %i.ou = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.ou to i32
  %i.ov = mul nuw nsw i32 %i.oq, %i.oi
  %.lhs.trunc679 = trunc nuw i32 %i.ov to i16
  %i.ow = udiv i16 %.lhs.trunc679, 255
  %.zext680 = zext nneg i16 %i.ow to i32
  %i.ox = mul nuw nsw i32 %i.or, %i.oj
  %.lhs.trunc681 = trunc nuw i32 %i.ox to i16
  %i.oy = udiv i16 %.lhs.trunc681, 255
  %.zext682 = zext nneg i16 %i.oy to i32
  %i.oz = shl nuw nsw i32 %.zext, 16
  %i.pa = shl nuw nsw i32 %.zext680, 8
  %i.pb = or disjoint i32 %i.os, %.zext682
  %i.pc = or i32 %i.pb, %i.oz
  %i.pd = or i32 %i.pc, %i.pa
  store i32 %i.pd, ptr %.1640, align 4
  %i.pe = getelementptr inbounds nuw i8, ptr %.1640, i64 4
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.1645 = phi i32 [ %.0644, %bb.x ], [ %i.of, %bb.w ]
  %.2641 = phi ptr [ %i.pe, %bb.x ], [ %.0639738, %bb.w ] ; 3 uses
  %i.pf = load i32, ptr %.2641, align 4           ; 4 uses
  %i.pg = lshr i32 %i.pf, 16
  %i.ph = and i32 %i.pg, 255
  %i.pi = lshr i32 %i.pf, 8
  %i.pj = and i32 %i.pi, 255
  %i.pk = and i32 %i.pf, 255
  %i.pl = and i32 %i.pf, -16777216
  %i.pm = mul nuw nsw i32 %i.ph, %i.oh
  %.lhs.trunc683 = trunc nuw i32 %i.pm to i16
  %i.pn = udiv i16 %.lhs.trunc683, 255
  %.zext684 = zext nneg i16 %i.pn to i32
  %i.po = mul nuw nsw i32 %i.pj, %i.oi
  %.lhs.trunc685 = trunc nuw i32 %i.po to i16
  %i.pp = udiv i16 %.lhs.trunc685, 255
  %.zext686 = zext nneg i16 %i.pp to i32
  %i.pq = mul nuw nsw i32 %i.pk, %i.oj
  %.lhs.trunc687 = trunc nuw i32 %i.pq to i16
  %i.pr = udiv i16 %.lhs.trunc687, 255
  %.zext688 = zext nneg i16 %i.pr to i32
  %i.ps = shl nuw nsw i32 %.zext684, 16
  %i.pt = shl nuw nsw i32 %.zext686, 8
  %i.pu = or disjoint i32 %i.pl, %.zext688
  %i.pv = or i32 %i.pu, %i.ps
  %i.pw = or i32 %i.pv, %i.pt
  store i32 %i.pw, ptr %.2641, align 4
  %i.px = getelementptr inbounds nuw i8, ptr %.2641, i64 4
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y
  %.2646 = phi i32 [ %.1645, %bb.y ], [ %i.of, %bb.w ]
  %.3642 = phi ptr [ %i.px, %bb.y ], [ %.0639738, %bb.w ] ; 3 uses
  %i.py = load i32, ptr %.3642, align 4           ; 4 uses
  %i.pz = lshr i32 %i.py, 16
  %i.qa = and i32 %i.pz, 255
  %i.qb = lshr i32 %i.py, 8
  %i.qc = and i32 %i.qb, 255
  %i.qd = and i32 %i.py, 255
  %i.qe = and i32 %i.py, -16777216
  %i.qf = mul nuw nsw i32 %i.qa, %i.oh
  %.lhs.trunc689 = trunc nuw i32 %i.qf to i16
  %i.qg = udiv i16 %.lhs.trunc689, 255
  %.zext690 = zext nneg i16 %i.qg to i32
  %i.qh = mul nuw nsw i32 %i.qc, %i.oi
  %.lhs.trunc691 = trunc nuw i32 %i.qh to i16
  %i.qi = udiv i16 %.lhs.trunc691, 255
  %.zext692 = zext nneg i16 %i.qi to i32
  %i.qj = mul nuw nsw i32 %i.qd, %i.oj
  %.lhs.trunc693 = trunc nuw i32 %i.qj to i16
  %i.qk = udiv i16 %.lhs.trunc693, 255
  %.zext694 = zext nneg i16 %i.qk to i32
  %i.ql = shl nuw nsw i32 %.zext690, 16
  %i.qm = shl nuw nsw i32 %.zext692, 8
  %i.qn = or disjoint i32 %i.qe, %.zext694
  %i.qo = or i32 %i.qn, %i.ql
  %i.qp = or i32 %i.qo, %i.qm
  store i32 %i.qp, ptr %.3642, align 4
  %i.qq = getelementptr inbounds nuw i8, ptr %.3642, i64 4
  br label %bb.aa

.unreachabledefault789:                           ; preds = %bb.w
  unreachable

bb.aa:                                            ; preds = %bb.w, %bb.z
  %.3647 = phi i32 [ %.2646, %bb.z ], [ %i.of, %bb.w ] ; 2 uses
  %.4643 = phi ptr [ %i.qq, %bb.z ], [ %.0639738, %bb.w ] ; 3 uses
  %i.qr = load i32, ptr %.4643, align 4           ; 4 uses
  %i.qs = lshr i32 %i.qr, 16
  %i.qt = and i32 %i.qs, 255
  %i.qu = lshr i32 %i.qr, 8
  %i.qv = and i32 %i.qu, 255
  %i.qw = and i32 %i.qr, 255
  %i.qx = and i32 %i.qr, -16777216
  %i.qy = mul nuw nsw i32 %i.qt, %i.oh
  %.lhs.trunc695 = trunc nuw i32 %i.qy to i16
  %i.qz = udiv i16 %.lhs.trunc695, 255
  %.zext696 = zext nneg i16 %i.qz to i32
  %i.ra = mul nuw nsw i32 %i.qv, %i.oi
  %.lhs.trunc697 = trunc nuw i32 %i.ra to i16
  %i.rb = udiv i16 %.lhs.trunc697, 255
  %.zext698 = zext nneg i16 %i.rb to i32
  %i.rc = mul nuw nsw i32 %i.qw, %i.oj
  %.lhs.trunc699 = trunc nuw i32 %i.rc to i16
  %i.rd = udiv i16 %.lhs.trunc699, 255
  %.zext700 = zext nneg i16 %i.rd to i32
  %i.re = shl nuw nsw i32 %.zext696, 16
  %i.rf = shl nuw nsw i32 %.zext698, 8
  %i.rg = or disjoint i32 %i.qx, %.zext700
  %i.rh = or i32 %i.rg, %i.re
  %i.ri = or i32 %i.rh, %i.rf
  store i32 %i.ri, ptr %.4643, align 4
  %i.rj = getelementptr inbounds nuw i8, ptr %.4643, i64 4 ; 2 uses
  %i.rk = add nsw i32 %.3647, -1
  %i.rl = icmp sgt i32 %.3647, 1
  br i1 %i.rl, label %bb.x, label %bb.ab, !llvm.loop !46

bb.ab:                                            ; preds = %bb.aa
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rj, i64 %i.ok
  %.not674 = icmp eq i32 %i.ol, 0
  br i1 %.not674, label %.loopexit, label %bb.w, !llvm.loop !47

bb.ac:                                            ; preds = %.split
  %i.rn = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ro = load i32, ptr %i.rn, align 4            ; 2 uses
  %.not735 = icmp eq i32 %i.ro, 0
  br i1 %.not735, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rq = load ptr, ptr %i.rp, align 8
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.rs = load i32, ptr %i.rr, align 4
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ru = load i32, ptr %i.rt, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.rw = load ptr, ptr %i.rv, align 8
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 5
  %i.ry = load i8, ptr %i.rx, align 1
  %i.rz = zext i8 %i.ry to i32
  %i.sa = sdiv i32 %i.ru, %i.rz                   ; 2 uses
  %i.sb = mul nsw i32 %i.rs, %i.sa
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %i.sc
  %i.se = load i32, ptr %1, align 4
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sd, i64 %i.sf
  %i.sh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.si = load i32, ptr %i.sh, align 4            ; 3 uses
  %i.sj = sub nsw i32 %i.sa, %i.si
  %i.sk = add nsw i32 %i.si, 3
  %i.sl = sdiv i32 %i.sk, 4                       ; 4 uses
  %i.sm = and i32 %i.si, 3
  %i.sn = zext i8 %3 to i32                       ; 4 uses
  %i.so = zext i8 %4 to i32                       ; 4 uses
  %i.sp = zext i8 %5 to i32                       ; 4 uses
  %i.sq = sext i32 %i.sj to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %bb.ai
  %.in = phi i32 [ %i.ro, %.lr.ph ], [ %i.sr, %bb.ai ]
  %.0649736 = phi ptr [ %i.sg, %.lr.ph ], [ %i.xc, %bb.ai ] ; 4 uses
  %i.sr = add nsw i32 %.in, -1                    ; 2 uses
  switch i32 %i.sm, label %.unreachabledefault790 [
    i32 0, label %bb.ae
    i32 3, label %bb.af
    i32 2, label %bb.ag
    i32 1, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ah
  %.0654 = phi i32 [ %i.sl, %bb.ad ], [ %i.xa, %bb.ah ]
  %.1650 = phi ptr [ %.0649736, %bb.ad ], [ %i.wz, %bb.ah ] ; 3 uses
  %i.ss = load i32, ptr %.1650, align 4           ; 4 uses
  %i.st = lshr i32 %i.ss, 16
  %i.su = and i32 %i.st, 255                      ; 2 uses
  %i.sv = lshr i32 %i.ss, 8
  %i.sw = and i32 %i.sv, 255                      ; 2 uses
  %i.sx = and i32 %i.ss, 255                      ; 2 uses
  %i.sy = and i32 %i.ss, -16777216
  %i.sz = mul nuw nsw i32 %i.su, %i.sn
  %.lhs.trunc701 = trunc nuw i32 %i.sz to i16
  %i.ta = udiv i16 %.lhs.trunc701, 255
  %.zext702 = zext nneg i16 %i.ta to i32
  %i.tb = mul nuw nsw i32 %i.su, %i.b
  %i.tc = udiv i32 %i.tb, 255
  %i.td = add nuw nsw i32 %i.tc, %.zext702
  %spec.store.select35 = tail call i32 @llvm.umin.i32(i32 %i.td, i32 255)
  %i.te = mul nuw nsw i32 %i.sw, %i.so
  %.lhs.trunc703 = trunc nuw i32 %i.te to i16
  %i.tf = udiv i16 %.lhs.trunc703, 255
  %.zext704 = zext nneg i16 %i.tf to i32
  %i.tg = mul nuw nsw i32 %i.sw, %i.b
  %i.th = udiv i32 %i.tg, 255
  %i.ti = add nuw nsw i32 %i.th, %.zext704
  %spec.store.select19 = tail call i32 @llvm.umin.i32(i32 %i.ti, i32 255)
  %i.tj = mul nuw nsw i32 %i.sx, %i.sp
  %.lhs.trunc705 = trunc nuw i32 %i.tj to i16
  %i.tk = udiv i16 %.lhs.trunc705, 255
  %.zext706 = zext nneg i16 %i.tk to i32
  %i.tl = mul nuw nsw i32 %i.sx, %i.b
  %i.tm = udiv i32 %i.tl, 255
  %i.tn = add nuw nsw i32 %i.tm, %.zext706
  %spec.store.select44 = tail call i32 @llvm.umin.i32(i32 %i.tn, i32 255)
  %i.to = shl nuw nsw i32 %spec.store.select35, 16
  %i.tp = or disjoint i32 %i.to, %i.sy
  %i.tq = shl nuw nsw i32 %spec.store.select19, 8
  %i.tr = or disjoint i32 %i.tp, %i.tq
  %i.ts = or disjoint i32 %i.tr, %spec.store.select44
  store i32 %i.ts, ptr %.1650, align 4
  %i.tt = getelementptr inbounds nuw i8, ptr %.1650, i64 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.1655 = phi i32 [ %.0654, %bb.ae ], [ %i.sl, %bb.ad ]
  %.2651 = phi ptr [ %i.tt, %bb.ae ], [ %.0649736, %bb.ad ] ; 3 uses
  %i.tu = load i32, ptr %.2651, align 4           ; 4 uses
  %i.tv = lshr i32 %i.tu, 16
  %i.tw = and i32 %i.tv, 255                      ; 2 uses
  %i.tx = lshr i32 %i.tu, 8
  %i.ty = and i32 %i.tx, 255                      ; 2 uses
  %i.tz = and i32 %i.tu, 255                      ; 2 uses
  %i.ua = and i32 %i.tu, -16777216
  %i.ub = mul nuw nsw i32 %i.tw, %i.sn
  %.lhs.trunc707 = trunc nuw i32 %i.ub to i16
  %i.uc = udiv i16 %.lhs.trunc707, 255
  %.zext708 = zext nneg i16 %i.uc to i32
  %i.ud = mul nuw nsw i32 %i.tw, %i.b
  %i.ue = udiv i32 %i.ud, 255
  %i.uf = add nuw nsw i32 %i.ue, %.zext708
  %spec.store.select20 = tail call i32 @llvm.umin.i32(i32 %i.uf, i32 255)
  %i.ug = mul nuw nsw i32 %i.ty, %i.so
  %.lhs.trunc709 = trunc nuw i32 %i.ug to i16
  %i.uh = udiv i16 %.lhs.trunc709, 255
  %.zext710 = zext nneg i16 %i.uh to i32
  %i.ui = mul nuw nsw i32 %i.ty, %i.b
  %i.uj = udiv i32 %i.ui, 255
  %i.uk = add nuw nsw i32 %i.uj, %.zext710
  %spec.store.select36 = tail call i32 @llvm.umin.i32(i32 %i.uk, i32 255)
  %i.ul = mul nuw nsw i32 %i.tz, %i.sp
  %.lhs.trunc711 = trunc nuw i32 %i.ul to i16
  %i.um = udiv i16 %.lhs.trunc711, 255
  %.zext712 = zext nneg i16 %i.um to i32
  %i.un = mul nuw nsw i32 %i.tz, %i.b
  %i.uo = udiv i32 %i.un, 255
  %i.up = add nuw nsw i32 %i.uo, %.zext712
  %spec.store.select21 = tail call i32 @llvm.umin.i32(i32 %i.up, i32 255)
  %i.uq = shl nuw nsw i32 %spec.store.select20, 16
  %i.ur = or disjoint i32 %i.uq, %i.ua
  %i.us = shl nuw nsw i32 %spec.store.select36, 8
  %i.ut = or disjoint i32 %i.ur, %i.us
  %i.uu = or disjoint i32 %i.ut, %spec.store.select21
  store i32 %i.uu, ptr %.2651, align 4
  %i.uv = getelementptr inbounds nuw i8, ptr %.2651, i64 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.af
  %.2656 = phi i32 [ %.1655, %bb.af ], [ %i.sl, %bb.ad ]
  %.3652 = phi ptr [ %i.uv, %bb.af ], [ %.0649736, %bb.ad ] ; 3 uses
  %i.uw = load i32, ptr %.3652, align 4           ; 4 uses
  %i.ux = lshr i32 %i.uw, 16
  %i.uy = and i32 %i.ux, 255                      ; 2 uses
  %i.uz = lshr i32 %i.uw, 8
  %i.va = and i32 %i.uz, 255                      ; 2 uses
  %i.vb = and i32 %i.uw, 255                      ; 2 uses
  %i.vc = and i32 %i.uw, -16777216
  %i.vd = mul nuw nsw i32 %i.uy, %i.sn
  %.lhs.trunc713 = trunc nuw i32 %i.vd to i16
  %i.ve = udiv i16 %.lhs.trunc713, 255
  %.zext714 = zext nneg i16 %i.ve to i32
  %i.vf = mul nuw nsw i32 %i.uy, %i.b
  %i.vg = udiv i32 %i.vf, 255
  %i.vh = add nuw nsw i32 %i.vg, %.zext714
  %spec.store.select22 = tail call i32 @llvm.umin.i32(i32 %i.vh, i32 255)
  %i.vi = mul nuw nsw i32 %i.va, %i.so
  %.lhs.trunc715 = trunc nuw i32 %i.vi to i16
  %i.vj = udiv i16 %.lhs.trunc715, 255
  %.zext716 = zext nneg i16 %i.vj to i32
  %i.vk = mul nuw nsw i32 %i.va, %i.b
  %i.vl = udiv i32 %i.vk, 255
  %i.vm = add nuw nsw i32 %i.vl, %.zext716
  %spec.store.select37 = tail call i32 @llvm.umin.i32(i32 %i.vm, i32 255)
  %i.vn = mul nuw nsw i32 %i.vb, %i.sp
  %.lhs.trunc717 = trunc nuw i32 %i.vn to i16
  %i.vo = udiv i16 %.lhs.trunc717, 255
  %.zext718 = zext nneg i16 %i.vo to i32
  %i.vp = mul nuw nsw i32 %i.vb, %i.b
  %i.vq = udiv i32 %i.vp, 255
  %i.vr = add nuw nsw i32 %i.vq, %.zext718
  %spec.store.select23 = tail call i32 @llvm.umin.i32(i32 %i.vr, i32 255)
  %i.vs = shl nuw nsw i32 %spec.store.select22, 16
  %i.vt = or disjoint i32 %i.vs, %i.vc
  %i.vu = shl nuw nsw i32 %spec.store.select37, 8
  %i.vv = or disjoint i32 %i.vt, %i.vu
  %i.vw = or disjoint i32 %i.vv, %spec.store.select23
  store i32 %i.vw, ptr %.3652, align 4
  %i.vx = getelementptr inbounds nuw i8, ptr %.3652, i64 4
  br label %bb.ah

.unreachabledefault790:                           ; preds = %bb.ad
  unreachable

bb.ah:                                            ; preds = %bb.ad, %bb.ag
  %.3657 = phi i32 [ %.2656, %bb.ag ], [ %i.sl, %bb.ad ] ; 2 uses
  %.4653 = phi ptr [ %i.vx, %bb.ag ], [ %.0649736, %bb.ad ] ; 3 uses
  %i.vy = load i32, ptr %.4653, align 4           ; 4 uses
  %i.vz = lshr i32 %i.vy, 16
  %i.wa = and i32 %i.vz, 255                      ; 2 uses
  %i.wb = lshr i32 %i.vy, 8
  %i.wc = and i32 %i.wb, 255                      ; 2 uses
  %i.wd = and i32 %i.vy, 255                      ; 2 uses
  %i.we = and i32 %i.vy, -16777216
  %i.wf = mul nuw nsw i32 %i.wa, %i.sn
  %.lhs.trunc719 = trunc nuw i32 %i.wf to i16
  %i.wg = udiv i16 %.lhs.trunc719, 255
  %.zext720 = zext nneg i16 %i.wg to i32
  %i.wh = mul nuw nsw i32 %i.wa, %i.b
  %i.wi = udiv i32 %i.wh, 255
  %i.wj = add nuw nsw i32 %i.wi, %.zext720
  %spec.store.select24 = tail call i32 @llvm.umin.i32(i32 %i.wj, i32 255)
  %i.wk = mul nuw nsw i32 %i.wc, %i.so
  %.lhs.trunc721 = trunc nuw i32 %i.wk to i16
  %i.wl = udiv i16 %.lhs.trunc721, 255
  %.zext722 = zext nneg i16 %i.wl to i32
  %i.wm = mul nuw nsw i32 %i.wc, %i.b
  %i.wn = udiv i32 %i.wm, 255
  %i.wo = add nuw nsw i32 %i.wn, %.zext722
  %spec.store.select38 = tail call i32 @llvm.umin.i32(i32 %i.wo, i32 255)
  %i.wp = mul nuw nsw i32 %i.wd, %i.sp
  %.lhs.trunc723 = trunc nuw i32 %i.wp to i16
  %i.wq = udiv i16 %.lhs.trunc723, 255
  %.zext724 = zext nneg i16 %i.wq to i32
  %i.wr = mul nuw nsw i32 %i.wd, %i.b
  %i.ws = udiv i32 %i.wr, 255
  %i.wt = add nuw nsw i32 %i.ws, %.zext724
  %spec.store.select25 = tail call i32 @llvm.umin.i32(i32 %i.wt, i32 255)
  %i.wu = shl nuw nsw i32 %spec.store.select24, 16
  %i.wv = or disjoint i32 %i.wu, %i.we
  %i.ww = shl nuw nsw i32 %spec.store.select38, 8
  %i.wx = or disjoint i32 %i.wv, %i.ww
  %i.wy = or disjoint i32 %i.wx, %spec.store.select25
  store i32 %i.wy, ptr %.4653, align 4
  %i.wz = getelementptr inbounds nuw i8, ptr %.4653, i64 4 ; 2 uses
  %i.xa = add nsw i32 %.3657, -1
  %i.xb = icmp sgt i32 %.3657, 1
  br i1 %i.xb, label %bb.ae, label %bb.ai, !llvm.loop !48

bb.ai:                                            ; preds = %bb.ah
  %i.xc = getelementptr inbounds [4 x i8], ptr %i.wz, i64 %i.sq
  %.not = icmp eq i32 %i.sr, 0
  br i1 %.not, label %.loopexit, label %bb.ad, !llvm.loop !49

bb.aj:                                            ; preds = %.split, %bb.a
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.xe = load i32, ptr %i.xd, align 4            ; 2 uses
  %.not678749 = icmp eq i32 %i.xe, 0
  br i1 %.not678749, label %.loopexit, label %.lr.ph751

.lr.ph751:                                        ; preds = %bb.aj
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.xg = load ptr, ptr %i.xf, align 8
  %i.xh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.xi = load i32, ptr %i.xh, align 4
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.xk = load i32, ptr %i.xj, align 8
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.xm = load ptr, ptr %i.xl, align 8
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 5
  %i.xo = load i8, ptr %i.xn, align 1
  %i.xp = zext i8 %i.xo to i32
  %i.xq = sdiv i32 %i.xk, %i.xp                   ; 2 uses
  %i.xr = mul nsw i32 %i.xi, %i.xq
  %i.xs = sext i32 %i.xr to i64
  %i.xt = getelementptr inbounds [4 x i8], ptr %i.xg, i64 %i.xs
  %i.xu = load i32, ptr %1, align 4
  %i.xv = sext i32 %i.xu to i64
  %i.xw = getelementptr inbounds [4 x i8], ptr %i.xt, i64 %i.xv
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xy = load i32, ptr %i.xx, align 4            ; 3 uses
  %i.xz = sub nsw i32 %i.xq, %i.xy
  %i.ya = add nsw i32 %i.xy, 3
  %i.yb = sdiv i32 %i.ya, 4                       ; 4 uses
  %i.yc = and i32 %i.xy, 3
  %i.yd = zext i8 %3 to i32
  %i.ye = zext i8 %4 to i32
  %i.yf = zext i8 %5 to i32
  %i.yg = shl nuw i32 %i.a, 24
  %i.yh = shl nuw nsw i32 %i.yd, 16
  %i.yi = or disjoint i32 %i.yg, %i.yh
  %i.yj = shl nuw nsw i32 %i.ye, 8
  %i.yk = or disjoint i32 %i.yi, %i.yj
  %i.yl = or disjoint i32 %i.yk, %i.yf            ; 4 uses
  %i.ym = sext i32 %i.xz to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph751, %bb.ap
  %.in760 = phi i32 [ %i.xe, %.lr.ph751 ], [ %i.yn, %bb.ap ]
  %.0663750 = phi ptr [ %i.xw, %.lr.ph751 ], [ %i.yu, %bb.ap ] ; 4 uses
  %i.yn = add nsw i32 %.in760, -1                 ; 2 uses
  switch i32 %i.yc, label %.unreachabledefault791 [
    i32 0, label %bb.al
    i32 3, label %bb.am
    i32 2, label %bb.an
    i32 1, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ao
  %.1664 = phi ptr [ %.0663750, %bb.ak ], [ %i.yr, %bb.ao ] ; 2 uses
  %.0659 = phi i32 [ %i.yb, %bb.ak ], [ %i.ys, %bb.ao ]
  store i32 %i.yl, ptr %.1664, align 4
  %i.yo = getelementptr inbounds nuw i8, ptr %.1664, i64 4
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.2665 = phi ptr [ %i.yo, %bb.al ], [ %.0663750, %bb.ak ] ; 2 uses
  %.1660 = phi i32 [ %.0659, %bb.al ], [ %i.yb, %bb.ak ]
  store i32 %i.yl, ptr %.2665, align 4
  %i.yp = getelementptr inbounds nuw i8, ptr %.2665, i64 4
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.am
  %.3666 = phi ptr [ %i.yp, %bb.am ], [ %.0663750, %bb.ak ] ; 2 uses
  %.2661 = phi i32 [ %.1660, %bb.am ], [ %i.yb, %bb.ak ]
  store i32 %i.yl, ptr %.3666, align 4
  %i.yq = getelementptr inbounds nuw i8, ptr %.3666, i64 4
  br label %bb.ao

.unreachabledefault791:                           ; preds = %bb.ak
  unreachable

bb.ao:                                            ; preds = %bb.ak, %bb.an
  %.4667 = phi ptr [ %i.yq, %bb.an ], [ %.0663750, %bb.ak ] ; 2 uses
  %.3662 = phi i32 [ %.2661, %bb.an ], [ %i.yb, %bb.ak ] ; 2 uses
  store i32 %i.yl, ptr %.4667, align 4
  %i.yr = getelementptr inbounds nuw i8, ptr %.4667, i64 4 ; 2 uses
  %i.ys = add nsw i32 %.3662, -1
  %i.yt = icmp sgt i32 %.3662, 1
  br i1 %i.yt, label %bb.al, label %bb.ap, !llvm.loop !50

bb.ap:                                            ; preds = %bb.ao
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.yr, i64 %i.ym
  %.not678 = icmp eq i32 %i.yn, 0
  br i1 %.not678, label %.loopexit, label %bb.ak, !llvm.loop !51

.loopexit:                                        ; preds = %bb.ai, %bb.ab, %bb.u, %bb.n, %bb.g, %bb.ap, %bb.ac, %bb.v, %bb.o, %bb.h, %bb.b, %bb.aj
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @SDL_BlendFillRect_RGB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 115 uses
  %i.c = xor i8 %6, -1
  %i.d = zext i8 %i.c to i32                      ; 72 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.f = load i8, ptr %i.e, align 1
  switch i8 %i.f, label %bb.ci [
    i8 2, label %bb.b
    i8 4, label %bb.ar
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %.split, label %bb.ak

.split:                                           ; preds = %bb.b
  %i.i = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  switch i32 %i.i, label %bb.ak [
    i32 0, label %bb.c
    i32 4, label %bb.i
    i32 1, label %bb.p
    i32 5, label %bb.p
    i32 2, label %bb.w
    i32 3, label %bb.ad
  ]

bb.c:                                             ; preds = %.split
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %.not19792126 = icmp eq i32 %i.k, 0
  br i1 %.not19792126, label %.loopexit, label %.lr.ph2128

.lr.ph2128:                                       ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8
  %i.r = sdiv i32 %i.q, 2                         ; 2 uses
  %i.s = mul nsw i32 %i.o, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.t
  %i.v = load i32, ptr %1, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i32, ptr %i.y, align 4              ; 3 uses
  %i.aa = sub nsw i32 %i.r, %i.z
  %i.ab = add nsw i32 %i.z, 3
  %i.ac = sdiv i32 %i.ab, 4                       ; 4 uses
  %i.ad = and i32 %i.z, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.an = zext i8 %3 to i32                       ; 4 uses
  %i.ao = zext i8 %4 to i32                       ; 4 uses
  %i.ap = zext i8 %5 to i32                       ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.ar = sext i32 %i.aa to i64
  br label %.lr.ph2128.split

.lr.ph2128.split:                                 ; preds = %.lr.ph2128, %bb.h
  %.in2151 = phi i32 [ %i.as, %bb.h ], [ %i.k, %.lr.ph2128 ]
  %.018412127 = phi ptr [ %i.lh, %bb.h ], [ %i.x, %.lr.ph2128 ] ; 4 uses
  %i.as = add nsw i32 %.in2151, -1                ; 2 uses
  switch i32 %i.ad, label %default.unreachable [
    i32 0, label %bb.d
    i32 3, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.d:                                             ; preds = %.lr.ph2128.split, %bb.g
  %.01842 = phi i32 [ %i.ac, %.lr.ph2128.split ], [ %i.lf, %bb.g ]
  %.1 = phi ptr [ %.018412127, %.lr.ph2128.split ], [ %i.le, %bb.g ] ; 3 uses
  %i.at = load i8, ptr %i.ae, align 4             ; 2 uses
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = load i16, ptr %.1, align 2
  %i.ay = zext i16 %i.ax to i32                   ; 3 uses
  %i.az = load i32, ptr %i.af, align 4
  %i.ba = and i32 %i.az, %i.ay
  %i.bb = load i8, ptr %i.ag, align 4
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = lshr i32 %i.ba, %i.bc
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i32
  %i.bi = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = load i32, ptr %i.ai, align 4
  %i.bn = and i32 %i.bm, %i.ay
  %i.bo = load i8, ptr %i.aj, align 1
  %i.bp = zext i8 %i.bo to i32                    ; 2 uses
  %i.bq = lshr i32 %i.bn, %i.bp
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i32
  %i.bv = load i8, ptr %i.ak, align 2             ; 2 uses
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = load i32, ptr %i.al, align 4
  %i.ca = and i32 %i.bz, %i.ay
  %i.cb = load i8, ptr %i.am, align 2
  %i.cc = zext i8 %i.cb to i32                    ; 2 uses
  %i.cd = lshr i32 %i.ca, %i.cc
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i32
  %i.ci = mul nuw nsw i32 %i.bh, %i.d
  %i.cj = udiv i32 %i.ci, 255
  %i.ck = add nuw nsw i32 %i.cj, %i.an
  %i.cl = mul nuw nsw i32 %i.bu, %i.d
  %i.cm = udiv i32 %i.cl, 255
  %i.cn = add nuw nsw i32 %i.cm, %i.ao
  %i.co = mul nuw nsw i32 %i.ch, %i.d
  %i.cp = udiv i32 %i.co, 255
  %i.cq = add nuw nsw i32 %i.cp, %i.ap
  %i.cr = zext i8 %i.at to i32
  %i.cs = sub nsw i32 8, %i.cr
  %i.ct = lshr i32 %i.ck, %i.cs
  %i.cu = shl i32 %i.ct, %i.bc
  %i.cv = zext i8 %i.bi to i32
  %i.cw = sub nsw i32 8, %i.cv
  %i.cx = lshr i32 %i.cn, %i.cw
  %i.cy = shl i32 %i.cx, %i.bp
  %i.cz = or i32 %i.cy, %i.cu
  %i.da = zext i8 %i.bv to i32
  %i.db = sub nsw i32 8, %i.da
  %i.dc = lshr i32 %i.cq, %i.db
  %i.dd = shl i32 %i.dc, %i.cc
  %i.de = load i32, ptr %i.aq, align 4
  %i.df = or i32 %i.cz, %i.de
  %i.dg = or i32 %i.df, %i.dd
  %i.dh = trunc i32 %i.dg to i16
  store i16 %i.dh, ptr %.1, align 2
  %i.di = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph2128.split, %bb.d
  %.11843 = phi i32 [ %.01842, %bb.d ], [ %i.ac, %.lr.ph2128.split ]
  %.2 = phi ptr [ %i.di, %bb.d ], [ %.018412127, %.lr.ph2128.split ] ; 3 uses
  %i.dj = load i8, ptr %i.ae, align 4             ; 2 uses
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = load i16, ptr %.2, align 2
  %i.do = zext i16 %i.dn to i32                   ; 3 uses
  %i.dp = load i32, ptr %i.af, align 4
  %i.dq = and i32 %i.dp, %i.do
  %i.dr = load i8, ptr %i.ag, align 4
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %i.dt = lshr i32 %i.dq, %i.ds
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = zext i8 %i.dw to i32
  %i.dy = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = load i32, ptr %i.ai, align 4
  %i.ed = and i32 %i.ec, %i.do
  %i.ee = load i8, ptr %i.aj, align 1
  %i.ef = zext i8 %i.ee to i32                    ; 2 uses
  %i.eg = lshr i32 %i.ed, %i.ef
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = zext i8 %i.ej to i32
  %i.el = load i8, ptr %i.ak, align 2             ; 2 uses
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = load i32, ptr %i.al, align 4
  %i.eq = and i32 %i.ep, %i.do
  %i.er = load i8, ptr %i.am, align 2
  %i.es = zext i8 %i.er to i32                    ; 2 uses
  %i.et = lshr i32 %i.eq, %i.es
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = zext i8 %i.ew to i32
  %i.ey = mul nuw nsw i32 %i.dx, %i.d
  %i.ez = udiv i32 %i.ey, 255
  %i.fa = add nuw nsw i32 %i.ez, %i.an
  %i.fb = mul nuw nsw i32 %i.ek, %i.d
  %i.fc = udiv i32 %i.fb, 255
  %i.fd = add nuw nsw i32 %i.fc, %i.ao
  %i.fe = mul nuw nsw i32 %i.ex, %i.d
  %i.ff = udiv i32 %i.fe, 255
  %i.fg = add nuw nsw i32 %i.ff, %i.ap
  %i.fh = zext i8 %i.dj to i32
  %i.fi = sub nsw i32 8, %i.fh
  %i.fj = lshr i32 %i.fa, %i.fi
  %i.fk = shl i32 %i.fj, %i.ds
  %i.fl = zext i8 %i.dy to i32
  %i.fm = sub nsw i32 8, %i.fl
  %i.fn = lshr i32 %i.fd, %i.fm
  %i.fo = shl i32 %i.fn, %i.ef
  %i.fp = or i32 %i.fo, %i.fk
  %i.fq = zext i8 %i.el to i32
  %i.fr = sub nsw i32 8, %i.fq
  %i.fs = lshr i32 %i.fg, %i.fr
  %i.ft = shl i32 %i.fs, %i.es
  %i.fu = load i32, ptr %i.aq, align 4
  %i.fv = or i32 %i.fp, %i.fu
  %i.fw = or i32 %i.fv, %i.ft
  %i.fx = trunc i32 %i.fw to i16
  store i16 %i.fx, ptr %.2, align 2
  %i.fy = getelementptr inbounds nuw i8, ptr %.2, i64 2
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph2128.split, %bb.e
  %.21844 = phi i32 [ %.11843, %bb.e ], [ %i.ac, %.lr.ph2128.split ]
  %.3 = phi ptr [ %i.fy, %bb.e ], [ %.018412127, %.lr.ph2128.split ] ; 3 uses
  %i.fz = load i8, ptr %i.ae, align 4             ; 2 uses
  %i.ga = zext i8 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = load i16, ptr %.3, align 2
  %i.ge = zext i16 %i.gd to i32                   ; 3 uses
  %i.gf = load i32, ptr %i.af, align 4
  %i.gg = and i32 %i.gf, %i.ge
  %i.gh = load i8, ptr %i.ag, align 4
  %i.gi = zext i8 %i.gh to i32                    ; 2 uses
  %i.gj = lshr i32 %i.gg, %i.gi
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1
  %i.gn = zext i8 %i.gm to i32
  %i.go = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.gp = zext i8 %i.go to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.gp
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = load i32, ptr %i.ai, align 4
  %i.gt = and i32 %i.gs, %i.ge
  %i.gu = load i8, ptr %i.aj, align 1
  %i.gv = zext i8 %i.gu to i32                    ; 2 uses
  %i.gw = lshr i32 %i.gt, %i.gv
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = zext i8 %i.gz to i32
  %i.hb = load i8, ptr %i.ak, align 2             ; 2 uses
  %i.hc = zext i8 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.hc
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = load i32, ptr %i.al, align 4
  %i.hg = and i32 %i.hf, %i.ge
  %i.hh = load i8, ptr %i.am, align 2
  %i.hi = zext i8 %i.hh to i32                    ; 2 uses
  %i.hj = lshr i32 %i.hg, %i.hi
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1
  %i.hn = zext i8 %i.hm to i32
  %i.ho = mul nuw nsw i32 %i.gn, %i.d
  %i.hp = udiv i32 %i.ho, 255
  %i.hq = add nuw nsw i32 %i.hp, %i.an
  %i.hr = mul nuw nsw i32 %i.ha, %i.d
  %i.hs = udiv i32 %i.hr, 255
  %i.ht = add nuw nsw i32 %i.hs, %i.ao
  %i.hu = mul nuw nsw i32 %i.hn, %i.d
  %i.hv = udiv i32 %i.hu, 255
  %i.hw = add nuw nsw i32 %i.hv, %i.ap
  %i.hx = zext i8 %i.fz to i32
  %i.hy = sub nsw i32 8, %i.hx
  %i.hz = lshr i32 %i.hq, %i.hy
  %i.ia = shl i32 %i.hz, %i.gi
  %i.ib = zext i8 %i.go to i32
  %i.ic = sub nsw i32 8, %i.ib
  %i.id = lshr i32 %i.ht, %i.ic
  %i.ie = shl i32 %i.id, %i.gv
  %i.if = or i32 %i.ie, %i.ia
  %i.ig = zext i8 %i.hb to i32
  %i.ih = sub nsw i32 8, %i.ig
  %i.ii = lshr i32 %i.hw, %i.ih
  %i.ij = shl i32 %i.ii, %i.hi
  %i.ik = load i32, ptr %i.aq, align 4
  %i.il = or i32 %i.if, %i.ik
  %i.im = or i32 %i.il, %i.ij
  %i.in = trunc i32 %i.im to i16
  store i16 %i.in, ptr %.3, align 2
  %i.io = getelementptr inbounds nuw i8, ptr %.3, i64 2
  br label %bb.g

default.unreachable:                              ; preds = %.lr.ph2128.split
  unreachable

bb.g:                                             ; preds = %.lr.ph2128.split, %bb.f
  %.31845 = phi i32 [ %.21844, %bb.f ], [ %i.ac, %.lr.ph2128.split ] ; 2 uses
  %.4 = phi ptr [ %i.io, %bb.f ], [ %.018412127, %.lr.ph2128.split ] ; 3 uses
  %i.ip = load i8, ptr %i.ae, align 4             ; 2 uses
  %i.iq = zext i8 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.iq
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = load i16, ptr %.4, align 2
  %i.iu = zext i16 %i.it to i32                   ; 3 uses
  %i.iv = load i32, ptr %i.af, align 4
  %i.iw = and i32 %i.iv, %i.iu
  %i.ix = load i8, ptr %i.ag, align 4
  %i.iy = zext i8 %i.ix to i32                    ; 2 uses
  %i.iz = lshr i32 %i.iw, %i.iy
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1
  %i.jd = zext i8 %i.jc to i32
  %i.je = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.jf = zext i8 %i.je to i64
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.jf
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = load i32, ptr %i.ai, align 4
  %i.jj = and i32 %i.ji, %i.iu
  %i.jk = load i8, ptr %i.aj, align 1
  %i.jl = zext i8 %i.jk to i32                    ; 2 uses
  %i.jm = lshr i32 %i.jj, %i.jl
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1
  %i.jq = zext i8 %i.jp to i32
  %i.jr = load i8, ptr %i.ak, align 2             ; 2 uses
  %i.js = zext i8 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.js
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = load i32, ptr %i.al, align 4
  %i.jw = and i32 %i.jv, %i.iu
  %i.jx = load i8, ptr %i.am, align 2
  %i.jy = zext i8 %i.jx to i32                    ; 2 uses
  %i.jz = lshr i32 %i.jw, %i.jy
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1
  %i.kd = zext i8 %i.kc to i32
  %i.ke = mul nuw nsw i32 %i.jd, %i.d
  %i.kf = udiv i32 %i.ke, 255
  %i.kg = add nuw nsw i32 %i.kf, %i.an
  %i.kh = mul nuw nsw i32 %i.jq, %i.d
  %i.ki = udiv i32 %i.kh, 255
  %i.kj = add nuw nsw i32 %i.ki, %i.ao
  %i.kk = mul nuw nsw i32 %i.kd, %i.d
  %i.kl = udiv i32 %i.kk, 255
  %i.km = add nuw nsw i32 %i.kl, %i.ap
  %i.kn = zext i8 %i.ip to i32
  %i.ko = sub nsw i32 8, %i.kn
  %i.kp = lshr i32 %i.kg, %i.ko
  %i.kq = shl i32 %i.kp, %i.iy
  %i.kr = zext i8 %i.je to i32
  %i.ks = sub nsw i32 8, %i.kr
  %i.kt = lshr i32 %i.kj, %i.ks
  %i.ku = shl i32 %i.kt, %i.jl
  %i.kv = or i32 %i.ku, %i.kq
  %i.kw = zext i8 %i.jr to i32
  %i.kx = sub nsw i32 8, %i.kw
  %i.ky = lshr i32 %i.km, %i.kx
  %i.kz = shl i32 %i.ky, %i.jy
  %i.la = load i32, ptr %i.aq, align 4
  %i.lb = or i32 %i.kv, %i.la
  %i.lc = or i32 %i.lb, %i.kz
  %i.ld = trunc i32 %i.lc to i16
  store i16 %i.ld, ptr %.4, align 2
  %i.le = getelementptr inbounds nuw i8, ptr %.4, i64 2 ; 2 uses
  %i.lf = add nsw i32 %.31845, -1
  %i.lg = icmp sgt i32 %.31845, 1
  br i1 %i.lg, label %bb.d, label %bb.h, !llvm.loop !52

bb.h:                                             ; preds = %bb.g
  %i.lh = getelementptr inbounds [2 x i8], ptr %i.le, i64 %i.ar
  %.not1979 = icmp eq i32 %i.as, 0
  br i1 %.not1979, label %.loopexit, label %.lr.ph2128.split, !llvm.loop !53

bb.i:                                             ; preds = %.split
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.lj = load i32, ptr %i.li, align 4            ; 2 uses
  %.not19782123 = icmp eq i32 %i.lj, 0
  br i1 %.not19782123, label %.loopexit, label %.lr.ph2125

.lr.ph2125:                                       ; preds = %bb.i
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ll = load ptr, ptr %i.lk, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ln = load i32, ptr %i.lm, align 4
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lp = load i32, ptr %i.lo, align 8
  %i.lq = sdiv i32 %i.lp, 2                       ; 2 uses
  %i.lr = mul nsw i32 %i.ln, %i.lq
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [2 x i8], ptr %i.ll, i64 %i.ls
  %i.lu = load i32, ptr %1, align 4
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [2 x i8], ptr %i.lt, i64 %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ly = load i32, ptr %i.lx, align 4            ; 3 uses
  %i.lz = sub nsw i32 %i.lq, %i.ly
  %i.ma = add nsw i32 %i.ly, 3
  %i.mb = sdiv i32 %i.ma, 4                       ; 4 uses
  %i.mc = and i32 %i.ly, 3
  %i.md = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.mm = zext i8 %3 to i32                       ; 4 uses
  %i.mn = zext i8 %4 to i32                       ; 4 uses
  %i.mo = zext i8 %5 to i32                       ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.mq = sext i32 %i.lz to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph2125, %bb.o
  %.in2150 = phi i32 [ %i.lj, %.lr.ph2125 ], [ %i.mr, %bb.o ]
  %.018472124 = phi ptr [ %i.lw, %.lr.ph2125 ], [ %i.xg, %bb.o ] ; 4 uses
  %i.mr = add nsw i32 %.in2150, -1                ; 2 uses
  switch i32 %i.mc, label %.unreachabledefault [
    i32 0, label %bb.k
    i32 3, label %bb.l
    i32 2, label %bb.m
    i32 1, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j, %bb.n
  %.01852 = phi i32 [ %i.mb, %bb.j ], [ %i.xe, %bb.n ]
  %.11848 = phi ptr [ %.018472124, %bb.j ], [ %i.xd, %bb.n ] ; 3 uses
  %i.ms = load i8, ptr %i.md, align 4             ; 2 uses
  %i.mt = zext i8 %i.ms to i64
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.mt
  %i.mv = load ptr, ptr %i.mu, align 8
  %i.mw = load i16, ptr %.11848, align 2
  %i.mx = zext i16 %i.mw to i32                   ; 3 uses
  %i.my = load i32, ptr %i.me, align 4
  %i.mz = and i32 %i.my, %i.mx
  %i.na = load i8, ptr %i.mf, align 4
  %i.nb = zext i8 %i.na to i32                    ; 2 uses
  %i.nc = lshr i32 %i.mz, %i.nb
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1
  %i.ng = zext i8 %i.nf to i32
  %i.nh = load i8, ptr %i.mg, align 1             ; 2 uses
  %i.ni = zext i8 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ni
  %i.nk = load ptr, ptr %i.nj, align 8
  %i.nl = load i32, ptr %i.mh, align 4
  %i.nm = and i32 %i.nl, %i.mx
  %i.nn = load i8, ptr %i.mi, align 1
  %i.no = zext i8 %i.nn to i32                    ; 2 uses
  %i.np = lshr i32 %i.nm, %i.no
  %i.nq = zext nneg i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1
  %i.nt = zext i8 %i.ns to i32
  %i.nu = load i8, ptr %i.mj, align 2             ; 2 uses
  %i.nv = zext i8 %i.nu to i64
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.nv
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = load i32, ptr %i.mk, align 4
  %i.nz = and i32 %i.ny, %i.mx
  %i.oa = load i8, ptr %i.ml, align 2
  %i.ob = zext i8 %i.oa to i32                    ; 2 uses
  %i.oc = lshr i32 %i.nz, %i.ob
  %i.od = zext nneg i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1
  %i.og = zext i8 %i.of to i32
  %i.oh = mul nuw nsw i32 %i.ng, %i.d
  %i.oi = udiv i32 %i.oh, 255
  %i.oj = add nuw nsw i32 %i.oi, %i.mm
  %spec.store.select56 = tail call i32 @llvm.umin.i32(i32 %i.oj, i32 255)
  %i.ok = mul nuw nsw i32 %i.nt, %i.d
  %i.ol = udiv i32 %i.ok, 255
  %i.om = add nuw nsw i32 %i.ol, %i.mn
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.om, i32 255)
  %i.on = mul nuw nsw i32 %i.og, %i.d
  %i.oo = udiv i32 %i.on, 255
  %i.op = add nuw nsw i32 %i.oo, %i.mo
  %spec.store.select80 = tail call i32 @llvm.umin.i32(i32 %i.op, i32 255)
  %i.oq = zext i8 %i.ms to i32
  %i.or = sub nsw i32 8, %i.oq
  %i.os = lshr i32 %spec.store.select56, %i.or
  %i.ot = shl i32 %i.os, %i.nb
  %i.ou = zext i8 %i.nh to i32
  %i.ov = sub nsw i32 8, %i.ou
  %i.ow = lshr i32 %spec.store.select, %i.ov
  %i.ox = shl i32 %i.ow, %i.no
  %i.oy = zext i8 %i.nu to i32
  %i.oz = sub nsw i32 8, %i.oy
  %i.pa = lshr i32 %spec.store.select80, %i.oz
  %i.pb = shl i32 %i.pa, %i.ob
  %i.pc = load i32, ptr %i.mp, align 4
  %i.pd = or i32 %i.pc, %i.ot
  %i.pe = or i32 %i.pd, %i.ox
  %i.pf = or i32 %i.pe, %i.pb
  %i.pg = trunc i32 %i.pf to i16
  store i16 %i.pg, ptr %.11848, align 2
  %i.ph = getelementptr inbounds nuw i8, ptr %.11848, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.11853 = phi i32 [ %.01852, %bb.k ], [ %i.mb, %bb.j ]
  %.21849 = phi ptr [ %i.ph, %bb.k ], [ %.018472124, %bb.j ] ; 3 uses
  %i.pi = load i8, ptr %i.md, align 4             ; 2 uses
  %i.pj = zext i8 %i.pi to i64
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.pj
  %i.pl = load ptr, ptr %i.pk, align 8
  %i.pm = load i16, ptr %.21849, align 2
  %i.pn = zext i16 %i.pm to i32                   ; 3 uses
  %i.po = load i32, ptr %i.me, align 4
  %i.pp = and i32 %i.po, %i.pn
  %i.pq = load i8, ptr %i.mf, align 4
  %i.pr = zext i8 %i.pq to i32                    ; 2 uses
  %i.ps = lshr i32 %i.pp, %i.pr
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1
  %i.pw = zext i8 %i.pv to i32
  %i.px = load i8, ptr %i.mg, align 1             ; 2 uses
  %i.py = zext i8 %i.px to i64
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.py
  %i.qa = load ptr, ptr %i.pz, align 8
  %i.qb = load i32, ptr %i.mh, align 4
  %i.qc = and i32 %i.qb, %i.pn
  %i.qd = load i8, ptr %i.mi, align 1
  %i.qe = zext i8 %i.qd to i32                    ; 2 uses
  %i.qf = lshr i32 %i.qc, %i.qe
  %i.qg = zext nneg i32 %i.qf to i64
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1
  %i.qj = zext i8 %i.qi to i32
  %i.qk = load i8, ptr %i.mj, align 2             ; 2 uses
  %i.ql = zext i8 %i.qk to i64
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ql
  %i.qn = load ptr, ptr %i.qm, align 8
  %i.qo = load i32, ptr %i.mk, align 4
  %i.qp = and i32 %i.qo, %i.pn
  %i.qq = load i8, ptr %i.ml, align 2
  %i.qr = zext i8 %i.qq to i32                    ; 2 uses
  %i.qs = lshr i32 %i.qp, %i.qr
  %i.qt = zext nneg i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.qt
  %i.qv = load i8, ptr %i.qu, align 1
  %i.qw = zext i8 %i.qv to i32
  %i.qx = mul nuw nsw i32 %i.pw, %i.d
  %i.qy = udiv i32 %i.qx, 255
  %i.qz = add nuw nsw i32 %i.qy, %i.mm
  %spec.store.select3 = tail call i32 @llvm.umin.i32(i32 %i.qz, i32 255)
  %i.ra = mul nuw nsw i32 %i.qj, %i.d
  %i.rb = udiv i32 %i.ra, 255
  %i.rc = add nuw nsw i32 %i.rb, %i.mn
  %spec.store.select57 = tail call i32 @llvm.umin.i32(i32 %i.rc, i32 255)
  %i.rd = mul nuw nsw i32 %i.qw, %i.d
  %i.re = udiv i32 %i.rd, 255
  %i.rf = add nuw nsw i32 %i.re, %i.mo
  %spec.store.select4 = tail call i32 @llvm.umin.i32(i32 %i.rf, i32 255)
  %i.rg = zext i8 %i.pi to i32
  %i.rh = sub nsw i32 8, %i.rg
  %i.ri = lshr i32 %spec.store.select3, %i.rh
  %i.rj = shl i32 %i.ri, %i.pr
  %i.rk = zext i8 %i.px to i32
  %i.rl = sub nsw i32 8, %i.rk
  %i.rm = lshr i32 %spec.store.select57, %i.rl
  %i.rn = shl i32 %i.rm, %i.qe
  %i.ro = zext i8 %i.qk to i32
  %i.rp = sub nsw i32 8, %i.ro
  %i.rq = lshr i32 %spec.store.select4, %i.rp
  %i.rr = shl i32 %i.rq, %i.qr
  %i.rs = load i32, ptr %i.mp, align 4
  %i.rt = or i32 %i.rs, %i.rj
  %i.ru = or i32 %i.rt, %i.rn
  %i.rv = or i32 %i.ru, %i.rr
  %i.rw = trunc i32 %i.rv to i16
  store i16 %i.rw, ptr %.21849, align 2
  %i.rx = getelementptr inbounds nuw i8, ptr %.21849, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %.21854 = phi i32 [ %.11853, %bb.l ], [ %i.mb, %bb.j ]
  %.31850 = phi ptr [ %i.rx, %bb.l ], [ %.018472124, %bb.j ] ; 3 uses
  %i.ry = load i8, ptr %i.md, align 4             ; 2 uses
  %i.rz = zext i8 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.rz
  %i.sb = load ptr, ptr %i.sa, align 8
  %i.sc = load i16, ptr %.31850, align 2
  %i.sd = zext i16 %i.sc to i32                   ; 3 uses
  %i.se = load i32, ptr %i.me, align 4
  %i.sf = and i32 %i.se, %i.sd
  %i.sg = load i8, ptr %i.mf, align 4
  %i.sh = zext i8 %i.sg to i32                    ; 2 uses
  %i.si = lshr i32 %i.sf, %i.sh
  %i.sj = zext nneg i32 %i.si to i64
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.sj
  %i.sl = load i8, ptr %i.sk, align 1
  %i.sm = zext i8 %i.sl to i32
  %i.sn = load i8, ptr %i.mg, align 1             ; 2 uses
  %i.so = zext i8 %i.sn to i64
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.so
  %i.sq = load ptr, ptr %i.sp, align 8
  %i.sr = load i32, ptr %i.mh, align 4
  %i.ss = and i32 %i.sr, %i.sd
  %i.st = load i8, ptr %i.mi, align 1
  %i.su = zext i8 %i.st to i32                    ; 2 uses
  %i.sv = lshr i32 %i.ss, %i.su
  %i.sw = zext nneg i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1
  %i.sz = zext i8 %i.sy to i32
  %i.ta = load i8, ptr %i.mj, align 2             ; 2 uses
  %i.tb = zext i8 %i.ta to i64
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.tb
  %i.td = load ptr, ptr %i.tc, align 8
  %i.te = load i32, ptr %i.mk, align 4
  %i.tf = and i32 %i.te, %i.sd
  %i.tg = load i8, ptr %i.ml, align 2
  %i.th = zext i8 %i.tg to i32                    ; 2 uses
  %i.ti = lshr i32 %i.tf, %i.th
  %i.tj = zext nneg i32 %i.ti to i64
  %i.tk = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.tj
  %i.tl = load i8, ptr %i.tk, align 1
  %i.tm = zext i8 %i.tl to i32
  %i.tn = mul nuw nsw i32 %i.sm, %i.d
  %i.to = udiv i32 %i.tn, 255
  %i.tp = add nuw nsw i32 %i.to, %i.mm
  %spec.store.select5 = tail call i32 @llvm.umin.i32(i32 %i.tp, i32 255)
  %i.tq = mul nuw nsw i32 %i.sz, %i.d
  %i.tr = udiv i32 %i.tq, 255
  %i.ts = add nuw nsw i32 %i.tr, %i.mn
  %spec.store.select58 = tail call i32 @llvm.umin.i32(i32 %i.ts, i32 255)
  %i.tt = mul nuw nsw i32 %i.tm, %i.d
  %i.tu = udiv i32 %i.tt, 255
  %i.tv = add nuw nsw i32 %i.tu, %i.mo
  %spec.store.select6 = tail call i32 @llvm.umin.i32(i32 %i.tv, i32 255)
  %i.tw = zext i8 %i.ry to i32
  %i.tx = sub nsw i32 8, %i.tw
  %i.ty = lshr i32 %spec.store.select5, %i.tx
  %i.tz = shl i32 %i.ty, %i.sh
  %i.ua = zext i8 %i.sn to i32
  %i.ub = sub nsw i32 8, %i.ua
  %i.uc = lshr i32 %spec.store.select58, %i.ub
  %i.ud = shl i32 %i.uc, %i.su
  %i.ue = zext i8 %i.ta to i32
  %i.uf = sub nsw i32 8, %i.ue
  %i.ug = lshr i32 %spec.store.select6, %i.uf
  %i.uh = shl i32 %i.ug, %i.th
  %i.ui = load i32, ptr %i.mp, align 4
  %i.uj = or i32 %i.ui, %i.tz
  %i.uk = or i32 %i.uj, %i.ud
  %i.ul = or i32 %i.uk, %i.uh
  %i.um = trunc i32 %i.ul to i16
  store i16 %i.um, ptr %.31850, align 2
  %i.un = getelementptr inbounds nuw i8, ptr %.31850, i64 2
  br label %bb.n

.unreachabledefault:                              ; preds = %bb.j
  unreachable

bb.n:                                             ; preds = %bb.j, %bb.m
  %.31855 = phi i32 [ %.21854, %bb.m ], [ %i.mb, %bb.j ] ; 2 uses
  %.41851 = phi ptr [ %i.un, %bb.m ], [ %.018472124, %bb.j ] ; 3 uses
  %i.uo = load i8, ptr %i.md, align 4             ; 2 uses
  %i.up = zext i8 %i.uo to i64
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.up
  %i.ur = load ptr, ptr %i.uq, align 8
  %i.us = load i16, ptr %.41851, align 2
  %i.ut = zext i16 %i.us to i32                   ; 3 uses
  %i.uu = load i32, ptr %i.me, align 4
  %i.uv = and i32 %i.uu, %i.ut
  %i.uw = load i8, ptr %i.mf, align 4
  %i.ux = zext i8 %i.uw to i32                    ; 2 uses
  %i.uy = lshr i32 %i.uv, %i.ux
  %i.uz = zext nneg i32 %i.uy to i64
  %i.va = getelementptr inbounds nuw i8, ptr %i.ur, i64 %i.uz
  %i.vb = load i8, ptr %i.va, align 1
  %i.vc = zext i8 %i.vb to i32
  %i.vd = load i8, ptr %i.mg, align 1             ; 2 uses
  %i.ve = zext i8 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ve
  %i.vg = load ptr, ptr %i.vf, align 8
  %i.vh = load i32, ptr %i.mh, align 4
  %i.vi = and i32 %i.vh, %i.ut
  %i.vj = load i8, ptr %i.mi, align 1
  %i.vk = zext i8 %i.vj to i32                    ; 2 uses
  %i.vl = lshr i32 %i.vi, %i.vk
  %i.vm = zext nneg i32 %i.vl to i64
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vg, i64 %i.vm
  %i.vo = load i8, ptr %i.vn, align 1
  %i.vp = zext i8 %i.vo to i32
  %i.vq = load i8, ptr %i.mj, align 2             ; 2 uses
  %i.vr = zext i8 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.vr
  %i.vt = load ptr, ptr %i.vs, align 8
  %i.vu = load i32, ptr %i.mk, align 4
  %i.vv = and i32 %i.vu, %i.ut
  %i.vw = load i8, ptr %i.ml, align 2
  %i.vx = zext i8 %i.vw to i32                    ; 2 uses
  %i.vy = lshr i32 %i.vv, %i.vx
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.vz
  %i.wb = load i8, ptr %i.wa, align 1
  %i.wc = zext i8 %i.wb to i32
  %i.wd = mul nuw nsw i32 %i.vc, %i.d
  %i.we = udiv i32 %i.wd, 255
  %i.wf = add nuw nsw i32 %i.we, %i.mm
  %spec.store.select7 = tail call i32 @llvm.umin.i32(i32 %i.wf, i32 255)
  %i.wg = mul nuw nsw i32 %i.vp, %i.d
  %i.wh = udiv i32 %i.wg, 255
  %i.wi = add nuw nsw i32 %i.wh, %i.mn
  %spec.store.select59 = tail call i32 @llvm.umin.i32(i32 %i.wi, i32 255)
  %i.wj = mul nuw nsw i32 %i.wc, %i.d
  %i.wk = udiv i32 %i.wj, 255
  %i.wl = add nuw nsw i32 %i.wk, %i.mo
  %spec.store.select8 = tail call i32 @llvm.umin.i32(i32 %i.wl, i32 255)
  %i.wm = zext i8 %i.uo to i32
  %i.wn = sub nsw i32 8, %i.wm
  %i.wo = lshr i32 %spec.store.select7, %i.wn
  %i.wp = shl i32 %i.wo, %i.ux
  %i.wq = zext i8 %i.vd to i32
  %i.wr = sub nsw i32 8, %i.wq
  %i.ws = lshr i32 %spec.store.select59, %i.wr
  %i.wt = shl i32 %i.ws, %i.vk
  %i.wu = zext i8 %i.vq to i32
  %i.wv = sub nsw i32 8, %i.wu
  %i.ww = lshr i32 %spec.store.select8, %i.wv
  %i.wx = shl i32 %i.ww, %i.vx
  %i.wy = load i32, ptr %i.mp, align 4
  %i.wz = or i32 %i.wy, %i.wp
  %i.xa = or i32 %i.wz, %i.wt
  %i.xb = or i32 %i.xa, %i.wx
  %i.xc = trunc i32 %i.xb to i16
  store i16 %i.xc, ptr %.41851, align 2
  %i.xd = getelementptr inbounds nuw i8, ptr %.41851, i64 2 ; 2 uses
  %i.xe = add nsw i32 %.31855, -1
  %i.xf = icmp sgt i32 %.31855, 1
  br i1 %i.xf, label %bb.k, label %bb.o, !llvm.loop !54

bb.o:                                             ; preds = %bb.n
  %i.xg = getelementptr inbounds [2 x i8], ptr %i.xd, i64 %i.mq
  %.not1978 = icmp eq i32 %i.mr, 0
  br i1 %.not1978, label %.loopexit, label %bb.j, !llvm.loop !55

bb.p:                                             ; preds = %.split, %.split
  %i.xh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.xi = load i32, ptr %i.xh, align 4            ; 2 uses
  %.not19772120 = icmp eq i32 %i.xi, 0
  br i1 %.not19772120, label %.loopexit, label %.lr.ph2122

.lr.ph2122:                                       ; preds = %bb.p
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.xk = load ptr, ptr %i.xj, align 8
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.xm = load i32, ptr %i.xl, align 4
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.xo = load i32, ptr %i.xn, align 8
  %i.xp = sdiv i32 %i.xo, 2                       ; 2 uses
  %i.xq = mul nsw i32 %i.xm, %i.xp
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr inbounds [2 x i8], ptr %i.xk, i64 %i.xr
  %i.xt = load i32, ptr %1, align 4
  %i.xu = sext i32 %i.xt to i64
  %i.xv = getelementptr inbounds [2 x i8], ptr %i.xs, i64 %i.xu
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xx = load i32, ptr %i.xw, align 4            ; 3 uses
  %i.xy = sub nsw i32 %i.xp, %i.xx
  %i.xz = add nsw i32 %i.xx, 3
  %i.ya = sdiv i32 %i.xz, 4                       ; 4 uses
  %i.yb = and i32 %i.xx, 3
  %i.yc = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.yl = zext i8 %3 to i32                       ; 4 uses
  %i.ym = zext i8 %4 to i32                       ; 4 uses
  %i.yn = zext i8 %5 to i32                       ; 4 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.yp = sext i32 %i.xy to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph2122, %bb.v
  %.in2149 = phi i32 [ %i.xi, %.lr.ph2122 ], [ %i.yq, %bb.v ]
  %.018572121 = phi ptr [ %i.xv, %.lr.ph2122 ], [ %i.aih, %bb.v ] ; 4 uses
  %i.yq = add nsw i32 %.in2149, -1                ; 2 uses
  switch i32 %i.yb, label %.unreachabledefault2211 [
    i32 0, label %bb.r
    i32 3, label %bb.s
    i32 2, label %bb.t
    i32 1, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q, %bb.u
  %.01862 = phi i32 [ %i.ya, %bb.q ], [ %i.aif, %bb.u ]
  %.11858 = phi ptr [ %.018572121, %bb.q ], [ %i.aie, %bb.u ] ; 3 uses
  %i.yr = load i8, ptr %i.yc, align 4             ; 2 uses
  %i.ys = zext i8 %i.yr to i64
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ys
  %i.yu = load ptr, ptr %i.yt, align 8
  %i.yv = load i16, ptr %.11858, align 2
  %i.yw = zext i16 %i.yv to i32                   ; 3 uses
  %i.yx = load i32, ptr %i.yd, align 4
  %i.yy = and i32 %i.yx, %i.yw
  %i.yz = load i8, ptr %i.ye, align 4
  %i.za = zext i8 %i.yz to i32                    ; 2 uses
  %i.zb = lshr i32 %i.yy, %i.za
  %i.zc = zext nneg i32 %i.zb to i64
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yu, i64 %i.zc
  %i.ze = load i8, ptr %i.zd, align 1
  %i.zf = zext i8 %i.ze to i32
  %i.zg = load i8, ptr %i.yf, align 1             ; 2 uses
  %i.zh = zext i8 %i.zg to i64
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.zh
  %i.zj = load ptr, ptr %i.zi, align 8
  %i.zk = load i32, ptr %i.yg, align 4
  %i.zl = and i32 %i.zk, %i.yw
  %i.zm = load i8, ptr %i.yh, align 1
  %i.zn = zext i8 %i.zm to i32                    ; 2 uses
  %i.zo = lshr i32 %i.zl, %i.zn
  %i.zp = zext nneg i32 %i.zo to i64
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zj, i64 %i.zp
  %i.zr = load i8, ptr %i.zq, align 1
  %i.zs = zext i8 %i.zr to i32
  %i.zt = load i8, ptr %i.yi, align 2             ; 2 uses
  %i.zu = zext i8 %i.zt to i64
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.zu
  %i.zw = load ptr, ptr %i.zv, align 8
  %i.zx = load i32, ptr %i.yj, align 4
  %i.zy = and i32 %i.zx, %i.yw
  %i.zz = load i8, ptr %i.yk, align 2
  %i.aaa = zext i8 %i.zz to i32                   ; 2 uses
  %i.aab = lshr i32 %i.zy, %i.aaa
  %i.aac = zext nneg i32 %i.aab to i64
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.aac
  %i.aae = load i8, ptr %i.aad, align 1
  %i.aaf = zext i8 %i.aae to i32
  %i.aag = add nuw nsw i32 %i.zf, %i.yl
  %spec.store.select60 = tail call i32 @llvm.umin.i32(i32 %i.aag, i32 255)
  %i.aah = add nuw nsw i32 %i.zs, %i.ym
  %spec.store.select10 = tail call i32 @llvm.umin.i32(i32 %i.aah, i32 255)
  %i.aai = add nuw nsw i32 %i.aaf, %i.yn
  %spec.store.select84 = tail call i32 @llvm.umin.i32(i32 %i.aai, i32 255)
  %i.aaj = zext i8 %i.yr to i32
  %i.aak = sub nsw i32 8, %i.aaj
  %i.aal = lshr i32 %spec.store.select60, %i.aak
  %i.aam = shl i32 %i.aal, %i.za
  %i.aan = zext i8 %i.zg to i32
  %i.aao = sub nsw i32 8, %i.aan
  %i.aap = lshr i32 %spec.store.select10, %i.aao
  %i.aaq = shl i32 %i.aap, %i.zn
  %i.aar = or i32 %i.aaq, %i.aam
  %i.aas = zext i8 %i.zt to i32
  %i.aat = sub nsw i32 8, %i.aas
  %i.aau = lshr i32 %spec.store.select84, %i.aat
  %i.aav = shl i32 %i.aau, %i.aaa
  %i.aaw = load i32, ptr %i.yo, align 4
  %i.aax = or i32 %i.aar, %i.aaw
  %i.aay = or i32 %i.aax, %i.aav
  %i.aaz = trunc i32 %i.aay to i16
  store i16 %i.aaz, ptr %.11858, align 2
  %i.aba = getelementptr inbounds nuw i8, ptr %.11858, i64 2
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.11863 = phi i32 [ %.01862, %bb.r ], [ %i.ya, %bb.q ]
  %.21859 = phi ptr [ %i.aba, %bb.r ], [ %.018572121, %bb.q ] ; 3 uses
  %i.abb = load i8, ptr %i.yc, align 4            ; 2 uses
  %i.abc = zext i8 %i.abb to i64
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.abc
  %i.abe = load ptr, ptr %i.abd, align 8
  %i.abf = load i16, ptr %.21859, align 2
  %i.abg = zext i16 %i.abf to i32                 ; 3 uses
  %i.abh = load i32, ptr %i.yd, align 4
  %i.abi = and i32 %i.abh, %i.abg
  %i.abj = load i8, ptr %i.ye, align 4
  %i.abk = zext i8 %i.abj to i32                  ; 2 uses
  %i.abl = lshr i32 %i.abi, %i.abk
  %i.abm = zext nneg i32 %i.abl to i64
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abe, i64 %i.abm
  %i.abo = load i8, ptr %i.abn, align 1
  %i.abp = zext i8 %i.abo to i32
  %i.abq = load i8, ptr %i.yf, align 1            ; 2 uses
  %i.abr = zext i8 %i.abq to i64
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.abr
  %i.abt = load ptr, ptr %i.abs, align 8
  %i.abu = load i32, ptr %i.yg, align 4
  %i.abv = and i32 %i.abu, %i.abg
  %i.abw = load i8, ptr %i.yh, align 1
  %i.abx = zext i8 %i.abw to i32                  ; 2 uses
  %i.aby = lshr i32 %i.abv, %i.abx
  %i.abz = zext nneg i32 %i.aby to i64
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.abz
  %i.acb = load i8, ptr %i.aca, align 1
  %i.acc = zext i8 %i.acb to i32
  %i.acd = load i8, ptr %i.yi, align 2            ; 2 uses
  %i.ace = zext i8 %i.acd to i64
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ace
  %i.acg = load ptr, ptr %i.acf, align 8
  %i.ach = load i32, ptr %i.yj, align 4
  %i.aci = and i32 %i.ach, %i.abg
  %i.acj = load i8, ptr %i.yk, align 2
  %i.ack = zext i8 %i.acj to i32                  ; 2 uses
  %i.acl = lshr i32 %i.aci, %i.ack
  %i.acm = zext nneg i32 %i.acl to i64
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.acm
  %i.aco = load i8, ptr %i.acn, align 1
  %i.acp = zext i8 %i.aco to i32
  %i.acq = add nuw nsw i32 %i.abp, %i.yl
  %spec.store.select11 = tail call i32 @llvm.umin.i32(i32 %i.acq, i32 255)
  %i.acr = add nuw nsw i32 %i.acc, %i.ym
  %spec.store.select61 = tail call i32 @llvm.umin.i32(i32 %i.acr, i32 255)
  %i.acs = add nuw nsw i32 %i.acp, %i.yn
  %spec.store.select12 = tail call i32 @llvm.umin.i32(i32 %i.acs, i32 255)
  %i.act = zext i8 %i.abb to i32
  %i.acu = sub nsw i32 8, %i.act
  %i.acv = lshr i32 %spec.store.select11, %i.acu
  %i.acw = shl i32 %i.acv, %i.abk
  %i.acx = zext i8 %i.abq to i32
  %i.acy = sub nsw i32 8, %i.acx
  %i.acz = lshr i32 %spec.store.select61, %i.acy
  %i.ada = shl i32 %i.acz, %i.abx
  %i.adb = or i32 %i.ada, %i.acw
  %i.adc = zext i8 %i.acd to i32
  %i.add = sub nsw i32 8, %i.adc
  %i.ade = lshr i32 %spec.store.select12, %i.add
  %i.adf = shl i32 %i.ade, %i.ack
  %i.adg = load i32, ptr %i.yo, align 4
  %i.adh = or i32 %i.adb, %i.adg
  %i.adi = or i32 %i.adh, %i.adf
  %i.adj = trunc i32 %i.adi to i16
  store i16 %i.adj, ptr %.21859, align 2
  %i.adk = getelementptr inbounds nuw i8, ptr %.21859, i64 2
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s
  %.21864 = phi i32 [ %.11863, %bb.s ], [ %i.ya, %bb.q ]
  %.31860 = phi ptr [ %i.adk, %bb.s ], [ %.018572121, %bb.q ] ; 3 uses
  %i.adl = load i8, ptr %i.yc, align 4            ; 2 uses
  %i.adm = zext i8 %i.adl to i64
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.adm
  %i.ado = load ptr, ptr %i.adn, align 8
  %i.adp = load i16, ptr %.31860, align 2
  %i.adq = zext i16 %i.adp to i32                 ; 3 uses
  %i.adr = load i32, ptr %i.yd, align 4
  %i.ads = and i32 %i.adr, %i.adq
  %i.adt = load i8, ptr %i.ye, align 4
  %i.adu = zext i8 %i.adt to i32                  ; 2 uses
  %i.adv = lshr i32 %i.ads, %i.adu
  %i.adw = zext nneg i32 %i.adv to i64
  %i.adx = getelementptr inbounds nuw i8, ptr %i.ado, i64 %i.adw
  %i.ady = load i8, ptr %i.adx, align 1
  %i.adz = zext i8 %i.ady to i32
  %i.aea = load i8, ptr %i.yf, align 1            ; 2 uses
  %i.aeb = zext i8 %i.aea to i64
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aeb
  %i.aed = load ptr, ptr %i.aec, align 8
  %i.aee = load i32, ptr %i.yg, align 4
  %i.aef = and i32 %i.aee, %i.adq
  %i.aeg = load i8, ptr %i.yh, align 1
  %i.aeh = zext i8 %i.aeg to i32                  ; 2 uses
  %i.aei = lshr i32 %i.aef, %i.aeh
  %i.aej = zext nneg i32 %i.aei to i64
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aed, i64 %i.aej
  %i.ael = load i8, ptr %i.aek, align 1
  %i.aem = zext i8 %i.ael to i32
  %i.aen = load i8, ptr %i.yi, align 2            ; 2 uses
  %i.aeo = zext i8 %i.aen to i64
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aeo
  %i.aeq = load ptr, ptr %i.aep, align 8
  %i.aer = load i32, ptr %i.yj, align 4
  %i.aes = and i32 %i.aer, %i.adq
  %i.aet = load i8, ptr %i.yk, align 2
  %i.aeu = zext i8 %i.aet to i32                  ; 2 uses
  %i.aev = lshr i32 %i.aes, %i.aeu
  %i.aew = zext nneg i32 %i.aev to i64
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %i.aew
  %i.aey = load i8, ptr %i.aex, align 1
  %i.aez = zext i8 %i.aey to i32
  %i.afa = add nuw nsw i32 %i.adz, %i.yl
  %spec.store.select13 = tail call i32 @llvm.umin.i32(i32 %i.afa, i32 255)
  %i.afb = add nuw nsw i32 %i.aem, %i.ym
  %spec.store.select62 = tail call i32 @llvm.umin.i32(i32 %i.afb, i32 255)
  %i.afc = add nuw nsw i32 %i.aez, %i.yn
  %spec.store.select14 = tail call i32 @llvm.umin.i32(i32 %i.afc, i32 255)
  %i.afd = zext i8 %i.adl to i32
  %i.afe = sub nsw i32 8, %i.afd
  %i.aff = lshr i32 %spec.store.select13, %i.afe
  %i.afg = shl i32 %i.aff, %i.adu
  %i.afh = zext i8 %i.aea to i32
  %i.afi = sub nsw i32 8, %i.afh
  %i.afj = lshr i32 %spec.store.select62, %i.afi
  %i.afk = shl i32 %i.afj, %i.aeh
  %i.afl = or i32 %i.afk, %i.afg
  %i.afm = zext i8 %i.aen to i32
  %i.afn = sub nsw i32 8, %i.afm
  %i.afo = lshr i32 %spec.store.select14, %i.afn
  %i.afp = shl i32 %i.afo, %i.aeu
  %i.afq = load i32, ptr %i.yo, align 4
  %i.afr = or i32 %i.afl, %i.afq
  %i.afs = or i32 %i.afr, %i.afp
  %i.aft = trunc i32 %i.afs to i16
  store i16 %i.aft, ptr %.31860, align 2
  %i.afu = getelementptr inbounds nuw i8, ptr %.31860, i64 2
  br label %bb.u

.unreachabledefault2211:                          ; preds = %bb.q
  unreachable

bb.u:                                             ; preds = %bb.q, %bb.t
  %.31865 = phi i32 [ %.21864, %bb.t ], [ %i.ya, %bb.q ] ; 2 uses
  %.41861 = phi ptr [ %i.afu, %bb.t ], [ %.018572121, %bb.q ] ; 3 uses
  %i.afv = load i8, ptr %i.yc, align 4            ; 2 uses
  %i.afw = zext i8 %i.afv to i64
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.afw
  %i.afy = load ptr, ptr %i.afx, align 8
  %i.afz = load i16, ptr %.41861, align 2
  %i.aga = zext i16 %i.afz to i32                 ; 3 uses
  %i.agb = load i32, ptr %i.yd, align 4
  %i.agc = and i32 %i.agb, %i.aga
  %i.agd = load i8, ptr %i.ye, align 4
  %i.age = zext i8 %i.agd to i32                  ; 2 uses
  %i.agf = lshr i32 %i.agc, %i.age
  %i.agg = zext nneg i32 %i.agf to i64
  %i.agh = getelementptr inbounds nuw i8, ptr %i.afy, i64 %i.agg
  %i.agi = load i8, ptr %i.agh, align 1
  %i.agj = zext i8 %i.agi to i32
  %i.agk = load i8, ptr %i.yf, align 1            ; 2 uses
  %i.agl = zext i8 %i.agk to i64
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.agl
  %i.agn = load ptr, ptr %i.agm, align 8
  %i.ago = load i32, ptr %i.yg, align 4
  %i.agp = and i32 %i.ago, %i.aga
  %i.agq = load i8, ptr %i.yh, align 1
  %i.agr = zext i8 %i.agq to i32                  ; 2 uses
  %i.ags = lshr i32 %i.agp, %i.agr
  %i.agt = zext nneg i32 %i.ags to i64
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agn, i64 %i.agt
  %i.agv = load i8, ptr %i.agu, align 1
  %i.agw = zext i8 %i.agv to i32
  %i.agx = load i8, ptr %i.yi, align 2            ; 2 uses
  %i.agy = zext i8 %i.agx to i64
  %i.agz = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.agy
  %i.aha = load ptr, ptr %i.agz, align 8
  %i.ahb = load i32, ptr %i.yj, align 4
  %i.ahc = and i32 %i.ahb, %i.aga
  %i.ahd = load i8, ptr %i.yk, align 2
  %i.ahe = zext i8 %i.ahd to i32                  ; 2 uses
  %i.ahf = lshr i32 %i.ahc, %i.ahe
  %i.ahg = zext nneg i32 %i.ahf to i64
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.aha, i64 %i.ahg
  %i.ahi = load i8, ptr %i.ahh, align 1
  %i.ahj = zext i8 %i.ahi to i32
  %i.ahk = add nuw nsw i32 %i.agj, %i.yl
  %spec.store.select15 = tail call i32 @llvm.umin.i32(i32 %i.ahk, i32 255)
  %i.ahl = add nuw nsw i32 %i.agw, %i.ym
  %spec.store.select63 = tail call i32 @llvm.umin.i32(i32 %i.ahl, i32 255)
  %i.ahm = add nuw nsw i32 %i.ahj, %i.yn
  %spec.store.select16 = tail call i32 @llvm.umin.i32(i32 %i.ahm, i32 255)
  %i.ahn = zext i8 %i.afv to i32
  %i.aho = sub nsw i32 8, %i.ahn
  %i.ahp = lshr i32 %spec.store.select15, %i.aho
  %i.ahq = shl i32 %i.ahp, %i.age
  %i.ahr = zext i8 %i.agk to i32
  %i.ahs = sub nsw i32 8, %i.ahr
  %i.aht = lshr i32 %spec.store.select63, %i.ahs
  %i.ahu = shl i32 %i.aht, %i.agr
  %i.ahv = or i32 %i.ahu, %i.ahq
  %i.ahw = zext i8 %i.agx to i32
  %i.ahx = sub nsw i32 8, %i.ahw
  %i.ahy = lshr i32 %spec.store.select16, %i.ahx
  %i.ahz = shl i32 %i.ahy, %i.ahe
  %i.aia = load i32, ptr %i.yo, align 4
  %i.aib = or i32 %i.ahv, %i.aia
  %i.aic = or i32 %i.aib, %i.ahz
  %i.aid = trunc i32 %i.aic to i16
  store i16 %i.aid, ptr %.41861, align 2
  %i.aie = getelementptr inbounds nuw i8, ptr %.41861, i64 2 ; 2 uses
  %i.aif = add nsw i32 %.31865, -1
  %i.aig = icmp sgt i32 %.31865, 1
  br i1 %i.aig, label %bb.r, label %bb.v, !llvm.loop !56

bb.v:                                             ; preds = %bb.u
  %i.aih = getelementptr inbounds [2 x i8], ptr %i.aie, i64 %i.yp
  %.not1977 = icmp eq i32 %i.yq, 0
  br i1 %.not1977, label %.loopexit, label %bb.q, !llvm.loop !57

bb.w:                                             ; preds = %.split
  %i.aii = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aij = load i32, ptr %i.aii, align 4          ; 2 uses
  %.not19762117 = icmp eq i32 %i.aij, 0
  br i1 %.not19762117, label %.loopexit, label %.lr.ph2119

.lr.ph2119:                                       ; preds = %bb.w
  %i.aik = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ail = load ptr, ptr %i.aik, align 8
  %i.aim = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ain = load i32, ptr %i.aim, align 4
  %i.aio = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aip = load i32, ptr %i.aio, align 8
  %i.aiq = sdiv i32 %i.aip, 2                     ; 2 uses
  %i.air = mul nsw i32 %i.ain, %i.aiq
  %i.ais = sext i32 %i.air to i64
  %i.ait = getelementptr inbounds [2 x i8], ptr %i.ail, i64 %i.ais
  %i.aiu = load i32, ptr %1, align 4
  %i.aiv = sext i32 %i.aiu to i64
  %i.aiw = getelementptr inbounds [2 x i8], ptr %i.ait, i64 %i.aiv
  %i.aix = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aiy = load i32, ptr %i.aix, align 4          ; 3 uses
  %i.aiz = sub nsw i32 %i.aiq, %i.aiy
  %i.aja = add nsw i32 %i.aiy, 3
  %i.ajb = sdiv i32 %i.aja, 4                     ; 4 uses
  %i.ajc = and i32 %i.aiy, 3
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.ajm = zext i8 %3 to i16                      ; 4 uses
  %i.ajn = zext i8 %4 to i16                      ; 4 uses
  %i.ajo = zext i8 %5 to i16                      ; 4 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.ajq = sext i32 %i.aiz to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph2119, %bb.ac
  %.in2148 = phi i32 [ %i.aij, %.lr.ph2119 ], [ %i.ajr, %bb.ac ]
  %.018672118 = phi ptr [ %i.aiw, %.lr.ph2119 ], [ %i.ati, %bb.ac ] ; 4 uses
  %i.ajr = add nsw i32 %.in2148, -1               ; 2 uses
  switch i32 %i.ajc, label %.unreachabledefault2212 [
    i32 0, label %bb.y
    i32 3, label %bb.z
    i32 2, label %bb.aa
    i32 1, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x, %bb.ab
  %.01872 = phi i32 [ %i.ajb, %bb.x ], [ %i.atg, %bb.ab ]
  %.11868 = phi ptr [ %.018672118, %bb.x ], [ %i.atf, %bb.ab ] ; 3 uses
  %i.ajs = load i8, ptr %i.ajd, align 4           ; 2 uses
  %i.ajt = zext i8 %i.ajs to i64
  %i.aju = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ajt
  %i.ajv = load ptr, ptr %i.aju, align 8
  %i.ajw = load i16, ptr %.11868, align 2
  %i.ajx = zext i16 %i.ajw to i32                 ; 3 uses
  %i.ajy = load i32, ptr %i.aje, align 4
  %i.ajz = and i32 %i.ajy, %i.ajx
  %i.aka = load i8, ptr %i.ajf, align 4
  %i.akb = zext i8 %i.aka to i32                  ; 2 uses
  %i.akc = lshr i32 %i.ajz, %i.akb
  %i.akd = zext nneg i32 %i.akc to i64
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajv, i64 %i.akd
  %i.akf = load i8, ptr %i.ake, align 1
  %i.akg = zext i8 %i.akf to i16
  %i.akh = load i8, ptr %i.ajg, align 1           ; 2 uses
  %i.aki = zext i8 %i.akh to i64
  %i.akj = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aki
  %i.akk = load ptr, ptr %i.akj, align 8
  %i.akl = load i32, ptr %i.ajh, align 4
  %i.akm = and i32 %i.akl, %i.ajx
  %i.akn = load i8, ptr %i.aji, align 1
  %i.ako = zext i8 %i.akn to i32                  ; 2 uses
  %i.akp = lshr i32 %i.akm, %i.ako
  %i.akq = zext nneg i32 %i.akp to i64
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akk, i64 %i.akq
  %i.aks = load i8, ptr %i.akr, align 1
  %i.akt = zext i8 %i.aks to i16
  %i.aku = load i8, ptr %i.ajj, align 2           ; 2 uses
  %i.akv = zext i8 %i.aku to i64
  %i.akw = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.akv
  %i.akx = load ptr, ptr %i.akw, align 8
  %i.aky = load i32, ptr %i.ajk, align 4
  %i.akz = and i32 %i.aky, %i.ajx
  %i.ala = load i8, ptr %i.ajl, align 2
  %i.alb = zext i8 %i.ala to i32                  ; 2 uses
  %i.alc = lshr i32 %i.akz, %i.alb
  %i.ald = zext nneg i32 %i.alc to i64
  %i.ale = getelementptr inbounds nuw i8, ptr %i.akx, i64 %i.ald
  %i.alf = load i8, ptr %i.ale, align 1
  %i.alg = zext i8 %i.alf to i16
  %.lhs.trunc = mul nuw i16 %i.akg, %i.ajm
  %i.alh = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.alh to i32
  %.lhs.trunc1981 = mul nuw i16 %i.akt, %i.ajn
  %i.ali = udiv i16 %.lhs.trunc1981, 255
  %.zext1982 = zext nneg i16 %i.ali to i32
  %.lhs.trunc1983 = mul nuw i16 %i.alg, %i.ajo
  %i.alj = udiv i16 %.lhs.trunc1983, 255
  %.zext1984 = zext nneg i16 %i.alj to i32
  %i.alk = zext i8 %i.ajs to i32
  %i.all = sub nsw i32 8, %i.alk
  %i.alm = lshr i32 %.zext, %i.all
  %i.aln = shl i32 %i.alm, %i.akb
  %i.alo = zext i8 %i.akh to i32
  %i.alp = sub nsw i32 8, %i.alo
  %i.alq = lshr i32 %.zext1982, %i.alp
  %i.alr = shl i32 %i.alq, %i.ako
  %i.als = or i32 %i.alr, %i.aln
  %i.alt = zext i8 %i.aku to i32
  %i.alu = sub nsw i32 8, %i.alt
  %i.alv = lshr i32 %.zext1984, %i.alu
  %i.alw = shl i32 %i.alv, %i.alb
  %i.alx = load i32, ptr %i.ajp, align 4
  %i.aly = or i32 %i.als, %i.alx
  %i.alz = or i32 %i.aly, %i.alw
  %i.ama = trunc i32 %i.alz to i16
  store i16 %i.ama, ptr %.11868, align 2
  %i.amb = getelementptr inbounds nuw i8, ptr %.11868, i64 2
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.11873 = phi i32 [ %.01872, %bb.y ], [ %i.ajb, %bb.x ]
  %.21869 = phi ptr [ %i.amb, %bb.y ], [ %.018672118, %bb.x ] ; 3 uses
  %i.amc = load i8, ptr %i.ajd, align 4           ; 2 uses
  %i.amd = zext i8 %i.amc to i64
  %i.ame = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.amd
  %i.amf = load ptr, ptr %i.ame, align 8
  %i.amg = load i16, ptr %.21869, align 2
  %i.amh = zext i16 %i.amg to i32                 ; 3 uses
  %i.ami = load i32, ptr %i.aje, align 4
  %i.amj = and i32 %i.ami, %i.amh
  %i.amk = load i8, ptr %i.ajf, align 4
  %i.aml = zext i8 %i.amk to i32                  ; 2 uses
  %i.amm = lshr i32 %i.amj, %i.aml
  %i.amn = zext nneg i32 %i.amm to i64
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amf, i64 %i.amn
  %i.amp = load i8, ptr %i.amo, align 1
  %i.amq = zext i8 %i.amp to i16
  %i.amr = load i8, ptr %i.ajg, align 1           ; 2 uses
  %i.ams = zext i8 %i.amr to i64
  %i.amt = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ams
  %i.amu = load ptr, ptr %i.amt, align 8
  %i.amv = load i32, ptr %i.ajh, align 4
  %i.amw = and i32 %i.amv, %i.amh
  %i.amx = load i8, ptr %i.aji, align 1
  %i.amy = zext i8 %i.amx to i32                  ; 2 uses
  %i.amz = lshr i32 %i.amw, %i.amy
  %i.ana = zext nneg i32 %i.amz to i64
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amu, i64 %i.ana
  %i.anc = load i8, ptr %i.anb, align 1
  %i.and = zext i8 %i.anc to i16
  %i.ane = load i8, ptr %i.ajj, align 2           ; 2 uses
  %i.anf = zext i8 %i.ane to i64
  %i.ang = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.anf
  %i.anh = load ptr, ptr %i.ang, align 8
  %i.ani = load i32, ptr %i.ajk, align 4
  %i.anj = and i32 %i.ani, %i.amh
  %i.ank = load i8, ptr %i.ajl, align 2
  %i.anl = zext i8 %i.ank to i32                  ; 2 uses
  %i.anm = lshr i32 %i.anj, %i.anl
  %i.ann = zext nneg i32 %i.anm to i64
  %i.ano = getelementptr inbounds nuw i8, ptr %i.anh, i64 %i.ann
  %i.anp = load i8, ptr %i.ano, align 1
  %i.anq = zext i8 %i.anp to i16
  %.lhs.trunc1985 = mul nuw i16 %i.amq, %i.ajm
  %i.anr = udiv i16 %.lhs.trunc1985, 255
  %.zext1986 = zext nneg i16 %i.anr to i32
  %.lhs.trunc1987 = mul nuw i16 %i.and, %i.ajn
  %i.ans = udiv i16 %.lhs.trunc1987, 255
  %.zext1988 = zext nneg i16 %i.ans to i32
  %.lhs.trunc1989 = mul nuw i16 %i.anq, %i.ajo
  %i.ant = udiv i16 %.lhs.trunc1989, 255
  %.zext1990 = zext nneg i16 %i.ant to i32
  %i.anu = zext i8 %i.amc to i32
  %i.anv = sub nsw i32 8, %i.anu
  %i.anw = lshr i32 %.zext1986, %i.anv
  %i.anx = shl i32 %i.anw, %i.aml
  %i.any = zext i8 %i.amr to i32
  %i.anz = sub nsw i32 8, %i.any
  %i.aoa = lshr i32 %.zext1988, %i.anz
  %i.aob = shl i32 %i.aoa, %i.amy
  %i.aoc = or i32 %i.aob, %i.anx
  %i.aod = zext i8 %i.ane to i32
  %i.aoe = sub nsw i32 8, %i.aod
  %i.aof = lshr i32 %.zext1990, %i.aoe
  %i.aog = shl i32 %i.aof, %i.anl
  %i.aoh = load i32, ptr %i.ajp, align 4
  %i.aoi = or i32 %i.aoc, %i.aoh
  %i.aoj = or i32 %i.aoi, %i.aog
  %i.aok = trunc i32 %i.aoj to i16
  store i16 %i.aok, ptr %.21869, align 2
  %i.aol = getelementptr inbounds nuw i8, ptr %.21869, i64 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.z
  %.21874 = phi i32 [ %.11873, %bb.z ], [ %i.ajb, %bb.x ]
  %.31870 = phi ptr [ %i.aol, %bb.z ], [ %.018672118, %bb.x ] ; 3 uses
  %i.aom = load i8, ptr %i.ajd, align 4           ; 2 uses
  %i.aon = zext i8 %i.aom to i64
  %i.aoo = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aon
  %i.aop = load ptr, ptr %i.aoo, align 8
  %i.aoq = load i16, ptr %.31870, align 2
  %i.aor = zext i16 %i.aoq to i32                 ; 3 uses
  %i.aos = load i32, ptr %i.aje, align 4
  %i.aot = and i32 %i.aos, %i.aor
  %i.aou = load i8, ptr %i.ajf, align 4
  %i.aov = zext i8 %i.aou to i32                  ; 2 uses
  %i.aow = lshr i32 %i.aot, %i.aov
  %i.aox = zext nneg i32 %i.aow to i64
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aop, i64 %i.aox
  %i.aoz = load i8, ptr %i.aoy, align 1
  %i.apa = zext i8 %i.aoz to i16
  %i.apb = load i8, ptr %i.ajg, align 1           ; 2 uses
  %i.apc = zext i8 %i.apb to i64
  %i.apd = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.apc
  %i.ape = load ptr, ptr %i.apd, align 8
  %i.apf = load i32, ptr %i.ajh, align 4
  %i.apg = and i32 %i.apf, %i.aor
  %i.aph = load i8, ptr %i.aji, align 1
  %i.api = zext i8 %i.aph to i32                  ; 2 uses
  %i.apj = lshr i32 %i.apg, %i.api
  %i.apk = zext nneg i32 %i.apj to i64
  %i.apl = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.apk
  %i.apm = load i8, ptr %i.apl, align 1
  %i.apn = zext i8 %i.apm to i16
  %i.apo = load i8, ptr %i.ajj, align 2           ; 2 uses
  %i.app = zext i8 %i.apo to i64
  %i.apq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.app
  %i.apr = load ptr, ptr %i.apq, align 8
  %i.aps = load i32, ptr %i.ajk, align 4
  %i.apt = and i32 %i.aps, %i.aor
  %i.apu = load i8, ptr %i.ajl, align 2
  %i.apv = zext i8 %i.apu to i32                  ; 2 uses
  %i.apw = lshr i32 %i.apt, %i.apv
  %i.apx = zext nneg i32 %i.apw to i64
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apr, i64 %i.apx
  %i.apz = load i8, ptr %i.apy, align 1
  %i.aqa = zext i8 %i.apz to i16
  %.lhs.trunc1991 = mul nuw i16 %i.apa, %i.ajm
  %i.aqb = udiv i16 %.lhs.trunc1991, 255
  %.zext1992 = zext nneg i16 %i.aqb to i32
  %.lhs.trunc1993 = mul nuw i16 %i.apn, %i.ajn
  %i.aqc = udiv i16 %.lhs.trunc1993, 255
  %.zext1994 = zext nneg i16 %i.aqc to i32
  %.lhs.trunc1995 = mul nuw i16 %i.aqa, %i.ajo
  %i.aqd = udiv i16 %.lhs.trunc1995, 255
  %.zext1996 = zext nneg i16 %i.aqd to i32
  %i.aqe = zext i8 %i.aom to i32
  %i.aqf = sub nsw i32 8, %i.aqe
  %i.aqg = lshr i32 %.zext1992, %i.aqf
  %i.aqh = shl i32 %i.aqg, %i.aov
  %i.aqi = zext i8 %i.apb to i32
  %i.aqj = sub nsw i32 8, %i.aqi
  %i.aqk = lshr i32 %.zext1994, %i.aqj
  %i.aql = shl i32 %i.aqk, %i.api
  %i.aqm = or i32 %i.aql, %i.aqh
  %i.aqn = zext i8 %i.apo to i32
  %i.aqo = sub nsw i32 8, %i.aqn
  %i.aqp = lshr i32 %.zext1996, %i.aqo
  %i.aqq = shl i32 %i.aqp, %i.apv
  %i.aqr = load i32, ptr %i.ajp, align 4
  %i.aqs = or i32 %i.aqm, %i.aqr
  %i.aqt = or i32 %i.aqs, %i.aqq
  %i.aqu = trunc i32 %i.aqt to i16
  store i16 %i.aqu, ptr %.31870, align 2
  %i.aqv = getelementptr inbounds nuw i8, ptr %.31870, i64 2
  br label %bb.ab

.unreachabledefault2212:                          ; preds = %bb.x
  unreachable

bb.ab:                                            ; preds = %bb.x, %bb.aa
  %.31875 = phi i32 [ %.21874, %bb.aa ], [ %i.ajb, %bb.x ] ; 2 uses
  %.41871 = phi ptr [ %i.aqv, %bb.aa ], [ %.018672118, %bb.x ] ; 3 uses
  %i.aqw = load i8, ptr %i.ajd, align 4           ; 2 uses
  %i.aqx = zext i8 %i.aqw to i64
  %i.aqy = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aqx
  %i.aqz = load ptr, ptr %i.aqy, align 8
  %i.ara = load i16, ptr %.41871, align 2
  %i.arb = zext i16 %i.ara to i32                 ; 3 uses
  %i.arc = load i32, ptr %i.aje, align 4
  %i.ard = and i32 %i.arc, %i.arb
  %i.are = load i8, ptr %i.ajf, align 4
  %i.arf = zext i8 %i.are to i32                  ; 2 uses
  %i.arg = lshr i32 %i.ard, %i.arf
  %i.arh = zext nneg i32 %i.arg to i64
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aqz, i64 %i.arh
  %i.arj = load i8, ptr %i.ari, align 1
  %i.ark = zext i8 %i.arj to i16
  %i.arl = load i8, ptr %i.ajg, align 1           ; 2 uses
  %i.arm = zext i8 %i.arl to i64
  %i.arn = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.arm
  %i.aro = load ptr, ptr %i.arn, align 8
  %i.arp = load i32, ptr %i.ajh, align 4
  %i.arq = and i32 %i.arp, %i.arb
  %i.arr = load i8, ptr %i.aji, align 1
  %i.ars = zext i8 %i.arr to i32                  ; 2 uses
  %i.art = lshr i32 %i.arq, %i.ars
  %i.aru = zext nneg i32 %i.art to i64
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aro, i64 %i.aru
  %i.arw = load i8, ptr %i.arv, align 1
  %i.arx = zext i8 %i.arw to i16
  %i.ary = load i8, ptr %i.ajj, align 2           ; 2 uses
  %i.arz = zext i8 %i.ary to i64
  %i.asa = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.arz
  %i.asb = load ptr, ptr %i.asa, align 8
  %i.asc = load i32, ptr %i.ajk, align 4
  %i.asd = and i32 %i.asc, %i.arb
  %i.ase = load i8, ptr %i.ajl, align 2
  %i.asf = zext i8 %i.ase to i32                  ; 2 uses
  %i.asg = lshr i32 %i.asd, %i.asf
  %i.ash = zext nneg i32 %i.asg to i64
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asb, i64 %i.ash
  %i.asj = load i8, ptr %i.asi, align 1
  %i.ask = zext i8 %i.asj to i16
  %.lhs.trunc1997 = mul nuw i16 %i.ark, %i.ajm
  %i.asl = udiv i16 %.lhs.trunc1997, 255
  %.zext1998 = zext nneg i16 %i.asl to i32
  %.lhs.trunc1999 = mul nuw i16 %i.arx, %i.ajn
  %i.asm = udiv i16 %.lhs.trunc1999, 255
  %.zext2000 = zext nneg i16 %i.asm to i32
  %.lhs.trunc2001 = mul nuw i16 %i.ask, %i.ajo
  %i.asn = udiv i16 %.lhs.trunc2001, 255
  %.zext2002 = zext nneg i16 %i.asn to i32
  %i.aso = zext i8 %i.aqw to i32
  %i.asp = sub nsw i32 8, %i.aso
  %i.asq = lshr i32 %.zext1998, %i.asp
  %i.asr = shl i32 %i.asq, %i.arf
  %i.ass = zext i8 %i.arl to i32
  %i.ast = sub nsw i32 8, %i.ass
  %i.asu = lshr i32 %.zext2000, %i.ast
  %i.asv = shl i32 %i.asu, %i.ars
  %i.asw = or i32 %i.asv, %i.asr
  %i.asx = zext i8 %i.ary to i32
  %i.asy = sub nsw i32 8, %i.asx
  %i.asz = lshr i32 %.zext2002, %i.asy
  %i.ata = shl i32 %i.asz, %i.asf
  %i.atb = load i32, ptr %i.ajp, align 4
  %i.atc = or i32 %i.asw, %i.atb
  %i.atd = or i32 %i.atc, %i.ata
  %i.ate = trunc i32 %i.atd to i16
  store i16 %i.ate, ptr %.41871, align 2
  %i.atf = getelementptr inbounds nuw i8, ptr %.41871, i64 2 ; 2 uses
  %i.atg = add nsw i32 %.31875, -1
  %i.ath = icmp sgt i32 %.31875, 1
  br i1 %i.ath, label %bb.y, label %bb.ac, !llvm.loop !58

bb.ac:                                            ; preds = %bb.ab
  %i.ati = getelementptr inbounds [2 x i8], ptr %i.atf, i64 %i.ajq
  %.not1976 = icmp eq i32 %i.ajr, 0
  br i1 %.not1976, label %.loopexit, label %bb.x, !llvm.loop !59

bb.ad:                                            ; preds = %.split
  %i.atj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.atk = load i32, ptr %i.atj, align 4          ; 2 uses
  %.not19752114 = icmp eq i32 %i.atk, 0
  br i1 %.not19752114, label %.loopexit, label %.lr.ph2116

.lr.ph2116:                                       ; preds = %bb.ad
  %i.atl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.atm = load ptr, ptr %i.atl, align 8
  %i.atn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ato = load i32, ptr %i.atn, align 4
  %i.atp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.atq = load i32, ptr %i.atp, align 8
  %i.atr = sdiv i32 %i.atq, 2                     ; 2 uses
  %i.ats = mul nsw i32 %i.ato, %i.atr
  %i.att = sext i32 %i.ats to i64
  %i.atu = getelementptr inbounds [2 x i8], ptr %i.atm, i64 %i.att
  %i.atv = load i32, ptr %1, align 4
  %i.atw = sext i32 %i.atv to i64
  %i.atx = getelementptr inbounds [2 x i8], ptr %i.atu, i64 %i.atw
  %i.aty = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.atz = load i32, ptr %i.aty, align 4          ; 3 uses
  %i.aua = sub nsw i32 %i.atr, %i.atz
  %i.aub = add nsw i32 %i.atz, 3
  %i.auc = sdiv i32 %i.aub, 4                     ; 4 uses
  %i.aud = and i32 %i.atz, 3
  %i.aue = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.aun = zext i8 %3 to i32                      ; 4 uses
  %i.auo = zext i8 %4 to i32                      ; 4 uses
  %i.aup = zext i8 %5 to i32                      ; 4 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.aur = sext i32 %i.aua to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph2116, %bb.aj
  %.in2147 = phi i32 [ %i.atk, %.lr.ph2116 ], [ %i.aus, %bb.aj ]
  %.018772115 = phi ptr [ %i.atx, %.lr.ph2116 ], [ %i.bgf, %bb.aj ] ; 4 uses
  %i.aus = add nsw i32 %.in2147, -1               ; 2 uses
  switch i32 %i.aud, label %.unreachabledefault2213 [
    i32 0, label %bb.af
    i32 3, label %bb.ag
    i32 2, label %bb.ah
    i32 1, label %bb.ai
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ai
  %.01882 = phi i32 [ %i.auc, %bb.ae ], [ %i.bgd, %bb.ai ]
  %.11878 = phi ptr [ %.018772115, %bb.ae ], [ %i.bgc, %bb.ai ] ; 3 uses
  %i.aut = load i8, ptr %i.aue, align 4           ; 2 uses
  %i.auu = zext i8 %i.aut to i64
  %i.auv = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.auu
  %i.auw = load ptr, ptr %i.auv, align 8
  %i.aux = load i16, ptr %.11878, align 2
  %i.auy = zext i16 %i.aux to i32                 ; 3 uses
  %i.auz = load i32, ptr %i.auf, align 4
  %i.ava = and i32 %i.auz, %i.auy
  %i.avb = load i8, ptr %i.aug, align 4
  %i.avc = zext i8 %i.avb to i32                  ; 2 uses
  %i.avd = lshr i32 %i.ava, %i.avc
  %i.ave = zext nneg i32 %i.avd to i64
  %i.avf = getelementptr inbounds nuw i8, ptr %i.auw, i64 %i.ave
  %i.avg = load i8, ptr %i.avf, align 1
  %i.avh = zext i8 %i.avg to i32                  ; 2 uses
  %i.avi = load i8, ptr %i.auh, align 1           ; 2 uses
  %i.avj = zext i8 %i.avi to i64
  %i.avk = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.avj
  %i.avl = load ptr, ptr %i.avk, align 8
  %i.avm = load i32, ptr %i.aui, align 4
  %i.avn = and i32 %i.avm, %i.auy
  %i.avo = load i8, ptr %i.auj, align 1
  %i.avp = zext i8 %i.avo to i32                  ; 2 uses
  %i.avq = lshr i32 %i.avn, %i.avp
  %i.avr = zext nneg i32 %i.avq to i64
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avl, i64 %i.avr
  %i.avt = load i8, ptr %i.avs, align 1
  %i.avu = zext i8 %i.avt to i32                  ; 2 uses
  %i.avv = load i8, ptr %i.auk, align 2           ; 2 uses
  %i.avw = zext i8 %i.avv to i64
  %i.avx = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.avw
  %i.avy = load ptr, ptr %i.avx, align 8
  %i.avz = load i32, ptr %i.aul, align 4
  %i.awa = and i32 %i.avz, %i.auy
  %i.awb = load i8, ptr %i.aum, align 2
  %i.awc = zext i8 %i.awb to i32                  ; 2 uses
  %i.awd = lshr i32 %i.awa, %i.awc
  %i.awe = zext nneg i32 %i.awd to i64
  %i.awf = getelementptr inbounds nuw i8, ptr %i.avy, i64 %i.awe
  %i.awg = load i8, ptr %i.awf, align 1
  %i.awh = zext i8 %i.awg to i32                  ; 2 uses
  %i.awi = mul nuw nsw i32 %i.avh, %i.aun
  %.lhs.trunc2003 = trunc nuw i32 %i.awi to i16
  %i.awj = udiv i16 %.lhs.trunc2003, 255
  %.zext2004 = zext nneg i16 %i.awj to i32
  %i.awk = mul nuw nsw i32 %i.avh, %i.d
  %i.awl = udiv i32 %i.awk, 255
  %i.awm = add nuw nsw i32 %i.awl, %.zext2004
  %spec.store.select64 = tail call i32 @llvm.umin.i32(i32 %i.awm, i32 255)
  %i.awn = mul nuw nsw i32 %i.avu, %i.auo
  %.lhs.trunc2005 = trunc nuw i32 %i.awn to i16
  %i.awo = udiv i16 %.lhs.trunc2005, 255
  %.zext2006 = zext nneg i16 %i.awo to i32
  %i.awp = mul nuw nsw i32 %i.avu, %i.d
  %i.awq = udiv i32 %i.awp, 255
  %i.awr = add nuw nsw i32 %i.awq, %.zext2006
  %spec.store.select19 = tail call i32 @llvm.umin.i32(i32 %i.awr, i32 255)
  %i.aws = mul nuw nsw i32 %i.awh, %i.aup
  %.lhs.trunc2007 = trunc nuw i32 %i.aws to i16
  %i.awt = udiv i16 %.lhs.trunc2007, 255
  %.zext2008 = zext nneg i16 %i.awt to i32
  %i.awu = mul nuw nsw i32 %i.awh, %i.d
  %i.awv = udiv i32 %i.awu, 255
  %i.aww = add nuw nsw i32 %i.awv, %.zext2008
  %spec.store.select85 = tail call i32 @llvm.umin.i32(i32 %i.aww, i32 255)
  %i.awx = zext i8 %i.aut to i32
  %i.awy = sub nsw i32 8, %i.awx
  %i.awz = lshr i32 %spec.store.select64, %i.awy
  %i.axa = shl i32 %i.awz, %i.avc
  %i.axb = zext i8 %i.avi to i32
  %i.axc = sub nsw i32 8, %i.axb
  %i.axd = lshr i32 %spec.store.select19, %i.axc
  %i.axe = shl i32 %i.axd, %i.avp
  %i.axf = zext i8 %i.avv to i32
  %i.axg = sub nsw i32 8, %i.axf
  %i.axh = lshr i32 %spec.store.select85, %i.axg
  %i.axi = shl i32 %i.axh, %i.awc
  %i.axj = load i32, ptr %i.auq, align 4
  %i.axk = or i32 %i.axj, %i.axa
  %i.axl = or i32 %i.axk, %i.axe
  %i.axm = or i32 %i.axl, %i.axi
  %i.axn = trunc i32 %i.axm to i16
  store i16 %i.axn, ptr %.11878, align 2
  %i.axo = getelementptr inbounds nuw i8, ptr %.11878, i64 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.11883 = phi i32 [ %.01882, %bb.af ], [ %i.auc, %bb.ae ]
  %.21879 = phi ptr [ %i.axo, %bb.af ], [ %.018772115, %bb.ae ] ; 3 uses
  %i.axp = load i8, ptr %i.aue, align 4           ; 2 uses
  %i.axq = zext i8 %i.axp to i64
  %i.axr = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.axq
  %i.axs = load ptr, ptr %i.axr, align 8
  %i.axt = load i16, ptr %.21879, align 2
  %i.axu = zext i16 %i.axt to i32                 ; 3 uses
  %i.axv = load i32, ptr %i.auf, align 4
  %i.axw = and i32 %i.axv, %i.axu
  %i.axx = load i8, ptr %i.aug, align 4
  %i.axy = zext i8 %i.axx to i32                  ; 2 uses
  %i.axz = lshr i32 %i.axw, %i.axy
  %i.aya = zext nneg i32 %i.axz to i64
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axs, i64 %i.aya
  %i.ayc = load i8, ptr %i.ayb, align 1
  %i.ayd = zext i8 %i.ayc to i32                  ; 2 uses
  %i.aye = load i8, ptr %i.auh, align 1           ; 2 uses
  %i.ayf = zext i8 %i.aye to i64
  %i.ayg = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ayf
  %i.ayh = load ptr, ptr %i.ayg, align 8
  %i.ayi = load i32, ptr %i.aui, align 4
  %i.ayj = and i32 %i.ayi, %i.axu
  %i.ayk = load i8, ptr %i.auj, align 1
  %i.ayl = zext i8 %i.ayk to i32                  ; 2 uses
  %i.aym = lshr i32 %i.ayj, %i.ayl
  %i.ayn = zext nneg i32 %i.aym to i64
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayh, i64 %i.ayn
  %i.ayp = load i8, ptr %i.ayo, align 1
  %i.ayq = zext i8 %i.ayp to i32                  ; 2 uses
  %i.ayr = load i8, ptr %i.auk, align 2           ; 2 uses
  %i.ays = zext i8 %i.ayr to i64
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ays
  %i.ayu = load ptr, ptr %i.ayt, align 8
  %i.ayv = load i32, ptr %i.aul, align 4
  %i.ayw = and i32 %i.ayv, %i.axu
  %i.ayx = load i8, ptr %i.aum, align 2
  %i.ayy = zext i8 %i.ayx to i32                  ; 2 uses
  %i.ayz = lshr i32 %i.ayw, %i.ayy
  %i.aza = zext nneg i32 %i.ayz to i64
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayu, i64 %i.aza
  %i.azc = load i8, ptr %i.azb, align 1
  %i.azd = zext i8 %i.azc to i32                  ; 2 uses
  %i.aze = mul nuw nsw i32 %i.ayd, %i.aun
  %.lhs.trunc2009 = trunc nuw i32 %i.aze to i16
  %i.azf = udiv i16 %.lhs.trunc2009, 255
  %.zext2010 = zext nneg i16 %i.azf to i32
  %i.azg = mul nuw nsw i32 %i.ayd, %i.d
  %i.azh = udiv i32 %i.azg, 255
  %i.azi = add nuw nsw i32 %i.azh, %.zext2010
  %spec.store.select20 = tail call i32 @llvm.umin.i32(i32 %i.azi, i32 255)
  %i.azj = mul nuw nsw i32 %i.ayq, %i.auo
  %.lhs.trunc2011 = trunc nuw i32 %i.azj to i16
  %i.azk = udiv i16 %.lhs.trunc2011, 255
  %.zext2012 = zext nneg i16 %i.azk to i32
  %i.azl = mul nuw nsw i32 %i.ayq, %i.d
  %i.azm = udiv i32 %i.azl, 255
  %i.azn = add nuw nsw i32 %i.azm, %.zext2012
  %spec.store.select65 = tail call i32 @llvm.umin.i32(i32 %i.azn, i32 255)
  %i.azo = mul nuw nsw i32 %i.azd, %i.aup
  %.lhs.trunc2013 = trunc nuw i32 %i.azo to i16
  %i.azp = udiv i16 %.lhs.trunc2013, 255
  %.zext2014 = zext nneg i16 %i.azp to i32
  %i.azq = mul nuw nsw i32 %i.azd, %i.d
  %i.azr = udiv i32 %i.azq, 255
  %i.azs = add nuw nsw i32 %i.azr, %.zext2014
  %spec.store.select21 = tail call i32 @llvm.umin.i32(i32 %i.azs, i32 255)
  %i.azt = zext i8 %i.axp to i32
  %i.azu = sub nsw i32 8, %i.azt
  %i.azv = lshr i32 %spec.store.select20, %i.azu
  %i.azw = shl i32 %i.azv, %i.axy
  %i.azx = zext i8 %i.aye to i32
  %i.azy = sub nsw i32 8, %i.azx
  %i.azz = lshr i32 %spec.store.select65, %i.azy
  %i.baa = shl i32 %i.azz, %i.ayl
  %i.bab = zext i8 %i.ayr to i32
  %i.bac = sub nsw i32 8, %i.bab
  %i.bad = lshr i32 %spec.store.select21, %i.bac
  %i.bae = shl i32 %i.bad, %i.ayy
  %i.baf = load i32, ptr %i.auq, align 4
  %i.bag = or i32 %i.baf, %i.azw
  %i.bah = or i32 %i.bag, %i.baa
  %i.bai = or i32 %i.bah, %i.bae
  %i.baj = trunc i32 %i.bai to i16
  store i16 %i.baj, ptr %.21879, align 2
  %i.bak = getelementptr inbounds nuw i8, ptr %.21879, i64 2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.ag
  %.21884 = phi i32 [ %.11883, %bb.ag ], [ %i.auc, %bb.ae ]
  %.31880 = phi ptr [ %i.bak, %bb.ag ], [ %.018772115, %bb.ae ] ; 3 uses
  %i.bal = load i8, ptr %i.aue, align 4           ; 2 uses
  %i.bam = zext i8 %i.bal to i64
  %i.ban = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bam
  %i.bao = load ptr, ptr %i.ban, align 8
  %i.bap = load i16, ptr %.31880, align 2
  %i.baq = zext i16 %i.bap to i32                 ; 3 uses
  %i.bar = load i32, ptr %i.auf, align 4
  %i.bas = and i32 %i.bar, %i.baq
  %i.bat = load i8, ptr %i.aug, align 4
  %i.bau = zext i8 %i.bat to i32                  ; 2 uses
  %i.bav = lshr i32 %i.bas, %i.bau
  %i.baw = zext nneg i32 %i.bav to i64
  %i.bax = getelementptr inbounds nuw i8, ptr %i.bao, i64 %i.baw
  %i.bay = load i8, ptr %i.bax, align 1
  %i.baz = zext i8 %i.bay to i32                  ; 2 uses
  %i.bba = load i8, ptr %i.auh, align 1           ; 2 uses
  %i.bbb = zext i8 %i.bba to i64
  %i.bbc = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bbb
  %i.bbd = load ptr, ptr %i.bbc, align 8
  %i.bbe = load i32, ptr %i.aui, align 4
  %i.bbf = and i32 %i.bbe, %i.baq
  %i.bbg = load i8, ptr %i.auj, align 1
  %i.bbh = zext i8 %i.bbg to i32                  ; 2 uses
  %i.bbi = lshr i32 %i.bbf, %i.bbh
  %i.bbj = zext nneg i32 %i.bbi to i64
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbd, i64 %i.bbj
  %i.bbl = load i8, ptr %i.bbk, align 1
  %i.bbm = zext i8 %i.bbl to i32                  ; 2 uses
  %i.bbn = load i8, ptr %i.auk, align 2           ; 2 uses
  %i.bbo = zext i8 %i.bbn to i64
  %i.bbp = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bbo
  %i.bbq = load ptr, ptr %i.bbp, align 8
  %i.bbr = load i32, ptr %i.aul, align 4
  %i.bbs = and i32 %i.bbr, %i.baq
  %i.bbt = load i8, ptr %i.aum, align 2
  %i.bbu = zext i8 %i.bbt to i32                  ; 2 uses
  %i.bbv = lshr i32 %i.bbs, %i.bbu
  %i.bbw = zext nneg i32 %i.bbv to i64
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbq, i64 %i.bbw
  %i.bby = load i8, ptr %i.bbx, align 1
  %i.bbz = zext i8 %i.bby to i32                  ; 2 uses
  %i.bca = mul nuw nsw i32 %i.baz, %i.aun
  %.lhs.trunc2015 = trunc nuw i32 %i.bca to i16
  %i.bcb = udiv i16 %.lhs.trunc2015, 255
  %.zext2016 = zext nneg i16 %i.bcb to i32
  %i.bcc = mul nuw nsw i32 %i.baz, %i.d
  %i.bcd = udiv i32 %i.bcc, 255
  %i.bce = add nuw nsw i32 %i.bcd, %.zext2016
  %spec.store.select22 = tail call i32 @llvm.umin.i32(i32 %i.bce, i32 255)
  %i.bcf = mul nuw nsw i32 %i.bbm, %i.auo
  %.lhs.trunc2017 = trunc nuw i32 %i.bcf to i16
  %i.bcg = udiv i16 %.lhs.trunc2017, 255
  %.zext2018 = zext nneg i16 %i.bcg to i32
  %i.bch = mul nuw nsw i32 %i.bbm, %i.d
  %i.bci = udiv i32 %i.bch, 255
  %i.bcj = add nuw nsw i32 %i.bci, %.zext2018
  %spec.store.select66 = tail call i32 @llvm.umin.i32(i32 %i.bcj, i32 255)
  %i.bck = mul nuw nsw i32 %i.bbz, %i.aup
  %.lhs.trunc2019 = trunc nuw i32 %i.bck to i16
  %i.bcl = udiv i16 %.lhs.trunc2019, 255
  %.zext2020 = zext nneg i16 %i.bcl to i32
  %i.bcm = mul nuw nsw i32 %i.bbz, %i.d
  %i.bcn = udiv i32 %i.bcm, 255
  %i.bco = add nuw nsw i32 %i.bcn, %.zext2020
  %spec.store.select23 = tail call i32 @llvm.umin.i32(i32 %i.bco, i32 255)
  %i.bcp = zext i8 %i.bal to i32
  %i.bcq = sub nsw i32 8, %i.bcp
  %i.bcr = lshr i32 %spec.store.select22, %i.bcq
  %i.bcs = shl i32 %i.bcr, %i.bau
  %i.bct = zext i8 %i.bba to i32
  %i.bcu = sub nsw i32 8, %i.bct
  %i.bcv = lshr i32 %spec.store.select66, %i.bcu
  %i.bcw = shl i32 %i.bcv, %i.bbh
  %i.bcx = zext i8 %i.bbn to i32
  %i.bcy = sub nsw i32 8, %i.bcx
  %i.bcz = lshr i32 %spec.store.select23, %i.bcy
  %i.bda = shl i32 %i.bcz, %i.bbu
  %i.bdb = load i32, ptr %i.auq, align 4
  %i.bdc = or i32 %i.bdb, %i.bcs
  %i.bdd = or i32 %i.bdc, %i.bcw
  %i.bde = or i32 %i.bdd, %i.bda
  %i.bdf = trunc i32 %i.bde to i16
  store i16 %i.bdf, ptr %.31880, align 2
  %i.bdg = getelementptr inbounds nuw i8, ptr %.31880, i64 2
  br label %bb.ai

.unreachabledefault2213:                          ; preds = %bb.ae
  unreachable

bb.ai:                                            ; preds = %bb.ae, %bb.ah
  %.31885 = phi i32 [ %.21884, %bb.ah ], [ %i.auc, %bb.ae ] ; 2 uses
  %.41881 = phi ptr [ %i.bdg, %bb.ah ], [ %.018772115, %bb.ae ] ; 3 uses
  %i.bdh = load i8, ptr %i.aue, align 4           ; 2 uses
  %i.bdi = zext i8 %i.bdh to i64
  %i.bdj = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bdi
  %i.bdk = load ptr, ptr %i.bdj, align 8
  %i.bdl = load i16, ptr %.41881, align 2
  %i.bdm = zext i16 %i.bdl to i32                 ; 3 uses
  %i.bdn = load i32, ptr %i.auf, align 4
  %i.bdo = and i32 %i.bdn, %i.bdm
  %i.bdp = load i8, ptr %i.aug, align 4
  %i.bdq = zext i8 %i.bdp to i32                  ; 2 uses
  %i.bdr = lshr i32 %i.bdo, %i.bdq
  %i.bds = zext nneg i32 %i.bdr to i64
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdk, i64 %i.bds
  %i.bdu = load i8, ptr %i.bdt, align 1
  %i.bdv = zext i8 %i.bdu to i32                  ; 2 uses
  %i.bdw = load i8, ptr %i.auh, align 1           ; 2 uses
  %i.bdx = zext i8 %i.bdw to i64
  %i.bdy = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bdx
  %i.bdz = load ptr, ptr %i.bdy, align 8
  %i.bea = load i32, ptr %i.aui, align 4
  %i.beb = and i32 %i.bea, %i.bdm
  %i.bec = load i8, ptr %i.auj, align 1
  %i.bed = zext i8 %i.bec to i32                  ; 2 uses
  %i.bee = lshr i32 %i.beb, %i.bed
  %i.bef = zext nneg i32 %i.bee to i64
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bdz, i64 %i.bef
  %i.beh = load i8, ptr %i.beg, align 1
  %i.bei = zext i8 %i.beh to i32                  ; 2 uses
  %i.bej = load i8, ptr %i.auk, align 2           ; 2 uses
  %i.bek = zext i8 %i.bej to i64
  %i.bel = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bek
  %i.bem = load ptr, ptr %i.bel, align 8
  %i.ben = load i32, ptr %i.aul, align 4
  %i.beo = and i32 %i.ben, %i.bdm
  %i.bep = load i8, ptr %i.aum, align 2
  %i.beq = zext i8 %i.bep to i32                  ; 2 uses
  %i.ber = lshr i32 %i.beo, %i.beq
  %i.bes = zext nneg i32 %i.ber to i64
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bem, i64 %i.bes
  %i.beu = load i8, ptr %i.bet, align 1
  %i.bev = zext i8 %i.beu to i32                  ; 2 uses
  %i.bew = mul nuw nsw i32 %i.bdv, %i.aun
  %.lhs.trunc2021 = trunc nuw i32 %i.bew to i16
  %i.bex = udiv i16 %.lhs.trunc2021, 255
  %.zext2022 = zext nneg i16 %i.bex to i32
  %i.bey = mul nuw nsw i32 %i.bdv, %i.d
  %i.bez = udiv i32 %i.bey, 255
  %i.bfa = add nuw nsw i32 %i.bez, %.zext2022
  %spec.store.select24 = tail call i32 @llvm.umin.i32(i32 %i.bfa, i32 255)
  %i.bfb = mul nuw nsw i32 %i.bei, %i.auo
  %.lhs.trunc2023 = trunc nuw i32 %i.bfb to i16
  %i.bfc = udiv i16 %.lhs.trunc2023, 255
  %.zext2024 = zext nneg i16 %i.bfc to i32
  %i.bfd = mul nuw nsw i32 %i.bei, %i.d
  %i.bfe = udiv i32 %i.bfd, 255
  %i.bff = add nuw nsw i32 %i.bfe, %.zext2024
  %spec.store.select67 = tail call i32 @llvm.umin.i32(i32 %i.bff, i32 255)
  %i.bfg = mul nuw nsw i32 %i.bev, %i.aup
  %.lhs.trunc2025 = trunc nuw i32 %i.bfg to i16
  %i.bfh = udiv i16 %.lhs.trunc2025, 255
  %.zext2026 = zext nneg i16 %i.bfh to i32
  %i.bfi = mul nuw nsw i32 %i.bev, %i.d
  %i.bfj = udiv i32 %i.bfi, 255
  %i.bfk = add nuw nsw i32 %i.bfj, %.zext2026
  %spec.store.select25 = tail call i32 @llvm.umin.i32(i32 %i.bfk, i32 255)
  %i.bfl = zext i8 %i.bdh to i32
  %i.bfm = sub nsw i32 8, %i.bfl
  %i.bfn = lshr i32 %spec.store.select24, %i.bfm
  %i.bfo = shl i32 %i.bfn, %i.bdq
  %i.bfp = zext i8 %i.bdw to i32
  %i.bfq = sub nsw i32 8, %i.bfp
  %i.bfr = lshr i32 %spec.store.select67, %i.bfq
  %i.bfs = shl i32 %i.bfr, %i.bed
  %i.bft = zext i8 %i.bej to i32
  %i.bfu = sub nsw i32 8, %i.bft
  %i.bfv = lshr i32 %spec.store.select25, %i.bfu
  %i.bfw = shl i32 %i.bfv, %i.beq
  %i.bfx = load i32, ptr %i.auq, align 4
  %i.bfy = or i32 %i.bfx, %i.bfo
  %i.bfz = or i32 %i.bfy, %i.bfs
  %i.bga = or i32 %i.bfz, %i.bfw
  %i.bgb = trunc i32 %i.bga to i16
  store i16 %i.bgb, ptr %.41881, align 2
  %i.bgc = getelementptr inbounds nuw i8, ptr %.41881, i64 2 ; 2 uses
  %i.bgd = add nsw i32 %.31885, -1
  %i.bge = icmp sgt i32 %.31885, 1
  br i1 %i.bge, label %bb.af, label %bb.aj, !llvm.loop !60

bb.aj:                                            ; preds = %bb.ai
  %i.bgf = getelementptr inbounds [2 x i8], ptr %i.bgc, i64 %i.aur
  %.not1975 = icmp eq i32 %i.aus, 0
  br i1 %.not1975, label %.loopexit, label %bb.ae, !llvm.loop !61

bb.ak:                                            ; preds = %.split, %bb.b
  %i.bgg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bgh = load i32, ptr %i.bgg, align 4          ; 2 uses
  %.not19802129 = icmp eq i32 %i.bgh, 0
  br i1 %.not19802129, label %.loopexit, label %.lr.ph2131

.lr.ph2131:                                       ; preds = %bb.ak
  %i.bgi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bgj = load ptr, ptr %i.bgi, align 8
  %i.bgk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bgl = load i32, ptr %i.bgk, align 4
  %i.bgm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bgn = load i32, ptr %i.bgm, align 8
  %i.bgo = sdiv i32 %i.bgn, 2                     ; 2 uses
  %i.bgp = mul nsw i32 %i.bgl, %i.bgo
  %i.bgq = sext i32 %i.bgp to i64
  %i.bgr = getelementptr inbounds [2 x i8], ptr %i.bgj, i64 %i.bgq
  %i.bgs = load i32, ptr %1, align 4
  %i.bgt = sext i32 %i.bgs to i64
  %i.bgu = getelementptr inbounds [2 x i8], ptr %i.bgr, i64 %i.bgt
  %i.bgv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bgw = load i32, ptr %i.bgv, align 4          ; 3 uses
  %i.bgx = sub nsw i32 %i.bgo, %i.bgw
  %i.bgy = add nsw i32 %i.bgw, 3
  %i.bgz = sdiv i32 %i.bgy, 4                     ; 4 uses
  %i.bha = and i32 %i.bgw, 3
  %i.bhb = zext i8 %3 to i32                      ; 4 uses
  %i.bhc = zext i8 %4 to i32                      ; 4 uses
  %i.bhd = zext i8 %5 to i32                      ; 4 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.bhl = sext i32 %i.bgx to i64
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph2131, %bb.aq
  %.in2152 = phi i32 [ %i.bgh, %.lr.ph2131 ], [ %i.bhm, %bb.aq ]
  %.018962130 = phi ptr [ %i.bgu, %.lr.ph2131 ], [ %i.blt, %bb.aq ] ; 4 uses
  %i.bhm = add nsw i32 %.in2152, -1               ; 2 uses
  switch i32 %i.bha, label %.unreachabledefault2214 [
    i32 0, label %bb.am
    i32 3, label %bb.an
    i32 2, label %bb.ao
    i32 1, label %bb.ap
  ]

bb.am:                                            ; preds = %bb.al, %bb.ap
  %.01902 = phi i32 [ %i.bgz, %bb.al ], [ %i.blr, %bb.ap ]
  %.11897 = phi ptr [ %.018962130, %bb.al ], [ %i.blq, %bb.ap ] ; 2 uses
  %i.bhn = load i8, ptr %i.bhe, align 4
  %i.bho = zext i8 %i.bhn to i32
  %i.bhp = sub nsw i32 8, %i.bho
  %i.bhq = lshr i32 %i.bhb, %i.bhp
  %i.bhr = load i8, ptr %i.bhf, align 4
  %i.bhs = zext nneg i8 %i.bhr to i32
  %i.bht = shl i32 %i.bhq, %i.bhs
  %i.bhu = load i8, ptr %i.bhg, align 1
  %i.bhv = zext i8 %i.bhu to i32
  %i.bhw = sub nsw i32 8, %i.bhv
  %i.bhx = lshr i32 %i.bhc, %i.bhw
  %i.bhy = load i8, ptr %i.bhh, align 1
  %i.bhz = zext nneg i8 %i.bhy to i32
  %i.bia = shl i32 %i.bhx, %i.bhz
  %i.bib = or i32 %i.bia, %i.bht
  %i.bic = load i8, ptr %i.bhi, align 2
  %i.bid = zext i8 %i.bic to i32
  %i.bie = sub nsw i32 8, %i.bid
  %i.bif = lshr i32 %i.bhd, %i.bie
  %i.big = load i8, ptr %i.bhj, align 2
  %i.bih = zext nneg i8 %i.big to i32
  %i.bii = shl i32 %i.bif, %i.bih
  %i.bij = load i32, ptr %i.bhk, align 4
  %i.bik = or i32 %i.bib, %i.bij
  %i.bil = or i32 %i.bik, %i.bii
  %i.bim = trunc i32 %i.bil to i16
  store i16 %i.bim, ptr %.11897, align 2
  %i.bin = getelementptr inbounds nuw i8, ptr %.11897, i64 2
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %.11903 = phi i32 [ %.01902, %bb.am ], [ %i.bgz, %bb.al ]
  %.21898 = phi ptr [ %i.bin, %bb.am ], [ %.018962130, %bb.al ] ; 2 uses
  %i.bio = load i8, ptr %i.bhe, align 4
  %i.bip = zext i8 %i.bio to i32
  %i.biq = sub nsw i32 8, %i.bip
  %i.bir = lshr i32 %i.bhb, %i.biq
  %i.bis = load i8, ptr %i.bhf, align 4
  %i.bit = zext nneg i8 %i.bis to i32
  %i.biu = shl i32 %i.bir, %i.bit
  %i.biv = load i8, ptr %i.bhg, align 1
  %i.biw = zext i8 %i.biv to i32
  %i.bix = sub nsw i32 8, %i.biw
  %i.biy = lshr i32 %i.bhc, %i.bix
  %i.biz = load i8, ptr %i.bhh, align 1
  %i.bja = zext nneg i8 %i.biz to i32
  %i.bjb = shl i32 %i.biy, %i.bja
  %i.bjc = or i32 %i.bjb, %i.biu
  %i.bjd = load i8, ptr %i.bhi, align 2
  %i.bje = zext i8 %i.bjd to i32
  %i.bjf = sub nsw i32 8, %i.bje
  %i.bjg = lshr i32 %i.bhd, %i.bjf
  %i.bjh = load i8, ptr %i.bhj, align 2
  %i.bji = zext nneg i8 %i.bjh to i32
  %i.bjj = shl i32 %i.bjg, %i.bji
  %i.bjk = load i32, ptr %i.bhk, align 4
  %i.bjl = or i32 %i.bjc, %i.bjk
  %i.bjm = or i32 %i.bjl, %i.bjj
  %i.bjn = trunc i32 %i.bjm to i16
  store i16 %i.bjn, ptr %.21898, align 2
  %i.bjo = getelementptr inbounds nuw i8, ptr %.21898, i64 2
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.an
  %.21904 = phi i32 [ %.11903, %bb.an ], [ %i.bgz, %bb.al ]
  %.31899 = phi ptr [ %i.bjo, %bb.an ], [ %.018962130, %bb.al ] ; 2 uses
  %i.bjp = load i8, ptr %i.bhe, align 4
  %i.bjq = zext i8 %i.bjp to i32
  %i.bjr = sub nsw i32 8, %i.bjq
  %i.bjs = lshr i32 %i.bhb, %i.bjr
  %i.bjt = load i8, ptr %i.bhf, align 4
  %i.bju = zext nneg i8 %i.bjt to i32
  %i.bjv = shl i32 %i.bjs, %i.bju
  %i.bjw = load i8, ptr %i.bhg, align 1
  %i.bjx = zext i8 %i.bjw to i32
  %i.bjy = sub nsw i32 8, %i.bjx
  %i.bjz = lshr i32 %i.bhc, %i.bjy
  %i.bka = load i8, ptr %i.bhh, align 1
  %i.bkb = zext nneg i8 %i.bka to i32
  %i.bkc = shl i32 %i.bjz, %i.bkb
  %i.bkd = or i32 %i.bkc, %i.bjv
  %i.bke = load i8, ptr %i.bhi, align 2
  %i.bkf = zext i8 %i.bke to i32
  %i.bkg = sub nsw i32 8, %i.bkf
  %i.bkh = lshr i32 %i.bhd, %i.bkg
  %i.bki = load i8, ptr %i.bhj, align 2
  %i.bkj = zext nneg i8 %i.bki to i32
  %i.bkk = shl i32 %i.bkh, %i.bkj
  %i.bkl = load i32, ptr %i.bhk, align 4
  %i.bkm = or i32 %i.bkd, %i.bkl
  %i.bkn = or i32 %i.bkm, %i.bkk
  %i.bko = trunc i32 %i.bkn to i16
  store i16 %i.bko, ptr %.31899, align 2
  %i.bkp = getelementptr inbounds nuw i8, ptr %.31899, i64 2
  br label %bb.ap

.unreachabledefault2214:                          ; preds = %bb.al
  unreachable

bb.ap:                                            ; preds = %bb.al, %bb.ao
  %.31905 = phi i32 [ %.21904, %bb.ao ], [ %i.bgz, %bb.al ] ; 2 uses
  %.41900 = phi ptr [ %i.bkp, %bb.ao ], [ %.018962130, %bb.al ] ; 2 uses
  %i.bkq = load i8, ptr %i.bhe, align 4
  %i.bkr = zext i8 %i.bkq to i32
  %i.bks = sub nsw i32 8, %i.bkr
  %i.bkt = lshr i32 %i.bhb, %i.bks
  %i.bku = load i8, ptr %i.bhf, align 4
  %i.bkv = zext nneg i8 %i.bku to i32
  %i.bkw = shl i32 %i.bkt, %i.bkv
  %i.bkx = load i8, ptr %i.bhg, align 1
  %i.bky = zext i8 %i.bkx to i32
  %i.bkz = sub nsw i32 8, %i.bky
  %i.bla = lshr i32 %i.bhc, %i.bkz
  %i.blb = load i8, ptr %i.bhh, align 1
  %i.blc = zext nneg i8 %i.blb to i32
  %i.bld = shl i32 %i.bla, %i.blc
  %i.ble = or i32 %i.bld, %i.bkw
  %i.blf = load i8, ptr %i.bhi, align 2
  %i.blg = zext i8 %i.blf to i32
  %i.blh = sub nsw i32 8, %i.blg
  %i.bli = lshr i32 %i.bhd, %i.blh
  %i.blj = load i8, ptr %i.bhj, align 2
  %i.blk = zext nneg i8 %i.blj to i32
  %i.bll = shl i32 %i.bli, %i.blk
  %i.blm = load i32, ptr %i.bhk, align 4
  %i.bln = or i32 %i.ble, %i.blm
  %i.blo = or i32 %i.bln, %i.bll
  %i.blp = trunc i32 %i.blo to i16
  store i16 %i.blp, ptr %.41900, align 2
  %i.blq = getelementptr inbounds nuw i8, ptr %.41900, i64 2 ; 2 uses
  %i.blr = add nsw i32 %.31905, -1
  %i.bls = icmp sgt i32 %.31905, 1
  br i1 %i.bls, label %bb.am, label %bb.aq, !llvm.loop !62

bb.aq:                                            ; preds = %bb.ap
  %i.blt = getelementptr inbounds [2 x i8], ptr %i.blq, i64 %i.bhl
  %.not1980 = icmp eq i32 %i.bhm, 0
  br i1 %.not1980, label %.loopexit, label %bb.al, !llvm.loop !63

bb.ar:                                            ; preds = %bb.a
  %i.blu = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.blv = icmp eq i32 %i.blu, 1
  br i1 %i.blv, label %.split27, label %bb.cb

.split27:                                         ; preds = %bb.ar
  %i.blw = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  switch i32 %i.blw, label %bb.cb [
    i32 0, label %bb.as
    i32 4, label %bb.az
    i32 1, label %bb.bg
    i32 5, label %bb.bg
    i32 2, label %bb.bn
    i32 3, label %bb.bu
  ]

bb.as:                                            ; preds = %.split27
  %i.blx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bly = load i32, ptr %i.blx, align 4          ; 2 uses
  %.not19732108 = icmp eq i32 %i.bly, 0
  br i1 %.not19732108, label %.loopexit, label %.lr.ph2110

.lr.ph2110:                                       ; preds = %bb.as
  %i.blz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bma = load ptr, ptr %i.blz, align 8
  %i.bmb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bmc = load i32, ptr %i.bmb, align 4
  %i.bmd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bme = load i32, ptr %i.bmd, align 8
  %i.bmf = sdiv i32 %i.bme, 4                     ; 2 uses
  %i.bmg = mul nsw i32 %i.bmc, %i.bmf
  %i.bmh = sext i32 %i.bmg to i64
  %i.bmi = getelementptr inbounds [4 x i8], ptr %i.bma, i64 %i.bmh
  %i.bmj = load i32, ptr %1, align 4
  %i.bmk = sext i32 %i.bmj to i64
  %i.bml = getelementptr inbounds [4 x i8], ptr %i.bmi, i64 %i.bmk
  %i.bmm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bmn = load i32, ptr %i.bmm, align 4          ; 3 uses
  %i.bmo = sub nsw i32 %i.bmf, %i.bmn
  %i.bmp = add nsw i32 %i.bmn, 3
  %i.bmq = sdiv i32 %i.bmp, 4                     ; 4 uses
  %i.bmr = and i32 %i.bmn, 3
  %i.bms = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.bna = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.bnb = zext i8 %3 to i32                      ; 4 uses
  %i.bnc = zext i8 %4 to i32                      ; 4 uses
  %i.bnd = zext i8 %5 to i32                      ; 4 uses
  %i.bne = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.bnf = sext i32 %i.bmo to i64
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph2110, %bb.ay
  %.in2145 = phi i32 [ %i.bly, %.lr.ph2110 ], [ %i.bng, %bb.ay ]
  %.019072109 = phi ptr [ %i.bml, %.lr.ph2110 ], [ %i.bxn, %bb.ay ] ; 4 uses
  %i.bng = add nsw i32 %.in2145, -1               ; 2 uses
  switch i32 %i.bmr, label %.unreachabledefault2215 [
    i32 0, label %bb.au
    i32 3, label %bb.av
    i32 2, label %bb.aw
    i32 1, label %bb.ax
  ]

bb.au:                                            ; preds = %bb.at, %bb.ax
  %.01912 = phi i32 [ %i.bmq, %bb.at ], [ %i.bxl, %bb.ax ]
  %.11908 = phi ptr [ %.019072109, %bb.at ], [ %i.bxk, %bb.ax ] ; 3 uses
  %i.bnh = load i8, ptr %i.bms, align 4           ; 2 uses
  %i.bni = zext i8 %i.bnh to i64
  %i.bnj = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bni
  %i.bnk = load ptr, ptr %i.bnj, align 8
  %i.bnl = load i32, ptr %.11908, align 4         ; 3 uses
  %i.bnm = load i32, ptr %i.bmt, align 4
  %i.bnn = and i32 %i.bnm, %i.bnl
  %i.bno = load i8, ptr %i.bmu, align 4
  %i.bnp = zext i8 %i.bno to i32                  ; 2 uses
  %i.bnq = lshr i32 %i.bnn, %i.bnp
  %i.bnr = zext i32 %i.bnq to i64
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bnk, i64 %i.bnr
  %i.bnt = load i8, ptr %i.bns, align 1
  %i.bnu = zext i8 %i.bnt to i32
  %i.bnv = load i8, ptr %i.bmv, align 1           ; 2 uses
  %i.bnw = zext i8 %i.bnv to i64
  %i.bnx = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bnw
  %i.bny = load ptr, ptr %i.bnx, align 8
  %i.bnz = load i32, ptr %i.bmw, align 4
  %i.boa = and i32 %i.bnz, %i.bnl
  %i.bob = load i8, ptr %i.bmx, align 1
  %i.boc = zext i8 %i.bob to i32                  ; 2 uses
  %i.bod = lshr i32 %i.boa, %i.boc
  %i.boe = zext i32 %i.bod to i64
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bny, i64 %i.boe
  %i.bog = load i8, ptr %i.bof, align 1
  %i.boh = zext i8 %i.bog to i32
  %i.boi = load i8, ptr %i.bmy, align 2           ; 2 uses
  %i.boj = zext i8 %i.boi to i64
  %i.bok = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.boj
  %i.bol = load ptr, ptr %i.bok, align 8
  %i.bom = load i32, ptr %i.bmz, align 4
  %i.bon = and i32 %i.bom, %i.bnl
  %i.boo = load i8, ptr %i.bna, align 2
  %i.bop = zext i8 %i.boo to i32                  ; 2 uses
  %i.boq = lshr i32 %i.bon, %i.bop
  %i.bor = zext i32 %i.boq to i64
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bol, i64 %i.bor
  %i.bot = load i8, ptr %i.bos, align 1
  %i.bou = zext i8 %i.bot to i32
  %i.bov = mul nuw nsw i32 %i.bnu, %i.d
  %i.bow = udiv i32 %i.bov, 255
  %i.box = add nuw nsw i32 %i.bow, %i.bnb
  %i.boy = mul nuw nsw i32 %i.boh, %i.d
  %i.boz = udiv i32 %i.boy, 255
  %i.bpa = add nuw nsw i32 %i.boz, %i.bnc
  %i.bpb = mul nuw nsw i32 %i.bou, %i.d
  %i.bpc = udiv i32 %i.bpb, 255
  %i.bpd = add nuw nsw i32 %i.bpc, %i.bnd
  %i.bpe = zext i8 %i.bnh to i32
  %i.bpf = sub nsw i32 8, %i.bpe
  %i.bpg = lshr i32 %i.box, %i.bpf
  %i.bph = shl i32 %i.bpg, %i.bnp
  %i.bpi = zext i8 %i.bnv to i32
  %i.bpj = sub nsw i32 8, %i.bpi
  %i.bpk = lshr i32 %i.bpa, %i.bpj
  %i.bpl = shl i32 %i.bpk, %i.boc
  %i.bpm = or i32 %i.bpl, %i.bph
  %i.bpn = zext i8 %i.boi to i32
  %i.bpo = sub nsw i32 8, %i.bpn
  %i.bpp = lshr i32 %i.bpd, %i.bpo
  %i.bpq = shl i32 %i.bpp, %i.bop
  %i.bpr = load i32, ptr %i.bne, align 4
  %i.bps = or i32 %i.bpm, %i.bpr
  %i.bpt = or i32 %i.bps, %i.bpq
  store i32 %i.bpt, ptr %.11908, align 4
  %i.bpu = getelementptr inbounds nuw i8, ptr %.11908, i64 4
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %.11913 = phi i32 [ %.01912, %bb.au ], [ %i.bmq, %bb.at ]
  %.21909 = phi ptr [ %i.bpu, %bb.au ], [ %.019072109, %bb.at ] ; 3 uses
  %i.bpv = load i8, ptr %i.bms, align 4           ; 2 uses
  %i.bpw = zext i8 %i.bpv to i64
  %i.bpx = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bpw
  %i.bpy = load ptr, ptr %i.bpx, align 8
  %i.bpz = load i32, ptr %.21909, align 4         ; 3 uses
  %i.bqa = load i32, ptr %i.bmt, align 4
  %i.bqb = and i32 %i.bqa, %i.bpz
  %i.bqc = load i8, ptr %i.bmu, align 4
  %i.bqd = zext i8 %i.bqc to i32                  ; 2 uses
  %i.bqe = lshr i32 %i.bqb, %i.bqd
  %i.bqf = zext i32 %i.bqe to i64
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bpy, i64 %i.bqf
  %i.bqh = load i8, ptr %i.bqg, align 1
  %i.bqi = zext i8 %i.bqh to i32
  %i.bqj = load i8, ptr %i.bmv, align 1           ; 2 uses
  %i.bqk = zext i8 %i.bqj to i64
  %i.bql = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bqk
  %i.bqm = load ptr, ptr %i.bql, align 8
  %i.bqn = load i32, ptr %i.bmw, align 4
  %i.bqo = and i32 %i.bqn, %i.bpz
  %i.bqp = load i8, ptr %i.bmx, align 1
  %i.bqq = zext i8 %i.bqp to i32                  ; 2 uses
  %i.bqr = lshr i32 %i.bqo, %i.bqq
  %i.bqs = zext i32 %i.bqr to i64
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqm, i64 %i.bqs
  %i.bqu = load i8, ptr %i.bqt, align 1
  %i.bqv = zext i8 %i.bqu to i32
  %i.bqw = load i8, ptr %i.bmy, align 2           ; 2 uses
  %i.bqx = zext i8 %i.bqw to i64
  %i.bqy = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bqx
  %i.bqz = load ptr, ptr %i.bqy, align 8
  %i.bra = load i32, ptr %i.bmz, align 4
  %i.brb = and i32 %i.bra, %i.bpz
  %i.brc = load i8, ptr %i.bna, align 2
  %i.brd = zext i8 %i.brc to i32                  ; 2 uses
  %i.bre = lshr i32 %i.brb, %i.brd
  %i.brf = zext i32 %i.bre to i64
  %i.brg = getelementptr inbounds nuw i8, ptr %i.bqz, i64 %i.brf
  %i.brh = load i8, ptr %i.brg, align 1
  %i.bri = zext i8 %i.brh to i32
  %i.brj = mul nuw nsw i32 %i.bqi, %i.d
  %i.brk = udiv i32 %i.brj, 255
  %i.brl = add nuw nsw i32 %i.brk, %i.bnb
  %i.brm = mul nuw nsw i32 %i.bqv, %i.d
  %i.brn = udiv i32 %i.brm, 255
  %i.bro = add nuw nsw i32 %i.brn, %i.bnc
  %i.brp = mul nuw nsw i32 %i.bri, %i.d
  %i.brq = udiv i32 %i.brp, 255
  %i.brr = add nuw nsw i32 %i.brq, %i.bnd
  %i.brs = zext i8 %i.bpv to i32
  %i.brt = sub nsw i32 8, %i.brs
  %i.bru = lshr i32 %i.brl, %i.brt
  %i.brv = shl i32 %i.bru, %i.bqd
  %i.brw = zext i8 %i.bqj to i32
  %i.brx = sub nsw i32 8, %i.brw
  %i.bry = lshr i32 %i.bro, %i.brx
  %i.brz = shl i32 %i.bry, %i.bqq
  %i.bsa = or i32 %i.brz, %i.brv
  %i.bsb = zext i8 %i.bqw to i32
  %i.bsc = sub nsw i32 8, %i.bsb
  %i.bsd = lshr i32 %i.brr, %i.bsc
  %i.bse = shl i32 %i.bsd, %i.brd
  %i.bsf = load i32, ptr %i.bne, align 4
  %i.bsg = or i32 %i.bsa, %i.bsf
  %i.bsh = or i32 %i.bsg, %i.bse
  store i32 %i.bsh, ptr %.21909, align 4
  %i.bsi = getelementptr inbounds nuw i8, ptr %.21909, i64 4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.at, %bb.av
  %.21914 = phi i32 [ %.11913, %bb.av ], [ %i.bmq, %bb.at ]
  %.31910 = phi ptr [ %i.bsi, %bb.av ], [ %.019072109, %bb.at ] ; 3 uses
  %i.bsj = load i8, ptr %i.bms, align 4           ; 2 uses
  %i.bsk = zext i8 %i.bsj to i64
  %i.bsl = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bsk
  %i.bsm = load ptr, ptr %i.bsl, align 8
  %i.bsn = load i32, ptr %.31910, align 4         ; 3 uses
  %i.bso = load i32, ptr %i.bmt, align 4
  %i.bsp = and i32 %i.bso, %i.bsn
  %i.bsq = load i8, ptr %i.bmu, align 4
  %i.bsr = zext i8 %i.bsq to i32                  ; 2 uses
  %i.bss = lshr i32 %i.bsp, %i.bsr
  %i.bst = zext i32 %i.bss to i64
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bsm, i64 %i.bst
  %i.bsv = load i8, ptr %i.bsu, align 1
  %i.bsw = zext i8 %i.bsv to i32
  %i.bsx = load i8, ptr %i.bmv, align 1           ; 2 uses
  %i.bsy = zext i8 %i.bsx to i64
  %i.bsz = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bsy
  %i.bta = load ptr, ptr %i.bsz, align 8
  %i.btb = load i32, ptr %i.bmw, align 4
  %i.btc = and i32 %i.btb, %i.bsn
  %i.btd = load i8, ptr %i.bmx, align 1
  %i.bte = zext i8 %i.btd to i32                  ; 2 uses
  %i.btf = lshr i32 %i.btc, %i.bte
  %i.btg = zext i32 %i.btf to i64
  %i.bth = getelementptr inbounds nuw i8, ptr %i.bta, i64 %i.btg
  %i.bti = load i8, ptr %i.bth, align 1
  %i.btj = zext i8 %i.bti to i32
  %i.btk = load i8, ptr %i.bmy, align 2           ; 2 uses
  %i.btl = zext i8 %i.btk to i64
  %i.btm = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.btl
  %i.btn = load ptr, ptr %i.btm, align 8
  %i.bto = load i32, ptr %i.bmz, align 4
  %i.btp = and i32 %i.bto, %i.bsn
  %i.btq = load i8, ptr %i.bna, align 2
  %i.btr = zext i8 %i.btq to i32                  ; 2 uses
  %i.bts = lshr i32 %i.btp, %i.btr
  %i.btt = zext i32 %i.bts to i64
  %i.btu = getelementptr inbounds nuw i8, ptr %i.btn, i64 %i.btt
  %i.btv = load i8, ptr %i.btu, align 1
  %i.btw = zext i8 %i.btv to i32
  %i.btx = mul nuw nsw i32 %i.bsw, %i.d
  %i.bty = udiv i32 %i.btx, 255
  %i.btz = add nuw nsw i32 %i.bty, %i.bnb
  %i.bua = mul nuw nsw i32 %i.btj, %i.d
  %i.bub = udiv i32 %i.bua, 255
  %i.buc = add nuw nsw i32 %i.bub, %i.bnc
  %i.bud = mul nuw nsw i32 %i.btw, %i.d
  %i.bue = udiv i32 %i.bud, 255
  %i.buf = add nuw nsw i32 %i.bue, %i.bnd
  %i.bug = zext i8 %i.bsj to i32
  %i.buh = sub nsw i32 8, %i.bug
  %i.bui = lshr i32 %i.btz, %i.buh
  %i.buj = shl i32 %i.bui, %i.bsr
  %i.buk = zext i8 %i.bsx to i32
  %i.bul = sub nsw i32 8, %i.buk
  %i.bum = lshr i32 %i.buc, %i.bul
  %i.bun = shl i32 %i.bum, %i.bte
  %i.buo = or i32 %i.bun, %i.buj
  %i.bup = zext i8 %i.btk to i32
  %i.buq = sub nsw i32 8, %i.bup
  %i.bur = lshr i32 %i.buf, %i.buq
  %i.bus = shl i32 %i.bur, %i.btr
  %i.but = load i32, ptr %i.bne, align 4
  %i.buu = or i32 %i.buo, %i.but
  %i.buv = or i32 %i.buu, %i.bus
  store i32 %i.buv, ptr %.31910, align 4
  %i.buw = getelementptr inbounds nuw i8, ptr %.31910, i64 4
  br label %bb.ax

.unreachabledefault2215:                          ; preds = %bb.at
  unreachable

bb.ax:                                            ; preds = %bb.at, %bb.aw
  %.31915 = phi i32 [ %.21914, %bb.aw ], [ %i.bmq, %bb.at ] ; 2 uses
  %.41911 = phi ptr [ %i.buw, %bb.aw ], [ %.019072109, %bb.at ] ; 3 uses
  %i.bux = load i8, ptr %i.bms, align 4           ; 2 uses
  %i.buy = zext i8 %i.bux to i64
  %i.buz = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.buy
  %i.bva = load ptr, ptr %i.buz, align 8
  %i.bvb = load i32, ptr %.41911, align 4         ; 3 uses
  %i.bvc = load i32, ptr %i.bmt, align 4
  %i.bvd = and i32 %i.bvc, %i.bvb
  %i.bve = load i8, ptr %i.bmu, align 4
  %i.bvf = zext i8 %i.bve to i32                  ; 2 uses
  %i.bvg = lshr i32 %i.bvd, %i.bvf
  %i.bvh = zext i32 %i.bvg to i64
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bva, i64 %i.bvh
  %i.bvj = load i8, ptr %i.bvi, align 1
  %i.bvk = zext i8 %i.bvj to i32
  %i.bvl = load i8, ptr %i.bmv, align 1           ; 2 uses
  %i.bvm = zext i8 %i.bvl to i64
  %i.bvn = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bvm
  %i.bvo = load ptr, ptr %i.bvn, align 8
  %i.bvp = load i32, ptr %i.bmw, align 4
  %i.bvq = and i32 %i.bvp, %i.bvb
  %i.bvr = load i8, ptr %i.bmx, align 1
  %i.bvs = zext i8 %i.bvr to i32                  ; 2 uses
  %i.bvt = lshr i32 %i.bvq, %i.bvs
  %i.bvu = zext i32 %i.bvt to i64
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvo, i64 %i.bvu
  %i.bvw = load i8, ptr %i.bvv, align 1
  %i.bvx = zext i8 %i.bvw to i32
  %i.bvy = load i8, ptr %i.bmy, align 2           ; 2 uses
  %i.bvz = zext i8 %i.bvy to i64
  %i.bwa = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bvz
  %i.bwb = load ptr, ptr %i.bwa, align 8
  %i.bwc = load i32, ptr %i.bmz, align 4
  %i.bwd = and i32 %i.bwc, %i.bvb
  %i.bwe = load i8, ptr %i.bna, align 2
  %i.bwf = zext i8 %i.bwe to i32                  ; 2 uses
  %i.bwg = lshr i32 %i.bwd, %i.bwf
  %i.bwh = zext i32 %i.bwg to i64
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bwb, i64 %i.bwh
  %i.bwj = load i8, ptr %i.bwi, align 1
  %i.bwk = zext i8 %i.bwj to i32
  %i.bwl = mul nuw nsw i32 %i.bvk, %i.d
  %i.bwm = udiv i32 %i.bwl, 255
  %i.bwn = add nuw nsw i32 %i.bwm, %i.bnb
  %i.bwo = mul nuw nsw i32 %i.bvx, %i.d
  %i.bwp = udiv i32 %i.bwo, 255
  %i.bwq = add nuw nsw i32 %i.bwp, %i.bnc
  %i.bwr = mul nuw nsw i32 %i.bwk, %i.d
  %i.bws = udiv i32 %i.bwr, 255
  %i.bwt = add nuw nsw i32 %i.bws, %i.bnd
  %i.bwu = zext i8 %i.bux to i32
  %i.bwv = sub nsw i32 8, %i.bwu
  %i.bww = lshr i32 %i.bwn, %i.bwv
  %i.bwx = shl i32 %i.bww, %i.bvf
  %i.bwy = zext i8 %i.bvl to i32
  %i.bwz = sub nsw i32 8, %i.bwy
  %i.bxa = lshr i32 %i.bwq, %i.bwz
  %i.bxb = shl i32 %i.bxa, %i.bvs
  %i.bxc = or i32 %i.bxb, %i.bwx
  %i.bxd = zext i8 %i.bvy to i32
  %i.bxe = sub nsw i32 8, %i.bxd
  %i.bxf = lshr i32 %i.bwt, %i.bxe
  %i.bxg = shl i32 %i.bxf, %i.bwf
  %i.bxh = load i32, ptr %i.bne, align 4
  %i.bxi = or i32 %i.bxc, %i.bxh
  %i.bxj = or i32 %i.bxi, %i.bxg
  store i32 %i.bxj, ptr %.41911, align 4
  %i.bxk = getelementptr inbounds nuw i8, ptr %.41911, i64 4 ; 2 uses
  %i.bxl = add nsw i32 %.31915, -1
  %i.bxm = icmp sgt i32 %.31915, 1
  br i1 %i.bxm, label %bb.au, label %bb.ay, !llvm.loop !64

bb.ay:                                            ; preds = %bb.ax
  %i.bxn = getelementptr inbounds [4 x i8], ptr %i.bxk, i64 %i.bnf
  %.not1973 = icmp eq i32 %i.bng, 0
  br i1 %.not1973, label %.loopexit, label %bb.at, !llvm.loop !65

bb.az:                                            ; preds = %.split27
  %i.bxo = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bxp = load i32, ptr %i.bxo, align 4          ; 2 uses
  %.not19722105 = icmp eq i32 %i.bxp, 0
  br i1 %.not19722105, label %.loopexit, label %.lr.ph2107

.lr.ph2107:                                       ; preds = %bb.az
  %i.bxq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bxr = load ptr, ptr %i.bxq, align 8
  %i.bxs = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bxt = load i32, ptr %i.bxs, align 4
  %i.bxu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bxv = load i32, ptr %i.bxu, align 8
  %i.bxw = sdiv i32 %i.bxv, 4                     ; 2 uses
  %i.bxx = mul nsw i32 %i.bxt, %i.bxw
  %i.bxy = sext i32 %i.bxx to i64
  %i.bxz = getelementptr inbounds [4 x i8], ptr %i.bxr, i64 %i.bxy
  %i.bya = load i32, ptr %1, align 4
  %i.byb = sext i32 %i.bya to i64
  %i.byc = getelementptr inbounds [4 x i8], ptr %i.bxz, i64 %i.byb
  %i.byd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bye = load i32, ptr %i.byd, align 4          ; 3 uses
  %i.byf = sub nsw i32 %i.bxw, %i.bye
  %i.byg = add nsw i32 %i.bye, 3
  %i.byh = sdiv i32 %i.byg, 4                     ; 4 uses
  %i.byi = and i32 %i.bye, 3
  %i.byj = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.byk = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.byl = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.bym = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.byn = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.byo = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.byp = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.byq = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.byr = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.bys = zext i8 %3 to i32                      ; 4 uses
  %i.byt = zext i8 %4 to i32                      ; 4 uses
  %i.byu = zext i8 %5 to i32                      ; 4 uses
  %i.byv = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.byw = sext i32 %i.byf to i64
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph2107, %bb.bf
  %.in2144 = phi i32 [ %i.bxp, %.lr.ph2107 ], [ %i.byx, %bb.bf ]
  %.019172106 = phi ptr [ %i.byc, %.lr.ph2107 ], [ %i.cje, %bb.bf ] ; 4 uses
  %i.byx = add nsw i32 %.in2144, -1               ; 2 uses
  switch i32 %i.byi, label %.unreachabledefault2216 [
    i32 0, label %bb.bb
    i32 3, label %bb.bc
    i32 2, label %bb.bd
    i32 1, label %bb.be
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.be
  %.01922 = phi i32 [ %i.byh, %bb.ba ], [ %i.cjc, %bb.be ]
  %.11918 = phi ptr [ %.019172106, %bb.ba ], [ %i.cjb, %bb.be ] ; 3 uses
  %i.byy = load i8, ptr %i.byj, align 4           ; 2 uses
  %i.byz = zext i8 %i.byy to i64
  %i.bza = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.byz
  %i.bzb = load ptr, ptr %i.bza, align 8
  %i.bzc = load i32, ptr %.11918, align 4         ; 3 uses
  %i.bzd = load i32, ptr %i.byk, align 4
  %i.bze = and i32 %i.bzd, %i.bzc
  %i.bzf = load i8, ptr %i.byl, align 4
  %i.bzg = zext i8 %i.bzf to i32                  ; 2 uses
  %i.bzh = lshr i32 %i.bze, %i.bzg
  %i.bzi = zext i32 %i.bzh to i64
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bzb, i64 %i.bzi
  %i.bzk = load i8, ptr %i.bzj, align 1
  %i.bzl = zext i8 %i.bzk to i32
  %i.bzm = load i8, ptr %i.bym, align 1           ; 2 uses
  %i.bzn = zext i8 %i.bzm to i64
  %i.bzo = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bzn
  %i.bzp = load ptr, ptr %i.bzo, align 8
  %i.bzq = load i32, ptr %i.byn, align 4
  %i.bzr = and i32 %i.bzq, %i.bzc
  %i.bzs = load i8, ptr %i.byo, align 1
  %i.bzt = zext i8 %i.bzs to i32                  ; 2 uses
  %i.bzu = lshr i32 %i.bzr, %i.bzt
  %i.bzv = zext i32 %i.bzu to i64
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.bzp, i64 %i.bzv
  %i.bzx = load i8, ptr %i.bzw, align 1
  %i.bzy = zext i8 %i.bzx to i32
  %i.bzz = load i8, ptr %i.byp, align 2           ; 2 uses
  %i.caa = zext i8 %i.bzz to i64
  %i.cab = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.caa
  %i.cac = load ptr, ptr %i.cab, align 8
  %i.cad = load i32, ptr %i.byq, align 4
  %i.cae = and i32 %i.cad, %i.bzc
  %i.caf = load i8, ptr %i.byr, align 2
  %i.cag = zext i8 %i.caf to i32                  ; 2 uses
  %i.cah = lshr i32 %i.cae, %i.cag
  %i.cai = zext i32 %i.cah to i64
  %i.caj = getelementptr inbounds nuw i8, ptr %i.cac, i64 %i.cai
  %i.cak = load i8, ptr %i.caj, align 1
  %i.cal = zext i8 %i.cak to i32
  %i.cam = mul nuw nsw i32 %i.bzl, %i.d
  %i.can = udiv i32 %i.cam, 255
  %i.cao = add nuw nsw i32 %i.can, %i.bys
  %spec.store.select68 = tail call i32 @llvm.umin.i32(i32 %i.cao, i32 255)
  %i.cap = mul nuw nsw i32 %i.bzy, %i.d
  %i.caq = udiv i32 %i.cap, 255
  %i.car = add nuw nsw i32 %i.caq, %i.byt
  %spec.store.select30 = tail call i32 @llvm.umin.i32(i32 %i.car, i32 255)
  %i.cas = mul nuw nsw i32 %i.cal, %i.d
  %i.cat = udiv i32 %i.cas, 255
  %i.cau = add nuw nsw i32 %i.cat, %i.byu
  %spec.store.select86 = tail call i32 @llvm.umin.i32(i32 %i.cau, i32 255)
  %i.cav = zext i8 %i.byy to i32
  %i.caw = sub nsw i32 8, %i.cav
  %i.cax = lshr i32 %spec.store.select68, %i.caw
  %i.cay = shl i32 %i.cax, %i.bzg
  %i.caz = zext i8 %i.bzm to i32
  %i.cba = sub nsw i32 8, %i.caz
  %i.cbb = lshr i32 %spec.store.select30, %i.cba
  %i.cbc = shl i32 %i.cbb, %i.bzt
  %i.cbd = zext i8 %i.bzz to i32
  %i.cbe = sub nsw i32 8, %i.cbd
  %i.cbf = lshr i32 %spec.store.select86, %i.cbe
  %i.cbg = shl i32 %i.cbf, %i.cag
  %i.cbh = load i32, ptr %i.byv, align 4
  %i.cbi = or i32 %i.cbh, %i.cay
  %i.cbj = or i32 %i.cbi, %i.cbc
  %i.cbk = or i32 %i.cbj, %i.cbg
  store i32 %i.cbk, ptr %.11918, align 4
  %i.cbl = getelementptr inbounds nuw i8, ptr %.11918, i64 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %.11923 = phi i32 [ %.01922, %bb.bb ], [ %i.byh, %bb.ba ]
  %.21919 = phi ptr [ %i.cbl, %bb.bb ], [ %.019172106, %bb.ba ] ; 3 uses
  %i.cbm = load i8, ptr %i.byj, align 4           ; 2 uses
  %i.cbn = zext i8 %i.cbm to i64
  %i.cbo = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cbn
  %i.cbp = load ptr, ptr %i.cbo, align 8
  %i.cbq = load i32, ptr %.21919, align 4         ; 3 uses
  %i.cbr = load i32, ptr %i.byk, align 4
  %i.cbs = and i32 %i.cbr, %i.cbq
  %i.cbt = load i8, ptr %i.byl, align 4
  %i.cbu = zext i8 %i.cbt to i32                  ; 2 uses
  %i.cbv = lshr i32 %i.cbs, %i.cbu
  %i.cbw = zext i32 %i.cbv to i64
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbp, i64 %i.cbw
  %i.cby = load i8, ptr %i.cbx, align 1
  %i.cbz = zext i8 %i.cby to i32
  %i.cca = load i8, ptr %i.bym, align 1           ; 2 uses
  %i.ccb = zext i8 %i.cca to i64
  %i.ccc = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ccb
  %i.ccd = load ptr, ptr %i.ccc, align 8
  %i.cce = load i32, ptr %i.byn, align 4
  %i.ccf = and i32 %i.cce, %i.cbq
  %i.ccg = load i8, ptr %i.byo, align 1
  %i.cch = zext i8 %i.ccg to i32                  ; 2 uses
  %i.cci = lshr i32 %i.ccf, %i.cch
  %i.ccj = zext i32 %i.cci to i64
  %i.cck = getelementptr inbounds nuw i8, ptr %i.ccd, i64 %i.ccj
  %i.ccl = load i8, ptr %i.cck, align 1
  %i.ccm = zext i8 %i.ccl to i32
  %i.ccn = load i8, ptr %i.byp, align 2           ; 2 uses
  %i.cco = zext i8 %i.ccn to i64
  %i.ccp = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cco
  %i.ccq = load ptr, ptr %i.ccp, align 8
  %i.ccr = load i32, ptr %i.byq, align 4
  %i.ccs = and i32 %i.ccr, %i.cbq
  %i.cct = load i8, ptr %i.byr, align 2
  %i.ccu = zext i8 %i.cct to i32                  ; 2 uses
  %i.ccv = lshr i32 %i.ccs, %i.ccu
  %i.ccw = zext i32 %i.ccv to i64
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.ccq, i64 %i.ccw
  %i.ccy = load i8, ptr %i.ccx, align 1
  %i.ccz = zext i8 %i.ccy to i32
  %i.cda = mul nuw nsw i32 %i.cbz, %i.d
  %i.cdb = udiv i32 %i.cda, 255
  %i.cdc = add nuw nsw i32 %i.cdb, %i.bys
  %spec.store.select32 = tail call i32 @llvm.umin.i32(i32 %i.cdc, i32 255)
  %i.cdd = mul nuw nsw i32 %i.ccm, %i.d
  %i.cde = udiv i32 %i.cdd, 255
  %i.cdf = add nuw nsw i32 %i.cde, %i.byt
  %spec.store.select69 = tail call i32 @llvm.umin.i32(i32 %i.cdf, i32 255)
  %i.cdg = mul nuw nsw i32 %i.ccz, %i.d
  %i.cdh = udiv i32 %i.cdg, 255
  %i.cdi = add nuw nsw i32 %i.cdh, %i.byu
  %spec.store.select33 = tail call i32 @llvm.umin.i32(i32 %i.cdi, i32 255)
  %i.cdj = zext i8 %i.cbm to i32
  %i.cdk = sub nsw i32 8, %i.cdj
  %i.cdl = lshr i32 %spec.store.select32, %i.cdk
  %i.cdm = shl i32 %i.cdl, %i.cbu
  %i.cdn = zext i8 %i.cca to i32
  %i.cdo = sub nsw i32 8, %i.cdn
  %i.cdp = lshr i32 %spec.store.select69, %i.cdo
  %i.cdq = shl i32 %i.cdp, %i.cch
  %i.cdr = zext i8 %i.ccn to i32
  %i.cds = sub nsw i32 8, %i.cdr
  %i.cdt = lshr i32 %spec.store.select33, %i.cds
  %i.cdu = shl i32 %i.cdt, %i.ccu
  %i.cdv = load i32, ptr %i.byv, align 4
  %i.cdw = or i32 %i.cdv, %i.cdm
  %i.cdx = or i32 %i.cdw, %i.cdq
  %i.cdy = or i32 %i.cdx, %i.cdu
  store i32 %i.cdy, ptr %.21919, align 4
  %i.cdz = getelementptr inbounds nuw i8, ptr %.21919, i64 4
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %bb.bc
  %.21924 = phi i32 [ %.11923, %bb.bc ], [ %i.byh, %bb.ba ]
  %.31920 = phi ptr [ %i.cdz, %bb.bc ], [ %.019172106, %bb.ba ] ; 3 uses
  %i.cea = load i8, ptr %i.byj, align 4           ; 2 uses
  %i.ceb = zext i8 %i.cea to i64
  %i.cec = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ceb
  %i.ced = load ptr, ptr %i.cec, align 8
  %i.cee = load i32, ptr %.31920, align 4         ; 3 uses
  %i.cef = load i32, ptr %i.byk, align 4
  %i.ceg = and i32 %i.cef, %i.cee
  %i.ceh = load i8, ptr %i.byl, align 4
  %i.cei = zext i8 %i.ceh to i32                  ; 2 uses
  %i.cej = lshr i32 %i.ceg, %i.cei
  %i.cek = zext i32 %i.cej to i64
  %i.cel = getelementptr inbounds nuw i8, ptr %i.ced, i64 %i.cek
  %i.cem = load i8, ptr %i.cel, align 1
  %i.cen = zext i8 %i.cem to i32
  %i.ceo = load i8, ptr %i.bym, align 1           ; 2 uses
  %i.cep = zext i8 %i.ceo to i64
  %i.ceq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cep
  %i.cer = load ptr, ptr %i.ceq, align 8
  %i.ces = load i32, ptr %i.byn, align 4
  %i.cet = and i32 %i.ces, %i.cee
  %i.ceu = load i8, ptr %i.byo, align 1
  %i.cev = zext i8 %i.ceu to i32                  ; 2 uses
  %i.cew = lshr i32 %i.cet, %i.cev
  %i.cex = zext i32 %i.cew to i64
  %i.cey = getelementptr inbounds nuw i8, ptr %i.cer, i64 %i.cex
  %i.cez = load i8, ptr %i.cey, align 1
  %i.cfa = zext i8 %i.cez to i32
  %i.cfb = load i8, ptr %i.byp, align 2           ; 2 uses
  %i.cfc = zext i8 %i.cfb to i64
  %i.cfd = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cfc
  %i.cfe = load ptr, ptr %i.cfd, align 8
  %i.cff = load i32, ptr %i.byq, align 4
  %i.cfg = and i32 %i.cff, %i.cee
  %i.cfh = load i8, ptr %i.byr, align 2
  %i.cfi = zext i8 %i.cfh to i32                  ; 2 uses
  %i.cfj = lshr i32 %i.cfg, %i.cfi
  %i.cfk = zext i32 %i.cfj to i64
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.cfe, i64 %i.cfk
  %i.cfm = load i8, ptr %i.cfl, align 1
  %i.cfn = zext i8 %i.cfm to i32
  %i.cfo = mul nuw nsw i32 %i.cen, %i.d
  %i.cfp = udiv i32 %i.cfo, 255
  %i.cfq = add nuw nsw i32 %i.cfp, %i.bys
  %spec.store.select34 = tail call i32 @llvm.umin.i32(i32 %i.cfq, i32 255)
  %i.cfr = mul nuw nsw i32 %i.cfa, %i.d
  %i.cfs = udiv i32 %i.cfr, 255
  %i.cft = add nuw nsw i32 %i.cfs, %i.byt
  %spec.store.select70 = tail call i32 @llvm.umin.i32(i32 %i.cft, i32 255)
  %i.cfu = mul nuw nsw i32 %i.cfn, %i.d
  %i.cfv = udiv i32 %i.cfu, 255
  %i.cfw = add nuw nsw i32 %i.cfv, %i.byu
  %spec.store.select35 = tail call i32 @llvm.umin.i32(i32 %i.cfw, i32 255)
  %i.cfx = zext i8 %i.cea to i32
  %i.cfy = sub nsw i32 8, %i.cfx
  %i.cfz = lshr i32 %spec.store.select34, %i.cfy
  %i.cga = shl i32 %i.cfz, %i.cei
  %i.cgb = zext i8 %i.ceo to i32
  %i.cgc = sub nsw i32 8, %i.cgb
  %i.cgd = lshr i32 %spec.store.select70, %i.cgc
  %i.cge = shl i32 %i.cgd, %i.cev
  %i.cgf = zext i8 %i.cfb to i32
  %i.cgg = sub nsw i32 8, %i.cgf
  %i.cgh = lshr i32 %spec.store.select35, %i.cgg
  %i.cgi = shl i32 %i.cgh, %i.cfi
  %i.cgj = load i32, ptr %i.byv, align 4
  %i.cgk = or i32 %i.cgj, %i.cga
  %i.cgl = or i32 %i.cgk, %i.cge
  %i.cgm = or i32 %i.cgl, %i.cgi
  store i32 %i.cgm, ptr %.31920, align 4
  %i.cgn = getelementptr inbounds nuw i8, ptr %.31920, i64 4
  br label %bb.be

.unreachabledefault2216:                          ; preds = %bb.ba
  unreachable

bb.be:                                            ; preds = %bb.ba, %bb.bd
  %.31925 = phi i32 [ %.21924, %bb.bd ], [ %i.byh, %bb.ba ] ; 2 uses
  %.41921 = phi ptr [ %i.cgn, %bb.bd ], [ %.019172106, %bb.ba ] ; 3 uses
  %i.cgo = load i8, ptr %i.byj, align 4           ; 2 uses
  %i.cgp = zext i8 %i.cgo to i64
  %i.cgq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cgp
  %i.cgr = load ptr, ptr %i.cgq, align 8
  %i.cgs = load i32, ptr %.41921, align 4         ; 3 uses
  %i.cgt = load i32, ptr %i.byk, align 4
  %i.cgu = and i32 %i.cgt, %i.cgs
  %i.cgv = load i8, ptr %i.byl, align 4
  %i.cgw = zext i8 %i.cgv to i32                  ; 2 uses
  %i.cgx = lshr i32 %i.cgu, %i.cgw
  %i.cgy = zext i32 %i.cgx to i64
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.cgr, i64 %i.cgy
  %i.cha = load i8, ptr %i.cgz, align 1
  %i.chb = zext i8 %i.cha to i32
  %i.chc = load i8, ptr %i.bym, align 1           ; 2 uses
  %i.chd = zext i8 %i.chc to i64
  %i.che = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.chd
  %i.chf = load ptr, ptr %i.che, align 8
  %i.chg = load i32, ptr %i.byn, align 4
  %i.chh = and i32 %i.chg, %i.cgs
  %i.chi = load i8, ptr %i.byo, align 1
  %i.chj = zext i8 %i.chi to i32                  ; 2 uses
  %i.chk = lshr i32 %i.chh, %i.chj
  %i.chl = zext i32 %i.chk to i64
  %i.chm = getelementptr inbounds nuw i8, ptr %i.chf, i64 %i.chl
  %i.chn = load i8, ptr %i.chm, align 1
  %i.cho = zext i8 %i.chn to i32
  %i.chp = load i8, ptr %i.byp, align 2           ; 2 uses
  %i.chq = zext i8 %i.chp to i64
  %i.chr = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.chq
  %i.chs = load ptr, ptr %i.chr, align 8
  %i.cht = load i32, ptr %i.byq, align 4
  %i.chu = and i32 %i.cht, %i.cgs
  %i.chv = load i8, ptr %i.byr, align 2
  %i.chw = zext i8 %i.chv to i32                  ; 2 uses
  %i.chx = lshr i32 %i.chu, %i.chw
  %i.chy = zext i32 %i.chx to i64
  %i.chz = getelementptr inbounds nuw i8, ptr %i.chs, i64 %i.chy
  %i.cia = load i8, ptr %i.chz, align 1
  %i.cib = zext i8 %i.cia to i32
  %i.cic = mul nuw nsw i32 %i.chb, %i.d
  %i.cid = udiv i32 %i.cic, 255
  %i.cie = add nuw nsw i32 %i.cid, %i.bys
  %spec.store.select36 = tail call i32 @llvm.umin.i32(i32 %i.cie, i32 255)
  %i.cif = mul nuw nsw i32 %i.cho, %i.d
  %i.cig = udiv i32 %i.cif, 255
  %i.cih = add nuw nsw i32 %i.cig, %i.byt
  %spec.store.select71 = tail call i32 @llvm.umin.i32(i32 %i.cih, i32 255)
  %i.cii = mul nuw nsw i32 %i.cib, %i.d
  %i.cij = udiv i32 %i.cii, 255
  %i.cik = add nuw nsw i32 %i.cij, %i.byu
  %spec.store.select37 = tail call i32 @llvm.umin.i32(i32 %i.cik, i32 255)
  %i.cil = zext i8 %i.cgo to i32
  %i.cim = sub nsw i32 8, %i.cil
  %i.cin = lshr i32 %spec.store.select36, %i.cim
  %i.cio = shl i32 %i.cin, %i.cgw
  %i.cip = zext i8 %i.chc to i32
  %i.ciq = sub nsw i32 8, %i.cip
  %i.cir = lshr i32 %spec.store.select71, %i.ciq
  %i.cis = shl i32 %i.cir, %i.chj
  %i.cit = zext i8 %i.chp to i32
  %i.ciu = sub nsw i32 8, %i.cit
  %i.civ = lshr i32 %spec.store.select37, %i.ciu
  %i.ciw = shl i32 %i.civ, %i.chw
  %i.cix = load i32, ptr %i.byv, align 4
  %i.ciy = or i32 %i.cix, %i.cio
  %i.ciz = or i32 %i.ciy, %i.cis
  %i.cja = or i32 %i.ciz, %i.ciw
  store i32 %i.cja, ptr %.41921, align 4
  %i.cjb = getelementptr inbounds nuw i8, ptr %.41921, i64 4 ; 2 uses
  %i.cjc = add nsw i32 %.31925, -1
  %i.cjd = icmp sgt i32 %.31925, 1
  br i1 %i.cjd, label %bb.bb, label %bb.bf, !llvm.loop !66

bb.bf:                                            ; preds = %bb.be
  %i.cje = getelementptr inbounds [4 x i8], ptr %i.cjb, i64 %i.byw
  %.not1972 = icmp eq i32 %i.byx, 0
  br i1 %.not1972, label %.loopexit, label %bb.ba, !llvm.loop !67

bb.bg:                                            ; preds = %.split27, %.split27
  %i.cjf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cjg = load i32, ptr %i.cjf, align 4          ; 2 uses
  %.not19712102 = icmp eq i32 %i.cjg, 0
  br i1 %.not19712102, label %.loopexit, label %.lr.ph2104

.lr.ph2104:                                       ; preds = %bb.bg
  %i.cjh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cji = load ptr, ptr %i.cjh, align 8
  %i.cjj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cjk = load i32, ptr %i.cjj, align 4
  %i.cjl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cjm = load i32, ptr %i.cjl, align 8
  %i.cjn = sdiv i32 %i.cjm, 4                     ; 2 uses
  %i.cjo = mul nsw i32 %i.cjk, %i.cjn
  %i.cjp = sext i32 %i.cjo to i64
  %i.cjq = getelementptr inbounds [4 x i8], ptr %i.cji, i64 %i.cjp
  %i.cjr = load i32, ptr %1, align 4
  %i.cjs = sext i32 %i.cjr to i64
  %i.cjt = getelementptr inbounds [4 x i8], ptr %i.cjq, i64 %i.cjs
  %i.cju = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cjv = load i32, ptr %i.cju, align 4          ; 3 uses
  %i.cjw = sub nsw i32 %i.cjn, %i.cjv
  %i.cjx = add nsw i32 %i.cjv, 3
  %i.cjy = sdiv i32 %i.cjx, 4                     ; 4 uses
  %i.cjz = and i32 %i.cjv, 3
  %i.cka = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.ckb = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.cke = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.ckh = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.cki = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.ckj = zext i8 %3 to i32                      ; 4 uses
  %i.ckk = zext i8 %4 to i32                      ; 4 uses
  %i.ckl = zext i8 %5 to i32                      ; 4 uses
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.ckn = sext i32 %i.cjw to i64
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph2104, %bb.bm
  %.in2143 = phi i32 [ %i.cjg, %.lr.ph2104 ], [ %i.cko, %bb.bm ]
  %.019272103 = phi ptr [ %i.cjt, %.lr.ph2104 ], [ %i.ctx, %bb.bm ] ; 4 uses
  %i.cko = add nsw i32 %.in2143, -1               ; 2 uses
  switch i32 %i.cjz, label %.unreachabledefault2217 [
    i32 0, label %bb.bi
    i32 3, label %bb.bj
    i32 2, label %bb.bk
    i32 1, label %bb.bl
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bl
  %.01932 = phi i32 [ %i.cjy, %bb.bh ], [ %i.ctv, %bb.bl ]
  %.11928 = phi ptr [ %.019272103, %bb.bh ], [ %i.ctu, %bb.bl ] ; 3 uses
  %i.ckp = load i8, ptr %i.cka, align 4           ; 2 uses
  %i.ckq = zext i8 %i.ckp to i64
  %i.ckr = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ckq
  %i.cks = load ptr, ptr %i.ckr, align 8
  %i.ckt = load i32, ptr %.11928, align 4         ; 3 uses
  %i.cku = load i32, ptr %i.ckb, align 4
  %i.ckv = and i32 %i.cku, %i.ckt
  %i.ckw = load i8, ptr %i.ckc, align 4
  %i.ckx = zext i8 %i.ckw to i32                  ; 2 uses
  %i.cky = lshr i32 %i.ckv, %i.ckx
  %i.ckz = zext i32 %i.cky to i64
  %i.cla = getelementptr inbounds nuw i8, ptr %i.cks, i64 %i.ckz
  %i.clb = load i8, ptr %i.cla, align 1
  %i.clc = zext i8 %i.clb to i32
  %i.cld = load i8, ptr %i.ckd, align 1           ; 2 uses
  %i.cle = zext i8 %i.cld to i64
  %i.clf = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cle
  %i.clg = load ptr, ptr %i.clf, align 8
  %i.clh = load i32, ptr %i.cke, align 4
  %i.cli = and i32 %i.clh, %i.ckt
  %i.clj = load i8, ptr %i.ckf, align 1
  %i.clk = zext i8 %i.clj to i32                  ; 2 uses
  %i.cll = lshr i32 %i.cli, %i.clk
  %i.clm = zext i32 %i.cll to i64
  %i.cln = getelementptr inbounds nuw i8, ptr %i.clg, i64 %i.clm
  %i.clo = load i8, ptr %i.cln, align 1
  %i.clp = zext i8 %i.clo to i32
  %i.clq = load i8, ptr %i.ckg, align 2           ; 2 uses
  %i.clr = zext i8 %i.clq to i64
  %i.cls = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.clr
  %i.clt = load ptr, ptr %i.cls, align 8
  %i.clu = load i32, ptr %i.ckh, align 4
  %i.clv = and i32 %i.clu, %i.ckt
  %i.clw = load i8, ptr %i.cki, align 2
  %i.clx = zext i8 %i.clw to i32                  ; 2 uses
  %i.cly = lshr i32 %i.clv, %i.clx
  %i.clz = zext i32 %i.cly to i64
  %i.cma = getelementptr inbounds nuw i8, ptr %i.clt, i64 %i.clz
  %i.cmb = load i8, ptr %i.cma, align 1
  %i.cmc = zext i8 %i.cmb to i32
  %i.cmd = add nuw nsw i32 %i.clc, %i.ckj
  %spec.store.select72 = tail call i32 @llvm.umin.i32(i32 %i.cmd, i32 255)
  %i.cme = add nuw nsw i32 %i.clp, %i.ckk
  %spec.store.select39 = tail call i32 @llvm.umin.i32(i32 %i.cme, i32 255)
  %i.cmf = add nuw nsw i32 %i.cmc, %i.ckl
  %spec.store.select90 = tail call i32 @llvm.umin.i32(i32 %i.cmf, i32 255)
  %i.cmg = zext i8 %i.ckp to i32
  %i.cmh = sub nsw i32 8, %i.cmg
  %i.cmi = lshr i32 %spec.store.select72, %i.cmh
  %i.cmj = shl i32 %i.cmi, %i.ckx
  %i.cmk = zext i8 %i.cld to i32
  %i.cml = sub nsw i32 8, %i.cmk
  %i.cmm = lshr i32 %spec.store.select39, %i.cml
  %i.cmn = shl i32 %i.cmm, %i.clk
  %i.cmo = or i32 %i.cmn, %i.cmj
  %i.cmp = zext i8 %i.clq to i32
  %i.cmq = sub nsw i32 8, %i.cmp
  %i.cmr = lshr i32 %spec.store.select90, %i.cmq
  %i.cms = shl i32 %i.cmr, %i.clx
  %i.cmt = load i32, ptr %i.ckm, align 4
  %i.cmu = or i32 %i.cmo, %i.cmt
  %i.cmv = or i32 %i.cmu, %i.cms
  store i32 %i.cmv, ptr %.11928, align 4
  %i.cmw = getelementptr inbounds nuw i8, ptr %.11928, i64 4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %.11933 = phi i32 [ %.01932, %bb.bi ], [ %i.cjy, %bb.bh ]
  %.21929 = phi ptr [ %i.cmw, %bb.bi ], [ %.019272103, %bb.bh ] ; 3 uses
  %i.cmx = load i8, ptr %i.cka, align 4           ; 2 uses
  %i.cmy = zext i8 %i.cmx to i64
  %i.cmz = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cmy
  %i.cna = load ptr, ptr %i.cmz, align 8
  %i.cnb = load i32, ptr %.21929, align 4         ; 3 uses
  %i.cnc = load i32, ptr %i.ckb, align 4
  %i.cnd = and i32 %i.cnc, %i.cnb
  %i.cne = load i8, ptr %i.ckc, align 4
  %i.cnf = zext i8 %i.cne to i32                  ; 2 uses
  %i.cng = lshr i32 %i.cnd, %i.cnf
  %i.cnh = zext i32 %i.cng to i64
  %i.cni = getelementptr inbounds nuw i8, ptr %i.cna, i64 %i.cnh
  %i.cnj = load i8, ptr %i.cni, align 1
  %i.cnk = zext i8 %i.cnj to i32
  %i.cnl = load i8, ptr %i.ckd, align 1           ; 2 uses
  %i.cnm = zext i8 %i.cnl to i64
  %i.cnn = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cnm
  %i.cno = load ptr, ptr %i.cnn, align 8
  %i.cnp = load i32, ptr %i.cke, align 4
  %i.cnq = and i32 %i.cnp, %i.cnb
  %i.cnr = load i8, ptr %i.ckf, align 1
  %i.cns = zext i8 %i.cnr to i32                  ; 2 uses
  %i.cnt = lshr i32 %i.cnq, %i.cns
  %i.cnu = zext i32 %i.cnt to i64
  %i.cnv = getelementptr inbounds nuw i8, ptr %i.cno, i64 %i.cnu
  %i.cnw = load i8, ptr %i.cnv, align 1
  %i.cnx = zext i8 %i.cnw to i32
  %i.cny = load i8, ptr %i.ckg, align 2           ; 2 uses
  %i.cnz = zext i8 %i.cny to i64
  %i.coa = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cnz
  %i.cob = load ptr, ptr %i.coa, align 8
  %i.coc = load i32, ptr %i.ckh, align 4
  %i.cod = and i32 %i.coc, %i.cnb
  %i.coe = load i8, ptr %i.cki, align 2
  %i.cof = zext i8 %i.coe to i32                  ; 2 uses
  %i.cog = lshr i32 %i.cod, %i.cof
  %i.coh = zext i32 %i.cog to i64
  %i.coi = getelementptr inbounds nuw i8, ptr %i.cob, i64 %i.coh
  %i.coj = load i8, ptr %i.coi, align 1
  %i.cok = zext i8 %i.coj to i32
  %i.col = add nuw nsw i32 %i.cnk, %i.ckj
  %spec.store.select40 = tail call i32 @llvm.umin.i32(i32 %i.col, i32 255)
  %i.com = add nuw nsw i32 %i.cnx, %i.ckk
  %spec.store.select73 = tail call i32 @llvm.umin.i32(i32 %i.com, i32 255)
  %i.con = add nuw nsw i32 %i.cok, %i.ckl
  %spec.store.select41 = tail call i32 @llvm.umin.i32(i32 %i.con, i32 255)
  %i.coo = zext i8 %i.cmx to i32
  %i.cop = sub nsw i32 8, %i.coo
  %i.coq = lshr i32 %spec.store.select40, %i.cop
  %i.cor = shl i32 %i.coq, %i.cnf
  %i.cos = zext i8 %i.cnl to i32
  %i.cot = sub nsw i32 8, %i.cos
  %i.cou = lshr i32 %spec.store.select73, %i.cot
  %i.cov = shl i32 %i.cou, %i.cns
  %i.cow = or i32 %i.cov, %i.cor
  %i.cox = zext i8 %i.cny to i32
  %i.coy = sub nsw i32 8, %i.cox
  %i.coz = lshr i32 %spec.store.select41, %i.coy
  %i.cpa = shl i32 %i.coz, %i.cof
  %i.cpb = load i32, ptr %i.ckm, align 4
  %i.cpc = or i32 %i.cow, %i.cpb
  %i.cpd = or i32 %i.cpc, %i.cpa
  store i32 %i.cpd, ptr %.21929, align 4
  %i.cpe = getelementptr inbounds nuw i8, ptr %.21929, i64 4
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bh, %bb.bj
  %.21934 = phi i32 [ %.11933, %bb.bj ], [ %i.cjy, %bb.bh ]
  %.31930 = phi ptr [ %i.cpe, %bb.bj ], [ %.019272103, %bb.bh ] ; 3 uses
  %i.cpf = load i8, ptr %i.cka, align 4           ; 2 uses
  %i.cpg = zext i8 %i.cpf to i64
  %i.cph = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cpg
  %i.cpi = load ptr, ptr %i.cph, align 8
  %i.cpj = load i32, ptr %.31930, align 4         ; 3 uses
  %i.cpk = load i32, ptr %i.ckb, align 4
  %i.cpl = and i32 %i.cpk, %i.cpj
  %i.cpm = load i8, ptr %i.ckc, align 4
  %i.cpn = zext i8 %i.cpm to i32                  ; 2 uses
  %i.cpo = lshr i32 %i.cpl, %i.cpn
  %i.cpp = zext i32 %i.cpo to i64
  %i.cpq = getelementptr inbounds nuw i8, ptr %i.cpi, i64 %i.cpp
  %i.cpr = load i8, ptr %i.cpq, align 1
  %i.cps = zext i8 %i.cpr to i32
  %i.cpt = load i8, ptr %i.ckd, align 1           ; 2 uses
  %i.cpu = zext i8 %i.cpt to i64
  %i.cpv = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cpu
  %i.cpw = load ptr, ptr %i.cpv, align 8
  %i.cpx = load i32, ptr %i.cke, align 4
  %i.cpy = and i32 %i.cpx, %i.cpj
  %i.cpz = load i8, ptr %i.ckf, align 1
  %i.cqa = zext i8 %i.cpz to i32                  ; 2 uses
  %i.cqb = lshr i32 %i.cpy, %i.cqa
  %i.cqc = zext i32 %i.cqb to i64
  %i.cqd = getelementptr inbounds nuw i8, ptr %i.cpw, i64 %i.cqc
  %i.cqe = load i8, ptr %i.cqd, align 1
  %i.cqf = zext i8 %i.cqe to i32
  %i.cqg = load i8, ptr %i.ckg, align 2           ; 2 uses
  %i.cqh = zext i8 %i.cqg to i64
  %i.cqi = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cqh
  %i.cqj = load ptr, ptr %i.cqi, align 8
  %i.cqk = load i32, ptr %i.ckh, align 4
  %i.cql = and i32 %i.cqk, %i.cpj
  %i.cqm = load i8, ptr %i.cki, align 2
  %i.cqn = zext i8 %i.cqm to i32                  ; 2 uses
  %i.cqo = lshr i32 %i.cql, %i.cqn
  %i.cqp = zext i32 %i.cqo to i64
  %i.cqq = getelementptr inbounds nuw i8, ptr %i.cqj, i64 %i.cqp
  %i.cqr = load i8, ptr %i.cqq, align 1
  %i.cqs = zext i8 %i.cqr to i32
  %i.cqt = add nuw nsw i32 %i.cps, %i.ckj
  %spec.store.select42 = tail call i32 @llvm.umin.i32(i32 %i.cqt, i32 255)
  %i.cqu = add nuw nsw i32 %i.cqf, %i.ckk
  %spec.store.select74 = tail call i32 @llvm.umin.i32(i32 %i.cqu, i32 255)
  %i.cqv = add nuw nsw i32 %i.cqs, %i.ckl
  %spec.store.select43 = tail call i32 @llvm.umin.i32(i32 %i.cqv, i32 255)
  %i.cqw = zext i8 %i.cpf to i32
  %i.cqx = sub nsw i32 8, %i.cqw
  %i.cqy = lshr i32 %spec.store.select42, %i.cqx
  %i.cqz = shl i32 %i.cqy, %i.cpn
  %i.cra = zext i8 %i.cpt to i32
  %i.crb = sub nsw i32 8, %i.cra
  %i.crc = lshr i32 %spec.store.select74, %i.crb
  %i.crd = shl i32 %i.crc, %i.cqa
  %i.cre = or i32 %i.crd, %i.cqz
  %i.crf = zext i8 %i.cqg to i32
  %i.crg = sub nsw i32 8, %i.crf
  %i.crh = lshr i32 %spec.store.select43, %i.crg
  %i.cri = shl i32 %i.crh, %i.cqn
  %i.crj = load i32, ptr %i.ckm, align 4
  %i.crk = or i32 %i.cre, %i.crj
  %i.crl = or i32 %i.crk, %i.cri
  store i32 %i.crl, ptr %.31930, align 4
  %i.crm = getelementptr inbounds nuw i8, ptr %.31930, i64 4
  br label %bb.bl

.unreachabledefault2217:                          ; preds = %bb.bh
  unreachable

bb.bl:                                            ; preds = %bb.bh, %bb.bk
  %.31935 = phi i32 [ %.21934, %bb.bk ], [ %i.cjy, %bb.bh ] ; 2 uses
  %.41931 = phi ptr [ %i.crm, %bb.bk ], [ %.019272103, %bb.bh ] ; 3 uses
  %i.crn = load i8, ptr %i.cka, align 4           ; 2 uses
  %i.cro = zext i8 %i.crn to i64
  %i.crp = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cro
  %i.crq = load ptr, ptr %i.crp, align 8
  %i.crr = load i32, ptr %.41931, align 4         ; 3 uses
  %i.crs = load i32, ptr %i.ckb, align 4
  %i.crt = and i32 %i.crs, %i.crr
  %i.cru = load i8, ptr %i.ckc, align 4
  %i.crv = zext i8 %i.cru to i32                  ; 2 uses
  %i.crw = lshr i32 %i.crt, %i.crv
  %i.crx = zext i32 %i.crw to i64
  %i.cry = getelementptr inbounds nuw i8, ptr %i.crq, i64 %i.crx
  %i.crz = load i8, ptr %i.cry, align 1
  %i.csa = zext i8 %i.crz to i32
  %i.csb = load i8, ptr %i.ckd, align 1           ; 2 uses
  %i.csc = zext i8 %i.csb to i64
  %i.csd = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.csc
  %i.cse = load ptr, ptr %i.csd, align 8
  %i.csf = load i32, ptr %i.cke, align 4
  %i.csg = and i32 %i.csf, %i.crr
  %i.csh = load i8, ptr %i.ckf, align 1
  %i.csi = zext i8 %i.csh to i32                  ; 2 uses
  %i.csj = lshr i32 %i.csg, %i.csi
  %i.csk = zext i32 %i.csj to i64
  %i.csl = getelementptr inbounds nuw i8, ptr %i.cse, i64 %i.csk
  %i.csm = load i8, ptr %i.csl, align 1
  %i.csn = zext i8 %i.csm to i32
  %i.cso = load i8, ptr %i.ckg, align 2           ; 2 uses
  %i.csp = zext i8 %i.cso to i64
  %i.csq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.csp
  %i.csr = load ptr, ptr %i.csq, align 8
  %i.css = load i32, ptr %i.ckh, align 4
  %i.cst = and i32 %i.css, %i.crr
  %i.csu = load i8, ptr %i.cki, align 2
  %i.csv = zext i8 %i.csu to i32                  ; 2 uses
  %i.csw = lshr i32 %i.cst, %i.csv
  %i.csx = zext i32 %i.csw to i64
  %i.csy = getelementptr inbounds nuw i8, ptr %i.csr, i64 %i.csx
  %i.csz = load i8, ptr %i.csy, align 1
  %i.cta = zext i8 %i.csz to i32
  %i.ctb = add nuw nsw i32 %i.csa, %i.ckj
  %spec.store.select44 = tail call i32 @llvm.umin.i32(i32 %i.ctb, i32 255)
  %i.ctc = add nuw nsw i32 %i.csn, %i.ckk
  %spec.store.select75 = tail call i32 @llvm.umin.i32(i32 %i.ctc, i32 255)
  %i.ctd = add nuw nsw i32 %i.cta, %i.ckl
  %spec.store.select45 = tail call i32 @llvm.umin.i32(i32 %i.ctd, i32 255)
  %i.cte = zext i8 %i.crn to i32
  %i.ctf = sub nsw i32 8, %i.cte
  %i.ctg = lshr i32 %spec.store.select44, %i.ctf
  %i.cth = shl i32 %i.ctg, %i.crv
  %i.cti = zext i8 %i.csb to i32
  %i.ctj = sub nsw i32 8, %i.cti
  %i.ctk = lshr i32 %spec.store.select75, %i.ctj
  %i.ctl = shl i32 %i.ctk, %i.csi
  %i.ctm = or i32 %i.ctl, %i.cth
  %i.ctn = zext i8 %i.cso to i32
  %i.cto = sub nsw i32 8, %i.ctn
  %i.ctp = lshr i32 %spec.store.select45, %i.cto
  %i.ctq = shl i32 %i.ctp, %i.csv
  %i.ctr = load i32, ptr %i.ckm, align 4
  %i.cts = or i32 %i.ctm, %i.ctr
  %i.ctt = or i32 %i.cts, %i.ctq
  store i32 %i.ctt, ptr %.41931, align 4
  %i.ctu = getelementptr inbounds nuw i8, ptr %.41931, i64 4 ; 2 uses
  %i.ctv = add nsw i32 %.31935, -1
  %i.ctw = icmp sgt i32 %.31935, 1
  br i1 %i.ctw, label %bb.bi, label %bb.bm, !llvm.loop !68

bb.bm:                                            ; preds = %bb.bl
  %i.ctx = getelementptr inbounds [4 x i8], ptr %i.ctu, i64 %i.ckn
  %.not1971 = icmp eq i32 %i.cko, 0
  br i1 %.not1971, label %.loopexit, label %bb.bh, !llvm.loop !69

bb.bn:                                            ; preds = %.split27
  %i.cty = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ctz = load i32, ptr %i.cty, align 4          ; 2 uses
  %.not19702099 = icmp eq i32 %i.ctz, 0
  br i1 %.not19702099, label %.loopexit, label %.lr.ph2101

.lr.ph2101:                                       ; preds = %bb.bn
  %i.cua = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cub = load ptr, ptr %i.cua, align 8
  %i.cuc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cud = load i32, ptr %i.cuc, align 4
  %i.cue = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cuf = load i32, ptr %i.cue, align 8
  %i.cug = sdiv i32 %i.cuf, 4                     ; 2 uses
  %i.cuh = mul nsw i32 %i.cud, %i.cug
  %i.cui = sext i32 %i.cuh to i64
  %i.cuj = getelementptr inbounds [4 x i8], ptr %i.cub, i64 %i.cui
  %i.cuk = load i32, ptr %1, align 4
  %i.cul = sext i32 %i.cuk to i64
  %i.cum = getelementptr inbounds [4 x i8], ptr %i.cuj, i64 %i.cul
  %i.cun = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cuo = load i32, ptr %i.cun, align 4          ; 3 uses
  %i.cup = sub nsw i32 %i.cug, %i.cuo
  %i.cuq = add nsw i32 %i.cuo, 3
  %i.cur = sdiv i32 %i.cuq, 4                     ; 4 uses
  %i.cus = and i32 %i.cuo, 3
  %i.cut = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.cuu = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.cuw = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.cux = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.cuy = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.cuz = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.cva = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.cvb = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.cvc = zext i8 %3 to i16                      ; 4 uses
  %i.cvd = zext i8 %4 to i16                      ; 4 uses
  %i.cve = zext i8 %5 to i16                      ; 4 uses
  %i.cvf = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.cvg = sext i32 %i.cup to i64
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph2101, %bb.bt
  %.in2142 = phi i32 [ %i.ctz, %.lr.ph2101 ], [ %i.cvh, %bb.bt ]
  %.019372100 = phi ptr [ %i.cum, %.lr.ph2101 ], [ %i.deq, %bb.bt ] ; 4 uses
  %i.cvh = add nsw i32 %.in2142, -1               ; 2 uses
  switch i32 %i.cus, label %.unreachabledefault2218 [
    i32 0, label %bb.bp
    i32 3, label %bb.bq
    i32 2, label %bb.br
    i32 1, label %bb.bs
  ]

bb.bp:                                            ; preds = %bb.bo, %bb.bs
  %.01942 = phi i32 [ %i.cur, %bb.bo ], [ %i.deo, %bb.bs ]
  %.11938 = phi ptr [ %.019372100, %bb.bo ], [ %i.den, %bb.bs ] ; 3 uses
  %i.cvi = load i8, ptr %i.cut, align 4           ; 2 uses
  %i.cvj = zext i8 %i.cvi to i64
  %i.cvk = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cvj
  %i.cvl = load ptr, ptr %i.cvk, align 8
  %i.cvm = load i32, ptr %.11938, align 4         ; 3 uses
  %i.cvn = load i32, ptr %i.cuu, align 4
  %i.cvo = and i32 %i.cvn, %i.cvm
  %i.cvp = load i8, ptr %i.cuv, align 4
  %i.cvq = zext i8 %i.cvp to i32                  ; 2 uses
  %i.cvr = lshr i32 %i.cvo, %i.cvq
  %i.cvs = zext i32 %i.cvr to i64
  %i.cvt = getelementptr inbounds nuw i8, ptr %i.cvl, i64 %i.cvs
  %i.cvu = load i8, ptr %i.cvt, align 1
  %i.cvv = zext i8 %i.cvu to i16
  %i.cvw = load i8, ptr %i.cuw, align 1           ; 2 uses
  %i.cvx = zext i8 %i.cvw to i64
  %i.cvy = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cvx
  %i.cvz = load ptr, ptr %i.cvy, align 8
  %i.cwa = load i32, ptr %i.cux, align 4
  %i.cwb = and i32 %i.cwa, %i.cvm
  %i.cwc = load i8, ptr %i.cuy, align 1
  %i.cwd = zext i8 %i.cwc to i32                  ; 2 uses
  %i.cwe = lshr i32 %i.cwb, %i.cwd
  %i.cwf = zext i32 %i.cwe to i64
  %i.cwg = getelementptr inbounds nuw i8, ptr %i.cvz, i64 %i.cwf
  %i.cwh = load i8, ptr %i.cwg, align 1
  %i.cwi = zext i8 %i.cwh to i16
  %i.cwj = load i8, ptr %i.cuz, align 2           ; 2 uses
  %i.cwk = zext i8 %i.cwj to i64
  %i.cwl = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cwk
  %i.cwm = load ptr, ptr %i.cwl, align 8
  %i.cwn = load i32, ptr %i.cva, align 4
  %i.cwo = and i32 %i.cwn, %i.cvm
  %i.cwp = load i8, ptr %i.cvb, align 2
  %i.cwq = zext i8 %i.cwp to i32                  ; 2 uses
  %i.cwr = lshr i32 %i.cwo, %i.cwq
  %i.cws = zext i32 %i.cwr to i64
  %i.cwt = getelementptr inbounds nuw i8, ptr %i.cwm, i64 %i.cws
  %i.cwu = load i8, ptr %i.cwt, align 1
  %i.cwv = zext i8 %i.cwu to i16
  %.lhs.trunc2027 = mul nuw i16 %i.cvv, %i.cvc
  %i.cww = udiv i16 %.lhs.trunc2027, 255
  %.zext2028 = zext nneg i16 %i.cww to i32
  %.lhs.trunc2029 = mul nuw i16 %i.cwi, %i.cvd
  %i.cwx = udiv i16 %.lhs.trunc2029, 255
  %.zext2030 = zext nneg i16 %i.cwx to i32
  %.lhs.trunc2031 = mul nuw i16 %i.cwv, %i.cve
  %i.cwy = udiv i16 %.lhs.trunc2031, 255
  %.zext2032 = zext nneg i16 %i.cwy to i32
  %i.cwz = zext i8 %i.cvi to i32
  %i.cxa = sub nsw i32 8, %i.cwz
  %i.cxb = lshr i32 %.zext2028, %i.cxa
  %i.cxc = shl i32 %i.cxb, %i.cvq
  %i.cxd = zext i8 %i.cvw to i32
  %i.cxe = sub nsw i32 8, %i.cxd
  %i.cxf = lshr i32 %.zext2030, %i.cxe
  %i.cxg = shl i32 %i.cxf, %i.cwd
  %i.cxh = or i32 %i.cxg, %i.cxc
  %i.cxi = zext i8 %i.cwj to i32
  %i.cxj = sub nsw i32 8, %i.cxi
  %i.cxk = lshr i32 %.zext2032, %i.cxj
  %i.cxl = shl i32 %i.cxk, %i.cwq
  %i.cxm = load i32, ptr %i.cvf, align 4
  %i.cxn = or i32 %i.cxh, %i.cxm
  %i.cxo = or i32 %i.cxn, %i.cxl
  store i32 %i.cxo, ptr %.11938, align 4
  %i.cxp = getelementptr inbounds nuw i8, ptr %.11938, i64 4
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %.11943 = phi i32 [ %.01942, %bb.bp ], [ %i.cur, %bb.bo ]
  %.21939 = phi ptr [ %i.cxp, %bb.bp ], [ %.019372100, %bb.bo ] ; 3 uses
  %i.cxq = load i8, ptr %i.cut, align 4           ; 2 uses
  %i.cxr = zext i8 %i.cxq to i64
  %i.cxs = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cxr
  %i.cxt = load ptr, ptr %i.cxs, align 8
  %i.cxu = load i32, ptr %.21939, align 4         ; 3 uses
  %i.cxv = load i32, ptr %i.cuu, align 4
  %i.cxw = and i32 %i.cxv, %i.cxu
  %i.cxx = load i8, ptr %i.cuv, align 4
  %i.cxy = zext i8 %i.cxx to i32                  ; 2 uses
  %i.cxz = lshr i32 %i.cxw, %i.cxy
  %i.cya = zext i32 %i.cxz to i64
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.cxt, i64 %i.cya
  %i.cyc = load i8, ptr %i.cyb, align 1
  %i.cyd = zext i8 %i.cyc to i16
  %i.cye = load i8, ptr %i.cuw, align 1           ; 2 uses
  %i.cyf = zext i8 %i.cye to i64
  %i.cyg = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cyf
  %i.cyh = load ptr, ptr %i.cyg, align 8
  %i.cyi = load i32, ptr %i.cux, align 4
  %i.cyj = and i32 %i.cyi, %i.cxu
  %i.cyk = load i8, ptr %i.cuy, align 1
  %i.cyl = zext i8 %i.cyk to i32                  ; 2 uses
  %i.cym = lshr i32 %i.cyj, %i.cyl
  %i.cyn = zext i32 %i.cym to i64
  %i.cyo = getelementptr inbounds nuw i8, ptr %i.cyh, i64 %i.cyn
  %i.cyp = load i8, ptr %i.cyo, align 1
  %i.cyq = zext i8 %i.cyp to i16
  %i.cyr = load i8, ptr %i.cuz, align 2           ; 2 uses
  %i.cys = zext i8 %i.cyr to i64
  %i.cyt = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cys
  %i.cyu = load ptr, ptr %i.cyt, align 8
  %i.cyv = load i32, ptr %i.cva, align 4
  %i.cyw = and i32 %i.cyv, %i.cxu
  %i.cyx = load i8, ptr %i.cvb, align 2
  %i.cyy = zext i8 %i.cyx to i32                  ; 2 uses
  %i.cyz = lshr i32 %i.cyw, %i.cyy
  %i.cza = zext i32 %i.cyz to i64
  %i.czb = getelementptr inbounds nuw i8, ptr %i.cyu, i64 %i.cza
  %i.czc = load i8, ptr %i.czb, align 1
  %i.czd = zext i8 %i.czc to i16
  %.lhs.trunc2033 = mul nuw i16 %i.cyd, %i.cvc
  %i.cze = udiv i16 %.lhs.trunc2033, 255
  %.zext2034 = zext nneg i16 %i.cze to i32
  %.lhs.trunc2035 = mul nuw i16 %i.cyq, %i.cvd
  %i.czf = udiv i16 %.lhs.trunc2035, 255
  %.zext2036 = zext nneg i16 %i.czf to i32
  %.lhs.trunc2037 = mul nuw i16 %i.czd, %i.cve
  %i.czg = udiv i16 %.lhs.trunc2037, 255
  %.zext2038 = zext nneg i16 %i.czg to i32
  %i.czh = zext i8 %i.cxq to i32
  %i.czi = sub nsw i32 8, %i.czh
  %i.czj = lshr i32 %.zext2034, %i.czi
  %i.czk = shl i32 %i.czj, %i.cxy
  %i.czl = zext i8 %i.cye to i32
  %i.czm = sub nsw i32 8, %i.czl
  %i.czn = lshr i32 %.zext2036, %i.czm
  %i.czo = shl i32 %i.czn, %i.cyl
  %i.czp = or i32 %i.czo, %i.czk
  %i.czq = zext i8 %i.cyr to i32
  %i.czr = sub nsw i32 8, %i.czq
  %i.czs = lshr i32 %.zext2038, %i.czr
  %i.czt = shl i32 %i.czs, %i.cyy
  %i.czu = load i32, ptr %i.cvf, align 4
  %i.czv = or i32 %i.czp, %i.czu
  %i.czw = or i32 %i.czv, %i.czt
  store i32 %i.czw, ptr %.21939, align 4
  %i.czx = getelementptr inbounds nuw i8, ptr %.21939, i64 4
  br label %bb.br

bb.br:                                            ; preds = %bb.bo, %bb.bq
  %.21944 = phi i32 [ %.11943, %bb.bq ], [ %i.cur, %bb.bo ]
  %.31940 = phi ptr [ %i.czx, %bb.bq ], [ %.019372100, %bb.bo ] ; 3 uses
  %i.czy = load i8, ptr %i.cut, align 4           ; 2 uses
  %i.czz = zext i8 %i.czy to i64
  %i.daa = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.czz
  %i.dab = load ptr, ptr %i.daa, align 8
  %i.dac = load i32, ptr %.31940, align 4         ; 3 uses
  %i.dad = load i32, ptr %i.cuu, align 4
  %i.dae = and i32 %i.dad, %i.dac
  %i.daf = load i8, ptr %i.cuv, align 4
  %i.dag = zext i8 %i.daf to i32                  ; 2 uses
  %i.dah = lshr i32 %i.dae, %i.dag
  %i.dai = zext i32 %i.dah to i64
  %i.daj = getelementptr inbounds nuw i8, ptr %i.dab, i64 %i.dai
  %i.dak = load i8, ptr %i.daj, align 1
  %i.dal = zext i8 %i.dak to i16
  %i.dam = load i8, ptr %i.cuw, align 1           ; 2 uses
  %i.dan = zext i8 %i.dam to i64
  %i.dao = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.dan
  %i.dap = load ptr, ptr %i.dao, align 8
  %i.daq = load i32, ptr %i.cux, align 4
  %i.dar = and i32 %i.daq, %i.dac
  %i.das = load i8, ptr %i.cuy, align 1
  %i.dat = zext i8 %i.das to i32                  ; 2 uses
  %i.dau = lshr i32 %i.dar, %i.dat
  %i.dav = zext i32 %i.dau to i64
  %i.daw = getelementptr inbounds nuw i8, ptr %i.dap, i64 %i.dav
  %i.dax = load i8, ptr %i.daw, align 1
  %i.day = zext i8 %i.dax to i16
  %i.daz = load i8, ptr %i.cuz, align 2           ; 2 uses
  %i.dba = zext i8 %i.daz to i64
  %i.dbb = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.dba
  %i.dbc = load ptr, ptr %i.dbb, align 8
  %i.dbd = load i32, ptr %i.cva, align 4
  %i.dbe = and i32 %i.dbd, %i.dac
  %i.dbf = load i8, ptr %i.cvb, align 2
  %i.dbg = zext i8 %i.dbf to i32                  ; 2 uses
  %i.dbh = lshr i32 %i.dbe, %i.dbg
  %i.dbi = zext i32 %i.dbh to i64
  %i.dbj = getelementptr inbounds nuw i8, ptr %i.dbc, i64 %i.dbi
  %i.dbk = load i8, ptr %i.dbj, align 1
  %i.dbl = zext i8 %i.dbk to i16
  %.lhs.trunc2039 = mul nuw i16 %i.dal, %i.cvc
  %i.dbm = udiv i16 %.lhs.trunc2039, 255
  %.zext2040 = zext nneg i16 %i.dbm to i32
  %.lhs.trunc2041 = mul nuw i16 %i.day, %i.cvd
  %i.dbn = udiv i16 %.lhs.trunc2041, 255
  %.zext2042 = zext nneg i16 %i.dbn to i32
  %.lhs.trunc2043 = mul nuw i16 %i.dbl, %i.cve
  %i.dbo = udiv i16 %.lhs.trunc2043, 255
  %.zext2044 = zext nneg i16 %i.dbo to i32
  %i.dbp = zext i8 %i.czy to i32
  %i.dbq = sub nsw i32 8, %i.dbp
  %i.dbr = lshr i32 %.zext2040, %i.dbq
  %i.dbs = shl i32 %i.dbr, %i.dag
  %i.dbt = zext i8 %i.dam to i32
  %i.dbu = sub nsw i32 8, %i.dbt
  %i.dbv = lshr i32 %.zext2042, %i.dbu
  %i.dbw = shl i32 %i.dbv, %i.dat
  %i.dbx = or i32 %i.dbw, %i.dbs
  %i.dby = zext i8 %i.daz to i32
  %i.dbz = sub nsw i32 8, %i.dby
  %i.dca = lshr i32 %.zext2044, %i.dbz
  %i.dcb = shl i32 %i.dca, %i.dbg
  %i.dcc = load i32, ptr %i.cvf, align 4
  %i.dcd = or i32 %i.dbx, %i.dcc
  %i.dce = or i32 %i.dcd, %i.dcb
  store i32 %i.dce, ptr %.31940, align 4
  %i.dcf = getelementptr inbounds nuw i8, ptr %.31940, i64 4
  br label %bb.bs

.unreachabledefault2218:                          ; preds = %bb.bo
  unreachable

bb.bs:                                            ; preds = %bb.bo, %bb.br
  %.31945 = phi i32 [ %.21944, %bb.br ], [ %i.cur, %bb.bo ] ; 2 uses
  %.41941 = phi ptr [ %i.dcf, %bb.br ], [ %.019372100, %bb.bo ] ; 3 uses
  %i.dcg = load i8, ptr %i.cut, align 4           ; 2 uses
  %i.dch = zext i8 %i.dcg to i64
  %i.dci = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.dch
  %i.dcj = load ptr, ptr %i.dci, align 8
  %i.dck = load i32, ptr %.41941, align 4         ; 3 uses
  %i.dcl = load i32, ptr %i.cuu, align 4
  %i.dcm = and i32 %i.dcl, %i.dck
  %i.dcn = load i8, ptr %i.cuv, align 4
  %i.dco = zext i8 %i.dcn to i32                  ; 2 uses
  %i.dcp = lshr i32 %i.dcm, %i.dco
  %i.dcq = zext i32 %i.dcp to i64
  %i.dcr = getelementptr inbounds nuw i8, ptr %i.dcj, i64 %i.dcq
  %i.dcs = load i8, ptr %i.dcr, align 1
  %i.dct = zext i8 %i.dcs to i16
  %i.dcu = load i8, ptr %i.cuw, align 1           ; 2 uses
  %i.dcv = zext i8 %i.dcu to i64
  %i.dcw = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.dcv
  %i.dcx = load ptr, ptr %i.dcw, align 8
  %i.dcy = load i32, ptr %i.cux, align 4
  %i.dcz = and i32 %i.dcy, %i.dck
  %i.dda = load i8, ptr %i.cuy, align 1
  %i.ddb = zext i8 %i.dda to i32                  ; 2 uses
  %i.ddc = lshr i32 %i.dcz, %i.ddb
  %i.ddd = zext i32 %i.ddc to i64
  %i.dde = getelementptr inbounds nuw i8, ptr %i.dcx, i64 %i.ddd
  %i.ddf = load i8, ptr %i.dde, align 1
  %i.ddg = zext i8 %i.ddf to i16
  %i.ddh = load i8, ptr %i.cuz, align 2           ; 2 uses
  %i.ddi = zext i8 %i.ddh to i64
  %i.ddj = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ddi
  %i.ddk = load ptr, ptr %i.ddj, align 8
  %i.ddl = load i32, ptr %i.cva, align 4
  %i.ddm = and i32 %i.ddl, %i.dck
  %i.ddn = load i8, ptr %i.cvb, align 2
  %i.ddo = zext i8 %i.ddn to i32                  ; 2 uses
  %i.ddp = lshr i32 %i.ddm, %i.ddo
  %i.ddq = zext i32 %i.ddp to i64
  %i.ddr = getelementptr inbounds nuw i8, ptr %i.ddk, i64 %i.ddq
  %i.dds = load i8, ptr %i.ddr, align 1
  %i.ddt = zext i8 %i.dds to i16
  %.lhs.trunc2045 = mul nuw i16 %i.dct, %i.cvc
  %i.ddu = udiv i16 %.lhs.trunc2045, 255
  %.zext2046 = zext nneg i16 %i.ddu to i32
  %.lhs.trunc2047 = mul nuw i16 %i.ddg, %i.cvd
  %i.ddv = udiv i16 %.lhs.trunc2047, 255
  %.zext2048 = zext nneg i16 %i.ddv to i32
  %.lhs.trunc2049 = mul nuw i16 %i.ddt, %i.cve
  %i.ddw = udiv i16 %.lhs.trunc2049, 255
  %.zext2050 = zext nneg i16 %i.ddw to i32
  %i.ddx = zext i8 %i.dcg to i32
  %i.ddy = sub nsw i32 8, %i.ddx
  %i.ddz = lshr i32 %.zext2046, %i.ddy
  %i.dea = shl i32 %i.ddz, %i.dco
  %i.deb = zext i8 %i.dcu to i32
  %i.dec = sub nsw i32 8, %i.deb
  %i.ded = lshr i32 %.zext2048, %i.dec
  %i.dee = shl i32 %i.ded, %i.ddb
  %i.def = or i32 %i.dee, %i.dea
  %i.deg = zext i8 %i.ddh to i32
  %i.deh = sub nsw i32 8, %i.deg
  %i.dei = lshr i32 %.zext2050, %i.deh
  %i.dej = shl i32 %i.dei, %i.ddo
  %i.dek = load i32, ptr %i.cvf, align 4
  %i.del = or i32 %i.def, %i.dek
  %i.dem = or i32 %i.del, %i.dej
  store i32 %i.dem, ptr %.41941, align 4
  %i.den = getelementptr inbounds nuw i8, ptr %.41941, i64 4 ; 2 uses
  %i.deo = add nsw i32 %.31945, -1
  %i.dep = icmp sgt i32 %.31945, 1
  br i1 %i.dep, label %bb.bp, label %bb.bt, !llvm.loop !70

bb.bt:                                            ; preds = %bb.bs
  %i.deq = getelementptr inbounds [4 x i8], ptr %i.den, i64 %i.cvg
  %.not1970 = icmp eq i32 %i.cvh, 0
  br i1 %.not1970, label %.loopexit, label %bb.bo, !llvm.loop !71

bb.bu:                                            ; preds = %.split27
  %i.der = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.des = load i32, ptr %i.der, align 4          ; 2 uses
  %.not2097 = icmp eq i32 %i.des, 0
  br i1 %.not2097, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bu
  %i.det = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.deu = load ptr, ptr %i.det, align 8
  %i.dev = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dew = load i32, ptr %i.dev, align 4
  %i.dex = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dey = load i32, ptr %i.dex, align 8
  %i.dez = sdiv i32 %i.dey, 4                     ; 2 uses
  %i.dfa = mul nsw i32 %i.dew, %i.dez
  %i.dfb = sext i32 %i.dfa to i64
  %i.dfc = getelementptr inbounds [4 x i8], ptr %i.deu, i64 %i.dfb
  %i.dfd = load i32, ptr %1, align 4
  %i.dfe = sext i32 %i.dfd to i64
  %i.dff = getelementptr inbounds [4 x i8], ptr %i.dfc, i64 %i.dfe
  %i.dfg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dfh = load i32, ptr %i.dfg, align 4          ; 3 uses
  %i.dfi = sub nsw i32 %i.dez, %i.dfh
  %i.dfj = add nsw i32 %i.dfh, 3
  %i.dfk = sdiv i32 %i.dfj, 4                     ; 4 uses
  %i.dfl = and i32 %i.dfh, 3
  %i.dfm = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.dfn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.dfo = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.dfp = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.dfq = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.dfr = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.dfs = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.dft = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.dfu = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.dfv = zext i8 %3 to i32                      ; 4 uses
  %i.dfw = zext i8 %4 to i32                      ; 4 uses
  %i.dfx = zext i8 %5 to i32                      ; 4 uses
  %i.dfy = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.dfz = sext i32 %i.dfi to i64
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph, %bb.ca
  %.in = phi i32 [ %i.des, %.lr.ph ], [ %i.dga, %bb.ca ]
  %.019472098 = phi ptr [ %i.dff, %.lr.ph ], [ %i.drf, %bb.ca ] ; 4 uses
  %i.dga = add nsw i32 %.in, -1                   ; 2 uses
  switch i32 %i.dfl, label %.unreachabledefault2219 [
    i32 0, label %bb.bw
    i32 3, label %bb.bx
    i32 2, label %bb.by
    i32 1, label %bb.bz
  ]

bb.bw:                                            ; preds = %bb.bv, %bb.bz
  %.01952 = phi i32 [ %i.dfk, %bb.bv ], [ %i.drd, %bb.bz ]
  %.11948 = phi ptr [ %.019472098, %bb.bv ], [ %i.drc, %bb.bz ] ; 3 uses
  %i.dgb = load i8, ptr %i.dfm, align 4           ; 2 uses
  %i.dgc = zext i8 %i.dgb to i64
  %i.dgd = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.dgc
  %i.dge = load ptr, ptr %i.dgd, align 8
  %i.dgf = load i32, ptr %.11948, align 4         ; 3 uses
  %i.dgg = load i32, ptr %i.dfn, align 4
  %i.dgh = and i32 %i.dgg, %i.dgf
  %i.dgi = load i8, ptr %i.dfo, align 4
  %i.dgj = zext i8 %i.dgi to i32                  ; 2 uses
  %i.dgk = lshr i32 %i.dgh, %i.dgj
  %i.dgl = zext i32 %i.dgk to i64
  %i.dgm = getelementptr inbounds nuw i8, ptr %i.dge, i64 %i.dgl
  %i.dgn = load i8, ptr %i.dgm, align 1
  %i.dgo = zext i8 %i.dgn to i32                  ; 2 uses
  %i.dgp = load i8, ptr %i.dfp, align 1           ; 2 uses
  %i.dgq = zext i8 %i.dgp to i64
  %i.dgr = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.dgq
  %i.dgs = load ptr, ptr %i.dgr, align 8
  %i.dgt = load i32, ptr %i.dfq, align 4
  %i.dgu = and i32 %i.dgt, %i.dgf
  %i.dgv = load i8, ptr %i.dfr, align 1
  %i.dgw = zext i8 %i.dgv to i32                  ; 2 uses
  %i.dgx = lshr i32 %i.dgu, %i.dgw
  %i.dgy = zext i32 %i.dgx to i64
  %i.dgz = getelementptr inbounds nuw i8, ptr %i.dgs, i64 %i.dgy
  %i.dha = load i8, ptr %i.dgz, align 1
  %i.dhb = zext i8 %i.dha to i32                  ; 2 uses
  %i.dhc = load i8, ptr %i.dfs, align 2           ; 2 uses
  %i.dhd = zext i8 %i.dhc to i64
  %i.dhe = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.dhd
  %i.dhf = load ptr, ptr %i.dhe, align 8
  %i.dhg = load i32, ptr %i.dft, align 4
  %i.dhh = and i32 %i.dhg, %i.dgf
  %i.dhi = load i8, ptr %i.dfu, align 2
  %i.dhj = zext i8 %i.dhi to i32                  ; 2 uses
  %i.dhk = lshr i32 %i.dhh, %i.dhj
  %i.dhl = zext i32 %i.dhk to i64
  %i.dhm = getelementptr inbounds nuw i8, ptr %i.dhf, i64 %i.dhl
  %i.dhn = load i8, ptr %i.dhm, align 1
  %i.dho = zext i8 %i.dhn to i32                  ; 2 uses
  %i.dhp = mul nuw nsw i32 %i.dgo, %i.dfv
  %.lhs.trunc2051 = trunc nuw i32 %i.dhp to i16
  %i.dhq = udiv i16 %.lhs.trunc2051, 255
  %.zext2052 = zext nneg i16 %i.dhq to i32
  %i.dhr = mul nuw nsw i32 %i.dgo, %i.d
  %i.dhs = udiv i32 %i.dhr, 255
  %i.dht = add nuw nsw i32 %i.dhs, %.zext2052
  %spec.store.select76 = tail call i32 @llvm.umin.i32(i32 %i.dht, i32 255)
  %i.dhu = mul nuw nsw i32 %i.dhb, %i.dfw
  %.lhs.trunc2053 = trunc nuw i32 %i.dhu to i16
  %i.dhv = udiv i16 %.lhs.trunc2053, 255
  %.zext2054 = zext nneg i16 %i.dhv to i32
  %i.dhw = mul nuw nsw i32 %i.dhb, %i.d
  %i.dhx = udiv i32 %i.dhw, 255
  %i.dhy = add nuw nsw i32 %i.dhx, %.zext2054
  %spec.store.select48 = tail call i32 @llvm.umin.i32(i32 %i.dhy, i32 255)
  %i.dhz = mul nuw nsw i32 %i.dho, %i.dfx
  %.lhs.trunc2055 = trunc nuw i32 %i.dhz to i16
  %i.dia = udiv i16 %.lhs.trunc2055, 255
  %.zext2056 = zext nneg i16 %i.dia to i32
  %i.dib = mul nuw nsw i32 %i.dho, %i.d
  %i.dic = udiv i32 %i.dib, 255
  %i.did = add nuw nsw i32 %i.dic, %.zext2056
  %spec.store.select91 = tail call i32 @llvm.umin.i32(i32 %i.did, i32 255)
  %i.die = zext i8 %i.dgb to i32
  %i.dif = sub nsw i32 8, %i.die
  %i.dig = lshr i32 %spec.store.select76, %i.dif
  %i.dih = shl i32 %i.dig, %i.dgj
  %i.dii = zext i8 %i.dgp to i32
  %i.dij = sub nsw i32 8, %i.dii
  %i.dik = lshr i32 %spec.store.select48, %i.dij
  %i.dil = shl i32 %i.dik, %i.dgw
  %i.dim = zext i8 %i.dhc to i32
  %i.din = sub nsw i32 8, %i.dim
  %i.dio = lshr i32 %spec.store.select91, %i.din
  %i.dip = shl i32 %i.dio, %i.dhj
  %i.diq = load i32, ptr %i.dfy, align 4
  %i.dir = or i32 %i.diq, %i.dih
  %i.dis = or i32 %i.dir, %i.dil
  %i.dit = or i32 %i.dis, %i.dip
  store i32 %i.dit, ptr %.11948, align 4
  %i.diu = getelementptr inbounds nuw i8, ptr %.11948, i64 4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %.11953 = phi i32 [ %.01952, %bb.bw ], [ %i.dfk, %bb.bv ]
  %.21949 = phi ptr [ %i.diu, %bb.bw ], [ %.019472098, %bb.bv ] ; 3 uses
  %i.div = load i8, ptr %i.dfm, align 4           ; 2 uses
  %i.diw = zext i8 %i.div to i64
  %i.dix = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.diw
  %i.diy = load ptr, ptr %i.dix, align 8
  %i.diz = load i32, ptr %.21949, align 4         ; 3 uses
  %i.dja = load i32, ptr %i.dfn, align 4
  %i.djb = and i32 %i.dja, %i.diz
  %i.djc = load i8, ptr %i.dfo, align 4
  %i.djd = zext i8 %i.djc to i32                  ; 2 uses
  %i.dje = lshr i32 %i.djb, %i.djd
  %i.djf = zext i32 %i.dje to i64
  %i.djg = getelementptr inbounds nuw i8, ptr %i.diy, i64 %i.djf
  %i.djh = load i8, ptr %i.djg, align 1
  %i.dji = zext i8 %i.djh to i32                  ; 2 uses
  %i.djj = load i8, ptr %i.dfp, align 1           ; 2 uses
  %i.djk = zext i8 %i.djj to i64
  %i.djl = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.djk
  %i.djm = load ptr, ptr %i.djl, align 8
  %i.djn = load i32, ptr %i.dfq, align 4
  %i.djo = and i32 %i.djn, %i.diz
  %i.djp = load i8, ptr %i.dfr, align 1
  %i.djq = zext i8 %i.djp to i32                  ; 2 uses
  %i.djr = lshr i32 %i.djo, %i.djq
  %i.djs = zext i32 %i.djr to i64
  %i.djt = getelementptr inbounds nuw i8, ptr %i.djm, i64 %i.djs
  %i.dju = load i8, ptr %i.djt, align 1
  %i.djv = zext i8 %i.dju to i32                  ; 2 uses
  %i.djw = load i8, ptr %i.dfs, align 2           ; 2 uses
  %i.djx = zext i8 %i.djw to i64
  %i.djy = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.djx
  %i.djz = load ptr, ptr %i.djy, align 8
  %i.dka = load i32, ptr %i.dft, align 4
  %i.dkb = and i32 %i.dka, %i.diz
  %i.dkc = load i8, ptr %i.dfu, align 2
  %i.dkd = zext i8 %i.dkc to i32                  ; 2 uses
  %i.dke = lshr i32 %i.dkb, %i.dkd
  %i.dkf = zext i32 %i.dke to i64
  %i.dkg = getelementptr inbounds nuw i8, ptr %i.djz, i64 %i.dkf
  %i.dkh = load i8, ptr %i.dkg, align 1
  %i.dki = zext i8 %i.dkh to i32                  ; 2 uses
  %i.dkj = mul nuw nsw i32 %i.dji, %i.dfv
  %.lhs.trunc2057 = trunc nuw i32 %i.dkj to i16
  %i.dkk = udiv i16 %.lhs.trunc2057, 255
  %.zext2058 = zext nneg i16 %i.dkk to i32
  %i.dkl = mul nuw nsw i32 %i.dji, %i.d
  %i.dkm = udiv i32 %i.dkl, 255
  %i.dkn = add nuw nsw i32 %i.dkm, %.zext2058
  %spec.store.select49 = tail call i32 @llvm.umin.i32(i32 %i.dkn, i32 255)
  %i.dko = mul nuw nsw i32 %i.djv, %i.dfw
  %.lhs.trunc2059 = trunc nuw i32 %i.dko to i16
  %i.dkp = udiv i16 %.lhs.trunc2059, 255
  %.zext2060 = zext nneg i16 %i.dkp to i32
  %i.dkq = mul nuw nsw i32 %i.djv, %i.d
  %i.dkr = udiv i32 %i.dkq, 255
  %i.dks = add nuw nsw i32 %i.dkr, %.zext2060
  %spec.store.select77 = tail call i32 @llvm.umin.i32(i32 %i.dks, i32 255)
  %i.dkt = mul nuw nsw i32 %i.dki, %i.dfx
  %.lhs.trunc2061 = trunc nuw i32 %i.dkt to i16
  %i.dku = udiv i16 %.lhs.trunc2061, 255
  %.zext2062 = zext nneg i16 %i.dku to i32
  %i.dkv = mul nuw nsw i32 %i.dki, %i.d
  %i.dkw = udiv i32 %i.dkv, 255
  %i.dkx = add nuw nsw i32 %i.dkw, %.zext2062
  %spec.store.select50 = tail call i32 @llvm.umin.i32(i32 %i.dkx, i32 255)
  %i.dky = zext i8 %i.div to i32
  %i.dkz = sub nsw i32 8, %i.dky
  %i.dla = lshr i32 %spec.store.select49, %i.dkz
  %i.dlb = shl i32 %i.dla, %i.djd
  %i.dlc = zext i8 %i.djj to i32
  %i.dld = sub nsw i32 8, %i.dlc
  %i.dle = lshr i32 %spec.store.select77, %i.dld
  %i.dlf = shl i32 %i.dle, %i.djq
  %i.dlg = zext i8 %i.djw to i32
  %i.dlh = sub nsw i32 8, %i.dlg
  %i.dli = lshr i32 %spec.store.select50, %i.dlh
  %i.dlj = shl i32 %i.dli, %i.dkd
  %i.dlk = load i32, ptr %i.dfy, align 4
  %i.dll = or i32 %i.dlk, %i.dlb
  %i.dlm = or i32 %i.dll, %i.dlf
  %i.dln = or i32 %i.dlm, %i.dlj
  store i32 %i.dln, ptr %.21949, align 4
  %i.dlo = getelementptr inbounds nuw i8, ptr %.21949, i64 4
  br label %bb.by

bb.by:                                            ; preds = %bb.bv, %bb.bx
  %.21954 = phi i32 [ %.11953, %bb.bx ], [ %i.dfk, %bb.bv ]
  %.31950 = phi ptr [ %i.dlo, %bb.bx ], [ %.019472098, %bb.bv ] ; 3 uses
  %i.dlp = load i8, ptr %i.dfm, align 4           ; 2 uses
  %i.dlq = zext i8 %i.dlp to i64
  %i.dlr = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.dlq
  %i.dls = load ptr, ptr %i.dlr, align 8
  %i.dlt = load i32, ptr %.31950, align 4         ; 3 uses
  %i.dlu = load i32, ptr %i.dfn, align 4
  %i.dlv = and i32 %i.dlu, %i.dlt
  %i.dlw = load i8, ptr %i.dfo, align 4
  %i.dlx = zext i8 %i.dlw to i32                  ; 2 uses
  %i.dly = lshr i32 %i.dlv, %i.dlx
  %i.dlz = zext i32 %i.dly to i64
  %i.dma = getelementptr inbounds nuw i8, ptr %i.dls, i64 %i.dlz
  %i.dmb = load i8, ptr %i.dma, align 1
  %i.dmc = zext i8 %i.dmb to i32                  ; 2 uses
  %i.dmd = load i8, ptr %i.dfp, align 1           ; 2 uses
  %i.dme = zext i8 %i.dmd to i64
  %i.dmf = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.dme
  %i.dmg = load ptr, ptr %i.dmf, align 8
  %i.dmh = load i32, ptr %i.dfq, align 4
  %i.dmi = and i32 %i.dmh, %i.dlt
  %i.dmj = load i8, ptr %i.dfr, align 1
  %i.dmk = zext i8 %i.dmj to i32                  ; 2 uses
  %i.dml = lshr i32 %i.dmi, %i.dmk
  %i.dmm = zext i32 %i.dml to i64
  %i.dmn = getelementptr inbounds nuw i8, ptr %i.dmg, i64 %i.dmm
  %i.dmo = load i8, ptr %i.dmn, align 1
  %i.dmp = zext i8 %i.dmo to i32                  ; 2 uses
  %i.dmq = load i8, ptr %i.dfs, align 2           ; 2 uses
  %i.dmr = zext i8 %i.dmq to i64
  %i.dms = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.dmr
  %i.dmt = load ptr, ptr %i.dms, align 8
  %i.dmu = load i32, ptr %i.dft, align 4
  %i.dmv = and i32 %i.dmu, %i.dlt
  %i.dmw = load i8, ptr %i.dfu, align 2
  %i.dmx = zext i8 %i.dmw to i32                  ; 2 uses
  %i.dmy = lshr i32 %i.dmv, %i.dmx
  %i.dmz = zext i32 %i.dmy to i64
  %i.dna = getelementptr inbounds nuw i8, ptr %i.dmt, i64 %i.dmz
  %i.dnb = load i8, ptr %i.dna, align 1
  %i.dnc = zext i8 %i.dnb to i32                  ; 2 uses
  %i.dnd = mul nuw nsw i32 %i.dmc, %i.dfv
  %.lhs.trunc2063 = trunc nuw i32 %i.dnd to i16
  %i.dne = udiv i16 %.lhs.trunc2063, 255
  %.zext2064 = zext nneg i16 %i.dne to i32
  %i.dnf = mul nuw nsw i32 %i.dmc, %i.d
  %i.dng = udiv i32 %i.dnf, 255
  %i.dnh = add nuw nsw i32 %i.dng, %.zext2064
  %spec.store.select51 = tail call i32 @llvm.umin.i32(i32 %i.dnh, i32 255)
  %i.dni = mul nuw nsw i32 %i.dmp, %i.dfw
  %.lhs.trunc2065 = trunc nuw i32 %i.dni to i16
  %i.dnj = udiv i16 %.lhs.trunc2065, 255
  %.zext2066 = zext nneg i16 %i.dnj to i32
  %i.dnk = mul nuw nsw i32 %i.dmp, %i.d
  %i.dnl = udiv i32 %i.dnk, 255
  %i.dnm = add nuw nsw i32 %i.dnl, %.zext2066
  %spec.store.select78 = tail call i32 @llvm.umin.i32(i32 %i.dnm, i32 255)
  %i.dnn = mul nuw nsw i32 %i.dnc, %i.dfx
  %.lhs.trunc2067 = trunc nuw i32 %i.dnn to i16
  %i.dno = udiv i16 %.lhs.trunc2067, 255
  %.zext2068 = zext nneg i16 %i.dno to i32
  %i.dnp = mul nuw nsw i32 %i.dnc, %i.d
  %i.dnq = udiv i32 %i.dnp, 255
  %i.dnr = add nuw nsw i32 %i.dnq, %.zext2068
  %spec.store.select52 = tail call i32 @llvm.umin.i32(i32 %i.dnr, i32 255)
  %i.dns = zext i8 %i.dlp to i32
  %i.dnt = sub nsw i32 8, %i.dns
  %i.dnu = lshr i32 %spec.store.select51, %i.dnt
  %i.dnv = shl i32 %i.dnu, %i.dlx
  %i.dnw = zext i8 %i.dmd to i32
  %i.dnx = sub nsw i32 8, %i.dnw
  %i.dny = lshr i32 %spec.store.select78, %i.dnx
  %i.dnz = shl i32 %i.dny, %i.dmk
  %i.doa = zext i8 %i.dmq to i32
  %i.dob = sub nsw i32 8, %i.doa
  %i.doc = lshr i32 %spec.store.select52, %i.dob
  %i.dod = shl i32 %i.doc, %i.dmx
  %i.doe = load i32, ptr %i.dfy, align 4
  %i.dof = or i32 %i.doe, %i.dnv
  %i.dog = or i32 %i.dof, %i.dnz
  %i.doh = or i32 %i.dog, %i.dod
  store i32 %i.doh, ptr %.31950, align 4
  %i.doi = getelementptr inbounds nuw i8, ptr %.31950, i64 4
  br label %bb.bz

.unreachabledefault2219:                          ; preds = %bb.bv
  unreachable

bb.bz:                                            ; preds = %bb.bv, %bb.by
  %.31955 = phi i32 [ %.21954, %bb.by ], [ %i.dfk, %bb.bv ] ; 2 uses
  %.41951 = phi ptr [ %i.doi, %bb.by ], [ %.019472098, %bb.bv ] ; 3 uses
  %i.doj = load i8, ptr %i.dfm, align 4           ; 2 uses
  %i.dok = zext i8 %i.doj to i64
  %i.dol = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.dok
  %i.dom = load ptr, ptr %i.dol, align 8
  %i.don = load i32, ptr %.41951, align 4         ; 3 uses
  %i.doo = load i32, ptr %i.dfn, align 4
  %i.dop = and i32 %i.doo, %i.don
  %i.doq = load i8, ptr %i.dfo, align 4
  %i.dor = zext i8 %i.doq to i32                  ; 2 uses
  %i.dos = lshr i32 %i.dop, %i.dor
  %i.dot = zext i32 %i.dos to i64
  %i.dou = getelementptr inbounds nuw i8, ptr %i.dom, i64 %i.dot
  %i.dov = load i8, ptr %i.dou, align 1
  %i.dow = zext i8 %i.dov to i32                  ; 2 uses
  %i.dox = load i8, ptr %i.dfp, align 1           ; 2 uses
  %i.doy = zext i8 %i.dox to i64
  %i.doz = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.doy
  %i.dpa = load ptr, ptr %i.doz, align 8
  %i.dpb = load i32, ptr %i.dfq, align 4
  %i.dpc = and i32 %i.dpb, %i.don
  %i.dpd = load i8, ptr %i.dfr, align 1
  %i.dpe = zext i8 %i.dpd to i32                  ; 2 uses
  %i.dpf = lshr i32 %i.dpc, %i.dpe
  %i.dpg = zext i32 %i.dpf to i64
  %i.dph = getelementptr inbounds nuw i8, ptr %i.dpa, i64 %i.dpg
  %i.dpi = load i8, ptr %i.dph, align 1
  %i.dpj = zext i8 %i.dpi to i32                  ; 2 uses
  %i.dpk = load i8, ptr %i.dfs, align 2           ; 2 uses
  %i.dpl = zext i8 %i.dpk to i64
  %i.dpm = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.dpl
  %i.dpn = load ptr, ptr %i.dpm, align 8
  %i.dpo = load i32, ptr %i.dft, align 4
  %i.dpp = and i32 %i.dpo, %i.don
  %i.dpq = load i8, ptr %i.dfu, align 2
  %i.dpr = zext i8 %i.dpq to i32                  ; 2 uses
  %i.dps = lshr i32 %i.dpp, %i.dpr
  %i.dpt = zext i32 %i.dps to i64
  %i.dpu = getelementptr inbounds nuw i8, ptr %i.dpn, i64 %i.dpt
  %i.dpv = load i8, ptr %i.dpu, align 1
  %i.dpw = zext i8 %i.dpv to i32                  ; 2 uses
  %i.dpx = mul nuw nsw i32 %i.dow, %i.dfv
  %.lhs.trunc2069 = trunc nuw i32 %i.dpx to i16
  %i.dpy = udiv i16 %.lhs.trunc2069, 255
  %.zext2070 = zext nneg i16 %i.dpy to i32
  %i.dpz = mul nuw nsw i32 %i.dow, %i.d
  %i.dqa = udiv i32 %i.dpz, 255
  %i.dqb = add nuw nsw i32 %i.dqa, %.zext2070
  %spec.store.select53 = tail call i32 @llvm.umin.i32(i32 %i.dqb, i32 255)
  %i.dqc = mul nuw nsw i32 %i.dpj, %i.dfw
  %.lhs.trunc2071 = trunc nuw i32 %i.dqc to i16
  %i.dqd = udiv i16 %.lhs.trunc2071, 255
  %.zext2072 = zext nneg i16 %i.dqd to i32
  %i.dqe = mul nuw nsw i32 %i.dpj, %i.d
  %i.dqf = udiv i32 %i.dqe, 255
  %i.dqg = add nuw nsw i32 %i.dqf, %.zext2072
  %spec.store.select79 = tail call i32 @llvm.umin.i32(i32 %i.dqg, i32 255)
  %i.dqh = mul nuw nsw i32 %i.dpw, %i.dfx
  %.lhs.trunc2073 = trunc nuw i32 %i.dqh to i16
  %i.dqi = udiv i16 %.lhs.trunc2073, 255
  %.zext2074 = zext nneg i16 %i.dqi to i32
  %i.dqj = mul nuw nsw i32 %i.dpw, %i.d
  %i.dqk = udiv i32 %i.dqj, 255
  %i.dql = add nuw nsw i32 %i.dqk, %.zext2074
  %spec.store.select54 = tail call i32 @llvm.umin.i32(i32 %i.dql, i32 255)
  %i.dqm = zext i8 %i.doj to i32
  %i.dqn = sub nsw i32 8, %i.dqm
  %i.dqo = lshr i32 %spec.store.select53, %i.dqn
  %i.dqp = shl i32 %i.dqo, %i.dor
  %i.dqq = zext i8 %i.dox to i32
  %i.dqr = sub nsw i32 8, %i.dqq
  %i.dqs = lshr i32 %spec.store.select79, %i.dqr
  %i.dqt = shl i32 %i.dqs, %i.dpe
  %i.dqu = zext i8 %i.dpk to i32
  %i.dqv = sub nsw i32 8, %i.dqu
  %i.dqw = lshr i32 %spec.store.select54, %i.dqv
  %i.dqx = shl i32 %i.dqw, %i.dpr
  %i.dqy = load i32, ptr %i.dfy, align 4
  %i.dqz = or i32 %i.dqy, %i.dqp
  %i.dra = or i32 %i.dqz, %i.dqt
  %i.drb = or i32 %i.dra, %i.dqx
  store i32 %i.drb, ptr %.41951, align 4
  %i.drc = getelementptr inbounds nuw i8, ptr %.41951, i64 4 ; 2 uses
  %i.drd = add nsw i32 %.31955, -1
  %i.dre = icmp sgt i32 %.31955, 1
  br i1 %i.dre, label %bb.bw, label %bb.ca, !llvm.loop !72

bb.ca:                                            ; preds = %bb.bz
  %i.drf = getelementptr inbounds [4 x i8], ptr %i.drc, i64 %i.dfz
  %.not = icmp eq i32 %i.dga, 0
  br i1 %.not, label %.loopexit, label %bb.bv, !llvm.loop !73

bb.cb:                                            ; preds = %.split27, %bb.ar
  %i.drg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.drh = load i32, ptr %i.drg, align 4          ; 2 uses
  %.not19742111 = icmp eq i32 %i.drh, 0
  br i1 %.not19742111, label %.loopexit, label %.lr.ph2113

.lr.ph2113:                                       ; preds = %bb.cb
  %i.dri = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.drj = load ptr, ptr %i.dri, align 8
  %i.drk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.drl = load i32, ptr %i.drk, align 4
  %i.drm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.drn = load i32, ptr %i.drm, align 8
  %i.dro = sdiv i32 %i.drn, 4                     ; 2 uses
  %i.drp = mul nsw i32 %i.drl, %i.dro
  %i.drq = sext i32 %i.drp to i64
  %i.drr = getelementptr inbounds [4 x i8], ptr %i.drj, i64 %i.drq
  %i.drs = load i32, ptr %1, align 4
  %i.drt = sext i32 %i.drs to i64
  %i.dru = getelementptr inbounds [4 x i8], ptr %i.drr, i64 %i.drt
  %i.drv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.drw = load i32, ptr %i.drv, align 4          ; 3 uses
  %i.drx = sub nsw i32 %i.dro, %i.drw
  %i.dry = add nsw i32 %i.drw, 3
  %i.drz = sdiv i32 %i.dry, 4                     ; 4 uses
  %i.dsa = and i32 %i.drw, 3
  %i.dsb = zext i8 %3 to i32                      ; 4 uses
  %i.dsc = zext i8 %4 to i32                      ; 4 uses
  %i.dsd = zext i8 %5 to i32                      ; 4 uses
  %i.dse = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.dsf = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.dsg = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.dsh = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.dsi = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.dsj = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.dsk = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.dsl = sext i32 %i.drx to i64
  br label %bb.cc

bb.cc:                                            ; preds = %.lr.ph2113, %bb.ch
  %.in2146 = phi i32 [ %i.drh, %.lr.ph2113 ], [ %i.dsm, %bb.ch ]
  %.018902112 = phi ptr [ %i.dru, %.lr.ph2113 ], [ %i.dwp, %bb.ch ] ; 4 uses
  %i.dsm = add nsw i32 %.in2146, -1               ; 2 uses
  switch i32 %i.dsa, label %.unreachabledefault2220 [
    i32 0, label %bb.cd
    i32 3, label %bb.ce
    i32 2, label %bb.cf
    i32 1, label %bb.cg
  ]

bb.cd:                                            ; preds = %bb.cc, %bb.cg
  %.11891 = phi ptr [ %.018902112, %bb.cc ], [ %i.dwm, %bb.cg ] ; 2 uses
  %.01886 = phi i32 [ %i.drz, %bb.cc ], [ %i.dwn, %bb.cg ]
  %i.dsn = load i8, ptr %i.dse, align 4
  %i.dso = zext i8 %i.dsn to i32
  %i.dsp = sub nsw i32 8, %i.dso
  %i.dsq = lshr i32 %i.dsb, %i.dsp
  %i.dsr = load i8, ptr %i.dsf, align 4
  %i.dss = zext nneg i8 %i.dsr to i32
  %i.dst = shl i32 %i.dsq, %i.dss
  %i.dsu = load i8, ptr %i.dsg, align 1
  %i.dsv = zext i8 %i.dsu to i32
  %i.dsw = sub nsw i32 8, %i.dsv
  %i.dsx = lshr i32 %i.dsc, %i.dsw
  %i.dsy = load i8, ptr %i.dsh, align 1
  %i.dsz = zext nneg i8 %i.dsy to i32
  %i.dta = shl i32 %i.dsx, %i.dsz
  %i.dtb = or i32 %i.dta, %i.dst
  %i.dtc = load i8, ptr %i.dsi, align 2
  %i.dtd = zext i8 %i.dtc to i32
  %i.dte = sub nsw i32 8, %i.dtd
  %i.dtf = lshr i32 %i.dsd, %i.dte
  %i.dtg = load i8, ptr %i.dsj, align 2
  %i.dth = zext nneg i8 %i.dtg to i32
  %i.dti = shl i32 %i.dtf, %i.dth
  %i.dtj = load i32, ptr %i.dsk, align 4
  %i.dtk = or i32 %i.dtb, %i.dtj
  %i.dtl = or i32 %i.dtk, %i.dti
  store i32 %i.dtl, ptr %.11891, align 4
  %i.dtm = getelementptr inbounds nuw i8, ptr %.11891, i64 4
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %.21892 = phi ptr [ %i.dtm, %bb.cd ], [ %.018902112, %bb.cc ] ; 2 uses
  %.11887 = phi i32 [ %.01886, %bb.cd ], [ %i.drz, %bb.cc ]
  %i.dtn = load i8, ptr %i.dse, align 4
  %i.dto = zext i8 %i.dtn to i32
  %i.dtp = sub nsw i32 8, %i.dto
  %i.dtq = lshr i32 %i.dsb, %i.dtp
  %i.dtr = load i8, ptr %i.dsf, align 4
  %i.dts = zext nneg i8 %i.dtr to i32
  %i.dtt = shl i32 %i.dtq, %i.dts
  %i.dtu = load i8, ptr %i.dsg, align 1
  %i.dtv = zext i8 %i.dtu to i32
  %i.dtw = sub nsw i32 8, %i.dtv
  %i.dtx = lshr i32 %i.dsc, %i.dtw
  %i.dty = load i8, ptr %i.dsh, align 1
  %i.dtz = zext nneg i8 %i.dty to i32
  %i.dua = shl i32 %i.dtx, %i.dtz
  %i.dub = or i32 %i.dua, %i.dtt
  %i.duc = load i8, ptr %i.dsi, align 2
  %i.dud = zext i8 %i.duc to i32
  %i.due = sub nsw i32 8, %i.dud
  %i.duf = lshr i32 %i.dsd, %i.due
  %i.dug = load i8, ptr %i.dsj, align 2
  %i.duh = zext nneg i8 %i.dug to i32
  %i.dui = shl i32 %i.duf, %i.duh
  %i.duj = load i32, ptr %i.dsk, align 4
  %i.duk = or i32 %i.dub, %i.duj
  %i.dul = or i32 %i.duk, %i.dui
  store i32 %i.dul, ptr %.21892, align 4
  %i.dum = getelementptr inbounds nuw i8, ptr %.21892, i64 4
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cc, %bb.ce
  %.31893 = phi ptr [ %i.dum, %bb.ce ], [ %.018902112, %bb.cc ] ; 2 uses
  %.21888 = phi i32 [ %.11887, %bb.ce ], [ %i.drz, %bb.cc ]
  %i.dun = load i8, ptr %i.dse, align 4
  %i.duo = zext i8 %i.dun to i32
  %i.dup = sub nsw i32 8, %i.duo
  %i.duq = lshr i32 %i.dsb, %i.dup
  %i.dur = load i8, ptr %i.dsf, align 4
  %i.dus = zext nneg i8 %i.dur to i32
  %i.dut = shl i32 %i.duq, %i.dus
  %i.duu = load i8, ptr %i.dsg, align 1
  %i.duv = zext i8 %i.duu to i32
  %i.duw = sub nsw i32 8, %i.duv
  %i.dux = lshr i32 %i.dsc, %i.duw
  %i.duy = load i8, ptr %i.dsh, align 1
  %i.duz = zext nneg i8 %i.duy to i32
  %i.dva = shl i32 %i.dux, %i.duz
  %i.dvb = or i32 %i.dva, %i.dut
  %i.dvc = load i8, ptr %i.dsi, align 2
  %i.dvd = zext i8 %i.dvc to i32
  %i.dve = sub nsw i32 8, %i.dvd
  %i.dvf = lshr i32 %i.dsd, %i.dve
  %i.dvg = load i8, ptr %i.dsj, align 2
  %i.dvh = zext nneg i8 %i.dvg to i32
  %i.dvi = shl i32 %i.dvf, %i.dvh
  %i.dvj = load i32, ptr %i.dsk, align 4
  %i.dvk = or i32 %i.dvb, %i.dvj
  %i.dvl = or i32 %i.dvk, %i.dvi
  store i32 %i.dvl, ptr %.31893, align 4
  %i.dvm = getelementptr inbounds nuw i8, ptr %.31893, i64 4
  br label %bb.cg

.unreachabledefault2220:                          ; preds = %bb.cc
  unreachable

bb.cg:                                            ; preds = %bb.cc, %bb.cf
  %.41894 = phi ptr [ %i.dvm, %bb.cf ], [ %.018902112, %bb.cc ] ; 2 uses
  %.31889 = phi i32 [ %.21888, %bb.cf ], [ %i.drz, %bb.cc ] ; 2 uses
  %i.dvn = load i8, ptr %i.dse, align 4
  %i.dvo = zext i8 %i.dvn to i32
  %i.dvp = sub nsw i32 8, %i.dvo
  %i.dvq = lshr i32 %i.dsb, %i.dvp
  %i.dvr = load i8, ptr %i.dsf, align 4
  %i.dvs = zext nneg i8 %i.dvr to i32
  %i.dvt = shl i32 %i.dvq, %i.dvs
  %i.dvu = load i8, ptr %i.dsg, align 1
  %i.dvv = zext i8 %i.dvu to i32
  %i.dvw = sub nsw i32 8, %i.dvv
  %i.dvx = lshr i32 %i.dsc, %i.dvw
  %i.dvy = load i8, ptr %i.dsh, align 1
  %i.dvz = zext nneg i8 %i.dvy to i32
  %i.dwa = shl i32 %i.dvx, %i.dvz
  %i.dwb = or i32 %i.dwa, %i.dvt
  %i.dwc = load i8, ptr %i.dsi, align 2
  %i.dwd = zext i8 %i.dwc to i32
  %i.dwe = sub nsw i32 8, %i.dwd
  %i.dwf = lshr i32 %i.dsd, %i.dwe
  %i.dwg = load i8, ptr %i.dsj, align 2
  %i.dwh = zext nneg i8 %i.dwg to i32
  %i.dwi = shl i32 %i.dwf, %i.dwh
  %i.dwj = load i32, ptr %i.dsk, align 4
  %i.dwk = or i32 %i.dwb, %i.dwj
  %i.dwl = or i32 %i.dwk, %i.dwi
  store i32 %i.dwl, ptr %.41894, align 4
  %i.dwm = getelementptr inbounds nuw i8, ptr %.41894, i64 4 ; 2 uses
  %i.dwn = add nsw i32 %.31889, -1
  %i.dwo = icmp sgt i32 %.31889, 1
  br i1 %i.dwo, label %bb.cd, label %bb.ch, !llvm.loop !74

bb.ch:                                            ; preds = %bb.cg
  %i.dwp = getelementptr inbounds [4 x i8], ptr %i.dwm, i64 %i.dsl
  %.not1974 = icmp eq i32 %i.dsm, 0
  br i1 %.not1974, label %.loopexit, label %bb.cc, !llvm.loop !75

bb.ci:                                            ; preds = %bb.a
  %i.dwq = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.5) #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ca, %bb.bt, %bb.bm, %bb.bf, %bb.ay, %bb.ch, %bb.aj, %bb.ac, %bb.v, %bb.o, %bb.h, %bb.aq, %bb.bu, %bb.bn, %bb.bg, %bb.az, %bb.as, %bb.cb, %bb.ad, %bb.w, %bb.p, %bb.i, %bb.c, %bb.ak, %bb.ci
  %.0 = phi i1 [ %i.dwq, %bb.ci ], [ true, %bb.bn ], [ true, %bb.ad ], [ true, %bb.p ], [ true, %bb.i ], [ true, %bb.c ], [ true, %bb.ak ], [ true, %bb.w ], [ true, %bb.bg ], [ true, %bb.az ], [ true, %bb.as ], [ true, %bb.cb ], [ true, %bb.bu ], [ true, %bb.ac ], [ true, %bb.aj ], [ true, %bb.ch ], [ true, %bb.ay ], [ true, %bb.bf ], [ true, %bb.bm ], [ true, %bb.bt ], [ true, %bb.aq ], [ true, %bb.h ], [ true, %bb.o ], [ true, %bb.v ], [ true, %bb.ca ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @SDL_BlendFillRect_RGBA(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 69 uses
  %i.c = zext i8 %6 to i32                        ; 13 uses
  %i.d = xor i32 %i.c, 255                        ; 44 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.f = load i8, ptr %i.e, align 1
  %cond = icmp eq i8 %i.f, 4
  br i1 %cond, label %bb.b, label %bb.ar

bb.b:                                             ; preds = %bb.a
  %i.g = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %.split, label %bb.ak

.split:                                           ; preds = %bb.b
  %i.i = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  switch i32 %i.i, label %bb.ak [
    i32 0, label %bb.c
    i32 4, label %bb.i
    i32 1, label %bb.p
    i32 5, label %bb.p
    i32 2, label %bb.w
    i32 3, label %bb.ad
  ]

bb.c:                                             ; preds = %.split
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %.not11141183 = icmp eq i32 %i.k, 0
  br i1 %.not11141183, label %.loopexit, label %.lr.ph1185

.lr.ph1185:                                       ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8
  %i.r = sdiv i32 %i.q, 4                         ; 2 uses
  %i.s = mul nsw i32 %i.o, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.t
  %i.v = load i32, ptr %1, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i32, ptr %i.y, align 4              ; 3 uses
  %i.aa = sub nsw i32 %i.r, %i.z
  %i.ab = add nsw i32 %i.z, 3
  %i.ac = sdiv i32 %i.ab, 4                       ; 4 uses
  %i.ad = and i32 %i.z, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 27 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 31 ; 4 uses
  %i.aq = zext i8 %3 to i32                       ; 4 uses
  %i.ar = zext i8 %4 to i32                       ; 4 uses
  %i.as = zext i8 %5 to i32                       ; 4 uses
  %i.at = sext i32 %i.aa to i64
  br label %.lr.ph1185.split

.lr.ph1185.split:                                 ; preds = %.lr.ph1185, %bb.h
  %.in1196 = phi i32 [ %i.au, %bb.h ], [ %i.k, %.lr.ph1185 ]
  %.010491184 = phi ptr [ %i.nz, %bb.h ], [ %i.x, %.lr.ph1185 ] ; 4 uses
  %i.au = add nsw i32 %.in1196, -1                ; 2 uses
  switch i32 %i.ad, label %default.unreachable [
    i32 0, label %bb.d
    i32 3, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.d:                                             ; preds = %.lr.ph1185.split, %bb.g
  %.01050 = phi i32 [ %i.ac, %.lr.ph1185.split ], [ %i.nx, %bb.g ]
  %.1 = phi ptr [ %.010491184, %.lr.ph1185.split ], [ %i.nw, %bb.g ] ; 3 uses
  %i.av = load i8, ptr %i.ae, align 4             ; 2 uses
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = load i32, ptr %.1, align 4              ; 4 uses
  %i.ba = load i32, ptr %i.af, align 4
  %i.bb = and i32 %i.ba, %i.az
  %i.bc = load i8, ptr %i.ag, align 4
  %i.bd = zext i8 %i.bc to i32                    ; 2 uses
  %i.be = lshr i32 %i.bb, %i.bd
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i32
  %i.bj = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = load i32, ptr %i.ai, align 4
  %i.bo = and i32 %i.bn, %i.az
  %i.bp = load i8, ptr %i.aj, align 1
  %i.bq = zext i8 %i.bp to i32                    ; 2 uses
  %i.br = lshr i32 %i.bo, %i.bq
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i32
  %i.bw = load i8, ptr %i.ak, align 2             ; 2 uses
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load i32, ptr %i.al, align 4
  %i.cb = and i32 %i.ca, %i.az
  %i.cc = load i8, ptr %i.am, align 2
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = lshr i32 %i.cb, %i.cd
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i32
  %i.cj = load i8, ptr %i.an, align 1             ; 2 uses
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = load i32, ptr %i.ao, align 4
  %i.co = and i32 %i.cn, %i.az
  %i.cp = load i8, ptr %i.ap, align 1
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = lshr i32 %i.co, %i.cq
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = zext i8 %i.cu to i32
  %i.cw = mul nuw nsw i32 %i.d, %i.bi
  %i.cx = udiv i32 %i.cw, 255
  %i.cy = add nuw nsw i32 %i.cx, %i.aq
  %i.cz = mul nuw nsw i32 %i.d, %i.bv
  %i.da = udiv i32 %i.cz, 255
  %i.db = add nuw nsw i32 %i.da, %i.ar
  %i.dc = mul nuw nsw i32 %i.d, %i.ci
  %i.dd = udiv i32 %i.dc, 255
  %i.de = add nuw nsw i32 %i.dd, %i.as
  %i.df = mul nuw nsw i32 %i.d, %i.cv
  %i.dg = udiv i32 %i.df, 255
  %i.dh = add nuw nsw i32 %i.dg, %i.c
  %i.di = zext i8 %i.av to i32
  %i.dj = sub nsw i32 8, %i.di
  %i.dk = lshr i32 %i.cy, %i.dj
  %i.dl = shl i32 %i.dk, %i.bd
  %i.dm = zext i8 %i.bj to i32
  %i.dn = sub nsw i32 8, %i.dm
  %i.do = lshr i32 %i.db, %i.dn
  %i.dp = shl i32 %i.do, %i.bq
  %i.dq = or i32 %i.dp, %i.dl
  %i.dr = zext i8 %i.bw to i32
  %i.ds = sub nsw i32 8, %i.dr
  %i.dt = lshr i32 %i.de, %i.ds
  %i.du = shl i32 %i.dt, %i.cd
  %i.dv = or i32 %i.dq, %i.du
  %i.dw = zext i8 %i.cj to i32
  %i.dx = sub nsw i32 8, %i.dw
  %i.dy = lshr i32 %i.dh, %i.dx
  %i.dz = shl i32 %i.dy, %i.cq
  %i.ea = or i32 %i.dv, %i.dz
  store i32 %i.ea, ptr %.1, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %.1, i64 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph1185.split, %bb.d
  %.11051 = phi i32 [ %.01050, %bb.d ], [ %i.ac, %.lr.ph1185.split ]
  %.2 = phi ptr [ %i.eb, %bb.d ], [ %.010491184, %.lr.ph1185.split ] ; 3 uses
  %i.ec = load i8, ptr %i.ae, align 4             ; 2 uses
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = load i32, ptr %.2, align 4              ; 4 uses
  %i.eh = load i32, ptr %i.af, align 4
  %i.ei = and i32 %i.eh, %i.eg
  %i.ej = load i8, ptr %i.ag, align 4
  %i.ek = zext i8 %i.ej to i32                    ; 2 uses
  %i.el = lshr i32 %i.ei, %i.ek
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = zext i8 %i.eo to i32
  %i.eq = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.er = zext i8 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = load i32, ptr %i.ai, align 4
  %i.ev = and i32 %i.eu, %i.eg
  %i.ew = load i8, ptr %i.aj, align 1
  %i.ex = zext i8 %i.ew to i32                    ; 2 uses
  %i.ey = lshr i32 %i.ev, %i.ex
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i32
  %i.fd = load i8, ptr %i.ak, align 2             ; 2 uses
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = load i32, ptr %i.al, align 4
  %i.fi = and i32 %i.fh, %i.eg
  %i.fj = load i8, ptr %i.am, align 2
  %i.fk = zext i8 %i.fj to i32                    ; 2 uses
  %i.fl = lshr i32 %i.fi, %i.fk
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = zext i8 %i.fo to i32
  %i.fq = load i8, ptr %i.an, align 1             ; 2 uses
  %i.fr = zext i8 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.fr
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = load i32, ptr %i.ao, align 4
  %i.fv = and i32 %i.fu, %i.eg
  %i.fw = load i8, ptr %i.ap, align 1
  %i.fx = zext i8 %i.fw to i32                    ; 2 uses
  %i.fy = lshr i32 %i.fv, %i.fx
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = zext i8 %i.gb to i32
  %i.gd = mul nuw nsw i32 %i.d, %i.ep
  %i.ge = udiv i32 %i.gd, 255
  %i.gf = add nuw nsw i32 %i.ge, %i.aq
  %i.gg = mul nuw nsw i32 %i.d, %i.fc
  %i.gh = udiv i32 %i.gg, 255
  %i.gi = add nuw nsw i32 %i.gh, %i.ar
  %i.gj = mul nuw nsw i32 %i.d, %i.fp
  %i.gk = udiv i32 %i.gj, 255
  %i.gl = add nuw nsw i32 %i.gk, %i.as
  %i.gm = mul nuw nsw i32 %i.d, %i.gc
  %i.gn = udiv i32 %i.gm, 255
  %i.go = add nuw nsw i32 %i.gn, %i.c
  %i.gp = zext i8 %i.ec to i32
  %i.gq = sub nsw i32 8, %i.gp
  %i.gr = lshr i32 %i.gf, %i.gq
  %i.gs = shl i32 %i.gr, %i.ek
  %i.gt = zext i8 %i.eq to i32
  %i.gu = sub nsw i32 8, %i.gt
  %i.gv = lshr i32 %i.gi, %i.gu
  %i.gw = shl i32 %i.gv, %i.ex
  %i.gx = or i32 %i.gw, %i.gs
  %i.gy = zext i8 %i.fd to i32
  %i.gz = sub nsw i32 8, %i.gy
  %i.ha = lshr i32 %i.gl, %i.gz
  %i.hb = shl i32 %i.ha, %i.fk
  %i.hc = or i32 %i.gx, %i.hb
  %i.hd = zext i8 %i.fq to i32
  %i.he = sub nsw i32 8, %i.hd
  %i.hf = lshr i32 %i.go, %i.he
  %i.hg = shl i32 %i.hf, %i.fx
  %i.hh = or i32 %i.hc, %i.hg
  store i32 %i.hh, ptr %.2, align 4
  %i.hi = getelementptr inbounds nuw i8, ptr %.2, i64 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph1185.split, %bb.e
  %.21052 = phi i32 [ %.11051, %bb.e ], [ %i.ac, %.lr.ph1185.split ]
  %.3 = phi ptr [ %i.hi, %bb.e ], [ %.010491184, %.lr.ph1185.split ] ; 3 uses
  %i.hj = load i8, ptr %i.ae, align 4             ; 2 uses
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = load i32, ptr %.3, align 4              ; 4 uses
  %i.ho = load i32, ptr %i.af, align 4
  %i.hp = and i32 %i.ho, %i.hn
  %i.hq = load i8, ptr %i.ag, align 4
  %i.hr = zext i8 %i.hq to i32                    ; 2 uses
  %i.hs = lshr i32 %i.hp, %i.hr
  %i.ht = zext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1
  %i.hw = zext i8 %i.hv to i32
  %i.hx = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.hy = zext i8 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = load i32, ptr %i.ai, align 4
  %i.ic = and i32 %i.ib, %i.hn
  %i.id = load i8, ptr %i.aj, align 1
  %i.ie = zext i8 %i.id to i32                    ; 2 uses
  %i.if = lshr i32 %i.ic, %i.ie
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1
  %i.ij = zext i8 %i.ii to i32
  %i.ik = load i8, ptr %i.ak, align 2             ; 2 uses
  %i.il = zext i8 %i.ik to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.il
  %i.in = load ptr, ptr %i.im, align 8
  %i.io = load i32, ptr %i.al, align 4
  %i.ip = and i32 %i.io, %i.hn
  %i.iq = load i8, ptr %i.am, align 2
  %i.ir = zext i8 %i.iq to i32                    ; 2 uses
  %i.is = lshr i32 %i.ip, %i.ir
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1
  %i.iw = zext i8 %i.iv to i32
  %i.ix = load i8, ptr %i.an, align 1             ; 2 uses
  %i.iy = zext i8 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.iy
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = load i32, ptr %i.ao, align 4
  %i.jc = and i32 %i.jb, %i.hn
  %i.jd = load i8, ptr %i.ap, align 1
  %i.je = zext i8 %i.jd to i32                    ; 2 uses
  %i.jf = lshr i32 %i.jc, %i.je
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1
  %i.jj = zext i8 %i.ji to i32
  %i.jk = mul nuw nsw i32 %i.d, %i.hw
  %i.jl = udiv i32 %i.jk, 255
  %i.jm = add nuw nsw i32 %i.jl, %i.aq
  %i.jn = mul nuw nsw i32 %i.d, %i.ij
  %i.jo = udiv i32 %i.jn, 255
  %i.jp = add nuw nsw i32 %i.jo, %i.ar
  %i.jq = mul nuw nsw i32 %i.d, %i.iw
  %i.jr = udiv i32 %i.jq, 255
  %i.js = add nuw nsw i32 %i.jr, %i.as
  %i.jt = mul nuw nsw i32 %i.d, %i.jj
  %i.ju = udiv i32 %i.jt, 255
  %i.jv = add nuw nsw i32 %i.ju, %i.c
  %i.jw = zext i8 %i.hj to i32
  %i.jx = sub nsw i32 8, %i.jw
  %i.jy = lshr i32 %i.jm, %i.jx
  %i.jz = shl i32 %i.jy, %i.hr
  %i.ka = zext i8 %i.hx to i32
  %i.kb = sub nsw i32 8, %i.ka
  %i.kc = lshr i32 %i.jp, %i.kb
  %i.kd = shl i32 %i.kc, %i.ie
  %i.ke = or i32 %i.kd, %i.jz
  %i.kf = zext i8 %i.ik to i32
  %i.kg = sub nsw i32 8, %i.kf
  %i.kh = lshr i32 %i.js, %i.kg
  %i.ki = shl i32 %i.kh, %i.ir
  %i.kj = or i32 %i.ke, %i.ki
  %i.kk = zext i8 %i.ix to i32
  %i.kl = sub nsw i32 8, %i.kk
  %i.km = lshr i32 %i.jv, %i.kl
  %i.kn = shl i32 %i.km, %i.je
  %i.ko = or i32 %i.kj, %i.kn
  store i32 %i.ko, ptr %.3, align 4
  %i.kp = getelementptr inbounds nuw i8, ptr %.3, i64 4
  br label %bb.g

default.unreachable:                              ; preds = %.lr.ph1185.split
  unreachable

bb.g:                                             ; preds = %.lr.ph1185.split, %bb.f
  %.31053 = phi i32 [ %.21052, %bb.f ], [ %i.ac, %.lr.ph1185.split ] ; 2 uses
  %.4 = phi ptr [ %i.kp, %bb.f ], [ %.010491184, %.lr.ph1185.split ] ; 3 uses
  %i.kq = load i8, ptr %i.ae, align 4             ; 2 uses
  %i.kr = zext i8 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.kr
  %i.kt = load ptr, ptr %i.ks, align 8
  %i.ku = load i32, ptr %.4, align 4              ; 4 uses
  %i.kv = load i32, ptr %i.af, align 4
  %i.kw = and i32 %i.kv, %i.ku
  %i.kx = load i8, ptr %i.ag, align 4
  %i.ky = zext i8 %i.kx to i32                    ; 2 uses
  %i.kz = lshr i32 %i.kw, %i.ky
  %i.la = zext i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1
  %i.ld = zext i8 %i.lc to i32
  %i.le = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.lf = zext i8 %i.le to i64
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.lf
  %i.lh = load ptr, ptr %i.lg, align 8
  %i.li = load i32, ptr %i.ai, align 4
  %i.lj = and i32 %i.li, %i.ku
  %i.lk = load i8, ptr %i.aj, align 1
  %i.ll = zext i8 %i.lk to i32                    ; 2 uses
  %i.lm = lshr i32 %i.lj, %i.ll
  %i.ln = zext i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1
  %i.lq = zext i8 %i.lp to i32
  %i.lr = load i8, ptr %i.ak, align 2             ; 2 uses
  %i.ls = zext i8 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ls
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = load i32, ptr %i.al, align 4
  %i.lw = and i32 %i.lv, %i.ku
  %i.lx = load i8, ptr %i.am, align 2
  %i.ly = zext i8 %i.lx to i32                    ; 2 uses
  %i.lz = lshr i32 %i.lw, %i.ly
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.ma
  %i.mc = load i8, ptr %i.mb, align 1
  %i.md = zext i8 %i.mc to i32
  %i.me = load i8, ptr %i.an, align 1             ; 2 uses
  %i.mf = zext i8 %i.me to i64
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.mf
  %i.mh = load ptr, ptr %i.mg, align 8
  %i.mi = load i32, ptr %i.ao, align 4
  %i.mj = and i32 %i.mi, %i.ku
  %i.mk = load i8, ptr %i.ap, align 1
  %i.ml = zext i8 %i.mk to i32                    ; 2 uses
  %i.mm = lshr i32 %i.mj, %i.ml
  %i.mn = zext i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mn
  %i.mp = load i8, ptr %i.mo, align 1
  %i.mq = zext i8 %i.mp to i32
  %i.mr = mul nuw nsw i32 %i.d, %i.ld
  %i.ms = udiv i32 %i.mr, 255
  %i.mt = add nuw nsw i32 %i.ms, %i.aq
  %i.mu = mul nuw nsw i32 %i.d, %i.lq
  %i.mv = udiv i32 %i.mu, 255
  %i.mw = add nuw nsw i32 %i.mv, %i.ar
  %i.mx = mul nuw nsw i32 %i.d, %i.md
  %i.my = udiv i32 %i.mx, 255
  %i.mz = add nuw nsw i32 %i.my, %i.as
  %i.na = mul nuw nsw i32 %i.d, %i.mq
  %i.nb = udiv i32 %i.na, 255
  %i.nc = add nuw nsw i32 %i.nb, %i.c
  %i.nd = zext i8 %i.kq to i32
  %i.ne = sub nsw i32 8, %i.nd
  %i.nf = lshr i32 %i.mt, %i.ne
  %i.ng = shl i32 %i.nf, %i.ky
  %i.nh = zext i8 %i.le to i32
  %i.ni = sub nsw i32 8, %i.nh
  %i.nj = lshr i32 %i.mw, %i.ni
  %i.nk = shl i32 %i.nj, %i.ll
  %i.nl = or i32 %i.nk, %i.ng
  %i.nm = zext i8 %i.lr to i32
  %i.nn = sub nsw i32 8, %i.nm
  %i.no = lshr i32 %i.mz, %i.nn
  %i.np = shl i32 %i.no, %i.ly
  %i.nq = or i32 %i.nl, %i.np
  %i.nr = zext i8 %i.me to i32
  %i.ns = sub nsw i32 8, %i.nr
  %i.nt = lshr i32 %i.nc, %i.ns
  %i.nu = shl i32 %i.nt, %i.ml
  %i.nv = or i32 %i.nq, %i.nu
  store i32 %i.nv, ptr %.4, align 4
  %i.nw = getelementptr inbounds nuw i8, ptr %.4, i64 4 ; 2 uses
  %i.nx = add nsw i32 %.31053, -1
  %i.ny = icmp sgt i32 %.31053, 1
  br i1 %i.ny, label %bb.d, label %bb.h, !llvm.loop !76

bb.h:                                             ; preds = %bb.g
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.nw, i64 %i.at
  %.not1114 = icmp eq i32 %i.au, 0
  br i1 %.not1114, label %.loopexit, label %.lr.ph1185.split, !llvm.loop !77

bb.i:                                             ; preds = %.split
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ob = load i32, ptr %i.oa, align 4            ; 2 uses
  %.not11131180 = icmp eq i32 %i.ob, 0
  br i1 %.not11131180, label %.loopexit, label %.lr.ph1182

.lr.ph1182:                                       ; preds = %bb.i
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.of = load i32, ptr %i.oe, align 4
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.oh = load i32, ptr %i.og, align 8
  %i.oi = sdiv i32 %i.oh, 4                       ; 2 uses
  %i.oj = mul nsw i32 %i.of, %i.oi
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.od, i64 %i.ok
  %i.om = load i32, ptr %1, align 4
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.ol, i64 %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oq = load i32, ptr %i.op, align 4            ; 3 uses
  %i.or = sub nsw i32 %i.oi, %i.oq
  %i.os = add nsw i32 %i.oq, 3
  %i.ot = sdiv i32 %i.os, 4                       ; 4 uses
  %i.ou = and i32 %i.oq, 3
  %i.ov = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.b, i64 27 ; 4 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.b, i64 31 ; 4 uses
  %i.ph = zext i8 %3 to i32                       ; 4 uses
  %i.pi = zext i8 %4 to i32                       ; 4 uses
  %i.pj = zext i8 %5 to i32                       ; 4 uses
  %i.pk = sext i32 %i.or to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph1182, %bb.o
  %.in1195 = phi i32 [ %i.ob, %.lr.ph1182 ], [ %i.pl, %bb.o ]
  %.010551181 = phi ptr [ %i.oo, %.lr.ph1182 ], [ %i.acq, %bb.o ] ; 4 uses
  %i.pl = add nsw i32 %.in1195, -1                ; 2 uses
  switch i32 %i.ou, label %.unreachabledefault [
    i32 0, label %bb.k
    i32 3, label %bb.l
    i32 2, label %bb.m
    i32 1, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j, %bb.n
  %.01060 = phi i32 [ %i.ot, %bb.j ], [ %i.aco, %bb.n ]
  %.11056 = phi ptr [ %.010551181, %bb.j ], [ %i.acn, %bb.n ] ; 3 uses
  %i.pm = load i8, ptr %i.ov, align 4             ; 2 uses
  %i.pn = zext i8 %i.pm to i64
  %i.po = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.pn
  %i.pp = load ptr, ptr %i.po, align 8
  %i.pq = load i32, ptr %.11056, align 4          ; 4 uses
  %i.pr = load i32, ptr %i.ow, align 4
  %i.ps = and i32 %i.pr, %i.pq
  %i.pt = load i8, ptr %i.ox, align 4
  %i.pu = zext i8 %i.pt to i32                    ; 2 uses
  %i.pv = lshr i32 %i.ps, %i.pu
  %i.pw = zext i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.pw
  %i.py = load i8, ptr %i.px, align 1
  %i.pz = zext i8 %i.py to i32
  %i.qa = load i8, ptr %i.oy, align 1             ; 2 uses
  %i.qb = zext i8 %i.qa to i64
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.qb
  %i.qd = load ptr, ptr %i.qc, align 8
  %i.qe = load i32, ptr %i.oz, align 4
  %i.qf = and i32 %i.qe, %i.pq
  %i.qg = load i8, ptr %i.pa, align 1
  %i.qh = zext i8 %i.qg to i32                    ; 2 uses
  %i.qi = lshr i32 %i.qf, %i.qh
  %i.qj = zext i32 %i.qi to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.qj
  %i.ql = load i8, ptr %i.qk, align 1
  %i.qm = zext i8 %i.ql to i32
  %i.qn = load i8, ptr %i.pb, align 2             ; 2 uses
  %i.qo = zext i8 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.qo
  %i.qq = load ptr, ptr %i.qp, align 8
  %i.qr = load i32, ptr %i.pc, align 4
  %i.qs = and i32 %i.qr, %i.pq
  %i.qt = load i8, ptr %i.pd, align 2
  %i.qu = zext i8 %i.qt to i32                    ; 2 uses
  %i.qv = lshr i32 %i.qs, %i.qu
  %i.qw = zext i32 %i.qv to i64
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.qw
  %i.qy = load i8, ptr %i.qx, align 1
  %i.qz = zext i8 %i.qy to i32
  %i.ra = load i8, ptr %i.pe, align 1             ; 2 uses
  %i.rb = zext i8 %i.ra to i64
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.rb
  %i.rd = load ptr, ptr %i.rc, align 8
  %i.re = load i32, ptr %i.pf, align 4
  %i.rf = and i32 %i.re, %i.pq
  %i.rg = load i8, ptr %i.pg, align 1
  %i.rh = zext i8 %i.rg to i32                    ; 2 uses
  %i.ri = lshr i32 %i.rf, %i.rh
  %i.rj = zext i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.rj
  %i.rl = load i8, ptr %i.rk, align 1
  %i.rm = zext i8 %i.rl to i32
  %i.rn = mul nuw nsw i32 %i.d, %i.pz
  %i.ro = udiv i32 %i.rn, 255
  %i.rp = add nuw nsw i32 %i.ro, %i.ph
  %spec.store.select27 = tail call i32 @llvm.umin.i32(i32 %i.rp, i32 255)
  %i.rq = mul nuw nsw i32 %i.d, %i.qm
  %i.rr = udiv i32 %i.rq, 255
  %i.rs = add nuw nsw i32 %i.rr, %i.pi
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.rs, i32 255)
  %i.rt = mul nuw nsw i32 %i.d, %i.qz
  %i.ru = udiv i32 %i.rt, 255
  %i.rv = add nuw nsw i32 %i.ru, %i.pj
  %spec.store.select39 = tail call i32 @llvm.umin.i32(i32 %i.rv, i32 255)
  %i.rw = mul nuw nsw i32 %i.d, %i.rm
  %i.rx = udiv i32 %i.rw, 255
  %i.ry = add nuw nsw i32 %i.rx, %i.c
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %i.ry, i32 255)
  %i.rz = zext i8 %i.pm to i32
  %i.sa = sub nsw i32 8, %i.rz
  %i.sb = lshr i32 %spec.store.select27, %i.sa
  %i.sc = shl i32 %i.sb, %i.pu
  %i.sd = zext i8 %i.qa to i32
  %i.se = sub nsw i32 8, %i.sd
  %i.sf = lshr i32 %spec.store.select, %i.se
  %i.sg = shl i32 %i.sf, %i.qh
  %i.sh = or i32 %i.sg, %i.sc
  %i.si = zext i8 %i.qn to i32
  %i.sj = sub nsw i32 8, %i.si
  %i.sk = lshr i32 %spec.store.select39, %i.sj
  %i.sl = shl i32 %i.sk, %i.qu
  %i.sm = or i32 %i.sh, %i.sl
  %i.sn = zext i8 %i.ra to i32
  %i.so = sub nsw i32 8, %i.sn
  %i.sp = lshr i32 %spec.store.select2, %i.so
  %i.sq = shl i32 %i.sp, %i.rh
  %i.sr = or i32 %i.sm, %i.sq
  store i32 %i.sr, ptr %.11056, align 4
  %i.ss = getelementptr inbounds nuw i8, ptr %.11056, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.11061 = phi i32 [ %.01060, %bb.k ], [ %i.ot, %bb.j ]
  %.21057 = phi ptr [ %i.ss, %bb.k ], [ %.010551181, %bb.j ] ; 3 uses
  %i.st = load i8, ptr %i.ov, align 4             ; 2 uses
  %i.su = zext i8 %i.st to i64
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.su
  %i.sw = load ptr, ptr %i.sv, align 8
  %i.sx = load i32, ptr %.21057, align 4          ; 4 uses
  %i.sy = load i32, ptr %i.ow, align 4
  %i.sz = and i32 %i.sy, %i.sx
  %i.ta = load i8, ptr %i.ox, align 4
  %i.tb = zext i8 %i.ta to i32                    ; 2 uses
  %i.tc = lshr i32 %i.sz, %i.tb
  %i.td = zext i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw i8, ptr %i.sw, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1
  %i.tg = zext i8 %i.tf to i32
  %i.th = load i8, ptr %i.oy, align 1             ; 2 uses
  %i.ti = zext i8 %i.th to i64
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ti
  %i.tk = load ptr, ptr %i.tj, align 8
  %i.tl = load i32, ptr %i.oz, align 4
  %i.tm = and i32 %i.tl, %i.sx
  %i.tn = load i8, ptr %i.pa, align 1
  %i.to = zext i8 %i.tn to i32                    ; 2 uses
  %i.tp = lshr i32 %i.tm, %i.to
  %i.tq = zext i32 %i.tp to i64
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.tq
  %i.ts = load i8, ptr %i.tr, align 1
  %i.tt = zext i8 %i.ts to i32
  %i.tu = load i8, ptr %i.pb, align 2             ; 2 uses
  %i.tv = zext i8 %i.tu to i64
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.tv
  %i.tx = load ptr, ptr %i.tw, align 8
  %i.ty = load i32, ptr %i.pc, align 4
  %i.tz = and i32 %i.ty, %i.sx
  %i.ua = load i8, ptr %i.pd, align 2
  %i.ub = zext i8 %i.ua to i32                    ; 2 uses
  %i.uc = lshr i32 %i.tz, %i.ub
  %i.ud = zext i32 %i.uc to i64
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.ud
  %i.uf = load i8, ptr %i.ue, align 1
  %i.ug = zext i8 %i.uf to i32
  %i.uh = load i8, ptr %i.pe, align 1             ; 2 uses
  %i.ui = zext i8 %i.uh to i64
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ui
  %i.uk = load ptr, ptr %i.uj, align 8
  %i.ul = load i32, ptr %i.pf, align 4
  %i.um = and i32 %i.ul, %i.sx
  %i.un = load i8, ptr %i.pg, align 1
  %i.uo = zext i8 %i.un to i32                    ; 2 uses
  %i.up = lshr i32 %i.um, %i.uo
  %i.uq = zext i32 %i.up to i64
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uk, i64 %i.uq
  %i.us = load i8, ptr %i.ur, align 1
  %i.ut = zext i8 %i.us to i32
  %i.uu = mul nuw nsw i32 %i.d, %i.tg
  %i.uv = udiv i32 %i.uu, 255
  %i.uw = add nuw nsw i32 %i.uv, %i.ph
  %spec.store.select3 = tail call i32 @llvm.umin.i32(i32 %i.uw, i32 255)
  %i.ux = mul nuw nsw i32 %i.d, %i.tt
  %i.uy = udiv i32 %i.ux, 255
  %i.uz = add nuw nsw i32 %i.uy, %i.pi
  %spec.store.select28 = tail call i32 @llvm.umin.i32(i32 %i.uz, i32 255)
  %i.va = mul nuw nsw i32 %i.d, %i.ug
  %i.vb = udiv i32 %i.va, 255
  %i.vc = add nuw nsw i32 %i.vb, %i.pj
  %spec.store.select4 = tail call i32 @llvm.umin.i32(i32 %i.vc, i32 255)
  %i.vd = mul nuw nsw i32 %i.d, %i.ut
  %i.ve = udiv i32 %i.vd, 255
  %i.vf = add nuw nsw i32 %i.ve, %i.c
  %spec.store.select40 = tail call i32 @llvm.umin.i32(i32 %i.vf, i32 255)
  %i.vg = zext i8 %i.st to i32
  %i.vh = sub nsw i32 8, %i.vg
  %i.vi = lshr i32 %spec.store.select3, %i.vh
  %i.vj = shl i32 %i.vi, %i.tb
  %i.vk = zext i8 %i.th to i32
  %i.vl = sub nsw i32 8, %i.vk
  %i.vm = lshr i32 %spec.store.select28, %i.vl
  %i.vn = shl i32 %i.vm, %i.to
  %i.vo = or i32 %i.vn, %i.vj
  %i.vp = zext i8 %i.tu to i32
  %i.vq = sub nsw i32 8, %i.vp
  %i.vr = lshr i32 %spec.store.select4, %i.vq
  %i.vs = shl i32 %i.vr, %i.ub
  %i.vt = or i32 %i.vo, %i.vs
  %i.vu = zext i8 %i.uh to i32
  %i.vv = sub nsw i32 8, %i.vu
  %i.vw = lshr i32 %spec.store.select40, %i.vv
  %i.vx = shl i32 %i.vw, %i.uo
  %i.vy = or i32 %i.vt, %i.vx
  store i32 %i.vy, ptr %.21057, align 4
  %i.vz = getelementptr inbounds nuw i8, ptr %.21057, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %.21062 = phi i32 [ %.11061, %bb.l ], [ %i.ot, %bb.j ]
  %.31058 = phi ptr [ %i.vz, %bb.l ], [ %.010551181, %bb.j ] ; 3 uses
  %i.wa = load i8, ptr %i.ov, align 4             ; 2 uses
  %i.wb = zext i8 %i.wa to i64
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.wb
  %i.wd = load ptr, ptr %i.wc, align 8
  %i.we = load i32, ptr %.31058, align 4          ; 4 uses
  %i.wf = load i32, ptr %i.ow, align 4
  %i.wg = and i32 %i.wf, %i.we
  %i.wh = load i8, ptr %i.ox, align 4
  %i.wi = zext i8 %i.wh to i32                    ; 2 uses
  %i.wj = lshr i32 %i.wg, %i.wi
  %i.wk = zext i32 %i.wj to i64
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.wk
  %i.wm = load i8, ptr %i.wl, align 1
  %i.wn = zext i8 %i.wm to i32
  %i.wo = load i8, ptr %i.oy, align 1             ; 2 uses
  %i.wp = zext i8 %i.wo to i64
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.wp
  %i.wr = load ptr, ptr %i.wq, align 8
  %i.ws = load i32, ptr %i.oz, align 4
  %i.wt = and i32 %i.ws, %i.we
  %i.wu = load i8, ptr %i.pa, align 1
  %i.wv = zext i8 %i.wu to i32                    ; 2 uses
  %i.ww = lshr i32 %i.wt, %i.wv
  %i.wx = zext i32 %i.ww to i64
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.wx
  %i.wz = load i8, ptr %i.wy, align 1
  %i.xa = zext i8 %i.wz to i32
  %i.xb = load i8, ptr %i.pb, align 2             ; 2 uses
  %i.xc = zext i8 %i.xb to i64
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.xc
  %i.xe = load ptr, ptr %i.xd, align 8
  %i.xf = load i32, ptr %i.pc, align 4
  %i.xg = and i32 %i.xf, %i.we
  %i.xh = load i8, ptr %i.pd, align 2
  %i.xi = zext i8 %i.xh to i32                    ; 2 uses
  %i.xj = lshr i32 %i.xg, %i.xi
  %i.xk = zext i32 %i.xj to i64
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xk
  %i.xm = load i8, ptr %i.xl, align 1
  %i.xn = zext i8 %i.xm to i32
  %i.xo = load i8, ptr %i.pe, align 1             ; 2 uses
  %i.xp = zext i8 %i.xo to i64
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.xp
  %i.xr = load ptr, ptr %i.xq, align 8
  %i.xs = load i32, ptr %i.pf, align 4
  %i.xt = and i32 %i.xs, %i.we
  %i.xu = load i8, ptr %i.pg, align 1
  %i.xv = zext i8 %i.xu to i32                    ; 2 uses
  %i.xw = lshr i32 %i.xt, %i.xv
  %i.xx = zext i32 %i.xw to i64
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xr, i64 %i.xx
  %i.xz = load i8, ptr %i.xy, align 1
  %i.ya = zext i8 %i.xz to i32
  %i.yb = mul nuw nsw i32 %i.d, %i.wn
  %i.yc = udiv i32 %i.yb, 255
  %i.yd = add nuw nsw i32 %i.yc, %i.ph
  %spec.store.select5 = tail call i32 @llvm.umin.i32(i32 %i.yd, i32 255)
  %i.ye = mul nuw nsw i32 %i.d, %i.xa
  %i.yf = udiv i32 %i.ye, 255
  %i.yg = add nuw nsw i32 %i.yf, %i.pi
  %spec.store.select29 = tail call i32 @llvm.umin.i32(i32 %i.yg, i32 255)
  %i.yh = mul nuw nsw i32 %i.d, %i.xn
  %i.yi = udiv i32 %i.yh, 255
  %i.yj = add nuw nsw i32 %i.yi, %i.pj
  %spec.store.select6 = tail call i32 @llvm.umin.i32(i32 %i.yj, i32 255)
  %i.yk = mul nuw nsw i32 %i.d, %i.ya
  %i.yl = udiv i32 %i.yk, 255
  %i.ym = add nuw nsw i32 %i.yl, %i.c
  %spec.store.select41 = tail call i32 @llvm.umin.i32(i32 %i.ym, i32 255)
  %i.yn = zext i8 %i.wa to i32
  %i.yo = sub nsw i32 8, %i.yn
  %i.yp = lshr i32 %spec.store.select5, %i.yo
  %i.yq = shl i32 %i.yp, %i.wi
  %i.yr = zext i8 %i.wo to i32
  %i.ys = sub nsw i32 8, %i.yr
  %i.yt = lshr i32 %spec.store.select29, %i.ys
  %i.yu = shl i32 %i.yt, %i.wv
  %i.yv = or i32 %i.yu, %i.yq
  %i.yw = zext i8 %i.xb to i32
  %i.yx = sub nsw i32 8, %i.yw
  %i.yy = lshr i32 %spec.store.select6, %i.yx
  %i.yz = shl i32 %i.yy, %i.xi
  %i.za = or i32 %i.yv, %i.yz
  %i.zb = zext i8 %i.xo to i32
  %i.zc = sub nsw i32 8, %i.zb
  %i.zd = lshr i32 %spec.store.select41, %i.zc
  %i.ze = shl i32 %i.zd, %i.xv
  %i.zf = or i32 %i.za, %i.ze
  store i32 %i.zf, ptr %.31058, align 4
  %i.zg = getelementptr inbounds nuw i8, ptr %.31058, i64 4
  br label %bb.n

.unreachabledefault:                              ; preds = %bb.j
  unreachable

bb.n:                                             ; preds = %bb.j, %bb.m
  %.31063 = phi i32 [ %.21062, %bb.m ], [ %i.ot, %bb.j ] ; 2 uses
  %.41059 = phi ptr [ %i.zg, %bb.m ], [ %.010551181, %bb.j ] ; 3 uses
  %i.zh = load i8, ptr %i.ov, align 4             ; 2 uses
  %i.zi = zext i8 %i.zh to i64
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.zi
  %i.zk = load ptr, ptr %i.zj, align 8
  %i.zl = load i32, ptr %.41059, align 4          ; 4 uses
  %i.zm = load i32, ptr %i.ow, align 4
  %i.zn = and i32 %i.zm, %i.zl
  %i.zo = load i8, ptr %i.ox, align 4
  %i.zp = zext i8 %i.zo to i32                    ; 2 uses
  %i.zq = lshr i32 %i.zn, %i.zp
  %i.zr = zext i32 %i.zq to i64
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zk, i64 %i.zr
  %i.zt = load i8, ptr %i.zs, align 1
  %i.zu = zext i8 %i.zt to i32
  %i.zv = load i8, ptr %i.oy, align 1             ; 2 uses
  %i.zw = zext i8 %i.zv to i64
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.zw
  %i.zy = load ptr, ptr %i.zx, align 8
  %i.zz = load i32, ptr %i.oz, align 4
  %i.aaa = and i32 %i.zz, %i.zl
  %i.aab = load i8, ptr %i.pa, align 1
  %i.aac = zext i8 %i.aab to i32                  ; 2 uses
  %i.aad = lshr i32 %i.aaa, %i.aac
  %i.aae = zext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.aae
  %i.aag = load i8, ptr %i.aaf, align 1
  %i.aah = zext i8 %i.aag to i32
  %i.aai = load i8, ptr %i.pb, align 2            ; 2 uses
  %i.aaj = zext i8 %i.aai to i64
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aaj
  %i.aal = load ptr, ptr %i.aak, align 8
  %i.aam = load i32, ptr %i.pc, align 4
  %i.aan = and i32 %i.aam, %i.zl
  %i.aao = load i8, ptr %i.pd, align 2
  %i.aap = zext i8 %i.aao to i32                  ; 2 uses
  %i.aaq = lshr i32 %i.aan, %i.aap
  %i.aar = zext i32 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aal, i64 %i.aar
  %i.aat = load i8, ptr %i.aas, align 1
  %i.aau = zext i8 %i.aat to i32
  %i.aav = load i8, ptr %i.pe, align 1            ; 2 uses
  %i.aaw = zext i8 %i.aav to i64
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aaw
  %i.aay = load ptr, ptr %i.aax, align 8
  %i.aaz = load i32, ptr %i.pf, align 4
  %i.aba = and i32 %i.aaz, %i.zl
  %i.abb = load i8, ptr %i.pg, align 1
  %i.abc = zext i8 %i.abb to i32                  ; 2 uses
  %i.abd = lshr i32 %i.aba, %i.abc
  %i.abe = zext i32 %i.abd to i64
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aay, i64 %i.abe
  %i.abg = load i8, ptr %i.abf, align 1
  %i.abh = zext i8 %i.abg to i32
  %i.abi = mul nuw nsw i32 %i.d, %i.zu
  %i.abj = udiv i32 %i.abi, 255
  %i.abk = add nuw nsw i32 %i.abj, %i.ph
  %spec.store.select7 = tail call i32 @llvm.umin.i32(i32 %i.abk, i32 255)
  %i.abl = mul nuw nsw i32 %i.d, %i.aah
  %i.abm = udiv i32 %i.abl, 255
  %i.abn = add nuw nsw i32 %i.abm, %i.pi
  %spec.store.select30 = tail call i32 @llvm.umin.i32(i32 %i.abn, i32 255)
  %i.abo = mul nuw nsw i32 %i.d, %i.aau
  %i.abp = udiv i32 %i.abo, 255
  %i.abq = add nuw nsw i32 %i.abp, %i.pj
  %spec.store.select8 = tail call i32 @llvm.umin.i32(i32 %i.abq, i32 255)
  %i.abr = mul nuw nsw i32 %i.d, %i.abh
  %i.abs = udiv i32 %i.abr, 255
  %i.abt = add nuw nsw i32 %i.abs, %i.c
  %spec.store.select42 = tail call i32 @llvm.umin.i32(i32 %i.abt, i32 255)
  %i.abu = zext i8 %i.zh to i32
  %i.abv = sub nsw i32 8, %i.abu
  %i.abw = lshr i32 %spec.store.select7, %i.abv
  %i.abx = shl i32 %i.abw, %i.zp
  %i.aby = zext i8 %i.zv to i32
  %i.abz = sub nsw i32 8, %i.aby
  %i.aca = lshr i32 %spec.store.select30, %i.abz
  %i.acb = shl i32 %i.aca, %i.aac
  %i.acc = or i32 %i.acb, %i.abx
  %i.acd = zext i8 %i.aai to i32
  %i.ace = sub nsw i32 8, %i.acd
  %i.acf = lshr i32 %spec.store.select8, %i.ace
  %i.acg = shl i32 %i.acf, %i.aap
  %i.ach = or i32 %i.acc, %i.acg
  %i.aci = zext i8 %i.aav to i32
  %i.acj = sub nsw i32 8, %i.aci
  %i.ack = lshr i32 %spec.store.select42, %i.acj
  %i.acl = shl i32 %i.ack, %i.abc
  %i.acm = or i32 %i.ach, %i.acl
  store i32 %i.acm, ptr %.41059, align 4
  %i.acn = getelementptr inbounds nuw i8, ptr %.41059, i64 4 ; 2 uses
  %i.aco = add nsw i32 %.31063, -1
  %i.acp = icmp sgt i32 %.31063, 1
  br i1 %i.acp, label %bb.k, label %bb.o, !llvm.loop !78

bb.o:                                             ; preds = %bb.n
  %i.acq = getelementptr inbounds [4 x i8], ptr %i.acn, i64 %i.pk
  %.not1113 = icmp eq i32 %i.pl, 0
  br i1 %.not1113, label %.loopexit, label %bb.j, !llvm.loop !79

bb.p:                                             ; preds = %.split, %.split
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.acs = load i32, ptr %i.acr, align 4          ; 2 uses
  %.not11121177 = icmp eq i32 %i.acs, 0
  br i1 %.not11121177, label %.loopexit, label %.lr.ph1179

.lr.ph1179:                                       ; preds = %bb.p
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.acu = load ptr, ptr %i.act, align 8
  %i.acv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.acw = load i32, ptr %i.acv, align 4
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.acy = load i32, ptr %i.acx, align 8
  %i.acz = sdiv i32 %i.acy, 4                     ; 2 uses
  %i.ada = mul nsw i32 %i.acw, %i.acz
  %i.adb = sext i32 %i.ada to i64
  %i.adc = getelementptr inbounds [4 x i8], ptr %i.acu, i64 %i.adb
  %i.add = load i32, ptr %1, align 4
  %i.ade = sext i32 %i.add to i64
  %i.adf = getelementptr inbounds [4 x i8], ptr %i.adc, i64 %i.ade
  %i.adg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.adh = load i32, ptr %i.adg, align 4          ; 3 uses
  %i.adi = sub nsw i32 %i.acz, %i.adh
  %i.adj = add nsw i32 %i.adh, 3
  %i.adk = sdiv i32 %i.adj, 4                     ; 4 uses
  %i.adl = and i32 %i.adh, 3
  %i.adm = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.b, i64 27 ; 4 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.b, i64 31 ; 4 uses
  %i.ady = zext i8 %3 to i32                      ; 4 uses
  %i.adz = zext i8 %4 to i32                      ; 4 uses
  %i.aea = zext i8 %5 to i32                      ; 4 uses
  %i.aeb = sext i32 %i.adi to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph1179, %bb.v
  %.in1194 = phi i32 [ %i.acs, %.lr.ph1179 ], [ %i.aec, %bb.v ]
  %.010651178 = phi ptr [ %i.adf, %.lr.ph1179 ], [ %i.apx, %bb.v ] ; 4 uses
  %i.aec = add nsw i32 %.in1194, -1               ; 2 uses
  switch i32 %i.adl, label %.unreachabledefault1226 [
    i32 0, label %bb.r
    i32 3, label %bb.s
    i32 2, label %bb.t
    i32 1, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q, %bb.u
  %.01070 = phi i32 [ %i.adk, %bb.q ], [ %i.apv, %bb.u ]
  %.11066 = phi ptr [ %.010651178, %bb.q ], [ %i.apu, %bb.u ] ; 3 uses
  %i.aed = load i8, ptr %i.adm, align 4           ; 2 uses
  %i.aee = zext i8 %i.aed to i64
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aee
  %i.aeg = load ptr, ptr %i.aef, align 8
  %i.aeh = load i32, ptr %.11066, align 4         ; 4 uses
  %i.aei = load i32, ptr %i.adn, align 4
  %i.aej = and i32 %i.aei, %i.aeh
  %i.aek = load i8, ptr %i.ado, align 4
  %i.ael = zext i8 %i.aek to i32                  ; 2 uses
  %i.aem = lshr i32 %i.aej, %i.ael
  %i.aen = zext i32 %i.aem to i64
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeg, i64 %i.aen
  %i.aep = load i8, ptr %i.aeo, align 1
  %i.aeq = zext i8 %i.aep to i32
  %i.aer = load i8, ptr %i.adp, align 1           ; 2 uses
  %i.aes = zext i8 %i.aer to i64
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aes
  %i.aeu = load ptr, ptr %i.aet, align 8
  %i.aev = load i32, ptr %i.adq, align 4
  %i.aew = and i32 %i.aev, %i.aeh
  %i.aex = load i8, ptr %i.adr, align 1
  %i.aey = zext i8 %i.aex to i32                  ; 2 uses
  %i.aez = lshr i32 %i.aew, %i.aey
  %i.afa = zext i32 %i.aez to i64
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aeu, i64 %i.afa
  %i.afc = load i8, ptr %i.afb, align 1
  %i.afd = zext i8 %i.afc to i32
  %i.afe = load i8, ptr %i.ads, align 2           ; 2 uses
  %i.aff = zext i8 %i.afe to i64
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aff
  %i.afh = load ptr, ptr %i.afg, align 8
  %i.afi = load i32, ptr %i.adt, align 4
  %i.afj = and i32 %i.afi, %i.aeh
  %i.afk = load i8, ptr %i.adu, align 2
  %i.afl = zext i8 %i.afk to i32                  ; 2 uses
  %i.afm = lshr i32 %i.afj, %i.afl
  %i.afn = zext i32 %i.afm to i64
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afh, i64 %i.afn
  %i.afp = load i8, ptr %i.afo, align 1
  %i.afq = zext i8 %i.afp to i32
  %i.afr = load i8, ptr %i.adv, align 1           ; 2 uses
  %i.afs = zext i8 %i.afr to i64
  %i.aft = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.afs
  %i.afu = load ptr, ptr %i.aft, align 8
  %i.afv = load i32, ptr %i.adw, align 4
  %i.afw = and i32 %i.afv, %i.aeh
  %i.afx = load i8, ptr %i.adx, align 1
  %i.afy = zext i8 %i.afx to i32                  ; 2 uses
  %i.afz = lshr i32 %i.afw, %i.afy
  %i.aga = zext i32 %i.afz to i64
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afu, i64 %i.aga
  %i.agc = load i8, ptr %i.agb, align 1
  %i.agd = zext i8 %i.agc to i32
  %i.age = add nuw nsw i32 %i.aeq, %i.ady
  %spec.store.select31 = tail call i32 @llvm.umin.i32(i32 %i.age, i32 255)
  %i.agf = add nuw nsw i32 %i.afd, %i.adz
  %spec.store.select10 = tail call i32 @llvm.umin.i32(i32 %i.agf, i32 255)
  %i.agg = add nuw nsw i32 %i.afq, %i.aea
  %spec.store.select43 = tail call i32 @llvm.umin.i32(i32 %i.agg, i32 255)
  %i.agh = zext i8 %i.aed to i32
  %i.agi = sub nsw i32 8, %i.agh
  %i.agj = lshr i32 %spec.store.select31, %i.agi
  %i.agk = shl i32 %i.agj, %i.ael
  %i.agl = zext i8 %i.aer to i32
  %i.agm = sub nsw i32 8, %i.agl
  %i.agn = lshr i32 %spec.store.select10, %i.agm
  %i.ago = shl i32 %i.agn, %i.aey
  %i.agp = or i32 %i.ago, %i.agk
  %i.agq = zext i8 %i.afe to i32
  %i.agr = sub nsw i32 8, %i.agq
  %i.ags = lshr i32 %spec.store.select43, %i.agr
  %i.agt = shl i32 %i.ags, %i.afl
  %i.agu = or i32 %i.agp, %i.agt
  %i.agv = zext i8 %i.afr to i32
  %i.agw = sub nsw i32 8, %i.agv
  %i.agx = lshr i32 %i.agd, %i.agw
  %i.agy = shl i32 %i.agx, %i.afy
  %i.agz = or i32 %i.agu, %i.agy
  store i32 %i.agz, ptr %.11066, align 4
  %i.aha = getelementptr inbounds nuw i8, ptr %.11066, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.11071 = phi i32 [ %.01070, %bb.r ], [ %i.adk, %bb.q ]
  %.21067 = phi ptr [ %i.aha, %bb.r ], [ %.010651178, %bb.q ] ; 3 uses
  %i.ahb = load i8, ptr %i.adm, align 4           ; 2 uses
  %i.ahc = zext i8 %i.ahb to i64
  %i.ahd = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ahc
  %i.ahe = load ptr, ptr %i.ahd, align 8
  %i.ahf = load i32, ptr %.21067, align 4         ; 4 uses
  %i.ahg = load i32, ptr %i.adn, align 4
  %i.ahh = and i32 %i.ahg, %i.ahf
  %i.ahi = load i8, ptr %i.ado, align 4
  %i.ahj = zext i8 %i.ahi to i32                  ; 2 uses
  %i.ahk = lshr i32 %i.ahh, %i.ahj
  %i.ahl = zext i32 %i.ahk to i64
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahe, i64 %i.ahl
  %i.ahn = load i8, ptr %i.ahm, align 1
  %i.aho = zext i8 %i.ahn to i32
  %i.ahp = load i8, ptr %i.adp, align 1           ; 2 uses
  %i.ahq = zext i8 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ahq
  %i.ahs = load ptr, ptr %i.ahr, align 8
  %i.aht = load i32, ptr %i.adq, align 4
  %i.ahu = and i32 %i.aht, %i.ahf
  %i.ahv = load i8, ptr %i.adr, align 1
  %i.ahw = zext i8 %i.ahv to i32                  ; 2 uses
  %i.ahx = lshr i32 %i.ahu, %i.ahw
  %i.ahy = zext i32 %i.ahx to i64
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahs, i64 %i.ahy
  %i.aia = load i8, ptr %i.ahz, align 1
  %i.aib = zext i8 %i.aia to i32
  %i.aic = load i8, ptr %i.ads, align 2           ; 2 uses
  %i.aid = zext i8 %i.aic to i64
  %i.aie = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aid
  %i.aif = load ptr, ptr %i.aie, align 8
  %i.aig = load i32, ptr %i.adt, align 4
  %i.aih = and i32 %i.aig, %i.ahf
  %i.aii = load i8, ptr %i.adu, align 2
  %i.aij = zext i8 %i.aii to i32                  ; 2 uses
  %i.aik = lshr i32 %i.aih, %i.aij
  %i.ail = zext i32 %i.aik to i64
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aif, i64 %i.ail
  %i.ain = load i8, ptr %i.aim, align 1
  %i.aio = zext i8 %i.ain to i32
  %i.aip = load i8, ptr %i.adv, align 1           ; 2 uses
  %i.aiq = zext i8 %i.aip to i64
  %i.air = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aiq
  %i.ais = load ptr, ptr %i.air, align 8
  %i.ait = load i32, ptr %i.adw, align 4
  %i.aiu = and i32 %i.ait, %i.ahf
  %i.aiv = load i8, ptr %i.adx, align 1
  %i.aiw = zext i8 %i.aiv to i32                  ; 2 uses
  %i.aix = lshr i32 %i.aiu, %i.aiw
  %i.aiy = zext i32 %i.aix to i64
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.ais, i64 %i.aiy
  %i.aja = load i8, ptr %i.aiz, align 1
  %i.ajb = zext i8 %i.aja to i32
  %i.ajc = add nuw nsw i32 %i.aho, %i.ady
  %spec.store.select11 = tail call i32 @llvm.umin.i32(i32 %i.ajc, i32 255)
  %i.ajd = add nuw nsw i32 %i.aib, %i.adz
  %spec.store.select32 = tail call i32 @llvm.umin.i32(i32 %i.ajd, i32 255)
  %i.aje = add nuw nsw i32 %i.aio, %i.aea
  %spec.store.select12 = tail call i32 @llvm.umin.i32(i32 %i.aje, i32 255)
  %i.ajf = zext i8 %i.ahb to i32
  %i.ajg = sub nsw i32 8, %i.ajf
  %i.ajh = lshr i32 %spec.store.select11, %i.ajg
  %i.aji = shl i32 %i.ajh, %i.ahj
  %i.ajj = zext i8 %i.ahp to i32
  %i.ajk = sub nsw i32 8, %i.ajj
  %i.ajl = lshr i32 %spec.store.select32, %i.ajk
  %i.ajm = shl i32 %i.ajl, %i.ahw
  %i.ajn = or i32 %i.ajm, %i.aji
  %i.ajo = zext i8 %i.aic to i32
  %i.ajp = sub nsw i32 8, %i.ajo
  %i.ajq = lshr i32 %spec.store.select12, %i.ajp
  %i.ajr = shl i32 %i.ajq, %i.aij
  %i.ajs = or i32 %i.ajn, %i.ajr
  %i.ajt = zext i8 %i.aip to i32
  %i.aju = sub nsw i32 8, %i.ajt
  %i.ajv = lshr i32 %i.ajb, %i.aju
  %i.ajw = shl i32 %i.ajv, %i.aiw
  %i.ajx = or i32 %i.ajs, %i.ajw
  store i32 %i.ajx, ptr %.21067, align 4
  %i.ajy = getelementptr inbounds nuw i8, ptr %.21067, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s
  %.21072 = phi i32 [ %.11071, %bb.s ], [ %i.adk, %bb.q ]
  %.31068 = phi ptr [ %i.ajy, %bb.s ], [ %.010651178, %bb.q ] ; 3 uses
  %i.ajz = load i8, ptr %i.adm, align 4           ; 2 uses
  %i.aka = zext i8 %i.ajz to i64
  %i.akb = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aka
  %i.akc = load ptr, ptr %i.akb, align 8
  %i.akd = load i32, ptr %.31068, align 4         ; 4 uses
  %i.ake = load i32, ptr %i.adn, align 4
  %i.akf = and i32 %i.ake, %i.akd
  %i.akg = load i8, ptr %i.ado, align 4
  %i.akh = zext i8 %i.akg to i32                  ; 2 uses
  %i.aki = lshr i32 %i.akf, %i.akh
  %i.akj = zext i32 %i.aki to i64
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akc, i64 %i.akj
  %i.akl = load i8, ptr %i.akk, align 1
  %i.akm = zext i8 %i.akl to i32
  %i.akn = load i8, ptr %i.adp, align 1           ; 2 uses
  %i.ako = zext i8 %i.akn to i64
  %i.akp = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ako
  %i.akq = load ptr, ptr %i.akp, align 8
  %i.akr = load i32, ptr %i.adq, align 4
  %i.aks = and i32 %i.akr, %i.akd
  %i.akt = load i8, ptr %i.adr, align 1
  %i.aku = zext i8 %i.akt to i32                  ; 2 uses
  %i.akv = lshr i32 %i.aks, %i.aku
  %i.akw = zext i32 %i.akv to i64
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akq, i64 %i.akw
  %i.aky = load i8, ptr %i.akx, align 1
  %i.akz = zext i8 %i.aky to i32
  %i.ala = load i8, ptr %i.ads, align 2           ; 2 uses
  %i.alb = zext i8 %i.ala to i64
  %i.alc = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.alb
  %i.ald = load ptr, ptr %i.alc, align 8
  %i.ale = load i32, ptr %i.adt, align 4
  %i.alf = and i32 %i.ale, %i.akd
  %i.alg = load i8, ptr %i.adu, align 2
  %i.alh = zext i8 %i.alg to i32                  ; 2 uses
  %i.ali = lshr i32 %i.alf, %i.alh
  %i.alj = zext i32 %i.ali to i64
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ald, i64 %i.alj
  %i.all = load i8, ptr %i.alk, align 1
  %i.alm = zext i8 %i.all to i32
  %i.aln = load i8, ptr %i.adv, align 1           ; 2 uses
  %i.alo = zext i8 %i.aln to i64
  %i.alp = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.alo
  %i.alq = load ptr, ptr %i.alp, align 8
  %i.alr = load i32, ptr %i.adw, align 4
  %i.als = and i32 %i.alr, %i.akd
  %i.alt = load i8, ptr %i.adx, align 1
  %i.alu = zext i8 %i.alt to i32                  ; 2 uses
  %i.alv = lshr i32 %i.als, %i.alu
  %i.alw = zext i32 %i.alv to i64
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alq, i64 %i.alw
  %i.aly = load i8, ptr %i.alx, align 1
  %i.alz = zext i8 %i.aly to i32
  %i.ama = add nuw nsw i32 %i.akm, %i.ady
  %spec.store.select13 = tail call i32 @llvm.umin.i32(i32 %i.ama, i32 255)
  %i.amb = add nuw nsw i32 %i.akz, %i.adz
  %spec.store.select33 = tail call i32 @llvm.umin.i32(i32 %i.amb, i32 255)
  %i.amc = add nuw nsw i32 %i.alm, %i.aea
  %spec.store.select14 = tail call i32 @llvm.umin.i32(i32 %i.amc, i32 255)
  %i.amd = zext i8 %i.ajz to i32
  %i.ame = sub nsw i32 8, %i.amd
  %i.amf = lshr i32 %spec.store.select13, %i.ame
  %i.amg = shl i32 %i.amf, %i.akh
  %i.amh = zext i8 %i.akn to i32
  %i.ami = sub nsw i32 8, %i.amh
  %i.amj = lshr i32 %spec.store.select33, %i.ami
  %i.amk = shl i32 %i.amj, %i.aku
  %i.aml = or i32 %i.amk, %i.amg
  %i.amm = zext i8 %i.ala to i32
  %i.amn = sub nsw i32 8, %i.amm
  %i.amo = lshr i32 %spec.store.select14, %i.amn
  %i.amp = shl i32 %i.amo, %i.alh
  %i.amq = or i32 %i.aml, %i.amp
  %i.amr = zext i8 %i.aln to i32
  %i.ams = sub nsw i32 8, %i.amr
  %i.amt = lshr i32 %i.alz, %i.ams
  %i.amu = shl i32 %i.amt, %i.alu
  %i.amv = or i32 %i.amq, %i.amu
  store i32 %i.amv, ptr %.31068, align 4
  %i.amw = getelementptr inbounds nuw i8, ptr %.31068, i64 4
  br label %bb.u

.unreachabledefault1226:                          ; preds = %bb.q
  unreachable

bb.u:                                             ; preds = %bb.q, %bb.t
  %.31073 = phi i32 [ %.21072, %bb.t ], [ %i.adk, %bb.q ] ; 2 uses
  %.41069 = phi ptr [ %i.amw, %bb.t ], [ %.010651178, %bb.q ] ; 3 uses
  %i.amx = load i8, ptr %i.adm, align 4           ; 2 uses
  %i.amy = zext i8 %i.amx to i64
  %i.amz = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.amy
  %i.ana = load ptr, ptr %i.amz, align 8
  %i.anb = load i32, ptr %.41069, align 4         ; 4 uses
  %i.anc = load i32, ptr %i.adn, align 4
  %i.and = and i32 %i.anc, %i.anb
  %i.ane = load i8, ptr %i.ado, align 4
  %i.anf = zext i8 %i.ane to i32                  ; 2 uses
  %i.ang = lshr i32 %i.and, %i.anf
  %i.anh = zext i32 %i.ang to i64
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ana, i64 %i.anh
  %i.anj = load i8, ptr %i.ani, align 1
  %i.ank = zext i8 %i.anj to i32
  %i.anl = load i8, ptr %i.adp, align 1           ; 2 uses
  %i.anm = zext i8 %i.anl to i64
  %i.ann = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.anm
  %i.ano = load ptr, ptr %i.ann, align 8
  %i.anp = load i32, ptr %i.adq, align 4
  %i.anq = and i32 %i.anp, %i.anb
  %i.anr = load i8, ptr %i.adr, align 1
  %i.ans = zext i8 %i.anr to i32                  ; 2 uses
  %i.ant = lshr i32 %i.anq, %i.ans
  %i.anu = zext i32 %i.ant to i64
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.anu
  %i.anw = load i8, ptr %i.anv, align 1
  %i.anx = zext i8 %i.anw to i32
  %i.any = load i8, ptr %i.ads, align 2           ; 2 uses
  %i.anz = zext i8 %i.any to i64
  %i.aoa = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.anz
  %i.aob = load ptr, ptr %i.aoa, align 8
  %i.aoc = load i32, ptr %i.adt, align 4
  %i.aod = and i32 %i.aoc, %i.anb
  %i.aoe = load i8, ptr %i.adu, align 2
  %i.aof = zext i8 %i.aoe to i32                  ; 2 uses
  %i.aog = lshr i32 %i.aod, %i.aof
  %i.aoh = zext i32 %i.aog to i64
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aob, i64 %i.aoh
  %i.aoj = load i8, ptr %i.aoi, align 1
  %i.aok = zext i8 %i.aoj to i32
  %i.aol = load i8, ptr %i.adv, align 1           ; 2 uses
  %i.aom = zext i8 %i.aol to i64
  %i.aon = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aom
  %i.aoo = load ptr, ptr %i.aon, align 8
  %i.aop = load i32, ptr %i.adw, align 4
  %i.aoq = and i32 %i.aop, %i.anb
  %i.aor = load i8, ptr %i.adx, align 1
  %i.aos = zext i8 %i.aor to i32                  ; 2 uses
  %i.aot = lshr i32 %i.aoq, %i.aos
  %i.aou = zext i32 %i.aot to i64
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aoo, i64 %i.aou
  %i.aow = load i8, ptr %i.aov, align 1
  %i.aox = zext i8 %i.aow to i32
  %i.aoy = add nuw nsw i32 %i.ank, %i.ady
  %spec.store.select15 = tail call i32 @llvm.umin.i32(i32 %i.aoy, i32 255)
  %i.aoz = add nuw nsw i32 %i.anx, %i.adz
  %spec.store.select34 = tail call i32 @llvm.umin.i32(i32 %i.aoz, i32 255)
  %i.apa = add nuw nsw i32 %i.aok, %i.aea
  %spec.store.select16 = tail call i32 @llvm.umin.i32(i32 %i.apa, i32 255)
  %i.apb = zext i8 %i.amx to i32
  %i.apc = sub nsw i32 8, %i.apb
  %i.apd = lshr i32 %spec.store.select15, %i.apc
  %i.ape = shl i32 %i.apd, %i.anf
  %i.apf = zext i8 %i.anl to i32
  %i.apg = sub nsw i32 8, %i.apf
  %i.aph = lshr i32 %spec.store.select34, %i.apg
  %i.api = shl i32 %i.aph, %i.ans
  %i.apj = or i32 %i.api, %i.ape
  %i.apk = zext i8 %i.any to i32
  %i.apl = sub nsw i32 8, %i.apk
  %i.apm = lshr i32 %spec.store.select16, %i.apl
  %i.apn = shl i32 %i.apm, %i.aof
  %i.apo = or i32 %i.apj, %i.apn
  %i.app = zext i8 %i.aol to i32
  %i.apq = sub nsw i32 8, %i.app
  %i.apr = lshr i32 %i.aox, %i.apq
  %i.aps = shl i32 %i.apr, %i.aos
  %i.apt = or i32 %i.apo, %i.aps
  store i32 %i.apt, ptr %.41069, align 4
  %i.apu = getelementptr inbounds nuw i8, ptr %.41069, i64 4 ; 2 uses
  %i.apv = add nsw i32 %.31073, -1
  %i.apw = icmp sgt i32 %.31073, 1
  br i1 %i.apw, label %bb.r, label %bb.v, !llvm.loop !80

bb.v:                                             ; preds = %bb.u
  %i.apx = getelementptr inbounds [4 x i8], ptr %i.apu, i64 %i.aeb
  %.not1112 = icmp eq i32 %i.aec, 0
  br i1 %.not1112, label %.loopexit, label %bb.q, !llvm.loop !81

bb.w:                                             ; preds = %.split
  %i.apy = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.apz = load i32, ptr %i.apy, align 4          ; 2 uses
  %.not11111174 = icmp eq i32 %i.apz, 0
  br i1 %.not11111174, label %.loopexit, label %.lr.ph1176

.lr.ph1176:                                       ; preds = %bb.w
  %i.aqa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aqb = load ptr, ptr %i.aqa, align 8
  %i.aqc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aqd = load i32, ptr %i.aqc, align 4
  %i.aqe = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aqf = load i32, ptr %i.aqe, align 8
  %i.aqg = sdiv i32 %i.aqf, 4                     ; 2 uses
  %i.aqh = mul nsw i32 %i.aqd, %i.aqg
  %i.aqi = sext i32 %i.aqh to i64
  %i.aqj = getelementptr inbounds [4 x i8], ptr %i.aqb, i64 %i.aqi
  %i.aqk = load i32, ptr %1, align 4
  %i.aql = sext i32 %i.aqk to i64
  %i.aqm = getelementptr inbounds [4 x i8], ptr %i.aqj, i64 %i.aql
  %i.aqn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aqo = load i32, ptr %i.aqn, align 4          ; 3 uses
  %i.aqp = sub nsw i32 %i.aqg, %i.aqo
  %i.aqq = add nsw i32 %i.aqo, 3
  %i.aqr = sdiv i32 %i.aqq, 4                     ; 4 uses
  %i.aqs = and i32 %i.aqo, 3
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %i.b, i64 27 ; 4 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.b, i64 31 ; 4 uses
  %i.arf = zext i8 %3 to i16                      ; 4 uses
  %i.arg = zext i8 %4 to i16                      ; 4 uses
  %i.arh = zext i8 %5 to i16                      ; 4 uses
  %i.ari = sext i32 %i.aqp to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph1176, %bb.ac
  %.in1193 = phi i32 [ %i.apz, %.lr.ph1176 ], [ %i.arj, %bb.ac ]
  %.010751175 = phi ptr [ %i.aqm, %.lr.ph1176 ], [ %i.bde, %bb.ac ] ; 4 uses
  %i.arj = add nsw i32 %.in1193, -1               ; 2 uses
  switch i32 %i.aqs, label %.unreachabledefault1227 [
    i32 0, label %bb.y
    i32 3, label %bb.z
    i32 2, label %bb.aa
    i32 1, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x, %bb.ab
  %.01080 = phi i32 [ %i.aqr, %bb.x ], [ %i.bdc, %bb.ab ]
  %.11076 = phi ptr [ %.010751175, %bb.x ], [ %i.bdb, %bb.ab ] ; 3 uses
  %i.ark = load i8, ptr %i.aqt, align 4           ; 2 uses
  %i.arl = zext i8 %i.ark to i64
  %i.arm = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.arl
  %i.arn = load ptr, ptr %i.arm, align 8
  %i.aro = load i32, ptr %.11076, align 4         ; 4 uses
  %i.arp = load i32, ptr %i.aqu, align 4
  %i.arq = and i32 %i.arp, %i.aro
  %i.arr = load i8, ptr %i.aqv, align 4
  %i.ars = zext i8 %i.arr to i32                  ; 2 uses
  %i.art = lshr i32 %i.arq, %i.ars
  %i.aru = zext i32 %i.art to i64
  %i.arv = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.aru
  %i.arw = load i8, ptr %i.arv, align 1
  %i.arx = zext i8 %i.arw to i16
  %i.ary = load i8, ptr %i.aqw, align 1           ; 2 uses
  %i.arz = zext i8 %i.ary to i64
  %i.asa = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.arz
  %i.asb = load ptr, ptr %i.asa, align 8
  %i.asc = load i32, ptr %i.aqx, align 4
  %i.asd = and i32 %i.asc, %i.aro
  %i.ase = load i8, ptr %i.aqy, align 1
  %i.asf = zext i8 %i.ase to i32                  ; 2 uses
  %i.asg = lshr i32 %i.asd, %i.asf
  %i.ash = zext i32 %i.asg to i64
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asb, i64 %i.ash
  %i.asj = load i8, ptr %i.asi, align 1
  %i.ask = zext i8 %i.asj to i16
  %i.asl = load i8, ptr %i.aqz, align 2           ; 2 uses
  %i.asm = zext i8 %i.asl to i64
  %i.asn = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.asm
  %i.aso = load ptr, ptr %i.asn, align 8
  %i.asp = load i32, ptr %i.ara, align 4
  %i.asq = and i32 %i.asp, %i.aro
  %i.asr = load i8, ptr %i.arb, align 2
  %i.ass = zext i8 %i.asr to i32                  ; 2 uses
  %i.ast = lshr i32 %i.asq, %i.ass
  %i.asu = zext i32 %i.ast to i64
  %i.asv = getelementptr inbounds nuw i8, ptr %i.aso, i64 %i.asu
  %i.asw = load i8, ptr %i.asv, align 1
  %i.asx = zext i8 %i.asw to i16
  %i.asy = load i8, ptr %i.arc, align 1           ; 2 uses
  %i.asz = zext i8 %i.asy to i64
  %i.ata = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.asz
  %i.atb = load ptr, ptr %i.ata, align 8
  %i.atc = load i32, ptr %i.ard, align 4
  %i.atd = and i32 %i.atc, %i.aro
  %i.ate = load i8, ptr %i.are, align 1
  %i.atf = zext i8 %i.ate to i32                  ; 2 uses
  %i.atg = lshr i32 %i.atd, %i.atf
  %i.ath = zext i32 %i.atg to i64
  %i.ati = getelementptr inbounds nuw i8, ptr %i.atb, i64 %i.ath
  %i.atj = load i8, ptr %i.ati, align 1
  %i.atk = zext i8 %i.atj to i32
  %.lhs.trunc = mul nuw i16 %i.arx, %i.arf
  %i.atl = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.atl to i32
  %.lhs.trunc1116 = mul nuw i16 %i.ask, %i.arg
  %i.atm = udiv i16 %.lhs.trunc1116, 255
  %.zext1117 = zext nneg i16 %i.atm to i32
  %.lhs.trunc1118 = mul nuw i16 %i.asx, %i.arh
  %i.atn = udiv i16 %.lhs.trunc1118, 255
  %.zext1119 = zext nneg i16 %i.atn to i32
  %i.ato = zext i8 %i.ark to i32
  %i.atp = sub nsw i32 8, %i.ato
  %i.atq = lshr i32 %.zext, %i.atp
  %i.atr = shl i32 %i.atq, %i.ars
  %i.ats = zext i8 %i.ary to i32
  %i.att = sub nsw i32 8, %i.ats
  %i.atu = lshr i32 %.zext1117, %i.att
  %i.atv = shl i32 %i.atu, %i.asf
  %i.atw = or i32 %i.atv, %i.atr
  %i.atx = zext i8 %i.asl to i32
  %i.aty = sub nsw i32 8, %i.atx
  %i.atz = lshr i32 %.zext1119, %i.aty
  %i.aua = shl i32 %i.atz, %i.ass
  %i.aub = or i32 %i.atw, %i.aua
  %i.auc = zext i8 %i.asy to i32
  %i.aud = sub nsw i32 8, %i.auc
  %i.aue = lshr i32 %i.atk, %i.aud
  %i.auf = shl i32 %i.aue, %i.atf
  %i.aug = or i32 %i.aub, %i.auf
  store i32 %i.aug, ptr %.11076, align 4
  %i.auh = getelementptr inbounds nuw i8, ptr %.11076, i64 4
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.11081 = phi i32 [ %.01080, %bb.y ], [ %i.aqr, %bb.x ]
  %.21077 = phi ptr [ %i.auh, %bb.y ], [ %.010751175, %bb.x ] ; 3 uses
  %i.aui = load i8, ptr %i.aqt, align 4           ; 2 uses
  %i.auj = zext i8 %i.aui to i64
  %i.auk = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.auj
  %i.aul = load ptr, ptr %i.auk, align 8
  %i.aum = load i32, ptr %.21077, align 4         ; 4 uses
  %i.aun = load i32, ptr %i.aqu, align 4
  %i.auo = and i32 %i.aun, %i.aum
  %i.aup = load i8, ptr %i.aqv, align 4
  %i.auq = zext i8 %i.aup to i32                  ; 2 uses
  %i.aur = lshr i32 %i.auo, %i.auq
  %i.aus = zext i32 %i.aur to i64
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aul, i64 %i.aus
  %i.auu = load i8, ptr %i.aut, align 1
  %i.auv = zext i8 %i.auu to i16
  %i.auw = load i8, ptr %i.aqw, align 1           ; 2 uses
  %i.aux = zext i8 %i.auw to i64
  %i.auy = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aux
  %i.auz = load ptr, ptr %i.auy, align 8
  %i.ava = load i32, ptr %i.aqx, align 4
  %i.avb = and i32 %i.ava, %i.aum
  %i.avc = load i8, ptr %i.aqy, align 1
  %i.avd = zext i8 %i.avc to i32                  ; 2 uses
  %i.ave = lshr i32 %i.avb, %i.avd
  %i.avf = zext i32 %i.ave to i64
  %i.avg = getelementptr inbounds nuw i8, ptr %i.auz, i64 %i.avf
  %i.avh = load i8, ptr %i.avg, align 1
  %i.avi = zext i8 %i.avh to i16
  %i.avj = load i8, ptr %i.aqz, align 2           ; 2 uses
  %i.avk = zext i8 %i.avj to i64
  %i.avl = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.avk
  %i.avm = load ptr, ptr %i.avl, align 8
  %i.avn = load i32, ptr %i.ara, align 4
  %i.avo = and i32 %i.avn, %i.aum
  %i.avp = load i8, ptr %i.arb, align 2
  %i.avq = zext i8 %i.avp to i32                  ; 2 uses
  %i.avr = lshr i32 %i.avo, %i.avq
  %i.avs = zext i32 %i.avr to i64
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avm, i64 %i.avs
  %i.avu = load i8, ptr %i.avt, align 1
  %i.avv = zext i8 %i.avu to i16
  %i.avw = load i8, ptr %i.arc, align 1           ; 2 uses
  %i.avx = zext i8 %i.avw to i64
  %i.avy = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.avx
  %i.avz = load ptr, ptr %i.avy, align 8
  %i.awa = load i32, ptr %i.ard, align 4
  %i.awb = and i32 %i.awa, %i.aum
  %i.awc = load i8, ptr %i.are, align 1
  %i.awd = zext i8 %i.awc to i32                  ; 2 uses
  %i.awe = lshr i32 %i.awb, %i.awd
  %i.awf = zext i32 %i.awe to i64
  %i.awg = getelementptr inbounds nuw i8, ptr %i.avz, i64 %i.awf
  %i.awh = load i8, ptr %i.awg, align 1
  %i.awi = zext i8 %i.awh to i32
  %.lhs.trunc1120 = mul nuw i16 %i.auv, %i.arf
  %i.awj = udiv i16 %.lhs.trunc1120, 255
  %.zext1121 = zext nneg i16 %i.awj to i32
  %.lhs.trunc1122 = mul nuw i16 %i.avi, %i.arg
  %i.awk = udiv i16 %.lhs.trunc1122, 255
  %.zext1123 = zext nneg i16 %i.awk to i32
  %.lhs.trunc1124 = mul nuw i16 %i.avv, %i.arh
  %i.awl = udiv i16 %.lhs.trunc1124, 255
  %.zext1125 = zext nneg i16 %i.awl to i32
  %i.awm = zext i8 %i.aui to i32
  %i.awn = sub nsw i32 8, %i.awm
  %i.awo = lshr i32 %.zext1121, %i.awn
  %i.awp = shl i32 %i.awo, %i.auq
  %i.awq = zext i8 %i.auw to i32
  %i.awr = sub nsw i32 8, %i.awq
  %i.aws = lshr i32 %.zext1123, %i.awr
  %i.awt = shl i32 %i.aws, %i.avd
  %i.awu = or i32 %i.awt, %i.awp
  %i.awv = zext i8 %i.avj to i32
  %i.aww = sub nsw i32 8, %i.awv
  %i.awx = lshr i32 %.zext1125, %i.aww
  %i.awy = shl i32 %i.awx, %i.avq
  %i.awz = or i32 %i.awu, %i.awy
  %i.axa = zext i8 %i.avw to i32
  %i.axb = sub nsw i32 8, %i.axa
  %i.axc = lshr i32 %i.awi, %i.axb
  %i.axd = shl i32 %i.axc, %i.awd
  %i.axe = or i32 %i.awz, %i.axd
  store i32 %i.axe, ptr %.21077, align 4
  %i.axf = getelementptr inbounds nuw i8, ptr %.21077, i64 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.z
  %.21082 = phi i32 [ %.11081, %bb.z ], [ %i.aqr, %bb.x ]
  %.31078 = phi ptr [ %i.axf, %bb.z ], [ %.010751175, %bb.x ] ; 3 uses
  %i.axg = load i8, ptr %i.aqt, align 4           ; 2 uses
  %i.axh = zext i8 %i.axg to i64
  %i.axi = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.axh
  %i.axj = load ptr, ptr %i.axi, align 8
  %i.axk = load i32, ptr %.31078, align 4         ; 4 uses
  %i.axl = load i32, ptr %i.aqu, align 4
  %i.axm = and i32 %i.axl, %i.axk
  %i.axn = load i8, ptr %i.aqv, align 4
  %i.axo = zext i8 %i.axn to i32                  ; 2 uses
  %i.axp = lshr i32 %i.axm, %i.axo
  %i.axq = zext i32 %i.axp to i64
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axj, i64 %i.axq
  %i.axs = load i8, ptr %i.axr, align 1
  %i.axt = zext i8 %i.axs to i16
  %i.axu = load i8, ptr %i.aqw, align 1           ; 2 uses
  %i.axv = zext i8 %i.axu to i64
  %i.axw = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.axv
  %i.axx = load ptr, ptr %i.axw, align 8
  %i.axy = load i32, ptr %i.aqx, align 4
  %i.axz = and i32 %i.axy, %i.axk
  %i.aya = load i8, ptr %i.aqy, align 1
  %i.ayb = zext i8 %i.aya to i32                  ; 2 uses
  %i.ayc = lshr i32 %i.axz, %i.ayb
  %i.ayd = zext i32 %i.ayc to i64
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axx, i64 %i.ayd
  %i.ayf = load i8, ptr %i.aye, align 1
  %i.ayg = zext i8 %i.ayf to i16
  %i.ayh = load i8, ptr %i.aqz, align 2           ; 2 uses
  %i.ayi = zext i8 %i.ayh to i64
  %i.ayj = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ayi
  %i.ayk = load ptr, ptr %i.ayj, align 8
  %i.ayl = load i32, ptr %i.ara, align 4
  %i.aym = and i32 %i.ayl, %i.axk
  %i.ayn = load i8, ptr %i.arb, align 2
  %i.ayo = zext i8 %i.ayn to i32                  ; 2 uses
  %i.ayp = lshr i32 %i.aym, %i.ayo
  %i.ayq = zext i32 %i.ayp to i64
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayk, i64 %i.ayq
  %i.ays = load i8, ptr %i.ayr, align 1
  %i.ayt = zext i8 %i.ays to i16
  %i.ayu = load i8, ptr %i.arc, align 1           ; 2 uses
  %i.ayv = zext i8 %i.ayu to i64
  %i.ayw = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ayv
  %i.ayx = load ptr, ptr %i.ayw, align 8
  %i.ayy = load i32, ptr %i.ard, align 4
  %i.ayz = and i32 %i.ayy, %i.axk
  %i.aza = load i8, ptr %i.are, align 1
  %i.azb = zext i8 %i.aza to i32                  ; 2 uses
  %i.azc = lshr i32 %i.ayz, %i.azb
  %i.azd = zext i32 %i.azc to i64
  %i.aze = getelementptr inbounds nuw i8, ptr %i.ayx, i64 %i.azd
  %i.azf = load i8, ptr %i.aze, align 1
  %i.azg = zext i8 %i.azf to i32
  %.lhs.trunc1126 = mul nuw i16 %i.axt, %i.arf
  %i.azh = udiv i16 %.lhs.trunc1126, 255
  %.zext1127 = zext nneg i16 %i.azh to i32
  %.lhs.trunc1128 = mul nuw i16 %i.ayg, %i.arg
  %i.azi = udiv i16 %.lhs.trunc1128, 255
  %.zext1129 = zext nneg i16 %i.azi to i32
  %.lhs.trunc1130 = mul nuw i16 %i.ayt, %i.arh
  %i.azj = udiv i16 %.lhs.trunc1130, 255
  %.zext1131 = zext nneg i16 %i.azj to i32
  %i.azk = zext i8 %i.axg to i32
  %i.azl = sub nsw i32 8, %i.azk
  %i.azm = lshr i32 %.zext1127, %i.azl
  %i.azn = shl i32 %i.azm, %i.axo
  %i.azo = zext i8 %i.axu to i32
  %i.azp = sub nsw i32 8, %i.azo
  %i.azq = lshr i32 %.zext1129, %i.azp
  %i.azr = shl i32 %i.azq, %i.ayb
  %i.azs = or i32 %i.azr, %i.azn
  %i.azt = zext i8 %i.ayh to i32
  %i.azu = sub nsw i32 8, %i.azt
  %i.azv = lshr i32 %.zext1131, %i.azu
  %i.azw = shl i32 %i.azv, %i.ayo
  %i.azx = or i32 %i.azs, %i.azw
  %i.azy = zext i8 %i.ayu to i32
  %i.azz = sub nsw i32 8, %i.azy
  %i.baa = lshr i32 %i.azg, %i.azz
  %i.bab = shl i32 %i.baa, %i.azb
  %i.bac = or i32 %i.azx, %i.bab
  store i32 %i.bac, ptr %.31078, align 4
  %i.bad = getelementptr inbounds nuw i8, ptr %.31078, i64 4
  br label %bb.ab

.unreachabledefault1227:                          ; preds = %bb.x
  unreachable

bb.ab:                                            ; preds = %bb.x, %bb.aa
  %.31083 = phi i32 [ %.21082, %bb.aa ], [ %i.aqr, %bb.x ] ; 2 uses
  %.41079 = phi ptr [ %i.bad, %bb.aa ], [ %.010751175, %bb.x ] ; 3 uses
  %i.bae = load i8, ptr %i.aqt, align 4           ; 2 uses
  %i.baf = zext i8 %i.bae to i64
  %i.bag = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.baf
  %i.bah = load ptr, ptr %i.bag, align 8
  %i.bai = load i32, ptr %.41079, align 4         ; 4 uses
  %i.baj = load i32, ptr %i.aqu, align 4
  %i.bak = and i32 %i.baj, %i.bai
  %i.bal = load i8, ptr %i.aqv, align 4
  %i.bam = zext i8 %i.bal to i32                  ; 2 uses
  %i.ban = lshr i32 %i.bak, %i.bam
  %i.bao = zext i32 %i.ban to i64
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bah, i64 %i.bao
  %i.baq = load i8, ptr %i.bap, align 1
  %i.bar = zext i8 %i.baq to i16
  %i.bas = load i8, ptr %i.aqw, align 1           ; 2 uses
  %i.bat = zext i8 %i.bas to i64
  %i.bau = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bat
  %i.bav = load ptr, ptr %i.bau, align 8
  %i.baw = load i32, ptr %i.aqx, align 4
  %i.bax = and i32 %i.baw, %i.bai
  %i.bay = load i8, ptr %i.aqy, align 1
  %i.baz = zext i8 %i.bay to i32                  ; 2 uses
  %i.bba = lshr i32 %i.bax, %i.baz
  %i.bbb = zext i32 %i.bba to i64
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bav, i64 %i.bbb
  %i.bbd = load i8, ptr %i.bbc, align 1
  %i.bbe = zext i8 %i.bbd to i16
  %i.bbf = load i8, ptr %i.aqz, align 2           ; 2 uses
  %i.bbg = zext i8 %i.bbf to i64
  %i.bbh = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bbg
  %i.bbi = load ptr, ptr %i.bbh, align 8
  %i.bbj = load i32, ptr %i.ara, align 4
  %i.bbk = and i32 %i.bbj, %i.bai
  %i.bbl = load i8, ptr %i.arb, align 2
  %i.bbm = zext i8 %i.bbl to i32                  ; 2 uses
  %i.bbn = lshr i32 %i.bbk, %i.bbm
  %i.bbo = zext i32 %i.bbn to i64
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbi, i64 %i.bbo
  %i.bbq = load i8, ptr %i.bbp, align 1
  %i.bbr = zext i8 %i.bbq to i16
  %i.bbs = load i8, ptr %i.arc, align 1           ; 2 uses
  %i.bbt = zext i8 %i.bbs to i64
  %i.bbu = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bbt
  %i.bbv = load ptr, ptr %i.bbu, align 8
  %i.bbw = load i32, ptr %i.ard, align 4
  %i.bbx = and i32 %i.bbw, %i.bai
  %i.bby = load i8, ptr %i.are, align 1
  %i.bbz = zext i8 %i.bby to i32                  ; 2 uses
  %i.bca = lshr i32 %i.bbx, %i.bbz
  %i.bcb = zext i32 %i.bca to i64
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bbv, i64 %i.bcb
  %i.bcd = load i8, ptr %i.bcc, align 1
  %i.bce = zext i8 %i.bcd to i32
  %.lhs.trunc1132 = mul nuw i16 %i.bar, %i.arf
  %i.bcf = udiv i16 %.lhs.trunc1132, 255
  %.zext1133 = zext nneg i16 %i.bcf to i32
  %.lhs.trunc1134 = mul nuw i16 %i.bbe, %i.arg
  %i.bcg = udiv i16 %.lhs.trunc1134, 255
  %.zext1135 = zext nneg i16 %i.bcg to i32
  %.lhs.trunc1136 = mul nuw i16 %i.bbr, %i.arh
  %i.bch = udiv i16 %.lhs.trunc1136, 255
  %.zext1137 = zext nneg i16 %i.bch to i32
  %i.bci = zext i8 %i.bae to i32
  %i.bcj = sub nsw i32 8, %i.bci
  %i.bck = lshr i32 %.zext1133, %i.bcj
  %i.bcl = shl i32 %i.bck, %i.bam
  %i.bcm = zext i8 %i.bas to i32
  %i.bcn = sub nsw i32 8, %i.bcm
  %i.bco = lshr i32 %.zext1135, %i.bcn
  %i.bcp = shl i32 %i.bco, %i.baz
  %i.bcq = or i32 %i.bcp, %i.bcl
  %i.bcr = zext i8 %i.bbf to i32
  %i.bcs = sub nsw i32 8, %i.bcr
  %i.bct = lshr i32 %.zext1137, %i.bcs
  %i.bcu = shl i32 %i.bct, %i.bbm
  %i.bcv = or i32 %i.bcq, %i.bcu
  %i.bcw = zext i8 %i.bbs to i32
  %i.bcx = sub nsw i32 8, %i.bcw
  %i.bcy = lshr i32 %i.bce, %i.bcx
  %i.bcz = shl i32 %i.bcy, %i.bbz
  %i.bda = or i32 %i.bcv, %i.bcz
  store i32 %i.bda, ptr %.41079, align 4
  %i.bdb = getelementptr inbounds nuw i8, ptr %.41079, i64 4 ; 2 uses
  %i.bdc = add nsw i32 %.31083, -1
  %i.bdd = icmp sgt i32 %.31083, 1
  br i1 %i.bdd, label %bb.y, label %bb.ac, !llvm.loop !82

bb.ac:                                            ; preds = %bb.ab
  %i.bde = getelementptr inbounds [4 x i8], ptr %i.bdb, i64 %i.ari
  %.not1111 = icmp eq i32 %i.arj, 0
  br i1 %.not1111, label %.loopexit, label %bb.x, !llvm.loop !83

bb.ad:                                            ; preds = %.split
  %i.bdf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bdg = load i32, ptr %i.bdf, align 4          ; 2 uses
  %.not1172 = icmp eq i32 %i.bdg, 0
  br i1 %.not1172, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %i.bdh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bdi = load ptr, ptr %i.bdh, align 8
  %i.bdj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bdk = load i32, ptr %i.bdj, align 4
  %i.bdl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bdm = load i32, ptr %i.bdl, align 8
  %i.bdn = sdiv i32 %i.bdm, 4                     ; 2 uses
  %i.bdo = mul nsw i32 %i.bdk, %i.bdn
  %i.bdp = sext i32 %i.bdo to i64
  %i.bdq = getelementptr inbounds [4 x i8], ptr %i.bdi, i64 %i.bdp
  %i.bdr = load i32, ptr %1, align 4
  %i.bds = sext i32 %i.bdr to i64
  %i.bdt = getelementptr inbounds [4 x i8], ptr %i.bdq, i64 %i.bds
  %i.bdu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bdv = load i32, ptr %i.bdu, align 4          ; 3 uses
  %i.bdw = sub nsw i32 %i.bdn, %i.bdv
  %i.bdx = add nsw i32 %i.bdv, 3
  %i.bdy = sdiv i32 %i.bdx, 4                     ; 4 uses
  %i.bdz = and i32 %i.bdv, 3
  %i.bea = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %i.b, i64 27 ; 4 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %i.b, i64 31 ; 4 uses
  %i.bem = zext i8 %3 to i32                      ; 4 uses
  %i.ben = zext i8 %4 to i32                      ; 4 uses
  %i.beo = zext i8 %5 to i32                      ; 4 uses
  %i.bep = sext i32 %i.bdw to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %bb.aj
  %.in = phi i32 [ %i.bdg, %.lr.ph ], [ %i.beq, %bb.aj ]
  %.010851173 = phi ptr [ %i.bdt, %.lr.ph ], [ %i.bsh, %bb.aj ] ; 4 uses
  %i.beq = add nsw i32 %.in, -1                   ; 2 uses
  switch i32 %i.bdz, label %.unreachabledefault1228 [
    i32 0, label %bb.af
    i32 3, label %bb.ag
    i32 2, label %bb.ah
    i32 1, label %bb.ai
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ai
  %.01090 = phi i32 [ %i.bdy, %bb.ae ], [ %i.bsf, %bb.ai ]
  %.11086 = phi ptr [ %.010851173, %bb.ae ], [ %i.bse, %bb.ai ] ; 3 uses
  %i.ber = load i8, ptr %i.bea, align 4           ; 2 uses
  %i.bes = zext i8 %i.ber to i64
  %i.bet = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bes
  %i.beu = load ptr, ptr %i.bet, align 8
  %i.bev = load i32, ptr %.11086, align 4         ; 4 uses
  %i.bew = load i32, ptr %i.beb, align 4
  %i.bex = and i32 %i.bew, %i.bev
  %i.bey = load i8, ptr %i.bec, align 4
  %i.bez = zext i8 %i.bey to i32                  ; 2 uses
  %i.bfa = lshr i32 %i.bex, %i.bez
  %i.bfb = zext i32 %i.bfa to i64
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.beu, i64 %i.bfb
  %i.bfd = load i8, ptr %i.bfc, align 1
  %i.bfe = zext i8 %i.bfd to i32                  ; 2 uses
  %i.bff = load i8, ptr %i.bed, align 1           ; 2 uses
  %i.bfg = zext i8 %i.bff to i64
  %i.bfh = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bfg
  %i.bfi = load ptr, ptr %i.bfh, align 8
  %i.bfj = load i32, ptr %i.bee, align 4
  %i.bfk = and i32 %i.bfj, %i.bev
  %i.bfl = load i8, ptr %i.bef, align 1
  %i.bfm = zext i8 %i.bfl to i32                  ; 2 uses
  %i.bfn = lshr i32 %i.bfk, %i.bfm
  %i.bfo = zext i32 %i.bfn to i64
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfi, i64 %i.bfo
  %i.bfq = load i8, ptr %i.bfp, align 1
  %i.bfr = zext i8 %i.bfq to i32                  ; 2 uses
  %i.bfs = load i8, ptr %i.beg, align 2           ; 2 uses
  %i.bft = zext i8 %i.bfs to i64
  %i.bfu = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bft
  %i.bfv = load ptr, ptr %i.bfu, align 8
  %i.bfw = load i32, ptr %i.beh, align 4
  %i.bfx = and i32 %i.bfw, %i.bev
  %i.bfy = load i8, ptr %i.bei, align 2
  %i.bfz = zext i8 %i.bfy to i32                  ; 2 uses
  %i.bga = lshr i32 %i.bfx, %i.bfz
  %i.bgb = zext i32 %i.bga to i64
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfv, i64 %i.bgb
  %i.bgd = load i8, ptr %i.bgc, align 1
  %i.bge = zext i8 %i.bgd to i32                  ; 2 uses
  %i.bgf = load i8, ptr %i.bej, align 1           ; 2 uses
  %i.bgg = zext i8 %i.bgf to i64
  %i.bgh = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bgg
  %i.bgi = load ptr, ptr %i.bgh, align 8
  %i.bgj = load i32, ptr %i.bek, align 4
  %i.bgk = and i32 %i.bgj, %i.bev
  %i.bgl = load i8, ptr %i.bel, align 1
  %i.bgm = zext i8 %i.bgl to i32                  ; 2 uses
  %i.bgn = lshr i32 %i.bgk, %i.bgm
  %i.bgo = zext i32 %i.bgn to i64
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgi, i64 %i.bgo
  %i.bgq = load i8, ptr %i.bgp, align 1
  %i.bgr = zext i8 %i.bgq to i32
  %i.bgs = mul nuw nsw i32 %i.bfe, %i.bem
  %.lhs.trunc1138 = trunc nuw i32 %i.bgs to i16
  %i.bgt = udiv i16 %.lhs.trunc1138, 255
  %.zext1139 = zext nneg i16 %i.bgt to i32
  %i.bgu = mul nuw nsw i32 %i.d, %i.bfe
  %i.bgv = udiv i32 %i.bgu, 255
  %i.bgw = add nuw nsw i32 %i.bgv, %.zext1139
  %spec.store.select35 = tail call i32 @llvm.umin.i32(i32 %i.bgw, i32 255)
  %i.bgx = mul nuw nsw i32 %i.bfr, %i.ben
  %.lhs.trunc1140 = trunc nuw i32 %i.bgx to i16
  %i.bgy = udiv i16 %.lhs.trunc1140, 255
  %.zext1141 = zext nneg i16 %i.bgy to i32
  %i.bgz = mul nuw nsw i32 %i.d, %i.bfr
  %i.bha = udiv i32 %i.bgz, 255
  %i.bhb = add nuw nsw i32 %i.bha, %.zext1141
  %spec.store.select19 = tail call i32 @llvm.umin.i32(i32 %i.bhb, i32 255)
  %i.bhc = mul nuw nsw i32 %i.bge, %i.beo
  %.lhs.trunc1142 = trunc nuw i32 %i.bhc to i16
  %i.bhd = udiv i16 %.lhs.trunc1142, 255
  %.zext1143 = zext nneg i16 %i.bhd to i32
  %i.bhe = mul nuw nsw i32 %i.d, %i.bge
  %i.bhf = udiv i32 %i.bhe, 255
  %i.bhg = add nuw nsw i32 %i.bhf, %.zext1143
  %spec.store.select44 = tail call i32 @llvm.umin.i32(i32 %i.bhg, i32 255)
  %i.bhh = zext i8 %i.ber to i32
  %i.bhi = sub nsw i32 8, %i.bhh
  %i.bhj = lshr i32 %spec.store.select35, %i.bhi
  %i.bhk = shl i32 %i.bhj, %i.bez
  %i.bhl = zext i8 %i.bff to i32
  %i.bhm = sub nsw i32 8, %i.bhl
  %i.bhn = lshr i32 %spec.store.select19, %i.bhm
  %i.bho = shl i32 %i.bhn, %i.bfm
  %i.bhp = or i32 %i.bho, %i.bhk
  %i.bhq = zext i8 %i.bfs to i32
  %i.bhr = sub nsw i32 8, %i.bhq
  %i.bhs = lshr i32 %spec.store.select44, %i.bhr
  %i.bht = shl i32 %i.bhs, %i.bfz
  %i.bhu = zext i8 %i.bgf to i32
  %i.bhv = sub nsw i32 8, %i.bhu
  %i.bhw = lshr i32 %i.bgr, %i.bhv
  %i.bhx = shl i32 %i.bhw, %i.bgm
  %i.bhy = or i32 %i.bhp, %i.bhx
  %i.bhz = or i32 %i.bhy, %i.bht
  store i32 %i.bhz, ptr %.11086, align 4
  %i.bia = getelementptr inbounds nuw i8, ptr %.11086, i64 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.11091 = phi i32 [ %.01090, %bb.af ], [ %i.bdy, %bb.ae ]
  %.21087 = phi ptr [ %i.bia, %bb.af ], [ %.010851173, %bb.ae ] ; 3 uses
  %i.bib = load i8, ptr %i.bea, align 4           ; 2 uses
  %i.bic = zext i8 %i.bib to i64
  %i.bid = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bic
  %i.bie = load ptr, ptr %i.bid, align 8
  %i.bif = load i32, ptr %.21087, align 4         ; 4 uses
  %i.big = load i32, ptr %i.beb, align 4
  %i.bih = and i32 %i.big, %i.bif
  %i.bii = load i8, ptr %i.bec, align 4
  %i.bij = zext i8 %i.bii to i32                  ; 2 uses
  %i.bik = lshr i32 %i.bih, %i.bij
  %i.bil = zext i32 %i.bik to i64
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bie, i64 %i.bil
  %i.bin = load i8, ptr %i.bim, align 1
  %i.bio = zext i8 %i.bin to i32                  ; 2 uses
  %i.bip = load i8, ptr %i.bed, align 1           ; 2 uses
  %i.biq = zext i8 %i.bip to i64
  %i.bir = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.biq
  %i.bis = load ptr, ptr %i.bir, align 8
  %i.bit = load i32, ptr %i.bee, align 4
  %i.biu = and i32 %i.bit, %i.bif
  %i.biv = load i8, ptr %i.bef, align 1
  %i.biw = zext i8 %i.biv to i32                  ; 2 uses
  %i.bix = lshr i32 %i.biu, %i.biw
  %i.biy = zext i32 %i.bix to i64
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bis, i64 %i.biy
  %i.bja = load i8, ptr %i.biz, align 1
  %i.bjb = zext i8 %i.bja to i32                  ; 2 uses
  %i.bjc = load i8, ptr %i.beg, align 2           ; 2 uses
  %i.bjd = zext i8 %i.bjc to i64
  %i.bje = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bjd
  %i.bjf = load ptr, ptr %i.bje, align 8
  %i.bjg = load i32, ptr %i.beh, align 4
  %i.bjh = and i32 %i.bjg, %i.bif
  %i.bji = load i8, ptr %i.bei, align 2
  %i.bjj = zext i8 %i.bji to i32                  ; 2 uses
  %i.bjk = lshr i32 %i.bjh, %i.bjj
  %i.bjl = zext i32 %i.bjk to i64
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjf, i64 %i.bjl
  %i.bjn = load i8, ptr %i.bjm, align 1
  %i.bjo = zext i8 %i.bjn to i32                  ; 2 uses
  %i.bjp = load i8, ptr %i.bej, align 1           ; 2 uses
  %i.bjq = zext i8 %i.bjp to i64
  %i.bjr = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bjq
  %i.bjs = load ptr, ptr %i.bjr, align 8
  %i.bjt = load i32, ptr %i.bek, align 4
  %i.bju = and i32 %i.bjt, %i.bif
  %i.bjv = load i8, ptr %i.bel, align 1
  %i.bjw = zext i8 %i.bjv to i32                  ; 2 uses
  %i.bjx = lshr i32 %i.bju, %i.bjw
  %i.bjy = zext i32 %i.bjx to i64
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjs, i64 %i.bjy
  %i.bka = load i8, ptr %i.bjz, align 1
  %i.bkb = zext i8 %i.bka to i32
  %i.bkc = mul nuw nsw i32 %i.bio, %i.bem
  %.lhs.trunc1144 = trunc nuw i32 %i.bkc to i16
  %i.bkd = udiv i16 %.lhs.trunc1144, 255
  %.zext1145 = zext nneg i16 %i.bkd to i32
  %i.bke = mul nuw nsw i32 %i.d, %i.bio
  %i.bkf = udiv i32 %i.bke, 255
  %i.bkg = add nuw nsw i32 %i.bkf, %.zext1145
  %spec.store.select20 = tail call i32 @llvm.umin.i32(i32 %i.bkg, i32 255)
  %i.bkh = mul nuw nsw i32 %i.bjb, %i.ben
  %.lhs.trunc1146 = trunc nuw i32 %i.bkh to i16
  %i.bki = udiv i16 %.lhs.trunc1146, 255
  %.zext1147 = zext nneg i16 %i.bki to i32
  %i.bkj = mul nuw nsw i32 %i.d, %i.bjb
  %i.bkk = udiv i32 %i.bkj, 255
  %i.bkl = add nuw nsw i32 %i.bkk, %.zext1147
  %spec.store.select36 = tail call i32 @llvm.umin.i32(i32 %i.bkl, i32 255)
  %i.bkm = mul nuw nsw i32 %i.bjo, %i.beo
  %.lhs.trunc1148 = trunc nuw i32 %i.bkm to i16
  %i.bkn = udiv i16 %.lhs.trunc1148, 255
  %.zext1149 = zext nneg i16 %i.bkn to i32
  %i.bko = mul nuw nsw i32 %i.d, %i.bjo
  %i.bkp = udiv i32 %i.bko, 255
  %i.bkq = add nuw nsw i32 %i.bkp, %.zext1149
  %spec.store.select21 = tail call i32 @llvm.umin.i32(i32 %i.bkq, i32 255)
  %i.bkr = zext i8 %i.bib to i32
  %i.bks = sub nsw i32 8, %i.bkr
  %i.bkt = lshr i32 %spec.store.select20, %i.bks
  %i.bku = shl i32 %i.bkt, %i.bij
  %i.bkv = zext i8 %i.bip to i32
  %i.bkw = sub nsw i32 8, %i.bkv
  %i.bkx = lshr i32 %spec.store.select36, %i.bkw
  %i.bky = shl i32 %i.bkx, %i.biw
  %i.bkz = or i32 %i.bky, %i.bku
  %i.bla = zext i8 %i.bjc to i32
  %i.blb = sub nsw i32 8, %i.bla
  %i.blc = lshr i32 %spec.store.select21, %i.blb
  %i.bld = shl i32 %i.blc, %i.bjj
  %i.ble = zext i8 %i.bjp to i32
  %i.blf = sub nsw i32 8, %i.ble
  %i.blg = lshr i32 %i.bkb, %i.blf
  %i.blh = shl i32 %i.blg, %i.bjw
  %i.bli = or i32 %i.bkz, %i.blh
  %i.blj = or i32 %i.bli, %i.bld
  store i32 %i.blj, ptr %.21087, align 4
  %i.blk = getelementptr inbounds nuw i8, ptr %.21087, i64 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.ag
  %.21092 = phi i32 [ %.11091, %bb.ag ], [ %i.bdy, %bb.ae ]
  %.31088 = phi ptr [ %i.blk, %bb.ag ], [ %.010851173, %bb.ae ] ; 3 uses
  %i.bll = load i8, ptr %i.bea, align 4           ; 2 uses
  %i.blm = zext i8 %i.bll to i64
  %i.bln = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.blm
  %i.blo = load ptr, ptr %i.bln, align 8
  %i.blp = load i32, ptr %.31088, align 4         ; 4 uses
  %i.blq = load i32, ptr %i.beb, align 4
  %i.blr = and i32 %i.blq, %i.blp
  %i.bls = load i8, ptr %i.bec, align 4
  %i.blt = zext i8 %i.bls to i32                  ; 2 uses
  %i.blu = lshr i32 %i.blr, %i.blt
  %i.blv = zext i32 %i.blu to i64
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blo, i64 %i.blv
  %i.blx = load i8, ptr %i.blw, align 1
  %i.bly = zext i8 %i.blx to i32                  ; 2 uses
  %i.blz = load i8, ptr %i.bed, align 1           ; 2 uses
  %i.bma = zext i8 %i.blz to i64
  %i.bmb = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bma
  %i.bmc = load ptr, ptr %i.bmb, align 8
  %i.bmd = load i32, ptr %i.bee, align 4
  %i.bme = and i32 %i.bmd, %i.blp
  %i.bmf = load i8, ptr %i.bef, align 1
  %i.bmg = zext i8 %i.bmf to i32                  ; 2 uses
  %i.bmh = lshr i32 %i.bme, %i.bmg
  %i.bmi = zext i32 %i.bmh to i64
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmc, i64 %i.bmi
  %i.bmk = load i8, ptr %i.bmj, align 1
  %i.bml = zext i8 %i.bmk to i32                  ; 2 uses
  %i.bmm = load i8, ptr %i.beg, align 2           ; 2 uses
  %i.bmn = zext i8 %i.bmm to i64
  %i.bmo = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bmn
  %i.bmp = load ptr, ptr %i.bmo, align 8
  %i.bmq = load i32, ptr %i.beh, align 4
  %i.bmr = and i32 %i.bmq, %i.blp
  %i.bms = load i8, ptr %i.bei, align 2
  %i.bmt = zext i8 %i.bms to i32                  ; 2 uses
  %i.bmu = lshr i32 %i.bmr, %i.bmt
  %i.bmv = zext i32 %i.bmu to i64
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmp, i64 %i.bmv
  %i.bmx = load i8, ptr %i.bmw, align 1
  %i.bmy = zext i8 %i.bmx to i32                  ; 2 uses
  %i.bmz = load i8, ptr %i.bej, align 1           ; 2 uses
  %i.bna = zext i8 %i.bmz to i64
  %i.bnb = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bna
  %i.bnc = load ptr, ptr %i.bnb, align 8
  %i.bnd = load i32, ptr %i.bek, align 4
  %i.bne = and i32 %i.bnd, %i.blp
  %i.bnf = load i8, ptr %i.bel, align 1
  %i.bng = zext i8 %i.bnf to i32                  ; 2 uses
  %i.bnh = lshr i32 %i.bne, %i.bng
  %i.bni = zext i32 %i.bnh to i64
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bnc, i64 %i.bni
  %i.bnk = load i8, ptr %i.bnj, align 1
  %i.bnl = zext i8 %i.bnk to i32
  %i.bnm = mul nuw nsw i32 %i.bly, %i.bem
  %.lhs.trunc1150 = trunc nuw i32 %i.bnm to i16
  %i.bnn = udiv i16 %.lhs.trunc1150, 255
  %.zext1151 = zext nneg i16 %i.bnn to i32
  %i.bno = mul nuw nsw i32 %i.d, %i.bly
  %i.bnp = udiv i32 %i.bno, 255
  %i.bnq = add nuw nsw i32 %i.bnp, %.zext1151
  %spec.store.select22 = tail call i32 @llvm.umin.i32(i32 %i.bnq, i32 255)
  %i.bnr = mul nuw nsw i32 %i.bml, %i.ben
  %.lhs.trunc1152 = trunc nuw i32 %i.bnr to i16
  %i.bns = udiv i16 %.lhs.trunc1152, 255
  %.zext1153 = zext nneg i16 %i.bns to i32
  %i.bnt = mul nuw nsw i32 %i.d, %i.bml
  %i.bnu = udiv i32 %i.bnt, 255
  %i.bnv = add nuw nsw i32 %i.bnu, %.zext1153
  %spec.store.select37 = tail call i32 @llvm.umin.i32(i32 %i.bnv, i32 255)
  %i.bnw = mul nuw nsw i32 %i.bmy, %i.beo
  %.lhs.trunc1154 = trunc nuw i32 %i.bnw to i16
  %i.bnx = udiv i16 %.lhs.trunc1154, 255
  %.zext1155 = zext nneg i16 %i.bnx to i32
  %i.bny = mul nuw nsw i32 %i.d, %i.bmy
  %i.bnz = udiv i32 %i.bny, 255
  %i.boa = add nuw nsw i32 %i.bnz, %.zext1155
  %spec.store.select23 = tail call i32 @llvm.umin.i32(i32 %i.boa, i32 255)
  %i.bob = zext i8 %i.bll to i32
  %i.boc = sub nsw i32 8, %i.bob
  %i.bod = lshr i32 %spec.store.select22, %i.boc
  %i.boe = shl i32 %i.bod, %i.blt
  %i.bof = zext i8 %i.blz to i32
  %i.bog = sub nsw i32 8, %i.bof
  %i.boh = lshr i32 %spec.store.select37, %i.bog
  %i.boi = shl i32 %i.boh, %i.bmg
  %i.boj = or i32 %i.boi, %i.boe
  %i.bok = zext i8 %i.bmm to i32
  %i.bol = sub nsw i32 8, %i.bok
  %i.bom = lshr i32 %spec.store.select23, %i.bol
  %i.bon = shl i32 %i.bom, %i.bmt
  %i.boo = zext i8 %i.bmz to i32
  %i.bop = sub nsw i32 8, %i.boo
  %i.boq = lshr i32 %i.bnl, %i.bop
  %i.bor = shl i32 %i.boq, %i.bng
  %i.bos = or i32 %i.boj, %i.bor
  %i.bot = or i32 %i.bos, %i.bon
  store i32 %i.bot, ptr %.31088, align 4
  %i.bou = getelementptr inbounds nuw i8, ptr %.31088, i64 4
  br label %bb.ai

.unreachabledefault1228:                          ; preds = %bb.ae
  unreachable

bb.ai:                                            ; preds = %bb.ae, %bb.ah
  %.31093 = phi i32 [ %.21092, %bb.ah ], [ %i.bdy, %bb.ae ] ; 2 uses
  %.41089 = phi ptr [ %i.bou, %bb.ah ], [ %.010851173, %bb.ae ] ; 3 uses
  %i.bov = load i8, ptr %i.bea, align 4           ; 2 uses
  %i.bow = zext i8 %i.bov to i64
  %i.box = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bow
  %i.boy = load ptr, ptr %i.box, align 8
  %i.boz = load i32, ptr %.41089, align 4         ; 4 uses
  %i.bpa = load i32, ptr %i.beb, align 4
  %i.bpb = and i32 %i.bpa, %i.boz
  %i.bpc = load i8, ptr %i.bec, align 4
  %i.bpd = zext i8 %i.bpc to i32                  ; 2 uses
  %i.bpe = lshr i32 %i.bpb, %i.bpd
  %i.bpf = zext i32 %i.bpe to i64
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.boy, i64 %i.bpf
  %i.bph = load i8, ptr %i.bpg, align 1
  %i.bpi = zext i8 %i.bph to i32                  ; 2 uses
  %i.bpj = load i8, ptr %i.bed, align 1           ; 2 uses
  %i.bpk = zext i8 %i.bpj to i64
  %i.bpl = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bpk
  %i.bpm = load ptr, ptr %i.bpl, align 8
  %i.bpn = load i32, ptr %i.bee, align 4
  %i.bpo = and i32 %i.bpn, %i.boz
  %i.bpp = load i8, ptr %i.bef, align 1
  %i.bpq = zext i8 %i.bpp to i32                  ; 2 uses
  %i.bpr = lshr i32 %i.bpo, %i.bpq
  %i.bps = zext i32 %i.bpr to i64
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bpm, i64 %i.bps
  %i.bpu = load i8, ptr %i.bpt, align 1
  %i.bpv = zext i8 %i.bpu to i32                  ; 2 uses
  %i.bpw = load i8, ptr %i.beg, align 2           ; 2 uses
  %i.bpx = zext i8 %i.bpw to i64
  %i.bpy = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bpx
  %i.bpz = load ptr, ptr %i.bpy, align 8
  %i.bqa = load i32, ptr %i.beh, align 4
  %i.bqb = and i32 %i.bqa, %i.boz
  %i.bqc = load i8, ptr %i.bei, align 2
  %i.bqd = zext i8 %i.bqc to i32                  ; 2 uses
  %i.bqe = lshr i32 %i.bqb, %i.bqd
  %i.bqf = zext i32 %i.bqe to i64
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bpz, i64 %i.bqf
  %i.bqh = load i8, ptr %i.bqg, align 1
  %i.bqi = zext i8 %i.bqh to i32                  ; 2 uses
  %i.bqj = load i8, ptr %i.bej, align 1           ; 2 uses
  %i.bqk = zext i8 %i.bqj to i64
  %i.bql = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bqk
  %i.bqm = load ptr, ptr %i.bql, align 8
  %i.bqn = load i32, ptr %i.bek, align 4
  %i.bqo = and i32 %i.bqn, %i.boz
  %i.bqp = load i8, ptr %i.bel, align 1
  %i.bqq = zext i8 %i.bqp to i32                  ; 2 uses
  %i.bqr = lshr i32 %i.bqo, %i.bqq
  %i.bqs = zext i32 %i.bqr to i64
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqm, i64 %i.bqs
  %i.bqu = load i8, ptr %i.bqt, align 1
  %i.bqv = zext i8 %i.bqu to i32
  %i.bqw = mul nuw nsw i32 %i.bpi, %i.bem
  %.lhs.trunc1156 = trunc nuw i32 %i.bqw to i16
  %i.bqx = udiv i16 %.lhs.trunc1156, 255
  %.zext1157 = zext nneg i16 %i.bqx to i32
  %i.bqy = mul nuw nsw i32 %i.d, %i.bpi
  %i.bqz = udiv i32 %i.bqy, 255
  %i.bra = add nuw nsw i32 %i.bqz, %.zext1157
  %spec.store.select24 = tail call i32 @llvm.umin.i32(i32 %i.bra, i32 255)
  %i.brb = mul nuw nsw i32 %i.bpv, %i.ben
  %.lhs.trunc1158 = trunc nuw i32 %i.brb to i16
  %i.brc = udiv i16 %.lhs.trunc1158, 255
  %.zext1159 = zext nneg i16 %i.brc to i32
  %i.brd = mul nuw nsw i32 %i.d, %i.bpv
  %i.bre = udiv i32 %i.brd, 255
  %i.brf = add nuw nsw i32 %i.bre, %.zext1159
  %spec.store.select38 = tail call i32 @llvm.umin.i32(i32 %i.brf, i32 255)
  %i.brg = mul nuw nsw i32 %i.bqi, %i.beo
  %.lhs.trunc1160 = trunc nuw i32 %i.brg to i16
  %i.brh = udiv i16 %.lhs.trunc1160, 255
  %.zext1161 = zext nneg i16 %i.brh to i32
  %i.bri = mul nuw nsw i32 %i.d, %i.bqi
  %i.brj = udiv i32 %i.bri, 255
  %i.brk = add nuw nsw i32 %i.brj, %.zext1161
  %spec.store.select25 = tail call i32 @llvm.umin.i32(i32 %i.brk, i32 255)
  %i.brl = zext i8 %i.bov to i32
  %i.brm = sub nsw i32 8, %i.brl
  %i.brn = lshr i32 %spec.store.select24, %i.brm
  %i.bro = shl i32 %i.brn, %i.bpd
  %i.brp = zext i8 %i.bpj to i32
  %i.brq = sub nsw i32 8, %i.brp
  %i.brr = lshr i32 %spec.store.select38, %i.brq
  %i.brs = shl i32 %i.brr, %i.bpq
  %i.brt = or i32 %i.brs, %i.bro
  %i.bru = zext i8 %i.bpw to i32
  %i.brv = sub nsw i32 8, %i.bru
  %i.brw = lshr i32 %spec.store.select25, %i.brv
  %i.brx = shl i32 %i.brw, %i.bqd
  %i.bry = zext i8 %i.bqj to i32
  %i.brz = sub nsw i32 8, %i.bry
  %i.bsa = lshr i32 %i.bqv, %i.brz
  %i.bsb = shl i32 %i.bsa, %i.bqq
  %i.bsc = or i32 %i.brt, %i.bsb
  %i.bsd = or i32 %i.bsc, %i.brx
  store i32 %i.bsd, ptr %.41089, align 4
  %i.bse = getelementptr inbounds nuw i8, ptr %.41089, i64 4 ; 2 uses
  %i.bsf = add nsw i32 %.31093, -1
  %i.bsg = icmp sgt i32 %.31093, 1
  br i1 %i.bsg, label %bb.af, label %bb.aj, !llvm.loop !84

bb.aj:                                            ; preds = %bb.ai
  %i.bsh = getelementptr inbounds [4 x i8], ptr %i.bse, i64 %i.bep
  %.not = icmp eq i32 %i.beq, 0
  br i1 %.not, label %.loopexit, label %bb.ae, !llvm.loop !85

bb.ak:                                            ; preds = %.split, %bb.b
  %i.bsi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bsj = load i32, ptr %i.bsi, align 4          ; 2 uses
  %.not11151186 = icmp eq i32 %i.bsj, 0
  br i1 %.not11151186, label %.loopexit, label %.lr.ph1188

.lr.ph1188:                                       ; preds = %bb.ak
  %i.bsk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bsl = load ptr, ptr %i.bsk, align 8
  %i.bsm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bsn = load i32, ptr %i.bsm, align 4
  %i.bso = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bsp = load i32, ptr %i.bso, align 8
  %i.bsq = sdiv i32 %i.bsp, 4                     ; 2 uses
  %i.bsr = mul nsw i32 %i.bsn, %i.bsq
  %i.bss = sext i32 %i.bsr to i64
  %i.bst = getelementptr inbounds [4 x i8], ptr %i.bsl, i64 %i.bss
  %i.bsu = load i32, ptr %1, align 4
  %i.bsv = sext i32 %i.bsu to i64
  %i.bsw = getelementptr inbounds [4 x i8], ptr %i.bst, i64 %i.bsv
  %i.bsx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bsy = load i32, ptr %i.bsx, align 4          ; 3 uses
  %i.bsz = sub nsw i32 %i.bsq, %i.bsy
  %i.bta = add nsw i32 %i.bsy, 3
  %i.btb = sdiv i32 %i.bta, 4                     ; 4 uses
  %i.btc = and i32 %i.bsy, 3
  %i.btd = zext i8 %3 to i32                      ; 4 uses
  %i.bte = zext i8 %4 to i32                      ; 4 uses
  %i.btf = zext i8 %5 to i32                      ; 4 uses
  %i.btg = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.bth = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.bti = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.btj = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.btk = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.btl = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.btm = getelementptr inbounds nuw i8, ptr %i.b, i64 27 ; 4 uses
  %i.btn = getelementptr inbounds nuw i8, ptr %i.b, i64 31 ; 4 uses
  %i.bto = sext i32 %i.bsz to i64
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph1188, %bb.aq
  %.in1197 = phi i32 [ %i.bsj, %.lr.ph1188 ], [ %i.btp, %bb.aq ]
  %.010981187 = phi ptr [ %i.bsw, %.lr.ph1188 ], [ %i.byq, %bb.aq ] ; 4 uses
  %i.btp = add nsw i32 %.in1197, -1               ; 2 uses
  switch i32 %i.btc, label %.unreachabledefault1229 [
    i32 0, label %bb.am
    i32 3, label %bb.an
    i32 2, label %bb.ao
    i32 1, label %bb.ap
  ]

bb.am:                                            ; preds = %bb.al, %bb.ap
  %.11099 = phi ptr [ %.010981187, %bb.al ], [ %i.byn, %bb.ap ] ; 2 uses
  %.01094 = phi i32 [ %i.btb, %bb.al ], [ %i.byo, %bb.ap ]
  %i.btq = load i8, ptr %i.btg, align 4
  %i.btr = zext i8 %i.btq to i32
  %i.bts = sub nsw i32 8, %i.btr
  %i.btt = lshr i32 %i.btd, %i.bts
  %i.btu = load i8, ptr %i.bth, align 4
  %i.btv = zext nneg i8 %i.btu to i32
  %i.btw = shl i32 %i.btt, %i.btv
  %i.btx = load i8, ptr %i.bti, align 1
  %i.bty = zext i8 %i.btx to i32
  %i.btz = sub nsw i32 8, %i.bty
  %i.bua = lshr i32 %i.bte, %i.btz
  %i.bub = load i8, ptr %i.btj, align 1
  %i.buc = zext nneg i8 %i.bub to i32
  %i.bud = shl i32 %i.bua, %i.buc
  %i.bue = or i32 %i.bud, %i.btw
  %i.buf = load i8, ptr %i.btk, align 2
  %i.bug = zext i8 %i.buf to i32
  %i.buh = sub nsw i32 8, %i.bug
  %i.bui = lshr i32 %i.btf, %i.buh
  %i.buj = load i8, ptr %i.btl, align 2
  %i.buk = zext nneg i8 %i.buj to i32
  %i.bul = shl i32 %i.bui, %i.buk
  %i.bum = or i32 %i.bue, %i.bul
  %i.bun = load i8, ptr %i.btm, align 1
  %i.buo = zext i8 %i.bun to i32
  %i.bup = sub nsw i32 8, %i.buo
  %i.buq = lshr i32 %i.c, %i.bup
  %i.bur = load i8, ptr %i.btn, align 1
  %i.bus = zext nneg i8 %i.bur to i32
  %i.but = shl i32 %i.buq, %i.bus
  %i.buu = or i32 %i.bum, %i.but
  store i32 %i.buu, ptr %.11099, align 4
  %i.buv = getelementptr inbounds nuw i8, ptr %.11099, i64 4
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %.21100 = phi ptr [ %i.buv, %bb.am ], [ %.010981187, %bb.al ] ; 2 uses
  %.11095 = phi i32 [ %.01094, %bb.am ], [ %i.btb, %bb.al ]
  %i.buw = load i8, ptr %i.btg, align 4
  %i.bux = zext i8 %i.buw to i32
  %i.buy = sub nsw i32 8, %i.bux
  %i.buz = lshr i32 %i.btd, %i.buy
  %i.bva = load i8, ptr %i.bth, align 4
  %i.bvb = zext nneg i8 %i.bva to i32
  %i.bvc = shl i32 %i.buz, %i.bvb
  %i.bvd = load i8, ptr %i.bti, align 1
  %i.bve = zext i8 %i.bvd to i32
  %i.bvf = sub nsw i32 8, %i.bve
  %i.bvg = lshr i32 %i.bte, %i.bvf
  %i.bvh = load i8, ptr %i.btj, align 1
  %i.bvi = zext nneg i8 %i.bvh to i32
  %i.bvj = shl i32 %i.bvg, %i.bvi
  %i.bvk = or i32 %i.bvj, %i.bvc
  %i.bvl = load i8, ptr %i.btk, align 2
  %i.bvm = zext i8 %i.bvl to i32
  %i.bvn = sub nsw i32 8, %i.bvm
  %i.bvo = lshr i32 %i.btf, %i.bvn
  %i.bvp = load i8, ptr %i.btl, align 2
  %i.bvq = zext nneg i8 %i.bvp to i32
  %i.bvr = shl i32 %i.bvo, %i.bvq
  %i.bvs = or i32 %i.bvk, %i.bvr
  %i.bvt = load i8, ptr %i.btm, align 1
  %i.bvu = zext i8 %i.bvt to i32
  %i.bvv = sub nsw i32 8, %i.bvu
  %i.bvw = lshr i32 %i.c, %i.bvv
  %i.bvx = load i8, ptr %i.btn, align 1
  %i.bvy = zext nneg i8 %i.bvx to i32
  %i.bvz = shl i32 %i.bvw, %i.bvy
  %i.bwa = or i32 %i.bvs, %i.bvz
  store i32 %i.bwa, ptr %.21100, align 4
  %i.bwb = getelementptr inbounds nuw i8, ptr %.21100, i64 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.an
  %.31101 = phi ptr [ %i.bwb, %bb.an ], [ %.010981187, %bb.al ] ; 2 uses
  %.21096 = phi i32 [ %.11095, %bb.an ], [ %i.btb, %bb.al ]
  %i.bwc = load i8, ptr %i.btg, align 4
  %i.bwd = zext i8 %i.bwc to i32
  %i.bwe = sub nsw i32 8, %i.bwd
  %i.bwf = lshr i32 %i.btd, %i.bwe
  %i.bwg = load i8, ptr %i.bth, align 4
  %i.bwh = zext nneg i8 %i.bwg to i32
  %i.bwi = shl i32 %i.bwf, %i.bwh
  %i.bwj = load i8, ptr %i.bti, align 1
  %i.bwk = zext i8 %i.bwj to i32
  %i.bwl = sub nsw i32 8, %i.bwk
  %i.bwm = lshr i32 %i.bte, %i.bwl
  %i.bwn = load i8, ptr %i.btj, align 1
  %i.bwo = zext nneg i8 %i.bwn to i32
  %i.bwp = shl i32 %i.bwm, %i.bwo
  %i.bwq = or i32 %i.bwp, %i.bwi
  %i.bwr = load i8, ptr %i.btk, align 2
  %i.bws = zext i8 %i.bwr to i32
  %i.bwt = sub nsw i32 8, %i.bws
  %i.bwu = lshr i32 %i.btf, %i.bwt
  %i.bwv = load i8, ptr %i.btl, align 2
  %i.bww = zext nneg i8 %i.bwv to i32
  %i.bwx = shl i32 %i.bwu, %i.bww
  %i.bwy = or i32 %i.bwq, %i.bwx
  %i.bwz = load i8, ptr %i.btm, align 1
  %i.bxa = zext i8 %i.bwz to i32
  %i.bxb = sub nsw i32 8, %i.bxa
  %i.bxc = lshr i32 %i.c, %i.bxb
  %i.bxd = load i8, ptr %i.btn, align 1
  %i.bxe = zext nneg i8 %i.bxd to i32
  %i.bxf = shl i32 %i.bxc, %i.bxe
  %i.bxg = or i32 %i.bwy, %i.bxf
  store i32 %i.bxg, ptr %.31101, align 4
  %i.bxh = getelementptr inbounds nuw i8, ptr %.31101, i64 4
  br label %bb.ap

.unreachabledefault1229:                          ; preds = %bb.al
  unreachable

bb.ap:                                            ; preds = %bb.al, %bb.ao
  %.41102 = phi ptr [ %i.bxh, %bb.ao ], [ %.010981187, %bb.al ] ; 2 uses
  %.31097 = phi i32 [ %.21096, %bb.ao ], [ %i.btb, %bb.al ] ; 2 uses
  %i.bxi = load i8, ptr %i.btg, align 4
  %i.bxj = zext i8 %i.bxi to i32
  %i.bxk = sub nsw i32 8, %i.bxj
  %i.bxl = lshr i32 %i.btd, %i.bxk
  %i.bxm = load i8, ptr %i.bth, align 4
  %i.bxn = zext nneg i8 %i.bxm to i32
  %i.bxo = shl i32 %i.bxl, %i.bxn
  %i.bxp = load i8, ptr %i.bti, align 1
  %i.bxq = zext i8 %i.bxp to i32
  %i.bxr = sub nsw i32 8, %i.bxq
  %i.bxs = lshr i32 %i.bte, %i.bxr
  %i.bxt = load i8, ptr %i.btj, align 1
  %i.bxu = zext nneg i8 %i.bxt to i32
  %i.bxv = shl i32 %i.bxs, %i.bxu
  %i.bxw = or i32 %i.bxv, %i.bxo
  %i.bxx = load i8, ptr %i.btk, align 2
  %i.bxy = zext i8 %i.bxx to i32
  %i.bxz = sub nsw i32 8, %i.bxy
  %i.bya = lshr i32 %i.btf, %i.bxz
  %i.byb = load i8, ptr %i.btl, align 2
  %i.byc = zext nneg i8 %i.byb to i32
  %i.byd = shl i32 %i.bya, %i.byc
  %i.bye = or i32 %i.bxw, %i.byd
  %i.byf = load i8, ptr %i.btm, align 1
  %i.byg = zext i8 %i.byf to i32
  %i.byh = sub nsw i32 8, %i.byg
  %i.byi = lshr i32 %i.c, %i.byh
  %i.byj = load i8, ptr %i.btn, align 1
  %i.byk = zext nneg i8 %i.byj to i32
  %i.byl = shl i32 %i.byi, %i.byk
  %i.bym = or i32 %i.bye, %i.byl
  store i32 %i.bym, ptr %.41102, align 4
  %i.byn = getelementptr inbounds nuw i8, ptr %.41102, i64 4 ; 2 uses
  %i.byo = add nsw i32 %.31097, -1
  %i.byp = icmp sgt i32 %.31097, 1
  br i1 %i.byp, label %bb.am, label %bb.aq, !llvm.loop !86

bb.aq:                                            ; preds = %bb.ap
  %i.byq = getelementptr inbounds [4 x i8], ptr %i.byn, i64 %i.bto
  %.not1115 = icmp eq i32 %i.btp, 0
  br i1 %.not1115, label %.loopexit, label %bb.al, !llvm.loop !87

bb.ar:                                            ; preds = %bb.a
  %i.byr = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.5) #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aj, %bb.ac, %bb.v, %bb.o, %bb.h, %bb.aq, %bb.ad, %bb.w, %bb.p, %bb.i, %bb.c, %bb.ak, %bb.ar
  %.0 = phi i1 [ %i.byr, %bb.ar ], [ true, %bb.w ], [ true, %bb.p ], [ true, %bb.i ], [ true, %bb.c ], [ true, %bb.ak ], [ true, %bb.ad ], [ true, %bb.v ], [ true, %bb.ac ], [ true, %bb.aq ], [ true, %bb.h ], [ true, %bb.o ], [ true, %bb.aj ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_BlendFillRects(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.SDL_Rect, align 4           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  %i.a = tail call zeroext i1 @SDL_SurfaceValid(ptr noundef %0) #6
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #6
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i8, ptr %i.e, align 4               ; 2 uses
  %i.g = icmp ult i8 %i.f, 8
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4) #6
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.i = add i32 %3, -1
  %or.cond = icmp ult i32 %i.i, 2
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = zext i8 %4 to i32
  %i.k = zext i8 %7 to i32                        ; 3 uses
  %i.l = mul nuw nsw i32 %i.k, %i.j
  %.lhs.trunc = trunc nuw i32 %i.l to i16
  %i.m = udiv i16 %.lhs.trunc, 255
  %i.n = trunc nuw i16 %i.m to i8
  %i.o = zext i8 %5 to i32
  %i.p = mul nuw nsw i32 %i.k, %i.o
  %.lhs.trunc51 = trunc nuw i32 %i.p to i16
  %i.q = udiv i16 %.lhs.trunc51, 255
  %i.r = trunc nuw i16 %i.q to i8
  %i.s = zext i8 %6 to i32
  %i.t = mul nuw nsw i32 %i.k, %i.s
  %.lhs.trunc53 = trunc nuw i32 %i.t to i16
  %i.u = udiv i16 %.lhs.trunc53, 255
  %i.v = trunc nuw i16 %i.u to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.040 = phi i8 [ %i.n, %bb.f ], [ %4, %bb.e ]
  %.039 = phi i8 [ %i.r, %bb.f ], [ %5, %bb.e ]
  %.038 = phi i8 [ %i.v, %bb.f ], [ %6, %bb.e ]
  switch i8 %i.f, label %.thread [
    i8 15, label %.split
    i8 16, label %bb.i
    i8 32, label %bb.h
  ]

.split:                                           ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = load i32, ptr %i.w, align 4
  %cond2.not = icmp eq i32 %i.x, 31744
  br i1 %cond2.not, label %bb.j, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load i32, ptr %i.y, align 4
  %cond = icmp eq i32 %i.z, 16711680
  br i1 %cond, label %.thread48, label %.thread

.thread48:                                        ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ab = load i32, ptr %i.aa, align 4
  %.not = icmp eq i32 %i.ab, 0
  %SDL_BlendFillRect_XRGB8888.SDL_BlendFillRect_ARGB8888 = select i1 %.not, ptr @SDL_BlendFillRect_XRGB8888, ptr @SDL_BlendFillRect_ARGB8888
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = load i32, ptr %i.ac, align 4
  %cond1.not = icmp eq i32 %i.ad, 63488
  br i1 %cond1.not, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.h, %bb.g, %.split, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.af = load i32, ptr %i.ae, align 4
  %.not42 = icmp eq i32 %i.af, 0
  %SDL_BlendFillRect_RGB.SDL_BlendFillRect_RGBA = select i1 %.not42, ptr @SDL_BlendFillRect_RGB, ptr @SDL_BlendFillRect_RGBA
  br label %bb.j

bb.j:                                             ; preds = %.split, %.thread48, %.thread, %bb.i
  %.135 = phi ptr [ @SDL_BlendFillRect_RGB565, %bb.i ], [ %SDL_BlendFillRect_RGB.SDL_BlendFillRect_RGBA, %.thread ], [ %SDL_BlendFillRect_XRGB8888.SDL_BlendFillRect_ARGB8888, %.thread48 ], [ @SDL_BlendFillRect_RGB555, %.split ]
  %i.ag = icmp sgt i32 %2, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 100
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.056 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.m ]
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.aj = call zeroext i1 @SDL_GetRectIntersection_REAL(ptr noundef %i.ai, ptr noundef nonnull %i.ah, ptr noundef nonnull %8) #6
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = call zeroext i1 %.135(ptr noundef nonnull %0, ptr noundef nonnull %8, i32 noundef %3, i8 noundef zeroext %.040, i8 noundef zeroext %.039, i8 noundef zeroext %.038, i8 noundef zeroext %7) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.1 = phi i1 [ %i.ak, %bb.l ], [ %.056, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !88

.loopexit:                                        ; preds = %bb.m, %bb.j, %bb.d, %bb.b
  %.037 = phi i1 [ %i.h, %bb.d ], [ %i.b, %bb.b ], [ true, %bb.j ], [ %.1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  ret i1 %.037
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.umin.v2i16(<2 x i16>, <2 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #4
end_hunk_0
