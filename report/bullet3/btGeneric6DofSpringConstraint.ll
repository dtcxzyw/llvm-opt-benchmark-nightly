Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGeneric6DofSpringConstraint?download=true
inline.NumInlined: 140
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN29btGeneric6DofSpringConstraint21internalUpdateSpringsEPN17btTypedConstraint17btConstraintInfo2E:bb.a
  %i.o = fmul float %i.m, %i.n                    ; 2 uses
  %i.p = load float, ptr %1, align 8, !tbaa !32
  %i.q = load float, ptr %i.e, align 4, !tbaa !16
  %i.r = fmul float %i.p, %i.q
  %i.s = load i32, ptr %i.b, align 8, !tbaa !33
  %i.t = sitofp i32 %i.s to float
  %i.u = fdiv float %i.r, %i.t
  %i.v = fmul float %i.o, %i.u
  store float %i.v, ptr %i.i, align 8, !tbaa !16
  %i.w = tail call noundef float @llvm.fabs.f32(float %i.o)
  store float %i.w, ptr %i.h, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1334
  %i.y = load i8, ptr %i.x, align 2, !tbaa !14, !range !18, !noundef !19
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1284
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !16
  %i.ae = fsub float %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.ag = load float, ptr %i.af, align 8, !tbaa !16
  %i.ah = fmul float %i.ae, %i.ag                 ; 2 uses
  %i.ai = load float, ptr %1, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !16
  %i.al = fmul float %i.ai, %i.ak
  %i.am = load i32, ptr %i.b, align 8, !tbaa !33
  %i.an = sitofp i32 %i.am to float
  %i.ao = fdiv float %i.al, %i.an
  %i.ap = fmul float %i.ah, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 820
  store float %i.ap, ptr %i.aq, align 4, !tbaa !16
  %i.ar = tail call noundef float @llvm.fabs.f32(float %i.ah)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 836
  store float %i.ar, ptr %i.as, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1335
  %i.au = load i8, ptr %i.at, align 1, !tbaa !14, !range !18, !noundef !19
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1348
  %i.az = load float, ptr %i.ay, align 4, !tbaa !16
  %i.ba = fsub float %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !16
  %i.bd = fmul float %i.ba, %i.bc                 ; 2 uses
  %i.be = load float, ptr %1, align 8, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1396
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !16
  %i.bh = fmul float %i.be, %i.bg
  %i.bi = load i32, ptr %i.b, align 8, !tbaa !33
  %i.bj = sitofp i32 %i.bi to float
  %i.bk = fdiv float %i.bh, %i.bj
  %i.bl = fmul float %i.bd, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 824
  store float %i.bl, ptr %i.bm, align 8, !tbaa !16
  %i.bn = tail call noundef float @llvm.fabs.f32(float %i.bd)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 840
  store float %i.bn, ptr %i.bo, align 8, !tbaa !16
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !14, !range !18, !noundef !19
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !16
  %i.bw = fsub float %i.bt, %i.bv
  %i.bx = fneg float %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.bz = load float, ptr %i.by, align 8, !tbaa !16
  %i.ca = fmul float %i.bz, %i.bx                 ; 2 uses
  %i.cb = load float, ptr %1, align 8, !tbaa !32
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !16
  %i.ce = fmul float %i.cb, %i.cd
  %i.cf = load i32, ptr %i.b, align 8, !tbaa !33
  %i.cg = sitofp i32 %i.cf to float
  %i.ch = fdiv float %i.ce, %i.cg
  %i.ci = fmul float %i.ca, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 900
  store float %i.ci, ptr %i.cj, align 4, !tbaa !34
  %i.ck = tail call noundef float @llvm.fabs.f32(float %i.ca)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 904
  store float %i.ck, ptr %i.cl, align 8, !tbaa !35
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1337
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !14, !range !18, !noundef !19
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1220
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1356
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !16
  %i.ct = fsub float %i.cq, %i.cs
  %i.cu = fneg float %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !16
  %i.cx = fmul float %i.cw, %i.cu                 ; 2 uses
  %i.cy = load float, ptr %1, align 8, !tbaa !32
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1404
  %i.da = load float, ptr %i.cz, align 4, !tbaa !16
  %i.db = fmul float %i.cy, %i.da
  %i.dc = load i32, ptr %i.b, align 8, !tbaa !33
  %i.dd = sitofp i32 %i.dc to float
  %i.de = fdiv float %i.db, %i.dd
  %i.df = fmul float %i.cx, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 964
  store float %i.df, ptr %i.dg, align 4, !tbaa !34
  %i.dh = tail call noundef float @llvm.fabs.f32(float %i.cx)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 968
  store float %i.dh, ptr %i.di, align 8, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1338
  %i.dk = load i8, ptr %i.dj, align 2, !tbaa !14, !range !18, !noundef !19
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !16
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.dp = load float, ptr %i.do, align 8, !tbaa !16
  %i.dq = fsub float %i.dn, %i.dp
  %i.dr = fneg float %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !16
  %i.du = fmul float %i.dt, %i.dr                 ; 2 uses
  %i.dv = load float, ptr %1, align 8, !tbaa !32
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !16
  %i.dy = fmul float %i.dv, %i.dx
  %i.dz = load i32, ptr %i.b, align 8, !tbaa !33
  %i.ea = sitofp i32 %i.dz to float
  %i.eb = fdiv float %i.dy, %i.ea
  %i.ec = fmul float %i.du, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store float %i.ec, ptr %i.ed, align 4, !tbaa !34
  %i.ee = tail call noundef float @llvm.fabs.f32(float %i.du)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store float %i.ee, ptr %i.ef, align 8, !tbaa !35
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN29btGeneric6DofSpringConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(1412) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN29btGeneric6DofSpringConstraint21internalUpdateSpringsEPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(1412) %0, ptr noundef %1)
  tail call void @_ZN23btGeneric6DofConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef %1)
  ret void
}

