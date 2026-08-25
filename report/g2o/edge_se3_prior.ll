Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_prior?download=true
inline.NumInlined: 6725
inline.NumDeleted: 3505
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN3g2o12EdgeSE3Prior15initialEstimateERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE:bb.a
  %i.dn = fmul <2 x double> %.sroa.060.8.vec.insert, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.dp = load double, ptr %i.do, align 8, !tbaa !8, !noalias !210 ; 2 uses
  %i.dq = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x double> %.sroa.10.40.vec.insert, %i.dr
  %i.dt = fadd <2 x double> %i.dn, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.dv = load double, ptr %i.du, align 16, !tbaa !8, !noalias !210 ; 2 uses
  %i.dw = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x double> %.sroa.18.72.vec.insert, %i.dx
  %i.dz = fadd <2 x double> %i.dt, %i.dy
  %i.ea = fmul double %i.k, %i.dk
  %i.eb = fmul double %i.q, %i.dp
  %i.ec = fmul double %i.w, %i.dv
  %i.ed = fadd double %i.eb, %i.ec
  %i.ee = fadd double %i.ea, %i.ed
  %i.ef = fadd <2 x double> %i.ao, %i.dz
  %i.eg = fadd double %i.au, %i.ee
  %.sroa.5.24.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bq, i64 0 ; 2 uses
  %.sroa.12.56.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.cm, i64 0 ; 2 uses
  %.sroa.19.88.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.di, i64 0 ; 2 uses
  %.sroa.26.120.vec.insert = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.eg, i64 0 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ei = load <2 x double>, ptr %i.eh, align 16, !tbaa !49
  %invariant.gep.1.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ej = load <2 x double>, ptr %invariant.gep.1.i.i.i, align 16, !tbaa !49
  %i.ek = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ei)
  %i.el = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ej)
  %i.em = fadd <2 x double> %i.ek, %i.el
  %invariant.gep.2.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.en = load <2 x double>, ptr %invariant.gep.2.i.i.i, align 16, !tbaa !49
  %i.eo = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.en)
  %i.ep = fadd <2 x double> %i.em, %i.eo          ; 2 uses
  %shift = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ep, %shift
  %i.eq = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.es = load double, ptr %i.er, align 16, !tbaa !8
  %i.et = tail call noundef double @llvm.fabs.f64(double %i.es)
  %i.eu = fadd double %i.et, %i.eq
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ew = load double, ptr %i.ev, align 16, !tbaa !8
  %i.ex = tail call noundef double @llvm.fabs.f64(double %i.ew)
  %i.ey = fadd double %i.ex, %i.eu
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.fa = load double, ptr %i.ez, align 16, !tbaa !8
  %i.fb = tail call noundef double @llvm.fabs.f64(double %i.fa)
  %i.fc = fadd double %i.fb, %i.ey
  %i.fd = fcmp oeq double %i.fc, 0.000000e+00
  br i1 %i.fd, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.ff = load <2 x double>, ptr %i.fe, align 16, !tbaa !49
  %i.fg = getelementptr i8, ptr %i.c, i64 304
  %i.fh = load double, ptr %i.fg, align 16, !tbaa !8
  %.sroa.26.112.vec.insert80 = insertelement <2 x double> %.sroa.26.120.vec.insert, double %i.fh, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.26.0 = phi <2 x double> [ %.sroa.26.112.vec.insert80, %bb.b ], [ %.sroa.26.120.vec.insert, %bb.a ]
  %.sroa.23.0 = phi <2 x double> [ %i.ff, %bb.b ], [ %i.ef, %bb.a ]
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.fj = load <2 x double>, ptr %i.fi, align 8, !tbaa !49
  %invariant.gep.1.i.i.i4 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.fk = load <2 x double>, ptr %invariant.gep.1.i.i.i4, align 8, !tbaa !49
  %i.fl = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fj)
  %i.fm = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fk)
  %i.fn = fadd <2 x double> %i.fl, %i.fm
  %invariant.gep.2.i.i.i5 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.fo = load <2 x double>, ptr %invariant.gep.2.i.i.i5, align 8, !tbaa !49
  %i.fp = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fo)
  %i.fq = fadd <2 x double> %i.fn, %i.fp          ; 2 uses
  %shift82 = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop83 = fadd <2 x double> %i.fq, %shift82
  %i.fr = extractelement <2 x double> %foldExtExtBinop83, i64 0
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !8
  %i.fu = tail call noundef double @llvm.fabs.f64(double %i.ft)
  %i.fv = fadd double %i.fu, %i.fr
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !8
  %i.fy = tail call noundef double @llvm.fabs.f64(double %i.fx)
  %i.fz = fadd double %i.fy, %i.fv
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !8
  %i.gc = tail call noundef double @llvm.fabs.f64(double %i.gb)
  %i.gd = fadd double %i.gc, %i.fz
  %i.ge = fcmp oeq double %i.gd, 0.000000e+00
  br i1 %i.ge, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.gf = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.gg = load <2 x double>, ptr %i.gf, align 1, !tbaa !49
  %i.gh = getelementptr i8, ptr %i.c, i64 208
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !8
  %.sroa.5.16.vec.insert71 = insertelement <2 x double> %.sroa.5.24.vec.insert, double %i.gi, i64 0
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.gk = load <2 x double>, ptr %i.gj, align 8, !tbaa !49
  %i.gl = getelementptr i8, ptr %i.c, i64 240
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !8
  %.sroa.12.48.vec.insert74 = insertelement <2 x double> %.sroa.12.56.vec.insert, double %i.gm, i64 0
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.go = load <2 x double>, ptr %i.gn, align 8, !tbaa !49
  %i.gp = getelementptr i8, ptr %i.c, i64 272
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !8
  %.sroa.19.80.vec.insert77 = insertelement <2 x double> %.sroa.19.88.vec.insert, double %i.gq, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.19.0 = phi <2 x double> [ %.sroa.19.80.vec.insert77, %bb.d ], [ %.sroa.19.88.vec.insert, %bb.c ]
  %.sroa.16.0 = phi <2 x double> [ %i.go, %bb.d ], [ %i.dd, %bb.c ]
  %.sroa.12.0 = phi <2 x double> [ %.sroa.12.48.vec.insert74, %bb.d ], [ %.sroa.12.56.vec.insert, %bb.c ]
  %.sroa.9.0 = phi <2 x double> [ %i.gk, %bb.d ], [ %i.ch, %bb.c ]
  %.sroa.5.0 = phi <2 x double> [ %.sroa.5.16.vec.insert71, %bb.d ], [ %.sroa.5.24.vec.insert, %bb.c ]
  %.sroa.0.0 = phi <2 x double> [ %i.gg, %bb.d ], [ %i.bl, %bb.c ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store <2 x double> %.sroa.0.0, ptr %i.gr, align 16, !tbaa !49
  %i.gs = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store <2 x double> %.sroa.5.0, ptr %i.gs, align 16, !tbaa !49
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store <2 x double> %.sroa.9.0, ptr %i.gt, align 16, !tbaa !49
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store <2 x double> %.sroa.12.0, ptr %i.gu, align 16, !tbaa !49
  %i.gv = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store <2 x double> %.sroa.16.0, ptr %i.gv, align 16, !tbaa !49
  %i.gw = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  store <2 x double> %.sroa.19.0, ptr %i.gw, align 16, !tbaa !49
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  store <2 x double> %.sroa.23.0, ptr %i.gx, align 16, !tbaa !49
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store <2 x double> %.sroa.26.0, ptr %i.gy, align 16, !tbaa !49
  %i.gz = load ptr, ptr %i.c, align 16, !tbaa !41
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 216
  %i.hb = load ptr, ptr %i.ha, align 8
  tail call void %i.hb(ptr noundef nonnull align 16 dereferenceable(344) %i.c), !inline_history !215
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o12EdgeSE3PriorD0Ev(ptr noundef nonnull align 16 dereferenceable(816) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(816) dereferenceable(816) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 816) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph4Edge11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3EEE6resizeEm(ptr noundef nonnull align 16 dereferenceable(664) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o10HyperGraph4Edge6resizeEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3EEE16allVerticesFixedEv(ptr noundef nonnull align 16 dereferenceable(664) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !216, !range !230, !noundef !145
  %i.f = trunc nuw i8 %i.e to i1
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o12EdgeSE3Prior18setMeasurementDataEPKd(ptr noundef nonnull align 16 dereferenceable(816) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Transform", align 16 ; 4 uses
  %3 = alloca %"class.Eigen::Matrix.57", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !49
  store <2 x double> %i.a, ptr %3, align 16, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 1, !tbaa !49
  store <2 x double> %i.d, ptr %i.b, align 16, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x double>, ptr %i.f, align 1, !tbaa !49
  store <2 x double> %i.g, ptr %i.e, align 16, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.i = getelementptr i8, ptr %1, i64 48
  %i.j = load double, ptr %i.i, align 8, !tbaa !8
  store double %i.j, ptr %i.h, align 16, !tbaa !8
  call void @_ZN3g2o8internal12fromVectorQTERKN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Transform") align 16 %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.k, ptr noundef nonnull align 16 dereferenceable(128) %2, i64 128, i1 false), !tbaa.struct !231
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %4 = load <2 x double>, ptr %i.k, align 16      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = load double, ptr %i.l, align 16, !tbaa !8, !noalias !232
  %.sroa.0.8.vec.insert = insertelement <2 x double> %4, double %i.m, i64 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.o = load double, ptr %i.n, align 16, !tbaa !8, !noalias !232 ; 2 uses
  %.sroa.9.32.vec.insert = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.q = load double, ptr %i.p, align 8, !tbaa !8, !noalias !232
  %.sroa.9.40.vec.insert = insertelement <2 x double> %.sroa.9.32.vec.insert, double %i.q, i64 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.s = load double, ptr %i.r, align 8, !tbaa !8, !noalias !232 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load double, ptr %i.t, align 16, !tbaa !8, !noalias !232
  %.sroa.15.64.vec.insert = insertelement <2 x double> poison, double %i.u, i64 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.w = load double, ptr %i.v, align 16, !tbaa !8, !noalias !232
  %.sroa.15.72.vec.insert = insertelement <2 x double> %.sroa.15.64.vec.insert, double %i.w, i64 1 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.y = load double, ptr %i.x, align 16, !tbaa !8, !noalias !232 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.aa = fneg <2 x double> %.sroa.0.8.vec.insert
  %i.ab = load double, ptr %i.z, align 16, !tbaa !8, !noalias !232 ; 2 uses
  %i.ac = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x double> %i.ad, %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ag = load double, ptr %i.af, align 8, !tbaa !8, !noalias !232 ; 2 uses
  %i.ah = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x double> %.sroa.9.40.vec.insert, %i.ai
  %i.ak = fsub <2 x double> %i.ae, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.am = load double, ptr %i.al, align 16, !tbaa !8, !noalias !232 ; 2 uses
  %i.an = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %.sroa.15.72.vec.insert, %i.ao
  %i.aq = fsub <2 x double> %i.ak, %i.ap
  %i.ar = fneg double %i.y
  %i.as = fmul double %i.am, %i.ar
  %i.at = fmul double %i.s, %i.ag
  %i.au = fsub double %i.as, %i.at
  %i.av = fmul double %i.o, %i.ab
  %i.aw = fsub double %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 672
  store <2 x double> %.sroa.0.8.vec.insert, ptr %i.ax, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 688
  store double %i.o, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696
  store double 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 704
  store <2 x double> %.sroa.9.40.vec.insert, ptr %.sroa.9.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  store double %i.s, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 728
  store double 0.000000e+00, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <2 x double> %.sroa.15.72.vec.insert, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 752
  store double %i.y, ptr %.sroa.18.0..sroa_idx, align 16
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 760
  store double 0.000000e+00, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 768
  store <2 x double> %i.aq, ptr %.sroa.21.0..sroa_idx, align 16
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 784
  store double %i.aw, ptr %.sroa.22.0..sroa_idx, align 16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 792
  store double 1.000000e+00, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !49
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o12EdgeSE3Prior18getMeasurementDataEPd(ptr noundef nonnull align 16 dereferenceable(816) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.57", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN3g2o8internal10toVectorQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.57") align 8 %2, ptr noundef nonnull align 16 dereferenceable(128) %i.a)
  %i.b = load <2 x double>, ptr %2, align 16, !tbaa !49
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !49
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load <2 x double>, ptr %i.d, align 16, !tbaa !49
  store <2 x double> %i.e, ptr %i.c, align 1, !tbaa !49
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !49
  store <2 x double> %i.h, ptr %i.f, align 1, !tbaa !49
  %i.i = getelementptr i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load double, ptr %i.j, align 16, !tbaa !8
  store double %i.k, ptr %i.i, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o12EdgeSE3Prior20measurementDimensionEv(ptr noundef nonnull align 16 dereferenceable(816) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE4chi2Ev(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = load <2 x double>, ptr %i.b, align 16, !tbaa !49
  %i.d = load <2 x double>, ptr %i.a, align 16    ; 2 uses
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.f = fmul <2 x double> %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.j = load <1 x double>, ptr %i.i, align 8
  %i.k = shufflevector <1 x double> %i.j, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.l = fmul <2 x double> %i.h, %i.k
  %i.m = fadd <2 x double> %i.f, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.o = load <2 x double>, ptr %i.n, align 16, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.q = load <2 x double>, ptr %i.p, align 16    ; 2 uses
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.s = fmul <2 x double> %i.o, %i.r
  %i.t = fadd <2 x double> %i.m, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.x = load <1 x double>, ptr %i.w, align 8
  %i.y = shufflevector <1 x double> %i.x, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.z = fmul <2 x double> %i.v, %i.y
  %i.aa = fadd <2 x double> %i.t, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ac = load <2 x double>, ptr %i.ab, align 16, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ae = load <2 x double>, ptr %i.ad, align 16  ; 3 uses
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ag = fmul <2 x double> %i.ac, %i.af
  %i.ah = fadd <2 x double> %i.aa, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.aj = load <2 x double>, ptr %i.ai, align 16, !tbaa !49
  %i.ak = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.al = fmul <2 x double> %i.aj, %i.ak
  %i.am = fadd <2 x double> %i.al, %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ao = load <2 x double>, ptr %i.an, align 16, !tbaa !49
  %i.ap = fmul <2 x double> %i.e, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ar = load <2 x double>, ptr %i.aq, align 16, !tbaa !49
  %i.as = fmul <2 x double> %i.k, %i.ar
  %i.at = fadd <2 x double> %i.ap, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.av = load <2 x double>, ptr %i.au, align 16, !tbaa !49
  %i.aw = fmul <2 x double> %i.r, %i.av
  %i.ax = fadd <2 x double> %i.at, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.az = load <2 x double>, ptr %i.ay, align 16, !tbaa !49
  %i.ba = fmul <2 x double> %i.y, %i.az
  %i.bb = fadd <2 x double> %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bd = load <2 x double>, ptr %i.bc, align 16, !tbaa !49
  %i.be = fmul <2 x double> %i.af, %i.bd
  %i.bf = fadd <2 x double> %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bh = load <2 x double>, ptr %i.bg, align 16, !tbaa !49
  %i.bi = fmul <2 x double> %i.ak, %i.bh
  %i.bj = fadd <2 x double> %i.bi, %i.bf
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bl = load <2 x double>, ptr %i.bk, align 16, !tbaa !49
  %i.bm = fmul <2 x double> %i.e, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bo = load <2 x double>, ptr %i.bn, align 16, !tbaa !49
  %i.bp = fmul <2 x double> %i.k, %i.bo
  %i.bq = fadd <2 x double> %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bs = load <2 x double>, ptr %i.br, align 16, !tbaa !49
  %i.bt = fmul <2 x double> %i.r, %i.bs
  %i.bu = fadd <2 x double> %i.bq, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bw = load <2 x double>, ptr %i.bv, align 16, !tbaa !49
  %i.bx = fmul <2 x double> %i.y, %i.bw
  %i.by = fadd <2 x double> %i.bu, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ca = load <2 x double>, ptr %i.bz, align 16, !tbaa !49
  %i.cb = fmul <2 x double> %i.af, %i.ca
  %i.cc = fadd <2 x double> %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ce = load <2 x double>, ptr %i.cd, align 16, !tbaa !49
  %i.cf = fmul <2 x double> %i.ak, %i.ce
  %i.cg = fadd <2 x double> %i.cf, %i.cc
  %i.ch = fmul <2 x double> %i.d, %i.am
  %i.ci = fmul <2 x double> %i.q, %i.bj
  %i.cj = fmul <2 x double> %i.ae, %i.cg
  %i.ck = fadd <2 x double> %i.ci, %i.cj
  %i.cl = fadd <2 x double> %i.ch, %i.ck          ; 2 uses
  %shift = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cl, %shift
  %i.cm = extractelement <2 x double> %foldExtExtBinop, i64 0
  ret double %i.cm
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3EEE22constructQuadraticFormEv(ptr noundef nonnull align 16 dereferenceable(664) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Product.1302", align 8 ; 6 uses
  %2 = alloca %"struct.Eigen::internal::add_assign_op", align 1 ; 3 uses
  %.sroa.027.i.i2 = alloca %"class.Eigen::Map", align 8 ; 4 uses
  %3 = alloca %"class.Eigen::Product.1302", align 8 ; 6 uses
  %4 = alloca %"struct.Eigen::internal::add_assign_op", align 1 ; 3 uses
  %.sroa.027.i.i = alloca %"class.Eigen::Map", align 8 ; 4 uses
  %.sroa.2.i = alloca <2 x double>, align 16      ; 5 uses
  %5 = alloca %"class.Eigen::Matrix.346", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::Matrix.18", align 16 ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !235
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !41
end_hunk_0
