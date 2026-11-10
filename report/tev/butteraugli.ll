Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/butteraugli?download=true
inline.NumInlined: 2552
inline.NumDeleted: 242
loop-unroll.NumCompletelyUnrolled: 73
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 140
begin_hunk_0_@_ZN3jxl6N_SSE2L15PaddedMaltaUnitINS_8MaltaTagEEEfRKNS_5PlaneIfEEmm:bb.a
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit: ; preds = %bb.ae, %bb.af, %bb.ag
  %.sink94 = phi float [ %i.db, %bb.ag ], [ 0.000000e+00, %bb.af ], [ 0.000000e+00, %bb.ae ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store float %.sink94, ptr %i.dd, align 16, !tbaa !58
  %i.de = getelementptr [4 x i8], ptr %i.a, i64 %i.bm
  %i.df = getelementptr i8, ptr %i.de, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.df, i8 0, i64 12, i1 false), !tbaa !58
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit:   ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56, %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, 9
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !32

bb.ah:                                            ; preds = %bb.f, %bb.d
  %.0 = phi float [ %i.v, %bb.d ], [ %i.be, %bb.f ]
  ret float %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden <4 x float> @_ZN3jxl6N_SSE29MaltaUnitIN3hwy6N_SSE24SimdIfLm1ELi0EEEEEDTcl4ZerocvT__EEENS_8MaltaTagES6_PKfl(ptr noalias noundef %0, i64 noundef %1) local_unnamed_addr #21 comdat {
