Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 97
loop-unroll.NumUnrolled: 186
begin_hunk_0_@GenMeshTangents:bb.a
  %i.gs = fneg float %i.ga                        ; 2 uses
  %.sroa.025.0.vec.insert = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.gt = shufflevector <2 x float> %.sroa.025.0.vec.insert, <2 x float> %i.ew, <2 x i32> <i32 0, i32 2>
  %foldExtExtBinop455 = fmul <2 x float> %i.ew, %i.ew
  %i.gu = extractelement <2 x float> %foldExtExtBinop455, i64 0
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.ga, float %i.gu) ; 2 uses
  %i.gw = fcmp une float %i.gv, 0.000000e+00
  br i1 %i.gw, label %bb.w, label %Vector3Normalize.exit408

bb.w:                                             ; preds = %bb.v
  %sqrt.i405 = tail call float @llvm.sqrt.f32(float %i.gv)
  %i.gx = fdiv float 1.000000e+00, %sqrt.i405     ; 3 uses
  %i.gy = fmul float %i.gx, %i.gs
  %.sroa.013.0.vec.insert.i406 = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.gz = fmul float %i.gc, %i.gx
  %.sroa.013.4.vec.insert.i407 = insertelement <2 x float> %.sroa.013.0.vec.insert.i406, float %i.gz, i64 1
  %i.ha = fmul float %i.gx, 0.000000e+00
  br label %Vector3Normalize.exit408

bb.x:                                             ; preds = %bb.t
  %i.hb = fcmp une float %i.go, 0.000000e+00
  br i1 %i.hb, label %bb.y, label %Vector3Normalize.exit408

bb.y:                                             ; preds = %bb.x
  %i.hc = fdiv float 1.000000e+00, %sqrt.i400     ; 2 uses
  %i.hd = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = fmul <2 x float> %i.gj, %i.he
  %i.hg = fmul float %i.gk, %i.hc
  br label %Vector3Normalize.exit408

Vector3Normalize.exit408:                         ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.sroa.054.0 = phi <2 x float> [ %i.gt, %bb.v ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.u ], [ %.sroa.013.4.vec.insert.i407, %bb.w ], [ %i.hf, %bb.y ], [ %i.gj, %bb.x ] ; 2 uses
  %.sroa.12.0 = phi float [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.u ], [ %i.ha, %bb.w ], [ %i.hg, %bb.y ], [ %i.gk, %bb.x ] ; 3 uses
  %.sroa.054.0.vec.extract = extractelement <2 x float> %.sroa.054.0, i64 0 ; 3 uses
  %i.hh = load ptr, ptr %i.k, align 8
  %i.hi = shl nuw nsw i64 %indvars.iv429, 2       ; 4 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hi
  store float %.sroa.054.0.vec.extract, ptr %i.hj, align 4
  %.sroa.054.4.vec.extract = extractelement <2 x float> %.sroa.054.0, i64 1 ; 3 uses
  %i.hk = load ptr, ptr %i.k, align 8
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hi
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  store float %.sroa.054.4.vec.extract, ptr %i.hm, align 4
  %i.hn = load ptr, ptr %i.k, align 8
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hi
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store float %.sroa.12.0, ptr %i.hp, align 4
  %i.hq = fneg float %.sroa.054.4.vec.extract
  %i.hr = fmul float %i.ey, %i.hq
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.ga, float %.sroa.12.0, float %i.hr)
  %i.ht = fneg float %.sroa.12.0
  %i.hu = fmul float %i.gc, %i.ht
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.ey, float %.sroa.054.0.vec.extract, float %i.hu)
  %i.hw = fneg float %.sroa.054.0.vec.extract
  %i.hx = fmul float %i.ga, %i.hw
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.gc, float %.sroa.054.4.vec.extract, float %i.hx)
  %i.hz = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv429 ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.hz, align 4 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.01.0.vec.extract.i421 = extractelement <2 x float> %.sroa.0.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i422 = extractelement <2 x float> %.sroa.0.0.copyload, i64 1
  %i.ia = fmul float %i.hv, %.sroa.01.4.vec.extract.i422
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.hs, float %.sroa.01.0.vec.extract.i421, float %i.ia)
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.hy, float %.sroa.2.0.copyload, float %i.ib)
  %i.id = fcmp olt float %i.ic, 0.000000e+00
  %i.ie = select i1 %i.id, float -1.000000e+00, float 1.000000e+00
  br label %bb.z

