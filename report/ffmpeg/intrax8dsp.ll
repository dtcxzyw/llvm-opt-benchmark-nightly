loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@spatial_compensation_0:bb.a
  %i.ew = lshr i32 %i.cz, %i.ev
  %i.ex = and i32 %i.eu, 1
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.fb = load i16, ptr %i.fa, align 8, !tbaa !17
  %i.fc = trunc nuw nsw i32 %i.ew to i16
  %i.fd = add i16 %i.fb, %i.fc
  store i16 %i.fd, ptr %i.fa, align 8, !tbaa !17
  %i.fe = trunc i64 %indvars.iv98 to i32
  %i.ff = add i32 %i.fe, -5
  %i.fg = tail call i32 @llvm.abs.i32(i32 %i.ff, i1 true) ; 2 uses
  %i.fh = lshr i32 %i.fg, 1
  %i.fi = lshr i32 %i.cz, %i.fh
  %i.fj = and i32 %i.fg, 1
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 10 ; 2 uses
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !17
  %i.fo = trunc nuw nsw i32 %i.fi to i16
  %i.fp = add i16 %i.fn, %i.fo
  store i16 %i.fp, ptr %i.fm, align 2, !tbaa !17
  %i.fq = trunc i64 %indvars.iv98 to i32
  %i.fr = add i32 %i.fq, -6
  %i.fs = tail call i32 @llvm.abs.i32(i32 %i.fr, i1 true) ; 2 uses
  %i.ft = lshr i32 %i.fs, 1
  %i.fu = lshr i32 %i.cz, %i.ft
  %i.fv = and i32 %i.fs, 1
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 12 ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 4, !tbaa !17
  %i.ga = trunc nuw nsw i32 %i.fu to i16
  %i.gb = add i16 %i.fz, %i.ga
  store i16 %i.gb, ptr %i.fy, align 4, !tbaa !17
  %i.gc = trunc i64 %indvars.iv98 to i32
  %i.gd = add i32 %i.gc, -7
  %i.ge = tail call i32 @llvm.abs.i32(i32 %i.gd, i1 true) ; 2 uses
  %i.gf = lshr i32 %i.ge, 1
  %i.gg = lshr i32 %i.cz, %i.gf
  %i.gh = and i32 %i.ge, 1
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 14 ; 2 uses
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !17
  %i.gm = trunc nuw nsw i32 %i.gg to i16
  %i.gn = add i16 %i.gl, %i.gm
  store i16 %i.gn, ptr %i.gk, align 2, !tbaa !17
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next99, 8
  br i1 %exitcond101.not, label %.preheader75, label %.preheader78, !llvm.loop !21

