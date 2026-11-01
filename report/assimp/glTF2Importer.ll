Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTF2Importer?download=true
inline.NumInlined: 10361
inline.NumDeleted: 3521
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE:bb.a
  resume { ptr, i32 } %.pn142

bb.iu:                                            ; preds = %bb.is
  %i.bbi = landingpad { ptr, i32 }
          catch ptr null
  %i.bbj = extractvalue { ptr, i32 } %i.bbi, 0
  call void @__clang_call_terminate(ptr %i.bbj) #38
  unreachable

bb.iv:                                            ; preds = %.loopexit.split-lp264.loopexit.split-lp, %bb.x
  unreachable
}

declare void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL16GetNodeTransformR12aiMatrix4x4tIfERKN5glTF24NodeE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.b = load i8, ptr %i.a, align 8, !range !45, !noundef !46
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
  %i.az = load i8, ptr %i.ay, align 8, !range !45, !noundef !46
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 380
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 388
  %.sroa.12149.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.20161.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.28173.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.be = load <2 x float>, ptr %i.bb, align 4
  %i.bf = load <4 x float>, ptr %0, align 4       ; 4 uses
  %i.bg = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 3 uses
  %i.bh = shufflevector <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bi = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bj = fmul <4 x float> %i.bh, %i.bi
  %i.bk = shufflevector <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bl = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %i.bl, <4 x float> %i.bj)
  %i.bn = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bo = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bp = load <4 x float>, ptr %.sroa.12149.0..sroa_idx150, align 4 ; 4 uses
  %i.bq = load <2 x float>, ptr %i.bc, align 8
  %i.br = load float, ptr %i.bd, align 4
  %i.bs = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 3 uses
  %i.bt = shufflevector <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bu = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bv = fmul <4 x float> %i.bt, %i.bu
  %i.bw = shufflevector <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 3 uses
  %i.bx = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.by = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.bx, <4 x float> %i.bv)
  %i.bz = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float poison>, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.ca = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.bn, <4 x float> %i.bm)
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ca)
  %i.cc = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.cc, <4 x float> %i.by)
  %i.ce = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.cd)
  store <4 x float> %i.cb, ptr %0, align 4
  store <4 x float> %i.cf, ptr %.sroa.12149.0..sroa_idx150, align 4
  %i.cg = load <4 x float>, ptr %.sroa.20161.0..sroa_idx162, align 4 ; 4 uses
  %i.ch = shufflevector <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.ci = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cj = fmul <4 x float> %i.ch, %i.ci
  %i.ck = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.ck, <4 x float> %i.cj)
  %i.cm = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float poison>, float %i.br, i64 3 ; 2 uses
  %i.cn = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> %i.cn, <4 x float> %i.cl)
  %i.cp = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.co)
  store <4 x float> %i.cq, ptr %.sroa.20161.0..sroa_idx162, align 4
  %i.cr = load <4 x float>, ptr %.sroa.28173.0..sroa_idx174, align 4 ; 4 uses
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ct = fmul <4 x float> %i.ch, %i.cs
  %i.cu = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.cu, <4 x float> %i.ct)
  %i.cw = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> %i.cw, <4 x float> %i.cv)
  %i.cy = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.cx)
  store <4 x float> %i.cz, ptr %.sroa.28173.0..sroa_idx174, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.db = load i8, ptr %i.da, align 4, !range !45, !noundef !46
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 404
  %.sroa.1298.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.20110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.28122.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dg = load <2 x float>, ptr %i.dd, align 4    ; 4 uses
  %i.dh = load float, ptr %i.de, align 8          ; 5 uses
  %i.di = load <2 x float>, ptr %i.df, align 4    ; 6 uses
  %i.dj = extractelement <2 x float> %i.di, i64 0
  %i.dk = extractelement <2 x float> %i.di, i64 1 ; 2 uses
  %i.dl = fneg float %i.dk                        ; 3 uses
  %i.dm = fmul float %i.dj, %i.dk
  %i.dn = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.dh, i64 1
  %i.dp = fmul <2 x float> %i.di, %i.do
  %i.dq = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.dr = shufflevector <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.dq, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ds = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 3 uses
  %i.dt = insertelement <4 x float> %i.ds, float -0.000000e+00, i64 3
  %i.du = shufflevector <2 x float> %i.di, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dv = shufflevector <2 x float> %i.dp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dw = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float 1.000000e+00>, <4 x float> %i.dv, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.dx = extractelement <2 x float> %i.dg, i64 0
  %i.dy = fmul float %i.dx, %i.dl
  %i.dz = shufflevector <4 x float> %i.ds, <4 x float> <float poison, float -2.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ea = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float 1.000000e+00>, float %i.dm, i64 0
  %i.eb = insertelement <4 x float> %i.ea, float %i.dy, i64 2
  %i.ec = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.ed = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ee = insertelement <2 x float> %i.ed, float %i.dl, i64 0
  %i.ef = insertelement <2 x float> %i.di, float %i.dh, i64 1 ; 2 uses
  %i.eg = fmul <2 x float> %i.ef, %i.ef           ; 2 uses
  %i.eh = extractelement <2 x float> %i.eg, i64 0
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.dh, float %i.eh)
  %i.ej = insertelement <4 x float> %i.dt, float %i.ei, i64 0
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> %i.du, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.el = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> %i.ek, <4 x float> %i.dw) ; 2 uses
  %i.em = fmul <4 x float> %i.el, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00> ; 2 uses
  %i.en = shufflevector <4 x float> %i.ek, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 2, i32 7>
  %i.eo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.ed, <2 x float> %i.eg)
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.eq = shufflevector <4 x float> %i.en, <4 x float> %i.ep, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.er = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dz, <4 x float> %i.eq, <4 x float> %i.eb) ; 2 uses
  %i.es = fmul <4 x float> %i.er, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 0.000000e+00> ; 2 uses
  %i.et = shufflevector <4 x float> %i.ds, <4 x float> <float poison, float poison, float -2.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.eu = shufflevector <4 x float> %i.du, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 poison, i32 7>
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> %i.ep, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ew = shufflevector <2 x float> %i.ec, <2 x float> %i.di, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.ex = shufflevector <2 x float> %i.ee, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ey = fmul <4 x float> %i.ew, %i.ex
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.ev, <4 x float> %i.ez) ; 2 uses
  %i.fb = fmul <4 x float> %i.fa, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.fc = load <4 x float>, ptr %0, align 4       ; 4 uses
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fe = fmul <4 x float> %i.fd, %i.es
  %i.ff = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.em, <4 x float> %i.ff, <4 x float> %i.fe)
  %i.fh = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.fh, <4 x float> %i.fg)
  %i.fj = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.fi)
  store <4 x float> %i.fk, ptr %0, align 4
  %i.fl = load <4 x float>, ptr %.sroa.1298.0..sroa_idx99, align 4 ; 4 uses
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fn = shufflevector <4 x float> %i.es, <4 x float> %i.er, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.fo = insertelement <4 x float> %i.fn, float 0.000000e+00, i64 3 ; 3 uses
  %i.fp = fmul <4 x float> %i.fm, %i.fo
  %i.fq = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> zeroinitializer
  %2 = shufflevector <4 x float> %i.el, <4 x float> %i.em, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %i.fr = insertelement <4 x float> %2, float 0.000000e+00, i64 3 ; 3 uses
  %i.fs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fq, <4 x float> %i.fr, <4 x float> %i.fp)
  %i.ft = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %3 = shufflevector <4 x float> %i.fb, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.fu = insertelement <4 x float> %3, float 0.000000e+00, i64 3 ; 3 uses
  %i.fv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ft, <4 x float> %i.fu, <4 x float> %i.fs)
  %i.fw = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fw, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.fv)
  store <4 x float> %i.fx, ptr %.sroa.1298.0..sroa_idx99, align 4
  %i.fy = load <4 x float>, ptr %.sroa.20110.0..sroa_idx111, align 4 ; 4 uses
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ga = fmul <4 x float> %i.fz, %i.fo
  %i.gb = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gb, <4 x float> %i.fr, <4 x float> %i.ga)
  %i.gd = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> %i.fu, <4 x float> %i.gc)
  %i.gf = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gf, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ge)
  store <4 x float> %i.gg, ptr %.sroa.20110.0..sroa_idx111, align 4
  %i.gh = load <4 x float>, ptr %.sroa.28122.0..sroa_idx123, align 4 ; 4 uses
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gj = fmul <4 x float> %i.gi, %i.fo
  %i.gk = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gk, <4 x float> %i.fr, <4 x float> %i.gj)
  %i.gm = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> %i.fu, <4 x float> %i.gl)
  %i.go = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.go, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gn)
  store <4 x float> %i.gp, ptr %.sroa.28122.0..sroa_idx123, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 428
  %i.gr = load i8, ptr %i.gq, align 4, !range !45, !noundef !46
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 420
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.sroa.12.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.20.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.28.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gw = load <4 x float>, ptr %i.gt, align 8    ; 2 uses
  %i.gx = load <4 x float>, ptr %0, align 4       ; 4 uses
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gz = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.gw, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.ha = fmul <4 x float> %i.gy, %i.gz
  %i.hb = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hc = shufflevector <4 x float> %i.gw, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 4 uses
  %i.hd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hb, <4 x float> %i.hc, <4 x float> %i.ha)
  %i.he = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hf = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.hg = load <4 x float>, ptr %.sroa.12.0..sroa_idx28, align 4 ; 4 uses
  %i.hh = load <2 x float>, ptr %i.gu, align 4    ; 2 uses
  %i.hi = load float, ptr %i.gv, align 8
  %i.hj = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hk = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.hl = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.hk, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.hm = fmul <4 x float> %i.hj, %i.hl
  %i.hn = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ho = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hc, <4 x float> %i.hn, <4 x float> %i.hm)
  %i.hp = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hq = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.hk, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.hr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hp, <4 x float> %i.hq, <4 x float> %i.ho)
  %i.hs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.he, <4 x float> %i.hq, <4 x float> %i.hd)
  %i.ht = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hf, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.hs)
  %i.hu = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.hv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hu, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.hr)
  store <4 x float> %i.ht, ptr %0, align 4
  store <4 x float> %i.hv, ptr %.sroa.12.0..sroa_idx28, align 4
  %i.hw = load <4 x float>, ptr %.sroa.20.0..sroa_idx36, align 4 ; 4 uses
  %i.hx = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.hy = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.hx, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.hz = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ia = fmul <4 x float> %i.hy, %i.hz
  %i.ib = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ic = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hc, <4 x float> %i.ib, <4 x float> %i.ia)
  %i.id = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ie = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.hi, i64 2 ; 2 uses
  %i.if = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.id, <4 x float> %i.ie, <4 x float> %i.ic)
  %i.ig = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ih = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ig, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.if)
  store <4 x float> %i.ih, ptr %.sroa.20.0..sroa_idx36, align 4
  %i.ii = load <4 x float>, ptr %.sroa.28.0..sroa_idx44, align 4 ; 4 uses
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ik = fmul <4 x float> %i.hy, %i.ij
  %i.il = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> zeroinitializer
  %i.im = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hc, <4 x float> %i.il, <4 x float> %i.ik)
  %i.in = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.io = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.in, <4 x float> %i.ie, <4 x float> %i.im)
  %i.ip = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.iq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ip, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.io)
  store <4 x float> %i.iq, ptr %.sroa.28.0..sroa_idx44, align 4
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
  %i.z = icmp ugt i64 %i.y, %i.r
  br i1 %i.z, label %bb.f, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread

bb.f:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 264
end_hunk_0
