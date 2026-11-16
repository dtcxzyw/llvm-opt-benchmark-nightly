Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/texturedsp?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@dxt5_block_internal:bb.a
    i8 0, label %bb.p
    i8 1, label %bb.m
    i8 6, label %.fold.split
    i8 7, label %bb.n
  ]

bb.m:                                             ; preds = %.preheader
  br label %bb.p

bb.n:                                             ; preds = %.preheader
  br label %bb.p

bb.o:                                             ; preds = %.preheader
  %i.gr = zext i8 %i.gq to i32                    ; 2 uses
  %i.gs = sub nsw i32 6, %i.gr
  %i.gt = mul nsw i32 %i.gs, %i.dr
  %i.gu = add nsw i32 %i.gr, -1
  %i.gv = mul nuw nsw i32 %i.gu, %i.ds
  %i.gw = add nsw i32 %i.gt, %i.gv
  %i.gx = sdiv i32 %i.gw, 5
  %i.gy = trunc i32 %i.gx to i8
  br label %bb.p

.fold.split:                                      ; preds = %.preheader
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %.fold.split, %bb.m, %bb.o, %bb.n
  %.0 = phi i8 [ %i.gy, %bb.o ], [ %i.h, %bb.m ], [ -1, %bb.n ], [ %i.f, %.preheader ], [ 0, %.fold.split ]
  %i.gz = and i32 %.03750, 3
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !15
  %i.hd = zext i8 %.0 to i32
  %i.he = shl nuw i32 %i.hd, 24
  %i.hf = or i32 %i.he, %i.hc
  %i.hg = lshr i32 %.03750, 2
  store i32 %i.hf, ptr %.04048, align 1, !tbaa !10
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.go
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 1
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !10  ; 2 uses
  switch i8 %i.hj, label %bb.s [
    i8 0, label %bb.t
    i8 1, label %bb.r
    i8 6, label %.fold.split.1
    i8 7, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  br label %bb.t

.fold.split.1:                                    ; preds = %bb.p
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.hk = zext i8 %i.hj to i32                    ; 2 uses
  %i.hl = sub nsw i32 6, %i.hk
  %i.hm = mul nsw i32 %i.hl, %i.dr
  %i.hn = add nsw i32 %i.hk, -1
  %i.ho = mul nuw nsw i32 %i.hn, %i.ds
  %i.hp = add nsw i32 %i.hm, %i.ho
  %i.hq = sdiv i32 %i.hp, 5
  %i.hr = trunc i32 %i.hq to i8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.fold.split.1, %bb.q, %bb.p
  %.0.1 = phi i8 [ %i.hr, %bb.s ], [ %i.h, %bb.r ], [ -1, %bb.q ], [ %i.f, %bb.p ], [ 0, %.fold.split.1 ]
  %i.hs = and i32 %i.hg, 3
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !15
  %i.hw = zext i8 %.0.1 to i32
  %i.hx = shl nuw i32 %i.hw, 24
  %i.hy = or i32 %i.hx, %i.hv
  %i.hz = lshr i32 %.03750, 4
  %i.ia = getelementptr inbounds nuw i8, ptr %.04048, i64 4
  store i32 %i.hy, ptr %i.ia, align 1, !tbaa !10
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.go
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  %i.id = load i8, ptr %i.ic, align 2, !tbaa !10  ; 2 uses
  switch i8 %i.id, label %bb.w [
    i8 0, label %bb.x
    i8 1, label %bb.v
    i8 6, label %.fold.split.2
    i8 7, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  br label %bb.x

.fold.split.2:                                    ; preds = %bb.t
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.ie = zext i8 %i.id to i32                    ; 2 uses
  %i.if = sub nsw i32 6, %i.ie
  %i.ig = mul nsw i32 %i.if, %i.dr
  %i.ih = add nsw i32 %i.ie, -1
  %i.ii = mul nuw nsw i32 %i.ih, %i.ds
  %i.ij = add nsw i32 %i.ig, %i.ii
  %i.ik = sdiv i32 %i.ij, 5
  %i.il = trunc i32 %i.ik to i8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %.fold.split.2, %bb.u, %bb.t
  %.0.2 = phi i8 [ %i.il, %bb.w ], [ %i.h, %bb.v ], [ -1, %bb.u ], [ %i.f, %bb.t ], [ 0, %.fold.split.2 ]
  %i.im = and i32 %i.hz, 3
  %i.in = zext nneg i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !15
  %i.iq = zext i8 %.0.2 to i32
  %i.ir = shl nuw i32 %i.iq, 24
  %i.is = or i32 %i.ir, %i.ip
  %i.it = lshr i32 %.03750, 6
  %i.iu = getelementptr inbounds nuw i8, ptr %.04048, i64 8
  store i32 %i.is, ptr %i.iu, align 1, !tbaa !10
  %i.iv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.go
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 3
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !10  ; 2 uses
  switch i8 %i.ix, label %bb.aa [
    i8 0, label %.split
    i8 1, label %bb.z
    i8 6, label %.fold.split.3
    i8 7, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  br label %.split

.fold.split.3:                                    ; preds = %bb.x
  br label %.split

bb.z:                                             ; preds = %bb.x
  br label %.split

bb.aa:                                            ; preds = %bb.x
  %i.iy = zext i8 %i.ix to i32                    ; 2 uses
  %i.iz = sub nsw i32 6, %i.iy
  %i.ja = mul nsw i32 %i.iz, %i.dr
  %i.jb = add nsw i32 %i.iy, -1
  %i.jc = mul nuw nsw i32 %i.jb, %i.ds
  %i.jd = add nsw i32 %i.ja, %i.jc
  %i.je = sdiv i32 %i.jd, 5
  %i.jf = trunc i32 %i.je to i8
  br label %.split

.split:                                           ; preds = %bb.aa, %bb.z, %.fold.split.3, %bb.y, %bb.x
  %.0.3 = phi i8 [ %i.jf, %bb.aa ], [ %i.h, %bb.z ], [ -1, %bb.y ], [ %i.f, %bb.x ], [ 0, %.fold.split.3 ]
  %i.jg = and i32 %i.it, 3
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jh
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !15
  %i.jk = zext i8 %.0.3 to i32
  %i.jl = shl nuw i32 %i.jk, 24
  %i.jm = or i32 %i.jl, %i.jj
  %i.jn = lshr i32 %.03750, 8
  %i.jo = getelementptr inbounds nuw i8, ptr %.04048, i64 12
  store i32 %i.jm, ptr %i.jo, align 1, !tbaa !10
  %i.jp = getelementptr inbounds i8, ptr %.04048, i64 %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %.split53.us, label %.preheader, !llvm.loop !51

.split53.us:                                      ; preds = %.split, %.split.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @rgtc1_block_internal(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 4) %5, i32 noundef range(i32 1, 5) %6) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 37 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not = icmp eq i32 %3, 0
  %i.b = load i8, ptr %2, align 1, !tbaa !10      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.d = sext i8 %i.b to i32
  %i.e = add nsw i32 %i.d, 128
  %i.f = load i8, ptr %i.c, align 1, !tbaa !10
  %i.g = sext i8 %i.f to i32
  %i.h = add nsw i32 %i.g, 128
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = zext i8 %i.b to i32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.034 = phi i32 [ %i.e, %bb.b ], [ %i.i, %bb.c ] ; 10 uses
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.l, %bb.c ]  ; 10 uses
  store i32 %.034, ptr %i.a, align 16, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.0, ptr %i.m, align 4, !tbaa !15
  %i.n = icmp samesign ugt i32 %.034, %.0
  %i.o = shl nuw nsw i32 %.0, 1                   ; 2 uses
  %i.p = mul nuw nsw i32 %.0, 3                   ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %7 = trunc nsw i32 %.034 to i16
  %8 = insertelement <4 x i16> poison, i16 %7, i64 0
  %9 = trunc nsw i32 %.0 to i16
  %10 = insertelement <4 x i16> %8, i16 %9, i64 1
  %11 = shufflevector <4 x i16> %10, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %12 = mul <4 x i16> %11, <i16 6, i16 5, i16 4, i16 4>
  %i.q = trunc nsw i32 %.0 to i16
  %13 = insertelement <4 x i16> poison, i16 %i.q, i64 0
  %i.r = trunc nsw i32 %i.o to i16
  %14 = insertelement <4 x i16> %13, i16 %i.r, i64 1
  %i.s = trunc nsw i32 %i.p to i16
  %15 = insertelement <4 x i16> %14, i16 %i.s, i64 2
  %i.t = trunc nsw i32 %.034 to i16
  %16 = mul nsw i16 %i.t, 3
  %i.u = insertelement <4 x i16> %15, i16 %16, i64 3
  %17 = add <4 x i16> %12, %i.u
  %i.v = udiv <4 x i16> %17, splat (i16 7)
  %i.w = shl nuw nsw i32 %.034, 1
  %i.x = mul nuw nsw i32 %.0, 5
  %i.y = mul nuw nsw i32 %.0, 6
  %i.z = add nuw nsw i32 %i.x, %i.w
  %i.aa = add nuw nsw i32 %i.y, %.034
  %i.ab = trunc nsw i32 %i.z to i16
  %i.ac = insertelement <2 x i16> poison, i16 %i.ab, i64 0
  %18 = trunc nsw i32 %i.aa to i16
  %i.ad = insertelement <2 x i16> %i.ac, i16 %18, i64 1
  %i.ae = udiv <2 x i16> %i.ad, splat (i16 7)
  %i.af = zext nneg <2 x i16> %i.ae to <2 x i32>
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ag = shl nuw nsw i32 %.034, 2
  %i.ah = mul nuw nsw i32 %.034, 3
  %i.ai = shl nuw nsw i32 %.034, 1
  %i.aj = shl nuw nsw i32 %.0, 2
  %i.ak = add nuw nsw i32 %i.ag, %.0
  %.lhs.trunc45 = trunc nsw i32 %i.ak to i16
  %i.al = add nuw nsw i32 %i.o, %i.ah
  %.lhs.trunc47 = trunc nsw i32 %i.al to i16
  %i.am = add nuw nsw i32 %i.p, %i.ai
  %.lhs.trunc49 = trunc nsw i32 %i.am to i16
  %i.an = add nuw nsw i32 %i.aj, %.034
  %.lhs.trunc51 = trunc nsw i32 %i.an to i16
  %i.ao = insertelement <4 x i16> poison, i16 %.lhs.trunc45, i64 0
  %i.ap = insertelement <4 x i16> %i.ao, i16 %.lhs.trunc47, i64 1
  %i.aq = insertelement <4 x i16> %i.ap, i16 %.lhs.trunc49, i64 2
  %i.ar = insertelement <4 x i16> %i.aq, i16 %.lhs.trunc51, i64 3
  %i.as = udiv <4 x i16> %i.ar, splat (i16 5)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.at = phi <4 x i16> [ %i.v, %bb.e ], [ %i.as, %bb.f ]
  %i.au = phi <2 x i32> [ %i.af, %bb.e ], [ <i32 0, i32 255>, %bb.f ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = zext nneg <4 x i16> %i.at to <4 x i32>
  store <4 x i32> %i.aw, ptr %i.av, align 8, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x i32> %i.au, ptr %i.ax, align 8, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.az = getelementptr i8, ptr %2, i64 3
  %i.ba = load i16, ptr %i.az, align 1            ; 5 uses
  %i.bb = shl i16 %i.ba, 8
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !10  ; 3 uses
  %i.bd = zext i8 %i.bc to i16
  %i.be = or disjoint i16 %i.bb, %i.bd
  %i.bf = and i8 %i.bc, 7
  %i.bg = lshr i8 %i.bc, 3
  %i.bh = and i8 %i.bg, 7                         ; 2 uses
  %i.bi = lshr i16 %i.be, 6
  %i.bj = trunc i16 %i.bi to i8
  %i.bk = and i8 %i.bj, 7                         ; 2 uses
  %i.bl = trunc i16 %i.ba to i8                   ; 2 uses
  %i.bm = lshr i8 %i.bl, 1
  %i.bn = and i8 %i.bm, 7                         ; 2 uses
  %i.bo = lshr i8 %i.bl, 4
  %i.bp = and i8 %i.bo, 7                         ; 2 uses
  %i.bq = lshr i16 %i.ba, 7
  %i.br = trunc i16 %i.bq to i8
  %i.bs = and i8 %i.br, 7                         ; 2 uses
  %i.bt = lshr i16 %i.ba, 10
  %i.bu = trunc nuw nsw i16 %i.bt to i8
  %i.bv = and i8 %i.bu, 7                         ; 2 uses
  %i.bw = lshr i16 %i.ba, 13                      ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.by = getelementptr i8, ptr %2, i64 6
  %i.bz = load i16, ptr %i.by, align 1            ; 5 uses
  %i.ca = shl i16 %i.bz, 8
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !10  ; 3 uses
  %i.cc = zext i8 %i.cb to i16
  %i.cd = or disjoint i16 %i.ca, %i.cc
  %i.ce = and i8 %i.cb, 7                         ; 2 uses
  %i.cf = lshr i8 %i.cb, 3
  %i.cg = and i8 %i.cf, 7                         ; 2 uses
  %i.ch = lshr i16 %i.cd, 6
  %i.ci = trunc i16 %i.ch to i8
  %i.cj = and i8 %i.ci, 7                         ; 2 uses
  %i.ck = trunc i16 %i.bz to i8                   ; 2 uses
  %i.cl = lshr i8 %i.ck, 1
  %i.cm = and i8 %i.cl, 7                         ; 2 uses
  %i.cn = lshr i8 %i.ck, 4
  %i.co = and i8 %i.cn, 7                         ; 2 uses
  %i.cp = lshr i16 %i.bz, 7
  %i.cq = trunc i16 %i.cp to i8
  %i.cr = and i8 %i.cq, 7                         ; 2 uses
  %i.cs = lshr i16 %i.bz, 10
  %i.ct = trunc nuw nsw i16 %i.cs to i8
  %i.cu = and i8 %i.ct, 7                         ; 2 uses
  %i.cv = lshr i16 %i.bz, 13                      ; 2 uses
  %.not.i = icmp eq i32 %4, 0
  %i.cw = zext nneg i32 %6 to i64                 ; 12 uses
  %i.cx = zext nneg i8 %i.bf to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !15 ; 2 uses
  br i1 %.not.i, label %.preheader.us.preheader.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.g
  %i.da = zext nneg i32 %5 to i64
  %invariant.gep29.i = getelementptr i8, ptr %0, i64 %i.da ; 7 uses
  %i.db = trunc i32 %i.cz to i8
  store i8 %i.db, ptr %invariant.gep29.i, align 1, !tbaa !10
  %i.dc = zext nneg i8 %i.bh to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !15
  %i.df = trunc i32 %i.de to i8
  %gep.1.i = getelementptr i8, ptr %invariant.gep29.i, i64 %i.cw
  store i8 %i.df, ptr %gep.1.i, align 1, !tbaa !10
  %i.dg = zext nneg i8 %i.bk to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !15
  %i.dj = trunc i32 %i.di to i8
  %i.dk = shl nuw nsw i64 %i.cw, 1                ; 4 uses
  %gep.2.i = getelementptr i8, ptr %invariant.gep29.i, i64 %i.dk
  store i8 %i.dj, ptr %gep.2.i, align 1, !tbaa !10
  %i.dl = zext nneg i8 %i.bn to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !15
  %i.do = trunc i32 %i.dn to i8
  %i.dp = mul nuw nsw i64 %i.cw, 3                ; 4 uses
  %gep.3.i = getelementptr i8, ptr %invariant.gep29.i, i64 %i.dp
  store i8 %i.do, ptr %gep.3.i, align 1, !tbaa !10
  %gep30.1.i = getelementptr i8, ptr %invariant.gep29.i, i64 %1 ; 4 uses
  %i.dq = zext nneg i8 %i.bp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !15
  %i.dt = trunc i32 %i.ds to i8
  store i8 %i.dt, ptr %gep30.1.i, align 1, !tbaa !10
  %i.du = zext nneg i8 %i.bs to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !15
  %i.dx = trunc i32 %i.dw to i8
  %gep.1.1.i = getelementptr i8, ptr %gep30.1.i, i64 %i.cw
  store i8 %i.dx, ptr %gep.1.1.i, align 1, !tbaa !10
  %i.dy = zext nneg i8 %i.bv to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !15
  %i.eb = trunc i32 %i.ea to i8
  %gep.2.1.i = getelementptr i8, ptr %gep30.1.i, i64 %i.dk
  store i8 %i.eb, ptr %gep.2.1.i, align 1, !tbaa !10
  %i.ec = zext nneg i16 %i.bw to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !15
  %i.ef = trunc i32 %i.ee to i8
  %gep.3.1.i = getelementptr i8, ptr %gep30.1.i, i64 %i.dp
  store i8 %i.ef, ptr %gep.3.1.i, align 1, !tbaa !10
  %i.eg = shl nsw i64 %1, 1
  %gep30.2.i = getelementptr i8, ptr %invariant.gep29.i, i64 %i.eg ; 4 uses
  %i.eh = zext nneg i8 %i.ce to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !15
  %i.ek = trunc i32 %i.ej to i8
  store i8 %i.ek, ptr %gep30.2.i, align 1, !tbaa !10
  %i.el = zext nneg i8 %i.cg to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !15
  %i.eo = trunc i32 %i.en to i8
  %gep.1.2.i = getelementptr i8, ptr %gep30.2.i, i64 %i.cw
  store i8 %i.eo, ptr %gep.1.2.i, align 1, !tbaa !10
  %i.ep = zext nneg i8 %i.cj to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !15
  %i.es = trunc i32 %i.er to i8
  %gep.2.2.i = getelementptr i8, ptr %gep30.2.i, i64 %i.dk
  store i8 %i.es, ptr %gep.2.2.i, align 1, !tbaa !10
  %i.et = zext nneg i8 %i.cm to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !15
  %i.ew = trunc i32 %i.ev to i8
  %gep.3.2.i = getelementptr i8, ptr %gep30.2.i, i64 %i.dp
  store i8 %i.ew, ptr %gep.3.2.i, align 1, !tbaa !10
  %i.ex = mul nsw i64 %1, 3
  %gep30.3.i = getelementptr i8, ptr %invariant.gep29.i, i64 %i.ex ; 4 uses
  %i.ey = zext nneg i8 %i.co to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !15
  %i.fb = trunc i32 %i.fa to i8
  store i8 %i.fb, ptr %gep30.3.i, align 1, !tbaa !10
  %i.fc = zext nneg i8 %i.cr to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !15
  %i.ff = trunc i32 %i.fe to i8
  %gep.1.3.i = getelementptr i8, ptr %gep30.3.i, i64 %i.cw
  store i8 %i.ff, ptr %gep.1.3.i, align 1, !tbaa !10
  %i.fg = zext nneg i8 %i.cu to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !15
  %i.fj = trunc i32 %i.fi to i8
  %gep.2.3.i = getelementptr i8, ptr %gep30.3.i, i64 %i.dk
  store i8 %i.fj, ptr %gep.2.3.i, align 1, !tbaa !10
  %i.fk = zext nneg i16 %i.cv to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !15
  %i.fn = trunc i32 %i.fm to i8
  %gep.3.3.i = getelementptr i8, ptr %gep30.3.i, i64 %i.dp
  store i8 %i.fn, ptr %gep.3.3.i, align 1, !tbaa !10
  br label %rgtc_block_internal.exit

.preheader.us.preheader.i:                        ; preds = %bb.g
  %i.fo = zext nneg i16 %i.cv to i64
  %i.fp = zext nneg i16 %i.bw to i64
  %i.fq = and i32 %i.cz, 255
  %i.fr = mul nuw nsw i32 %i.fq, 65793
  %i.fs = or disjoint i32 %i.fr, -16777216
  store i32 %i.fs, ptr %0, align 1, !tbaa !10
  %i.ft = zext nneg i8 %i.bh to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !15
end_hunk_0
