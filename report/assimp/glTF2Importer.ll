inline.NumInlined: 10360
inline.NumDeleted: 3521
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE:bb.a
  unreachable
}

declare void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL16GetNodeTransformR12aiMatrix4x4tIfERKN5glTF24NodeE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.b = load i8, ptr %i.a, align 8, !range !19, !noundef !20
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.e = load float, ptr %i.d, align 8
  store float %i.e, ptr %0, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.g = load float, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.g, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.j = load float, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.j, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.m = load float, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.p = load float, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.p, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 332
  %i.s = load float, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.v = load float, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.v, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 340
  %i.y = load float, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.y, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ab = load float, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 348
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ae, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ah = load float, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.ah, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.ak, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.an = load float, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.an, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 364
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.aq, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.at = load float, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.at, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 372
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.aw, ptr %i.ax, align 4
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.az = load i8, ptr %i.ay, align 8, !range !19, !noundef !20
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 380
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.be = load float, ptr %i.bd, align 4
  %.sroa.8143.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load <4 x float>, ptr %.sroa.8143.0..sroa_idx144, align 4
  %.sroa.10146.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bg = load <4 x float>, ptr %.sroa.10146.0..sroa_idx147, align 4
  %.sroa.12149.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.16155.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load <4 x float>, ptr %.sroa.16155.0..sroa_idx156, align 4
  %.sroa.18158.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bi = load <4 x float>, ptr %.sroa.18158.0..sroa_idx159, align 4
  %.sroa.20161.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.24167.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load <4 x float>, ptr %.sroa.24167.0..sroa_idx168, align 4
  %.sroa.26170.0..sroa_idx171 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bk = load <4 x float>, ptr %.sroa.26170.0..sroa_idx171, align 4
  %.sroa.28173.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.32179.0..sroa_idx180 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.32179.0.copyload181 = load float, ptr %.sroa.32179.0..sroa_idx180, align 4
  %.sroa.34182.0..sroa_idx183 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.sroa.34182.0.copyload184 = load float, ptr %.sroa.34182.0..sroa_idx183, align 4
  %i.bl = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float poison>, float %i.be, i64 3 ; 4 uses
  %i.bm = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bn = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bo = shufflevector <4 x float> %i.bh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bp = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bq = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.br = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bs = load <2 x float>, ptr %i.bb, align 4    ; 2 uses
  %i.bt = load float, ptr %i.bc, align 8
  %i.bu = insertelement <2 x float> %i.bs, float 0.000000e+00, i64 0
  %i.bv = shufflevector <2 x float> %i.bs, <2 x float> <float 0.000000e+00, float poison>, <2 x i32> <i32 2, i32 0> ; 4 uses
  %i.bw = load <2 x float>, ptr %0, align 4       ; 5 uses
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.by = load <2 x float>, ptr %.sroa.12149.0..sroa_idx150, align 4 ; 5 uses
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ca = load <2 x float>, ptr %.sroa.20161.0..sroa_idx162, align 4 ; 4 uses
  %i.cb = load <2 x float>, ptr %.sroa.28173.0..sroa_idx174, align 4 ; 4 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cd = fmul <2 x float> %i.cc, %i.bu           ; 2 uses
  %i.ce = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.bv, <2 x float> %i.cd)
  %i.cg = shufflevector <2 x float> %i.bw, <2 x float> %i.by, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ch = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ci = shufflevector <4 x float> %i.cg, <4 x float> %i.ch, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cj = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ck = shufflevector <4 x float> %i.ci, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cl = shufflevector <2 x float> %i.bw, <2 x float> %i.by, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> %i.ch, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> zeroinitializer, <4 x float> %i.cn) ; 4 uses
  %i.cp = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cq = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bt, i64 1 ; 3 uses
  %i.cr = fmul <2 x float> %i.cp, %i.cq           ; 2 uses
  %i.cs = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.cs, <2 x float> %i.cr)
  %i.cu = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cv = fmul <2 x float> %i.cu, %i.cq           ; 2 uses
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cx = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.cx, <2 x float> %i.cv)
  %i.cz = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.da = fmul <2 x float> %i.cz, %i.cq           ; 2 uses
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dc = shufflevector <2 x float> %i.cb, <2 x float> %i.ca, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.df = shufflevector <2 x float> %i.cd, <2 x float> %i.cr, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> %i.cw, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.di = fadd <4 x float> %i.de, %i.dh           ; 4 uses
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> %i.co, <4 x i32> <i32 1, i32 6, i32 poison, i32 poison>
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> %i.co, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison>
  %i.dl = shufflevector <4 x float> %i.di, <4 x float> %i.co, <4 x i32> <i32 3, i32 4, i32 poison, i32 poison>
  %i.dm = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.dm, <2 x float> %i.da)
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dp = shufflevector <4 x float> %i.dl, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> %i.bm, <4 x float> %i.dp)
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.dq)
  %i.ds = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dt = shufflevector <4 x float> %i.dk, <4 x float> %i.ds, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.du = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> %i.bo, <4 x float> %i.dt)
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.du)
  %i.dw = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dx = shufflevector <4 x float> %i.dj, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> %i.bq, <4 x float> %i.dx)
  %i.dz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.dy)
  %i.ea = insertelement <4 x float> poison, float %.sroa.32179.0.copyload181, i64 0
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ec = shufflevector <4 x float> %i.di, <4 x float> %i.co, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.ed = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ee = shufflevector <4 x float> %i.ec, <4 x float> %i.ed, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ef = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> %i.eb, <4 x float> %i.ee)
  %i.eg = insertelement <4 x float> poison, float %.sroa.34182.0.copyload184, i64 0
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ei = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ef)
  store <4 x float> %i.dr, ptr %0, align 4
  store <4 x float> %i.dv, ptr %.sroa.12149.0..sroa_idx150, align 4
  store <4 x float> %i.dz, ptr %.sroa.20161.0..sroa_idx162, align 4
  store <4 x float> %i.ei, ptr %.sroa.28173.0..sroa_idx174, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.ek = load i8, ptr %i.ej, align 4, !range !19, !noundef !20
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 404
  %i.ep = load <4 x float>, ptr %0, align 4
  %.sroa.689.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eq = load <4 x float>, ptr %.sroa.689.0..sroa_idx90, align 4
  %.sroa.892.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.er = load <4 x float>, ptr %.sroa.892.0..sroa_idx93, align 4
  %.sroa.1095.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.es = load <4 x float>, ptr %.sroa.1095.0..sroa_idx96, align 4
  %.sroa.1298.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.et = load <4 x float>, ptr %.sroa.1298.0..sroa_idx99, align 4
  %.sroa.14101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eu = load <4 x float>, ptr %.sroa.14101.0..sroa_idx102, align 4
  %.sroa.16104.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ev = load <4 x float>, ptr %.sroa.16104.0..sroa_idx105, align 4
  %.sroa.18107.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ew = load <4 x float>, ptr %.sroa.18107.0..sroa_idx108, align 4
  %.sroa.20110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ex = load <4 x float>, ptr %.sroa.20110.0..sroa_idx111, align 4
  %.sroa.22113.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ey = load <4 x float>, ptr %.sroa.22113.0..sroa_idx114, align 4
  %.sroa.24116.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ez = load <4 x float>, ptr %.sroa.24116.0..sroa_idx117, align 4
  %.sroa.26119.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fa = load <4 x float>, ptr %.sroa.26119.0..sroa_idx120, align 4
  %.sroa.28122.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fb = load <4 x float>, ptr %.sroa.28122.0..sroa_idx123, align 4
  %.sroa.30125.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.30125.0.copyload127 = load float, ptr %.sroa.30125.0..sroa_idx126, align 4
  %.sroa.32128.0..sroa_idx129 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.32128.0.copyload130 = load float, ptr %.sroa.32128.0..sroa_idx129, align 4
  %.sroa.34131.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.sroa.34131.0.copyload133 = load float, ptr %.sroa.34131.0..sroa_idx132, align 4
  %2 = load <2 x float>, ptr %i.em, align 4       ; 4 uses
  %.sroa.34131.0.copyload133.a = load float, ptr %i.en, align 8 ; 5 uses
  %i.fc = load <2 x float>, ptr %i.eo, align 4    ; 6 uses
  %3 = extractelement <2 x float> %i.fc, i64 0
  %4 = extractelement <2 x float> %i.fc, i64 1    ; 2 uses
  %5 = fneg float %4                              ; 3 uses
  %6 = fmul float %3, %4
  %7 = insertelement <2 x float> poison, float %5, i64 0
  %8 = insertelement <2 x float> %7, float %.sroa.34131.0.copyload133.a, i64 1
  %9 = fmul <2 x float> %i.fc, %8
  %10 = shufflevector <2 x float> %2, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %11 = shufflevector <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %10, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %12 = shufflevector <2 x float> %2, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 3 uses
  %i.fd = insertelement <4 x float> %12, float -0.000000e+00, i64 3
  %13 = shufflevector <2 x float> %i.fc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %14 = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %15 = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float 1.000000e+00>, <4 x float> %14, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.fe = extractelement <2 x float> %2, i64 0
  %16 = fmul float %i.fe, %5
  %17 = shufflevector <4 x float> %12, <4 x float> <float poison, float -2.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ff = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float 1.000000e+00>, float %6, i64 0
  %18 = insertelement <4 x float> %i.ff, float %16, i64 2
  %19 = insertelement <2 x float> poison, float %.sroa.34131.0.copyload133.a, i64 0
  %20 = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %21 = insertelement <2 x float> %20, float %5, i64 0
  %22 = insertelement <2 x float> %i.fc, float %.sroa.34131.0.copyload133.a, i64 1 ; 2 uses
  %23 = fmul <2 x float> %22, %22                 ; 2 uses
  %24 = extractelement <2 x float> %23, i64 0
  %25 = tail call float @llvm.fmuladd.f32(float %.sroa.34131.0.copyload133.a, float %.sroa.34131.0.copyload133.a, float %24)
  %26 = insertelement <4 x float> %i.fd, float %25, i64 0
  %27 = shufflevector <4 x float> %26, <4 x float> %13, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %28 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %27, <4 x float> %15) ; 2 uses
  %29 = fmul <4 x float> %28, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00> ; 2 uses
  %30 = shufflevector <4 x float> %27, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 2, i32 7>
  %31 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %20, <2 x float> %23)
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %33 = shufflevector <4 x float> %30, <4 x float> %32, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.fg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %17, <4 x float> %33, <4 x float> %18) ; 2 uses
  %i.fh = fmul <4 x float> %i.fg, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 0.000000e+00> ; 2 uses
  %i.fi = shufflevector <4 x float> %12, <4 x float> <float poison, float poison, float -2.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %34 = shufflevector <4 x float> %13, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 poison, i32 7>
  %35 = shufflevector <4 x float> %34, <4 x float> %32, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %36 = shufflevector <2 x float> %19, <2 x float> %i.fc, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %37 = shufflevector <2 x float> %21, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %38 = fmul <4 x float> %36, %37
  %39 = shufflevector <4 x float> %38, <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fi, <4 x float> %35, <4 x float> %39) ; 2 uses
  %i.fk = fmul <4 x float> %i.fj, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.fl = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fm = fmul <4 x float> %i.fl, %i.fh
  %i.fn = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %29, <4 x float> %i.fn, <4 x float> %i.fm)
  %i.fp = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> %i.fp, <4 x float> %i.fo)
  %i.fr = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fr, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.fq)
  store <4 x float> %i.fs, ptr %0, align 4
  %i.ft = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fu = shufflevector <4 x float> %i.fh, <4 x float> %i.fg, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.fv = insertelement <4 x float> %i.fu, float 0.000000e+00, i64 3 ; 3 uses
  %i.fw = fmul <4 x float> %i.ft, %i.fv
  %i.fx = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fy = shufflevector <4 x float> %28, <4 x float> %29, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %i.fz = insertelement <4 x float> %i.fy, float 0.000000e+00, i64 3 ; 3 uses
  %i.ga = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fx, <4 x float> %i.fz, <4 x float> %i.fw)
  %i.gb = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gc = shufflevector <4 x float> %i.fk, <4 x float> %i.fj, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.gd = insertelement <4 x float> %i.gc, float 0.000000e+00, i64 3 ; 3 uses
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gb, <4 x float> %i.gd, <4 x float> %i.ga)
  %i.gf = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gf, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ge)
  store <4 x float> %i.gg, ptr %.sroa.1298.0..sroa_idx99, align 4
  %i.gh = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = fmul <4 x float> %i.gh, %i.fv
  %i.gj = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gj, <4 x float> %i.fz, <4 x float> %i.gi)
  %i.gl = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gl, <4 x float> %i.gd, <4 x float> %i.gk)
  %i.gn = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.go = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gn, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gm)
  store <4 x float> %i.go, ptr %.sroa.20110.0..sroa_idx111, align 4
  %i.gp = insertelement <4 x float> poison, float %.sroa.30125.0.copyload127, i64 0
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gr = fmul <4 x float> %i.gq, %i.fv
  %i.gs = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gs, <4 x float> %i.fz, <4 x float> %i.gr)
  %i.gu = insertelement <4 x float> poison, float %.sroa.32128.0.copyload130, i64 0
  %i.gv = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gv, <4 x float> %i.gd, <4 x float> %i.gt)
  %i.gx = insertelement <4 x float> poison, float %.sroa.34131.0.copyload133, i64 0
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gy, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gw)
  store <4 x float> %i.gz, ptr %.sroa.28122.0..sroa_idx123, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 428
  %i.hb = load i8, ptr %i.ha, align 4, !range !19, !noundef !20
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 420
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.hg = load <4 x float>, ptr %0, align 4
  %.sroa.6.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.hh = load <4 x float>, ptr %.sroa.6.0..sroa_idx22, align 4
  %.sroa.8.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hi = load <4 x float>, ptr %.sroa.8.0..sroa_idx24, align 4
  %.sroa.10.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.hj = load <4 x float>, ptr %.sroa.10.0..sroa_idx26, align 4
  %.sroa.12.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hk = load <4 x float>, ptr %.sroa.12.0..sroa_idx28, align 4
  %.sroa.14.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.hl = load <4 x float>, ptr %.sroa.14.0..sroa_idx30, align 4
  %.sroa.16.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hm = load <4 x float>, ptr %.sroa.16.0..sroa_idx32, align 4
  %.sroa.18.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.hn = load <4 x float>, ptr %.sroa.18.0..sroa_idx34, align 4
  %.sroa.20.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ho = load <4 x float>, ptr %.sroa.20.0..sroa_idx36, align 4
  %.sroa.22.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.hp = load <4 x float>, ptr %.sroa.22.0..sroa_idx38, align 4
  %.sroa.24.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hq = load <4 x float>, ptr %.sroa.24.0..sroa_idx40, align 4
  %.sroa.26.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.hr = load <4 x float>, ptr %.sroa.26.0..sroa_idx42, align 4
  %.sroa.28.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hs = load <4 x float>, ptr %.sroa.28.0..sroa_idx44, align 4
  %.sroa.30.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.30.0.copyload47 = load float, ptr %.sroa.30.0..sroa_idx46, align 4
  %.sroa.32.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.32.0.copyload49 = load float, ptr %.sroa.32.0..sroa_idx48, align 4
  %.sroa.34.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.sroa.34.0.copyload51 = load float, ptr %.sroa.34.0..sroa_idx50, align 4
  %i.ht = load <2 x float>, ptr %i.hd, align 8    ; 2 uses
  %i.hu = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hv = shufflevector <2 x float> %i.ht, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 2, i32 2>
  %i.hw = fmul <4 x float> %i.hu, %i.hv
  %i.hx = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hy = shufflevector <2 x float> %i.ht, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hz = shufflevector <4 x float> %i.hy, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 4 uses
  %i.ia = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hx, <4 x float> %i.hz, <4 x float> %i.hw)
  %i.ib = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ic = shufflevector <4 x float> %i.hj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.id = load <2 x float>, ptr %i.he, align 4    ; 4 uses
  %i.ie = load float, ptr %i.hf, align 8
  %i.if = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ig = shufflevector <2 x float> %i.id, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 0, i32 2, i32 2>
  %i.ih = fmul <4 x float> %i.if, %i.ig
  %i.ii = shufflevector <4 x float> %i.hk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ij = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hz, <4 x float> %i.ii, <4 x float> %i.ih)
  %i.ik = shufflevector <4 x float> %i.hm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.il = shufflevector <2 x float> %i.id, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.im = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.il, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.in = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ik, <4 x float> %i.im, <4 x float> %i.ij)
  %i.io = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ib, <4 x float> %i.im, <4 x float> %i.ia)
  %i.ip = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ic, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.io)
  %i.iq = shufflevector <4 x float> %i.hn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ir = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iq, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.in)
  store <4 x float> %i.ip, ptr %0, align 4
  store <4 x float> %i.ir, ptr %.sroa.12.0..sroa_idx28, align 4
  %i.is = shufflevector <2 x float> %i.id, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 0, i32 2, i32 2>
  %i.it = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iu = fmul <4 x float> %i.is, %i.it
  %i.iv = shufflevector <4 x float> %i.ho, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hz, <4 x float> %i.iv, <4 x float> %i.iu)
  %i.ix = shufflevector <4 x float> %i.hq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iy = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.ie, i64 2 ; 2 uses
  %i.iz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ix, <4 x float> %i.iy, <4 x float> %i.iw)
  %i.ja = shufflevector <4 x float> %i.hr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ja, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.iz)
  store <4 x float> %i.jb, ptr %.sroa.20.0..sroa_idx36, align 4
  %i.jc = insertelement <2 x float> poison, float %.sroa.30.0.copyload47, i64 0
  %i.jd = shufflevector <2 x float> %i.id, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 0, i32 2, i32 2>
  %i.je = shufflevector <2 x float> %i.jc, <2 x float> poison, <4 x i32> zeroinitializer
  %i.jf = fmul <4 x float> %i.jd, %i.je
  %i.jg = shufflevector <4 x float> %i.hs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hz, <4 x float> %i.jg, <4 x float> %i.jf)
  %i.ji = insertelement <4 x float> poison, float %.sroa.32.0.copyload49, i64 0
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jj, <4 x float> %i.iy, <4 x float> %i.jh)
  %i.jl = insertelement <4 x float> poison, float %.sroa.34.0.copyload51, i64 0
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jm, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.jk)
  store <4 x float> %i.jn, ptr %.sroa.28.0..sroa_idx44, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA28_KcmRA12_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(36) %5) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %6)
  invoke void @_ZN15DeadlyErrorBaseC2IJmRA12_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_S1_ERA28_S1_EEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %6, ptr noundef nonnull align 1 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(36) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %6, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %6, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #35
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #34
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #34
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #34
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5glTF28Accessor11ExtractDataIA16_fEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not21.i = icmp eq ptr %i.g, null
  br i1 %.not21.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.i = load ptr, ptr %i.h, align 8
  br label %_ZN5glTF28Accessor10GetPointerEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not22.i = icmp eq ptr %i.k, null
  br i1 %.not22.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  br label %_ZN5glTF28Accessor10GetPointerEv.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.q = load i32, ptr %i.p, align 8
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
end_hunk_0
