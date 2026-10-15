Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DebugDraw?download=true
inline.NumInlined: 45
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Z20duAppendCylinderWireP11duDebugDrawffffffj:bb.a
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.h, float %i.d)
  %i.bp = load ptr, ptr %0, align 8, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bm, float noundef %5, float noundef %i.bo, i32 noundef %7) #12, !call_target !51
  %i.bs = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE3dir, i64 64), align 16, !tbaa !14
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.f, float %i.b)
  %i.bu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE3dir, i64 68), align 4, !tbaa !14
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.h, float %i.d)
  %i.bw = load ptr, ptr %0, align 8, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bt, float noundef %2, float noundef %i.bv, i32 noundef %7) #12, !call_target !51
  %i.bz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE3dir, i64 64), align 16, !tbaa !14
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.f, float %i.b)
  %i.cb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE3dir, i64 68), align 4, !tbaa !14
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.h, float %i.d)
  %i.cd = load ptr, ptr %0, align 8, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ca, float noundef %5, float noundef %i.cc, i32 noundef %7) #12, !call_target !51
  %i.cg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE3dir, i64 96), align 16, !tbaa !14
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.f, float %i.b)
  %i.ci = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE3dir, i64 100), align 4, !tbaa !14
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.h, float %i.d)
  %i.ck = load ptr, ptr %0, align 8, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8
  tail call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ch, float noundef %2, float noundef %i.cj, i32 noundef %7) #12, !call_target !51
  %i.cn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE3dir, i64 96), align 16, !tbaa !14
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.f, float %i.b)
  %i.cp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20duAppendCylinderWireP11duDebugDrawffffffjE3dir, i64 100), align 4, !tbaa !14
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.h, float %i.d)
  %i.cr = load ptr, ptr %0, align 8, !tbaa !17
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.co, float noundef %5, float noundef %i.cq, i32 noundef %7) #12, !call_target !51
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z18duDebugDrawBoxWireP11duDebugDrawffffffjf(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, i32 noundef %7, float noundef %8) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef %8) #12, !call_target !23
  tail call void @_Z15duAppendBoxWireP11duDebugDrawffffffj(ptr noundef nonnull %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, i32 noundef %7)
  %i.d = load ptr, ptr %0, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0) #12, !call_target !58
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z15duAppendBoxWireP11duDebugDrawffffffj(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, i32 noundef %7) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %7) #12, !call_target !51
  %i.d = load ptr, ptr %0, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %4, float noundef %2, float noundef %3, i32 noundef %7) #12, !call_target !51
  %i.g = load ptr, ptr %0, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %4, float noundef %2, float noundef %3, i32 noundef %7) #12, !call_target !51
  %i.j = load ptr, ptr %0, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %4, float noundef %2, float noundef %6, i32 noundef %7) #12, !call_target !51
  %i.m = load ptr, ptr %0, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %4, float noundef %2, float noundef %6, i32 noundef %7) #12, !call_target !51
  %i.p = load ptr, ptr %0, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1, float noundef %2, float noundef %6, i32 noundef %7) #12, !call_target !51
  %i.s = load ptr, ptr %0, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1, float noundef %2, float noundef %6, i32 noundef %7) #12, !call_target !51
  %i.v = load ptr, ptr %0, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %7) #12, !call_target !51
  %i.y = load ptr, ptr %0, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1, float noundef %5, float noundef %3, i32 noundef %7) #12, !call_target !51
  %i.ab = load ptr, ptr %0, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %4, float noundef %5, float noundef %3, i32 noundef %7) #12, !call_target !51
  %i.ae = load ptr, ptr %0, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %4, float noundef %5, float noundef %3, i32 noundef %7) #12, !call_target !51
  %i.ah = load ptr, ptr %0, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %4, float noundef %5, float noundef %6, i32 noundef %7) #12, !call_target !51
  %i.ak = load ptr, ptr %0, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %4, float noundef %5, float noundef %6, i32 noundef %7) #12, !call_target !51
  %i.an = load ptr, ptr %0, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1, float noundef %5, float noundef %6, i32 noundef %7) #12, !call_target !51
  %i.aq = load ptr, ptr %0, align 8, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1, float noundef %5, float noundef %6, i32 noundef %7) #12, !call_target !51
  %i.at = load ptr, ptr %0, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1, float noundef %5, float noundef %3, i32 noundef %7) #12, !call_target !51
  %i.aw = load ptr, ptr %0, align 8, !tbaa !17
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %7) #12, !call_target !51
  %i.az = load ptr, ptr %0, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1, float noundef %5, float noundef %3, i32 noundef %7) #12, !call_target !51
  %i.bc = load ptr, ptr %0, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %4, float noundef %2, float noundef %3, i32 noundef %7) #12, !call_target !51
  %i.bf = load ptr, ptr %0, align 8, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %4, float noundef %5, float noundef %3, i32 noundef %7) #12, !call_target !51
  %i.bi = load ptr, ptr %0, align 8, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %4, float noundef %2, float noundef %6, i32 noundef %7) #12, !call_target !51
  %i.bl = load ptr, ptr %0, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %4, float noundef %5, float noundef %6, i32 noundef %7) #12, !call_target !51
  %i.bo = load ptr, ptr %0, align 8, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1, float noundef %2, float noundef %6, i32 noundef %7) #12, !call_target !51
  %i.br = load ptr, ptr %0, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1, float noundef %5, float noundef %6, i32 noundef %7) #12, !call_target !51
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z14duDebugDrawArcP11duDebugDrawfffffffffjf(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, i32 noundef %10, float noundef %11) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef %11) #12, !call_target !23
  tail call void @_Z11duAppendArcP11duDebugDrawfffffffffj(ptr noundef nonnull %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, i32 noundef %10)
  %i.d = load ptr, ptr %0, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0) #12, !call_target !58
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z11duAppendArcP11duDebugDrawfffffffffj(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, i32 noundef %10) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %i.b = alloca [3 x float], align 8              ; 5 uses
  %i.c = alloca [3 x float], align 8              ; 5 uses
  %i.d = alloca [3 x float], align 8              ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %11 = insertelement <2 x float> poison, float %5, i64 0
  %12 = insertelement <2 x float> %11, float %6, i64 1
  %13 = insertelement <2 x float> poison, float %2, i64 0
  %i.e = insertelement <2 x float> %13, float %3, i64 1 ; 3 uses
  %14 = fsub <2 x float> %12, %i.e                ; 12 uses
  %15 = extractelement <2 x float> %14, i64 1     ; 2 uses
  %16 = load ptr, ptr %0, align 8, !tbaa !17
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %18 = load ptr, ptr %17, align 8
  %19 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %20 = insertelement <4 x float> poison, float %3, i64 0
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %22 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %19, <4 x float> <float 5.000000e-02, float 1.625000e-01, float 2.750000e-01, float 3.875000e-01>, <4 x float> %21) ; 4 uses
  %23 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %19, <4 x float> <float 5.000000e-01, float 6.125000e-01, float f0x3F399999, float f0x3F566666>, <4 x float> %21) ; 4 uses
  %24 = insertelement <2 x float> poison, float %1, i64 0 ; 3 uses
  %25 = extractelement <4 x float> %22, i64 0     ; 2 uses
  %26 = extractelement <4 x float> %22, i64 1     ; 2 uses
  %27 = extractelement <4 x float> %22, i64 2     ; 2 uses
  %28 = extractelement <2 x float> %14, i64 0
  %foldExtExtBinop = fmul <2 x float> %14, %14
  %29 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %30 = insertelement <2 x float> %14, float %4, i64 1
  %31 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %1, i64 1 ; 2 uses
  %32 = fsub <2 x float> %30, %31                 ; 5 uses
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %34 = extractelement <2 x float> %32, i64 1     ; 4 uses
  %35 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %29)
  %i.f = tail call float @llvm.fmuladd.f32(float %15, float %15, float %35)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.f)
  %i.g = fmul float %7, %sqrt                     ; 7 uses
  %i.h = tail call float @llvm.fmuladd.f32(float %28, float 5.000000e-02, float %2)
  %36 = insertelement <2 x float> poison, float %34, i64 0
  %i.i = insertelement <2 x float> %36, float %i.g, i64 1 ; 4 uses
  %i.j = insertelement <2 x float> %24, float %i.h, i64 1
  %i.k = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> <float 5.000000e-02, float f0x3E428F5F>, <2 x float> %i.j) ; 3 uses
  %i.l = tail call float @llvm.fmuladd.f32(float %34, float 1.625000e-01, float %1) ; 2 uses
  %37 = insertelement <2 x float> %31, float %2, i64 0
  %38 = shufflevector <2 x float> %37, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %39 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %33, <4 x float> <float 1.625000e-01, float 2.750000e-01, float 2.750000e-01, float 3.875000e-01>, <4 x float> %38) ; 3 uses
  %i.m = extractelement <2 x float> %i.k, i64 0
  %i.n = extractelement <2 x float> %i.k, i64 1
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.m, float noundef %i.n, float noundef %25, i32 noundef %10) #12, !call_target !51
  %i.o = load ptr, ptr %0, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = extractelement <4 x float> %39, i64 1    ; 2 uses
  %i.s = extractelement <4 x float> %22, i64 3    ; 2 uses
  %i.t = extractelement <4 x float> %39, i64 3    ; 2 uses
  %40 = shufflevector <2 x float> %14, <2 x float> %32, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.u = insertelement <4 x float> poison, float %i.g, i64 0
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.w = shufflevector <4 x float> %i.v, <4 x float> %40, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.x = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.y = insertelement <4 x float> %i.x, float %2, i64 2
  %i.z = insertelement <4 x float> %i.y, float %1, i64 3
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> <float 5.443750e-01, float 7.975000e-01, float 3.875000e-01, float 5.000000e-01>, <4 x float> %i.z) ; 4 uses
  %i.ab = extractelement <4 x float> %i.aa, i64 0 ; 2 uses
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.l, float noundef %i.ab, float noundef %26, i32 noundef %10) #12, !call_target !51
  %i.ac = load ptr, ptr %0, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.l, float noundef %i.ab, float noundef %26, i32 noundef %10) #12, !call_target !51
  %i.af = load ptr, ptr %0, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = extractelement <4 x float> %i.aa, i64 1 ; 2 uses
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.r, float noundef %i.ai, float noundef %27, i32 noundef %10) #12, !call_target !51
  %i.aj = load ptr, ptr %0, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.r, float noundef %i.ai, float noundef %27, i32 noundef %10) #12, !call_target !51
  %i.am = load ptr, ptr %0, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = extractelement <4 x float> %23, i64 0   ; 2 uses
  %i.aq = extractelement <4 x float> %i.aa, i64 3 ; 2 uses
  %41 = shufflevector <2 x float> %14, <2 x float> %32, <4 x i32> <i32 poison, i32 0, i32 3, i32 0>
  %42 = insertelement <4 x float> %41, float %i.g, i64 0
  %i.ar = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.as = insertelement <4 x float> %i.ar, float %2, i64 1
  %i.at = insertelement <4 x float> %i.as, float %1, i64 2
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %42, <4 x float> <float f0x3F730A3D, float 5.000000e-01, float 6.125000e-01, float 6.125000e-01>, <4 x float> %i.au) ; 4 uses
  %i.aw = extractelement <4 x float> %i.av, i64 0 ; 2 uses
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.t, float noundef %i.aw, float noundef %i.s, i32 noundef %10) #12, !call_target !51
  %i.ax = extractelement <4 x float> %i.av, i64 1
  %i.ay = fadd float %i.g, %i.ax                  ; 2 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.t, float noundef %i.aw, float noundef %i.s, i32 noundef %10) #12, !call_target !51
  %i.bc = load ptr, ptr %0, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.aq, float noundef %i.ay, float noundef %i.ap, i32 noundef %10) #12, !call_target !51
  %i.bf = load ptr, ptr %0, align 8, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.aq, float noundef %i.ay, float noundef %i.ap, i32 noundef %10) #12, !call_target !51
  %i.bi = load ptr, ptr %0, align 8, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = extractelement <4 x float> %23, i64 1   ; 2 uses
  %i.bm = extractelement <4 x float> %i.av, i64 2 ; 2 uses
  %i.bn = extractelement <4 x float> %23, i64 2   ; 2 uses
  %43 = shufflevector <2 x float> %32, <2 x float> %14, <4 x i32> <i32 poison, i32 1, i32 2, i32 1>
  %i.bo = insertelement <4 x float> %43, float %i.g, i64 0
  %i.bp = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.bq = insertelement <4 x float> %i.bp, float %1, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %2, i64 2
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> <float f0x3F730A3D, float f0x3F399999, float f0x3F399999, float f0x3F566666>, <4 x float> %i.bs) ; 4 uses
  %i.bu = extractelement <4 x float> %i.bt, i64 0 ; 2 uses
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bm, float noundef %i.bu, float noundef %i.bl, i32 noundef %10) #12, !call_target !51
  %i.bv = load ptr, ptr %0, align 8, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bm, float noundef %i.bu, float noundef %i.bl, i32 noundef %10) #12, !call_target !51
  %i.by = load ptr, ptr %0, align 8, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8
  %44 = extractelement <4 x float> %i.bt, i64 1   ; 2 uses
  %45 = extractelement <4 x float> %23, i64 3     ; 2 uses
  %46 = extractelement <4 x float> %i.bt, i64 3   ; 2 uses
  %47 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %48 = insertelement <4 x float> %47, float %i.g, i64 0
  %49 = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %50 = insertelement <4 x float> %49, float %2, i64 1
  %51 = insertelement <4 x float> %50, float %3, i64 3
  %52 = shufflevector <4 x float> %51, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %53 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %48, <4 x float> <float f0x3F4C28F7, float f0x3F566666, float f0x3F733333, float f0x3F733333>, <4 x float> %52) ; 4 uses
  %i.cb = extractelement <4 x float> %53, i64 0   ; 2 uses
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %44, float noundef %i.cb, float noundef %i.bn, i32 noundef %10) #12, !call_target !51
  %54 = extractelement <4 x float> %53, i64 1
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.g, float f0x3F0B5C2A, float %54) ; 2 uses
  %i.cd = load ptr, ptr %0, align 8, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %44, float noundef %i.cb, float noundef %i.bn, i32 noundef %10) #12, !call_target !51
  %i.cg = load ptr, ptr %0, align 8, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %46, float noundef %i.cc, float noundef %45, i32 noundef %10) #12, !call_target !51
  %55 = shufflevector <4 x float> %53, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.cj = insertelement <2 x float> %55, float %1, i64 0
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> <float f0x3F733333, float f0x3E428F5F>, <2 x float> %i.cj) ; 3 uses
  %i.cl = load ptr, ptr %0, align 8, !tbaa !17
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %46, float noundef %i.cc, float noundef %45, i32 noundef %10) #12, !call_target !51
  %i.co = load ptr, ptr %0, align 8, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8
  %56 = extractelement <2 x float> %i.ck, i64 0
  %i.cr = extractelement <2 x float> %i.ck, i64 1
  %i.cs = extractelement <4 x float> %53, i64 3   ; 2 uses
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %56, float noundef %i.cr, float noundef %i.cs, i32 noundef %10) #12, !call_target !51
  %i.ct = fcmp ogt float %8, 1.000000e-03
  br i1 %i.ct, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store <2 x float> %i.k, ptr %i.a, align 8, !tbaa !14
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %25, ptr %i.cu, align 8, !tbaa !14
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> splat (float 1.000000e-01), <2 x float> %i.e) ; 2 uses
  %57 = shufflevector <2 x float> %24, <2 x float> %i.cv, <2 x i32> <i32 0, i32 2>
  %58 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> <float 1.000000e-01, float f0x3EB851EB>, <2 x float> %57)
  store <2 x float> %58, ptr %i.b, align 8, !tbaa !14
  %59 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %60 = extractelement <2 x float> %i.cv, i64 1
  store float %60, ptr %59, align 8, !tbaa !14
  call void @_Z15appendArrowHeadP11duDebugDrawPKfS2_fj(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, float noundef %8, i32 noundef %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cw = fcmp ogt float %9, 1.000000e-03
  br i1 %i.cw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store <2 x float> %i.ck, ptr %i.c, align 8, !tbaa !14
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.cs, ptr %i.cx, align 8, !tbaa !14
  %i.cy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> splat (float f0x3F666666), <2 x float> %i.e) ; 2 uses
  %61 = shufflevector <2 x float> %24, <2 x float> %i.cy, <2 x i32> <i32 0, i32 2>
  %62 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> <float f0x3F666666, float f0x3EB851EE>, <2 x float> %61)
  store <2 x float> %62, ptr %i.d, align 8, !tbaa !14
  %63 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %64 = extractelement <2 x float> %i.cy, i64 1
  store float %64, ptr %63, align 8, !tbaa !14
  call void @_Z15appendArrowHeadP11duDebugDrawPKfS2_fj(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, float noundef %9, i32 noundef %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z16duDebugDrawArrowP11duDebugDrawffffffffjf(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9, float noundef %10) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 7 uses
  %i.b = alloca [3 x float], align 4              ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef %10) #12, !call_target !23
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %9) #12, !call_target !51, !inline_history !77
  %i.i = load ptr, ptr %0, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %4, float noundef %5, float noundef %6, i32 noundef %9) #12, !call_target !51, !inline_history !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store float %1, ptr %i.a, align 4, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %2, ptr %i.l, align 4, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %3, ptr %i.m, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store float %4, ptr %i.b, align 4, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store float %5, ptr %i.n, align 4, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %6, ptr %i.o, align 4, !tbaa !14
  %i.p = fcmp ogt float %7, 1.000000e-03
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_Z15appendArrowHeadP11duDebugDrawPKfS2_fj(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, float noundef %7, i32 noundef %9)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = fcmp ogt float %8, 1.000000e-03
  br i1 %i.q, label %bb.e, label %_Z13duAppendArrowP11duDebugDrawffffffffj.exit

