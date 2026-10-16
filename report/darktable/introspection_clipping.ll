Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_clipping?download=true
inline.NumInlined: 74
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@modify_roi_out:bb.a
  %i.eo = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1, float %i.en)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.2 = phi nsz float [ %i.eo, %bb.p ], [ %.2.1.1, %bb.o ] ; 2 uses
  br i1 %i.dw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.0.12.vec.extract508 = extractelement <4 x float> %i.ee, i64 3
  %.sroa.0.4.vec.extract480 = extractelement <4 x float> %i.ee, i64 1
  %.sroa.speculated419 = select i1 %i.dg, float %.sroa.0.12.vec.extract508, float %.sroa.0.4.vec.extract480
  %i.ep = fdiv reassoc nsz arcp contract afn float %.sroa.speculated419, %i.do
  %i.eq = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.2, float %i.ep)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.1.2 = phi nsz float [ %i.eq, %bb.r ], [ %.2.2, %bb.q ] ; 2 uses
  br i1 %i.dv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.0.8.vec.extract498 = extractelement <4 x float> %i.ee, i64 2
  %.sroa.0.0.vec.extract = extractelement <4 x float> %i.ee, i64 0
  %.sroa.speculated437 = select i1 %i.dh, float %.sroa.0.8.vec.extract498, float %.sroa.0.0.vec.extract
  %i.er = fdiv reassoc nsz arcp contract afn float %.sroa.speculated437, %i.dn
  %i.es = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.2, float %i.er)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.3 = phi nsz float [ %i.es, %bb.t ], [ %.2.1.2, %bb.s ] ; 2 uses
  br i1 %i.du, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.sroa.0.12.vec.extract512 = extractelement <4 x float> %i.ee, i64 3
  %.sroa.0.4.vec.extract484 = extractelement <4 x float> %i.ee, i64 1
  %.sroa.speculated = select i1 %i.dk, float %.sroa.0.12.vec.extract512, float %.sroa.0.4.vec.extract484
  %i.et = fdiv reassoc nsz arcp contract afn float %.sroa.speculated, %i.dm
  %i.eu = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.3, float %i.et)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.1.3 = phi nsz float [ %i.eu, %bb.v ], [ %.2.3, %bb.u ] ; 3 uses
  %i.ev = fcmp reassoc nsz arcp contract afn ult float %.2.1.3, -1.000000e+00
  br i1 %i.ev, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store <2 x float> %i.bh, ptr %i.bi, align 4, !tbaa !13
  store i32 0, ptr %i.bj, align 4, !tbaa !71
  %i.ew = insertelement <2 x float> poison, float %.2.1.3, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = fmul reassoc nsz arcp contract afn <2 x float> %i.ex, %i.ba ; 2 uses
  %i.ez = load <2 x float>, ptr %i.bk, align 4, !tbaa !13
  %i.fa = load <2 x float>, ptr %i.bl, align 4, !tbaa !13 ; 2 uses
  %i.fb = fsub reassoc nsz arcp contract afn <2 x float> %i.ez, %i.fa
  %i.fc = fsub reassoc nsz arcp contract afn <2 x float> splat (float 5.000000e-01), %i.fa
  %i.fd = fmul reassoc nsz arcp contract afn <2 x float> %i.ey, %i.fc
  %i.fe = fsub reassoc nsz arcp contract afn <2 x float> %i.bh, %i.fd
  %i.ff = fptosi <2 x float> %i.fe to <2 x i32>
  store <2 x i32> %i.ff, ptr %2, align 4, !tbaa !14
  %i.fg = fmul reassoc nsz arcp contract afn <2 x float> %i.ey, %i.fb
  %i.fh = fptosi <2 x float> %i.fg to <2 x i32>
  store <2 x i32> %i.fh, ptr %i.bm, align 4, !tbaa !14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1259 = phi nsz float [ -1.000000e+00, %bb.w ], [ %.2.1.3, %bb.x ]
  %i.fi = shufflevector <2 x i32> %i.dl, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fj = sitofp <4 x i32> %i.fi to <4 x float>
  %i.fk = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.fj, <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 5.000000e-01> ; 16 uses
  br i1 %i.eb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.0.8.vec.extract488 = extractelement <4 x float> %i.fk, i64 2
  %.sroa.0.0.vec.extract472 = extractelement <4 x float> %i.fk, i64 0
  %.sroa.speculated458 = select i1 %i.db, float %.sroa.0.8.vec.extract488, float %.sroa.0.0.vec.extract472
  %i.fl = fdiv reassoc nsz arcp contract afn float %.sroa.speculated458, %i.dt
  %i.fm = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fl, float 1.000000e+00)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.2.1390 = phi nsz float [ %i.fm, %bb.z ], [ 1.000000e+00, %bb.y ] ; 2 uses
  br i1 %i.ea, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.12.vec.extract502 = extractelement <4 x float> %i.fk, i64 3
  %.sroa.0.4.vec.extract474 = extractelement <4 x float> %i.fk, i64 1
  %.sroa.speculated434 = select i1 %i.dc, float %.sroa.0.12.vec.extract502, float %.sroa.0.4.vec.extract474
  %i.fn = fdiv reassoc nsz arcp contract afn float %.sroa.speculated434, %i.ds
  %i.fo = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1390, float %i.fn)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.2.1.1391 = phi nsz float [ %i.fo, %bb.ab ], [ %.2.1390, %bb.aa ] ; 2 uses
  br i1 %i.dz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0.8.vec.extract492 = extractelement <4 x float> %i.fk, i64 2
  %.sroa.0.0.vec.extract468 = extractelement <4 x float> %i.fk, i64 0
  %.sroa.speculated452 = select i1 %i.dd, float %.sroa.0.8.vec.extract492, float %.sroa.0.0.vec.extract468
  %i.fp = fdiv reassoc nsz arcp contract afn float %.sroa.speculated452, %i.dr
  %i.fq = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1391, float %i.fp)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.2.1309.1 = phi nsz float [ %i.fq, %bb.ad ], [ %.2.1.1391, %bb.ac ] ; 2 uses
  br i1 %i.dy, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.0.12.vec.extract506 = extractelement <4 x float> %i.fk, i64 3
  %.sroa.0.4.vec.extract478 = extractelement <4 x float> %i.fk, i64 1
  %.sroa.speculated428 = select i1 %i.de, float %.sroa.0.12.vec.extract506, float %.sroa.0.4.vec.extract478
  %i.fr = fdiv reassoc nsz arcp contract afn float %.sroa.speculated428, %i.dq
  %i.fs = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1309.1, float %i.fr)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.2.1.1.1 = phi nsz float [ %i.fs, %bb.af ], [ %.2.1309.1, %bb.ae ] ; 2 uses
  br i1 %i.dx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0.8.vec.extract496 = extractelement <4 x float> %i.fk, i64 2
  %.sroa.0.0.vec.extract464 = extractelement <4 x float> %i.fk, i64 0
  %.sroa.speculated446 = select i1 %i.df, float %.sroa.0.8.vec.extract496, float %.sroa.0.0.vec.extract464
  %i.ft = fdiv reassoc nsz arcp contract afn float %.sroa.speculated446, %i.dp
  %i.fu = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1.1, float %i.ft)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.2.2.1 = phi nsz float [ %i.fu, %bb.ah ], [ %.2.1.1.1, %bb.ag ] ; 2 uses
  br i1 %i.dw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.sroa.0.12.vec.extract510 = extractelement <4 x float> %i.fk, i64 3
  %.sroa.0.4.vec.extract482 = extractelement <4 x float> %i.fk, i64 1
  %.sroa.speculated422 = select i1 %i.dg, float %.sroa.0.12.vec.extract510, float %.sroa.0.4.vec.extract482
  %i.fv = fdiv reassoc nsz arcp contract afn float %.sroa.speculated422, %i.do
  %i.fw = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.2.1, float %i.fv)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2.1.2.1 = phi nsz float [ %i.fw, %bb.aj ], [ %.2.2.1, %bb.ai ] ; 2 uses
  br i1 %i.dv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.8.vec.extract500 = extractelement <4 x float> %i.fk, i64 2
  %.sroa.0.0.vec.extract460 = extractelement <4 x float> %i.fk, i64 0
  %.sroa.speculated440 = select i1 %i.dh, float %.sroa.0.8.vec.extract500, float %.sroa.0.0.vec.extract460
  %i.fx = fdiv reassoc nsz arcp contract afn float %.sroa.speculated440, %i.dn
  %i.fy = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.2.1, float %i.fx)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.2.3.1 = phi nsz float [ %i.fy, %bb.al ], [ %.2.1.2.1, %bb.ak ] ; 2 uses
  br i1 %i.du, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.0.12.vec.extract514 = extractelement <4 x float> %i.fk, i64 3
  %.sroa.0.4.vec.extract486 = extractelement <4 x float> %i.fk, i64 1
  %.sroa.speculated416 = select i1 %i.dk, float %.sroa.0.12.vec.extract514, float %.sroa.0.4.vec.extract486
  %i.fz = fdiv reassoc nsz arcp contract afn float %.sroa.speculated416, %i.dm
  %i.ga = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.3.1, float %i.fz)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.2.1.3.1 = phi nsz float [ %i.ga, %bb.an ], [ %.2.3.1, %bb.am ] ; 2 uses
  %i.gb = fcmp reassoc nsz arcp contract afn ult float %.2.1.3.1, %.1259
  br i1 %i.gb, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.ao
  store <2 x float> %i.bh, ptr %i.bi, align 4, !tbaa !13
  store i32 1, ptr %i.bj, align 4, !tbaa !71
  %i.gc = load <2 x float>, ptr %i.bk, align 4, !tbaa !13
  %i.gd = load <2 x float>, ptr %i.bl, align 4, !tbaa !13 ; 2 uses
  %i.ge = fsub reassoc nsz arcp contract afn <2 x float> %i.gc, %i.gd
  %i.gf = insertelement <2 x float> poison, float %.2.1.3.1, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = fmul reassoc nsz arcp contract afn <2 x float> %i.gg, %i.ba ; 2 uses
  %i.gi = shufflevector <2 x float> %i.bh, <2 x float> %i.gh, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.gj = shufflevector <2 x float> %i.ge, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.gk = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.gl = fsub reassoc nsz arcp contract afn <2 x float> splat (float 5.000000e-01), %i.gd
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gn = fmul reassoc nsz arcp contract afn <4 x float> %i.gk, %i.gm
  %i.go = shufflevector <4 x float> %i.gn, <4 x float> %i.gj, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.gp = fsub reassoc nsz arcp contract afn <4 x float> %i.gi, %i.go
  %i.gq = fmul reassoc nsz arcp contract afn <4 x float> %i.gi, %i.go
  %i.gr = shufflevector <4 x float> %i.gp, <4 x float> %i.gq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gs = fptosi <4 x float> %i.gr to <4 x i32>
  store <4 x i32> %i.gs, ptr %2, align 4, !tbaa !14
  br label %.loopexit

