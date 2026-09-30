Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/meshletutils?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@meshopt_optimizeMeshletLevel:bb.a
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %i.ai = sub i8 %.0241310, %i.ah
  %i.aj = zext i8 %i.ac to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13
  %i.am = sub i8 %.0241310, %i.al
  %i.an = zext i8 %i.ae to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = sub i8 %.0241310, %i.ap
  %i.ar = icmp ult i8 %i.ai, 3
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp ult i8 %i.am, 3
  %i.au = zext i1 %i.at to i32
  %i.av = add nuw nsw i32 %i.au, %i.as
  %i.aw = icmp ult i8 %i.aq, 3
  %i.ax = zext i1 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.av, %i.ax            ; 3 uses
  %i.az = icmp sgt i32 %i.ay, %.0261306.us
  %i.ba = trunc i64 %.0257308.us to i32
  %i.bb = select i1 %i.az, i32 %i.ba, i32 %.0264305.us ; 2 uses
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 %.0261306.us)
  %i.bd = icmp samesign ult i32 %i.ay, 2
  %i.be = add nuw i64 %.0257308.us, 1             ; 2 uses
  %i.bf = icmp ult i64 %i.be, %3
  %or.cond331 = and i1 %i.bd, %i.bf
  br i1 %or.cond331, label %.preheader302.split.us, label %.split.us, !llvm.loop !28

._crit_edge:                                      ; preds = %.split.us
  %i.bg = icmp sgt i32 %4, 0
  br i1 %i.bg, label %.lr.ph323.preheader, label %.lr.ph327.preheader

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  br label %._crit_edge328

