Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/i_skey?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @IDEA_set_encrypt_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 216)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !11
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 8                  ; 2 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.a, align 1, !tbaa !11
  %i.g = zext i8 %i.f to i32
  %i.h = or disjoint i32 %i.d, %i.g
  store i32 %i.h, ptr %1, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.j = load i8, ptr %i.e, align 1, !tbaa !11
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 8                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i8, ptr %i.i, align 1, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.070 = getelementptr i8, ptr %1, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.070.1 = getelementptr i8, ptr %1, i64 64
  %i.ak = getelementptr i8, ptr %1, i64 72
  %i.al = getelementptr i8, ptr %1, i64 80
  %i.am = getelementptr i8, ptr %1, i64 88
  %.070.2 = getelementptr i8, ptr %1, i64 96
  %i.an = getelementptr i8, ptr %1, i64 104
  %i.ao = getelementptr i8, ptr %1, i64 112
  %i.ap = getelementptr i8, ptr %1, i64 120
  %.070.3 = getelementptr i8, ptr %1, i64 128
  %i.aq = getelementptr i8, ptr %1, i64 136
  %i.ar = getelementptr i8, ptr %1, i64 144
  %i.as = getelementptr i8, ptr %1, i64 152
  %.070.4 = getelementptr i8, ptr %1, i64 160
  %i.at = zext i8 %i.o to i32                     ; 2 uses
  %i.au = or disjoint i32 %i.l, %i.at             ; 2 uses
  store i32 %i.au, ptr %i.m, align 4, !tbaa !10
  %i.av = load i8, ptr %i.n, align 1, !tbaa !11
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 8                ; 2 uses
  store i32 %i.ax, ptr %i.q, align 4, !tbaa !10
  %i.ay = load i8, ptr %i.p, align 1, !tbaa !11
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = or disjoint i32 %i.ax, %i.az            ; 2 uses
  store i32 %i.ba, ptr %i.q, align 4, !tbaa !10
  %i.bb = load i8, ptr %i.r, align 1, !tbaa !11
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 8                ; 2 uses
  store i32 %i.bd, ptr %i.t, align 4, !tbaa !10
  %i.be = load i8, ptr %i.s, align 1, !tbaa !11
  %2 = load i32, ptr %1, align 4, !tbaa !10       ; 2 uses
  %3 = lshr i32 %2, 7
  %i.bf = insertelement <2 x i32> poison, i32 %i.at, i64 0
  %i.bg = insertelement <2 x i32> %i.bf, i32 %i.az, i64 1
  %i.bh = shl nuw nsw <2 x i32> %i.bg, splat (i32 9)
  %i.bi = insertelement <2 x i32> poison, i32 %i.ba, i64 0
  %i.bj = and <2 x i32> %i.bh, splat (i32 65024)
  %i.bk = zext i8 %i.be to i32                    ; 2 uses
  %i.bl = or disjoint i32 %i.bd, %i.bk            ; 2 uses
  store i32 %i.bl, ptr %i.t, align 4, !tbaa !10
  %i.bm = load i8, ptr %i.u, align 1, !tbaa !11
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 8                ; 2 uses
  store i32 %i.bo, ptr %i.w, align 4, !tbaa !10
  %i.bp = load i8, ptr %i.v, align 1, !tbaa !11
  %i.bq = zext i8 %i.bp to i32                    ; 2 uses
  %i.br = or disjoint i32 %i.bo, %i.bq            ; 2 uses
  store i32 %i.br, ptr %i.w, align 4, !tbaa !10
  %i.bs = load i8, ptr %i.x, align 1, !tbaa !11
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 8                ; 2 uses
  store i32 %i.bu, ptr %i.z, align 4, !tbaa !10
  %i.bv = load i8, ptr %i.y, align 1, !tbaa !11
  %i.bw = insertelement <2 x i32> %i.bi, i32 %i.bl, i64 1
  %i.bx = lshr <2 x i32> %i.bw, splat (i32 7)     ; 2 uses
  %i.by = or disjoint <2 x i32> %i.bx, %i.bj      ; 2 uses
  %i.bz = insertelement <2 x i32> poison, i32 %i.bk, i64 0
  %i.ca = insertelement <2 x i32> %i.bz, i32 %i.bq, i64 1
  %i.cb = shl nuw nsw <2 x i32> %i.ca, splat (i32 9)
  %i.cc = insertelement <2 x i32> poison, i32 %i.br, i64 0
  %i.cd = and <2 x i32> %i.cb, splat (i32 65024)
  %i.ce = zext i8 %i.bv to i32                    ; 2 uses
  %i.cf = or disjoint i32 %i.bu, %i.ce            ; 2 uses
  store i32 %i.cf, ptr %i.z, align 4, !tbaa !10
  %i.cg = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 8                ; 2 uses
  store i32 %i.ci, ptr %i.ac, align 4, !tbaa !10
  %i.cj = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  %i.cl = or disjoint i32 %i.ci, %i.ck            ; 2 uses
  store i32 %i.cl, ptr %i.ac, align 4, !tbaa !10
  %i.cm = load i8, ptr %i.ad, align 1, !tbaa !11
  %i.cn = zext i8 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 8                ; 2 uses
  store i32 %i.co, ptr %i.af, align 4, !tbaa !10
  %i.cp = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = or disjoint i32 %i.co, %i.cq            ; 2 uses
  store i32 %i.cr, ptr %i.af, align 4, !tbaa !10
  %4 = shl nuw nsw i32 %i.cq, 9
  %5 = or i32 %3, %4
  store <2 x i32> %i.by, ptr %.070, align 4, !tbaa !10
  %i.cs = insertelement <2 x i32> %i.cc, i32 %i.cf, i64 1
  %i.ct = lshr <2 x i32> %i.cs, splat (i32 7)     ; 2 uses
  %i.cu = or disjoint <2 x i32> %i.ct, %i.cd      ; 2 uses
  store <2 x i32> %i.cu, ptr %i.ag, align 4, !tbaa !10
  %i.cv = insertelement <2 x i32> poison, i32 %i.ce, i64 0
  %i.cw = insertelement <2 x i32> %i.cv, i32 %i.ck, i64 1
  %i.cx = shl nuw nsw <2 x i32> %i.cw, splat (i32 9)
  %i.cy = insertelement <2 x i32> poison, i32 %i.cl, i64 0
  %i.cz = insertelement <2 x i32> %i.cy, i32 %i.cr, i64 1
  %i.da = lshr <2 x i32> %i.cz, splat (i32 7)     ; 2 uses
  %i.db = and <2 x i32> %i.cx, splat (i32 65024)
  %i.dc = or disjoint <2 x i32> %i.da, %i.db      ; 2 uses
  store <2 x i32> %i.dc, ptr %i.ah, align 4, !tbaa !10
  %i.dd = and i32 %5, 65535                       ; 2 uses
  store i32 %i.dd, ptr %i.ai, align 4, !tbaa !10
  %i.de = shl i32 %2, 9
  %i.df = lshr i32 %i.au, 7                       ; 2 uses
  %.masked77 = and i32 %i.de, 65024
  %i.dg = or disjoint i32 %.masked77, %i.df       ; 2 uses
  store i32 %i.dg, ptr %i.aj, align 4, !tbaa !10
  %i.dh = insertelement <8 x i32> poison, i32 %i.dd, i64 0 ; 2 uses
  %i.di = insertelement <8 x i32> %i.dh, i32 %i.df, i64 1
  %i.dj = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dk = shufflevector <8 x i32> %i.di, <8 x i32> %i.dj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dl = shufflevector <2 x i32> %i.ct, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dm = shufflevector <8 x i32> %i.dk, <8 x i32> %i.dl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.dn = shufflevector <2 x i32> %i.da, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.do = shufflevector <8 x i32> %i.dm, <8 x i32> %i.dn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.dp = shl nuw nsw <8 x i32> %i.do, splat (i32 9)
  %i.dq = insertelement <8 x i32> %i.dh, i32 %i.dg, i64 1
  %i.dr = shufflevector <2 x i32> %i.by, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ds = shufflevector <8 x i32> %i.dq, <8 x i32> %i.dr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dt = shufflevector <2 x i32> %i.cu, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.du = shufflevector <8 x i32> %i.ds, <8 x i32> %i.dt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.dv = shufflevector <2 x i32> %i.dc, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dw = shufflevector <8 x i32> %i.du, <8 x i32> %i.dv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.dx = lshr <8 x i32> %i.dw, splat (i32 7)     ; 2 uses
  %i.dy = and <8 x i32> %i.dp, splat (i32 65024)
  %i.dz = shufflevector <8 x i32> %i.dx, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0>
  %i.ea = or <8 x i32> %i.dy, %i.dz               ; 5 uses
  %i.eb = shufflevector <8 x i32> %i.ea, <8 x i32> poison, <2 x i32> <i32 3, i32 4>
  store <2 x i32> %i.eb, ptr %.070.1, align 4, !tbaa !10
  %i.ec = shufflevector <8 x i32> %i.ea, <8 x i32> poison, <2 x i32> <i32 5, i32 6>
  store <2 x i32> %i.ec, ptr %i.ak, align 4, !tbaa !10
  %i.ed = shufflevector <8 x i32> %i.ea, <8 x i32> poison, <2 x i32> <i32 7, i32 0>
  store <2 x i32> %i.ed, ptr %i.al, align 4, !tbaa !10
  %i.ee = shufflevector <8 x i32> %i.ea, <8 x i32> poison, <2 x i32> <i32 1, i32 2>
  store <2 x i32> %i.ee, ptr %i.am, align 4, !tbaa !10
  %i.ef = shl nuw nsw <8 x i32> %i.dx, splat (i32 9)
  %i.eg = lshr <8 x i32> %i.ea, splat (i32 7)     ; 2 uses
  %i.eh = and <8 x i32> %i.ef, splat (i32 65024)
  %i.ei = or <8 x i32> %i.eh, %i.eg               ; 5 uses
  %i.ej = shufflevector <8 x i32> %i.ei, <8 x i32> poison, <2 x i32> <i32 5, i32 6>
  store <2 x i32> %i.ej, ptr %.070.2, align 4, !tbaa !10
  %i.ek = shufflevector <8 x i32> %i.ei, <8 x i32> poison, <2 x i32> <i32 7, i32 0>
  store <2 x i32> %i.ek, ptr %i.an, align 4, !tbaa !10
  %i.el = shufflevector <8 x i32> %i.ei, <8 x i32> poison, <2 x i32> <i32 1, i32 2>
  store <2 x i32> %i.el, ptr %i.ao, align 4, !tbaa !10
  %i.em = shufflevector <8 x i32> %i.ei, <8 x i32> poison, <2 x i32> <i32 3, i32 4>
  store <2 x i32> %i.em, ptr %i.ap, align 4, !tbaa !10
  %i.en = shl nuw nsw <8 x i32> %i.eg, splat (i32 9)
  %i.eo = lshr <8 x i32> %i.ei, splat (i32 7)     ; 2 uses
  %i.ep = and <8 x i32> %i.en, splat (i32 65024)
  %i.eq = shufflevector <8 x i32> %i.eo, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0>
  %i.er = or <8 x i32> %i.ep, %i.eq               ; 6 uses
  %i.es = shufflevector <8 x i32> %i.er, <8 x i32> poison, <2 x i32> <i32 6, i32 7>
  store <2 x i32> %i.es, ptr %.070.3, align 4, !tbaa !10
  %i.et = shufflevector <8 x i32> %i.er, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %i.et, ptr %i.aq, align 4, !tbaa !10
  %i.eu = shufflevector <8 x i32> %i.er, <8 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %i.eu, ptr %i.ar, align 4, !tbaa !10
  %i.ev = shufflevector <8 x i32> %i.er, <8 x i32> poison, <2 x i32> <i32 4, i32 5>
  store <2 x i32> %i.ev, ptr %i.as, align 4, !tbaa !10
  %i.ew = shl nuw nsw <8 x i32> %i.eo, splat (i32 9)
  %i.ex = lshr <8 x i32> %i.er, splat (i32 7)     ; 3 uses
  %i.ey = and <8 x i32> %i.ew, splat (i32 65024)
  %i.ez = or <8 x i32> %i.ey, %i.ex               ; 4 uses
  store <8 x i32> %i.ez, ptr %.070.4, align 4, !tbaa !10
  %.070.5 = getelementptr i8, ptr %1, i64 192
  %i.fa = getelementptr i8, ptr %1, i64 200
  %i.fb = shufflevector <8 x i32> %i.er, <8 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.fc = shl nuw nsw <2 x i32> %i.fb, splat (i32 2)
  %i.fd = shufflevector <8 x i32> %i.ez, <8 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.fe = lshr <2 x i32> %i.fd, splat (i32 7)
  %i.ff = and <2 x i32> %i.fc, splat (i32 65024)
  %i.fg = or <2 x i32> %i.fe, %i.ff
  store <2 x i32> %i.fg, ptr %.070.5, align 4, !tbaa !10
  %i.fh = getelementptr i8, ptr %1, i64 208
  %i.fi = shufflevector <8 x i32> %i.ex, <8 x i32> poison, <2 x i32> <i32 3, i32 4>
  %i.fj = shl nuw nsw <2 x i32> %i.fi, splat (i32 9)
  %i.fk = shufflevector <8 x i32> %i.ez, <8 x i32> poison, <2 x i32> <i32 4, i32 5>
  %i.fl = lshr <2 x i32> %i.fk, splat (i32 7)
  %i.fm = and <2 x i32> %i.fj, splat (i32 65024)
  %i.fn = or <2 x i32> %i.fl, %i.fm
  store <2 x i32> %i.fn, ptr %i.fa, align 4, !tbaa !10
  %i.fo = shufflevector <8 x i32> %i.ex, <8 x i32> poison, <2 x i32> <i32 5, i32 6>
  %i.fp = shl nuw nsw <2 x i32> %i.fo, splat (i32 9)
  %i.fq = shufflevector <8 x i32> %i.ez, <8 x i32> poison, <2 x i32> <i32 6, i32 7>
  %i.fr = lshr <2 x i32> %i.fq, splat (i32 7)
  %i.fs = and <2 x i32> %i.fp, splat (i32 65024)
  %i.ft = or <2 x i32> %i.fr, %i.fs
  store <2 x i32> %i.ft, ptr %i.fh, align 4, !tbaa !10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @IDEA_set_decrypt_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %.029 = phi i32 [ 0, %bb.a ], [ %i.ba, %bb.e ]  ; 2 uses
  %.028 = phi ptr [ %i.a, %bb.a ], [ %i.at, %bb.e ] ; 7 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %i.az, %bb.e ]   ; 7 uses
  %i.b = load i32, ptr %.028, align 4, !tbaa !10  ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %inverse.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = urem i32 65537, %i.b                     ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %inverse.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %.zext.i = zext nneg i32 %i.d to i64
  %i.f = zext i32 %i.b to i64
  br label %.lr.ph.i

