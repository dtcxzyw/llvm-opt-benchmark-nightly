inline.NumInlined: 3419
inline.NumDeleted: 948
begin_hunk_0_@_Z18bcdec__color_blockPKvPvii:bb.a
  %i.az = trunc nuw nsw i32 %i.ay to i16
  %.lhs.trunc60 = add nuw nsw i16 %i.az, 1
  %i.ba = udiv i16 %.lhs.trunc60, 3
  %.zext61 = zext nneg i16 %i.ba to i32
  %i.bb = shl nuw nsw i32 %i.r, 1
  %i.bc = add nuw nsw i32 %i.bb, %i.ak
  %i.bd = trunc nuw nsw i32 %i.bc to i16
  %.lhs.trunc62 = add nuw nsw i16 %i.bd, 1
  %i.be = udiv i16 %.lhs.trunc62, 3
  %.zext63 = zext nneg i16 %i.be to i32
  %i.bf = shl nuw nsw i32 %.zext63, 16
  %i.bg = shl nuw nsw i32 %.zext61, 8
  %i.bh = or disjoint i32 %i.bf, %.zext
  %i.bi = or i32 %i.bh, %i.bg
  %i.bj = shl nuw nsw i32 %i.ab, 1
  %i.bk = add nuw nsw i32 %i.bj, %i.i
  %i.bl = trunc nuw nsw i32 %i.bk to i16
  %.lhs.trunc64 = add nuw nsw i16 %i.bl, 1
  %i.bm = udiv i16 %.lhs.trunc64, 3
  %.zext65 = zext nneg i16 %i.bm to i32
  %i.bn = shl nuw nsw i32 %i.ag, 1
  %i.bo = add nuw nsw i32 %i.bn, %i.n
  %i.bp = trunc nuw nsw i32 %i.bo to i16
  %.lhs.trunc66 = add nuw nsw i16 %i.bp, 1
  %i.bq = udiv i16 %.lhs.trunc66, 3
  %.zext67 = zext nneg i16 %i.bq to i32
  %i.br = shl nuw nsw i32 %i.ak, 1
  %i.bs = add nuw nsw i32 %i.br, %i.r
  %i.bt = trunc nuw nsw i32 %i.bs to i16
  %.lhs.trunc68 = add nuw nsw i16 %i.bt, 1
  %i.bu = udiv i16 %.lhs.trunc68, 3
  %.zext69 = zext nneg i16 %i.bu to i32
  %i.bv = shl nuw nsw i32 %.zext69, 16
  %i.bw = shl nuw nsw i32 %.zext67, 8
  %i.bx = or disjoint i32 %i.bv, %.zext65
  %i.by = or i32 %i.bx, %i.bw
  %i.bz = or i32 %i.by, -16777216
  br label %.preheader

