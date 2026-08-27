Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt_FindGlyphIndex:bb.a
  %i.bj = shl nuw nsw i32 %i.bi, 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !14
  %i.bm = zext i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bj, %i.bm            ; 2 uses
  %i.bo = lshr i32 %i.bn, 1                       ; 2 uses
  %i.bp = icmp sgt i32 %1, 65535
  br i1 %i.bp, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = add i32 %i.d, 14
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bt = zext i8 %i.bs to i16
  %i.bu = shl nuw i16 %i.bt, 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 13
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
  %i.bz = zext i8 %i.by to i16
  %i.ca = shl nuw i16 %i.bz, 8                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !14
  %i.cd = zext i8 %i.cc to i16                    ; 3 uses
  %i.ce = or disjoint i16 %i.ca, %i.cd            ; 3 uses
  %i.cf = and i8 %i.bw, -2
  %.masked = zext i8 %i.cf to i16
  %i.cg = or disjoint i16 %i.bu, %.masked         ; 2 uses
  %i.ch = zext i32 %i.bq to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ch ; 2 uses
  %i.cj = zext i16 %i.cg to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !14
  %i.cm = zext i8 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !14
  %i.cq = zext i8 %i.cp to i32
  %i.cr = or disjoint i32 %i.cn, %i.cq
  %.not = icmp slt i32 %1, %i.cr
  %i.cs = zext i16 %i.cg to i32
  %i.ct = select i1 %.not, i32 0, i32 %i.cs
  %.0123 = add i32 %i.d, 12
  %i.cu = add i32 %.0123, %i.ct                   ; 4 uses
  %.not142152 = icmp eq i16 %i.ce, 0
  br i1 %.not142152, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !14
  %i.cx = zext i8 %i.cw to i16
  %i.cy = shl nuw i16 %i.cx, 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !14
  %i.db = zext i8 %i.da to i16
  %i.dc = or disjoint i16 %i.cy, %i.db            ; 2 uses
  %i.dd = or disjoint i16 %i.ca, %i.cd
  %xtraiter = and i16 %i.cd, 1
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.0127.prol = lshr i16 %i.dc, 1                 ; 2 uses
  %i.de = zext i32 %i.cu to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.de
  %i.dg = and i16 %.0127.prol, 32766              ; 2 uses
  %i.dh = zext nneg i16 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dh ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !14
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !14
  %i.do = zext i8 %i.dn to i32
  %i.dp = or disjoint i32 %i.dl, %i.do
  %i.dq = icmp sgt i32 %1, %i.dp
  %i.dr = zext nneg i16 %i.dg to i32
  %i.ds = select i1 %i.dq, i32 %i.dr, i32 0
  %.2125.prol = add i32 %i.ds, %i.cu              ; 2 uses
  %i.dt = add nsw i16 %i.ce, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.2125.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.2125.prol, %.lr.ph.prol ]
  %.1124155.unr = phi i32 [ %i.cu, %.lr.ph.preheader ], [ %.2125.prol, %.lr.ph.prol ]
  %.0126154.unr = phi i16 [ %i.ce, %.lr.ph.preheader ], [ %i.dt, %.lr.ph.prol ]
  %.0127.in153.unr = phi i16 [ %i.dc, %.lr.ph.preheader ], [ %.0127.prol, %.lr.ph.prol ]
  %i.du = icmp eq i16 %i.dd, 1
  br i1 %i.du, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.1124155 = phi i32 [ %.2125.1, %.lr.ph ], [ %.1124155.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0126154 = phi i16 [ %i.ez, %.lr.ph ], [ %.0126154.unr, %.lr.ph.prol.loopexit ]
  %.0127.in153 = phi i16 [ %.0127.1, %.lr.ph ], [ %.0127.in153.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0127 = lshr i16 %.0127.in153, 1
  %i.dv = zext i32 %.1124155 to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dv
  %i.dx = and i16 %.0127, 32766                   ; 2 uses
  %i.dy = zext nneg i16 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dy ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !14
  %i.eb = zext i8 %i.ea to i32
  %i.ec = shl nuw nsw i32 %i.eb, 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !14
  %i.ef = zext i8 %i.ee to i32
  %i.eg = or disjoint i32 %i.ec, %i.ef
  %i.eh = icmp sgt i32 %1, %i.eg
  %i.ei = zext nneg i16 %i.dx to i32
  %i.ej = select i1 %i.eh, i32 %i.ei, i32 0
  %.2125 = add i32 %i.ej, %.1124155               ; 2 uses
  %.0127.1 = lshr i16 %.0127.in153, 2             ; 2 uses
  %i.ek = zext i32 %.2125 to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ek
  %i.em = and i16 %.0127.1, 16382                 ; 2 uses
  %i.en = zext nneg i16 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.en ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !14
  %i.eq = zext i8 %i.ep to i32
  %i.er = shl nuw nsw i32 %i.eq, 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.et = load i8, ptr %i.es, align 1, !tbaa !14
  %i.eu = zext i8 %i.et to i32
  %i.ev = or disjoint i32 %i.er, %i.eu
  %i.ew = icmp sgt i32 %1, %i.ev
  %i.ex = zext nneg i16 %i.em to i32
  %i.ey = select i1 %i.ew, i32 %i.ex, i32 0
  %.2125.1 = add i32 %i.ey, %.2125                ; 2 uses
  %i.ez = add i16 %.0126154, -2                   ; 2 uses
  %.not142.1 = icmp eq i16 %i.ez, 0
  br i1 %.not142.1, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.h
  %.1124.lcssa = phi i32 [ %i.cu, %bb.h ], [ %.2125.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2125.1, %.lr.ph ]
  %reass.sub = sub i32 %.1124.lcssa, %i.d
  %i.fa = add i32 %reass.sub, 131060
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 14 ; 3 uses
  %i.fc = and i32 %i.bn, 65534
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fg = and i32 %i.fa, 131070
  %i.fh = zext nneg i32 %i.fg to i64              ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fh ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !14
  %i.fk = zext i8 %i.fj to i32
  %i.fl = shl nuw nsw i32 %i.fk, 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !14
  %i.fo = zext i8 %i.fn to i32
  %i.fp = or disjoint i32 %i.fl, %i.fo            ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.fh ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !14
  %i.fs = zext i8 %i.fr to i32
  %i.ft = shl nuw nsw i32 %i.fs, 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !14
  %i.fw = zext i8 %i.fv to i32
  %i.fx = or disjoint i32 %i.ft, %i.fw
  %i.fy = icmp slt i32 %1, %i.fp
  %i.fz = icmp sgt i32 %1, %i.fx
  %or.cond145 = select i1 %i.fy, i1 true, i1 %i.fz
  br i1 %or.cond145, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ga = mul nuw nsw i32 %i.bo, 6
  %i.gb = zext nneg i32 %i.ga to i64              ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fh ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !14
  %i.gg = zext i8 %i.gf to i16
  %i.gh = shl nuw i16 %i.gg, 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !14
  %i.gk = zext i8 %i.gj to i16
  %i.gl = or disjoint i16 %i.gh, %i.gk            ; 2 uses
  %i.gm = icmp eq i16 %i.gl, 0
  br i1 %i.gm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gn = shl nuw nsw i32 %i.bo, 2
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 2
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.fh ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !14
  %i.gt = zext i8 %i.gs to i32
  %i.gu = shl nuw nsw i32 %i.gt, 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 1
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !14
  %i.gx = zext i8 %i.gw to i32
  %i.gy = or disjoint i32 %i.gu, %i.gx
  %i.gz = add nuw nsw i32 %i.gy, %1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ha = zext i16 %i.gl to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ha
  %i.hc = sub nsw i32 %1, %i.fp
  %i.hd = shl nsw i32 %i.hc, 1
  %2 = sext i32 %i.hd to i64
  %i.he = getelementptr inbounds i8, ptr %i.hb, i64 %2
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.e
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.gb
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.fh ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !14
  %i.hk = zext i8 %i.hj to i32
  %i.hl = shl nuw nsw i32 %i.hk, 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !14
  %i.ho = zext i8 %i.hn to i32
  %i.hp = or disjoint i32 %i.hl, %i.ho
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k, %bb.j
  %.2132.shrunk = phi i32 [ %i.hp, %bb.k ], [ %i.gz, %bb.j ], [ 0, %._crit_edge ]
  %.2132 = and i32 %.2132.shrunk, 65535
  br label %.loopexit

bb.m:                                             ; preds = %bb.a
  %i.hq = icmp eq i16 %i.m, 12
  %i.hr = and i16 %i.m, -2
  %or.cond = icmp eq i16 %i.hr, 12
  br i1 %or.cond, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.hs = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ht = load i32, ptr %i.hs, align 1
  %i.hu = tail call i32 @llvm.bswap.i32(i32 %i.ht) ; 2 uses
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %.lr.ph159, label %.loopexit

.lr.ph159:                                        ; preds = %bb.n
  %i.hw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph159, %bb.r
  %.0157 = phi i32 [ %i.hu, %.lr.ph159 ], [ %.2, %bb.r ] ; 2 uses
  %.0120156 = phi i32 [ 0, %.lr.ph159 ], [ %.2122, %bb.r ] ; 3 uses
  %i.hx = sub nsw i32 %.0157, %.0120156
  %i.hy = lshr i32 %i.hx, 1
  %i.hz = add nuw nsw i32 %i.hy, %.0120156        ; 3 uses
  %i.ia = mul nsw i32 %i.hz, 12
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.ib ; 3 uses
  %i.id = load i32, ptr %i.ic, align 1
  %i.ie = tail call i32 @llvm.bswap.i32(i32 %i.id) ; 2 uses
  %i.if = icmp ult i32 %1, %i.ie
  br i1 %i.if, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.ih = load i32, ptr %i.ig, align 1
  %i.ii = tail call i32 @llvm.bswap.i32(i32 %i.ih)
  %i.ij = icmp ugt i32 %1, %i.ii
  br i1 %i.ij, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ik = add nuw nsw i32 %i.hz, 1
  br label %bb.r

.thread:                                          ; preds = %bb.p
  %i.il = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.im = load i32, ptr %i.il, align 1
  %i.in = tail call i32 @llvm.bswap.i32(i32 %i.im)
  %i.io = sub i32 %1, %i.ie
  %i.ip = select i1 %i.hq, i32 %i.io, i32 0
  %.5 = add i32 %i.in, %i.ip
  br label %.loopexit

bb.r:                                             ; preds = %bb.q, %bb.o
  %.2122 = phi i32 [ %.0120156, %bb.o ], [ %i.ik, %bb.q ] ; 2 uses
  %.2 = phi i32 [ %i.hz, %bb.o ], [ %.0157, %bb.q ] ; 2 uses
  %i.iq = icmp slt i32 %.2122, %.2
  br i1 %i.iq, label %bb.o, label %.loopexit, !llvm.loop !40

.loopexit:                                        ; preds = %bb.r, %bb.n, %.thread, %bb.m, %bb.l, %bb.g, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.8 = phi i32 [ 0, %bb.m ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.g ], [ %i.ab, %bb.c ], [ %i.bf, %bb.f ], [ 0, %bb.e ], [ %.2132, %bb.l ], [ %.5, %.thread ], [ 0, %bb.n ], [ 0, %bb.r ]
  ret i32 %.8
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @stbtt_GetCodepointShape(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #10 {
bb.a:
  %3 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %4 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %i.a = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %1) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.c = load i32, ptr %i.b, align 4, !tbaa !41
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @stbtt__GetGlyphShapeTT(ptr noundef nonnull readonly %0, i32 noundef %i.a, ptr noundef %2), !inline_history !42
  br label %stbtt_GetGlyphShape.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store i32 1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.e = call i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %i.a, ptr noundef nonnull %3), !inline_history !42
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !43
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 14
  %i.j = call noalias ptr @malloc(i64 noundef %i.i) #30, !inline_history !42 ; 2 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.j, ptr %i.k, align 8, !tbaa !47
  %i.l = call i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %i.a, ptr noundef nonnull %4), !inline_history !42
  %.not7.i.i = icmp eq i32 %i.l, 0
  br i1 %.not7.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !43
  br label %stbtt__GetGlyphShapeT2.exit.i

