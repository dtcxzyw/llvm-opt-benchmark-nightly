Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeE:bb.a
  %4 = alloca %"class.btSoftBody::DeformableNodeRigidContact", align 8 ; 116 uses
  %5 = alloca %class.btVector3, align 8           ; 9 uses
  %6 = alloca %class.btVector3, align 8           ; 8 uses
  %7 = alloca %class.btVector3, align 8           ; 8 uses
  %8 = alloca %struct.btMultiBodyJacobianData, align 8 ; 31 uses
  %9 = alloca %struct.btMultiBodyJacobianData, align 8 ; 31 uses
  %10 = alloca %struct.btMultiBodyJacobianData, align 8 ; 31 uses
  %11 = alloca %class.btMatrix3x3, align 8        ; 13 uses
  %12 = alloca %class.btMatrix3x3, align 4        ; 10 uses
  %13 = alloca %class.btMatrix3x3, align 4        ; 6 uses
  %14 = alloca %class.btMatrix3x3, align 4        ; 7 uses
  %15 = alloca %class.btMatrix3x3, align 4        ; 5 uses
  %16 = alloca %class.btMatrix3x3, align 4        ; 5 uses
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
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !517
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !518
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ch = invoke noundef zeroext i1 @_ZNK10btSoftBody22checkDeformableContactEPK24btCollisionObjectWrapperRK9btVector3fRNS_4sCtiEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.cd, ptr noundef %i.cf, ptr noundef nonnull align 4 dereferenceable(16) %i.cg, float noundef %i.d, ptr noundef nonnull align 8 dereferenceable(60) %4, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  br i1 %i.ch, label %bb.d, label %bb.ap

bb.d:                                             ; preds = %bb.c
  %i.ci = load float, ptr %i.a, align 8, !tbaa !268 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !519 ; 2 uses
  %.not64 = icmp eq ptr %i.ck, null
  br i1 %.not64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 452
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !345
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cn = phi float [ %i.cm, %bb.e ], [ 0.000000e+00, %bb.d ] ; 6 uses
  %i.co = fadd float %i.ci, %i.cn
  %i.cp = fcmp ogt float %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.g, label %bb.ap