bb.z:                                             ; preds = %Vector3Normalize.exit408, %Vector3Normalize.exit
  %.sink450 = phi i64 [ %i.hi, %Vector3Normalize.exit408 ], [ %i.fs, %Vector3Normalize.exit ]
  %.sink = phi float [ %i.ie, %Vector3Normalize.exit408 ], [ 1.000000e+00, %Vector3Normalize.exit ]
  %i.if = load ptr, ptr %i.k, align 8
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %.sink450
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 12
  store float %.sink, ptr %i.ih, align 4
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 2 uses
  %i.ii = load i32, ptr %0, align 8               ; 2 uses
  %i.ij = sext i32 %i.ii to i64
  %i.ik = icmp slt i64 %indvars.iv.next430, %i.ij
  br i1 %i.ik, label %.lr.ph426, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.il = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.im = load i32, ptr %i.il, align 4            ; 2 uses
  %.not351 = icmp eq i32 %i.im, 0
  %i.in = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.io = shl i32 %.lcssa, 4                      ; 2 uses
  br i1 %.not351, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @rlUpdateVertexBuffer(i32 noundef %i.im, ptr noundef %i.in, i32 noundef %i.io, i32 noundef 0) #54
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ip = tail call i32 @rlLoadVertexBuffer(ptr noundef %i.in, i32 noundef %i.io, i1 noundef zeroext false) #54
  %i.iq = load ptr, ptr %i.es, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store i32 %i.ip, ptr %i.ir, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.it = load i32, ptr %i.is, align 8
  %i.iu = tail call zeroext i1 @rlEnableVertexArray(i32 noundef %i.it) #54 ; 0 uses
  tail call void @rlSetVertexAttribute(i32 noundef 4, i32 noundef 4, i32 noundef 5126, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) #54
  tail call void @rlEnableVertexAttribute(i32 noundef 4) #54
  tail call void @rlDisableVertexArray() #54
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.103) #54
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.l, %bb.k, %bb.e
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: nounwind uwtable
define void @DrawModel(ptr nofree noundef readonly byval(%struct.Model) align 8 captures(none) %0, <2 x float> %1, float %2, float noundef %3, i32 %4) local_unnamed_addr #33 {
bb.a:
  %.sroa.06.0.vec.insert = insertelement <2 x float> poison, float %3, i64 0
  %.sroa.06.4.vec.insert = shufflevector <2 x float> %.sroa.06.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  tail call void @DrawModelEx(ptr noundef nonnull byval(%struct.Model) align 8 %0, <2 x float> %1, float %2, <2 x float> <float 0.000000e+00, float 1.000000e+00>, float 0.000000e+00, float noundef 0.000000e+00, <2 x float> %.sroa.06.4.vec.insert, float %3, i32 %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawModelEx(ptr nofree noundef byval(%struct.Model) align 8 captures(none) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, float noundef %5, <2 x float> %6, float %7, i32 %8) local_unnamed_addr #33 {
bb.a:
  %9 = alloca %struct.Material, align 8           ; 7 uses
  %.sroa.219.0.extract.shift = lshr i32 %8, 8
  %.sroa.3.0.extract.shift = lshr i32 %8, 16
  %.sroa.4.0.extract.shift = lshr i32 %8, 24
  %i.a = fmul float %5, f0x3C8EFA35               ; 2 uses
  %.sroa.061.0.vec.extract.i = extractelement <2 x float> %3, i64 0 ; 2 uses
  %.sroa.061.4.vec.extract.i = extractelement <2 x float> %3, i64 1 ; 3 uses
  %i.b = fmul float %.sroa.061.4.vec.extract.i, %.sroa.061.4.vec.extract.i ; 2 uses
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.061.0.vec.extract.i, float %.sroa.061.0.vec.extract.i, float %i.b)
  %i.d = tail call float @llvm.fmuladd.f32(float %4, float %4, float %i.c) ; 3 uses
  %i.e = fcmp une float %i.d, 1.000000e+00
  %i.f = fcmp une float %i.d, 0.000000e+00
  %or.cond.i = and i1 %i.e, %i.f
  br i1 %or.cond.i, label %bb.b, label %MatrixRotate.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.d)
  %i.g = fdiv float 1.000000e+00, %sqrt.i         ; 2 uses
  %i.h = insertelement <2 x float> poison, float %i.g, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x float> %3, %i.i                ; 2 uses
  %i.k = extractelement <2 x float> %i.j, i64 1   ; 3 uses
  %i.l = fmul float %4, %i.g
  %.pre.i = fmul float %i.k, %i.k
  br label %MatrixRotate.exit