declare void @_ZN23btGeneric6DofConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(1333), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN29btGeneric6DofSpringConstraint7setAxisERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(1412) initializes((72, 200)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) unnamed_addr #4 align 2 {
bb.a:
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %1, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.8.vec.extract.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !44
  %.sroa.0.0.copyload3.i3 = load <2 x float>, ptr %2, align 4 ; 2 uses
  %i.a = load <4 x float>, ptr %2, align 4
  %i.b = shufflevector <4 x float> %i.a, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.c = shufflevector <2 x float> %.sroa.0.0.copyload3.i3, <2 x float> %.sroa.0.0.copyload3.i, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.d = fmul <2 x float> %i.c, %i.c
  %i.e = shufflevector <2 x float> %.sroa.0.0.copyload3.i3, <2 x float> %.sroa.0.0.copyload3.i, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> %i.e, <2 x float> %i.d)
  %i.g = insertelement <2 x float> %i.b, float %.sroa.8.8.vec.extract.i, i64 1 ; 3 uses
  %i.h = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.g, <2 x float> %i.f)
  %i.i = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.h)
  %i.j = fdiv <2 x float> splat (float 1.000000e+00), %i.i ; 3 uses
  %i.k = fmul <2 x float> %i.e, %i.j              ; 5 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = fmul <2 x float> %i.c, %i.j              ; 5 uses
  %3 = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.n = extractelement <2 x float> %i.m, i64 1
  %i.o = fmul <2 x float> %i.g, %i.j              ; 5 uses
  %4 = fneg float %i.n
  %5 = extractelement <2 x float> %i.o, i64 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45, !nonnull !19, !align !46 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.x = load float, ptr %i.u, align 8, !tbaa !16, !noalias !47 ; 3 uses
  %i.y = load float, ptr %i.v, align 8, !tbaa !16, !noalias !47 ; 3 uses
  %i.z = load float, ptr %i.w, align 8, !tbaa !16, !noalias !47 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %6 = fmul float %5, %4
  %i.ad = shufflevector <2 x float> %i.o, <2 x float> %i.k, <2 x i32> <i32 1, i32 3>
  %7 = fneg <2 x float> %i.ad
  %8 = fmul float %i.y, 0.000000e+00
  %i.ae = shufflevector <2 x float> %i.m, <2 x float> %i.o, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.af = insertelement <4 x float> %i.ae, float %i.l, i64 2
  %i.ag = insertelement <4 x float> %i.af, float %i.x, i64 3
  %i.ah = shufflevector <2 x float> %i.o, <2 x float> %i.k, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ai = insertelement <4 x float> %i.ah, float 0.000000e+00, i64 3
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> %3, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ak = insertelement <4 x float> poison, float %6, i64 0
  %9 = shufflevector <2 x float> %i.k, <2 x float> %i.m, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %10 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %11 = fmul <4 x float> %9, %10
  %12 = shufflevector <4 x float> %i.ak, <4 x float> %11, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %13 = insertelement <4 x float> %12, float %8, i64 3
  %i.al = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %i.aj, <4 x float> %13) ; 4 uses
  %i.am = extractelement <4 x float> %i.al, i64 3
  %i.an = tail call noundef float @llvm.fmuladd.f32(float %i.z, float 0.000000e+00, float %i.am)
  %i.ao = load <2 x float>, ptr %i.r, align 8, !tbaa !16, !noalias !47 ; 3 uses
  %i.ap = load <2 x float>, ptr %i.s, align 8, !tbaa !16, !noalias !47 ; 3 uses
  %i.aq = load <2 x float>, ptr %i.t, align 8, !tbaa !16, !noalias !47 ; 3 uses
  %i.ar = load float, ptr %i.aa, align 8, !tbaa !16, !noalias !48
  %14 = fneg float %i.ar                          ; 2 uses
  %i.as = load float, ptr %i.ab, align 4, !tbaa !16, !noalias !48
  %i.at = fneg float %i.as                        ; 2 uses
  %15 = load float, ptr %i.ac, align 8, !tbaa !16, !noalias !48
  %i.au = fneg float %15                          ; 2 uses
  %i.av = insertelement <2 x float> poison, float %i.at, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.ap, %i.aw
  %i.ay = insertelement <2 x float> poison, float %14, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.az, <2 x float> %i.ax)
  %i.bb = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.bc, <2 x float> %i.ba)
  %i.be = fmul float %i.y, %i.at
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.x, float %14, float %i.be)
  %i.bg = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.au, float %i.bf)
  %i.bh = fmul <2 x float> %i.ap, zeroinitializer
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> zeroinitializer, <2 x float> %i.bh)
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> zeroinitializer, <2 x float> %i.bi)
  %i.bk = fadd <2 x float> %i.bj, %i.bd
  %i.bl = fadd float %i.an, %i.bg
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bl, i64 0
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bp = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.al, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.bq = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.br = shufflevector <4 x float> %i.bp, <4 x float> %i.bq, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 6 uses
  %i.bs = fmul <4 x float> %i.bo, %i.br
  %i.bt = insertelement <4 x float> %i.al, float 0.000000e+00, i64 3
  %i.bu = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bv = shufflevector <4 x float> %i.bt, <4 x float> %i.bu, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 6 uses
  %i.bw = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.by = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.bx, <4 x float> %i.bs)
  %i.bz = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.al, <4 x i32> <i32 6, i32 poison, i32 poison, i32 3>
  %i.ca = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x float> %i.bz, <4 x float> %i.ca, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 6 uses
  %i.cc = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.cd, <4 x float> %i.by)
  store <4 x float> %i.ce, ptr %i.bm, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cg = shufflevector <4 x float> %i.bn, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ch = fmul <4 x float> %i.cg, %i.br
  %i.ci = shufflevector <4 x float> %i.bw, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.ci, <4 x float> %i.ch)
  %i.ck = shufflevector <4 x float> %i.cc, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.ck, <4 x float> %i.cj)
  store <4 x float> %i.cl, ptr %i.cf, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cn = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.y, i64 0
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cp = fmul <4 x float> %i.co, %i.br
  %i.cq = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.x, i64 0
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.cr, <4 x float> %i.cp)
  %i.ct = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.z, i64 0
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.cu, <4 x float> %i.cs)
  store <4 x float> %i.cv, ptr %i.cm, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 120
  store <2 x float> %i.bk, ptr %i.cw, align 8
  %.sroa.1980.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.1980.48..sroa_idx, align 8, !tbaa !44
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !49, !nonnull !19, !align !46 ; 9 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.df = load float, ptr %i.dc, align 8, !tbaa !16, !noalias !50 ; 3 uses
  %i.dg = load float, ptr %i.dd, align 8, !tbaa !16, !noalias !50 ; 3 uses
  %i.dh = load float, ptr %i.de, align 8, !tbaa !16, !noalias !50 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 60
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.dl = fmul float %i.dg, 0.000000e+00
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.df, float 0.000000e+00, float %i.dl)
  %i.dn = tail call noundef float @llvm.fmuladd.f32(float %i.dh, float 0.000000e+00, float %i.dm)
  %i.do = load <2 x float>, ptr %i.cz, align 8, !tbaa !16, !noalias !50 ; 3 uses
  %i.dp = load <2 x float>, ptr %i.da, align 8, !tbaa !16, !noalias !50 ; 3 uses
  %i.dq = load <2 x float>, ptr %i.db, align 8, !tbaa !16, !noalias !50 ; 3 uses
  %i.dr = load float, ptr %i.di, align 8, !tbaa !16, !noalias !51
  %16 = fneg float %i.dr                          ; 2 uses
  %i.ds = load float, ptr %i.dj, align 4, !tbaa !16, !noalias !51
  %i.dt = fneg float %i.ds                        ; 2 uses
  %17 = load float, ptr %i.dk, align 8, !tbaa !16, !noalias !51
  %i.du = fneg float %17                          ; 2 uses
  %i.dv = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x float> %i.dp, %i.dw
  %i.dy = insertelement <2 x float> poison, float %16, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.dz, <2 x float> %i.dx)
  %i.eb = insertelement <2 x float> poison, float %i.du, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.ec, <2 x float> %i.ea)
  %i.ee = fmul float %i.dg, %i.dt
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.df, float %16, float %i.ee)
  %i.eg = tail call noundef float @llvm.fmuladd.f32(float %i.dh, float %i.du, float %i.ef)
  %i.eh = fmul <2 x float> %i.dp, zeroinitializer
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> zeroinitializer, <2 x float> %i.eh)
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> zeroinitializer, <2 x float> %i.ei)
  %i.ek = fadd <2 x float> %i.ej, %i.ed
  %i.el = fadd float %i.dn, %i.eg
  %.sroa.3.12.vec.insert.i4.i.i35 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.el, i64 0
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.en = shufflevector <2 x float> %i.dp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ep = fmul <4 x float> %i.eo, %i.br
  %i.eq = shufflevector <2 x float> %i.do, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.es = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.er, <4 x float> %i.ep)
  %i.et = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.eu, <4 x float> %i.es)
  store <4 x float> %i.ev, ptr %i.em, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ex = shufflevector <4 x float> %i.en, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ey = fmul <4 x float> %i.ex, %i.br
  %i.ez = shufflevector <4 x float> %i.eq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.ez, <4 x float> %i.ey)
  %i.fb = shufflevector <4 x float> %i.et, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.fb, <4 x float> %i.fa)
  store <4 x float> %i.fc, ptr %i.ew, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fe = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.dg, i64 0
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fg = fmul <4 x float> %i.ff, %i.br
  %i.fh = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.df, i64 0
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.fi, <4 x float> %i.fg)
  %i.fk = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.dh, i64 0
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.fl, <4 x float> %i.fj)
  store <4 x float> %i.fm, ptr %i.fd, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 184
  store <2 x float> %i.ek, ptr %i.fn, align 8
  %.sroa.19.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i35, ptr %.sroa.19.48..sroa_idx, align 8, !tbaa !44
  tail call void @_ZN23btGeneric6DofConstraint19calculateTransformsEv(ptr noundef nonnull align 8 dereferenceable(1333) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint23solveConstraintObsoleteER12btSolverBodyS1_f(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, float noundef %3) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

declare noundef ptr @_ZNK17btTypedConstraint9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN29btGeneric6DofSpringConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(1412) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN29btGeneric6DofSpringConstraintdlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #12
  unreachable

_ZN29btGeneric6DofSpringConstraintdlEPv.exit:     ; preds = %bb.a
  ret void
}

