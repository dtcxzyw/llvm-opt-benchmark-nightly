inline.NumInlined: 910
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZL21XXH3_len_129to240_64bPKhmS0_mm:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.13652 = phi i64 [ %i.ap, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %.03751 = phi i64 [ %i.ak, %.lr.ph.preheader ], [ %i.bh, %.lr.ph ]
  %i.aq = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.13652) #32, !srcloc !60 ; 2 uses
  %i.ar = shl nuw nsw i64 %indvars.iv, 4          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %2, i64 %i.ar     ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -125
  %.val48 = load i64, ptr %i.as, align 1, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.val47 = load i64, ptr %i.av, align 1, !tbaa !26
  %.val46 = load i64, ptr %i.au, align 1, !tbaa !26
  %i.aw = add i64 %.val46, %3
  %i.ax = xor i64 %i.aw, %.val48
  %i.ay = getelementptr i8, ptr %i.at, i64 -117
  %.val45 = load i64, ptr %i.ay, align 1, !tbaa !26
  %i.az = sub i64 %.val45, %3
  %i.ba = xor i64 %i.az, %.val47
  %i.bb = zext i64 %i.ax to i128
  %i.bc = zext i64 %i.ba to i128
  %i.bd = mul nuw i128 %i.bc, %i.bb               ; 2 uses
  %i.be = lshr i128 %i.bd, 64
  %i.bf = xor i128 %i.be, %i.bd
  %i.bg = trunc i128 %i.bf to i64
  %i.bh = add i64 %.03751, %i.bg                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.037.lcssa = phi i64 [ %i.ak, %bb.a ], [ %i.bh, %.lr.ph ]
  %.136.lcssa = phi i64 [ %i.ap, %bb.a ], [ %i.aq, %.lr.ph ]
  %i.bi = add i64 %.136.lcssa, %.037.lcssa        ; 2 uses
  %i.bj = lshr i64 %i.bi, 37
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = mul i64 %i.bk, 1609587791953885689      ; 2 uses
  %i.bm = lshr i64 %i.bl, 32
  %i.bn = xor i64 %i.bm, %i.bl
  ret i64 %i.bn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32>, <16 x i32>, <16 x i32>, i32 immarg) #28

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @_ZL22XXH3_len_129to240_128bPKhmS0_mm(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 129, 241) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #29 {
bb.a:
  %i.a = mul i64 %1, -7046029288634856825
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val71 = load i64, ptr %0, align 1, !tbaa !26  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val70 = load i64, ptr %i.c, align 1, !tbaa !26 ; 2 uses
  %.val69 = load i64, ptr %2, align 1, !tbaa !26
  %i.d = add i64 %.val69, %3
  %i.e = xor i64 %i.d, %.val71
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val68 = load i64, ptr %i.f, align 1, !tbaa !26
  %i.g = sub i64 %.val68, %3
  %i.h = xor i64 %i.g, %.val70
  %i.i = zext i64 %i.e to i128
  %i.j = zext i64 %i.h to i128
  %i.k = mul nuw i128 %i.j, %i.i                  ; 2 uses
  %i.l = lshr i128 %i.k, 64
  %i.m = xor i128 %i.l, %i.k
  %i.n = trunc i128 %i.m to i64
  %i.o = add i64 %i.a, %i.n
  %.val67 = load i64, ptr %i.b, align 1, !tbaa !26 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val66 = load i64, ptr %i.p, align 1, !tbaa !26 ; 2 uses
  %i.q = add i64 %.val66, %.val67
  %i.r = xor i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val63 = load i64, ptr %i.s, align 1, !tbaa !26
  %i.t = add i64 %.val63, %3
  %i.u = xor i64 %i.t, %.val67
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val62 = load i64, ptr %i.v, align 1, !tbaa !26
  %i.w = sub i64 %.val62, %3
  %i.x = xor i64 %i.w, %.val66
  %i.y = zext i64 %i.u to i128
  %i.z = zext i64 %i.x to i128
  %i.aa = mul nuw i128 %i.z, %i.y                 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %i.ad = trunc i128 %i.ac to i64
  %i.ae = add i64 %.val70, %.val71
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val71.1 = load i64, ptr %i.ag, align 1, !tbaa !26 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val70.1 = load i64, ptr %i.aj, align 1, !tbaa !26 ; 2 uses
  %.val69.1 = load i64, ptr %i.ai, align 1, !tbaa !26
  %i.ak = add i64 %.val69.1, %3
  %i.al = xor i64 %i.ak, %.val71.1
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val68.1 = load i64, ptr %i.am, align 1, !tbaa !26
  %i.an = sub i64 %.val68.1, %3
  %i.ao = xor i64 %i.an, %.val70.1
  %i.ap = zext i64 %i.al to i128
  %i.aq = zext i64 %i.ao to i128
  %i.ar = mul nuw i128 %i.aq, %i.ap               ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64
  %i.av = add i64 %i.r, %i.au
  %.val67.1 = load i64, ptr %i.ah, align 1, !tbaa !26 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val66.1 = load i64, ptr %i.aw, align 1, !tbaa !26 ; 2 uses
  %i.ax = add i64 %.val66.1, %.val67.1
  %i.ay = xor i64 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val63.1 = load i64, ptr %i.az, align 1, !tbaa !26
  %i.ba = add i64 %.val63.1, %3
  %i.bb = xor i64 %i.ba, %.val67.1
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val62.1 = load i64, ptr %i.bc, align 1, !tbaa !26
  %i.bd = sub i64 %.val62.1, %3
  %i.be = xor i64 %i.bd, %.val66.1
  %i.bf = zext i64 %i.bb to i128
  %i.bg = zext i64 %i.be to i128
  %i.bh = mul nuw i128 %i.bg, %i.bf               ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  %i.bl = add i64 %i.af, %i.bk
  %i.bm = add i64 %.val70.1, %.val71.1
  %i.bn = xor i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.val71.2 = load i64, ptr %i.bo, align 1, !tbaa !26 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val70.2 = load i64, ptr %i.br, align 1, !tbaa !26 ; 2 uses
  %.val69.2 = load i64, ptr %i.bq, align 1, !tbaa !26
  %i.bs = add i64 %.val69.2, %3
  %i.bt = xor i64 %i.bs, %.val71.2
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.val68.2 = load i64, ptr %i.bu, align 1, !tbaa !26
  %i.bv = sub i64 %.val68.2, %3
  %i.bw = xor i64 %i.bv, %.val70.2
  %i.bx = zext i64 %i.bt to i128
  %i.by = zext i64 %i.bw to i128
  %i.bz = mul nuw i128 %i.by, %i.bx               ; 2 uses
  %i.ca = lshr i128 %i.bz, 64
  %i.cb = xor i128 %i.ca, %i.bz
  %i.cc = trunc i128 %i.cb to i64
  %i.cd = add i64 %i.ay, %i.cc
  %.val67.2 = load i64, ptr %i.bp, align 1, !tbaa !26 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val66.2 = load i64, ptr %i.ce, align 1, !tbaa !26 ; 2 uses
  %i.cf = add i64 %.val66.2, %.val67.2
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.val63.2 = load i64, ptr %i.cg, align 1, !tbaa !26
  %i.ch = add i64 %.val63.2, %3
  %i.ci = xor i64 %i.ch, %.val67.2
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.val62.2 = load i64, ptr %i.cj, align 1, !tbaa !26
  %i.ck = sub i64 %.val62.2, %3
  %i.cl = xor i64 %i.ck, %.val66.2
  %i.cm = zext i64 %i.ci to i128
  %i.cn = zext i64 %i.cl to i128
  %i.co = mul nuw i128 %i.cn, %i.cm               ; 2 uses
  %i.cp = lshr i128 %i.co, 64
  %i.cq = xor i128 %i.cp, %i.co
  %i.cr = trunc i128 %i.cq to i64
  %i.cs = add i64 %i.bn, %i.cr
  %i.ct = add i64 %.val70.2, %.val71.2
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.val71.3 = load i64, ptr %i.cu, align 1, !tbaa !26 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val66.3 = load i64, ptr %i.cx, align 1, !tbaa !26 ; 2 uses
  %i.cy = insertelement <2 x i64> poison, i64 %i.cd, i64 0
  %i.cz = insertelement <2 x i64> %i.cy, i64 %i.cs, i64 1
  %i.da = insertelement <2 x i64> poison, i64 %i.cf, i64 0
  %i.db = insertelement <2 x i64> %i.da, i64 %i.ct, i64 1
  %i.dc = xor <2 x i64> %i.cz, %i.db
  %i.dd = load <2 x i64>, ptr %i.cw, align 1, !tbaa !26 ; 3 uses
  %i.de = load <4 x i64>, ptr %i.cv, align 1, !tbaa !26 ; 2 uses
  %i.df = shufflevector <4 x i64> %i.de, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.dg = insertelement <2 x i64> poison, i64 %3, i64 0
  %i.dh = shufflevector <2 x i64> %i.dg, <2 x i64> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.di = add <2 x i64> %i.df, %i.dh
  %i.dj = shufflevector <4 x i64> %i.de, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.dk = sub <2 x i64> %i.dj, %i.dh
  %i.dl = insertelement <2 x i64> %i.dd, i64 %.val66.3, i64 1
  %i.dm = xor <2 x i64> %i.dk, %i.dl
  %i.dn = zext <2 x i64> %i.dm to <2 x i128>
  %i.do = insertelement <2 x i64> %i.dd, i64 %.val71.3, i64 0
  %i.dp = xor <2 x i64> %i.di, %i.do
  %i.dq = zext <2 x i64> %i.dp to <2 x i128>
  %i.dr = mul nuw <2 x i128> %i.dn, %i.dq         ; 3 uses
  %4 = extractelement <2 x i128> %i.dr, i64 0
  %5 = lshr i128 %4, 64
  %6 = extractelement <2 x i128> %i.dr, i64 1
  %7 = lshr i128 %6, 64
  %8 = insertelement <2 x i128> poison, i128 %5, i64 0
  %9 = insertelement <2 x i128> %8, i128 %7, i64 1
  %i.ds = xor <2 x i128> %9, %i.dr
  %i.dt = trunc <2 x i128> %i.ds to <2 x i64>
  %i.du = add <2 x i64> %i.dc, %i.dt
  %i.dv = insertelement <2 x i64> poison, i64 %.val71.3, i64 0
  %i.dw = insertelement <2 x i64> %i.dv, i64 %.val66.3, i64 1
  %i.dx = add <2 x i64> %i.dd, %i.dw
  %i.dy = shufflevector <2 x i64> %i.dx, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.dz = xor <2 x i64> %i.du, %i.dy              ; 2 uses
  %i.ea = lshr <2 x i64> %i.dz, splat (i64 37)
  %i.eb = xor <2 x i64> %i.ea, %i.dz
  %i.ec = mul <2 x i64> %i.eb, splat (i64 1609587791953885689) ; 2 uses
  %i.ed = lshr <2 x i64> %i.ec, splat (i64 32)
  %i.ee = xor <2 x i64> %i.ed, %i.ec              ; 2 uses
  %.not99 = icmp samesign ult i64 %1, 160
  br i1 %.not99, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ei = load <2 x i64>, ptr %i.eh, align 1, !tbaa !26 ; 3 uses
  %i.ej = tail call <4 x i64> @llvm.masked.load.v4i64.p0(ptr nonnull align 1 %i.ef, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i64> poison), !tbaa !26
  %i.ek = shufflevector <4 x i64> %i.ej, <4 x i64> poison, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.el = load <4 x i64>, ptr %i.eg, align 1, !tbaa !26 ; 2 uses
  %i.em = shufflevector <4 x i64> %i.el, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.en = add <2 x i64> %i.em, %i.dh
  %i.eo = shufflevector <2 x i64> %i.ek, <2 x i64> %i.ei, <2 x i32> <i32 0, i32 3>
  %i.ep = xor <2 x i64> %i.en, %i.eo
  %i.eq = shufflevector <4 x i64> %i.el, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.er = sub <2 x i64> %i.eq, %i.dh
  %i.es = shufflevector <2 x i64> %i.ei, <2 x i64> %i.ek, <2 x i32> <i32 0, i32 3>
  %i.et = xor <2 x i64> %i.er, %i.es
  %i.eu = zext <2 x i64> %i.ep to <2 x i128>
  %i.ev = zext <2 x i64> %i.et to <2 x i128>
  %i.ew = mul nuw <2 x i128> %i.ev, %i.eu         ; 2 uses
  %i.ex = lshr <2 x i128> %i.ew, splat (i128 64)
  %i.ey = xor <2 x i128> %i.ex, %i.ew
  %i.ez = trunc <2 x i128> %i.ey to <2 x i64>
  %i.fa = add <2 x i64> %i.ee, %i.ez
  %i.fb = add <2 x i64> %i.ei, %i.ek
  %i.fc = shufflevector <2 x i64> %i.fb, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fd = xor <2 x i64> %i.fa, %i.fc              ; 2 uses
  %.not = icmp samesign ult i64 %1, 192
  br i1 %.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 35
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fh = load <2 x i64>, ptr %i.fg, align 1, !tbaa !26 ; 3 uses
  %i.fi = tail call <4 x i64> @llvm.masked.load.v4i64.p0(ptr nonnull align 1 %i.fe, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i64> poison), !tbaa !26
  %i.fj = shufflevector <4 x i64> %i.fi, <4 x i64> poison, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.fk = load <4 x i64>, ptr %i.ff, align 1, !tbaa !26 ; 2 uses
  %i.fl = shufflevector <4 x i64> %i.fk, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.fm = add <2 x i64> %i.fl, %i.dh
  %i.fn = shufflevector <2 x i64> %i.fj, <2 x i64> %i.fh, <2 x i32> <i32 0, i32 3>
  %i.fo = xor <2 x i64> %i.fm, %i.fn
  %i.fp = shufflevector <4 x i64> %i.fk, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fq = sub <2 x i64> %i.fp, %i.dh
  %i.fr = shufflevector <2 x i64> %i.fh, <2 x i64> %i.fj, <2 x i32> <i32 0, i32 3>
  %i.fs = xor <2 x i64> %i.fq, %i.fr
  %i.ft = zext <2 x i64> %i.fo to <2 x i128>
  %i.fu = zext <2 x i64> %i.fs to <2 x i128>
  %i.fv = mul nuw <2 x i128> %i.fu, %i.ft         ; 2 uses
  %i.fw = lshr <2 x i128> %i.fv, splat (i128 64)
  %i.fx = xor <2 x i128> %i.fw, %i.fv
  %i.fy = trunc <2 x i128> %i.fx to <2 x i64>
  %i.fz = add <2 x i64> %i.fd, %i.fy
  %i.ga = add <2 x i64> %i.fh, %i.fj
  %i.gb = shufflevector <2 x i64> %i.ga, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gc = xor <2 x i64> %i.fz, %i.gb              ; 2 uses
  %.not.1 = icmp samesign ult i64 %1, 224
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 67
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.gg = load <2 x i64>, ptr %i.gf, align 1, !tbaa !26 ; 3 uses
  %i.gh = tail call <4 x i64> @llvm.masked.load.v4i64.p0(ptr nonnull align 1 %i.gd, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i64> poison), !tbaa !26
  %i.gi = shufflevector <4 x i64> %i.gh, <4 x i64> poison, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.gj = load <4 x i64>, ptr %i.ge, align 1, !tbaa !26 ; 2 uses
  %i.gk = shufflevector <4 x i64> %i.gj, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.gl = add <2 x i64> %i.gk, %i.dh
  %i.gm = shufflevector <2 x i64> %i.gi, <2 x i64> %i.gg, <2 x i32> <i32 0, i32 3>
  %i.gn = xor <2 x i64> %i.gl, %i.gm
  %i.go = shufflevector <4 x i64> %i.gj, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.gp = sub <2 x i64> %i.go, %i.dh
  %i.gq = shufflevector <2 x i64> %i.gg, <2 x i64> %i.gi, <2 x i32> <i32 0, i32 3>
  %i.gr = xor <2 x i64> %i.gp, %i.gq
  %i.gs = zext <2 x i64> %i.gn to <2 x i128>
  %i.gt = zext <2 x i64> %i.gr to <2 x i128>
  %i.gu = mul nuw <2 x i128> %i.gt, %i.gs         ; 2 uses
  %i.gv = lshr <2 x i128> %i.gu, splat (i128 64)
  %i.gw = xor <2 x i128> %i.gv, %i.gu
  %i.gx = trunc <2 x i128> %i.gw to <2 x i64>
  %i.gy = add <2 x i64> %i.gc, %i.gx
  %i.gz = add <2 x i64> %i.gg, %i.gi
  %i.ha = shufflevector <2 x i64> %i.gz, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hb = xor <2 x i64> %i.gy, %i.ha
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %bb.a
  %i.hc = phi <2 x i64> [ %i.ee, %bb.a ], [ %i.fd, %.lr.ph ], [ %i.gc, %.lr.ph.1 ], [ %i.hb, %.lr.ph.2 ]
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -32
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 103
  %i.hg = load <4 x i64>, ptr %i.he, align 1, !tbaa !26 ; 4 uses
  %i.hh = load <4 x i64>, ptr %i.hf, align 1, !tbaa !26 ; 2 uses
  %i.hi = shufflevector <4 x i64> %i.hh, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.hj = sub <2 x i64> %i.hi, %i.dh
  %i.hk = shufflevector <4 x i64> %i.hg, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %i.hl = xor <2 x i64> %i.hj, %i.hk
  %i.hm = shufflevector <4 x i64> %i.hh, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.hn = add <2 x i64> %i.hm, %i.dh
  %i.ho = shufflevector <4 x i64> %i.hg, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %i.hp = xor <2 x i64> %i.hn, %i.ho
  %i.hq = zext <2 x i64> %i.hl to <2 x i128>
  %i.hr = zext <2 x i64> %i.hp to <2 x i128>
  %i.hs = mul nuw <2 x i128> %i.hr, %i.hq         ; 2 uses
  %i.ht = lshr <2 x i128> %i.hs, splat (i128 64)
  %i.hu = xor <2 x i128> %i.ht, %i.hs
  %i.hv = trunc <2 x i128> %i.hu to <2 x i64>
  %i.hw = add <2 x i64> %i.hc, %i.hv
  %i.hx = shufflevector <4 x i64> %i.hg, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.hy = shufflevector <4 x i64> %i.hg, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.hz = add <2 x i64> %i.hx, %i.hy
  %i.ia = xor <2 x i64> %i.hw, %i.hz              ; 2 uses
  %i.ib = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ia) ; 2 uses
  %i.ic = mul <2 x i64> %i.ia, <i64 -7046029288634856825, i64 -8796714831421723037> ; 2 uses
  %i.id = sub i64 %1, %3
  %i.ie = mul i64 %i.id, -4417276706812531889
  %i.if = extractelement <2 x i64> %i.ic, i64 0
  %i.ig = add i64 %i.if, %i.ie
  %i.ih = extractelement <2 x i64> %i.ic, i64 1
  %i.ii = add i64 %i.ig, %i.ih                    ; 2 uses
  %i.ij = lshr i64 %i.ib, 37
  %i.ik = xor i64 %i.ij, %i.ib
  %i.il = mul i64 %i.ik, 1609587791953885689      ; 2 uses
  %i.im = lshr i64 %i.il, 32
  %i.in = xor i64 %i.im, %i.il
  %i.io = lshr i64 %i.ii, 37
  %i.ip = xor i64 %i.io, %i.ii
  %i.iq = mul i64 %i.ip, 1609587791953885689      ; 2 uses
  %i.ir = lshr i64 %i.iq, 32
  %i.is = xor i64 %i.ir, %i.iq
  %i.it = sub i64 0, %i.is
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.in, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.it, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.fshl.v4i64(<4 x i64>, <4 x i64>, <4 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.bswap.v4i64(<4 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i64> @llvm.masked.load.v4i64.p0(ptr captures(none), <4 x i1>, <4 x i64>) #31

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
end_hunk_0