bb.f:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %2, align 8, !tbaa !46
  br label %stbtt__GetGlyphShapeT2.exit.i

stbtt__GetGlyphShapeT2.exit.i:                    ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.n, %bb.e ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %stbtt_GetGlyphShape.exit

stbtt_GetGlyphShape.exit:                         ; preds = %bb.b, %stbtt__GetGlyphShapeT2.exit.i
  %.0.i = phi i32 [ %.0.i.i, %stbtt__GetGlyphShapeT2.exit.i ], [ %i.d, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @stbtt_GetGlyphShape(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #10 {
bb.a:
  %3 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %4 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @stbtt__GetGlyphShapeTT(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store i32 1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.d = call i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef nonnull %3)
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !43
  %i.g = sext i32 %i.f to i64
  %i.h = mul nsw i64 %i.g, 14
  %i.i = call noalias ptr @malloc(i64 noundef %i.h) #30 ; 2 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.i, ptr %i.j, align 8, !tbaa !47
  %i.k = call i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef nonnull %4)
  %.not7.i = icmp eq i32 %i.k, 0
  br i1 %.not7.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !43
  br label %stbtt__GetGlyphShapeT2.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %2, align 8, !tbaa !46
  br label %stbtt__GetGlyphShapeT2.exit

stbtt__GetGlyphShapeT2.exit:                      ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.m, %bb.e ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.g

bb.g:                                             ; preds = %stbtt__GetGlyphShapeT2.exit, %bb.b
  %.0 = phi i32 [ %.0.i, %stbtt__GetGlyphShapeT2.exit ], [ %i.c, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbtt_setvertex(ptr nofree noundef writeonly captures(none) initializes((0, 8), (12, 13)) %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %1, ptr %i.a, align 2, !tbaa !48
end_hunk_0
begin_hunk_1_@stbtt__run_charstring:bb.a
  br i1 %.not.i.i325.3, label %bb.eo, label %stbtt__buf_get8.exit.i.3

bb.eo:                                            ; preds = %stbtt__buf_get8.exit.i.2
  %i.abr = add nsw i32 %i.abp, 1
  %i.abs = sext i32 %i.abp to i64
  %i.abt = getelementptr inbounds i8, ptr %i.aj, i64 %i.abs
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !14
  %i.abv = zext i8 %i.abu to i32
  %i.abw = or disjoint i32 %i.abq, %i.abv
  br label %stbtt__buf_get8.exit.i.3

stbtt__buf_get8.exit.i.3:                         ; preds = %bb.eo, %stbtt__buf_get8.exit.i.2
  %i.abx = phi i32 [ %i.abr, %bb.eo ], [ %i.abp, %stbtt__buf_get8.exit.i.2 ]
  %.0.i.i.3 = phi i32 [ %i.abw, %bb.eo ], [ %i.abq, %stbtt__buf_get8.exit.i.2 ]
  store i32 %i.abx, ptr %.sroa.469.0..sroa_idx, align 8
  %i.aby = sitofp i32 %.0.i.i.3 to float
  %i.abz = fmul nnan float %i.aby, f0x37800000
  br label %bb.eq

bb.ep:                                            ; preds = %bb.ej
  %i.aca = icmp slt i32 %i.ai, 0
  %i.acb = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ah)
  %..i.i327 = select i1 %i.aca, i32 %i.ah, i32 %i.acb
  store i32 %..i.i327, ptr %.sroa.469.0..sroa_idx, align 8, !tbaa !8
  %i.acc = call i32 @stbtt__cff_int(ptr noundef nonnull %4)
  %i.acd = trunc i32 %i.acc to i16
  %i.ace = sitofp i16 %i.acd to float
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %stbtt__buf_get8.exit.i.3
  %.2244 = phi float [ %i.abz, %stbtt__buf_get8.exit.i.3 ], [ %i.ace, %bb.ep ]
  %i.acf = icmp sgt i32 %.0253360, 47
  br i1 %i.acf, label %.critedge, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.acg = add nsw i32 %.0253360, 1
  %i.ach = sext i32 %.0253360 to i64
  %i.aci = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ach
  store float %.2244, ptr %i.aci, align 4, !tbaa !74
  br label %.thread

.thread:                                          ; preds = %.lr.ph.split, %.lr.ph.split.us, %.preheader343, %stbtt__csctx_rline_to.exit, %.lr.ph.split.preheader, %.lr.ph.split.us.preheader, %bb.cv, %bb.eh, %bb.ef, %bb.ed, %bb.eb, %bb.ct, %stbtt__csctx_rline_to.exit302, %bb.bh, %bb.bl, %bb.ab, %bb.aq, %bb.k, %bb.i, %bb.g, %bb.e, %bb.d, %bb.er, %bb.dj, %bb.dh
  %.1235342 = phi i32 [ %.0234368, %bb.dj ], [ %.0234368, %bb.er ], [ %.0234368, %bb.dh ], [ %.0234368, %bb.eh ], [ %.0234368, %bb.ef ], [ %.0234368, %bb.ed ], [ %.0234368, %bb.eb ], [ %.0234368, %bb.cv ], [ %.0234368, %bb.ct ], [ %.0234368, %stbtt__csctx_rline_to.exit302 ], [ %.0234368, %.lr.ph.split.us.preheader ], [ %.0234368, %bb.bh ], [ %.0234368, %bb.bl ], [ %.0234368, %bb.ab ], [ %.0234368, %bb.aq ], [ 0, %bb.d ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.g ], [ %.0234368, %bb.e ], [ %.0234368, %.lr.ph.split.preheader ], [ %.0234368, %.preheader343 ], [ %.0234368, %.lr.ph.split.us ], [ %.0234368, %stbtt__csctx_rline_to.exit ], [ %.0234368, %.lr.ph.split ]
  %.2239341 = phi i32 [ %.0237367, %bb.dj ], [ %.0237367, %bb.er ], [ %.0237367, %bb.dh ], [ %.0237367, %bb.eh ], [ %.0237367, %bb.ef ], [ %.0237367, %bb.ed ], [ %.0237367, %bb.eb ], [ %.0237367, %bb.cv ], [ %.0237367, %bb.ct ], [ %.0237367, %stbtt__csctx_rline_to.exit302 ], [ %.0237367, %.lr.ph.split.us.preheader ], [ %.0237367, %bb.bh ], [ %.0237367, %bb.bl ], [ %.0237367, %bb.ab ], [ %.0237367, %bb.aq ], [ %.1238, %bb.d ], [ %.0237367, %bb.k ], [ %.0237367, %bb.i ], [ %.0237367, %bb.g ], [ %i.aw, %bb.e ], [ %.0237367, %.lr.ph.split.preheader ], [ %.0237367, %.preheader343 ], [ %.0237367, %.lr.ph.split.us ], [ %.0237367, %stbtt__csctx_rline_to.exit ], [ %.0237367, %.lr.ph.split ]
  %.1241340 = phi i32 [ %i.st, %bb.dj ], [ %.0240366, %bb.er ], [ %i.ru, %bb.dh ], [ %.0240366, %bb.eh ], [ %.0240366, %bb.ef ], [ %.0240366, %bb.ed ], [ %.0240366, %bb.eb ], [ %.0240366, %bb.cv ], [ %.0240366, %bb.ct ], [ %.0240366, %stbtt__csctx_rline_to.exit302 ], [ %.0240366, %.lr.ph.split.us.preheader ], [ %.0240366, %bb.bh ], [ %.0240366, %bb.bl ], [ %.0240366, %bb.ab ], [ %.0240366, %bb.aq ], [ %.0240366, %bb.d ], [ %.0240366, %bb.k ], [ %.0240366, %bb.i ], [ %.0240366, %bb.g ], [ %.0240366, %bb.e ], [ %.0240366, %.lr.ph.split.preheader ], [ %.0240366, %.preheader343 ], [ %.0240366, %.lr.ph.split.us ], [ %.0240366, %stbtt__csctx_rline_to.exit ], [ %.0240366, %.lr.ph.split ]
  %.sroa.073.3339 = phi ptr [ %.sroa.073.0365, %bb.dj ], [ %.sroa.073.0365, %bb.er ], [ %.sroa.073.2, %bb.dh ], [ %.sroa.073.0365, %bb.eh ], [ %.sroa.073.0365, %bb.ef ], [ %.sroa.073.0365, %bb.ed ], [ %.sroa.073.0365, %bb.eb ], [ %.sroa.073.0365, %bb.cv ], [ %.sroa.073.0365, %bb.ct ], [ %.sroa.073.0365, %stbtt__csctx_rline_to.exit302 ], [ %.sroa.073.0365, %.lr.ph.split.us.preheader ], [ %.sroa.073.0365, %bb.bh ], [ %.sroa.073.0365, %bb.bl ], [ %.sroa.073.0365, %bb.ab ], [ %.sroa.073.0365, %bb.aq ], [ %.sroa.073.0365, %bb.d ], [ %.sroa.073.0365, %bb.k ], [ %.sroa.073.0365, %bb.i ], [ %.sroa.073.0365, %bb.g ], [ %.sroa.073.0365, %bb.e ], [ %.sroa.073.0365, %.lr.ph.split.preheader ], [ %.sroa.073.0365, %.preheader343 ], [ %.sroa.073.0365, %.lr.ph.split.us ], [ %.sroa.073.0365, %stbtt__csctx_rline_to.exit ], [ %.sroa.073.0365, %.lr.ph.split ]
  %.sroa.5.3338 = phi i64 [ %.sroa.5.0364, %bb.dj ], [ %.sroa.5.0364, %bb.er ], [ %.sroa.5.2, %bb.dh ], [ %.sroa.5.0364, %bb.eh ], [ %.sroa.5.0364, %bb.ef ], [ %.sroa.5.0364, %bb.ed ], [ %.sroa.5.0364, %bb.eb ], [ %.sroa.5.0364, %bb.cv ], [ %.sroa.5.0364, %bb.ct ], [ %.sroa.5.0364, %stbtt__csctx_rline_to.exit302 ], [ %.sroa.5.0364, %.lr.ph.split.us.preheader ], [ %.sroa.5.0364, %bb.bh ], [ %.sroa.5.0364, %bb.bl ], [ %.sroa.5.0364, %bb.ab ], [ %.sroa.5.0364, %bb.aq ], [ %.sroa.5.0364, %bb.d ], [ %.sroa.5.0364, %bb.k ], [ %.sroa.5.0364, %bb.i ], [ %.sroa.5.0364, %bb.g ], [ %.sroa.5.0364, %bb.e ], [ %.sroa.5.0364, %.lr.ph.split.preheader ], [ %.sroa.5.0364, %.preheader343 ], [ %.sroa.5.0364, %.lr.ph.split.us ], [ %.sroa.5.0364, %stbtt__csctx_rline_to.exit ], [ %.sroa.5.0364, %.lr.ph.split ]
  %.2248337 = phi i32 [ %.0246363, %bb.dj ], [ %.0246363, %bb.er ], [ %.1247, %bb.dh ], [ %.0246363, %bb.eh ], [ %.0246363, %bb.ef ], [ %.0246363, %bb.ed ], [ %.0246363, %bb.eb ], [ %.0246363, %bb.cv ], [ %.0246363, %bb.ct ], [ %.0246363, %stbtt__csctx_rline_to.exit302 ], [ %.0246363, %.lr.ph.split.us.preheader ], [ %.0246363, %bb.bh ], [ %.0246363, %bb.bl ], [ %.0246363, %bb.ab ], [ %.0246363, %bb.aq ], [ %.0246363, %bb.d ], [ %.0246363, %bb.k ], [ %.0246363, %bb.i ], [ %.0246363, %bb.g ], [ %.0246363, %bb.e ], [ %.0246363, %.lr.ph.split.preheader ], [ %.0246363, %.preheader343 ], [ %.0246363, %.lr.ph.split.us ], [ %.0246363, %stbtt__csctx_rline_to.exit ], [ %.0246363, %.lr.ph.split ]
  %i.acj = phi i32 [ %.0253360, %bb.dj ], [ %i.acg, %bb.er ], [ %i.ro, %bb.dh ], [ 0, %bb.eh ], [ 0, %bb.ef ], [ 0, %bb.ed ], [ 0, %bb.eb ], [ 0, %bb.cv ], [ 0, %bb.ct ], [ 0, %stbtt__csctx_rline_to.exit302 ], [ 0, %.lr.ph.split.us.preheader ], [ 0, %bb.bh ], [ 0, %bb.bl ], [ 0, %bb.ab ], [ 0, %bb.aq ], [ 0, %bb.d ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %.lr.ph.split.preheader ], [ 0, %.preheader343 ], [ 0, %.lr.ph.split.us ], [ 0, %stbtt__csctx_rline_to.exit ], [ 0, %.lr.ph.split ]
  %i.ack = load i32, ptr %.sroa.469.0..sroa_idx, align 8, !tbaa !8 ; 2 uses
  %i.acl = load i32, ptr %i.j, align 4, !tbaa !12 ; 2 uses
  %i.acm = icmp slt i32 %i.ack, %i.acl
  br i1 %i.acm, label %stbtt__buf_get8.exit, label %.critedge, !llvm.loop !87

.critedge:                                        ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.z, %bb.aa, %bb.bf, %bb.bg, %bb.bp, %bb.bq, %._crit_edge355, %bb.cf, %._crit_edge, %bb.cu, %bb.cz, %bb.da, %stbtt__get_subr.exit, %bb.di, %bb.ei, %bb.eq, %.thread, %bb.ec, %bb.ea, %stbtt__buf_get8.exit324, %bb.ee, %bb.eg, %bb.dz, %bb.a, %stbtt__csctx_v.exit.i, %bb.dl
  %.3 = phi i32 [ 1, %bb.dl ], [ 1, %stbtt__csctx_v.exit.i ], [ 0, %bb.a ], [ 0, %bb.dz ], [ 0, %bb.eg ], [ 0, %bb.ee ], [ 0, %stbtt__buf_get8.exit324 ], [ 0, %bb.ea ], [ 0, %bb.ec ], [ 0, %.thread ], [ 0, %bb.eq ], [ 0, %bb.ei ], [ 0, %bb.di ], [ 0, %stbtt__get_subr.exit ], [ 0, %bb.da ], [ 0, %bb.cz ], [ 0, %bb.cu ], [ 0, %._crit_edge ], [ 0, %bb.cf ], [ 0, %._crit_edge355 ], [ 0, %bb.bq ], [ 0, %bb.bp ], [ 0, %bb.bg ], [ 0, %bb.bf ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.3
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define i32 @stbtt__GetGlyphShapeT2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #18 {
bb.a:
  %3 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %4 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store i32 1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.a = call i32 @stbtt__run_charstring(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !43
  %i.d = sext i32 %i.c to i64
  %i.e = mul nsw i64 %i.d, 14
  %i.f = call noalias ptr @malloc(i64 noundef %i.e) #30 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.f, ptr %i.g, align 8, !tbaa !47
  %i.h = call i32 @stbtt__run_charstring(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %.not7 = icmp eq i32 %i.h, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !43
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %2, align 8, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.j, %bb.c ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_GetGlyphHMetrics(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 34
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 35
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m               ; 4 uses
  %i.o = icmp slt i32 %1, %i.n
  %.not31 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %i.o, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not31, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !31
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 %i.r
  %i.t = shl nsw i32 %1, 2
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = zext i8 %i.w to i16
  %i.y = shl nuw i16 %i.x, 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14
  %i.ab = zext i8 %i.aa to i16
  %i.ac = or disjoint i16 %i.y, %i.ab
  %i.ad = sext i16 %i.ac to i32
  store i32 %i.ad, ptr %2, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not32 = icmp eq ptr %3, null
  br i1 %.not32, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !31
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %i.b, i64 %i.ag
  %i.ai = shl nsw i32 %1, 2
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 3
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !31
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.b, i64 %i.ap
  %i.ar = shl nuw nsw i32 %i.n, 2
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %i.aq, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -4
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %i.aw = zext i8 %i.av to i16
  %i.ax = shl nuw i16 %i.aw, 8
  %i.ay = getelementptr i8, ptr %i.at, i64 -3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !14
  %i.ba = zext i8 %i.az to i16
  %i.bb = or disjoint i16 %i.ax, %i.ba
  %i.bc = sext i16 %i.bb to i32
  store i32 %i.bc, ptr %2, align 4, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not30 = icmp eq ptr %3, null
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !31
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.b, i64 %i.bf
  %i.bh = shl nuw nsw i32 %i.n, 2
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  %i.bk = sub nsw i32 %1, %i.n
  %i.bl = shl nsw i32 %i.bk, 1
  %4 = sext i32 %i.bl to i64
  %i.bm = getelementptr inbounds i8, ptr %i.bj, i64 %4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.i
  %.sink40.in = phi ptr [ %i.bn, %bb.i ], [ %i.am, %bb.e ]
  %.sink.in.in.in = phi ptr [ %i.bm, %bb.i ], [ %i.al, %bb.e ]
  %.sink.in.in = load i8, ptr %.sink.in.in.in, align 1, !tbaa !14
  %.sink.in = zext i8 %.sink.in.in to i16
  %.sink = shl nuw i16 %.sink.in, 8
  %.sink40 = load i8, ptr %.sink40.in, align 1, !tbaa !14
  %i.bo = zext i8 %.sink40 to i16
  %i.bp = or disjoint i16 %.sink, %i.bo
  %i.bq = sext i16 %i.bp to i32
  store i32 %i.bq, ptr %3, align 4, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 65536) i32 @stbtt_GetKerningTableLength(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32   ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 6 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !14
  %i.k = or i8 %i.j, %i.h
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  %i.o = zext i8 %i.n to i16
  %i.p = shl nuw i16 %i.o, 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  %i.s = zext i8 %i.r to i16
  %i.t = or disjoint i16 %i.p, %i.s
  %.not6 = icmp eq i16 %i.t, 1
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.v = load i8, ptr %i.u, align 1, !tbaa !14
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.x, %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ab, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483648, 65536) i32 @stbtt_GetKerningTable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32   ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 9 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !14
  %i.k = or i8 %i.j, %i.h
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  %i.o = zext i8 %i.n to i16
  %i.p = shl nuw i16 %i.o, 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  %i.s = zext i8 %i.r to i16
  %i.t = or disjoint i16 %i.p, %i.s
  %.not29 = icmp eq i16 %i.t, 1
  br i1 %.not29, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.v = load i8, ptr %i.u, align 1, !tbaa !14
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.x, %i.aa
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.ab) ; 4 uses
  %i.ac = icmp sgt i32 %spec.select, 0
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.ag = mul nuw nsw i64 %indvars.iv, 6          ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.ak, %i.an
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !88
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %i.at, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !90
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14
  %i.bb = zext i8 %i.ba to i16
  %i.bc = shl nuw i16 %i.bb, 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !14
  %i.bf = zext i8 %i.be to i16
  %i.bg = or disjoint i16 %i.bc, %i.bf
  %i.bh = sext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !92

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.026 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %spec.select, %bb.d ], [ %spec.select, %bb.e ]
  ret i32 %.026
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -32768, 32768) i32 @stbtt__GetGlyphKernInfoAdvance(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32   ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 8 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !14
  %i.k = or i8 %i.j, %i.h
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  %i.o = zext i8 %i.n to i16
  %i.p = shl nuw i16 %i.o, 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  %i.s = zext i8 %i.r to i16
  %i.t = or disjoint i16 %i.p, %i.s
  %.not27 = icmp eq i16 %i.t, 1
  br i1 %.not27, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 10
end_hunk_1
begin_hunk_2_@stbtt__GetGlyphKernInfoAdvance:bb.a
  %.123 = phi i32 [ %.02230, %bb.f ], [ %i.aq, %bb.h ] ; 2 uses
  %.1 = phi i32 [ %i.ao, %bb.f ], [ %.031, %bb.h ] ; 2 uses
  %.not28 = icmp sgt i32 %.123, %.1
  br i1 %.not28, label %.loopexit, label %bb.e, !llvm.loop !93

.loopexit:                                        ; preds = %bb.j, %bb.d, %bb.c, %bb.b, %bb.a, %bb.i
  %.024 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ba, %bb.i ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.j ]
  ret i32 %.024
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -1073741824, 1073741824) i32 @stbtt__GetCoverageIndex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !14
  %i.b = zext i8 %i.a to i16
  %i.c = shl nuw i16 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %i.f = zext i8 %i.e to i16
  %i.g = or disjoint i16 %i.c, %i.f
  switch i16 %i.g, label %.thread74 [
    i16 1, label %bb.b
    i16 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %i.k, %i.n               ; 2 uses
  %.not6988 = icmp eq i32 %i.o, 0
  br i1 %.not6988, label %.thread74, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.b
  %i.p = add nsw i32 %i.o, -1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph91, %bb.g
  %.05990 = phi i32 [ %i.p, %.lr.ph91 ], [ %.261, %bb.g ] ; 2 uses
  %.06289 = phi i32 [ 0, %.lr.ph91 ], [ %.264, %bb.g ] ; 2 uses
  %i.r = add nsw i32 %.05990, %.06289             ; 2 uses
  %i.s = ashr i32 %i.r, 1                         ; 3 uses
  %i.t = and i32 %i.r, -2
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.y, %i.ab             ; 2 uses
  %i.ad = icmp slt i32 %1, %i.ac
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = add nsw i32 %i.s, -1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.af = icmp samesign ugt i32 %1, %i.ac
  br i1 %i.af, label %bb.f, label %.thread74

bb.f:                                             ; preds = %bb.e
  %i.ag = add nsw i32 %i.s, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %.264 = phi i32 [ %i.ag, %bb.f ], [ %.06289, %bb.d ] ; 2 uses
  %.261 = phi i32 [ %.05990, %bb.f ], [ %i.ae, %bb.d ] ; 2 uses
  %.not69 = icmp sgt i32 %.264, %.261
  br i1 %.not69, label %.thread74, label %bb.c, !llvm.loop !94

bb.h:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.ak, %i.an            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not85 = icmp eq i32 %i.ao, 0
  br i1 %.not85, label %.thread74, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.aq = add nsw i32 %i.ao, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.04987 = phi i32 [ %.251, %bb.l ], [ %i.aq, %.lr.ph.preheader ] ; 2 uses
  %.05286 = phi i32 [ %.254, %bb.l ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ar = add nsw i32 %.04987, %.05286
  %i.as = ashr i32 %i.ar, 1                       ; 3 uses
  %i.at = mul nsw i32 %i.as, 6
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.ap, i64 %i.au ; 6 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14
  %i.bb = zext i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.ay, %i.bb            ; 2 uses
  %i.bd = icmp slt i32 %1, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.be = add nsw i32 %i.as, -1
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !14
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !14
  %i.bl = zext i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bi, %i.bl
  %i.bn = icmp samesign ugt i32 %1, %i.bm
  br i1 %i.bn, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bo = add nsw i32 %i.as, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.254 = phi i32 [ %i.bo, %bb.k ], [ %.05286, %bb.i ] ; 2 uses
  %.251 = phi i32 [ %.04987, %bb.k ], [ %i.be, %bb.i ] ; 2 uses
  %.not = icmp sgt i32 %.254, %.251
  br i1 %.not, label %.thread74, label %.lr.ph, !llvm.loop !95

bb.m:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !14
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 5
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !14
  %i.bv = zext i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bs, %i.bv
  %i.bx = sub nsw i32 %1, %i.bc
  %i.by = add nsw i32 %i.bx, %i.bw
  br label %.thread74

.thread74:                                        ; preds = %bb.l, %bb.e, %bb.g, %bb.h, %bb.b, %bb.m, %bb.a
  %.6 = phi i32 [ %i.by, %bb.m ], [ -1, %bb.g ], [ -1, %bb.a ], [ -1, %bb.h ], [ -1, %bb.b ], [ %i.s, %bb.e ], [ -1, %bb.l ]
  ret i32 %.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -1, 65536) i32 @stbtt__GetGlyphClass(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !14
  %i.b = zext i8 %i.a to i16
  %i.c = shl nuw i16 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %i.f = zext i8 %i.e to i16
  %i.g = or disjoint i16 %i.c, %i.f
  switch i16 %i.g, label %.thread [
    i16 1, label %bb.b
    i16 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %i.k, %i.n               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.not49 = icmp slt i32 %1, %i.o
  br i1 %.not49, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.v = load i8, ptr %i.u, align 1, !tbaa !14
  %i.w = zext i8 %i.v to i32
  %i.x = or disjoint i32 %i.t, %i.w
  %i.y = add nuw nsw i32 %i.x, %i.o
  %i.z = icmp samesign ult i32 %1, %i.y
  br i1 %i.z, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.aa = sub nsw i32 %1, %i.o
  %i.ab = shl nsw i32 %i.aa, 1
  %2 = sext i32 %i.ab to i64
  %i.ac = getelementptr inbounds i8, ptr %i.p, i64 %2 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !14
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai
  br label %.thread

bb.e:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14
  %i.aq = zext i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.an, %i.aq            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not59 = icmp eq i32 %i.ar, 0
  br i1 %.not59, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.at = add nsw i32 %i.ar, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.061 = phi i32 [ %.2, %bb.i ], [ %i.at, %.lr.ph.preheader ] ; 2 uses
  %.03760 = phi i32 [ %.239, %bb.i ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.au = add nsw i32 %.061, %.03760
  %i.av = ashr i32 %i.au, 1                       ; 3 uses
  %i.aw = mul nsw i32 %i.av, 6
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.as, i64 %i.ax ; 6 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !14
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !14
  %i.be = zext i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bb, %i.be
  %i.bg = icmp slt i32 %1, %i.bf
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.bh = add nsw i32 %i.av, -1
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !14
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !14
  %i.bo = zext i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bl, %i.bo
  %i.bq = icmp samesign ugt i32 %1, %i.bp
  br i1 %i.bq, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.br = add nsw i32 %i.av, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.239 = phi i32 [ %i.br, %bb.h ], [ %.03760, %bb.f ] ; 2 uses
  %.2 = phi i32 [ %.061, %bb.h ], [ %i.bh, %bb.f ] ; 2 uses
  %.not = icmp sgt i32 %.239, %.2
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !96

bb.j:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !14
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 5
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14
  %i.by = zext i8 %i.bx to i32
  %i.bz = or disjoint i32 %i.bv, %i.by
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.e, %bb.b, %bb.c, %bb.j, %bb.d, %bb.a
  %.4 = phi i32 [ %i.bz, %bb.j ], [ -1, %bb.a ], [ %i.aj, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.i ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -32768, 32768) i32 @stbtt__GetGlyphGPOSInfoAdvance(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread141, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e ; 7 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14
  %i.h = zext i8 %i.g to i16
  %i.i = shl nuw i16 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = zext i8 %i.k to i16
  %i.m = or disjoint i16 %i.i, %i.l
  %.not128 = icmp eq i16 %i.m, 1
  br i1 %.not128, label %bb.c, label %.thread141

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = or i8 %i.q, %i.o
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.d, label %.thread141

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.w
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, %i.ah            ; 2 uses
  %.not170 = icmp eq i32 %i.ai, 0
  br i1 %.not170, label %.thread141, label %.lr.ph168

.lr.ph168:                                        ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %wide.trip.count181 = zext nneg i32 %i.ai to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph168, %.loopexit157
  %indvars.iv178 = phi i64 [ 0, %.lr.ph168 ], [ %indvars.iv.next179, %.loopexit157 ] ; 2 uses
  %i.ak = shl nuw nsw i64 %indvars.iv178, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !14
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ao
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar ; 6 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !14
  %i.av = zext i8 %i.au to i16
  %i.aw = shl nuw i16 %i.av, 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14
  %i.az = zext i8 %i.ay to i16
  %i.ba = or disjoint i16 %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !14
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 8                ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 5
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !14
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = or disjoint i32 %i.be, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  %.not130 = icmp eq i16 %i.ba, 2
  %i.bk = icmp ne i32 %i.bi, 0
  %or.cond169 = select i1 %.not130, i1 %i.bk, i1 false
  br i1 %or.cond169, label %.lr.ph166.preheader, label %.loopexit157

.lr.ph166.preheader:                              ; preds = %bb.e
  %i.bl = or disjoint i32 %i.be, %i.bh
  %wide.trip.count = zext nneg i32 %i.bl to i64
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph166.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.bm = shl nuw nsw i64 %indvars.iv, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !14
  %i.bp = zext i8 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt ; 28 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14
  %i.by = zext i8 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !14
  %i.cc = zext i8 %i.cb to i64
end_hunk_2
begin_hunk_3_@stbtt_GetGlyphKernAdvance:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = zext i8 %i.q to i16
  %i.s = shl nuw i16 %i.r, 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  %i.v = zext i8 %i.u to i16
  %i.w = or disjoint i16 %i.s, %i.v
  %.not27.i = icmp eq i16 %i.w, 1
  br i1 %.not27.i, label %bb.f, label %stbtt__GetGlyphKernInfoAdvance.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 11
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.aa, %i.ad            ; 2 uses
  %i.af = shl i32 %1, 16
  %i.ag = or i32 %i.af, %2                        ; 2 uses
  %.not2829.i = icmp eq i32 %i.ae, 0
  br i1 %.not2829.i, label %stbtt__GetGlyphKernInfoAdvance.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ah = add nsw i32 %i.ae, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 18
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %.lr.ph.i
  %.031.i = phi i32 [ %i.ah, %.lr.ph.i ], [ %.1.i, %bb.l ] ; 2 uses
  %.02230.i = phi i32 [ 0, %.lr.ph.i ], [ %.123.i, %bb.l ] ; 2 uses
  %i.aj = add nsw i32 %.02230.i, %.031.i
  %i.ak = ashr i32 %i.aj, 1                       ; 3 uses
  %i.al = mul nsw i32 %i.ak, 6
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 1
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.ao) ; 2 uses
  %i.aq = icmp ult i32 %i.ag, %i.ap
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = add nsw i32 %i.ak, -1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.as = icmp ugt i32 %i.ag, %i.ap
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = add nsw i32 %i.ak, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.am ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14
  %i.ax = zext i8 %i.aw to i16
  %i.ay = shl nuw i16 %i.ax, 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14
  %i.bb = zext i8 %i.ba to i16
  %i.bc = or disjoint i16 %i.ay, %i.bb
  %i.bd = sext i16 %i.bc to i32
  br label %stbtt__GetGlyphKernInfoAdvance.exit

bb.l:                                             ; preds = %bb.j, %bb.h
  %.123.i = phi i32 [ %.02230.i, %bb.h ], [ %i.at, %bb.j ] ; 2 uses
  %.1.i = phi i32 [ %i.ar, %bb.h ], [ %.031.i, %bb.j ] ; 2 uses
  %.not28.i = icmp sgt i32 %.123.i, %.1.i
  br i1 %.not28.i, label %stbtt__GetGlyphKernInfoAdvance.exit, label %bb.g, !llvm.loop !93

stbtt__GetGlyphKernInfoAdvance.exit:              ; preds = %bb.l, %bb.k, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.d ], [ %i.bd, %bb.k ], [ 0, %bb.e ], [ 0, %bb.l ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -32768, 32768) i32 @stbtt_GetCodepointKernAdvance(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !33
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call i32 @stbtt_FindGlyphIndex(ptr noundef nonnull %0, i32 noundef %1)
  %i.f = tail call i32 @stbtt_FindGlyphIndex(ptr noundef nonnull %0, i32 noundef %2)
  %i.g = tail call i32 @stbtt_GetGlyphKernAdvance(ptr noundef nonnull %0, i32 noundef %i.e, i32 noundef %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_GetCodepointHMetrics(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %1) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 34
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 35
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %i.k, %i.n               ; 4 uses
  %i.p = icmp slt i32 %i.a, %i.o
  %.not31.i = icmp eq ptr %2, null                ; 2 uses
  br i1 %i.p, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !31
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.c, i64 %i.s
  %i.u = shl nsw i32 %i.a, 2
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  %i.y = zext i8 %i.x to i16
  %i.z = shl nuw i16 %i.y, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ac = zext i8 %i.ab to i16
  %i.ad = or disjoint i16 %i.z, %i.ac
  %i.ae = sext i16 %i.ad to i32
  store i32 %i.ae, ptr %2, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not32.i = icmp eq ptr %3, null
  br i1 %.not32.i, label %stbtt_GetGlyphHMetrics.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !31
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.c, i64 %i.ah
  %i.aj = shl nsw i32 %i.a, 2
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.a
  br i1 %.not31.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !31
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.c, i64 %i.aq
  %i.as = shl nuw nsw i32 %i.o, 2
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr i8, ptr %i.ar, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14
  %i.ax = zext i8 %i.aw to i16
  %i.ay = shl nuw i16 %i.ax, 8
  %i.az = getelementptr i8, ptr %i.au, i64 -3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14
  %i.bb = zext i8 %i.ba to i16
  %i.bc = or disjoint i16 %i.ay, %i.bb
  %i.bd = sext i16 %i.bc to i32
  store i32 %i.bd, ptr %2, align 4, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not30.i = icmp eq ptr %3, null
  br i1 %.not30.i, label %stbtt_GetGlyphHMetrics.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !31
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.c, i64 %i.bg
  %i.bi = shl nuw nsw i32 %i.o, 2
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj
  %i.bl = sub nsw i32 %i.a, %i.o
  %i.bm = shl nsw i32 %i.bl, 1
  %4 = sext i32 %i.bm to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bk, i64 %4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.e
  %.sink40.in.i = phi ptr [ %i.bo, %bb.i ], [ %i.an, %bb.e ]
  %.sink.in.in.in.i = phi ptr [ %i.bn, %bb.i ], [ %i.am, %bb.e ]
  %.sink.in.in.i = load i8, ptr %.sink.in.in.in.i, align 1, !tbaa !14
  %.sink.in.i = zext i8 %.sink.in.in.i to i16
  %.sink.i = shl nuw i16 %.sink.in.i, 8
  %.sink40.i = load i8, ptr %.sink40.in.i, align 1, !tbaa !14
  %i.bp = zext i8 %.sink40.i to i16
  %i.bq = or disjoint i16 %.sink.i, %i.bp
  %i.br = sext i16 %i.bq to i32
  store i32 %i.br, ptr %3, align 4, !tbaa !19
  br label %stbtt_GetGlyphHMetrics.exit

stbtt_GetGlyphHMetrics.exit:                      ; preds = %bb.d, %bb.h, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_GetFontVMetrics(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = zext i8 %i.h to i16
  %i.j = shl nuw i16 %i.i, 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i16
  %i.n = or disjoint i16 %i.j, %i.m
  %i.o = sext i16 %i.n to i32
  store i32 %i.o, ptr %1, align 4, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not14 = icmp eq ptr %2, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = zext i8 %i.w to i16
  %i.y = shl nuw i16 %i.x, 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 7
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14
  %i.ab = zext i8 %i.aa to i16
  %i.ac = or disjoint i16 %i.y, %i.ab
  %i.ad = sext i16 %i.ac to i32
  store i32 %i.ad, ptr %2, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not15 = icmp eq ptr %3, null
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !30
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14
  %i.am = zext i8 %i.al to i16
  %i.an = shl nuw i16 %i.am, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 9
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14
  %i.aq = zext i8 %i.ap to i16
  %i.ar = or disjoint i16 %i.an, %i.aq
  %i.as = sext i16 %i.ar to i32
  store i32 %i.as, ptr %3, align 4, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbtt_GetFontVMetricsOS2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m               ; 2 uses
  %i.o = add i32 %i.d, 12
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %stbtt__find_table.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.p = shl i32 %indvars.iv.tr.i, 4
  %i.q = add i32 %i.o, %i.p
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r ; 5 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %i.u = icmp eq i8 %i.t, 79
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = icmp eq i8 %i.w, 83
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = icmp eq i8 %i.z, 47
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = icmp eq i8 %i.ac, 50
  br i1 %i.ad, label %stbtt__find_table.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbtt__find_table.exit.thread, label %bb.b, !llvm.loop !21

stbtt__find_table.exit:                           ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.af = load i32, ptr %i.ae, align 1            ; 2 uses
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af) ; 3 uses
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %stbtt__find_table.exit.thread, label %bb.g

bb.g:                                             ; preds = %stbtt__find_table.exit
  %.not19 = icmp eq ptr %1, null
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 68
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.al = zext i8 %i.ak to i16
  %i.am = shl nuw i16 %i.al, 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 69
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14
  %i.ap = zext i8 %i.ao to i16
  %i.aq = or disjoint i16 %i.am, %i.ap
  %i.ar = sext i16 %i.aq to i32
  store i32 %i.ar, ptr %1, align 4, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not20 = icmp eq ptr %2, null
  br i1 %.not20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = sext i32 %i.ag to i64
  %i.at = getelementptr inbounds i8, ptr %i.b, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 70
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %i.aw = zext i8 %i.av to i16
  %i.ax = shl nuw i16 %i.aw, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 71
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !14
  %i.ba = zext i8 %i.az to i16
  %i.bb = or disjoint i16 %i.ax, %i.ba
  %i.bc = sext i16 %i.bb to i32
  store i32 %i.bc, ptr %2, align 4, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
end_hunk_3
begin_hunk_4_@cos
; Function Attrs: nounwind uwtable
define noalias noundef ptr @stbtt_GetGlyphSDF(ptr nofree noundef readonly captures(none) %0, float noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, float noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #25 {
bb.a:
  %10 = alloca %struct.stbtt__csctx, align 8      ; 6 uses
  %11 = alloca %struct.stbtt__csctx, align 8      ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = fcmp oeq float %1, 0.000000e+00
  br i1 %i.f, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 0, ptr %i.b, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.g = call i32 @stbtt_GetGlyphBox(ptr noundef readonly %0, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %stbtt_GetGlyphBitmapBoxSubpixel.exit.thread, label %stbtt_GetGlyphBitmapBoxSubpixel.exit

stbtt_GetGlyphBitmapBoxSubpixel.exit.thread:      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.bc

stbtt_GetGlyphBitmapBoxSubpixel.exit:             ; preds = %bb.b
  %i.h = load i32, ptr %i.a, align 4, !tbaa !19
  %i.i = load i32, ptr %i.d, align 4, !tbaa !19
  %i.j = sub nsw i32 0, %i.i
  %i.k = load i32, ptr %i.c, align 4, !tbaa !19
  %i.l = load i32, ptr %i.b, align 4, !tbaa !19
  %i.m = sub nsw i32 0, %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.n = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.o = insertelement <2 x i32> %i.n, i32 %i.h, i64 1
  %i.p = sitofp <2 x i32> %i.o to <2 x float>
  %i.q = insertelement <2 x float> poison, float %1, i64 0 ; 2 uses
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.r, <2 x float> zeroinitializer)
  %i.t = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.s)
  %i.u = fptosi <2 x float> %i.t to <2 x i32>     ; 3 uses
  %i.v = insertelement <2 x i32> poison, i32 %i.m, i64 0
  %i.w = insertelement <2 x i32> %i.v, i32 %i.k, i64 1
  %i.x = sitofp <2 x i32> %i.w to <2 x float>
  %i.y = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.r, <2 x float> zeroinitializer)
  %i.z = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.y)
  %i.aa = fptosi <2 x float> %i.z to <2 x i32>    ; 3 uses
  %i.ab = icmp eq <2 x i32> %i.u, %i.aa           ; 2 uses
  %i.ac = extractelement <2 x i1> %i.ab, i64 0
  %i.ad = extractelement <2 x i1> %i.ab, i64 1
  %or.cond508 = select i1 %i.ad, i1 true, i1 %i.ac
  br i1 %or.cond508, label %bb.bc, label %bb.c

bb.c:                                             ; preds = %stbtt_GetGlyphBitmapBoxSubpixel.exit
  %i.ae = extractelement <2 x i32> %i.u, i64 1
  %i.af = sub i32 %i.ae, %3                       ; 6 uses
  %i.ag = extractelement <2 x i32> %i.u, i64 0
  %i.ah = sub nsw i32 %i.ag, %3                   ; 7 uses
  %i.ai = extractelement <2 x i32> %i.aa, i64 1
  %i.aj = add nsw i32 %3, %i.ai                   ; 3 uses
  %i.ak = extractelement <2 x i32> %i.aa, i64 0
  %i.al = add nsw i32 %3, %i.ak                   ; 4 uses
  %i.am = sub nsw i32 %i.aj, %i.af                ; 4 uses
  %i.an = sub nsw i32 %i.al, %i.ah                ; 2 uses
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.am, ptr %6, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not467 = icmp eq ptr %7, null
  br i1 %.not467, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.an, ptr %7, align 4, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not468 = icmp eq ptr %8, null
  br i1 %.not468, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.af, ptr %8, align 4, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not469 = icmp eq ptr %9, null
  br i1 %.not469, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.ah, ptr %9, align 4, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = fneg float %1                           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !41
  %.not.i482 = icmp eq i32 %i.aq, 0
  br i1 %.not.i482, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = call i32 @stbtt__GetGlyphShapeTT(ptr noundef nonnull readonly %0, i32 noundef %2, ptr noundef nonnull %i.e), !inline_history !42
  %.pre.pre.pre = load ptr, ptr %i.e, align 8
  br label %stbtt_GetGlyphShape.exit

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 56, i1 false)
  store i32 1, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, i8 0, i64 56, i1 false)
  %i.as = call i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %2, ptr noundef nonnull %10), !inline_history !42
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !43
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %i.av, 14
  %i.ax = call noalias ptr @malloc(i64 noundef %i.aw) #30, !inline_history !42 ; 3 uses
  store ptr %i.ax, ptr %i.e, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !47
  %i.az = call i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %2, ptr noundef nonnull %11), !inline_history !42
  %.not7.i.i = icmp eq i32 %i.az, 0
  br i1 %.not7.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !43
  br label %stbtt__GetGlyphShapeT2.exit.i

