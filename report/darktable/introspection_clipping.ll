Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_clipping?download=true
inline.NumInlined: 74
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@modify_roi_out:bb.a
  %.sroa.0.4.vec.extract484 = extractelement <4 x float> %i.ef, i64 1
  %.sroa.speculated = select i1 %i.dl, float %.sroa.0.12.vec.extract512, float %.sroa.0.4.vec.extract484
  %i.eu = fdiv reassoc nsz arcp contract afn float %.sroa.speculated, %i.dn
  %i.ev = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.3, float %i.eu)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.1.3 = phi nsz float [ %i.ev, %bb.v ], [ %.2.3, %bb.u ] ; 3 uses
  %i.ew = fcmp reassoc nsz arcp contract afn ult float %.2.1.3, -1.000000e+00
  br i1 %i.ew, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store <2 x float> %i.bi, ptr %i.bj, align 4, !tbaa !13
  store i32 0, ptr %i.bk, align 4, !tbaa !71
  %i.ex = insertelement <2 x float> poison, float %.2.1.3, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul reassoc nsz arcp contract afn <2 x float> %i.ey, %i.bh ; 2 uses
  %i.fa = load <2 x float>, ptr %i.bl, align 4, !tbaa !13
  %i.fb = load <2 x float>, ptr %i.bm, align 4, !tbaa !13 ; 2 uses
  %i.fc = fsub reassoc nsz arcp contract afn <2 x float> %i.fa, %i.fb
  %i.fd = fsub reassoc nsz arcp contract afn <2 x float> splat (float 5.000000e-01), %i.fb
  %i.fe = fmul reassoc nsz arcp contract afn <2 x float> %i.ez, %i.fd
  %i.ff = fsub reassoc nsz arcp contract afn <2 x float> %i.bi, %i.fe
  %i.fg = fptosi <2 x float> %i.ff to <2 x i32>
  store <2 x i32> %i.fg, ptr %2, align 4, !tbaa !14
  %i.fh = fmul reassoc nsz arcp contract afn <2 x float> %i.ez, %i.fc
  %i.fi = fptosi <2 x float> %i.fh to <2 x i32>
  store <2 x i32> %i.fi, ptr %i.bn, align 4, !tbaa !14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1259 = phi nsz float [ -1.000000e+00, %bb.w ], [ %.2.1.3, %bb.x ]
  %i.fj = shufflevector <2 x i32> %i.dm, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fk = sitofp reassoc nsz arcp contract afn <4 x i32> %i.fj to <4 x float>
  %i.fl = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.fk, <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 5.000000e-01> ; 16 uses
  br i1 %i.ec, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.0.8.vec.extract488 = extractelement <4 x float> %i.fl, i64 2
  %.sroa.0.0.vec.extract472 = extractelement <4 x float> %i.fl, i64 0
  %.sroa.speculated458 = select i1 %i.dc, float %.sroa.0.8.vec.extract488, float %.sroa.0.0.vec.extract472
  %i.fm = fdiv reassoc nsz arcp contract afn float %.sroa.speculated458, %i.du
  %i.fn = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fm, float 1.000000e+00)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.2.1390 = phi nsz float [ %i.fn, %bb.z ], [ 1.000000e+00, %bb.y ] ; 2 uses
  br i1 %i.eb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.12.vec.extract502 = extractelement <4 x float> %i.fl, i64 3
  %.sroa.0.4.vec.extract474 = extractelement <4 x float> %i.fl, i64 1
  %.sroa.speculated434 = select i1 %i.dd, float %.sroa.0.12.vec.extract502, float %.sroa.0.4.vec.extract474
  %i.fo = fdiv reassoc nsz arcp contract afn float %.sroa.speculated434, %i.dt
  %i.fp = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1390, float %i.fo)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.2.1.1391 = phi nsz float [ %i.fp, %bb.ab ], [ %.2.1390, %bb.aa ] ; 2 uses
  br i1 %i.ea, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0.8.vec.extract492 = extractelement <4 x float> %i.fl, i64 2
  %.sroa.0.0.vec.extract468 = extractelement <4 x float> %i.fl, i64 0
  %.sroa.speculated452 = select i1 %i.de, float %.sroa.0.8.vec.extract492, float %.sroa.0.0.vec.extract468
  %i.fq = fdiv reassoc nsz arcp contract afn float %.sroa.speculated452, %i.ds
  %i.fr = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1391, float %i.fq)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.2.1309.1 = phi nsz float [ %i.fr, %bb.ad ], [ %.2.1.1391, %bb.ac ] ; 2 uses
  br i1 %i.dz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.0.12.vec.extract506 = extractelement <4 x float> %i.fl, i64 3
  %.sroa.0.4.vec.extract478 = extractelement <4 x float> %i.fl, i64 1
  %.sroa.speculated428 = select i1 %i.df, float %.sroa.0.12.vec.extract506, float %.sroa.0.4.vec.extract478
  %i.fs = fdiv reassoc nsz arcp contract afn float %.sroa.speculated428, %i.dr
  %i.ft = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1309.1, float %i.fs)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.2.1.1.1 = phi nsz float [ %i.ft, %bb.af ], [ %.2.1309.1, %bb.ae ] ; 2 uses
  br i1 %i.dy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0.8.vec.extract496 = extractelement <4 x float> %i.fl, i64 2
  %.sroa.0.0.vec.extract464 = extractelement <4 x float> %i.fl, i64 0
  %.sroa.speculated446 = select i1 %i.dg, float %.sroa.0.8.vec.extract496, float %.sroa.0.0.vec.extract464
  %i.fu = fdiv reassoc nsz arcp contract afn float %.sroa.speculated446, %i.dq
  %i.fv = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1.1, float %i.fu)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.2.2.1 = phi nsz float [ %i.fv, %bb.ah ], [ %.2.1.1.1, %bb.ag ] ; 2 uses
  br i1 %i.dx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.sroa.0.12.vec.extract510 = extractelement <4 x float> %i.fl, i64 3
  %.sroa.0.4.vec.extract482 = extractelement <4 x float> %i.fl, i64 1
  %.sroa.speculated422 = select i1 %i.dh, float %.sroa.0.12.vec.extract510, float %.sroa.0.4.vec.extract482
  %i.fw = fdiv reassoc nsz arcp contract afn float %.sroa.speculated422, %i.dp
  %i.fx = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.2.1, float %i.fw)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2.1.2.1 = phi nsz float [ %i.fx, %bb.aj ], [ %.2.2.1, %bb.ai ] ; 2 uses
  br i1 %i.dw, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.8.vec.extract500 = extractelement <4 x float> %i.fl, i64 2
  %.sroa.0.0.vec.extract460 = extractelement <4 x float> %i.fl, i64 0
  %.sroa.speculated440 = select i1 %i.di, float %.sroa.0.8.vec.extract500, float %.sroa.0.0.vec.extract460
  %i.fy = fdiv reassoc nsz arcp contract afn float %.sroa.speculated440, %i.do
  %i.fz = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.2.1, float %i.fy)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.2.3.1 = phi nsz float [ %i.fz, %bb.al ], [ %.2.1.2.1, %bb.ak ] ; 2 uses
  br i1 %i.dv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.0.12.vec.extract514 = extractelement <4 x float> %i.fl, i64 3
  %.sroa.0.4.vec.extract486 = extractelement <4 x float> %i.fl, i64 1
  %.sroa.speculated416 = select i1 %i.dl, float %.sroa.0.12.vec.extract514, float %.sroa.0.4.vec.extract486
  %i.ga = fdiv reassoc nsz arcp contract afn float %.sroa.speculated416, %i.dn
  %i.gb = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.3.1, float %i.ga)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.2.1.3.1 = phi nsz float [ %i.gb, %bb.an ], [ %.2.3.1, %bb.am ] ; 2 uses
  %i.gc = fcmp reassoc nsz arcp contract afn ult float %.2.1.3.1, %.1259
  br i1 %i.gc, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.ao
  store <2 x float> %i.bi, ptr %i.bj, align 4, !tbaa !13
  store i32 1, ptr %i.bk, align 4, !tbaa !71
  %i.gd = load <2 x float>, ptr %i.bl, align 4, !tbaa !13
  %i.ge = load <2 x float>, ptr %i.bm, align 4, !tbaa !13 ; 2 uses
  %i.gf = fsub reassoc nsz arcp contract afn <2 x float> %i.gd, %i.ge
  %i.gg = insertelement <2 x float> poison, float %.2.1.3.1, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fmul reassoc nsz arcp contract afn <2 x float> %i.gh, %i.bh ; 2 uses
  %i.gj = shufflevector <2 x float> %i.bi, <2 x float> %i.gi, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.gk = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.gl = shufflevector <2 x float> %i.gi, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.gm = fsub reassoc nsz arcp contract afn <2 x float> splat (float 5.000000e-01), %i.ge
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.go = fmul reassoc nsz arcp contract afn <4 x float> %i.gl, %i.gn
  %i.gp = shufflevector <4 x float> %i.go, <4 x float> %i.gk, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.gq = fsub reassoc nsz arcp contract afn <4 x float> %i.gj, %i.gp
  %i.gr = fmul reassoc nsz arcp contract afn <4 x float> %i.gj, %i.gp
  %i.gs = shufflevector <4 x float> %i.gq, <4 x float> %i.gr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gt = fptosi <4 x float> %i.gs to <4 x i32>
  store <4 x i32> %i.gt, ptr %2, align 4, !tbaa !14
  br label %.loopexit

