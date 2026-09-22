Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeE:bb.a
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
  %20 = shufflevector <2 x float> %i.gf, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.hk = shufflevector <2 x float> %i.gf, <2 x float> poison, <3 x i32> zeroinitializer
  %i.hl = fmul <3 x float> %i.hk, %i.hf
  %i.hm = insertelement <3 x float> poison, float %i.gy, i64 0 ; 2 uses
  %i.hn = shufflevector <3 x float> %i.hm, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ho = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hh, <3 x float> %i.hn, <3 x float> %i.hl)
  %i.hp = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hj, <3 x float> zeroinitializer, <3 x float> %i.ho) ; 6 uses
  %i.hq = shufflevector <3 x float> %i.hf, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.hr = insertelement <3 x float> %i.hq, float %i.he, i64 2 ; 2 uses
  %i.hs = insertelement <3 x float> poison, float %i.gu, i64 0 ; 2 uses
  %i.ht = shufflevector <3 x float> %i.hs, <3 x float> poison, <3 x i32> zeroinitializer
  %i.hu = fmul <3 x float> %i.hr, %i.ht
  %i.hv = shufflevector <3 x float> %i.hh, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.hw = insertelement <3 x float> %i.hv, float %i.hg, i64 2 ; 2 uses
  %i.hx = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hw, <3 x float> zeroinitializer, <3 x float> %i.hu)
  %i.hy = shufflevector <3 x float> %i.hj, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.hz = insertelement <3 x float> %i.hy, float %i.hi, i64 2 ; 2 uses
  %i.ia = shufflevector <2 x float> %i.gf, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ib = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hz, <3 x float> %i.ia, <3 x float> %i.hx) ; 6 uses
  %i.ic = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gj, i64 0 ; 2 uses
  %i.id = shufflevector <3 x float> %i.ib, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ie = fmul <2 x float> %i.ic, %i.id
  %21 = shufflevector <3 x float> <float 0.000000e+00, float poison, float poison>, <3 x float> %i.hs, <2 x i32> <i32 0, i32 3>
  %i.if = shufflevector <3 x float> %i.ib, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ig = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %i.if, <2 x float> %i.ie)
  %i.ih = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ii = insertelement <2 x float> %i.ih, float %i.gy, i64 0 ; 2 uses
  %i.ij = shufflevector <3 x float> %i.ib, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ik = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.ij, <2 x float> %i.ig)
  %i.il = extractelement <3 x float> %i.ib, i64 2
  %i.im = fmul float %i.il, %i.gw
  %i.in = extractelement <3 x float> %i.ib, i64 1
  %i.io = call float @llvm.fmuladd.f32(float %i.gx, float %i.in, float %i.im)
  %i.ip = extractelement <3 x float> %i.ib, i64 0
  %i.iq = call noundef float @llvm.fmuladd.f32(float %i.ip, float 0.000000e+00, float %i.io)
  %i.ir = fmul <3 x float> %i.hr, zeroinitializer
  %i.is = insertelement <3 x float> poison, float %i.gj, i64 0 ; 2 uses
  %i.it = shufflevector <3 x float> %i.is, <3 x float> poison, <3 x i32> zeroinitializer
  %i.iu = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hw, <3 x float> %i.it, <3 x float> %i.ir)
  %i.iv = insertelement <3 x float> poison, float %i.gw, i64 0
  %i.iw = shufflevector <3 x float> %i.iv, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ix = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hz, <3 x float> %i.iw, <3 x float> %i.iu) ; 6 uses
  %22 = shufflevector <3 x float> %i.is, <3 x float> <float poison, float 0.000000e+00, float poison>, <2 x i32> <i32 0, i32 4>
  %i.iy = shufflevector <3 x float> %i.ix, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.iz = fmul <2 x float> %22, %i.iy
  %23 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.gu, i64 1 ; 2 uses
  %i.ja = shufflevector <3 x float> %i.ix, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %i.ja, <2 x float> %i.iz)
  %i.jc = shufflevector <3 x float> %i.ix, <3 x float> poison, <2 x i32> zeroinitializer
  %i.jd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.jc, <2 x float> %i.jb) ; 3 uses
  %i.je = shufflevector <3 x float> %i.hp, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jf = fmul <2 x float> %i.ic, %i.je
  %i.jg = shufflevector <3 x float> %i.hp, <3 x float> poison, <2 x i32> zeroinitializer
  %i.jh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %i.jg, <2 x float> %i.jf)
  %24 = shufflevector <3 x float> %i.hm, <3 x float> %20, <2 x i32> <i32 0, i32 3>
  %i.ji = shufflevector <3 x float> %i.hp, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %i.ji, <2 x float> %i.jh) ; 2 uses
  %i.jk = shufflevector <3 x float> %i.ix, <3 x float> %i.hp, <2 x i32> <i32 2, i32 4>
  %i.jl = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jn = fmul <2 x float> %i.jk, %i.jm
  %i.jo = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jp = shufflevector <3 x float> %i.ix, <3 x float> %i.hp, <2 x i32> <i32 1, i32 3>
  %i.jq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jo, <2 x float> %i.jp, <2 x float> %i.jn)
  %i.jr = shufflevector <3 x float> %i.ix, <3 x float> %i.hp, <2 x i32> <i32 0, i32 5>
  %i.js = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> zeroinitializer, <2 x float> %i.jq) ; 4 uses
  %i.jt = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cn, i64 0
  %i.ju = fsub <2 x float> %i.jt, %i.ik           ; 3 uses
  %i.jv = fsub float 0.000000e+00, %i.iq          ; 3 uses
  br i1 %i.gt, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jv, i64 0
  %i.jw = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.cn, i64 1
  %i.jx = fsub <2 x float> %i.jw, %i.jd
  %i.jy = extractelement <2 x float> %i.js, i64 0
  %i.jz = fsub float 0.000000e+00, %i.jy
  %.sroa.3.12.vec.insert.i.1.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jz, i64 0
  %i.ka = fsub <2 x float> zeroinitializer, %i.jj
  %i.kb = extractelement <2 x float> %i.js, i64 1
  %i.kc = fsub float %i.cn, %i.kb
  %.sroa.3.12.vec.insert.i.2.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kc, i64 0
  %i.kd = getelementptr inbounds nuw i8, ptr %4, i64 64
  store <2 x float> %i.ju, ptr %i.kd, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.589.0..sroa_idx, align 8, !tbaa !259
  %i.ke = getelementptr inbounds nuw i8, ptr %4, i64 80
  store <2 x float> %i.jx, ptr %i.ke, align 8
  %.sroa.891.16..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  store <2 x float> %.sroa.3.12.vec.insert.i.1.i.i, ptr %.sroa.891.16..sroa_idx, align 8, !tbaa !259
  %i.kf = getelementptr inbounds nuw i8, ptr %4, i64 96
  store <2 x float> %i.ka, ptr %i.kf, align 8
  %.sroa.1192.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 104
  store <2 x float> %.sroa.3.12.vec.insert.i.2.i.i, ptr %.sroa.1192.32..sroa_idx, align 8, !tbaa !259
  br label %bb.s