bb.p:                                             ; preds = %bb.n, %bb.m
  store ptr null, ptr %i.e, align 8, !tbaa !46
  br label %stbtt__GetGlyphShapeT2.exit.i

stbtt__GetGlyphShapeT2.exit.i:                    ; preds = %bb.p, %bb.o
  %.pre.pre540 = phi ptr [ %i.ax, %bb.o ], [ null, %bb.p ]
  %.0.i.i = phi i32 [ %i.bb, %bb.o ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %stbtt_GetGlyphShape.exit

stbtt_GetGlyphShape.exit:                         ; preds = %bb.l, %stbtt__GetGlyphShapeT2.exit.i
  %.pre.pre = phi ptr [ %.pre.pre540, %stbtt__GetGlyphShapeT2.exit.i ], [ %.pre.pre.pre, %bb.l ] ; 7 uses
  %.0.i = phi i32 [ %.0.i.i, %stbtt__GetGlyphShapeT2.exit.i ], [ %i.ar, %bb.l ]
  %.0.i.fr = freeze i32 %.0.i                     ; 7 uses
  %i.bc = mul nsw i32 %i.an, %i.am
  %i.bd = sext i32 %i.bc to i64
  %i.be = call noalias ptr @malloc(i64 noundef %i.bd) #30 ; 3 uses
  %i.bf = sext i32 %.0.i.fr to i64
  %i.bg = shl nsw i64 %i.bf, 2
  %i.bh = call noalias ptr @malloc(i64 noundef %i.bg) #30 ; 4 uses
  %i.bi = icmp sgt i32 %.0.i.fr, 0                ; 2 uses
  br i1 %i.bi, label %.lr.ph, label %.preheader514

.lr.ph:                                           ; preds = %stbtt_GetGlyphShape.exit
  %i.bj = add nsw i32 %.0.i.fr, -1
  %wide.trip.count = zext nneg i32 %.0.i.fr to i64
  %i.bk = zext nneg i32 %i.bj to i64
  br label %bb.at

.preheader514:                                    ; preds = %bb.ax, %stbtt_GetGlyphShape.exit
  %i.bl = icmp slt i32 %i.ah, %i.al
  br i1 %i.bl, label %.preheader.lr.ph, label %._crit_edge.split

.preheader.lr.ph:                                 ; preds = %.preheader514
  %i.bm = icmp slt i32 %i.af, %i.aj
  %i.bn = uitofp i8 %4 to float                   ; 2 uses
  br i1 %i.bm, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.bo = sext i32 %i.af to i64                   ; 2 uses
  %i.bp = sext i32 %i.aj to i64                   ; 2 uses
  br i1 %i.bi, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %wide.trip.count534 = zext nneg i32 %.0.i.fr to i64
  %i.bq = insertelement <2 x float> %i.q, float %i.ao, i64 1 ; 3 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge522.split.us.us
  %.0435523.us = phi i32 [ %i.nb, %._crit_edge522.split.us.us ], [ %i.ah, %.preheader.us.preheader ] ; 3 uses
  %i.br = sitofp i32 %.0435523.us to float
  %i.bs = fadd float %i.br, 5.000000e-01          ; 8 uses
  %i.bt = fdiv float %i.bs, %i.ao
  %i.bu = sub nsw i32 %.0435523.us, %i.ah
  %i.bv = mul nsw i32 %i.bu, %i.am
  %i.bw = sub i32 %i.bv, %i.af
  br label %.lr.ph519.us.us

.lr.ph519.us.us:                                  ; preds = %bb.as, %.preheader.us
  %indvars.iv536 = phi i64 [ %indvars.iv.next537, %bb.as ], [ %i.bo, %.preheader.us ] ; 2 uses
  %i.bx = trunc nsw i64 %indvars.iv536 to i32     ; 2 uses
  %i.by = sitofp i32 %i.bx to float
  %i.bz = fadd float %i.by, 5.000000e-01          ; 8 uses
  %i.ca = fdiv float %i.bz, %1
  %i.cb = call i32 @stbtt__compute_crossings_x(float noundef %i.ca, float noundef %i.bt, i32 noundef %.0.i.fr, ptr noundef %.pre.pre)
  br label %bb.q

bb.q:                                             ; preds = %.thread.us.us, %.lr.ph519.us.us
  %indvars.iv531 = phi i64 [ %indvars.iv.next532, %.thread.us.us ], [ 0, %.lr.ph519.us.us ] ; 4 uses
  %.0428518.us.us = phi float [ %.9.us.us, %.thread.us.us ], [ 9.999990e+05, %.lr.ph519.us.us ] ; 10 uses
  %i.cc = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %indvars.iv531 ; 5 uses
  %i.cd = load <2 x i16>, ptr %i.cc, align 2, !tbaa !59
  %i.ce = sitofp <2 x i16> %i.cd to <2 x float>
  %i.cf = fmul <2 x float> %i.bq, %i.ce           ; 10 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !48
  switch i8 %i.ch, label %.thread.us.us [
    i8 2, label %bb.an
    i8 3, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr i8, ptr %i.cc, i64 -14
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ck = load <2 x i16>, ptr %i.ci, align 2, !tbaa !59
  %i.cl = sitofp <2 x i16> %i.ck to <2 x float>
  %i.cm = fmul <2 x float> %i.bq, %i.cl           ; 4 uses
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.co = load <2 x i16>, ptr %i.cj, align 2, !tbaa !59
  %i.cp = sitofp <2 x i16> %i.co to <2 x float>
  %i.cq = fmul <2 x float> %i.bq, %i.cp           ; 6 uses
  %i.cr = fcmp olt <2 x float> %i.cf, %i.cq
  %i.cs = shufflevector <2 x i1> %i.cr, <2 x i1> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.ct = shufflevector <2 x float> %i.cq, <2 x float> %i.cf, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.cu = shufflevector <2 x float> %i.cf, <2 x float> %i.cq, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.cv = select <4 x i1> %i.cs, <4 x float> %i.ct, <4 x float> %i.cu ; 3 uses
  %i.cw = fcmp olt <4 x float> %i.cv, %i.cn
  %i.cx = shufflevector <4 x float> %i.cn, <4 x float> %i.cv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cy = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cz = shufflevector <4 x float> %i.cv, <4 x float> %i.cy, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %i.da = select <4 x i1> %i.cw, <4 x float> %i.cx, <4 x float> %i.cz ; 2 uses
  %i.db = insertelement <4 x float> poison, float %.0428518.us.us, i64 0
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dd = fsub <4 x float> %i.da, %i.dc           ; 2 uses
  %i.de = fadd <4 x float> %i.da, %i.dc           ; 2 uses
  %i.df = extractelement <4 x float> %i.dd, i64 3
  %i.dg = fcmp ogt float %i.bz, %i.df
  %i.dh = extractelement <4 x float> %i.de, i64 1
  %i.di = fcmp olt float %i.bz, %i.dh
  %or.cond477.us.us = select i1 %i.dg, i1 %i.di, i1 false
  %i.dj = extractelement <4 x float> %i.dd, i64 2
  %i.dk = fcmp ogt float %i.bs, %i.dj
  %or.cond479.us.us = select i1 %or.cond477.us.us, i1 %i.dk, i1 false
  %i.dl = extractelement <4 x float> %i.de, i64 0
  %i.dm = fcmp olt float %i.bs, %i.dl
  %or.cond481.us.us = select i1 %or.cond479.us.us, i1 %i.dm, i1 false
  br i1 %or.cond481.us.us, label %bb.s, label %.thread.us.us

bb.s:                                             ; preds = %bb.r
  %i.dn = extractelement <2 x float> %i.cf, i64 0 ; 5 uses
  %i.do = extractelement <2 x float> %i.cq, i64 0 ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.cq, %i.cf ; 2 uses
  %i.dp = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.dq = extractelement <2 x float> %i.cf, i64 1 ; 6 uses
  %i.dr = extractelement <2 x float> %i.cq, i64 1 ; 5 uses
  %i.ds = fsub float %i.dr, %i.dq                 ; 7 uses
  %i.dt = call float @llvm.fmuladd.f32(float %i.do, float -2.000000e+00, float %i.dn)
  %i.du = extractelement <2 x float> %i.cm, i64 0 ; 4 uses
  %i.dv = fadd float %i.du, %i.dt                 ; 3 uses
  %i.dw = call float @llvm.fmuladd.f32(float %i.dr, float -2.000000e+00, float %i.dq)
  %i.dx = extractelement <2 x float> %i.cm, i64 1 ; 4 uses
  %i.dy = fadd float %i.dx, %i.dw                 ; 3 uses
  %i.dz = fsub float %i.dn, %i.bz                 ; 6 uses
  %i.ea = fsub float %i.dq, %i.bs                 ; 6 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv531
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !74 ; 4 uses
  %i.ed = fcmp oeq float %i.ec, 0.000000e+00
  %i.ee = fmul float %i.ds, %i.dy
  %i.ef = call float @llvm.fmuladd.f32(float %i.dp, float %i.dv, float %i.ee)
  %i.eg = fmul float %i.ef, 3.000000e+00          ; 4 uses
  br i1 %i.ed, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eh = fmul float %i.eg, %i.ec                 ; 5 uses
  %i.ei = fmul float %i.ds, %i.ds
  %i.ej = call float @llvm.fmuladd.f32(float %i.dp, float %i.dp, float %i.ei)
  %i.ek = fmul float %i.ea, %i.dy
  %i.el = call float @llvm.fmuladd.f32(float %i.dz, float %i.dv, float %i.ek)
  %i.em = call float @llvm.fmuladd.f32(float %i.ej, float 2.000000e+00, float %i.el)
  %i.en = fmul float %i.em, %i.ec                 ; 2 uses
  %i.eo = fdiv float %i.eh, -3.000000e+00         ; 4 uses
  %i.ep = fmul float %i.eh, %i.eh
  %i.eq = fdiv float %i.ep, 3.000000e+00
  %i.er = fsub float %i.en, %i.eq                 ; 4 uses
  %i.es = fmul float %i.eh, 2.000000e+00
  %i.et = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.en, i64 1
  %i.ev = insertelement <2 x float> <float poison, float -9.000000e+00>, float %i.ds, i64 0
  %i.ew = fmul <2 x float> %i.eu, %i.ev
  %i.ex = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %i.es, i64 1
  %i.ez = insertelement <2 x float> %foldExtExtBinop, float %i.eh, i64 1 ; 2 uses
  %i.fa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.ez, <2 x float> %i.ew)
  %i.fb = insertelement <2 x float> %i.ez, float %i.ec, i64 0
  %i.fc = fmul <2 x float> %i.fa, %i.fb           ; 2 uses
  %i.fd = extractelement <2 x float> %i.fc, i64 1
  %i.fe = fdiv float %i.fd, 2.700000e+01
  %i.ff = extractelement <2 x float> %i.fc, i64 0
  %i.fg = fadd float %i.ff, %i.fe                 ; 5 uses
  %i.fh = fmul float %i.er, %i.er
  %i.fi = fmul float %i.er, %i.fh                 ; 2 uses
  %i.fj = fmul float %i.fi, 4.000000e+00
  %i.fk = fdiv float %i.fj, 2.700000e+01
  %i.fl = call float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.fk) ; 2 uses
  %i.fm = fcmp ult float %i.fl, 0.000000e+00
  br i1 %i.fm, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %sqrtf47.i.us.us = call float @sqrtf(float noundef %i.fl) #29 ; 2 uses
  %i.fn = fneg float %i.fg
  %i.fo = fsub float %sqrtf47.i.us.us, %i.fg
  %i.fp = fmul float %i.fo, 5.000000e-01          ; 3 uses
  %i.fq = fsub float %i.fn, %sqrtf47.i.us.us
  %i.fr = fmul float %i.fq, 5.000000e-01          ; 3 uses
  %i.fs = fcmp olt float %i.fp, 0.000000e+00
  br i1 %i.fs, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ft = fpext float %i.fp to double
  %i.fu = call double @pow(double noundef %i.ft, double noundef f0x3FD5555560000000) #29
  %i.fv = fptrunc double %i.fu to float
  br label %stbtt__cuberoot.exit.i.us.us

