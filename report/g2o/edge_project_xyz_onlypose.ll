inline.NumInlined: 1899
inline.NumDeleted: 1157
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN3g2o25EdgeSE3ProjectXYZOnlyPose14linearizeOplusEv:bb.a
  %i.ai = fneg double %.sroa.027.0.vec.extract.i.i.i.i
  %i.aj = fmul double %i.g, %i.ai
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.r, double %.sroa.027.8.vec.extract.i.i.i.i, double %i.aj)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.ae, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.ah, i64 1
  %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.al = load <2 x double>, ptr %i.e, align 16, !tbaa !43, !noalias !44
  %i.am = shufflevector <2 x double> %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x double> %i.am, %i.y
  %i.ao = fadd <2 x double> %i.al, %i.an
  %i.ap = fadd <2 x double> %i.ao, %.sroa.0.8.vec.insert.i.i.i.i
  %i.aq = fmul double %i.ab, %i.z
  %i.ar = fadd double %i.i, %i.aq
  %i.as = fadd double %i.ar, %i.ak
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.au = load <2 x double>, ptr %i.at, align 8, !tbaa !43, !noalias !45
  %i.av = fadd <2 x double> %i.au, %i.ap          ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !21, !noalias !45
  %i.ay = fadd double %i.ax, %i.as
  %.sroa.0.0.vec.extract = extractelement <2 x double> %i.av, i64 0 ; 3 uses
  %.sroa.0.8.vec.extract = extractelement <2 x double> %i.av, i64 1 ; 6 uses
  %i.az = fdiv double 1.000000e+00, %i.ay         ; 5 uses
  %i.ba = fmul double %i.az, %i.az                ; 6 uses
  %i.bb = fmul double %.sroa.0.0.vec.extract, %.sroa.0.8.vec.extract
  %i.bc = fmul double %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !46
  %i.bf = fmul double %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !104, !nonnull !105, !align !106
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !107 ; 12 uses
  store double %i.bf, ptr %i.bi, align 8, !tbaa !21
  %foldExtExtBinop = fmul <2 x double> %i.av, %i.av
  %i.bj = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.ba, double 1.000000e+00)
  %i.bl = fneg double %i.bk
  %i.bm = load double, ptr %i.bd, align 8, !tbaa !46
  %i.bn = fmul double %i.bm, %i.bl
  %i.bo = getelementptr i8, ptr %i.bi, i64 16
  store double %i.bn, ptr %i.bo, align 8, !tbaa !21
  %i.bp = fmul double %i.az, %.sroa.0.8.vec.extract
  %i.bq = load double, ptr %i.bd, align 8, !tbaa !46
  %i.br = fmul double %i.bq, %i.bp
  %i.bs = getelementptr i8, ptr %i.bi, i64 32
  store double %i.br, ptr %i.bs, align 8, !tbaa !21
  %i.bt = fneg double %i.az                       ; 2 uses
  %i.bu = load double, ptr %i.bd, align 8, !tbaa !46
  %i.bv = fmul double %i.bu, %i.bt
  %i.bw = getelementptr i8, ptr %i.bi, i64 48
  store double %i.bv, ptr %i.bw, align 8, !tbaa !21
  %i.bx = getelementptr i8, ptr %i.bi, i64 64
  store double 0.000000e+00, ptr %i.bx, align 8, !tbaa !21
  %i.by = fmul double %i.ba, %.sroa.0.0.vec.extract
  %i.bz = load double, ptr %i.bd, align 8, !tbaa !46
  %i.ca = fmul double %i.by, %i.bz
  %i.cb = getelementptr i8, ptr %i.bi, i64 80
  store double %i.ca, ptr %i.cb, align 8, !tbaa !21
  %i.cc = fmul double %.sroa.0.8.vec.extract, %.sroa.0.8.vec.extract
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.ba, double 1.000000e+00)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.cf = load double, ptr %i.ce, align 16, !tbaa !108
  %i.cg = fmul double %i.cd, %i.cf
  %i.ch = getelementptr i8, ptr %i.bi, i64 8
  store double %i.cg, ptr %i.ch, align 8, !tbaa !21
  %i.ci = fneg double %.sroa.0.0.vec.extract      ; 2 uses
  %i.cj = fmul double %.sroa.0.8.vec.extract, %i.ci
  %i.ck = fmul double %i.ba, %i.cj
  %i.cl = load double, ptr %i.ce, align 16, !tbaa !108
  %i.cm = fmul double %i.ck, %i.cl
  %i.cn = getelementptr i8, ptr %i.bi, i64 24
  store double %i.cm, ptr %i.cn, align 8, !tbaa !21
  %i.co = fmul double %i.az, %i.ci
  %i.cp = load double, ptr %i.ce, align 16, !tbaa !108
  %i.cq = fmul double %i.co, %i.cp
  %i.cr = getelementptr i8, ptr %i.bi, i64 40
  store double %i.cq, ptr %i.cr, align 8, !tbaa !21
  %i.cs = getelementptr i8, ptr %i.bi, i64 56
  store double 0.000000e+00, ptr %i.cs, align 8, !tbaa !21
  %i.ct = load double, ptr %i.ce, align 16, !tbaa !108
  %i.cu = fmul double %i.ct, %i.bt
  %i.cv = getelementptr i8, ptr %i.bi, i64 72
  store double %i.cu, ptr %i.cv, align 8, !tbaa !21
  %i.cw = fmul double %i.ba, %.sroa.0.8.vec.extract
  %i.cx = load double, ptr %i.ce, align 16, !tbaa !108
  %i.cy = fmul double %i.cw, %i.cx
  %i.cz = getelementptr i8, ptr %i.bi, i64 88
  store double %i.cy, ptr %i.cz, align 8, !tbaa !21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK3g2o25EdgeSE3ProjectXYZOnlyPose11cam_projectERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Matrix") align 16 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(328) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !21, !noalias !109
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.e = load <2 x double>, ptr %2, align 8, !tbaa !21, !noalias !109
  %i.f = insertelement <2 x double> poison, double %i.b, i64 0
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.h = fdiv <2 x double> %i.e, %i.g
  %i.i = load <2 x double>, ptr %i.c, align 8, !tbaa !21
  %i.j = load <2 x double>, ptr %i.d, align 8, !tbaa !21
  %i.k = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.i, <2 x double> %i.j)
  store <2 x double> %i.k, ptr %0, align 16, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3g2o25EdgeSE3ProjectXYZOnlyPose12computeErrorEv(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(328) initializes((224, 240)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.04.0.copyload = load <2 x double>, ptr %i.d, align 16, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.h = load double, ptr %i.g, align 8, !tbaa !21, !noalias !112 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.j = load double, ptr %i.i, align 16, !tbaa !21, !noalias !112 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.l = load double, ptr %i.k, align 8, !tbaa !21, !noalias !112 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.n = load double, ptr %i.m, align 8, !tbaa !21, !noalias !112 ; 2 uses
  %i.o = fneg double %i.n
  %i.p = fmul double %i.l, %i.o
  %i.q = tail call double @llvm.fmuladd.f64(double %i.h, double %i.j, double %i.p)
  %i.r = load double, ptr %i.f, align 16, !tbaa !21, !noalias !112 ; 2 uses
  %i.s = load double, ptr %i.e, align 8, !tbaa !21, !noalias !112 ; 4 uses
  %i.t = fneg double %i.j
  %i.u = fmul double %i.s, %i.t
  %i.v = tail call double @llvm.fmuladd.f64(double %i.l, double %i.r, double %i.u)
  %i.w = fneg double %i.r
  %i.x = fmul double %i.h, %i.w
  %i.y = tail call double @llvm.fmuladd.f64(double %i.s, double %i.n, double %i.x) ; 2 uses
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.q, i64 0
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %i.v, i64 1 ; 2 uses
  %i.z = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 3 uses
  %i.aa = fadd double %i.y, %i.y                  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !21, !noalias !123 ; 2 uses
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  %i.ad = fneg double %.sroa.027.8.vec.extract.i.i.i.i
  %i.ae = fmul double %i.l, %i.ad
  %i.af = tail call double @llvm.fmuladd.f64(double %i.h, double %i.aa, double %i.ae)
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.z, i64 0 ; 2 uses
  %i.ag = fneg double %i.aa
  %i.ah = fmul double %i.s, %i.ag
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.l, double %.sroa.027.0.vec.extract.i.i.i.i, double %i.ah)
  %i.aj = fneg double %.sroa.027.0.vec.extract.i.i.i.i
  %i.ak = fmul double %i.h, %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %i.s, double %.sroa.027.8.vec.extract.i.i.i.i, double %i.ak)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.af, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.ai, i64 1
  %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.am = load <2 x double>, ptr %i.f, align 16, !tbaa !43, !noalias !126
  %i.an = shufflevector <2 x double> %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x double> %i.an, %i.z
  %i.ap = fadd <2 x double> %i.am, %i.ao
  %i.aq = fadd <2 x double> %i.ap, %.sroa.0.8.vec.insert.i.i.i.i
  %i.ar = fmul double %i.ac, %i.aa
  %i.as = fadd double %i.j, %i.ar
  %i.at = fadd double %i.as, %i.al
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.av = load <2 x double>, ptr %i.au, align 8, !tbaa !43, !noalias !127
  %i.aw = fadd <2 x double> %i.av, %i.aq
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !21, !noalias !127
  %i.az = fadd double %i.ay, %i.at
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bc = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fdiv <2 x double> %i.aw, %i.bd
  %i.bf = load <2 x double>, ptr %i.ba, align 8, !tbaa !21, !noalias !128
  %i.bg = load <2 x double>, ptr %i.bb, align 8, !tbaa !21, !noalias !128
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.bf, <2 x double> %i.bg)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bj = fsub <2 x double> %.sroa.04.0.copyload, %i.bh
  store <2 x double> %i.bj, ptr %i.bi, align 16, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN3g2o25EdgeSE3ProjectXYZOnlyPose15isDepthPositiveEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(328) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %1 = load double, ptr %i.f, align 8, !tbaa !21, !noalias !131 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.h = load double, ptr %i.g, align 16, !tbaa !21, !noalias !131 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.i = load double, ptr %2, align 8, !tbaa !21, !noalias !131 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %4 = load double, ptr %3, align 8, !tbaa !21, !noalias !131 ; 2 uses
  %5 = fneg double %4
  %6 = fmul double %i.i, %5
  %7 = tail call double @llvm.fmuladd.f64(double %1, double %i.h, double %6)
  %8 = load double, ptr %i.e, align 16, !tbaa !21, !noalias !131 ; 2 uses
  %9 = load double, ptr %i.d, align 8, !tbaa !21, !noalias !131 ; 3 uses
  %10 = fneg double %i.h
  %11 = fmul double %9, %10
  %12 = tail call double @llvm.fmuladd.f64(double %i.i, double %8, double %11)
  %i.j = fneg double %8
  %13 = fmul double %1, %i.j
  %14 = tail call double @llvm.fmuladd.f64(double %9, double %4, double %13) ; 2 uses
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %7, i64 0
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %12, i64 1 ; 2 uses
  %i.k = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 2 uses
  %i.l = fadd double %14, %14
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.n = load double, ptr %i.m, align 8, !tbaa !21, !noalias !142
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.k, i64 1
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.k, i64 0
  %i.o = fneg double %.sroa.027.0.vec.extract.i.i.i.i
  %i.p = fmul double %1, %i.o
  %i.q = tail call double @llvm.fmuladd.f64(double %9, double %.sroa.027.8.vec.extract.i.i.i.i, double %i.p)
  %i.r = fmul double %i.n, %i.l
  %i.s = fadd double %i.h, %i.r
  %i.t = fadd double %i.s, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.v = load double, ptr %i.u, align 8, !tbaa !21, !noalias !145
  %i.w = fadd double %i.v, %i.t
  %i.x = fcmp ogt double %i.w, 0.000000e+00
  ret i1 %i.x
}