.preheader302.split:                              ; preds = %.preheader302, %.preheader302.split
  %.0257308 = phi i64 [ %i.dg, %.preheader302.split ], [ %.0254309, %.preheader302 ] ; 3 uses
  %.0258307 = phi i32 [ %.2260, %.preheader302.split ], [ 0, %.preheader302 ] ; 2 uses
  %.0261306 = phi i32 [ %i.dd, %.preheader302.split ], [ -1, %.preheader302 ] ; 2 uses
  %.0264305 = phi i32 [ %i.dc, %.preheader302.split ], [ -1, %.preheader302 ]
  %i.bh = mul i64 %.0257308, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 %i.bh ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bk = getelementptr i8, ptr %i.bi, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13
  %i.bm = getelementptr i8, ptr %i.bi, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = zext i8 %i.bj to i64                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !13
  %i.br = sub i8 %.0241310, %i.bq                 ; 2 uses
  %i.bs = zext i8 %i.bl to i64                    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13
  %i.bv = sub i8 %.0241310, %i.bu                 ; 2 uses
  %i.bw = zext i8 %i.bn to i64                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13
  %i.bz = sub i8 %.0241310, %i.by                 ; 2 uses
  %i.ca = icmp ult i8 %i.br, 3
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp ult i8 %i.bv, 3
  %i.cd = zext i1 %i.cc to i32
  %i.ce = add nuw nsw i32 %i.cd, %i.cb
  %i.cf = icmp ult i8 %i.bz, 3
  %i.cg = zext i1 %i.cf to i32
  %i.ch = add nuw nsw i32 %i.ce, %i.cg            ; 2 uses
  %i.ci = zext i8 %i.bz to i32
  %i.cj = zext i8 %i.bv to i32
  %i.ck = zext i8 %i.br to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bo
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bs
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13
  %. = tail call i8 @llvm.umin.i8(i8 %i.cm, i8 %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bw
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %.in = tail call i8 @llvm.umin.i8(i8 %i.cq, i8 %.)
  %i.cr = xor i32 %i.ck, 1023
  %i.cs = add nuw nsw i32 %i.cj, %i.ci
  %i.ct = sub nuw nsw i32 %i.cr, %i.cs
  %i.cu = shl nuw nsw i32 %i.ch, 18
  %i.cv = shl nuw nsw i32 %i.ct, 8
  %i.cw = or disjoint i32 %i.cu, %i.cv
  %i.cx = xor i8 %.in, -1
  %i.cy = zext i8 %i.cx to i32
  %i.cz = or disjoint i32 %i.cw, %i.cy            ; 2 uses
  %i.da = icmp sgt i32 %i.cz, %.0261306
  %i.db = trunc i64 %.0257308 to i32
  %i.dc = select i1 %i.da, i32 %i.db, i32 %.0264305 ; 2 uses
  %i.dd = tail call i32 @llvm.smax.i32(i32 %i.cz, i32 %.0261306)
  %i.de = icmp samesign ult i32 %i.ch, 2          ; 2 uses
  %i.df = add nsw i32 %.0258307, 1                ; 2 uses
  %.not281 = icmp slt i32 %i.df, %4
  %.2260 = select i1 %i.de, i32 %.0258307, i32 %i.df
  %brmerge = select i1 %i.de, i1 true, i1 %.not281
  %i.dg = add nuw i64 %.0257308, 1                ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %3
  %or.cond333 = and i1 %brmerge, %i.dh
  br i1 %or.cond333, label %.preheader302.split, label %.split.us, !llvm.loop !28

.split.us:                                        ; preds = %.preheader302.split, %.preheader302.split.us
  %.us-phi = phi i32 [ %i.bb, %.preheader302.split.us ], [ %i.dc, %.preheader302.split ] ; 2 uses
  %i.di = mul nsw i32 %.us-phi, 3
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds i8, ptr %2, i64 %i.dj ; 3 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !13  ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dk, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !13  ; 2 uses
  %i.do = getelementptr i8, ptr %i.dk, i64 2
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !13  ; 2 uses
  %i.dq = add nuw i64 %.0254309, 1                ; 3 uses
  %i.dr = mul i64 %i.dq, 3
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 %i.dr
  %i.dt = mul i64 %.0254309, 3
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 %i.dt ; 4 uses
  %i.dv = sext i32 %.us-phi to i64
  %i.dw = sub i64 %i.dv, %.0254309
  %i.dx = mul i64 %i.dw, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ds, ptr align 1 %i.du, i64 %i.dx, i1 false)
  store i8 %i.dl, ptr %i.du, align 1, !tbaa !13
  %i.dy = getelementptr i8, ptr %i.du, i64 1
  store i8 %i.dn, ptr %i.dy, align 1, !tbaa !13
  %i.dz = getelementptr i8, ptr %i.du, i64 2
  store i8 %i.dp, ptr %i.dz, align 1, !tbaa !13
  %i.ea = add i8 %.0241310, 1                     ; 4 uses
  %i.eb = zext i8 %i.dl to i64                    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eb
  store i8 %i.ea, ptr %i.ec, align 1, !tbaa !13
  %i.ed = zext i8 %i.dn to i64                    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ed
  store i8 %i.ea, ptr %i.ee, align 1, !tbaa !13
  %i.ef = zext i8 %i.dp to i64                    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ef
  store i8 %i.ea, ptr %i.eg, align 1, !tbaa !13
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eb ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !13
  %i.ej = add i8 %i.ei, -1
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !13
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ed ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !13
  %i.em = add i8 %i.el, -1
  store i8 %i.em, ptr %i.ek, align 1, !tbaa !13
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ef ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !13
  %i.ep = add i8 %i.eo, -1
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !13
  %exitcond343.not = icmp eq i64 %i.dq, %3
  br i1 %exitcond343.not, label %._crit_edge, label %.preheader302, !llvm.loop !29

.lr.ph323.preheader:                              ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %1, i1 false)
  br label %.lr.ph323

.lr.ph323:                                        ; preds = %.lr.ph323.preheader, %.thread373
  %.0252321 = phi i64 [ %i.jf, %.thread373 ], [ 0, %.lr.ph323.preheader ] ; 7 uses
  %i.eq = mul i64 %.0252321, 3
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 %i.eq ; 4 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !13  ; 25 uses
  %i.et = getelementptr i8, ptr %i.er, i64 1      ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !13  ; 25 uses
  %i.ev = getelementptr i8, ptr %i.er, i64 2      ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !13  ; 25 uses
  %i.ex = zext i8 %i.es to i64                    ; 8 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !13
  %.not274 = icmp eq i8 %i.ez, 0
  %i.fa = zext i8 %i.eu to i64                    ; 8 uses
  br i1 %.not274, label %bb.b, label %.thread373