bb.c:                                             ; preds = %bb.a
  %i.ca = add nuw nsw i32 %i.i, 1
  %i.cb = add nuw nsw i32 %i.ca, %i.ab
  %i.cc = lshr i32 %i.cb, 1
  %i.cd = add nuw nsw i32 %i.ag, %i.n
  %i.ce = add nuw nsw i32 %i.ak, %i.r
  %i.cf = shl nuw nsw i32 %i.ce, 15
  %i.cg = add nuw nsw i32 %i.cf, 32768
  %i.ch = and i32 %i.cg, 16711680
  %i.ci = shl nuw nsw i32 %i.cd, 7
  %i.cj = add nuw nsw i32 %i.ci, 128
  %i.ck = and i32 %i.cj, 16776960
  %i.cl = or i32 %i.cc, %i.ch
  %i.cm = or i32 %i.cl, %i.ck
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.b
  %.sink76.in = phi i32 [ %i.bi, %bb.b ], [ %i.cm, %bb.c ]
  %.sink = phi i32 [ %i.bz, %bb.b ], [ 0, %bb.c ]
  %.sink76 = or i32 %.sink76.in, -16777216
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sink76, ptr %i.cn, align 8, !tbaa !3
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.sink, ptr %i.co, align 4, !tbaa !3
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3  ; 16 uses
  %i.cr = sext i32 %2 to i64                      ; 3 uses
  %i.cs = and i32 %i.cq, 3
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  store i32 %i.cv, ptr %1, align 4, !tbaa !3
  %i.cw = lshr i32 %i.cq, 2
  %i.cx = and i32 %i.cw, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.da, ptr %i.db, align 4, !tbaa !3
  %i.dc = lshr i32 %i.cq, 4
  %i.dd = and i32 %i.dc, 3
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !3
  %i.di = lshr i32 %i.cq, 6
  %i.dj = and i32 %i.di, 3
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !3
  %i.do = lshr i32 %i.cq, 8
  %i.dp = getelementptr inbounds i8, ptr %1, i64 %i.cr ; 5 uses
  %i.dq = and i32 %i.do, 3
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3
  store i32 %i.dt, ptr %i.dp, align 4, !tbaa !3
  %i.du = lshr i32 %i.cq, 10
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !3
  %i.ea = lshr i32 %i.cq, 12
  %i.eb = and i32 %i.ea, 3
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !3
  %i.eg = lshr i32 %i.cq, 14
  %i.eh = and i32 %i.eg, 3
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3
  %i.el = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !3
  %i.em = lshr i32 %i.cq, 16
  %i.en = getelementptr inbounds i8, ptr %i.dp, i64 %i.cr ; 5 uses
  %i.eo = and i32 %i.em, 3
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3
  store i32 %i.er, ptr %i.en, align 4, !tbaa !3
  %i.es = lshr i32 %i.cq, 18
  %i.et = and i32 %i.es, 3
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !3
  %i.ey = lshr i32 %i.cq, 20
  %i.ez = and i32 %i.ey, 3
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3
  %i.fd = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !3
  %i.fe = lshr i32 %i.cq, 22
  %i.ff = and i32 %i.fe, 3
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !3
  %i.fj = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !3
  %i.fk = lshr i32 %i.cq, 24
  %i.fl = getelementptr inbounds i8, ptr %i.en, i64 %i.cr ; 4 uses
  %i.fm = and i32 %i.fk, 3
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3
  store i32 %i.fp, ptr %i.fl, align 4, !tbaa !3
  %i.fq = lshr i32 %i.cq, 26
  %i.fr = and i32 %i.fq, 3
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !3
  %i.fw = lshr i32 %i.cq, 28
  %i.fx = and i32 %i.fw, 3
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !3
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !3
  %i.gc = lshr i32 %i.cq, 30
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Z24bcdec__sharp_alpha_blockPKvPvi(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 1), (4, 5), (8, 9), (12, 13)) %1, i32 noundef %2) local_unnamed_addr #0 {
.preheader:
  %i.a = sext i32 %2 to i64                       ; 3 uses
  %i.b = load i16, ptr %0, align 2, !tbaa !7
  %i.c = trunc i16 %i.b to i8
  %i.d = and i8 %i.c, 15
  %i.e = mul nuw i8 %i.d, 17
  store i8 %i.e, ptr %1, align 1, !tbaa !9
  %i.f = load i16, ptr %0, align 2, !tbaa !7
  %i.g = trunc i16 %i.f to i8
  %i.h = lshr i8 %i.g, 4
  %i.i = mul nuw i8 %i.h, 17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.i, ptr %i.j, align 1, !tbaa !9
  %3 = load i16, ptr %0, align 2, !tbaa !7
  %4 = lshr i16 %3, 8
  %5 = trunc nuw i16 %4 to i8
  %i.k = and i8 %5, 15
  %i.l = mul nuw i8 %i.k, 17
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.l, ptr %i.m, align 1, !tbaa !9
  %i.n = load i16, ptr %0, align 2, !tbaa !7
  %i.o = lshr i16 %i.n, 12
  %i.p = trunc nuw nsw i16 %i.o to i8
  %i.q = mul nuw i8 %i.p, 17
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.q, ptr %i.r, align 1, !tbaa !9
  %i.s = getelementptr inbounds i8, ptr %1, i64 %i.a ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !7
  %i.v = trunc i16 %i.u to i8
  %i.w = and i8 %i.v, 15
  %i.x = mul nuw i8 %i.w, 17
  store i8 %i.x, ptr %i.s, align 1, !tbaa !9
  %i.y = load i16, ptr %i.t, align 2, !tbaa !7
  %i.z = trunc i16 %i.y to i8
  %i.aa = lshr i8 %i.z, 4
  %i.ab = mul nuw i8 %i.aa, 17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !9
  %6 = load i16, ptr %i.t, align 2, !tbaa !7
  %7 = lshr i16 %6, 8
  %8 = trunc nuw i16 %7 to i8
  %i.ad = and i8 %8, 15
  %i.ae = mul nuw i8 %i.ad, 17
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !9
  %i.ag = load i16, ptr %i.t, align 2, !tbaa !7
  %i.ah = lshr i16 %i.ag, 12
  %i.ai = trunc nuw nsw i16 %i.ah to i8
  %i.aj = mul nuw i8 %i.ai, 17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !9
  %i.al = getelementptr inbounds i8, ptr %i.s, i64 %i.a ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !7
  %i.ao = trunc i16 %i.an to i8
  %i.ap = and i8 %i.ao, 15
  %i.aq = mul nuw i8 %i.ap, 17
  store i8 %i.aq, ptr %i.al, align 1, !tbaa !9
  %i.ar = load i16, ptr %i.am, align 2, !tbaa !7
  %i.as = trunc i16 %i.ar to i8
  %i.at = lshr i8 %i.as, 4
  %i.au = mul nuw i8 %i.at, 17
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i8 %i.au, ptr %i.av, align 1, !tbaa !9
  %9 = load i16, ptr %i.am, align 2, !tbaa !7
  %10 = lshr i16 %9, 8
  %11 = trunc nuw i16 %10 to i8
  %i.aw = and i8 %11, 15
  %i.ax = mul nuw i8 %i.aw, 17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !9
  %i.az = load i16, ptr %i.am, align 2, !tbaa !7
  %i.ba = lshr i16 %i.az, 12
  %i.bb = trunc nuw nsw i16 %i.ba to i8
  %i.bc = mul nuw i8 %i.bb, 17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !9
  %i.be = getelementptr inbounds i8, ptr %i.al, i64 %i.a ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 4 uses
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !7
  %i.bh = trunc i16 %i.bg to i8
  %i.bi = and i8 %i.bh, 15
  %i.bj = mul nuw i8 %i.bi, 17
  store i8 %i.bj, ptr %i.be, align 1, !tbaa !9
  %i.bk = load i16, ptr %i.bf, align 2, !tbaa !7
  %i.bl = trunc i16 %i.bk to i8
  %i.bm = lshr i8 %i.bl, 4
  %i.bn = mul nuw i8 %i.bm, 17
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !9
  %12 = load i16, ptr %i.bf, align 2, !tbaa !7
  %13 = lshr i16 %12, 8
  %14 = trunc nuw i16 %13 to i8
  %i.bp = and i8 %14, 15
  %i.bq = mul nuw i8 %i.bp, 17
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !9
  %i.bs = load i16, ptr %i.bf, align 2, !tbaa !7
  %i.bt = lshr i16 %i.bs, 12
  %i.bu = trunc nuw nsw i16 %i.bt to i8
  %i.bv = mul nuw i8 %i.bu, 17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Z25bcdec__smooth_alpha_blockPKvPvii(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 1)) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 2                 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.b = load i64, ptr %0, align 8, !tbaa !10     ; 18 uses
  %i.c = trunc i64 %i.b to i16
  store i16 %i.c, ptr %i.a, align 2
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  %i.e = and i32 %i.d, 255                        ; 11 uses
  %i.f = lshr i32 %i.d, 8
  %i.g = and i32 %i.f, 255                        ; 9 uses
  %i.h = icmp samesign ugt i32 %i.e, %i.g
  %i.i = shl nuw nsw i32 %i.g, 1                  ; 2 uses
  %i.j = mul nuw nsw i32 %i.g, 3                  ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = mul nuw nsw i32 %i.e, 6
  %i.l = add nuw nsw i32 %i.k, %i.g
  %i.m = trunc nuw nsw i32 %i.l to i16
  %.lhs.trunc = add nuw nsw i16 %i.m, 1
  %i.n = udiv i16 %.lhs.trunc, 7
  %i.o = mul nuw nsw i32 %i.e, 5
  %i.p = add nuw nsw i32 %i.i, %i.o
  %i.q = trunc nuw nsw i32 %i.p to i16
  %.lhs.trunc22 = add nuw nsw i16 %i.q, 1
  %i.r = udiv i16 %.lhs.trunc22, 7
  %i.s = shl nuw nsw i32 %i.e, 2
  %i.t = add nuw nsw i32 %i.j, %i.s
  %i.u = trunc nuw nsw i32 %i.t to i16
  %.lhs.trunc24 = add nuw nsw i16 %i.u, 1
  %i.v = udiv i16 %.lhs.trunc24, 7
  %i.w = mul nuw nsw i32 %i.e, 3
  %i.x = shl nuw nsw i32 %i.g, 2
  %i.y = add nuw nsw i32 %i.x, %i.w
  %i.z = trunc nuw nsw i32 %i.y to i16
  %.lhs.trunc26 = add nuw nsw i16 %i.z, 1
  %i.aa = udiv i16 %.lhs.trunc26, 7
  %i.ab = shl nuw nsw i32 %i.e, 1
  %i.ac = mul nuw nsw i32 %i.g, 5
  %i.ad = add nuw nsw i32 %i.ac, %i.ab
  %i.ae = trunc nuw nsw i32 %i.ad to i16
  %.lhs.trunc28 = add nuw nsw i16 %i.ae, 1
  %i.af = udiv i16 %.lhs.trunc28, 7
  %i.ag = trunc nuw i16 %i.af to i8
  %i.ah = mul nuw nsw i32 %i.g, 6
  %i.ai = add nuw nsw i32 %i.ah, %i.e
  %i.aj = trunc nuw nsw i32 %i.ai to i16
  %.lhs.trunc30 = add nuw nsw i16 %i.aj, 1
  %i.ak = udiv i16 %.lhs.trunc30, 7
  %i.al = trunc nuw i16 %i.ak to i8
  br label %.preheader