.thread.i:                                        ; preds = %.lr.ph.i
  %i.g = icmp slt i64 %i.n, 0
  %i.h = add nsw i64 %i.n, 65537
  %spec.select.i = select i1 %i.g, i64 %i.h, i64 %i.n
  %i.i = trunc i64 %spec.select.i to i32
  br label %inverse.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.j = phi i64 [ %i.o, %.lr.ph.i ], [ %.zext.i, %.lr.ph.i.preheader ] ; 3 uses
  %.034.i = phi i64 [ %i.n, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.01933.i = phi i64 [ %.034.i, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %.02132.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %.02331.i = phi i64 [ %.02132.i, %.lr.ph.i ], [ 65537, %.lr.ph.i.preheader ]
  %i.k = sub nuw nsw i64 %.02331.i, %i.j
  %i.l = udiv i64 %i.k, %.02132.i
  %i.m = mul nsw i64 %i.l, %.034.i
  %.fr38.i = freeze i64 %i.m
  %i.n = sub i64 %.01933.i, %.fr38.i              ; 4 uses
  %i.o = urem i64 %.02132.i, %i.j                 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.thread.i, label %.lr.ph.i, !llvm.loop !12

inverse.exit:                                     ; preds = %bb.c, %.thread.i, %bb.b
  %.2.i = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ %i.i, %.thread.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %.2.i, ptr %.0, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !10
  %i.t = sub i32 0, %i.s
  %i.u = and i32 %i.t, 65535
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i32 %i.u, ptr %i.q, align 4, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %.028, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !10
  %i.y = sub i32 0, %i.x
  %i.z = and i32 %i.y, 65535
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 12
  store i32 %i.z, ptr %i.v, align 4, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %.028, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !10 ; 3 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %inverse.exit41, label %bb.d

bb.d:                                             ; preds = %inverse.exit
  %i.ae = urem i32 65537, %i.ac                   ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %inverse.exit41, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %bb.d
  %.zext.i30 = zext nneg i32 %i.ae to i64
  %i.ag = zext i32 %i.ac to i64
  br label %.lr.ph.i31

.thread.i37:                                      ; preds = %.lr.ph.i31
  %i.ah = icmp slt i64 %i.ao, 0
  %i.ai = add nsw i64 %i.ao, 65537
  %spec.select.i38 = select i1 %i.ah, i64 %i.ai, i64 %i.ao
  %i.aj = trunc i64 %spec.select.i38 to i32
  br label %inverse.exit41

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.preheader, %.lr.ph.i31
  %i.ak = phi i64 [ %i.ap, %.lr.ph.i31 ], [ %.zext.i30, %.lr.ph.i31.preheader ] ; 3 uses
  %.034.i32 = phi i64 [ %i.ao, %.lr.ph.i31 ], [ 1, %.lr.ph.i31.preheader ] ; 2 uses
  %.01933.i33 = phi i64 [ %.034.i32, %.lr.ph.i31 ], [ 0, %.lr.ph.i31.preheader ]
  %.02132.i34 = phi i64 [ %i.ak, %.lr.ph.i31 ], [ %i.ag, %.lr.ph.i31.preheader ] ; 3 uses
  %.02331.i35 = phi i64 [ %.02132.i34, %.lr.ph.i31 ], [ 65537, %.lr.ph.i31.preheader ]
  %i.al = sub nuw nsw i64 %.02331.i35, %i.ak
  %i.am = udiv i64 %i.al, %.02132.i34
  %i.an = mul nsw i64 %i.am, %.034.i32
  %.fr38.i36 = freeze i64 %i.an
  %i.ao = sub i64 %.01933.i33, %.fr38.i36         ; 4 uses
  %i.ap = urem i64 %.02132.i34, %i.ak             ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.thread.i37, label %.lr.ph.i31, !llvm.loop !12

inverse.exit41:                                   ; preds = %bb.d, %.thread.i37, %inverse.exit
  %.2.i40 = phi i32 [ 0, %inverse.exit ], [ 1, %bb.d ], [ %i.aj, %.thread.i37 ]
  store i32 %.2.i40, ptr %i.aa, align 4, !tbaa !10
  %i.ar = icmp eq i32 %.029, 8
  br i1 %i.ar, label %bb.f, label %bb.e

bb.e:                                             ; preds = %inverse.exit41
  %i.as = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.at = getelementptr inbounds i8, ptr %.028, i64 -24
end_hunk_0