bb.b:                                             ; preds = %.lr.ph323
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !13
  %.not275 = icmp eq i8 %i.fc, 0
  %i.fd = zext i8 %i.ew to i64                    ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !13
  %.not279 = icmp eq i8 %i.ff, 0                  ; 2 uses
  br i1 %.not275, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not279, label %.thread373, label %bb.d

bb.d:                                             ; preds = %bb.c
  br label %.thread373

bb.e:                                             ; preds = %bb.b
  br i1 %.not279, label %.preheader, label %.thread373

.preheader:                                       ; preds = %bb.e
  %i.fg = add i64 %.0252321, 3                    ; 2 uses
  %.0242312 = add nuw i64 %.0252321, 1            ; 3 uses
  %i.fh = icmp ult i64 %.0242312, %3
  %i.fi = icmp ult i64 %.0252321, -3
  %i.fj = and i1 %i.fh, %i.fi
  br i1 %i.fj, label %.lr.ph317, label %.thread373

._crit_edge318:                                   ; preds = %bb.w, %bb.q, %bb.k
  %.lcssa392 = phi i1 [ %6, %bb.k ], [ %10, %bb.q ], [ %12, %bb.w ] ; 2 uses
  %.lcssa391 = phi i1 [ %narrow, %bb.k ], [ %i.hr, %bb.q ], [ %i.ja, %bb.w ] ; 2 uses
  %.lcssa = phi i1 [ %5, %bb.k ], [ %8, %bb.q ], [ %11, %bb.w ] ; 2 uses
  %.not = xor i1 %.lcssa, true                    ; 2 uses
  %or.cond = select i1 %.not, i1 true, i1 %.lcssa392
  br i1 %or.cond, label %bb.x, label %.thread373

.lr.ph317:                                        ; preds = %.preheader
  %i.fk = mul i64 %.0242312, 3
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 %i.fk ; 3 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !13  ; 4 uses
  %i.fn = getelementptr i8, ptr %i.fl, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !13  ; 5 uses
  %i.fp = getelementptr i8, ptr %i.fl, i64 2
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !13  ; 6 uses
  %i.fr = icmp eq i8 %i.fm, %i.eu                 ; 2 uses
  %i.fs = icmp eq i8 %i.fo, %i.es                 ; 2 uses
  %or.cond283 = select i1 %i.fr, i1 %i.fs, i1 false
  br i1 %or.cond283, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph317
  %i.ft = icmp eq i8 %i.fo, %i.eu
  %i.fu = icmp eq i8 %i.fq, %i.es
  %or.cond284 = select i1 %i.ft, i1 %i.fu, i1 false
  br i1 %or.cond284, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fv = icmp eq i8 %i.fq, %i.eu
  %i.fw = icmp eq i8 %i.fm, %i.es
  %i.fx = and i1 %i.fw, %i.fv
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.lr.ph317, %bb.g
  %5 = phi i1 [ true, %bb.f ], [ true, %.lr.ph317 ], [ %i.fx, %bb.g ] ; 2 uses
  %i.fy = icmp eq i8 %i.fm, %i.ew                 ; 2 uses
  %i.fz = icmp eq i8 %i.fo, %i.eu
  %or.cond285 = select i1 %i.fy, i1 %i.fz, i1 false
  br i1 %or.cond285, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ga = icmp eq i8 %i.fo, %i.ew
  %i.gb = icmp eq i8 %i.fq, %i.eu
  %or.cond286 = select i1 %i.ga, i1 %i.gb, i1 false
  br i1 %or.cond286, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gc = icmp eq i8 %i.fq, %i.ew
  %i.gd = and i1 %i.fr, %i.gc
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.j
  %6 = phi i1 [ true, %bb.i ], [ true, %bb.h ], [ %i.gd, %bb.j ] ; 2 uses
  %i.ge = icmp eq i8 %i.fm, %i.es
  %i.gf = icmp eq i8 %i.fo, %i.ew
  %or.cond287 = select i1 %i.ge, i1 %i.gf, i1 false
  %i.gg = icmp eq i8 %i.fq, %i.ew
  %or.cond288 = select i1 %i.fs, i1 %i.gg, i1 false
  %or.cond299 = select i1 %or.cond287, i1 true, i1 %or.cond288
  %i.gh = icmp eq i8 %i.fq, %i.es
  %i.gi = and i1 %i.fy, %i.gh
  %narrow = select i1 %or.cond299, i1 true, i1 %i.gi ; 2 uses
  %.0242 = add nuw i64 %.0252321, 2               ; 3 uses
  %i.gj = icmp ult i64 %.0242, %3
  %i.gk = icmp ult i64 %.0242312, %i.fg
  %i.gl = and i1 %i.gj, %i.gk
  br i1 %i.gl, label %.lr.ph317.1, label %._crit_edge318