bb.c:                                             ; preds = %bb.a
  %i.am = shl nuw nsw i32 %i.e, 2
  %i.an = add nuw nsw i32 %i.am, %i.g
  %i.ao = trunc nuw nsw i32 %i.an to i16
  %.lhs.trunc32 = add nuw nsw i16 %i.ao, 1
  %i.ap = udiv i16 %.lhs.trunc32, 5
  %i.aq = mul nuw nsw i32 %i.e, 3
  %i.ar = add nuw nsw i32 %i.i, %i.aq
  %i.as = trunc nuw nsw i32 %i.ar to i16
  %.lhs.trunc34 = add nuw nsw i16 %i.as, 1
  %i.at = udiv i16 %.lhs.trunc34, 5
  %i.au = shl nuw nsw i32 %i.e, 1
  %i.av = add nuw nsw i32 %i.j, %i.au
  %i.aw = trunc nuw nsw i32 %i.av to i16
  %.lhs.trunc36 = add nuw nsw i16 %i.aw, 1
  %i.ax = udiv i16 %.lhs.trunc36, 5
  %i.ay = shl nuw nsw i32 %i.g, 2
  %i.az = add nuw nsw i32 %i.ay, %i.e
  %i.ba = trunc nuw nsw i32 %i.az to i16
  %.lhs.trunc38 = add nuw nsw i16 %i.ba, 1
  %i.bb = udiv i16 %.lhs.trunc38, 5
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.b
  %.sink50.in = phi i16 [ %i.n, %bb.b ], [ %i.ap, %bb.c ]
  %.sink49.in = phi i16 [ %i.r, %bb.b ], [ %i.at, %bb.c ]
  %.sink48.in = phi i16 [ %i.v, %bb.b ], [ %i.ax, %bb.c ]
  %.sink47.in = phi i16 [ %i.aa, %bb.b ], [ %i.bb, %bb.c ]
  %.sink46 = phi i8 [ %i.ag, %bb.b ], [ 0, %bb.c ]
  %.sink = phi i8 [ %i.al, %bb.b ], [ -1, %bb.c ]
  %.sink47 = trunc nuw i16 %.sink47.in to i8
  %.sink48 = trunc nuw i16 %.sink48.in to i8
  %.sink49 = trunc nuw i16 %.sink49.in to i8
  %.sink50 = trunc nuw i16 %.sink50.in to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %.sink50, ptr %i.bc, align 2, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %.sink49, ptr %i.bd, align 1, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %.sink48, ptr %i.be, align 2, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %.sink47, ptr %i.bf, align 1, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %.sink46, ptr %i.bg, align 2, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %.sink, ptr %i.bh, align 1, !tbaa !9
  %i.bi = lshr i64 %i.b, 16
  %i.bj = sext i32 %2 to i64                      ; 3 uses
  %i.bk = sext i32 %3 to i64                      ; 6 uses
  %i.bl = and i64 %i.bi, 7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !9
  store i8 %i.bn, ptr %1, align 1, !tbaa !9
  %i.bo = lshr i64 %i.b, 19
  %i.bp = and i64 %i.bo, 7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !9
  %i.bs = getelementptr inbounds i8, ptr %1, i64 %i.bk
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !9
  %i.bt = lshr i64 %i.b, 22
  %i.bu = and i64 %i.bt, 7
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !9
  %i.bx = shl nsw i64 %i.bk, 1                    ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %1, i64 %i.bx
  store i8 %i.bw, ptr %i.by, align 1, !tbaa !9
  %i.bz = lshr i64 %i.b, 25
  %i.ca = and i64 %i.bz, 7
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.cd = mul nsw i64 %i.bk, 3                    ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %1, i64 %i.cd
  store i8 %i.cc, ptr %i.ce, align 1, !tbaa !9
  %i.cf = lshr i64 %i.b, 28
  %i.cg = getelementptr inbounds i8, ptr %1, i64 %i.bj ; 5 uses
  %i.ch = and i64 %i.cf, 7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !9
  store i8 %i.cj, ptr %i.cg, align 1, !tbaa !9
  %i.ck = lshr i64 %i.b, 31
  %i.cl = and i64 %i.ck, 7
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !9
  %i.co = getelementptr inbounds i8, ptr %i.cg, i64 %i.bk
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !9
  %i.cp = lshr i64 %i.b, 34
  %i.cq = and i64 %i.cp, 7
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !9
  %i.ct = getelementptr inbounds i8, ptr %i.cg, i64 %i.bx
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !9
  %i.cu = lshr i64 %i.b, 37
  %i.cv = and i64 %i.cu, 7
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !9
  %i.cy = getelementptr inbounds i8, ptr %i.cg, i64 %i.cd
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !9
  %i.cz = lshr i64 %i.b, 40
  %i.da = getelementptr inbounds i8, ptr %i.cg, i64 %i.bj ; 5 uses
  %i.db = and i64 %i.cz, 7
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !9
  store i8 %i.dd, ptr %i.da, align 1, !tbaa !9
  %i.de = lshr i64 %i.b, 43
  %i.df = and i64 %i.de, 7
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !9
  %i.di = getelementptr inbounds i8, ptr %i.da, i64 %i.bk
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !9
  %i.dj = lshr i64 %i.b, 46
  %i.dk = and i64 %i.dj, 7
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !9
  %i.dn = getelementptr inbounds i8, ptr %i.da, i64 %i.bx
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !9
  %i.do = lshr i64 %i.b, 49
  %i.dp = and i64 %i.do, 7
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !9
  %i.ds = getelementptr inbounds i8, ptr %i.da, i64 %i.cd
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !9
  %i.dt = lshr i64 %i.b, 52
  %i.du = getelementptr inbounds i8, ptr %i.da, i64 %i.bj ; 4 uses
  %i.dv = and i64 %i.dt, 7
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !9
  store i8 %i.dx, ptr %i.du, align 1, !tbaa !9
  %i.dy = lshr i64 %i.b, 55
  %i.dz = and i64 %i.dy, 7
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !9
  %i.ec = getelementptr inbounds i8, ptr %i.du, i64 %i.bk
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !9
  %i.ed = lshr i64 %i.b, 58
  %i.ee = and i64 %i.ed, 7
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !9
  %i.eh = getelementptr inbounds i8, ptr %i.du, i64 %i.bx
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !9
  %i.ei = lshr i64 %i.b, 61
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !9
  %i.el = getelementptr inbounds i8, ptr %i.du, i64 %i.cd
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef range(i32 0, -2147483648) i32 @_Z26bcdec__bitstream_read_bitsP16bcdec__bitstreami(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %notmask = shl nsw i32 -1, %1
  %i.a = xor i32 %notmask, -1                     ; 2 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.c = zext nneg i32 %i.a to i64
  %i.d = trunc i64 %i.b to i32
  %i.e = and i32 %i.d, %i.a
  %i.f = zext i32 %1 to i64                       ; 2 uses
  %i.g = lshr i64 %i.b, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %i.j = and i64 %i.i, %i.c
  %i.k = sext i32 %1 to i64
  %i.l = sub nsw i64 64, %i.k
  %i.m = shl i64 %i.j, %i.l
  %i.n = or i64 %i.m, %i.g
  store i64 %i.n, ptr %0, align 8, !tbaa !12
  %i.o = lshr i64 %i.i, %i.f
  store i64 %i.o, ptr %i.h, align 8, !tbaa !14
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef range(i32 0, 2) i32 @_Z25bcdec__bitstream_read_bitP16bcdec__bitstream(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = and i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = tail call i64 @llvm.fshl.i64(i64 %i.e, i64 %i.a, i64 63)
  store i64 %i.f, ptr %0, align 8, !tbaa !12
  %i.g = lshr i64 %i.e, 1
  store i64 %i.g, ptr %i.d, align 8, !tbaa !14
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i32 @_Z28bcdec__bitstream_read_bits_rP16bcdec__bitstreami(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %notmask.i = shl nsw i32 -1, %1
  %i.a = xor i32 %notmask.i, -1                   ; 2 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.c = zext nneg i32 %i.a to i64
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = lshr i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = and i64 %i.g, %i.c
  %i.i = sext i32 %1 to i64
  %i.j = sub nsw i64 64, %i.i
  %i.k = shl i64 %i.h, %i.j
  %i.l = or i64 %i.k, %i.e
  store i64 %i.l, ptr %0, align 8, !tbaa !12
  %i.m = lshr i64 %i.g, %i.d
  store i64 %i.m, ptr %i.f, align 8, !tbaa !14
  %.not9 = icmp eq i32 %1, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.n = trunc i64 %i.b to i32
  %i.o = and i32 %i.n, %i.a                       ; 2 uses
  %xtraiter = and i32 %1, 3                       ; 3 uses
  %i.p = icmp ult i32 %1, 4
  br i1 %i.p, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %1, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.012 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ]
  %.0711 = phi i32 [ %i.o, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.q = shl i32 %.012, 3
  %i.r = shl i32 %.0711, 2
  %i.s = and i32 %i.r, 4
  %i.t = or disjoint i32 %i.q, %i.s
  %i.u = and i32 %.0711, 2
  %i.v = or disjoint i32 %i.t, %i.u
  %i.w = lshr i32 %.0711, 2
  %i.x = and i32 %i.w, 1
  %i.y = or disjoint i32 %i.v, %i.x
  %i.z = lshr i32 %.0711, 3
  %i.aa = shl i32 %i.y, 1
  %i.ab = and i32 %i.z, 1
  %i.ac = or disjoint i32 %i.aa, %i.ab            ; 3 uses
  %i.ad = lshr i32 %.0711, 4                      ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !15

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.012.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ]
  %.0711.epil.init = phi i32 [ %i.o, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.012.epil = phi i32 [ %i.ag, %.lr.ph.epil ], [ %.012.epil.init, %.lr.ph.epil.preheader ]
  %.0711.epil = phi i32 [ %i.ah, %.lr.ph.epil ], [ %.0711.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ae = shl i32 %.012.epil, 1
  %i.af = and i32 %.0711.epil, 1
  %i.ag = or disjoint i32 %i.ae, %i.af            ; 2 uses
  %i.ah = lshr i32 %.0711.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !17

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ], [ %i.ag, %.lr.ph.epil ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @bcdec_bc1(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 16)) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z18bcdec__color_blockPKvPvii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @bcdec_bc2(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 16)) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_Z18bcdec__color_blockPKvPvii(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %2, i32 noundef 1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.c = sext i32 %2 to i64                       ; 3 uses
  %i.d = load i16, ptr %0, align 2, !tbaa !7
  %i.e = trunc i16 %i.d to i8
  %i.f = and i8 %i.e, 15
  %i.g = mul nuw i8 %i.f, 17
  store i8 %i.g, ptr %i.b, align 1, !tbaa !9
  %i.h = load i16, ptr %0, align 2, !tbaa !7
  %i.i = trunc i16 %i.h to i8
  %i.j = lshr i8 %i.i, 4
  %i.k = mul nuw i8 %i.j, 17
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.k, ptr %i.l, align 1, !tbaa !9
  %3 = load i16, ptr %0, align 2, !tbaa !7
  %4 = lshr i16 %3, 8
  %5 = trunc nuw i16 %4 to i8
  %i.m = and i8 %5, 15
  %i.n = mul nuw i8 %i.m, 17
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.n, ptr %i.o, align 1, !tbaa !9
  %i.p = load i16, ptr %0, align 2, !tbaa !7
  %i.q = lshr i16 %i.p, 12
  %i.r = trunc nuw nsw i16 %i.q to i8
  %i.s = mul nuw i8 %i.r, 17
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.s, ptr %i.t, align 1, !tbaa !9
  %i.u = getelementptr inbounds i8, ptr %i.b, i64 %i.c ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !7
  %i.x = trunc i16 %i.w to i8
  %i.y = and i8 %i.x, 15
  %i.z = mul nuw i8 %i.y, 17
  store i8 %i.z, ptr %i.u, align 1, !tbaa !9
  %i.aa = load i16, ptr %i.v, align 2, !tbaa !7
  %i.ab = trunc i16 %i.aa to i8
  %i.ac = lshr i8 %i.ab, 4
  %i.ad = mul nuw i8 %i.ac, 17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !9
  %6 = load i16, ptr %i.v, align 2, !tbaa !7
  %7 = lshr i16 %6, 8
  %8 = trunc nuw i16 %7 to i8
  %i.af = and i8 %8, 15
  %i.ag = mul nuw i8 %i.af, 17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !9
  %i.ai = load i16, ptr %i.v, align 2, !tbaa !7
  %i.aj = lshr i16 %i.ai, 12
  %i.ak = trunc nuw nsw i16 %i.aj to i8
  %i.al = mul nuw i8 %i.ak, 17
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i8 %i.al, ptr %i.am, align 1, !tbaa !9
  %i.an = getelementptr inbounds i8, ptr %i.u, i64 %i.c ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !7
  %i.aq = trunc i16 %i.ap to i8
  %i.ar = and i8 %i.aq, 15
  %i.as = mul nuw i8 %i.ar, 17
  store i8 %i.as, ptr %i.an, align 1, !tbaa !9
  %i.at = load i16, ptr %i.ao, align 2, !tbaa !7
  %i.au = trunc i16 %i.at to i8
  %i.av = lshr i8 %i.au, 4
  %i.aw = mul nuw i8 %i.av, 17
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !9
  %9 = load i16, ptr %i.ao, align 2, !tbaa !7
  %10 = lshr i16 %9, 8
  %11 = trunc nuw i16 %10 to i8
  %i.ay = and i8 %11, 15
  %i.az = mul nuw i8 %i.ay, 17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !9
  %i.bb = load i16, ptr %i.ao, align 2, !tbaa !7
  %i.bc = lshr i16 %i.bb, 12
  %i.bd = trunc nuw nsw i16 %i.bc to i8
  %i.be = mul nuw i8 %i.bd, 17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !9
  %i.bg = getelementptr inbounds i8, ptr %i.an, i64 %i.c ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 4 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !7
  %i.bj = trunc i16 %i.bi to i8
  %i.bk = and i8 %i.bj, 15
  %i.bl = mul nuw i8 %i.bk, 17
  store i8 %i.bl, ptr %i.bg, align 1, !tbaa !9
  %i.bm = load i16, ptr %i.bh, align 2, !tbaa !7
  %i.bn = trunc i16 %i.bm to i8
  %i.bo = lshr i8 %i.bn, 4
  %i.bp = mul nuw i8 %i.bo, 17
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !9
  %12 = load i16, ptr %i.bh, align 2, !tbaa !7
  %13 = lshr i16 %12, 8
  %14 = trunc nuw i16 %13 to i8
  %i.br = and i8 %14, 15
  %i.bs = mul nuw i8 %i.br, 17
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !9
  %i.bu = load i16, ptr %i.bh, align 2, !tbaa !7
  %i.bv = lshr i16 %i.bu, 12
  %i.bw = trunc nuw nsw i16 %i.bv to i8
  %i.bx = mul nuw i8 %i.bw, 17
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @bcdec_bc3(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 16)) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_Z18bcdec__color_blockPKvPvii(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %2, i32 noundef 1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3
  tail call void @_Z25bcdec__smooth_alpha_blockPKvPvii(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef 4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @bcdec_bc4(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 1)) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z25bcdec__smooth_alpha_blockPKvPvii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @bcdec_bc5(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 2)) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z25bcdec__smooth_alpha_blockPKvPvii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  tail call void @_Z25bcdec__smooth_alpha_blockPKvPvii(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef 2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_Z18bcdec__extend_signii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = sub nsw i32 32, %1                       ; 2 uses
  %i.b = shl i32 %0, %i.a
  %i.c = ashr exact i32 %i.b, %i.a
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_Z24bcdec__transform_inverseiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = add nsw i32 %1, %0                       ; 2 uses
  %notmask = shl nsw i32 -1, %2
  %i.b = xor i32 %notmask, -1
  %i.c = and i32 %i.a, %i.b
  %.not = icmp eq i32 %3, 0
  %i.d = sub nsw i32 32, %2                       ; 2 uses
  %i.e = shl i32 %i.a, %i.d
  %i.f = ashr exact i32 %i.e, %i.d
  %.0 = select i1 %.not, i32 %i.c, i32 %i.f
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_Z17bcdec__unquantizeiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = icmp sgt i32 %1, 14
  br i1 %i.a, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not26 = icmp eq i32 %0, 0
  br i1 %.not26, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %notmask = shl nsw i32 -1, %1
  %i.b = xor i32 %notmask, %0
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = shl i32 %0, 16
  %i.e = or disjoint i32 %i.d, 32768
  %i.f = ashr i32 %i.e, %1
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.g = icmp sgt i32 %1, 15
  br i1 %i.g, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %spec.select = tail call i32 @llvm.abs.i32(i32 %0, i1 true) ; 2 uses
  %i.h = icmp eq i32 %0, 0
  br i1 %i.h, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = add nsw i32 %1, -1                       ; 2 uses
  %notmask27 = shl nsw i32 -1, %i.i
  %i.j = xor i32 %notmask27, -1
  %.not28 = icmp samesign ult i32 %spec.select, %i.j
  br i1 %.not28, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.k = shl i32 %spec.select, 15
  %i.l = or disjoint i32 %i.k, 16384
  %i.m = ashr i32 %i.l, %i.i
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.i
  %.020 = phi i32 [ %i.m, %bb.i ], [ 0, %bb.g ], [ 32767, %bb.h ] ; 2 uses
  %i.n = sub nsw i32 0, %.020
  %i.o = icmp slt i32 %0, 0
  %spec.select30 = select i1 %i.o, i32 %i.n, i32 %.020
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %bb.d, %bb.c, %bb.b, %bb.e
  %.1 = phi i32 [ 65535, %bb.d ], [ %0, %bb.f ], [ %spec.select30, %bb.j ], [ %0, %bb.b ], [ 0, %bb.c ], [ %i.f, %bb.e ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 -33554432, 33554432) i32 @_Z18bcdec__interpolateiiPii(i32 noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.d = sub nsw i32 64, %i.c
  %i.e = mul nsw i32 %i.d, %0
  %i.f = mul nsw i32 %i.c, %1
  %i.g = add i32 %i.f, 32
  %i.h = add i32 %i.g, %i.e
  %i.i = ashr i32 %i.h, 6
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i16 @_Z24bcdec__finish_unquantizeii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %0, 31
  %i.b = lshr i32 %i.a, 6
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %0, 0
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = mul i32 %0, -31
  %i.e = lshr i32 %i.d, 5
  %i.f = sub nsw i32 0, %i.e
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = mul nuw nsw i32 %0, 31
  %i.h = lshr i32 %i.g, 5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi i32 [ %i.f, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.j = icmp slt i32 %i.i, 0
  %i.k = sub nsw i32 0, %i.i
  %i.l = or i32 %i.k, 32768
  %.0 = select i1 %i.j, i32 %i.l, i32 %i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.010.in = phi i32 [ %.0, %bb.f ], [ %i.b, %bb.b ]
  %.010 = trunc i32 %.010.in to i16
  ret i16 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @_Z26bcdec__half_to_float_quickt(i16 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i16 %0 to i32
  %i.b = shl nuw nsw i32 %i.a, 13                 ; 4 uses
  %i.c = and i32 %i.b, 260046848                  ; 2 uses
  %i.d = icmp eq i32 %i.c, 260046848
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = or i32 %i.b, 1879048192
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = and i32 %i.b, 268427264
  %i.g = add nuw nsw i32 %i.f, 939524096
  %i.h = icmp eq i32 %i.c, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = or i32 %i.b, 947912704
  %i.j = bitcast i32 %i.i to float
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %i.r, ptr %i.t, ptr %i.s
  %i.v = lshr i64 %.sroa.0.0.copyload.i7.i.i.i.i.i.i, 32
  %i.w = trunc nuw i64 %i.v to i32
  %narrow.i.i.i.i.i.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.w, i32 1)
  %i.x = lshr i64 %.sroa.0.0.copyload.i7.i.i.i.i.i.i, 8
  %i.y = and i64 %i.x, 255
  %i.z = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.j) #34
  %i.aa = mul i64 %i.z, %i.y
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = mul i32 %narrow.i.i.i.i.i.i.i.i.i, %i.l
  %i.ad = mul i32 %i.ac, %i.ab
  %i.ae = sext i32 %i.ad to i64
  store ptr %i.u, ptr %4, align 8
  store i64 %i.ae, ptr %i.f, align 8
  tail call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %.09.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i7.i.i.i.i.i.i, i32 noundef %i.l, i32 noundef %i.o, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.34") align 8 %4, i8 1, i8 1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 40
  %.not.i.i.i.i = icmp eq ptr %i.af, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_110ParamValueESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %bb.f, !llvm.loop !205

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_110ParamValueESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %bb.f, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE11_M_allocateEm.exit
  ret ptr %i.e
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39), ptr, i64, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span.34") align 8, i8, i8) local_unnamed_addr #8

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39)) local_unnamed_addr #8

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(39) ptr @_ZN11OpenImageIO4v3_110ParamValueaSERKS1_(ptr noundef nonnull align 8 dereferenceable(39), ptr noundef nonnull align 8 dereferenceable(39)) local_unnamed_addr #8

declare void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, ptr noundef) local_unnamed_addr #7