bb.ap:                                            ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 16 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !87
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 0, ptr %i.gv, align 4, !tbaa !71
  %i.gw = load i32, ptr %i.aj, align 4, !tbaa !66
  %i.gx = icmp eq i32 %i.gw, 1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !69 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !70 ; 6 uses
  %i.hc = load <2 x i32>, ptr %i.gu, align 8, !tbaa !14 ; 2 uses
  %i.hd = shufflevector <2 x i32> %i.hc, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.he = sitofp reassoc nsz arcp contract afn <4 x i32> %i.hd to <4 x float> ; 11 uses
  %i.hf = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hg = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.hf, splat (float 5.000000e-01) ; 5 uses
  %i.hh = load <2 x float>, ptr %i.v, align 4, !tbaa !13 ; 6 uses
  %i.hi = load <2 x float>, ptr %i.ab, align 4, !tbaa !13 ; 2 uses
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  br i1 %i.gx, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ap
  %i.hk = fneg reassoc nsz arcp contract afn <2 x float> %i.hg
  %i.hl = shufflevector <4 x float> %i.he, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.hm = shufflevector <2 x float> %i.hk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.hn = shufflevector <4 x float> %i.hm, <4 x float> %i.hl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ho = fmul reassoc nsz arcp contract afn <4 x float> %i.hn, <float 1.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01> ; 2 uses
  %i.hp = shufflevector <4 x float> %i.he, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 poison, i32 0, i32 0, i32 7>
  %i.hq = shufflevector <4 x float> %i.hm, <4 x float> %i.hp, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hr = fmul reassoc nsz arcp contract afn <4 x float> %i.hq, <float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>
  %i.hs = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ht = insertelement <4 x float> %i.hs, float -0.000000e+00, i64 3
  %i.hu = fmul reassoc arcp contract afn <4 x float> %i.ht, %i.hr ; 2 uses
  %i.hv = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.hw = insertelement <4 x float> %i.hv, float 1.000000e+00, i64 3
  %i.hx = shufflevector <4 x float> %i.hm, <4 x float> %i.ho, <4 x i32> <i32 1, i32 1, i32 7, i32 poison>
  %i.hy = insertelement <4 x float> %i.hx, float 1.000000e+00, i64 3
  %i.hz = fmul reassoc nsz arcp contract afn <4 x float> %i.hw, %i.hy ; 2 uses
  %i.ia = fadd reassoc nsz arcp contract afn <4 x float> %i.hz, %i.hu ; 3 uses
  %shift = shufflevector <4 x float> %i.hz, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <4 x float> %shift, %i.hu
  %i.ib = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ic = fmul reassoc nsz arcp contract afn <4 x float> %i.hj, %i.ho ; 2 uses
  %i.id = insertelement <4 x float> poison, float %i.gz, i64 0
  %5 = shufflevector <4 x float> %i.id, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ie = fmul reassoc arcp contract afn <4 x float> %5, %i.ia
  %i.if = fadd reassoc nsz arcp contract afn <4 x float> %i.ie, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>
  %i.ig = shufflevector <4 x float> %i.ic, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ih = fadd reassoc nsz arcp contract afn <4 x float> %i.ic, %i.ig ; 2 uses
  %i.ii = fmul reassoc nsz arcp contract afn <4 x float> %i.ih, %i.if ; 3 uses
  %6 = shufflevector <4 x float> %i.ii, <4 x float> %i.ih, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ij = extractelement <4 x float> %i.ii, i64 0
  %i.ik = fmul reassoc nsz arcp contract afn float %i.ij, %i.hb
  %i.il = fadd reassoc nsz arcp contract afn float %i.ik, 1.000000e+00
  %i.im = extractelement <4 x float> %i.ia, i64 0
  %i.in = fmul reassoc nsz arcp contract afn float %i.il, %i.im
  %i.io = shufflevector <4 x float> %i.ii, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ip = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.iq = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ir = fmul reassoc nsz arcp contract afn <2 x float> %i.io, %i.iq
  %i.is = fadd reassoc nsz arcp contract afn <2 x float> %i.ir, splat (float 1.000000e+00)
  %i.it = shufflevector <4 x float> %i.ia, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.iu = fmul reassoc nsz arcp contract afn <2 x float> %i.is, %i.it ; 2 uses
  %i.iv = extractelement <2 x float> %i.iu, i64 0
  %i.iw = extractelement <2 x float> %i.iu, i64 1
  br label %.split297.us