bb.g:                                             ; preds = %bb.f
  %i.cq = load ptr, ptr %i.cc, align 8, !tbaa !517
  %i.cr = load ptr, ptr %i.ce, align 8, !tbaa !518 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !482
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !483, !nonnull !263, !align !484 ; 10 uses
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
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %.sroa.38.48.copyload49.i = load <2 x float>, ptr %i.db, align 4
  %.sroa.43.48..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %.sroa.43.48.copyload51.i = load <2 x float>, ptr %.sroa.43.48..sroa_idx50.i, align 4, !tbaa !259
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 888
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !164
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dg = load <2 x float>, ptr %i.da, align 4    ; 3 uses
  %i.dh = load <3 x float>, ptr %i.cs, align 8, !tbaa !253
  %i.di = shufflevector <2 x float> %.sroa.38.48.copyload49.i, <2 x float> %.sroa.43.48.copyload51.i, <3 x i32> <i32 0, i32 1, i32 2>
  %i.dj = fsub <3 x float> %i.dh, %i.di           ; 6 uses
  %i.dk = insertelement <2 x float> %i.cz, float %.sroa.19.16.copyload32.i, i64 1
  %i.dl = shufflevector <3 x float> %i.dj, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dm = fmul <2 x float> %i.dk, %i.dl
  %i.dn = insertelement <2 x float> %i.cy, float %.sroa.7.0.copyload22.i, i64 1
  %i.do = shufflevector <3 x float> %i.dj, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.do, <2 x float> %i.dm)
  %i.dq = shufflevector <3 x float> %i.dj, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.dq, <2 x float> %i.dp)
  %i.ds = extractelement <3 x float> %i.dj, i64 1
  %i.dt = fmul float %.sroa.22.16.copyload35.i, %i.ds
  %i.du = extractelement <3 x float> %i.dj, i64 0
  %i.dv = tail call float @llvm.fmuladd.f32(float %.sroa.10.0.copyload25.i, float %i.du, float %i.dt)
  %i.dw = extractelement <3 x float> %i.dj, i64 2
  %i.dx = tail call noundef float @llvm.fmuladd.f32(float %.sroa.34.32.copyload45.i, float %i.dw, float %i.dv)
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dx, i64 0
  store <2 x float> %i.dr, ptr %3, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %i.dy, align 8
  %i.dz = invoke noundef float @_ZN11btSparseSdfILi3EE8EvaluateERK9btVector3PK16btCollisionShapeRS1_f(ptr noundef nonnull align 8 dereferenceable(60) %i.de, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef %i.cu, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %i.d)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !485 ; 6 uses
  store ptr %i.eb, ptr %4, align 8, !tbaa !486
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load float, ptr %i.ec, align 4, !tbaa !253 ; 2 uses
  %i.ef = load float, ptr %2, align 4, !tbaa !253 ; 2 uses
  %i.eg = load float, ptr %i.ed, align 4, !tbaa !253 ; 2 uses
  %i.eh = shufflevector <2 x float> %i.cy, <2 x float> %i.cz, <2 x i32> <i32 1, i32 3>
  %i.ei = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = fmul <2 x float> %i.eh, %i.ej
  %i.el = shufflevector <2 x float> %i.cy, <2 x float> %i.cz, <2 x i32> <i32 0, i32 2>
  %i.em = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.en, <2 x float> %i.ek)
  %i.ep = insertelement <2 x float> poison, float %.sroa.10.0.copyload25.i, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %.sroa.22.16.copyload35.i, i64 1
  %i.er = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.es, <2 x float> %i.eo)
  %i.eu = extractelement <2 x float> %i.dg, i64 1
  %i.ev = fmul float %i.eu, %i.ee
  %i.ew = extractelement <2 x float> %i.dg, i64 0
  %i.ex = call float @llvm.fmuladd.f32(float %i.ew, float %i.ef, float %i.ev)
  %i.ey = call noundef float @llvm.fmuladd.f32(float %.sroa.34.32.copyload45.i, float %i.eg, float %i.ex)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ey, i64 0
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store <2 x float> %i.et, ptr %i.ez, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !259
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.dz, ptr %i.fa, align 8, !tbaa !487
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 848 ; 3 uses
  store ptr %1, ptr %i.fb, align 8, !tbaa !353
  %i.fc = load ptr, ptr %i.cc, align 8, !tbaa !517 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 444
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !354
  %i.ff = load ptr, ptr %i.ce, align 8, !tbaa !518
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !485 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 248
  %i.fj = load float, ptr %i.fi, align 8, !tbaa !355
  %i.fk = fmul float %i.fe, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 128
  store float %i.ci, ptr %i.fl, align 8, !tbaa !356
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 132
  store float %i.fk, ptr %i.fm, align 4, !tbaa !357
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 224
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !290
  %i.fp = and i32 %i.fo, 3
  %.not109 = icmp eq i32 %i.fp, 0
  %.in65.v = select i1 %.not109, i64 452, i64 456
  %.in65 = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.in65.v
  %i.fq = load float, ptr %.in65, align 4, !tbaa !253
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 136
  store float %i.fq, ptr %i.fr, align 8, !tbaa !358
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 204 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.ft, ptr noundef nonnull align 4 dereferenceable(48) %i.fs, i64 16, i1 false), !tbaa.struct !260
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 220 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fv, ptr noundef nonnull align 4 dereferenceable(16) %i.fu, i64 16, i1 false), !tbaa.struct !260
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 236 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fx, ptr noundef nonnull align 4 dereferenceable(16) %i.fw, i64 16, i1 false), !tbaa.struct !260
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eb, i64 272
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !272
  switch i32 %i.fz, label %bb.an [
    i32 2, label %bb.i
    i32 64, label %bb.t
  ]

