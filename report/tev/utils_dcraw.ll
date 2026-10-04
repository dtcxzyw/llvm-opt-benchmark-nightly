Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/utils_dcraw?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN6LibRaw8initdataEv:.preheader.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i8 0, ptr %i.k, align 4, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192688
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 193404
  store i8 0, ptr %i.m, align 4, !tbaa !73
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192892
  store i8 0, ptr %i.n, align 4, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 620
  store i8 0, ptr %i.o, align 4, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 381696
  store i64 0, ptr %i.p, align 8, !tbaa !92
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 381712
  store i32 0, ptr %i.q, align 8, !tbaa !93
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 433512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(334720) %i.r, i8 0, i64 334720, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 433832
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i16 -1, ptr %i.s, align 8, !tbaa !95
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 433664
  store i16 -1, ptr %i.t, align 8, !tbaa !95
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 466888
  store <4 x float> splat (float 1.000000e+00), ptr %i.u, align 8, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 467304
  store i16 -1, ptr %i.v, align 8, !tbaa !95
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 467136
  store i16 -1, ptr %i.w, align 8, !tbaa !95
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 500360
  store <4 x float> splat (float 1.000000e+00), ptr %i.x, align 8, !tbaa !76
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 500776
  store i16 -1, ptr %i.y, align 8, !tbaa !95
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 500608
  store i16 -1, ptr %i.z, align 8, !tbaa !95
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 533832
  store <4 x float> splat (float 1.000000e+00), ptr %i.aa, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 534248
  store i16 -1, ptr %i.ab, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 534080
  store i16 -1, ptr %i.ac, align 8, !tbaa !95
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 567304
  store <4 x float> splat (float 1.000000e+00), ptr %i.ad, align 8, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 567720
  store i16 -1, ptr %i.ae, align 8, !tbaa !95
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 567552
  store i16 -1, ptr %i.af, align 8, !tbaa !95
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 600776
  store <4 x float> splat (float 1.000000e+00), ptr %i.ag, align 8, !tbaa !76
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 601192
  store i16 -1, ptr %i.ah, align 8, !tbaa !95
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 601024
  store i16 -1, ptr %i.ai, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 634248
  store <4 x float> splat (float 1.000000e+00), ptr %i.aj, align 8, !tbaa !76
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 634664
  store i16 -1, ptr %i.ak, align 8, !tbaa !95
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 634496
  store i16 -1, ptr %i.al, align 8, !tbaa !95
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 667720
  store <4 x float> splat (float 1.000000e+00), ptr %i.am, align 8, !tbaa !76
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 668136
  store i16 -1, ptr %i.an, align 8, !tbaa !95
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 667968
  store i16 -1, ptr %i.ao, align 8, !tbaa !95
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 701192
  store <4 x float> splat (float 1.000000e+00), ptr %i.ap, align 8, !tbaa !76
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 701608
  store i16 -1, ptr %i.aq, align 8, !tbaa !95
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 701440
  store i16 -1, ptr %i.ar, align 8, !tbaa !95
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 734664
  store <4 x float> splat (float 1.000000e+00), ptr %i.as, align 8, !tbaa !76
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 735080
  store i16 -1, ptr %i.at, align 8, !tbaa !95
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 734912
  store i16 -1, ptr %i.au, align 8, !tbaa !95
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 768136
  store <4 x float> splat (float 1.000000e+00), ptr %i.av, align 8, !tbaa !76
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.preheader
  %index = phi i64 [ 0, %.preheader.preheader ], [ %index.next.3, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %.preheader.preheader ], [ %vec.ind.next.3, %vector.body ] ; 9 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <8 x i16> %vec.ind, ptr %i.ax, align 8, !tbaa !75
  store <8 x i16> %step.add, ptr %i.ay, align 8, !tbaa !75
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %step.add.1 = add <8 x i16> %vec.ind, splat (i16 24)
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store <8 x i16> %vec.ind.next, ptr %i.ba, align 8, !tbaa !75
  store <8 x i16> %step.add.1, ptr %i.bb, align 8, !tbaa !75
  %vec.ind.next.1 = add <8 x i16> %vec.ind, splat (i16 32)
  %step.add.2 = add <8 x i16> %vec.ind, splat (i16 40)
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  store <8 x i16> %vec.ind.next.1, ptr %i.bd, align 8, !tbaa !75
  store <8 x i16> %step.add.2, ptr %i.be, align 8, !tbaa !75
  %vec.ind.next.2 = add <8 x i16> %vec.ind, splat (i16 48)
  %step.add.3 = add <8 x i16> %vec.ind, splat (i16 56)
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  store <8 x i16> %vec.ind.next.2, ptr %i.bg, align 8, !tbaa !75
  store <8 x i16> %step.add.3, ptr %i.bh, align 8, !tbaa !75
  %index.next.3 = add nuw nsw i64 %index, 64      ; 2 uses
  %vec.ind.next.3 = add <8 x i16> %vec.ind, splat (i16 64)
  %i.bi = icmp eq i64 %index.next.3, 65536
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 381656
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 192716
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.bk, i8 0, i64 128, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 136672
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %i.bl, i8 0, i64 16416, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 153124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.bm, i8 0, i64 128, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.bn, i8 0, i64 128, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 193492
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 381632
  store i64 0, ptr %i.bp, align 8, !tbaa !98
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 768416
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 381824
  store i64 0, ptr %i.bo, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  store i32 4, ptr %i.br, align 8, !tbaa !99
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 381840
  store i32 0, ptr %i.bs, align 8, !tbaa !100
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 381836
  store i32 0, ptr %i.bt, align 4, !tbaa !101
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 381808
  store i32 0, ptr %i.bu, align 8, !tbaa !102
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 381848
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 381744
  store i32 0, ptr %i.bx, align 8, !tbaa !103
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 153088
  store i32 0, ptr %i.by, align 8, !tbaa !77
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 381832
  store i32 0, ptr %i.bz, align 8, !tbaa !104
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 192712
  store i32 0, ptr %i.ca, align 8, !tbaa !105
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 192704
  store i64 0, ptr %i.cb, align 8, !tbaa !106
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 381664
  store i32 0, ptr %i.cc, align 8, !tbaa !107
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 381864
  store i32 0, ptr %i.cd, align 8, !tbaa !108
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 153872
  store i32 0, ptr %i.ce, align 8, !tbaa !109
  store i32 0, ptr %i.bj, align 8, !tbaa !110
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 381660
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.cf, align 4, !tbaa !111
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double 1.000000e+00, ptr %i.cg, align 8, !tbaa !112
  store <4 x i32> zeroinitializer, ptr %i.bw, align 8, !tbaa !78
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 381720
  store i32 0, ptr %i.ch, align 8, !tbaa !113
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 524
  store <4 x i32> <i32 0, i32 1, i32 0, i32 0>, ptr %i.ci, align 4, !tbaa !78
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 2920
  store i16 0, ptr %i.cj, align 8, !tbaa !114
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 460
  store i8 0, ptr %i.ck, align 4, !tbaa !73
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 396
  store i8 0, ptr %i.cl, align 4, !tbaa !73
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 384228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.cm, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6LibRaw10aRGB_coeffEPA3_d(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(768512) initializes((153284, 153296), (153300, 153312), (153316, 153328)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 align 2 {
.preheader19:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 153284
  %gep.1 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %gep.2 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load <2 x double>, ptr %1, align 8, !tbaa !79 ; 3 uses
  %i.c = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.b, <2 x double> splat (double f0x3FF65F5E23AF8428), <2 x double> zeroinitializer)
  %i.d = load <2 x double>, ptr %gep.1, align 8, !tbaa !79 ; 3 uses
  %i.e = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.d, <2 x double> splat (double f0xBFD97D77FFEF4DA6), <2 x double> %i.c)
  %i.f = load <2 x double>, ptr %gep.2, align 8, !tbaa !79 ; 3 uses
  %i.g = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> splat (double f0x3E79E74C5A800003), <2 x double> %i.e)
  %i.h = fptrunc <2 x double> %i.g to <2 x float>
  store <2 x float> %i.h, ptr %i.a, align 4, !tbaa !76
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load double, ptr %invariant.gep.2, align 8, !tbaa !79 ; 3 uses
  %gep.1.2 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load double, ptr %gep.1.2, align 8, !tbaa !79 ; 3 uses
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load double, ptr %gep.2.2, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 153292
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 153300
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.b, <2 x double> splat (double f0x3E705A85C0780001), <2 x double> zeroinitializer)
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.d, <2 x double> splat (double f0x3FEFFFFFF5BEEA7E), <2 x double> %i.n)
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> splat (double f0x3E4C9C70D0BFFFF8), <2 x double> %i.o)
  %i.q = fptrunc <2 x double> %i.p to <2 x float>
  store <2 x float> %i.q, ptr %i.m, align 4, !tbaa !76
  %i.r = tail call double @llvm.fmuladd.f64(double %i.i, double f0x3FF65F5E23AF8428, double 0.000000e+00)
  %i.s = tail call double @llvm.fmuladd.f64(double %i.j, double f0xBFD97D77FFEF4DA6, double %i.r)
  %i.t = insertelement <2 x double> poison, double %i.k, i64 0 ; 2 uses
  %i.u = insertelement <2 x double> %i.t, double %i.i, i64 1
  %i.v = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.s, i64 0
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> <double f0x3E79E74C5A800003, double f0x3E705A85C0780001>, <2 x double> %i.v) ; 2 uses
  %i.x = extractelement <2 x double> %i.w, i64 0
  %i.y = fptrunc double %i.x to float
  store float %i.y, ptr %i.l, align 4, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 153308
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 153316
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.b, <2 x double> splat (double f0x3E57535E3100000D), <2 x double> zeroinitializer)
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.d, <2 x double> splat (double f0xBFA5FC02F1263C63), <2 x double> %i.ab)
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> splat (double f0x3FF0AFE00CE7E752), <2 x double> %i.ac)
  %i.ae = fptrunc <2 x double> %i.ad to <2 x float>
  store <2 x float> %i.ae, ptr %i.aa, align 4, !tbaa !76
  %i.af = insertelement <2 x double> poison, double %i.j, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.i, i64 1
  %i.ah = shufflevector <2 x double> %i.w, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> <double f0x3FEFFFFFF5BEEA7E, double f0x3E57535E3100000D>, <2 x double> %i.ah) ; 2 uses
  %2 = extractelement <2 x double> %i.ai, i64 1
  %3 = tail call double @llvm.fmuladd.f64(double %i.j, double f0xBFA5FC02F1263C63, double %2)
  %4 = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %5 = insertelement <2 x double> %i.ai, double %3, i64 1
  %6 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> <double f0x3E4C9C70D0BFFFF8, double f0x3FF0AFE00CE7E752>, <2 x double> %5)
  %7 = fptrunc <2 x double> %6 to <2 x float>     ; 2 uses
  %8 = extractelement <2 x float> %7, i64 0
  store float %8, ptr %i.z, align 4, !tbaa !76
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 153324
  %9 = extractelement <2 x float> %7, i64 1
  store float %9, ptr %i.aj, align 4, !tbaa !76
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6LibRaw10romm_coeffEPA3_f(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(768512) initializes((153284, 153296), (153300, 153312), (153316, 153328)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 153284 ; 4 uses
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !76
  %i.b = load float, ptr %1, align 4, !tbaa !76
  %i.c = tail call float @llvm.fmuladd.f32(float %i.b, float f0x40023038, float 0.000000e+00) ; 2 uses
  store float %i.c, ptr %i.a, align 4, !tbaa !76
  %gep.1 = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.d = load float, ptr %gep.1, align 4, !tbaa !76
  %i.e = tail call float @llvm.fmuladd.f32(float %i.d, float -7.274200e-01, float %i.c) ; 2 uses
  store float %i.e, ptr %i.a, align 4, !tbaa !76
  %gep.2 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load float, ptr %gep.2, align 4, !tbaa !76
  %i.g = tail call float @llvm.fmuladd.f32(float %i.f, float -3.067660e-01, float %i.e)
  store float %i.g, ptr %i.a, align 4, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 153288 ; 4 uses
  store float 0.000000e+00, ptr %i.h, align 8, !tbaa !76
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.i = load float, ptr %invariant.gep.1, align 4, !tbaa !76
  %i.j = tail call float @llvm.fmuladd.f32(float %i.i, float f0x40023038, float 0.000000e+00) ; 2 uses
  store float %i.j, ptr %i.h, align 8, !tbaa !76
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.k = load float, ptr %gep.1.1, align 4, !tbaa !76
  %i.l = tail call float @llvm.fmuladd.f32(float %i.k, float -7.274200e-01, float %i.j) ; 2 uses
  store float %i.l, ptr %i.h, align 8, !tbaa !76
  %gep.2.1 = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.m = load float, ptr %gep.2.1, align 4, !tbaa !76
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float -3.067660e-01, float %i.l)
  store float %i.n, ptr %i.h, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 153292 ; 4 uses
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !76
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.p = load float, ptr %invariant.gep.2, align 4, !tbaa !76
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float f0x40023038, float 0.000000e+00) ; 2 uses
  store float %i.q, ptr %i.o, align 4, !tbaa !76
  %gep.1.2 = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.r = load float, ptr %gep.1.2, align 4, !tbaa !76
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float -7.274200e-01, float %i.q) ; 2 uses
  store float %i.s, ptr %i.o, align 4, !tbaa !76
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.t = load float, ptr %gep.2.2, align 4, !tbaa !76
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float -3.067660e-01, float %i.s)
  store float %i.u, ptr %i.o, align 4, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 153300 ; 4 uses
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !76
  %i.w = load float, ptr %1, align 4, !tbaa !76
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float -2.288110e-01, float 0.000000e+00) ; 2 uses
  store float %i.x, ptr %i.v, align 4, !tbaa !76
  %i.y = load float, ptr %gep.1, align 4, !tbaa !76
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float f0x3F9DA94C, float %i.x) ; 2 uses
  store float %i.z, ptr %i.v, align 4, !tbaa !76
  %i.aa = load float, ptr %gep.2, align 4, !tbaa !76
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.aa, float -2.922000e-03, float %i.z)
  store float %i.ab, ptr %i.v, align 4, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 153304 ; 4 uses
  store float 0.000000e+00, ptr %i.ac, align 8, !tbaa !76
  %i.ad = load float, ptr %invariant.gep.1, align 4, !tbaa !76
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float -2.288110e-01, float 0.000000e+00) ; 2 uses
  store float %i.ae, ptr %i.ac, align 8, !tbaa !76
  %i.af = load float, ptr %gep.1.1, align 4, !tbaa !76
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float f0x3F9DA94C, float %i.ae) ; 2 uses
  store float %i.ag, ptr %i.ac, align 8, !tbaa !76
  %i.ah = load float, ptr %gep.2.1, align 4, !tbaa !76
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float -2.922000e-03, float %i.ag)
  store float %i.ai, ptr %i.ac, align 8, !tbaa !76
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 153308 ; 4 uses
  store float 0.000000e+00, ptr %i.aj, align 4, !tbaa !76
  %i.ak = load float, ptr %invariant.gep.2, align 4, !tbaa !76
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float -2.288110e-01, float 0.000000e+00) ; 2 uses
  store float %i.al, ptr %i.aj, align 4, !tbaa !76
  %i.am = load float, ptr %gep.1.2, align 4, !tbaa !76
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float f0x3F9DA94C, float %i.al) ; 2 uses
  store float %i.an, ptr %i.aj, align 4, !tbaa !76
  %i.ao = load float, ptr %gep.2.2, align 4, !tbaa !76
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float -2.922000e-03, float %i.an)
  store float %i.ap, ptr %i.aj, align 4, !tbaa !76
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 153316 ; 4 uses
  store float 0.000000e+00, ptr %i.aq, align 4, !tbaa !76
  %i.ar = load float, ptr %1, align 4, !tbaa !76
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float -8.565000e-03, float 0.000000e+00) ; 2 uses
  store float %i.as, ptr %i.aq, align 4, !tbaa !76
  %i.at = load float, ptr %gep.1, align 4, !tbaa !76
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float -1.532730e-01, float %i.as) ; 2 uses
  store float %i.au, ptr %i.aq, align 4, !tbaa !76
  %i.av = load float, ptr %gep.2, align 4, !tbaa !76
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float f0x3F94B724, float %i.au)
  store float %i.aw, ptr %i.aq, align 4, !tbaa !76
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 153320 ; 4 uses
  store float 0.000000e+00, ptr %i.ax, align 8, !tbaa !76
  %i.ay = load float, ptr %invariant.gep.1, align 4, !tbaa !76
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float -8.565000e-03, float 0.000000e+00) ; 2 uses
  store float %i.az, ptr %i.ax, align 8, !tbaa !76
  %i.ba = load float, ptr %gep.1.1, align 4, !tbaa !76
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float -1.532730e-01, float %i.az) ; 2 uses
  store float %i.bb, ptr %i.ax, align 8, !tbaa !76
  %i.bc = load float, ptr %gep.2.1, align 4, !tbaa !76
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float f0x3F94B724, float %i.bb)
  store float %i.bd, ptr %i.ax, align 8, !tbaa !76
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 153324 ; 4 uses
  store float 0.000000e+00, ptr %i.be, align 4, !tbaa !76
  %i.bf = load float, ptr %invariant.gep.2, align 4, !tbaa !76
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float -8.565000e-03, float 0.000000e+00) ; 2 uses
  store float %i.bg, ptr %i.be, align 4, !tbaa !76
  %i.bh = load float, ptr %gep.1.2, align 4, !tbaa !76
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float -1.532730e-01, float %i.bg) ; 2 uses
  store float %i.bi, ptr %i.be, align 4, !tbaa !76
  %i.bj = load float, ptr %gep.2.2, align 4, !tbaa !76
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float f0x3F94B724, float %i.bi)
  store float %i.bk, ptr %i.be, align 4, !tbaa !76
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw13remove_zeroesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768264 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119
  %i.e = tail call noundef i32 %i.b(ptr noundef %i.d, i32 noundef 32, i32 noundef 0, i32 noundef 2)
  %.not53 = icmp eq i32 %i.e, 0
  br i1 %.not53, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 4) #18 ; 2 uses
  store i32 6, ptr %i.f, align 16, !tbaa !81
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #19
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !82   ; 2 uses
  %.not75 = icmp eq i16 %i.i, 0
  br i1 %.not75, label %._crit_edge74, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 381668
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.pre = load i16, ptr %i.j, align 2, !tbaa !83  ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.n = phi i16 [ %i.i, %.preheader.lr.ph ], [ %i.ea, %._crit_edge ]
  %i.o = phi i16 [ %.pre, %.preheader.lr.ph ], [ %i.eb, %._crit_edge ] ; 2 uses
  %i.p = phi i16 [ %.pre, %.preheader.lr.ph ], [ %i.ec, %._crit_edge ] ; 2 uses
  %indvars.iv79 = phi i32 [ 3, %.preheader.lr.ph ], [ %indvars.iv.next80, %._crit_edge ] ; 2 uses
  %.05073 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ed, %._crit_edge ] ; 4 uses
  %.not76 = icmp eq i16 %i.p, 0
  br i1 %.not76, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.q = zext i16 %i.p to i32
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !120  ; 6 uses
  %i.s = load i32, ptr %i.m, align 8, !tbaa !70   ; 6 uses
  %i.t = shl nuw nsw i32 %.05073, 1
  %i.u = and i32 %i.t, 14
  %i.v = add nsw i32 %.05073, -2
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.y
  %i.w = phi i16 [ %i.o, %.lr.ph ], [ %i.dw, %bb.y ] ; 2 uses
  %i.x = phi i32 [ %i.q, %.lr.ph ], [ %i.dy, %bb.y ] ; 5 uses
  %.04972 = phi i32 [ 0, %.lr.ph ], [ %i.dx, %bb.y ] ; 10 uses
  %i.y = load i16, ptr %i.k, align 4, !tbaa !121
  %i.z = zext i16 %i.y to i32                     ; 7 uses
  %i.aa = lshr i32 %.05073, %i.z
  %i.ab = load i16, ptr %i.l, align 2, !tbaa !122
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = mul nuw i32 %i.aa, %i.ac
  %i.ae = lshr i32 %.04972, %i.z                  ; 2 uses
  %i.af = add nuw i32 %i.ad, %i.ae
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ag
  %i.ai = and i32 %.04972, 1                      ; 2 uses
  %i.aj = or disjoint i32 %i.ai, %i.u
  %i.ak = shl nuw nsw i32 %i.aj, 1
  %i.al = lshr i32 %i.s, %i.ak
  %i.am = and i32 %i.al, 3                        ; 6 uses
  %i.an = zext nneg i32 %i.am to i64              ; 6 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.an ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !75
  %i.aq = icmp eq i16 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %bb.y
end_hunk_0