.preheader75:                                     ; preds = %.preheader78
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !16  ; 2 uses
  %i.gq = zext i8 %i.gp to i16
  %i.gr = shl nuw nsw i16 %i.gq, 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 2 uses
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !17
  %.tr = zext i8 %i.gp to i16
  %i.gu = shl nuw nsw i16 %.tr, 3                 ; 2 uses
  %i.gv = add i16 %i.gt, %i.gu
  store i16 %i.gv, ptr %i.gs, align 2, !tbaa !17
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 2 uses
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !17
  %i.gz = add i16 %i.gy, %i.gr
  store i16 %i.gz, ptr %i.gx, align 2, !tbaa !17
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 10 ; 2 uses
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !17
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.he = load <2 x i8>, ptr %i.ha, align 1, !tbaa !16
  %i.hf = load i8, ptr %i.ha, align 1, !tbaa !16
  %.tr126 = zext i8 %i.hf to i16
  %i.hg = shl nuw nsw i16 %.tr126, 2
  %i.hh = add i16 %i.hc, %i.hg
  store i16 %i.hh, ptr %i.hb, align 2, !tbaa !17
  %i.hi = zext <2 x i8> %i.he to <2 x i16>
  %i.hj = shl nuw nsw <2 x i16> %i.hi, splat (i16 3) ; 2 uses
  %i.hk = load <2 x i16>, ptr %i.gw, align 4, !tbaa !17
  %i.hl = shufflevector <2 x i16> %i.hj, <2 x i16> poison, <2 x i32> <i32 poison, i32 0>
  %i.hm = insertelement <2 x i16> %i.hl, i16 %i.gu, i64 0
  %i.hn = add <2 x i16> %i.hk, %i.hm
  store <2 x i16> %i.hn, ptr %i.gw, align 4, !tbaa !17
  %i.ho = load <2 x i16>, ptr %i.hd, align 4, !tbaa !17
  %i.hp = add <2 x i16> %i.ho, %i.hj
  store <2 x i16> %i.hp, ptr %i.hd, align 4, !tbaa !17
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !16
  %i.hs = zext i8 %i.hr to i16
  %i.ht = shl nuw nsw i16 %i.hs, 2
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 2 uses
  %.promoted.1 = load i16, ptr %i.hu, align 2, !tbaa !17
  %i.hv = add i16 %.promoted.1, %i.ht
  store i16 %i.hv, ptr %i.hu, align 2, !tbaa !17
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hy = load <4 x i16>, ptr %i.hw, align 16, !tbaa !17
  %i.hz = zext <4 x i16> %i.hy to <4 x i32>
  %i.ia = mul nuw nsw <4 x i32> %i.hz, splat (i32 181)
  %i.ib = add nuw nsw <4 x i32> %i.ia, splat (i32 128)
  %i.ic = lshr <4 x i32> %i.ib, splat (i32 8)
  %i.id = load <4 x i16>, ptr %i.b, align 16, !tbaa !17
  %i.ie = trunc <4 x i32> %i.ic to <4 x i16>
  %i.if = add <4 x i16> %i.id, %i.ie
  store <4 x i16> %i.if, ptr %i.b, align 16, !tbaa !17
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ih = load i16, ptr %i.ig, align 8, !tbaa !17
  %i.ii = zext i16 %i.ih to i32
  %i.ij = mul nuw nsw i32 %i.ii, 181
  %i.ik = add nuw nsw i32 %i.ij, 128
  %i.il = lshr i32 %i.ik, 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.in = load i16, ptr %i.im, align 8, !tbaa !17
  %i.io = trunc nuw i32 %i.il to i16
  %i.ip = add i16 %i.in, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !17
  %i.is = zext i16 %i.ir to i32
  %i.it = mul nuw nsw i32 %i.is, 181
  %i.iu = add nuw nsw i32 %i.it, 128
  %i.iv = lshr i32 %i.iu, 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !17
  %i.iy = trunc nuw i32 %i.iv to i16
  %i.iz = add i16 %i.ix, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !17
  %i.je = load i16, ptr %i.ja, align 4, !tbaa !17
  %i.jf = zext i16 %i.jd to i32
  %i.jg = zext i16 %i.je to i32
  %i.jh = mul nuw nsw i32 %i.jf, 181
  %i.ji = mul nuw nsw i32 %i.jg, 181
  %i.jj = insertelement <2 x i32> poison, i32 %i.ji, i64 0
  %i.jk = insertelement <2 x i32> %i.jj, i32 %i.jh, i64 1
  %i.jl = add nuw nsw <2 x i32> %i.jk, splat (i32 128)
  %i.jm = lshr <2 x i32> %i.jl, splat (i32 8)
  %i.jn = load <2 x i16>, ptr %i.jb, align 4, !tbaa !17
  %i.jo = trunc <2 x i32> %i.jm to <2 x i16>
  %i.jp = add <2 x i16> %i.jn, %i.jo
  store <2 x i16> %i.jp, ptr %i.jb, align 4, !tbaa !17
  %i.jq = load <8 x i16>, ptr %i.hx, align 16, !tbaa !17
  %i.jr = zext <8 x i16> %i.jq to <8 x i32>
  %i.js = mul nuw nsw <8 x i32> %i.jr, splat (i32 181)
  %i.jt = add nuw nsw <8 x i32> %i.js, splat (i32 128)
  %i.ju = lshr <8 x i32> %i.jt, splat (i32 8)
  %i.jv = load <8 x i16>, ptr %i.a, align 16, !tbaa !17
  %i.jw = trunc <8 x i32> %i.ju to <8 x i16>
  %i.jx = add <8 x i16> %i.jv, %i.jw
  store <8 x i16> %i.jx, ptr %i.a, align 16, !tbaa !17
  %i.jy = load <8 x i16>, ptr %i.b, align 16
  %i.jz = load <2 x i16>, ptr %i.jb, align 4, !tbaa !17
  %i.ka = shufflevector <2 x i16> %i.jz, <2 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %i.kb = insertelement <8 x i16> %i.ka, i16 %i.ip, i64 4
  %i.kc = insertelement <8 x i16> %i.kb, i16 %i.iz, i64 5
  %i.kd = shufflevector <8 x i16> %i.jy, <8 x i16> %i.kc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ke = zext <8 x i16> %i.kd to <8 x i32>
  br label %.preheader