bb.ap:                                            ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 16 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !87
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 0, ptr %i.gu, align 4, !tbaa !71
  %i.gv = load i32, ptr %i.aj, align 4, !tbaa !66
  %i.gw = icmp eq i32 %i.gv, 1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !69 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !70 ; 6 uses
  %i.hb = load <2 x i32>, ptr %i.gt, align 8, !tbaa !14 ; 2 uses
  %i.hc = shufflevector <2 x i32> %i.hb, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hd = sitofp <4 x i32> %i.hc to <4 x float>   ; 11 uses
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hf = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.he, splat (float 5.000000e-01) ; 5 uses
  %i.hg = load <2 x float>, ptr %i.v, align 4, !tbaa !13 ; 6 uses
  %i.hh = load <2 x float>, ptr %i.ab, align 4, !tbaa !13 ; 2 uses
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  br i1 %i.gw, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ap
  %i.hj = fneg reassoc nsz arcp contract afn <2 x float> %i.hf
  %i.hk = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.hl = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> %i.hk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hn = fmul reassoc nsz arcp contract afn <4 x float> %i.hm, <float 1.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01> ; 2 uses
  %i.ho = shufflevector <4 x float> %i.hd, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 poison, i32 0, i32 0, i32 7>
  %i.hp = shufflevector <4 x float> %i.hl, <4 x float> %i.ho, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hq = fmul reassoc nsz arcp contract afn <4 x float> %i.hp, <float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>
  %i.hr = shufflevector <2 x float> %i.hg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.hs = insertelement <4 x float> %i.hr, float -0.000000e+00, i64 3
  %i.ht = fmul reassoc arcp contract afn <4 x float> %i.hs, %i.hq ; 2 uses
  %i.hu = shufflevector <2 x float> %i.hg, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.hv = insertelement <4 x float> %i.hu, float 1.000000e+00, i64 3
  %i.hw = shufflevector <4 x float> %i.hl, <4 x float> %i.hn, <4 x i32> <i32 1, i32 1, i32 7, i32 poison>
  %i.hx = insertelement <4 x float> %i.hw, float 1.000000e+00, i64 3
  %i.hy = fmul reassoc nsz arcp contract afn <4 x float> %i.hv, %i.hx ; 2 uses
  %i.hz = fadd reassoc nsz arcp contract afn <4 x float> %i.hy, %i.ht ; 3 uses
  %shift = shufflevector <4 x float> %i.hy, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <4 x float> %shift, %i.ht
  %i.ia = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ib = fmul reassoc nsz arcp contract afn <4 x float> %i.hi, %i.hn ; 2 uses
  %i.ic = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.gy, i64 0
  %i.id = shufflevector <4 x float> %i.ic, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ie = fmul reassoc arcp contract afn <4 x float> %i.id, %i.hz
  %i.if = fadd reassoc nsz arcp contract afn <4 x float> %i.ie, splat (float 1.000000e+00)
  %i.ig = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ih = fadd reassoc nsz arcp contract afn <4 x float> %i.ib, %i.ig
  %i.ii = fmul reassoc nsz arcp contract afn <4 x float> %i.ih, %i.if ; 3 uses
  %i.ij = extractelement <4 x float> %i.ii, i64 0
  %i.ik = fmul reassoc nsz arcp contract afn float %i.ij, %i.ha
  %i.il = fadd reassoc nsz arcp contract afn float %i.ik, 1.000000e+00
  %i.im = extractelement <4 x float> %i.hz, i64 0
  %i.in = fmul reassoc nsz arcp contract afn float %i.il, %i.im
  %5 = shufflevector <4 x float> %i.ii, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %6 = insertelement <2 x float> poison, float %i.ha, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul reassoc nsz arcp contract afn <2 x float> %5, %7
  %9 = fadd reassoc nsz arcp contract afn <2 x float> %8, splat (float 1.000000e+00)
  %10 = shufflevector <4 x float> %i.hz, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %11 = fmul reassoc nsz arcp contract afn <2 x float> %9, %10 ; 2 uses
  %i.io = extractelement <2 x float> %11, i64 0
  %12 = extractelement <2 x float> %11, i64 1
  br label %.split297.us

