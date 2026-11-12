Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ddsinput?download=true
inline.NumInlined: 3419
inline.NumDeleted: 947
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_Z18bcdec__color_blockPKvPvii:bb.a
  %i.bn = trunc nuw nsw i32 %i.bm to i16
  %i.bo = insertelement <4 x i16> poison, i16 %i.bh, i64 0
  %i.bp = insertelement <4 x i16> %i.bo, i16 %i.bj, i64 1
  %i.bq = insertelement <4 x i16> %i.bp, i16 %i.bl, i64 2
  %i.br = insertelement <4 x i16> %i.bq, i16 %i.bn, i64 3
  %i.bs = add nuw nsw <4 x i16> %i.br, splat (i16 1)
  %i.bt = udiv <4 x i16> %i.bs, splat (i16 3)     ; 4 uses
  %i.bu = extractelement <4 x i16> %i.bt, i64 0
  %.zext63 = zext nneg i16 %i.bu to i32
  %i.bv = shl nuw nsw i32 %.zext63, 16
  %i.bw = or disjoint i32 %i.bv, %.zext
  %i.bx = or i32 %i.bw, %i.bc
  %i.by = extractelement <4 x i16> %i.bt, i64 1
  %.zext65 = zext nneg i16 %i.by to i32
  %i.bz = extractelement <4 x i16> %i.bt, i64 2
  %.zext67 = zext nneg i16 %i.bz to i32
  %i.ca = extractelement <4 x i16> %i.bt, i64 3
  %.zext69 = zext nneg i16 %i.ca to i32
  %i.cb = shl nuw nsw i32 %.zext69, 16
  %i.cc = shl nuw nsw i32 %.zext67, 8
  %i.cd = or disjoint i32 %i.cb, %.zext65
  %i.ce = or i32 %i.cd, %i.cc
  %i.cf = or i32 %i.ce, -16777216
  br label %.preheader