.preheader:                                       ; preds = %.preheader75, %.preheader
  %indvars.iv122 = phi i64 [ 0, %.preheader75 ], [ %indvars.iv.next123, %.preheader ] ; 3 uses
  %.07389 = phi ptr [ %1, %.preheader75 ], [ %i.kw, %.preheader ] ; 2 uses
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv122
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !17
  %i.kh = zext i16 %i.kg to i32
  %.idx = shl nuw nsw i64 %indvars.iv122, 5
  %i.ki = getelementptr inbounds nuw i8, ptr @zero_prediction_weights, i64 %.idx
  %i.kj = load <16 x i16>, ptr %i.ki, align 16, !tbaa !17
  %i.kk = freeze <16 x i16> %i.kj
  %i.kl = bitcast <16 x i16> %i.kk to <8 x i32>   ; 2 uses
  %i.km = and <8 x i32> %i.kl, splat (i32 65535)
  %i.kn = lshr <8 x i32> %i.kl, splat (i32 16)
  %i.ko = mul nuw <8 x i32> %i.km, %i.ke
  %i.kp = insertelement <8 x i32> poison, i32 %i.kh, i64 0
  %i.kq = shufflevector <8 x i32> %i.kp, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.kr = mul nuw <8 x i32> %i.kn, %i.kq
  %i.ks = add nuw <8 x i32> %i.ko, splat (i32 32768)
  %i.kt = add <8 x i32> %i.ks, %i.kr
  %i.ku = lshr <8 x i32> %i.kt, splat (i32 16)
  %i.kv = trunc <8 x i32> %i.ku to <8 x i8>
  store <8 x i8> %i.kv, ptr %.07389, align 1, !tbaa !16
  %i.kw = getelementptr inbounds i8, ptr %.07389, i64 %2
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next123, 8
  br i1 %exitcond125.not, label %bb.c, label %.preheader, !llvm.loop !22