bb.w:                                             ; preds = %bb.u
  %i.fw = fneg float %i.fp
  %i.fx = fpext float %i.fw to double
  %i.fy = call double @pow(double noundef %i.fx, double noundef f0x3FD5555560000000) #29
  %i.fz = fptrunc double %i.fy to float
  %i.ga = fneg float %i.fz
  br label %stbtt__cuberoot.exit.i.us.us

stbtt__cuberoot.exit.i.us.us:                     ; preds = %bb.w, %bb.v
  %.0.i.i483.us.us = phi float [ %i.ga, %bb.w ], [ %i.fv, %bb.v ]
  %i.gb = fcmp olt float %i.fr, 0.000000e+00
  br i1 %i.gb, label %bb.y, label %bb.x

bb.x:                                             ; preds = %stbtt__cuberoot.exit.i.us.us
  %i.gc = fpext float %i.fr to double
  %i.gd = call double @pow(double noundef %i.gc, double noundef f0x3FD5555560000000) #29
  %i.ge = fptrunc double %i.gd to float
  br label %stbtt__cuberoot.exit49.i.us.us

bb.y:                                             ; preds = %stbtt__cuberoot.exit.i.us.us
  %i.gf = fneg float %i.fr
  %i.gg = fpext float %i.gf to double
  %i.gh = call double @pow(double noundef %i.gg, double noundef f0x3FD5555560000000) #29
  %i.gi = fptrunc double %i.gh to float
  %i.gj = fneg float %i.gi
  br label %stbtt__cuberoot.exit49.i.us.us