bb.e:                                             ; preds = %bb.d
  call void @_Z15appendArrowHeadP11duDebugDrawPKfS2_fj(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, float noundef %8, i32 noundef %9)
  br label %_Z13duAppendArrowP11duDebugDrawffffffffj.exit

_Z13duAppendArrowP11duDebugDrawffffffffj.exit:    ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.r = load ptr, ptr %0, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %0) #12, !call_target !58
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_Z13duAppendArrowP11duDebugDrawffffffffj.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z13duAppendArrowP11duDebugDrawffffffffj(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 7 uses
  %i.b = alloca [3 x float], align 4              ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %9) #12, !call_target !51
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %4, float noundef %5, float noundef %6, i32 noundef %9) #12, !call_target !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store float %1, ptr %i.a, align 4, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %2, ptr %i.i, align 4, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %3, ptr %i.j, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store float %4, ptr %i.b, align 4, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store float %5, ptr %i.k, align 4, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %6, ptr %i.l, align 4, !tbaa !14
  %i.m = fcmp ogt float %7, 1.000000e-03
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_Z15appendArrowHeadP11duDebugDrawPKfS2_fj(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, float noundef %7, i32 noundef %9)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = fcmp ogt float %8, 1.000000e-03
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_Z15appendArrowHeadP11duDebugDrawPKfS2_fj(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, float noundef %8, i32 noundef %9)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z17duDebugDrawCircleP11duDebugDrawffffjf(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5, float noundef %6) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef %6) #12, !call_target !23
  %.b.i = load i1, ptr @_ZZ14duAppendCircleP11duDebugDrawffffjE4init, align 1
  br i1 %.b.i, label %.loopexit30.i.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @_ZZ14duAppendCircleP11duDebugDrawffffjE4init, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.1, %bb.d ] ; 4 uses
  %i.d = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.e = uitofp nneg i32 %i.d to float
  %i.f = fdiv nnan float %i.e, 4.000000e+01
  %i.g = fmul nnan float %i.f, f0x40490FDB
  %i.h = fmul nnan float %i.g, 2.000000e+00       ; 2 uses
  %i.i = tail call float @cosf(float noundef %i.h) #12
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr @_ZZ14duAppendCircleP11duDebugDrawffffjE3dir, i64 %.idx.i ; 2 uses
  store float %i.i, ptr %i.j, align 16, !tbaa !14
  %i.k = tail call float @sinf(float noundef %i.h) #12
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store float %i.k, ptr %i.l, align 4, !tbaa !14
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.n = uitofp nneg i32 %i.m to float
  %i.o = fdiv nnan float %i.n, 4.000000e+01
  %i.p = fmul nnan float %i.o, f0x40490FDB
  %i.q = fmul nnan float %i.p, 2.000000e+00       ; 2 uses
  %i.r = tail call float @cosf(float noundef %i.q) #12
  %.idx.i.1 = shl nuw nsw i64 %indvars.iv.next.i, 3
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZ14duAppendCircleP11duDebugDrawffffjE3dir, i64 %.idx.i.1 ; 2 uses
  store float %i.r, ptr %i.s, align 8, !tbaa !14
  %i.t = tail call float @sinf(float noundef %i.q) #12
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store float %i.t, ptr %i.u, align 4, !tbaa !14
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 40
  br i1 %exitcond.not.i.1, label %.loopexit30.i.preheader, label %bb.d