.split.us:                                        ; preds = %bb.ap
  %i.ip = shufflevector <2 x float> %i.hf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.iq = shufflevector <4 x float> %i.hd, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.it = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.iv = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.ix = load float, ptr %i.iu, align 4, !tbaa !91
  %i.iy = load float, ptr %i.it, align 4, !tbaa !92
  %i.iz = load float, ptr %i.is, align 4, !tbaa !80
  %i.ja = load float, ptr %i.ir, align 4, !tbaa !81
  %i.jb = shufflevector <4 x float> %i.hd, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <2 x i32> <i32 4, i32 1>
  %i.jc = shufflevector <4 x float> %i.hd, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jd = fdiv reassoc nsz arcp contract afn <2 x float> %i.jb, %i.jc
  %i.je = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = fsub reassoc nsz arcp contract afn <2 x float> %i.jd, %i.jf ; 2 uses
  %i.jh = load <4 x float>, ptr %i.iv, align 4, !tbaa !13 ; 4 uses
  %i.ji = load <2 x float>, ptr %i.iw, align 4, !tbaa !13
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.jk = shufflevector <4 x float> %i.hd, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jl = insertelement <2 x float> %i.jk, float 0.000000e+00, i64 0
  %i.jm = fdiv reassoc nsz arcp contract afn <2 x float> %i.jl, %i.jk
  %i.jn = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jp = fsub reassoc nsz arcp contract afn <2 x float> %i.jm, %i.jo ; 3 uses
  %i.jq = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.jr = shufflevector <2 x float> %i.jp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.js = shufflevector <2 x float> %i.jq, <2 x float> poison, <4 x i32> zeroinitializer
  %i.jt = fmul reassoc nsz arcp contract afn <4 x float> %i.jr, %i.js
  %i.ju = fadd reassoc nsz arcp contract afn <4 x float> %i.jt, splat (float 1.000000e+00)
  %i.jv = shufflevector <2 x float> %i.jp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jw = shufflevector <2 x float> %i.jp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.jx = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.jy = fmul reassoc nsz arcp contract afn <4 x float> %i.jw, %i.jx ; 2 uses
  %i.jz = shufflevector <4 x float> %i.jh, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 2, i32 7>
  %i.ka = shufflevector <4 x float> %i.jv, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 1, i32 7>
  %i.kb = fmul reassoc arcp contract afn <4 x float> %i.jz, %i.ka
  %i.kc = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.kd = shufflevector <2 x float> %i.jg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ke = shufflevector <2 x float> %i.kc, <2 x float> poison, <4 x i32> zeroinitializer
  %i.kf = fmul reassoc nsz arcp contract afn <4 x float> %i.kd, %i.ke
  %i.kg = shufflevector <2 x float> %i.jg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.kh = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.ki = fmul reassoc nsz arcp contract afn <4 x float> %i.kg, %i.kh ; 2 uses
  %i.kj = shufflevector <4 x float> %i.jh, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 3, i32 1, i32 3, i32 7>
  %i.kk = shufflevector <4 x float> %i.kg, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 2, i32 7>
  %i.kl = fmul reassoc arcp contract afn <4 x float> %i.kj, %i.kk
  %i.km = fadd reassoc nsz arcp contract afn <4 x float> %i.ju, %i.kf ; 3 uses
  %i.kn = fadd reassoc nsz arcp contract afn <4 x float> %i.ki, %i.jy
  %i.ko = fdiv reassoc nsz arcp contract afn <4 x float> %i.kn, %i.km
  %i.kp = fadd reassoc nsz arcp contract afn <4 x float> %i.ko, %i.jj
  %i.kq = fmul reassoc nsz arcp contract afn <4 x float> %i.kp, %i.hd
  %i.kr = fsub reassoc nsz arcp contract afn <4 x float> %i.kq, %i.ip ; 4 uses
  %i.ks = extractelement <4 x float> %i.kr, i64 0
  %i.kt = extractelement <2 x float> %i.hg, i64 0 ; 2 uses
  %i.ku = fmul reassoc nsz arcp contract afn float %i.kt, %i.ks
  %i.kv = fadd reassoc arcp contract afn <4 x float> %i.kl, %i.kb
  %i.kw = insertelement <4 x float> %i.km, float 1.000000e+00, i64 3
  %i.kx = fdiv reassoc arcp contract afn <4 x float> %i.kv, %i.kw
  %i.ky = shufflevector <4 x float> %i.jj, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.kz = fadd reassoc nsz arcp contract afn <4 x float> %i.ky, %i.kx
  %i.la = fadd reassoc nsz arcp contract afn <4 x float> %i.kz, <float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -0.000000e+00>
  %i.lb = fmul reassoc nsz arcp contract afn <4 x float> %i.la, %i.iq ; 3 uses
  %i.lc = extractelement <4 x float> %i.lb, i64 0
  %i.ld = extractelement <2 x float> %i.hg, i64 1 ; 2 uses
  %i.le = fmul reassoc nsz arcp contract afn float %i.ld, %i.lc
  %i.lf = fadd reassoc nsz arcp contract afn float %i.le, %i.ku ; 2 uses
  %i.lg = fmul reassoc nsz arcp contract afn float %i.lf, %i.gy
  %i.lh = fadd reassoc nsz arcp contract afn float %i.lg, 1.000000e+00
  %i.li = shufflevector <4 x float> %i.hi, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.lj = fmul reassoc arcp contract afn <4 x float> %i.li, %i.lb
  %i.lk = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ll = shufflevector <4 x float> %i.kr, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.lm = fmul reassoc nsz arcp contract afn <2 x float> %i.lk, %i.ll
  %i.ln = shufflevector <4 x float> %i.lb, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.lo = fmul reassoc nsz arcp contract afn <2 x float> %i.hg, %i.ln
  %i.lp = fadd reassoc nsz arcp contract afn <2 x float> %i.lo, %i.lm ; 3 uses
  %i.lq = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.lr = shufflevector <2 x float> %i.lq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ls = fmul reassoc nsz arcp contract afn <2 x float> %i.lp, %i.lr
  %i.lt = fadd reassoc nsz arcp contract afn <2 x float> %i.ls, splat (float 1.000000e+00)
  %shift373 = shufflevector <4 x float> %i.ki, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop374 = fadd reassoc nsz arcp contract afn <4 x float> %shift373, %i.jy
  %shift376 = shufflevector <4 x float> %i.km, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop377 = fdiv reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop374, %shift376
  %foldExtExtBinop379 = fadd reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop377, %i.jj
  %foldExtExtBinop381 = fmul reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop379, %i.hd
  %foldExtExtBinop383 = fsub reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop381, %i.ip ; 2 uses
  %i.lu = extractelement <4 x float> %foldExtExtBinop383, i64 0
  %foldExtExtBinop385 = fmul reassoc nsz arcp contract afn <4 x float> %i.hi, %foldExtExtBinop383
  %i.lv = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.lw = fmul reassoc nsz arcp contract afn <4 x float> %i.lv, %i.kr
  %i.lx = fadd reassoc nsz arcp contract afn <4 x float> %i.lw, %i.lj ; 2 uses
  %i.ly = insertelement <4 x float> poison, float %i.lh, i64 0
  %i.lz = shufflevector <2 x float> %i.lt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ma = shufflevector <4 x float> %i.ly, <4 x float> %i.lz, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.mb = shufflevector <4 x float> %i.ma, <4 x float> %foldExtExtBinop385, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.mc = fmul reassoc nsz arcp contract afn <4 x float> %i.lx, %i.mb ; 4 uses
  %i.md = fadd reassoc nsz arcp contract afn <4 x float> %i.lx, %i.mb
  %i.me = shufflevector <4 x float> %i.mc, <4 x float> %i.md, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.mf = extractelement <4 x float> %i.mc, i64 0
  %i.mg = fmul reassoc nsz arcp contract afn float %i.mf, %i.ha
  %i.mh = fadd reassoc nsz arcp contract afn float %i.mg, 1.000000e+00
  %i.mi = fmul reassoc nsz arcp contract afn float %i.mh, %i.lf
  %i.mj = extractelement <4 x float> %i.mc, i64 1
  %i.mk = fmul reassoc nsz arcp contract afn float %i.mj, %i.ha
  %i.ml = fadd reassoc nsz arcp contract afn float %i.mk, 1.000000e+00
  %i.mm = extractelement <2 x float> %i.lp, i64 0
  %i.mn = fmul reassoc nsz arcp contract afn float %i.ml, %i.mm
  %i.mo = extractelement <4 x float> %i.mc, i64 2
  %i.mp = fmul reassoc nsz arcp contract afn float %i.mo, %i.ha
  %i.mq = fadd reassoc nsz arcp contract afn float %i.mp, 1.000000e+00
  %i.mr = extractelement <2 x float> %i.lp, i64 1
  %i.ms = fmul reassoc nsz arcp contract afn float %i.mq, %i.mr
  %i.mt = fmul reassoc nsz arcp contract afn float %i.kt, %i.lu
  %i.mu = extractelement <4 x float> %i.kr, i64 3
  %i.mv = fmul reassoc nsz arcp contract afn float %i.ld, %i.mu
  %i.mw = fadd reassoc nsz arcp contract afn float %i.mv, %i.mt
  br label %.split297.us

