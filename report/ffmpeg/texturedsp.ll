Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/texturedsp?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@dxt5_block_internal:bb.a
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
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10
  %i.e = sext i8 %i.b to i32
  %i.f = add nsw i32 %i.e, 128
  %i.g = sext i8 %i.d to i32
  %i.h = add nsw i32 %i.g, 128
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = zext i8 %i.b to i32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.034 = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ] ; 10 uses
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.l, %bb.c ]  ; 10 uses
  store i32 %.034, ptr %i.a, align 16, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.0, ptr %i.m, align 4, !tbaa !15
  %i.n = icmp samesign ugt i32 %.034, %.0
  %i.o = shl nuw nsw i32 %.0, 1                   ; 2 uses
  %i.p = mul nuw nsw i32 %.0, 3                   ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = trunc nsw i32 %.034 to i16
  %i.r = insertelement <4 x i16> poison, i16 %i.q, i64 0
  %i.s = trunc nsw i32 %.0 to i16
  %i.t = insertelement <4 x i16> %i.r, i16 %i.s, i64 1
  %i.u = shufflevector <4 x i16> %i.t, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.v = mul <4 x i16> %i.u, <i16 6, i16 5, i16 4, i16 4>
  %i.w = trunc nsw i32 %.0 to i16
  %i.x = insertelement <4 x i16> poison, i16 %i.w, i64 0
  %i.y = trunc nsw i32 %i.o to i16
  %i.z = insertelement <4 x i16> %i.x, i16 %i.y, i64 1
  %i.aa = trunc nsw i32 %i.p to i16
  %i.ab = insertelement <4 x i16> %i.z, i16 %i.aa, i64 2
  %i.ac = trunc nsw i32 %.034 to i16
  %i.ad = mul nsw i16 %i.ac, 3
  %i.ae = insertelement <4 x i16> %i.ab, i16 %i.ad, i64 3
  %i.af = add <4 x i16> %i.v, %i.ae
  %i.ag = udiv <4 x i16> %i.af, splat (i16 7)
  %i.ah = shl nuw nsw i32 %.034, 1
  %i.ai = mul nuw nsw i32 %.0, 5
  %i.aj = mul nuw nsw i32 %.0, 6
  %i.ak = add nuw nsw i32 %i.ai, %i.ah
  %i.al = add nuw nsw i32 %i.aj, %.034
  %i.am = trunc nsw i32 %i.ak to i16
  %i.an = insertelement <2 x i16> poison, i16 %i.am, i64 0
  %i.ao = trunc nsw i32 %i.al to i16
  %i.ap = insertelement <2 x i16> %i.an, i16 %i.ao, i64 1
  %i.aq = udiv <2 x i16> %i.ap, splat (i16 7)
  %i.ar = zext nneg <2 x i16> %i.aq to <2 x i32>
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.as = shl nuw nsw i32 %.034, 2
  %7 = add nuw nsw i32 %i.as, %.0
  %.lhs.trunc45 = trunc nsw i32 %7 to i16
  %8 = mul nuw nsw i32 %.034, 3
  %i.at = add nuw nsw i32 %i.o, %8
  %.lhs.trunc47.a = trunc nsw i32 %i.at to i16
  %9 = shl nuw nsw i32 %.034, 1
  %10 = add nuw nsw i32 %i.p, %9
  %.lhs.trunc49 = trunc nsw i32 %10 to i16
  %11 = shl nuw nsw i32 %.0, 2
  %i.au = add nuw nsw i32 %11, %.034
  %.lhs.trunc51 = trunc nsw i32 %i.au to i16
  %i.av = insertelement <4 x i16> poison, i16 %.lhs.trunc45, i64 0
  %i.aw = insertelement <4 x i16> %i.av, i16 %.lhs.trunc47.a, i64 1
  %i.ax = insertelement <4 x i16> %i.aw, i16 %.lhs.trunc49, i64 2
  %i.ay = insertelement <4 x i16> %i.ax, i16 %.lhs.trunc51, i64 3
  %i.az = udiv <4 x i16> %i.ay, splat (i16 5)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ba = phi <4 x i16> [ %i.ag, %bb.e ], [ %i.az, %bb.f ]
  %i.bb = phi <2 x i32> [ %i.ar, %bb.e ], [ <i32 0, i32 255>, %bb.f ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bd = zext nneg <4 x i16> %i.ba to <4 x i32>
  store <4 x i32> %i.bd, ptr %i.bc, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x i32> %i.bb, ptr %i.be, align 8, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bg = getelementptr i8, ptr %2, i64 3
  %i.bh = load i16, ptr %i.bg, align 1            ; 5 uses
  %i.bi = shl i16 %i.bh, 8
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !10  ; 3 uses
  %i.bk = zext i8 %i.bj to i16
  %i.bl = or disjoint i16 %i.bi, %i.bk
  %i.bm = and i8 %i.bj, 7
  %i.bn = lshr i8 %i.bj, 3
  %i.bo = and i8 %i.bn, 7                         ; 2 uses
  %i.bp = lshr i16 %i.bl, 6
  %i.bq = trunc i16 %i.bp to i8
  %i.br = and i8 %i.bq, 7                         ; 2 uses
  %i.bs = trunc i16 %i.bh to i8                   ; 2 uses
  %i.bt = lshr i8 %i.bs, 1
  %i.bu = and i8 %i.bt, 7                         ; 2 uses
  %i.bv = lshr i8 %i.bs, 4
  %i.bw = and i8 %i.bv, 7                         ; 2 uses
  %i.bx = lshr i16 %i.bh, 7
  %i.by = trunc i16 %i.bx to i8
  %i.bz = and i8 %i.by, 7                         ; 2 uses
  %i.ca = lshr i16 %i.bh, 10
  %i.cb = trunc nuw nsw i16 %i.ca to i8
  %i.cc = and i8 %i.cb, 7                         ; 2 uses
  %i.cd = lshr i16 %i.bh, 13                      ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.cf = getelementptr i8, ptr %2, i64 6
  %i.cg = load i16, ptr %i.cf, align 1            ; 5 uses
  %i.ch = shl i16 %i.cg, 8
  %i.ci = load i8, ptr %i.ce, align 1, !tbaa !10  ; 3 uses
  %i.cj = zext i8 %i.ci to i16
  %i.ck = or disjoint i16 %i.ch, %i.cj
  %i.cl = and i8 %i.ci, 7                         ; 2 uses
  %i.cm = lshr i8 %i.ci, 3
  %i.cn = and i8 %i.cm, 7                         ; 2 uses
  %i.co = lshr i16 %i.ck, 6
  %i.cp = trunc i16 %i.co to i8
  %i.cq = and i8 %i.cp, 7                         ; 2 uses
  %i.cr = trunc i16 %i.cg to i8                   ; 2 uses
  %i.cs = lshr i8 %i.cr, 1
  %i.ct = and i8 %i.cs, 7                         ; 2 uses
  %i.cu = lshr i8 %i.cr, 4
  %i.cv = and i8 %i.cu, 7                         ; 2 uses
  %i.cw = lshr i16 %i.cg, 7
  %i.cx = trunc i16 %i.cw to i8
  %i.cy = and i8 %i.cx, 7                         ; 2 uses
  %i.cz = lshr i16 %i.cg, 10
  %i.da = trunc nuw nsw i16 %i.cz to i8
  %i.db = and i8 %i.da, 7                         ; 2 uses
  %i.dc = lshr i16 %i.cg, 13                      ; 2 uses
  %.not.i = icmp eq i32 %4, 0
  %i.dd = zext nneg i32 %6 to i64                 ; 12 uses
  %i.de = zext nneg i8 %i.bm to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !15 ; 2 uses
  br i1 %.not.i, label %.preheader.us.preheader.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.g
  %i.dh = zext nneg i32 %5 to i64
  %invariant.gep29.i = getelementptr i8, ptr %0, i64 %i.dh ; 7 uses
  %i.di = trunc i32 %i.dg to i8
  store i8 %i.di, ptr %invariant.gep29.i, align 1, !tbaa !10
  %i.dj = zext nneg i8 %i.bo to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !15
  %i.dm = trunc i32 %i.dl to i8
  %gep.1.i = getelementptr i8, ptr %invariant.gep29.i, i64 %i.dd
  store i8 %i.dm, ptr %gep.1.i, align 1, !tbaa !10
  %i.dn = zext nneg i8 %i.br to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !15
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = shl nuw nsw i64 %i.dd, 1                ; 4 uses
  %gep.2.i = getelementptr i8, ptr %invariant.gep29.i, i64 %i.dr
  store i8 %i.dq, ptr %gep.2.i, align 1, !tbaa !10
  %i.ds = zext nneg i8 %i.bu to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !15
  %i.dv = trunc i32 %i.du to i8
  %i.dw = mul nuw nsw i64 %i.dd, 3                ; 4 uses
  %gep.3.i = getelementptr i8, ptr %invariant.gep29.i, i64 %i.dw
  store i8 %i.dv, ptr %gep.3.i, align 1, !tbaa !10
  %gep30.1.i = getelementptr i8, ptr %invariant.gep29.i, i64 %1 ; 4 uses
  %i.dx = zext nneg i8 %i.bw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !15
  %i.ea = trunc i32 %i.dz to i8
  store i8 %i.ea, ptr %gep30.1.i, align 1, !tbaa !10
  %i.eb = zext nneg i8 %i.bz to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !15
  %i.ee = trunc i32 %i.ed to i8
  %gep.1.1.i = getelementptr i8, ptr %gep30.1.i, i64 %i.dd
  store i8 %i.ee, ptr %gep.1.1.i, align 1, !tbaa !10
  %i.ef = zext nneg i8 %i.cc to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !15
  %i.ei = trunc i32 %i.eh to i8
  %gep.2.1.i = getelementptr i8, ptr %gep30.1.i, i64 %i.dr
  store i8 %i.ei, ptr %gep.2.1.i, align 1, !tbaa !10
  %i.ej = zext nneg i16 %i.cd to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !15
  %i.em = trunc i32 %i.el to i8
  %gep.3.1.i = getelementptr i8, ptr %gep30.1.i, i64 %i.dw
  store i8 %i.em, ptr %gep.3.1.i, align 1, !tbaa !10
  %i.en = shl nsw i64 %1, 1
  %gep30.2.i = getelementptr i8, ptr %invariant.gep29.i, i64 %i.en ; 4 uses
  %i.eo = zext nneg i8 %i.cl to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !15
  %i.er = trunc i32 %i.eq to i8
  store i8 %i.er, ptr %gep30.2.i, align 1, !tbaa !10
  %i.es = zext nneg i8 %i.cn to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !15
  %i.ev = trunc i32 %i.eu to i8
  %gep.1.2.i = getelementptr i8, ptr %gep30.2.i, i64 %i.dd
  store i8 %i.ev, ptr %gep.1.2.i, align 1, !tbaa !10
  %i.ew = zext nneg i8 %i.cq to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !15
  %i.ez = trunc i32 %i.ey to i8
  %gep.2.2.i = getelementptr i8, ptr %gep30.2.i, i64 %i.dr
  store i8 %i.ez, ptr %gep.2.2.i, align 1, !tbaa !10
  %i.fa = zext nneg i8 %i.ct to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !15
  %i.fd = trunc i32 %i.fc to i8
  %gep.3.2.i = getelementptr i8, ptr %gep30.2.i, i64 %i.dw
  store i8 %i.fd, ptr %gep.3.2.i, align 1, !tbaa !10
  %i.fe = mul nsw i64 %1, 3
  %gep30.3.i = getelementptr i8, ptr %invariant.gep29.i, i64 %i.fe ; 4 uses
  %i.ff = zext nneg i8 %i.cv to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !15
  %i.fi = trunc i32 %i.fh to i8
  store i8 %i.fi, ptr %gep30.3.i, align 1, !tbaa !10
  %i.fj = zext nneg i8 %i.cy to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !15
  %i.fm = trunc i32 %i.fl to i8
  %gep.1.3.i = getelementptr i8, ptr %gep30.3.i, i64 %i.dd
  store i8 %i.fm, ptr %gep.1.3.i, align 1, !tbaa !10
  %i.fn = zext nneg i8 %i.db to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !15
  %i.fq = trunc i32 %i.fp to i8
  %gep.2.3.i = getelementptr i8, ptr %gep30.3.i, i64 %i.dr
  store i8 %i.fq, ptr %gep.2.3.i, align 1, !tbaa !10
  %i.fr = zext nneg i16 %i.dc to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !15
  %i.fu = trunc i32 %i.ft to i8
  %gep.3.3.i = getelementptr i8, ptr %gep30.3.i, i64 %i.dw
  store i8 %i.fu, ptr %gep.3.3.i, align 1, !tbaa !10
  br label %rgtc_block_internal.exit

.preheader.us.preheader.i:                        ; preds = %bb.g
  %i.fv = zext nneg i16 %i.dc to i64
  %i.fw = zext nneg i16 %i.cd to i64
  %i.fx = and i32 %i.dg, 255
  %i.fy = mul nuw nsw i32 %i.fx, 65793
  %i.fz = or disjoint i32 %i.fy, -16777216
  store i32 %i.fz, ptr %0, align 1, !tbaa !10
  %i.ga = zext nneg i8 %i.bo to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !15
  %i.gd = and i32 %i.gc, 255
  %i.ge = mul nuw nsw i32 %i.gd, 65793
  %i.gf = or disjoint i32 %i.ge, -16777216
  %gep28.us.us.1.i = getelementptr i8, ptr %0, i64 %i.dd
  store i32 %i.gf, ptr %gep28.us.us.1.i, align 1, !tbaa !10
  %i.gg = zext nneg i8 %i.br to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !15
  %i.gj = and i32 %i.gi, 255
  %i.gk = mul nuw nsw i32 %i.gj, 65793
  %i.gl = or disjoint i32 %i.gk, -16777216
  %i.gm = shl nuw nsw i64 %i.dd, 1                ; 4 uses
  %gep28.us.us.2.i = getelementptr i8, ptr %0, i64 %i.gm
  store i32 %i.gl, ptr %gep28.us.us.2.i, align 1, !tbaa !10
  %i.gn = zext nneg i8 %i.bu to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !15
  %i.gq = and i32 %i.gp, 255
  %i.gr = mul nuw nsw i32 %i.gq, 65793
end_hunk_0