.split.us:                                        ; preds = %bb.ap
  %i.ix = shufflevector <2 x float> %i.hg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.iy = shufflevector <4 x float> %i.he, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.iz = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.jd = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.jf = load float, ptr %i.jc, align 4, !tbaa !91
  %i.jg = load float, ptr %i.jb, align 4, !tbaa !92
  %i.jh = load float, ptr %i.ja, align 4, !tbaa !80
  %i.ji = load float, ptr %i.iz, align 4, !tbaa !81
  %i.jj = shufflevector <4 x float> %i.he, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <2 x i32> <i32 4, i32 1>
  %i.jk = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jl = fdiv reassoc nsz arcp contract afn <2 x float> %i.jj, %i.jk
  %i.jm = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.jn = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jo = fsub reassoc nsz arcp contract afn <2 x float> %i.jl, %i.jn ; 2 uses
  %i.jp = load <4 x float>, ptr %i.jd, align 4, !tbaa !13 ; 4 uses
  %i.jq = load <2 x float>, ptr %i.je, align 4, !tbaa !13
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.js = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jt = insertelement <2 x float> %i.js, float 0.000000e+00, i64 0
  %i.ju = fdiv reassoc nsz arcp contract afn <2 x float> %i.jt, %i.js
  %i.jv = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = fsub reassoc nsz arcp contract afn <2 x float> %i.ju, %i.jw ; 3 uses
  %i.jy = insertelement <2 x float> poison, float %i.jf, i64 0
  %i.jz = shufflevector <2 x float> %i.jx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.ka = shufflevector <2 x float> %i.jy, <2 x float> poison, <4 x i32> zeroinitializer
  %i.kb = fmul reassoc nsz arcp contract afn <4 x float> %i.jz, %i.ka
  %i.kc = fadd reassoc nsz arcp contract afn <4 x float> %i.kb, splat (float 1.000000e+00)
  %i.kd = shufflevector <2 x float> %i.jx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ke = shufflevector <2 x float> %i.jx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.kf = shufflevector <4 x float> %i.jp, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.kg = fmul reassoc nsz arcp contract afn <4 x float> %i.ke, %i.kf ; 2 uses
  %i.kh = shufflevector <4 x float> %i.jp, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 2, i32 7>
  %i.ki = shufflevector <4 x float> %i.kd, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 1, i32 7>
  %i.kj = fmul reassoc arcp contract afn <4 x float> %i.kh, %i.ki
  %i.kk = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.kl = shufflevector <2 x float> %i.jo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.km = shufflevector <2 x float> %i.kk, <2 x float> poison, <4 x i32> zeroinitializer
  %i.kn = fmul reassoc nsz arcp contract afn <4 x float> %i.kl, %i.km
  %i.ko = shufflevector <2 x float> %i.jo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.kp = shufflevector <4 x float> %i.jp, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.kq = fmul reassoc nsz arcp contract afn <4 x float> %i.ko, %i.kp ; 2 uses
  %i.kr = shufflevector <4 x float> %i.jp, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 3, i32 1, i32 3, i32 7>
  %i.ks = shufflevector <4 x float> %i.ko, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 2, i32 7>
  %i.kt = fmul reassoc arcp contract afn <4 x float> %i.kr, %i.ks
  %i.ku = fadd reassoc nsz arcp contract afn <4 x float> %i.kc, %i.kn ; 3 uses
  %i.kv = fadd reassoc nsz arcp contract afn <4 x float> %i.kq, %i.kg
  %i.kw = fdiv reassoc nsz arcp contract afn <4 x float> %i.kv, %i.ku
  %i.kx = fadd reassoc nsz arcp contract afn <4 x float> %i.kw, %i.jr
  %i.ky = fmul reassoc nsz arcp contract afn <4 x float> %i.kx, %i.he
  %i.kz = fsub reassoc nsz arcp contract afn <4 x float> %i.ky, %i.ix ; 4 uses
  %i.la = extractelement <4 x float> %i.kz, i64 0
  %i.lb = extractelement <2 x float> %i.hh, i64 0 ; 2 uses
  %i.lc = fmul reassoc nsz arcp contract afn float %i.lb, %i.la
  %i.ld = fadd reassoc arcp contract afn <4 x float> %i.kt, %i.kj
  %i.le = insertelement <4 x float> %i.ku, float 1.000000e+00, i64 3
  %i.lf = fdiv reassoc arcp contract afn <4 x float> %i.ld, %i.le
  %i.lg = shufflevector <4 x float> %i.jr, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.lh = fadd reassoc nsz arcp contract afn <4 x float> %i.lg, %i.lf
  %i.li = fadd reassoc nsz arcp contract afn <4 x float> %i.lh, <float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -0.000000e+00>
  %i.lj = fmul reassoc nsz arcp contract afn <4 x float> %i.li, %i.iy ; 3 uses
  %i.lk = extractelement <4 x float> %i.lj, i64 0
  %i.ll = extractelement <2 x float> %i.hh, i64 1 ; 2 uses
  %i.lm = fmul reassoc nsz arcp contract afn float %i.ll, %i.lk
  %i.ln = fadd reassoc nsz arcp contract afn float %i.lm, %i.lc ; 2 uses
  %i.lo = fmul reassoc nsz arcp contract afn float %i.ln, %i.gz
  %i.lp = fadd reassoc nsz arcp contract afn float %i.lo, 1.000000e+00
  %i.lq = shufflevector <4 x float> %i.hj, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.lr = fmul reassoc arcp contract afn <4 x float> %i.lq, %i.lj
  %i.ls = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lt = shufflevector <4 x float> %i.kz, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.lu = fmul reassoc nsz arcp contract afn <2 x float> %i.ls, %i.lt
  %i.lv = shufflevector <4 x float> %i.lj, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.lw = fmul reassoc nsz arcp contract afn <2 x float> %i.hh, %i.lv
  %i.lx = fadd reassoc nsz arcp contract afn <2 x float> %i.lw, %i.lu ; 3 uses
  %i.ly = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ma = fmul reassoc nsz arcp contract afn <2 x float> %i.lx, %i.lz
  %i.mb = fadd reassoc nsz arcp contract afn <2 x float> %i.ma, splat (float 1.000000e+00)
  %shift373 = shufflevector <4 x float> %i.kq, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop374 = fadd reassoc nsz arcp contract afn <4 x float> %shift373, %i.kg
  %shift376 = shufflevector <4 x float> %i.ku, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop377 = fdiv reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop374, %shift376
  %foldExtExtBinop379 = fadd reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop377, %i.jr
  %foldExtExtBinop381 = fmul reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop379, %i.he
  %foldExtExtBinop383 = fsub reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop381, %i.ix ; 2 uses
  %i.mc = extractelement <4 x float> %foldExtExtBinop383, i64 0
  %foldExtExtBinop385 = fmul reassoc nsz arcp contract afn <4 x float> %i.hj, %foldExtExtBinop383
  %i.md = shufflevector <2 x float> %i.hi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.me = fmul reassoc nsz arcp contract afn <4 x float> %i.md, %i.kz
  %i.mf = fadd reassoc nsz arcp contract afn <4 x float> %i.me, %i.lr ; 2 uses
  %i.mg = insertelement <4 x float> poison, float %i.lp, i64 0
  %i.mh = shufflevector <2 x float> %i.mb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mi = shufflevector <4 x float> %i.mg, <4 x float> %i.mh, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.mj = shufflevector <4 x float> %i.mi, <4 x float> %foldExtExtBinop385, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.mk = fmul reassoc nsz arcp contract afn <4 x float> %i.mf, %i.mj ; 4 uses
  %i.ml = fadd reassoc nsz arcp contract afn <4 x float> %i.mf, %i.mj
  %i.mm = shufflevector <4 x float> %i.mk, <4 x float> %i.ml, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.mn = extractelement <4 x float> %i.mk, i64 0
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mn, %i.hb
  %i.mp = fadd reassoc nsz arcp contract afn float %i.mo, 1.000000e+00
  %i.mq = fmul reassoc nsz arcp contract afn float %i.mp, %i.ln
  %i.mr = extractelement <4 x float> %i.mk, i64 1
  %i.ms = fmul reassoc nsz arcp contract afn float %i.mr, %i.hb
  %i.mt = fadd reassoc nsz arcp contract afn float %i.ms, 1.000000e+00
  %i.mu = extractelement <2 x float> %i.lx, i64 0
  %i.mv = fmul reassoc nsz arcp contract afn float %i.mt, %i.mu
  %i.mw = extractelement <4 x float> %i.mk, i64 2
  %i.mx = fmul reassoc nsz arcp contract afn float %i.mw, %i.hb
  %i.my = fadd reassoc nsz arcp contract afn float %i.mx, 1.000000e+00
  %i.mz = extractelement <2 x float> %i.lx, i64 1
  %i.na = fmul reassoc nsz arcp contract afn float %i.my, %i.mz
  %i.nb = fmul reassoc nsz arcp contract afn float %i.lb, %i.mc
  %i.nc = extractelement <4 x float> %i.kz, i64 3
  %i.nd = fmul reassoc nsz arcp contract afn float %i.ll, %i.nc
  %i.ne = fadd reassoc nsz arcp contract afn float %i.nd, %i.nb
  br label %.split297.us