.split297.us:                                     ; preds = %.split.preheader, %.split.us
  %.sink367 = phi float [ %i.ia, %.split.preheader ], [ %i.mw, %.split.us ] ; 2 uses
  %.pn = phi float [ %i.in, %.split.preheader ], [ %i.mi, %.split.us ]
  %.pn350 = phi float [ %i.io, %.split.preheader ], [ %i.mn, %.split.us ]
  %.pn351 = phi float [ %12, %.split.preheader ], [ %i.ms, %.split.us ]
  %i.mx = phi <4 x float> [ %i.ii, %.split.preheader ], [ %i.me, %.split.us ]
  %.scalar = fmul reassoc arcp contract afn float %.sink367, %i.gy
  %.scalar387 = fadd reassoc nsz arcp contract afn float %.scalar, 1.000000e+00
  %i.my = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %.scalar387, i64 3
  %i.mz = fmul <4 x float> %i.mx, %i.my           ; 2 uses
  %i.na = extractelement <4 x float> %i.mz, i64 3
  %i.nb = fmul reassoc nsz arcp contract afn float %i.na, %i.ha
  %i.nc = fadd reassoc nsz arcp contract afn float %i.nb, 1.000000e+00
  %i.nd = fmul reassoc nsz arcp contract afn float %i.nc, %.sink367
  %i.ne = shufflevector <2 x float> %i.hf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.nf = fadd reassoc nsz arcp contract afn <4 x float> %i.mz, %i.ne ; 4 uses
  %i.ng = extractelement <2 x float> %i.hf, i64 0 ; 5 uses
  %.sroa.12313.0 = fadd reassoc nsz arcp contract afn float %i.nd, %i.ng ; 2 uses
  %.sroa.9312.0 = fadd reassoc nsz arcp contract afn float %.pn351, %i.ng ; 2 uses
  %.sroa.6311.0 = fadd reassoc nsz arcp contract afn float %.pn350, %i.ng ; 2 uses
  %.sroa.0310.0 = fadd reassoc nsz arcp contract afn float %.pn, %i.ng ; 2 uses
  %i.nh = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.0310.0, float %.sroa.6311.0)
  %i.ni = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.nh, float %.sroa.9312.0)
  %i.nj = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ni, float %.sroa.12313.0) ; 2 uses
  %i.nk = extractelement <4 x float> %i.hd, i64 0 ; 5 uses
  %i.nl = fadd reassoc nsz arcp contract afn float %i.nj, %i.nk
  %i.nm = fcmp reassoc nsz arcp contract afn olt float %i.nl, 0.000000e+00
  %i.nn = extractelement <4 x float> %i.nf, i64 0 ; 2 uses
  %i.no = extractelement <4 x float> %i.nf, i64 1 ; 2 uses
  %i.np = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.nn, float %i.no)
  %i.nq = extractelement <4 x float> %i.nf, i64 2 ; 2 uses
  %i.nr = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.np, float %i.nq)
  %i.ns = extractelement <4 x float> %i.nf, i64 3 ; 2 uses
  %i.nt = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.nr, float %i.ns) ; 2 uses
  %i.nu = extractelement <4 x float> %i.hd, i64 1 ; 6 uses
  %i.nv = fadd reassoc nsz arcp contract afn float %i.nt, %i.nu
  %i.nw = fcmp reassoc nsz arcp contract afn olt float %i.nv, 0.000000e+00
  %i.nx = sub nsw <2 x i32> zeroinitializer, %i.hb
  %i.ny = sitofp <2 x i32> %i.nx to <2 x float>   ; 2 uses
  %i.nz = extractelement <2 x float> %i.ny, i64 0
  %.0250 = select nsz i1 %i.nm, float %i.nz, float %i.nj ; 3 uses
  %i.oa = extractelement <2 x float> %i.ny, i64 1
  %.0248 = select nsz i1 %i.nw, float %i.oa, float %i.nt ; 3 uses
  %i.ob = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.0310.0, float %.sroa.6311.0)
  %i.oc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ob, float %.sroa.9312.0)
  %i.od = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.oc, float %.sroa.12313.0) ; 2 uses
  %i.oe = fmul reassoc nnan nsz arcp contract afn float %i.nk, 2.000000e+00 ; 2 uses
  %i.of = fcmp reassoc nsz arcp contract afn ogt float %i.od, %i.oe
  %.0246 = select nsz i1 %i.of, float %i.oe, float %i.od ; 3 uses
  %i.og = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.nn, float %i.no)
  %i.oh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.og, float %i.nq)
  %i.oi = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.oh, float %i.ns) ; 2 uses
  %i.oj = fmul reassoc nnan nsz arcp contract afn float %i.nu, 2.000000e+00 ; 2 uses
  %i.ok = fcmp reassoc nsz arcp contract afn ogt float %i.oi, %i.oj
  %.0244 = select nsz i1 %i.ok, float %i.oj, float %i.oi ; 2 uses
  %i.ol = fsub reassoc nsz arcp contract afn float %.0246, %.0250
  %i.om = fmul reassoc nnan nsz arcp contract afn float %i.nk, 1.250000e-01
  %i.on = fcmp reassoc nsz arcp contract afn olt float %i.ol, %i.om
  br i1 %i.on, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.split297.us
  %i.oo = fadd reassoc nsz arcp contract afn float %.0250, %.0246
  %i.op = fmul reassoc nsz arcp contract afn float %i.oo, 5.000000e-01 ; 2 uses
  %i.oq = fmul reassoc nnan nsz arcp contract afn float %i.nk, 6.250000e-02 ; 4 uses
  %i.or = fcmp reassoc nsz arcp contract afn olt float %i.op, %i.oq
  %spec.select = select nsz i1 %i.or, float %i.oq, float %i.op ; 2 uses
  %i.os = fmul reassoc nnan nsz arcp contract afn float %i.nk, 9.375000e-01 ; 2 uses
  %i.ot = fcmp reassoc nsz arcp contract afn ult float %spec.select, %i.os
  %i.ou = fadd reassoc nsz arcp contract afn float %i.os, -1.000000e+00
  %.1243 = select nsz i1 %i.ot, float %spec.select, float %i.ou ; 2 uses
  %i.ov = fsub reassoc nsz arcp contract afn float %.1243, %i.oq
  %i.ow = fadd reassoc nsz arcp contract afn float %.1243, %i.oq
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.split297.us
  %.1251 = phi nsz float [ %i.ov, %bb.aq ], [ %.0250, %.split297.us ] ; 2 uses
  %.1247 = phi nsz float [ %i.ow, %bb.aq ], [ %.0246, %.split297.us ]
  %i.ox = fsub reassoc nsz arcp contract afn float %.0244, %.0248 ; 2 uses
  %i.oy = fmul reassoc nnan nsz arcp contract afn float %i.nu, 1.250000e-01
  %i.oz = fcmp reassoc nsz arcp contract afn olt float %i.ox, %i.oy
  br i1 %i.oz, label %bb.as, label %.thread358