declare void @_ZN23btGeneric6DofConstraint13buildJacobianEv(ptr noundef nonnull align 8 dereferenceable(1333)) unnamed_addr #1

declare void @_ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E(ptr noundef nonnull align 8 dereferenceable(1333), ptr noundef) unnamed_addr #1

declare void @_ZN23btGeneric6DofConstraint8setParamEifi(ptr noundef nonnull align 8 dereferenceable(1333), i32 noundef, float noundef, i32 noundef) unnamed_addr #1

declare noundef float @_ZNK23btGeneric6DofConstraint8getParamEii(ptr noundef nonnull align 8 dereferenceable(1333), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK29btGeneric6DofSpringConstraint28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(1412) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 360
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK29btGeneric6DofSpringConstraint9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(1412) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK17btTypedConstraint9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load float, ptr %i.b, align 8, !tbaa !16
  store float %i.d, ptr %i.c, align 4, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.f = load float, ptr %i.e, align 4, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float %i.f, ptr %i.g, align 4, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load float, ptr %i.h, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float %i.i, ptr %i.j, align 4, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.l = load float, ptr %i.k, align 4, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 76
  store float %i.l, ptr %i.m, align 4, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load float, ptr %i.n, align 8, !tbaa !16
  store float %i.p, ptr %i.o, align 4, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.r = load float, ptr %i.q, align 4, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %i.r, ptr %i.s, align 4, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load float, ptr %i.t, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %i.u, ptr %i.v, align 4, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.x = load float, ptr %i.w, align 4, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %i.x, ptr %i.y, align 4, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ab = load float, ptr %i.z, align 8, !tbaa !16
  store float %i.ab, ptr %i.aa, align 4, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 100
  store float %i.ad, ptr %i.ae, align 4, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load float, ptr %i.af, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 104
  store float %i.ag, ptr %i.ah, align 4, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 108
  store float %i.aj, ptr %i.ak, align 4, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.an = load float, ptr %i.al, align 8, !tbaa !16
  store float %i.an, ptr %i.am, align 4, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.ap, ptr %i.aq, align 4, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.as = load float, ptr %i.ar, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float %i.as, ptr %i.at, align 4, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.av = load float, ptr %i.au, align 4, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 124
  store float %i.av, ptr %i.aw, align 4, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.az = load float, ptr %i.ax, align 8, !tbaa !16
  store float %i.az, ptr %i.ay, align 4, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 132
  store float %i.bb, ptr %i.bc, align 4, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.be = load float, ptr %i.bd, align 8, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 136
  store float %i.be, ptr %i.bf, align 4, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 140
  store float %i.bh, ptr %i.bi, align 4, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bl = load float, ptr %i.bj, align 8, !tbaa !16
  store float %i.bl, ptr %i.bk, align 4, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 148
  store float %i.bn, ptr %i.bo, align 4, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 152
  store float %i.bq, ptr %i.br, align 4, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 156
  store float %i.bt, ptr %i.bu, align 4, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bx = load float, ptr %i.bv, align 8, !tbaa !16
  store float %i.bx, ptr %i.bw, align 4, !tbaa !16
end_hunk_0