.lr.ph317.1:                                      ; preds = %bb.k
  %i.gm = mul i64 %.0242, 3
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 %i.gm ; 3 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !13  ; 4 uses
  %i.gp = getelementptr i8, ptr %i.gn, i64 1
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !13  ; 5 uses
  %i.gr = getelementptr i8, ptr %i.gn, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !13  ; 6 uses
  %i.gt = icmp eq i8 %i.go, %i.eu                 ; 2 uses
  %i.gu = icmp eq i8 %i.gq, %i.es                 ; 2 uses
  %or.cond283.1 = select i1 %i.gt, i1 %i.gu, i1 false
  br i1 %or.cond283.1, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph317.1
  %i.gv = icmp eq i8 %i.gq, %i.eu
  %i.gw = icmp eq i8 %i.gs, %i.es
  %or.cond284.1 = select i1 %i.gv, i1 %i.gw, i1 false
  br i1 %or.cond284.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gx = icmp eq i8 %i.gs, %i.eu
  %i.gy = icmp eq i8 %i.go, %i.es
  %i.gz = and i1 %i.gy, %i.gx
  %i.ha = zext i1 %i.gz to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph317.1
  %i.hb = phi i32 [ 1, %bb.l ], [ 1, %.lr.ph317.1 ], [ %i.ha, %bb.m ]
  %7 = zext i1 %5 to i32
  %i.hc = or i32 %i.hb, %7                        ; 2 uses
  %8 = icmp ne i32 %i.hc, 0
  %i.hd = icmp eq i8 %i.go, %i.ew                 ; 2 uses
  %i.he = icmp eq i8 %i.gq, %i.eu
  %or.cond285.1 = select i1 %i.hd, i1 %i.he, i1 false
  br i1 %or.cond285.1, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hf = icmp eq i8 %i.gq, %i.ew
  %i.hg = icmp eq i8 %i.gs, %i.eu
  %or.cond286.1 = select i1 %i.hf, i1 %i.hg, i1 false
  br i1 %or.cond286.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hh = icmp eq i8 %i.gs, %i.ew
  %i.hi = and i1 %i.gt, %i.hh
  %i.hj = zext i1 %i.hi to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.hk = phi i32 [ 1, %bb.o ], [ 1, %bb.n ], [ %i.hj, %bb.p ]
  %9 = zext i1 %6 to i32
  %i.hl = or i32 %i.hk, %9                        ; 2 uses
  %10 = icmp ne i32 %i.hl, 0
  %i.hm = icmp eq i8 %i.go, %i.es
  %i.hn = icmp eq i8 %i.gq, %i.ew
  %or.cond287.1 = select i1 %i.hm, i1 %i.hn, i1 false
  %i.ho = icmp eq i8 %i.gs, %i.ew
  %or.cond288.1 = select i1 %i.gu, i1 %i.ho, i1 false
  %or.cond299.1 = select i1 %or.cond287.1, i1 true, i1 %or.cond288.1
  %i.hp = icmp eq i8 %i.gs, %i.es
  %i.hq = and i1 %i.hd, %i.hp
  %narrow.1 = select i1 %or.cond299.1, i1 true, i1 %i.hq
  %i.hr = or i1 %narrow, %narrow.1                ; 2 uses
  %.0242.1 = add nuw i64 %.0252321, 3             ; 2 uses
  %i.hs = icmp ult i64 %.0242.1, %3
  %i.ht = icmp ult i64 %.0242, %i.fg
  %i.hu = and i1 %i.hs, %i.ht
  br i1 %i.hu, label %.lr.ph317.2, label %._crit_edge318