bb.as:                                            ; preds = %bb.ar
  %i.pa = fadd reassoc nsz arcp contract afn float %.0248, %.0244
  %i.pb = fmul reassoc nsz arcp contract afn float %i.pa, 5.000000e-01 ; 2 uses
  %i.pc = fmul reassoc nnan nsz arcp contract afn float %i.nu, 6.250000e-02 ; 3 uses
  %i.pd = fcmp reassoc nsz arcp contract afn olt float %i.pb, %i.pc
  %spec.select275 = select nsz i1 %i.pd, float %i.pc, float %i.pb ; 2 uses
  %i.pe = fmul reassoc nnan nsz arcp contract afn float %i.nu, 9.375000e-01 ; 2 uses
  %i.pf = fcmp reassoc nsz arcp contract afn ult float %spec.select275, %i.pe
  %i.pg = fadd reassoc nsz arcp contract afn float %i.pe, -1.000000e+00
  %.1 = select nsz i1 %i.pf, float %spec.select275, float %i.pg
  %i.ph = fsub reassoc nsz arcp contract afn float %.1, %i.pc
  %.pre347 = fmul reassoc nnan nsz arcp contract afn float %i.nu, 1.250000e-01
  br label %.thread358

.thread358:                                       ; preds = %bb.ar, %bb.as
  %.pre-phi = phi float [ %.pre347, %bb.as ], [ %i.ox, %bb.ar ]
  %.1249 = phi nsz float [ %i.ph, %bb.as ], [ %.0248, %bb.ar ]
  %i.pi = fsub reassoc nsz arcp contract afn float %.1247, %.1251
  %i.pj = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.pk = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.pl = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.pm = load <2 x float>, ptr %i.pj, align 4, !tbaa !13 ; 2 uses
  %i.pn = insertelement <2 x float> poison, float %i.pi, i64 0
  %i.po = insertelement <2 x float> %i.pn, float %.pre-phi, i64 1 ; 2 uses
  %i.pp = fmul reassoc nsz arcp contract afn <2 x float> %i.pm, %i.po
  %i.pq = insertelement <2 x float> poison, float %.1251, i64 0
  %i.pr = insertelement <2 x float> %i.pq, float %.1249, i64 1
  %i.ps = fadd reassoc nsz arcp contract afn <2 x float> %i.pp, %i.pr ; 2 uses
  %i.pt = load <2 x float>, ptr %i.pk, align 4, !tbaa !13
  %i.pu = fsub reassoc nsz arcp contract afn <2 x float> %i.pt, %i.pm
  %i.pv = fmul reassoc nsz arcp contract afn <2 x float> %i.pu, %i.po
  %i.pw = fneg reassoc nsz arcp contract afn <2 x float> %i.ps
  %i.px = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.pw, <2 x float> zeroinitializer)
  store <2 x float> %i.px, ptr %i.pl, align 4, !tbaa !13
  %i.py = shufflevector <2 x float> %i.pv, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.pz = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ps, <2 x float> zeroinitializer)
  %i.qa = shufflevector <2 x float> %i.pz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qb = shufflevector <4 x float> %i.qa, <4 x float> %i.py, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qc = fptosi <4 x float> %i.qb to <4 x i32>   ; 2 uses
  store <4 x i32> %i.qc, ptr %2, align 4, !tbaa !14
  %i.qd = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store float %i.ng, ptr %i.qd, align 4, !tbaa !67
  %i.qe = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.qf = extractelement <2 x float> %i.hf, i64 1
  store float %i.qf, ptr %i.qe, align 4, !tbaa !68
  %i.qg = extractelement <4 x i32> %i.qc, i64 0
  br label %bb.au