stbtt__cuberoot.exit49.i.us.us:                   ; preds = %bb.y, %bb.x
  %.0.i48.i.us.us = phi float [ %i.gj, %bb.y ], [ %i.ge, %bb.x ]
  %i.gk = fadd float %i.eo, %.0.i.i483.us.us
  %i.gl = fadd float %i.gk, %.0.i48.i.us.us
  br label %stbtt__solve_cubic.exit.us.us

bb.z:                                             ; preds = %bb.t
  %i.gm = fdiv float %i.er, -3.000000e+00
  %sqrtf.i.us.us = call float @sqrtf(float noundef %i.gm) #29 ; 2 uses
  %i.gn = fdiv float -2.700000e+01, %i.fi
  %i.go = fpext float %i.gn to double
  %i.gp = call double @sqrt(double noundef %i.go) #29
  %i.gq = fneg double %i.gp
  %i.gr = fpext float %i.fg to double
  %i.gs = fmul double %i.gr, %i.gq
  %i.gt = fmul double %i.gs, 5.000000e-01
  %i.gu = call double @acos(double noundef %i.gt) #29
  %i.gv = fptrunc double %i.gu to float
  %i.gw = fdiv float %i.gv, 3.000000e+00
  %i.gx = fpext float %i.gw to double             ; 2 uses
  %i.gy = call double @cos(double noundef %i.gx) #29
  %i.gz = fptrunc double %i.gy to float           ; 3 uses
  %i.ha = fadd double %i.gx, f0xBFF921FAFC8B007A
  %i.hb = call double @cos(double noundef %i.ha) #29
  %i.hc = fptrunc double %i.hb to float
  %i.hd = fmul float %i.hc, f0x3FDDB3D7           ; 2 uses
  %i.he = fmul float %sqrtf.i.us.us, 2.000000e+00
  %i.hf = call float @llvm.fmuladd.f32(float %i.he, float %i.gz, float %i.eo)
  %i.hg = fadd float %i.hd, %i.gz
  %i.hh = fneg float %sqrtf.i.us.us               ; 2 uses
  %i.hi = call float @llvm.fmuladd.f32(float %i.hh, float %i.hg, float %i.eo)
  %i.hj = fsub float %i.gz, %i.hd
  %i.hk = call float @llvm.fmuladd.f32(float %i.hh, float %i.hj, float %i.eo)
  br label %stbtt__solve_cubic.exit.us.us

