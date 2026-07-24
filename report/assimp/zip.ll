inline.NumInlined: 193
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 62
begin_hunk_0_@mz_inflate:bb.a
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.at, ptr %i.au, align 8
  %i.av = load i64, ptr %i.b, align 8             ; 2 uses
  %i.aw = load ptr, ptr %i.ae, align 8
  %i.ax = and i64 %i.av, 4294967295               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  store ptr %i.ay, ptr %i.ae, align 8
  %i.az = trunc i64 %i.av to i32
  %i.ba = load i32, ptr %i.aa, align 8
  %i.bb = sub i32 %i.ba, %i.az
  store i32 %i.bb, ptr %i.aa, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = add i64 %i.bd, %i.ax
  store i64 %i.be, ptr %i.bc, align 8
  %i.bf = icmp slt i32 %i.ag, 0
  br i1 %i.bf, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not139 = icmp eq i32 %i.ag, 0
  br i1 %.not139, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 -1, ptr %i.n, align 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.f
  %i.bg = or disjoint i32 %spec.select, 2
  %spec.select140 = select i1 %i.f, i32 %i.bg, i32 %spec.select
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 8380 ; 6 uses
  %i.bi = load i32, ptr %i.bh, align 4            ; 2 uses
  %.not131 = icmp eq i32 %i.bi, 0
  br i1 %.not131, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 8376 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8396 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.br = icmp ne i32 %i.k, 0
  %.pre = load i32, ptr %i.bj, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %. = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 %i.bt) ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 8396
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 8376 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bz
  %i.cb = zext i32 %. to i64                      ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr nonnull align 1 %i.ca, i64 %i.cb, i1 false)
  %i.cc = load ptr, ptr %i.bu, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cb
  store ptr %i.cd, ptr %i.bu, align 8
  %i.ce = load i32, ptr %i.bs, align 8
  %i.cf = sub i32 %i.ce, %.
  store i32 %i.cf, ptr %i.bs, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = add i64 %i.ch, %i.cb
  store i64 %i.ci, ptr %i.cg, align 8
  %i.cj = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.ck = sub i32 %i.cj, %.
  store i32 %i.ck, ptr %i.bh, align 4
  %i.cl = load i32, ptr %i.bx, align 8
  %i.cm = add i32 %i.cl, %.
  %i.cn = and i32 %i.cm, 32767
  store i32 %i.cn, ptr %i.bx, align 8
  %i.co = load i32, ptr %i.n, align 4
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %.not138 = icmp eq i32 %i.cj, %.
  %i.cq = zext i1 %.not138 to i32
  br label %.loopexit

bb.m:                                             ; preds = %.backedge, %.preheader
  %i.cr = phi i32 [ %.pre, %.preheader ], [ %i.ed, %.backedge ] ; 2 uses
  %i.cs = load i32, ptr %i.j, align 8
  %i.ct = zext i32 %i.cs to i64
  store i64 %i.ct, ptr %i.a, align 8
  %i.cu = sub i32 32768, %i.cr
  %i.cv = zext i32 %i.cu to i64
  store i64 %i.cv, ptr %i.b, align 8
  %i.cw = load ptr, ptr %0, align 8
  %i.cx = zext i32 %i.cr to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cx
  %i.cz = call i32 @tinfl_decompress(ptr noundef nonnull %i.d, ptr noundef %i.cw, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.b, i32 noundef %spec.select140) ; 4 uses
  store i32 %i.cz, ptr %i.n, align 4
  %i.da = load i64, ptr %i.a, align 8             ; 2 uses
  %i.db = load ptr, ptr %0, align 8
  %i.dc = and i64 %i.da, 4294967295               ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  store ptr %i.dd, ptr %0, align 8
  %i.de = trunc i64 %i.da to i32
  %i.df = load i32, ptr %i.j, align 8
  %i.dg = sub i32 %i.df, %i.de
  store i32 %i.dg, ptr %i.j, align 8
  %i.dh = load i64, ptr %i.bl, align 8
  %i.di = add i64 %i.dh, %i.dc
  store i64 %i.di, ptr %i.bl, align 8
  %i.dj = load i32, ptr %i.bm, align 4
  %i.dk = zext i32 %i.dj to i64
  store i64 %i.dk, ptr %i.bn, align 8
  %i.dl = load i64, ptr %i.b, align 8
  %i.dm = trunc i64 %i.dl to i32                  ; 2 uses
  store i32 %i.dm, ptr %i.bh, align 4
  %i.dn = load i32, ptr %i.bo, align 8
  %.141 = tail call i32 @llvm.umin.i32(i32 %i.dn, i32 %i.dm) ; 7 uses
  %i.do = load ptr, ptr %i.bp, align 8
  %i.dp = load i32, ptr %i.bj, align 8
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.dq
  %i.ds = zext i32 %.141 to i64                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr nonnull align 1 %i.dr, i64 %i.ds, i1 false)
  %i.dt = load ptr, ptr %i.bp, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds
  store ptr %i.du, ptr %i.bp, align 8
  %i.dv = load i32, ptr %i.bo, align 8
  %i.dw = sub i32 %i.dv, %.141
  store i32 %i.dw, ptr %i.bo, align 8
  %i.dx = load i64, ptr %i.bq, align 8
  %i.dy = add i64 %i.dx, %i.ds
  store i64 %i.dy, ptr %i.bq, align 8
  %i.dz = load i32, ptr %i.bh, align 4            ; 4 uses
  %i.ea = sub i32 %i.dz, %.141
  store i32 %i.ea, ptr %i.bh, align 4
  %i.eb = load i32, ptr %i.bj, align 8
  %i.ec = add i32 %i.eb, %.141
  %i.ed = and i32 %i.ec, 32767                    ; 2 uses
  store i32 %i.ed, ptr %i.bj, align 8
  %i.ee = icmp slt i32 %i.cz, 0
  br i1 %i.ee, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ef = icmp ne i32 %i.cz, 1
  %or.cond9 = select i1 %i.ef, i1 true, i1 %i.br
  br i1 %or.cond9, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.eg = icmp eq i32 %i.cz, 0                    ; 2 uses
  br i1 %i.t, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %i.eg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.not137 = icmp eq i32 %i.dz, %.141
  %i.eh = select i1 %.not137, i32 1, i32 -5
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.ei = load i32, ptr %i.bo, align 8
  %.not136 = icmp eq i32 %i.ei, 0
  br i1 %.not136, label %.loopexit, label %.backedge

bb.s:                                             ; preds = %bb.o
  br i1 %i.eg, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ej = load i32, ptr %i.j, align 8
  %.not132 = icmp eq i32 %i.ej, 0
  br i1 %.not132, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ek = load i32, ptr %i.bo, align 8
  %.not133 = icmp ne i32 %i.ek, 0
  %.not134 = icmp eq i32 %i.dz, %.141
  %or.cond = select i1 %.not133, i1 %.not134, i1 false
  br i1 %or.cond, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.u, %bb.r
  br label %bb.m