bb.i:                                             ; preds = %bb.h
  %i.ga = load ptr, ptr %i.cj, align 8, !tbaa !519 ; 2 uses
  %.not75 = icmp eq ptr %i.ga, null
  br i1 %.not75, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gb = load ptr, ptr %i.fg, align 8, !tbaa !485
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.pn110 = phi ptr [ %i.gb, %bb.j ], [ %i.ga, %bb.i ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.pn110, i64 56
  %i.gd = load <2 x float>, ptr %i.cs, align 8, !tbaa !253
  %i.ge = load <2 x float>, ptr %i.gc, align 4, !tbaa !253
  %i.gf = fsub <2 x float> %i.gd, %i.ge           ; 8 uses
  %i.gg = load float, ptr %i.df, align 8, !tbaa !253
  %i.gh = getelementptr inbounds nuw i8, ptr %.pn110, i64 64
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !253
  %i.gj = fsub float %i.gg, %i.gi                 ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gj, i64 0
  %i.gk = load atomic i8, ptr @_ZGVZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeEE9iwiStatic acquire, align 8
  %i.gl = icmp eq i8 %i.gk, 0
  br i1 %i.gl, label %bb.l, label %bb.n, !prof !359

bb.l:                                             ; preds = %bb.k
  %i.gm = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeEE9iwiStatic) #39
  %.not76 = icmp eq i32 %i.gm, 0
  br i1 %.not76, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeEE9iwiStatic, i8 0, i64 48, i1 false)
  %i.gn = call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeEE9iwiStatic) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeEE9iwiStatic) #39
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.go = load ptr, ptr %i.cj, align 8, !tbaa !519 ; 2 uses
  %.not77 = icmp eq ptr %i.go, null
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 372
  %spec.select = select i1 %.not77, ptr @_ZZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeEE9iwiStatic, ptr %i.gp ; 6 uses
  %i.gq = load ptr, ptr %i.cc, align 8, !tbaa !517
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 2028
  %i.gs = load i8, ptr %i.gr, align 4, !tbaa !294, !range !262, !noundef !263
  %i.gt = trunc nuw i8 %i.gs to i1
  %i.gu = fneg float %i.gj                        ; 2 uses
  %i.gv = extractelement <2 x float> %i.gf, i64 0
  %i.gw = fneg float %i.gv                        ; 3 uses
  %i.gx = extractelement <2 x float> %i.gf, i64 1 ; 2 uses
  %i.gy = fneg float %i.gx                        ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %spec.select, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %spec.select, i64 32
  %i.hb = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %i.hc = getelementptr inbounds nuw i8, ptr %spec.select, i64 20
  %i.hd = getelementptr inbounds nuw i8, ptr %spec.select, i64 36
  %i.he = load float, ptr %i.hc, align 4, !tbaa !253, !noalias !263
  %i.hf = load <3 x float>, ptr %i.gz, align 4, !tbaa !253, !noalias !263 ; 2 uses
  %i.hg = load float, ptr %i.hb, align 4, !tbaa !253, !noalias !263
  %i.hh = load <3 x float>, ptr %spec.select, align 4, !tbaa !253, !noalias !263 ; 2 uses
  %i.hi = load float, ptr %i.hd, align 4, !tbaa !253, !noalias !263
  %i.hj = load <3 x float>, ptr %i.ha, align 4, !tbaa !253, !noalias !263 ; 2 uses
  %i.hk = shufflevector <2 x float> %i.gf, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.hl = shufflevector <2 x float> %i.gf, <2 x float> poison, <3 x i32> zeroinitializer
  %i.hm = fmul <3 x float> %i.hl, %i.hf
  %i.hn = insertelement <3 x float> poison, float %i.gy, i64 0 ; 2 uses
  %i.ho = shufflevector <3 x float> %i.hn, <3 x float> poison, <3 x i32> zeroinitializer
  %i.hp = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hh, <3 x float> %i.ho, <3 x float> %i.hm)
  %i.hq = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hj, <3 x float> zeroinitializer, <3 x float> %i.hp) ; 6 uses
  %i.hr = shufflevector <3 x float> %i.hf, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.hs = insertelement <3 x float> %i.hr, float %i.he, i64 2 ; 2 uses
  %i.ht = insertelement <3 x float> poison, float %i.gu, i64 0 ; 2 uses
  %i.hu = shufflevector <3 x float> %i.ht, <3 x float> poison, <3 x i32> zeroinitializer
  %i.hv = fmul <3 x float> %i.hs, %i.hu
  %i.hw = shufflevector <3 x float> %i.hh, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.hx = insertelement <3 x float> %i.hw, float %i.hg, i64 2 ; 2 uses
  %i.hy = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hx, <3 x float> zeroinitializer, <3 x float> %i.hv)
  %i.hz = shufflevector <3 x float> %i.hj, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.ia = insertelement <3 x float> %i.hz, float %i.hi, i64 2 ; 2 uses
  %i.ib = shufflevector <2 x float> %i.gf, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ic = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ia, <3 x float> %i.ib, <3 x float> %i.hy) ; 6 uses
  %i.id = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gj, i64 0 ; 2 uses
  %i.ie = shufflevector <3 x float> %i.ic, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.if = fmul <2 x float> %i.id, %i.ie
  %i.ig = shufflevector <3 x float> <float 0.000000e+00, float poison, float poison>, <3 x float> %i.ht, <2 x i32> <i32 0, i32 3>
  %i.ih = shufflevector <3 x float> %i.ic, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ii = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ig, <2 x float> %i.ih, <2 x float> %i.if)
  %i.ij = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ik = insertelement <2 x float> %i.ij, float %i.gy, i64 0 ; 2 uses
  %i.il = shufflevector <3 x float> %i.ic, <3 x float> poison, <2 x i32> zeroinitializer
  %i.im = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ik, <2 x float> %i.il, <2 x float> %i.ii)
  %i.in = extractelement <3 x float> %i.ic, i64 2
  %i.io = fmul float %i.in, %i.gw
  %i.ip = extractelement <3 x float> %i.ic, i64 1
  %i.iq = call float @llvm.fmuladd.f32(float %i.gx, float %i.ip, float %i.io)
  %i.ir = extractelement <3 x float> %i.ic, i64 0
  %i.is = call noundef float @llvm.fmuladd.f32(float %i.ir, float 0.000000e+00, float %i.iq)
  %i.it = fmul <3 x float> %i.hs, zeroinitializer
  %i.iu = insertelement <3 x float> poison, float %i.gj, i64 0 ; 2 uses
  %i.iv = shufflevector <3 x float> %i.iu, <3 x float> poison, <3 x i32> zeroinitializer
  %i.iw = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hx, <3 x float> %i.iv, <3 x float> %i.it)
  %i.ix = insertelement <3 x float> poison, float %i.gw, i64 0
  %i.iy = shufflevector <3 x float> %i.ix, <3 x float> poison, <3 x i32> zeroinitializer
  %i.iz = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ia, <3 x float> %i.iy, <3 x float> %i.iw) ; 6 uses
  %i.ja = shufflevector <3 x float> %i.iu, <3 x float> <float poison, float 0.000000e+00, float poison>, <2 x i32> <i32 0, i32 4>
  %i.jb = shufflevector <3 x float> %i.iz, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jc = fmul <2 x float> %i.ja, %i.jb
  %i.jd = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.gu, i64 1 ; 2 uses
  %i.je = shufflevector <3 x float> %i.iz, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jd, <2 x float> %i.je, <2 x float> %i.jc)
  %i.jg = shufflevector <3 x float> %i.iz, <3 x float> poison, <2 x i32> zeroinitializer
  %i.jh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ik, <2 x float> %i.jg, <2 x float> %i.jf) ; 3 uses
  %i.ji = shufflevector <3 x float> %i.hq, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jj = fmul <2 x float> %i.id, %i.ji
  %i.jk = shufflevector <3 x float> %i.hq, <3 x float> poison, <2 x i32> zeroinitializer
  %i.jl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jd, <2 x float> %i.jk, <2 x float> %i.jj)
  %i.jm = shufflevector <3 x float> %i.hn, <3 x float> %i.hk, <2 x i32> <i32 0, i32 3>
  %i.jn = shufflevector <3 x float> %i.hq, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jm, <2 x float> %i.jn, <2 x float> %i.jl) ; 2 uses
  %i.jp = shufflevector <3 x float> %i.iz, <3 x float> %i.hq, <2 x i32> <i32 2, i32 4>
  %i.jq = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.js = fmul <2 x float> %i.jp, %i.jr
  %i.jt = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ju = shufflevector <3 x float> %i.iz, <3 x float> %i.hq, <2 x i32> <i32 1, i32 3>
  %i.jv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jt, <2 x float> %i.ju, <2 x float> %i.js)
  %i.jw = shufflevector <3 x float> %i.iz, <3 x float> %i.hq, <2 x i32> <i32 0, i32 5>
  %i.jx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> zeroinitializer, <2 x float> %i.jv) ; 4 uses
  %i.jy = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cn, i64 0
  %i.jz = fsub <2 x float> %i.jy, %i.im           ; 3 uses
  %i.ka = fsub float 0.000000e+00, %i.is          ; 3 uses
  br i1 %i.gt, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ka, i64 0
  %i.kb = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.cn, i64 1
  %i.kc = fsub <2 x float> %i.kb, %i.jh
  %20 = extractelement <2 x float> %i.jx, i64 0
  %21 = fsub float 0.000000e+00, %20
  %i.kd = insertelement <2 x float> <float poison, float 0.000000e+00>, float %21, i64 0
  %i.ke = fsub <2 x float> zeroinitializer, %i.jo
  %22 = extractelement <2 x float> %i.jx, i64 1
  %23 = fsub float %i.cn, %22
  %.sroa.3.12.vec.insert.i.2.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %23, i64 0
  %i.kf = getelementptr inbounds nuw i8, ptr %4, i64 64
  store <2 x float> %i.jz, ptr %i.kf, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.589.0..sroa_idx, align 8, !tbaa !259
  %i.kg = getelementptr inbounds nuw i8, ptr %4, i64 80
  store <2 x float> %i.kc, ptr %i.kg, align 8
  %.sroa.891.16..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  store <2 x float> %i.kd, ptr %.sroa.891.16..sroa_idx, align 8, !tbaa !259
  %i.kh = getelementptr inbounds nuw i8, ptr %4, i64 96
  store <2 x float> %i.ke, ptr %i.kh, align 8
  %.sroa.1192.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 104
  store <2 x float> %.sroa.3.12.vec.insert.i.2.i.i, ptr %.sroa.1192.32..sroa_idx, align 8, !tbaa !259
  br label %bb.s

