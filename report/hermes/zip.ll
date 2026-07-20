inline.NumInlined: 158
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 52
begin_hunk_0_@mz_inflate:bb.a
  %i.ba = sub i32 %i.az, %i.ay
  store i32 %i.ba, ptr %i.z, align 8, !tbaa !45
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !43
  %i.bd = add i64 %i.bc, %i.aw
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !43
  %i.be = icmp slt i32 %i.af, 0
  br i1 %i.be, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not139 = icmp eq i32 %i.af, 0
  br i1 %.not139, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 -1, ptr %i.n, align 4, !tbaa !70
  br label %.loopexit

bb.j:                                             ; preds = %bb.f
  %i.bf = or disjoint i32 %spec.select, 2
  %spec.select140 = select i1 %i.f, i32 %i.bf, i32 %spec.select
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 11004 ; 6 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !76 ; 2 uses
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
  %.pre152 = load i32, ptr %i.bi, align 8, !tbaa !77
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !45
  %. = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.bs) ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !44
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 11020
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 11000 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !77
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.by
  %i.ca = zext i32 %. to i64                      ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr nonnull align 1 %i.bz, i64 %i.ca, i1 false)
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !44
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  store ptr %i.cc, ptr %i.bt, align 8, !tbaa !44
  %i.cd = load i32, ptr %i.br, align 8, !tbaa !45
  %i.ce = sub i32 %i.cd, %.
  store i32 %i.ce, ptr %i.br, align 8, !tbaa !45
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !43
  %i.ch = add i64 %i.cg, %i.ca
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !43
  %i.ci = load i32, ptr %i.bg, align 4, !tbaa !76 ; 2 uses
  %i.cj = sub i32 %i.ci, %.
  store i32 %i.cj, ptr %i.bg, align 4, !tbaa !76
  %i.ck = load i32, ptr %i.bw, align 8, !tbaa !77
  %i.cl = add i32 %i.ck, %.
  %i.cm = and i32 %i.cl, 32767
  store i32 %i.cm, ptr %i.bw, align 8, !tbaa !77
  %i.cn = load i32, ptr %i.n, align 4, !tbaa !70
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
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !48
  %i.ct = sub i32 32768, %i.cq
  %i.cu = zext i32 %i.ct to i64
  store i64 %i.cu, ptr %i.b, align 8, !tbaa !48
  %i.cv = load ptr, ptr %0, align 8, !tbaa !47
  %i.cw = zext i32 %i.cq to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cw
  %i.cy = call i32 @tinfl_decompress(ptr noundef nonnull %i.d, ptr noundef %i.cv, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.b, i32 noundef %spec.select140) ; 4 uses
  store i32 %i.cy, ptr %i.n, align 4, !tbaa !70
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !47
  %i.db = and i64 %i.cz, 4294967295               ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.db
  store ptr %i.dc, ptr %0, align 8, !tbaa !47
  %i.dd = trunc i64 %i.cz to i32
  %i.de = load i32, ptr %i.j, align 8, !tbaa !46
  %i.df = sub i32 %i.de, %i.dd
  store i32 %i.df, ptr %i.j, align 8, !tbaa !46
  %i.dg = load i64, ptr %i.bk, align 8, !tbaa !23
  %i.dh = add i64 %i.dg, %i.db
  store i64 %i.dh, ptr %i.bk, align 8, !tbaa !23
  %i.di = load i32, ptr %i.bl, align 4, !tbaa !75
  %i.dj = zext i32 %i.di to i64
  store i64 %i.dj, ptr %i.bm, align 8, !tbaa !21
  %i.dk = load i64, ptr %i.b, align 8, !tbaa !48
  %i.dl = trunc i64 %i.dk to i32                  ; 2 uses
  store i32 %i.dl, ptr %i.bg, align 4, !tbaa !76
  %i.dm = load i32, ptr %i.bn, align 8, !tbaa !45
  %.141 = tail call i32 @llvm.umin.i32(i32 %i.dm, i32 %i.dl) ; 9 uses
  %i.dn = load ptr, ptr %i.bo, align 8, !tbaa !44
  %i.do = load i32, ptr %i.bi, align 8, !tbaa !77
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.dp
  %i.dr = zext i32 %.141 to i64                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dn, ptr nonnull align 1 %i.dq, i64 %i.dr, i1 false)
  %i.ds = load ptr, ptr %i.bo, align 8, !tbaa !44
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dr
  store ptr %i.dt, ptr %i.bo, align 8, !tbaa !44
  %i.du = load i32, ptr %i.bn, align 8, !tbaa !45 ; 3 uses
  %i.dv = sub i32 %i.du, %.141
  store i32 %i.dv, ptr %i.bn, align 8, !tbaa !45
  %i.dw = load i64, ptr %i.bp, align 8, !tbaa !43
  %i.dx = add i64 %i.dw, %i.dr
  store i64 %i.dx, ptr %i.bp, align 8, !tbaa !43
  %i.dy = load i32, ptr %i.bg, align 4, !tbaa !76 ; 4 uses
  %i.dz = sub i32 %i.dy, %.141
  store i32 %i.dz, ptr %i.bg, align 4, !tbaa !76
  %i.ea = load i32, ptr %i.bi, align 8, !tbaa !77
  %i.eb = add i32 %i.ea, %.141
  %i.ec = and i32 %i.eb, 32767                    ; 2 uses
  store i32 %i.ec, ptr %i.bi, align 8, !tbaa !77
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
  %.pre.pre = load i32, ptr %i.j, align 8, !tbaa !46
  br label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.t
  %.be = phi i32 [ %.pre.pre, %._crit_edge ], [ %i.eh, %bb.t ]
  br label %bb.m

