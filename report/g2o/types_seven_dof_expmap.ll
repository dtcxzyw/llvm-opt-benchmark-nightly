Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/types_seven_dof_expmap?download=true
inline.NumInlined: 15398
inline.NumDeleted: 8608
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN3g2o8EdgeSim312computeErrorEv:._crit_edge.i.i.i
  %i.ea = fadd <2 x double> %i.dz, %i.dy
  %i.eb = fmul <2 x double> %i.du, %i.k
  %i.ec = fmul <2 x double> %i.dr, %i.m
  %i.ed = fsub <2 x double> %i.eb, %i.ec
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ef = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.ea, <2 x double> %i.ee) ; 4 uses
  %i.eg = fmul <2 x double> %i.an, %i.an
  %i.eh = fmul <2 x double> %i.am, %i.am
  %i.ei = fadd <2 x double> %i.eh, %i.eg          ; 2 uses
  %shift = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ei, %shift
  %i.ej = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ek = fcmp ogt double %i.ej, 0.000000e+00     ; 2 uses
  %.scalar.i.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.ej)
  %i.el = insertelement <2 x double> poison, double %.scalar.i.i.i.i.i, i64 0
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.en = fdiv <2 x double> %i.an, %i.em
  %i.eo = fdiv <2 x double> %i.am, %i.em
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.er = select i1 %i.ek, <2 x double> %i.en, <2 x double> %i.an ; 4 uses
  %i.es = select i1 %i.ek, <2 x double> %i.eo, <2 x double> %i.am ; 4 uses
  %.sroa.022.0.vec.extract = extractelement <2 x double> %i.ef, i64 0 ; 4 uses
  %i.et = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.022.8.vec.extract = extractelement <2 x double> %i.ef, i64 1 ; 4 uses
  %i.eu = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %.sroa.5.16.vec.extract = extractelement <2 x double> %i.dx, i64 1 ; 4 uses
  %i.ev = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %.sroa.5.24.vec.extract = extractelement <2 x double> %i.dx, i64 0
  %i.ew = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ex = fmul <2 x double> %i.ew, %i.er
  %i.ey = fmul <2 x double> %i.eu, %i.es
  %i.ez = fadd <2 x double> %i.ey, %i.ex
  %i.fa = fmul <2 x double> %i.ev, %i.er
  %i.fb = fmul <2 x double> %i.et, %i.es
  %i.fc = fsub <2 x double> %i.fa, %i.fb
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fe = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.ez, <2 x double> %i.fd)
  %i.ff = fmul <2 x double> %i.ew, %i.es
  %i.fg = fmul <2 x double> %i.eu, %i.er
  %i.fh = fsub <2 x double> %i.ff, %i.fg
  %i.fi = fmul <2 x double> %i.ev, %i.es
  %i.fj = fmul <2 x double> %i.et, %i.er
  %i.fk = fadd <2 x double> %i.fj, %i.fi
  %i.fl = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fm = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.fl, <2 x double> %i.fk)
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.fe, ptr %1, align 16, !alias.scope !354
  %.sroa.410.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x double> %i.fn, ptr %.sroa.410.0..sroa_idx.i9, align 16, !tbaa !17, !alias.scope !354
  %.sroa.10.40.vec.extract = extractelement <2 x double> %i.cb, i64 1 ; 2 uses
  %i.fo = fneg double %.sroa.10.40.vec.extract
  %i.fp = fmul double %.sroa.5.16.vec.extract, %i.fo
  %i.fq = tail call double @llvm.fmuladd.f64(double %.sroa.022.8.vec.extract, double %i.bw, double %i.fp)
  %.sroa.10.32.vec.extract = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.fr = fneg double %i.bw
  %i.fs = fmul double %.sroa.022.0.vec.extract, %i.fr
  %i.ft = tail call double @llvm.fmuladd.f64(double %.sroa.5.16.vec.extract, double %.sroa.10.32.vec.extract, double %i.fs)
  %i.fu = fneg double %.sroa.10.32.vec.extract
  %i.fv = fmul double %.sroa.022.8.vec.extract, %i.fu
  %i.fw = tail call double @llvm.fmuladd.f64(double %.sroa.022.0.vec.extract, double %.sroa.10.40.vec.extract, double %i.fv) ; 2 uses
  %.sroa.027.0.vec.insert.i.i.i.i10 = insertelement <2 x double> poison, double %i.fq, i64 0
  %.sroa.027.8.vec.insert.i.i.i.i11 = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i10, double %i.ft, i64 1 ; 2 uses
  %i.fx = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i11, %.sroa.027.8.vec.insert.i.i.i.i11 ; 3 uses
  %i.fy = fadd double %i.fw, %i.fw                ; 3 uses
  %.sroa.027.8.vec.extract.i.i.i.i12 = extractelement <2 x double> %i.fx, i64 1 ; 2 uses
  %i.fz = fneg double %.sroa.027.8.vec.extract.i.i.i.i12
  %i.ga = fmul double %.sroa.5.16.vec.extract, %i.fz
  %i.gb = tail call double @llvm.fmuladd.f64(double %.sroa.022.8.vec.extract, double %i.fy, double %i.ga)
  %.sroa.027.0.vec.extract.i.i.i.i13 = extractelement <2 x double> %i.fx, i64 0 ; 2 uses
  %i.gc = fneg double %i.fy
  %i.gd = fmul double %.sroa.022.0.vec.extract, %i.gc
  %i.ge = tail call double @llvm.fmuladd.f64(double %.sroa.5.16.vec.extract, double %.sroa.027.0.vec.extract.i.i.i.i13, double %i.gd)
  %i.gf = fneg double %.sroa.027.0.vec.extract.i.i.i.i13
  %i.gg = fmul double %.sroa.022.8.vec.extract, %i.gf
  %i.gh = tail call double @llvm.fmuladd.f64(double %.sroa.022.0.vec.extract, double %.sroa.027.8.vec.extract.i.i.i.i12, double %i.gg)
  %.sroa.0.0.vec.insert.i.i.i.i14 = insertelement <2 x double> poison, double %i.gb, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i15 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i14, double %i.ge, i64 1
  %i.gi = fmul <2 x double> %i.ew, %i.fx
  %i.gj = fadd <2 x double> %i.cb, %i.gi
  %i.gk = fadd <2 x double> %i.gj, %.sroa.0.8.vec.insert.i.i.i.i15
  %i.gl = fmul double %.sroa.5.24.vec.extract, %i.fy
  %i.gm = fadd double %i.bw, %i.gl
  %i.gn = fadd double %i.gm, %i.gh
  %.sroa.3.16.vec.insert.i.i.i.i.i.i.i.i16 = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.go = shufflevector <2 x double> %.sroa.3.16.vec.insert.i.i.i.i.i.i.i.i16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = fmul <2 x double> %i.go, %i.gk
  %i.gq = fadd <2 x double> %i.dj, %i.gp
  store <2 x double> %i.gq, ptr %i.ep, align 16, !tbaa !17, !alias.scope !354
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gs = fmul double %i.cc, %i.gn
  %i.gt = fadd double %i.cv, %i.gs
  store double %i.gt, ptr %i.gr, align 16, !tbaa !33, !alias.scope !354
  %i.gu = extractelement <2 x double> %i.aq, i64 0
  %i.gv = fmul double %i.cc, %i.gu
  store double %i.gv, ptr %i.eq, align 8, !tbaa !35, !alias.scope !354
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNK3g2o4Sim33logEv(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix") align 8 %2, ptr noundef nonnull align 16 dereferenceable(64) %1)
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gw, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false), !tbaa.struct !357
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o8EdgeSim318setMeasurementDataEPKd(ptr noundef nonnull align 16 dereferenceable(776) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.g2o::Sim3", align 16       ; 4 uses
  %3 = alloca %"class.Eigen::Matrix", align 16    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !17
  store <2 x double> %i.a, ptr %3, align 16, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 1, !tbaa !17
  store <2 x double> %i.d, ptr %i.b, align 16, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x double>, ptr %i.f, align 1, !tbaa !17
  store <2 x double> %i.g, ptr %i.e, align 16, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.i = getelementptr i8, ptr %1, i64 48
  %i.j = load double, ptr %i.i, align 8, !tbaa !33
  store double %i.j, ptr %i.h, align 16, !tbaa !33
  call void @_ZN3g2o4Sim3C2ERKN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEE(ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
  %i.k = load ptr, ptr %0, align 16, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 16 dereferenceable(688) %0, ptr noundef nonnull align 16 dereferenceable(64) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o8EdgeSim318getMeasurementDataEPd(ptr noundef nonnull align 16 dereferenceable(776) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZNK3g2o4Sim33logEv(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix") align 8 %2, ptr noundef nonnull align 16 dereferenceable(64) %i.a)
  %i.b = load <2 x double>, ptr %2, align 16, !tbaa !17
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !17
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load <2 x double>, ptr %i.d, align 16, !tbaa !17
  store <2 x double> %i.e, ptr %i.c, align 1, !tbaa !17
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !17
  store <2 x double> %i.h, ptr %i.f, align 1, !tbaa !17
  %i.i = getelementptr i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load double, ptr %i.j, align 16, !tbaa !33
  store double %i.k, ptr %i.i, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o8EdgeSim320measurementDimensionEv(ptr noundef nonnull align 16 dereferenceable(776) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 7
}

declare noundef zeroext i1 @_ZN3g2o16OptimizableGraph4Edge23setMeasurementFromStateEv(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi7ENS_4Sim3EE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(688) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi7ENS_4Sim3EE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(688) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi7ENS_4Sim3EE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(688) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi7ENS_4Sim3EE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(688) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o8BaseEdgeILi7ENS_4Sim3EE4chi2Ev(ptr noundef nonnull align 16 dereferenceable(688) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = load <2 x double>, ptr %i.b, align 16, !tbaa !17
  %1 = load <1 x double>, ptr %i.a, align 8
  %i.d = shufflevector <1 x double> %1, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.e = fmul <2 x double> %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = load <2 x double>, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.i = load <2 x double>, ptr %i.h, align 16    ; 2 uses
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.k = fmul <2 x double> %i.g, %i.j
  %i.l = fadd <2 x double> %i.e, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.n = load <2 x double>, ptr %i.m, align 16, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.p = load <2 x double>, ptr %i.o, align 8     ; 3 uses
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.r = fmul <2 x double> %i.n, %i.q
  %i.s = fadd <2 x double> %i.l, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.u = load <2 x double>, ptr %i.t, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.w = load <2 x double>, ptr %i.v, align 16    ; 2 uses
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.y = fmul <2 x double> %i.u, %i.x
  %i.z = fadd <2 x double> %i.s, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ab = load <2 x double>, ptr %i.aa, align 16, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ad = load <2 x double>, ptr %i.ac, align 8   ; 5 uses
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.af = fmul <2 x double> %i.ab, %i.ae
  %i.ag = fadd <2 x double> %i.z, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ai = load <2 x double>, ptr %i.ah, align 8, !tbaa !17
  %i.aj = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ak = fmul <2 x double> %i.ai, %i.aj
  %i.al = fadd <2 x double> %i.ak, %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.an = load <2 x double>, ptr %i.am, align 16, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !33 ; 3 uses
  %i.aq = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.as = fmul <2 x double> %i.an, %i.ar
  %i.at = fadd <2 x double> %i.al, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.av = load <2 x double>, ptr %i.au, align 16, !tbaa !17
  %i.aw = fmul <2 x double> %i.d, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ay = load <2 x double>, ptr %i.ax, align 8, !tbaa !17
  %i.az = fmul <2 x double> %i.j, %i.ay
  %i.ba = fadd <2 x double> %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bc = load <2 x double>, ptr %i.bb, align 16, !tbaa !17
  %i.bd = fmul <2 x double> %i.q, %i.bc
  %i.be = fadd <2 x double> %i.ba, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bg = load <2 x double>, ptr %i.bf, align 8, !tbaa !17
  %i.bh = fmul <2 x double> %i.x, %i.bg
  %i.bi = fadd <2 x double> %i.be, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bk = load <2 x double>, ptr %i.bj, align 16, !tbaa !17
  %i.bl = fmul <2 x double> %i.ae, %i.bk
  %i.bm = fadd <2 x double> %i.bi, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bo = load <2 x double>, ptr %i.bn, align 8, !tbaa !17
  %i.bp = fmul <2 x double> %i.aj, %i.bo
  %i.bq = fadd <2 x double> %i.bp, %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.bs = load <2 x double>, ptr %i.br, align 16, !tbaa !17
  %i.bt = fmul <2 x double> %i.ar, %i.bs
  %i.bu = fadd <2 x double> %i.bt, %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bw = load <2 x double>, ptr %i.bv, align 16, !tbaa !17
  %i.bx = fmul <2 x double> %i.d, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bz = load <2 x double>, ptr %i.by, align 8, !tbaa !17
  %i.ca = fmul <2 x double> %i.j, %i.bz
  %i.cb = fadd <2 x double> %i.bx, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cd = load <2 x double>, ptr %i.cc, align 16, !tbaa !17
  %i.ce = fmul <2 x double> %i.q, %i.cd
  %i.cf = fadd <2 x double> %i.cb, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ch = load <2 x double>, ptr %i.cg, align 8, !tbaa !17
  %i.ci = fmul <2 x double> %i.x, %i.ch
  %i.cj = fadd <2 x double> %i.cf, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.cl = load <2 x double>, ptr %i.ck, align 16, !tbaa !17
  %i.cm = fmul <2 x double> %i.ae, %i.cl
  %i.cn = fadd <2 x double> %i.cj, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.cp = load <2 x double>, ptr %i.co, align 8, !tbaa !17
  %i.cq = fmul <2 x double> %i.aj, %i.cp
  %i.cr = fadd <2 x double> %i.cq, %i.cn
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ct = load <2 x double>, ptr %i.cs, align 16, !tbaa !17
  %i.cu = fmul <2 x double> %i.ar, %i.ct
  %i.cv = fadd <2 x double> %i.cr, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 288
  %2 = load double, ptr %i.cw, align 16, !tbaa !33
  %i.cx = load double, ptr %i.a, align 8, !tbaa !33
  %i.cy = fmul double %2, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.da = load double, ptr %i.cz, align 8, !tbaa !33
  %3 = extractelement <2 x double> %i.i, i64 0
  %i.db = fmul double %3, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.dd = load double, ptr %i.dc, align 16, !tbaa !33
  %4 = extractelement <2 x double> %i.p, i64 0
  %i.de = fmul double %4, %i.dd
  %i.df = fadd double %i.db, %i.de
  %i.dg = fadd double %i.cy, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.di = load double, ptr %i.dh, align 8, !tbaa !33
  %5 = extractelement <2 x double> %i.w, i64 0
  %i.dj = fmul double %5, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.dl = load double, ptr %i.dk, align 16, !tbaa !33
  %6 = extractelement <2 x double> %i.ad, i64 0
  %i.dm = fmul double %6, %i.dl
  %i.dn = fadd double %i.dj, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.dp = load double, ptr %i.do, align 8, !tbaa !33
  %7 = extractelement <2 x double> %i.ad, i64 1
  %i.dq = fmul double %i.dp, %7
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ds = load double, ptr %i.dr, align 16, !tbaa !33
  %i.dt = fmul double %i.ap, %i.ds
  %i.du = fadd double %i.dq, %i.dt
  %i.dv = fadd double %i.dn, %i.du
  %i.dw = fadd double %i.dg, %i.dv
  %8 = load <2 x double>, ptr %i.a, align 8, !tbaa !17
  %i.dx = fmul <2 x double> %i.at, %8
  %i.dy = fmul <2 x double> %i.p, %i.bu
  %i.dz = fmul <2 x double> %i.ad, %i.cv
  %i.ea = fadd <2 x double> %i.dy, %i.dz
  %i.eb = fadd <2 x double> %i.ea, %i.dx          ; 2 uses
  %shift = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.eb, %shift
  %i.ec = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ed = fmul double %i.ap, %i.dw
  %i.ee = fadd double %i.ed, %i.ec
  ret double %i.ee
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi7ENS_4Sim3EJNS_16VertexSim3ExpmapES2_EE22constructQuadraticFormEv(ptr noundef nonnull align 16 dereferenceable(760) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Eigen::internal::evaluator.2972", align 8 ; 8 uses
  %2 = alloca %"struct.Eigen::internal::evaluator", align 8 ; 4 uses
  %3 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.2980", align 8 ; 7 uses
  %4 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.2972", align 8 ; 8 uses
  %6 = alloca %"struct.Eigen::internal::evaluator", align 8 ; 4 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.2980", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %9 = alloca %"class.Eigen::Matrix.27", align 8  ; 4 uses
  %10 = alloca %"class.Eigen::Matrix", align 16   ; 11 uses
  %11 = alloca %"class.Eigen::Matrix.70", align 16 ; 29 uses
  %12 = alloca %"class.Eigen::Matrix", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !358
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 16 dereferenceable(688) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !358 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.g, double noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.k, ptr %5, align 8, !tbaa !272
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !359
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.k, ptr %i.n, align 8, !tbaa !264
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.l, ptr %i.o, align 8, !tbaa !361
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 7, ptr %i.p, align 8, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %10, ptr %6, align 8, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %6, ptr %7, align 8, !tbaa !375
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.q, align 8, !tbaa !377
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %8, ptr %i.r, align 8, !tbaa !270
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %10, ptr %i.s, align 8, !tbaa !359
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi7ELi1ELi0ELi7ELi1EEEEENS3_INS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS4_IdLi7ELi7ELi0ELi7ELi7EEEEES5_Li1EEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSI_(ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.u = load double, ptr %i.t, align 8, !tbaa !33, !noalias !379 ; 3 uses
  %i.v = insertelement <2 x double> poison, double %i.u, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer ; 27 uses
  %i.x = load <2 x double>, ptr %10, align 16, !tbaa !17
  %i.y = fmul <2 x double> %i.x, %i.w
  store <2 x double> %i.y, ptr %10, align 16, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.aa = load <2 x double>, ptr %i.z, align 16, !tbaa !17
  %i.ab = fmul <2 x double> %i.w, %i.aa
  store <2 x double> %i.ab, ptr %i.z, align 16, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ad = load <2 x double>, ptr %i.ac, align 16, !tbaa !17
  %i.ae = fmul <2 x double> %i.w, %i.ad
  store <2 x double> %i.ae, ptr %i.ac, align 16, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.ag = load double, ptr %i.af, align 16, !tbaa !33
  %i.ah = fmul double %i.u, %i.ag
  store double %i.ah, ptr %i.af, align 16, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.ai = load <2 x double>, ptr %i.k, align 16, !tbaa !17, !noalias !382
  %i.aj = fmul <2 x double> %i.w, %i.ai
  store <2 x double> %i.aj, ptr %11, align 16, !tbaa !17, !alias.scope !382
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.am = load <2 x double>, ptr %i.al, align 16, !tbaa !17, !noalias !382
  %i.an = fmul <2 x double> %i.w, %i.am
  store <2 x double> %i.an, ptr %i.ak, align 16, !tbaa !17, !alias.scope !382
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.aq = load <2 x double>, ptr %i.ap, align 16, !tbaa !17, !noalias !382
  %i.ar = fmul <2 x double> %i.w, %i.aq
  store <2 x double> %i.ar, ptr %i.ao, align 16, !tbaa !17, !alias.scope !382
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.au = load <2 x double>, ptr %i.at, align 16, !tbaa !17, !noalias !382
  %i.av = fmul <2 x double> %i.w, %i.au
  store <2 x double> %i.av, ptr %i.as, align 16, !tbaa !17, !alias.scope !382
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ay = load <2 x double>, ptr %i.ax, align 16, !tbaa !17, !noalias !382
  %i.az = fmul <2 x double> %i.w, %i.ay
  store <2 x double> %i.az, ptr %i.aw, align 16, !tbaa !17, !alias.scope !382
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bc = load <2 x double>, ptr %i.bb, align 16, !tbaa !17, !noalias !382
  %i.bd = fmul <2 x double> %i.w, %i.bc
  store <2 x double> %i.bd, ptr %i.ba, align 16, !tbaa !17, !alias.scope !382
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bg = load <2 x double>, ptr %i.bf, align 16, !tbaa !17, !noalias !382
  %i.bh = fmul <2 x double> %i.w, %i.bg
  store <2 x double> %i.bh, ptr %i.be, align 16, !tbaa !17, !alias.scope !382
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bk = load <2 x double>, ptr %i.bj, align 16, !tbaa !17, !noalias !382
  %i.bl = fmul <2 x double> %i.w, %i.bk
  store <2 x double> %i.bl, ptr %i.bi, align 16, !tbaa !17, !alias.scope !382
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bo = load <2 x double>, ptr %i.bn, align 16, !tbaa !17, !noalias !382
  %i.bp = fmul <2 x double> %i.w, %i.bo
  store <2 x double> %i.bp, ptr %i.bm, align 16, !tbaa !17, !alias.scope !382
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bs = load <2 x double>, ptr %i.br, align 16, !tbaa !17, !noalias !382
  %i.bt = fmul <2 x double> %i.w, %i.bs
  store <2 x double> %i.bt, ptr %i.bq, align 16, !tbaa !17, !alias.scope !382
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 160
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bw = load <2 x double>, ptr %i.bv, align 16, !tbaa !17, !noalias !382
  %i.bx = fmul <2 x double> %i.w, %i.bw
  store <2 x double> %i.bx, ptr %i.bu, align 16, !tbaa !17, !alias.scope !382
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 176
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ca = load <2 x double>, ptr %i.bz, align 16, !tbaa !17, !noalias !382
  %i.cb = fmul <2 x double> %i.w, %i.ca
  store <2 x double> %i.cb, ptr %i.by, align 16, !tbaa !17, !alias.scope !382
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 192
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ce = load <2 x double>, ptr %i.cd, align 16, !tbaa !17, !noalias !382
  %i.cf = fmul <2 x double> %i.w, %i.ce
  store <2 x double> %i.cf, ptr %i.cc, align 16, !tbaa !17, !alias.scope !382
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 208
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ci = load <2 x double>, ptr %i.ch, align 16, !tbaa !17, !noalias !382
  %i.cj = fmul <2 x double> %i.w, %i.ci
  store <2 x double> %i.cj, ptr %i.cg, align 16, !tbaa !17, !alias.scope !382
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 224
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.cm = load <2 x double>, ptr %i.cl, align 16, !tbaa !17, !noalias !382
  %i.cn = fmul <2 x double> %i.w, %i.cm
  store <2 x double> %i.cn, ptr %i.ck, align 16, !tbaa !17, !alias.scope !382
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 240
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cq = load <2 x double>, ptr %i.cp, align 16, !tbaa !17, !noalias !382
  %i.cr = fmul <2 x double> %i.w, %i.cq
  store <2 x double> %i.cr, ptr %i.co, align 16, !tbaa !17, !alias.scope !382
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 256
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.cu = load <2 x double>, ptr %i.ct, align 16, !tbaa !17, !noalias !382
  %i.cv = fmul <2 x double> %i.w, %i.cu
  store <2 x double> %i.cv, ptr %i.cs, align 16, !tbaa !17, !alias.scope !382
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 272
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cy = load <2 x double>, ptr %i.cx, align 16, !tbaa !17, !noalias !382
  %i.cz = fmul <2 x double> %i.w, %i.cy
  store <2 x double> %i.cz, ptr %i.cw, align 16, !tbaa !17, !alias.scope !382
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 288
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.dc = load <2 x double>, ptr %i.db, align 16, !tbaa !17, !noalias !382
  %i.dd = fmul <2 x double> %i.w, %i.dc
  store <2 x double> %i.dd, ptr %i.da, align 16, !tbaa !17, !alias.scope !382
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 304
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.dg = load <2 x double>, ptr %i.df, align 16, !tbaa !17, !noalias !382
  %i.dh = fmul <2 x double> %i.w, %i.dg
  store <2 x double> %i.dh, ptr %i.de, align 16, !tbaa !17, !alias.scope !382
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 320
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.dk = load <2 x double>, ptr %i.dj, align 16, !tbaa !17, !noalias !382
  %i.dl = fmul <2 x double> %i.w, %i.dk
  store <2 x double> %i.dl, ptr %i.di, align 16, !tbaa !17, !alias.scope !382
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 336
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.do = load <2 x double>, ptr %i.dn, align 16, !tbaa !17, !noalias !382
  %i.dp = fmul <2 x double> %i.w, %i.do
  store <2 x double> %i.dp, ptr %i.dm, align 16, !tbaa !17, !alias.scope !382
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 352
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ds = load <2 x double>, ptr %i.dr, align 16, !tbaa !17, !noalias !382
  %i.dt = fmul <2 x double> %i.w, %i.ds
  store <2 x double> %i.dt, ptr %i.dq, align 16, !tbaa !17, !alias.scope !382
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 368
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.dw = load <2 x double>, ptr %i.dv, align 16, !tbaa !17, !noalias !382
end_hunk_0