bb.a:
  %i.a = mul nsw i64 %1, 3                        ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  %i.c = load float, ptr %i.b, align 1, !tbaa !79, !alias.scope !2311
  %i.d = getelementptr inbounds i8, ptr %0, i64 -12
  %i.e = load float, ptr %i.d, align 1, !tbaa !79, !alias.scope !2312
  %i.f = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.g = load float, ptr %i.f, align 1, !tbaa !79, !alias.scope !2313
  %i.h = getelementptr inbounds i8, ptr %0, i64 -4
  %i.i = load float, ptr %i.h, align 1, !tbaa !79, !alias.scope !2314 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load float, ptr %i.k, align 1, !tbaa !79, !alias.scope !2315
  %.scalar = fadd float %i.c, %i.e
  %.scalar514 = fadd float %i.g, %i.i
  %.scalar515 = fadd float %.scalar, %.scalar514
  %i.m = sub i64 0, %i.a
  %i.n = getelementptr inbounds [4 x i8], ptr %0, i64 %i.m ; 8 uses
  %i.o = sub i64 0, %1                            ; 7 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.o ; 3 uses
  %i.q = load float, ptr %i.p, align 1, !tbaa !79, !alias.scope !2316
  %i.r = load float, ptr %i.n, align 1, !tbaa !79, !alias.scope !2317
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.o ; 5 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.o ; 7 uses
  %i.u = load float, ptr %i.t, align 1, !tbaa !79, !alias.scope !2318
  %i.v = load float, ptr %i.s, align 1, !tbaa !79, !alias.scope !2319 ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 5 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %1 ; 7 uses
  %i.y = load float, ptr %i.x, align 1, !tbaa !79, !alias.scope !2320
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a ; 8 uses
  %i.aa = load float, ptr %i.z, align 1, !tbaa !79, !alias.scope !2321
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %1 ; 3 uses
  %i.ac = load float, ptr %i.ab, align 1, !tbaa !79, !alias.scope !2322
  %.scalar521 = fadd float %i.q, %i.r
  %.scalar522 = fadd float %i.u, %i.v
  %.scalar523 = fadd float %.scalar521, %.scalar522
  %i.ad = getelementptr inbounds i8, ptr %i.n, i64 -12
  %i.ae = load float, ptr %i.ad, align 1, !tbaa !79, !alias.scope !2323
  %i.af = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.ag = load float, ptr %i.af, align 1, !tbaa !79, !alias.scope !2324
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ai = load float, ptr %i.ah, align 1, !tbaa !79, !alias.scope !2325
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ak = load float, ptr %i.aj, align 1, !tbaa !79, !alias.scope !2326
  %.scalar532 = fadd float %i.ae, %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.am = load float, ptr %i.al, align 1, !tbaa !79, !alias.scope !2327
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ao = load float, ptr %i.an, align 1, !tbaa !79, !alias.scope !2328
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.aq = load float, ptr %i.ap, align 1, !tbaa !79, !alias.scope !2329 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.as = load float, ptr %i.ar, align 1, !tbaa !79, !alias.scope !2330
  %i.at = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.au = load float, ptr %i.at, align 1, !tbaa !79, !alias.scope !2331
  %i.av = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.aw = load float, ptr %i.av, align 1, !tbaa !79, !alias.scope !2332
  %.scalar538 = fadd float %i.am, %i.ao
  %i.ax = load <4 x float>, ptr %0, align 1, !tbaa !79 ; 4 uses
  %i.ay = load <2 x float>, ptr %i.w, align 1, !tbaa !79
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 0, i32 0>
  %i.ba = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.bb = insertelement <4 x float> %i.ba, float %i.as, i64 1
  %i.bc = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bd = shufflevector <4 x float> %i.bb, <4 x float> %i.bc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.be = fadd <4 x float> %i.az, %i.bd           ; 3 uses
  %i.bf = insertelement <4 x float> %i.ax, float %i.au, i64 1
  %i.bg = insertelement <4 x float> %i.bf, float %i.y, i64 2
  %i.bh = insertelement <4 x float> %i.bg, float %i.ai, i64 3
  %i.bi = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bj = insertelement <4 x float> %i.bi, float %i.aw, i64 1
  %i.bk = insertelement <4 x float> %i.bj, float %i.aa, i64 2
  %i.bl = insertelement <4 x float> %i.bk, float %i.ak, i64 3
  %i.bm = fadd <4 x float> %i.bh, %i.bl           ; 3 uses
  %i.bn = fadd <4 x float> %i.be, %i.bm
  %i.bo = insertelement <4 x float> poison, float %.scalar515, i64 0
  %i.bp = insertelement <4 x float> %i.bo, float %i.aq, i64 1
  %i.bq = insertelement <4 x float> %i.bp, float %.scalar523, i64 2
  %i.br = insertelement <4 x float> poison, float %i.l, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %.scalar538, i64 1
  %i.bt = insertelement <4 x float> %i.bs, float %i.ac, i64 2
  %i.bu = insertelement <4 x float> %i.bt, float %.scalar532, i64 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.bw = load float, ptr %i.bv, align 1, !tbaa !79, !alias.scope !2333
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.by = load float, ptr %i.bx, align 1, !tbaa !79, !alias.scope !2334
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ca = load float, ptr %i.bz, align 1, !tbaa !79, !alias.scope !2335 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.cc = load float, ptr %i.cb, align 1, !tbaa !79, !alias.scope !2336 ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ce = load float, ptr %i.cd, align 1, !tbaa !79, !alias.scope !2337
  %i.cf = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.cg = load float, ptr %i.cf, align 1, !tbaa !79, !alias.scope !2338
  %i.ch = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.ci = load float, ptr %i.ch, align 1, !tbaa !79, !alias.scope !2339
  %i.cj = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.ck = load float, ptr %i.cj, align 1, !tbaa !79, !alias.scope !2340
  %i.cl = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.cm = load float, ptr %i.cl, align 1, !tbaa !79, !alias.scope !2341 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.co = load float, ptr %i.cn, align 1, !tbaa !79, !alias.scope !2342 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.cq = load float, ptr %i.cp, align 1, !tbaa !79, !alias.scope !2343
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.cs = load float, ptr %i.cr, align 1, !tbaa !79, !alias.scope !2344
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.o
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.o
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.j, i64 %1
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.k, i64 %1
  %i.cx = load float, ptr %i.cw, align 1, !tbaa !79, !alias.scope !2345
  %i.cy = extractelement <4 x float> %i.bm, i64 0
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %1
  %i.da = getelementptr inbounds [4 x i8], ptr %i.f, i64 %1
  %i.db = load float, ptr %i.da, align 1, !tbaa !79, !alias.scope !2346 ; 2 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.o
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.o
  %i.de = load float, ptr %i.dd, align 1, !tbaa !79, !alias.scope !2347
  %i.df = load <2 x float>, ptr %i.ct, align 1, !tbaa !79
  %i.dg = load <2 x float>, ptr %i.cv, align 1, !tbaa !79 ; 2 uses
  %i.dh = load <2 x float>, ptr %i.cz, align 1, !tbaa !79
  %i.di = load <2 x float>, ptr %i.dc, align 1, !tbaa !79
  %i.dj = insertelement <4 x float> poison, float %i.v, i64 0
  %i.dk = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dl = shufflevector <4 x float> %i.dj, <4 x float> %i.dk, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dm = shufflevector <2 x float> %i.dh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dn = shufflevector <4 x float> %i.dl, <4 x float> %i.dm, <4 x i32> <i32 0, i32 1, i32 0, i32 4>
  %i.do = insertelement <4 x float> %i.dk, float %i.ca, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> %i.dm, <4 x i32> <i32 0, i32 1, i32 poison, i32 5>
  %i.dq = insertelement <4 x float> %i.dp, float %i.cm, i64 2
  %i.dr = fadd <4 x float> %i.dn, %i.dq
  %i.ds = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.dt = insertelement <4 x float> %i.ds, float %i.ci, i64 1
  %i.du = insertelement <4 x float> %i.dt, float %i.i, i64 2
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  %i.dw = insertelement <4 x float> poison, float %i.by, i64 0
  %i.dx = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.dy = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 3 uses
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ea = shufflevector <2 x float> %i.di, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 3 uses
  %i.eb = shufflevector <4 x float> %i.dz, <4 x float> %i.ea, <4 x i32> <i32 0, i32 1, i32 poison, i32 4>
  %i.ec = insertelement <4 x float> %i.eb, float %i.co, i64 2
  %i.ed = insertelement <4 x float> %i.dy, float %i.ce, i64 0
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> %i.ea, <4 x i32> <i32 0, i32 1, i32 poison, i32 5>
  %i.ef = insertelement <4 x float> %i.ee, float %i.cq, i64 2
  %i.eg = fadd <4 x float> %i.ec, %i.ef
  %i.eh = shufflevector <4 x float> %i.be, <4 x float> %i.bm, <4 x i32> <i32 2, i32 4, i32 2, i32 4>
  %i.ei = fadd <4 x float> %i.eh, %i.eg
  %i.ej = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.ek = insertelement <4 x float> %i.ej, float %i.cx, i64 1
  %i.el = insertelement <4 x float> %i.ek, float %i.cs, i64 2
  %i.em = insertelement <4 x float> %i.el, float %i.de, i64 3
  %i.en = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.eo = load float, ptr %i.en, align 1, !tbaa !79, !alias.scope !2348
  %i.ep = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.eq = load float, ptr %i.ep, align 1, !tbaa !79, !alias.scope !2349
  %i.er = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.es = load float, ptr %i.er, align 1, !tbaa !79, !alias.scope !2350
  %i.et = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.eu = load float, ptr %i.et, align 1, !tbaa !79, !alias.scope !2351
  %i.ev = getelementptr inbounds i8, ptr %i.t, i64 -12
  %i.ew = load float, ptr %i.ev, align 1, !tbaa !79, !alias.scope !2352
  %i.ex = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ey = load float, ptr %i.ex, align 1, !tbaa !79, !alias.scope !2353
  %i.ez = extractelement <2 x float> %i.dg, i64 0
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
  %2 = shufflevector <4 x float> %i.fj, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 5, i32 6, i32 7>
  %i.fl = fadd <4 x float> %i.fk, %2
  %3 = shufflevector <4 x float> %i.fj, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 3, i32 5, i32 6, i32 7>
  %i.fm = fadd <4 x float> %i.fl, %3
  %4 = shufflevector <4 x float> %i.fj, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.fn = fadd <4 x float> %i.fm, %4
  %i.fo = shufflevector <4 x float> %i.dw, <4 x float> %i.ff, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.fp = insertelement <4 x float> %i.fo, float %i.ck, i64 2
  %i.fq = insertelement <4 x float> %i.fp, float %i.db, i64 3
  %i.fr = fadd <4 x float> %i.dv, %i.fq           ; 2 uses
  %i.fs = fadd <4 x float> %i.dr, %i.fr
  %i.ft = fadd <4 x float> %i.fs, %i.ei
  %i.fu = fadd <4 x float> %i.em, %i.ft           ; 2 uses
  %i.fv = fmul <4 x float> %i.fu, %i.fu           ; 4 uses
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.fx = fadd <4 x float> %i.fn, %i.fw
  %5 = shufflevector <4 x float> %i.fv, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 5, i32 6, i32 7> ; 2 uses
  %i.fy = fadd <4 x float> %i.fx, %5
  %6 = shufflevector <4 x float> %i.fv, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.fz = fadd <4 x float> %i.fy, %6
  %7 = shufflevector <4 x float> %i.fv, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 3, i32 5, i32 6, i32 7> ; 2 uses
  %i.ga = fadd <4 x float> %i.fz, %7
  %i.gb = insertelement <4 x float> %i.dy, float %i.eq, i64 0
  %i.gc = insertelement <4 x float> %i.gb, float %i.eu, i64 1
  %i.gd = insertelement <4 x float> %i.gc, float %i.db, i64 3
  %i.ge = insertelement <4 x float> poison, float %i.co, i64 0
  %i.gf = insertelement <4 x float> %i.ge, float %i.cc, i64 1
  %i.gg = insertelement <4 x float> %i.gf, float %i.ey, i64 2
  %i.gh = insertelement <4 x float> %i.gg, float %i.fd, i64 3
  %i.gi = fadd <4 x float> %i.gd, %i.gh
  %i.gj = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 3, i32 1>
  %i.gk = fadd <4 x float> %i.gj, %i.gi
  %i.gl = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.gm = insertelement <4 x float> %i.gl, float %i.ca, i64 1
  %i.gn = insertelement <4 x float> %i.gm, float %i.ew, i64 2
  %i.go = insertelement <4 x float> %i.gn, float %i.fb, i64 3
  %i.gp = insertelement <4 x float> %i.ea, float %i.eo, i64 0
  %i.gq = insertelement <4 x float> %i.gp, float %i.es, i64 1
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> %i.ff, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.gs = fadd <4 x float> %i.go, %i.gr
  %i.gt = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gu = insertelement <2 x float> %i.gt, float %i.aq, i64 1
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gw = fadd <4 x float> %i.gv, %i.gk
  %i.gx = fadd <4 x float> %i.gs, %i.gw           ; 2 uses
  %i.gy = fmul <4 x float> %i.gx, %i.gx           ; 4 uses
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ha = fadd <4 x float> %i.ga, %i.gz
  %8 = shufflevector <4 x float> %i.gy, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.hb = fadd <4 x float> %i.ha, %8
  %9 = shufflevector <4 x float> %i.gy, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 5, i32 6, i32 7>
  %i.hc = fadd <4 x float> %i.hb, %9
  %10 = shufflevector <4 x float> %i.gy, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 3, i32 5, i32 6, i32 7>
  %i.hd = fadd <4 x float> %i.hc, %10
  %i.he = fadd <4 x float> %i.hd, %7
  %i.hf = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.hg = load float, ptr %i.hf, align 1, !tbaa !79, !alias.scope !2356
  %i.hh = getelementptr inbounds i8, ptr %i.s, i64 -12
  %i.hi = load float, ptr %i.hh, align 1, !tbaa !79, !alias.scope !2357
  %i.hj = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.hk = load float, ptr %i.hj, align 1, !tbaa !79, !alias.scope !2358
  %i.hl = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.hm = load float, ptr %i.hl, align 1, !tbaa !79, !alias.scope !2359
  %.scalar588 = fadd float %i.hg, %i.hi
  %i.hn = extractelement <4 x float> %i.fr, i64 1
  %.scalar590 = fadd float %i.hn, %.scalar588
  %.scalar591 = fadd float %i.ez, %i.hk
  %.scalar592 = fadd float %i.cy, %.scalar591
  %.scalar593 = fadd float %.scalar590, %.scalar592
  %.scalar594 = fadd float %i.hm, %.scalar593     ; 2 uses
  %i.ho = fmul float %.scalar594, %.scalar594
  %i.hp = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ho, i64 0
  %i.hq = fadd <4 x float> %i.he, %i.hp
  %i.hr = fadd <4 x float> %5, %i.hq
  %i.hs = fadd <4 x float> %i.fw, %i.hr
  ret <4 x float> %i.hs
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
  %i.ck = insertelement <8 x float> %i.cj, float %i.cf, i64 7
  %i.cl = shufflevector <3 x float> %i.ce, <3 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 0, i32 2, i32 poison, i32 poison>
  %3 = shufflevector <8 x float> %i.cl, <8 x float> <float -0.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison, float -0.000000e+00>, <8 x i32> <i32 8, i32 1, i32 poison, i32 poison, i32 4, i32 5, i32 poison, i32 15>
  %i.cm = insertelement <8 x float> %3, float %i.bo, i64 2
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
  %i.ep = shufflevector <8 x float> %i.cp, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eq = shufflevector <16 x float> %i.ep, <16 x float> %i.eo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.er = shufflevector <16 x float> %i.eq, <16 x float> %i.eb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.es = shufflevector <8 x float> %i.dj, <8 x float> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.et = shufflevector <16 x float> %i.er, <16 x float> %i.es, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 22, i32 poison, i32 poison>
  %i.eu = shufflevector <4 x float> %i.dl, <4 x float> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ev = shufflevector <16 x float> %i.et, <16 x float> %i.eu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 13, i32 16, i32 poison>
  %i.ew = insertelement <16 x float> %i.ev, float %i.dd, i64 15
  %i.ex = shufflevector <16 x float> %i.ew, <16 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 7, i32 13, i32 14, i32 15>
  %i.ey = fadd <16 x float> %i.em, %i.ex
  %i.ez = shufflevector <4 x float> %i.dl, <4 x float> poison, <7 x i32> <i32 0, i32 1, i32 2, i32 3, i32 3, i32 1, i32 poison> ; 2 uses
  %i.fa = insertelement <7 x float> %i.ez, float %i.bd, i64 0
  %i.fb = shufflevector <7 x float> %i.fa, <7 x float> %i.ez, <7 x i32> <i32 0, i32 9, i32 poison, i32 poison, i32 4, i32 5, i32 poison>
  %i.fc = shufflevector <2 x float> %i.dh, <2 x float> poison, <7 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fd = shufflevector <7 x float> %i.fb, <7 x float> %i.fc, <8 x i32> <i32 0, i32 1, i32 7, i32 poison, i32 4, i32 5, i32 poison, i32 poison>
  %i.fe = shufflevector <8 x float> %i.fd, <8 x float> %i.dj, <7 x i32> <i32 0, i32 1, i32 2, i32 9, i32 4, i32 5, i32 poison>
  %i.ff = insertelement <7 x float> %i.fe, float %i.bu, i64 6
  %i.fg = shufflevector <7 x float> %i.ff, <7 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  %i.fh = fadd <16 x float> %i.fg, %i.eg
  %i.fi = fadd <16 x float> %i.ey, %i.fh          ; 2 uses
  %i.fj = fmul <16 x float> %i.fi, %i.fi          ; 16 uses
  %i.fk = extractelement <16 x float> %i.fj, i64 0
  %i.fl = extractelement <16 x float> %i.fj, i64 1
  %i.fm = fadd float %i.fk, %i.fl
  %i.fn = extractelement <16 x float> %i.fj, i64 2
  %i.fo = fadd float %i.fm, %i.fn
  %i.fp = extractelement <16 x float> %i.fj, i64 3
  %i.fq = fadd float %i.fo, %i.fp
  %i.fr = extractelement <16 x float> %i.fj, i64 4
  %i.fs = fadd float %i.fq, %i.fr
  %i.ft = extractelement <16 x float> %i.fj, i64 5
  %i.fu = fadd float %i.fs, %i.ft
  %i.fv = extractelement <16 x float> %i.fj, i64 6
  %i.fw = fadd float %i.fu, %i.fv
  %i.fx = extractelement <16 x float> %i.fj, i64 7
  %i.fy = fadd float %i.fw, %i.fx
  %i.fz = extractelement <16 x float> %i.fj, i64 8
  %i.ga = fadd float %i.fy, %i.fz
  %i.gb = extractelement <16 x float> %i.fj, i64 9
  %i.gc = fadd float %i.ga, %i.gb
  %i.gd = extractelement <16 x float> %i.fj, i64 10
  %i.ge = fadd float %i.gc, %i.gd
  %i.gf = extractelement <16 x float> %i.fj, i64 11
  %i.gg = fadd float %i.ge, %i.gf
  %i.gh = extractelement <16 x float> %i.fj, i64 12
  %i.gi = fadd float %i.gg, %i.gh
  %i.gj = extractelement <16 x float> %i.fj, i64 13
  %i.gk = fadd float %i.gi, %i.gj
  %i.gl = extractelement <16 x float> %i.fj, i64 14
  %i.gm = fadd float %i.gk, %i.gl
  %i.gn = extractelement <16 x float> %i.fj, i64 15
  %i.go = fadd float %i.gm, %i.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.ah