end_hunk_4
begin_hunk_5_@stbtt_GetGlyphSDF:bb.a
  %or.cond19.us.us = select i1 %i.iq, i1 %i.kl, i1 false
  br i1 %or.cond19.us.us, label %bb.al, label %.thread.us.us

bb.al:                                            ; preds = %bb.ak
  %i.km = fsub float 1.000000e+00, %.sroa.11.0.us.us ; 3 uses
  %i.kn = fmul float %i.km, %i.km                 ; 2 uses
  %i.ko = fmul nnan float %.sroa.11.0.us.us, 2.000000e+00
  %i.kp = fmul float %i.ko, %i.km                 ; 2 uses
  %i.kq = fmul float %i.do, %i.kp
  %i.kr = call float @llvm.fmuladd.f32(float %i.kn, float %i.dn, float %i.kq)
  %i.ks = fmul nnan float %.sroa.11.0.us.us, %.sroa.11.0.us.us ; 2 uses
  %i.kt = call float @llvm.fmuladd.f32(float %i.ks, float %i.du, float %i.kr)
  %i.ku = fmul float %i.dr, %i.kp
  %i.kv = call float @llvm.fmuladd.f32(float %i.kn, float %i.dq, float %i.ku)
  %i.kw = call float @llvm.fmuladd.f32(float %i.ks, float %i.dx, float %i.kv)
  %i.kx = fsub float %i.kt, %i.bz                 ; 2 uses
  %i.ky = fsub float %i.kw, %i.bs                 ; 2 uses
  %i.kz = fmul float %i.ky, %i.ky
  %i.la = call float @llvm.fmuladd.f32(float %i.kx, float %i.kx, float %i.kz) ; 2 uses
  %i.lb = fmul float %.6.us.us, %.6.us.us
  %i.lc = fcmp olt float %i.la, %i.lb
  br i1 %i.lc, label %bb.am, label %.thread.us.us