declare void @_ZN11OpenImageIO4v3_120parallel_for_chunkedElllOSt8functionIFvllEENS0_6paroptE(i64 noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef byval(%"class.OpenImageIO::v3_1::paropt") align 8) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS2_7DDS_pvt11CompressionERKNS6_13dds_pixformatEiE3$_0E9_M_invokeERKSt9_Any_dataOlSG_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #22 align 2 {
bb.a:
  %i.a = alloca [8 x i8], align 2                 ; 25 uses
  %i.b = alloca [8 x i8], align 2                 ; 25 uses
  %i.c = alloca [8 x i8], align 2                 ; 25 uses
  %i.d = alloca [4 x i32], align 16               ; 22 uses
  %i.e = alloca [8 x i8], align 2                 ; 25 uses
  %i.f = alloca [4 x i32], align 16               ; 22 uses
  %i.g = alloca [64 x i8], align 16               ; 63 uses
  %i.h = alloca [48 x i16], align 16              ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !154   ; 9 uses
  %.val3 = load i64, ptr %1, align 8, !tbaa !143  ; 2 uses
  %.val4 = load i64, ptr %2, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  %i.i = trunc i64 %.val3 to i32
  %i.j = shl nsw i32 %i.i, 2                      ; 2 uses
  %i.k = trunc i64 %.val4 to i32
  %i.l = shl nsw i32 %i.k, 2
  %i.m = load ptr, ptr %.val, align 8, !tbaa !206, !nonnull !203, !align !208
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %.sroa.speculated166.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %i.l) ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.p = icmp slt i32 %i.j, %.sroa.speculated166.i.i.i
  br i1 %i.p, label %.preheader174.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS1_7DDS_pvt11CompressionERKNS5_13dds_pixformatEiE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

