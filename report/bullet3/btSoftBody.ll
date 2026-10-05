Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeE:bb.a
  %17 = alloca %class.btMatrix3x3, align 4        ; 7 uses
  %18 = alloca %class.btMatrix3x3, align 4        ; 5 uses
  %19 = alloca %class.btMatrix3x3, align 4        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !268
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  %.in.v = select i1 %i.c, i64 32, i64 36
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.d = load float, ptr %.in, align 4, !tbaa !253 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 216
  store i8 1, ptr %i.f, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 208
  store ptr null, ptr %i.g, align 8, !tbaa !161
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 196
  store i32 0, ptr %i.h, align 4, !tbaa !162
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 200
  store i32 0, ptr %i.i, align 8, !tbaa !163
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 248
  store i8 1, ptr %i.j, align 8, !tbaa !160
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 240
  store ptr null, ptr %i.k, align 8, !tbaa !161
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 228
  store i32 0, ptr %i.l, align 4, !tbaa !162
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 232
  store i32 0, ptr %i.m, align 8, !tbaa !163
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 280
  store i8 1, ptr %i.n, align 8, !tbaa !160
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 272
  store ptr null, ptr %i.o, align 8, !tbaa !161
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 260
  store i32 0, ptr %i.p, align 4, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 264
  store i32 0, ptr %i.q, align 8, !tbaa !163
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 312
  store i8 1, ptr %i.r, align 8, !tbaa !160
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 304
  store ptr null, ptr %i.s, align 8, !tbaa !161
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 292
  store i32 0, ptr %i.t, align 4, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 296
  store i32 0, ptr %i.u, align 8, !tbaa !163
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 344
  store i8 1, ptr %i.v, align 8, !tbaa !156
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 336
  store ptr null, ptr %i.w, align 8, !tbaa !157
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 324
  store i32 0, ptr %i.x, align 4, !tbaa !158
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 328
  store i32 0, ptr %i.y, align 8, !tbaa !159
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 376
  store i8 1, ptr %i.z, align 8, !tbaa !336
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 368
  store ptr null, ptr %i.aa, align 8, !tbaa !337
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 356
  store i32 0, ptr %i.ab, align 4, !tbaa !338
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 360
  store i32 0, ptr %i.ac, align 8, !tbaa !339
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 424
  store i8 1, ptr %i.ad, align 8, !tbaa !160
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 416
  store ptr null, ptr %i.ae, align 8, !tbaa !161
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 404
  store i32 0, ptr %i.af, align 4, !tbaa !162
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 408
  store i32 0, ptr %i.ag, align 8, !tbaa !163
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 456
  store i8 1, ptr %i.ah, align 8, !tbaa !160
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 448
  store ptr null, ptr %i.ai, align 8, !tbaa !161
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 436
  store i32 0, ptr %i.aj, align 4, !tbaa !162
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 440
  store i32 0, ptr %i.ak, align 8, !tbaa !163
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 488
  store i8 1, ptr %i.al, align 8, !tbaa !160
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 480
  store ptr null, ptr %i.am, align 8, !tbaa !161
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 468
  store i32 0, ptr %i.an, align 4, !tbaa !162
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 472
  store i32 0, ptr %i.ao, align 8, !tbaa !163
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 520
  store i8 1, ptr %i.ap, align 8, !tbaa !160
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 512
  store ptr null, ptr %i.aq, align 8, !tbaa !161
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 500
  store i32 0, ptr %i.ar, align 4, !tbaa !162
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 504
  store i32 0, ptr %i.as, align 8, !tbaa !163
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 552
  store i8 1, ptr %i.at, align 8, !tbaa !156
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 544
  store ptr null, ptr %i.au, align 8, !tbaa !157
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 532
  store i32 0, ptr %i.av, align 4, !tbaa !158
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 536
  store i32 0, ptr %i.aw, align 8, !tbaa !159
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 584
  store i8 1, ptr %i.ax, align 8, !tbaa !336
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 576
  store ptr null, ptr %i.ay, align 8, !tbaa !337
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 564
  store i32 0, ptr %i.az, align 4, !tbaa !338
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 568
  store i32 0, ptr %i.ba, align 8, !tbaa !339
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 632
  store i8 1, ptr %i.bb, align 8, !tbaa !160
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 624
  store ptr null, ptr %i.bc, align 8, !tbaa !161
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 612
  store i32 0, ptr %i.bd, align 4, !tbaa !162
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 616
  store i32 0, ptr %i.be, align 8, !tbaa !163
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 664
  store i8 1, ptr %i.bf, align 8, !tbaa !160
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 656
  store ptr null, ptr %i.bg, align 8, !tbaa !161
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 644
  store i32 0, ptr %i.bh, align 4, !tbaa !162
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 648
  store i32 0, ptr %i.bi, align 8, !tbaa !163
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 696
  store i8 1, ptr %i.bj, align 8, !tbaa !160
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 688
  store ptr null, ptr %i.bk, align 8, !tbaa !161
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 676
  store i32 0, ptr %i.bl, align 4, !tbaa !162
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 680
  store i32 0, ptr %i.bm, align 8, !tbaa !163
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 728
  store i8 1, ptr %i.bn, align 8, !tbaa !160
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 720
  store ptr null, ptr %i.bo, align 8, !tbaa !161
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 708
  store i32 0, ptr %i.bp, align 4, !tbaa !162
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 712
  store i32 0, ptr %i.bq, align 8, !tbaa !163
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 760
  store i8 1, ptr %i.br, align 8, !tbaa !156
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 752
  store ptr null, ptr %i.bs, align 8, !tbaa !157
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 740
  store i32 0, ptr %i.bt, align 4, !tbaa !158
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 744
  store i32 0, ptr %i.bu, align 8, !tbaa !159
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 792
  store i8 1, ptr %i.bv, align 8, !tbaa !336
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 784
  store ptr null, ptr %i.bw, align 8, !tbaa !337
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 772
  store i32 0, ptr %i.bx, align 4, !tbaa !338
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 776
  store i32 0, ptr %i.by, align 8, !tbaa !339
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.ca = load i8, ptr %i.bz, align 4
  %i.cb = and i8 %i.ca, 1
  %.not = icmp eq i8 %i.cb, 0
  br i1 %.not, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !519
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !520
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ch = invoke noundef zeroext i1 @_ZNK10btSoftBody22checkDeformableContactEPK24btCollisionObjectWrapperRK9btVector3fRNS_4sCtiEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.cd, ptr noundef %i.cf, ptr noundef nonnull align 4 dereferenceable(16) %i.cg, float noundef %i.d, ptr noundef nonnull align 8 dereferenceable(60) %4, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  br i1 %i.ch, label %bb.d, label %bb.ap

