inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@Blit555to555SurfaceAlpha:bb.a
  tail call fastcc void @Blit16to16SurfaceAlpha128(ptr noundef nonnull %0, i16 noundef zeroext -1058)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = lshr i8 %i.b, 3
  %i.g = zext nneg i8 %i.f to i32                 ; 4 uses
  %.not85 = icmp eq i32 %i.e, 0
  br i1 %.not85, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.i = load i32, ptr %i.h, align 4
  %i.j = ashr i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4
  %i.o = ashr i32 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = add nsw i32 %i.s, 3
  %i.u = sdiv i32 %i.t, 4                         ; 4 uses
  %i.v = and i32 %i.s, 3
  %i.w = sext i32 %i.o to i64
  %i.x = sext i32 %i.j to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %.in = phi i32 [ %i.e, %.lr.ph ], [ %i.y, %bb.i ]
  %.07387 = phi ptr [ %i.q, %.lr.ph ], [ %i.dd, %bb.i ] ; 4 uses
  %.07486 = phi ptr [ %i.l, %.lr.ph ], [ %i.de, %bb.i ] ; 4 uses
  %i.y = add nsw i32 %.in, -1                     ; 2 uses
  switch i32 %i.v, label %default.unreachable90 [
    i32 0, label %bb.e
    i32 3, label %bb.f
    i32 2, label %bb.g
    i32 1, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d, %bb.h
  %.079 = phi i32 [ %i.u, %bb.d ], [ %i.db, %bb.h ]
  %.175 = phi ptr [ %.07486, %bb.d ], [ %i.da, %bb.h ] ; 3 uses
  %.1 = phi ptr [ %.07387, %bb.d ], [ %i.ch, %bb.h ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.aa = load i16, ptr %.1, align 2
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  %i.ac = load i16, ptr %.175, align 2
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = shl nuw i32 %i.ab, 16
  %i.af = or disjoint i32 %i.ae, %i.ab
  %i.ag = and i32 %i.af, 65043487
  %i.ah = shl nuw i32 %i.ad, 16
  %i.ai = or disjoint i32 %i.ah, %i.ad
  %i.aj = and i32 %i.ai, 65043487                 ; 2 uses
  %i.ak = sub nsw i32 %i.ag, %i.aj
  %i.al = mul nsw i32 %i.ak, %i.g
  %i.am = lshr i32 %i.al, 5
  %i.an = add nuw nsw i32 %i.am, %i.aj
  %i.ao = and i32 %i.an, 65043487                 ; 2 uses
  %i.ap = lshr i32 %i.ao, 16
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = trunc i32 %i.aq to i16
  %i.as = getelementptr inbounds nuw i8, ptr %.175, i64 2
  store i16 %i.ar, ptr %.175, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.180 = phi i32 [ %.079, %bb.e ], [ %i.u, %bb.d ]
  %.276 = phi ptr [ %i.as, %bb.e ], [ %.07486, %bb.d ] ; 3 uses
  %.2 = phi ptr [ %i.z, %bb.e ], [ %.07387, %bb.d ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %i.au = load i16, ptr %.2, align 2
  %i.av = zext i16 %i.au to i32                   ; 2 uses
  %i.aw = load i16, ptr %.276, align 2
  %i.ax = zext i16 %i.aw to i32                   ; 2 uses
  %i.ay = shl nuw i32 %i.av, 16
  %i.az = or disjoint i32 %i.ay, %i.av
  %i.ba = and i32 %i.az, 65043487
  %i.bb = shl nuw i32 %i.ax, 16
  %i.bc = or disjoint i32 %i.bb, %i.ax
  %i.bd = and i32 %i.bc, 65043487                 ; 2 uses
  %i.be = sub nsw i32 %i.ba, %i.bd
  %i.bf = mul nsw i32 %i.be, %i.g
  %i.bg = lshr i32 %i.bf, 5
  %i.bh = add nuw nsw i32 %i.bg, %i.bd
  %i.bi = and i32 %i.bh, 65043487                 ; 2 uses
  %i.bj = lshr i32 %i.bi, 16
  %i.bk = or disjoint i32 %i.bj, %i.bi
  %i.bl = trunc i32 %i.bk to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %.276, i64 2
  store i16 %i.bl, ptr %.276, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.281 = phi i32 [ %.180, %bb.f ], [ %i.u, %bb.d ]
  %.377 = phi ptr [ %i.bm, %bb.f ], [ %.07486, %bb.d ] ; 3 uses
  %.3 = phi ptr [ %i.at, %bb.f ], [ %.07387, %bb.d ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %i.bo = load i16, ptr %.3, align 2
  %i.bp = zext i16 %i.bo to i32                   ; 2 uses
  %i.bq = load i16, ptr %.377, align 2
  %i.br = zext i16 %i.bq to i32                   ; 2 uses
  %i.bs = shl nuw i32 %i.bp, 16
  %i.bt = or disjoint i32 %i.bs, %i.bp
  %i.bu = and i32 %i.bt, 65043487
  %i.bv = shl nuw i32 %i.br, 16
  %i.bw = or disjoint i32 %i.bv, %i.br
  %i.bx = and i32 %i.bw, 65043487                 ; 2 uses
  %i.by = sub nsw i32 %i.bu, %i.bx
  %i.bz = mul nsw i32 %i.by, %i.g
  %i.ca = lshr i32 %i.bz, 5
  %i.cb = add nuw nsw i32 %i.ca, %i.bx
  %i.cc = and i32 %i.cb, 65043487                 ; 2 uses
  %i.cd = lshr i32 %i.cc, 16
  %i.ce = or disjoint i32 %i.cd, %i.cc
  %i.cf = trunc i32 %i.ce to i16
  %i.cg = getelementptr inbounds nuw i8, ptr %.377, i64 2
  store i16 %i.cf, ptr %.377, align 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.382 = phi i32 [ %.281, %bb.g ], [ %i.u, %bb.d ] ; 2 uses
  %.478 = phi ptr [ %i.cg, %bb.g ], [ %.07486, %bb.d ] ; 3 uses
  %.4 = phi ptr [ %i.bn, %bb.g ], [ %.07387, %bb.d ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.4, i64 2 ; 2 uses
  %i.ci = load i16, ptr %.4, align 2
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  %i.ck = load i16, ptr %.478, align 2
  %i.cl = zext i16 %i.ck to i32                   ; 2 uses
  %i.cm = shl nuw i32 %i.cj, 16
  %i.cn = or disjoint i32 %i.cm, %i.cj
  %i.co = and i32 %i.cn, 65043487
  %i.cp = shl nuw i32 %i.cl, 16
  %i.cq = or disjoint i32 %i.cp, %i.cl
  %i.cr = and i32 %i.cq, 65043487                 ; 2 uses
  %i.cs = sub nsw i32 %i.co, %i.cr
  %i.ct = mul nsw i32 %i.cs, %i.g
  %i.cu = lshr i32 %i.ct, 5
  %i.cv = add nuw nsw i32 %i.cu, %i.cr
  %i.cw = and i32 %i.cv, 65043487                 ; 2 uses
  %i.cx = lshr i32 %i.cw, 16
  %i.cy = or disjoint i32 %i.cx, %i.cw
  %i.cz = trunc i32 %i.cy to i16
  %i.da = getelementptr inbounds nuw i8, ptr %.478, i64 2 ; 2 uses
  store i16 %i.cz, ptr %.478, align 2
  %i.db = add nsw i32 %.382, -1
  %i.dc = icmp sgt i32 %.382, 1
  br i1 %i.dc, label %bb.e, label %bb.i, !llvm.loop !44

default.unreachable90:                            ; preds = %bb.d
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.dd = getelementptr inbounds [2 x i8], ptr %i.ch, i64 %i.w
  %i.de = getelementptr inbounds [2 x i8], ptr %i.da, i64 %i.x
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !45

.loopexit:                                        ; preds = %bb.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @BlitRGBtoRGBSurfaceAlpha(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = icmp eq i8 %i.b, -128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %.not52.i = icmp eq i32 %i.e, 0                 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %.not52.i, label %BlitRGBtoRGBSurfaceAlpha128.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.g = load i32, ptr %i.f, align 4
  %i.h = ashr i32 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4
  %i.m = ashr i32 %i.l, 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = add nsw i32 %i.q, 3
  %i.s = sdiv i32 %i.r, 4                         ; 4 uses
  %i.t = and i32 %i.q, 3
  %i.u = sext i32 %i.m to i64
  %i.v = sext i32 %i.h to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i
  %.in.i = phi i32 [ %i.e, %.lr.ph.i ], [ %i.w, %bb.h ]
  %.04154.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.bv, %bb.h ] ; 4 uses
  %.04253.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.bw, %bb.h ] ; 4 uses
  %i.w = add nsw i32 %.in.i, -1                   ; 2 uses
  switch i32 %i.t, label %.unreachabledefault [
    i32 0, label %bb.d
    i32 3, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.d:                                             ; preds = %bb.g, %bb.c
  %.047.i = phi i32 [ %i.s, %bb.c ], [ %i.bt, %bb.g ]
  %.143.i = phi ptr [ %.04253.i, %bb.c ], [ %i.bs, %bb.g ] ; 3 uses
  %.1.i = phi ptr [ %.04154.i, %bb.c ], [ %i.bh, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i, i64 4
  %i.y = load i32, ptr %.1.i, align 4             ; 2 uses
  %i.z = load i32, ptr %.143.i, align 4           ; 2 uses
  %i.aa = and i32 %i.y, 16711422
  %i.ab = and i32 %i.z, 16711422
  %i.ac = add nuw nsw i32 %i.ab, %i.aa
  %i.ad = lshr exact i32 %i.ac, 1
  %i.ae = and i32 %i.y, 65793
  %i.af = and i32 %i.ae, %i.z
  %i.ag = add nuw nsw i32 %i.ad, %i.af
  %i.ah = or i32 %i.ag, -16777216
  %i.ai = getelementptr inbounds nuw i8, ptr %.143.i, i64 4
  store i32 %i.ah, ptr %.143.i, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.148.i = phi i32 [ %.047.i, %bb.d ], [ %i.s, %bb.c ]
  %.244.i = phi ptr [ %i.ai, %bb.d ], [ %.04253.i, %bb.c ] ; 3 uses
  %.2.i = phi ptr [ %i.x, %bb.d ], [ %.04154.i, %bb.c ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  %i.ak = load i32, ptr %.2.i, align 4            ; 2 uses
  %i.al = load i32, ptr %.244.i, align 4          ; 2 uses
  %i.am = and i32 %i.ak, 16711422
  %i.an = and i32 %i.al, 16711422
  %i.ao = add nuw nsw i32 %i.an, %i.am
  %i.ap = lshr exact i32 %i.ao, 1
  %i.aq = and i32 %i.ak, 65793
  %i.ar = and i32 %i.aq, %i.al
  %i.as = add nuw nsw i32 %i.ap, %i.ar
  %i.at = or i32 %i.as, -16777216
  %i.au = getelementptr inbounds nuw i8, ptr %.244.i, i64 4
  store i32 %i.at, ptr %.244.i, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.249.i = phi i32 [ %.148.i, %bb.e ], [ %i.s, %bb.c ]
  %.345.i = phi ptr [ %i.au, %bb.e ], [ %.04253.i, %bb.c ] ; 3 uses
  %.3.i = phi ptr [ %i.aj, %bb.e ], [ %.04154.i, %bb.c ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.3.i, i64 4
  %i.aw = load i32, ptr %.3.i, align 4            ; 2 uses
  %i.ax = load i32, ptr %.345.i, align 4          ; 2 uses
  %i.ay = and i32 %i.aw, 16711422
  %i.az = and i32 %i.ax, 16711422
  %i.ba = add nuw nsw i32 %i.az, %i.ay
  %i.bb = lshr exact i32 %i.ba, 1
  %i.bc = and i32 %i.aw, 65793
  %i.bd = and i32 %i.bc, %i.ax
  %i.be = add nuw nsw i32 %i.bb, %i.bd
  %i.bf = or i32 %i.be, -16777216
  %i.bg = getelementptr inbounds nuw i8, ptr %.345.i, i64 4
  store i32 %i.bf, ptr %.345.i, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.350.i = phi i32 [ %.249.i, %bb.f ], [ %i.s, %bb.c ] ; 2 uses
  %.446.i = phi ptr [ %i.bg, %bb.f ], [ %.04253.i, %bb.c ] ; 3 uses
  %.4.i = phi ptr [ %i.av, %bb.f ], [ %.04154.i, %bb.c ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.4.i, i64 4 ; 2 uses
  %i.bi = load i32, ptr %.4.i, align 4            ; 2 uses
  %i.bj = load i32, ptr %.446.i, align 4          ; 2 uses
  %i.bk = and i32 %i.bi, 16711422
  %i.bl = and i32 %i.bj, 16711422
  %i.bm = add nuw nsw i32 %i.bl, %i.bk
  %i.bn = lshr exact i32 %i.bm, 1
  %i.bo = and i32 %i.bi, 65793
  %i.bp = and i32 %i.bo, %i.bj
  %i.bq = add nuw nsw i32 %i.bn, %i.bp
  %i.br = or i32 %i.bq, -16777216
  %i.bs = getelementptr inbounds nuw i8, ptr %.446.i, i64 4 ; 2 uses
  store i32 %i.br, ptr %.446.i, align 4
  %i.bt = add nsw i32 %.350.i, -1
  %i.bu = icmp sgt i32 %.350.i, 1
  br i1 %i.bu, label %bb.d, label %bb.h, !llvm.loop !46

.unreachabledefault:                              ; preds = %bb.c
  unreachable

default.unreachable135:                           ; preds = %bb.j
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.u
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.v
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %BlitRGBtoRGBSurfaceAlpha128.exit, label %bb.c, !llvm.loop !47

bb.i:                                             ; preds = %bb.a
  br i1 %.not52.i, label %BlitRGBtoRGBSurfaceAlpha128.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = ashr i32 %i.by, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = ashr i32 %i.cd, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load i32, ptr %i.ch, align 8            ; 2 uses
  %i.cj = add nsw i32 %i.ci, 3
  %i.ck = sdiv i32 %i.cj, 4                       ; 4 uses
  %i.cl = and i32 %i.ci, 3
  %i.cm = zext i8 %i.b to i64                     ; 4 uses
  %i.cn = sext i32 %i.ce to i64
  %i.co = sext i32 %i.bz to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.o
  %.in = phi i32 [ %i.e, %.lr.ph ], [ %i.cp, %bb.o ]
  %.0108126 = phi ptr [ %i.cg, %.lr.ph ], [ %i.go, %bb.o ] ; 4 uses
  %.0109125 = phi ptr [ %i.cb, %.lr.ph ], [ %i.gp, %bb.o ] ; 4 uses
  %i.cp = add nsw i32 %.in, -1                    ; 2 uses
  switch i32 %i.cl, label %default.unreachable135 [
    i32 0, label %bb.k
    i32 3, label %bb.l
    i32 2, label %bb.m
    i32 1, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j, %bb.n
  %.0114 = phi i32 [ %i.ck, %bb.j ], [ %i.gm, %bb.n ]
  %.1110 = phi ptr [ %.0109125, %bb.j ], [ %i.gl, %bb.n ] ; 3 uses
  %.1 = phi ptr [ %.0108126, %bb.j ], [ %i.gk, %bb.n ] ; 2 uses
  %i.cq = load i32, ptr %.1, align 4
  %i.cr = load i32, ptr %.1110, align 4
  %i.cs = zext i32 %i.cq to i64                   ; 2 uses
  %i.ct = shl nuw nsw i64 %i.cs, 24
  %i.cu = or i64 %i.ct, %i.cs
  %i.cv = and i64 %i.cu, 71777214294589695
  %i.cw = zext i32 %i.cr to i64                   ; 2 uses
  %i.cx = shl nuw nsw i64 %i.cw, 24
  %i.cy = or i64 %i.cx, %i.cw
  %i.cz = and i64 %i.cy, 71777214294589695        ; 2 uses
  %i.da = sub nsw i64 %i.cv, %i.cz
  %i.db = mul i64 %i.da, %i.cm
  %reass.sub = mul nuw i64 %i.cz, 255
  %i.dc = add nuw i64 %reass.sub, 281479271743489
  %i.dd = add i64 %i.dc, %i.db                    ; 2 uses
  %i.de = lshr i64 %i.dd, 8
  %i.df = and i64 %i.de, 71777214294589695
  %i.dg = add i64 %i.df, %i.dd
  %i.dh = and i64 %i.dg, -71777214294589696       ; 2 uses
  %i.di = lshr exact i64 %i.dh, 8
  %i.dj = lshr i64 %i.dh, 32
  %i.dk = or disjoint i64 %i.di, %i.dj
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = or i32 %i.dl, -16777216
  store i32 %i.dm, ptr %.1110, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %.1110, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1115 = phi i32 [ %.0114, %bb.k ], [ %i.ck, %bb.j ]
  %.2111 = phi ptr [ %i.do, %bb.k ], [ %.0109125, %bb.j ] ; 3 uses
  %.2 = phi ptr [ %i.dn, %bb.k ], [ %.0108126, %bb.j ] ; 2 uses
  %i.dp = load i32, ptr %.2, align 4
  %i.dq = load i32, ptr %.2111, align 4
  %i.dr = zext i32 %i.dp to i64                   ; 2 uses
  %i.ds = shl nuw nsw i64 %i.dr, 24
  %i.dt = or i64 %i.ds, %i.dr
  %i.du = and i64 %i.dt, 71777214294589695
  %i.dv = zext i32 %i.dq to i64                   ; 2 uses
  %i.dw = shl nuw nsw i64 %i.dv, 24
  %i.dx = or i64 %i.dw, %i.dv
  %i.dy = and i64 %i.dx, 71777214294589695        ; 2 uses
  %i.dz = sub nsw i64 %i.du, %i.dy
  %i.ea = mul i64 %i.dz, %i.cm
  %reass.sub127 = mul nuw i64 %i.dy, 255
  %i.eb = add nuw i64 %reass.sub127, 281479271743489
  %i.ec = add i64 %i.eb, %i.ea                    ; 2 uses
  %i.ed = lshr i64 %i.ec, 8
  %i.ee = and i64 %i.ed, 71777214294589695
  %i.ef = add i64 %i.ee, %i.ec
  %i.eg = and i64 %i.ef, -71777214294589696       ; 2 uses
  %i.eh = lshr exact i64 %i.eg, 8
  %i.ei = lshr i64 %i.eg, 32
  %i.ej = or disjoint i64 %i.eh, %i.ei
  %i.ek = trunc i64 %i.ej to i32
  %i.el = or i32 %i.ek, -16777216
  store i32 %i.el, ptr %.2111, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.en = getelementptr inbounds nuw i8, ptr %.2111, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.2116 = phi i32 [ %.1115, %bb.l ], [ %i.ck, %bb.j ]
  %.3112 = phi ptr [ %i.en, %bb.l ], [ %.0109125, %bb.j ] ; 3 uses
  %.3 = phi ptr [ %i.em, %bb.l ], [ %.0108126, %bb.j ] ; 2 uses
  %i.eo = load i32, ptr %.3, align 4
  %i.ep = load i32, ptr %.3112, align 4
  %i.eq = zext i32 %i.eo to i64                   ; 2 uses
  %i.er = shl nuw nsw i64 %i.eq, 24
  %i.es = or i64 %i.er, %i.eq
  %i.et = and i64 %i.es, 71777214294589695
  %i.eu = zext i32 %i.ep to i64                   ; 2 uses
  %i.ev = shl nuw nsw i64 %i.eu, 24
  %i.ew = or i64 %i.ev, %i.eu
  %i.ex = and i64 %i.ew, 71777214294589695        ; 2 uses
  %i.ey = sub nsw i64 %i.et, %i.ex
  %i.ez = mul i64 %i.ey, %i.cm
  %reass.sub128 = mul nuw i64 %i.ex, 255
  %i.fa = add nuw i64 %reass.sub128, 281479271743489
  %i.fb = add i64 %i.fa, %i.ez                    ; 2 uses
  %i.fc = lshr i64 %i.fb, 8
  %i.fd = and i64 %i.fc, 71777214294589695
  %i.fe = add i64 %i.fd, %i.fb
  %i.ff = and i64 %i.fe, -71777214294589696       ; 2 uses
  %i.fg = lshr exact i64 %i.ff, 8
  %i.fh = lshr i64 %i.ff, 32
  %i.fi = or disjoint i64 %i.fg, %i.fh
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = or i32 %i.fj, -16777216
  store i32 %i.fk, ptr %.3112, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %.3, i64 4
  %i.fm = getelementptr inbounds nuw i8, ptr %.3112, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.3117 = phi i32 [ %.2116, %bb.m ], [ %i.ck, %bb.j ] ; 2 uses
  %.4113 = phi ptr [ %i.fm, %bb.m ], [ %.0109125, %bb.j ] ; 3 uses
  %.4 = phi ptr [ %i.fl, %bb.m ], [ %.0108126, %bb.j ] ; 2 uses
  %i.fn = load i32, ptr %.4, align 4
  %i.fo = load i32, ptr %.4113, align 4
  %i.fp = zext i32 %i.fn to i64                   ; 2 uses
  %i.fq = shl nuw nsw i64 %i.fp, 24
  %i.fr = or i64 %i.fq, %i.fp
  %i.fs = and i64 %i.fr, 71777214294589695
  %i.ft = zext i32 %i.fo to i64                   ; 2 uses
  %i.fu = shl nuw nsw i64 %i.ft, 24
  %i.fv = or i64 %i.fu, %i.ft
  %i.fw = and i64 %i.fv, 71777214294589695        ; 2 uses
  %i.fx = sub nsw i64 %i.fs, %i.fw
  %i.fy = mul i64 %i.fx, %i.cm
  %reass.sub129 = mul nuw i64 %i.fw, 255
  %i.fz = add nuw i64 %reass.sub129, 281479271743489
  %i.ga = add i64 %i.fz, %i.fy                    ; 2 uses
  %i.gb = lshr i64 %i.ga, 8
  %i.gc = and i64 %i.gb, 71777214294589695
  %i.gd = add i64 %i.gc, %i.ga
  %i.ge = and i64 %i.gd, -71777214294589696       ; 2 uses
  %i.gf = lshr exact i64 %i.ge, 8
  %i.gg = lshr i64 %i.ge, 32
  %i.gh = or disjoint i64 %i.gf, %i.gg
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = or i32 %i.gi, -16777216
  store i32 %i.gj, ptr %.4113, align 4
  %i.gk = getelementptr inbounds nuw i8, ptr %.4, i64 4 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.4113, i64 4 ; 2 uses
  %i.gm = add nsw i32 %.3117, -1
  %i.gn = icmp sgt i32 %.3117, 1
  br i1 %i.gn, label %bb.k, label %bb.o, !llvm.loop !48

bb.o:                                             ; preds = %bb.n
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.cn
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.co
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %BlitRGBtoRGBSurfaceAlpha128.exit, label %bb.j, !llvm.loop !49

BlitRGBtoRGBSurfaceAlpha128.exit:                 ; preds = %bb.o, %bb.h, %bb.i, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @BlitNto1SurfaceAlphaKey(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8              ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.l = load i8, ptr %i.k, align 1               ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.n = load i32, ptr %i.m, align 4              ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32                      ; 12 uses
  %.not442 = icmp eq i32 %i.b, 0
  br i1 %.not442, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = add nsw i32 %i.aa, 3
  %i.ac = sdiv i32 %i.ab, 4                       ; 4 uses
  %i.ad = and i32 %i.aa, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 16 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 25 ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 12 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 29 ; 16 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 26 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 30 ; 16 uses
  %i.an = icmp eq ptr %i.d, null                  ; 4 uses
  %i.ao = zext i8 %i.l to i64                     ; 4 uses
  %i.ap = sext i32 %i.w to i64
  %i.aq = sext i32 %i.s to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aq
  %.in = phi i32 [ %i.b, %.lr.ph ], [ %i.ar, %bb.aq ]
  %.0407444 = phi ptr [ %i.y, %.lr.ph ], [ %i.aca, %bb.aq ] ; 4 uses
  %.0408443 = phi ptr [ %i.u, %.lr.ph ], [ %i.acb, %bb.aq ] ; 4 uses
  %i.ar = add nsw i32 %.in, -1                    ; 2 uses
  switch i32 %i.ad, label %default.unreachable450 [
    i32 0, label %bb.c
    i32 3, label %bb.m
    i32 2, label %bb.w
    i32 1, label %bb.ag
  ]

bb.c:                                             ; preds = %bb.b, %bb.ap
  %.0429 = phi i32 [ %i.ac, %bb.b ], [ %i.aby, %bb.ap ]
  %.1409 = phi ptr [ %.0408443, %bb.b ], [ %i.abw, %bb.ap ] ; 3 uses
  %.1 = phi ptr [ %.0407444, %bb.b ], [ %i.abx, %bb.ap ] ; 7 uses
  switch i8 %i.l, label %bb.h [
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.as = load i8, ptr %.1, align 1
  %i.at = zext i8 %i.as to i32                    ; 4 uses
  %i.au = load i8, ptr %i.ae, align 4
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load i32, ptr %i.af, align 4
  %i.az = and i32 %i.ay, %i.at
  %i.ba = load i8, ptr %i.ag, align 4
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = lshr i32 %i.az, %i.bb
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = load i8, ptr %i.ah, align 1
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = load i32, ptr %i.ai, align 4
  %i.bl = and i32 %i.bk, %i.at
  %i.bm = load i8, ptr %i.aj, align 1
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = lshr i32 %i.bl, %i.bn
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = load i8, ptr %i.ak, align 2
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = load i32, ptr %i.al, align 4
  %i.bx = and i32 %i.bw, %i.at
  %i.by = load i8, ptr %i.am, align 2
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = lshr i32 %i.bx, %i.bz
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.ce = load i16, ptr %.1, align 2
  %i.cf = zext i16 %i.ce to i32                   ; 4 uses
  %i.cg = load i8, ptr %i.ae, align 4
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = load i32, ptr %i.af, align 4
  %i.cl = and i32 %i.ck, %i.cf
  %i.cm = load i8, ptr %i.ag, align 4
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = lshr i32 %i.cl, %i.cn
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = load i8, ptr %i.ah, align 1
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = load i32, ptr %i.ai, align 4
  %i.cx = and i32 %i.cw, %i.cf
  %i.cy = load i8, ptr %i.aj, align 1
  %i.cz = zext nneg i8 %i.cy to i32
  %i.da = lshr i32 %i.cx, %i.cz
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = load i8, ptr %i.ak, align 2
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = load i32, ptr %i.al, align 4
  %i.dj = and i32 %i.di, %i.cf
  %i.dk = load i8, ptr %i.am, align 2
  %i.dl = zext nneg i8 %i.dk to i32
  %i.dm = lshr i32 %i.dj, %i.dl
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1
  br label %bb.h
end_hunk_0
