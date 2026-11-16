Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/butteraugli?download=true
inline.NumInlined: 2552
inline.NumDeleted: 242
loop-unroll.NumCompletelyUnrolled: 73
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 140
begin_hunk_0_@_ZN3jxl6N_SSE29MaltaUnitIN3hwy6N_SSE24SimdIfLm1ELi0EEEEEDTcl4ZerocvT__EEENS_8MaltaTagES6_PKfl:bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.fb = load float, ptr %i.fa, align 1, !tbaa !79, !alias.scope !2354
  %i.fc = getelementptr inbounds i8, ptr %i.x, i64 -12
  %i.fd = load float, ptr %i.fc, align 1, !tbaa !79, !alias.scope !2355
  %i.fe = load <2 x float>, ptr %i.cu, align 1, !tbaa !79 ; 2 uses
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.fg = shufflevector <4 x float> %i.bq, <4 x float> %i.ff, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fh = fadd <4 x float> %i.fg, %i.bn
  %i.fi = fadd <4 x float> %i.bu, %i.fh           ; 2 uses
  %i.fj = fmul <4 x float> %i.fi, %i.fi           ; 4 uses
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fl = shufflevector <4 x float> %i.fj, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 5, i32 6, i32 7>
  %i.fm = fadd <4 x float> %i.fk, %i.fl
  %i.fn = shufflevector <4 x float> %i.fj, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 3, i32 5, i32 6, i32 7>
  %i.fo = fadd <4 x float> %i.fm, %i.fn
  %i.fp = shufflevector <4 x float> %i.fj, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.fq = fadd <4 x float> %i.fo, %i.fp
  %i.fr = shufflevector <4 x float> %i.dw, <4 x float> %i.ff, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.fs = insertelement <4 x float> %i.fr, float %i.ck, i64 2
  %i.ft = insertelement <4 x float> %i.fs, float %i.db, i64 3
  %i.fu = fadd <4 x float> %i.dv, %i.ft           ; 2 uses
  %i.fv = fadd <4 x float> %i.dr, %i.fu
  %i.fw = fadd <4 x float> %i.fv, %i.ei
  %i.fx = fadd <4 x float> %i.em, %i.fw           ; 2 uses
  %i.fy = fmul <4 x float> %i.fx, %i.fx           ; 4 uses
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.ga = fadd <4 x float> %i.fq, %i.fz
  %i.gb = shufflevector <4 x float> %i.fy, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 5, i32 6, i32 7> ; 2 uses
  %i.gc = fadd <4 x float> %i.ga, %i.gb
  %i.gd = shufflevector <4 x float> %i.fy, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.ge = fadd <4 x float> %i.gc, %i.gd
  %i.gf = shufflevector <4 x float> %i.fy, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 3, i32 5, i32 6, i32 7> ; 2 uses
  %i.gg = fadd <4 x float> %i.ge, %i.gf
  %i.gh = insertelement <4 x float> %i.dy, float %i.eq, i64 0
  %i.gi = insertelement <4 x float> %i.gh, float %i.eu, i64 1
  %i.gj = insertelement <4 x float> %i.gi, float %i.db, i64 3
  %i.gk = insertelement <4 x float> poison, float %i.co, i64 0
  %i.gl = insertelement <4 x float> %i.gk, float %i.cc, i64 1
  %i.gm = insertelement <4 x float> %i.gl, float %i.ey, i64 2
  %i.gn = insertelement <4 x float> %i.gm, float %i.fd, i64 3
  %i.go = fadd <4 x float> %i.gj, %i.gn
  %i.gp = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 3, i32 1>
  %i.gq = fadd <4 x float> %i.gp, %i.go
  %i.gr = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.gs = insertelement <4 x float> %i.gr, float %i.ca, i64 1
  %i.gt = insertelement <4 x float> %i.gs, float %i.ew, i64 2
  %i.gu = insertelement <4 x float> %i.gt, float %i.fb, i64 3
  %i.gv = insertelement <4 x float> %i.ea, float %i.eo, i64 0
  %i.gw = insertelement <4 x float> %i.gv, float %i.es, i64 1
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> %i.ff, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.gy = fadd <4 x float> %i.gu, %i.gx
  %i.gz = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ha = insertelement <2 x float> %i.gz, float %i.aq, i64 1
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hc = fadd <4 x float> %i.hb, %i.gq
  %i.hd = fadd <4 x float> %i.gy, %i.hc           ; 2 uses
  %i.he = fmul <4 x float> %i.hd, %i.hd           ; 4 uses
  %i.hf = shufflevector <4 x float> %i.he, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hg = fadd <4 x float> %i.gg, %i.hf
  %i.hh = shufflevector <4 x float> %i.he, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.hi = fadd <4 x float> %i.hg, %i.hh
  %i.hj = shufflevector <4 x float> %i.he, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 5, i32 6, i32 7>
  %i.hk = fadd <4 x float> %i.hi, %i.hj
  %i.hl = shufflevector <4 x float> %i.he, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 3, i32 5, i32 6, i32 7>
  %i.hm = fadd <4 x float> %i.hk, %i.hl
  %i.hn = fadd <4 x float> %i.hm, %i.gf
  %i.ho = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.hp = load float, ptr %i.ho, align 1, !tbaa !79, !alias.scope !2356
  %i.hq = getelementptr inbounds i8, ptr %i.s, i64 -12
  %i.hr = load float, ptr %i.hq, align 1, !tbaa !79, !alias.scope !2357
  %i.hs = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.ht = load float, ptr %i.hs, align 1, !tbaa !79, !alias.scope !2358
  %i.hu = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.hv = load float, ptr %i.hu, align 1, !tbaa !79, !alias.scope !2359
  %.scalar588 = fadd float %i.hp, %i.hr
  %i.hw = extractelement <4 x float> %i.fu, i64 1
  %.scalar590 = fadd float %i.hw, %.scalar588
  %.scalar591 = fadd float %i.ez, %i.ht
  %.scalar592 = fadd float %i.cy, %.scalar591
  %.scalar593 = fadd float %.scalar590, %.scalar592
  %.scalar594 = fadd float %i.hv, %.scalar593     ; 2 uses
  %i.hx = fmul float %.scalar594, %.scalar594
  %i.hy = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.hx, i64 0
  %i.hz = fadd <4 x float> %i.hn, %i.hy
  %i.ia = fadd <4 x float> %i.gb, %i.hz
  %i.ib = fadd <4 x float> %i.fz, %i.ia
  ret <4 x float> %i.ib
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef float @_ZN3jxl6N_SSE2L15PaddedMaltaUnitINS_10MaltaTagLFEEEfRKNS_5PlaneIfEEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #42 {
bb.a:
  %i.a = alloca [108 x float], align 16           ; 39 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !69   ; 3 uses
  %i.f = mul i64 %i.e, %2
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.g, i64 64) ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1
  %i.i = icmp ugt i64 %1, 3
  %i.j = icmp ugt i64 %2, 3
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 8, !tbaa !65
  %i.l = zext i32 %i.k to i64
  %i.m = add nsw i64 %i.l, -4
  %i.n = icmp ult i64 %1, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !67
  %i.q = zext i32 %i.p to i64
  %i.r = add nsw i64 %i.q, -4
  %i.s = icmp ult i64 %2, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = lshr i64 %i.e, 2
  %i.u = tail call <4 x float> @_ZN3jxl6N_SSE29MaltaUnitIN3hwy6N_SSE24SimdIfLm1ELi0EEEEEDTcl4ZerocvT__EEENS_10MaltaTagLFES6_PKfl(ptr noundef nonnull %i.h, i64 noundef %i.t) #49
  %i.v = extractelement <4 x float> %i.u, i64 0
  br label %bb.ah

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.w = trunc i64 %2 to i32
  %i.x = add i32 %i.w, -4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = trunc i64 %1 to i32                     ; 10 uses
  %i.ab = add i32 %i.aa, -4                       ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 0
  %i.ad = load i32, ptr %0, align 8
  %.not50 = icmp ule i32 %i.ad, %i.ab
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = add i32 %i.aa, -3                       ; 3 uses
  %i.ag = icmp slt i32 %i.af, 0
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = add i32 %i.aa, -2                       ; 3 uses
  %i.aj = icmp slt i32 %i.ai, 0
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = add i32 %i.aa, -1                       ; 3 uses
  %i.am = icmp slt i32 %i.al, 0
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = icmp slt i32 %i.aa, 0
  %i.ap = and i64 %1, 2147483647
  %i.aq = add i32 %i.aa, 1                        ; 3 uses
  %i.ar = icmp slt i32 %i.aq, 0
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = add i32 %i.aa, 2                        ; 3 uses
  %i.au = icmp slt i32 %i.at, 0
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = add i32 %i.aa, 3                        ; 3 uses
  %i.ax = icmp slt i32 %i.aw, 0
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = add i32 %i.aa, 4                        ; 3 uses
  %i.ba = icmp slt i32 %i.az, 0
  %i.bb = zext nneg i32 %i.az to i64
  %brmerge = select i1 %i.ac, i1 true, i1 %.not50
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.bd = load float, ptr %i.bc, align 16, !tbaa !79, !alias.scope !2399 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.bf = load float, ptr %i.be, align 16, !tbaa !79, !alias.scope !2400
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.bi = load float, ptr %i.bh, align 16, !tbaa !79, !alias.scope !2401
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !79, !alias.scope !2402
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 364
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !79, !alias.scope !2403
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 340
  %i.br = load float, ptr %i.bq, align 4, !tbaa !79, !alias.scope !2404
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 396
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.bu = load float, ptr %i.bt, align 16, !tbaa !79, !alias.scope !2405
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !79, !alias.scope !2406 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.by = load float, ptr %i.bx, align 16, !tbaa !79, !alias.scope !2407
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.ca = load float, ptr %i.bz, align 16, !tbaa !79, !alias.scope !2408
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.cc = load float, ptr %i.bg, align 8, !tbaa !79, !alias.scope !2409
  %i.cd = load <4 x float>, ptr %i.bp, align 8, !tbaa !79, !alias.scope !2410 ; 2 uses
  %i.ce = load <3 x float>, ptr %i.bs, align 4, !tbaa !79, !alias.scope !2410
  %i.cf = load float, ptr %i.cb, align 8, !tbaa !79, !alias.scope !2411 ; 2 uses
  %i.cg = shufflevector <4 x float> %i.cd, <4 x float> poison, <8 x i32> <i32 poison, i32 2, i32 poison, i32 0, i32 1, i32 3, i32 poison, i32 poison>
  %i.ch = insertelement <8 x float> %i.cg, float %i.cc, i64 0
  %i.ci = insertelement <8 x float> %i.ch, float %i.bm, i64 2
  %i.cj = insertelement <8 x float> %i.ci, float %i.bw, i64 6
  %i.ck = insertelement <8 x float> %i.cj, float %i.cf, i64 7 ; 2 uses
  %i.cl = shufflevector <3 x float> %i.ce, <3 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 0, i32 2, i32 poison, i32 poison>
  %i.cm = insertelement <8 x float> %i.cl, float %i.bo, i64 2
  %i.cn = insertelement <8 x float> %i.cm, float %i.br, i64 3
  %i.co = insertelement <8 x float> %i.cn, float %i.by, i64 6
  %i.cp = fadd <8 x float> %i.ck, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !79, !alias.scope !2412 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !79, !alias.scope !2413
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !79, !alias.scope !2414
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.db = load float, ptr %i.da, align 8, !tbaa !79, !alias.scope !2415
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !79, !alias.scope !2416
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.df = load float, ptr %i.de, align 8, !tbaa !79, !alias.scope !2417
  %i.dg = load <29 x float>, ptr %i.bk, align 8, !tbaa !79, !alias.scope !2410 ; 2 uses
  %i.dh = load <2 x float>, ptr %i.bj, align 4, !tbaa !79, !alias.scope !2410 ; 2 uses
  %i.di = load <2 x float>, ptr %i.cx, align 4, !tbaa !79, !alias.scope !2410
  %i.dj = load <8 x float>, ptr %i.cu, align 8, !tbaa !79, !alias.scope !2410 ; 3 uses
  %i.dk = load <9 x float>, ptr %i.cy, align 16, !tbaa !79, !alias.scope !2410 ; 2 uses
  %i.dl = load <4 x float>, ptr %i.cz, align 8, !tbaa !79, !alias.scope !2410 ; 2 uses
  %i.dm = shufflevector <9 x float> %i.dk, <9 x float> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 7, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dn = insertelement <16 x float> %i.dm, float %i.ct, i64 8
  %i.do = insertelement <16 x float> %i.dn, float %i.cw, i64 9
  %i.dp = insertelement <16 x float> %i.do, float %i.cr, i64 12
  %i.dq = shufflevector <9 x float> %i.dk, <9 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.dr = shufflevector <16 x float> %i.dp, <16 x float> %i.dq, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 12, i32 24, i32 poison, i32 poison>
  %i.ds = shufflevector <4 x float> %i.cd, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.dt = shufflevector <16 x float> %i.dr, <16 x float> %i.ds, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 19, i32 17>
  %i.du = shufflevector <29 x float> %i.dg, <29 x float> poison, <16 x i32> <i32 28, i32 2, i32 0, i32 4, i32 3, i32 1, i32 12, i32 18, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <16 x float> %i.du, <16 x float> %i.dt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.dw = insertelement <16 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>, float %i.bi, i64 0
  %i.dx = insertelement <16 x float> %i.dw, float %i.cr, i64 7
  %i.dy = shufflevector <16 x float> %i.dx, <16 x float> %i.ds, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 19, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dz = insertelement <16 x float> %i.dy, float %i.bw, i64 10
  %i.ea = insertelement <16 x float> %i.dz, float %i.cf, i64 11
  %i.eb = shufflevector <2 x float> %i.di, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ec = shufflevector <16 x float> %i.ea, <16 x float> %i.eb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 17, i32 poison, i32 poison, i32 poison>
  %i.ed = insertelement <16 x float> %i.ec, float %i.db, i64 14
  %i.ee = insertelement <16 x float> %i.ed, float %i.df, i64 15
  %i.ef = shufflevector <16 x float> %i.ee, <16 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 10, i32 14, i32 15>
  %i.eg = fadd <16 x float> %i.dv, %i.ef
  %i.eh = shufflevector <16 x float> %i.dv, <16 x float> %i.dq, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 6, i32 12, i32 16>
  %i.ei = insertelement <8 x float> %i.eh, float %i.bf, i64 0
  %i.ej = insertelement <8 x float> %i.ei, float %i.bd, i64 1
  %i.ek = insertelement <8 x float> %i.ej, float %i.ca, i64 2
  %i.el = shufflevector <8 x float> %i.ek, <8 x float> poison, <29 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.em = shufflevector <29 x float> %i.el, <29 x float> %i.dg, <16 x i32> <i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 30, i32 4, i32 5, i32 6, i32 7, i32 5, i32 30, i32 4>
  %i.en = shufflevector <2 x float> %i.dh, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eo = shufflevector <8 x float> %i.en, <8 x float> %i.dj, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 8, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %3 = shufflevector <8 x float> %i.ck, <8 x float> %i.cp, <16 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ep = shufflevector <16 x float> %3, <16 x float> %i.eo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eq = shufflevector <16 x float> %i.ep, <16 x float> %i.eb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.er = shufflevector <8 x float> %i.dj, <8 x float> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.es = shufflevector <16 x float> %i.eq, <16 x float> %i.er, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 22, i32 poison, i32 poison>
  %i.et = shufflevector <4 x float> %i.dl, <4 x float> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eu = shufflevector <16 x float> %i.es, <16 x float> %i.et, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 13, i32 16, i32 poison>
  %i.ev = insertelement <16 x float> %i.eu, float %i.dd, i64 15
  %i.ew = shufflevector <16 x float> %i.ev, <16 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 7, i32 13, i32 14, i32 15>
  %i.ex = fadd <16 x float> %i.em, %i.ew
  %i.ey = shufflevector <4 x float> %i.dl, <4 x float> poison, <7 x i32> <i32 0, i32 1, i32 2, i32 3, i32 3, i32 1, i32 poison> ; 2 uses
  %i.ez = insertelement <7 x float> %i.ey, float %i.bd, i64 0
  %i.fa = shufflevector <7 x float> %i.ez, <7 x float> %i.ey, <7 x i32> <i32 0, i32 9, i32 poison, i32 poison, i32 4, i32 5, i32 poison>
  %i.fb = shufflevector <2 x float> %i.dh, <2 x float> poison, <7 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <7 x float> %i.fa, <7 x float> %i.fb, <8 x i32> <i32 0, i32 1, i32 7, i32 poison, i32 4, i32 5, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x float> %i.fc, <8 x float> %i.dj, <7 x i32> <i32 0, i32 1, i32 2, i32 9, i32 4, i32 5, i32 poison>
  %i.fe = insertelement <7 x float> %i.fd, float %i.bu, i64 6
  %i.ff = shufflevector <7 x float> %i.fe, <7 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  %i.fg = fadd <16 x float> %i.ff, %i.eg
  %i.fh = fadd <16 x float> %i.ex, %i.fg          ; 2 uses
  %i.fi = fmul <16 x float> %i.fh, %i.fh          ; 16 uses
  %i.fj = extractelement <16 x float> %i.fi, i64 0
  %i.fk = extractelement <16 x float> %i.fi, i64 1
  %i.fl = fadd float %i.fj, %i.fk
  %i.fm = extractelement <16 x float> %i.fi, i64 2
  %i.fn = fadd float %i.fl, %i.fm
  %i.fo = extractelement <16 x float> %i.fi, i64 3
  %i.fp = fadd float %i.fn, %i.fo
  %i.fq = extractelement <16 x float> %i.fi, i64 4
  %i.fr = fadd float %i.fp, %i.fq
  %i.fs = extractelement <16 x float> %i.fi, i64 5
  %i.ft = fadd float %i.fr, %i.fs
  %i.fu = extractelement <16 x float> %i.fi, i64 6
  %i.fv = fadd float %i.ft, %i.fu
  %i.fw = extractelement <16 x float> %i.fi, i64 7
  %i.fx = fadd float %i.fv, %i.fw
  %i.fy = extractelement <16 x float> %i.fi, i64 8
  %i.fz = fadd float %i.fx, %i.fy
  %i.ga = extractelement <16 x float> %i.fi, i64 9
  %i.gb = fadd float %i.fz, %i.ga
  %i.gc = extractelement <16 x float> %i.fi, i64 10
  %i.gd = fadd float %i.gb, %i.gc
  %i.ge = extractelement <16 x float> %i.fi, i64 11
  %i.gf = fadd float %i.gd, %i.ge
  %i.gg = extractelement <16 x float> %i.fi, i64 12
  %i.gh = fadd float %i.gf, %i.gg
  %i.gi = extractelement <16 x float> %i.fi, i64 13
  %i.gj = fadd float %i.gh, %i.gi
  %i.gk = extractelement <16 x float> %i.fi, i64 14
  %i.gl = fadd float %i.gj, %i.gk
  %i.gm = extractelement <16 x float> %i.fi, i64 15
  %i.gn = fadd float %i.gl, %i.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.ah