bb.d:                                             ; preds = %bb.c
  %i.ci = load float, ptr %i.a, align 8, !tbaa !268 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !521 ; 2 uses
  %.not64 = icmp eq ptr %i.ck, null
  br i1 %.not64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 452
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !345
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cn = phi float [ %i.cm, %bb.e ], [ 0.000000e+00, %bb.d ] ; 5 uses
  %i.co = fadd float %i.ci, %i.cn
  %i.cp = fcmp ogt float %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.g, label %bb.ap

bb.g:                                             ; preds = %bb.f
  %i.cq = load ptr, ptr %i.cc, align 8, !tbaa !519
  %i.cr = load ptr, ptr %i.ce, align 8, !tbaa !520 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !484
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !485, !nonnull !263, !align !486 ; 10 uses
  %.sroa.7.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %.sroa.10.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.10.0.copyload25.i = load float, ptr %.sroa.10.0..sroa_idx24.i, align 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %.sroa.19.16..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.cy = load <2 x float>, ptr %i.cw, align 4    ; 3 uses
  %.sroa.7.0.copyload22.i = load float, ptr %.sroa.7.0..sroa_idx21.i, align 4
  %i.cz = load <2 x float>, ptr %i.cx, align 4    ; 3 uses
  %.sroa.19.16.copyload32.i = load float, ptr %.sroa.19.16..sroa_idx31.i, align 4
  %.sroa.22.16..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %.sroa.22.16.copyload35.i = load float, ptr %.sroa.22.16..sroa_idx34.i, align 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %.sroa.34.32..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %.sroa.34.32.copyload45.i = load float, ptr %.sroa.34.32..sroa_idx44.i, align 4 ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %.sroa.38.48.copyload49.i = load <2 x float>, ptr %20, align 4
  %.sroa.43.48..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %.sroa.43.48.copyload51.i = load <2 x float>, ptr %.sroa.43.48..sroa_idx50.i, align 4, !tbaa !259
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 888
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !164
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.df = load <2 x float>, ptr %i.da, align 4    ; 3 uses
  %i.dg = load <3 x float>, ptr %i.cs, align 8, !tbaa !253
  %i.dh = shufflevector <2 x float> %.sroa.38.48.copyload49.i, <2 x float> %.sroa.43.48.copyload51.i, <3 x i32> <i32 0, i32 1, i32 2>
  %i.di = fsub <3 x float> %i.dg, %i.dh           ; 6 uses
  %i.dj = insertelement <2 x float> %i.cz, float %.sroa.19.16.copyload32.i, i64 1
  %i.dk = shufflevector <3 x float> %i.di, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dl = fmul <2 x float> %i.dj, %i.dk
  %i.dm = insertelement <2 x float> %i.cy, float %.sroa.7.0.copyload22.i, i64 1
  %i.dn = shufflevector <3 x float> %i.di, <3 x float> poison, <2 x i32> zeroinitializer
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.dn, <2 x float> %i.dl)
  %i.dp = shufflevector <3 x float> %i.di, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.dp, <2 x float> %i.do)
  %i.dr = extractelement <3 x float> %i.di, i64 1
  %i.ds = fmul float %.sroa.22.16.copyload35.i, %i.dr
  %i.dt = extractelement <3 x float> %i.di, i64 0
  %i.du = tail call float @llvm.fmuladd.f32(float %.sroa.10.0.copyload25.i, float %i.dt, float %i.ds)
  %i.dv = extractelement <3 x float> %i.di, i64 2
  %i.dw = tail call noundef float @llvm.fmuladd.f32(float %.sroa.34.32.copyload45.i, float %i.dv, float %i.du)
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dw, i64 0
  store <2 x float> %i.dq, ptr %3, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %i.dx, align 8
  %i.dy = invoke noundef float @_ZN11btSparseSdfILi3EE8EvaluateERK9btVector3PK16btCollisionShapeRS1_f(ptr noundef nonnull align 8 dereferenceable(60) %i.dd, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef %i.cu, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %i.d)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !487 ; 6 uses
  store ptr %i.ea, ptr %4, align 8, !tbaa !488
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load float, ptr %2, align 4, !tbaa !253 ; 2 uses
  %i.ee = load float, ptr %i.eb, align 4, !tbaa !253 ; 2 uses
  %i.ef = load float, ptr %i.ec, align 4, !tbaa !253 ; 2 uses
  %i.eg = shufflevector <2 x float> %i.cy, <2 x float> %i.cz, <2 x i32> <i32 1, i32 3>
  %i.eh = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = fmul <2 x float> %i.eg, %i.ei
  %i.ek = shufflevector <2 x float> %i.cy, <2 x float> %i.cz, <2 x i32> <i32 0, i32 2>
  %i.el = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.em, <2 x float> %i.ej)
  %i.eo = insertelement <2 x float> poison, float %.sroa.10.0.copyload25.i, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %.sroa.22.16.copyload35.i, i64 1
  %i.eq = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.er, <2 x float> %i.en)
  %i.et = extractelement <2 x float> %i.df, i64 1
  %i.eu = fmul float %i.et, %i.ee
  %i.ev = extractelement <2 x float> %i.df, i64 0
  %i.ew = call float @llvm.fmuladd.f32(float %i.ev, float %i.ed, float %i.eu)
  %i.ex = call noundef float @llvm.fmuladd.f32(float %.sroa.34.32.copyload45.i, float %i.ef, float %i.ew)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ex, i64 0
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store <2 x float> %i.es, ptr %i.ey, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !259
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.dy, ptr %i.ez, align 8, !tbaa !489
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 848 ; 3 uses
  store ptr %1, ptr %i.fa, align 8, !tbaa !353
  %i.fb = load ptr, ptr %i.cc, align 8, !tbaa !519 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 444
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !354
  %i.fe = load ptr, ptr %i.ce, align 8, !tbaa !520
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !487 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 248
  %i.fi = load float, ptr %i.fh, align 8, !tbaa !355
  %i.fj = fmul float %i.fd, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 128
  store float %i.ci, ptr %i.fk, align 8, !tbaa !356
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 132
  store float %i.fj, ptr %i.fl, align 4, !tbaa !357
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 224
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !290
  %i.fo = and i32 %i.fn, 3
  %.not109 = icmp eq i32 %i.fo, 0
  %.in65.v = select i1 %.not109, i64 452, i64 456
  %.in65 = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.in65.v
  %i.fp = load float, ptr %.in65, align 4, !tbaa !253
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 136
  store float %i.fp, ptr %i.fq, align 8, !tbaa !358
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 204 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.fs, ptr noundef nonnull align 4 dereferenceable(48) %i.fr, i64 16, i1 false), !tbaa.struct !260
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 220 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fu, ptr noundef nonnull align 4 dereferenceable(16) %i.ft, i64 16, i1 false), !tbaa.struct !260
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 236 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fw, ptr noundef nonnull align 4 dereferenceable(16) %i.fv, i64 16, i1 false), !tbaa.struct !260
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ea, i64 272
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !272
  switch i32 %i.fy, label %bb.an [
    i32 2, label %bb.i
    i32 64, label %bb.t
  ]

