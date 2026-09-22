Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/texturedsp?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@dxt5_block_internal:bb.a
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
  %i.e = sext i8 %i.d to i32
  %i.f = sext i8 %i.b to i32
  %i.g = add nsw i32 %i.f, 128
  %i.h = add nsw i32 %i.e, 128
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = zext i8 %i.b to i32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.034 = phi i32 [ %i.g, %bb.b ], [ %i.i, %bb.c ] ; 10 uses
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
  %i.ak = add nuw nsw i32 %i.aj, %.034
  %i.al = add nuw nsw i32 %i.ai, %i.ah
  %i.am = trunc nsw i32 %i.al to i16
  %i.an = insertelement <2 x i16> poison, i16 %i.am, i64 0
  %i.ao = trunc nsw i32 %i.ak to i16
  %i.ap = insertelement <2 x i16> %i.an, i16 %i.ao, i64 1
  %i.aq = udiv <2 x i16> %i.ap, splat (i16 7)
  %i.ar = zext nneg <2 x i16> %i.aq to <2 x i32>
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.as = mul nuw nsw i32 %.034, 3
  %i.at = shl nuw nsw i32 %.0, 2
  %i.au = shl nuw nsw i32 %.034, 1
  %i.av = shl nuw nsw i32 %.034, 2
  %i.aw = add nuw nsw i32 %i.at, %.034
  %i.ax = add nuw nsw i32 %i.p, %i.au
  %i.ay = add nuw nsw i32 %i.o, %i.as
  %i.az = add nuw nsw i32 %i.av, %.0
  %.lhs.trunc51 = trunc nsw i32 %i.aw to i16
  %.lhs.trunc49 = trunc nsw i32 %i.ax to i16
  %.lhs.trunc47 = trunc nsw i32 %i.ay to i16
  %.lhs.trunc45 = trunc nsw i32 %i.az to i16
  %i.ba = insertelement <4 x i16> poison, i16 %.lhs.trunc45, i64 0
  %i.bb = insertelement <4 x i16> %i.ba, i16 %.lhs.trunc47, i64 1
  %i.bc = insertelement <4 x i16> %i.bb, i16 %.lhs.trunc49, i64 2
  %i.bd = insertelement <4 x i16> %i.bc, i16 %.lhs.trunc51, i64 3
  %i.be = udiv <4 x i16> %i.bd, splat (i16 5)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bf = phi <4 x i16> [ %i.ag, %bb.e ], [ %i.be, %bb.f ]
  %i.bg = phi <2 x i32> [ %i.ar, %bb.e ], [ <i32 0, i32 255>, %bb.f ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bi = zext nneg <4 x i16> %i.bf to <4 x i32>
  store <4 x i32> %i.bi, ptr %i.bh, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x i32> %i.bg, ptr %i.bj, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bl = getelementptr i8, ptr %2, i64 3
  %i.bm = load i16, ptr %i.bl, align 1            ; 5 uses
  %i.bn = shl i16 %i.bm, 8
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !10  ; 3 uses
  %i.bp = zext i8 %i.bo to i16
  %i.bq = or disjoint i16 %i.bn, %i.bp
  %i.br = and i8 %i.bo, 7                         ; 2 uses
  %i.bs = lshr i8 %i.bo, 3
  %i.bt = and i8 %i.bs, 7
  %i.bu = lshr i16 %i.bq, 6
  %i.bv = trunc i16 %i.bu to i8
  %i.bw = and i8 %i.bv, 7                         ; 2 uses
  %i.bx = trunc i16 %i.bm to i8                   ; 2 uses
  %i.by = lshr i8 %i.bx, 1
  %i.bz = and i8 %i.by, 7                         ; 2 uses
  %i.ca = lshr i8 %i.bx, 4
  %i.cb = and i8 %i.ca, 7                         ; 2 uses
  %i.cc = lshr i16 %i.bm, 7
  %i.cd = trunc i16 %i.cc to i8
  %i.ce = and i8 %i.cd, 7                         ; 2 uses
  %i.cf = lshr i16 %i.bm, 10
  %i.cg = trunc nuw nsw i16 %i.cf to i8
  %i.ch = and i8 %i.cg, 7                         ; 2 uses
  %i.ci = lshr i16 %i.bm, 13                      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ck = getelementptr i8, ptr %2, i64 6
  %i.cl = load i16, ptr %i.ck, align 1            ; 5 uses
  %i.cm = shl i16 %i.cl, 8
  %i.cn = load i8, ptr %i.cj, align 1, !tbaa !10  ; 3 uses
  %i.co = zext i8 %i.cn to i16
  %i.cp = or disjoint i16 %i.cm, %i.co
  %i.cq = and i8 %i.cn, 7                         ; 2 uses
  %i.cr = lshr i8 %i.cn, 3
  %i.cs = and i8 %i.cr, 7                         ; 2 uses
  %i.ct = lshr i16 %i.cp, 6
  %i.cu = trunc i16 %i.ct to i8
  %i.cv = and i8 %i.cu, 7                         ; 2 uses
  %i.cw = trunc i16 %i.cl to i8                   ; 2 uses
  %i.cx = lshr i8 %i.cw, 1
  %i.cy = and i8 %i.cx, 7                         ; 2 uses
  %i.cz = lshr i8 %i.cw, 4
  %i.da = and i8 %i.cz, 7                         ; 2 uses
  %i.db = lshr i16 %i.cl, 7
  %i.dc = trunc i16 %i.db to i8
  %i.dd = and i8 %i.dc, 7                         ; 2 uses
  %i.de = lshr i16 %i.cl, 10
  %i.df = trunc nuw nsw i16 %i.de to i8
  %i.dg = and i8 %i.df, 7                         ; 2 uses
  %i.dh = lshr i16 %i.cl, 13                      ; 2 uses
  %.not.i = icmp eq i32 %4, 0
  %i.di = zext nneg i8 %i.bt to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.di ; 2 uses
  br i1 %.not.i, label %.preheader.us.preheader.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.g
  %i.dk = zext nneg i32 %5 to i64
  %invariant.gep29.i = getelementptr i8, ptr %0, i64 %i.dk ; 7 uses
  %7 = zext nneg i32 %6 to i64                    ; 6 uses
  %8 = zext nneg i8 %i.br to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !15
  %11 = trunc i32 %10 to i8
  store i8 %11, ptr %invariant.gep29.i, align 1, !tbaa !10
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !15
  %i.dm = trunc i32 %i.dl to i8
  %gep.1.i = getelementptr i8, ptr %invariant.gep29.i, i64 %7
  store i8 %i.dm, ptr %gep.1.i, align 1, !tbaa !10
  %i.dn = zext nneg i8 %i.bw to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !15
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = shl nuw nsw i64 %7, 1                   ; 4 uses
  %gep.2.i = getelementptr i8, ptr %invariant.gep29.i, i64 %i.dr
  store i8 %i.dq, ptr %gep.2.i, align 1, !tbaa !10
  %i.ds = zext nneg i8 %i.bz to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !15
  %i.dv = trunc i32 %i.du to i8
  %i.dw = mul nuw nsw i64 %7, 3                   ; 4 uses
  %gep.3.i = getelementptr i8, ptr %invariant.gep29.i, i64 %i.dw
  store i8 %i.dv, ptr %gep.3.i, align 1, !tbaa !10
  %gep30.1.i = getelementptr i8, ptr %invariant.gep29.i, i64 %1 ; 4 uses
  %i.dx = zext nneg i8 %i.cb to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !15
  %i.ea = trunc i32 %i.dz to i8
  store i8 %i.ea, ptr %gep30.1.i, align 1, !tbaa !10
  %i.eb = zext nneg i8 %i.ce to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !15
  %i.ee = trunc i32 %i.ed to i8
  %gep.1.1.i = getelementptr i8, ptr %gep30.1.i, i64 %7
  store i8 %i.ee, ptr %gep.1.1.i, align 1, !tbaa !10
  %i.ef = zext nneg i8 %i.ch to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !15
  %i.ei = trunc i32 %i.eh to i8
  %gep.2.1.i = getelementptr i8, ptr %gep30.1.i, i64 %i.dr
  store i8 %i.ei, ptr %gep.2.1.i, align 1, !tbaa !10
  %i.ej = zext nneg i16 %i.ci to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !15
  %i.em = trunc i32 %i.el to i8
  %gep.3.1.i = getelementptr i8, ptr %gep30.1.i, i64 %i.dw
  store i8 %i.em, ptr %gep.3.1.i, align 1, !tbaa !10
  %i.en = shl nsw i64 %1, 1
  %gep30.2.i = getelementptr i8, ptr %invariant.gep29.i, i64 %i.en ; 4 uses
  %i.eo = zext nneg i8 %i.cq to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !15
  %i.er = trunc i32 %i.eq to i8
  store i8 %i.er, ptr %gep30.2.i, align 1, !tbaa !10
  %i.es = zext nneg i8 %i.cs to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !15
  %i.ev = trunc i32 %i.eu to i8
  %gep.1.2.i = getelementptr i8, ptr %gep30.2.i, i64 %7
  store i8 %i.ev, ptr %gep.1.2.i, align 1, !tbaa !10
  %i.ew = zext nneg i8 %i.cv to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !15
  %i.ez = trunc i32 %i.ey to i8
  %gep.2.2.i = getelementptr i8, ptr %gep30.2.i, i64 %i.dr
  store i8 %i.ez, ptr %gep.2.2.i, align 1, !tbaa !10
  %i.fa = zext nneg i8 %i.cy to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !15
  %i.fd = trunc i32 %i.fc to i8
  %gep.3.2.i = getelementptr i8, ptr %gep30.2.i, i64 %i.dw
  store i8 %i.fd, ptr %gep.3.2.i, align 1, !tbaa !10
  %i.fe = mul nsw i64 %1, 3
  %gep30.3.i = getelementptr i8, ptr %invariant.gep29.i, i64 %i.fe ; 4 uses
  %i.ff = zext nneg i8 %i.da to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !15
  %i.fi = trunc i32 %i.fh to i8
  store i8 %i.fi, ptr %gep30.3.i, align 1, !tbaa !10
  %i.fj = zext nneg i8 %i.dd to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !15
  %i.fm = trunc i32 %i.fl to i8
  %gep.1.3.i = getelementptr i8, ptr %gep30.3.i, i64 %7
  store i8 %i.fm, ptr %gep.1.3.i, align 1, !tbaa !10
  %i.fn = zext nneg i8 %i.dg to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !15
  %i.fq = trunc i32 %i.fp to i8
  %gep.2.3.i = getelementptr i8, ptr %gep30.3.i, i64 %i.dr
  store i8 %i.fq, ptr %gep.2.3.i, align 1, !tbaa !10
  %i.fr = zext nneg i16 %i.dh to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !15
  %i.fu = trunc i32 %i.ft to i8
  %gep.3.3.i = getelementptr i8, ptr %gep30.3.i, i64 %i.dw
  store i8 %i.fu, ptr %gep.3.3.i, align 1, !tbaa !10
  br label %rgtc_block_internal.exit

.preheader.us.preheader.i:                        ; preds = %bb.g
  %i.fv = zext nneg i32 %6 to i64                 ; 6 uses
  %i.fw = zext nneg i8 %i.br to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fw
  %13 = load i32, ptr %12, align 4, !tbaa !15
  %14 = and i32 %13, 255
  %15 = mul nuw nsw i32 %14, 65793
  %16 = or disjoint i32 %15, -16777216
  store i32 %16, ptr %0, align 1, !tbaa !10
  %i.fx = load i32, ptr %i.dj, align 4, !tbaa !15
  %i.fy = and i32 %i.fx, 255
  %i.fz = mul nuw nsw i32 %i.fy, 65793
  %i.ga = or disjoint i32 %i.fz, -16777216
  %gep28.us.us.1.i = getelementptr i8, ptr %0, i64 %i.fv
  store i32 %i.ga, ptr %gep28.us.us.1.i, align 1, !tbaa !10
  %i.gb = zext nneg i8 %i.bw to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !15
  %i.ge = and i32 %i.gd, 255
  %i.gf = mul nuw nsw i32 %i.ge, 65793
  %i.gg = or disjoint i32 %i.gf, -16777216
  %i.gh = shl nuw nsw i64 %i.fv, 1                ; 4 uses
  %gep28.us.us.2.i = getelementptr i8, ptr %0, i64 %i.gh
  store i32 %i.gg, ptr %gep28.us.us.2.i, align 1, !tbaa !10
  %i.gi = zext nneg i8 %i.bz to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !15
  %i.gl = and i32 %i.gk, 255
  %i.gm = mul nuw nsw i32 %i.gl, 65793
  %i.gn = or disjoint i32 %i.gm, -16777216
  %i.go = mul nuw nsw i64 %i.fv, 3                ; 4 uses
  %gep28.us.us.3.i = getelementptr i8, ptr %0, i64 %i.go
  store i32 %i.gn, ptr %gep28.us.us.3.i, align 1, !tbaa !10
  %invariant.gep27.us.1.i = getelementptr i8, ptr %0, i64 %1 ; 4 uses
  %i.gp = zext nneg i8 %i.cb to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !15
  %i.gs = and i32 %i.gr, 255
  %i.gt = mul nuw nsw i32 %i.gs, 65793
  %i.gu = or disjoint i32 %i.gt, -16777216
  store i32 %i.gu, ptr %invariant.gep27.us.1.i, align 1, !tbaa !10
  %i.gv = zext nneg i8 %i.ce to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !15
  %i.gy = and i32 %i.gx, 255
  %i.gz = mul nuw nsw i32 %i.gy, 65793
  %i.ha = or disjoint i32 %i.gz, -16777216
  %gep28.us.us.1.1.i = getelementptr i8, ptr %invariant.gep27.us.1.i, i64 %i.fv
  store i32 %i.ha, ptr %gep28.us.us.1.1.i, align 1, !tbaa !10
  %i.hb = zext nneg i8 %i.ch to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !15
  %i.he = and i32 %i.hd, 255
  %i.hf = mul nuw nsw i32 %i.he, 65793
  %i.hg = or disjoint i32 %i.hf, -16777216
  %gep28.us.us.2.1.i = getelementptr i8, ptr %invariant.gep27.us.1.i, i64 %i.gh
  store i32 %i.hg, ptr %gep28.us.us.2.1.i, align 1, !tbaa !10
  %17 = zext nneg i16 %i.ci to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %17
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !15
  %i.hj = and i32 %i.hi, 255
  %i.hk = mul nuw nsw i32 %i.hj, 65793
  %i.hl = or disjoint i32 %i.hk, -16777216
  %gep28.us.us.3.1.i = getelementptr i8, ptr %invariant.gep27.us.1.i, i64 %i.go
  store i32 %i.hl, ptr %gep28.us.us.3.1.i, align 1, !tbaa !10
  %i.hm = shl nsw i64 %1, 1
  %invariant.gep27.us.2.i = getelementptr i8, ptr %0, i64 %i.hm ; 4 uses
  %i.hn = zext nneg i8 %i.cq to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !15
  %i.hq = and i32 %i.hp, 255
  %i.hr = mul nuw nsw i32 %i.hq, 65793
  %i.hs = or disjoint i32 %i.hr, -16777216
  store i32 %i.hs, ptr %invariant.gep27.us.2.i, align 1, !tbaa !10
  %i.ht = zext nneg i8 %i.cs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !15
  %i.hw = and i32 %i.hv, 255
  %i.hx = mul nuw nsw i32 %i.hw, 65793
  %i.hy = or disjoint i32 %i.hx, -16777216
  %gep28.us.us.1.2.i = getelementptr i8, ptr %invariant.gep27.us.2.i, i64 %i.fv
  store i32 %i.hy, ptr %gep28.us.us.1.2.i, align 1, !tbaa !10
  %i.hz = zext nneg i8 %i.cv to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !15
  %i.ic = and i32 %i.ib, 255
  %i.id = mul nuw nsw i32 %i.ic, 65793
  %i.ie = or disjoint i32 %i.id, -16777216
  %gep28.us.us.2.2.i = getelementptr i8, ptr %invariant.gep27.us.2.i, i64 %i.gh
  store i32 %i.ie, ptr %gep28.us.us.2.2.i, align 1, !tbaa !10
  %i.if = zext nneg i8 %i.cy to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !15
  %i.ii = and i32 %i.ih, 255
  %i.ij = mul nuw nsw i32 %i.ii, 65793
  %i.ik = or disjoint i32 %i.ij, -16777216
  %gep28.us.us.3.2.i = getelementptr i8, ptr %invariant.gep27.us.2.i, i64 %i.go
  store i32 %i.ik, ptr %gep28.us.us.3.2.i, align 1, !tbaa !10
  %i.il = mul nsw i64 %1, 3
  %invariant.gep27.us.3.i = getelementptr i8, ptr %0, i64 %i.il ; 4 uses
  %i.im = zext nneg i8 %i.da to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !15
  %i.ip = and i32 %i.io, 255
  %i.iq = mul nuw nsw i32 %i.ip, 65793
  %i.ir = or disjoint i32 %i.iq, -16777216
  store i32 %i.ir, ptr %invariant.gep27.us.3.i, align 1, !tbaa !10
  %i.is = zext nneg i8 %i.dd to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !15
  %i.iv = and i32 %i.iu, 255
  %i.iw = mul nuw nsw i32 %i.iv, 65793
  %i.ix = or disjoint i32 %i.iw, -16777216
  %gep28.us.us.1.3.i = getelementptr i8, ptr %invariant.gep27.us.3.i, i64 %i.fv
  store i32 %i.ix, ptr %gep28.us.us.1.3.i, align 1, !tbaa !10
  %i.iy = zext nneg i8 %i.dg to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !15
  %i.jb = and i32 %i.ja, 255
  %i.jc = mul nuw nsw i32 %i.jb, 65793
  %i.jd = or disjoint i32 %i.jc, -16777216
  %gep28.us.us.2.3.i = getelementptr i8, ptr %invariant.gep27.us.3.i, i64 %i.gh
  store i32 %i.jd, ptr %gep28.us.us.2.3.i, align 1, !tbaa !10
  %18 = zext nneg i16 %i.dh to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %18
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !15
  %i.jg = and i32 %i.jf, 255
  %i.jh = mul nuw nsw i32 %i.jg, 65793
  %i.ji = or disjoint i32 %i.jh, -16777216
  %gep28.us.us.3.3.i = getelementptr i8, ptr %invariant.gep27.us.3.i, i64 %i.go
  store i32 %i.ji, ptr %gep28.us.us.3.3.i, align 1, !tbaa !10
  br label %rgtc_block_internal.exit

rgtc_block_internal.exit:                         ; preds = %.preheader.preheader.i, %.preheader.us.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @rgtc2_block_internal(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #4 {
.preheader:
  %i.a = alloca [64 x i8], align 16               ; 19 uses
  %i.b = alloca [64 x i8], align 16               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call fastcc void @rgtc1_block_internal(ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 4)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call fastcc void @rgtc1_block_internal(ptr noundef nonnull %i.b, i64 noundef 16, ptr noundef nonnull %i.c, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 4)
  %i.d = load i8, ptr %i.a, align 16, !tbaa !10   ; 2 uses
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %i.f = load i8, ptr %i.b, align 16, !tbaa !10   ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = mul nuw nsw i32 %i.e, %i.e
  %i.i = mul nuw nsw i32 %i.g, %i.g
  %i.j = add nuw nsw i32 %i.i, %i.h               ; 2 uses
  %i.k = icmp samesign ult i32 %i.j, 65024
  br i1 %i.k, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader
  %i.l = sub nuw nsw i32 65025, %i.j
  %i.m = lshr i32 %i.l, 1
  %i.n = uitofp nneg i32 %i.m to float
  %i.o = tail call nsz float @llvm.sqrt.f32(float %i.n)
  %i.p = fpext nsz float %i.o to double
  %i.q = tail call i64 @llvm.lrint.i64.f64(double %i.p)
  %i.r = trunc i64 %i.q to i8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader
  %.0 = phi i8 [ %i.r, %bb.a ], [ 127, %.preheader ]
  store i8 %i.d, ptr %0, align 1, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.f, ptr %i.s, align 1, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.0, ptr %i.t, align 1, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 -1, ptr %i.u, align 1, !tbaa !10
  %gep.1 = getelementptr i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.w = load i8, ptr %i.v, align 4, !tbaa !10    ; 2 uses
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.z = load i8, ptr %i.y, align 4, !tbaa !10    ; 2 uses
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  %i.ab = mul nuw nsw i32 %i.x, %i.x
  %i.ac = mul nuw nsw i32 %i.aa, %i.aa
  %i.ad = add nuw nsw i32 %i.ac, %i.ab            ; 2 uses
  %i.ae = icmp samesign ult i32 %i.ad, 65024
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = sub nuw nsw i32 65025, %i.ad
  %i.ag = lshr i32 %i.af, 1
  %i.ah = uitofp nneg i32 %i.ag to float
  %i.ai = tail call nsz float @llvm.sqrt.f32(float %i.ah)
  %i.aj = fpext nsz float %i.ai to double
  %i.ak = tail call i64 @llvm.lrint.i64.f64(double %i.aj)
  %i.al = trunc i64 %i.ak to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.1 = phi i8 [ %i.al, %bb.c ], [ 127, %bb.b ]
  store i8 %i.w, ptr %gep.1, align 1, !tbaa !10
  %i.am = getelementptr i8, ptr %0, i64 5
  store i8 %i.z, ptr %i.am, align 1, !tbaa !10
  %i.an = getelementptr i8, ptr %0, i64 6
  store i8 %.0.1, ptr %i.an, align 1, !tbaa !10
  %i.ao = getelementptr i8, ptr %0, i64 7
  store i8 -1, ptr %i.ao, align 1, !tbaa !10
  %gep.2 = getelementptr i8, ptr %0, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !10  ; 2 uses
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !10  ; 2 uses
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = mul nuw nsw i32 %i.ar, %i.ar
  %i.aw = mul nuw nsw i32 %i.au, %i.au
  %i.ax = add nuw nsw i32 %i.aw, %i.av            ; 2 uses
  %i.ay = icmp samesign ult i32 %i.ax, 65024
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = sub nuw nsw i32 65025, %i.ax
  %i.ba = lshr i32 %i.az, 1
  %i.bb = uitofp nneg i32 %i.ba to float
  %i.bc = tail call nsz float @llvm.sqrt.f32(float %i.bb)
  %i.bd = fpext nsz float %i.bc to double
  %i.be = tail call i64 @llvm.lrint.i64.f64(double %i.bd)
  %i.bf = trunc i64 %i.be to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.2 = phi i8 [ %i.bf, %bb.e ], [ 127, %bb.d ]
  store i8 %i.aq, ptr %gep.2, align 1, !tbaa !10
  %i.bg = getelementptr i8, ptr %0, i64 9
  store i8 %i.at, ptr %i.bg, align 1, !tbaa !10
  %i.bh = getelementptr i8, ptr %0, i64 10
  store i8 %.0.2, ptr %i.bh, align 1, !tbaa !10
  %i.bi = getelementptr i8, ptr %0, i64 11
  store i8 -1, ptr %i.bi, align 1, !tbaa !10
  %gep.3 = getelementptr i8, ptr %0, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !10  ; 2 uses
  %i.bl = zext i8 %i.bk to i32                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !10  ; 2 uses
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = mul nuw nsw i32 %i.bl, %i.bl
  %i.bq = mul nuw nsw i32 %i.bo, %i.bo
  %i.br = add nuw nsw i32 %i.bq, %i.bp            ; 2 uses
  %i.bs = icmp samesign ult i32 %i.br, 65024
  br i1 %i.bs, label %bb.g, label %.preheader.1

bb.g:                                             ; preds = %bb.f
  %i.bt = sub nuw nsw i32 65025, %i.br
  %i.bu = lshr i32 %i.bt, 1
  %i.bv = uitofp nneg i32 %i.bu to float
  %i.bw = tail call nsz float @llvm.sqrt.f32(float %i.bv)
  %i.bx = fpext nsz float %i.bw to double
  %i.by = tail call i64 @llvm.lrint.i64.f64(double %i.bx)
  %i.bz = trunc i64 %i.by to i8
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.g, %bb.f
  %.0.3 = phi i8 [ %i.bz, %bb.g ], [ 127, %bb.f ]
  store i8 %i.bk, ptr %gep.3, align 1, !tbaa !10
  %i.ca = getelementptr i8, ptr %0, i64 13
  store i8 %i.bn, ptr %i.ca, align 1, !tbaa !10
  %i.cb = getelementptr i8, ptr %0, i64 14
  store i8 %.0.3, ptr %i.cb, align 1, !tbaa !10
  %i.cc = getelementptr i8, ptr %0, i64 15
  store i8 -1, ptr %i.cc, align 1, !tbaa !10
  %invariant.gep.1 = getelementptr i8, ptr %0, i64 %1 ; 16 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ce = load i8, ptr %i.cd, align 16, !tbaa !10 ; 2 uses
  %i.cf = zext i8 %i.ce to i32                    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ch = load i8, ptr %i.cg, align 16, !tbaa !10 ; 2 uses
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = mul nuw nsw i32 %i.cf, %i.cf
  %i.ck = mul nuw nsw i32 %i.ci, %i.ci
  %i.cl = add nuw nsw i32 %i.ck, %i.cj            ; 2 uses
  %i.cm = icmp samesign ult i32 %i.cl, 65024
  br i1 %i.cm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader.1
  %i.cn = sub nuw nsw i32 65025, %i.cl
  %i.co = lshr i32 %i.cn, 1
  %i.cp = uitofp nneg i32 %i.co to float
  %i.cq = tail call nsz float @llvm.sqrt.f32(float %i.cp)
  %i.cr = fpext nsz float %i.cq to double
  %i.cs = tail call i64 @llvm.lrint.i64.f64(double %i.cr)
  %i.ct = trunc i64 %i.cs to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader.1
  %.0.135 = phi i8 [ %i.ct, %bb.h ], [ 127, %.preheader.1 ]
  store i8 %i.ce, ptr %invariant.gep.1, align 1, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 1
  store i8 %i.ch, ptr %i.cu, align 1, !tbaa !10
  %i.cv = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 2
  store i8 %.0.135, ptr %i.cv, align 1, !tbaa !10
  %i.cw = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 3
  store i8 -1, ptr %i.cw, align 1, !tbaa !10
  %gep.1.1 = getelementptr i8, ptr %invariant.gep.1, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.cy = load i8, ptr %i.cx, align 4, !tbaa !10  ; 2 uses
  %i.cz = zext i8 %i.cy to i32                    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.db = load i8, ptr %i.da, align 4, !tbaa !10  ; 2 uses
  %i.dc = zext i8 %i.db to i32                    ; 2 uses
  %i.dd = mul nuw nsw i32 %i.cz, %i.cz
  %i.de = mul nuw nsw i32 %i.dc, %i.dc
  %i.df = add nuw nsw i32 %i.de, %i.dd            ; 2 uses
  %i.dg = icmp samesign ult i32 %i.df, 65024
  br i1 %i.dg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dh = sub nuw nsw i32 65025, %i.df
  %i.di = lshr i32 %i.dh, 1
  %i.dj = uitofp nneg i32 %i.di to float
  %i.dk = tail call nsz float @llvm.sqrt.f32(float %i.dj)
  %i.dl = fpext nsz float %i.dk to double
  %i.dm = tail call i64 @llvm.lrint.i64.f64(double %i.dl)
end_hunk_0