bb.g:                                             ; preds = %bb.e, %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit
  %indvar = phi i64 [ 0, %bb.e ], [ %indvar.next, %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit ] ; 4 uses
  %i.go = trunc nuw nsw i64 %indvar to i32
  %i.gp = add i32 %i.x, %i.go                     ; 3 uses
  %i.gq = icmp sgt i32 %i.gp, -1
  %.not = icmp ugt i32 %i.z, %i.gp
  %or.cond55 = select i1 %i.gq, i1 %.not, i1 false
  br i1 %or.cond55, label %bb.h, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56: ; preds = %bb.g
  %i.gr = mul nuw nsw i64 %indvar, 48
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.gr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %scevgep, i8 0, i64 48, i1 false), !tbaa !58
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit

bb.h:                                             ; preds = %bb.g
  %i.gs = zext nneg i32 %i.gp to i64
  %i.gt = mul i64 %i.e, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gt ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gu, i64 64) ]
  %i.gv = mul nuw nsw i64 %indvar, 12             ; 10 uses
  br i1 %brmerge, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.ae
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !58
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink = phi float [ %i.gx, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gv
  store float %.sink, ptr %i.gy, align 16, !tbaa !58
  br i1 %i.ag, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gz = load i32, ptr %0, align 8, !tbaa !65
  %.not50.1 = icmp ugt i32 %i.gz, %i.af
  br i1 %.not50.1, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.ah
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !58
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sink73 = phi float [ %i.hb, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gv
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store float %.sink73, ptr %i.hd, align 4, !tbaa !58
  br i1 %i.aj, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.he = load i32, ptr %0, align 8, !tbaa !65
  %.not50.2 = icmp ugt i32 %i.he, %i.ai
  br i1 %.not50.2, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.ak
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !58
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.sink76 = phi float [ %i.hg, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gv
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store float %.sink76, ptr %i.hi, align 8, !tbaa !58
  br i1 %i.am, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hj = load i32, ptr %0, align 8, !tbaa !65
  %.not50.3 = icmp ugt i32 %i.hj, %i.al
  br i1 %.not50.3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.an
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !58
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.sink79 = phi float [ %i.hl, %bb.r ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.p ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gv
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  store float %.sink79, ptr %i.hn, align 4, !tbaa !58
  br i1 %i.ao, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ho = load i32, ptr %0, align 8, !tbaa !65
  %.not50.4 = icmp ugt i32 %i.ho, %i.aa
  br i1 %.not50.4, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.ap
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !58
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  %.sink82 = phi float [ %i.hq, %bb.u ], [ 0.000000e+00, %bb.t ], [ 0.000000e+00, %bb.s ]
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gv
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store float %.sink82, ptr %i.hs, align 16, !tbaa !58
  br i1 %i.ar, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ht = load i32, ptr %0, align 8, !tbaa !65
  %.not50.5 = icmp ugt i32 %i.ht, %i.aq
  br i1 %.not50.5, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.as
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !58
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.x
  %.sink85 = phi float [ %i.hv, %bb.x ], [ 0.000000e+00, %bb.w ], [ 0.000000e+00, %bb.v ]
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 20
  store float %.sink85, ptr %i.hx, align 4, !tbaa !58
  br i1 %i.au, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hy = load i32, ptr %0, align 8, !tbaa !65
  %.not50.6 = icmp ugt i32 %i.hy, %i.at
  br i1 %.not50.6, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.av
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !58
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %.sink88 = phi float [ %i.ia, %bb.aa ], [ 0.000000e+00, %bb.z ], [ 0.000000e+00, %bb.y ]
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gv
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  store float %.sink88, ptr %i.ic, align 8, !tbaa !58
  br i1 %i.ax, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.id = load i32, ptr %0, align 8, !tbaa !65
  %.not50.7 = icmp ugt i32 %i.id, %i.aw
  br i1 %.not50.7, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.ay
  %i.if = load float, ptr %i.ie, align 4, !tbaa !58
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
end_hunk_0