bb.i:                                             ; preds = %bb.h
  %i.fz = load ptr, ptr %i.cj, align 8, !tbaa !521 ; 2 uses
  %.not75 = icmp eq ptr %i.fz, null
  br i1 %.not75, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ga = load ptr, ptr %i.ff, align 8, !tbaa !487
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.pn110 = phi ptr [ %i.ga, %bb.j ], [ %i.fz, %bb.i ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.pn110, i64 56
  %i.gc = load <2 x float>, ptr %i.cs, align 8, !tbaa !253
  %i.gd = load <2 x float>, ptr %i.gb, align 4, !tbaa !253
  %i.ge = fsub <2 x float> %i.gc, %i.gd           ; 7 uses
  %i.gf = load float, ptr %i.de, align 8, !tbaa !253
  %i.gg = getelementptr inbounds nuw i8, ptr %.pn110, i64 64
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !253
  %i.gi = fsub float %i.gf, %i.gh                 ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gi, i64 0
  %i.gj = load atomic i8, ptr @_ZGVZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeEE9iwiStatic acquire, align 8
  %i.gk = icmp eq i8 %i.gj, 0
  br i1 %i.gk, label %bb.l, label %bb.n, !prof !359

bb.l:                                             ; preds = %bb.k
  %i.gl = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeEE9iwiStatic) #39
  %.not76 = icmp eq i32 %i.gl, 0
  br i1 %.not76, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeEE9iwiStatic, i8 0, i64 48, i1 false)
  %i.gm = call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeEE9iwiStatic) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeEE9iwiStatic) #39
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.gn = load ptr, ptr %i.cj, align 8, !tbaa !521 ; 2 uses
  %.not77 = icmp eq ptr %i.gn, null
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 372
  %spec.select = select i1 %.not77, ptr @_ZZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeEE9iwiStatic, ptr %i.go ; 6 uses
  %i.gp = load ptr, ptr %i.cc, align 8, !tbaa !519
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 2028
  %i.gr = load i8, ptr %i.gq, align 4, !tbaa !294, !range !262, !noundef !263
  %i.gs = trunc nuw i8 %i.gr to i1
  %i.gt = fneg float %i.gi                        ; 2 uses
  %i.gu = extractelement <2 x float> %i.ge, i64 0
  %i.gv = fneg float %i.gu                        ; 3 uses
  %i.gw = extractelement <2 x float> %i.ge, i64 1 ; 2 uses
  %i.gx = fneg float %i.gw                        ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %spec.select, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %spec.select, i64 32
  %i.ha = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %spec.select, i64 20
  %i.hc = getelementptr inbounds nuw i8, ptr %spec.select, i64 36
  %i.hd = load float, ptr %i.hb, align 4, !tbaa !253, !noalias !263
  %i.he = load <3 x float>, ptr %i.gy, align 4, !tbaa !253, !noalias !263 ; 2 uses
  %i.hf = load float, ptr %i.ha, align 4, !tbaa !253, !noalias !263
  %i.hg = load <3 x float>, ptr %spec.select, align 4, !tbaa !253, !noalias !263 ; 2 uses
  %i.hh = load float, ptr %i.hc, align 4, !tbaa !253, !noalias !263
  %i.hi = load <3 x float>, ptr %i.gz, align 4, !tbaa !253, !noalias !263 ; 2 uses
  %i.hj = shufflevector <2 x float> %i.ge, <2 x float> poison, <3 x i32> zeroinitializer
  %i.hk = fmul <3 x float> %i.hj, %i.he
  %i.hl = insertelement <3 x float> poison, float %i.gx, i64 0
  %i.hm = shufflevector <3 x float> %i.hl, <3 x float> poison, <3 x i32> zeroinitializer
  %i.hn = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hg, <3 x float> %i.hm, <3 x float> %i.hk)
  %i.ho = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hi, <3 x float> zeroinitializer, <3 x float> %i.hn) ; 6 uses
  %i.hp = shufflevector <3 x float> %i.he, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.hq = insertelement <3 x float> %i.hp, float %i.hd, i64 2 ; 2 uses
  %i.hr = insertelement <3 x float> poison, float %i.gt, i64 0
  %i.hs = shufflevector <3 x float> %i.hr, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ht = fmul <3 x float> %i.hq, %i.hs
  %i.hu = shufflevector <3 x float> %i.hg, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.hv = insertelement <3 x float> %i.hu, float %i.hf, i64 2 ; 2 uses
  %i.hw = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hv, <3 x float> zeroinitializer, <3 x float> %i.ht)
  %i.hx = shufflevector <3 x float> %i.hi, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.hy = insertelement <3 x float> %i.hx, float %i.hh, i64 2 ; 2 uses
  %i.hz = shufflevector <2 x float> %i.ge, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ia = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hy, <3 x float> %i.hz, <3 x float> %i.hw) ; 6 uses
  %i.ib = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gi, i64 0 ; 3 uses
  %i.ic = shufflevector <3 x float> %i.ia, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.id = fmul <2 x float> %i.ib, %i.ic
  %i.ie = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.gt, i64 1 ; 3 uses
  %i.if = shufflevector <3 x float> %i.ia, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ig = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> %i.if, <2 x float> %i.id)
  %i.ih = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ii = insertelement <2 x float> %i.ih, float %i.gx, i64 0 ; 3 uses
  %i.ij = shufflevector <3 x float> %i.ia, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ik = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.ij, <2 x float> %i.ig)
  %i.il = extractelement <3 x float> %i.ia, i64 2
  %i.im = fmul float %i.il, %i.gv
  %i.in = extractelement <3 x float> %i.ia, i64 1
  %i.io = call float @llvm.fmuladd.f32(float %i.gw, float %i.in, float %i.im)
  %i.ip = extractelement <3 x float> %i.ia, i64 0
  %i.iq = call noundef float @llvm.fmuladd.f32(float %i.ip, float 0.000000e+00, float %i.io)
  %i.ir = fmul <3 x float> %i.hq, zeroinitializer
  %i.is = insertelement <3 x float> poison, float %i.gi, i64 0
  %i.it = shufflevector <3 x float> %i.is, <3 x float> poison, <3 x i32> zeroinitializer
  %i.iu = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hv, <3 x float> %i.it, <3 x float> %i.ir)
  %i.iv = insertelement <3 x float> poison, float %i.gv, i64 0
  %i.iw = shufflevector <3 x float> %i.iv, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ix = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hy, <3 x float> %i.iw, <3 x float> %i.iu) ; 6 uses
  %i.iy = shufflevector <3 x float> %i.ix, <3 x float> poison, <2 x i32> <i32 2, i32 2>
end_hunk_0
