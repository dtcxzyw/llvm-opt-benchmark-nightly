inline.NumInlined: 93
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN12duckdb_miniz10mz_inflateEPNS_11mz_stream_sEi:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.as, ptr %i.at, align 8, !tbaa !21
  %i.au = load i64, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.aw = and i64 %i.au, 4294967295               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  store ptr %i.ax, ptr %i.ad, align 8, !tbaa !46
  %i.ay = trunc i64 %i.au to i32
  %i.az = load i32, ptr %i.z, align 8, !tbaa !47
  %i.ba = sub i32 %i.az, %i.ay
  store i32 %i.ba, ptr %i.z, align 8, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !45
  %i.bd = add i64 %i.bc, %i.aw
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !45
  %i.be = icmp slt i32 %i.af, 0
  br i1 %i.be, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not139 = icmp eq i32 %i.af, 0
  br i1 %.not139, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 -1, ptr %i.n, align 4, !tbaa !72
  br label %.loopexit

bb.j:                                             ; preds = %bb.f
  %i.bf = or disjoint i32 %spec.select, 2
  %spec.select140 = select i1 %i.f, i32 %i.bf, i32 %spec.select
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 11004 ; 6 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !78 ; 2 uses
  %.not131 = icmp eq i32 %i.bh, 0
  br i1 %.not131, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 11000 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 11020 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bq = icmp ne i32 %i.k, 0
  %.pre152 = load i32, ptr %i.bi, align 8, !tbaa !79
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !47
  %. = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.bs) ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 11020
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 11000 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !79
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.by
  %i.ca = zext i32 %. to i64                      ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr nonnull align 1 %i.bz, i64 %i.ca, i1 false)
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !46
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  store ptr %i.cc, ptr %i.bt, align 8, !tbaa !46
  %i.cd = load i32, ptr %i.br, align 8, !tbaa !47
  %i.ce = sub i32 %i.cd, %.
  store i32 %i.ce, ptr %i.br, align 8, !tbaa !47
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !45
  %i.ch = add i64 %i.cg, %i.ca
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !45
  %i.ci = load i32, ptr %i.bg, align 4, !tbaa !78 ; 2 uses
  %i.cj = sub i32 %i.ci, %.
  store i32 %i.cj, ptr %i.bg, align 4, !tbaa !78
  %i.ck = load i32, ptr %i.bw, align 8, !tbaa !79
  %i.cl = add i32 %i.ck, %.
  %i.cm = and i32 %i.cl, 32767
  store i32 %i.cm, ptr %i.bw, align 8, !tbaa !79
  %i.cn = load i32, ptr %i.n, align 4, !tbaa !72
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %.not138 = icmp eq i32 %i.ci, %.
  %i.cp = zext i1 %.not138 to i32
  br label %.loopexit

bb.m:                                             ; preds = %.backedge, %.preheader
  %i.cq = phi i32 [ %.pre152, %.preheader ], [ %i.ec, %.backedge ] ; 2 uses
  %i.cr = phi i32 [ %i.k, %.preheader ], [ %.be, %.backedge ]
  %i.cs = zext i32 %i.cr to i64
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !50
  %i.ct = sub i32 32768, %i.cq
  %i.cu = zext i32 %i.ct to i64
  store i64 %i.cu, ptr %i.b, align 8, !tbaa !50
  %i.cv = load ptr, ptr %0, align 8, !tbaa !49
  %i.cw = zext i32 %i.cq to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cw
  %i.cy = call noundef i32 @_ZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_j(ptr noundef nonnull %i.d, ptr noundef %i.cv, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.b, i32 noundef %spec.select140) ; 4 uses
  store i32 %i.cy, ptr %i.n, align 4, !tbaa !72
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !50  ; 2 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !49
  %i.db = and i64 %i.cz, 4294967295               ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.db
  store ptr %i.dc, ptr %0, align 8, !tbaa !49
  %i.dd = trunc i64 %i.cz to i32
  %i.de = load i32, ptr %i.j, align 8, !tbaa !48
  %i.df = sub i32 %i.de, %i.dd
  store i32 %i.df, ptr %i.j, align 8, !tbaa !48
  %i.dg = load i64, ptr %i.bk, align 8, !tbaa !23
  %i.dh = add i64 %i.dg, %i.db
  store i64 %i.dh, ptr %i.bk, align 8, !tbaa !23
  %i.di = load i32, ptr %i.bl, align 4, !tbaa !77
  %i.dj = zext i32 %i.di to i64
  store i64 %i.dj, ptr %i.bm, align 8, !tbaa !21
  %i.dk = load i64, ptr %i.b, align 8, !tbaa !50
  %i.dl = trunc i64 %i.dk to i32                  ; 2 uses
  store i32 %i.dl, ptr %i.bg, align 4, !tbaa !78
  %i.dm = load i32, ptr %i.bn, align 8, !tbaa !47
  %.141 = tail call i32 @llvm.umin.i32(i32 %i.dm, i32 %i.dl) ; 9 uses
  %i.dn = load ptr, ptr %i.bo, align 8, !tbaa !46
  %i.do = load i32, ptr %i.bi, align 8, !tbaa !79
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.dp
  %i.dr = zext i32 %.141 to i64                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dn, ptr nonnull align 1 %i.dq, i64 %i.dr, i1 false)
  %i.ds = load ptr, ptr %i.bo, align 8, !tbaa !46
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dr
  store ptr %i.dt, ptr %i.bo, align 8, !tbaa !46
  %i.du = load i32, ptr %i.bn, align 8, !tbaa !47 ; 3 uses
  %i.dv = sub i32 %i.du, %.141
  store i32 %i.dv, ptr %i.bn, align 8, !tbaa !47
  %i.dw = load i64, ptr %i.bp, align 8, !tbaa !45
  %i.dx = add i64 %i.dw, %i.dr
  store i64 %i.dx, ptr %i.bp, align 8, !tbaa !45
  %i.dy = load i32, ptr %i.bg, align 4, !tbaa !78 ; 4 uses
  %i.dz = sub i32 %i.dy, %.141
  store i32 %i.dz, ptr %i.bg, align 4, !tbaa !78
  %i.ea = load i32, ptr %i.bi, align 8, !tbaa !79
  %i.eb = add i32 %i.ea, %.141
  %i.ec = and i32 %i.eb, 32767                    ; 2 uses
  store i32 %i.ec, ptr %i.bi, align 8, !tbaa !79
  %i.ed = icmp slt i32 %i.cy, 0
  br i1 %i.ed, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = icmp ne i32 %i.cy, 1
  %or.cond9 = select i1 %i.ee, i1 true, i1 %i.bq
  br i1 %or.cond9, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.ef = icmp eq i32 %i.cy, 0                    ; 2 uses
  br i1 %i.t, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %i.ef, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.not137 = icmp eq i32 %i.dy, %.141
  %i.eg = select i1 %.not137, i32 1, i32 -5
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %.not136 = icmp eq i32 %i.du, %.141
  br i1 %.not136, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r
  %.pre.pre = load i32, ptr %i.j, align 8, !tbaa !48
  br label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.t
  %.be = phi i32 [ %.pre.pre, %._crit_edge ], [ %i.eh, %bb.t ]
  br label %bb.m, !llvm.loop !80

bb.s:                                             ; preds = %bb.o
  br i1 %i.ef, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eh = load i32, ptr %i.j, align 8, !tbaa !48  ; 2 uses
  %.not132 = icmp ne i32 %i.eh, 0
  %.not133 = icmp ne i32 %i.du, %.141
  %or.cond.not143 = select i1 %.not132, i1 %.not133, i1 false
  %.not134 = icmp eq i32 %i.dy, %.141
  %or.cond142 = select i1 %or.cond.not143, i1 %.not134, i1 false
  br i1 %or.cond142, label %.backedge, label %.loopexit