.preheader174.lr.ph.i.i.i:                        ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 6 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 10 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 14 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 26
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 28 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 30
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 5 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 7 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 9 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 11 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 13 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 15 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 19 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 21
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 23 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 27 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 31 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 44 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 52 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 60 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 35 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 39 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 43 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 47 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 51 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 55 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 59 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 63 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.cr = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.cs = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ct = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 7 uses
  %i.cu = load ptr, ptr %i.q, align 8, !tbaa !209, !nonnull !203, !align !208
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3  ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.preheader174.preheader.i.i.i, label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS1_7DDS_pvt11CompressionERKNS5_13dds_pixformatEiE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

.preheader174.preheader.i.i.i:                    ; preds = %.preheader174.lr.ph.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !210, !nonnull !203, !align !211
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !144
  %i.da = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !212, !nonnull !203, !align !208
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.val3, %i.dd
  %i.df = load ptr, ptr %i.o, align 8, !tbaa !213, !nonnull !203, !align !211
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !143
  %i.dh = mul i64 %i.de, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dh
  %i.dj = sext i32 %i.j to i64
  %i.dk = sext i32 %.sroa.speculated166.i.i.i to i64
  br label %.preheader174.i.i.i

.preheader174.i.i.i:                              ; preds = %.critedge75.i.i.i, %.preheader174.preheader.i.i.i
  %i.dl = phi i32 [ %i.cv, %.preheader174.preheader.i.i.i ], [ %i.ash, %.critedge75.i.i.i ] ; 2 uses
  %indvars.iv199.i.i.i = phi i64 [ %i.dj, %.preheader174.preheader.i.i.i ], [ %indvars.iv.next200.i.i.i, %.critedge75.i.i.i ] ; 3 uses
  %.0191.i.i.i = phi ptr [ %i.di, %.preheader174.preheader.i.i.i ], [ %.1.lcssa.i.i.i, %.critedge75.i.i.i ] ; 2 uses
  %.not70185.i.i.i = icmp sgt i32 %i.dl, 0
  br i1 %.not70185.i.i.i, label %.lr.ph189.i.i.i, label %.critedge75.i.i.i