bb.p:                                             ; preds = %bb.b
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.q:                                             ; preds = %bb.g
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.r:                                             ; preds = %bb.n
  %i.kk = extractelement <2 x float> %i.jh, i64 0
  %i.kl = fsub float 0.000000e+00, %i.kk
  %i.km = extractelement <2 x float> %i.jh, i64 1
  %i.kn = fsub float %i.cn, %i.km
  %i.ko = extractelement <2 x float> %i.jx, i64 0
  %i.kp = fsub float 0.000000e+00, %i.ko
  %i.kq = load float, ptr %i.fs, align 4, !tbaa !253, !noalias !1473
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.kt = load float, ptr %i.fu, align 4, !tbaa !253, !noalias !1473
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.kw = load float, ptr %i.fw, align 4, !tbaa !253, !noalias !1473
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.kz = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.la = fsub <2 x float> zeroinitializer, %i.jo
  %i.lb = extractelement <2 x float> %i.jx, i64 1
  %i.lc = fsub float %i.cn, %i.lb
  %i.ld = load <2 x float>, ptr %i.kr, align 8, !tbaa !253, !noalias !1473
  %i.le = load float, ptr %i.ks, align 4, !tbaa !253, !noalias !1473 ; 2 uses
  %i.lf = insertelement <2 x float> %i.ld, float %i.kt, i64 1
  %i.lg = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lh = insertelement <2 x float> %i.lg, float %i.kl, i64 1
  %i.li = fadd <2 x float> %i.lf, %i.lh           ; 6 uses
  %i.lj = load <1 x float>, ptr %i.ku, align 8, !tbaa !253, !noalias !1473
  %i.lk = load float, ptr %i.kv, align 4, !tbaa !253, !noalias !1473
  %i.ll = insertelement <2 x float> %i.jz, float %i.kn, i64 1
  %i.lm = shufflevector <1 x float> %i.lj, <1 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ln = insertelement <2 x float> %i.lm, float %i.kq, i64 0
  %i.lo = fadd <2 x float> %i.ll, %i.ln           ; 6 uses
  %i.lp = load float, ptr %i.kx, align 8, !tbaa !253, !noalias !1473
  %i.lq = load float, ptr %i.ky, align 4, !tbaa !253, !noalias !1473
  %i.lr = insertelement <2 x float> poison, float %i.kw, i64 0
  %i.ls = insertelement <2 x float> %i.lr, float %i.lp, i64 1
  %i.lt = fadd <2 x float> %i.la, %i.ls           ; 4 uses
  %i.lu = fneg <2 x float> %i.lt                  ; 3 uses
  %i.lv = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lw = extractelement <2 x float> %i.li, i64 1 ; 2 uses
  %i.lx = extractelement <2 x float> %i.lo, i64 0 ; 2 uses
  %i.ly = extractelement <2 x float> %i.lt, i64 0
  %i.lz = extractelement <2 x float> %i.li, i64 0 ; 2 uses
  %i.ma = extractelement <2 x float> %i.lu, i64 1
  %i.mb = extractelement <2 x float> %i.lo, i64 1 ; 2 uses
  %i.mc = fmul <2 x float> %i.lo, %i.lv
  %i.md = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.li, <2 x float> %i.lt, <2 x float> %i.mc) ; 2 uses
  %i.me = extractelement <2 x float> %i.md, i64 1
  %i.mf = fneg float %i.lw
  %i.mg = fmul float %i.lz, %i.mf
  %i.mh = call noundef float @llvm.fmuladd.f32(float %i.lx, float %i.mb, float %i.mg)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 76
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !259
  %i.mi = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 84
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 100
  %i.mj = insertelement <2 x float> poison, float %i.le, i64 0
  %i.mk = insertelement <2 x float> %i.mj, float %i.lk, i64 1
  %i.ml = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.mm = insertelement <2 x float> %i.ml, float %i.kp, i64 1
  %i.mn = fadd <2 x float> %i.mk, %i.mm           ; 6 uses
  %i.mo = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.mp = insertelement <2 x float> %i.mo, float %i.ka, i64 1
  %i.mq = insertelement <2 x float> poison, float %i.lq, i64 0
  %i.mr = insertelement <2 x float> %i.mq, float %i.le, i64 1
  %i.ms = fadd <2 x float> %i.mp, %i.mr           ; 3 uses
  %i.mt = shufflevector <2 x float> %i.ms, <2 x float> %i.lo, <2 x i32> <i32 0, i32 3>
  %i.mu = fneg <2 x float> %i.mt                  ; 2 uses
  %i.mv = extractelement <2 x float> %i.mu, i64 0
  %i.mw = fmul float %i.lw, %i.mv
  %i.mx = extractelement <2 x float> %i.mn, i64 1 ; 2 uses
  %i.my = call noundef float @llvm.fmuladd.f32(float %i.mx, float %i.ly, float %i.mw) ; 2 uses
  %i.mz = fmul float %i.lz, %i.my
  %i.na = fmul float %i.mx, %i.ma
  %i.nb = extractelement <2 x float> %i.ms, i64 0
  %i.nc = call noundef float @llvm.fmuladd.f32(float %i.mb, float %i.nb, float %i.na) ; 2 uses
  %i.nd = call float @llvm.fmuladd.f32(float %i.lx, float %i.nc, float %i.mz)
  %i.ne = extractelement <2 x float> %i.mn, i64 0
  %i.nf = call noundef float @llvm.fmuladd.f32(float %i.ne, float %i.me, float %i.nd)
  %i.ng = fdiv float 1.000000e+00, %i.nf          ; 4 uses
  %i.nh = fmul float %i.nc, %i.ng                 ; 3 uses
  %i.ni = shufflevector <2 x float> %i.li, <2 x float> %i.mn, <2 x i32> <i32 0, i32 2>
  %i.nj = fmul <2 x float> %i.ni, %i.mu
  %i.nk = shufflevector <2 x float> %i.lt, <2 x float> %i.li, <2 x i32> <i32 1, i32 2>
  %i.nl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mn, <2 x float> %i.nk, <2 x float> %i.nj)
  %i.nm = insertelement <2 x float> poison, float %i.ng, i64 0
  %i.nn = shufflevector <2 x float> %i.nm, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.no = fmul <2 x float> %i.nl, %i.nn           ; 4 uses
  %i.np = fmul float %i.my, %i.ng                 ; 2 uses
  %i.nq = fneg <2 x float> %i.mn
  %i.nr = shufflevector <2 x float> %i.mn, <2 x float> %i.nq, <2 x i32> <i32 0, i32 3>
  %i.ns = shufflevector <2 x float> %i.lu, <2 x float> %i.lo, <2 x i32> <i32 0, i32 2>
  %i.nt = fmul <2 x float> %i.nr, %i.ns
  %i.nu = shufflevector <2 x float> %i.lo, <2 x float> %i.li, <2 x i32> <i32 0, i32 3>
  %i.nv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nu, <2 x float> %i.ms, <2 x float> %i.nt)
  %i.nw = fmul <2 x float> %i.nv, %i.nn           ; 2 uses
  %i.nx = fmul <2 x float> %i.md, %i.nn           ; 5 uses
  %i.ny = fmul float %i.mh, %i.ng                 ; 3 uses
  %i.nz = fmul float %i.np, 0.000000e+00          ; 2 uses
  %i.oa = fmul <2 x float> %i.nw, zeroinitializer ; 3 uses
  %foldExtExtBinop = fadd <2 x float> %i.no, %i.oa
  %i.ob = fadd float %i.nh, %i.nz
  %i.oc = insertelement <2 x float> %foldExtExtBinop, float %i.ob, i64 1
  %i.od = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nx, <2 x float> zeroinitializer, <2 x float> %i.oc)
  %i.oe = extractelement <2 x float> %i.nx, i64 1
  %foldExtExtBinop116 = fadd <2 x float> %i.no, %i.oa
  %i.of = call float @llvm.fmuladd.f32(float %i.nh, float 0.000000e+00, float %i.np)
  %i.og = insertelement <2 x float> %i.nx, float %i.ny, i64 0
  %i.oh = shufflevector <2 x float> %foldExtExtBinop116, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.oi = insertelement <2 x float> %i.oh, float %i.of, i64 1
  %i.oj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.og, <2 x float> zeroinitializer, <2 x float> %i.oi) ; 2 uses
  %i.ok = call float @llvm.fmuladd.f32(float %i.nh, float 0.000000e+00, float %i.nz)
  %i.ol = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.no, <2 x float> zeroinitializer, <2 x float> %i.oa)
  %i.om = insertelement <2 x float> %i.nx, float %i.ny, i64 1
  %i.on = fadd <2 x float> %i.om, %i.ol
  %i.oo = shufflevector <2 x float> %i.od, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.oo, ptr %i.kz, align 8
  %i.op = extractelement <2 x float> %i.oj, i64 0
  store float %i.op, ptr %.sroa.6.0..sroa_idx, align 8
  %i.oq = extractelement <2 x float> %i.oj, i64 1
  store float %i.oq, ptr %i.mi, align 8
  %i.or = fadd float %i.oe, %i.ok
  %i.os = shufflevector <2 x float> %i.no, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ot = shufflevector <4 x float> %i.os, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ou = shufflevector <2 x float> %i.nw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ov = insertelement <4 x float> %i.ou, float 0.000000e+00, i64 2
  %i.ow = insertelement <4 x float> %i.ov, float %i.or, i64 3
  %i.ox = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ot, <4 x float> zeroinitializer, <4 x float> %i.ow)
  %i.oy = shufflevector <2 x float> %i.nx, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.oz = shufflevector <4 x float> %i.oy, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 poison, i32 6, i32 7>
  %i.pa = insertelement <4 x float> %i.oz, float %i.ny, i64 1
  %i.pb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pa, <4 x float> zeroinitializer, <4 x float> %i.ox)
  store <4 x float> %i.pb, ptr %.sroa.10.16..sroa_idx, align 4
  store <2 x float> %i.on, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 108
  store float 0.000000e+00, ptr %.sroa.17.32..sroa_idx, align 4, !tbaa !259
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.pc = getelementptr inbounds nuw i8, ptr %4, i64 112
  store <2 x float> %i.gf, ptr %i.pc, align 8
  %.sroa.9106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 120
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.9106.0..sroa_idx, align 8, !tbaa !259
  br label %bb.an