.critedge:                                        ; preds = %bb.s
  %.not135 = icmp eq i32 %i.dz, %.141
  %i.el = zext i1 %.not135 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.t, %bb.r, %bb.n, %bb.m, %.critedge, %bb.k, %bb.l, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b, %bb.q, %bb.i
  %.0 = phi i32 [ -2, %bb.a ], [ -2, %bb.c ], [ -3, %bb.d ], [ -2, %bb.e ], [ -5, %bb.i ], [ -3, %bb.g ], [ 1, %bb.h ], [ %i.cq, %bb.l ], [ %i.eh, %bb.q ], [ -2, %bb.b ], [ 0, %bb.k ], [ %i.el, %.critedge ], [ 0, %bb.u ], [ 0, %bb.t ], [ -3, %bb.m ], [ -5, %bb.r ], [ -5, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -4, 3) i32 @tinfl_decompress(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #15 {
bb.a:
  %7 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %i.b = alloca [3 x ptr], align 16               ; 6 uses
  %i.c = alloca [17 x i32], align 16              ; 18 uses
  %i.d = alloca [16 x i32], align 16              ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.e = load i64, ptr %2, align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e ; 22 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.j = and i32 %6, 4
  %.not1543 = icmp eq i32 %i.j, 0                 ; 3 uses
  br i1 %.not1543, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %4 to i64
  %i.l = ptrtoint ptr %3 to i64
  %i.m = load i64, ptr %5, align 8
  %i.n = xor i64 %i.l, -1
  %i.o = add i64 %i.n, %i.k
  %i.p = add i64 %i.o, %i.m
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.q = phi i64 [ %i.p, %bb.d ], [ -1, %bb.c ]   ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 2 uses
  %i.s = and i64 %i.r, %i.q
  %.not1544 = icmp ne i64 %i.s, 0
  %i.t = icmp ult ptr %4, %3
  %or.cond1621 = or i1 %i.t, %.not1544
  br i1 %or.cond1621, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %5, align 8
  store i64 0, ptr %2, align 8
  br label %bb.fs

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 6216 ; 6 uses
  store ptr %i.u, ptr %i.a, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 7368 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 7496 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.x, ptr %i.y, align 16
  %i.z = getelementptr i8, ptr %0, i64 7572       ; 3 uses
  store ptr %i.z, ptr %i.b, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7860 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 7892 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ac, ptr %i.ad, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %.84.fr2003 = freeze i32 %i.af                  ; 36 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 34 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8            ; 34 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 33 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8            ; 34 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8            ; 37 uses
  %i.aq = load i32, ptr %0, align 8               ; 9 uses
  switch i32 %i.aq, label %.thread1657 [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.l
    i32 36, label %bb.fo
    i32 3, label %.preheader2174
    i32 5, label %bb.x
    i32 6, label %.preheader2065
    i32 7, label %bb.ah
    i32 39, label %bb.fo
    i32 51, label %.preheader2073
    i32 52, label %bb.ar
    i32 9, label %bb.au
    i32 38, label %bb.av
    i32 10, label %bb.fo
    i32 11, label %.preheader2155
    i32 14, label %.preheader2166
    i32 35, label %bb.fo
    i32 16, label %bb.ch
    i32 17, label %bb.fo
    i32 18, label %.preheader2089
    i32 21, label %bb.fo
    i32 23, label %bb.df
    i32 24, label %bb.dl
    i32 25, label %.preheader2118
    i32 26, label %bb.eg
    i32 27, label %.preheader2107
    i32 37, label %bb.fo
    i32 53, label %bb.et
    i32 32, label %bb.ez
    i32 41, label %.preheader2081
    i32 42, label %bb.fj
    i32 34, label %bb.fn
  ]

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.au, align 8
  %i.av = and i32 %6, 1
  %.not1549 = icmp eq i32 %i.av, 0
  br i1 %.not1549, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.01089 = phi i64 [ 0, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %.01008 = phi i32 [ 0, %bb.h ], [ %i.an, %bb.g ] ; 2 uses
  %.0919 = phi i32 [ 0, %bb.h ], [ %i.al, %bb.g ] ; 2 uses
  %.0840 = phi i32 [ 0, %bb.h ], [ %i.aj, %bb.g ] ; 2 uses
  %.0837 = phi i32 [ 0, %bb.h ], [ %.84.fr2003, %bb.g ] ; 2 uses
  %.not1550.not = icmp eq i64 %i.e, 0
  br i1 %.not1550.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = and i32 %6, 2
  %.not1617 = icmp eq i32 %i.aw, 0
  store i32 1, ptr %0, align 8
  %spec.select1675 = select i1 %.not1617, i32 -4, i32 1
  br label %.thread1657

bb.k:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ay = load i8, ptr %1, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.az, ptr %i.ba, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k
  %.01181 = phi ptr [ %i.ax, %bb.k ], [ %1, %bb.g ] ; 4 uses
  %.11090 = phi i64 [ %.01089, %bb.k ], [ %i.ah, %bb.g ] ; 3 uses
  %.11009 = phi i32 [ %.01008, %bb.k ], [ %i.an, %bb.g ] ; 3 uses
  %.1920 = phi i32 [ %.0919, %bb.k ], [ %i.al, %bb.g ]
  %.1841 = phi i32 [ %.0840, %bb.k ], [ %i.aj, %bb.g ] ; 3 uses
  %.1838 = phi i32 [ %.0837, %bb.k ], [ %.84.fr2003, %bb.g ] ; 3 uses
  %.not1551 = icmp ult ptr %.01181, %i.f
  br i1 %.not1551, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = and i32 %6, 2
  %.not1616 = icmp eq i32 %i.bb, 0
  store i32 2, ptr %0, align 8
  %spec.select1677 = select i1 %.not1616, i32 -4, i32 1
  br label %.thread1657

bb.n:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.01181, i64 1 ; 2 uses
  %i.bd = load i8, ptr %.01181, align 1
  %i.be = zext i8 %i.bd to i32                    ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.be, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load i32, ptr %i.bg, align 8            ; 4 uses
  %i.bi = shl i32 %i.bh, 8
  %i.bj = or disjoint i32 %i.bi, %i.be
  %i.bk = urem i32 %i.bj, 31
  %i.bl = and i32 %i.be, 32
  %i.bm = or disjoint i32 %i.bk, %i.bl
  %or.cond1622 = icmp ne i32 %i.bm, 0
  %i.bn = and i32 %i.bh, 15
  %i.bo = icmp ne i32 %i.bn, 8
  %narrow = select i1 %or.cond1622, i1 true, i1 %i.bo
  %i.bp = zext i1 %narrow to i32                  ; 2 uses
  br i1 %.not1543, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bq = icmp ugt i32 %i.bh, 127
  br i1 %i.bq, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = lshr i32 %i.bh, 4
  %i.bs = or disjoint i32 %i.br, 8
  %i.bt = zext nneg i32 %i.bs to i64
  %.highbits = lshr i64 %i.r, %i.bt
  %i.bu = icmp eq i64 %.highbits, 0
  %i.bv = zext i1 %i.bu to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bw = phi i32 [ 1, %bb.o ], [ %i.bv, %bb.p ]
end_hunk_0
begin_hunk_1_@tinfl_decompress:bb.a
  %brmerge = or i1 %.not1543, %or.cond1632.not1715
  br i1 %brmerge, label %bb.er, label %bb.fo

bb.er:                                            ; preds = %bb.eq
  %i.afr = sub i64 %i.afn, %i.afp
  %i.afs = and i64 %i.afr, %i.q
  %i.aft = getelementptr inbounds nuw i8, ptr %3, i64 %i.afs ; 8 uses
  %i.afu = icmp ugt ptr %.631336, %i.aft
  %i.afv = select i1 %i.afu, ptr %.631336, ptr %i.aft
  %i.afw = zext i32 %.66985 to i64
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afv, i64 %i.afw
  %i.afy = icmp ugt ptr %i.afx, %i.i
  br i1 %i.afy, label %bb.es, label %.preheader1722

.preheader1722:                                   ; preds = %bb.er
  %i.afz = icmp ugt i32 %.66985, 2
  br i1 %i.afz, label %.lr.ph1767.preheader, label %._crit_edge

.lr.ph1767.preheader:                             ; preds = %.preheader1722
  %i.aga = add i32 %.66985, -3                    ; 2 uses
  %i.agb = udiv i32 %i.aga, 3
  %i.agc = and i32 %i.agb, 1
  %lcmp.mod.not.not = icmp eq i32 %i.agc, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph1767.prol, label %.lr.ph1767.prol.loopexit

.lr.ph1767.prol:                                  ; preds = %.lr.ph1767.preheader
  %i.agd = load i8, ptr %i.aft, align 1
  store i8 %i.agd, ptr %.631336, align 1
  %i.age = getelementptr inbounds nuw i8, ptr %i.aft, i64 1
  %i.agf = load i8, ptr %i.age, align 1
  %i.agg = getelementptr inbounds nuw i8, ptr %.631336, i64 1
  store i8 %i.agf, ptr %i.agg, align 1
  %i.agh = getelementptr inbounds nuw i8, ptr %i.aft, i64 2
  %i.agi = load i8, ptr %i.agh, align 1
  %i.agj = getelementptr inbounds nuw i8, ptr %.631336, i64 2
  store i8 %i.agi, ptr %i.agj, align 1
  %i.agk = getelementptr inbounds nuw i8, ptr %.631336, i64 3 ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.aft, i64 3 ; 2 uses
  %i.agm = add i32 %.66985, -3                    ; 2 uses
  br label %.lr.ph1767.prol.loopexit

.lr.ph1767.prol.loopexit:                         ; preds = %.lr.ph1767.prol, %.lr.ph1767.preheader
  %.709891766.unr = phi i32 [ %.66985, %.lr.ph1767.preheader ], [ %i.agm, %.lr.ph1767.prol ]
  %.012721765.unr = phi ptr [ %i.aft, %.lr.ph1767.preheader ], [ %i.agl, %.lr.ph1767.prol ]
  %.6713401764.unr = phi ptr [ %.631336, %.lr.ph1767.preheader ], [ %i.agk, %.lr.ph1767.prol ]
  %.lcssa2106.unr = phi ptr [ poison, %.lr.ph1767.preheader ], [ %i.agk, %.lr.ph1767.prol ]
  %.lcssa2105.unr = phi ptr [ poison, %.lr.ph1767.preheader ], [ %i.agl, %.lr.ph1767.prol ]
  %.lcssa2104.unr = phi i32 [ poison, %.lr.ph1767.preheader ], [ %i.agm, %.lr.ph1767.prol ]
  %i.agn = icmp ult i32 %i.aga, 3
  br i1 %i.agn, label %._crit_edge, label %.lr.ph1767

bb.es:                                            ; preds = %bb.er, %bb.eu
  %.621416 = phi i64 [ %i.afn, %bb.er ], [ %i.agp, %bb.eu ] ; 2 uses
  %.651338 = phi ptr [ %.631336, %bb.er ], [ %i.agv, %bb.eu ] ; 2 uses
  %.681249 = phi ptr [ %.661247, %bb.er ], [ %.691250, %bb.eu ] ; 2 uses
  %.701159 = phi i64 [ %.681157, %bb.er ], [ %.711160, %bb.eu ] ; 2 uses
  %.671075 = phi i32 [ %.651073, %bb.er ], [ %.681076, %bb.eu ] ; 2 uses
  %.68987 = phi i32 [ %.66985, %bb.er ], [ %.69988, %bb.eu ] ; 2 uses
  %.65905 = phi i32 [ %.63903, %bb.er ], [ %.66906, %bb.eu ] ; 2 uses
  %.70 = phi i32 [ %.68, %bb.er ], [ %.71, %bb.eu ] ; 2 uses
  %i.ago = add i32 %.68987, -1
  %.not1578 = icmp eq i32 %.68987, 0
  br i1 %.not1578, label %.preheader2129, label %bb.et

bb.et:                                            ; preds = %bb.g, %bb.es
  %.631417 = phi i64 [ %.621416, %bb.es ], [ %i.ap, %bb.g ] ; 3 uses
  %.661339 = phi ptr [ %.651338, %bb.es ], [ %4, %bb.g ] ; 4 uses
  %.691250 = phi ptr [ %.681249, %bb.es ], [ %1, %bb.g ] ; 2 uses
  %.711160 = phi i64 [ %.701159, %bb.es ], [ %i.ah, %bb.g ] ; 2 uses
  %.681076 = phi i32 [ %.671075, %bb.es ], [ %i.an, %bb.g ] ; 2 uses
  %.69988 = phi i32 [ %i.ago, %bb.es ], [ %i.al, %bb.g ] ; 2 uses
  %.66906 = phi i32 [ %.65905, %bb.es ], [ %i.aj, %bb.g ] ; 3 uses
  %.71 = phi i32 [ %.70, %bb.es ], [ %.84.fr2003, %bb.g ] ; 2 uses
  %.not1579 = icmp ult ptr %.661339, %i.i
  br i1 %.not1579, label %bb.eu, label %bb.fo

bb.eu:                                            ; preds = %bb.et
  %i.agp = add i64 %.631417, 1
  %i.agq = zext i32 %.66906 to i64
  %i.agr = sub i64 %.631417, %i.agq
  %i.ags = and i64 %i.agr, %i.q
  %i.agt = getelementptr inbounds nuw i8, ptr %3, i64 %i.ags
  %i.agu = load i8, ptr %i.agt, align 1
  %i.agv = getelementptr inbounds nuw i8, ptr %.661339, i64 1
  store i8 %i.agu, ptr %.661339, align 1
  br label %bb.es

.lr.ph1767:                                       ; preds = %.lr.ph1767.prol.loopexit, %.lr.ph1767
  %.709891766 = phi i32 [ %i.aho, %.lr.ph1767 ], [ %.709891766.unr, %.lr.ph1767.prol.loopexit ]
  %.012721765 = phi ptr [ %i.ahn, %.lr.ph1767 ], [ %.012721765.unr, %.lr.ph1767.prol.loopexit ] ; 7 uses
  %.6713401764 = phi ptr [ %i.ahm, %.lr.ph1767 ], [ %.6713401764.unr, %.lr.ph1767.prol.loopexit ] ; 7 uses
  %i.agw = load i8, ptr %.012721765, align 1
  store i8 %i.agw, ptr %.6713401764, align 1
  %i.agx = getelementptr inbounds nuw i8, ptr %.012721765, i64 1
  %i.agy = load i8, ptr %i.agx, align 1
  %i.agz = getelementptr inbounds nuw i8, ptr %.6713401764, i64 1
  store i8 %i.agy, ptr %i.agz, align 1
  %i.aha = getelementptr inbounds nuw i8, ptr %.012721765, i64 2
  %i.ahb = load i8, ptr %i.aha, align 1
  %i.ahc = getelementptr inbounds nuw i8, ptr %.6713401764, i64 2
  store i8 %i.ahb, ptr %i.ahc, align 1
  %i.ahd = getelementptr inbounds nuw i8, ptr %.6713401764, i64 3
  %i.ahe = getelementptr inbounds nuw i8, ptr %.012721765, i64 3
  %i.ahf = load i8, ptr %i.ahe, align 1
  store i8 %i.ahf, ptr %i.ahd, align 1
  %i.ahg = getelementptr inbounds nuw i8, ptr %.012721765, i64 4
  %i.ahh = load i8, ptr %i.ahg, align 1
  %i.ahi = getelementptr inbounds nuw i8, ptr %.6713401764, i64 4
  store i8 %i.ahh, ptr %i.ahi, align 1
  %i.ahj = getelementptr inbounds nuw i8, ptr %.012721765, i64 5
  %i.ahk = load i8, ptr %i.ahj, align 1
  %i.ahl = getelementptr inbounds nuw i8, ptr %.6713401764, i64 5
  store i8 %i.ahk, ptr %i.ahl, align 1
  %i.ahm = getelementptr inbounds nuw i8, ptr %.6713401764, i64 6 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %.012721765, i64 6 ; 2 uses
  %i.aho = add i32 %.709891766, -6                ; 3 uses
  %i.ahp = icmp ugt i32 %i.aho, 2
  br i1 %i.ahp, label %.lr.ph1767, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph1767.prol.loopexit, %.lr.ph1767, %.preheader1722
  %.671340.lcssa = phi ptr [ %.631336, %.preheader1722 ], [ %.lcssa2106.unr, %.lr.ph1767.prol.loopexit ], [ %i.ahm, %.lr.ph1767 ] ; 4 uses
  %.01272.lcssa = phi ptr [ %i.aft, %.preheader1722 ], [ %.lcssa2105.unr, %.lr.ph1767.prol.loopexit ], [ %i.ahn, %.lr.ph1767 ] ; 2 uses
  %.70989.lcssa = phi i32 [ %.66985, %.preheader1722 ], [ %.lcssa2104.unr, %.lr.ph1767.prol.loopexit ], [ %i.aho, %.lr.ph1767 ] ; 5 uses
  %.not1577 = icmp eq i32 %.70989.lcssa, 0
  br i1 %.not1577, label %.preheader2129, label %bb.ev

bb.ev:                                            ; preds = %._crit_edge
  %i.ahq = load i8, ptr %.01272.lcssa, align 1
  store i8 %i.ahq, ptr %.671340.lcssa, align 1
  %i.ahr = icmp eq i32 %.70989.lcssa, 2
  br i1 %i.ahr, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.ahs = getelementptr inbounds nuw i8, ptr %.01272.lcssa, i64 1
  %i.aht = load i8, ptr %i.ahs, align 1
  %i.ahu = getelementptr inbounds nuw i8, ptr %.671340.lcssa, i64 1
  store i8 %i.aht, ptr %i.ahu, align 1
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.ahv = zext nneg i32 %.70989.lcssa to i64
  %i.ahw = getelementptr inbounds nuw i8, ptr %.671340.lcssa, i64 %i.ahv
  br label %.preheader2129

bb.ey:                                            ; preds = %bb.at, %.thread
  %.641418 = phi i64 [ %.191373, %bb.at ], [ %.511405, %.thread ] ; 2 uses
  %.691342 = phi ptr [ %.191292, %bb.at ], [ %.521325, %.thread ] ; 2 uses
  %.701251 = phi ptr [ %.221203, %bb.at ], [ %.551236, %.thread ] ; 2 uses
  %.721161 = phi i64 [ %.231112, %bb.at ], [ %.571146, %.thread ] ; 2 uses
  %.691077 = phi i32 [ %.231031, %bb.at ], [ %.551063, %.thread ] ; 2 uses
  %.71990 = phi i32 [ 0, %bb.at ], [ 256, %.thread ] ; 2 uses
  %.67907 = phi i32 [ %.22862, %bb.at ], [ %.53893, %.thread ] ; 2 uses
  %.72 = phi i32 [ %.23, %bb.at ], [ %.57, %.thread ] ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ahy = load i32, ptr %i.ahx, align 4
  %i.ahz = and i32 %i.ahy, 1
  %.not1597 = icmp eq i32 %i.ahz, 0
  br i1 %.not1597, label %bb.s, label %bb.fc

bb.ez:                                            ; preds = %bb.g
  %.not1545.not = icmp eq i64 %i.e, 0
  br i1 %.not1545.not, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.aia = and i32 %6, 2
  %.not1546 = icmp eq i32 %i.aia, 0
  store i32 32, ptr %0, align 8
  %spec.select1707 = select i1 %.not1546, i32 -4, i32 1
  br label %.thread1657

bb.fb:                                            ; preds = %bb.ez
  %i.aib = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aic = load i8, ptr %1, align 1
  %i.aid = zext i8 %i.aic to i64
  %i.aie = zext nneg i32 %.84.fr2003 to i64
  %i.aif = shl i64 %i.aid, %i.aie
  %i.aig = or i64 %i.aif, %i.ah
  %i.aih = add i32 %.84.fr2003, 8
  br label %bb.fc

bb.fc:                                            ; preds = %bb.ey, %bb.fb
  %.671421 = phi i64 [ %i.ap, %bb.fb ], [ %.641418, %bb.ey ] ; 2 uses
  %.721345 = phi ptr [ %4, %bb.fb ], [ %.691342, %bb.ey ] ; 2 uses
  %.731254 = phi ptr [ %i.aib, %bb.fb ], [ %.701251, %bb.ey ] ; 4 uses
  %.751164 = phi i64 [ %i.aig, %bb.fb ], [ %.721161, %bb.ey ]
  %.721080 = phi i32 [ %i.an, %bb.fb ], [ %.691077, %bb.ey ] ; 2 uses
  %.74993 = phi i32 [ %i.al, %bb.fb ], [ %.71990, %bb.ey ]
  %.70910 = phi i32 [ %i.aj, %bb.fb ], [ %.67907, %bb.ey ] ; 2 uses
  %.75 = phi i32 [ %i.aih, %bb.fb ], [ %.72, %bb.ey ]
  %.75.fr = freeze i32 %.75                       ; 2 uses
  %i.aii = and i32 %.75.fr, 7
  %i.aij = zext nneg i32 %i.aii to i64
  %i.aik = lshr i64 %.751164, %i.aij
  %i.ail = and i32 %.75.fr, -8                    ; 3 uses
  %i.aim = icmp ugt ptr %.731254, %1
  %i.ain = icmp ne i32 %i.ail, 0
  %i.aio = and i1 %i.aim, %i.ain
  br i1 %i.aio, label %.lr.ph1802.preheader, label %._crit_edge1803

.lr.ph1802.preheader:                             ; preds = %bb.fc
  %.7312541895 = ptrtoaddr ptr %.731254 to i64
  %i.aip = add i32 %i.ail, -8                     ; 2 uses
  %i.aiq = lshr exact i32 %i.aip, 3
  %i.air = zext nneg i32 %i.aiq to i64
  %i.ais = xor i64 %7, -1
  %i.ait = add i64 %i.ais, %.7312541895
  %umin = tail call i64 @llvm.umin.i64(i64 %i.air, i64 %i.ait) ; 2 uses
  %i.aiu = xor i64 %umin, -1
  %scevgep1896 = getelementptr i8, ptr %.731254, i64 %i.aiu
  %i.aiv = trunc nuw nsw i64 %umin to i32
  %i.aiw = shl nuw i32 %i.aiv, 3
  %i.aix = sub i32 %i.aip, %i.aiw
  br label %._crit_edge1803

._crit_edge1803:                                  ; preds = %.lr.ph1802.preheader, %bb.fc
  %.741255.lcssa = phi ptr [ %.731254, %bb.fc ], [ %scevgep1896, %.lr.ph1802.preheader ] ; 2 uses
  %.76.lcssa = phi i32 [ %i.ail, %bb.fc ], [ %i.aix, %.lr.ph1802.preheader ] ; 3 uses
  %i.aiy = zext nneg i32 %.76.lcssa to i64
  %i.aiz = shl nsw i64 -1, %i.aiy
  %i.aja = xor i64 %i.aiz, -1
  %i.ajb = and i64 %i.aik, %i.aja                 ; 2 uses
  %i.ajc = and i32 %6, 1
  %.not1598 = icmp eq i32 %i.ajc, 0
  br i1 %.not1598, label %bb.fo, label %bb.fd

bb.fd:                                            ; preds = %._crit_edge1803, %bb.fm
  %.681422 = phi i64 [ %.731427, %bb.fm ], [ %.671421, %._crit_edge1803 ] ; 4 uses
  %.731346 = phi ptr [ %.781351, %bb.fm ], [ %.721345, %._crit_edge1803 ] ; 4 uses
  %.751256 = phi ptr [ %.801261, %bb.fm ], [ %.741255.lcssa, %._crit_edge1803 ] ; 4 uses
  %.761165 = phi i64 [ %.811170, %bb.fm ], [ %i.ajb, %._crit_edge1803 ] ; 4 uses
  %.731081 = phi i32 [ %.781086, %bb.fm ], [ %.721080, %._crit_edge1803 ] ; 4 uses
  %.75994 = phi i32 [ %i.aka, %bb.fm ], [ 0, %._crit_edge1803 ] ; 5 uses
  %.71911 = phi i32 [ %.76916, %bb.fm ], [ %.70910, %._crit_edge1803 ] ; 4 uses
  %.77 = phi i32 [ %.82, %bb.fm ], [ %.76.lcssa, %._crit_edge1803 ] ; 5 uses
  %i.ajd = icmp ult i32 %.75994, 4
  br i1 %i.ajd, label %bb.fe, label %bb.fo

bb.fe:                                            ; preds = %bb.fd
  %.not1599 = icmp eq i32 %.77, 0
  br i1 %.not1599, label %bb.fj, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aje = icmp ult i32 %.77, 8
  br i1 %i.aje, label %.preheader2081, label %.loopexit2082

.preheader2081:                                   ; preds = %bb.g, %bb.ff
  %.701424.ph = phi i64 [ %.681422, %bb.ff ], [ %i.ap, %bb.g ] ; 2 uses
  %.751348.ph = phi ptr [ %.731346, %bb.ff ], [ %4, %bb.g ] ; 2 uses
  %.771258.ph = phi ptr [ %.751256, %bb.ff ], [ %1, %bb.g ]
  %.781167.ph = phi i64 [ %.761165, %bb.ff ], [ %i.ah, %bb.g ]
  %.751083.ph = phi i32 [ %.731081, %bb.ff ], [ %i.an, %bb.g ] ; 2 uses
  %.77996.ph = phi i32 [ %.75994, %bb.ff ], [ %i.al, %bb.g ] ; 2 uses
  %.73913.ph = phi i32 [ %.71911, %bb.ff ], [ %i.aj, %bb.g ] ; 2 uses
  %.79.ph = phi i32 [ %.77, %bb.ff ], [ %.84.fr2003, %bb.g ]
  br label %bb.fg

bb.fg:                                            ; preds = %.preheader2081, %bb.fi
  %.771258 = phi ptr [ %i.ajg, %bb.fi ], [ %.771258.ph, %.preheader2081 ] ; 4 uses
  %.781167 = phi i64 [ %i.ajl, %bb.fi ], [ %.781167.ph, %.preheader2081 ] ; 2 uses
  %.79 = phi i32 [ %i.ajm, %bb.fi ], [ %.79.ph, %.preheader2081 ] ; 4 uses
  %.not1602 = icmp ult ptr %.771258, %i.f
  br i1 %.not1602, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ajf = and i32 %6, 2
  %.not1603 = icmp eq i32 %i.ajf, 0
  store i32 41, ptr %0, align 8
  %spec.select1709 = select i1 %.not1603, i32 -4, i32 1
  br label %.thread1657

bb.fi:                                            ; preds = %bb.fg
  %i.ajg = getelementptr inbounds nuw i8, ptr %.771258, i64 1 ; 2 uses
  %i.ajh = load i8, ptr %.771258, align 1
  %i.aji = zext i8 %i.ajh to i64
  %i.ajj = zext nneg i32 %.79 to i64
  %i.ajk = shl i64 %i.aji, %i.ajj
  %i.ajl = or i64 %i.ajk, %.781167                ; 2 uses
  %i.ajm = add i32 %.79, 8                        ; 2 uses
  %i.ajn = icmp ugt i32 %.79, -9
  br i1 %i.ajn, label %bb.fg, label %.loopexit2082

.loopexit2082:                                    ; preds = %bb.fi, %bb.ff
  %.711425 = phi i64 [ %.681422, %bb.ff ], [ %.701424.ph, %bb.fi ]
  %.761349 = phi ptr [ %.731346, %bb.ff ], [ %.751348.ph, %bb.fi ]
  %.781259 = phi ptr [ %.751256, %bb.ff ], [ %i.ajg, %bb.fi ]
  %.791168 = phi i64 [ %.761165, %bb.ff ], [ %i.ajl, %bb.fi ] ; 2 uses
  %.761084 = phi i32 [ %.731081, %bb.ff ], [ %.751083.ph, %bb.fi ]
  %.78997 = phi i32 [ %.75994, %bb.ff ], [ %.77996.ph, %bb.fi ]
  %.74914 = phi i32 [ %.71911, %bb.ff ], [ %.73913.ph, %bb.fi ]
  %.80 = phi i32 [ %.77, %bb.ff ], [ %i.ajm, %bb.fi ]
  %i.ajo = trunc i64 %.791168 to i32
  %i.ajp = and i32 %i.ajo, 255
  %i.ajq = lshr i64 %.791168, 8
  %i.ajr = add i32 %.80, -8
  br label %bb.fm

bb.fj:                                            ; preds = %bb.g, %bb.fe
  %.721426 = phi i64 [ %.681422, %bb.fe ], [ %i.ap, %bb.g ] ; 2 uses
  %.771350 = phi ptr [ %.731346, %bb.fe ], [ %4, %bb.g ] ; 2 uses
  %.791260 = phi ptr [ %.751256, %bb.fe ], [ %1, %bb.g ] ; 4 uses
  %.801169 = phi i64 [ %.761165, %bb.fe ], [ %i.ah, %bb.g ] ; 2 uses
  %.771085 = phi i32 [ %.731081, %bb.fe ], [ %i.an, %bb.g ] ; 2 uses
  %.79998 = phi i32 [ %.75994, %bb.fe ], [ %i.al, %bb.g ] ; 2 uses
  %.75915 = phi i32 [ %.71911, %bb.fe ], [ %i.aj, %bb.g ] ; 2 uses
  %.81 = phi i32 [ 0, %bb.fe ], [ %.84.fr2003, %bb.g ] ; 2 uses
  %.not1600 = icmp ult ptr %.791260, %i.f
  br i1 %.not1600, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ajs = and i32 %6, 2
  %.not1601 = icmp eq i32 %i.ajs, 0
  store i32 42, ptr %0, align 8
  %spec.select1711 = select i1 %.not1601, i32 -4, i32 1
  br label %.thread1657

bb.fl:                                            ; preds = %bb.fj
  %i.ajt = getelementptr inbounds nuw i8, ptr %.791260, i64 1
  %i.aju = load i8, ptr %.791260, align 1
  %i.ajv = zext i8 %i.aju to i32
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %.loopexit2082
  %.731427 = phi i64 [ %.711425, %.loopexit2082 ], [ %.721426, %bb.fl ]
  %.781351 = phi ptr [ %.761349, %.loopexit2082 ], [ %.771350, %bb.fl ]
  %.801261 = phi ptr [ %.781259, %.loopexit2082 ], [ %i.ajt, %bb.fl ]
  %.811170 = phi i64 [ %i.ajq, %.loopexit2082 ], [ %.801169, %bb.fl ]
  %.781086 = phi i32 [ %.761084, %.loopexit2082 ], [ %.771085, %bb.fl ]
  %.80999 = phi i32 [ %.78997, %.loopexit2082 ], [ %.79998, %bb.fl ]
  %.76916 = phi i32 [ %.74914, %.loopexit2082 ], [ %.75915, %bb.fl ]
  %.82 = phi i32 [ %i.ajr, %.loopexit2082 ], [ %.81, %bb.fl ]
  %.0833 = phi i32 [ %i.ajp, %.loopexit2082 ], [ %i.ajv, %bb.fl ]
  %i.ajw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ajx = load i32, ptr %i.ajw, align 8
  %i.ajy = shl i32 %i.ajx, 8
  %i.ajz = or disjoint i32 %i.ajy, %.0833
  store i32 %i.ajz, ptr %i.ajw, align 8
  %i.aka = add i32 %.80999, 1
  br label %bb.fd

bb.fn:                                            ; preds = %bb.g
  br label %bb.fo

bb.fo:                                            ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.fd, %._crit_edge1803, %bb.et, %bb.eq, %bb.dl, %bb.cv, %bb.co, %._crit_edge1773, %.loopexit2175, %bb.au, %bb.ar, %bb.al, %bb.r, %bb.g, %bb.fn
  %.sink = phi i32 [ 53, %bb.et ], [ %i.aq, %bb.g ], [ 24, %bb.dl ], [ %i.aq, %bb.g ], [ %i.aq, %bb.g ], [ %i.aq, %bb.g ], [ %i.aq, %bb.g ], [ 9, %bb.au ], [ 52, %bb.ar ], [ %i.aq, %bb.fn ], [ 36, %bb.r ], [ %i.aq, %bb.g ], [ 39, %bb.al ], [ 10, %.loopexit2175 ], [ 35, %._crit_edge1773 ], [ 17, %bb.co ], [ 21, %bb.cv ], [ 37, %bb.eq ], [ 34, %._crit_edge1803 ], [ 34, %bb.fd ], [ %i.aq, %bb.g ]
  %.751429 = phi i64 [ %.631417, %bb.et ], [ %i.ap, %bb.g ], [ %.491403, %bb.dl ], [ %i.ap, %bb.g ], [ %i.ap, %bb.g ], [ %i.ap, %bb.g ], [ %i.ap, %bb.g ], [ %.201374, %bb.au ], [ %.181372, %bb.ar ], [ %i.ap, %bb.fn ], [ %i.ap, %bb.r ], [ %i.ap, %bb.g ], [ %.71361, %bb.al ], [ %.31357, %.loopexit2175 ], [ %.321386, %._crit_edge1773 ], [ %.371391, %bb.co ], [ %.341388, %bb.cv ], [ %i.afn, %bb.eq ], [ %.671421, %._crit_edge1803 ], [ %.681422, %bb.fd ], [ %i.ap, %bb.g ] ; 2 uses
  %.801353 = phi ptr [ %.661339, %bb.et ], [ %4, %bb.g ], [ %.491322, %bb.dl ], [ %4, %bb.g ], [ %4, %bb.g ], [ %4, %bb.g ], [ %4, %bb.g ], [ %.201293, %bb.au ], [ %.181291, %bb.ar ], [ %4, %bb.fn ], [ %4, %bb.r ], [ %4, %bb.g ], [ %.71280, %bb.al ], [ %.31276, %.loopexit2175 ], [ %.321305, %._crit_edge1773 ], [ %.371310, %bb.co ], [ %.341307, %bb.cv ], [ %.631336, %bb.eq ], [ %.721345, %._crit_edge1803 ], [ %.731346, %bb.fd ], [ %4, %bb.g ] ; 2 uses
  %.821263 = phi ptr [ %.691250, %bb.et ], [ %1, %bb.g ], [ %.521233, %bb.dl ], [ %1, %bb.g ], [ %1, %bb.g ], [ %1, %bb.g ], [ %1, %bb.g ], [ %.231204, %bb.au ], [ %.211202, %bb.ar ], [ %1, %bb.fn ], [ %i.bc, %bb.r ], [ %1, %bb.g ], [ %.101191, %bb.al ], [ %.61187, %.loopexit2175 ], [ %.351216, %._crit_edge1773 ], [ %.401221, %bb.co ], [ %.371218, %bb.cv ], [ %.661247, %bb.eq ], [ %.741255.lcssa, %._crit_edge1803 ], [ %.751256, %bb.fd ], [ %1, %bb.g ] ; 4 uses
  %.831172 = phi i64 [ %.711160, %bb.et ], [ %i.ah, %bb.g ], [ %.531142, %bb.dl ], [ %i.ah, %bb.g ], [ %i.ah, %bb.g ], [ %i.ah, %bb.g ], [ %i.ah, %bb.g ], [ %.241113, %bb.au ], [ %.221111, %bb.ar ], [ %i.ah, %bb.fn ], [ %.11090, %bb.r ], [ %i.ah, %bb.g ], [ %.111100, %bb.al ], [ %i.cs, %.loopexit2175 ], [ %.361125, %._crit_edge1773 ], [ %i.tc, %bb.co ], [ %.381127, %bb.cv ], [ %.681157, %bb.eq ], [ %i.ajb, %._crit_edge1803 ], [ %.761165, %bb.fd ], [ %i.ah, %bb.g ] ; 2 uses
  %.801088 = phi i32 [ %.681076, %bb.et ], [ %i.an, %bb.g ], [ %.531061, %bb.dl ], [ %i.an, %bb.g ], [ %i.an, %bb.g ], [ %i.an, %bb.g ], [ %i.an, %bb.g ], [ %.241032, %bb.au ], [ %.221030, %bb.ar ], [ %i.an, %bb.fn ], [ %.11009, %bb.r ], [ %i.an, %bb.g ], [ %.111019, %bb.al ], [ %.71015, %.loopexit2175 ], [ %.361044, %._crit_edge1773 ], [ %.411049, %bb.co ], [ %.381046, %bb.cv ], [ %.651073, %bb.eq ], [ %.721080, %._crit_edge1803 ], [ %.731081, %bb.fd ], [ %i.an, %bb.g ] ; 2 uses
  %.821001 = phi i32 [ %.69988, %bb.et ], [ %i.al, %bb.g ], [ %.52971, %bb.dl ], [ %i.al, %bb.g ], [ %i.al, %bb.g ], [ %i.al, %bb.g ], [ %i.al, %bb.g ], [ %.24943, %bb.au ], [ %.22941, %bb.ar ], [ %i.al, %bb.fn ], [ 1, %bb.r ], [ %i.al, %bb.g ], [ %i.ei, %bb.al ], [ %.8927, %.loopexit2175 ], [ %.36955, %._crit_edge1773 ], [ 0, %bb.co ], [ %.38957, %bb.cv ], [ %.66985, %bb.eq ], [ %.74993, %._crit_edge1803 ], [ %.75994, %bb.fd ], [ %i.al, %bb.g ] ; 2 uses
  %.78918 = phi i32 [ %.66906, %bb.et ], [ %i.aj, %bb.g ], [ %.51891, %bb.dl ], [ %i.aj, %bb.g ], [ %i.aj, %bb.g ], [ %i.aj, %bb.g ], [ %i.aj, %bb.g ], [ %.23863, %bb.au ], [ %.21861, %bb.ar ], [ %i.aj, %bb.fn ], [ %.1841, %bb.r ], [ %i.aj, %bb.g ], [ %.11851, %bb.al ], [ %.7847, %.loopexit2175 ], [ %.35875, %._crit_edge1773 ], [ 16, %bb.co ], [ %.37877, %bb.cv ], [ %.63903, %bb.eq ], [ %.70910, %._crit_edge1803 ], [ %.71911, %bb.fd ], [ %i.aj, %bb.g ] ; 2 uses
  %.84 = phi i32 [ %.71, %bb.et ], [ %.84.fr2003, %bb.g ], [ %.53, %bb.dl ], [ %.84.fr2003, %bb.g ], [ %.84.fr2003, %bb.g ], [ %.84.fr2003, %bb.g ], [ %.84.fr2003, %bb.g ], [ %.24, %bb.au ], [ %.22, %bb.ar ], [ %.84.fr2003, %bb.fn ], [ %.1838, %bb.r ], [ %.84.fr2003, %bb.g ], [ %.11, %bb.al ], [ %i.ct, %.loopexit2175 ], [ %.36, %._crit_edge1773 ], [ %i.td, %bb.co ], [ %.38, %bb.cv ], [ %.68, %bb.eq ], [ %.76.lcssa, %._crit_edge1803 ], [ %.77, %bb.fd ], [ %.84.fr2003, %bb.g ]
  %.0834 = phi i32 [ 2, %bb.et ], [ -1, %bb.g ], [ 2, %bb.dl ], [ -1, %bb.g ], [ -1, %bb.g ], [ -1, %bb.g ], [ -1, %bb.g ], [ 2, %bb.au ], [ 2, %bb.ar ], [ 0, %bb.fn ], [ -1, %bb.r ], [ -1, %bb.g ], [ -1, %bb.al ], [ -1, %.loopexit2175 ], [ -1, %._crit_edge1773 ], [ -1, %bb.co ], [ -1, %bb.cv ], [ -1, %bb.eq ], [ 0, %._crit_edge1803 ], [ 0, %bb.fd ], [ -1, %bb.g ] ; 2 uses
  store i32 %.sink, ptr %0, align 8
  %.84.fr = freeze i32 %.84                       ; 3 uses
  %i.akb = icmp ugt ptr %.821263, %1
  %i.akc = icmp ugt i32 %.84.fr, 7
  %i.akd = and i1 %i.akb, %i.akc
  br i1 %i.akd, label %.lr.ph1809.preheader, label %.thread1657

.lr.ph1809.preheader:                             ; preds = %bb.fo
  %.8212631897 = ptrtoaddr ptr %.821263 to i64
  %i.ake = add i32 %.84.fr, -8                    ; 2 uses
  %i.akf = lshr i32 %i.ake, 3
  %i.akg = zext nneg i32 %i.akf to i64
  %i.akh = xor i64 %7, -1
  %i.aki = add i64 %i.akh, %.8212631897
  %umin1898 = tail call i64 @llvm.umin.i64(i64 %i.akg, i64 %i.aki) ; 2 uses
  %i.akj = xor i64 %umin1898, -1
  %scevgep1899 = getelementptr i8, ptr %.821263, i64 %i.akj
  %i.akk = trunc nuw nsw i64 %umin1898 to i32
  %i.akl = shl nuw i32 %i.akk, 3
  %i.akm = sub i32 %i.ake, %i.akl
  br label %.thread1657

.thread1657:                                      ; preds = %bb.g, %.lr.ph1809.preheader, %bb.fo, %bb.fk, %bb.fh, %bb.fa, %bb.eo, %bb.eh, %bb.dy, %bb.dg, %bb.cr, %bb.ci, %bb.bg, %bb.bb, %bb.aw, %bb.ap, %bb.ai, %bb.af, %bb.y, %bb.t, %bb.m, %bb.j
  %.08341674 = phi i32 [ %spec.select1675, %bb.j ], [ %spec.select1699, %bb.dg ], [ %spec.select1695, %bb.ci ], [ %spec.select1703, %bb.eh ], [ %spec.select1705, %bb.eo ], [ %spec.select1701, %bb.dy ], [ %spec.select1693, %bb.bg ], [ %spec.select1697, %bb.cr ], [ %spec.select1711, %bb.fk ], [ %spec.select1691, %bb.bb ], [ %spec.select1707, %bb.fa ], [ %spec.select1689, %bb.aw ], [ %spec.select1687, %bb.ap ], [ %spec.select1685, %bb.ai ], [ %spec.select1683, %bb.af ], [ %spec.select1681, %bb.y ], [ %spec.select1679, %bb.t ], [ %spec.select1677, %bb.m ], [ %spec.select1709, %bb.fh ], [ %.0834, %bb.fo ], [ %.0834, %.lr.ph1809.preheader ], [ -1, %bb.g ] ; 4 uses
  %.789181672 = phi i32 [ %.0840, %bb.j ], [ %.49889, %bb.dg ], [ %.39879, %bb.ci ], [ %.59899, %bb.eh ], [ %.61901.ph, %bb.eo ], [ %.55895.ph, %bb.dy ], [ %.32872.ph, %bb.bg ], [ %.42882.ph, %bb.cr ], [ %.75915, %bb.fk ], [ %.28868.ph, %bb.bb ], [ %i.aj, %bb.fa ], [ %.24864, %bb.aw ], [ %.20860.ph, %bb.ap ], [ %.15855, %bb.ai ], [ %.13853.ph, %bb.af ], [ %i.aj, %bb.y ], [ %.6846.ph, %bb.t ], [ %.1841, %bb.m ], [ %.73913.ph, %bb.fh ], [ %.78918, %bb.fo ], [ %.78918, %.lr.ph1809.preheader ], [ %i.aj, %bb.g ]
  %.8210011671 = phi i32 [ %.0919, %bb.j ], [ %.51970, %bb.dg ], [ %.40959, %bb.ci ], [ %.61980, %bb.eh ], [ %.64983.ph, %bb.eo ], [ %.57976.ph, %bb.dy ], [ %.33952.ph, %bb.bg ], [ %.44963.ph, %bb.cr ], [ %.79998, %bb.fk ], [ %.29948.ph, %bb.bb ], [ %i.al, %bb.fa ], [ %.25944, %bb.aw ], [ %.20939.ph, %bb.ap ], [ %.15934, %bb.ai ], [ %.13932.ph, %bb.af ], [ %i.al, %bb.y ], [ %.7926.ph, %bb.t ], [ %.1920, %bb.m ], [ %.77996.ph, %bb.fh ], [ %.821001, %bb.fo ], [ %.821001, %.lr.ph1809.preheader ], [ %i.al, %bb.g ]
  %.8010881670 = phi i32 [ %.01008, %bb.j ], [ %.511059, %bb.dg ], [ %.401048, %bb.ci ], [ %.611069, %bb.eh ], [ %.631071.ph, %bb.eo ], [ %.571065.ph, %bb.dy ], [ %.331041.ph, %bb.bg ], [ %.441052.ph, %bb.cr ], [ %.771085, %bb.fk ], [ %.291037.ph, %bb.bb ], [ %i.an, %bb.fa ], [ %.251033, %bb.aw ], [ %.201028.ph, %bb.ap ], [ %.151023, %bb.ai ], [ %.131021.ph, %bb.af ], [ %i.an, %bb.y ], [ %.61014.ph, %bb.t ], [ %.11009, %bb.m ], [ %.751083.ph, %bb.fh ], [ %.801088, %bb.fo ], [ %.801088, %.lr.ph1809.preheader ], [ %i.an, %bb.g ]
  %.8311721669 = phi i64 [ %.01089, %bb.j ], [ %.511140, %bb.dg ], [ %.401129, %bb.ci ], [ %.631152, %bb.eh ], [ %.661155, %bb.eo ], [ %.591148, %bb.dy ], [ %.331122.lcssa, %bb.bg ], [ %.441133, %bb.cr ], [ %.801169, %bb.fk ], [ %.291118, %bb.bb ], [ %i.ah, %bb.fa ], [ %.251114, %bb.aw ], [ %.201109, %bb.ap ], [ %.151104, %bb.ai ], [ %.131102, %bb.af ], [ %i.ah, %bb.y ], [ %.61095.lcssa, %bb.t ], [ %.11090, %bb.m ], [ %.781167, %bb.fh ], [ %.831172, %bb.fo ], [ %.831172, %.lr.ph1809.preheader ], [ %i.ah, %bb.g ]
  %.8013531668 = phi ptr [ %4, %bb.j ], [ %.471320, %bb.dg ], [ %.361309, %bb.ci ], [ %.581331, %bb.eh ], [ %.611334.ph, %bb.eo ], [ %.541327.ph, %bb.dy ], [ %.291302.ph, %bb.bg ], [ %.401313.ph, %bb.cr ], [ %.771350, %bb.fk ], [ %.251298.ph, %bb.bb ], [ %4, %bb.fa ], [ %.211294, %bb.aw ], [ %.161289.ph, %bb.ap ], [ %.111284, %bb.ai ], [ %.91282.ph, %bb.af ], [ %4, %bb.y ], [ %.21275.ph, %bb.t ], [ %4, %bb.m ], [ %.751348.ph, %bb.fh ], [ %.801353, %bb.fo ], [ %.801353, %.lr.ph1809.preheader ], [ %4, %bb.g ]
  %.7514291667 = phi i64 [ %i.ap, %bb.j ], [ %.471401, %bb.dg ], [ %.361390, %bb.ci ], [ %.571411, %bb.eh ], [ %.601414.ph, %bb.eo ], [ %.531407.ph, %bb.dy ], [ %.291383.ph, %bb.bg ], [ %.401394.ph, %bb.cr ], [ %.721426, %bb.fk ], [ %.251379.ph, %bb.bb ], [ %i.ap, %bb.fa ], [ %.211375, %bb.aw ], [ %.161370.ph, %bb.ap ], [ %.111365, %bb.ai ], [ %.91363.ph, %bb.af ], [ %i.ap, %bb.y ], [ %.21356.ph, %bb.t ], [ %i.ap, %bb.m ], [ %.701424.ph, %bb.fh ], [ %.751429, %bb.fo ], [ %.751429, %.lr.ph1809.preheader ], [ %i.ap, %bb.g ]
  %.841265 = phi ptr [ %1, %bb.j ], [ %.501231, %bb.dg ], [ %.391220, %bb.ci ], [ %.611242, %bb.eh ], [ %.641245, %bb.eo ], [ %.571238, %bb.dy ], [ %.321213.lcssa, %bb.bg ], [ %.431224, %bb.cr ], [ %.791260, %bb.fk ], [ %.281209, %bb.bb ], [ %1, %bb.fa ], [ %.241205, %bb.aw ], [ %.191200, %bb.ap ], [ %.141195, %bb.ai ], [ %.121193, %bb.af ], [ %1, %bb.y ], [ %.51186.lcssa, %bb.t ], [ %.01181, %bb.m ], [ %.771258, %bb.fh ], [ %.821263, %bb.fo ], [ %scevgep1899, %.lr.ph1809.preheader ], [ %1, %bb.g ]
  %.86 = phi i32 [ %.0837, %bb.j ], [ %.51, %bb.dg ], [ %.40, %bb.ci ], [ %.63, %bb.eh ], [ %.66, %bb.eo ], [ %.59, %bb.dy ], [ %.33.lcssa, %bb.bg ], [ %.44, %bb.cr ], [ %.81, %bb.fk ], [ %.29, %bb.bb ], [ %.84.fr2003, %bb.fa ], [ %.25, %bb.aw ], [ %.20, %bb.ap ], [ %.15, %bb.ai ], [ %.13, %bb.af ], [ %.84.fr2003, %bb.y ], [ %.6.lcssa, %bb.t ], [ %.1838, %bb.m ], [ %.79, %bb.fh ], [ %.84.fr, %bb.fo ], [ %i.akm, %.lr.ph1809.preheader ], [ %.84.fr2003, %bb.g ] ; 2 uses
  store i32 %.86, ptr %i.ae, align 4
  %i.akn = zext nneg i32 %.86 to i64
  %i.ako = shl nsw i64 -1, %i.akn
  %i.akp = xor i64 %i.ako, -1
  %i.akq = and i64 %.8311721669, %i.akp
  store i64 %i.akq, ptr %i.ag, align 8
  store i32 %.789181672, ptr %i.ai, align 8
  store i32 %.8210011671, ptr %i.ak, align 4
  store i32 %.8010881670, ptr %i.am, align 8
  store i64 %.7514291667, ptr %i.ao, align 8
  %8 = ptrtoint ptr %.841265 to i64
  %i.akr = ptrtoint ptr %1 to i64
  %i.aks = sub i64 %8, %i.akr
  store i64 %i.aks, ptr %2, align 8
  %i.akt = ptrtoint ptr %.8013531668 to i64
  %i.aku = ptrtoint ptr %4 to i64
  %i.akv = sub i64 %i.akt, %i.aku                 ; 4 uses
  store i64 %i.akv, ptr %5, align 8
  %i.akw = and i32 %6, 9
  %i.akx = icmp ne i32 %i.akw, 0
  %i.aky = icmp sgt i32 %.08341674, -1
  %or.cond9 = and i1 %i.akx, %i.aky
  br i1 %or.cond9, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %.thread1657
  %i.akz = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ala = load i32, ptr %i.akz, align 4          ; 2 uses
  %i.alb = and i32 %i.ala, 65535                  ; 2 uses
  %i.alc = lshr i32 %i.ala, 16                    ; 2 uses
  %.not16181830 = icmp eq i64 %i.akv, 0
  br i1 %.not16181830, label %._crit_edge1836, label %.preheader1717.preheader

.preheader1717.preheader:                         ; preds = %bb.fp
  %i.ald = urem i64 %i.akv, 5552
  br label %.preheader1717

.preheader1717:                                   ; preds = %.preheader1717.preheader, %._crit_edge1826
  %.01835 = phi i64 [ 5552, %._crit_edge1826 ], [ %i.ald, %.preheader1717.preheader ] ; 8 uses
  %.08221834 = phi i32 [ %i.aod, %._crit_edge1826 ], [ %i.alc, %.preheader1717.preheader ] ; 2 uses
  %.08231833 = phi i32 [ %i.aoc, %._crit_edge1826 ], [ %i.alb, %.preheader1717.preheader ] ; 2 uses
  %.08281832 = phi i64 [ %i.aoe, %._crit_edge1826 ], [ %i.akv, %.preheader1717.preheader ]
  %.08291831 = phi ptr [ %.2831.lcssa, %._crit_edge1826 ], [ %4, %.preheader1717.preheader ] ; 2 uses
  %i.ale = icmp samesign ugt i64 %.01835, 7
  br i1 %i.ale, label %.lr.ph1816.preheader, label %.preheader

.lr.ph1816.preheader:                             ; preds = %.preheader1717
  %i.alf = trunc nuw nsw i64 %.01835 to i32
  br label %.lr.ph1816

.preheader.loopexit:                              ; preds = %.lr.ph1816
  %i.alg = zext nneg i32 %i.and to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader1717
  %.1830.lcssa = phi ptr [ %.08291831, %.preheader1717 ], [ %i.ane, %.preheader.loopexit ] ; 4 uses
  %.0826.lcssa = phi i64 [ 0, %.preheader1717 ], [ %i.alg, %.preheader.loopexit ] ; 6 uses
  %.1824.lcssa = phi i32 [ %.08231833, %.preheader1717 ], [ %i.anb, %.preheader.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.08221834, %.preheader1717 ], [ %i.anc, %.preheader.loopexit ] ; 3 uses
  %i.alh = icmp samesign ugt i64 %.01835, %.0826.lcssa
  br i1 %i.alh, label %.lr.ph1825.preheader, label %._crit_edge1826

.lr.ph1825.preheader:                             ; preds = %.preheader
  %i.ali = sub nuw nsw i64 %.01835, %.0826.lcssa
  %xtraiter2194 = and i64 %i.ali, 3               ; 2 uses
  %lcmp.mod2195.not = icmp eq i64 %xtraiter2194, 0
  br i1 %lcmp.mod2195.not, label %.lr.ph1825.prol.loopexit, label %.lr.ph1825.prol

.lr.ph1825.prol:                                  ; preds = %.lr.ph1825.preheader, %.lr.ph1825.prol
  %indvars.iv1900.prol = phi i64 [ %indvars.iv.next1901.prol, %.lr.ph1825.prol ], [ %.0826.lcssa, %.lr.ph1825.preheader ]
  %.21824.prol = phi i32 [ %i.aln, %.lr.ph1825.prol ], [ %.1.lcssa, %.lr.ph1825.preheader ]
  %.28251823.prol = phi i32 [ %i.alm, %.lr.ph1825.prol ], [ %.1824.lcssa, %.lr.ph1825.preheader ]
  %.28311821.prol = phi ptr [ %i.alj, %.lr.ph1825.prol ], [ %.1830.lcssa, %.lr.ph1825.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1825.prol ], [ 0, %.lr.ph1825.preheader ]
  %i.alj = getelementptr inbounds nuw i8, ptr %.28311821.prol, i64 1 ; 2 uses
  %i.alk = load i8, ptr %.28311821.prol, align 1
  %i.all = zext i8 %i.alk to i32
  %i.alm = add i32 %.28251823.prol, %i.all        ; 4 uses
  %i.aln = add i32 %i.alm, %.21824.prol           ; 3 uses
  %indvars.iv.next1901.prol = add nuw nsw i64 %indvars.iv1900.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2194
  br i1 %prol.iter.cmp.not, label %.lr.ph1825.prol.loopexit, label %.lr.ph1825.prol, !llvm.loop !10

.lr.ph1825.prol.loopexit:                         ; preds = %.lr.ph1825.prol, %.lr.ph1825.preheader
  %.lcssa2062.unr = phi i32 [ poison, %.lr.ph1825.preheader ], [ %i.alm, %.lr.ph1825.prol ]
  %.lcssa2061.unr = phi i32 [ poison, %.lr.ph1825.preheader ], [ %i.aln, %.lr.ph1825.prol ]
  %indvars.iv1900.unr = phi i64 [ %.0826.lcssa, %.lr.ph1825.preheader ], [ %indvars.iv.next1901.prol, %.lr.ph1825.prol ]
  %.21824.unr = phi i32 [ %.1.lcssa, %.lr.ph1825.preheader ], [ %i.aln, %.lr.ph1825.prol ]
  %.28251823.unr = phi i32 [ %.1824.lcssa, %.lr.ph1825.preheader ], [ %i.alm, %.lr.ph1825.prol ]
  %.28311821.unr = phi ptr [ %.1830.lcssa, %.lr.ph1825.preheader ], [ %i.alj, %.lr.ph1825.prol ]
  %i.alo = sub nsw i64 %.0826.lcssa, %.01835
  %i.alp = icmp ugt i64 %i.alo, -4
  br i1 %i.alp, label %._crit_edge1826.loopexit, label %.lr.ph1825

.lr.ph1816:                                       ; preds = %.lr.ph1816.preheader, %.lr.ph1816
  %.11815 = phi i32 [ %i.anc, %.lr.ph1816 ], [ %.08221834, %.lr.ph1816.preheader ]
  %.18241814 = phi i32 [ %i.anb, %.lr.ph1816 ], [ %.08231833, %.lr.ph1816.preheader ]
  %.08261813 = phi i32 [ %i.and, %.lr.ph1816 ], [ 0, %.lr.ph1816.preheader ]
  %.18301812 = phi ptr [ %i.ane, %.lr.ph1816 ], [ %.08291831, %.lr.ph1816.preheader ] ; 9 uses
  %i.alq = load i8, ptr %.18301812, align 1
  %i.alr = zext i8 %i.alq to i32
  %i.als = add i32 %.18241814, %i.alr             ; 2 uses
  %i.alt = add i32 %i.als, %.11815
  %i.alu = getelementptr inbounds nuw i8, ptr %.18301812, i64 1
  %i.alv = load i8, ptr %i.alu, align 1
  %i.alw = zext i8 %i.alv to i32
  %i.alx = add i32 %i.als, %i.alw                 ; 2 uses
  %i.aly = add i32 %i.alt, %i.alx
  %i.alz = getelementptr inbounds nuw i8, ptr %.18301812, i64 2
  %i.ama = load i8, ptr %i.alz, align 1
  %i.amb = zext i8 %i.ama to i32
  %i.amc = add i32 %i.alx, %i.amb                 ; 2 uses
  %i.amd = add i32 %i.aly, %i.amc
  %i.ame = getelementptr inbounds nuw i8, ptr %.18301812, i64 3
  %i.amf = load i8, ptr %i.ame, align 1
  %i.amg = zext i8 %i.amf to i32
  %i.amh = add i32 %i.amc, %i.amg                 ; 2 uses
  %i.ami = add i32 %i.amd, %i.amh
  %i.amj = getelementptr inbounds nuw i8, ptr %.18301812, i64 4
  %i.amk = load i8, ptr %i.amj, align 1
  %i.aml = zext i8 %i.amk to i32
  %i.amm = add i32 %i.amh, %i.aml                 ; 2 uses
  %i.amn = add i32 %i.ami, %i.amm
  %i.amo = getelementptr inbounds nuw i8, ptr %.18301812, i64 5
  %i.amp = load i8, ptr %i.amo, align 1
  %i.amq = zext i8 %i.amp to i32
  %i.amr = add i32 %i.amm, %i.amq                 ; 2 uses
  %i.ams = add i32 %i.amn, %i.amr
  %i.amt = getelementptr inbounds nuw i8, ptr %.18301812, i64 6
  %i.amu = load i8, ptr %i.amt, align 1
  %i.amv = zext i8 %i.amu to i32
  %i.amw = add i32 %i.amr, %i.amv                 ; 2 uses
  %i.amx = add i32 %i.ams, %i.amw
  %i.amy = getelementptr inbounds nuw i8, ptr %.18301812, i64 7
  %i.amz = load i8, ptr %i.amy, align 1
  %i.ana = zext i8 %i.amz to i32
  %i.anb = add i32 %i.amw, %i.ana                 ; 3 uses
  %i.anc = add i32 %i.amx, %i.anb                 ; 2 uses
  %i.and = add nuw nsw i32 %.08261813, 8          ; 3 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %.18301812, i64 8 ; 2 uses
  %i.anf = or disjoint i32 %i.and, 7
  %i.ang = icmp samesign ult i32 %i.anf, %i.alf
  br i1 %i.ang, label %.lr.ph1816, label %.preheader.loopexit

.lr.ph1825:                                       ; preds = %.lr.ph1825.prol.loopexit, %.lr.ph1825
  %indvars.iv1900 = phi i64 [ %indvars.iv.next1901.3, %.lr.ph1825 ], [ %indvars.iv1900.unr, %.lr.ph1825.prol.loopexit ]
  %.21824 = phi i32 [ %i.aoa, %.lr.ph1825 ], [ %.21824.unr, %.lr.ph1825.prol.loopexit ]
  %.28251823 = phi i32 [ %i.anz, %.lr.ph1825 ], [ %.28251823.unr, %.lr.ph1825.prol.loopexit ]
  %.28311821 = phi ptr [ %i.anw, %.lr.ph1825 ], [ %.28311821.unr, %.lr.ph1825.prol.loopexit ] ; 5 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %.28311821, i64 1
  %i.ani = load i8, ptr %.28311821, align 1
  %i.anj = zext i8 %i.ani to i32
  %i.ank = add i32 %.28251823, %i.anj             ; 2 uses
  %i.anl = add i32 %i.ank, %.21824
  %i.anm = getelementptr inbounds nuw i8, ptr %.28311821, i64 2
  %i.ann = load i8, ptr %i.anh, align 1
  %i.ano = zext i8 %i.ann to i32
  %i.anp = add i32 %i.ank, %i.ano                 ; 2 uses
  %i.anq = add i32 %i.anp, %i.anl
  %i.anr = getelementptr inbounds nuw i8, ptr %.28311821, i64 3
  %i.ans = load i8, ptr %i.anm, align 1
  %i.ant = zext i8 %i.ans to i32
  %i.anu = add i32 %i.anp, %i.ant                 ; 2 uses
  %i.anv = add i32 %i.anu, %i.anq
  %i.anw = getelementptr inbounds nuw i8, ptr %.28311821, i64 4
  %i.anx = load i8, ptr %i.anr, align 1
  %i.any = zext i8 %i.anx to i32
  %i.anz = add i32 %i.anu, %i.any                 ; 3 uses
  %i.aoa = add i32 %i.anz, %i.anv                 ; 2 uses
  %indvars.iv.next1901.3 = add nuw nsw i64 %indvars.iv1900, 4 ; 2 uses
  %exitcond1904.not.3 = icmp eq i64 %indvars.iv.next1901.3, %.01835
  br i1 %exitcond1904.not.3, label %._crit_edge1826.loopexit, label %.lr.ph1825

._crit_edge1826.loopexit:                         ; preds = %.lr.ph1825, %.lr.ph1825.prol.loopexit
  %.lcssa2062 = phi i32 [ %.lcssa2062.unr, %.lr.ph1825.prol.loopexit ], [ %i.anz, %.lr.ph1825 ]
  %.lcssa2061 = phi i32 [ %.lcssa2061.unr, %.lr.ph1825.prol.loopexit ], [ %i.aoa, %.lr.ph1825 ]
  %i.aob = sub nsw i64 %.01835, %.0826.lcssa
  %scevgep1902 = getelementptr i8, ptr %.1830.lcssa, i64 %i.aob
  br label %._crit_edge1826

._crit_edge1826:                                  ; preds = %._crit_edge1826.loopexit, %.preheader
  %.2831.lcssa = phi ptr [ %.1830.lcssa, %.preheader ], [ %scevgep1902, %._crit_edge1826.loopexit ]
  %.2825.lcssa = phi i32 [ %.1824.lcssa, %.preheader ], [ %.lcssa2062, %._crit_edge1826.loopexit ]
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader ], [ %.lcssa2061, %._crit_edge1826.loopexit ]
  %i.aoc = urem i32 %.2825.lcssa, 65521           ; 2 uses
  %i.aod = urem i32 %.2.lcssa, 65521              ; 2 uses
  %i.aoe = sub i64 %.08281832, %.01835            ; 2 uses
  %.not1618 = icmp eq i64 %i.aoe, 0
  br i1 %.not1618, label %._crit_edge1836, label %.preheader1717

._crit_edge1836:                                  ; preds = %._crit_edge1826, %bb.fp
  %.0823.lcssa = phi i32 [ %i.alb, %bb.fp ], [ %i.aoc, %._crit_edge1826 ]
  %.0822.lcssa = phi i32 [ %i.alc, %bb.fp ], [ %i.aod, %._crit_edge1826 ]
  %i.aof = shl nuw i32 %.0822.lcssa, 16
  %i.aog = or disjoint i32 %i.aof, %.0823.lcssa   ; 2 uses
  store i32 %i.aog, ptr %i.akz, align 4
  %i.aoh = icmp eq i32 %.08341674, 0
  br i1 %i.aoh, label %bb.fq, label %bb.fs

bb.fq:                                            ; preds = %._crit_edge1836
  %i.aoi = and i32 %6, 1
  %.not1619 = icmp eq i32 %i.aoi, 0
  br i1 %.not1619, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aoj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aok = load i32, ptr %i.aoj, align 8
  %.not1620 = icmp eq i32 %i.aog, %i.aok
  %spec.select = select i1 %.not1620, i32 0, i32 -2
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %.thread1657, %bb.fq, %._crit_edge1836, %bb.f
  %.0832 = phi i32 [ -3, %bb.f ], [ %.08341674, %.thread1657 ], [ %.08341674, %._crit_edge1836 ], [ %spec.select, %bb.fr ], [ 0, %bb.fq ]
end_hunk_1