bb.s:                                             ; preds = %bb.o
  br i1 %i.ef, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eh = load i32, ptr %i.j, align 8, !tbaa !46  ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @tinfl_decompress(ptr nofree noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [17 x i32], align 16              ; 18 uses
  %i.b = alloca [16 x i32], align 16              ; 21 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !48     ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 20 uses
  %i.e = load i64, ptr %5, align 8, !tbaa !48     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %i.e ; 7 uses
  %i.g = and i32 %6, 4
  %.not = icmp eq i32 %i.g, 0                     ; 3 uses
  %i.h = ptrtoint ptr %4 to i64                   ; 2 uses
  %i.i = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.j = xor i64 %i.i, -1
  %i.k = add i64 %i.j, %i.h
  %i.l = add i64 %i.k, %i.e
  %i.m = select i1 %.not, i64 %i.l, i64 -1        ; 4 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %.not1765 = icmp ne i64 %i.o, 0
  %i.p = icmp ult ptr %4, %3
  %or.cond1859 = or i1 %i.p, %.not1765
  br i1 %or.cond1859, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %5, align 8, !tbaa !48
  store i64 0, ptr %2, align 8, !tbaa !48
  br label %bb.hj

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !78   ; 53 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !79   ; 51 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !80   ; 51 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !81   ; 49 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !82   ; 51 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !83 ; 54 uses
  %i.ac = load i32, ptr %0, align 8, !tbaa !84    ; 9 uses
  switch i32 %i.ac, label %bb.hf [
    i32 0, label %bb.d
    i32 1, label %bb.g
    i32 2, label %bb.m
    i32 36, label %.sink.split2212
    i32 3, label %bb.t
    i32 5, label %bb.x
    i32 6, label %bb.ag
    i32 7, label %bb.am
    i32 39, label %.sink.split2212
    i32 51, label %bb.aw
    i32 52, label %bb.ba
    i32 9, label %bb.be
    i32 38, label %bb.bi
    i32 40, label %bb.bh
    i32 10, label %.sink.split2212
    i32 11, label %bb.bo
    i32 14, label %bb.bw
    i32 35, label %.sink.split2212
    i32 16, label %bb.cw
    i32 17, label %.sink.split2212
    i32 18, label %bb.dh
    i32 21, label %.sink.split2212
    i32 23, label %bb.dz
    i32 24, label %bb.eg
    i32 25, label %bb.eu
    i32 26, label %bb.fg
    i32 27, label %bb.fp
    i32 37, label %.sink.split2212
    i32 53, label %bb.fw
    i32 32, label %bb.gl
    i32 41, label %bb.gu
    i32 42, label %bb.ha
    i32 34, label %bb.he
  ], !llvm.loop !85

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !86
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !87
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.af, align 4, !tbaa !88
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.ag, align 8, !tbaa !89
  %i.ah = and i32 %6, 1
  %.not1786 = icmp eq i32 %i.ah, 0
  br i1 %.not1786, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not1787.not = icmp eq i64 %i.c, 0
  br i1 %.not1787.not, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.g, %bb.e
  %.01242 = phi i64 [ 0, %bb.e ], [ %i.t, %bb.g ] ; 2 uses
  %.01135 = phi i32 [ 0, %bb.e ], [ %i.z, %bb.g ] ; 2 uses
  %.01025 = phi i32 [ 0, %bb.e ], [ %i.x, %bb.g ] ; 2 uses
  %.0929 = phi i32 [ 0, %bb.e ], [ %i.v, %bb.g ]  ; 2 uses
  %.0900 = phi i32 [ 0, %bb.e ], [ %i.r, %bb.g ]  ; 2 uses
  %i.ai = and i32 %6, 2
  %.not1788 = icmp eq i32 %i.ai, 0
  br i1 %.not1788, label %bb.i, label %.sink.split2212

bb.g:                                             ; preds = %bb.c
  %.not1785 = icmp eq i64 %i.c, 0
  br i1 %.not1785, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ak = load i8, ptr %1, align 1, !tbaa !7
  %i.al = zext i8 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.al, ptr %i.am, align 8, !tbaa !87
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.an, align 8, !tbaa !87
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ap = load i8, ptr %1, align 1, !tbaa !7
  %i.aq = zext i8 %i.ap to i32
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !87
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.01352 = phi ptr [ %1, %bb.i ], [ %i.ao, %bb.j ], [ %i.aj, %bb.h ] ; 3 uses
  %.11243 = phi i64 [ %.01242, %bb.i ], [ 0, %bb.j ], [ %i.t, %bb.h ] ; 2 uses
  %.11136 = phi i32 [ %.01135, %bb.i ], [ 0, %bb.j ], [ %i.z, %bb.h ] ; 2 uses
  %.11026 = phi i32 [ %.01025, %bb.i ], [ 0, %bb.j ], [ %i.x, %bb.h ]
  %.1930 = phi i32 [ %.0929, %bb.i ], [ 0, %bb.j ], [ %i.v, %bb.h ] ; 2 uses
  %.1901 = phi i32 [ %.0900, %bb.i ], [ 0, %bb.j ], [ %i.r, %bb.h ] ; 2 uses
  %.not1789 = icmp ult ptr %.01352, %i.d
  br i1 %.not1789, label %.sink.split2215, label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.11353 = phi ptr [ %.01352, %bb.k ], [ %1, %bb.m ] ; 2 uses
  %.21244 = phi i64 [ %.11243, %bb.k ], [ %i.t, %bb.m ] ; 2 uses
  %.21137 = phi i32 [ %.11136, %bb.k ], [ %i.z, %bb.m ] ; 2 uses
  %.21027 = phi i32 [ %.11026, %bb.k ], [ %i.x, %bb.m ]
  %.2931 = phi i32 [ %.1930, %bb.k ], [ %i.v, %bb.m ] ; 2 uses
  %.2902 = phi i32 [ %.1901, %bb.k ], [ %i.r, %bb.m ] ; 2 uses
  %i.ar = and i32 %6, 2
  %.not1790 = icmp eq i32 %i.ar, 0
  br i1 %.not1790, label %bb.n, label %.sink.split2212

bb.m:                                             ; preds = %bb.c
  %.not1784 = icmp eq i64 %i.c, 0
  br i1 %.not1784, label %bb.l, label %.sink.split2215

.sink.split2215:                                  ; preds = %bb.k, %bb.m
  %.sink2218 = phi ptr [ %1, %bb.m ], [ %.01352, %bb.k ] ; 2 uses
  %.31245.ph = phi i64 [ %i.t, %bb.m ], [ %.11243, %bb.k ]
  %.31138.ph = phi i32 [ %i.z, %bb.m ], [ %.11136, %bb.k ]
  %.3932.ph = phi i32 [ %i.v, %bb.m ], [ %.1930, %bb.k ]
  %.3.ph = phi i32 [ %i.r, %bb.m ], [ %.1901, %bb.k ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sink2218, i64 1
  %i.at = load i8, ptr %.sink2218, align 1, !tbaa !7
  %i.au = zext i8 %i.at to i32
  br label %bb.n

bb.n:                                             ; preds = %.sink.split2215, %bb.l
  %.sink = phi i32 [ 0, %bb.l ], [ %i.au, %.sink.split2215 ] ; 3 uses
  %.21354 = phi ptr [ %.11353, %bb.l ], [ %i.as, %.sink.split2215 ] ; 4 uses
  %.31245 = phi i64 [ %.21244, %bb.l ], [ %.31245.ph, %.sink.split2215 ] ; 4 uses
  %.31138 = phi i32 [ %.21137, %bb.l ], [ %.31138.ph, %.sink.split2215 ] ; 4 uses
  %.3932 = phi i32 [ %.2931, %bb.l ], [ %.3932.ph, %.sink.split2215 ] ; 4 uses
  %.3 = phi i32 [ %.2902, %bb.l ], [ %.3.ph, %.sink.split2215 ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sink, ptr %i.av, align 4, !tbaa !86
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !87 ; 4 uses
  %i.ay = shl i32 %i.ax, 8
  %i.az = or disjoint i32 %i.ay, %.sink
  %i.ba = urem i32 %i.az, 31
  %i.bb = and i32 %.sink, 32
  %i.bc = or disjoint i32 %i.ba, %i.bb
  %or.cond1860 = icmp ne i32 %i.bc, 0
  %i.bd = and i32 %i.ax, 15
  %i.be = icmp ne i32 %i.bd, 8
  %narrow = select i1 %or.cond1860, i1 true, i1 %i.be ; 2 uses
  br i1 %.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp ugt i32 %i.ax, 127
  %i.bg = lshr i32 %i.ax, 4
  %i.bh = shl nuw i32 256, %i.bg
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = icmp ult i64 %i.n, %i.bi
  %narrow1910 = select i1 %i.bf, i1 true, i1 %i.bj
  %i.bk = or i1 %narrow1910, %narrow
  br i1 %i.bk, label %.sink.split2212, label %bb.q

bb.p:                                             ; preds = %bb.n
  br i1 %narrow, label %.sink.split2212, label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.p, %bb.o, %bb.gi
  %.01548 = phi ptr [ %.861634, %bb.gi ], [ %4, %bb.o ], [ %4, %bb.p ], [ %4, %bb.d ] ; 2 uses
  %.01457 = phi i64 [ %.771534, %bb.gi ], [ %i.ab, %bb.o ], [ %i.ab, %bb.p ], [ %i.ab, %bb.d ] ; 2 uses
  %.51357 = phi ptr [ %.851437, %bb.gi ], [ %.21354, %bb.o ], [ %.21354, %bb.p ], [ %1, %bb.d ] ; 2 uses
  %.61248 = phi i64 [ %.871329, %bb.gi ], [ %.31245, %bb.o ], [ %.31245, %bb.p ], [ 0, %bb.d ] ; 2 uses
  %.61141 = phi i32 [ %.841219, %bb.gi ], [ %.31138, %bb.o ], [ %.31138, %bb.p ], [ 0, %bb.d ] ; 2 uses
  %.61031 = phi i32 [ %.861111, %bb.gi ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.d ] ; 2 uses
  %.6935 = phi i32 [ %.821011, %bb.gi ], [ %.3932, %bb.o ], [ %.3932, %bb.p ], [ 0, %bb.d ] ; 2 uses
  %.6 = phi i32 [ %.87, %bb.gi ], [ %.3, %bb.o ], [ %.3, %bb.p ], [ 0, %bb.d ] ; 3 uses
  %i.bl = icmp ult i32 %.6, 3
  br i1 %i.bl, label %bb.r, label %bb.v

end_hunk_0
begin_hunk_1_@tinfl_decompress:bb.a

bb.fk:                                            ; preds = %bb.fj
  %i.ado = lshr i32 %i.adl, 9
  %i.adp = and i32 %i.adl, 511
  br label %.loopexit1918

bb.fl:                                            ; preds = %.preheader1917, %bb.fl
  %.1897 = phi i32 [ %i.adz, %bb.fl ], [ %i.adl, %.preheader1917 ]
  %.1894 = phi i32 [ %i.ads, %bb.fl ], [ 10, %.preheader1917 ] ; 2 uses
  %i.adq = xor i32 %.1897, -1
  %i.adr = zext nneg i32 %i.adq to i64
  %i.ads = add i32 %.1894, 1                      ; 2 uses
  %i.adt = zext nneg i32 %.1894 to i64
  %i.adu = lshr i64 %.781320, %i.adt
  %i.adv = and i64 %i.adu, 1
  %i.adw = getelementptr [2 x i8], ptr %i.adn, i64 %i.adv
  %i.adx = getelementptr [2 x i8], ptr %i.adw, i64 %i.adr
  %i.ady = load i16, ptr %i.adx, align 2, !tbaa !108 ; 2 uses
  %i.adz = sext i16 %i.ady to i32                 ; 2 uses
  %i.aea = icmp slt i16 %i.ady, 0
  br i1 %i.aea, label %bb.fl, label %.loopexit1918, !llvm.loop !129

.loopexit1918:                                    ; preds = %bb.fl, %bb.fk
  %.2898 = phi i32 [ %i.adp, %bb.fk ], [ %i.adz, %bb.fl ] ; 2 uses
  %.2895 = phi i32 [ %i.ado, %bb.fk ], [ %i.ads, %bb.fl ] ; 2 uses
  %i.aeb = zext nneg i32 %.2895 to i64
  %i.aec = lshr i64 %.781320, %i.aeb              ; 3 uses
  %i.aed = sub i32 %.78, %.2895                   ; 4 uses
  %i.aee = zext nneg i32 %.2898 to i64            ; 2 uses
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr @tinfl_decompress.s_dist_base, i64 %i.aee
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !3 ; 3 uses
  %i.aeh = add nsw i32 %.2898, -30
  %.not1815 = icmp ult i32 %i.aeh, -26
  br i1 %.not1815, label %bb.fs, label %bb.fm

bb.fm:                                            ; preds = %.loopexit1918
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr @tinfl_decompress.s_dist_extra, i64 %i.aee
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !3 ; 3 uses
  %i.aek = icmp ult i32 %i.aed, %i.aej
  br i1 %i.aek, label %bb.fn, label %bb.fr

bb.fn:                                            ; preds = %bb.fm, %bb.fq
  %.721620 = phi ptr [ %.711619, %bb.fm ], [ %.741622, %bb.fq ] ; 2 uses
  %.711528 = phi i64 [ %.701527, %bb.fm ], [ %.731530, %bb.fq ] ; 2 uses
  %.771429 = phi ptr [ %.761428, %bb.fm ], [ %.791431, %bb.fq ] ; 3 uses
  %.791321 = phi i64 [ %i.aec, %bb.fm ], [ %i.aer, %bb.fq ] ; 2 uses
  %.761211 = phi i32 [ %i.aej, %bb.fm ], [ %.781213, %bb.fq ] ; 2 uses
  %.761101 = phi i32 [ %.751100, %bb.fm ], [ %.781103, %bb.fq ] ; 2 uses
  %.741003 = phi i32 [ %i.aeg, %bb.fm ], [ %.761005, %bb.fq ] ; 2 uses
  %.79 = phi i32 [ %i.aed, %bb.fm ], [ %i.aes, %bb.fq ] ; 2 uses
  %.not1816 = icmp ult ptr %.771429, %i.d
  br i1 %.not1816, label %.sink.split2209, label %bb.fo

bb.fo:                                            ; preds = %bb.fp, %bb.fn
  %.731621 = phi ptr [ %.721620, %bb.fn ], [ %4, %bb.fp ] ; 2 uses
  %.721529 = phi i64 [ %.711528, %bb.fn ], [ %i.ab, %bb.fp ] ; 2 uses
  %.781430 = phi ptr [ %.771429, %bb.fn ], [ %1, %bb.fp ] ; 2 uses
  %.801322 = phi i64 [ %.791321, %bb.fn ], [ %i.t, %bb.fp ] ; 2 uses
  %.771212 = phi i32 [ %.761211, %bb.fn ], [ %i.z, %bb.fp ] ; 2 uses
  %.771102 = phi i32 [ %.761101, %bb.fn ], [ %i.x, %bb.fp ] ; 2 uses
  %.751004 = phi i32 [ %.741003, %bb.fn ], [ %i.v, %bb.fp ] ; 2 uses
  %.80 = phi i32 [ %.79, %bb.fn ], [ %i.r, %bb.fp ] ; 2 uses
  %i.ael = and i32 %6, 2
  %.not1817 = icmp eq i32 %i.ael, 0
  br i1 %.not1817, label %bb.fq, label %.sink.split2212

bb.fp:                                            ; preds = %bb.c
  %.not1770 = icmp eq i64 %i.c, 0
  br i1 %.not1770, label %bb.fo, label %.sink.split2209

.sink.split2209:                                  ; preds = %bb.fn, %bb.fp
  %.sink2211 = phi ptr [ %1, %bb.fp ], [ %.771429, %bb.fn ] ; 2 uses
  %.741622.ph = phi ptr [ %4, %bb.fp ], [ %.721620, %bb.fn ]
  %.731530.ph = phi i64 [ %i.ab, %bb.fp ], [ %.711528, %bb.fn ]
  %.811323.ph = phi i64 [ %i.t, %bb.fp ], [ %.791321, %bb.fn ]
  %.781213.ph = phi i32 [ %i.z, %bb.fp ], [ %.761211, %bb.fn ]
  %.781103.ph = phi i32 [ %i.x, %bb.fp ], [ %.761101, %bb.fn ]
  %.761005.ph = phi i32 [ %i.v, %bb.fp ], [ %.741003, %bb.fn ]
  %.81.ph = phi i32 [ %i.r, %bb.fp ], [ %.79, %bb.fn ]
  %i.aem = getelementptr inbounds nuw i8, ptr %.sink2211, i64 1
  %i.aen = load i8, ptr %.sink2211, align 1, !tbaa !7
  %i.aeo = zext i8 %i.aen to i64
  br label %bb.fq

bb.fq:                                            ; preds = %.sink.split2209, %bb.fo
  %.741622 = phi ptr [ %.731621, %bb.fo ], [ %.741622.ph, %.sink.split2209 ] ; 2 uses
  %.731530 = phi i64 [ %.721529, %bb.fo ], [ %.731530.ph, %.sink.split2209 ]
  %.791431 = phi ptr [ %.781430, %bb.fo ], [ %i.aem, %.sink.split2209 ] ; 2 uses
  %.811323 = phi i64 [ %.801322, %bb.fo ], [ %.811323.ph, %.sink.split2209 ]
  %.781213 = phi i32 [ %.771212, %bb.fo ], [ %.781213.ph, %.sink.split2209 ] ; 3 uses
  %.781103 = phi i32 [ %.771102, %bb.fo ], [ %.781103.ph, %.sink.split2209 ] ; 2 uses
  %.761005 = phi i32 [ %.751004, %bb.fo ], [ %.761005.ph, %.sink.split2209 ] ; 2 uses
  %.81 = phi i32 [ %.80, %bb.fo ], [ %.81.ph, %.sink.split2209 ] ; 2 uses
  %.0888.shrunk = phi i64 [ 0, %bb.fo ], [ %i.aeo, %.sink.split2209 ]
  %i.aep = zext nneg i32 %.81 to i64
  %i.aeq = shl i64 %.0888.shrunk, %i.aep
  %i.aer = or i64 %i.aeq, %.811323                ; 2 uses
  %i.aes = add i32 %.81, 8                        ; 3 uses
  %i.aet = icmp ult i32 %i.aes, %.781213
  br i1 %i.aet, label %bb.fn, label %bb.fr, !llvm.loop !130

bb.fr:                                            ; preds = %bb.fq, %bb.fm
  %.751623 = phi ptr [ %.741622, %bb.fq ], [ %.711619, %bb.fm ]
  %.801432 = phi ptr [ %.791431, %bb.fq ], [ %.761428, %bb.fm ]
  %.821324 = phi i64 [ %i.aer, %bb.fq ], [ %i.aec, %bb.fm ] ; 2 uses
  %.791214 = phi i32 [ %.781213, %bb.fq ], [ %i.aej, %bb.fm ] ; 4 uses
  %.791104 = phi i32 [ %.781103, %bb.fq ], [ %.751100, %bb.fm ]
  %.771006 = phi i32 [ %.761005, %bb.fq ], [ %i.aeg, %bb.fm ]
  %.82 = phi i32 [ %i.aes, %bb.fq ], [ %i.aed, %bb.fm ]
  %notmask1818 = shl nsw i32 -1, %.791214
  %i.aeu = xor i32 %notmask1818, -1
  %i.aev = trunc i64 %.821324 to i32
  %i.aew = and i32 %i.aeu, %i.aev
  %i.aex = zext nneg i32 %.791214 to i64
  %i.aey = lshr i64 %.821324, %i.aex
  %i.aez = sub i32 %.82, %.791214
  %i.afa = add i32 %.771006, %i.aew
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %.loopexit1918
  %.761624 = phi ptr [ %.751623, %bb.fr ], [ %.711619, %.loopexit1918 ] ; 13 uses
  %.811433 = phi ptr [ %.801432, %bb.fr ], [ %.761428, %.loopexit1918 ] ; 6 uses
  %.831325 = phi i64 [ %i.aey, %bb.fr ], [ %i.aec, %.loopexit1918 ] ; 6 uses
  %.801215 = phi i32 [ %.791214, %bb.fr ], [ 0, %.loopexit1918 ] ; 6 uses
  %.801105 = phi i32 [ %.791104, %bb.fr ], [ %.751100, %.loopexit1918 ] ; 8 uses
  %.781007 = phi i32 [ %i.afa, %bb.fr ], [ %i.aeg, %.loopexit1918 ] ; 8 uses
  %.83 = phi i32 [ %i.aez, %bb.fr ], [ %i.aed, %.loopexit1918 ] ; 6 uses
  %i.afb = ptrtoint ptr %.761624 to i64
  %i.afc = sub i64 %i.afb, %i.i                   ; 8 uses
  %i.afd = zext i32 %.781007 to i64               ; 2 uses
  %i.afe = icmp uge i64 %i.afc, %i.afd
  %brmerge = or i1 %.not, %i.afe
  br i1 %brmerge, label %bb.ft, label %.sink.split2212

bb.ft:                                            ; preds = %bb.fs
  %i.aff = sub i64 %i.afc, %i.afd
  %i.afg = and i64 %i.aff, %i.m                   ; 6 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %3, i64 %i.afg ; 10 uses
  %i.afi = icmp ugt ptr %.761624, %i.afh
  %i.afj = select i1 %i.afi, ptr %.761624, ptr %i.afh
  %i.afk = zext i32 %.801105 to i64
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.afk
  %i.afm = icmp ugt ptr %i.afl, %i.f
  br i1 %i.afm, label %bb.fu, label %bb.fy

bb.fu:                                            ; preds = %bb.ft, %bb.fx
  %.781626 = phi ptr [ %.761624, %bb.ft ], [ %i.afu, %bb.fx ] ; 2 uses
  %.751532 = phi i64 [ %i.afc, %bb.ft ], [ %i.afo, %bb.fx ] ; 2 uses
  %.831435 = phi ptr [ %.811433, %bb.ft ], [ %.841436, %bb.fx ] ; 2 uses
  %.851327 = phi i64 [ %.831325, %bb.ft ], [ %.861328, %bb.fx ] ; 2 uses
  %.821217 = phi i32 [ %.801215, %bb.ft ], [ %.831218, %bb.fx ] ; 2 uses
  %.821107 = phi i32 [ %.801105, %bb.ft ], [ %.831108, %bb.fx ] ; 2 uses
  %.801009 = phi i32 [ %.781007, %bb.ft ], [ %.811010, %bb.fx ] ; 2 uses
  %.85 = phi i32 [ %.83, %bb.ft ], [ %.86, %bb.fx ] ; 2 uses
  %i.afn = add i32 %.821107, -1
  %.not1821 = icmp eq i32 %.821107, 0
  br i1 %.not1821, label %.preheader2309, label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.fw
  %.791627 = phi ptr [ %.781626, %bb.fu ], [ %4, %bb.fw ] ; 4 uses
  %.761533 = phi i64 [ %.751532, %bb.fu ], [ %i.ab, %bb.fw ] ; 3 uses
  %.841436 = phi ptr [ %.831435, %bb.fu ], [ %1, %bb.fw ] ; 2 uses
  %.861328 = phi i64 [ %.851327, %bb.fu ], [ %i.t, %bb.fw ] ; 2 uses
  %.831218 = phi i32 [ %.821217, %bb.fu ], [ %i.z, %bb.fw ] ; 2 uses
  %.831108 = phi i32 [ %i.afn, %bb.fu ], [ %i.x, %bb.fw ] ; 2 uses
  %.811010 = phi i32 [ %.801009, %bb.fu ], [ %i.v, %bb.fw ] ; 3 uses
  %.86 = phi i32 [ %.85, %bb.fu ], [ %i.r, %bb.fw ] ; 2 uses
  %.not1822 = icmp ult ptr %.791627, %i.f
  br i1 %.not1822, label %bb.fx, label %.sink.split2212

bb.fw:                                            ; preds = %bb.c
  br label %bb.fv, !llvm.loop !131

bb.fx:                                            ; preds = %bb.fv
  %i.afo = add i64 %.761533, 1
  %i.afp = zext i32 %.811010 to i64
  %i.afq = sub i64 %.761533, %i.afp
  %i.afr = and i64 %i.afq, %i.m
  %i.afs = getelementptr inbounds nuw i8, ptr %3, i64 %i.afr
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !7
  %i.afu = getelementptr inbounds nuw i8, ptr %.791627, i64 1
  store i8 %i.aft, ptr %.791627, align 1, !tbaa !7
  br label %bb.fu, !llvm.loop !132

bb.fy:                                            ; preds = %bb.ft
  %i.afv = icmp ult i32 %.801105, 9
  %.not1819 = icmp ugt i32 %.801105, %.781007
  %or.cond1870 = or i1 %i.afv, %.not1819
  br i1 %or.cond1870, label %.thread1897.preheader, label %bb.fz

.thread1897.preheader:                            ; preds = %.loopexit2281, %bb.fy
  %.841632.ph = phi ptr [ %.lcssa2236, %.loopexit2281 ], [ %.761624, %bb.fy ]
  %.851110.ph = phi i32 [ %i.ahf, %.loopexit2281 ], [ %.801105, %bb.fy ]
  %.2920.ph = phi ptr [ %.lcssa2235, %.loopexit2281 ], [ %i.afh, %bb.fy ]
  br label %.thread1897

bb.fz:                                            ; preds = %bb.fy
  %i.afw = and i32 %.801105, -8
  %i.afx = zext i32 %i.afw to i64                 ; 3 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afh, i64 %i.afx
  %7 = ptrtoaddr ptr %3 to i64                    ; 2 uses
  %i.afz = add i64 %i.afg, %7                     ; 2 uses
  %i.aga = add i64 %i.afz, %i.afx
  %i.agb = add i64 %i.afz, 8
  %i.agc = tail call i64 @llvm.umax.i64(i64 %i.aga, i64 %i.agb)
  %i.agd = add i64 %i.afg, %7
  %i.age = xor i64 %i.agd, -1
  %i.agf = add i64 %i.agc, %i.age                 ; 2 uses
  %i.agg = lshr i64 %i.agf, 3
  %i.agh = add nuw nsw i64 %i.agg, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.agf, 232
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.fz
  %i.agi = add i64 %i.afg, %i.i                   ; 2 uses
  %i.agj = add i64 %i.agi, %i.afx
  %i.agk = add i64 %i.agi, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.agj, i64 %i.agk)
  %i.agl = xor i64 %i.afg, -1
  %i.agm = add i64 %umax, %i.agl
  %i.agn = sub i64 %i.agm, %i.i
  %i.ago = and i64 %i.agn, -8                     ; 2 uses
  %i.agp = getelementptr i8, ptr %.761624, i64 %i.ago
  %scevgep2247 = getelementptr i8, ptr %i.agp, i64 8
  %i.agq = getelementptr i8, ptr %3, i64 %i.afg
  %i.agr = getelementptr i8, ptr %i.agq, i64 %i.ago
  %scevgep2248 = getelementptr i8, ptr %i.agr, i64 8
  %bound0 = icmp ult ptr %.761624, %scevgep2248
  %bound1 = icmp ult ptr %i.afh, %scevgep2247
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.agh, 4611686018427387900    ; 3 uses
  %i.ags = shl i64 %n.vec, 3                      ; 2 uses
  %i.agt = getelementptr i8, ptr %.761624, i64 %i.ags ; 3 uses
  %i.agu = getelementptr i8, ptr %i.afh, i64 %i.ags ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.agv = shl i64 %index, 3                      ; 3 uses
  %i.agw = or disjoint i64 %i.agv, 16             ; 2 uses
  %next.gep = getelementptr i8, ptr %.761624, i64 %i.agv
  %next.gep2249 = getelementptr i8, ptr %.761624, i64 %i.agw
  %next.gep2250 = getelementptr i8, ptr %i.afh, i64 %i.agv
  %next.gep2251 = getelementptr i8, ptr %i.afh, i64 %i.agw
  %wide.vec = load <4 x i32>, ptr %next.gep2250, align 4, !tbaa !3, !alias.scope !133
  %wide.vec2253 = load <4 x i32>, ptr %next.gep2251, align 4, !tbaa !3, !alias.scope !133
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !3, !alias.scope !136, !noalias !133
  store <4 x i32> %wide.vec2253, ptr %next.gep2249, align 4, !tbaa !3, !alias.scope !136, !noalias !133
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.agx = icmp eq i64 %index.next, %n.vec
  br i1 %i.agx, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.agt, i64 -8
  %ind.escape2257 = getelementptr i8, ptr %i.agu, i64 -8
  %cmp.n = icmp eq i64 %i.agh, %n.vec
  br i1 %cmp.n, label %.loopexit2281, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.fz, %middle.block
  %.801628.ph = phi ptr [ %.761624, %vector.memcheck ], [ %.761624, %bb.fz ], [ %i.agt, %middle.block ]
  %.0918.ph = phi ptr [ %i.afh, %vector.memcheck ], [ %i.afh, %bb.fz ], [ %i.agu, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.801628 = phi ptr [ %i.ahc, %scalar.ph ], [ %.801628.ph, %scalar.ph.preheader ] ; 4 uses
  %.0918 = phi ptr [ %i.ahd, %scalar.ph ], [ %.0918.ph, %scalar.ph.preheader ] ; 4 uses
  %i.agy = load i32, ptr %.0918, align 4, !tbaa !3
  store i32 %i.agy, ptr %.801628, align 4, !tbaa !3
  %i.agz = getelementptr inbounds nuw i8, ptr %.0918, i64 4
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !3
  %i.ahb = getelementptr inbounds nuw i8, ptr %.801628, i64 4
  store i32 %i.aha, ptr %i.ahb, align 4, !tbaa !3
  %i.ahc = getelementptr inbounds nuw i8, ptr %.801628, i64 8 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0918, i64 8 ; 3 uses
  %i.ahe = icmp ult ptr %i.ahd, %i.afy
  br i1 %i.ahe, label %scalar.ph, label %.loopexit2281, !llvm.loop !140

.loopexit2281:                                    ; preds = %scalar.ph, %middle.block
  %.801628.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.801628, %scalar.ph ]
  %.0918.lcssa = phi ptr [ %ind.escape2257, %middle.block ], [ %.0918, %scalar.ph ]
  %.lcssa2236 = phi ptr [ %i.agt, %middle.block ], [ %i.ahc, %scalar.ph ] ; 4 uses
  %.lcssa2235 = phi ptr [ %i.agu, %middle.block ], [ %i.ahd, %scalar.ph ] ; 2 uses
  %i.ahf = and i32 %.801105, 7                    ; 7 uses
  %i.ahg = icmp samesign ult i32 %i.ahf, 3
  br i1 %i.ahg, label %bb.ga, label %.thread1897.preheader

bb.ga:                                            ; preds = %.loopexit2281
  %.not1820 = icmp eq i32 %i.ahf, 0
  br i1 %.not1820, label %.preheader2309, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ahh = load i8, ptr %.lcssa2235, align 1, !tbaa !7
  store i8 %i.ahh, ptr %.lcssa2236, align 1, !tbaa !7
  %i.ahi = icmp eq i32 %i.ahf, 2
  br i1 %i.ahi, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.ahj = getelementptr inbounds nuw i8, ptr %.0918.lcssa, i64 9
  %i.ahk = load i8, ptr %i.ahj, align 1, !tbaa !7
  %i.ahl = getelementptr inbounds nuw i8, ptr %.801628.lcssa, i64 9
  store i8 %i.ahk, ptr %i.ahl, align 1, !tbaa !7
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.ahm = zext nneg i32 %i.ahf to i64
  %i.ahn = getelementptr inbounds nuw i8, ptr %.lcssa2236, i64 %i.ahm
  br label %.preheader2309

.thread1897:                                      ; preds = %.thread1897.preheader, %.thread1897
  %.841632 = phi ptr [ %i.ahv, %.thread1897 ], [ %.841632.ph, %.thread1897.preheader ] ; 5 uses
  %.851110 = phi i32 [ %i.ahx, %.thread1897 ], [ %.851110.ph, %.thread1897.preheader ]
  %.2920 = phi ptr [ %i.ahw, %.thread1897 ], [ %.2920.ph, %.thread1897.preheader ] ; 5 uses
  %i.aho = load i8, ptr %.2920, align 1, !tbaa !7
  store i8 %i.aho, ptr %.841632, align 1, !tbaa !7
  %i.ahp = getelementptr inbounds nuw i8, ptr %.2920, i64 1
  %i.ahq = load i8, ptr %i.ahp, align 1, !tbaa !7
  %i.ahr = getelementptr inbounds nuw i8, ptr %.841632, i64 1
  store i8 %i.ahq, ptr %i.ahr, align 1, !tbaa !7
  %i.ahs = getelementptr inbounds nuw i8, ptr %.2920, i64 2
  %i.aht = load i8, ptr %i.ahs, align 1, !tbaa !7
  %i.ahu = getelementptr inbounds nuw i8, ptr %.841632, i64 2
  store i8 %i.aht, ptr %i.ahu, align 1, !tbaa !7
  %i.ahv = getelementptr inbounds nuw i8, ptr %.841632, i64 3 ; 4 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.2920, i64 3 ; 2 uses
  %i.ahx = add i32 %.851110, -3                   ; 7 uses
  %i.ahy = icmp sgt i32 %i.ahx, 2
  br i1 %i.ahy, label %.thread1897, label %bb.ge, !llvm.loop !141

bb.ge:                                            ; preds = %.thread1897
  %i.ahz = icmp sgt i32 %i.ahx, 0
  br i1 %i.ahz, label %bb.gf, label %.preheader2309

bb.gf:                                            ; preds = %bb.ge
  %i.aia = load i8, ptr %i.ahw, align 1, !tbaa !7
  store i8 %i.aia, ptr %i.ahv, align 1, !tbaa !7
  %i.aib = icmp eq i32 %i.ahx, 2
  br i1 %i.aib, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.aic = getelementptr inbounds nuw i8, ptr %.2920, i64 4
  %i.aid = load i8, ptr %i.aic, align 1, !tbaa !7
  %i.aie = getelementptr inbounds nuw i8, ptr %.841632, i64 4
  store i8 %i.aid, ptr %i.aie, align 1, !tbaa !7
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.aif = zext nneg i32 %i.ahx to i64
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahv, i64 %i.aif
  br label %.preheader2309

bb.gi:                                            ; preds = %bb.bc, %.thread1891
  %.861634 = phi ptr [ %.231571, %bb.bc ], [ %.621610, %.thread1891 ] ; 3 uses
  %.771534 = phi i64 [ %.231480, %bb.bc ], [ %.611518, %.thread1891 ] ; 3 uses
  %.851437 = phi ptr [ %.281380, %bb.bc ], [ %.671419, %.thread1891 ] ; 3 uses
  %.871329 = phi i64 [ %.291271, %bb.bc ], [ %.691311, %.thread1891 ] ; 3 uses
  %.841219 = phi i32 [ %.291164, %bb.bc ], [ %.671202, %.thread1891 ] ; 3 uses
  %.861111 = phi i32 [ 0, %bb.bc ], [ 256, %.thread1891 ] ; 2 uses
  %.821011 = phi i32 [ %.28957, %bb.bc ], [ %.65994, %.thread1891 ] ; 3 uses
  %.87 = phi i32 [ %.29, %bb.bc ], [ %.69, %.thread1891 ] ; 3 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aii = load i32, ptr %i.aih, align 4, !tbaa !91
  %i.aij = and i32 %i.aii, 1
  %.not1838 = icmp eq i32 %i.aij, 0
  br i1 %.not1838, label %bb.q, label %bb.gj, !llvm.loop !142

bb.gj:                                            ; preds = %bb.gi
  %i.aik = and i32 %6, 1
  %.not1839 = icmp eq i32 %i.aik, 0
  br i1 %.not1839, label %.sink.split2212, label %bb.go

bb.gk:                                            ; preds = %bb.gl
  %i.ail = and i32 %6, 2
  %.not1769 = icmp eq i32 %i.ail, 0
  br i1 %.not1769, label %bb.gn, label %.sink.split2212

bb.gl:                                            ; preds = %bb.c
  %.not1768 = icmp eq i64 %i.c, 0
  br i1 %.not1768, label %bb.gk, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.aim = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ain = load i8, ptr %1, align 1, !tbaa !7
  %i.aio = zext i8 %i.ain to i64
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gk, %bb.gm
  %.881440 = phi ptr [ %i.aim, %bb.gm ], [ %1, %bb.gk ]
  %.0886 = phi i64 [ %i.aio, %bb.gm ], [ 0, %bb.gk ]
  %i.aip = zext nneg i32 %i.r to i64
  %i.aiq = shl i64 %.0886, %i.aip
  %i.air = or i64 %i.aiq, %i.t
  %i.ais = add i32 %i.r, 8
  br label %bb.go

bb.go:                                            ; preds = %bb.gj, %bb.gn
  %.901638 = phi ptr [ %4, %bb.gn ], [ %.861634, %bb.gj ]
  %.811538 = phi i64 [ %i.ab, %bb.gn ], [ %.771534, %bb.gj ]
  %.891441 = phi ptr [ %.881440, %bb.gn ], [ %.851437, %bb.gj ]
  %.911333 = phi i64 [ %i.air, %bb.gn ], [ %.871329, %bb.gj ]
  %.881223 = phi i32 [ %i.z, %bb.gn ], [ %.841219, %bb.gj ]
  %.861015 = phi i32 [ %i.v, %bb.gn ], [ %.821011, %bb.gj ]
  %.91 = phi i32 [ %i.ais, %bb.gn ], [ %.87, %bb.gj ] ; 2 uses
  %i.ait = and i32 %.91, 7
end_hunk_1