bb.t:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i64 16, i1 false), !tbaa.struct !260
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.pd = call fastcc { <2 x float>, <2 x float> } @_ZL28generateUnitOrthogonalVectorRK9btVector3(ptr noundef nonnull align 4 dereferenceable(16) %i.ez) ; 2 uses
  %i.pe = extractvalue { <2 x float>, <2 x float> } %i.pd, 0 ; 4 uses
  store <2 x float> %i.pe, ptr %6, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.pg = extractvalue { <2 x float>, <2 x float> } %i.pd, 1 ; 3 uses
  store <2 x float> %i.pg, ptr %i.pf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.ph = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.pi = extractelement <2 x float> %i.pg, i64 0
  %i.pj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.pk = extractelement <2 x float> %i.pe, i64 1
  %i.pl = load float, ptr %5, align 8, !tbaa !253 ; 2 uses
  %i.pm = load <2 x float>, ptr %i.ph, align 4, !tbaa !253 ; 2 uses
  %i.pn = fneg float %i.pi
  %i.po = fmul float %i.pl, %i.pn
  %i.pp = shufflevector <2 x float> %i.pg, <2 x float> %i.pe, <2 x i32> <i32 0, i32 2>
  %i.pq = fneg <2 x float> %i.pe
  %i.pr = fmul <2 x float> %i.pm, %i.pq           ; 2 uses
  %i.ps = shufflevector <2 x float> %i.pr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.pt = insertelement <2 x float> %i.ps, float %i.po, i64 1
  %i.pu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pm, <2 x float> %i.pp, <2 x float> %i.pt)
  %i.pv = extractelement <2 x float> %i.pr, i64 0
  %i.pw = call float @llvm.fmuladd.f32(float %i.pl, float %i.pk, float %i.pv)
  %.sroa.3.12.vec.insert.i.i87 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.pw, i64 0
  store <2 x float> %i.pu, ptr %7, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i87, ptr %i.px, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.py = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 1, ptr %i.py, align 8, !tbaa !160
  %i.pz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr null, ptr %i.pz, align 8, !tbaa !161
  %i.qa = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.qa, align 4, !tbaa !162
  %i.qb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.qb, align 8, !tbaa !163
  %i.qc = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i8 1, ptr %i.qc, align 8, !tbaa !160
end_hunk_0