.split297.us:                                     ; preds = %.split.preheader, %.split.us
  %.sink367 = phi float [ %i.ib, %.split.preheader ], [ %i.ne, %.split.us ] ; 2 uses
  %.pn = phi float [ %i.in, %.split.preheader ], [ %i.mq, %.split.us ]
  %.pn350 = phi float [ %i.iv, %.split.preheader ], [ %i.mv, %.split.us ]
  %.pn351 = phi float [ %i.iw, %.split.preheader ], [ %i.na, %.split.us ]
  %i.nf = phi <4 x float> [ %6, %.split.preheader ], [ %i.mm, %.split.us ]
  %.scalar = fmul reassoc arcp contract afn float %.sink367, %i.gz
  %.scalar387 = fadd reassoc nsz arcp contract afn float %.scalar, 1.000000e+00
  %i.ng = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %.scalar387, i64 3
  %i.nh = fmul <4 x float> %i.nf, %i.ng           ; 2 uses
  %i.ni = extractelement <4 x float> %i.nh, i64 3
  %i.nj = fmul reassoc nsz arcp contract afn float %i.ni, %i.hb
  %i.nk = fadd reassoc nsz arcp contract afn float %i.nj, 1.000000e+00
  %i.nl = fmul reassoc nsz arcp contract afn float %i.nk, %.sink367
  %i.nm = shufflevector <2 x float> %i.hg, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.nn = fadd reassoc nsz arcp contract afn <4 x float> %i.nh, %i.nm ; 4 uses
  %i.no = extractelement <2 x float> %i.hg, i64 0 ; 5 uses
  %.sroa.12313.0 = fadd reassoc nsz arcp contract afn float %i.nl, %i.no ; 2 uses
  %.sroa.9312.0 = fadd reassoc nsz arcp contract afn float %.pn351, %i.no ; 2 uses
  %.sroa.6311.0 = fadd reassoc nsz arcp contract afn float %.pn350, %i.no ; 2 uses
  %.sroa.0310.0 = fadd reassoc nsz arcp contract afn float %.pn, %i.no ; 2 uses
  %i.np = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.0310.0, float %.sroa.6311.0)
  %i.nq = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.np, float %.sroa.9312.0)
  %i.nr = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.nq, float %.sroa.12313.0) ; 2 uses
  %i.ns = extractelement <4 x float> %i.he, i64 0 ; 5 uses
  %i.nt = fadd reassoc nsz arcp contract afn float %i.nr, %i.ns
  %i.nu = fcmp reassoc nsz arcp contract afn olt float %i.nt, 0.000000e+00
  %i.nv = extractelement <4 x float> %i.nn, i64 0 ; 2 uses
  %i.nw = extractelement <4 x float> %i.nn, i64 1 ; 2 uses
  %i.nx = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.nv, float %i.nw)
  %i.ny = extractelement <4 x float> %i.nn, i64 2 ; 2 uses
  %i.nz = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.nx, float %i.ny)
  %i.oa = extractelement <4 x float> %i.nn, i64 3 ; 2 uses
  %i.ob = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.nz, float %i.oa) ; 2 uses
  %i.oc = extractelement <4 x float> %i.he, i64 1 ; 6 uses
  %i.od = fadd reassoc nsz arcp contract afn float %i.ob, %i.oc
  %i.oe = fcmp reassoc nsz arcp contract afn olt float %i.od, 0.000000e+00
  %i.of = sub nsw <2 x i32> zeroinitializer, %i.hc
  %i.og = sitofp reassoc nsz arcp contract afn <2 x i32> %i.of to <2 x float> ; 2 uses
  %i.oh = extractelement <2 x float> %i.og, i64 0
  %.0250 = select nsz i1 %i.nu, float %i.oh, float %i.nr ; 3 uses
  %i.oi = extractelement <2 x float> %i.og, i64 1
  %.0248 = select nsz i1 %i.oe, float %i.oi, float %i.ob ; 3 uses
  %i.oj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.0310.0, float %.sroa.6311.0)
  %i.ok = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.oj, float %.sroa.9312.0)
  %i.ol = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ok, float %.sroa.12313.0) ; 2 uses
  %i.om = fmul reassoc nnan nsz arcp contract afn float %i.ns, 2.000000e+00 ; 2 uses
  %i.on = fcmp reassoc nsz arcp contract afn ogt float %i.ol, %i.om
  %.0246 = select nsz i1 %i.on, float %i.om, float %i.ol ; 3 uses
  %i.oo = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.nv, float %i.nw)
  %i.op = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.oo, float %i.ny)
  %i.oq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.op, float %i.oa) ; 2 uses
  %i.or = fmul reassoc nnan nsz arcp contract afn float %i.oc, 2.000000e+00 ; 2 uses
  %i.os = fcmp reassoc nsz arcp contract afn ogt float %i.oq, %i.or
  %.0244 = select nsz i1 %i.os, float %i.or, float %i.oq ; 2 uses
  %i.ot = fsub reassoc nsz arcp contract afn float %.0246, %.0250
  %i.ou = fmul reassoc nnan nsz arcp contract afn float %i.ns, 1.250000e-01
  %i.ov = fcmp reassoc nsz arcp contract afn olt float %i.ot, %i.ou
  br i1 %i.ov, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.split297.us
  %i.ow = fadd reassoc nsz arcp contract afn float %.0250, %.0246
  %i.ox = fmul reassoc nsz arcp contract afn float %i.ow, 5.000000e-01 ; 2 uses
  %i.oy = fmul reassoc nnan nsz arcp contract afn float %i.ns, 6.250000e-02 ; 4 uses
  %i.oz = fcmp reassoc nsz arcp contract afn olt float %i.ox, %i.oy
  %spec.select = select nsz i1 %i.oz, float %i.oy, float %i.ox ; 2 uses
  %i.pa = fmul reassoc nnan nsz arcp contract afn float %i.ns, 9.375000e-01 ; 2 uses
  %i.pb = fcmp reassoc nsz arcp contract afn ult float %spec.select, %i.pa
  %i.pc = fadd reassoc nsz arcp contract afn float %i.pa, -1.000000e+00
  %.1243 = select nsz i1 %i.pb, float %spec.select, float %i.pc ; 2 uses
  %i.pd = fsub reassoc nsz arcp contract afn float %.1243, %i.oy
  %i.pe = fadd reassoc nsz arcp contract afn float %.1243, %i.oy
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.split297.us
  %.1251 = phi nsz float [ %i.pd, %bb.aq ], [ %.0250, %.split297.us ] ; 2 uses
  %.1247 = phi nsz float [ %i.pe, %bb.aq ], [ %.0246, %.split297.us ]
  %i.pf = fsub reassoc nsz arcp contract afn float %.0244, %.0248 ; 2 uses
  %i.pg = fmul reassoc nnan nsz arcp contract afn float %i.oc, 1.250000e-01
  %i.ph = fcmp reassoc nsz arcp contract afn olt float %i.pf, %i.pg
  br i1 %i.ph, label %bb.as, label %.thread358