MatrixRotate.exit:                                ; preds = %bb.a, %bb.b
  %.pre-phi.i = phi float [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %.063.i = phi float [ %i.l, %bb.b ], [ %4, %bb.a ] ; 4 uses
  %.062.i = phi float [ %i.k, %bb.b ], [ %.sroa.061.4.vec.extract.i, %bb.a ] ; 2 uses
  %i.m = phi <2 x float> [ %i.j, %bb.b ], [ %3, %bb.a ] ; 4 uses
  %i.n = tail call float @sinf(float noundef %i.a) #54, !noalias !212 ; 2 uses
  %i.o = tail call float @cosf(float noundef %i.a) #54, !noalias !212 ; 4 uses
  %i.p = fsub float 1.000000e+00, %i.o            ; 5 uses
  %i.q = extractelement <2 x float> %i.m, i64 0   ; 2 uses
  %i.r = insertelement <2 x float> poison, float %.063.i, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.s, %i.m              ; 3 uses
  %i.u = insertelement <2 x float> poison, float %.062.i, i64 0
  %i.v = insertelement <2 x float> %i.u, float %.063.i, i64 1
  %i.w = insertelement <2 x float> poison, float %i.n, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x float> %i.v, %i.x              ; 3 uses
  %i.z = fmul float %.062.i, %i.q
  %foldExtExtBinop = fmul <2 x float> %i.m, %i.m
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = fneg <2 x float> %i.y
  %i.ac = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.ad = insertelement <4 x float> %i.ac, float %i.aa, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %i.z, i64 1
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ag = insertelement <4 x float> poison, float %i.p, i64 0
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aj = insertelement <4 x float> %i.ai, float %i.o, i64 0
  %i.ak = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.al = shufflevector <4 x float> %i.aj, <4 x float> %i.ak, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.ah, <4 x float> %i.al) ; 4 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %.pre-phi.i, float %i.p, float %i.o)
  %i.ao = fmul float %i.q, %i.n                   ; 2 uses
  %i.ap = extractelement <2 x float> %i.t, i64 1
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.p, float %i.ao)
  %i.ar = fneg float %i.ao
  %i.as = fmul float %.063.i, %.063.i
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.p, float %i.o) ; 2 uses
  %.sroa.030.0.vec.extract = extractelement <2 x float> %1, i64 0
  %.sroa.7161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.11165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.15169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.au = shufflevector <2 x float> %6, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1> ; 3 uses
  %i.av = shufflevector <3 x float> <float 0.000000e+00, float 0.000000e+00, float poison>, <3 x float> %i.au, <3 x i32> <i32 0, i32 1, i32 5> ; 3 uses
  %i.aw = shufflevector <4 x float> %i.am, <4 x float> poison, <3 x i32> <i32 3, i32 3, i32 3>
  %i.ax = fmul <3 x float> %i.av, %i.aw
  %i.ay = insertelement <3 x float> poison, float %i.an, i64 0
  %i.az = shufflevector <3 x float> %i.ay, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ba = fmul <3 x float> %i.av, %i.az
  %i.bb = insertelement <3 x float> poison, float %i.aq, i64 0
  %i.bc = shufflevector <3 x float> %i.bb, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bd = fmul <3 x float> %i.av, %i.bc
  %i.be = shufflevector <3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, <3 x float> %i.au, <3 x i32> <i32 0, i32 4, i32 2> ; 3 uses
  %i.bf = shufflevector <4 x float> %i.am, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bg = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.be, <3 x float> %i.bf, <3 x float> %i.ax) ; 2 uses
  %i.bh = insertelement <3 x float> <float poison, float 0.000000e+00, float 0.000000e+00>, float %7, i64 0 ; 3 uses
  %i.bi = shufflevector <4 x float> %i.am, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.bj = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.be, <3 x float> %i.bi, <3 x float> %i.ba) ; 2 uses
  %i.bk = shufflevector <4 x float> %i.am, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.bl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.be, <3 x float> %i.bk, <3 x float> %i.bd) ; 2 uses
  %i.bm = insertelement <3 x float> poison, float %i.at, i64 0
  %i.bn = shufflevector <3 x float> %i.bm, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bo = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bh, <3 x float> %i.bn, <3 x float> %i.bl)
  %i.bp = fadd <3 x float> %i.bo, zeroinitializer ; 4 uses
  %i.bq = insertelement <3 x float> %i.au, float %7, i64 0
  %i.br = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bq, <3 x float> zeroinitializer, <3 x float> <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>)
  %i.bs = fadd <3 x float> %i.br, zeroinitializer ; 4 uses
  %i.bt = extractelement <3 x float> %i.bl, i64 0
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %i.bt)
  %i.bv = fadd float %i.bu, 0.000000e+00          ; 4 uses
  %i.bw = shufflevector <2 x float> %1, <2 x float> poison, <3 x i32> zeroinitializer
  %i.bx = insertelement <2 x float> poison, float %i.p, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = insertelement <2 x float> %i.y, float %i.ar, i64 1
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.by, <2 x float> %i.bz) ; 3 uses
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <3 x i32> zeroinitializer
  %i.cc = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bh, <3 x float> %i.cb, <3 x float> %i.bg)
  %i.cd = fadd <3 x float> %i.cc, zeroinitializer ; 3 uses
  %i.ce = shufflevector <2 x float> %i.ca, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.cf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bh, <3 x float> %i.ce, <3 x float> %i.bj)
  %i.cg = fadd <3 x float> %i.cf, zeroinitializer ; 2 uses
  %i.ch = shufflevector <3 x float> %i.bg, <3 x float> %i.bj, <2 x i32> <i32 0, i32 3>
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> zeroinitializer, <2 x float> %i.ch)
  %i.cj = fadd <2 x float> %i.ci, zeroinitializer ; 5 uses
  %i.ck = fmul <3 x float> %i.cg, zeroinitializer ; 2 uses
  %i.cl = fadd <3 x float> %i.cd, %i.ck
  %i.cm = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bp, <3 x float> zeroinitializer, <3 x float> %i.cl)
  %i.cn = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bs, <3 x float> %i.bw, <3 x float> %i.cm) ; 3 uses
  %10 = fmul <2 x float> %i.cj, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.co = extractelement <2 x float> %i.cj, i64 0
  %shift = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop199 = fadd <2 x float> %i.cj, %shift
  %11 = extractelement <2 x float> %foldExtExtBinop199, i64 0
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.bv, float 0.000000e+00, float %11)
  %i.cq = fadd float %.sroa.030.0.vec.extract, %i.cp
  %i.cr = extractelement <2 x float> %i.cj, i64 1
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.co, float 0.000000e+00, float %i.cr)
  %12 = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %13 = insertelement <2 x float> %12, float %i.bv, i64 0
  %14 = insertelement <2 x float> %10, float %i.cs, i64 0
  %15 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> zeroinitializer, <2 x float> %14) ; 3 uses
  %shift201 = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop202 = fadd <2 x float> %shift201, %15
  %16 = extractelement <2 x float> %15, i64 1
  %i.ct = fadd float %i.bv, %16
  %i.cu = fadd float %2, %i.ct
  %i.cv = load <4 x float>, ptr %0, align 8       ; 4 uses
  %i.cw = load <4 x float>, ptr %.sroa.7161.0..sroa_idx, align 8 ; 4 uses
  %i.cx = load <4 x float>, ptr %.sroa.11165.0..sroa_idx, align 8 ; 4 uses
  %i.cy = load <4 x float>, ptr %.sroa.15169.0..sroa_idx, align 8 ; 4 uses
  %i.cz = shufflevector <3 x float> %i.cn, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.da = fmul <4 x float> %i.cw, %i.cz
  %i.db = shufflevector <3 x float> %i.cn, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.db, <4 x float> %i.da)
  %i.dd = shufflevector <3 x float> %i.cn, <3 x float> poison, <4 x i32> zeroinitializer
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.dd, <4 x float> %i.dc)
  %i.df = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.dg, <4 x float> %i.de)
  store <4 x float> %i.dh, ptr %0, align 8
  %i.di = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cd, <3 x float> zeroinitializer, <3 x float> %i.cg)
  %i.dj = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bp, <3 x float> zeroinitializer, <3 x float> %i.di)
  %i.dk = shufflevector <2 x float> %1, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.dl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bs, <3 x float> %i.dk, <3 x float> %i.dj) ; 3 uses
  %i.dm = shufflevector <3 x float> %i.dl, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dn = fmul <4 x float> %i.cw, %i.dm
  %i.do = shufflevector <3 x float> %i.dl, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.do, <4 x float> %i.dn)
  %i.dq = shufflevector <3 x float> %i.dl, <3 x float> poison, <4 x i32> zeroinitializer
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.dq, <4 x float> %i.dp)
  %i.ds = shufflevector <2 x float> %foldExtExtBinop202, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.ds, <4 x float> %i.dr)
  store <4 x float> %i.dt, ptr %.sroa.7161.0..sroa_idx, align 8
  %i.du = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cd, <3 x float> zeroinitializer, <3 x float> %i.ck) ; 2 uses
  %i.dv = fadd <3 x float> %i.bp, %i.du
  %i.dw = insertelement <3 x float> poison, float %2, i64 0
  %i.dx = shufflevector <3 x float> %i.dw, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dy = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bs, <3 x float> %i.dx, <3 x float> %i.dv) ; 3 uses
  %i.dz = shufflevector <3 x float> %i.dy, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ea = fmul <4 x float> %i.cw, %i.dz
  %i.eb = shufflevector <3 x float> %i.dy, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.eb, <4 x float> %i.ea)
  %i.ed = shufflevector <3 x float> %i.dy, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ee = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.ed, <4 x float> %i.ec)
  %i.ef = insertelement <4 x float> poison, float %i.cu, i64 0
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.eg, <4 x float> %i.ee)
  store <4 x float> %i.eh, ptr %.sroa.11165.0..sroa_idx, align 8
  %i.ei = shufflevector <3 x float> %i.bp, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ej = insertelement <4 x float> %i.ei, float %i.bv, i64 3
  %i.ek = shufflevector <3 x float> %i.du, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %17 = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %18 = shufflevector <4 x float> %i.ek, <4 x float> %17, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.el = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ej, <4 x float> zeroinitializer, <4 x float> %18)
  %i.em = shufflevector <3 x float> %i.bs, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.en = insertelement <4 x float> %i.em, float 1.000000e+00, i64 3
  %i.eo = fadd <4 x float> %i.en, %i.el           ; 4 uses
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.eq = fmul <4 x float> %i.cw, %i.ep
  %i.er = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.es = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.er, <4 x float> %i.eq)
  %i.et = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.et, <4 x float> %i.es)
  %i.ev = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.ev, <4 x float> %i.eu)
  store <4 x float> %i.ew, ptr %.sroa.15169.0..sroa_idx, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ey = load i32, ptr %i.ex, align 8            ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %MatrixRotate.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ff = and i32 %8, 255
  %i.fg = and i32 %.sroa.219.0.extract.shift, 255
  %i.fh = and i32 %.sroa.3.0.extract.shift, 255
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %i.fl = icmp ne ptr %i.fk, null
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fn = load i32, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fp = load ptr, ptr %i.fo, align 8
  %wide.trip.count = zext nneg i32 %i.ey to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.f, %MatrixRotate.exit
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #54
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [40 x i8], ptr %i.fb, i64 %i.fs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %i.ft, i64 40, i1 false)
  %i.fu = load ptr, ptr %i.fe, align 8            ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 20 ; 3 uses
  %.sroa.03.0.copyload = load i8, ptr %i.fv, align 4 ; 2 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 21 ; 3 uses
  %.sroa.55.0.copyload = load i8, ptr %.sroa.55.0..sroa_idx, align 1 ; 2 uses
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 22 ; 3 uses
  %.sroa.68.0.copyload = load i8, ptr %.sroa.68.0..sroa_idx, align 2 ; 2 uses
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 23 ; 3 uses
  %.sroa.711.0.copyload = load i8, ptr %.sroa.711.0..sroa_idx, align 1 ; 2 uses
  %i.fw = zext i8 %.sroa.03.0.copyload to i32
  %i.fx = mul nuw nsw i32 %i.ff, %i.fw
  %.lhs.trunc = trunc nuw i32 %i.fx to i16
  %i.fy = udiv i16 %.lhs.trunc, 255
  %i.fz = trunc nuw i16 %i.fy to i8
  %i.ga = zext i8 %.sroa.55.0.copyload to i32
  %i.gb = mul nuw nsw i32 %i.fg, %i.ga
  %.lhs.trunc189 = trunc nuw i32 %i.gb to i16
  %i.gc = udiv i16 %.lhs.trunc189, 255
  %i.gd = trunc nuw i16 %i.gc to i8
  %i.ge = zext i8 %.sroa.68.0.copyload to i32
  %i.gf = mul nuw nsw i32 %i.fh, %i.ge
  %.lhs.trunc191 = trunc nuw i32 %i.gf to i16
  %i.gg = udiv i16 %.lhs.trunc191, 255
  %i.gh = trunc nuw i16 %i.gg to i8
  %i.gi = zext i8 %.sroa.711.0.copyload to i32
  %i.gj = mul nuw nsw i32 %.sroa.4.0.extract.shift, %i.gi
  %i.gk = udiv i32 %i.gj, 255
  %i.gl = trunc nuw i32 %i.gk to i8
  store i8 %i.fz, ptr %i.fv, align 4
  store i8 %i.gd, ptr %.sroa.55.0..sroa_idx, align 1
  store i8 %i.gh, ptr %.sroa.68.0..sroa_idx, align 2
  store i8 %i.gl, ptr %.sroa.711.0..sroa_idx, align 1
  %i.gm = load ptr, ptr %i.fi, align 8            ; 2 uses
  %.not = icmp eq ptr %i.gm, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 112 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4
  %i.gp = icmp ne i32 %i.go, -1
  %or.cond = select i1 %i.gp, i1 %i.fl, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.gq = load i32, ptr %9, align 8
  tail call void @rlEnableShader(i32 noundef %i.gq) #54
  %i.gr = load i32, ptr %i.gn, align 4
  tail call void @rlSetUniformMatrices(i32 noundef %i.gr, ptr noundef nonnull %i.fk, i32 noundef %i.fn) #54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.gs = getelementptr inbounds nuw [120 x i8], ptr %i.fp, i64 %indvars.iv
  tail call void @DrawMesh(ptr noundef byval(%struct.Mesh) align 8 %i.gs, ptr noundef nonnull byval(%struct.Material) align 8 %9, ptr noundef nonnull byval(%struct.Matrix) align 8 %0)
  store i8 %.sroa.03.0.copyload, ptr %i.fv, align 4
  store i8 %.sroa.55.0.copyload, ptr %.sroa.55.0..sroa_idx, align 1
  store i8 %.sroa.68.0.copyload, ptr %.sroa.68.0..sroa_idx, align 2
  store i8 %.sroa.711.0.copyload, ptr %.sroa.711.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c
}