bb.c:                                             ; preds = %bb.a
  %i.cg = add nuw nsw i32 %i.i, 1
  %i.ch = add nuw nsw i32 %i.cg, %i.ab
  %i.ci = lshr i32 %i.ch, 1
  %i.cj = add nuw nsw i32 %i.ag, %i.n
  %i.ck = add nuw nsw i32 %i.ak, %i.r
  %i.cl = shl nuw nsw i32 %i.ck, 15
  %i.cm = add nuw nsw i32 %i.cl, 32768
  %i.cn = and i32 %i.cm, 16711680
  %i.co = shl nuw nsw i32 %i.cj, 7
  %i.cp = add nuw nsw i32 %i.co, 128
  %i.cq = and i32 %i.cp, 16776960
  %i.cr = or i32 %i.ci, %i.cn
  %i.cs = or i32 %i.cr, %i.cq
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.b
  %.sink76.in = phi i32 [ %i.bx, %bb.b ], [ %i.cs, %bb.c ]
  %.sink = phi i32 [ %i.cf, %bb.b ], [ 0, %bb.c ]
  %.sink76 = or i32 %.sink76.in, -16777216
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sink76, ptr %i.ct, align 8, !tbaa !44
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.sink, ptr %i.cu, align 4, !tbaa !44
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !44 ; 16 uses
  %i.cx = sext i32 %2 to i64                      ; 3 uses
  %i.cy = and i32 %i.cw, 3
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !44
  store i32 %i.db, ptr %1, align 4, !tbaa !44
  %i.dc = lshr i32 %i.cw, 2
  %i.dd = and i32 %i.dc, 3
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !44
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !44
  %i.di = lshr i32 %i.cw, 4
  %i.dj = and i32 %i.di, 3
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !44
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !44
  %i.do = lshr i32 %i.cw, 6
  %i.dp = and i32 %i.do, 3
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !44
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !44
  %i.du = lshr i32 %i.cw, 8
  %i.dv = getelementptr inbounds i8, ptr %1, i64 %i.cx ; 5 uses
  %i.dw = and i32 %i.du, 3
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !44
  store i32 %i.dz, ptr %i.dv, align 4, !tbaa !44
  %i.ea = lshr i32 %i.cw, 10
  %i.eb = and i32 %i.ea, 3
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !44
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !44
  %i.eg = lshr i32 %i.cw, 12
  %i.eh = and i32 %i.eg, 3
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !44
  %i.el = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !44
  %i.em = lshr i32 %i.cw, 14
  %i.en = and i32 %i.em, 3
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !44
  %i.er = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !44
  %i.es = lshr i32 %i.cw, 16
  %i.et = getelementptr inbounds i8, ptr %i.dv, i64 %i.cx ; 5 uses
  %i.eu = and i32 %i.es, 3
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !44
  store i32 %i.ex, ptr %i.et, align 4, !tbaa !44
  %i.ey = lshr i32 %i.cw, 18
  %i.ez = and i32 %i.ey, 3
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !44
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !44
  %i.fe = lshr i32 %i.cw, 20
  %i.ff = and i32 %i.fe, 3
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !44
  %i.fj = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !44
  %i.fk = lshr i32 %i.cw, 22
  %i.fl = and i32 %i.fk, 3
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !44
  %i.fp = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !44
  %i.fq = lshr i32 %i.cw, 24
  %i.fr = getelementptr inbounds i8, ptr %i.et, i64 %i.cx ; 4 uses
  %i.fs = and i32 %i.fq, 3
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !44
  store i32 %i.fv, ptr %i.fr, align 4, !tbaa !44
  %i.fw = lshr i32 %i.cw, 26
  %i.fx = and i32 %i.fw, 3
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !44
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !44
  %i.gc = lshr i32 %i.cw, 28
  %i.gd = and i32 %i.gc, 3
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !44
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !44
  %i.gi = lshr i32 %i.cw, 30
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !44
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Z24bcdec__sharp_alpha_blockPKvPvi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1), (4, 5), (8, 9), (12, 13)) %1, i32 noundef %2) local_unnamed_addr #0 !guid !422 {
.preheader:
  %i.a = sext i32 %2 to i64                       ; 3 uses
  %i.b = load i16, ptr %0, align 2, !tbaa !161
  %i.c = trunc i16 %i.b to i8
  %i.d = and i8 %i.c, 15
  %i.e = mul nuw i8 %i.d, 17
  store i8 %i.e, ptr %1, align 1, !tbaa !162
  %i.f = load i16, ptr %0, align 2, !tbaa !161
  %i.g = trunc i16 %i.f to i8
  %i.h = lshr i8 %i.g, 4
  %i.i = mul nuw i8 %i.h, 17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.i, ptr %i.j, align 1, !tbaa !162
  %i.k = load i16, ptr %0, align 2, !tbaa !161
  %i.l = lshr i16 %i.k, 8
  %i.m = trunc nuw i16 %i.l to i8
  %i.n = and i8 %i.m, 15
  %i.o = mul nuw i8 %i.n, 17
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.o, ptr %i.p, align 1, !tbaa !162
  %i.q = load i16, ptr %0, align 2, !tbaa !161
  %i.r = lshr i16 %i.q, 12
  %i.s = trunc nuw nsw i16 %i.r to i8
  %i.t = mul nuw i8 %i.s, 17
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.t, ptr %i.u, align 1, !tbaa !162
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.a ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !161
  %i.y = trunc i16 %i.x to i8
  %i.z = and i8 %i.y, 15
  %i.aa = mul nuw i8 %i.z, 17
  store i8 %i.aa, ptr %i.v, align 1, !tbaa !162
  %i.ab = load i16, ptr %i.w, align 2, !tbaa !161
  %i.ac = trunc i16 %i.ab to i8
  %i.ad = lshr i8 %i.ac, 4
  %i.ae = mul nuw i8 %i.ad, 17
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !162
  %3 = load i16, ptr %i.w, align 2, !tbaa !161
  %4 = lshr i16 %3, 8
  %5 = trunc nuw i16 %4 to i8
  %i.ag = and i8 %5, 15
  %i.ah = mul nuw i8 %i.ag, 17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !162
  %i.aj = load i16, ptr %i.w, align 2, !tbaa !161
  %i.ak = lshr i16 %i.aj, 12
  %i.al = trunc nuw nsw i16 %i.ak to i8
  %i.am = mul nuw i8 %i.al, 17
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i8 %i.am, ptr %i.an, align 1, !tbaa !162
  %i.ao = getelementptr inbounds i8, ptr %i.v, i64 %i.a ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !161
  %i.ar = trunc i16 %i.aq to i8
  %i.as = and i8 %i.ar, 15
  %i.at = mul nuw i8 %i.as, 17
  store i8 %i.at, ptr %i.ao, align 1, !tbaa !162
  %i.au = load i16, ptr %i.ap, align 2, !tbaa !161
  %i.av = trunc i16 %i.au to i8
  %i.aw = lshr i8 %i.av, 4
  %i.ax = mul nuw i8 %i.aw, 17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !162
  %6 = load i16, ptr %i.ap, align 2, !tbaa !161
  %7 = lshr i16 %6, 8
  %8 = trunc nuw i16 %7 to i8
  %i.az = and i8 %8, 15
  %i.ba = mul nuw i8 %i.az, 17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !162
  %i.bc = load i16, ptr %i.ap, align 2, !tbaa !161
  %i.bd = lshr i16 %i.bc, 12
  %i.be = trunc nuw nsw i16 %i.bd to i8
  %i.bf = mul nuw i8 %i.be, 17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !162
  %i.bh = getelementptr inbounds i8, ptr %i.ao, i64 %i.a ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 4 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !161
  %i.bk = trunc i16 %i.bj to i8
  %i.bl = and i8 %i.bk, 15
  %i.bm = mul nuw i8 %i.bl, 17
  store i8 %i.bm, ptr %i.bh, align 1, !tbaa !162
  %i.bn = load i16, ptr %i.bi, align 2, !tbaa !161
  %i.bo = trunc i16 %i.bn to i8
  %i.bp = lshr i8 %i.bo, 4
  %i.bq = mul nuw i8 %i.bp, 17
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !162
  %9 = load i16, ptr %i.bi, align 2, !tbaa !161
  %10 = lshr i16 %9, 8
  %11 = trunc nuw i16 %10 to i8
  %i.bs = and i8 %11, 15
  %i.bt = mul nuw i8 %i.bs, 17
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !162
  %i.bv = load i16, ptr %i.bi, align 2, !tbaa !161
  %i.bw = lshr i16 %i.bv, 12
  %i.bx = trunc nuw nsw i16 %i.bw to i8
  %i.by = mul nuw i8 %i.bx, 17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Z25bcdec__smooth_alpha_blockPKvPvii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !guid !423 {
bb.a:
  %i.a = alloca [8 x i8], align 2                 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.b = load i64, ptr %0, align 8, !tbaa !164    ; 18 uses
  %i.c = trunc i64 %i.b to i16
  store i16 %i.c, ptr %i.a, align 2
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  %i.e = lshr i32 %i.d, 8
  %i.f = and i32 %i.d, 255                        ; 11 uses
  %i.g = and i32 %i.e, 255                        ; 9 uses
  %i.h = icmp samesign ugt i32 %i.f, %i.g
  %i.i = shl nuw nsw i32 %i.g, 1                  ; 2 uses
  %i.j = mul nuw nsw i32 %i.g, 3                  ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = mul nuw nsw i32 %i.f, 6
  %i.l = mul nuw nsw i32 %i.f, 5
  %i.m = shl nuw nsw i32 %i.f, 2
  %i.n = mul nuw nsw i32 %i.f, 3
  %i.o = shl nuw nsw i32 %i.g, 2
  %i.p = add nuw nsw i32 %i.k, %i.g
  %i.q = trunc nuw nsw i32 %i.p to i16
  %i.r = add nuw nsw i32 %i.i, %i.l
  %i.s = trunc nuw nsw i32 %i.r to i16
  %i.t = add nuw nsw i32 %i.j, %i.m
  %i.u = trunc nuw nsw i32 %i.t to i16
  %i.v = add nuw nsw i32 %i.o, %i.n
  %i.w = trunc nuw nsw i32 %i.v to i16
  %i.x = insertelement <4 x i16> poison, i16 %i.q, i64 0
  %i.y = insertelement <4 x i16> %i.x, i16 %i.s, i64 1
  %i.z = insertelement <4 x i16> %i.y, i16 %i.u, i64 2
  %i.aa = insertelement <4 x i16> %i.z, i16 %i.w, i64 3
  %i.ab = add nuw nsw <4 x i16> %i.aa, splat (i16 1)
  %i.ac = udiv <4 x i16> %i.ab, splat (i16 7)
  %i.ad = shl nuw nsw i32 %i.f, 1
  %i.ae = mul nuw nsw i32 %i.g, 5
  %i.af = mul nuw nsw i32 %i.g, 6
  %i.ag = add nuw nsw i32 %i.ae, %i.ad
  %i.ah = trunc nuw nsw i32 %i.ag to i16
  %i.ai = add nuw nsw i32 %i.af, %i.f
  %i.aj = trunc nuw nsw i32 %i.ai to i16
  %i.ak = insertelement <2 x i16> poison, i16 %i.ah, i64 0
  %i.al = insertelement <2 x i16> %i.ak, i16 %i.aj, i64 1
  %i.am = add nuw nsw <2 x i16> %i.al, splat (i16 1)
  %i.an = udiv <2 x i16> %i.am, splat (i16 7)     ; 2 uses
  %i.ao = bitcast <2 x i16> %i.an to <4 x i8>
  %i.ap = extractelement <4 x i8> %i.ao, i64 0
  %i.aq = bitcast <2 x i16> %i.an to <4 x i8>
  %i.ar = extractelement <4 x i8> %i.aq, i64 2
  br label %.preheader

bb.c:                                             ; preds = %bb.a
  %i.as = shl nuw nsw i32 %i.f, 2
  %i.at = mul nuw nsw i32 %i.f, 3
  %i.au = shl nuw nsw i32 %i.f, 1
  %i.av = shl nuw nsw i32 %i.g, 2
  %i.aw = add nuw nsw i32 %i.as, %i.g
  %i.ax = trunc nuw nsw i32 %i.aw to i16
  %i.ay = add nuw nsw i32 %i.i, %i.at
  %i.az = trunc nuw nsw i32 %i.ay to i16
  %i.ba = add nuw nsw i32 %i.j, %i.au
  %i.bb = trunc nuw nsw i32 %i.ba to i16
  %i.bc = add nuw nsw i32 %i.av, %i.f
  %i.bd = trunc nuw nsw i32 %i.bc to i16
  %i.be = insertelement <4 x i16> poison, i16 %i.ax, i64 0
  %i.bf = insertelement <4 x i16> %i.be, i16 %i.az, i64 1
  %i.bg = insertelement <4 x i16> %i.bf, i16 %i.bb, i64 2
  %i.bh = insertelement <4 x i16> %i.bg, i16 %i.bd, i64 3
  %i.bi = add nuw nsw <4 x i16> %i.bh, splat (i16 1)
  %i.bj = udiv <4 x i16> %i.bi, splat (i16 5)
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.b
  %.sink46 = phi i8 [ %i.ap, %bb.b ], [ 0, %bb.c ]
  %.sink = phi i8 [ %i.ar, %bb.b ], [ -1, %bb.c ]
  %i.bk = phi <4 x i16> [ %i.ac, %bb.b ], [ %i.bj, %bb.c ]
  %i.bl = trunc nuw <4 x i16> %i.bk to <4 x i8>
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store <4 x i8> %i.bl, ptr %i.bm, align 2, !tbaa !162
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %.sink46, ptr %i.bn, align 2, !tbaa !162
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %.sink, ptr %i.bo, align 1, !tbaa !162
  %i.bp = lshr i64 %i.b, 16
  %i.bq = sext i32 %2 to i64                      ; 3 uses
  %i.br = sext i32 %3 to i64                      ; 6 uses
  %i.bs = and i64 %i.bp, 7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !162
  store i8 %i.bu, ptr %1, align 1, !tbaa !162
  %i.bv = lshr i64 %i.b, 19
  %i.bw = and i64 %i.bv, 7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !162
  %i.bz = getelementptr inbounds i8, ptr %1, i64 %i.br
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !162
  %i.ca = lshr i64 %i.b, 22
  %i.cb = and i64 %i.ca, 7
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !162
  %i.ce = shl nsw i64 %i.br, 1                    ; 4 uses
  %i.cf = getelementptr inbounds i8, ptr %1, i64 %i.ce
  store i8 %i.cd, ptr %i.cf, align 1, !tbaa !162
  %i.cg = lshr i64 %i.b, 25
  %i.ch = and i64 %i.cg, 7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !162
  %i.ck = mul nsw i64 %i.br, 3                    ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %1, i64 %i.ck
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !162
  %i.cm = lshr i64 %i.b, 28
  %i.cn = getelementptr inbounds i8, ptr %1, i64 %i.bq ; 5 uses
  %i.co = and i64 %i.cm, 7
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !162
  store i8 %i.cq, ptr %i.cn, align 1, !tbaa !162
  %i.cr = lshr i64 %i.b, 31
  %i.cs = and i64 %i.cr, 7
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !162
  %i.cv = getelementptr inbounds i8, ptr %i.cn, i64 %i.br
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !162
  %i.cw = lshr i64 %i.b, 34
  %i.cx = and i64 %i.cw, 7
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !162
  %i.da = getelementptr inbounds i8, ptr %i.cn, i64 %i.ce
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !162
  %i.db = lshr i64 %i.b, 37
  %i.dc = and i64 %i.db, 7
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !162
  %i.df = getelementptr inbounds i8, ptr %i.cn, i64 %i.ck
  store i8 %i.de, ptr %i.df, align 1, !tbaa !162
  %i.dg = lshr i64 %i.b, 40
  %i.dh = getelementptr inbounds i8, ptr %i.cn, i64 %i.bq ; 5 uses
  %i.di = and i64 %i.dg, 7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !162
  store i8 %i.dk, ptr %i.dh, align 1, !tbaa !162
  %i.dl = lshr i64 %i.b, 43
  %i.dm = and i64 %i.dl, 7
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !162
  %i.dp = getelementptr inbounds i8, ptr %i.dh, i64 %i.br
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !162
  %i.dq = lshr i64 %i.b, 46
  %i.dr = and i64 %i.dq, 7
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !162
  %i.du = getelementptr inbounds i8, ptr %i.dh, i64 %i.ce
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !162
  %i.dv = lshr i64 %i.b, 49
  %i.dw = and i64 %i.dv, 7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !162
  %i.dz = getelementptr inbounds i8, ptr %i.dh, i64 %i.ck
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !162
  %i.ea = lshr i64 %i.b, 52
  %i.eb = getelementptr inbounds i8, ptr %i.dh, i64 %i.bq ; 4 uses
  %i.ec = and i64 %i.ea, 7
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !162
  store i8 %i.ee, ptr %i.eb, align 1, !tbaa !162
  %i.ef = lshr i64 %i.b, 55
  %i.eg = and i64 %i.ef, 7
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !162
  %i.ej = getelementptr inbounds i8, ptr %i.eb, i64 %i.br
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !162
  %i.ek = lshr i64 %i.b, 58
  %i.el = and i64 %i.ek, 7
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !162
  %i.eo = getelementptr inbounds i8, ptr %i.eb, i64 %i.ce
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !162
  %i.ep = lshr i64 %i.b, 61
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !162
  %i.es = getelementptr inbounds i8, ptr %i.eb, i64 %i.ck
  store i8 %i.er, ptr %i.es, align 1, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef range(i32 0, -2147483648) i32 @_Z26bcdec__bitstream_read_bitsP16bcdec__bitstreami(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 !guid !424 {
bb.a:
  %notmask = shl nsw i32 -1, %1
  %i.a = xor i32 %notmask, -1                     ; 2 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.c = zext nneg i32 %i.a to i64
  %i.d = trunc i64 %i.b to i32
  %i.e = and i32 %i.d, %i.a
  %i.f = zext i32 %1 to i64                       ; 2 uses
  %i.g = lshr i64 %i.b, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !167  ; 2 uses
  %i.j = and i64 %i.i, %i.c
  %i.k = sext i32 %1 to i64
  %i.l = sub nsw i64 64, %i.k
  %i.m = shl i64 %i.j, %i.l
  %i.n = or i64 %i.m, %i.g
  store i64 %i.n, ptr %0, align 8, !tbaa !166
  %i.o = lshr i64 %i.i, %i.f
  store i64 %i.o, ptr %i.h, align 8, !tbaa !167
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef range(i32 0, 2) i32 @_Z25bcdec__bitstream_read_bitP16bcdec__bitstream(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 !guid !425 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = and i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !167  ; 2 uses
  %i.f = tail call i64 @llvm.fshl.i64(i64 %i.e, i64 %i.a, i64 63)
  store i64 %i.f, ptr %0, align 8, !tbaa !166
  %i.g = lshr i64 %i.e, 1
  store i64 %i.g, ptr %i.d, align 8, !tbaa !167
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i32 @_Z28bcdec__bitstream_read_bits_rP16bcdec__bitstreami(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 !guid !428 {
bb.a:
  %notmask.i = shl nsw i32 -1, %1
  %i.a = xor i32 %notmask.i, -1                   ; 2 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.c = zext nneg i32 %i.a to i64
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = lshr i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !167  ; 2 uses
  %i.h = and i64 %i.g, %i.c
  %i.i = sext i32 %1 to i64
  %i.j = sub nsw i64 64, %i.i
  %i.k = shl i64 %i.h, %i.j
  %i.l = or i64 %i.k, %i.e
  store i64 %i.l, ptr %0, align 8, !tbaa !166
  %i.m = lshr i64 %i.g, %i.d
  store i64 %i.m, ptr %i.f, align 8, !tbaa !167
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
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !426

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
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !427

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ], [ %i.ag, %.lr.ph.epil ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @bcdec_bc1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, i32 noundef %2) local_unnamed_addr #0 !guid !429 {
bb.a:
  tail call void @_Z18bcdec__color_blockPKvPvii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @bcdec_bc2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, i32 noundef %2) local_unnamed_addr #0 !guid !430 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_Z18bcdec__color_blockPKvPvii(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %2, i32 noundef 1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.c = sext i32 %2 to i64                       ; 3 uses
  %i.d = load i16, ptr %0, align 2, !tbaa !161
  %i.e = trunc i16 %i.d to i8
  %i.f = and i8 %i.e, 15
  %i.g = mul nuw i8 %i.f, 17
  store i8 %i.g, ptr %i.b, align 1, !tbaa !162
  %i.h = load i16, ptr %0, align 2, !tbaa !161
  %i.i = trunc i16 %i.h to i8
  %i.j = lshr i8 %i.i, 4
  %i.k = mul nuw i8 %i.j, 17
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.k, ptr %i.l, align 1, !tbaa !162
  %i.m = load i16, ptr %0, align 2, !tbaa !161
  %i.n = lshr i16 %i.m, 8
  %i.o = trunc nuw i16 %i.n to i8
  %i.p = and i8 %i.o, 15
  %i.q = mul nuw i8 %i.p, 17
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.q, ptr %i.r, align 1, !tbaa !162
  %i.s = load i16, ptr %0, align 2, !tbaa !161
  %i.t = lshr i16 %i.s, 12
  %i.u = trunc nuw nsw i16 %i.t to i8
  %i.v = mul nuw i8 %i.u, 17
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.v, ptr %i.w, align 1, !tbaa !162
  %i.x = getelementptr inbounds i8, ptr %i.b, i64 %i.c ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !161
  %i.aa = trunc i16 %i.z to i8
  %i.ab = and i8 %i.aa, 15
  %i.ac = mul nuw i8 %i.ab, 17
  store i8 %i.ac, ptr %i.x, align 1, !tbaa !162
  %i.ad = load i16, ptr %i.y, align 2, !tbaa !161
  %i.ae = trunc i16 %i.ad to i8
  %i.af = lshr i8 %i.ae, 4
  %i.ag = mul nuw i8 %i.af, 17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !162
  %3 = load i16, ptr %i.y, align 2, !tbaa !161
  %4 = lshr i16 %3, 8
  %5 = trunc nuw i16 %4 to i8
  %i.ai = and i8 %5, 15
  %i.aj = mul nuw i8 %i.ai, 17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !162
  %i.al = load i16, ptr %i.y, align 2, !tbaa !161
  %i.am = lshr i16 %i.al, 12
  %i.an = trunc nuw nsw i16 %i.am to i8
  %i.ao = mul nuw i8 %i.an, 17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !162
  %i.aq = getelementptr inbounds i8, ptr %i.x, i64 %i.c ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !161
  %i.at = trunc i16 %i.as to i8
  %i.au = and i8 %i.at, 15
  %i.av = mul nuw i8 %i.au, 17
  store i8 %i.av, ptr %i.aq, align 1, !tbaa !162
  %i.aw = load i16, ptr %i.ar, align 2, !tbaa !161
  %i.ax = trunc i16 %i.aw to i8
  %i.ay = lshr i8 %i.ax, 4
  %i.az = mul nuw i8 %i.ay, 17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !162
  %6 = load i16, ptr %i.ar, align 2, !tbaa !161
  %7 = lshr i16 %6, 8
  %8 = trunc nuw i16 %7 to i8
  %i.bb = and i8 %8, 15
  %i.bc = mul nuw i8 %i.bb, 17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !162
  %i.be = load i16, ptr %i.ar, align 2, !tbaa !161
  %i.bf = lshr i16 %i.be, 12
  %i.bg = trunc nuw nsw i16 %i.bf to i8
  %i.bh = mul nuw i8 %i.bg, 17
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !162
  %i.bj = getelementptr inbounds i8, ptr %i.aq, i64 %i.c ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 4 uses
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !161
  %i.bm = trunc i16 %i.bl to i8
  %i.bn = and i8 %i.bm, 15
  %i.bo = mul nuw i8 %i.bn, 17
  store i8 %i.bo, ptr %i.bj, align 1, !tbaa !162
  %i.bp = load i16, ptr %i.bk, align 2, !tbaa !161
  %i.bq = trunc i16 %i.bp to i8
  %i.br = lshr i8 %i.bq, 4
  %i.bs = mul nuw i8 %i.br, 17
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !162
  %9 = load i16, ptr %i.bk, align 2, !tbaa !161
  %10 = lshr i16 %9, 8
  %11 = trunc nuw i16 %10 to i8
  %i.bu = and i8 %11, 15
  %i.bv = mul nuw i8 %i.bu, 17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !162
  %i.bx = load i16, ptr %i.bk, align 2, !tbaa !161
  %i.by = lshr i16 %i.bx, 12
  %i.bz = trunc nuw nsw i16 %i.by to i8
  %i.ca = mul nuw i8 %i.bz, 17
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @bcdec_bc3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, i32 noundef %2) local_unnamed_addr #0 !guid !431 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_Z18bcdec__color_blockPKvPvii(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %2, i32 noundef 1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3
  tail call void @_Z25bcdec__smooth_alpha_blockPKvPvii(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef 4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @bcdec_bc4(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1, i32 noundef %2) local_unnamed_addr #0 !guid !432 {
bb.a:
  tail call void @_Z25bcdec__smooth_alpha_blockPKvPvii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @bcdec_bc5(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %1, i32 noundef %2) local_unnamed_addr #0 !guid !433 {
bb.a:
  tail call void @_Z25bcdec__smooth_alpha_blockPKvPvii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  tail call void @_Z25bcdec__smooth_alpha_blockPKvPvii(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef 2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_Z18bcdec__extend_signii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !guid !434 {
bb.a:
  %i.a = sub nsw i32 32, %1                       ; 2 uses
  %i.b = shl i32 %0, %i.a
  %i.c = ashr exact i32 %i.b, %i.a
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_Z24bcdec__transform_inverseiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !guid !435 {
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
define hidden noundef i32 @_Z17bcdec__unquantizeiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !guid !436 {
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
define hidden noundef range(i32 -33554432, 33554432) i32 @_Z18bcdec__interpolateiiPii(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #4 !guid !437 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !44   ; 2 uses
  %i.d = sub nsw i32 64, %i.c
  %i.e = mul nsw i32 %i.d, %0
  %i.f = mul nsw i32 %i.c, %1
  %i.g = add i32 %i.f, 32
  %i.h = add i32 %i.g, %i.e
  %i.i = ashr i32 %i.h, 6
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i16 @_Z24bcdec__finish_unquantizeii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !guid !438 {
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
define hidden noundef float @_Z26bcdec__half_to_float_quickt(i16 noundef zeroext %0) local_unnamed_addr #3 !guid !439 {
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
  store i32 0, ptr %i.h, align 4, !tbaa !275
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.i, i8 0, i64 7, i1 false)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !255
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i7.i.i.i.i.i.i = load i64, ptr %i.j, align 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !277  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 36
  %i.n = load i8, ptr %i.m, align 4, !tbaa !278
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 38
  %i.q = load i8, ptr %i.p, align 2, !tbaa !279, !range !280, !noundef !281
  %i.r = trunc nuw i8 %i.q to i1
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
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_110ParamValueESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %bb.f, !llvm.loop !559

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
define internal void @"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS2_7DDS_pvt11CompressionERKNS6_13dds_pixformatEiE3$_0E9_M_invokeERKSt9_Any_dataOlSG_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #22 align 2 !guid !565 {
bb.a:
  %i.a = alloca [8 x i8], align 2                 ; 22 uses
  %i.b = alloca [8 x i8], align 2                 ; 22 uses
  %i.c = alloca [8 x i8], align 2                 ; 22 uses
  %i.d = alloca [4 x i32], align 16               ; 21 uses
  %i.e = alloca [8 x i8], align 2                 ; 22 uses
  %i.f = alloca [4 x i32], align 16               ; 21 uses
  %i.g = alloca [64 x i8], align 16               ; 63 uses
  %i.h = alloca [48 x i16], align 16              ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !265   ; 9 uses
  %.val3 = load i64, ptr %1, align 8, !tbaa !254  ; 2 uses
  %.val4 = load i64, ptr %2, align 8, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  %i.i = trunc i64 %.val3 to i32
  %i.j = shl nsw i32 %i.i, 2                      ; 2 uses
  %i.k = trunc i64 %.val4 to i32
  %i.l = shl nsw i32 %i.k, 2
  %i.m = load ptr, ptr %.val, align 8, !tbaa !567, !nonnull !281, !align !282
  %i.n = load i32, ptr %i.m, align 4, !tbaa !44
  %.sroa.speculated166.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %i.l) ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.p = icmp slt i32 %i.j, %.sroa.speculated166.i.i.i
  br i1 %i.p, label %.preheader174.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS1_7DDS_pvt11CompressionERKNS5_13dds_pixformatEiE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

.preheader174.lr.ph.i.i.i:                        ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 6 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 10 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 14 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 26
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 28 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 30
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 5 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 7 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 9 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 11 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 13 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 15 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 19 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 21
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 23 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 27 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 29
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 31 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 44 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 52 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 60 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 35 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 39 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 43 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 47 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 51 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 55 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 59 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 63 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.cf = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 7 uses
  %i.cg = load ptr, ptr %i.q, align 8, !tbaa !568, !nonnull !281, !align !282
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !44 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.preheader174.preheader.i.i.i, label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS1_7DDS_pvt11CompressionERKNS5_13dds_pixformatEiE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

.preheader174.preheader.i.i.i:                    ; preds = %.preheader174.lr.ph.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !569, !nonnull !281, !align !283
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !255
  %i.cm = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !570, !nonnull !281, !align !282
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !44
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i64 %.val3, %i.cp
  %i.cr = load ptr, ptr %i.o, align 8, !tbaa !571, !nonnull !281, !align !283
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !254
  %i.ct = mul i64 %i.cq, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ct
  %i.cv = sext i32 %i.j to i64
  %i.cw = sext i32 %.sroa.speculated166.i.i.i to i64
  br label %.preheader174.i.i.i

.preheader174.i.i.i:                              ; preds = %.critedge75.i.i.i, %.preheader174.preheader.i.i.i
  %i.cx = phi i32 [ %i.ch, %.preheader174.preheader.i.i.i ], [ %i.atg, %.critedge75.i.i.i ] ; 2 uses
  %indvars.iv199.i.i.i = phi i64 [ %i.cv, %.preheader174.preheader.i.i.i ], [ %indvars.iv.next200.i.i.i, %.critedge75.i.i.i ] ; 3 uses
  %.061191.i.i.i = phi ptr [ %i.cu, %.preheader174.preheader.i.i.i ], [ %.1.lcssa.i.i.i, %.critedge75.i.i.i ] ; 2 uses
  %.not70185.i.i.i = icmp sgt i32 %i.cx, 0
  br i1 %.not70185.i.i.i, label %.lr.ph189.i.i.i, label %.critedge75.i.i.i

.lr.ph189.i.i.i:                                  ; preds = %.preheader174.i.i.i
  %i.cy = trunc nsw i64 %indvars.iv199.i.i.i to i32 ; 6 uses
  %i.cz = or disjoint i32 %i.cy, 1
  %i.da = icmp slt i32 %i.cz, %.sroa.speculated166.i.i.i
  %i.db = or disjoint i32 %i.cy, 2
  %i.dc = icmp slt i32 %i.db, %.sroa.speculated166.i.i.i
  %i.dd = or disjoint i32 %i.cy, 3
  %i.de = icmp slt i32 %i.dd, %.sroa.speculated166.i.i.i
  %i.df = or disjoint i32 %i.cy, 1
  %i.dg = icmp slt i32 %i.df, %.sroa.speculated166.i.i.i
  %i.dh = or disjoint i32 %i.cy, 2
  %i.di = icmp slt i32 %i.dh, %.sroa.speculated166.i.i.i
  %i.dj = or disjoint i32 %i.cy, 3
  %i.dk = icmp slt i32 %i.dj, %.sroa.speculated166.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i.i.i, %.lr.ph189.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph189.i.i.i ], [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ] ; 3 uses
  %.1188.i.i.i = phi ptr [ %.061191.i.i.i, %.lr.ph189.i.i.i ], [ %i.alg, %.critedge.i.i.i ] ; 21 uses
  %i.dl = load ptr, ptr %i.r, align 8, !tbaa !572, !nonnull !281, !align !282
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !256 ; 2 uses
  switch i32 %i.dm, label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS1_7DDS_pvt11CompressionERKNS5_13dds_pixformatEiE3$_0JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit" [
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
  %i.dn = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !161
  %i.dp = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 10
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !161
  %i.dr = zext i16 %i.do to i32                   ; 3 uses
  %i.ds = lshr i32 %i.dr, 5
  %i.dt = and i32 %i.dr, 31
  %i.du = zext i16 %i.dq to i32                   ; 3 uses
  %i.dv = lshr i32 %i.du, 5
  %i.dw = and i32 %i.du, 31
  %i.dx = lshr i32 %i.dr, 11
  %i.dy = mul nuw nsw i32 %i.dx, 527
  %i.dz = add nuw nsw i32 %i.dy, 23
  %i.ea = lshr i32 %i.dz, 6                       ; 3 uses
  %i.eb = and i32 %i.ds, 63
  %i.ec = mul nuw nsw i32 %i.eb, 259
  %i.ed = add nuw nsw i32 %i.ec, 33
  %i.ee = lshr i32 %i.ed, 6                       ; 3 uses
  %i.ef = mul nuw nsw i32 %i.dt, 527
  %i.eg = add nuw nsw i32 %i.ef, 23
  %i.eh = lshr i32 %i.eg, 6                       ; 3 uses
  %i.ei = shl nuw nsw i32 %i.eh, 16
  %i.ej = shl nuw nsw i32 %i.ee, 8
  %i.ek = or i32 %i.ei, %i.ej
  %i.el = or i32 %i.ek, %i.ea
  %i.em = or i32 %i.el, -16777216
  store i32 %i.em, ptr %i.f, align 16, !tbaa !44
  %i.en = lshr i32 %i.du, 11
  %i.eo = mul nuw nsw i32 %i.en, 527
  %i.ep = add nuw nsw i32 %i.eo, 23
  %i.eq = lshr i32 %i.ep, 6                       ; 3 uses
  %i.er = and i32 %i.dv, 63
  %i.es = mul nuw nsw i32 %i.er, 259
  %i.et = add nuw nsw i32 %i.es, 33
  %i.eu = lshr i32 %i.et, 6                       ; 3 uses
  %i.ev = mul nuw nsw i32 %i.dw, 527
  %i.ew = add nuw nsw i32 %i.ev, 23
  %i.ex = lshr i32 %i.ew, 6                       ; 3 uses
  %i.ey = shl nuw nsw i32 %i.ex, 16
  %i.ez = shl nuw nsw i32 %i.eu, 8
  %i.fa = or i32 %i.ey, %i.ez
  %i.fb = or i32 %i.fa, %i.eq
  %i.fc = or i32 %i.fb, -16777216
  store i32 %i.fc, ptr %i.cb, align 4, !tbaa !44
  %i.fd = shl nuw nsw i32 %i.ea, 1
  %i.fe = add nuw nsw i32 %i.fd, %i.eq
  %i.ff = trunc nsw i32 %i.fe to i16
  %i.fg = shl nuw nsw i32 %i.ee, 1
  %i.fh = add nuw nsw i32 %i.fg, %i.eu
  %i.fi = trunc nuw nsw i32 %i.fh to i16
  %i.fj = shl nuw nsw i32 %i.eh, 1
  %i.fk = add nuw nsw i32 %i.fj, %i.ex
  %i.fl = trunc nuw nsw i32 %i.fk to i16
  %i.fm = shl nuw nsw i32 %i.eq, 1
  %i.fn = add nuw nsw i32 %i.fm, %i.ea
  %i.fo = trunc nsw i32 %i.fn to i16
  %i.fp = insertelement <2 x i16> poison, i16 %i.fo, i64 0
  %i.fq = insertelement <2 x i16> %i.fp, i16 %i.ff, i64 1
  %i.fr = add nuw nsw <2 x i16> %i.fq, splat (i16 1)
  %i.fs = udiv <2 x i16> %i.fr, splat (i16 3)
  %i.ft = zext nneg <2 x i16> %i.fs to <2 x i32>
  %i.fu = shl nuw nsw i32 %i.eu, 1
  %i.fv = add nuw nsw i32 %i.fu, %i.ee
  %i.fw = trunc nuw nsw i32 %i.fv to i16
  %i.fx = insertelement <2 x i16> poison, i16 %i.fw, i64 0
  %i.fy = insertelement <2 x i16> %i.fx, i16 %i.fi, i64 1
  %i.fz = add nuw nsw <2 x i16> %i.fy, splat (i16 1)
  %i.ga = udiv <2 x i16> %i.fz, splat (i16 3)
  %i.gb = zext nneg <2 x i16> %i.ga to <2 x i32>
  %i.gc = shl nuw nsw i32 %i.ex, 1
  %i.gd = add nuw nsw i32 %i.gc, %i.eh
  %i.ge = trunc nuw nsw i32 %i.gd to i16
  %i.gf = insertelement <2 x i16> poison, i16 %i.ge, i64 0
  %i.gg = insertelement <2 x i16> %i.gf, i16 %i.fl, i64 1
  %i.gh = add nuw nsw <2 x i16> %i.gg, splat (i16 1)
  %i.gi = udiv <2 x i16> %i.gh, splat (i16 3)
  %i.gj = zext nneg <2 x i16> %i.gi to <2 x i32>
  %i.gk = shl nuw nsw <2 x i32> %i.gj, splat (i32 16)
  %i.gl = shl nuw nsw <2 x i32> %i.gb, splat (i32 8)
  %i.gm = or disjoint <2 x i32> %i.gk, %i.ft
  %i.gn = or <2 x i32> %i.gm, %i.gl
  %i.go = or <2 x i32> %i.gn, splat (i32 -16777216)
  %i.gp = shufflevector <2 x i32> %i.go, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.gp, ptr %i.cc, align 8, !tbaa !44
  %i.gq = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 12
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !44 ; 16 uses
  %i.gs = and i32 %i.gr, 3
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !44
  store i32 %i.gv, ptr %i.g, align 16, !tbaa !44
  %i.gw = lshr i32 %i.gr, 2
  %i.gx = and i32 %i.gw, 3
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !44
  store i32 %i.ha, ptr %i.w, align 4, !tbaa !44
  %i.hb = lshr i32 %i.gr, 4
  %i.hc = and i32 %i.hb, 3
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !44
  store i32 %i.hf, ptr %i.y, align 8, !tbaa !44
  %i.hg = lshr i32 %i.gr, 6
  %i.hh = and i32 %i.hg, 3
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !44
  store i32 %i.hk, ptr %i.aa, align 4, !tbaa !44
  %i.hl = lshr i32 %i.gr, 8
  %i.hm = and i32 %i.hl, 3
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !44
  store i32 %i.hp, ptr %i.ac, align 16, !tbaa !44
  %i.hq = lshr i32 %i.gr, 10
  %i.hr = and i32 %i.hq, 3
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !44
  store i32 %i.hu, ptr %i.ae, align 4, !tbaa !44
  %i.hv = lshr i32 %i.gr, 12
  %i.hw = and i32 %i.hv, 3
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !44
  store i32 %i.hz, ptr %i.ag, align 8, !tbaa !44
  %i.ia = lshr i32 %i.gr, 14
  %i.ib = and i32 %i.ia, 3
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !44
  store i32 %i.ie, ptr %i.ai, align 4, !tbaa !44
  %i.if = lshr i32 %i.gr, 16
  %i.ig = and i32 %i.if, 3
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !44
  store i32 %i.ij, ptr %i.bi, align 16, !tbaa !44
  %i.ik = lshr i32 %i.gr, 18
  %i.il = and i32 %i.ik, 3
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !44
  store i32 %i.io, ptr %i.bj, align 4, !tbaa !44
  %i.ip = lshr i32 %i.gr, 20
  %i.iq = and i32 %i.ip, 3
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !44
  store i32 %i.it, ptr %i.bk, align 8, !tbaa !44
  %i.iu = lshr i32 %i.gr, 22
  %i.iv = and i32 %i.iu, 3
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !44
  store i32 %i.iy, ptr %i.bl, align 4, !tbaa !44
  %i.iz = lshr i32 %i.gr, 24
  %i.ja = and i32 %i.iz, 3
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !44
  store i32 %i.jd, ptr %i.bm, align 16, !tbaa !44
  %i.je = lshr i32 %i.gr, 26
  %i.jf = and i32 %i.je, 3
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !44
  store i32 %i.ji, ptr %i.bn, align 4, !tbaa !44
  %i.jj = lshr i32 %i.gr, 28
  %i.jk = and i32 %i.jj, 3
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !44
  store i32 %i.jn, ptr %i.bo, align 8, !tbaa !44
  %i.jo = lshr i32 %i.gr, 30
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !44
  store i32 %i.jr, ptr %i.bp, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  %i.js = load i16, ptr %.1188.i.i.i, align 4, !tbaa !161
  %i.jt = trunc i16 %i.js to i8
  %i.ju = and i8 %i.jt, 15
  %i.jv = mul nuw i8 %i.ju, 17
  store i8 %i.jv, ptr %i.ao, align 1, !tbaa !162
  %i.jw = load i16, ptr %.1188.i.i.i, align 4, !tbaa !161
  %i.jx = trunc i16 %i.jw to i8
  %i.jy = lshr i8 %i.jx, 4
  %i.jz = mul nuw i8 %i.jy, 17
  store i8 %i.jz, ptr %i.aq, align 1, !tbaa !162
  %i.ka = load i16, ptr %.1188.i.i.i, align 4, !tbaa !161
  %i.kb = lshr i16 %i.ka, 8
  %i.kc = trunc nuw i16 %i.kb to i8
  %i.kd = and i8 %i.kc, 15
  %i.ke = mul nuw i8 %i.kd, 17
  store i8 %i.ke, ptr %i.as, align 1, !tbaa !162
  %i.kf = load i16, ptr %.1188.i.i.i, align 4, !tbaa !161
  %i.kg = lshr i16 %i.kf, 12
  %i.kh = trunc nuw nsw i16 %i.kg to i8
  %i.ki = mul nuw i8 %i.kh, 17
  store i8 %i.ki, ptr %i.au, align 1, !tbaa !162
  %i.kj = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 2 ; 4 uses
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !161
  %i.kl = trunc i16 %i.kk to i8
  %i.km = and i8 %i.kl, 15
  %i.kn = mul nuw i8 %i.km, 17
  store i8 %i.kn, ptr %i.aw, align 1, !tbaa !162
  %i.ko = load i16, ptr %i.kj, align 2, !tbaa !161
  %i.kp = trunc i16 %i.ko to i8
  %i.kq = lshr i8 %i.kp, 4
  %i.kr = mul nuw i8 %i.kq, 17
  store i8 %i.kr, ptr %i.ay, align 1, !tbaa !162
  %3 = load i16, ptr %i.kj, align 2, !tbaa !161
  %4 = lshr i16 %3, 8
  %5 = trunc nuw i16 %4 to i8
  %i.ks = and i8 %5, 15
  %i.kt = mul nuw i8 %i.ks, 17
  store i8 %i.kt, ptr %i.ba, align 1, !tbaa !162
  %i.ku = load i16, ptr %i.kj, align 2, !tbaa !161
  %i.kv = lshr i16 %i.ku, 12
  %i.kw = trunc nuw nsw i16 %i.kv to i8
  %i.kx = mul nuw i8 %i.kw, 17
  store i8 %i.kx, ptr %i.bc, align 1, !tbaa !162
  %i.ky = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 4 ; 4 uses
  %i.kz = load i16, ptr %i.ky, align 4, !tbaa !161
  %i.la = trunc i16 %i.kz to i8
  %i.lb = and i8 %i.la, 15
  %i.lc = mul nuw i8 %i.lb, 17
  store i8 %i.lc, ptr %i.bt, align 1, !tbaa !162
  %i.ld = load i16, ptr %i.ky, align 4, !tbaa !161
  %i.le = trunc i16 %i.ld to i8
  %i.lf = lshr i8 %i.le, 4
  %i.lg = mul nuw i8 %i.lf, 17
  store i8 %i.lg, ptr %i.bu, align 1, !tbaa !162
  %6 = load i16, ptr %i.ky, align 4, !tbaa !161
  %7 = lshr i16 %6, 8
  %8 = trunc nuw i16 %7 to i8
  %i.lh = and i8 %8, 15
  %i.li = mul nuw i8 %i.lh, 17
  store i8 %i.li, ptr %i.bv, align 1, !tbaa !162
  %i.lj = load i16, ptr %i.ky, align 4, !tbaa !161
  %i.lk = lshr i16 %i.lj, 12
  %i.ll = trunc nuw nsw i16 %i.lk to i8
  %i.lm = mul nuw i8 %i.ll, 17
  store i8 %i.lm, ptr %i.bw, align 1, !tbaa !162
  %i.ln = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 6 ; 4 uses
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !161
  %i.lp = trunc i16 %i.lo to i8
  %i.lq = and i8 %i.lp, 15
  %i.lr = mul nuw i8 %i.lq, 17
  store i8 %i.lr, ptr %i.bx, align 1, !tbaa !162
  %i.ls = load i16, ptr %i.ln, align 2, !tbaa !161
  %i.lt = trunc i16 %i.ls to i8
  %i.lu = lshr i8 %i.lt, 4
  %i.lv = mul nuw i8 %i.lu, 17
  store i8 %i.lv, ptr %i.by, align 1, !tbaa !162
  %9 = load i16, ptr %i.ln, align 2, !tbaa !161
  %10 = lshr i16 %9, 8
  %11 = trunc nuw i16 %10 to i8
  %i.lw = and i8 %11, 15
  %i.lx = mul nuw i8 %i.lw, 17
  store i8 %i.lx, ptr %i.bz, align 1, !tbaa !162
  %i.ly = load i16, ptr %i.ln, align 2, !tbaa !161
  %i.lz = lshr i16 %i.ly, 12
  %i.ma = trunc nuw nsw i16 %i.lz to i8
  %i.mb = mul nuw i8 %i.ma, 17
  store i8 %i.mb, ptr %i.ca, align 1, !tbaa !162
  br label %bb.r

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.mc = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !161
  %i.me = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 10
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !161
  %i.mg = zext i16 %i.md to i32                   ; 3 uses
  %i.mh = lshr i32 %i.mg, 5
  %i.mi = and i32 %i.mg, 31
  %i.mj = zext i16 %i.mf to i32                   ; 3 uses
  %i.mk = lshr i32 %i.mj, 5
  %i.ml = and i32 %i.mj, 31
  %i.mm = lshr i32 %i.mg, 11
  %i.mn = mul nuw nsw i32 %i.mm, 527
  %i.mo = add nuw nsw i32 %i.mn, 23
  %i.mp = lshr i32 %i.mo, 6                       ; 3 uses
  %i.mq = and i32 %i.mh, 63
  %i.mr = mul nuw nsw i32 %i.mq, 259
  %i.ms = add nuw nsw i32 %i.mr, 33
  %i.mt = lshr i32 %i.ms, 6                       ; 3 uses
  %i.mu = mul nuw nsw i32 %i.mi, 527
  %i.mv = add nuw nsw i32 %i.mu, 23
  %i.mw = lshr i32 %i.mv, 6                       ; 3 uses
  %i.mx = shl nuw nsw i32 %i.mw, 16
  %i.my = shl nuw nsw i32 %i.mt, 8
  %i.mz = or i32 %i.mx, %i.my
  %i.na = or i32 %i.mz, %i.mp
  %i.nb = or i32 %i.na, -16777216
  store i32 %i.nb, ptr %i.d, align 16, !tbaa !44
  %i.nc = lshr i32 %i.mj, 11
  %i.nd = mul nuw nsw i32 %i.nc, 527
  %i.ne = add nuw nsw i32 %i.nd, 23
  %i.nf = lshr i32 %i.ne, 6                       ; 3 uses
  %i.ng = and i32 %i.mk, 63
  %i.nh = mul nuw nsw i32 %i.ng, 259
  %i.ni = add nuw nsw i32 %i.nh, 33
  %i.nj = lshr i32 %i.ni, 6                       ; 3 uses
  %i.nk = mul nuw nsw i32 %i.ml, 527
  %i.nl = add nuw nsw i32 %i.nk, 23
  %i.nm = lshr i32 %i.nl, 6                       ; 3 uses
  %i.nn = shl nuw nsw i32 %i.nm, 16
  %i.no = shl nuw nsw i32 %i.nj, 8
  %i.np = or i32 %i.nn, %i.no
  %i.nq = or i32 %i.np, %i.nf
  %i.nr = or i32 %i.nq, -16777216
  store i32 %i.nr, ptr %i.bg, align 4, !tbaa !44
  %i.ns = shl nuw nsw i32 %i.mp, 1
  %i.nt = add nuw nsw i32 %i.ns, %i.nf
  %i.nu = trunc nsw i32 %i.nt to i16
  %i.nv = shl nuw nsw i32 %i.mt, 1
  %i.nw = add nuw nsw i32 %i.nv, %i.nj
  %i.nx = trunc nuw nsw i32 %i.nw to i16
  %i.ny = shl nuw nsw i32 %i.mw, 1
  %i.nz = add nuw nsw i32 %i.ny, %i.nm
  %i.oa = trunc nuw nsw i32 %i.nz to i16
  %i.ob = shl nuw nsw i32 %i.nf, 1
  %i.oc = add nuw nsw i32 %i.ob, %i.mp
  %i.od = trunc nsw i32 %i.oc to i16
  %i.oe = insertelement <2 x i16> poison, i16 %i.od, i64 0
  %i.of = insertelement <2 x i16> %i.oe, i16 %i.nu, i64 1
  %i.og = add nuw nsw <2 x i16> %i.of, splat (i16 1)
  %i.oh = udiv <2 x i16> %i.og, splat (i16 3)
  %i.oi = zext nneg <2 x i16> %i.oh to <2 x i32>
  %i.oj = shl nuw nsw i32 %i.nj, 1
  %i.ok = add nuw nsw i32 %i.oj, %i.mt
  %i.ol = trunc nuw nsw i32 %i.ok to i16
  %i.om = insertelement <2 x i16> poison, i16 %i.ol, i64 0
  %i.on = insertelement <2 x i16> %i.om, i16 %i.nx, i64 1
  %i.oo = add nuw nsw <2 x i16> %i.on, splat (i16 1)
  %i.op = udiv <2 x i16> %i.oo, splat (i16 3)
  %i.oq = zext nneg <2 x i16> %i.op to <2 x i32>
  %i.or = shl nuw nsw i32 %i.nm, 1
  %i.os = add nuw nsw i32 %i.or, %i.mw
  %i.ot = trunc nuw nsw i32 %i.os to i16
  %i.ou = insertelement <2 x i16> poison, i16 %i.ot, i64 0
  %i.ov = insertelement <2 x i16> %i.ou, i16 %i.oa, i64 1
  %i.ow = add nuw nsw <2 x i16> %i.ov, splat (i16 1)
  %i.ox = udiv <2 x i16> %i.ow, splat (i16 3)
  %i.oy = zext nneg <2 x i16> %i.ox to <2 x i32>
  %i.oz = shl nuw nsw <2 x i32> %i.oy, splat (i32 16)
  %i.pa = shl nuw nsw <2 x i32> %i.oq, splat (i32 8)
  %i.pb = or disjoint <2 x i32> %i.oz, %i.oi
  %i.pc = or <2 x i32> %i.pb, %i.pa
  %i.pd = or <2 x i32> %i.pc, splat (i32 -16777216)
  %i.pe = shufflevector <2 x i32> %i.pd, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.pe, ptr %i.bh, align 8, !tbaa !44
  %i.pf = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 12
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !44 ; 16 uses
  %i.ph = and i32 %i.pg, 3
  %i.pi = zext nneg i32 %i.ph to i64
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.pi
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !44
  store i32 %i.pk, ptr %i.g, align 16, !tbaa !44
  %i.pl = lshr i32 %i.pg, 2
  %i.pm = and i32 %i.pl, 3
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.pn
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !44
  store i32 %i.pp, ptr %i.w, align 4, !tbaa !44
  %i.pq = lshr i32 %i.pg, 4
  %i.pr = and i32 %i.pq, 3
  %i.ps = zext nneg i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ps
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !44
  store i32 %i.pu, ptr %i.y, align 8, !tbaa !44
  %i.pv = lshr i32 %i.pg, 6
  %i.pw = and i32 %i.pv, 3
  %i.px = zext nneg i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.px
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !44
  store i32 %i.pz, ptr %i.aa, align 4, !tbaa !44
  %i.qa = lshr i32 %i.pg, 8
  %i.qb = and i32 %i.qa, 3
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qc
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !44
  store i32 %i.qe, ptr %i.ac, align 16, !tbaa !44
  %i.qf = lshr i32 %i.pg, 10
  %i.qg = and i32 %i.qf, 3
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qh
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !44
  store i32 %i.qj, ptr %i.ae, align 4, !tbaa !44
  %i.qk = lshr i32 %i.pg, 12
  %i.ql = and i32 %i.qk, 3
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qm
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !44
  store i32 %i.qo, ptr %i.ag, align 8, !tbaa !44
  %i.qp = lshr i32 %i.pg, 14
  %i.qq = and i32 %i.qp, 3
  %i.qr = zext nneg i32 %i.qq to i64
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qr
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !44
  store i32 %i.qt, ptr %i.ai, align 4, !tbaa !44
  %i.qu = lshr i32 %i.pg, 16
  %i.qv = and i32 %i.qu, 3
  %i.qw = zext nneg i32 %i.qv to i64
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qw
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !44
  store i32 %i.qy, ptr %i.bi, align 16, !tbaa !44
  %i.qz = lshr i32 %i.pg, 18
  %i.ra = and i32 %i.qz, 3
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rb
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !44
  store i32 %i.rd, ptr %i.bj, align 4, !tbaa !44
  %i.re = lshr i32 %i.pg, 20
  %i.rf = and i32 %i.re, 3
  %i.rg = zext nneg i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rg
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !44
  store i32 %i.ri, ptr %i.bk, align 8, !tbaa !44
  %i.rj = lshr i32 %i.pg, 22
  %i.rk = and i32 %i.rj, 3
  %i.rl = zext nneg i32 %i.rk to i64
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rl
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !44
  store i32 %i.rn, ptr %i.bl, align 4, !tbaa !44
  %i.ro = lshr i32 %i.pg, 24
  %i.rp = and i32 %i.ro, 3
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !44
  store i32 %i.rs, ptr %i.bm, align 16, !tbaa !44
  %i.rt = lshr i32 %i.pg, 26
  %i.ru = and i32 %i.rt, 3
  %i.rv = zext nneg i32 %i.ru to i64
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rv
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !44
  store i32 %i.rx, ptr %i.bn, align 4, !tbaa !44
  %i.ry = lshr i32 %i.pg, 28
  %i.rz = and i32 %i.ry, 3
  %i.sa = zext nneg i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.sa
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !44
  store i32 %i.sc, ptr %i.bo, align 8, !tbaa !44
  %i.sd = lshr i32 %i.pg, 30
  %i.se = zext nneg i32 %i.sd to i64
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.se
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !44
  store i32 %i.sg, ptr %i.bp, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.sh = load i64, ptr %.1188.i.i.i, align 8, !tbaa !164 ; 18 uses
  %i.si = trunc i64 %i.sh to i16
  store i16 %i.si, ptr %i.e, align 2
  %i.sj = trunc i64 %i.sh to i32                  ; 2 uses
  %i.sk = lshr i32 %i.sj, 8
  %i.sl = and i32 %i.sj, 255                      ; 11 uses
  %i.sm = and i32 %i.sk, 255                      ; 9 uses
end_hunk_1