bb.c:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @spatial_compensation_1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) initializes((0, 8)) %1, i64 noundef %2) #2 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 21
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.c = load <8 x i8>, ptr %i.a, align 1, !tbaa !16 ; 4 uses
  %4 = load i8, ptr %3, align 1, !tbaa !16
  %5 = load i8, ptr %i.b, align 1, !tbaa !16
  store <8 x i8> %i.c, ptr %1, align 1, !tbaa !16
  %6 = getelementptr inbounds i8, ptr %1, i64 %2  ; 6 uses
  store i8 %5, ptr %6, align 1, !tbaa !16
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %4, ptr %7, align 1, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.e = extractelement <8 x i8> %i.c, i64 6
  %8 = extractelement <8 x i8> %i.c, i64 7
  %9 = shufflevector <8 x i8> %i.c, <8 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  store <4 x i8> %9, ptr %i.d, align 1, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i8 %i.g, ptr %i.h, align 1, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16    ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 7
  store i8 %i.j, ptr %i.k, align 1, !tbaa !16
  %i.l = getelementptr inbounds i8, ptr %6, i64 %2 ; 6 uses
  store <4 x i8> %9, ptr %i.l, align 1, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i8 %i.g, ptr %i.m, align 1, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  store i8 %i.j, ptr %i.n, align 1, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16    ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  store i8 %i.p, ptr %i.q, align 1, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16    ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 7
  store i8 %i.s, ptr %i.t, align 1, !tbaa !16
  %i.u = getelementptr inbounds i8, ptr %i.l, i64 %2 ; 9 uses
  store i8 %i.e, ptr %i.u, align 1, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 %8, ptr %i.v, align 1, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i8 %i.g, ptr %i.w, align 1, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  store i8 %i.j, ptr %i.x, align 1, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i8 %i.p, ptr %i.y, align 1, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  store i8 %i.s, ptr %i.z, align 1, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16  ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16  ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 7
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !16
  %i.ag = getelementptr inbounds i8, ptr %i.u, i64 %2 ; 9 uses
  store i8 %i.g, ptr %i.ag, align 1, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %i.j, ptr %i.ah, align 1, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  store i8 %i.p, ptr %i.ai, align 1, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  store i8 %i.s, ptr %i.aj, align 1, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i8 %i.ab, ptr %i.ak, align 1, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 5
  store i8 %i.ae, ptr %i.al, align 1, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  store i8 %i.ae, ptr %i.am, align 1, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 7
  store i8 %i.ae, ptr %i.an, align 1, !tbaa !16
  %i.ao = getelementptr inbounds i8, ptr %i.ag, i64 %2 ; 6 uses
  store i8 %i.p, ptr %i.ao, align 1, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 %i.s, ptr %i.ap, align 1, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i8 %i.ab, ptr %i.aq, align 1, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %i.as = insertelement <4 x i8> poison, i8 %i.ae, i64 0
  %i.at = shufflevector <4 x i8> %i.as, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i8> %i.at, ptr %i.ar, align 1, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 7
  store i8 %i.ae, ptr %i.au, align 1, !tbaa !16
  %i.av = getelementptr inbounds i8, ptr %i.ao, i64 %2 ; 6 uses
  store i8 %i.ab, ptr %i.av, align 1, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store <4 x i8> %i.at, ptr %i.aw, align 1, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 5
  store i8 %i.ae, ptr %i.ax, align 1, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  store i8 %i.ae, ptr %i.ay, align 1, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 7
  store i8 %i.ae, ptr %i.az, align 1, !tbaa !16
  %i.ba = getelementptr inbounds i8, ptr %i.av, i64 %2
  %i.bb = insertelement <8 x i8> poison, i8 %i.ae, i64 0
  %i.bc = shufflevector <8 x i8> %i.bb, <8 x i8> poison, <8 x i32> zeroinitializer
  store <8 x i8> %i.bc, ptr %i.ba, align 1, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @spatial_compensation_2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) initializes((0, 8)) %1, i64 noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.b = load i64, ptr %i.a, align 1, !tbaa !16
  store i64 %i.b, ptr %1, align 1, !tbaa !16
  %i.c = getelementptr inbounds i8, ptr %1, i64 %2 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.e = load i64, ptr %i.d, align 1, !tbaa !16
  store i64 %i.e, ptr %i.c, align 1, !tbaa !16
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %2 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i64, ptr %i.g, align 1, !tbaa !16
  store i64 %i.h, ptr %i.f, align 1, !tbaa !16
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %2 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.k = load i64, ptr %i.j, align 1, !tbaa !16
  store i64 %i.k, ptr %i.i, align 1, !tbaa !16
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %2 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.n = load i64, ptr %i.m, align 1, !tbaa !16
  store i64 %i.n, ptr %i.l, align 1, !tbaa !16
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %2 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.q = load i64, ptr %i.p, align 1, !tbaa !16
  store i64 %i.q, ptr %i.o, align 1, !tbaa !16
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %2 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 1, !tbaa !16
  store i64 %i.t, ptr %i.r, align 1, !tbaa !16
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.w = load i64, ptr %i.v, align 1, !tbaa !16
  store i64 %i.w, ptr %i.u, align 1, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @spatial_compensation_3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) initializes((0, 8)) %1, i64 noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.b = load i64, ptr %i.a, align 1, !tbaa !16
  store i64 %i.b, ptr %1, align 1, !tbaa !16
  %i.c = getelementptr inbounds i8, ptr %1, i64 %2 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.e = load i64, ptr %i.d, align 1, !tbaa !16   ; 2 uses
  store i64 %i.e, ptr %i.c, align 1, !tbaa !16
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %2 ; 2 uses
  store i64 %i.e, ptr %i.f, align 1, !tbaa !16
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %2 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.i = load i64, ptr %i.h, align 1, !tbaa !16   ; 2 uses
  store i64 %i.i, ptr %i.g, align 1, !tbaa !16
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %2 ; 2 uses
  store i64 %i.i, ptr %i.j, align 1, !tbaa !16
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %2 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i64, ptr %i.l, align 1, !tbaa !16   ; 2 uses
  store i64 %i.m, ptr %i.k, align 1, !tbaa !16
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %2 ; 2 uses
  store i64 %i.m, ptr %i.n, align 1, !tbaa !16
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.q = load i64, ptr %i.p, align 1, !tbaa !16
  store i64 %i.q, ptr %i.o, align 1, !tbaa !16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @spatial_compensation_4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2) #1 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.b = load <8 x i8>, ptr %i.a, align 1, !tbaa !16
  %i.c = zext <8 x i8> %i.b to <8 x i16>
  %i.d = add nuw nsw <8 x i16> %i.c, splat (i16 1)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.f = load <8 x i8>, ptr %i.e, align 1, !tbaa !16
  %i.g = zext <8 x i8> %i.f to <8 x i16>
  %i.h = add nuw nsw <8 x i16> %i.d, %i.g
  %i.i = lshr <8 x i16> %i.h, splat (i16 1)
  %i.j = trunc <8 x i16> %i.i to <8 x i8>         ; 8 uses
  store <8 x i8> %i.j, ptr %1, align 1, !tbaa !16
  %i.k = getelementptr inbounds i8, ptr %1, i64 %2 ; 2 uses
  store <8 x i8> %i.j, ptr %i.k, align 1, !tbaa !16
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %2 ; 2 uses
  store <8 x i8> %i.j, ptr %i.l, align 1, !tbaa !16
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %2 ; 2 uses
  store <8 x i8> %i.j, ptr %i.m, align 1, !tbaa !16
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %2 ; 2 uses
  store <8 x i8> %i.j, ptr %i.n, align 1, !tbaa !16
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %2 ; 2 uses
  store <8 x i8> %i.j, ptr %i.o, align 1, !tbaa !16
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %2 ; 2 uses
  store <8 x i8> %i.j, ptr %i.p, align 1, !tbaa !16
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %2
  store <8 x i8> %i.j, ptr %i.q, align 1, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @spatial_compensation_5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) initializes((0, 8)) %1, i64 noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load <4 x i8>, ptr %i.a, align 1, !tbaa !16
  store <4 x i8> %i.c, ptr %i.b, align 1, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.e = load i8, ptr %i.d, align 1, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.e, ptr %i.f, align 1, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.h, ptr %i.i, align 1, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.k, ptr %i.l, align 1, !tbaa !16
  %i.m = getelementptr inbounds i8, ptr %1, i64 %2 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load <8 x i8>, ptr %i.n, align 1, !tbaa !16 ; 3 uses
  %i.p = extractelement <8 x i8> %i.o, i64 1      ; 7 uses
  store i8 %i.p, ptr %1, align 1, !tbaa !16
  store <8 x i8> %i.o, ptr %i.m, align 1, !tbaa !16
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %2 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16
  store i8 %i.s, ptr %i.q, align 1, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.p, ptr %i.t, align 1, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.w = load <4 x i8>, ptr %i.u, align 1, !tbaa !16
  store <4 x i8> %i.w, ptr %i.v, align 1, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.y = load i8, ptr %i.x, align 1, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  store i8 %i.y, ptr %i.z, align 1, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 23
end_hunk_0