.loopexit30.i.preheader:                          ; preds = %bb.d, %bb.b
  br label %.loopexit30.i

.loopexit30.i:                                    ; preds = %.loopexit30.i.preheader, %.loopexit30.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %.loopexit30.i ], [ 0, %.loopexit30.i.preheader ] ; 3 uses
  %.033.i = phi i64 [ %indvars.iv35.i, %.loopexit30.i ], [ 39, %.loopexit30.i.preheader ]
  %i.v = shl nuw i64 %.033.i, 1
  %i.w = and i64 %i.v, 4294967294
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZZ14duAppendCircleP11duDebugDrawffffjE3dir, i64 %i.w ; 2 uses
  %i.y = load float, ptr %i.x, align 8, !tbaa !14
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %4, float %1)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !14
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %4, float %3)
  %i.ad = load ptr, ptr %0, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.z, float noundef %2, float noundef %i.ac, i32 noundef %5) #12, !call_target !51, !inline_history !78
  %.idx39.i = shl nuw nsw i64 %indvars.iv35.i, 3
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZZ14duAppendCircleP11duDebugDrawffffjE3dir, i64 %.idx39.i ; 2 uses
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !14
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %4, float %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !14
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %4, float %3)
  %i.am = load ptr, ptr %0, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
end_hunk_0