.lr.ph189.i.i.i:                                  ; preds = %.preheader174.i.i.i
  %i.dm = trunc nsw i64 %indvars.iv199.i.i.i to i32 ; 6 uses
  %i.dn = or disjoint i32 %i.dm, 1
  %i.do = icmp slt i32 %i.dn, %.sroa.speculated166.i.i.i
  %i.dp = or disjoint i32 %i.dm, 2
  %i.dq = icmp slt i32 %i.dp, %.sroa.speculated166.i.i.i
  %i.dr = or disjoint i32 %i.dm, 3
  %i.ds = icmp slt i32 %i.dr, %.sroa.speculated166.i.i.i
  %i.dt = or disjoint i32 %i.dm, 1
  %i.du = icmp slt i32 %i.dt, %.sroa.speculated166.i.i.i
  %i.dv = or disjoint i32 %i.dm, 2
  %i.dw = icmp slt i32 %i.dv, %.sroa.speculated166.i.i.i
  %i.dx = or disjoint i32 %i.dm, 3
  %i.dy = icmp slt i32 %i.dx, %.sroa.speculated166.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i.i.i, %.lr.ph189.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph189.i.i.i ], [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ] ; 3 uses
  %.1188.i.i.i = phi ptr [ %.0191.i.i.i, %.lr.ph189.i.i.i ], [ %i.akh, %.critedge.i.i.i ] ; 21 uses
  %i.dz = load ptr, ptr %i.r, align 8, !tbaa !214, !nonnull !203, !align !208
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !145 ; 2 uses
  switch i32 %i.ea, label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS1_7DDS_pvt11CompressionERKNS5_13dds_pixformatEiE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit" [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.e
    i32 6, label %bb.h
    i32 7, label %bb.k
    i32 8, label %bb.p
    i32 9, label %bb.p
    i32 10, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b
  call void @_Z18bcdec__color_blockPKvPvii(ptr noundef readonly %.1188.i.i.i, ptr noundef nonnull %i.g, i32 noundef 16, i32 noundef 0)
  br label %bb.r

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.eb = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !7
  %i.ed = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 10
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !7
  %i.ef = zext i16 %i.ec to i32                   ; 3 uses
  %i.eg = lshr i32 %i.ef, 11
  %i.eh = mul nuw nsw i32 %i.eg, 527
  %i.ei = add nuw nsw i32 %i.eh, 23
  %i.ej = lshr i32 %i.ei, 6                       ; 3 uses
  %i.ek = lshr i32 %i.ef, 5
  %i.el = and i32 %i.ek, 63
  %i.em = mul nuw nsw i32 %i.el, 259
  %i.en = add nuw nsw i32 %i.em, 33
  %i.eo = lshr i32 %i.en, 6                       ; 3 uses
  %i.ep = and i32 %i.ef, 31
  %i.eq = mul nuw nsw i32 %i.ep, 527
  %i.er = add nuw nsw i32 %i.eq, 23
  %i.es = lshr i32 %i.er, 6                       ; 3 uses
  %i.et = shl nuw nsw i32 %i.es, 16
  %i.eu = shl nuw nsw i32 %i.eo, 8
  %i.ev = or i32 %i.et, %i.eu
  %i.ew = or i32 %i.ev, %i.ej
  %i.ex = or i32 %i.ew, -16777216
  store i32 %i.ex, ptr %i.f, align 16, !tbaa !3
  %i.ey = zext i16 %i.ee to i32                   ; 3 uses
  %i.ez = lshr i32 %i.ey, 11
  %i.fa = mul nuw nsw i32 %i.ez, 527
  %i.fb = add nuw nsw i32 %i.fa, 23
  %i.fc = lshr i32 %i.fb, 6                       ; 3 uses
  %i.fd = lshr i32 %i.ey, 5
  %i.fe = and i32 %i.fd, 63
  %i.ff = mul nuw nsw i32 %i.fe, 259
  %i.fg = add nuw nsw i32 %i.ff, 33
  %i.fh = lshr i32 %i.fg, 6                       ; 3 uses
  %i.fi = and i32 %i.ey, 31
  %i.fj = mul nuw nsw i32 %i.fi, 527
  %i.fk = add nuw nsw i32 %i.fj, 23
  %i.fl = lshr i32 %i.fk, 6                       ; 3 uses
  %i.fm = shl nuw nsw i32 %i.fl, 16
  %i.fn = shl nuw nsw i32 %i.fh, 8
  %i.fo = or i32 %i.fm, %i.fn
  %i.fp = or i32 %i.fo, %i.fc
  %i.fq = or i32 %i.fp, -16777216
  store i32 %i.fq, ptr %i.co, align 4, !tbaa !3
  %i.fr = shl nuw nsw i32 %i.ej, 1
  %i.fs = add nuw nsw i32 %i.fr, %i.fc
  %i.ft = trunc nuw nsw i32 %i.fs to i16
  %.lhs.trunc.i.i.i.i = add nuw nsw i16 %i.ft, 1
  %i.fu = udiv i16 %.lhs.trunc.i.i.i.i, 3
  %.zext.i.i.i.i = zext nneg i16 %i.fu to i32
  %i.fv = shl nuw nsw i32 %i.eo, 1
  %i.fw = add nuw nsw i32 %i.fv, %i.fh
  %i.fx = trunc nuw nsw i32 %i.fw to i16
  %.lhs.trunc60.i.i.i.i = add nuw nsw i16 %i.fx, 1
  %i.fy = udiv i16 %.lhs.trunc60.i.i.i.i, 3
  %.zext61.i.i.i.i = zext nneg i16 %i.fy to i32
  %i.fz = shl nuw nsw i32 %i.es, 1
  %i.ga = add nuw nsw i32 %i.fz, %i.fl
  %i.gb = trunc nuw nsw i32 %i.ga to i16
  %.lhs.trunc62.i.i.i.i = add nuw nsw i16 %i.gb, 1
  %i.gc = udiv i16 %.lhs.trunc62.i.i.i.i, 3
  %.zext63.i.i.i.i = zext nneg i16 %i.gc to i32
  %i.gd = shl nuw nsw i32 %.zext63.i.i.i.i, 16
  %i.ge = shl nuw nsw i32 %.zext61.i.i.i.i, 8
  %i.gf = or disjoint i32 %i.gd, %.zext.i.i.i.i
  %i.gg = shl nuw nsw i32 %i.fc, 1
  %i.gh = add nuw nsw i32 %i.gg, %i.ej
  %i.gi = trunc nuw nsw i32 %i.gh to i16
  %.lhs.trunc64.i.i.i.i = add nuw nsw i16 %i.gi, 1
  %i.gj = udiv i16 %.lhs.trunc64.i.i.i.i, 3
  %.zext65.i.i.i.i = zext nneg i16 %i.gj to i32
  %i.gk = shl nuw nsw i32 %i.fh, 1
  %i.gl = add nuw nsw i32 %i.gk, %i.eo
  %i.gm = trunc nuw nsw i32 %i.gl to i16
  %.lhs.trunc66.i.i.i.i = add nuw nsw i16 %i.gm, 1
  %i.gn = udiv i16 %.lhs.trunc66.i.i.i.i, 3
  %.zext67.i.i.i.i = zext nneg i16 %i.gn to i32
  %i.go = shl nuw nsw i32 %i.fl, 1
  %i.gp = add nuw nsw i32 %i.go, %i.es
  %i.gq = trunc nuw nsw i32 %i.gp to i16
  %.lhs.trunc68.i.i.i.i = add nuw nsw i16 %i.gq, 1
  %i.gr = udiv i16 %.lhs.trunc68.i.i.i.i, 3
  %.zext69.i.i.i.i = zext nneg i16 %i.gr to i32
  %i.gs = shl nuw nsw i32 %.zext69.i.i.i.i, 16
  %i.gt = shl nuw nsw i32 %.zext67.i.i.i.i, 8
  %i.gu = or disjoint i32 %i.gs, %.zext65.i.i.i.i
  %i.gv = or i32 %i.gu, %i.gt
  %i.gw = or i32 %i.gv, -16777216
  %i.gx = or i32 %i.gf, %i.ge
  %.sink76.i.i.i.i = or i32 %i.gx, -16777216
  store i32 %.sink76.i.i.i.i, ptr %i.cp, align 8, !tbaa !3
  store i32 %i.gw, ptr %i.cq, align 4, !tbaa !3
  %i.gy = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3  ; 16 uses
  %i.ha = and i32 %i.gz, 3
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !3
  store i32 %i.hd, ptr %i.g, align 16, !tbaa !3
  %i.he = lshr i32 %i.gz, 2
  %i.hf = and i32 %i.he, 3
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3
  store i32 %i.hi, ptr %i.z, align 4, !tbaa !3
  %i.hj = lshr i32 %i.gz, 4
  %i.hk = and i32 %i.hj, 3
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !3
  store i32 %i.hn, ptr %i.ab, align 8, !tbaa !3
  %i.ho = lshr i32 %i.gz, 6
  %i.hp = and i32 %i.ho, 3
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3
  store i32 %i.hs, ptr %i.ad, align 4, !tbaa !3
  %i.ht = lshr i32 %i.gz, 8
  %i.hu = and i32 %i.ht, 3
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !3
  store i32 %i.hx, ptr %i.af, align 16, !tbaa !3
  %i.hy = lshr i32 %i.gz, 10
  %i.hz = and i32 %i.hy, 3
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !3
  store i32 %i.ic, ptr %i.ah, align 4, !tbaa !3
  %i.id = lshr i32 %i.gz, 12
  %i.ie = and i32 %i.id, 3
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !3
  store i32 %i.ih, ptr %i.aj, align 8, !tbaa !3
  %i.ii = lshr i32 %i.gz, 14
  %i.ij = and i32 %i.ii, 3
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3
  store i32 %i.im, ptr %i.al, align 4, !tbaa !3
  %i.in = lshr i32 %i.gz, 16
  %i.io = and i32 %i.in, 3
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !3
  store i32 %i.ir, ptr %i.bs, align 16, !tbaa !3
  %i.is = lshr i32 %i.gz, 18
  %i.it = and i32 %i.is, 3
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !3
  store i32 %i.iw, ptr %i.bt, align 4, !tbaa !3
  %i.ix = lshr i32 %i.gz, 20
  %i.iy = and i32 %i.ix, 3
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !3
  store i32 %i.jb, ptr %i.bu, align 8, !tbaa !3
  %i.jc = lshr i32 %i.gz, 22
  %i.jd = and i32 %i.jc, 3
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !3
  store i32 %i.jg, ptr %i.bv, align 4, !tbaa !3
  %i.jh = lshr i32 %i.gz, 24
  %i.ji = and i32 %i.jh, 3
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !3
  store i32 %i.jl, ptr %i.bw, align 16, !tbaa !3
  %i.jm = lshr i32 %i.gz, 26
  %i.jn = and i32 %i.jm, 3
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !3
  store i32 %i.jq, ptr %i.bx, align 4, !tbaa !3
  %i.jr = lshr i32 %i.gz, 28
  %i.js = and i32 %i.jr, 3
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !3
  store i32 %i.jv, ptr %i.by, align 8, !tbaa !3
  %i.jw = lshr i32 %i.gz, 30
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !3
  store i32 %i.jz, ptr %i.bz, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  %i.ka = load i16, ptr %.1188.i.i.i, align 4, !tbaa !7
  %i.kb = trunc i16 %i.ka to i8
  %i.kc = and i8 %i.kb, 15
  %i.kd = mul nuw i8 %i.kc, 17
  store i8 %i.kd, ptr %i.au, align 1, !tbaa !9
  %i.ke = load i16, ptr %.1188.i.i.i, align 4, !tbaa !7
  %i.kf = trunc i16 %i.ke to i8
  %i.kg = lshr i8 %i.kf, 4
  %i.kh = mul nuw i8 %i.kg, 17
  store i8 %i.kh, ptr %i.aw, align 1, !tbaa !9
  %3 = load i16, ptr %.1188.i.i.i, align 4, !tbaa !7
  %4 = lshr i16 %3, 8
  %5 = trunc nuw i16 %4 to i8
  %i.ki = and i8 %5, 15
  %i.kj = mul nuw i8 %i.ki, 17
  store i8 %i.kj, ptr %i.ay, align 1, !tbaa !9
  %i.kk = load i16, ptr %.1188.i.i.i, align 4, !tbaa !7
  %i.kl = lshr i16 %i.kk, 12
  %i.km = trunc nuw nsw i16 %i.kl to i8
  %i.kn = mul nuw i8 %i.km, 17
  store i8 %i.kn, ptr %i.ba, align 1, !tbaa !9
  %i.ko = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 2 ; 4 uses
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !7
  %i.kq = trunc i16 %i.kp to i8
  %i.kr = and i8 %i.kq, 15
  %i.ks = mul nuw i8 %i.kr, 17
  store i8 %i.ks, ptr %i.bc, align 1, !tbaa !9
  %i.kt = load i16, ptr %i.ko, align 2, !tbaa !7
  %i.ku = trunc i16 %i.kt to i8
  %i.kv = lshr i8 %i.ku, 4
  %i.kw = mul nuw i8 %i.kv, 17
  store i8 %i.kw, ptr %i.be, align 1, !tbaa !9
  %6 = load i16, ptr %i.ko, align 2, !tbaa !7
  %7 = lshr i16 %6, 8
  %8 = trunc nuw i16 %7 to i8
  %i.kx = and i8 %8, 15
  %i.ky = mul nuw i8 %i.kx, 17
  store i8 %i.ky, ptr %i.bg, align 1, !tbaa !9
  %i.kz = load i16, ptr %i.ko, align 2, !tbaa !7
  %i.la = lshr i16 %i.kz, 12
  %i.lb = trunc nuw nsw i16 %i.la to i8
  %i.lc = mul nuw i8 %i.lb, 17
  store i8 %i.lc, ptr %i.bi, align 1, !tbaa !9
  %i.ld = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 4 ; 4 uses
  %i.le = load i16, ptr %i.ld, align 4, !tbaa !7
  %i.lf = trunc i16 %i.le to i8
  %i.lg = and i8 %i.lf, 15
  %i.lh = mul nuw i8 %i.lg, 17
  store i8 %i.lh, ptr %i.cg, align 1, !tbaa !9
  %i.li = load i16, ptr %i.ld, align 4, !tbaa !7
  %i.lj = trunc i16 %i.li to i8
  %i.lk = lshr i8 %i.lj, 4
  %i.ll = mul nuw i8 %i.lk, 17
  store i8 %i.ll, ptr %i.ch, align 1, !tbaa !9
  %9 = load i16, ptr %i.ld, align 4, !tbaa !7
  %10 = lshr i16 %9, 8
  %11 = trunc nuw i16 %10 to i8
  %i.lm = and i8 %11, 15
  %i.ln = mul nuw i8 %i.lm, 17
  store i8 %i.ln, ptr %i.ci, align 1, !tbaa !9
  %i.lo = load i16, ptr %i.ld, align 4, !tbaa !7
  %i.lp = lshr i16 %i.lo, 12
  %i.lq = trunc nuw nsw i16 %i.lp to i8
  %i.lr = mul nuw i8 %i.lq, 17
  store i8 %i.lr, ptr %i.cj, align 1, !tbaa !9
  %i.ls = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 6 ; 4 uses
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !7
  %i.lu = trunc i16 %i.lt to i8
  %i.lv = and i8 %i.lu, 15
  %i.lw = mul nuw i8 %i.lv, 17
  store i8 %i.lw, ptr %i.ck, align 1, !tbaa !9
  %i.lx = load i16, ptr %i.ls, align 2, !tbaa !7
  %i.ly = trunc i16 %i.lx to i8
  %i.lz = lshr i8 %i.ly, 4
  %i.ma = mul nuw i8 %i.lz, 17
  store i8 %i.ma, ptr %i.cl, align 1, !tbaa !9
  %12 = load i16, ptr %i.ls, align 2, !tbaa !7
  %13 = lshr i16 %12, 8
  %14 = trunc nuw i16 %13 to i8
  %i.mb = and i8 %14, 15
  %i.mc = mul nuw i8 %i.mb, 17
  store i8 %i.mc, ptr %i.cm, align 1, !tbaa !9
  %i.md = load i16, ptr %i.ls, align 2, !tbaa !7
  %i.me = lshr i16 %i.md, 12
  %i.mf = trunc nuw nsw i16 %i.me to i8
  %i.mg = mul nuw i8 %i.mf, 17
  store i8 %i.mg, ptr %i.cn, align 1, !tbaa !9
  br label %bb.r

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.mh = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !7
  %i.mj = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 10
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !7
  %i.ml = zext i16 %i.mi to i32                   ; 3 uses
  %i.mm = lshr i32 %i.ml, 11
  %i.mn = mul nuw nsw i32 %i.mm, 527
  %i.mo = add nuw nsw i32 %i.mn, 23
  %i.mp = lshr i32 %i.mo, 6                       ; 3 uses
  %i.mq = lshr i32 %i.ml, 5
  %i.mr = and i32 %i.mq, 63
  %i.ms = mul nuw nsw i32 %i.mr, 259
  %i.mt = add nuw nsw i32 %i.ms, 33
  %i.mu = lshr i32 %i.mt, 6                       ; 3 uses
  %i.mv = and i32 %i.ml, 31
  %i.mw = mul nuw nsw i32 %i.mv, 527
  %i.mx = add nuw nsw i32 %i.mw, 23
  %i.my = lshr i32 %i.mx, 6                       ; 3 uses
  %i.mz = shl nuw nsw i32 %i.my, 16
  %i.na = shl nuw nsw i32 %i.mu, 8
  %i.nb = or i32 %i.mz, %i.na
  %i.nc = or i32 %i.nb, %i.mp
  %i.nd = or i32 %i.nc, -16777216
  store i32 %i.nd, ptr %i.d, align 16, !tbaa !3
  %i.ne = zext i16 %i.mk to i32                   ; 3 uses
  %i.nf = lshr i32 %i.ne, 11
  %i.ng = mul nuw nsw i32 %i.nf, 527
  %i.nh = add nuw nsw i32 %i.ng, 23
  %i.ni = lshr i32 %i.nh, 6                       ; 3 uses
  %i.nj = lshr i32 %i.ne, 5
  %i.nk = and i32 %i.nj, 63
  %i.nl = mul nuw nsw i32 %i.nk, 259
  %i.nm = add nuw nsw i32 %i.nl, 33
  %i.nn = lshr i32 %i.nm, 6                       ; 3 uses
  %i.no = and i32 %i.ne, 31
  %i.np = mul nuw nsw i32 %i.no, 527
  %i.nq = add nuw nsw i32 %i.np, 23
  %i.nr = lshr i32 %i.nq, 6                       ; 3 uses
  %i.ns = shl nuw nsw i32 %i.nr, 16
  %i.nt = shl nuw nsw i32 %i.nn, 8
  %i.nu = or i32 %i.ns, %i.nt
  %i.nv = or i32 %i.nu, %i.ni
  %i.nw = or i32 %i.nv, -16777216
  store i32 %i.nw, ptr %i.bp, align 4, !tbaa !3
  %i.nx = shl nuw nsw i32 %i.mp, 1
  %i.ny = add nuw nsw i32 %i.nx, %i.ni
  %i.nz = trunc nuw nsw i32 %i.ny to i16
  %.lhs.trunc.i85.i.i.i = add nuw nsw i16 %i.nz, 1
  %i.oa = udiv i16 %.lhs.trunc.i85.i.i.i, 3
  %.zext.i86.i.i.i = zext nneg i16 %i.oa to i32
  %i.ob = shl nuw nsw i32 %i.mu, 1
  %i.oc = add nuw nsw i32 %i.ob, %i.nn
  %i.od = trunc nuw nsw i32 %i.oc to i16
  %.lhs.trunc60.i87.i.i.i = add nuw nsw i16 %i.od, 1
  %i.oe = udiv i16 %.lhs.trunc60.i87.i.i.i, 3
  %.zext61.i88.i.i.i = zext nneg i16 %i.oe to i32
  %i.of = shl nuw nsw i32 %i.my, 1
  %i.og = add nuw nsw i32 %i.of, %i.nr
  %i.oh = trunc nuw nsw i32 %i.og to i16
  %.lhs.trunc62.i89.i.i.i = add nuw nsw i16 %i.oh, 1
  %i.oi = udiv i16 %.lhs.trunc62.i89.i.i.i, 3
  %.zext63.i90.i.i.i = zext nneg i16 %i.oi to i32
  %i.oj = shl nuw nsw i32 %.zext63.i90.i.i.i, 16
  %i.ok = shl nuw nsw i32 %.zext61.i88.i.i.i, 8
  %i.ol = or disjoint i32 %i.oj, %.zext.i86.i.i.i
  %i.om = shl nuw nsw i32 %i.ni, 1
  %i.on = add nuw nsw i32 %i.om, %i.mp
  %i.oo = trunc nuw nsw i32 %i.on to i16
  %.lhs.trunc64.i91.i.i.i = add nuw nsw i16 %i.oo, 1
  %i.op = udiv i16 %.lhs.trunc64.i91.i.i.i, 3
  %.zext65.i92.i.i.i = zext nneg i16 %i.op to i32
  %i.oq = shl nuw nsw i32 %i.nn, 1
  %i.or = add nuw nsw i32 %i.oq, %i.mu
  %i.os = trunc nuw nsw i32 %i.or to i16
  %.lhs.trunc66.i93.i.i.i = add nuw nsw i16 %i.os, 1
  %i.ot = udiv i16 %.lhs.trunc66.i93.i.i.i, 3
  %.zext67.i94.i.i.i = zext nneg i16 %i.ot to i32
  %i.ou = shl nuw nsw i32 %i.nr, 1
  %i.ov = add nuw nsw i32 %i.ou, %i.my
  %i.ow = trunc nuw nsw i32 %i.ov to i16
  %.lhs.trunc68.i95.i.i.i = add nuw nsw i16 %i.ow, 1
  %i.ox = udiv i16 %.lhs.trunc68.i95.i.i.i, 3
  %.zext69.i96.i.i.i = zext nneg i16 %i.ox to i32
  %i.oy = shl nuw nsw i32 %.zext69.i96.i.i.i, 16
  %i.oz = shl nuw nsw i32 %.zext67.i94.i.i.i, 8
  %i.pa = or disjoint i32 %i.oy, %.zext65.i92.i.i.i
  %i.pb = or i32 %i.pa, %i.oz
  %i.pc = or i32 %i.pb, -16777216
  %i.pd = or i32 %i.ol, %i.ok
  %.sink76.i84.i.i.i = or i32 %i.pd, -16777216
  store i32 %.sink76.i84.i.i.i, ptr %i.bq, align 8, !tbaa !3
  store i32 %i.pc, ptr %i.br, align 4, !tbaa !3
  %i.pe = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 12
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !3  ; 16 uses
  %i.pg = and i32 %i.pf, 3
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !3
  store i32 %i.pj, ptr %i.g, align 16, !tbaa !3
  %i.pk = lshr i32 %i.pf, 2
  %i.pl = and i32 %i.pk, 3
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.pm
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !3
  store i32 %i.po, ptr %i.z, align 4, !tbaa !3
  %i.pp = lshr i32 %i.pf, 4
  %i.pq = and i32 %i.pp, 3
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !3
  store i32 %i.pt, ptr %i.ab, align 8, !tbaa !3
  %i.pu = lshr i32 %i.pf, 6
  %i.pv = and i32 %i.pu, 3
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 4, !tbaa !3
  store i32 %i.py, ptr %i.ad, align 4, !tbaa !3
  %i.pz = lshr i32 %i.pf, 8
  %i.qa = and i32 %i.pz, 3
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qb
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !3
  store i32 %i.qd, ptr %i.af, align 16, !tbaa !3
  %i.qe = lshr i32 %i.pf, 10
  %i.qf = and i32 %i.qe, 3
  %i.qg = zext nneg i32 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !3
  store i32 %i.qi, ptr %i.ah, align 4, !tbaa !3
  %i.qj = lshr i32 %i.pf, 12
  %i.qk = and i32 %i.qj, 3
  %i.ql = zext nneg i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !3
  store i32 %i.qn, ptr %i.aj, align 8, !tbaa !3
  %i.qo = lshr i32 %i.pf, 14
  %i.qp = and i32 %i.qo, 3
  %i.qq = zext nneg i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qq
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !3
  store i32 %i.qs, ptr %i.al, align 4, !tbaa !3
  %i.qt = lshr i32 %i.pf, 16
  %i.qu = and i32 %i.qt, 3
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qv
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !3
  store i32 %i.qx, ptr %i.bs, align 16, !tbaa !3
  %i.qy = lshr i32 %i.pf, 18
  %i.qz = and i32 %i.qy, 3
  %i.ra = zext nneg i32 %i.qz to i64
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !3
  store i32 %i.rc, ptr %i.bt, align 4, !tbaa !3
  %i.rd = lshr i32 %i.pf, 20
  %i.re = and i32 %i.rd, 3
  %i.rf = zext nneg i32 %i.re to i64
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rf
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !3
  store i32 %i.rh, ptr %i.bu, align 8, !tbaa !3
  %i.ri = lshr i32 %i.pf, 22
  %i.rj = and i32 %i.ri, 3
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !3
  store i32 %i.rm, ptr %i.bv, align 4, !tbaa !3
  %i.rn = lshr i32 %i.pf, 24
  %i.ro = and i32 %i.rn, 3
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rp
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !3
  store i32 %i.rr, ptr %i.bw, align 16, !tbaa !3
  %i.rs = lshr i32 %i.pf, 26
  %i.rt = and i32 %i.rs, 3
  %i.ru = zext nneg i32 %i.rt to i64
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ru
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !3
  store i32 %i.rw, ptr %i.bx, align 4, !tbaa !3
  %i.rx = lshr i32 %i.pf, 28
  %i.ry = and i32 %i.rx, 3
  %i.rz = zext nneg i32 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rz
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !3
  store i32 %i.sb, ptr %i.by, align 8, !tbaa !3
  %i.sc = lshr i32 %i.pf, 30
  %i.sd = zext nneg i32 %i.sc to i64
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.sd
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !3
  store i32 %i.sf, ptr %i.bz, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
end_hunk_1