.loopexit:                                        ; preds = %bb.ao, %.thread
  %.pre = load i32, ptr %2, align 4, !tbaa !93    ; 2 uses
  %i.qh = icmp slt i32 %.pre, 0
  br i1 %i.qh, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.loopexit
  store i32 0, ptr %2, align 4, !tbaa !93
  br label %bb.au

bb.au:                                            ; preds = %.thread358, %bb.at, %.loopexit
  %i.qi = phi i32 [ 0, %bb.at ], [ %.pre, %.loopexit ], [ %i.qg, %.thread358 ]
  %i.qj = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !94 ; 2 uses
  %i.ql = icmp slt i32 %i.qk, 0
  br i1 %i.ql, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.qj, align 4, !tbaa !94
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.qm = phi i32 [ 0, %bb.av ], [ %i.qk, %bb.au ]
  %i.qn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !78
  %i.qp = icmp slt i32 %i.qo, 4
  br i1 %i.qp, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.qq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !79
  %i.qs = icmp slt i32 %i.qr, 4
  br i1 %i.qs, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.qt = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !132
  %i.qu = and i32 %i.qt, 33554432
  %.not272 = icmp eq i32 %i.qu, 0
  br i1 %.not272, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !33
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.7, ptr noundef %i.qw, ptr noundef %0, i32 noundef -2, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull @.str.8) #25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.qx = load <4 x i32>, ptr %4, align 16, !tbaa !14 ; 3 uses
  store <4 x i32> %i.qx, ptr %2, align 4, !tbaa !14
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.qy, align 16, !tbaa !285
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !33
  %i.rb = getelementptr i8, ptr %i.ra, i64 644
  %.val = load i32, ptr %i.rb, align 4, !tbaa !50
  %i.rc = and i32 %.val, 2
  %.not273 = icmp eq i32 %i.rc, 0
  %i.rd = extractelement <4 x i32> %i.qx, i64 0
  %i.re = extractelement <4 x i32> %i.qx, i64 1
  br i1 %.not273, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.rf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #25
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !133
  %i.ri = call ptr %i.rh() #25
  call void (ptr, ...) @dt_control_log(ptr noundef %i.rf, ptr noundef %i.ri) #25
  %.pre345 = load i32, ptr %2, align 4, !tbaa !93
  %.pre346 = load i32, ptr %i.qj, align 4, !tbaa !94
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %bb.ax
  %i.rj = phi i32 [ %i.re, %bb.ba ], [ %.pre346, %bb.bb ], [ %i.qm, %bb.ax ]
  %i.rk = phi i32 [ %i.rd, %bb.ba ], [ %.pre345, %bb.bb ], [ %i.qi, %bb.ax ]
  %i.rl = sitofp reassoc nsz arcp contract afn i32 %i.rk to float
  %i.rm = getelementptr inbounds nuw i8, ptr %i.b, i64 80
end_hunk_0