bb.as:                                            ; preds = %bb.ar
  %i.pi = fadd reassoc nsz arcp contract afn float %.0248, %.0244
  %i.pj = fmul reassoc nsz arcp contract afn float %i.pi, 5.000000e-01 ; 2 uses
  %i.pk = fmul reassoc nnan nsz arcp contract afn float %i.oc, 6.250000e-02 ; 3 uses
  %i.pl = fcmp reassoc nsz arcp contract afn olt float %i.pj, %i.pk
  %spec.select275 = select nsz i1 %i.pl, float %i.pk, float %i.pj ; 2 uses
  %i.pm = fmul reassoc nnan nsz arcp contract afn float %i.oc, 9.375000e-01 ; 2 uses
  %i.pn = fcmp reassoc nsz arcp contract afn ult float %spec.select275, %i.pm
  %i.po = fadd reassoc nsz arcp contract afn float %i.pm, -1.000000e+00
  %.1 = select nsz i1 %i.pn, float %spec.select275, float %i.po
  %i.pp = fsub reassoc nsz arcp contract afn float %.1, %i.pk
  %.pre347 = fmul reassoc nnan nsz arcp contract afn float %i.oc, 1.250000e-01
  br label %.thread358

.thread358:                                       ; preds = %bb.ar, %bb.as
  %.pre-phi = phi float [ %.pre347, %bb.as ], [ %i.pf, %bb.ar ]
  %.1249 = phi nsz float [ %i.pp, %bb.as ], [ %.0248, %bb.ar ]
  %i.pq = fsub reassoc nsz arcp contract afn float %.1247, %.1251
  %i.pr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ps = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.pt = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.pu = load <2 x float>, ptr %i.pr, align 4, !tbaa !13 ; 2 uses
  %i.pv = insertelement <2 x float> poison, float %i.pq, i64 0
  %i.pw = insertelement <2 x float> %i.pv, float %.pre-phi, i64 1 ; 2 uses
  %i.px = fmul reassoc nsz arcp contract afn <2 x float> %i.pu, %i.pw
  %i.py = insertelement <2 x float> poison, float %.1251, i64 0
  %i.pz = insertelement <2 x float> %i.py, float %.1249, i64 1
  %i.qa = fadd reassoc nsz arcp contract afn <2 x float> %i.px, %i.pz ; 2 uses
  %i.qb = load <2 x float>, ptr %i.ps, align 4, !tbaa !13
  %i.qc = fsub reassoc nsz arcp contract afn <2 x float> %i.qb, %i.pu
  %i.qd = fmul reassoc nsz arcp contract afn <2 x float> %i.qc, %i.pw
  %i.qe = fneg reassoc nsz arcp contract afn <2 x float> %i.qa
  %i.qf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.qe, <2 x float> zeroinitializer)
  store <2 x float> %i.qf, ptr %i.pt, align 4, !tbaa !13
  %i.qg = shufflevector <2 x float> %i.qd, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.qh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.qa, <2 x float> zeroinitializer)
  %i.qi = shufflevector <2 x float> %i.qh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qj = shufflevector <4 x float> %i.qi, <4 x float> %i.qg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qk = fptosi <4 x float> %i.qj to <4 x i32>   ; 2 uses
  store <4 x i32> %i.qk, ptr %2, align 4, !tbaa !14
  %i.ql = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store float %i.no, ptr %i.ql, align 4, !tbaa !67
  %i.qm = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.qn = extractelement <2 x float> %i.hg, i64 1
  store float %i.qn, ptr %i.qm, align 4, !tbaa !68
  %i.qo = extractelement <4 x i32> %i.qk, i64 0
  br label %bb.au

