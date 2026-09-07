Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jidctred-12?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@jpeg12_idct_4x4:bb.a
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
  %i.bo = add i64 %i.bn, %reass.add90
  %i.bp = lshr i64 %i.bo, 14
  %i.bq = trunc i64 %i.bp to i32
  %i.br = sub i64 %i.bn, %reass.add90
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

bb.h:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 82
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !39
  %i.ce = icmp eq i16 %i.cd, 0
  br i1 %i.ce, label %bb.i, label %._crit_edge114

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 114
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !39
  %i.ch = icmp eq i16 %i.cg, 0
  br i1 %i.ch, label %bb.j, label %._crit_edge114

._crit_edge114:                                   ; preds = %bb.g, %bb.i, %bb.h
  %i.ci = phi i16 [ %i.ca, %bb.g ], [ 0, %bb.i ], [ 0, %bb.h ]
  %i.cj = load i16, ptr %i.bu, align 2, !tbaa !39
  %i.ck = sext i16 %i.cj to i32
  %i.cl = load i32, ptr %i.bv, align 4, !tbaa !40
  %i.cm = mul nsw i32 %i.cl, %i.ck
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %i.p, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 114
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !39
  %i.cr = sext i16 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 228
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !40
  %i.cu = mul nsw i32 %i.ct, %i.cr
  %i.cv = sext i32 %i.cu to i64
  %.reass94.1 = mul nsw i64 %factor.op.mul93, %i.cv
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 82
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !39
  %i.cy = sext i16 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.o, i64 164
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !40
  %i.db = mul nsw i32 %i.da, %i.cy
  %i.dc = sext i32 %i.db to i64
  %.reass96.1 = mul nsw i64 %factor.op.mul95, %i.dc
  %i.dd = sext i16 %i.ci to i32
  %i.de = getelementptr inbounds nuw i8, ptr %i.o, i64 100
  %i.df = load i32, ptr %i.de, align 4, !tbaa !40
  %i.dg = mul nsw i32 %i.df, %i.dd
  %i.dh = sext i32 %i.dg to i64
  %.reass92.1 = mul nsw i64 %factor.op.mul91, %i.dh
  %i.di = sext i16 %i.bx to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !40
  %i.dl = mul nsw i32 %i.dk, %i.di
  %i.dm = sext i32 %i.dl to i64
  %.reass.1 = mul nsw i64 %factor.op.mul, %i.dm
  %reass.add.1 = add nsw i64 %.reass96.1, %.reass94.1
  %reass.add89.1 = add nsw i64 %reass.add.1, %.reass92.1
  %reass.add90.1 = add nsw i64 %reass.add89.1, %.reass.1 ; 2 uses
  %i.dn = or disjoint i64 %i.co, 8192             ; 2 uses
  %i.do = add i64 %i.dn, %reass.add90.1
  %i.dp = lshr i64 %i.do, 14
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = sub i64 %i.dn, %reass.add90.1
  %i.ds = lshr i64 %i.dr, 14
  %i.dt = trunc i64 %i.ds to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.du = load i16, ptr %i.bu, align 2, !tbaa !39
  %i.dv = sext i16 %i.du to i32
  %i.dw = load i32, ptr %i.bv, align 4, !tbaa !40
  %.tr.1 = mul nsw i32 %i.r, %i.dv
  %i.dx = mul i32 %.tr.1, %i.dw                   ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge114
  %.sroa.31.0 = phi i32 [ %i.dt, %._crit_edge114 ], [ %i.dx, %bb.j ] ; 2 uses
  %.sroa.6.0 = phi i32 [ %i.dq, %._crit_edge114 ], [ %i.dx, %bb.j ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !39 ; 2 uses
  %i.ec = icmp eq i16 %i.eb, 0
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 54
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !39 ; 2 uses
  %i.ef = icmp eq i16 %i.ee, 0
  %or.cond133 = select i1 %i.ec, i1 %i.ef, i1 false
  br i1 %or.cond133, label %bb.l, label %._crit_edge118

bb.l:                                             ; preds = %bb.k
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 86
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !39
  %i.ei = icmp eq i16 %i.eh, 0
  br i1 %i.ei, label %bb.m, label %._crit_edge118

bb.m:                                             ; preds = %bb.l
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 118
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !39
  %i.el = icmp eq i16 %i.ek, 0
  br i1 %i.el, label %bb.n, label %._crit_edge118

._crit_edge118:                                   ; preds = %bb.k, %bb.m, %bb.l
  %i.em = phi i16 [ %i.ee, %bb.k ], [ 0, %bb.m ], [ 0, %bb.l ]
  %i.en = load i16, ptr %i.dy, align 2, !tbaa !39
  %i.eo = sext i16 %i.en to i32
  %i.ep = load i32, ptr %i.dz, align 4, !tbaa !40
  %i.eq = mul nsw i32 %i.ep, %i.eo
  %i.er = sext i32 %i.eq to i64
  %i.es = mul nsw i64 %i.p, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 118
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !39
  %i.ev = sext i16 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.o, i64 236
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !40
  %i.ey = mul nsw i32 %i.ex, %i.ev
  %i.ez = sext i32 %i.ey to i64
  %.reass94.3 = mul nsw i64 %factor.op.mul93, %i.ez
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 86
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !39
  %i.fc = sext i16 %i.fb to i32
  %i.fd = getelementptr inbounds nuw i8, ptr %i.o, i64 172
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !40
  %i.ff = mul nsw i32 %i.fe, %i.fc
  %i.fg = sext i32 %i.ff to i64
  %.reass96.3 = mul nsw i64 %factor.op.mul95, %i.fg
  %i.fh = sext i16 %i.em to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.o, i64 108
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !40
  %i.fk = mul nsw i32 %i.fj, %i.fh
  %i.fl = sext i32 %i.fk to i64
  %.reass92.3 = mul nsw i64 %factor.op.mul91, %i.fl
  %i.fm = sext i16 %i.eb to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !40
  %i.fp = mul nsw i32 %i.fo, %i.fm
  %i.fq = sext i32 %i.fp to i64
  %.reass.3 = mul nsw i64 %factor.op.mul, %i.fq
  %reass.add.3 = add nsw i64 %.reass96.3, %.reass94.3
  %reass.add89.3 = add nsw i64 %reass.add.3, %.reass92.3
  %reass.add90.3 = add nsw i64 %reass.add89.3, %.reass.3 ; 2 uses
  %i.fr = or disjoint i64 %i.es, 8192             ; 2 uses
  %i.fs = add i64 %i.fr, %reass.add90.3
  %i.ft = lshr i64 %i.fs, 14
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = sub i64 %i.fr, %reass.add90.3
  %i.fw = lshr i64 %i.fv, 14
  %i.fx = trunc i64 %i.fw to i32
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fy = load i16, ptr %i.dy, align 2, !tbaa !39
  %i.fz = sext i16 %i.fy to i32
  %i.ga = load i32, ptr %i.dz, align 4, !tbaa !40
  %.tr.3 = mul nsw i32 %i.r, %i.fz
  %i.gb = mul i32 %.tr.3, %i.ga                   ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge118
  %.sroa.36.0 = phi i32 [ %i.fx, %._crit_edge118 ], [ %i.gb, %bb.n ] ; 2 uses
  %.sroa.11.0 = phi i32 [ %i.fu, %._crit_edge118 ], [ %i.gb, %bb.n ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !39 ; 2 uses
  %i.gg = icmp eq i16 %i.gf, 0
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !39 ; 2 uses
  %i.gj = icmp eq i16 %i.gi, 0
  %or.cond134 = select i1 %i.gg, i1 %i.gj, i1 false
  br i1 %or.cond134, label %bb.p, label %._crit_edge122

bb.p:                                             ; preds = %bb.o
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 90
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !39
  %i.gm = icmp eq i16 %i.gl, 0
  br i1 %i.gm, label %bb.q, label %._crit_edge122

bb.q:                                             ; preds = %bb.p
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 122
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !39
  %i.gp = icmp eq i16 %i.go, 0
  br i1 %i.gp, label %bb.r, label %._crit_edge122

._crit_edge122:                                   ; preds = %bb.o, %bb.q, %bb.p
  %i.gq = phi i16 [ %i.gi, %bb.o ], [ 0, %bb.q ], [ 0, %bb.p ]
  %i.gr = load i16, ptr %i.gc, align 2, !tbaa !39
  %i.gs = sext i16 %i.gr to i32
  %i.gt = load i32, ptr %i.gd, align 4, !tbaa !40
  %i.gu = mul nsw i32 %i.gt, %i.gs
  %i.gv = sext i32 %i.gu to i64
  %i.gw = mul nsw i64 %i.p, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 122
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !39
  %i.gz = sext i16 %i.gy to i32
  %i.ha = getelementptr inbounds nuw i8, ptr %i.o, i64 244
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !40
  %i.hc = mul nsw i32 %i.hb, %i.gz
  %i.hd = sext i32 %i.hc to i64
  %.reass94.5 = mul nsw i64 %factor.op.mul93, %i.hd
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 90
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !39
  %i.hg = sext i16 %i.hf to i32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.o, i64 180
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !40
  %i.hj = mul nsw i32 %i.hi, %i.hg
  %i.hk = sext i32 %i.hj to i64
  %.reass96.5 = mul nsw i64 %factor.op.mul95, %i.hk
  %i.hl = sext i16 %i.gq to i32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.o, i64 116
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !40
  %i.ho = mul nsw i32 %i.hn, %i.hl
  %i.hp = sext i32 %i.ho to i64
  %.reass92.5 = mul nsw i64 %factor.op.mul91, %i.hp
  %i.hq = sext i16 %i.gf to i32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !40
  %i.ht = mul nsw i32 %i.hs, %i.hq
  %i.hu = sext i32 %i.ht to i64
  %.reass.5 = mul nsw i64 %factor.op.mul, %i.hu
  %reass.add.5 = add nsw i64 %.reass96.5, %.reass94.5
  %reass.add89.5 = add nsw i64 %reass.add.5, %.reass92.5
  %reass.add90.5 = add nsw i64 %reass.add89.5, %.reass.5 ; 2 uses
  %i.hv = or disjoint i64 %i.gw, 8192             ; 2 uses
  %i.hw = add i64 %i.hv, %reass.add90.5
  %i.hx = lshr i64 %i.hw, 14
  %i.hy = trunc i64 %i.hx to i32
  %i.hz = sub i64 %i.hv, %reass.add90.5
  %i.ia = lshr i64 %i.hz, 14
  %i.ib = trunc i64 %i.ia to i32
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ic = load i16, ptr %i.gc, align 2, !tbaa !39
  %i.id = sext i16 %i.ic to i32
  %i.ie = load i32, ptr %i.gd, align 4, !tbaa !40
  %.tr.5 = mul nsw i32 %i.r, %i.id
  %i.if = mul i32 %.tr.5, %i.ie                   ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge122
  %.sroa.42.0 = phi i32 [ %i.ib, %._crit_edge122 ], [ %i.if, %bb.r ] ; 2 uses
  %.sroa.17.0 = phi i32 [ %i.hy, %._crit_edge122 ], [ %i.if, %bb.r ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.o, i64 28 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !39 ; 2 uses
  %i.ik = icmp eq i16 %i.ij, 0
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 62
  %i.im = load i16, ptr %i.il, align 2, !tbaa !39 ; 2 uses
  %i.in = icmp eq i16 %i.im, 0
  %or.cond135 = select i1 %i.ik, i1 %i.in, i1 false
  br i1 %or.cond135, label %bb.t, label %._crit_edge125

bb.t:                                             ; preds = %bb.s
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 94
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !39
  %i.iq = icmp eq i16 %i.ip, 0
  br i1 %i.iq, label %bb.u, label %._crit_edge125

bb.u:                                             ; preds = %bb.t
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 126
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !39
  %i.it = icmp eq i16 %i.is, 0
  br i1 %i.it, label %bb.v, label %._crit_edge125

._crit_edge125:                                   ; preds = %bb.s, %bb.u, %bb.t
  %i.iu = phi i16 [ %i.im, %bb.s ], [ 0, %bb.u ], [ 0, %bb.t ]
  %i.iv = load i16, ptr %i.ig, align 2, !tbaa !39
  %i.iw = sext i16 %i.iv to i32
  %i.ix = load i32, ptr %i.ih, align 4, !tbaa !40
  %i.iy = mul nsw i32 %i.ix, %i.iw
  %i.iz = sext i32 %i.iy to i64
  %i.ja = mul nsw i64 %i.p, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 126
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !39
  %i.jd = sext i16 %i.jc to i32
  %i.je = getelementptr inbounds nuw i8, ptr %i.o, i64 252
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !40
  %i.jg = mul nsw i32 %i.jf, %i.jd
  %i.jh = sext i32 %i.jg to i64
  %.reass94.7 = mul nsw i64 %factor.op.mul93, %i.jh
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 94
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !39
  %i.jk = sext i16 %i.jj to i32
  %i.jl = getelementptr inbounds nuw i8, ptr %i.o, i64 188
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !40
  %i.jn = mul nsw i32 %i.jm, %i.jk
  %i.jo = sext i32 %i.jn to i64
  %.reass96.7 = mul nsw i64 %factor.op.mul95, %i.jo
  %i.jp = sext i16 %i.iu to i32
  %i.jq = getelementptr inbounds nuw i8, ptr %i.o, i64 124
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !40
  %i.js = mul nsw i32 %i.jr, %i.jp
  %i.jt = sext i32 %i.js to i64
  %.reass92.7 = mul nsw i64 %factor.op.mul91, %i.jt
  %i.ju = sext i16 %i.ij to i32
  %i.jv = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !40
  %i.jx = mul nsw i32 %i.jw, %i.ju
  %i.jy = sext i32 %i.jx to i64
  %.reass.7 = mul nsw i64 %factor.op.mul, %i.jy
  %reass.add.7 = add nsw i64 %.reass96.7, %.reass94.7
  %reass.add89.7 = add nsw i64 %reass.add.7, %.reass92.7
  %reass.add90.7 = add nsw i64 %reass.add89.7, %.reass.7 ; 2 uses
  %i.jz = or disjoint i64 %i.ja, 8192             ; 2 uses
  %i.ka = add i64 %i.jz, %reass.add90.7
  %i.kb = lshr i64 %i.ka, 14
  %i.kc = trunc i64 %i.kb to i32
  %i.kd = sub i64 %i.jz, %reass.add90.7
  %i.ke = lshr i64 %i.kd, 14
  %i.kf = trunc i64 %i.ke to i32
  br label %.preheader

bb.v:                                             ; preds = %bb.u
  %i.kg = load i16, ptr %i.ig, align 2, !tbaa !39
  %i.kh = sext i16 %i.kg to i32
  %i.ki = load i32, ptr %i.ih, align 4, !tbaa !40
  %.tr.7 = mul nsw i32 %i.r, %i.kh
  %i.kj = mul i32 %.tr.7, %i.ki                   ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.v, %._crit_edge125
  %.sroa.48.0 = phi i32 [ %i.kf, %._crit_edge125 ], [ %i.kj, %bb.v ] ; 2 uses
  %.sroa.23.0 = phi i32 [ %i.kc, %._crit_edge125 ], [ %i.kj, %bb.v ] ; 2 uses
  %i.kk = zext i32 %4 to i64                      ; 2 uses
  %i.kl = load ptr, ptr %3, align 8, !tbaa !42
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.kl, i64 %i.kk ; 3 uses
  %i.kn = icmp eq i32 %.sroa.6.0, 0
  %i.ko = icmp eq i32 %.sroa.11.0, 0
  %or.cond136 = select i1 %i.kn, i1 %i.ko, i1 false
  %i.kp = icmp eq i32 %.sroa.17.0, 0
  %or.cond137 = select i1 %or.cond136, i1 %i.kp, i1 false
  %i.kq = icmp eq i32 %.sroa.23.0, 0
  %or.cond138 = select i1 %or.cond137, i1 %i.kq, i1 false
  br i1 %or.cond138, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader
  %i.kr = add i32 %.sroa.0.0, 8
  %i.ks = lshr i32 %i.kr, 4
  %i.kt = and i32 %i.ks, 16383
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ku
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !39 ; 2 uses
  store i16 %i.kw, ptr %i.km, align 2, !tbaa !39
  br label %bb.y

bb.x:                                             ; preds = %.preheader
  %i.kx = sext i32 %.sroa.0.0 to i64
  %i.ky = shl nsw i64 %i.kx, 15
  %i.kz = sext i32 %.sroa.23.0 to i64
  %i.la = mul nsw i64 %i.kz, -5906
  %i.lb = sext i32 %.sroa.17.0 to i64
  %i.lc = mul nsw i64 %i.lb, 6967
  %i.ld = sext i32 %.sroa.11.0 to i64
  %i.le = mul nsw i64 %i.ld, -10426
  %i.lf = sext i32 %.sroa.6.0 to i64
  %i.lg = mul nsw i64 %i.lf, 29692
  %i.lh = add nsw i64 %i.la, %i.lg
  %i.li = add nsw i64 %i.lh, %i.lc
  %i.lj = add nsw i64 %i.li, %i.le                ; 2 uses
  %i.lk = add nsw i64 %i.ky, 262144               ; 2 uses
  %i.ll = add nsw i64 %i.lk, %i.lj
  %i.lm = lshr i64 %i.ll, 19
  %i.ln = and i64 %i.lm, 16383
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ln
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !39
  store i16 %i.lp, ptr %i.km, align 2, !tbaa !39
  %i.lq = sub nsw i64 %i.lk, %i.lj
  %i.lr = lshr i64 %i.lq, 19
  %i.ls = and i64 %i.lr, 16383
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ls
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !39
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink = phi i16 [ %i.lu, %bb.x ], [ %i.kw, %bb.w ]
  %i.lv = getelementptr inbounds nuw i8, ptr %i.km, i64 2
  store i16 %.sink, ptr %i.lv, align 2, !tbaa !39
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !42
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.lx, i64 %i.kk ; 3 uses
  %i.lz = icmp eq i32 %.sroa.31.0, 0
  %i.ma = icmp eq i32 %.sroa.36.0, 0
  %or.cond140 = select i1 %i.lz, i1 %i.ma, i1 false
  %i.mb = icmp eq i32 %.sroa.42.0, 0
  %or.cond141 = select i1 %or.cond140, i1 %i.mb, i1 false
  %i.mc = icmp eq i32 %.sroa.48.0, 0
  %or.cond142 = select i1 %or.cond141, i1 %i.mc, i1 false
  br i1 %or.cond142, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.md = sext i32 %.sroa.27.0 to i64
  %i.me = shl nsw i64 %i.md, 15
  %i.mf = sext i32 %.sroa.48.0 to i64
  %i.mg = mul nsw i64 %i.mf, -5906
  %i.mh = sext i32 %.sroa.42.0 to i64
  %i.mi = mul nsw i64 %i.mh, 6967
  %i.mj = sext i32 %.sroa.36.0 to i64
  %i.mk = mul nsw i64 %i.mj, -10426
  %i.ml = sext i32 %.sroa.31.0 to i64
  %i.mm = mul nsw i64 %i.ml, 29692
  %i.mn = add nsw i64 %i.mg, %i.mm
  %i.mo = add nsw i64 %i.mn, %i.mi
  %i.mp = add nsw i64 %i.mo, %i.mk                ; 2 uses
  %i.mq = add nsw i64 %i.me, 262144               ; 2 uses
  %i.mr = add nsw i64 %i.mq, %i.mp
  %i.ms = lshr i64 %i.mr, 19
  %i.mt = and i64 %i.ms, 16383
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.mt
  %i.mv = load i16, ptr %i.mu, align 2, !tbaa !39
  store i16 %i.mv, ptr %i.ly, align 2, !tbaa !39
  %i.mw = sub nsw i64 %i.mq, %i.mp
  %i.mx = lshr i64 %i.mw, 19
  %i.my = and i64 %i.mx, 16383
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.my
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !39
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.nb = add i32 %.sroa.27.0, 8
  %i.nc = lshr i32 %i.nb, 4
  %i.nd = and i32 %i.nc, 16383
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ne
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !39 ; 2 uses
  store i16 %i.ng, ptr %i.ly, align 2, !tbaa !39
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink143 = phi i16 [ %i.ng, %bb.aa ], [ %i.na, %bb.z ]
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ly, i64 2
  store i16 %.sink143, ptr %i.nh, align 2, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @jpeg12_idct_1x1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %i.g = icmp eq i32 %i.f, 8
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.i = load i32, ptr %i.h, align 8, !tbaa !36
  %i.j = icmp eq i32 %i.i, 12
  %i.k = select i1 %i.j, i32 16, i32 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i32 [ 1, %bb.a ], [ %i.k, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4096
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.p = load i16, ptr %2, align 2, !tbaa !39
  %i.q = sext i16 %i.p to i32
  %i.r = load i32, ptr %i.o, align 4, !tbaa !40
  %i.s = mul nsw i32 %i.l, %i.q
  %i.t = mul i32 %i.s, %i.r
  %i.u = add i32 %i.t, 4
  %i.v = lshr i32 %i.u, 3
  %i.w = and i32 %i.v, 16383
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !39
  %i.aa = load ptr, ptr %3, align 8, !tbaa !42
  %i.ab = zext i32 %4 to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ab
  store i16 %i.z, ptr %i.ac, align 2, !tbaa !39
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !8, i64 0}
!10 = !{!"p1 _ZTS15jpeg_memory_mgr", !8, i64 0}
!11 = !{!"p1 _ZTS17jpeg_progress_mgr", !8, i64 0}
!12 = !{!"p1 _ZTS15jpeg_source_mgr", !8, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!"any p2 pointer", !8, i64 0}
!15 = !{!"p2 omnipotent char", !14, i64 0}
!16 = !{!"p1 int", !8, i64 0}
!17 = !{!"short", !4, i64 0}
!18 = !{!"p1 _ZTS18jpeg_marker_struct", !8, i64 0}
!19 = !{!"p1 omnipotent char", !8, i64 0}
!20 = !{!"p1 _ZTS18jpeg_decomp_master", !8, i64 0}
!21 = !{!"p1 _ZTS22jpeg_d_main_controller", !8, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_coef_controller", !8, i64 0}
end_hunk_0