.critedge:                                        ; preds = %bb.s
  %.not135 = icmp eq i32 %i.dy, %.141
  %i.ei = zext i1 %.not135 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %bb.r, %bb.n, %bb.m, %.critedge, %bb.k, %bb.l, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b, %bb.q, %bb.i
  %.0 = phi i32 [ -2, %bb.a ], [ -2, %bb.c ], [ -3, %bb.d ], [ -2, %bb.e ], [ -5, %bb.i ], [ -3, %bb.g ], [ 1, %bb.h ], [ %i.cp, %bb.l ], [ %i.eg, %bb.q ], [ -2, %bb.b ], [ 0, %bb.k ], [ %i.ei, %.critedge ], [ 0, %bb.t ], [ -3, %bb.m ], [ -5, %bb.r ], [ -5, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -4, 3) i32 @_ZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_j(ptr nofree noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #13 {
bb.a:
  %7 = ptrtoint ptr %1 to i64                     ; 3 uses
  %i.a = alloca [17 x i32], align 16              ; 18 uses
  %i.b = alloca [16 x i32], align 16              ; 21 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !50     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 22 uses
  %i.e = load i64, ptr %5, align 8, !tbaa !50     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %i.e ; 7 uses
  %i.g = and i32 %6, 4
  %.not = icmp eq i32 %i.g, 0                     ; 3 uses
  %i.h = ptrtoint ptr %4 to i64                   ; 2 uses
  %i.i = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.j = xor i64 %i.i, -1
  %i.k = add i64 %i.j, %i.h
  %i.l = add i64 %i.k, %i.e
  %i.m = select i1 %.not, i64 %i.l, i64 -1        ; 4 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %.not1531 = icmp ne i64 %i.o, 0
  %i.p = icmp ult ptr %4, %3
  %or.cond1610 = or i1 %i.p, %.not1531
  br i1 %or.cond1610, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %5, align 8, !tbaa !50
  store i64 0, ptr %2, align 8, !tbaa !50
  br label %bb.gk

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !81
  %.84.fr1986 = freeze i32 %i.r                   ; 30 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !82   ; 28 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !83   ; 28 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !84   ; 27 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !85   ; 28 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !86 ; 33 uses
  %i.ac = load i32, ptr %0, align 8, !tbaa !87    ; 3 uses
  switch i32 %i.ac, label %.thread1645 [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.j
    i32 36, label %bb.n
    i32 3, label %bb.q
    i32 5, label %bb.v
    i32 6, label %bb.ad
    i32 7, label %bb.ah
    i32 39, label %bb.n
    i32 51, label %bb.ap
    i32 52, label %bb.as
    i32 9, label %bb.aw
    i32 38, label %bb.az
    i32 10, label %bb.n
    i32 11, label %bb.bf
    i32 14, label %bb.bl
    i32 35, label %bb.n
    i32 16, label %bb.cm
    i32 17, label %bb.n
    i32 18, label %bb.cx
    i32 21, label %bb.n
    i32 23, label %bb.do
    i32 24, label %bb.dv
    i32 25, label %bb.ej
    i32 26, label %bb.eu
    i32 27, label %bb.fd
    i32 37, label %bb.n
    i32 53, label %bb.fj
    i32 32, label %bb.fq
    i32 41, label %bb.fy
    i32 42, label %bb.gc
    i32 34, label %bb.gf
  ], !llvm.loop !88

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !89
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ae, align 8, !tbaa !90
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.af, align 4, !tbaa !91
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.ag, align 8, !tbaa !92
  %i.ah = and i32 %6, 1
  %.not1536 = icmp eq i32 %i.ah, 0
  br i1 %.not1536, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.01076 = phi i64 [ 0, %bb.d ], [ %i.t, %bb.c ] ; 2 uses
  %.0995 = phi i32 [ 0, %bb.d ], [ %i.z, %bb.c ]  ; 2 uses
  %.0906 = phi i32 [ 0, %bb.d ], [ %i.x, %bb.c ]  ; 2 uses
  %.0827 = phi i32 [ 0, %bb.d ], [ %i.v, %bb.c ]  ; 2 uses
  %.0824 = phi i32 [ 0, %bb.d ], [ %.84.fr1986, %bb.c ] ; 2 uses
  %.not1537.not = icmp eq i64 %i.c, 0
  br i1 %.not1537.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = and i32 %6, 2
  %.not1605 = icmp eq i32 %i.ai, 0
  store i32 1, ptr %0, align 8, !tbaa !87
  %spec.select1663 = select i1 %.not1605, i32 -4, i32 1
  br label %.thread1645

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ak = load i8, ptr %1, align 1, !tbaa !7
  %i.al = zext i8 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.al, ptr %i.am, align 8, !tbaa !90
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.01168 = phi ptr [ %i.aj, %bb.g ], [ %1, %bb.j ] ; 4 uses
  %.11077 = phi i64 [ %.01076, %bb.g ], [ %i.t, %bb.j ] ; 5 uses
  %.1996 = phi i32 [ %.0995, %bb.g ], [ %i.z, %bb.j ] ; 5 uses
  %.1907 = phi i32 [ %.0906, %bb.g ], [ %i.x, %bb.j ]
  %.1828 = phi i32 [ %.0827, %bb.g ], [ %i.v, %bb.j ] ; 5 uses
  %.1825 = phi i32 [ %.0824, %bb.g ], [ %.84.fr1986, %bb.j ] ; 5 uses
  %.not1538 = icmp ult ptr %.01168, %i.d
  br i1 %.not1538, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = and i32 %6, 2
  %.not1604 = icmp eq i32 %i.an, 0
  store i32 2, ptr %0, align 8, !tbaa !87
  %spec.select1665 = select i1 %.not1604, i32 -4, i32 1
  br label %.thread1645

bb.j:                                             ; preds = %bb.c
  br label %bb.h, !llvm.loop !93

bb.k:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.01168, i64 1 ; 4 uses
  %i.ap = load i8, ptr %.01168, align 1, !tbaa !7
  %i.aq = zext i8 %i.ap to i32                    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !89
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !90 ; 4 uses
  %i.au = shl i32 %i.at, 8
  %i.av = or disjoint i32 %i.au, %i.aq
  %i.aw = urem i32 %i.av, 31
  %i.ax = and i32 %i.aq, 32
  %i.ay = or disjoint i32 %i.aw, %i.ax
  %or.cond1611 = icmp ne i32 %i.ay, 0
  %i.az = and i32 %i.at, 15
  %i.ba = icmp ne i32 %i.az, 8
  %narrow = select i1 %or.cond1611, i1 true, i1 %i.ba ; 2 uses
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bb = icmp ugt i32 %i.at, 127
  %i.bc = lshr i32 %i.at, 4
  %i.bd = shl nuw i32 256, %i.bc
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = icmp ult i64 %i.n, %i.be
  %narrow1701 = select i1 %i.bb, i1 true, i1 %i.bf
  %i.bg = or i1 %narrow1701, %narrow
  br i1 %i.bg, label %bb.gg, label %bb.o

bb.m:                                             ; preds = %bb.k
  br i1 %narrow, label %bb.gg, label %bb.o

bb.n:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  br label %bb.gg, !llvm.loop !94

bb.o:                                             ; preds = %bb.d, %bb.m, %bb.l, %bb.fo
  %.01341 = phi i64 [ %.641405, %bb.fo ], [ %i.ab, %bb.l ], [ %i.ab, %bb.m ], [ %i.ab, %bb.d ] ; 2 uses
  %.01260 = phi ptr [ %.691329, %bb.fo ], [ %4, %bb.l ], [ %4, %bb.m ], [ %4, %bb.d ] ; 2 uses
  %.31171 = phi ptr [ %.701238, %bb.fo ], [ %i.ao, %bb.l ], [ %i.ao, %bb.m ], [ %1, %bb.d ] ; 2 uses
  %.41080 = phi i64 [ %.721148, %bb.fo ], [ %.11077, %bb.l ], [ %.11077, %bb.m ], [ 0, %bb.d ] ; 2 uses
  %.4999 = phi i32 [ %.691064, %bb.fo ], [ %.1996, %bb.l ], [ %.1996, %bb.m ], [ 0, %bb.d ] ; 2 uses
  %.5911 = phi i32 [ %.71977, %bb.fo ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.d ] ; 2 uses
  %.4831 = phi i32 [ %.67894, %bb.fo ], [ %.1828, %bb.l ], [ %.1828, %bb.m ], [ 0, %bb.d ] ; 2 uses
  %.4 = phi i32 [ %.72, %bb.fo ], [ %.1825, %bb.l ], [ %.1825, %bb.m ], [ 0, %bb.d ] ; 3 uses
  %i.bh = icmp ult i32 %.4, 3
  br i1 %i.bh, label %.preheader2166, label %.loopexit2167

.preheader2166:                                   ; preds = %bb.o, %bb.q
  %.21343.ph = phi i64 [ %.01341, %bb.o ], [ %i.ab, %bb.q ] ; 3 uses
  %.21262.ph = phi ptr [ %.01260, %bb.o ], [ %4, %bb.q ] ; 3 uses
  %.51173.ph = phi ptr [ %.31171, %bb.o ], [ %1, %bb.q ] ; 5 uses
  %.61082.ph = phi i64 [ %.41080, %bb.o ], [ %i.t, %bb.q ] ; 3 uses
  %.61001.ph = phi i32 [ %.4999, %bb.o ], [ %i.z, %bb.q ] ; 3 uses
  %.7913.ph = phi i32 [ %.5911, %bb.o ], [ %i.x, %bb.q ] ; 3 uses
  %.6833.ph = phi i32 [ %.4831, %bb.o ], [ %i.v, %bb.q ] ; 3 uses
  %.6.ph = phi i32 [ %.4, %bb.o ], [ %.84.fr1986, %bb.q ] ; 4 uses
  %.not1542 = icmp ult ptr %.51173.ph, %i.d
  br i1 %.not1542, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.s, %.preheader2166
  %.51173.lcssa = phi ptr [ %.51173.ph, %.preheader2166 ], [ %i.bj, %bb.s ]
  %.61082.lcssa = phi i64 [ %.61082.ph, %.preheader2166 ], [ %i.bo, %bb.s ]
  %.6.lcssa = phi i32 [ %.6.ph, %.preheader2166 ], [ %i.bp, %bb.s ]
  %i.bi = and i32 %6, 2
  %.not1603 = icmp eq i32 %i.bi, 0
  store i32 3, ptr %0, align 8, !tbaa !87
  %spec.select1667 = select i1 %.not1603, i32 -4, i32 1
end_hunk_0
begin_hunk_1_@_ZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_j:bb.a
bb.fg:                                            ; preds = %bb.ff
  %i.aet = sub i64 %i.aeq, %i.aer
  %i.aeu = and i64 %i.aet, %i.m
  %i.aev = getelementptr inbounds nuw i8, ptr %3, i64 %i.aeu ; 8 uses
  %i.aew = icmp ugt ptr %.631323, %i.aev
  %i.aex = select i1 %i.aew, ptr %.631323, ptr %i.aev
  %i.aey = zext i32 %.66972 to i64
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aex, i64 %i.aey
  %i.afa = icmp ugt ptr %i.aez, %i.f
  br i1 %i.afa, label %bb.fh, label %.preheader1708

.preheader1708:                                   ; preds = %bb.fg
  %i.afb = icmp ugt i32 %.66972, 2
  br i1 %i.afb, label %.lr.ph1752.preheader, label %._crit_edge

.lr.ph1752.preheader:                             ; preds = %.preheader1708
  %i.afc = add i32 %.66972, -3                    ; 2 uses
  %i.afd = udiv i32 %i.afc, 3
  %i.afe = and i32 %i.afd, 1
  %lcmp.mod.not.not = icmp eq i32 %i.afe, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph1752.prol, label %.lr.ph1752.prol.loopexit

.lr.ph1752.prol:                                  ; preds = %.lr.ph1752.preheader
  %i.aff = load i8, ptr %i.aev, align 1, !tbaa !7
  store i8 %i.aff, ptr %.631323, align 1, !tbaa !7
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aev, i64 1
  %i.afh = load i8, ptr %i.afg, align 1, !tbaa !7
  %i.afi = getelementptr inbounds nuw i8, ptr %.631323, i64 1
  store i8 %i.afh, ptr %i.afi, align 1, !tbaa !7
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aev, i64 2
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !7
  %i.afl = getelementptr inbounds nuw i8, ptr %.631323, i64 2
  store i8 %i.afk, ptr %i.afl, align 1, !tbaa !7
  %i.afm = getelementptr inbounds nuw i8, ptr %.631323, i64 3 ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aev, i64 3 ; 2 uses
  %i.afo = add i32 %.66972, -3                    ; 2 uses
  br label %.lr.ph1752.prol.loopexit

.lr.ph1752.prol.loopexit:                         ; preds = %.lr.ph1752.prol, %.lr.ph1752.preheader
  %.709761751.unr = phi i32 [ %.66972, %.lr.ph1752.preheader ], [ %i.afo, %.lr.ph1752.prol ]
  %.012591750.unr = phi ptr [ %i.aev, %.lr.ph1752.preheader ], [ %i.afn, %.lr.ph1752.prol ]
  %.6713271749.unr = phi ptr [ %.631323, %.lr.ph1752.preheader ], [ %i.afm, %.lr.ph1752.prol ]
  %.lcssa2098.unr = phi ptr [ poison, %.lr.ph1752.preheader ], [ %i.afm, %.lr.ph1752.prol ]
  %.lcssa2097.unr = phi ptr [ poison, %.lr.ph1752.preheader ], [ %i.afn, %.lr.ph1752.prol ]
  %.lcssa2096.unr = phi i32 [ poison, %.lr.ph1752.preheader ], [ %i.afo, %.lr.ph1752.prol ]
  %i.afp = icmp ult i32 %i.afc, 3
  br i1 %i.afp, label %._crit_edge, label %.lr.ph1752

bb.fh:                                            ; preds = %bb.fg, %bb.fk
  %.621403 = phi i64 [ %i.aeq, %bb.fg ], [ %i.afr, %bb.fk ] ; 2 uses
  %.651325 = phi ptr [ %.631323, %bb.fg ], [ %i.afx, %bb.fk ] ; 2 uses
  %.681236 = phi ptr [ %.661234, %bb.fg ], [ %.691237, %bb.fk ] ; 2 uses
  %.701146 = phi i64 [ %.681144, %bb.fg ], [ %.711147, %bb.fk ] ; 2 uses
  %.671062 = phi i32 [ %.651060, %bb.fg ], [ %.681063, %bb.fk ] ; 2 uses
  %.68974 = phi i32 [ %.66972, %bb.fg ], [ %.69975, %bb.fk ] ; 2 uses
  %.65892 = phi i32 [ %.63890, %bb.fg ], [ %.66893, %bb.fk ] ; 2 uses
  %.70 = phi i32 [ %.68, %bb.fg ], [ %.71, %bb.fk ] ; 2 uses
  %i.afq = add i32 %.68974, -1
  %.not1565 = icmp eq i32 %.68974, 0
  br i1 %.not1565, label %.preheader2121, label %bb.fi, !llvm.loop !148

bb.fi:                                            ; preds = %bb.fh, %bb.fj
  %.631404 = phi i64 [ %.621403, %bb.fh ], [ %i.ab, %bb.fj ] ; 3 uses
  %.661326 = phi ptr [ %.651325, %bb.fh ], [ %4, %bb.fj ] ; 4 uses
  %.691237 = phi ptr [ %.681236, %bb.fh ], [ %1, %bb.fj ] ; 2 uses
  %.711147 = phi i64 [ %.701146, %bb.fh ], [ %i.t, %bb.fj ] ; 2 uses
  %.681063 = phi i32 [ %.671062, %bb.fh ], [ %i.z, %bb.fj ] ; 2 uses
  %.69975 = phi i32 [ %i.afq, %bb.fh ], [ %i.x, %bb.fj ] ; 2 uses
  %.66893 = phi i32 [ %.65892, %bb.fh ], [ %i.v, %bb.fj ] ; 3 uses
  %.71 = phi i32 [ %.70, %bb.fh ], [ %.84.fr1986, %bb.fj ] ; 2 uses
  %.not1566 = icmp ult ptr %.661326, %i.f
  br i1 %.not1566, label %bb.fk, label %bb.gg

bb.fj:                                            ; preds = %bb.c
  br label %bb.fi, !llvm.loop !149

bb.fk:                                            ; preds = %bb.fi
  %i.afr = add i64 %.631404, 1
  %i.afs = zext i32 %.66893 to i64
  %i.aft = sub i64 %.631404, %i.afs
  %i.afu = and i64 %i.aft, %i.m
  %i.afv = getelementptr inbounds nuw i8, ptr %3, i64 %i.afu
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !7
  %i.afx = getelementptr inbounds nuw i8, ptr %.661326, i64 1
  store i8 %i.afw, ptr %.661326, align 1, !tbaa !7
  br label %bb.fh, !llvm.loop !150

.lr.ph1752:                                       ; preds = %.lr.ph1752.prol.loopexit, %.lr.ph1752
  %.709761751 = phi i32 [ %i.agq, %.lr.ph1752 ], [ %.709761751.unr, %.lr.ph1752.prol.loopexit ]
  %.012591750 = phi ptr [ %i.agp, %.lr.ph1752 ], [ %.012591750.unr, %.lr.ph1752.prol.loopexit ] ; 7 uses
  %.6713271749 = phi ptr [ %i.ago, %.lr.ph1752 ], [ %.6713271749.unr, %.lr.ph1752.prol.loopexit ] ; 7 uses
  %i.afy = load i8, ptr %.012591750, align 1, !tbaa !7
  store i8 %i.afy, ptr %.6713271749, align 1, !tbaa !7
  %i.afz = getelementptr inbounds nuw i8, ptr %.012591750, i64 1
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !7
  %i.agb = getelementptr inbounds nuw i8, ptr %.6713271749, i64 1
  store i8 %i.aga, ptr %i.agb, align 1, !tbaa !7
  %i.agc = getelementptr inbounds nuw i8, ptr %.012591750, i64 2
  %i.agd = load i8, ptr %i.agc, align 1, !tbaa !7
  %i.age = getelementptr inbounds nuw i8, ptr %.6713271749, i64 2
  store i8 %i.agd, ptr %i.age, align 1, !tbaa !7
  %i.agf = getelementptr inbounds nuw i8, ptr %.6713271749, i64 3
  %i.agg = getelementptr inbounds nuw i8, ptr %.012591750, i64 3
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !7
  store i8 %i.agh, ptr %i.agf, align 1, !tbaa !7
  %i.agi = getelementptr inbounds nuw i8, ptr %.012591750, i64 4
  %i.agj = load i8, ptr %i.agi, align 1, !tbaa !7
  %i.agk = getelementptr inbounds nuw i8, ptr %.6713271749, i64 4
  store i8 %i.agj, ptr %i.agk, align 1, !tbaa !7
  %i.agl = getelementptr inbounds nuw i8, ptr %.012591750, i64 5
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !7
  %i.agn = getelementptr inbounds nuw i8, ptr %.6713271749, i64 5
  store i8 %i.agm, ptr %i.agn, align 1, !tbaa !7
  %i.ago = getelementptr inbounds nuw i8, ptr %.6713271749, i64 6 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %.012591750, i64 6 ; 2 uses
  %i.agq = add i32 %.709761751, -6                ; 3 uses
  %i.agr = icmp ugt i32 %i.agq, 2
  br i1 %i.agr, label %.lr.ph1752, label %._crit_edge, !llvm.loop !151

._crit_edge:                                      ; preds = %.lr.ph1752.prol.loopexit, %.lr.ph1752, %.preheader1708
  %.671327.lcssa = phi ptr [ %.631323, %.preheader1708 ], [ %.lcssa2098.unr, %.lr.ph1752.prol.loopexit ], [ %i.ago, %.lr.ph1752 ] ; 4 uses
  %.01259.lcssa = phi ptr [ %i.aev, %.preheader1708 ], [ %.lcssa2097.unr, %.lr.ph1752.prol.loopexit ], [ %i.agp, %.lr.ph1752 ] ; 2 uses
  %.70976.lcssa = phi i32 [ %.66972, %.preheader1708 ], [ %.lcssa2096.unr, %.lr.ph1752.prol.loopexit ], [ %i.agq, %.lr.ph1752 ] ; 5 uses
  %.not1564 = icmp eq i32 %.70976.lcssa, 0
  br i1 %.not1564, label %.preheader2121, label %bb.fl, !llvm.loop !148

bb.fl:                                            ; preds = %._crit_edge
  %i.ags = load i8, ptr %.01259.lcssa, align 1, !tbaa !7
  store i8 %i.ags, ptr %.671327.lcssa, align 1, !tbaa !7
  %i.agt = icmp eq i32 %.70976.lcssa, 2
  br i1 %i.agt, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.agu = getelementptr inbounds nuw i8, ptr %.01259.lcssa, i64 1
  %i.agv = load i8, ptr %i.agu, align 1, !tbaa !7
  %i.agw = getelementptr inbounds nuw i8, ptr %.671327.lcssa, i64 1
  store i8 %i.agv, ptr %i.agw, align 1, !tbaa !7
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.agx = zext nneg i32 %.70976.lcssa to i64
  %i.agy = getelementptr inbounds nuw i8, ptr %.671327.lcssa, i64 %i.agx
  br label %.preheader2121, !llvm.loop !148

bb.fo:                                            ; preds = %bb.au, %.thread
  %.641405 = phi i64 [ %.191360, %bb.au ], [ %.511392, %.thread ] ; 2 uses
  %.691329 = phi ptr [ %.191279, %bb.au ], [ %.521312, %.thread ] ; 2 uses
  %.701238 = phi ptr [ %.221190, %bb.au ], [ %.551223, %.thread ] ; 2 uses
  %.721148 = phi i64 [ %.231099, %bb.au ], [ %.571133, %.thread ] ; 2 uses
  %.691064 = phi i32 [ %.231018, %bb.au ], [ %.551050, %.thread ] ; 2 uses
  %.71977 = phi i32 [ 0, %bb.au ], [ 256, %.thread ] ; 2 uses
  %.67894 = phi i32 [ %.22849, %bb.au ], [ %.53880, %.thread ] ; 2 uses
  %.72 = phi i32 [ %.23, %bb.au ], [ %.57, %.thread ] ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !96
  %i.ahb = and i32 %i.aha, 1
  %.not1584 = icmp eq i32 %i.ahb, 0
  br i1 %.not1584, label %bb.o, label %bb.fs, !llvm.loop !152

bb.fp:                                            ; preds = %bb.fq
  %i.ahc = and i32 %6, 2
  %.not1533 = icmp eq i32 %i.ahc, 0
  store i32 32, ptr %0, align 8, !tbaa !87
  %spec.select1695 = select i1 %.not1533, i32 -4, i32 1
  br label %.thread1645

bb.fq:                                            ; preds = %bb.c
  %.not1532.not = icmp eq i64 %i.c, 0
  br i1 %.not1532.not, label %bb.fp, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ahd = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ahe = load i8, ptr %1, align 1, !tbaa !7
  %i.ahf = zext i8 %i.ahe to i64
  %i.ahg = zext nneg i32 %.84.fr1986 to i64
  %i.ahh = shl i64 %i.ahf, %i.ahg
  %i.ahi = or i64 %i.ahh, %i.t
  %i.ahj = add i32 %.84.fr1986, 8
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fo, %bb.fr
  %.671408 = phi i64 [ %i.ab, %bb.fr ], [ %.641405, %bb.fo ] ; 2 uses
  %.721332 = phi ptr [ %4, %bb.fr ], [ %.691329, %bb.fo ] ; 2 uses
  %.731241 = phi ptr [ %i.ahd, %bb.fr ], [ %.701238, %bb.fo ] ; 4 uses
  %.751151 = phi i64 [ %i.ahi, %bb.fr ], [ %.721148, %bb.fo ]
  %.721067 = phi i32 [ %i.z, %bb.fr ], [ %.691064, %bb.fo ] ; 2 uses
  %.74980 = phi i32 [ %i.x, %bb.fr ], [ %.71977, %bb.fo ]
  %.70897 = phi i32 [ %i.v, %bb.fr ], [ %.67894, %bb.fo ] ; 2 uses
  %.75 = phi i32 [ %i.ahj, %bb.fr ], [ %.72, %bb.fo ]
  %.75.fr = freeze i32 %.75                       ; 2 uses
  %i.ahk = and i32 %.75.fr, 7
  %i.ahl = zext nneg i32 %i.ahk to i64
  %i.ahm = lshr i64 %.751151, %i.ahl
  %i.ahn = and i32 %.75.fr, -8                    ; 3 uses
  %i.aho = icmp ugt ptr %.731241, %1
  %i.ahp = icmp ne i32 %i.ahn, 0
  %i.ahq = and i1 %i.aho, %i.ahp
  br i1 %i.ahq, label %.lr.ph1787.preheader, label %._crit_edge1788

.lr.ph1787.preheader:                             ; preds = %bb.fs
  %.7312411881 = ptrtoint ptr %.731241 to i64
  %i.ahr = add i32 %i.ahn, -8                     ; 2 uses
  %i.ahs = lshr exact i32 %i.ahr, 3
  %i.aht = zext nneg i32 %i.ahs to i64
  %i.ahu = xor i64 %7, -1
  %i.ahv = add i64 %i.ahu, %.7312411881
  %umin = tail call i64 @llvm.umin.i64(i64 %i.aht, i64 %i.ahv) ; 2 uses
  %i.ahw = xor i64 %umin, -1
  %scevgep1882 = getelementptr i8, ptr %.731241, i64 %i.ahw
  %i.ahx = trunc nuw nsw i64 %umin to i32
  %i.ahy = shl nuw i32 %i.ahx, 3
  %i.ahz = sub i32 %i.ahr, %i.ahy
  br label %._crit_edge1788

._crit_edge1788:                                  ; preds = %.lr.ph1787.preheader, %bb.fs
  %.741242.lcssa = phi ptr [ %.731241, %bb.fs ], [ %scevgep1882, %.lr.ph1787.preheader ] ; 2 uses
  %.76.lcssa = phi i32 [ %i.ahn, %bb.fs ], [ %i.ahz, %.lr.ph1787.preheader ] ; 3 uses
  %i.aia = zext nneg i32 %.76.lcssa to i64
  %notmask1585 = shl nsw i64 -1, %i.aia
  %i.aib = xor i64 %notmask1585, -1
  %i.aic = and i64 %i.ahm, %i.aib                 ; 2 uses
  %i.aid = and i32 %6, 1
  %.not1586 = icmp eq i32 %i.aid, 0
  br i1 %.not1586, label %bb.gg, label %bb.ft

bb.ft:                                            ; preds = %._crit_edge1788, %bb.ge
  %.681409 = phi i64 [ %.731414, %bb.ge ], [ %.671408, %._crit_edge1788 ] ; 4 uses
  %.731333 = phi ptr [ %.781338, %bb.ge ], [ %.721332, %._crit_edge1788 ] ; 4 uses
  %.751243 = phi ptr [ %.801248, %bb.ge ], [ %.741242.lcssa, %._crit_edge1788 ] ; 4 uses
  %.761152 = phi i64 [ %.811157, %bb.ge ], [ %i.aic, %._crit_edge1788 ] ; 4 uses
  %.731068 = phi i32 [ %.781073, %bb.ge ], [ %.721067, %._crit_edge1788 ] ; 4 uses
  %.75981 = phi i32 [ %i.ajb, %bb.ge ], [ 0, %._crit_edge1788 ] ; 5 uses
  %.71898 = phi i32 [ %.76903, %bb.ge ], [ %.70897, %._crit_edge1788 ] ; 4 uses
  %.77 = phi i32 [ %.82, %bb.ge ], [ %.76.lcssa, %._crit_edge1788 ] ; 5 uses
  %i.aie = icmp ult i32 %.75981, 4
  br i1 %i.aie, label %bb.fu, label %bb.gg

bb.fu:                                            ; preds = %bb.ft
  %.not1587 = icmp eq i32 %.77, 0
  br i1 %.not1587, label %bb.ga, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.aif = icmp ult i32 %.77, 8
  br i1 %i.aif, label %.preheader2074, label %.loopexit2075

.preheader2074:                                   ; preds = %bb.fy, %bb.fv
  %.701411.ph = phi i64 [ %.681409, %bb.fv ], [ %i.ab, %bb.fy ] ; 2 uses
  %.751335.ph = phi ptr [ %.731333, %bb.fv ], [ %4, %bb.fy ] ; 2 uses
  %.771245.ph = phi ptr [ %.751243, %bb.fv ], [ %1, %bb.fy ]
  %.781154.ph = phi i64 [ %.761152, %bb.fv ], [ %i.t, %bb.fy ]
  %.751070.ph = phi i32 [ %.731068, %bb.fv ], [ %i.z, %bb.fy ] ; 2 uses
  %.77983.ph = phi i32 [ %.75981, %bb.fv ], [ %i.x, %bb.fy ] ; 2 uses
  %.73900.ph = phi i32 [ %.71898, %bb.fv ], [ %i.v, %bb.fy ] ; 2 uses
  %.79.ph = phi i32 [ %.77, %bb.fv ], [ %.84.fr1986, %bb.fy ]
  br label %bb.fw

bb.fw:                                            ; preds = %.preheader2074, %bb.fz
  %.771245 = phi ptr [ %i.aih, %bb.fz ], [ %.771245.ph, %.preheader2074 ] ; 4 uses
  %.781154 = phi i64 [ %i.aim, %bb.fz ], [ %.781154.ph, %.preheader2074 ] ; 2 uses
  %.79 = phi i32 [ %i.ain, %bb.fz ], [ %.79.ph, %.preheader2074 ] ; 4 uses
  %.not1590 = icmp ult ptr %.771245, %i.d
  br i1 %.not1590, label %bb.fz, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.aig = and i32 %6, 2
  %.not1591 = icmp eq i32 %i.aig, 0
  store i32 41, ptr %0, align 8, !tbaa !87
  %spec.select1697 = select i1 %.not1591, i32 -4, i32 1
  br label %.thread1645

bb.fy:                                            ; preds = %bb.c
  br label %.preheader2074, !llvm.loop !153

bb.fz:                                            ; preds = %bb.fw
  %i.aih = getelementptr inbounds nuw i8, ptr %.771245, i64 1 ; 2 uses
  %i.aii = load i8, ptr %.771245, align 1, !tbaa !7
  %i.aij = zext i8 %i.aii to i64
  %i.aik = zext nneg i32 %.79 to i64
  %i.ail = shl i64 %i.aij, %i.aik
  %i.aim = or i64 %i.ail, %.781154                ; 2 uses
  %i.ain = add i32 %.79, 8                        ; 2 uses
  %i.aio = icmp ugt i32 %.79, -9
  br i1 %i.aio, label %bb.fw, label %.loopexit2075, !llvm.loop !154

.loopexit2075:                                    ; preds = %bb.fz, %bb.fv
  %.711412 = phi i64 [ %.681409, %bb.fv ], [ %.701411.ph, %bb.fz ]
  %.761336 = phi ptr [ %.731333, %bb.fv ], [ %.751335.ph, %bb.fz ]
  %.781246 = phi ptr [ %.751243, %bb.fv ], [ %i.aih, %bb.fz ]
  %.791155 = phi i64 [ %.761152, %bb.fv ], [ %i.aim, %bb.fz ] ; 2 uses
  %.761071 = phi i32 [ %.731068, %bb.fv ], [ %.751070.ph, %bb.fz ]
  %.78984 = phi i32 [ %.75981, %bb.fv ], [ %.77983.ph, %bb.fz ]
  %.74901 = phi i32 [ %.71898, %bb.fv ], [ %.73900.ph, %bb.fz ]
  %.80 = phi i32 [ %.77, %bb.fv ], [ %i.ain, %bb.fz ]
  %i.aip = trunc i64 %.791155 to i32
  %i.aiq = and i32 %i.aip, 255
  %i.air = lshr i64 %.791155, 8
  %i.ais = add i32 %.80, -8
  br label %bb.ge

bb.ga:                                            ; preds = %bb.fu, %bb.gc
  %.721413 = phi i64 [ %.681409, %bb.fu ], [ %i.ab, %bb.gc ] ; 2 uses
  %.771337 = phi ptr [ %.731333, %bb.fu ], [ %4, %bb.gc ] ; 2 uses
  %.791247 = phi ptr [ %.751243, %bb.fu ], [ %1, %bb.gc ] ; 4 uses
  %.801156 = phi i64 [ %.761152, %bb.fu ], [ %i.t, %bb.gc ] ; 2 uses
  %.771072 = phi i32 [ %.731068, %bb.fu ], [ %i.z, %bb.gc ] ; 2 uses
  %.79985 = phi i32 [ %.75981, %bb.fu ], [ %i.x, %bb.gc ] ; 2 uses
  %.75902 = phi i32 [ %.71898, %bb.fu ], [ %i.v, %bb.gc ] ; 2 uses
  %.81 = phi i32 [ 0, %bb.fu ], [ %.84.fr1986, %bb.gc ] ; 2 uses
  %.not1588 = icmp ult ptr %.791247, %i.d
  br i1 %.not1588, label %bb.gd, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ait = and i32 %6, 2
  %.not1589 = icmp eq i32 %i.ait, 0
  store i32 42, ptr %0, align 8, !tbaa !87
  %spec.select1699 = select i1 %.not1589, i32 -4, i32 1
  br label %.thread1645

bb.gc:                                            ; preds = %bb.c
  br label %bb.ga, !llvm.loop !155

bb.gd:                                            ; preds = %bb.ga
  %i.aiu = getelementptr inbounds nuw i8, ptr %.791247, i64 1
  %i.aiv = load i8, ptr %.791247, align 1, !tbaa !7
  %i.aiw = zext i8 %i.aiv to i32
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %.loopexit2075
  %.731414 = phi i64 [ %.711412, %.loopexit2075 ], [ %.721413, %bb.gd ]
  %.781338 = phi ptr [ %.761336, %.loopexit2075 ], [ %.771337, %bb.gd ]
  %.801248 = phi ptr [ %.781246, %.loopexit2075 ], [ %i.aiu, %bb.gd ]
  %.811157 = phi i64 [ %i.air, %.loopexit2075 ], [ %.801156, %bb.gd ]
  %.781073 = phi i32 [ %.761071, %.loopexit2075 ], [ %.771072, %bb.gd ]
  %.80986 = phi i32 [ %.78984, %.loopexit2075 ], [ %.79985, %bb.gd ]
  %.76903 = phi i32 [ %.74901, %.loopexit2075 ], [ %.75902, %bb.gd ]
  %.82 = phi i32 [ %i.ais, %.loopexit2075 ], [ %.81, %bb.gd ]
  %.0820 = phi i32 [ %i.aiq, %.loopexit2075 ], [ %i.aiw, %bb.gd ]
  %i.aix = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aiy = load i32, ptr %i.aix, align 8, !tbaa !92
  %i.aiz = shl i32 %i.aiy, 8
  %i.aja = or disjoint i32 %i.aiz, %.0820
  store i32 %i.aja, ptr %i.aix, align 8, !tbaa !92
  %i.ajb = add i32 %.80986, 1
  br label %bb.ft, !llvm.loop !156

bb.gf:                                            ; preds = %bb.c
  br label %bb.gg, !llvm.loop !157

bb.gg:                                            ; preds = %bb.ft, %._crit_edge1788, %bb.gf, %bb.fi, %bb.ff, %bb.du, %bb.db, %bb.ct, %._crit_edge1759, %.loopexit2167, %bb.av, %bb.ar, %bb.ak, %bb.m, %bb.n, %bb.l
  %.sink = phi i32 [ 53, %bb.fi ], [ 37, %bb.ff ], [ 24, %bb.du ], [ 21, %bb.db ], [ 17, %bb.ct ], [ 35, %._crit_edge1759 ], [ 34, %._crit_edge1788 ], [ 9, %bb.av ], [ 52, %bb.ar ], [ 39, %bb.ak ], [ 36, %bb.m ], [ 36, %bb.l ], [ %i.ac, %bb.n ], [ 34, %bb.ft ], [ 10, %.loopexit2167 ], [ %i.ac, %bb.gf ]
  %.751416 = phi i64 [ %.631404, %bb.fi ], [ %i.aeq, %bb.ff ], [ %.491390, %bb.du ], [ %.341375, %bb.db ], [ %.371378, %bb.ct ], [ %.321373, %._crit_edge1759 ], [ %.671408, %._crit_edge1788 ], [ %.201361, %bb.av ], [ %.181359, %bb.ar ], [ %.71348, %bb.ak ], [ %i.ab, %bb.m ], [ %i.ab, %bb.l ], [ %i.ab, %bb.n ], [ %.681409, %bb.ft ], [ %.31344, %.loopexit2167 ], [ %i.ab, %bb.gf ] ; 2 uses
  %.801340 = phi ptr [ %.661326, %bb.fi ], [ %.631323, %bb.ff ], [ %.491309, %bb.du ], [ %.341294, %bb.db ], [ %.371297, %bb.ct ], [ %.321292, %._crit_edge1759 ], [ %.721332, %._crit_edge1788 ], [ %.201280, %bb.av ], [ %.181278, %bb.ar ], [ %.71267, %bb.ak ], [ %4, %bb.m ], [ %4, %bb.l ], [ %4, %bb.n ], [ %.731333, %bb.ft ], [ %.31263, %.loopexit2167 ], [ %4, %bb.gf ] ; 2 uses
  %.821250 = phi ptr [ %.691237, %bb.fi ], [ %.661234, %bb.ff ], [ %.521220, %bb.du ], [ %.371205, %bb.db ], [ %.401208, %bb.ct ], [ %.351203, %._crit_edge1759 ], [ %.741242.lcssa, %._crit_edge1788 ], [ %.231191, %bb.av ], [ %.211189, %bb.ar ], [ %.101178, %bb.ak ], [ %i.ao, %bb.m ], [ %i.ao, %bb.l ], [ %1, %bb.n ], [ %.751243, %bb.ft ], [ %.61174, %.loopexit2167 ], [ %1, %bb.gf ] ; 4 uses
  %.831159 = phi i64 [ %.711147, %bb.fi ], [ %.681144, %bb.ff ], [ %.531129, %bb.du ], [ %.381114, %bb.db ], [ %i.sc, %bb.ct ], [ %.361112, %._crit_edge1759 ], [ %i.aic, %._crit_edge1788 ], [ %.241100, %bb.av ], [ %.221098, %bb.ar ], [ %.111087, %bb.ak ], [ %.11077, %bb.m ], [ %.11077, %bb.l ], [ %i.t, %bb.n ], [ %.761152, %bb.ft ], [ %i.cb, %.loopexit2167 ], [ %i.t, %bb.gf ] ; 2 uses
  %.801075 = phi i32 [ %.681063, %bb.fi ], [ %.651060, %bb.ff ], [ %.531048, %bb.du ], [ %.381033, %bb.db ], [ %.411036, %bb.ct ], [ %.361031, %._crit_edge1759 ], [ %.721067, %._crit_edge1788 ], [ %.241019, %bb.av ], [ %.221017, %bb.ar ], [ %.111006, %bb.ak ], [ %.1996, %bb.m ], [ %.1996, %bb.l ], [ %i.z, %bb.n ], [ %.731068, %bb.ft ], [ %.71002, %.loopexit2167 ], [ %i.z, %bb.gf ] ; 2 uses
  %.82988 = phi i32 [ %.69975, %bb.fi ], [ %.66972, %bb.ff ], [ %.52958, %bb.du ], [ %.38944, %bb.db ], [ 0, %bb.ct ], [ %.36942, %._crit_edge1759 ], [ %.74980, %._crit_edge1788 ], [ %.24930, %bb.av ], [ %.22928, %bb.ar ], [ %i.dr, %bb.ak ], [ 1, %bb.m ], [ 1, %bb.l ], [ %i.x, %bb.n ], [ %.75981, %bb.ft ], [ %.8914, %.loopexit2167 ], [ %i.x, %bb.gf ] ; 2 uses
  %.78905 = phi i32 [ %.66893, %bb.fi ], [ %.63890, %bb.ff ], [ %.51878, %bb.du ], [ %.37864, %bb.db ], [ 16, %bb.ct ], [ %.35862, %._crit_edge1759 ], [ %.70897, %._crit_edge1788 ], [ %.23850, %bb.av ], [ %.21848, %bb.ar ], [ %.11838, %bb.ak ], [ %.1828, %bb.m ], [ %.1828, %bb.l ], [ %i.v, %bb.n ], [ %.71898, %bb.ft ], [ %.7834, %.loopexit2167 ], [ %i.v, %bb.gf ] ; 2 uses
  %.84 = phi i32 [ %.71, %bb.fi ], [ %.68, %bb.ff ], [ %.53, %bb.du ], [ %.38, %bb.db ], [ %i.sd, %bb.ct ], [ %.36, %._crit_edge1759 ], [ %.76.lcssa, %._crit_edge1788 ], [ %.24, %bb.av ], [ %.22, %bb.ar ], [ %.11, %bb.ak ], [ %.1825, %bb.m ], [ %.1825, %bb.l ], [ %.84.fr1986, %bb.n ], [ %.77, %bb.ft ], [ %i.cc, %.loopexit2167 ], [ %.84.fr1986, %bb.gf ]
  %.0821 = phi i32 [ 2, %bb.fi ], [ -1, %bb.ff ], [ 2, %bb.du ], [ -1, %bb.db ], [ -1, %bb.ct ], [ -1, %._crit_edge1759 ], [ 0, %._crit_edge1788 ], [ 2, %bb.av ], [ 2, %bb.ar ], [ -1, %bb.ak ], [ -1, %bb.m ], [ -1, %bb.l ], [ -1, %bb.n ], [ 0, %bb.ft ], [ -1, %.loopexit2167 ], [ 0, %bb.gf ] ; 2 uses
  store i32 %.sink, ptr %0, align 8, !tbaa !87
  %.84.fr = freeze i32 %.84                       ; 3 uses
  %i.ajc = icmp ugt ptr %.821250, %1
  %i.ajd = icmp ugt i32 %.84.fr, 7
  %i.aje = and i1 %i.ajc, %i.ajd
  br i1 %i.aje, label %.lr.ph1794.preheader, label %.thread1645

.lr.ph1794.preheader:                             ; preds = %bb.gg
  %.8212501883 = ptrtoint ptr %.821250 to i64
  %i.ajf = add i32 %.84.fr, -8                    ; 2 uses
  %i.ajg = lshr i32 %i.ajf, 3
  %i.ajh = zext nneg i32 %i.ajg to i64
  %i.aji = xor i64 %7, -1
  %i.ajj = add i64 %i.aji, %.8212501883
  %umin1884 = tail call i64 @llvm.umin.i64(i64 %i.ajh, i64 %i.ajj) ; 2 uses
  %i.ajk = xor i64 %umin1884, -1
  %scevgep1885 = getelementptr i8, ptr %.821250, i64 %i.ajk
  %i.ajl = trunc nuw nsw i64 %umin1884 to i32
  %i.ajm = shl nuw i32 %i.ajl, 3
  %i.ajn = sub i32 %i.ajf, %i.ajm
  br label %.thread1645

.thread1645:                                      ; preds = %bb.c, %.lr.ph1794.preheader, %bb.gg, %bb.gb, %bb.fx, %bb.fp, %bb.fc, %bb.et, %bb.ei, %bb.dn, %bb.cw, %bb.cl, %bb.bk, %bb.be, %bb.ay, %bb.ao, %bb.ag, %bb.ac, %bb.u, %bb.p, %bb.i, %bb.f
  %.08211662 = phi i32 [ %spec.select1663, %bb.f ], [ %spec.select1687, %bb.dn ], [ %spec.select1683, %bb.cl ], [ %spec.select1691, %bb.et ], [ %spec.select1693, %bb.fc ], [ %spec.select1689, %bb.ei ], [ %spec.select1681, %bb.bk ], [ %spec.select1685, %bb.cw ], [ %spec.select1699, %bb.gb ], [ %spec.select1679, %bb.be ], [ %spec.select1695, %bb.fp ], [ %spec.select1677, %bb.ay ], [ %spec.select1675, %bb.ao ], [ %spec.select1673, %bb.ag ], [ %spec.select1671, %bb.ac ], [ %spec.select1669, %bb.u ], [ %spec.select1667, %bb.p ], [ %spec.select1665, %bb.i ], [ %spec.select1697, %bb.fx ], [ %.0821, %bb.gg ], [ %.0821, %.lr.ph1794.preheader ], [ -1, %bb.c ] ; 4 uses
  %.789051660 = phi i32 [ %.0827, %bb.f ], [ %.49876, %bb.dn ], [ %.39866, %bb.cl ], [ %.59886, %bb.et ], [ %.61888.ph, %bb.fc ], [ %.55882.ph, %bb.ei ], [ %.32859.ph, %bb.bk ], [ %.42869.ph, %bb.cw ], [ %.75902, %bb.gb ], [ %.28855.ph, %bb.be ], [ %i.v, %bb.fp ], [ %.24851, %bb.ay ], [ %.20847.ph, %bb.ao ], [ %.15842, %bb.ag ], [ %.13840.ph, %bb.ac ], [ %i.v, %bb.u ], [ %.6833.ph, %bb.p ], [ %.1828, %bb.i ], [ %.73900.ph, %bb.fx ], [ %.78905, %bb.gg ], [ %.78905, %.lr.ph1794.preheader ], [ %i.v, %bb.c ]
  %.829881659 = phi i32 [ %.0906, %bb.f ], [ %.51957, %bb.dn ], [ %.40946, %bb.cl ], [ %.61967, %bb.et ], [ %.64970.ph, %bb.fc ], [ %.57963.ph, %bb.ei ], [ %.33939.ph, %bb.bk ], [ %.44950.ph, %bb.cw ], [ %.79985, %bb.gb ], [ %.29935.ph, %bb.be ], [ %i.x, %bb.fp ], [ %.25931, %bb.ay ], [ %.20926.ph, %bb.ao ], [ %.15921, %bb.ag ], [ %.13919.ph, %bb.ac ], [ %i.x, %bb.u ], [ %.7913.ph, %bb.p ], [ %.1907, %bb.i ], [ %.77983.ph, %bb.fx ], [ %.82988, %bb.gg ], [ %.82988, %.lr.ph1794.preheader ], [ %i.x, %bb.c ]
  %.8010751658 = phi i32 [ %.0995, %bb.f ], [ %.511046, %bb.dn ], [ %.401035, %bb.cl ], [ %.611056, %bb.et ], [ %.631058.ph, %bb.fc ], [ %.571052.ph, %bb.ei ], [ %.331028.ph, %bb.bk ], [ %.441039.ph, %bb.cw ], [ %.771072, %bb.gb ], [ %.291024.ph, %bb.be ], [ %i.z, %bb.fp ], [ %.251020, %bb.ay ], [ %.201015.ph, %bb.ao ], [ %.151010, %bb.ag ], [ %.131008.ph, %bb.ac ], [ %i.z, %bb.u ], [ %.61001.ph, %bb.p ], [ %.1996, %bb.i ], [ %.751070.ph, %bb.fx ], [ %.801075, %bb.gg ], [ %.801075, %.lr.ph1794.preheader ], [ %i.z, %bb.c ]
  %.8311591657 = phi i64 [ %.01076, %bb.f ], [ %.511127, %bb.dn ], [ %.401116, %bb.cl ], [ %.631139, %bb.et ], [ %.661142, %bb.fc ], [ %.591135, %bb.ei ], [ %.331109.lcssa, %bb.bk ], [ %.441120, %bb.cw ], [ %.801156, %bb.gb ], [ %.291105, %bb.be ], [ %i.t, %bb.fp ], [ %.251101, %bb.ay ], [ %.201096, %bb.ao ], [ %.151091, %bb.ag ], [ %.131089, %bb.ac ], [ %i.t, %bb.u ], [ %.61082.lcssa, %bb.p ], [ %.11077, %bb.i ], [ %.781154, %bb.fx ], [ %.831159, %bb.gg ], [ %.831159, %.lr.ph1794.preheader ], [ %i.t, %bb.c ]
  %.8013401656 = phi ptr [ %4, %bb.f ], [ %.471307, %bb.dn ], [ %.361296, %bb.cl ], [ %.581318, %bb.et ], [ %.611321.ph, %bb.fc ], [ %.541314.ph, %bb.ei ], [ %.291289.ph, %bb.bk ], [ %.401300.ph, %bb.cw ], [ %.771337, %bb.gb ], [ %.251285.ph, %bb.be ], [ %4, %bb.fp ], [ %.211281, %bb.ay ], [ %.161276.ph, %bb.ao ], [ %.111271, %bb.ag ], [ %.91269.ph, %bb.ac ], [ %4, %bb.u ], [ %.21262.ph, %bb.p ], [ %4, %bb.i ], [ %.751335.ph, %bb.fx ], [ %.801340, %bb.gg ], [ %.801340, %.lr.ph1794.preheader ], [ %4, %bb.c ]
  %.7514161655 = phi i64 [ %i.ab, %bb.f ], [ %.471388, %bb.dn ], [ %.361377, %bb.cl ], [ %.571398, %bb.et ], [ %.601401.ph, %bb.fc ], [ %.531394.ph, %bb.ei ], [ %.291370.ph, %bb.bk ], [ %.401381.ph, %bb.cw ], [ %.721413, %bb.gb ], [ %.251366.ph, %bb.be ], [ %i.ab, %bb.fp ], [ %.211362, %bb.ay ], [ %.161357.ph, %bb.ao ], [ %.111352, %bb.ag ], [ %.91350.ph, %bb.ac ], [ %i.ab, %bb.u ], [ %.21343.ph, %bb.p ], [ %i.ab, %bb.i ], [ %.701411.ph, %bb.fx ], [ %.751416, %bb.gg ], [ %.751416, %.lr.ph1794.preheader ], [ %i.ab, %bb.c ]
  %.841252 = phi ptr [ %1, %bb.f ], [ %.501218, %bb.dn ], [ %.391207, %bb.cl ], [ %.611229, %bb.et ], [ %.641232, %bb.fc ], [ %.571225, %bb.ei ], [ %.321200.lcssa, %bb.bk ], [ %.431211, %bb.cw ], [ %.791247, %bb.gb ], [ %.281196, %bb.be ], [ %1, %bb.fp ], [ %.241192, %bb.ay ], [ %.191187, %bb.ao ], [ %.141182, %bb.ag ], [ %.121180, %bb.ac ], [ %1, %bb.u ], [ %.51173.lcssa, %bb.p ], [ %.01168, %bb.i ], [ %.771245, %bb.fx ], [ %.821250, %bb.gg ], [ %scevgep1885, %.lr.ph1794.preheader ], [ %1, %bb.c ]
  %.86 = phi i32 [ %.0824, %bb.f ], [ %.51, %bb.dn ], [ %.40, %bb.cl ], [ %.63, %bb.et ], [ %.66, %bb.fc ], [ %.59, %bb.ei ], [ %.33.lcssa, %bb.bk ], [ %.44, %bb.cw ], [ %.81, %bb.gb ], [ %.29, %bb.be ], [ %.84.fr1986, %bb.fp ], [ %.25, %bb.ay ], [ %.20, %bb.ao ], [ %.15, %bb.ag ], [ %.13, %bb.ac ], [ %.84.fr1986, %bb.u ], [ %.6.lcssa, %bb.p ], [ %.1825, %bb.i ], [ %.79, %bb.fx ], [ %.84.fr, %bb.gg ], [ %i.ajn, %.lr.ph1794.preheader ], [ %.84.fr1986, %bb.c ] ; 2 uses
  store i32 %.86, ptr %i.q, align 4, !tbaa !81
  %i.ajo = zext nneg i32 %.86 to i64
  %notmask1606 = shl nsw i64 -1, %i.ajo
  %i.ajp = xor i64 %notmask1606, -1
  %i.ajq = and i64 %.8311591657, %i.ajp
  store i64 %i.ajq, ptr %i.s, align 8, !tbaa !82
  store i32 %.789051660, ptr %i.u, align 8, !tbaa !83
  store i32 %.829881659, ptr %i.w, align 4, !tbaa !84
  store i32 %.8010751658, ptr %i.y, align 8, !tbaa !85
  store i64 %.7514161655, ptr %i.aa, align 8, !tbaa !86
  %i.ajr = ptrtoint ptr %.841252 to i64
  %i.ajs = sub i64 %i.ajr, %7
  store i64 %i.ajs, ptr %2, align 8, !tbaa !50
  %i.ajt = ptrtoint ptr %.8013401656 to i64
  %i.aju = sub i64 %i.ajt, %i.h                   ; 4 uses
  store i64 %i.aju, ptr %5, align 8, !tbaa !50
  %i.ajv = and i32 %6, 9
  %i.ajw = icmp ne i32 %i.ajv, 0
  %i.ajx = icmp sgt i32 %.08211662, -1
  %or.cond7 = and i1 %i.ajw, %i.ajx
  br i1 %or.cond7, label %bb.gh, label %bb.gk

bb.gh:                                            ; preds = %.thread1645
  %i.ajy = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !91 ; 2 uses
  %i.aka = and i32 %i.ajz, 65535                  ; 2 uses
  %i.akb = lshr i32 %i.ajz, 16                    ; 2 uses
  %.not16071815 = icmp eq i64 %i.aju, 0
  br i1 %.not16071815, label %._crit_edge1821, label %.preheader1703.preheader

.preheader1703.preheader:                         ; preds = %bb.gh
  %i.akc = urem i64 %i.aju, 5552
  br label %.preheader1703

.preheader1703:                                   ; preds = %.preheader1703.preheader, %._crit_edge1811
  %.01820 = phi i64 [ 5552, %._crit_edge1811 ], [ %i.akc, %.preheader1703.preheader ] ; 8 uses
  %.08091819 = phi i32 [ %i.anc, %._crit_edge1811 ], [ %i.akb, %.preheader1703.preheader ] ; 2 uses
  %.08101818 = phi i32 [ %i.anb, %._crit_edge1811 ], [ %i.aka, %.preheader1703.preheader ] ; 2 uses
  %.08151817 = phi i64 [ %i.and, %._crit_edge1811 ], [ %i.aju, %.preheader1703.preheader ]
  %.08161816 = phi ptr [ %.2818.lcssa, %._crit_edge1811 ], [ %4, %.preheader1703.preheader ] ; 2 uses
  %i.akd = icmp samesign ugt i64 %.01820, 7
  br i1 %i.akd, label %.lr.ph1801.preheader, label %.preheader

.lr.ph1801.preheader:                             ; preds = %.preheader1703
  %i.ake = trunc nuw nsw i64 %.01820 to i32
  br label %.lr.ph1801

.preheader.loopexit:                              ; preds = %.lr.ph1801
  %i.akf = zext nneg i32 %i.amc to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader1703
  %.1817.lcssa = phi ptr [ %.08161816, %.preheader1703 ], [ %i.amd, %.preheader.loopexit ] ; 4 uses
  %.0813.lcssa = phi i64 [ 0, %.preheader1703 ], [ %i.akf, %.preheader.loopexit ] ; 6 uses
  %.1811.lcssa = phi i32 [ %.08101818, %.preheader1703 ], [ %i.ama, %.preheader.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.08091819, %.preheader1703 ], [ %i.amb, %.preheader.loopexit ] ; 3 uses
  %i.akg = icmp samesign ugt i64 %.01820, %.0813.lcssa
  br i1 %i.akg, label %.lr.ph1810.preheader, label %._crit_edge1811

.lr.ph1810.preheader:                             ; preds = %.preheader
  %i.akh = sub nuw nsw i64 %.01820, %.0813.lcssa
  %xtraiter2186 = and i64 %i.akh, 3               ; 2 uses
  %lcmp.mod2187.not = icmp eq i64 %xtraiter2186, 0
  br i1 %lcmp.mod2187.not, label %.lr.ph1810.prol.loopexit, label %.lr.ph1810.prol

.lr.ph1810.prol:                                  ; preds = %.lr.ph1810.preheader, %.lr.ph1810.prol
  %indvars.iv1886.prol = phi i64 [ %indvars.iv.next1887.prol, %.lr.ph1810.prol ], [ %.0813.lcssa, %.lr.ph1810.preheader ]
  %.21809.prol = phi i32 [ %i.akm, %.lr.ph1810.prol ], [ %.1.lcssa, %.lr.ph1810.preheader ]
  %.28121808.prol = phi i32 [ %i.akl, %.lr.ph1810.prol ], [ %.1811.lcssa, %.lr.ph1810.preheader ]
  %.28181806.prol = phi ptr [ %i.aki, %.lr.ph1810.prol ], [ %.1817.lcssa, %.lr.ph1810.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1810.prol ], [ 0, %.lr.ph1810.preheader ]
  %i.aki = getelementptr inbounds nuw i8, ptr %.28181806.prol, i64 1 ; 2 uses
  %i.akj = load i8, ptr %.28181806.prol, align 1, !tbaa !7
  %i.akk = zext i8 %i.akj to i32
  %i.akl = add i32 %.28121808.prol, %i.akk        ; 4 uses
  %i.akm = add i32 %i.akl, %.21809.prol           ; 3 uses
  %indvars.iv.next1887.prol = add nuw nsw i64 %indvars.iv1886.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2186
  br i1 %prol.iter.cmp.not, label %.lr.ph1810.prol.loopexit, label %.lr.ph1810.prol, !llvm.loop !158

.lr.ph1810.prol.loopexit:                         ; preds = %.lr.ph1810.prol, %.lr.ph1810.preheader
  %.lcssa2055.unr = phi i32 [ poison, %.lr.ph1810.preheader ], [ %i.akl, %.lr.ph1810.prol ]
  %.lcssa2054.unr = phi i32 [ poison, %.lr.ph1810.preheader ], [ %i.akm, %.lr.ph1810.prol ]
  %indvars.iv1886.unr = phi i64 [ %.0813.lcssa, %.lr.ph1810.preheader ], [ %indvars.iv.next1887.prol, %.lr.ph1810.prol ]
  %.21809.unr = phi i32 [ %.1.lcssa, %.lr.ph1810.preheader ], [ %i.akm, %.lr.ph1810.prol ]
  %.28121808.unr = phi i32 [ %.1811.lcssa, %.lr.ph1810.preheader ], [ %i.akl, %.lr.ph1810.prol ]
  %.28181806.unr = phi ptr [ %.1817.lcssa, %.lr.ph1810.preheader ], [ %i.aki, %.lr.ph1810.prol ]
  %i.akn = sub nsw i64 %.0813.lcssa, %.01820
  %i.ako = icmp ugt i64 %i.akn, -4
  br i1 %i.ako, label %._crit_edge1811.loopexit, label %.lr.ph1810

.lr.ph1801:                                       ; preds = %.lr.ph1801.preheader, %.lr.ph1801
  %.11800 = phi i32 [ %i.amb, %.lr.ph1801 ], [ %.08091819, %.lr.ph1801.preheader ]
  %.18111799 = phi i32 [ %i.ama, %.lr.ph1801 ], [ %.08101818, %.lr.ph1801.preheader ]
  %.08131798 = phi i32 [ %i.amc, %.lr.ph1801 ], [ 0, %.lr.ph1801.preheader ]
  %.18171797 = phi ptr [ %i.amd, %.lr.ph1801 ], [ %.08161816, %.lr.ph1801.preheader ] ; 9 uses
  %i.akp = load i8, ptr %.18171797, align 1, !tbaa !7
  %i.akq = zext i8 %i.akp to i32
  %i.akr = add i32 %.18111799, %i.akq             ; 2 uses
  %i.aks = add i32 %i.akr, %.11800
  %i.akt = getelementptr inbounds nuw i8, ptr %.18171797, i64 1
  %i.aku = load i8, ptr %i.akt, align 1, !tbaa !7
  %i.akv = zext i8 %i.aku to i32
  %i.akw = add i32 %i.akr, %i.akv                 ; 2 uses
  %i.akx = add i32 %i.aks, %i.akw
  %i.aky = getelementptr inbounds nuw i8, ptr %.18171797, i64 2
  %i.akz = load i8, ptr %i.aky, align 1, !tbaa !7
  %i.ala = zext i8 %i.akz to i32
  %i.alb = add i32 %i.akw, %i.ala                 ; 2 uses
  %i.alc = add i32 %i.akx, %i.alb
  %i.ald = getelementptr inbounds nuw i8, ptr %.18171797, i64 3
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !7
  %i.alf = zext i8 %i.ale to i32
  %i.alg = add i32 %i.alb, %i.alf                 ; 2 uses
  %i.alh = add i32 %i.alc, %i.alg
  %i.ali = getelementptr inbounds nuw i8, ptr %.18171797, i64 4
  %i.alj = load i8, ptr %i.ali, align 1, !tbaa !7
  %i.alk = zext i8 %i.alj to i32
  %i.all = add i32 %i.alg, %i.alk                 ; 2 uses
  %i.alm = add i32 %i.alh, %i.all
  %i.aln = getelementptr inbounds nuw i8, ptr %.18171797, i64 5
  %i.alo = load i8, ptr %i.aln, align 1, !tbaa !7
  %i.alp = zext i8 %i.alo to i32
  %i.alq = add i32 %i.all, %i.alp                 ; 2 uses
  %i.alr = add i32 %i.alm, %i.alq
  %i.als = getelementptr inbounds nuw i8, ptr %.18171797, i64 6
  %i.alt = load i8, ptr %i.als, align 1, !tbaa !7
  %i.alu = zext i8 %i.alt to i32
  %i.alv = add i32 %i.alq, %i.alu                 ; 2 uses
  %i.alw = add i32 %i.alr, %i.alv
  %i.alx = getelementptr inbounds nuw i8, ptr %.18171797, i64 7
  %i.aly = load i8, ptr %i.alx, align 1, !tbaa !7
  %i.alz = zext i8 %i.aly to i32
  %i.ama = add i32 %i.alv, %i.alz                 ; 3 uses
  %i.amb = add i32 %i.alw, %i.ama                 ; 2 uses
  %i.amc = add nuw nsw i32 %.08131798, 8          ; 3 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %.18171797, i64 8 ; 2 uses
  %i.ame = or disjoint i32 %i.amc, 7
  %i.amf = icmp samesign ult i32 %i.ame, %i.ake
  br i1 %i.amf, label %.lr.ph1801, label %.preheader.loopexit, !llvm.loop !159

.lr.ph1810:                                       ; preds = %.lr.ph1810.prol.loopexit, %.lr.ph1810
  %indvars.iv1886 = phi i64 [ %indvars.iv.next1887.3, %.lr.ph1810 ], [ %indvars.iv1886.unr, %.lr.ph1810.prol.loopexit ]
  %.21809 = phi i32 [ %i.amz, %.lr.ph1810 ], [ %.21809.unr, %.lr.ph1810.prol.loopexit ]
  %.28121808 = phi i32 [ %i.amy, %.lr.ph1810 ], [ %.28121808.unr, %.lr.ph1810.prol.loopexit ]
  %.28181806 = phi ptr [ %i.amv, %.lr.ph1810 ], [ %.28181806.unr, %.lr.ph1810.prol.loopexit ] ; 5 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %.28181806, i64 1
  %i.amh = load i8, ptr %.28181806, align 1, !tbaa !7
  %i.ami = zext i8 %i.amh to i32
  %i.amj = add i32 %.28121808, %i.ami             ; 2 uses
  %i.amk = add i32 %i.amj, %.21809
  %i.aml = getelementptr inbounds nuw i8, ptr %.28181806, i64 2
  %i.amm = load i8, ptr %i.amg, align 1, !tbaa !7
  %i.amn = zext i8 %i.amm to i32
  %i.amo = add i32 %i.amj, %i.amn                 ; 2 uses
  %i.amp = add i32 %i.amo, %i.amk
  %i.amq = getelementptr inbounds nuw i8, ptr %.28181806, i64 3
  %i.amr = load i8, ptr %i.aml, align 1, !tbaa !7
  %i.ams = zext i8 %i.amr to i32
  %i.amt = add i32 %i.amo, %i.ams                 ; 2 uses
  %i.amu = add i32 %i.amt, %i.amp
  %i.amv = getelementptr inbounds nuw i8, ptr %.28181806, i64 4
  %i.amw = load i8, ptr %i.amq, align 1, !tbaa !7
  %i.amx = zext i8 %i.amw to i32
  %i.amy = add i32 %i.amt, %i.amx                 ; 3 uses
  %i.amz = add i32 %i.amy, %i.amu                 ; 2 uses
  %indvars.iv.next1887.3 = add nuw nsw i64 %indvars.iv1886, 4 ; 2 uses
  %exitcond1890.not.3 = icmp eq i64 %indvars.iv.next1887.3, %.01820
  br i1 %exitcond1890.not.3, label %._crit_edge1811.loopexit, label %.lr.ph1810, !llvm.loop !160

._crit_edge1811.loopexit:                         ; preds = %.lr.ph1810, %.lr.ph1810.prol.loopexit
  %.lcssa2055 = phi i32 [ %.lcssa2055.unr, %.lr.ph1810.prol.loopexit ], [ %i.amy, %.lr.ph1810 ]
  %.lcssa2054 = phi i32 [ %.lcssa2054.unr, %.lr.ph1810.prol.loopexit ], [ %i.amz, %.lr.ph1810 ]
  %i.ana = sub nsw i64 %.01820, %.0813.lcssa
  %scevgep1888 = getelementptr i8, ptr %.1817.lcssa, i64 %i.ana
  br label %._crit_edge1811

._crit_edge1811:                                  ; preds = %._crit_edge1811.loopexit, %.preheader
  %.2818.lcssa = phi ptr [ %.1817.lcssa, %.preheader ], [ %scevgep1888, %._crit_edge1811.loopexit ]
  %.2812.lcssa = phi i32 [ %.1811.lcssa, %.preheader ], [ %.lcssa2055, %._crit_edge1811.loopexit ]
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader ], [ %.lcssa2054, %._crit_edge1811.loopexit ]
  %i.anb = urem i32 %.2812.lcssa, 65521           ; 2 uses
  %i.anc = urem i32 %.2.lcssa, 65521              ; 2 uses
  %i.and = sub i64 %.08151817, %.01820            ; 2 uses
  %.not1607 = icmp eq i64 %i.and, 0
  br i1 %.not1607, label %._crit_edge1821, label %.preheader1703, !llvm.loop !161