declare void @rlSetUniformMatrices(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @DrawModelWires(ptr nofree noundef readonly byval(%struct.Model) align 8 captures(none) %0, <2 x float> %1, float %2, float noundef %3, i32 %4) local_unnamed_addr #33 {
bb.a:
  tail call void @rlEnableWireMode() #54
  %.sroa.06.0.vec.insert.i = insertelement <2 x float> poison, float %3, i64 0
  %.sroa.06.4.vec.insert.i = shufflevector <2 x float> %.sroa.06.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  tail call void @DrawModelEx(ptr noundef nonnull byval(%struct.Model) align 8 %0, <2 x float> %1, float %2, <2 x float> <float 0.000000e+00, float 1.000000e+00>, float 0.000000e+00, float noundef 0.000000e+00, <2 x float> %.sroa.06.4.vec.insert.i, float %3, i32 %4)
  tail call void @rlDisableWireMode() #54
  ret void
}

declare void @rlEnableWireMode() local_unnamed_addr #34

declare void @rlDisableWireMode() local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @DrawModelWiresEx(ptr nofree noundef readonly byval(%struct.Model) align 8 captures(none) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, float noundef %5, <2 x float> %6, float %7, i32 %8) local_unnamed_addr #33 {
bb.a:
  tail call void @rlEnableWireMode() #54
  tail call void @DrawModelEx(ptr noundef nonnull byval(%struct.Model) align 8 %0, <2 x float> %1, float %2, <2 x float> %3, float %4, float noundef %5, <2 x float> %6, float %7, i32 %8)
  tail call void @rlDisableWireMode() #54
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawBillboard(ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Texture) align 8 captures(none) %1, <2 x float> %2, float %3, float noundef %4, i32 %5) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load <2 x i32>, ptr %i.a, align 4
  %i.c = sitofp <2 x i32> %i.b to <2 x float>     ; 3 uses
  %i.d = extractelement <2 x float> %i.c, i64 0
  %i.e = extractelement <2 x float> %i.c, i64 1
  %i.f = fdiv float %i.d, %i.e
  %i.g = tail call float @llvm.fabs.f32(float %i.f)
  %i.h = fmul float %4, %i.g                      ; 2 uses
  %.sroa.01.0.vec.insert = insertelement <2 x float> poison, float %i.h, i64 0
  %.sroa.01.4.vec.insert = insertelement <2 x float> %.sroa.01.0.vec.insert, float %4, i64 1
  %i.i = insertelement <2 x float> poison, float %i.h, i64 0
  %i.j = insertelement <2 x float> %i.i, float %4, i64 1
  %i.k = fmul <2 x float> %i.j, splat (float 5.000000e-01)
  tail call void @DrawBillboardPro(ptr noundef nonnull byval(%struct.Camera3D) align 8 %0, ptr noundef nonnull byval(%struct.Texture) align 8 %1, <2 x float> zeroinitializer, <2 x float> %i.c, <2 x float> %2, float %3, <2 x float> <float 0.000000e+00, float 1.000000e+00>, float 0.000000e+00, <2 x float> %.sroa.01.4.vec.insert, <2 x float> %i.k, float noundef 0.000000e+00, i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawBillboardRec(ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Texture) align 8 captures(none) %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, float %5, <2 x float> %6, i32 %7) local_unnamed_addr #33 {