bb.am:                                            ; preds = %bb.al
  %sqrt513.us.us = call float @llvm.sqrt.f32(float %i.la)
  br label %.thread.us.us

bb.an:                                            ; preds = %bb.q
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv531
  %i.le = load float, ptr %i.ld, align 4, !tbaa !74 ; 2 uses
  %i.lf = fcmp une float %i.le, 0.000000e+00
  br i1 %i.lf, label %bb.ao, label %.thread.us.us

bb.ao:                                            ; preds = %bb.an
  %i.lg = getelementptr i8, ptr %i.cc, i64 -14
  %i.lh = load <2 x i16>, ptr %i.lg, align 2, !tbaa !59
  %i.li = sitofp <2 x i16> %i.lh to <2 x float>   ; 2 uses
  %i.lj = extractelement <2 x float> %i.li, i64 0
  %i.lk = fmul float %1, %i.lj
  %i.ll = extractelement <2 x float> %i.li, i64 1
  %i.lm = fmul float %i.ll, %i.ao
  %i.ln = fmul float %.0428518.us.us, %.0428518.us.us
  %i.lo = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lp = insertelement <2 x float> %i.lo, float %i.lm, i64 1
  %i.lq = insertelement <2 x float> %i.cf, float %i.bs, i64 0
  %i.lr = fsub <2 x float> %i.lp, %i.lq           ; 5 uses
  %i.ls = insertelement <2 x float> %i.cf, float %i.lk, i64 1
  %i.lt = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lu = insertelement <2 x float> %i.lt, float %i.bz, i64 0
  %i.lv = fsub <2 x float> %i.ls, %i.lu           ; 5 uses
  %i.lw = fneg <2 x float> %i.lv
  %i.lx = shufflevector <2 x float> %i.lr, <2 x float> %i.lw, <2 x i32> <i32 0, i32 2>
  %i.ly = fmul <2 x float> %i.lr, %i.lx
  %i.lz = shufflevector <2 x float> %i.lv, <2 x float> %i.lr, <2 x i32> <i32 0, i32 2>
  %i.ma = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lv, <2 x float> %i.lz, <2 x float> %i.ly) ; 2 uses
  %i.mb = extractelement <2 x float> %i.ma, i64 0 ; 2 uses
  %i.mc = fcmp olt float %i.mb, %i.ln
  %sqrt509.us.us = call float @llvm.sqrt.f32(float %i.mb)
  %.1429.us.us = select i1 %i.mc, float %sqrt509.us.us, float %.0428518.us.us ; 3 uses
  %i.md = extractelement <2 x float> %i.ma, i64 1
  %i.me = call float @llvm.fabs.f32(float %i.md)
  %i.mf = fmul float %i.le, %i.me                 ; 2 uses
  %i.mg = fcmp olt float %i.mf, %.1429.us.us
  br i1 %i.mg, label %bb.ap, label %.thread.us.us

bb.ap:                                            ; preds = %bb.ao
  %i.mh = shufflevector <2 x float> %i.lr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mi = fmul <2 x float> %i.mh, %i.lr
  %i.mj = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mj, <2 x float> %i.lv, <2 x float> %i.mi) ; 2 uses
  %i.ml = extractelement <2 x float> %i.mk, i64 0
  %i.mm = fneg float %i.ml
  %i.mn = extractelement <2 x float> %i.mk, i64 1
  %i.mo = fdiv float %i.mm, %i.mn                 ; 2 uses
  %i.mp = fcmp oge float %i.mo, 0.000000e+00
  %i.mq = fcmp ole float %i.mo, 1.000000e+00
  %or.cond.us.us = and i1 %i.mp, %i.mq
  %.2430.us.us = select i1 %or.cond.us.us, float %i.mf, float %.1429.us.us
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.r, %bb.q
  %.9.us.us = phi float [ %.0428518.us.us, %bb.q ], [ %.1429.us.us, %bb.ao ], [ %.2430.us.us, %bb.ap ], [ %.6.us.us, %bb.ak ], [ %.0428518.us.us, %bb.r ], [ %sqrt513.us.us, %bb.am ], [ %.6.us.us, %bb.al ], [ %.0428518.us.us, %bb.an ] ; 3 uses
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1 ; 2 uses
  %exitcond535.not = icmp eq i64 %indvars.iv.next532, %wide.trip.count534
  br i1 %exitcond535.not, label %._crit_edge.us.us, label %bb.q, !llvm.loop !240

bb.aq:                                            ; preds = %._crit_edge.us.us
  %i.mr = fcmp ogt float %i.mz, 2.550000e+02
  br i1 %i.mr, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge.us.us, %bb.ar, %bb.aq
  %.0431.us.us = phi float [ %i.mz, %bb.aq ], [ 2.550000e+02, %bb.ar ], [ 0.000000e+00, %._crit_edge.us.us ]
  %i.ms = fptoui float %.0431.us.us to i8
  %i.mt = add i32 %i.bw, %i.bx
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds i8, ptr %i.be, i64 %i.mu
  store i8 %i.ms, ptr %i.mv, align 1, !tbaa !14
  %indvars.iv.next537 = add nsw i64 %indvars.iv536, 1 ; 2 uses
  %i.mw = icmp slt i64 %indvars.iv.next537, %i.bp
  br i1 %i.mw, label %.lr.ph519.us.us, label %._crit_edge522.split.us.us, !llvm.loop !241

._crit_edge.us.us:                                ; preds = %.thread.us.us
  %i.mx = icmp eq i32 %i.cb, 0
  %i.my = fneg float %.9.us.us
  %.10.us.us = select i1 %i.mx, float %i.my, float %.9.us.us
  %i.mz = call float @llvm.fmuladd.f32(float %5, float %.10.us.us, float %i.bn) ; 3 uses
  %i.na = fcmp olt float %i.mz, 0.000000e+00
  br i1 %i.na, label %bb.as, label %bb.aq

._crit_edge522.split.us.us:                       ; preds = %bb.as
  %i.nb = add nsw i32 %.0435523.us, 1             ; 2 uses
  %i.nc = icmp slt i32 %i.nb, %i.al
  br i1 %i.nc, label %.preheader.us, label %._crit_edge.split, !llvm.loop !242