.loopexit:                                        ; preds = %bb.ao, %.thread
  %.pre = load i32, ptr %2, align 4, !tbaa !93    ; 2 uses
  %i.qp = icmp slt i32 %.pre, 0
  br i1 %i.qp, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.loopexit
  store i32 0, ptr %2, align 4, !tbaa !93
  br label %bb.au

bb.au:                                            ; preds = %.thread358, %bb.at, %.loopexit
  %i.qq = phi i32 [ 0, %bb.at ], [ %.pre, %.loopexit ], [ %i.qo, %.thread358 ]
  %i.qr = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !94 ; 2 uses
  %i.qt = icmp slt i32 %i.qs, 0
  br i1 %i.qt, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.qr, align 4, !tbaa !94
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.qu = phi i32 [ 0, %bb.av ], [ %i.qs, %bb.au ]
  %i.qv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !78
  %i.qx = icmp slt i32 %i.qw, 4
  br i1 %i.qx, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.qy = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !79
  %i.ra = icmp slt i32 %i.qz, 4
  br i1 %i.ra, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.rb = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !132
  %i.rc = and i32 %i.rb, 33554432
  %.not272 = icmp eq i32 %i.rc, 0
  br i1 %.not272, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !33
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.7, ptr noundef %i.re, ptr noundef %0, i32 noundef -2, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull @.str.8) #25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.rf = load <4 x i32>, ptr %4, align 16, !tbaa !14 ; 3 uses
  store <4 x i32> %i.rf, ptr %2, align 4, !tbaa !14
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.rg, align 16, !tbaa !285
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !33
  %i.rj = getelementptr i8, ptr %i.ri, i64 644
  %.val = load i32, ptr %i.rj, align 4, !tbaa !50
  %i.rk = and i32 %.val, 2
  %.not273 = icmp eq i32 %i.rk, 0
  %i.rl = extractelement <4 x i32> %i.rf, i64 0
  %i.rm = extractelement <4 x i32> %i.rf, i64 1
  br i1 %.not273, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.rn = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #25
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !133
  %i.rq = call ptr %i.rp() #25
  call void (ptr, ...) @dt_control_log(ptr noundef %i.rn, ptr noundef %i.rq) #25
  %.pre345 = load i32, ptr %2, align 4, !tbaa !93
  %.pre346 = load i32, ptr %i.qr, align 4, !tbaa !94
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %bb.ax
  %i.rr = phi i32 [ %i.rm, %bb.ba ], [ %.pre346, %bb.bb ], [ %i.qu, %bb.ax ]
  %i.rs = phi i32 [ %i.rl, %bb.ba ], [ %.pre345, %bb.bb ], [ %i.qq, %bb.ax ]
  %i.rt = sitofp reassoc nsz arcp contract afn i32 %i.rs to float
  %i.ru = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store float %i.rt, ptr %i.ru, align 4, !tbaa !72
end_hunk_0
