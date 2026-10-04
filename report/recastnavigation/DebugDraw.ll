Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DebugDraw?download=true
inline.NumInlined: 45
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Z20duAppendCylinderWireP11duDebugDrawffffffj:bb.a
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
  %i.e = insertelement <2 x float> poison, float %5, i64 0
  %i.f = insertelement <2 x float> %i.e, float %6, i64 1
  %i.g = insertelement <2 x float> poison, float %2, i64 0
  %i.h = insertelement <2 x float> %i.g, float %3, i64 1 ; 3 uses
  %i.i = fsub <2 x float> %i.f, %i.h              ; 10 uses
  %i.j = extractelement <2 x float> %i.i, i64 1   ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = shufflevector <2 x float> %i.i, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.o = insertelement <4 x float> poison, float %3, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.q = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> <float 5.000000e-02, float 1.625000e-01, float 2.750000e-01, float 3.875000e-01>, <4 x float> %i.p) ; 4 uses
  %i.r = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> <float 5.000000e-01, float 6.125000e-01, float f0x3F399999, float f0x3F566666>, <4 x float> %i.p) ; 4 uses
  %i.s = insertelement <2 x float> poison, float %1, i64 0 ; 4 uses
  %i.t = extractelement <4 x float> %i.q, i64 0   ; 2 uses
  %i.u = extractelement <4 x float> %i.q, i64 1   ; 2 uses
  %i.v = extractelement <4 x float> %i.q, i64 2   ; 2 uses
  %i.w = extractelement <2 x float> %i.i, i64 0   ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.i, %i.i
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.y = insertelement <2 x float> %i.i, float %4, i64 1
  %i.z = insertelement <2 x float> <float 0.000000e+00, float poison>, float %1, i64 1 ; 2 uses
  %i.aa = fsub <2 x float> %i.y, %i.z             ; 4 uses
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ac = extractelement <2 x float> %i.aa, i64 1 ; 4 uses
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.x)
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.ad)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ae)
  %i.af = fmul float %7, %sqrt                    ; 7 uses
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.w, float 5.000000e-02, float %2)
  %i.ah = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.af, i64 1 ; 4 uses
  %i.aj = insertelement <2 x float> %i.s, float %i.ag, i64 1
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> <float 5.000000e-02, float f0x3E428F5F>, <2 x float> %i.aj) ; 3 uses
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ac, float 1.625000e-01, float %1) ; 2 uses
  %i.am = insertelement <2 x float> %i.z, float %2, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> <float 1.625000e-01, float 2.750000e-01, float 2.750000e-01, float 3.875000e-01>, <4 x float> %i.an) ; 4 uses
  %11 = extractelement <4 x float> %i.ao, i64 0
  %12 = tail call float @llvm.fmuladd.f32(float %i.af, float 5.443750e-01, float %11) ; 2 uses
  %i.ap = extractelement <2 x float> %i.ak, i64 0
  %i.aq = extractelement <2 x float> %i.ak, i64 1
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ap, float noundef %i.aq, float noundef %i.t, i32 noundef %10) #12, !call_target !51
  %i.ar = load ptr, ptr %0, align 8, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.al, float noundef %12, float noundef %i.u, i32 noundef %10) #12, !call_target !51
  %13 = load ptr, ptr %0, align 8, !tbaa !17
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.al, float noundef %12, float noundef %i.u, i32 noundef %10) #12, !call_target !51
  %16 = load ptr, ptr %0, align 8, !tbaa !17
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %18 = load ptr, ptr %17, align 8
  %19 = extractelement <4 x float> %i.ao, i64 1   ; 2 uses
  %20 = extractelement <4 x float> %i.q, i64 3    ; 2 uses
  %21 = extractelement <4 x float> %i.ao, i64 3   ; 2 uses
  %22 = shufflevector <2 x float> %i.i, <2 x float> %i.aa, <4 x i32> <i32 poison, i32 0, i32 3, i32 0>
  %23 = insertelement <4 x float> poison, float %i.af, i64 0
  %24 = insertelement <4 x float> %22, float %i.af, i64 0
  %25 = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %26 = insertelement <4 x float> %25, float %2, i64 1
  %27 = insertelement <4 x float> %26, float %1, i64 2
  %28 = shufflevector <4 x float> %27, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %29 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %24, <4 x float> <float 7.975000e-01, float 3.875000e-01, float 5.000000e-01, float 5.000000e-01>, <4 x float> %28) ; 4 uses
  %30 = extractelement <4 x float> %29, i64 0     ; 2 uses
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %19, float noundef %30, float noundef %i.v, i32 noundef %10) #12, !call_target !51
  %i.au = extractelement <4 x float> %29, i64 1
  %31 = tail call float @llvm.fmuladd.f32(float %i.af, float f0x3F730A3D, float %i.au) ; 2 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %19, float noundef %30, float noundef %i.v, i32 noundef %10) #12, !call_target !51
  %i.ay = load ptr, ptr %0, align 8, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %21, float noundef %31, float noundef %20, i32 noundef %10) #12, !call_target !51
  %i.bb = extractelement <4 x float> %29, i64 3
  %32 = fadd float %i.af, %i.bb                   ; 2 uses
  %33 = load ptr, ptr %0, align 8, !tbaa !17
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 48
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %21, float noundef %31, float noundef %20, i32 noundef %10) #12, !call_target !51
  %36 = load ptr, ptr %0, align 8, !tbaa !17
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 48
  %38 = load ptr, ptr %37, align 8
  %39 = extractelement <4 x float> %i.r, i64 0    ; 2 uses
  %i.bc = extractelement <4 x float> %29, i64 2   ; 2 uses
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bc, float noundef %32, float noundef %39, i32 noundef %10) #12, !call_target !51
  %i.bd = load ptr, ptr %0, align 8, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bc, float noundef %32, float noundef %39, i32 noundef %10) #12, !call_target !51
  %i.bg = load ptr, ptr %0, align 8, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8
  %40 = extractelement <4 x float> %i.r, i64 1    ; 2 uses
  %41 = shufflevector <2 x float> %i.aa, <2 x float> %i.i, <4 x i32> <i32 1, i32 2, i32 1, i32 2> ; 2 uses
  %42 = insertelement <4 x float> poison, float %1, i64 0
  %43 = insertelement <4 x float> %42, float %2, i64 1
  %44 = shufflevector <4 x float> %43, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %45 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %41, <4 x float> <float 6.125000e-01, float 6.125000e-01, float f0x3F399999, float f0x3F399999>, <4 x float> %44) ; 3 uses
  %i.bj = extractelement <4 x float> %45, i64 0   ; 2 uses
  %i.bk = extractelement <4 x float> %i.r, i64 2  ; 2 uses
  %i.bl = extractelement <4 x float> %45, i64 2   ; 2 uses
  %46 = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %47 = shufflevector <4 x float> %46, <4 x float> %41, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %48 = shufflevector <4 x float> %45, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.bm = insertelement <4 x float> %48, float %1, i64 2
  %i.bn = insertelement <4 x float> %i.bm, float %2, i64 3
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %47, <4 x float> <float f0x3F730A3D, float f0x3F4C28F7, float f0x3F566666, float f0x3F566666>, <4 x float> %i.bn) ; 4 uses
  %i.bp = extractelement <4 x float> %i.bo, i64 0 ; 2 uses
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bj, float noundef %i.bp, float noundef %40, i32 noundef %10) #12, !call_target !51
  %i.bq = load ptr, ptr %0, align 8, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bj, float noundef %i.bp, float noundef %40, i32 noundef %10) #12, !call_target !51
  %i.bt = load ptr, ptr %0, align 8, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = extractelement <4 x float> %i.bo, i64 1 ; 2 uses
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bl, float noundef %i.bw, float noundef %i.bk, i32 noundef %10) #12, !call_target !51
  %i.bx = extractelement <4 x float> %i.bo, i64 3
  %i.by = tail call float @llvm.fmuladd.f32(float %i.af, float f0x3F0B5C2A, float %i.bx) ; 2 uses
  %i.bz = load ptr, ptr %0, align 8, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bl, float noundef %i.bw, float noundef %i.bk, i32 noundef %10) #12, !call_target !51
  %i.cc = load ptr, ptr %0, align 8, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8
  %49 = extractelement <4 x float> %i.r, i64 3    ; 2 uses
  %50 = extractelement <4 x float> %i.bo, i64 2   ; 2 uses
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %50, float noundef %i.by, float noundef %49, i32 noundef %10) #12, !call_target !51
  %51 = tail call float @llvm.fmuladd.f32(float %i.w, float f0x3F733333, float %2)
  %i.cf = insertelement <2 x float> %i.s, float %51, i64 1
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> <float f0x3F733333, float f0x3E428F5F>, <2 x float> %i.cf) ; 3 uses
  %52 = tail call float @llvm.fmuladd.f32(float %i.j, float f0x3F733333, float %3) ; 2 uses
  %i.ch = load ptr, ptr %0, align 8, !tbaa !17
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %50, float noundef %i.by, float noundef %49, i32 noundef %10) #12, !call_target !51
  %i.ck = load ptr, ptr %0, align 8, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = extractelement <2 x float> %i.cg, i64 0
  %i.co = extractelement <2 x float> %i.cg, i64 1
  tail call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.cn, float noundef %i.co, float noundef %52, i32 noundef %10) #12, !call_target !51
  %i.cp = fcmp ogt float %8, 1.000000e-03
  br i1 %i.cp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store <2 x float> %i.ak, ptr %i.a, align 8, !tbaa !14
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.t, ptr %i.cq, align 8, !tbaa !14
  %i.cr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> splat (float 1.000000e-01), <2 x float> %i.h) ; 2 uses
  %i.cs = shufflevector <2 x float> %i.s, <2 x float> %i.cr, <2 x i32> <i32 0, i32 2>
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> <float 1.000000e-01, float f0x3EB851EB>, <2 x float> %i.cs)
  store <2 x float> %i.ct, ptr %i.b, align 8, !tbaa !14
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cv = extractelement <2 x float> %i.cr, i64 1
  store float %i.cv, ptr %i.cu, align 8, !tbaa !14
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
  store <2 x float> %i.cg, ptr %i.c, align 8, !tbaa !14
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %52, ptr %i.cx, align 8, !tbaa !14
  %i.cy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> splat (float f0x3F666666), <2 x float> %i.h) ; 2 uses
  %i.cz = shufflevector <2 x float> %i.s, <2 x float> %i.cy, <2 x i32> <i32 0, i32 2>
  %i.da = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> <float f0x3F666666, float f0x3EB851EE>, <2 x float> %i.cz)
  store <2 x float> %i.da, ptr %i.d, align 8, !tbaa !14
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dc = extractelement <2 x float> %i.cy, i64 1
  store float %i.dc, ptr %i.db, align 8, !tbaa !14
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
end_hunk_0