bb.a:
  %i.a = fmul <2 x float> %6, splat (float 5.000000e-01)
  tail call void @DrawBillboardPro(ptr noundef nonnull byval(%struct.Camera3D) align 8 %0, ptr noundef nonnull byval(%struct.Texture) align 8 %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, float %5, <2 x float> <float 0.000000e+00, float 1.000000e+00>, float 0.000000e+00, <2 x float> %6, <2 x float> %i.a, float noundef 0.000000e+00, i32 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawBillboardPro(ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Texture) align 8 captures(none) %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, float %5, <2 x float> %6, float %7, <2 x float> %8, <2 x float> %9, float noundef %10, i32 %11) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0160.0.copyload = load <2 x float>, ptr %0, align 8 ; 2 uses
  %.sroa.2161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2161.0.copyload = load float, ptr %.sroa.2161.0..sroa_idx, align 8
  %.sroa.0158.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 2 uses
  %.sroa.2159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.2159.0.copyload = load float, ptr %.sroa.2159.0..sroa_idx, align 4
  %.sroa.0156.0.copyload = load <2 x float>, ptr %i.b, align 8 ; 2 uses
  %.sroa.2157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2157.0.copyload = load float, ptr %.sroa.2157.0..sroa_idx, align 8 ; 2 uses
  %.sroa.058.4.vec.extract.i = extractelement <2 x float> %.sroa.0156.0.copyload, i64 1 ; 2 uses
  %.sroa.058.0.vec.extract.i = extractelement <2 x float> %.sroa.0156.0.copyload, i64 0 ; 2 uses
  %.sroa.0174.0.vec.extract = extractelement <2 x float> %8, i64 0 ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.0160.0.copyload, %.sroa.0158.0.copyload
  %i.c = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.d = fsub float %.sroa.2161.0.copyload, %.sroa.2159.0.copyload ; 3 uses
  %foldExtExtBinop324 = fsub <2 x float> %.sroa.0160.0.copyload, %.sroa.0158.0.copyload
  %i.e = extractelement <2 x float> %foldExtExtBinop324, i64 1 ; 3 uses
  %i.f = fmul float %i.e, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f)
  %i.h = tail call float @llvm.fmuladd.f32(float %i.d, float %i.d, float %i.g) ; 2 uses
  %sqrt86.i = tail call float @llvm.sqrt.f32(float %i.h)
  %i.i = fcmp oeq float %i.h, 0.000000e+00
  %i.j = fdiv float 1.000000e+00, %sqrt86.i
  %i.k = select i1 %i.i, float 1.000000e+00, float %i.j ; 3 uses
  %i.l = fmul float %i.c, %i.k                    ; 2 uses
  %i.m = fmul float %i.d, %i.k                    ; 2 uses
  %i.n = fmul float %i.e, %i.k                    ; 2 uses
  %i.o = fneg float %i.m
  %i.p = fneg float %i.n
  %i.q = fmul float %.sroa.058.0.vec.extract.i, %i.o
end_hunk_0
