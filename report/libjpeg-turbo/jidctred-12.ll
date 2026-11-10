Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jidctred-12?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@jpeg12_idct_4x4:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp eq i32 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = icmp eq i32 %i.k, 12
  %i.m = select i1 %i.l, i64 16, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ 1, %bb.a ], [ %i.m, %bb.b ]    ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %factor.op.mul = mul nuw nsw i64 %i.n, 15137
  %factor.op.mul140 = mul nsw i64 %i.n, -6270
  %i.q = shl nuw nsw i64 %i.n, 14
  %i.r = trunc nuw nsw i64 %i.n to i32
  %i.s = shl nuw nsw i32 %i.r, 1
  br label %bb.d

.preheader:                                       ; preds = %bb.k
  %i.t = zext i32 %4 to i64
  br label %bb.l

bb.d:                                             ; preds = %bb.c, %bb.k
  %.0145 = phi i32 [ 8, %bb.c ], [ %i.ea, %bb.k ] ; 3 uses
  %.0133144 = phi ptr [ %i.a, %bb.c ], [ %i.dz, %bb.k ] ; 8 uses
  %.0135143 = phi ptr [ %i.p, %bb.c ], [ %i.dy, %bb.k ] ; 9 uses
  %.0136142 = phi ptr [ %2, %bb.c ], [ %i.dx, %bb.k ] ; 13 uses
  %i.u = icmp eq i32 %.0145, 4
  br i1 %i.u, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.0136142, i64 16
  %i.w = load i16, ptr %i.v, align 2, !tbaa !39   ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %.0136142, i64 32
  %i.z = load i16, ptr %i.y, align 2, !tbaa !39   ; 2 uses
  %i.aa = icmp eq i16 %i.z, 0
  %or.cond = select i1 %i.x, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.0136142, i64 48
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !39
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.0136142, i64 80
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !39
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.0136142, i64 96
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !39
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.0136142, i64 112
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !39
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.an = load i16, ptr %.0136142, align 2, !tbaa !39
  %i.ao = sext i16 %i.an to i32
  %i.ap = load i32, ptr %.0135143, align 4, !tbaa !40
  %.tr = mul nsw i32 %i.s, %i.ao
  %i.aq = mul i32 %.tr, %i.ap                     ; 4 uses
  store i32 %i.aq, ptr %.0133144, align 4, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %.0133144, i64 32
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %.0133144, i64 64
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !40
  br label %.sink.split