bb.g:                                             ; preds = %bb.e, %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit
  %indvar = phi i64 [ 0, %bb.e ], [ %indvar.next, %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit ] ; 4 uses
  %i.gp = trunc nuw nsw i64 %indvar to i32
  %i.gq = add i32 %i.x, %i.gp                     ; 3 uses
  %i.gr = icmp sgt i32 %i.gq, -1
  %.not = icmp ugt i32 %i.z, %i.gq
  %or.cond55 = select i1 %i.gr, i1 %.not, i1 false
  br i1 %or.cond55, label %bb.h, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56: ; preds = %bb.g
  %i.gs = mul nuw nsw i64 %indvar, 48
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.gs
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %scevgep, i8 0, i64 48, i1 false), !tbaa !58
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit

bb.h:                                             ; preds = %bb.g
  %i.gt = zext nneg i32 %i.gq to i64
  %i.gu = mul i64 %i.e, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gu ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gv, i64 64) ]
  %i.gw = mul nuw nsw i64 %indvar, 12             ; 10 uses
  br i1 %brmerge, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.ae
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !58
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink = phi float [ %i.gy, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gw
  store float %.sink, ptr %i.gz, align 16, !tbaa !58
  br i1 %i.ag, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ha = load i32, ptr %0, align 8, !tbaa !65
  %.not50.1 = icmp ugt i32 %i.ha, %i.af
  br i1 %.not50.1, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.ah
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !58
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sink73 = phi float [ %i.hc, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gw
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  store float %.sink73, ptr %i.he, align 4, !tbaa !58
  br i1 %i.aj, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hf = load i32, ptr %0, align 8, !tbaa !65
  %.not50.2 = icmp ugt i32 %i.hf, %i.ai
  br i1 %.not50.2, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.ak
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !58
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.sink76 = phi float [ %i.hh, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gw
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store float %.sink76, ptr %i.hj, align 8, !tbaa !58
  br i1 %i.am, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hk = load i32, ptr %0, align 8, !tbaa !65
  %.not50.3 = icmp ugt i32 %i.hk, %i.al
  br i1 %.not50.3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.an
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !58
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.sink79 = phi float [ %i.hm, %bb.r ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.p ]
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gw
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  store float %.sink79, ptr %i.ho, align 4, !tbaa !58
  br i1 %i.ao, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hp = load i32, ptr %0, align 8, !tbaa !65
  %.not50.4 = icmp ugt i32 %i.hp, %i.aa
  br i1 %.not50.4, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.ap
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !58
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  %.sink82 = phi float [ %i.hr, %bb.u ], [ 0.000000e+00, %bb.t ], [ 0.000000e+00, %bb.s ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gw
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store float %.sink82, ptr %i.ht, align 16, !tbaa !58
  br i1 %i.ar, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hu = load i32, ptr %0, align 8, !tbaa !65
  %.not50.5 = icmp ugt i32 %i.hu, %i.aq
  br i1 %.not50.5, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.as
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !58
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.x
  %.sink85 = phi float [ %i.hw, %bb.x ], [ 0.000000e+00, %bb.w ], [ 0.000000e+00, %bb.v ]
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 20
  store float %.sink85, ptr %i.hy, align 4, !tbaa !58
  br i1 %i.au, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hz = load i32, ptr %0, align 8, !tbaa !65
  %.not50.6 = icmp ugt i32 %i.hz, %i.at
  br i1 %.not50.6, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.av
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !58
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %.sink88 = phi float [ %i.ib, %bb.aa ], [ 0.000000e+00, %bb.z ], [ 0.000000e+00, %bb.y ]
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gw
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  store float %.sink88, ptr %i.id, align 8, !tbaa !58
  br i1 %i.ax, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ie = load i32, ptr %0, align 8, !tbaa !65
  %.not50.7 = icmp ugt i32 %i.ie, %i.aw
  br i1 %.not50.7, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.ay
  %i.ig = load float, ptr %i.if, align 4, !tbaa !58
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %.sink91 = phi float [ %i.ig, %bb.ad ], [ 0.000000e+00, %bb.ac ], [ 0.000000e+00, %bb.ab ]
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gw
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 28
  store float %.sink91, ptr %i.ii, align 4, !tbaa !58
  br i1 %i.ba, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ij = load i32, ptr %0, align 8, !tbaa !65
  %.not50.8 = icmp ugt i32 %i.ij, %i.az
  br i1 %.not50.8, label %bb.ag, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.bb
  %i.il = load float, ptr %i.ik, align 4, !tbaa !58
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit: ; preds = %bb.ae, %bb.af, %bb.ag
  %.sink94 = phi float [ %i.il, %bb.ag ], [ 0.000000e+00, %bb.af ], [ 0.000000e+00, %bb.ae ]
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gw
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  store float %.sink94, ptr %i.in, align 16, !tbaa !58
  %i.io = getelementptr [4 x i8], ptr %i.a, i64 %i.gw
  %i.ip = getelementptr i8, ptr %i.io, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ip, i8 0, i64 12, i1 false), !tbaa !58
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit:   ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56, %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, 9
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !2398

bb.ah:                                            ; preds = %bb.f, %bb.d
  %.0 = phi float [ %i.v, %bb.d ], [ %i.go, %bb.f ]
  ret float %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden <4 x float> @_ZN3jxl6N_SSE29MaltaUnitIN3hwy6N_SSE24SimdIfLm1ELi0EEEEEDTcl4ZerocvT__EEENS_10MaltaTagLFES6_PKfl(ptr noalias noundef %0, i64 noundef %1) local_unnamed_addr #21 comdat {
bb.a:
  %i.a = mul nsw i64 %1, 3                        ; 2 uses
  %i.b = load float, ptr %0, align 1, !tbaa !79, !alias.scope !2516
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  %i.d = load float, ptr %i.c, align 1, !tbaa !79, !alias.scope !2517
  %i.e = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.f = load float, ptr %i.e, align 1, !tbaa !79, !alias.scope !2518
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load float, ptr %i.g, align 1, !tbaa !79, !alias.scope !2519
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load float, ptr %i.i, align 1, !tbaa !79, !alias.scope !2520
  %i.k = sub i64 0, %i.a
  %i.l = getelementptr inbounds [4 x i8], ptr %0, i64 %i.k ; 5 uses
  %i.m = sub i64 0, %1                            ; 7 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m ; 5 uses
  %i.o = load float, ptr %i.n, align 1, !tbaa !79, !alias.scope !2521
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %i.m
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.m ; 9 uses
  %i.r = load float, ptr %i.q, align 1, !tbaa !79, !alias.scope !2522
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %1
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %1 ; 9 uses
  %i.u = load float, ptr %i.t, align 1, !tbaa !79, !alias.scope !2523
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a ; 5 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %1 ; 5 uses
  %i.x = load float, ptr %i.w, align 1, !tbaa !79, !alias.scope !2524
  %i.y = getelementptr inbounds i8, ptr %i.l, i64 -12
  %i.z = load float, ptr %i.y, align 1, !tbaa !79, !alias.scope !2525
  %i.aa = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.ab = load float, ptr %i.aa, align 1, !tbaa !79, !alias.scope !2526
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ad = load float, ptr %i.ac, align 1, !tbaa !79, !alias.scope !2527
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.af = load float, ptr %i.ae, align 1, !tbaa !79, !alias.scope !2528
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.ah = load float, ptr %i.ag, align 1, !tbaa !79, !alias.scope !2529
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aj = load float, ptr %i.ai, align 1, !tbaa !79, !alias.scope !2530
  %i.ak = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.al = load float, ptr %i.ak, align 1, !tbaa !79, !alias.scope !2531
  %i.am = getelementptr inbounds i8, ptr %i.v, i64 -12
  %i.an = load float, ptr %i.am, align 1, !tbaa !79, !alias.scope !2532
  %i.ao = insertelement <4 x float> poison, float %i.h, i64 0
  %i.ap = insertelement <4 x float> %i.ao, float %i.u, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.ad, i64 2
  %i.ar = insertelement <4 x float> %i.aq, float %i.al, i64 3
  %i.as = insertelement <4 x float> poison, float %i.j, i64 0
  %i.at = insertelement <4 x float> %i.as, float %i.x, i64 1
  %i.au = insertelement <4 x float> %i.at, float %i.af, i64 2
  %i.av = insertelement <4 x float> %i.au, float %i.an, i64 3
  %i.aw = fadd <4 x float> %i.ar, %i.av
  %i.ax = insertelement <4 x float> poison, float %i.d, i64 0
  %i.ay = insertelement <4 x float> %i.ax, float %i.o, i64 1
  %i.az = insertelement <4 x float> %i.ay, float %i.z, i64 2
  %i.ba = insertelement <4 x float> %i.az, float %i.ah, i64 3
  %i.bb = insertelement <4 x float> poison, float %i.f, i64 0
  %i.bc = insertelement <4 x float> %i.bb, float %i.r, i64 1
  %i.bd = insertelement <4 x float> %i.bc, float %i.ab, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.aj, i64 3
  %i.bf = fadd <4 x float> %i.ba, %i.be
  %i.bg = insertelement <4 x float> poison, float %i.b, i64 0
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bi = fadd <4 x float> %i.bh, %i.aw
  %i.bj = fadd <4 x float> %i.bf, %i.bi           ; 2 uses
  %i.bk = fmul <4 x float> %i.bj, %i.bj           ; 4 uses
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %2 = shufflevector <4 x float> %i.bk, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.bm = fadd <4 x float> %i.bl, %2
  %3 = shufflevector <4 x float> %i.bk, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 5, i32 6, i32 7>
  %i.bn = fadd <4 x float> %i.bm, %3
  %4 = shufflevector <4 x float> %i.bk, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 3, i32 5, i32 6, i32 7>
  %i.bo = fadd <4 x float> %i.bn, %4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.bq = load float, ptr %i.bp, align 1, !tbaa !79, !alias.scope !2533
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.bs = load float, ptr %i.br, align 1, !tbaa !79, !alias.scope !2534 ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.bu = load float, ptr %i.bt, align 1, !tbaa !79, !alias.scope !2535 ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.bw = load float, ptr %i.bv, align 1, !tbaa !79, !alias.scope !2536
  %i.bx = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.by = load float, ptr %i.bx, align 1, !tbaa !79, !alias.scope !2537
  %i.bz = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.ca = load float, ptr %i.bz, align 1, !tbaa !79, !alias.scope !2538 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.cc = load float, ptr %i.cb, align 1, !tbaa !79, !alias.scope !2539 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ce = load float, ptr %i.cd, align 1, !tbaa !79, !alias.scope !2540
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.m
  %i.cg = load float, ptr %i.cf, align 1, !tbaa !79, !alias.scope !2541
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.m
  %i.ci = load float, ptr %i.ch, align 1, !tbaa !79, !alias.scope !2542 ; 3 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.g, i64 %1
  %i.ck = load float, ptr %i.cj, align 1, !tbaa !79, !alias.scope !2543 ; 3 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.i, i64 %1
  %i.cm = load float, ptr %i.cl, align 1, !tbaa !79, !alias.scope !2544
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.c, i64 %1
  %i.co = load float, ptr %i.cn, align 1, !tbaa !79, !alias.scope !2545
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.e, i64 %1
  %i.cq = load float, ptr %i.cp, align 1, !tbaa !79, !alias.scope !2546 ; 3 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.m
  %i.cs = load float, ptr %i.cr, align 1, !tbaa !79, !alias.scope !2547 ; 3 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.m
  %i.cu = load float, ptr %i.ct, align 1, !tbaa !79, !alias.scope !2548
  %i.cv = insertelement <4 x float> poison, float %i.bu, i64 0
  %i.cw = insertelement <4 x float> %i.cv, float %i.cc, i64 1
  %i.cx = insertelement <4 x float> %i.cw, float %i.ck, i64 2
  %i.cy = insertelement <4 x float> %i.cx, float %i.cs, i64 3
  %i.cz = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.da = insertelement <4 x float> %i.cz, float %i.ce, i64 1
  %i.db = insertelement <4 x float> %i.da, float %i.cm, i64 2
  %i.dc = insertelement <4 x float> %i.db, float %i.cu, i64 3
  %i.dd = fadd <4 x float> %i.cy, %i.dc
  %i.de = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.df = insertelement <4 x float> %i.de, float %i.by, i64 1
  %i.dg = insertelement <4 x float> %i.df, float %i.cg, i64 2
  %i.dh = insertelement <4 x float> %i.dg, float %i.co, i64 3
  %i.di = insertelement <4 x float> poison, float %i.bs, i64 0
  %i.dj = insertelement <4 x float> %i.di, float %i.ca, i64 1
  %i.dk = insertelement <4 x float> %i.dj, float %i.ci, i64 2
  %i.dl = insertelement <4 x float> %i.dk, float %i.cq, i64 3
  %i.dm = fadd <4 x float> %i.dh, %i.dl
  %i.dn = fadd <4 x float> %i.bh, %i.dd
  %i.do = fadd <4 x float> %i.dm, %i.dn           ; 2 uses
  %i.dp = fmul <4 x float> %i.do, %i.do           ; 4 uses
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.dr = fadd <4 x float> %i.bo, %i.dq
  %5 = shufflevector <4 x float> %i.dp, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.ds = fadd <4 x float> %i.dr, %5
  %6 = shufflevector <4 x float> %i.dp, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 5, i32 6, i32 7>
  %i.dt = fadd <4 x float> %i.ds, %6
  %7 = shufflevector <4 x float> %i.dp, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 3, i32 5, i32 6, i32 7>
  %i.du = fadd <4 x float> %i.dt, %7
  %i.dv = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.dw = load float, ptr %i.dv, align 1, !tbaa !79, !alias.scope !2549
  %i.dx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dy = load float, ptr %i.dx, align 1, !tbaa !79, !alias.scope !2550
  %i.dz = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ea = load float, ptr %i.dz, align 1, !tbaa !79, !alias.scope !2551
  %i.eb = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.ec = load float, ptr %i.eb, align 1, !tbaa !79, !alias.scope !2552
  %i.ed = getelementptr inbounds i8, ptr %i.q, i64 -12
  %i.ee = load float, ptr %i.ed, align 1, !tbaa !79, !alias.scope !2553
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.eg = load float, ptr %i.ef, align 1, !tbaa !79, !alias.scope !2554
  %i.eh = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.ei = load float, ptr %i.eh, align 1, !tbaa !79, !alias.scope !2555
  %i.ej = getelementptr inbounds i8, ptr %i.t, i64 -12
  %i.ek = load float, ptr %i.ej, align 1, !tbaa !79, !alias.scope !2556
  %i.el = insertelement <4 x float> poison, float %i.dy, i64 0
  %i.em = insertelement <4 x float> %i.el, float %i.ec, i64 1
  %i.en = insertelement <4 x float> %i.em, float %i.ck, i64 2
  %i.eo = insertelement <4 x float> %i.en, float %i.cq, i64 3
  %i.ep = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.eq = insertelement <4 x float> %i.ep, float %i.bu, i64 1
  %i.er = insertelement <4 x float> %i.eq, float %i.eg, i64 2
  %i.es = insertelement <4 x float> %i.er, float %i.ek, i64 3
  %i.et = fadd <4 x float> %i.eo, %i.es
  %i.eu = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.ev = insertelement <4 x float> %i.eu, float %i.bs, i64 1
  %i.ew = insertelement <4 x float> %i.ev, float %i.ee, i64 2
  %i.ex = insertelement <4 x float> %i.ew, float %i.ei, i64 3
  %i.ey = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.ez = insertelement <4 x float> %i.ey, float %i.ea, i64 1
  %i.fa = insertelement <4 x float> %i.ez, float %i.ci, i64 2
  %i.fb = insertelement <4 x float> %i.fa, float %i.cs, i64 3
  %i.fc = fadd <4 x float> %i.ex, %i.fb
  %i.fd = fadd <4 x float> %i.bh, %i.et
  %i.fe = fadd <4 x float> %i.fc, %i.fd           ; 2 uses
  %i.ff = fmul <4 x float> %i.fe, %i.fe           ; 4 uses
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fh = fadd <4 x float> %i.du, %i.fg
  %8 = shufflevector <4 x float> %i.ff, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.fi = fadd <4 x float> %i.fh, %8
  %9 = shufflevector <4 x float> %i.ff, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 5, i32 6, i32 7>
  %i.fj = fadd <4 x float> %i.fi, %9
  %10 = shufflevector <4 x float> %i.ff, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 3, i32 5, i32 6, i32 7>
  %i.fk = fadd <4 x float> %i.fj, %10
  %i.fl = getelementptr inbounds i8, ptr %i.t, i64 -16
  %i.fm = load float, ptr %i.fl, align 1, !tbaa !79, !alias.scope !2557
  %i.fn = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.fo = load float, ptr %i.fn, align 1, !tbaa !79, !alias.scope !2558
  %i.fp = getelementptr inbounds i8, ptr %i.q, i64 -16
  %i.fq = load float, ptr %i.fp, align 1, !tbaa !79, !alias.scope !2559
  %i.fr = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.fs = load float, ptr %i.fr, align 1, !tbaa !79, !alias.scope !2560
  %i.ft = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.fu = load float, ptr %i.ft, align 1, !tbaa !79, !alias.scope !2561
  %i.fv = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.fw = load float, ptr %i.fv, align 1, !tbaa !79, !alias.scope !2562
  %i.fx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.fy = load float, ptr %i.fx, align 1, !tbaa !79, !alias.scope !2563
  %i.fz = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.ga = load float, ptr %i.fz, align 1, !tbaa !79, !alias.scope !2564
  %i.gb = insertelement <4 x float> poison, float %i.cs, i64 0
  %i.gc = insertelement <4 x float> %i.gb, float %i.fs, i64 1
  %i.gd = insertelement <4 x float> %i.gc, float %i.cc, i64 2
  %i.ge = insertelement <4 x float> %i.gd, float %i.bu, i64 3
  %i.gf = insertelement <4 x float> poison, float %i.fo, i64 0
  %i.gg = insertelement <4 x float> %i.gf, float %i.ck, i64 1
  %i.gh = insertelement <4 x float> %i.gg, float %i.fw, i64 2
  %i.gi = insertelement <4 x float> %i.gh, float %i.ga, i64 3
  %i.gj = fadd <4 x float> %i.ge, %i.gi
  %i.gk = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.gl = insertelement <4 x float> %i.gk, float %i.fq, i64 1
  %i.gm = insertelement <4 x float> %i.gl, float %i.ca, i64 2
  %i.gn = insertelement <4 x float> %i.gm, float %i.bs, i64 3
  %i.go = insertelement <4 x float> poison, float %i.fm, i64 0
  %i.gp = insertelement <4 x float> %i.go, float %i.ci, i64 1
  %i.gq = insertelement <4 x float> %i.gp, float %i.fu, i64 2
  %i.gr = insertelement <4 x float> %i.gq, float %i.fy, i64 3
  %i.gs = fadd <4 x float> %i.gn, %i.gr
  %i.gt = fadd <4 x float> %i.bh, %i.gj
  %i.gu = fadd <4 x float> %i.gs, %i.gt           ; 2 uses
  %i.gv = fmul <4 x float> %i.gu, %i.gu           ; 4 uses
  %i.gw = shufflevector <4 x float> %i.gv, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.gx = fadd <4 x float> %i.fk, %i.gw
  %11 = shufflevector <4 x float> %i.gv, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.gy = fadd <4 x float> %i.gx, %11
  %12 = shufflevector <4 x float> %i.gv, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 5, i32 6, i32 7>
  %i.gz = fadd <4 x float> %i.gy, %12
  %13 = shufflevector <4 x float> %i.gv, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 3, i32 5, i32 6, i32 7>
  %i.ha = fadd <4 x float> %i.gz, %13
  ret <4 x float> %i.ha
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #4

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #7 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #8 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #15 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #16 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #21 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #25 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #27 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #31 = { nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #33 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #35 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #36 = { noreturn "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { nobuiltin nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #40 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #41 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #42 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #44 = { builtin nounwind allocsize(0) "no-builtin-fread" "no-builtin-fwrite" }
attributes #45 = { nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #46 = { nounwind }
attributes #47 = { noreturn "no-builtin-fread" "no-builtin-fwrite" }
attributes #48 = { builtin nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #49 = { "no-builtin-fread" "no-builtin-fwrite" }
attributes #50 = { "function-inline-cost-multiplier"="2" "no-builtin-fread" "no-builtin-fwrite" }
attributes #51 = { noreturn nounwind "no-builtin-fread" "no-builtin-fwrite" }

!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}
!llvm.errno.tbaa = !{!49}

!0 = distinct !{!0, !60}
!1 = distinct !{!1, !60}
!2 = distinct !{!2, !60}
!3 = distinct !{!3, !60}
!4 = distinct !{!4, !60}
!5 = distinct !{!5, !60}
!6 = distinct !{!6, !60}
!7 = distinct !{!7, !60}
!8 = distinct !{!8, !60}
!9 = distinct !{!9, !60}
!10 = distinct !{!10, !60}
!11 = distinct !{!11, !60}
!12 = distinct !{!12, !60}
!13 = distinct !{!13, !60}
!14 = distinct !{!14, !60}
!15 = distinct !{!15, !60}
!16 = distinct !{!16, !60}
!17 = distinct !{!17, !60}
!18 = distinct !{!18, !60}
!19 = distinct !{!19, !60}
!20 = distinct !{!20, !60}
!21 = distinct !{!21, !60}
!22 = distinct !{!22, !60}
!23 = distinct !{!23, !60}
!24 = distinct !{!24, !60}
!25 = distinct !{!25, !60}
!26 = distinct !{!26, !60}
!27 = distinct !{!27, !60}
!28 = distinct !{!28, !60}
!29 = distinct !{!29, !60}
!30 = distinct !{!30, !60}
!31 = distinct !{!31, !60}
!32 = distinct !{!32, !60}
!33 = distinct !{!33, !60}
!34 = distinct !{!34, !60}
!35 = distinct !{!35, !60}
!36 = distinct !{!36, !60}
!37 = distinct !{null, null, null}
!38 = distinct !{!38, !60}
!39 = distinct !{!39, !60}
!40 = distinct !{ptr @_ZN3jxl18ButteraugliDiffmapERKNS_6Image3IfEES3_RKNS_17ButteraugliParamsERNS_5PlaneIfEE, null, null, null}
!41 = !{i32 8, !"PIC Level", i32 2}
!42 = !{i32 7, !"uwtable", i32 2}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"omnipotent char", !45, i64 0}
!47 = !{!"int", !46, i64 0}
!48 = !{!"__libc_errno", !47, i64 0}
!49 = !{!48, !47, i64 0}
!50 = !{!"any pointer", !46, i64 0}
!51 = !{!"p1 float", !50, i64 0}
!52 = !{!"_ZTSNSt3__122__compressed_pair_elemIPfLi0ELb0EEE", !51, i64 0}
!53 = !{!"_ZTSNSt3__117__compressed_pairIPfNS_9allocatorIfEEEE", !52, i64 0}
!54 = !{!"_ZTSNSt3__16vectorIfNS_9allocatorIfEEEE", !51, i64 0, !51, i64 8, !53, i64 16}
!55 = !{!54, !51, i64 0}
!56 = !{!51, !51, i64 0}
!57 = !{!"float", !46, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!54, !51, i64 8}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"long", !46, i64 0}
!62 = !{!"p1 _ZTS22JxlMemoryManagerStruct", !50, i64 0}
!63 = !{!"_ZTSN3jxl13AlignedMemoryE", !50, i64 0, !62, i64 8, !50, i64 16}
!64 = !{!"_ZTSN3jxl6detail9PlaneBaseE", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !61, i64 16, !63, i64 24, !61, i64 48}
!65 = !{!64, !47, i64 0}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!64, !47, i64 4}
!68 = !{!63, !50, i64 16}
!69 = !{!64, !61, i64 16}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!"p1 _ZTSN3jxl5PlaneIfEE", !50, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!63, !62, i64 8}
!75 = !{!"_ZTSN3jxl10StatusCodeE", !46, i64 0}
end_hunk_0
