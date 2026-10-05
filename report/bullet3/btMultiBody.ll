Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBody?download=true
inline.NumInlined: 2252
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN29btSpatialTransformationMatrix16transformInverseERK22btSymmetricSpatialDyadRS0_NS_16eOutputOperationE:bb.a
  %i.bbx = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.bao, i64 0
  %i.bby = shufflevector <2 x float> %i.bbd, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bbz = shufflevector <4 x float> %i.bbx, <4 x float> %i.bby, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bca = fsub <4 x float> %i.avs, %i.bbz
  %i.bcb = shufflevector <2 x float> %i.bbj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bcc = insertelement <4 x float> %i.bcb, float 0.000000e+00, i64 2
  %i.bcd = insertelement <4 x float> %i.bcc, float %i.bbp, i64 3
  %i.bce = fsub <4 x float> %i.avx, %i.bcd
  %i.bcf = fsub <2 x float> %i.axm, %i.bbv
  store float %i.bbw, ptr %i.avg, align 4, !tbaa !20
  store <4 x float> %i.bca, ptr %i.avi, align 4, !tbaa !20
  store <4 x float> %i.bce, ptr %i.avl, align 4, !tbaa !20
  store <2 x float> %i.bcf, ptr %i.avo, align 4, !tbaa !20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d, %bb.c
  %i.bcg = getelementptr inbounds nuw i8, ptr %2, i64 140
  store float 0.000000e+00, ptr %i.bcg, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK11btMultiBody12solveImatrixERK20btSpatialForceVectorR21btSpatialMotionVector(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(32) initializes((0, 32)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = load float, ptr %i.d, align 4, !tbaa !20 ; 2 uses
  %i.f = fcmp ult float %i.e, f0x34000000
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load float, ptr %i.g, align 8, !tbaa !20 ; 2 uses
  %i.i = fcmp ult float %i.h, f0x34000000
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.k = load float, ptr %i.j, align 4, !tbaa !20 ; 2 uses
  %i.l = fcmp ult float %i.k, f0x34000000
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load <2 x float>, ptr %i.m, align 4, !tbaa !20
  %i.o = insertelement <2 x float> poison, float %i.e, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.h, i64 1
  %i.q = fdiv <2 x float> %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load float, ptr %i.r, align 4, !tbaa !20
  %i.t = fdiv float %i.s, %i.k
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.t, i64 0
  store <2 x float> %i.q, ptr %2, align 4
  %.sroa.4265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4265.0..sroa_idx, align 4, !tbaa !21
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load float, ptr %i.u, align 8, !tbaa !45 ; 2 uses
  %i.w = fcmp ult float %i.v, f0x34000000
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = fdiv float 1.000000e+00, %i.v            ; 2 uses
  %i.y = load <2 x float>, ptr %1, align 4, !tbaa !20
  %i.z = insertelement <2 x float> poison, float %i.x, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.aa, %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !20
  %i.ae = fmul float %i.x, %i.ad
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ae, i64 0
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x float> %i.ab, ptr %i.af, align 4
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4256.0..sroa_idx, align 4, !tbaa !21
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !99, !range !68, !noundef !69
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ap = load float, ptr %i.ak, align 8, !tbaa !20, !noalias !351 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !20, !noalias !352
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !20, !noalias !352
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !20, !noalias !352
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load float, ptr %i.bq, align 4, !tbaa !20 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !20 ; 2 uses
  %i.bw = load <2 x float>, ptr %i.ao, align 4, !tbaa !20, !noalias !351 ; 2 uses
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.by = load <2 x float>, ptr %i.am, align 4, !tbaa !20, !noalias !351 ; 6 uses
  %i.bz = load <6 x float>, ptr %i.al, align 8, !tbaa !20, !noalias !351 ; 3 uses
  %i.ca = shufflevector <6 x float> %i.bz, <6 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.cb = load <2 x float>, ptr %i.an, align 8, !tbaa !20, !noalias !351 ; 3 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cd = extractelement <2 x float> %i.cb, i64 1
  %i.ce = fneg float %i.cd                        ; 2 uses
  %i.cf = shufflevector <2 x float> %i.bx, <2 x float> %i.cc, <2 x i32> <i32 0, i32 3>
  %i.cg = fneg <2 x float> %i.cf                  ; 2 uses
  %i.ch = load <2 x float>, ptr %i.aq, align 4, !tbaa !20, !noalias !351 ; 8 uses
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.cj = shufflevector <3 x float> %i.ca, <3 x float> %i.ci, <2 x i32> <i32 0, i32 4> ; 3 uses
  %i.ck = fmul <2 x float> %i.cj, %i.cg
  %i.cl = insertelement <2 x float> %i.cb, float %i.ap, i64 1
  %i.cm = shufflevector <2 x float> %i.by, <2 x float> %i.bw, <2 x i32> <i32 1, i32 3>
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.cm, <2 x float> %i.ck) ; 2 uses
  %i.co = extractelement <2 x float> %i.ch, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.ch, %i.cn
  %i.cp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cq = shufflevector <2 x float> %i.by, <2 x float> %i.ch, <2 x i32> <i32 1, i32 2>
  %i.cr = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cs = insertelement <2 x float> %i.cr, float %i.ce, i64 0
  %i.ct = fmul <2 x float> %i.cq, %i.cs
  %i.cu = shufflevector <2 x float> %i.by, <2 x float> %i.cj, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.bx, <2 x float> %i.ct) ; 2 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 0
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.cw, float %i.cp)
  %i.cy = insertelement <2 x float> %i.cu, float %i.ap, i64 1 ; 2 uses
  %i.cz = insertelement <2 x float> %i.cr, float %i.ce, i64 1
  %i.da = fmul <2 x float> %i.cy, %i.cz
  %i.db = shufflevector <2 x float> %i.cj, <2 x float> %i.ch, <2 x i32> <i32 0, i32 2>
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.cc, <2 x float> %i.da) ; 2 uses
  %i.dd = extractelement <2 x float> %i.dc, i64 0
  %i.de = extractelement <2 x float> %i.ch, i64 1
  %i.df = tail call noundef float @llvm.fmuladd.f32(float %i.de, float %i.dd, float %i.cx)
  %i.dg = fneg <2 x float> %i.by
  %i.dh = shufflevector <2 x float> %i.cy, <2 x float> %i.ch, <2 x i32> <i32 3, i32 1>
  %i.di = fmul <2 x float> %i.dh, %i.dg
  %i.dj = shufflevector <2 x float> %i.by, <2 x float> poison, <6 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dk = shufflevector <6 x float> %i.dj, <6 x float> %i.bz, <2 x i32> <i32 0, i32 6>
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.dk, <2 x float> %i.di)
  %i.dm = extractelement <6 x float> %i.bz, i64 0
  %i.dn = fneg float %i.dm
  %i.do = fmul float %i.co, %i.dn
  %i.dp = extractelement <2 x float> %i.by, i64 0
  %i.dq = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.dp, float %i.do)
  %i.dr = fdiv float -1.000000e+00, %i.df         ; 2 uses
  %i.ds = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.du = fmul <2 x float> %i.cv, %i.dt           ; 9 uses
  %i.dv = fmul <2 x float> %i.cn, %i.dt           ; 9 uses
  %i.dw = fmul <2 x float> %i.dl, %i.dt           ; 11 uses
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dy = fmul <2 x float> %i.dc, %i.dt           ; 8 uses
  %i.dz = extractelement <2 x float> %i.dv, i64 0
  %i.ea = extractelement <2 x float> %i.du, i64 0
  %i.eb = extractelement <2 x float> %i.dy, i64 0 ; 4 uses
  %i.ec = extractelement <2 x float> %i.dv, i64 1
  %i.ed = extractelement <2 x float> %i.dy, i64 1 ; 3 uses
  %i.ee = extractelement <2 x float> %i.dw, i64 1 ; 2 uses
  %i.ef = extractelement <2 x float> %i.dw, i64 0 ; 2 uses
  %i.eg = load float, ptr %i.ba, align 8, !tbaa !20, !noalias !353 ; 3 uses
  %i.eh = load float, ptr %i.bb, align 8, !tbaa !20, !noalias !353 ; 3 uses
  %i.ei = load float, ptr %i.bc, align 8, !tbaa !20, !noalias !353 ; 3 uses
  %i.ej = shufflevector <2 x float> %i.du, <2 x float> %i.dv, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.ek = shufflevector <2 x float> %i.du, <2 x float> %i.dv, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.el = load float, ptr %i.ar, align 8, !tbaa !20, !noalias !354 ; 4 uses
  %i.em = load float, ptr %i.as, align 4, !tbaa !20, !noalias !354 ; 4 uses
  %i.en = load float, ptr %i.at, align 8, !tbaa !20, !noalias !354 ; 3 uses
  %i.eo = load float, ptr %i.au, align 8, !tbaa !20, !noalias !354 ; 5 uses
  %i.ep = load float, ptr %i.av, align 4, !tbaa !20, !noalias !354 ; 5 uses
  %i.eq = load float, ptr %i.aw, align 8, !tbaa !20, !noalias !354 ; 5 uses
  %i.er = load float, ptr %i.ax, align 8, !tbaa !20, !noalias !354 ; 3 uses
  %i.es = load float, ptr %i.ay, align 4, !tbaa !20, !noalias !354 ; 3 uses
  %i.et = load float, ptr %i.az, align 8, !tbaa !20, !noalias !354 ; 5 uses
  %i.eu = load <2 x float>, ptr %i.bi, align 4, !tbaa !20, !noalias !352 ; 2 uses
  %i.ev = load <2 x float>, ptr %i.bl, align 4, !tbaa !20, !noalias !352 ; 2 uses
  %i.ew = load <2 x float>, ptr %i.bo, align 4, !tbaa !20, !noalias !352 ; 2 uses
  %i.ex = fmul float %i.dq, %i.dr                 ; 8 uses
  %i.ey = fmul float %i.em, %i.dz
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.el, float %i.ey)
  %i.fa = insertelement <4 x float> poison, float %i.ez, i64 0
  %i.fb = insertelement <4 x float> %i.fa, float %i.em, i64 1
  %i.fc = insertelement <4 x float> %i.fb, float %i.ep, i64 3
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.fe = shufflevector <2 x float> %i.dv, <2 x float> %i.dw, <4 x i32> <i32 poison, i32 1, i32 3, i32 0>
  %i.ff = insertelement <4 x float> %i.fe, float 1.000000e+00, i64 0
  %i.fg = fmul <4 x float> %i.fd, %i.ff
  %i.fh = shufflevector <2 x float> %i.dy, <2 x float> %i.du, <4 x i32> <i32 0, i32 3, i32 poison, i32 2>
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> %i.dx, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.fj = insertelement <4 x float> poison, float %i.en, i64 0 ; 2 uses
  %i.fk = insertelement <4 x float> %i.fj, float %i.el, i64 1
  %i.fl = insertelement <4 x float> %i.fk, float %i.eo, i64 2
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  %i.fn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fi, <4 x float> %i.fm, <4 x float> %i.fg) ; 2 uses
  %i.fo = fmul float %i.ec, %i.ep
  %i.fp = shufflevector <2 x float> %i.du, <2 x float> %i.dy, <4 x i32> <i32 1, i32 3, i32 poison, i32 2>
  %i.fq = insertelement <4 x float> %i.fp, float %i.ex, i64 2
  %i.fr = insertelement <4 x float> %i.fj, float %i.eq, i64 1
  %i.fs = insertelement <4 x float> %i.fr, float %i.eo, i64 2
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 0, i32 1>
  %i.fu = insertelement <4 x float> %i.fn, float %i.fo, i64 0
  %i.fv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fq, <4 x float> %i.ft, <4 x float> %i.fu) ; 4 uses
  %i.fw = extractelement <4 x float> %i.fv, i64 0
  %i.fx = tail call noundef float @llvm.fmuladd.f32(float %i.ed, float %i.eq, float %i.fw)
  %i.fy = fmul float %i.ee, %i.ep
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.eo, float %i.fy)
  %i.ga = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.es, i64 1
  %i.gb = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.gc = shufflevector <2 x float> %i.dv, <2 x float> %i.dw, <4 x i32> <i32 poison, i32 0, i32 1, i32 3>
  %i.gd = insertelement <4 x float> %i.gc, float %i.fz, i64 0
  %i.ge = fmul <4 x float> %i.gb, %i.gd
  %i.gf = shufflevector <2 x float> %i.du, <2 x float> %i.dw, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.gg = insertelement <4 x float> %i.gf, float %i.ex, i64 0
  %i.gh = insertelement <4 x float> poison, float %i.eq, i64 0
  %i.gi = insertelement <4 x float> %i.gh, float %i.er, i64 1
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.gk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gg, <4 x float> %i.gj, <4 x float> %i.ge) ; 4 uses
  %i.gl = extractelement <4 x float> %i.gk, i64 1
  %i.gm = tail call noundef float @llvm.fmuladd.f32(float %i.eb, float %i.et, float %i.gl)
  %i.gn = extractelement <4 x float> %i.gk, i64 2
  %i.go = tail call noundef float @llvm.fmuladd.f32(float %i.ed, float %i.et, float %i.gn)
  %i.gp = extractelement <4 x float> %i.gk, i64 3
  %i.gq = tail call noundef float @llvm.fmuladd.f32(float %i.ex, float %i.et, float %i.gp)
  %i.gr = load <2 x float>, ptr %i.bd, align 4, !tbaa !20, !noalias !353 ; 8 uses
  %i.gs = load <2 x float>, ptr %i.be, align 4, !tbaa !20, !noalias !353 ; 9 uses
  %i.gt = load <2 x float>, ptr %i.bf, align 4, !tbaa !20, !noalias !353 ; 7 uses
  %i.gu = shufflevector <4 x float> %i.fv, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gv = fmul <2 x float> %i.gu, %i.gs
  %i.gw = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gx = insertelement <2 x float> %i.gw, float %i.eh, i64 1 ; 3 uses
  %i.gy = fmul <2 x float> %i.gu, %i.gx
  %i.gz = shufflevector <4 x float> %i.fn, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.gz, <2 x float> %i.gv)
  %i.hb = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hc = insertelement <2 x float> %i.hb, float %i.eg, i64 1 ; 3 uses
  %i.hd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.gz, <2 x float> %i.gy)
  %i.he = shufflevector <4 x float> %i.fv, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.hf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %i.he, <2 x float> %i.ha)
  %i.hg = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hh = insertelement <2 x float> %i.hg, float %i.ei, i64 1 ; 3 uses
  %i.hi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.he, <2 x float> %i.hd)
  %i.hj = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hl = fmul <2 x float> %i.hk, %i.gx
  %i.hm = fmul <2 x float> %i.hk, %i.gs
  %i.hn = shufflevector <4 x float> %i.fv, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.ho = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.hn, <2 x float> %i.hl)
  %i.hp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.hn, <2 x float> %i.hm)
  %i.hq = shufflevector <4 x float> %i.gk, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.hq, <2 x float> %i.ho)
  %i.hs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %i.hq, <2 x float> %i.hp)
  %i.ht = insertelement <2 x float> poison, float %i.go, i64 0
  %i.hu = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hv = fmul <2 x float> %i.hu, %i.gx
  %i.hw = fmul <2 x float> %i.hu, %i.gs
  %i.hx = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.hy, <2 x float> %i.hv)
  %i.ia = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.hy, <2 x float> %i.hw)
  %i.ib = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.id = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.ic, <2 x float> %i.hz)
  %i.ie = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %i.ic, <2 x float> %i.ia)
  %i.if = fadd <2 x float> %i.hf, %i.eu           ; 6 uses
  %3 = shufflevector <2 x float> %i.if, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ig = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ih = insertelement <2 x float> %i.ig, float %i.bh, i64 1
  %i.ii = fadd <2 x float> %i.hi, %i.ih           ; 5 uses
  %4 = shufflevector <2 x float> %i.ii, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ij = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ik = insertelement <2 x float> %i.ij, float %i.bk, i64 1
  %i.il = fadd <2 x float> %i.hr, %i.ik           ; 4 uses
  %i.im = fadd <2 x float> %i.hs, %i.ev           ; 4 uses
  %i.in = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.io = insertelement <2 x float> %i.in, float %i.bn, i64 1
  %i.ip = fadd <2 x float> %i.id, %i.io           ; 4 uses
  %i.iq = fadd <2 x float> %i.ie, %i.ew           ; 3 uses
  %i.ir = fneg <2 x float> %i.iq                  ; 2 uses
  %i.is = fneg <2 x float> %i.ip
  %i.it = fmul <2 x float> %i.il, %i.ir
  %i.iu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.im, <2 x float> %i.ip, <2 x float> %i.it) ; 3 uses
  %i.iv = extractelement <2 x float> %i.il, i64 1
  %i.iw = extractelement <2 x float> %i.iq, i64 0
  %shift = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop270 = fmul <2 x float> %i.if, %shift
  %i.ix = extractelement <2 x float> %foldExtExtBinop270, i64 0
  %i.iy = extractelement <2 x float> %i.ii, i64 1
  %i.iz = extractelement <2 x float> %i.iu, i64 0
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.iy, float %i.iz, float %i.ix)
  %i.jb = extractelement <2 x float> %i.if, i64 1
  %5 = fmul <2 x float> %i.if, %i.is
  %6 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.iq, <2 x float> %5)
  %7 = fneg <2 x float> %i.im
  %8 = fmul <2 x float> %i.ii, %7
  %9 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.if, <2 x float> %i.il, <2 x float> %8)
  %10 = insertelement <2 x float> poison, float %i.eo, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x float> poison, float %i.el, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = insertelement <2 x float> poison, float %i.er, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = insertelement <2 x float> poison, float %i.ep, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = insertelement <2 x float> poison, float %i.em, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = insertelement <2 x float> poison, float %i.es, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = insertelement <2 x float> poison, float %i.eq, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = insertelement <2 x float> poison, float %i.en, i64 0
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = insertelement <2 x float> poison, float %i.et, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %27 = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.je = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = shufflevector <2 x float> %i.ip, <2 x float> %i.il, <2 x i32> <i32 1, i32 3>
  %29 = fneg <2 x float> %28                      ; 2 uses
  %foldExtExtBinop272 = fmul <2 x float> %i.im, %29
  %30 = extractelement <2 x float> %foldExtExtBinop272, i64 0
  %31 = tail call noundef float @llvm.fmuladd.f32(float %i.iv, float %i.iw, float %30) ; 2 uses
  %32 = tail call noundef float @llvm.fmuladd.f32(float %i.jb, float %31, float %i.ja)
  %33 = fdiv float 1.000000e+00, %32              ; 4 uses
  %i.jg = insertelement <2 x float> poison, float %33, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %34 = fmul <2 x float> %i.iu, %i.jh             ; 4 uses
  %35 = fmul <2 x float> %6, %i.jh                ; 4 uses
  %36 = fmul <2 x float> %9, %i.jh                ; 4 uses
  %i.ji = fmul <2 x float> %11, %35
  %37 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %34, <2 x float> %i.ji)
  %38 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %36, <2 x float> %37) ; 3 uses
  %39 = fmul <2 x float> %17, %35
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %34, <2 x float> %39)
  %i.jj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %36, <2 x float> %40) ; 3 uses
  %41 = fmul <2 x float> %23, %35
  %42 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jd, <2 x float> %34, <2 x float> %41)
  %i.jk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %36, <2 x float> %42) ; 3 uses
  %i.jl = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = fmul <2 x float> %i.dv, %i.jl
  %i.jn = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.jn, <2 x float> %i.jm)
  %i.jp = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.jp, <2 x float> %i.jo) ; 5 uses
  %i.jr = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.js = fmul <2 x float> %i.dv, %i.jr
  %i.jt = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ju = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.jt, <2 x float> %i.js)
  %i.jv = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.jv, <2 x float> %i.ju) ; 5 uses
  %i.jx = fmul <2 x float> %26, %i.jj
  %43 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %27, <2 x float> %38, <2 x float> %i.jx)
  %i.jy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jf, <2 x float> %i.jk, <2 x float> %43) ; 5 uses
  %44 = shufflevector <2 x float> %i.jw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %45 = shufflevector <2 x float> %i.ii, <2 x float> %i.gr, <4 x i32> <i32 1, i32 poison, i32 2, i32 2>
  %46 = shufflevector <4 x float> %45, <4 x float> %3, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %47 = shufflevector <2 x float> %i.ir, <2 x float> %i.jw, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %48 = shufflevector <2 x float> %29, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %49 = shufflevector <4 x float> %47, <4 x float> %48, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %50 = fmul <4 x float> %46, %49
  %51 = shufflevector <2 x float> %i.if, <2 x float> %i.jq, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %52 = shufflevector <4 x float> %51, <4 x float> %4, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %53 = shufflevector <2 x float> %i.ip, <2 x float> %i.im, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.jz = insertelement <4 x float> poison, float %i.eg, i64 0
  %54 = shufflevector <4 x float> %i.jz, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %55 = shufflevector <4 x float> %53, <4 x float> %54, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ka = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %52, <4 x float> %55, <4 x float> %50) ; 3 uses
  %56 = extractelement <4 x float> %i.ka, i64 1
  %57 = fmul float %56, %33                       ; 4 uses
  %58 = extractelement <2 x float> %i.jy, i64 1   ; 2 uses
  %59 = extractelement <2 x float> %i.jy, i64 0   ; 2 uses
  %60 = extractelement <2 x float> %i.gt, i64 0
  %61 = shufflevector <2 x float> %i.gs, <2 x float> %i.gt, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %62 = fmul <4 x float> %61, %44
  %63 = shufflevector <2 x float> %i.jq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %64 = insertelement <4 x float> poison, float %i.eh, i64 0
  %65 = insertelement <4 x float> %64, float %i.ei, i64 1
  %66 = shufflevector <4 x float> %65, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %67 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %63, <4 x float> %66, <4 x float> %62) ; 2 uses
  %i.kb = fmul float %60, %58
  %68 = tail call float @llvm.fmuladd.f32(float %59, float %i.ei, float %i.kb)
  %69 = shufflevector <2 x float> %i.jq, <2 x float> %i.jw, <2 x i32> <i32 1, i32 3>
  %70 = shufflevector <2 x float> %i.jq, <2 x float> %i.jw, <2 x i32> <i32 0, i32 2>
  %i.kc = insertelement <2 x float> poison, float %i.br, i64 0
  %71 = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %72 = insertelement <2 x float> poison, float %i.bv, i64 0 ; 2 uses
  %73 = shufflevector <2 x float> %72, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %74 = load <2 x float>, ptr %1, align 4, !tbaa !20 ; 5 uses
  %75 = load float, ptr %i.bp, align 4, !tbaa !20
  %76 = load <2 x float>, ptr %i.bs, align 4, !tbaa !20 ; 5 uses
  %77 = load float, ptr %i.bt, align 4, !tbaa !20
  %78 = fmul float %31, %33                       ; 4 uses
  %79 = extractelement <4 x float> %i.ka, i64 0
  %80 = fmul float %79, %33                       ; 4 uses
  %81 = fmul float %i.eo, %80
  %82 = tail call float @llvm.fmuladd.f32(float %i.el, float %78, float %81)
  %i.kd = tail call noundef float @llvm.fmuladd.f32(float %i.er, float %57, float %82) ; 2 uses
  %i.ke = fmul float %i.ep, %80
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.em, float %78, float %i.ke)
  %i.kg = tail call noundef float @llvm.fmuladd.f32(float %i.es, float %57, float %i.kf) ; 2 uses
  %i.kh = fmul float %i.eq, %80
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.en, float %78, float %i.kh)
  %i.kj = tail call noundef float @llvm.fmuladd.f32(float %i.et, float %57, float %i.ki) ; 2 uses
  %i.kk = insertelement <2 x float> poison, float %i.kg, i64 0
  %i.kl = shufflevector <2 x float> %i.kk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.km = fmul <2 x float> %i.dv, %i.kl
  %i.kn = insertelement <2 x float> poison, float %i.kd, i64 0
  %i.ko = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.ko, <2 x float> %i.km)
  %i.kq = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.kr = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ks = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.kr, <2 x float> %i.kp) ; 5 uses
  %i.kt = fmul float %i.ee, %i.kg
  %i.ku = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.kd, float %i.kt)
  %83 = shufflevector <2 x float> %i.ks, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 0>
  %84 = insertelement <4 x float> %83, float %i.ex, i64 0
  %85 = shufflevector <2 x float> %i.gr, <2 x float> %i.gs, <4 x i32> <i32 poison, i32 1, i32 1, i32 3>
  %86 = insertelement <4 x float> %85, float %i.kj, i64 0
  %87 = shufflevector <4 x float> %i.ka, <4 x float> %67, <4 x i32> <i32 poison, i32 2, i32 3, i32 4>
  %88 = insertelement <4 x float> %87, float %i.ku, i64 0
  %89 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %84, <4 x float> %86, <4 x float> %88) ; 9 uses
  %90 = extractelement <4 x float> %89, i64 0
  %91 = shufflevector <2 x float> %i.ks, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %92 = shufflevector <4 x float> %89, <4 x float> %91, <4 x i32> <i32 0, i32 4, i32 5, i32 5>
  %93 = shufflevector <2 x float> %i.gt, <2 x float> %i.gs, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %94 = insertelement <4 x float> %67, float %68, i64 0
  %95 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %92, <4 x float> %93, <4 x float> %94) ; 6 uses
  %96 = extractelement <4 x float> %89, i64 1
  %97 = fadd float %96, -1.000000e+00             ; 2 uses
  %98 = extractelement <4 x float> %95, i64 0
  %99 = fadd float %98, -1.000000e+00             ; 2 uses
  %100 = shufflevector <4 x float> %89, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %101 = fmul <2 x float> %i.ej, %100
  %i.kv = insertelement <2 x float> poison, float %97, i64 0
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kw, <2 x float> %i.ek, <2 x float> %101)
  %i.ky = shufflevector <4 x float> %95, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %102 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ky, <2 x float> %i.dw, <2 x float> %i.kx)
  %103 = shufflevector <4 x float> %89, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %104 = shufflevector <4 x float> %95, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %105 = shufflevector <2 x float> %i.gr, <2 x float> %i.gs, <2 x i32> <i32 0, i32 2>
  %106 = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %107 = fmul <2 x float> %105, %106
  %108 = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> zeroinitializer
  %109 = insertelement <2 x float> poison, float %i.eg, i64 0
  %110 = insertelement <2 x float> %109, float %i.eh, i64 1
  %111 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %108, <2 x float> %110, <2 x float> %107)
  %112 = shufflevector <4 x float> %89, <4 x float> poison, <2 x i32> zeroinitializer
  %113 = shufflevector <2 x float> %i.gr, <2 x float> %i.gs, <2 x i32> <i32 1, i32 3>
  %114 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %112, <2 x float> %113, <2 x float> %111) ; 4 uses
  %115 = shufflevector <2 x float> %114, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %116 = fmul <2 x float> %i.ej, %115
  %i.kz = shufflevector <2 x float> %114, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kz, <2 x float> %i.ek, <2 x float> %116)
  %117 = insertelement <2 x float> poison, float %99, i64 0
  %118 = shufflevector <2 x float> %117, <2 x float> poison, <2 x i32> zeroinitializer
  %119 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %118, <2 x float> %i.dw, <2 x float> %i.la)
  %120 = extractelement <4 x float> %89, i64 3
  %121 = fmul float %i.ed, %120
  %122 = tail call float @llvm.fmuladd.f32(float %97, float %i.eb, float %121)
  %123 = extractelement <4 x float> %95, i64 1
  %124 = tail call noundef float @llvm.fmuladd.f32(float %123, float %i.ex, float %122)
  %125 = extractelement <4 x float> %89, i64 2
  %126 = extractelement <4 x float> %95, i64 3
  %127 = shufflevector <2 x float> %114, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %128 = shufflevector <4 x float> %95, <4 x float> %127, <2 x i32> <i32 2, i32 5>
  %129 = fadd <2 x float> %128, <float -1.000000e+00, float -0.000000e+00> ; 2 uses
  %i.lb = shufflevector <2 x float> %129, <2 x float> poison, <2 x i32> zeroinitializer
  %130 = fmul <2 x float> %i.ej, %i.lb
  %131 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %103, <2 x float> %i.ek, <2 x float> %130)
  %i.lc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %104, <2 x float> %i.dw, <2 x float> %131)
  %132 = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %133 = fmul <2 x float> %132, %129              ; 2 uses
  %i.ld = extractelement <2 x float> %133, i64 0
  %134 = tail call float @llvm.fmuladd.f32(float %125, float %i.eb, float %i.ld)
  %i.le = tail call noundef float @llvm.fmuladd.f32(float %126, float %i.ex, float %134)
  %i.lf = extractelement <2 x float> %114, i64 0
  %i.lg = extractelement <2 x float> %133, i64 1
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.lf, float %i.eb, float %i.lg)
  %i.li = tail call noundef float @llvm.fmuladd.f32(float %99, float %i.ex, float %i.lh)
  %i.lj = shufflevector <2 x float> %74, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.lk = fmul <2 x float> %i.lj, %69
  %i.ll = shufflevector <2 x float> %74, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %70, <2 x float> %i.ll, <2 x float> %i.lk)
  %i.ln = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jy, <2 x float> %71, <2 x float> %i.lm)
  %i.lo = shufflevector <2 x float> %76, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.lp = fmul <2 x float> %i.lo, %35
  %i.lq = shufflevector <2 x float> %76, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %i.lq, <2 x float> %i.lp)
  %i.ls = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> %73, <2 x float> %i.lr)
  %i.lt = shufflevector <2 x float> %76, <2 x float> %74, <2 x i32> <i32 1, i32 3>
  %i.lu = insertelement <2 x float> %i.ks, float %80, i64 0
  %i.lv = fmul <2 x float> %i.lt, %i.lu
  %i.lw = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lx = insertelement <2 x float> %i.lw, float %78, i64 0
  %i.ly = shufflevector <2 x float> %76, <2 x float> %74, <2 x i32> <i32 0, i32 2>
  %i.lz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lx, <2 x float> %i.ly, <2 x float> %i.lv)
  %135 = insertelement <4 x float> poison, float %57, i64 0
  %136 = shufflevector <4 x float> %135, <4 x float> %89, <2 x i32> <i32 0, i32 4>
  %i.ma = insertelement <2 x float> %72, float %i.br, i64 1
  %i.mb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %136, <2 x float> %i.ma, <2 x float> %i.lz) ; 2 uses
  %i.mc = fadd <2 x float> %i.ls, %i.ln
  %shift274 = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop275 = fadd <2 x float> %i.mb, %shift274
  %.sroa.851.8.vec.insert277 = insertelement <2 x float> %foldExtExtBinop275, float 0.000000e+00, i64 1
  %i.md = fmul <2 x float> %i.lj, %i.lc
  %i.me = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %102, <2 x float> %i.ll, <2 x float> %i.md)
  %i.mf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %119, <2 x float> %71, <2 x float> %i.me)
  %i.mg = fmul float %75, %i.le
  %i.mh = extractelement <2 x float> %74, i64 0
  %i.mi = tail call float @llvm.fmuladd.f32(float %124, float %i.mh, float %i.mg)
  %i.mj = tail call noundef float @llvm.fmuladd.f32(float %i.li, float %i.br, float %i.mi)
  %i.mk = fmul <2 x float> %i.lo, %i.jw
  %i.ml = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jq, <2 x float> %i.lq, <2 x float> %i.mk)
  %i.mm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ks, <2 x float> %73, <2 x float> %i.ml)
  %i.mn = fmul float %77, %58
  %i.mo = extractelement <2 x float> %76, i64 0
  %i.mp = tail call float @llvm.fmuladd.f32(float %59, float %i.mo, float %i.mn)
  %i.mq = tail call noundef float @llvm.fmuladd.f32(float %90, float %i.bv, float %i.mp)
  %i.mr = fadd <2 x float> %i.mm, %i.mf
  %i.ms = fadd float %i.mq, %i.mj
  %.sroa.8.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ms, i64 0
  store <2 x float> %i.mc, ptr %2, align 4
  %.sroa.851.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.851.8.vec.insert277, ptr %.sroa.851.0..sroa_idx, align 4, !tbaa !21
  %i.mt = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x float> %i.mr, ptr %i.mt, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store <2 x float> %.sroa.8.8.vec.insert, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.h, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZNK11btMultiBody9mulMatrixEPKfS1_iiiiPf(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  %i.b = icmp sgt i32 %6, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.c = icmp sgt i32 %5, 0
  %i.d = zext nneg i32 %6 to i64                  ; 5 uses
  br i1 %i.c, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.e = zext nneg i32 %3 to i64
  %i.f = mul nuw nsw i64 %i.d, %i.e
  %i.g = shl nuw i64 %i.f, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 %i.g, i1 false), !tbaa !20
  br label %._crit_edge.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %i.h = sext i32 %4 to i64
  %wide.trip.count46 = zext nneg i32 %3 to i64
  %wide.trip.count41 = zext nneg i32 %6 to i64
  %wide.trip.count = zext nneg i32 %5 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %5, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod54 = trunc i32 %5 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge30.split.us.us
  %indvars.iv43 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next44, %._crit_edge30.split.us.us ] ; 3 uses
  %i.j = mul nuw nsw i64 %indvars.iv43, %i.d
  %i.k = mul nsw i64 %indvars.iv43, %i.h
  %invariant.gep52 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.k ; 3 uses
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.preheader.us
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge.us.us ], [ 0, %.preheader.us ] ; 3 uses
  %gep53 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep52, i64 %indvars.iv38 ; 4 uses
  store float 0.000000e+00, ptr %gep53, align 4, !tbaa !20
  %invariant.gep50 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv38 ; 3 uses
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %i.l = phi float [ %i.t, %.lr.ph.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.m = load float, ptr %gep, align 4, !tbaa !20
  %i.n = mul nuw nsw i64 %indvars.iv, %i.d
  %gep51 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep50, i64 %i.n
  %i.o = load float, ptr %gep51, align 4, !tbaa !20
  %i.p = tail call float @llvm.fmuladd.f32(float %i.m, float %i.o, float %i.l) ; 2 uses
  store float %i.p, ptr %gep53, align 4, !tbaa !20
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.q = load float, ptr %gep.1, align 4, !tbaa !20
  %i.r = mul nuw nsw i64 %indvars.iv.next, %i.d
  %gep51.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep50, i64 %i.r
  %i.s = load float, ptr %gep51.1, align 4, !tbaa !20
  %i.t = tail call float @llvm.fmuladd.f32(float %i.q, float %i.s, float %i.p) ; 3 uses
  store float %i.t, ptr %gep53, align 4, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !7

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %indvars.iv.next.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.us ], [ %i.t, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.u = load float, ptr %gep.epil, align 4, !tbaa !20
  %i.v = mul nuw nsw i64 %indvars.iv.epil.init, %i.d
  %gep51.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep50, i64 %i.v
  %i.w = load float, ptr %gep51.epil, align 4, !tbaa !20
  %i.x = tail call float @llvm.fmuladd.f32(float %i.u, float %i.w, float %.epil.init)
  store float %i.x, ptr %gep53, align 4, !tbaa !20
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge30.split.us.us, label %.lr.ph.us.us, !llvm.loop !355

._crit_edge30.split.us.us:                        ; preds = %._crit_edge.us.us
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count46
  br i1 %exitcond47.not, label %._crit_edge.split, label %.preheader.us, !llvm.loop !8

._crit_edge.split:                                ; preds = %._crit_edge30.split.us.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK11btMultiBody12solveImatrixERK9btVector3S2_Pf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = load float, ptr %i.d, align 4, !tbaa !20 ; 2 uses
  %i.f = fcmp ult float %i.e, f0x34000000
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load float, ptr %i.g, align 8, !tbaa !20
  %i.i = fcmp ult float %i.h, f0x34000000
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !20
  %i.l = fcmp ult float %i.k, f0x34000000
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load float, ptr %2, align 4, !tbaa !20
  %i.n = fdiv float %i.m, %i.e
  store float %i.n, ptr %3, align 4, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !20
  %i.q = load float, ptr %i.g, align 8, !tbaa !20
  %i.r = fdiv float %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.r, ptr %i.s, align 4, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !20
  %i.v = load float, ptr %i.j, align 4, !tbaa !20
  %i.w = fdiv float %i.u, %i.v
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  store <2 x float> zeroinitializer, ptr %3, align 4, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi float [ 0.000000e+00, %bb.f ], [ %i.w, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %.sink, ptr %i.x, align 4, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.z = load float, ptr %i.y, align 8, !tbaa !45 ; 2 uses
  %i.aa = fcmp ult float %i.z, f0x34000000
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load float, ptr %1, align 4, !tbaa !20
  %i.ac = fdiv float %i.ab, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.ac, ptr %i.ad, align 4, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !20
  %i.ag = load float, ptr %i.y, align 8, !tbaa !45
  %i.ah = fdiv float %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.ah, ptr %i.ai, align 4, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !20
  %i.al = load float, ptr %i.y, align 8, !tbaa !45
  %i.am = fdiv float %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 20
  store float %i.am, ptr %i.an, align 4, !tbaa !20
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 12
  store <2 x float> zeroinitializer, ptr %i.ao, align 4, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 20
  store float 0.000000e+00, ptr %i.ap, align 4, !tbaa !20
  br label %.loopexit

bb.j:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !99, !range !68, !noundef !69
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.k, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i64 24, i1 false), !tbaa !20
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !20, !noalias !364 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !20, !noalias !364 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !20, !noalias !364 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !20, !noalias !365 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.br = load float, ptr %i.bq, align 8, !tbaa !20, !noalias !365 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !20, !noalias !365 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !20, !noalias !366
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bz = load float, ptr %i.by, align 8, !tbaa !20, !noalias !366
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !20, !noalias !366
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load float, ptr %i.ay, align 8, !tbaa !20, !noalias !367 ; 4 uses
  %i.cj = load <6 x float>, ptr %i.av, align 4, !tbaa !20, !noalias !367 ; 4 uses
  %i.ck = shufflevector <6 x float> %i.cj, <6 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.cl = load float, ptr %i.aw, align 8, !tbaa !20, !noalias !367 ; 3 uses
  %i.cm = load float, ptr %i.au, align 8, !tbaa !20, !noalias !367 ; 4 uses
  %i.cn = load <2 x float>, ptr %i.at, align 8, !tbaa !20, !noalias !367 ; 6 uses
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.cp = extractelement <2 x float> %i.cn, i64 0
  %i.cq = load float, ptr %i.ba, align 8, !tbaa !20, !noalias !367 ; 5 uses
  %i.cr = fneg float %i.cm
  %i.cs = shufflevector <6 x float> %i.cj, <6 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ct = insertelement <2 x float> %i.cs, float %i.cl, i64 0
  %i.cu = load <2 x float>, ptr %i.bb, align 8, !tbaa !20, !noalias !364 ; 4 uses
  %i.cv = load <2 x float>, ptr %i.bd, align 8, !tbaa !20, !noalias !364 ; 5 uses
  %i.cw = load <2 x float>, ptr %i.bu, align 8, !tbaa !20, !noalias !366 ; 2 uses
  %i.cx = load <2 x float>, ptr %i.bx, align 8, !tbaa !20, !noalias !366 ; 2 uses
  %i.cy = load <2 x float>, ptr %i.az, align 4, !tbaa !20, !noalias !367 ; 3 uses
  %i.cz = load <4 x float>, ptr %i.ax, align 8
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.db = shufflevector <2 x float> %i.cy, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.dc = shufflevector <3 x float> %i.ck, <3 x float> %i.db, <3 x i32> <i32 0, i32 4, i32 5>
  %i.dd = fneg <3 x float> %i.dc                  ; 3 uses
  %i.de = shufflevector <2 x float> %i.cn, <2 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 1>
  %i.df = insertelement <3 x float> %i.de, float %i.cq, i64 0
  %i.dg = insertelement <3 x float> %i.df, float %i.ci, i64 1
  %i.dh = fmul <3 x float> %i.dg, %i.dd
  %i.di = shufflevector <2 x float> %i.cy, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.dj = insertelement <3 x float> %i.di, float %i.ci, i64 0
  %i.dk = insertelement <3 x float> %i.dj, float %i.cq, i64 2
  %i.dl = shufflevector <2 x float> %i.cn, <2 x float> poison, <6 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dm = shufflevector <6 x float> %i.dl, <6 x float> %i.cj, <3 x i32> <i32 0, i32 6, i32 poison>
  %i.dn = shufflevector <3 x float> %i.dm, <3 x float> %i.di, <3 x i32> <i32 0, i32 1, i32 3>
  %i.do = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dk, <3 x float> %i.dn, <3 x float> %i.dh) ; 2 uses
  %i.dp = extractelement <3 x float> %i.do, i64 1
  %i.dq = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.ci, i64 1
  %i.ds = fneg <2 x float> %i.dr                  ; 2 uses
  %i.dt = insertelement <2 x float> %i.co, float %i.cq, i64 0
  %i.du = fmul <2 x float> %i.dt, %i.ds
  %i.dv = insertelement <2 x float> %i.cn, float %i.cq, i64 1
  %i.dw = insertelement <2 x float> %i.da, float %i.cm, i64 1
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.dw, <2 x float> %i.du)
  %i.dy = shufflevector <3 x float> %i.dd, <3 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dz = insertelement <2 x float> %i.dy, float %i.cr, i64 1
  %i.ea = fmul <2 x float> %i.cn, %i.dz
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.ct, <2 x float> %i.ea)
  %i.ec = shufflevector <2 x float> %i.cu, <2 x float> %i.cv, <6 x i32> <i32 1, i32 1, i32 1, i32 3, i32 poison, i32 poison>
  %i.ed = shufflevector <2 x float> %i.cv, <2 x float> poison, <6 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ee = shufflevector <2 x float> %i.cu, <2 x float> %i.cv, <6 x i32> <i32 0, i32 0, i32 0, i32 2, i32 2, i32 2>
  %i.ef = load <2 x float>, ptr %i.bl, align 8, !tbaa !20, !noalias !365 ; 10 uses
  %i.eg = load <2 x float>, ptr %i.bm, align 8, !tbaa !20, !noalias !365 ; 9 uses
  %4 = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ei = insertelement <2 x float> %i.eh, float %i.br, i64 0 ; 2 uses
  %i.ej = load <2 x float>, ptr %i.bn, align 8, !tbaa !20, !noalias !365 ; 8 uses
  %i.ek = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.el = insertelement <2 x float> %i.ek, float %i.bp, i64 0 ; 2 uses
  %i.em = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.en = insertelement <2 x float> %i.em, float %i.bt, i64 0 ; 2 uses
  %i.eo = extractelement <2 x float> %i.ef, i64 0
  %i.ep = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eq = insertelement <2 x float> %i.ep, float %i.bw, i64 0
  %i.er = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.es = insertelement <2 x float> %i.er, float %i.bz, i64 0
  %i.et = load <2 x float>, ptr %i.ca, align 8, !tbaa !20, !noalias !366
  %i.eu = insertelement <3 x float> poison, float %i.bi, i64 0
  %i.ev = shufflevector <3 x float> %i.eu, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ew = insertelement <3 x float> poison, float %i.bg, i64 0
  %i.ex = shufflevector <3 x float> %i.ew, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ey = insertelement <3 x float> poison, float %i.bk, i64 0
  %i.ez = shufflevector <3 x float> %i.ey, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fa = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> %i.ds, <2 x i32> <i32 0, i32 2>
  %i.fc = shufflevector <3 x float> %i.dd, <3 x float> poison, <6 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison>
  %i.fd = shufflevector <6 x float> %i.fc, <6 x float> %i.cj, <2 x i32> <i32 2, i32 6>
  %i.fe = fmul <2 x float> %i.fb, %i.fd
  %i.ff = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.fg = insertelement <2 x float> %i.ff, float %i.cm, i64 1
  %i.fh = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fi = insertelement <2 x float> %i.fh, float %i.cl, i64 0
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.fi, <2 x float> %i.fe) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.co, %i.fj
  %i.fk = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.dp, float %i.fk)
  %i.fm = extractelement <2 x float> %i.fj, i64 1
  %i.fn = tail call noundef float @llvm.fmuladd.f32(float %i.cq, float %i.fm, float %i.fl)
  %i.fo = fdiv float -1.000000e+00, %i.fn         ; 2 uses
  %i.fp = insertelement <3 x float> poison, float %i.fo, i64 0
  %i.fq = shufflevector <3 x float> %i.fp, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fr = fmul <3 x float> %i.do, %i.fq           ; 10 uses
  %i.fs = shufflevector <3 x float> %i.fr, <3 x float> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2>
  %i.ft = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fv = fmul <2 x float> %i.dx, %i.fu           ; 8 uses
  %i.fw = fmul <2 x float> %i.eb, %i.fu           ; 7 uses
  %i.fx = shufflevector <2 x float> %i.fv, <2 x float> poison, <6 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>
  %i.fy = shufflevector <6 x float> %i.ec, <6 x float> %i.fx, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 11>
  %i.fz = extractelement <3 x float> %i.fr, i64 1 ; 2 uses
  %i.ga = extractelement <3 x float> %i.fr, i64 0 ; 2 uses
  %i.gb = fmul <2 x float> %i.fj, %i.fu           ; 12 uses
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <6 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 poison>
  %i.gd = shufflevector <6 x float> %i.fy, <6 x float> %i.gc, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 10, i32 5>
  %i.ge = shufflevector <2 x float> %i.fv, <2 x float> %i.gb, <6 x i32> <i32 1, i32 2, i32 0, i32 1, i32 poison, i32 poison>
  %i.gf = shufflevector <6 x float> %i.ge, <6 x float> %i.ed, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 7, i32 7>
  %i.gg = fmul <6 x float> %i.gd, %i.gf
  %i.gh = tail call <6 x float> @llvm.fmuladd.v6f32(<6 x float> %i.fs, <6 x float> %i.ee, <6 x float> %i.gg)
  %i.gi = shufflevector <2 x float> %i.fw, <2 x float> %i.gb, <3 x i32> <i32 1, i32 3, i32 0>
  %i.gj = shufflevector <2 x float> %i.fw, <2 x float> %i.gb, <6 x i32> <i32 1, i32 3, i32 0, i32 1, i32 3, i32 0>
  %i.gk = shufflevector <2 x float> %i.fv, <2 x float> %i.gb, <3 x i32> <i32 1, i32 2, i32 0>
  %i.gl = fmul <3 x float> %i.gk, %i.ev
  %i.gm = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fr, <3 x float> %i.ex, <3 x float> %i.gl)
  %i.gn = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.gi, <3 x float> %i.ez, <3 x float> %i.gm) ; 6 uses
  %i.go = shufflevector <3 x float> %i.gn, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gp = fmul <2 x float> %i.eg, %i.go
  %i.gq = shufflevector <3 x float> %i.gn, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.gq, <2 x float> %i.gp)
  %i.gs = shufflevector <3 x float> %i.gn, <3 x float> poison, <2 x i32> zeroinitializer
  %i.gt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.gs, <2 x float> %i.gr)
  %i.gu = extractelement <3 x float> %i.gn, i64 2
  %i.gv = fmul float %i.gu, %i.br
  %i.gw = extractelement <3 x float> %i.gn, i64 1
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.gw, float %i.gv)
  %i.gy = extractelement <3 x float> %i.gn, i64 0
  %i.gz = tail call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.gy, float %i.gx)
  %i.ha = fadd <2 x float> %i.gt, %i.et           ; 3 uses
  %i.hb = fadd float %i.gz, %i.cc                 ; 2 uses
  %i.hc = extractelement <2 x float> %i.ha, i64 1 ; 2 uses
  %i.hd = fneg float %i.hc                        ; 2 uses
  %i.he = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hf = insertelement <2 x float> %i.he, float %i.hb, i64 0 ; 2 uses
  %i.hg = fneg <2 x float> %i.hf                  ; 3 uses
  %i.hh = extractelement <2 x float> %i.hg, i64 0
  %i.hi = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hj = insertelement <2 x float> %i.hi, float %i.hd, i64 1
  %i.hk = load <2 x float>, ptr %i.bc, align 4, !tbaa !20, !noalias !364 ; 4 uses
  %i.hl = load <2 x float>, ptr %i.be, align 4, !tbaa !20, !noalias !364 ; 4 uses
  %i.hm = shufflevector <2 x float> %i.hk, <2 x float> %i.hl, <6 x i32> <i32 1, i32 1, i32 1, i32 3, i32 3, i32 3>
  %i.hn = tail call <6 x float> @llvm.fmuladd.v6f32(<6 x float> %i.gj, <6 x float> %i.hm, <6 x float> %i.gh) ; 6 uses
  %i.ho = shufflevector <6 x float> %i.hn, <6 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.hp = fmul <2 x float> %i.ho, %i.eg
  %i.hq = fmul <2 x float> %i.ho, %i.ei
  %i.hr = shufflevector <6 x float> %i.hn, <6 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.hr, <2 x float> %i.hp)
  %i.ht = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.hr, <2 x float> %i.hq)
  %i.hu = shufflevector <6 x float> %i.hn, <6 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.hu, <2 x float> %i.hs)
  %i.hw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.hu, <2 x float> %i.ht)
  %i.hx = shufflevector <6 x float> %i.hn, <6 x float> poison, <2 x i32> <i32 5, i32 5> ; 2 uses
  %i.hy = fmul <2 x float> %i.hx, %i.eg
  %i.hz = fmul <2 x float> %i.hx, %i.ei
  %i.ia = shufflevector <6 x float> %i.hn, <6 x float> poison, <2 x i32> <i32 4, i32 4> ; 2 uses
  %i.ib = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.ia, <2 x float> %i.hy)
  %i.ic = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.ia, <2 x float> %i.hz)
  %i.id = shufflevector <6 x float> %i.hn, <6 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.ie = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.id, <2 x float> %i.ib)
  %i.if = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.id, <2 x float> %i.ic)
  %i.ig = fadd <2 x float> %i.hv, %i.cw           ; 4 uses
  %i.ih = fadd <2 x float> %i.hw, %i.eq           ; 6 uses
  %i.ii = fadd <2 x float> %i.ie, %i.cx           ; 4 uses
  %i.ij = fadd <2 x float> %i.if, %i.es           ; 4 uses
  %i.ik = extractelement <2 x float> %i.ij, i64 0
  %i.il = fmul float %i.ik, %i.hd
  %i.im = extractelement <2 x float> %i.ii, i64 1 ; 2 uses
  %i.in = tail call noundef float @llvm.fmuladd.f32(float %i.im, float %i.hb, float %i.il) ; 2 uses
  %i.io = fmul <2 x float> %i.ii, %i.hg
  %i.ip = shufflevector <2 x float> %i.ij, <2 x float> %i.ii, <2 x i32> <i32 0, i32 2>
  %i.iq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.ha, <2 x float> %i.io) ; 3 uses
  %i.ir = extractelement <2 x float> %i.ig, i64 1 ; 2 uses
  %i.is = extractelement <2 x float> %i.iq, i64 0
  %i.it = fmul float %i.ir, %i.is
  %i.iu = extractelement <2 x float> %i.ih, i64 1
  %i.iv = tail call float @llvm.fmuladd.f32(float %i.iu, float %i.in, float %i.it)
  %i.iw = extractelement <2 x float> %i.ih, i64 0 ; 2 uses
  %i.ix = extractelement <2 x float> %i.iq, i64 1
  %i.iy = tail call noundef float @llvm.fmuladd.f32(float %i.iw, float %i.ix, float %i.iv)
  %i.iz = fdiv float 1.000000e+00, %i.iy          ; 4 uses
  %i.ja = fmul float %i.ir, %i.hh
  %i.jb = tail call noundef float @llvm.fmuladd.f32(float %i.iw, float %i.hc, float %i.ja)
  %i.jc = fneg float %i.im
  %i.jd = fneg <2 x float> %i.ij
  %i.je = fmul <2 x float> %i.ig, %i.jd
  %i.jf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.ii, <2 x float> %i.je)
  %i.jg = fmul float %i.in, %i.iz                 ; 2 uses
  %i.jh = fmul float %i.jb, %i.iz                 ; 2 uses
  %i.ji = shufflevector <2 x float> %i.ih, <2 x float> %i.cv, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.jj = shufflevector <2 x float> %i.hl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jk = shufflevector <4 x float> %i.ji, <4 x float> %i.jj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jl = insertelement <4 x float> poison, float %i.jc, i64 0
  %i.jm = insertelement <4 x float> %i.jl, float %i.jh, i64 1
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.jo = fmul <4 x float> %i.jk, %i.jn
  %i.jp = shufflevector <2 x float> %i.ig, <2 x float> %i.cu, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.jq = shufflevector <2 x float> %i.hk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jr = shufflevector <4 x float> %i.jp, <4 x float> %i.jq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.js = insertelement <2 x float> %i.ij, float %i.jg, i64 1
  %i.jt = shufflevector <2 x float> %i.js, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ju = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jr, <4 x float> %i.jt, <4 x float> %i.jo) ; 4 uses
  %i.jv = extractelement <4 x float> %i.ju, i64 0
  %i.jw = fmul float %i.jv, %i.iz                 ; 4 uses
  %i.jx = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.jz = fmul <2 x float> %i.iq, %i.jy           ; 4 uses
  %i.ka = fmul <2 x float> %i.ih, %i.hj
  %i.kb = shufflevector <2 x float> %i.ih, <2 x float> %i.ig, <2 x i32> <i32 1, i32 3>
  %i.kc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> %i.hf, <2 x float> %i.ka)
  %i.kd = fmul <2 x float> %i.kc, %i.jy           ; 4 uses
  %i.ke = fmul <2 x float> %i.jf, %i.jy           ; 4 uses
  %i.kf = extractelement <4 x float> %i.ju, i64 1
  %5 = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.jw, float %i.kf) ; 2 uses
  %i.kg = extractelement <4 x float> %i.ju, i64 2
  %i.kh = tail call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.jw, float %i.kg) ; 2 uses
  %i.ki = extractelement <4 x float> %i.ju, i64 3
  %6 = tail call noundef float @llvm.fmuladd.f32(float %i.bk, float %i.jw, float %i.ki) ; 2 uses
  %i.kj = extractelement <2 x float> %i.gb, i64 0
  %i.kk = fmul float %i.kj, %i.kh
  %7 = tail call float @llvm.fmuladd.f32(float %i.fz, float %5, float %i.kk)
  %i.kl = extractelement <2 x float> %i.gb, i64 1
  %8 = tail call noundef float @llvm.fmuladd.f32(float %i.kl, float %6, float %7) ; 4 uses
  %i.km = insertelement <2 x float> poison, float %i.kh, i64 0
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ko = fmul <2 x float> %i.fv, %i.kn
  %i.kp = shufflevector <3 x float> %i.fr, <3 x float> poison, <2 x i32> <i32 2, i32 0> ; 3 uses
  %9 = insertelement <2 x float> poison, float %5, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kp, <2 x float> %10, <2 x float> %i.ko)
  %12 = insertelement <2 x float> poison, float %6, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %13, <2 x float> %11) ; 5 uses
  %i.kq = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = fmul <2 x float> %i.kq, %i.kd
  %i.ks = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ks, <2 x float> %i.jz, <2 x float> %i.kr)
  %i.ku = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kv, <2 x float> %i.ke, <2 x float> %i.kt) ; 3 uses
  %i.kx = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ky = fmul <2 x float> %i.kx, %i.kd
  %i.kz = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kz, <2 x float> %i.jz, <2 x float> %i.ky)
  %i.lb = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.lc = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ld = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lc, <2 x float> %i.ke, <2 x float> %i.la) ; 3 uses
  %i.le = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lf = fmul <2 x float> %i.le, %i.kd
  %i.lg = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lg, <2 x float> %i.jz, <2 x float> %i.lf)
  %i.li = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lj, <2 x float> %i.ke, <2 x float> %i.lh) ; 3 uses
  %i.ll = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lm = fmul <2 x float> %i.fv, %i.ll
  %i.ln = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kp, <2 x float> %i.ln, <2 x float> %i.lm)
  %i.lp = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.lp, <2 x float> %i.lo) ; 4 uses
  %i.lr = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ls = fmul <2 x float> %i.lr, %i.ld
  %i.lt = shufflevector <3 x float> %i.fr, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lt, <2 x float> %i.kw, <2 x float> %i.ls)
  %i.lv = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lv, <2 x float> %i.lk, <2 x float> %i.lu) ; 6 uses
  %i.lx = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ly = fmul <2 x float> %i.fv, %i.lx
  %i.lz = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ma = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kp, <2 x float> %i.lz, <2 x float> %i.ly)
  %i.mb = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.mb, <2 x float> %i.ma) ; 6 uses
  %shift = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop250 = fmul <2 x float> %shift, %i.lw
  %i.md = extractelement <2 x float> %foldExtExtBinop250, i64 0
  %15 = tail call float @llvm.fmuladd.f32(float %8, float %i.eo, float %i.md)
  %16 = shufflevector <2 x float> %i.ef, <2 x float> %i.eg, <4 x i32> <i32 poison, i32 1, i32 3, i32 3>
  %17 = insertelement <4 x float> %16, float %15, i64 0
  %18 = shufflevector <2 x float> %i.lq, <2 x float> %i.lw, <4 x i32> <i32 poison, i32 0, i32 2, i32 0>
  %19 = insertelement <4 x float> %18, float 1.000000e+00, i64 0
  %20 = fmul <4 x float> %17, %19
  %21 = shufflevector <2 x float> %i.lw, <2 x float> %14, <4 x i32> <i32 1, i32 2, i32 3, i32 2> ; 2 uses
  %22 = shufflevector <4 x float> %21, <4 x float> %4, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %23 = shufflevector <2 x float> %i.ef, <2 x float> %i.eg, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %24 = insertelement <4 x float> %23, float %i.bp, i64 0
  %25 = insertelement <4 x float> %24, float %8, i64 2
  %26 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %22, <4 x float> %25, <4 x float> %20) ; 2 uses
  %27 = shufflevector <2 x float> %i.ef, <2 x float> %i.eg, <2 x i32> <i32 1, i32 3>
  %i.me = shufflevector <2 x float> %i.lq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %28 = fmul <2 x float> %27, %i.me
  %29 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %30 = shufflevector <2 x float> %i.ef, <2 x float> %i.eg, <2 x i32> <i32 0, i32 2>
  %31 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> %30, <2 x float> %28)
  %32 = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %33 = insertelement <2 x float> poison, float %i.bp, i64 0
  %34 = insertelement <2 x float> %33, float %i.br, i64 1
  %35 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> %34, <2 x float> %31) ; 4 uses
  %shift252 = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop253 = fmul <2 x float> %shift252, %i.lw
  %36 = insertelement <4 x float> poison, float %8, i64 0 ; 2 uses
  %37 = insertelement <4 x float> %36, float %i.bp, i64 1
  %38 = insertelement <4 x float> %37, float %i.br, i64 2
  %39 = shufflevector <4 x float> %38, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %40 = shufflevector <2 x float> %i.ej, <2 x float> %i.mc, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %41 = shufflevector <2 x float> %i.lw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %42 = shufflevector <4 x float> %40, <4 x float> %41, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %43 = shufflevector <2 x float> %foldExtExtBinop253, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %44 = shufflevector <4 x float> %43, <4 x float> %26, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %45 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %39, <4 x float> %42, <4 x float> %44) ; 6 uses
  %46 = extractelement <4 x float> %26, i64 0
  %47 = fadd float %46, -1.000000e+00             ; 2 uses
  %48 = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %49 = shufflevector <4 x float> %45, <4 x float> %48, <4 x i32> <i32 0, i32 5, i32 5, i32 poison>
  %50 = shufflevector <3 x float> %i.fr, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %51 = shufflevector <4 x float> %49, <4 x float> %50, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %52 = shufflevector <2 x float> %i.lq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %53 = shufflevector <4 x float> %52, <4 x float> %45, <4 x i32> <i32 poison, i32 0, i32 1, i32 6>
  %i.mf = insertelement <4 x float> %53, float 1.000000e+00, i64 0
  %i.mg = fmul <4 x float> %51, %i.mf
  %54 = shufflevector <3 x float> %i.fr, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %55 = shufflevector <4 x float> %21, <4 x float> %54, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %56 = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.mh = insertelement <4 x float> %56, float %i.bt, i64 0
  %57 = insertelement <4 x float> %i.mh, float %47, i64 3
  %58 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %55, <4 x float> %57, <4 x float> %i.mg) ; 3 uses
  %59 = shufflevector <2 x float> %i.mc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %60 = shufflevector <4 x float> %45, <4 x float> %59, <4 x i32> <i32 1, i32 4, i32 5, i32 poison>
  %61 = shufflevector <4 x float> %60, <4 x float> %58, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %62 = shufflevector <3 x float> %i.fr, <3 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 0>
  %i.mi = insertelement <4 x float> poison, float %i.bt, i64 0
  %63 = shufflevector <4 x float> %i.mi, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %64 = shufflevector <4 x float> %62, <4 x float> %63, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %65 = shufflevector <2 x float> %35, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %66 = shufflevector <4 x float> %45, <4 x float> %65, <2 x i32> <i32 3, i32 5>
  %67 = fadd <2 x float> %66, <float -1.000000e+00, float -0.000000e+00> ; 2 uses
  %68 = shufflevector <3 x float> %i.fr, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %69 = fmul <2 x float> %68, %67                 ; 2 uses
  %70 = shufflevector <2 x float> %69, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %71 = shufflevector <4 x float> %70, <4 x float> %58, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %72 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %61, <4 x float> %64, <4 x float> %71) ; 5 uses
  %73 = extractelement <4 x float> %72, i64 2
  %74 = fadd float %73, -1.000000e+00             ; 2 uses
  %75 = extractelement <4 x float> %72, i64 0
  %i.mj = extractelement <4 x float> %72, i64 1
  %i.mk = tail call noundef float @llvm.fmuladd.f32(float %i.mj, float %i.ga, float %75)
  %i.ml = extractelement <2 x float> %35, i64 0
  %i.mm = extractelement <2 x float> %69, i64 1
  %i.mn = tail call float @llvm.fmuladd.f32(float %i.ml, float %i.fz, float %i.mm)
  %i.mo = tail call noundef float @llvm.fmuladd.f32(float %74, float %i.ga, float %i.mn)
  %i.mp = shufflevector <2 x float> %i.fv, <2 x float> %i.fw, <2 x i32> <i32 0, i32 2> ; 3 uses
  %76 = shufflevector <4 x float> %45, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.mq = fmul <2 x float> %i.mp, %76
  %i.mr = insertelement <2 x float> poison, float %47, i64 0
  %i.ms = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ms, <2 x float> %i.gb, <2 x float> %i.mq)
  %77 = shufflevector <4 x float> %58, <4 x float> poison, <2 x i32> zeroinitializer
  %i.mu = shufflevector <2 x float> %i.fv, <2 x float> %i.fw, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.mv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %77, <2 x float> %i.mu, <2 x float> %i.mt)
  %i.mw = shufflevector <2 x float> %67, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mx = fmul <2 x float> %i.mp, %i.mw
  %78 = shufflevector <4 x float> %45, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.my = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %78, <2 x float> %i.gb, <2 x float> %i.mx)
  %79 = shufflevector <4 x float> %72, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %79, <2 x float> %i.mu, <2 x float> %i.my)
  %i.na = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nb = fmul <2 x float> %i.mp, %i.na
  %i.nc = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nc, <2 x float> %i.gb, <2 x float> %i.nb)
  %i.ne = insertelement <2 x float> poison, float %74, i64 0
  %i.nf = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ng = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nf, <2 x float> %i.mu, <2 x float> %i.nd)
  %i.nh = load float, ptr %1, align 4, !tbaa !20  ; 2 uses
  %i.ni = load float, ptr %i.cd, align 4, !tbaa !20 ; 2 uses
  %i.nj = load float, ptr %i.ce, align 4, !tbaa !20 ; 2 uses
  %i.nk = load float, ptr %2, align 4, !tbaa !20  ; 2 uses
  %i.nl = load float, ptr %i.cf, align 4, !tbaa !20 ; 2 uses
  %i.nm = load float, ptr %i.cg, align 4, !tbaa !20 ; 2 uses
  %i.nn = insertelement <4 x float> poison, float %i.ni, i64 0
  %i.no = shufflevector <4 x float> %i.nn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.np = shufflevector <2 x float> %i.mc, <2 x float> %14, <4 x i32> <i32 2, i32 poison, i32 0, i32 poison>
  %i.nq = shufflevector <4 x float> %i.np, <4 x float> %52, <4 x i32> <i32 0, i32 4, i32 2, i32 poison>
  %i.nr = insertelement <4 x float> %i.nq, float %i.mk, i64 3
  %i.ns = fmul <4 x float> %i.no, %i.nr
  %i.nt = shufflevector <2 x float> %i.lw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.nu = shufflevector <4 x float> %36, <4 x float> %i.nt, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %80 = shufflevector <4 x float> %i.nu, <4 x float> %72, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.nv = insertelement <4 x float> poison, float %i.nh, i64 0
  %i.nw = shufflevector <4 x float> %i.nv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %80, <4 x float> %i.nw, <4 x float> %i.ns)
  %i.ny = shufflevector <2 x float> %i.mc, <2 x float> %14, <4 x i32> <i32 3, i32 poison, i32 1, i32 poison>
  %i.nz = shufflevector <4 x float> %i.ny, <4 x float> %52, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.oa = insertelement <4 x float> %i.nz, float %i.mo, i64 3
  %i.ob = insertelement <4 x float> poison, float %i.nj, i64 0
  %i.oc = shufflevector <4 x float> %i.ob, <4 x float> poison, <4 x i32> zeroinitializer
  %i.od = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oa, <4 x float> %i.oc, <4 x float> %i.nx)
  %i.oe = insertelement <2 x float> poison, float %i.ni, i64 0
  %i.of = shufflevector <2 x float> %i.oe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.og = fmul <2 x float> %i.of, %i.mz
  %i.oh = insertelement <2 x float> poison, float %i.nh, i64 0
  %i.oi = shufflevector <2 x float> %i.oh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mv, <2 x float> %i.oi, <2 x float> %i.og)
  %i.ok = insertelement <2 x float> poison, float %i.nj, i64 0
  %i.ol = shufflevector <2 x float> %i.ok, <2 x float> poison, <2 x i32> zeroinitializer
  %i.om = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ng, <2 x float> %i.ol, <2 x float> %i.oj)
  %i.on = insertelement <4 x float> poison, float %i.nl, i64 0
  %i.oo = shufflevector <4 x float> %i.on, <4 x float> poison, <4 x i32> zeroinitializer
  %i.op = insertelement <4 x float> poison, float %i.jh, i64 0
  %i.oq = shufflevector <2 x float> %i.kd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.or = shufflevector <4 x float> %i.op, <4 x float> %i.oq, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.os = shufflevector <4 x float> %i.or, <4 x float> %i.nt, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ot = fmul <4 x float> %i.oo, %i.os
  %i.ou = insertelement <4 x float> poison, float %i.jg, i64 0
  %i.ov = shufflevector <2 x float> %i.jz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ow = shufflevector <4 x float> %i.ou, <4 x float> %i.ov, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ox = insertelement <4 x float> %i.ow, float %8, i64 3
  %i.oy = insertelement <4 x float> poison, float %i.nk, i64 0
  %i.oz = shufflevector <4 x float> %i.oy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ox, <4 x float> %i.oz, <4 x float> %i.ot)
  %i.pb = insertelement <4 x float> poison, float %i.jw, i64 0
  %i.pc = shufflevector <2 x float> %i.ke, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pd = shufflevector <4 x float> %i.pb, <4 x float> %i.pc, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.pe = shufflevector <4 x float> %i.pd, <4 x float> %i.nt, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.pf = insertelement <4 x float> poison, float %i.nm, i64 0
  %i.pg = shufflevector <4 x float> %i.pf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ph = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pe, <4 x float> %i.pg, <4 x float> %i.pa)
  %i.pi = insertelement <2 x float> poison, float %i.nl, i64 0
  %i.pj = shufflevector <2 x float> %i.pi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pk = fmul <2 x float> %i.pj, %i.lq
  %i.pl = insertelement <2 x float> poison, float %i.nk, i64 0
  %i.pm = shufflevector <2 x float> %i.pl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %i.pm, <2 x float> %i.pk)
  %i.po = insertelement <2 x float> poison, float %i.nm, i64 0
  %i.pp = shufflevector <2 x float> %i.po, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mc, <2 x float> %i.pp, <2 x float> %i.pn)
  %i.pr = fadd <4 x float> %i.ph, %i.od
  %i.ps = fadd <2 x float> %i.pq, %i.om
  store <4 x float> %i.pr, ptr %3, align 4, !tbaa !20
  store <2 x float> %i.ps, ptr %i.ch, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.k, %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11btMultiBody30calcAccelerationDeltasMultiDofEPKfPfR20btAlignedObjectArrayIfERS3_I9btVector3E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %4) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = alloca [6 x float], align 16             ; 7 uses
  %5 = alloca %struct.btSpatialMotionVector, align 8 ; 9 uses
  %i.c = alloca [6 x float], align 16             ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.e = load i32, ptr %i.d, align 4, !tbaa !48   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !83   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !51   ; 3 uses
  %i.j = icmp sgt i32 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !52
  %i.m = icmp slt i32 %i.l, %i.g
  br i1 %i.m, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = sext i32 %i.g to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.o, i32 noundef 16)
  %.pre.i = load i32, ptr %i.h, align 4, !tbaa !51
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %.pre.i, %bb.d ], [ %i.i, %bb.c ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.p, %bb.d ], [ null, %bb.c ] ; 9 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50   ; 9 uses
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %i.u = ptrtoaddr ptr %i.t to i64
  %.0.i.i.i521 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.q to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  %i.v = sub i64 %i.u, %.0.i.i.i521
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <4 x float>, ptr %i.x, align 4, !tbaa !20
  %wide.load522 = load <4 x float>, ptr %i.y, align 4, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x float> %wide.load, ptr %i.w, align 4, !tbaa !20
  store <4 x float> %wide.load522, ptr %i.z, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !368

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.prol
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !20
  store float %i.ad, ptr %i.ab, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !369

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ae = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !20
  store float %i.ai, ptr %i.ag, align 4, !tbaa !20
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  %i.al = load float, ptr %i.ak, align 4, !tbaa !20
  store float %i.al, ptr %i.aj, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.1
  %i.ao = load float, ptr %i.an, align 4, !tbaa !20
  store float %i.ao, ptr %i.am, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.2
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !20
  store float %i.ar, ptr %i.ap, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !370

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.at = load i8, ptr %i.as, align 8, !tbaa !49, !range !68, !noundef !69
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.e, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.t)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 1, ptr %i.av, align 8, !tbaa !49
  store ptr %.0.i.i.i, ptr %i.s, align 8, !tbaa !50
  store i32 %i.g, ptr %i.k, align 8, !tbaa !52
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %i.aw = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i.i.i, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.ax = sext i32 %i.i to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %i.g to i64
  %i.ay = shl nsw i64 %i.ax, 2
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.ay
  %i.az = sub nsw i64 %wide.trip.count.i, %i.ax
  %i.ba = shl nsw i64 %i.az, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ba, i1 false), !tbaa !20
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit:    ; preds = %.lr.ph.i, %bb.a
  store i32 %i.g, ptr %i.h, align 4, !tbaa !51
  %i.bb = shl nsw i32 %i.e, 2
  %i.bc = add nsw i32 %i.bb, 4                    ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !55 ; 2 uses
  %i.bf = icmp sgt i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.f, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.f:                                             ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !56
  %i.bi = icmp slt i32 %i.bh, %i.bc
  br i1 %i.bi, label %bb.g, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i153 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i153, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = sext i32 %i.bc to i64
  %i.bk = shl nsw i64 %i.bj, 4
  %i.bl = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bk, i32 noundef 16)
  %.pre.i154 = load i32, ptr %i.bd, align 4, !tbaa !55
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.h, %bb.g
  %i.bm = phi i32 [ %.pre.i154, %bb.h ], [ %i.be, %bb.g ] ; 4 uses
end_hunk_0