bb.at:                                            ; preds = %.lr.ph, %bb.ax
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ax ] ; 4 uses
  %.0432516 = phi i64 [ %i.bk, %.lr.ph ], [ %indvars.iv, %bb.ax ] ; 2 uses
  %i.nd = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %indvars.iv ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 12
  %i.nf = load i8, ptr %i.ne, align 2, !tbaa !48
  switch i8 %i.nf, label %bb.ax [
    i8 2, label %bb.au
    i8 3, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  %i.ng = load i16, ptr %i.nd, align 2, !tbaa !51
  %i.nh = sitofp i16 %i.ng to float
  %i.ni = fmul float %1, %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nd, i64 2
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !52
  %i.nl = sitofp i16 %i.nk to float
  %i.nm = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %.0432516 ; 2 uses
  %i.nn = load i16, ptr %i.nm, align 2, !tbaa !51
  %i.no = sitofp i16 %i.nn to float
  %i.np = fmul float %1, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nm, i64 2
  %i.nr = load i16, ptr %i.nq, align 2, !tbaa !52
  %i.ns = sitofp i16 %i.nr to float
  %i.nt = fsub float %i.np, %i.ni                 ; 2 uses
  %i.nu = fmul float %1, %i.nl
  %i.nv = fmul float %1, %i.ns
  %i.nw = fsub float %i.nu, %i.nv                 ; 2 uses
  %i.nx = fmul float %i.nw, %i.nw
  %i.ny = call float @llvm.fmuladd.f32(float %i.nt, float %i.nt, float %i.nx)
  %sqrt = call float @llvm.sqrt.f32(float %i.ny)  ; 2 uses
  %i.nz = fcmp olt float %sqrt, f0x3A800000
  %i.oa = fdiv float 1.000000e+00, %sqrt
  %i.ob = select i1 %i.nz, float 0.000000e+00, float %i.oa
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.oc = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %.0432516 ; 2 uses
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !51
  %i.oe = sitofp i16 %i.od to float
  %i.of = fmul float %1, %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 2
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !52
  %i.oi = sitofp i16 %i.oh to float
  %i.oj = load <4 x i16>, ptr %i.nd, align 2, !tbaa !59
  %i.ok = sitofp <4 x i16> %i.oj to <4 x float>   ; 4 uses
  %i.ol = extractelement <4 x float> %i.ok, i64 2
  %i.om = fmul float %1, %i.ol
  %i.on = extractelement <4 x float> %i.ok, i64 3
  %i.oo = fmul float %i.on, %i.ao
  %i.op = extractelement <4 x float> %i.ok, i64 0
  %i.oq = fmul float %1, %i.op
  %i.or = extractelement <4 x float> %i.ok, i64 1
  %i.os = fmul float %i.or, %i.ao
  %i.ot = call float @llvm.fmuladd.f32(float %i.om, float -2.000000e+00, float %i.oq)
  %i.ou = fadd float %i.of, %i.ot                 ; 2 uses
  %i.ov = call float @llvm.fmuladd.f32(float %i.oo, float -2.000000e+00, float %i.os)
  %i.ow = fmul float %1, %i.oi
  %i.ox = fsub float %i.ov, %i.ow                 ; 2 uses
  %i.oy = fmul float %i.ox, %i.ox
  %i.oz = call float @llvm.fmuladd.f32(float %i.ou, float %i.ou, float %i.oy) ; 2 uses
  %i.pa = fcmp ult float %i.oz, f0x35800000
  br i1 %i.pa, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pb = fdiv float 1.000000e+00, %i.oz
  br label %bb.ax

bb.ax:                                            ; preds = %bb.at, %bb.av, %bb.aw, %bb.au
  %.sink = phi float [ %i.pb, %bb.aw ], [ 0.000000e+00, %bb.av ], [ %i.ob, %bb.au ], [ 0.000000e+00, %bb.at ]
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv
  store float %.sink, ptr %i.pc, align 4, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader514, label %bb.at, !llvm.loop !243

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge522.split
  %.0435523 = phi i32 [ %i.px, %._crit_edge522.split ], [ %i.ah, %.preheader.lr.ph.split ] ; 3 uses
  %i.pd = sitofp i32 %.0435523 to float
  %i.pe = fadd float %i.pd, 5.000000e-01
  %i.pf = fdiv float %i.pe, %i.ao
  %i.pg = sub nsw i32 %.0435523, %i.ah
  %i.ph = mul nsw i32 %i.pg, %i.am
  %i.pi = sub i32 %i.ph, %i.af
  br label %bb.ay

bb.ay:                                            ; preds = %.preheader, %bb.bb
  %indvars.iv528 = phi i64 [ %i.bo, %.preheader ], [ %indvars.iv.next529, %bb.bb ] ; 2 uses
  %i.pj = trunc nsw i64 %indvars.iv528 to i32     ; 2 uses
  %i.pk = sitofp i32 %i.pj to float
  %i.pl = fadd float %i.pk, 5.000000e-01
  %i.pm = fdiv float %i.pl, %1
  %i.pn = call i32 @stbtt__compute_crossings_x(float noundef %i.pm, float noundef %i.pf, i32 noundef %.0.i.fr, ptr noundef %.pre.pre)
  %i.po = icmp eq i32 %i.pn, 0
  %.10 = select i1 %i.po, float -9.999990e+05, float 9.999990e+05
  %i.pp = call float @llvm.fmuladd.f32(float %5, float %.10, float %i.bn) ; 3 uses
  %i.pq = fcmp olt float %i.pp, 0.000000e+00
  br i1 %i.pq, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pr = fcmp ogt float %i.pp, 2.550000e+02
  br i1 %i.pr, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ay, %bb.az, %bb.ba
  %.0431 = phi float [ %i.pp, %bb.az ], [ 2.550000e+02, %bb.ba ], [ 0.000000e+00, %bb.ay ]
  %i.ps = fptoui float %.0431 to i8
  %i.pt = add i32 %i.pi, %i.pj
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds i8, ptr %i.be, i64 %i.pu
  store i8 %i.ps, ptr %i.pv, align 1, !tbaa !14
  %indvars.iv.next529 = add nsw i64 %indvars.iv528, 1 ; 2 uses
  %i.pw = icmp slt i64 %indvars.iv.next529, %i.bp
  br i1 %i.pw, label %bb.ay, label %._crit_edge522.split, !llvm.loop !241

._crit_edge522.split:                             ; preds = %bb.bb
  %i.px = add nsw i32 %.0435523, 1                ; 2 uses
  %i.py = icmp slt i32 %i.px, %i.al
  br i1 %i.py, label %.preheader, label %._crit_edge.split, !llvm.loop !242

._crit_edge.split:                                ; preds = %._crit_edge522.split, %._crit_edge522.split.us.us, %.preheader.lr.ph, %.preheader514
  call void @free(ptr noundef %i.bh) #29
  call void @free(ptr noundef %.pre.pre) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  br label %bb.bc

bb.bc:                                            ; preds = %stbtt_GetGlyphBitmapBoxSubpixel.exit.thread, %stbtt_GetGlyphBitmapBoxSubpixel.exit, %bb.a, %._crit_edge.split
  %.0 = phi ptr [ %i.be, %._crit_edge.split ], [ null, %bb.a ], [ null, %stbtt_GetGlyphBitmapBoxSubpixel.exit.thread ], [ null, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @stbtt_GetCodepointSDF(ptr nofree noundef readonly captures(none) %0, float noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, float noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #25 {
bb.a:
  %i.a = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %2)
  %i.b = tail call ptr @stbtt_GetGlyphSDF(ptr noundef %0, float noundef %1, i32 noundef %i.a, i32 noundef %3, i8 noundef zeroext %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @stbtt_FreeSDF(ptr noundef captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #19 {
bb.a:
  tail call void @free(ptr noundef %0) #29
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -2147483647, -2147483648) i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %.not97 = icmp eq i32 %3, 0
  br i1 %.not97, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.s
  %.064100 = phi i32 [ %.2, %bb.s ], [ 0, %bb.a ] ; 12 uses
  %.06699 = phi i32 [ %i.ck, %bb.s ], [ %3, %bb.a ] ; 4 uses
  %.07098 = phi ptr [ %i.cj, %bb.s ], [ %2, %bb.a ] ; 7 uses
  %i.a = load i8, ptr %.07098, align 1, !tbaa !14 ; 3 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %.07098, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = or disjoint i32 %i.c, %i.f               ; 5 uses
  %i.h = icmp samesign ult i32 %i.g, 128
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %.not93 = icmp slt i32 %.064100, %1
  br i1 %.not93, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %.064100, 1
  %i.j = sext i32 %.064100 to i64
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i32
  %.not94 = icmp eq i32 %i.g, %i.m
  br i1 %.not94, label %bb.s, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.n = icmp ult i8 %i.a, 8
  br i1 %i.n, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %.064100, 1                  ; 2 uses
  %.not90 = icmp slt i32 %i.o, %1
  br i1 %.not90, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.p = sext i32 %.064100 to i64
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  %i.s = zext i8 %i.r to i32
  %i.t = lshr i32 %i.g, 6
  %i.u = or disjoint i32 %i.t, 192
  %.not91 = icmp eq i32 %i.u, %i.s
  br i1 %.not91, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %.064100, 2
  %i.w = sext i32 %i.o to i64
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
  %i.z = zext i8 %i.y to i32
  %i.aa = and i32 %i.f, 63
  %i.ab = or disjoint i32 %i.aa, 128
  %.not92 = icmp eq i32 %i.ab, %i.z
  br i1 %.not92, label %bb.s, label %.critedge

bb.h:                                             ; preds = %bb.d
  %i.ac = and i8 %i.a, -4                         ; 2 uses
  %or.cond = icmp eq i8 %i.ac, -40
  br i1 %or.cond, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.07098, i64 2 ; 2 uses
  %i.ae = add nsw i32 %.064100, 3                 ; 2 uses
  %.not85 = icmp slt i32 %i.ae, %1
  br i1 %.not85, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.07098, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !14
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = zext i8 %i.ag to i32                    ; 2 uses
  %i.al = or disjoint i32 %i.aj, %i.ak
  %i.am = shl nuw nsw i32 %i.g, 10
  %i.an = add nsw i32 %i.am, -56613888
  %i.ao = add nuw nsw i32 %i.an, %i.al            ; 3 uses
  %i.ap = sext i32 %.064100 to i64
  %i.aq = getelementptr i8, ptr %0, i64 %i.ap     ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.as = zext i8 %i.ar to i32
  %i.at = lshr i32 %i.ao, 18
  %i.au = add nuw nsw i32 %i.at, 240
  %.not86 = icmp eq i32 %i.au, %i.as
  br i1 %.not86, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr i8, ptr %i.aq, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14
  %i.ax = zext i8 %i.aw to i32
  %i.ay = lshr i32 %i.ao, 12
  %i.az = and i32 %i.ay, 63
  %i.ba = or disjoint i32 %i.az, 128
  %.not87 = icmp eq i32 %i.ba, %i.ax
  br i1 %.not87, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr i8, ptr %i.aq, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !14
  %i.bd = zext i8 %i.bc to i32
  %i.be = lshr i32 %i.ao, 6
  %i.bf = and i32 %i.be, 63
  %i.bg = or disjoint i32 %i.bf, 128
  %.not88 = icmp eq i32 %i.bg, %i.bd
  br i1 %.not88, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bh = sext i32 %i.ae to i64
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !14
  %i.bk = zext i8 %i.bj to i32
  %i.bl = and i32 %i.ak, 63
  %i.bm = or disjoint i32 %i.bl, 128
  %.not89 = icmp eq i32 %i.bm, %i.bk
  br i1 %.not89, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.bn = add nsw i32 %.064100, 4
  %i.bo = add nsw i32 %.06699, -2
  br label %bb.s

bb.o:                                             ; preds = %bb.h
  %or.cond6 = icmp ne i8 %i.ac, -36
  %i.bp = add nsw i32 %.064100, 2                 ; 2 uses
  %.not81 = icmp slt i32 %i.bp, %1
  %or.cond96 = select i1 %or.cond6, i1 %.not81, i1 false
  br i1 %or.cond96, label %bb.p, label %.critedge
end_hunk_5