.lr.ph317.2:                                      ; preds = %bb.q
  %i.hv = mul i64 %.0242.1, 3
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 %i.hv ; 3 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !13  ; 4 uses
  %i.hy = getelementptr i8, ptr %i.hw, i64 1
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !13  ; 5 uses
  %i.ia = getelementptr i8, ptr %i.hw, i64 2
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !13  ; 6 uses
  %i.ic = icmp eq i8 %i.hx, %i.eu                 ; 2 uses
  %i.id = icmp eq i8 %i.hz, %i.es                 ; 2 uses
  %or.cond283.2 = select i1 %i.ic, i1 %i.id, i1 false
  br i1 %or.cond283.2, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.lr.ph317.2
  %i.ie = icmp eq i8 %i.hz, %i.eu
  %i.if = icmp eq i8 %i.ib, %i.es
  %or.cond284.2 = select i1 %i.ie, i1 %i.if, i1 false
  br i1 %or.cond284.2, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ig = icmp eq i8 %i.ib, %i.eu
  %i.ih = icmp eq i8 %i.hx, %i.es
  %i.ii = and i1 %i.ih, %i.ig
  %i.ij = zext i1 %i.ii to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.lr.ph317.2
  %i.ik = phi i32 [ 1, %bb.r ], [ 1, %.lr.ph317.2 ], [ %i.ij, %bb.s ]
  %i.il = or i32 %i.ik, %i.hc
  %11 = icmp ne i32 %i.il, 0
  %i.im = icmp eq i8 %i.hx, %i.ew                 ; 2 uses
  %i.in = icmp eq i8 %i.hz, %i.eu
  %or.cond285.2 = select i1 %i.im, i1 %i.in, i1 false
  br i1 %or.cond285.2, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.io = icmp eq i8 %i.hz, %i.ew
  %i.ip = icmp eq i8 %i.ib, %i.eu
  %or.cond286.2 = select i1 %i.io, i1 %i.ip, i1 false
  br i1 %or.cond286.2, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.iq = icmp eq i8 %i.ib, %i.ew
  %i.ir = and i1 %i.ic, %i.iq
  %i.is = zext i1 %i.ir to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.it = phi i32 [ 1, %bb.u ], [ 1, %bb.t ], [ %i.is, %bb.v ]
  %i.iu = or i32 %i.it, %i.hl
  %12 = icmp ne i32 %i.iu, 0
  %i.iv = icmp eq i8 %i.hx, %i.es
  %i.iw = icmp eq i8 %i.hz, %i.ew
  %or.cond287.2 = select i1 %i.iv, i1 %i.iw, i1 false
  %i.ix = icmp eq i8 %i.ib, %i.ew
  %or.cond288.2 = select i1 %i.id, i1 %i.ix, i1 false
  %or.cond299.2 = select i1 %or.cond287.2, i1 true, i1 %or.cond288.2
  %i.iy = icmp eq i8 %i.ib, %i.es
  %i.iz = and i1 %i.im, %i.iy
  %narrow.2 = select i1 %or.cond299.2, i1 true, i1 %i.iz
  %i.ja = or i1 %i.hr, %narrow.2
  br label %._crit_edge318

bb.x:                                             ; preds = %._crit_edge318
  %or.cond6 = select i1 %.not, i1 true, i1 %.lcssa391
  br i1 %or.cond6, label %bb.y, label %.thread373

bb.y:                                             ; preds = %bb.x
  %.0244.not = xor i1 %.lcssa392, true
  %or.cond9.not = select i1 %.lcssa, i1 true, i1 %.0244.not
  %or.cond11 = select i1 %or.cond9.not, i1 true, i1 %.lcssa391
  br i1 %or.cond11, label %.thread373, label %bb.z

bb.z:                                             ; preds = %bb.y
  br label %.thread373