bb.p:                                             ; preds = %bb.b
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.q:                                             ; preds = %bb.g
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.r:                                             ; preds = %bb.n
  %i.ki = extractelement <2 x float> %i.jd, i64 0
  %i.kj = fsub float 0.000000e+00, %i.ki
  %i.kk = extractelement <2 x float> %i.jd, i64 1
  %i.kl = fsub float %i.cn, %i.kk
  %i.km = extractelement <2 x float> %i.js, i64 0
  %i.kn = fsub float 0.000000e+00, %i.km
  %i.ko = load float, ptr %i.fs, align 4, !tbaa !253, !noalias !1473
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.kr = load float, ptr %i.fu, align 4, !tbaa !253, !noalias !1473
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.ku = load float, ptr %i.fw, align 4, !tbaa !253, !noalias !1473
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ky = fsub <2 x float> zeroinitializer, %i.jj
  %i.kz = extractelement <2 x float> %i.js, i64 1
  %i.la = fsub float %i.cn, %i.kz
  %i.lb = load <2 x float>, ptr %i.kp, align 8, !tbaa !253, !noalias !1473
  %i.lc = load float, ptr %i.kq, align 4, !tbaa !253, !noalias !1473 ; 2 uses
  %i.ld = insertelement <2 x float> %i.lb, float %i.kr, i64 1
  %i.le = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lf = insertelement <2 x float> %i.le, float %i.kj, i64 1
  %i.lg = fadd <2 x float> %i.ld, %i.lf           ; 6 uses
  %i.lh = load <1 x float>, ptr %i.ks, align 8, !tbaa !253, !noalias !1473
  %i.li = load float, ptr %i.kt, align 4, !tbaa !253, !noalias !1473
  %i.lj = insertelement <2 x float> %i.ju, float %i.kl, i64 1
  %i.lk = shufflevector <1 x float> %i.lh, <1 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ll = insertelement <2 x float> %i.lk, float %i.ko, i64 0
  %i.lm = fadd <2 x float> %i.lj, %i.ll           ; 6 uses
  %i.ln = load float, ptr %i.kv, align 8, !tbaa !253, !noalias !1473
  %i.lo = load float, ptr %i.kw, align 4, !tbaa !253, !noalias !1473
  %i.lp = insertelement <2 x float> poison, float %i.ku, i64 0
  %i.lq = insertelement <2 x float> %i.lp, float %i.ln, i64 1
  %i.lr = fadd <2 x float> %i.ky, %i.lq           ; 4 uses
  %i.ls = fneg <2 x float> %i.lr                  ; 3 uses
  %i.lt = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lu = extractelement <2 x float> %i.lg, i64 1 ; 2 uses
  %i.lv = extractelement <2 x float> %i.lm, i64 0 ; 2 uses
  %i.lw = extractelement <2 x float> %i.lr, i64 0
  %i.lx = extractelement <2 x float> %i.lg, i64 0 ; 2 uses
  %i.ly = extractelement <2 x float> %i.ls, i64 1
  %i.lz = extractelement <2 x float> %i.lm, i64 1 ; 2 uses
  %i.ma = fmul <2 x float> %i.lm, %i.lt
  %i.mb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lg, <2 x float> %i.lr, <2 x float> %i.ma) ; 2 uses
  %i.mc = extractelement <2 x float> %i.mb, i64 1
  %i.md = fneg float %i.lu
  %i.me = fmul float %i.lx, %i.md
  %i.mf = call noundef float @llvm.fmuladd.f32(float %i.lv, float %i.lz, float %i.me)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 76
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !259
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 84
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 100
  %i.mh = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.mi = insertelement <2 x float> %i.mh, float %i.li, i64 1
  %i.mj = insertelement <2 x float> poison, float %i.jv, i64 0
  %i.mk = insertelement <2 x float> %i.mj, float %i.kn, i64 1
  %i.ml = fadd <2 x float> %i.mi, %i.mk           ; 6 uses
  %i.mm = insertelement <2 x float> poison, float %i.la, i64 0
  %i.mn = insertelement <2 x float> %i.mm, float %i.jv, i64 1
  %i.mo = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.mp = insertelement <2 x float> %i.mo, float %i.lc, i64 1
  %i.mq = fadd <2 x float> %i.mn, %i.mp           ; 3 uses
  %i.mr = shufflevector <2 x float> %i.mq, <2 x float> %i.lm, <2 x i32> <i32 0, i32 3>
  %i.ms = fneg <2 x float> %i.mr                  ; 2 uses
  %i.mt = extractelement <2 x float> %i.ms, i64 0
  %i.mu = fmul float %i.lu, %i.mt
  %i.mv = extractelement <2 x float> %i.ml, i64 1 ; 2 uses
  %i.mw = call noundef float @llvm.fmuladd.f32(float %i.mv, float %i.lw, float %i.mu) ; 2 uses
  %i.mx = fmul float %i.lx, %i.mw
  %i.my = fmul float %i.mv, %i.ly
  %i.mz = extractelement <2 x float> %i.mq, i64 0
  %i.na = call noundef float @llvm.fmuladd.f32(float %i.lz, float %i.mz, float %i.my) ; 2 uses
  %i.nb = call float @llvm.fmuladd.f32(float %i.lv, float %i.na, float %i.mx)
  %i.nc = extractelement <2 x float> %i.ml, i64 0
  %i.nd = call noundef float @llvm.fmuladd.f32(float %i.nc, float %i.mc, float %i.nb)
  %i.ne = fdiv float 1.000000e+00, %i.nd          ; 4 uses
  %i.nf = fmul float %i.na, %i.ne                 ; 3 uses
  %i.ng = shufflevector <2 x float> %i.lg, <2 x float> %i.ml, <2 x i32> <i32 0, i32 2>
  %i.nh = fmul <2 x float> %i.ng, %i.ms
  %i.ni = shufflevector <2 x float> %i.lr, <2 x float> %i.lg, <2 x i32> <i32 1, i32 2>
  %i.nj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ml, <2 x float> %i.ni, <2 x float> %i.nh)
  %i.nk = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.nl = shufflevector <2 x float> %i.nk, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.nm = fmul <2 x float> %i.nj, %i.nl           ; 4 uses
  %i.nn = fmul float %i.mw, %i.ne                 ; 2 uses
  %i.no = fneg <2 x float> %i.ml
  %i.np = shufflevector <2 x float> %i.ml, <2 x float> %i.no, <2 x i32> <i32 0, i32 3>
  %i.nq = shufflevector <2 x float> %i.ls, <2 x float> %i.lm, <2 x i32> <i32 0, i32 2>
  %i.nr = fmul <2 x float> %i.np, %i.nq
  %i.ns = shufflevector <2 x float> %i.lm, <2 x float> %i.lg, <2 x i32> <i32 0, i32 3>
  %i.nt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ns, <2 x float> %i.mq, <2 x float> %i.nr)
  %i.nu = fmul <2 x float> %i.nt, %i.nl           ; 2 uses
  %i.nv = fmul <2 x float> %i.mb, %i.nl           ; 5 uses
  %i.nw = fmul float %i.mf, %i.ne                 ; 3 uses
  %i.nx = fmul float %i.nn, 0.000000e+00          ; 2 uses
  %i.ny = fmul <2 x float> %i.nu, zeroinitializer ; 3 uses
  %foldExtExtBinop = fadd <2 x float> %i.nm, %i.ny
  %i.nz = fadd float %i.nf, %i.nx
  %i.oa = insertelement <2 x float> %foldExtExtBinop, float %i.nz, i64 1
  %i.ob = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nv, <2 x float> zeroinitializer, <2 x float> %i.oa)
  %i.oc = extractelement <2 x float> %i.nv, i64 1
  %foldExtExtBinop116 = fadd <2 x float> %i.nm, %i.ny
  %i.od = call float @llvm.fmuladd.f32(float %i.nf, float 0.000000e+00, float %i.nn)
  %i.oe = insertelement <2 x float> %i.nv, float %i.nw, i64 0
  %i.of = shufflevector <2 x float> %foldExtExtBinop116, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.og = insertelement <2 x float> %i.of, float %i.od, i64 1
  %i.oh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oe, <2 x float> zeroinitializer, <2 x float> %i.og) ; 2 uses
  %i.oi = call float @llvm.fmuladd.f32(float %i.nf, float 0.000000e+00, float %i.nx)
  %i.oj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nm, <2 x float> zeroinitializer, <2 x float> %i.ny)
  %i.ok = insertelement <2 x float> %i.nv, float %i.nw, i64 1
  %i.ol = fadd <2 x float> %i.ok, %i.oj
  %i.om = shufflevector <2 x float> %i.ob, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.om, ptr %i.kx, align 8
  %i.on = extractelement <2 x float> %i.oh, i64 0
  store float %i.on, ptr %.sroa.6.0..sroa_idx, align 8
  %i.oo = extractelement <2 x float> %i.oh, i64 1
  store float %i.oo, ptr %i.mg, align 8
  %i.op = fadd float %i.oc, %i.oi
  %i.oq = shufflevector <2 x float> %i.nm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.or = shufflevector <4 x float> %i.oq, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.os = shufflevector <2 x float> %i.nu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ot = insertelement <4 x float> %i.os, float 0.000000e+00, i64 2
  %i.ou = insertelement <4 x float> %i.ot, float %i.op, i64 3
  %i.ov = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.or, <4 x float> zeroinitializer, <4 x float> %i.ou)
  %i.ow = shufflevector <2 x float> %i.nv, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ox = shufflevector <4 x float> %i.ow, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 poison, i32 6, i32 7>
  %i.oy = insertelement <4 x float> %i.ox, float %i.nw, i64 1
  %i.oz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oy, <4 x float> zeroinitializer, <4 x float> %i.ov)
  store <4 x float> %i.oz, ptr %.sroa.10.16..sroa_idx, align 4
  store <2 x float> %i.ol, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 108
  store float 0.000000e+00, ptr %.sroa.17.32..sroa_idx, align 4, !tbaa !259
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.pa = getelementptr inbounds nuw i8, ptr %4, i64 112
  store <2 x float> %i.gf, ptr %i.pa, align 8
  %.sroa.9106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 120
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.9106.0..sroa_idx, align 8, !tbaa !259
  br label %bb.an

bb.t:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i64 16, i1 false), !tbaa.struct !260
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.pb = call fastcc { <2 x float>, <2 x float> } @_ZL28generateUnitOrthogonalVectorRK9btVector3(ptr noundef nonnull align 4 dereferenceable(16) %i.ez) ; 2 uses
end_hunk_0