._crit_edge1821:                                  ; preds = %._crit_edge1811, %bb.gh
  %.0810.lcssa = phi i32 [ %i.aka, %bb.gh ], [ %i.anb, %._crit_edge1811 ]
  %.0809.lcssa = phi i32 [ %i.akb, %bb.gh ], [ %i.anc, %._crit_edge1811 ]
  %i.ane = shl nuw i32 %.0809.lcssa, 16
  %i.anf = or disjoint i32 %i.ane, %.0810.lcssa   ; 2 uses
  store i32 %i.anf, ptr %i.ajy, align 4, !tbaa !91
  %i.ang = icmp eq i32 %.08211662, 0
  br i1 %i.ang, label %bb.gi, label %bb.gk

bb.gi:                                            ; preds = %._crit_edge1821
  %i.anh = and i32 %6, 1
  %.not1608 = icmp eq i32 %i.anh, 0
  br i1 %.not1608, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.anj = load i32, ptr %i.ani, align 8, !tbaa !92
  %.not1609 = icmp eq i32 %i.anf, %i.anj
  %spec.select = select i1 %.not1609, i32 0, i32 -2
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %.thread1645, %bb.gi, %._crit_edge1821, %bb.b
  %.0819 = phi i32 [ -3, %bb.b ], [ %.08211662, %.thread1645 ], [ %.08211662, %._crit_edge1821 ], [ %spec.select, %bb.gj ], [ 0, %bb.gi ]
  ret i32 %.0819
end_hunk_1