.thread373:                                       ; preds = %.lr.ph323, %.preheader, %bb.d, %bb.y, %bb.z, %._crit_edge318, %bb.x, %bb.c, %bb.e
  %.pre-phi346 = phi i64 [ %i.fa, %.preheader ], [ %i.fa, %bb.y ], [ %i.ex, %bb.z ], [ %i.fd, %._crit_edge318 ], [ %i.ex, %bb.x ], [ %i.fd, %bb.c ], [ %i.fa, %bb.d ], [ %i.fa, %bb.e ], [ %i.fa, %.lr.ph323 ]
  %.pre-phi = phi i64 [ %i.ex, %.preheader ], [ %i.ex, %bb.y ], [ %i.fd, %bb.z ], [ %i.fa, %._crit_edge318 ], [ %i.fd, %bb.x ], [ %i.fa, %bb.c ], [ %i.ex, %bb.d ], [ %i.ex, %bb.e ], [ %i.ex, %.lr.ph323 ]
  %.1251 = phi i8 [ %i.es, %.preheader ], [ %i.es, %bb.y ], [ %i.ew, %bb.z ], [ %i.eu, %._crit_edge318 ], [ %i.ew, %bb.x ], [ %i.eu, %bb.c ], [ %i.es, %bb.d ], [ %i.es, %bb.e ], [ %i.es, %.lr.ph323 ]
  %.1249 = phi i8 [ %i.eu, %.preheader ], [ %i.eu, %bb.y ], [ %i.es, %bb.z ], [ %i.ew, %._crit_edge318 ], [ %i.es, %bb.x ], [ %i.ew, %bb.c ], [ %i.eu, %bb.d ], [ %i.eu, %bb.e ], [ %i.eu, %.lr.ph323 ]
  %.1247 = phi i8 [ %i.ew, %.preheader ], [ %i.ew, %bb.y ], [ %i.eu, %bb.z ], [ %i.es, %._crit_edge318 ], [ %i.eu, %bb.x ], [ %i.es, %bb.c ], [ %i.ew, %bb.d ], [ %i.ew, %bb.e ], [ %i.ew, %.lr.ph323 ] ; 2 uses
  store i8 %.1251, ptr %i.er, align 1, !tbaa !13
  store i8 %.1249, ptr %i.et, align 1, !tbaa !13
  store i8 %.1247, ptr %i.ev, align 1, !tbaa !13
  %i.jb = zext i8 %.1247 to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jb
  store i8 1, ptr %i.jc, align 1, !tbaa !13
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi346
  store i8 1, ptr %i.jd, align 1, !tbaa !13
  %i.je = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi
  store i8 1, ptr %i.je, align 1, !tbaa !13
  %i.jf = add nuw i64 %.0252321, 1                ; 2 uses
  %exitcond344.not = icmp eq i64 %i.jf, %3
  br i1 %exitcond344.not, label %.lr.ph327.preheader, label %.lr.ph323, !llvm.loop !30

.lr.ph327.preheader:                              ; preds = %.thread373, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.jg = shl i64 %1, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 -1, i64 %i.jg, i1 false)
  %i.jh = mul i64 %3, 3
  br label %.lr.ph327

._crit_edge328.loopexit:                          ; preds = %bb.ab
  %i.ji = shl i64 %.1, 2
  br label %._crit_edge328