._crit_edge:                                      ; preds = %bb.e, %bb.i, %bb.h, %bb.g, %bb.f
  %i.at = phi i16 [ %i.z, %bb.e ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.au = load i16, ptr %.0136142, align 2, !tbaa !39
  %i.av = sext i16 %i.au to i32
  %i.aw = load i32, ptr %.0135143, align 4, !tbaa !40
  %i.ax = mul nsw i32 %i.aw, %i.av
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %i.q, %i.ay                 ; 2 uses
  %i.ba = sext i16 %i.at to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %.0135143, i64 64
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !40
  %i.bd = mul nsw i32 %i.bc, %i.ba
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %.0136142, i64 96
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !39
  %i.bh = sext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %.0135143, i64 192
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !40
  %i.bk = mul nsw i32 %i.bj, %i.bh
  %i.bl = sext i32 %i.bk to i64
  %.reass = mul nsw i64 %factor.op.mul, %i.be
  %.reass141 = mul nsw i64 %factor.op.mul140, %i.bl
  %reass.add = add nsw i64 %.reass141, %.reass    ; 2 uses
  %i.bm = add nsw i64 %reass.add, %i.az
  %i.bn = sub nsw i64 %i.az, %reass.add
  %i.bo = getelementptr inbounds nuw i8, ptr %.0136142, i64 112
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !39
  %i.bq = sext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %.0135143, i64 224
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !40
  %i.bt = mul nsw i32 %i.bs, %i.bq
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul nsw i64 %i.n, %i.bu                 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0136142, i64 80
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !39
  %i.by = sext i16 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %.0135143, i64 160
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !40
  %i.cb = mul nsw i32 %i.ca, %i.by
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul nsw i64 %i.n, %i.cc                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0136142, i64 48
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !39
  %i.cg = sext i16 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %.0135143, i64 96
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !40
  %i.cj = mul nsw i32 %i.ci, %i.cg
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.n, %i.ck                 ; 2 uses
  %i.cm = sext i16 %i.w to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %.0135143, i64 32
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !40
  %i.cp = mul nsw i32 %i.co, %i.cm
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul nsw i64 %i.n, %i.cq                 ; 2 uses
  %i.cs = mul nsw i64 %i.bv, -1730
  %i.ct = mul nsw i64 %i.cd, 11893
  %i.cu = add nsw i64 %i.ct, %i.cs
  %i.cv = mul nsw i64 %i.cl, -17799
  %i.cw = add nsw i64 %i.cu, %i.cv
  %i.cx = mul nsw i64 %i.cr, 8697
  %i.cy = add nsw i64 %i.cw, %i.cx                ; 2 uses
  %i.cz = mul nsw i64 %i.bv, -4176
  %i.da = mul nsw i64 %i.cd, -4926
  %i.db = add nsw i64 %i.da, %i.cz
  %i.dc = mul nsw i64 %i.cl, 7373
  %i.dd = add nsw i64 %i.db, %i.dc
  %i.de = mul nsw i64 %i.cr, 20995
  %i.df = add nsw i64 %i.dd, %i.de                ; 2 uses
  %i.dg = add nsw i64 %i.bm, 4096                 ; 2 uses
  %i.dh = add nsw i64 %i.dg, %i.df
  %i.di = lshr i64 %i.dh, 13
  %i.dj = trunc i64 %i.di to i32
  store i32 %i.dj, ptr %.0133144, align 4, !tbaa !40
  %i.dk = sub nsw i64 %i.dg, %i.df
  %i.dl = lshr i64 %i.dk, 13
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = getelementptr inbounds nuw i8, ptr %.0133144, i64 96
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !40
  %i.do = add nsw i64 %i.bn, 4096                 ; 2 uses
  %i.dp = add nsw i64 %i.do, %i.cy
  %i.dq = lshr i64 %i.dp, 13
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %.0133144, i64 32
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !40
  %i.dt = sub nsw i64 %i.do, %i.cy
  %i.du = lshr i64 %i.dt, 13
  %i.dv = trunc i64 %i.du to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %._crit_edge
  %.sink154 = phi i64 [ 64, %._crit_edge ], [ 96, %bb.j ]
  %.sink = phi i32 [ %i.dv, %._crit_edge ], [ %i.aq, %bb.j ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.0133144, i64 %.sink154
  store i32 %.sink, ptr %i.dw, align 4, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.d
  %i.dx = getelementptr inbounds nuw i8, ptr %.0136142, i64 2
  %i.dy = getelementptr inbounds nuw i8, ptr %.0135143, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %.0133144, i64 4
  %i.ea = add nsw i32 %.0145, -1
  %i.eb = icmp samesign ugt i32 %.0145, 1
  br i1 %i.eb, label %bb.d, label %.preheader, !llvm.loop !43

bb.l:                                             ; preds = %.preheader, %bb.r
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %.1134146 = phi ptr [ %i.a, %.preheader ], [ %.2, %bb.r ] ; 13 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !42
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %i.t ; 7 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.1134146, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !40 ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %.1134146, i64 8
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !40 ; 2 uses
  %i.ek = icmp eq i32 %i.ej, 0
  %or.cond155 = select i1 %i.eh, i1 %i.ek, i1 false
  br i1 %or.cond155, label %bb.m, label %._crit_edge149

bb.m:                                             ; preds = %bb.l
  %i.el = getelementptr inbounds nuw i8, ptr %.1134146, i64 12
  %i.em = load i32, ptr %i.el, align 4, !tbaa !40
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.n, label %._crit_edge149

bb.n:                                             ; preds = %bb.m
  %i.eo = getelementptr inbounds nuw i8, ptr %.1134146, i64 20
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !40
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.o, label %._crit_edge149

bb.o:                                             ; preds = %bb.n
  %i.er = getelementptr inbounds nuw i8, ptr %.1134146, i64 24
  %i.es = load i32, ptr %i.er, align 4, !tbaa !40
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.p, label %._crit_edge149

bb.p:                                             ; preds = %bb.o
  %i.eu = getelementptr inbounds nuw i8, ptr %.1134146, i64 28
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !40
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.q, label %._crit_edge149

bb.q:                                             ; preds = %bb.p
  %i.ex = load i32, ptr %.1134146, align 4, !tbaa !40
  %i.ey = add i32 %i.ex, 8
  %i.ez = lshr i32 %i.ey, 4
  %i.fa = and i32 %i.ez, 16383
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !39 ; 4 uses
  store i16 %i.fd, ptr %i.ee, align 2, !tbaa !39
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  store i16 %i.fd, ptr %i.fe, align 2, !tbaa !39
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i16 %i.fd, ptr %i.ff, align 2, !tbaa !39
  br label %bb.r

._crit_edge149:                                   ; preds = %bb.l, %bb.p, %bb.o, %bb.n, %bb.m
  %i.fg = phi i32 [ %i.ej, %bb.l ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ]
  %i.fh = load i32, ptr %.1134146, align 4, !tbaa !40
  %i.fi = sext i32 %i.fh to i64
  %i.fj = shl nsw i64 %i.fi, 14                   ; 2 uses
  %i.fk = zext i32 %i.fg to i64
  %i.fl = mul nuw nsw i64 %i.fk, 15137
  %i.fm = getelementptr inbounds nuw i8, ptr %.1134146, i64 24
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !40
  %i.fo = zext i32 %i.fn to i64
  %i.fp = mul nsw i64 %i.fo, -6270
  %i.fq = add nsw i64 %i.fp, %i.fl                ; 2 uses
  %i.fr = add nsw i64 %i.fq, %i.fj
  %i.fs = sub nsw i64 %i.fj, %i.fq
  %i.ft = getelementptr inbounds nuw i8, ptr %.1134146, i64 28
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !40
  %i.fv = zext i32 %i.fu to i64                   ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.1134146, i64 20
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !40
  %i.fy = zext i32 %i.fx to i64                   ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.1134146, i64 12
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !40
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = zext i32 %i.eg to i64                   ; 2 uses
  %i.gd = mul nsw i64 %i.fv, -1730
  %i.ge = mul nuw nsw i64 %i.fy, 11893
  %i.gf = mul nsw i64 %i.gb, -17799
  %i.gg = mul nuw nsw i64 %i.gc, 8697
  %i.gh = add nsw i64 %i.gd, %i.gg
  %i.gi = add nsw i64 %i.gh, %i.ge
  %i.gj = add nsw i64 %i.gi, %i.gf                ; 2 uses
  %i.gk = mul nsw i64 %i.fv, -4176
  %i.gl = mul nsw i64 %i.fy, -4926
  %i.gm = mul nuw nsw i64 %i.gb, 7373
  %i.gn = mul nuw nsw i64 %i.gc, 20995
  %i.go = add nsw i64 %i.gk, %i.gn
  %i.gp = add nsw i64 %i.go, %i.gl
  %i.gq = add nsw i64 %i.gp, %i.gm                ; 2 uses
  %i.gr = add nsw i64 %i.fr, 131072               ; 2 uses
  %i.gs = add nsw i64 %i.gr, %i.gq
  %i.gt = lshr i64 %i.gs, 18
  %i.gu = and i64 %i.gt, 16383
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.gu
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !39
  store i16 %i.gw, ptr %i.ee, align 2, !tbaa !39
  %i.gx = sub nsw i64 %i.gr, %i.gq
  %i.gy = lshr i64 %i.gx, 18
  %i.gz = and i64 %i.gy, 16383
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.gz
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !39
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ee, i64 6
  store i16 %i.hb, ptr %i.hc, align 2, !tbaa !39
  %i.hd = add nsw i64 %i.fs, 131072               ; 2 uses
  %i.he = add nsw i64 %i.hd, %i.gj
  %i.hf = lshr i64 %i.he, 18
  %i.hg = and i64 %i.hf, 16383
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hg
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !39
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  store i16 %i.hi, ptr %i.hj, align 2, !tbaa !39
  %i.hk = sub nsw i64 %i.hd, %i.gj
  %i.hl = lshr i64 %i.hk, 18
  %i.hm = and i64 %i.hl, 16383
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hm
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !39
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge149, %bb.q
  %.sink158 = phi i64 [ 4, %._crit_edge149 ], [ 6, %bb.q ]
  %.sink156 = phi i16 [ %i.ho, %._crit_edge149 ], [ %i.fd, %bb.q ]
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.sink158
  store i16 %.sink156, ptr %i.hp, align 2, !tbaa !39
  %.2 = getelementptr inbounds nuw i8, ptr %.1134146, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.s, label %bb.l, !llvm.loop !44

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @jpeg12_idct_2x2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4096 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35
  %i.h = icmp eq i32 %i.g, 8
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.j = load i32, ptr %i.i, align 8, !tbaa !36
  %i.k = icmp eq i32 %i.j, 12
  %i.l = select i1 %i.k, i64 16, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.m = phi i64 [ 1, %bb.a ], [ %i.l, %bb.b ]    ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38   ; 26 uses
  %factor.op.mul = mul nuw nsw i64 %i.m, 29692    ; 5 uses
  %factor.op.mul91 = mul nsw i64 %i.m, -10426     ; 5 uses
  %factor.op.mul93 = mul nsw i64 %i.m, -5906      ; 5 uses
  %factor.op.mul95 = mul nuw nsw i64 %i.m, 6967   ; 5 uses
  %i.p = shl nuw nsw i64 %i.m, 15                 ; 5 uses
  %i.q = trunc nuw nsw i64 %i.m to i32
  %i.r = shl nuw nsw i32 %i.q, 1                  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i16, ptr %i.s, align 2, !tbaa !39   ; 2 uses
  %i.u = icmp eq i16 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = load i16, ptr %i.v, align 2, !tbaa !39   ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  %or.cond = select i1 %i.u, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.d, label %._crit_edge112

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.z = load i16, ptr %i.y, align 2, !tbaa !39
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.e, label %._crit_edge112

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !39
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %._crit_edge112

bb.f:                                             ; preds = %bb.e
  %i.ae = load i16, ptr %2, align 2, !tbaa !39
  %i.af = sext i16 %i.ae to i32
  %i.ag = load i32, ptr %i.o, align 4, !tbaa !40
  %.tr = mul nsw i32 %i.r, %i.af
  %i.ah = mul i32 %.tr, %i.ag                     ; 2 uses
  br label %bb.g

._crit_edge112:                                   ; preds = %bb.c, %bb.e, %bb.d
  %i.ai = phi i16 [ %i.w, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ]
  %i.aj = load i16, ptr %2, align 2, !tbaa !39
  %i.ak = sext i16 %i.aj to i32
  %i.al = load i32, ptr %i.o, align 4, !tbaa !40
  %i.am = mul nsw i32 %i.al, %i.ak
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.p, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !39
  %i.ar = sext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %i.at = load i32, ptr %i.as, align 4, !tbaa !40
  %i.au = mul nsw i32 %i.at, %i.ar
  %i.av = sext i32 %i.au to i64
  %.reass94 = mul nsw i64 %factor.op.mul93, %i.av
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !39
  %i.ay = sext i16 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !40
  %i.bb = mul nsw i32 %i.ba, %i.ay
  %i.bc = sext i32 %i.bb to i64
  %.reass96 = mul nsw i64 %factor.op.mul95, %i.bc
  %i.bd = sext i16 %i.ai to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !40
  %i.bg = mul nsw i32 %i.bf, %i.bd
  %i.bh = sext i32 %i.bg to i64
  %.reass92 = mul nsw i64 %factor.op.mul91, %i.bh
  %i.bi = sext i16 %i.t to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !40
  %i.bl = mul nsw i32 %i.bk, %i.bi
  %i.bm = sext i32 %i.bl to i64
  %.reass = mul nsw i64 %factor.op.mul, %i.bm
  %reass.add = add nsw i64 %.reass96, %.reass94
  %reass.add89 = add nsw i64 %reass.add, %.reass92
  %reass.add90 = add nsw i64 %reass.add89, %.reass ; 2 uses
  %i.bn = or disjoint i64 %i.ao, 8192             ; 2 uses
  %i.bo = add nsw i64 %i.bn, %reass.add90
  %i.bp = lshr i64 %i.bo, 14
  %i.bq = trunc i64 %i.bp to i32
  %i.br = sub nsw i64 %i.bn, %reass.add90
  %i.bs = lshr i64 %i.br, 14
  %i.bt = trunc i64 %i.bs to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge112
  %.sroa.27.0 = phi i32 [ %i.bt, %._crit_edge112 ], [ %i.ah, %bb.f ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %i.bq, %._crit_edge112 ], [ %i.ah, %bb.f ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !39 ; 2 uses
  %i.by = icmp eq i16 %i.bx, 0
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 50
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !39 ; 2 uses
  %i.cb = icmp eq i16 %i.ca, 0
  %or.cond132 = select i1 %i.by, i1 %i.cb, i1 false
  br i1 %or.cond132, label %bb.h, label %._crit_edge114
end_hunk_0