; Function Attrs: nounwind
declare void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o25EdgeSE3ProjectXYZOnlyPoseD0Ev(ptr noundef nonnull align 16 dereferenceable(328) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(328) dereferenceable(328) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph4Edge11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_15VertexSE3ExpmapEEE6resizeEm(ptr noundef nonnull align 16 dereferenceable(264) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o10HyperGraph4Edge6resizeEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_15VertexSE3ExpmapEEE16allVerticesFixedEv(ptr noundef nonnull align 16 dereferenceable(264) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !146, !range !162, !noundef !105
  %i.f = trunc nuw i8 %i.e to i1
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o25EdgeSE3ProjectXYZOnlyPose18setMeasurementDataEPKd(ptr noundef nonnull align 16 dereferenceable(328) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !43
  store <2 x double> %i.a, ptr %2, align 16, !tbaa !43
  %i.b = load ptr, ptr %0, align 16, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr noundef nonnull align 16 dereferenceable(240) %0, ptr noundef nonnull align 16 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o25EdgeSE3ProjectXYZOnlyPose18getMeasurementDataEPd(ptr noundef nonnull align 16 dereferenceable(328) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load <2 x double>, ptr %i.a, align 16, !tbaa !43
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !43
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o25EdgeSE3ProjectXYZOnlyPose20measurementDimensionEv(ptr noundef nonnull align 16 dereferenceable(328) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 2
}

declare noundef zeroext i1 @_ZN3g2o16OptimizableGraph4Edge23setMeasurementFromStateEv(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE4chi2Ev(ptr noundef nonnull align 16 dereferenceable(240) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load <2 x double>, ptr %i.b, align 16, !tbaa !43
  %i.d = load <2 x double>, ptr %i.a, align 16    ; 3 uses
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x double> %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !43
  %i.i = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.j = fmul <2 x double> %i.h, %i.i
  %i.k = fadd <2 x double> %i.f, %i.j
  %i.l = fmul <2 x double> %i.d, %i.k             ; 2 uses
  %shift = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.l, %shift
  %i.m = extractelement <2 x double> %foldExtExtBinop, i64 0
  ret double %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_15VertexSE3ExpmapEEE22constructQuadraticFormEv(ptr noundef nonnull align 16 dereferenceable(264) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2.i = alloca <2 x double>, align 16      ; 5 uses
  %1 = alloca %"class.Eigen::Matrix.36", align 8  ; 4 uses
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 4 uses
  %3 = alloca %"class.Eigen::Matrix.18", align 16 ; 5 uses
  %4 = alloca %"class.Eigen::Matrix", align 16    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !163
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 16 dereferenceable(240) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !163 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.g, double noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.m = load <2 x double>, ptr %i.k, align 16, !tbaa !43
  %i.n = fneg <2 x double> %i.m
  %i.o = load <2 x double>, ptr %i.l, align 16    ; 2 uses
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x double> %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load <2 x double>, ptr %i.r, align 16, !tbaa !43
  %i.t = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.u = fmul <2 x double> %i.s, %i.t
  %i.v = fsub <2 x double> %i.q, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !21, !noalias !164 ; 2 uses
  %i.y = insertelement <2 x double> poison, double %i.x, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x double> %i.v, %i.z
  store <2 x double> %i.aa, ptr %2, align 16, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i)
  store double %i.x, ptr %.sroa.2.i, align 16, !tbaa !170, !alias.scope !172, !noalias !167
  %.sroa.2.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.i, i64 8
  store ptr %i.k, ptr %.sroa.2.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !175, !alias.scope !172, !noalias !167
  %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i = load <2 x double>, ptr %.sroa.2.i, align 16, !noalias !167 ; 2 uses
  %bc.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i to <2 x i64>
  %i.ab = extractelement <2 x i64> %bc.i.i.i.i.i.i.i, i64 1
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = shufflevector <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ae = load <2 x double>, ptr %i.ac, align 16, !tbaa !43, !noalias !167
  %i.af = fmul <2 x double> %i.ad, %i.ae
  store <2 x double> %i.af, ptr %3, align 16, !tbaa !43, !alias.scope !167
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load <2 x double>, ptr %i.ah, align 16, !tbaa !43, !noalias !167
  %i.aj = fmul <2 x double> %i.ad, %i.ai
  store <2 x double> %i.aj, ptr %i.ag, align 16, !tbaa !43, !alias.scope !167
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  call void @_ZN3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_15VertexSE3ExpmapEEE23constructQuadraticFormNILi0EEEvRKNS2_IdLi2ELi2ELi0ELi2ELi2EEERKS3_(ptr noundef nonnull align 16 dereferenceable(264) %0, ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 16 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.am = load <2 x double>, ptr %i.ak, align 16, !tbaa !43
  %i.an = fneg <2 x double> %i.am
end_hunk_0