._crit_edge328:                                   ; preds = %._crit_edge.thread, %._crit_edge328.loopexit
  %.0240.lcssa = phi i64 [ 0, %._crit_edge.thread ], [ %i.ji, %._crit_edge328.loopexit ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr nonnull align 16 %i.c, i64 %.0240.lcssa, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void

.lr.ph327:                                        ; preds = %.lr.ph327.preheader, %bb.ab
  %.0325 = phi i64 [ %i.jw, %bb.ab ], [ 0, %.lr.ph327.preheader ] ; 2 uses
  %.0240324 = phi i64 [ %.1, %bb.ab ], [ 0, %.lr.ph327.preheader ] ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 %.0325 ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !13
  %i.jl = zext i8 %i.jk to i64                    ; 2 uses
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jl ; 2 uses
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !15 ; 2 uses
  %i.jo = icmp slt i16 %i.jn, 0
  br i1 %i.jo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph327
  %i.jp = trunc i64 %.0240324 to i16              ; 2 uses
  store i16 %i.jp, ptr %i.jm, align 2, !tbaa !15
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jl
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !9
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0240324
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !9
  %i.jt = add nuw nsw i64 %.0240324, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph327
  %i.ju = phi i16 [ %i.jp, %bb.aa ], [ %i.jn, %.lr.ph327 ]
  %.1 = phi i64 [ %i.jt, %bb.aa ], [ %.0240324, %.lr.ph327 ] ; 2 uses
  %i.jv = trunc i16 %i.ju to i8
  store i8 %i.jv, ptr %i.jj, align 1, !tbaa !13
  %i.jw = add nuw i64 %.0325, 1                   ; 2 uses
  %exitcond345.not = icmp eq i64 %i.jw, %i.jh
  br i1 %exitcond345.not, label %._crit_edge328.loopexit, label %.lr.ph327, !llvm.loop !31
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @meshopt_optimizeMeshlet(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  tail call void @meshopt_optimizeMeshletLevel(ptr noundef %0, i64 noundef %3, ptr noundef %1, i64 noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @meshopt_extractMeshletIndices(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [1024 x i16], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 -1, i64 2048, i1 false)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph51

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.042.lcssa = phi i64 [ 0, %bb.a ], [ %.2, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.042.lcssa

.lr.ph51:                                         ; preds = %bb.a, %bb.h
  %.04150 = phi i64 [ %i.af, %bb.h ], [ 0, %bb.a ] ; 5 uses
  %.04248 = phi i64 [ %.2, %bb.h ], [ 0, %bb.a ]  ; 11 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04150
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9    ; 5 uses
  %i.d = and i32 %i.c, 1023
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.e ; 3 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !15   ; 3 uses
  %i.h = icmp sgt i16 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph51
  %i.i = zext nneg i16 %i.g to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = icmp eq i32 %i.k, %i.c
  br i1 %i.l, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not52 = icmp eq i64 %.04248, 0
  br i1 %.not52, label %.thread44, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.m = trunc i16 %i.g to i8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.04150
  store i8 %i.m, ptr %i.n, align 1, !tbaa !13
  br label %bb.h

bb.d:                                             ; preds = %.lr.ph51
  %i.o = trunc i64 %.04248 to i16
  store i16 %i.o, ptr %i.f, align 2, !tbaa !15
  %i.p = trunc i64 %.04248 to i8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.04150
  store i8 %i.p, ptr %i.q, align 1, !tbaa !13
  %i.r = add i64 %.04248, 1
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.04248
  store i32 %i.c, ptr %i.s, align 4, !tbaa !9
  br label %bb.h

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.047 = phi i64 [ %i.w, %bb.e ], [ 0, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.047
  %i.u = load i32, ptr %i.t, align 4, !tbaa !9
  %i.v = icmp eq i32 %i.u, %i.c
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.047, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %.04248
  br i1 %exitcond.not, label %.thread44, label %.lr.ph, !llvm.loop !32

bb.f:                                             ; preds = %.lr.ph
  %i.x = trunc i64 %.047 to i32                   ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %.thread44, label %bb.g

.thread44:                                        ; preds = %bb.e, %.preheader, %bb.f
  %i.z = trunc i64 %.04248 to i32
  %i.aa = add i64 %.04248, 1
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.04248
  store i32 %i.c, ptr %i.ab, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %.thread44, %bb.f
  %.143 = phi i64 [ %i.aa, %.thread44 ], [ %.04248, %bb.f ]
  %.1 = phi i32 [ %i.z, %.thread44 ], [ %i.x, %bb.f ] ; 2 uses
  %i.ac = trunc i32 %.1 to i16
  store i16 %i.ac, ptr %i.f, align 2, !tbaa !15
  %i.ad = trunc i32 %.1 to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.04150
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  %.2 = phi i64 [ %.04248, %bb.c ], [ %i.r, %bb.d ], [ %.143, %bb.g ] ; 2 uses
  %i.af = add nuw i64 %.04150, 1                  ; 2 uses
  %exitcond54.not = icmp eq i64 %i.af, %3
  br i1 %exitcond54.not, label %._crit_edge, label %.lr.ph51, !llvm.loop !33
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

end_hunk_0
