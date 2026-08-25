Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_calib?download=true
inline.NumInlined: 6074
inline.NumDeleted: 3139
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZNK3g2o12EdgeSE3Calib18getMeasurementDataEPd:bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load <2 x double>, ptr %i.d, align 16, !tbaa !60
  store <2 x double> %i.e, ptr %i.c, align 1, !tbaa !60
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !60
  store <2 x double> %i.h, ptr %i.f, align 1, !tbaa !60
  %i.i = getelementptr i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load double, ptr %i.j, align 16, !tbaa !8
  store double %i.k, ptr %i.i, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o12EdgeSE3Calib20measurementDimensionEv(ptr noundef nonnull align 16 dereferenceable(688) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 7
}

declare noundef zeroext i1 @_ZN3g2o16OptimizableGraph4Edge23setMeasurementFromStateEv(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE4chi2Ev(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = load <2 x double>, ptr %i.b, align 16, !tbaa !60
  %i.d = load <2 x double>, ptr %i.a, align 16    ; 2 uses
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.f = fmul <2 x double> %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.j = load <1 x double>, ptr %i.i, align 8
  %i.k = shufflevector <1 x double> %i.j, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.l = fmul <2 x double> %i.h, %i.k
  %i.m = fadd <2 x double> %i.f, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.o = load <2 x double>, ptr %i.n, align 16, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.q = load <2 x double>, ptr %i.p, align 16    ; 2 uses
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.s = fmul <2 x double> %i.o, %i.r
  %i.t = fadd <2 x double> %i.m, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.x = load <1 x double>, ptr %i.w, align 8
  %i.y = shufflevector <1 x double> %i.x, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.z = fmul <2 x double> %i.v, %i.y
  %i.aa = fadd <2 x double> %i.t, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ac = load <2 x double>, ptr %i.ab, align 16, !tbaa !60
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ae = load <2 x double>, ptr %i.ad, align 16  ; 3 uses
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ag = fmul <2 x double> %i.ac, %i.af
  %i.ah = fadd <2 x double> %i.aa, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.aj = load <2 x double>, ptr %i.ai, align 16, !tbaa !60
  %i.ak = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.al = fmul <2 x double> %i.aj, %i.ak
  %i.am = fadd <2 x double> %i.al, %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ao = load <2 x double>, ptr %i.an, align 16, !tbaa !60
  %i.ap = fmul <2 x double> %i.e, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ar = load <2 x double>, ptr %i.aq, align 16, !tbaa !60
  %i.as = fmul <2 x double> %i.k, %i.ar
  %i.at = fadd <2 x double> %i.ap, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.av = load <2 x double>, ptr %i.au, align 16, !tbaa !60
  %i.aw = fmul <2 x double> %i.r, %i.av
  %i.ax = fadd <2 x double> %i.at, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.az = load <2 x double>, ptr %i.ay, align 16, !tbaa !60
  %i.ba = fmul <2 x double> %i.y, %i.az
  %i.bb = fadd <2 x double> %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bd = load <2 x double>, ptr %i.bc, align 16, !tbaa !60
  %i.be = fmul <2 x double> %i.af, %i.bd
  %i.bf = fadd <2 x double> %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bh = load <2 x double>, ptr %i.bg, align 16, !tbaa !60
  %i.bi = fmul <2 x double> %i.ak, %i.bh
  %i.bj = fadd <2 x double> %i.bi, %i.bf
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bl = load <2 x double>, ptr %i.bk, align 16, !tbaa !60
  %i.bm = fmul <2 x double> %i.e, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bo = load <2 x double>, ptr %i.bn, align 16, !tbaa !60
  %i.bp = fmul <2 x double> %i.k, %i.bo
  %i.bq = fadd <2 x double> %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bs = load <2 x double>, ptr %i.br, align 16, !tbaa !60
  %i.bt = fmul <2 x double> %i.r, %i.bs
  %i.bu = fadd <2 x double> %i.bq, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bw = load <2 x double>, ptr %i.bv, align 16, !tbaa !60
  %i.bx = fmul <2 x double> %i.y, %i.bw
  %i.by = fadd <2 x double> %i.bu, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ca = load <2 x double>, ptr %i.bz, align 16, !tbaa !60
  %i.cb = fmul <2 x double> %i.af, %i.ca
  %i.cc = fadd <2 x double> %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ce = load <2 x double>, ptr %i.cd, align 16, !tbaa !60
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
define linkonce_odr void @_ZN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE22constructQuadraticFormEv(ptr noundef nonnull align 16 dereferenceable(688) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2.i = alloca <2 x double>, align 16      ; 5 uses
  %1 = alloca %"class.Eigen::Matrix.333", align 8 ; 4 uses
  %2 = alloca %"class.Eigen::Matrix.28", align 16 ; 6 uses
  %3 = alloca %"class.Eigen::Matrix.18", align 16 ; 21 uses
  %4 = alloca %"class.Eigen::Matrix.28", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !109
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 16 dereferenceable(640) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !109 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.g, double noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.m = load <2 x double>, ptr %i.k, align 16, !tbaa !60
  %i.n = fneg <2 x double> %i.m
  %i.o = load <1 x double>, ptr %i.l, align 16
  %i.p = shufflevector <1 x double> %i.o, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.q = fmul <2 x double> %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.s = load <2 x double>, ptr %i.r, align 16, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.u = load <1 x double>, ptr %i.t, align 8
  %i.v = shufflevector <1 x double> %i.u, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.w = fmul <2 x double> %i.s, %i.v
  %i.x = fsub <2 x double> %i.q, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.z = load <2 x double>, ptr %i.y, align 16, !tbaa !60
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ab = load <1 x double>, ptr %i.aa, align 16
  %i.ac = shufflevector <1 x double> %i.ab, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ad = fmul <2 x double> %i.z, %i.ac
  %i.ae = fsub <2 x double> %i.x, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ag = load <2 x double>, ptr %i.af, align 16, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 616
  %5 = load <1 x double>, ptr %i.ah, align 8
  %i.ai = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aj = fmul <2 x double> %i.ag, %i.ai
  %i.ak = fsub <2 x double> %i.ae, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.am = load <2 x double>, ptr %i.al, align 16, !tbaa !60
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %7 = load <2 x double>, ptr %6, align 16        ; 2 uses
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %9 = fmul <2 x double> %i.am, %8
  %10 = fsub <2 x double> %i.ak, %9
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 544
  %11 = load <2 x double>, ptr %i.an, align 16, !tbaa !60
  %12 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ao = fmul <2 x double> %11, %12
  %i.ap = fsub <2 x double> %10, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.as = load <2 x double>, ptr %i.ar, align 16, !tbaa !60
  %i.at = fneg <2 x double> %i.as
  %i.au = fmul <2 x double> %i.p, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aw = load <2 x double>, ptr %i.av, align 16, !tbaa !60
  %i.ax = fmul <2 x double> %i.v, %i.aw
  %i.ay = fsub <2 x double> %i.au, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ba = load <2 x double>, ptr %i.az, align 16, !tbaa !60
  %i.bb = fmul <2 x double> %i.ac, %i.ba
  %i.bc = fsub <2 x double> %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.be = load <2 x double>, ptr %i.bd, align 16, !tbaa !60
  %i.bf = fmul <2 x double> %i.ai, %i.be
  %i.bg = fsub <2 x double> %i.bc, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bi = load <2 x double>, ptr %i.bh, align 16, !tbaa !60
  %i.bj = fmul <2 x double> %8, %i.bi
  %i.bk = fsub <2 x double> %i.bg, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bm = load <2 x double>, ptr %i.bl, align 16, !tbaa !60
  %i.bn = fmul <2 x double> %12, %i.bm
  %i.bo = fsub <2 x double> %i.bk, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.br = load <2 x double>, ptr %i.bq, align 16, !tbaa !60
  %i.bs = fneg <2 x double> %i.br
  %i.bt = fmul <2 x double> %i.p, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bv = load <2 x double>, ptr %i.bu, align 16, !tbaa !60
  %i.bw = fmul <2 x double> %i.v, %i.bv
  %i.bx = fsub <2 x double> %i.bt, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bz = load <2 x double>, ptr %i.by, align 16, !tbaa !60
  %i.ca = fmul <2 x double> %i.ac, %i.bz
  %i.cb = fsub <2 x double> %i.bx, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cd = load <2 x double>, ptr %i.cc, align 16, !tbaa !60
  %i.ce = fmul <2 x double> %i.ai, %i.cd
  %i.cf = fsub <2 x double> %i.cb, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ch = load <2 x double>, ptr %i.cg, align 16, !tbaa !60
  %i.ci = fmul <2 x double> %8, %i.ch
  %i.cj = fsub <2 x double> %i.cf, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.cl = load <2 x double>, ptr %i.ck, align 16, !tbaa !60
  %i.cm = fmul <2 x double> %12, %i.cl
  %i.cn = fsub <2 x double> %i.cj, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load double, ptr %i.co, align 8, !tbaa !8, !noalias !110 ; 2 uses
  %i.cq = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cs = fmul <2 x double> %i.ap, %i.cr
  store <2 x double> %i.cs, ptr %2, align 16, !tbaa !60
  %i.ct = fmul <2 x double> %i.bo, %i.cr
  store <2 x double> %i.ct, ptr %i.aq, align 16, !tbaa !60
  %i.cu = fmul <2 x double> %i.cn, %i.cr
  store <2 x double> %i.cu, ptr %i.bp, align 16, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i)
  store double %i.cp, ptr %.sroa.2.i, align 16, !tbaa !116, !alias.scope !118, !noalias !113
  %.sroa.2.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.i, i64 8
  store ptr %i.k, ptr %.sroa.2.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !121, !alias.scope !118, !noalias !113
  %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i = load <2 x double>, ptr %.sroa.2.i, align 16, !noalias !113 ; 2 uses
  %bc.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i to <2 x i64>
  %i.cv = extractelement <2 x i64> %bc.i.i.i.i.i.i.i, i64 1
  %i.cw = inttoptr i64 %i.cv to ptr               ; 18 uses
  %i.cx = shufflevector <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i, <2 x double> poison, <2 x i32> zeroinitializer ; 18 uses
  %i.cy = load <2 x double>, ptr %i.cw, align 16, !tbaa !60, !noalias !113
  %i.cz = fmul <2 x double> %i.cx, %i.cy
  store <2 x double> %i.cz, ptr %3, align 16, !tbaa !60, !alias.scope !113
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.dc = load <2 x double>, ptr %i.db, align 16, !tbaa !60, !noalias !113
  %i.dd = fmul <2 x double> %i.cx, %i.dc
  store <2 x double> %i.dd, ptr %i.da, align 16, !tbaa !60, !alias.scope !113
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dg = load <2 x double>, ptr %i.df, align 16, !tbaa !60, !noalias !113
  %i.dh = fmul <2 x double> %i.cx, %i.dg
  store <2 x double> %i.dh, ptr %i.de, align 16, !tbaa !60, !alias.scope !113
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.dk = load <2 x double>, ptr %i.dj, align 16, !tbaa !60, !noalias !113
  %i.dl = fmul <2 x double> %i.cx, %i.dk
  store <2 x double> %i.dl, ptr %i.di, align 16, !tbaa !60, !alias.scope !113
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  %i.do = load <2 x double>, ptr %i.dn, align 16, !tbaa !60, !noalias !113
  %i.dp = fmul <2 x double> %i.cx, %i.do
  store <2 x double> %i.dp, ptr %i.dm, align 16, !tbaa !60, !alias.scope !113
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cw, i64 80
  %i.ds = load <2 x double>, ptr %i.dr, align 16, !tbaa !60, !noalias !113
  %i.dt = fmul <2 x double> %i.cx, %i.ds
  store <2 x double> %i.dt, ptr %i.dq, align 16, !tbaa !60, !alias.scope !113
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  %i.dw = load <2 x double>, ptr %i.dv, align 16, !tbaa !60, !noalias !113
  %i.dx = fmul <2 x double> %i.cx, %i.dw
  store <2 x double> %i.dx, ptr %i.du, align 16, !tbaa !60, !alias.scope !113
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cw, i64 112
  %i.ea = load <2 x double>, ptr %i.dz, align 16, !tbaa !60, !noalias !113
  %i.eb = fmul <2 x double> %i.cx, %i.ea
  store <2 x double> %i.eb, ptr %i.dy, align 16, !tbaa !60, !alias.scope !113
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cw, i64 128
  %i.ee = load <2 x double>, ptr %i.ed, align 16, !tbaa !60, !noalias !113
  %i.ef = fmul <2 x double> %i.cx, %i.ee
  store <2 x double> %i.ef, ptr %i.ec, align 16, !tbaa !60, !alias.scope !113
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cw, i64 144
  %i.ei = load <2 x double>, ptr %i.eh, align 16, !tbaa !60, !noalias !113
  %i.ej = fmul <2 x double> %i.cx, %i.ei
  store <2 x double> %i.ej, ptr %i.eg, align 16, !tbaa !60, !alias.scope !113
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.el = getelementptr inbounds nuw i8, ptr %i.cw, i64 160
  %i.em = load <2 x double>, ptr %i.el, align 16, !tbaa !60, !noalias !113
  %i.en = fmul <2 x double> %i.cx, %i.em
  store <2 x double> %i.en, ptr %i.ek, align 16, !tbaa !60, !alias.scope !113
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cw, i64 176
  %i.eq = load <2 x double>, ptr %i.ep, align 16, !tbaa !60, !noalias !113
  %i.er = fmul <2 x double> %i.cx, %i.eq
  store <2 x double> %i.er, ptr %i.eo, align 16, !tbaa !60, !alias.scope !113
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.et = getelementptr inbounds nuw i8, ptr %i.cw, i64 192
  %i.eu = load <2 x double>, ptr %i.et, align 16, !tbaa !60, !noalias !113
  %i.ev = fmul <2 x double> %i.cx, %i.eu
  store <2 x double> %i.ev, ptr %i.es, align 16, !tbaa !60, !alias.scope !113
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cw, i64 208
  %i.ey = load <2 x double>, ptr %i.ex, align 16, !tbaa !60, !noalias !113
  %i.ez = fmul <2 x double> %i.cx, %i.ey
  store <2 x double> %i.ez, ptr %i.ew, align 16, !tbaa !60, !alias.scope !113
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cw, i64 224
  %i.fc = load <2 x double>, ptr %i.fb, align 16, !tbaa !60, !noalias !113
  %i.fd = fmul <2 x double> %i.cx, %i.fc
  store <2 x double> %i.fd, ptr %i.fa, align 16, !tbaa !60, !alias.scope !113
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cw, i64 240
  %i.fg = load <2 x double>, ptr %i.ff, align 16, !tbaa !60, !noalias !113
  %i.fh = fmul <2 x double> %i.cx, %i.fg
  store <2 x double> %i.fh, ptr %i.fe, align 16, !tbaa !60, !alias.scope !113
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cw, i64 256
  %i.fk = load <2 x double>, ptr %i.fj, align 16, !tbaa !60, !noalias !113
  %i.fl = fmul <2 x double> %i.cx, %i.fk
  store <2 x double> %i.fl, ptr %i.fi, align 16, !tbaa !60, !alias.scope !113
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cw, i64 272
  %i.fo = load <2 x double>, ptr %i.fn, align 16, !tbaa !60, !noalias !113
  %i.fp = fmul <2 x double> %i.cx, %i.fo
  store <2 x double> %i.fp, ptr %i.fm, align 16, !tbaa !60, !alias.scope !113
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  call void @_ZN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE20computeQuadraticFormERKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS5_IdLi6ELi1ELi0ELi6ELi1EEE(ptr noundef nonnull align 16 dereferenceable(688) %0, ptr noundef nonnull align 16 dereferenceable(288) %3, ptr noundef nonnull align 16 dereferenceable(48) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.fs = load <2 x double>, ptr %i.fq, align 16, !tbaa !60
  %i.ft = fneg <2 x double> %i.fs
  %i.fu = load <1 x double>, ptr %i.fr, align 16
  %i.fv = shufflevector <1 x double> %i.fu, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fw = fmul <2 x double> %i.fv, %i.ft
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.fy = load <2 x double>, ptr %i.fx, align 16, !tbaa !60
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ga = load <1 x double>, ptr %i.fz, align 8
  %i.gb = shufflevector <1 x double> %i.ga, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gc = fmul <2 x double> %i.fy, %i.gb
  %i.gd = fsub <2 x double> %i.fw, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.gf = load <2 x double>, ptr %i.ge, align 16, !tbaa !60
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.gh = load <1 x double>, ptr %i.gg, align 16
  %i.gi = shufflevector <1 x double> %i.gh, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gj = fmul <2 x double> %i.gf, %i.gi
  %i.gk = fsub <2 x double> %i.gd, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.gm = load <2 x double>, ptr %i.gl, align 16, !tbaa !60
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 616
  %13 = load <1 x double>, ptr %i.gn, align 8
  %i.go = shufflevector <1 x double> %13, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gp = fmul <2 x double> %i.gm, %i.go
  %i.gq = fsub <2 x double> %i.gk, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.gs = load <2 x double>, ptr %i.gr, align 16, !tbaa !60
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %15 = load <2 x double>, ptr %14, align 16      ; 2 uses
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %17 = fmul <2 x double> %i.gs, %16
  %18 = fsub <2 x double> %i.gq, %17
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 544
  %19 = load <2 x double>, ptr %i.gt, align 16, !tbaa !60
  %20 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.gu = fmul <2 x double> %19, %20
  %i.gv = fsub <2 x double> %18, %i.gu
  store <2 x double> %i.gv, ptr %4, align 16, !tbaa !60
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.gy = load <2 x double>, ptr %i.gx, align 16, !tbaa !60
  %i.gz = fneg <2 x double> %i.gy
  %i.ha = fmul <2 x double> %i.fv, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.hc = load <2 x double>, ptr %i.hb, align 16, !tbaa !60
  %i.hd = fmul <2 x double> %i.gb, %i.hc
  %i.he = fsub <2 x double> %i.ha, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.hg = load <2 x double>, ptr %i.hf, align 16, !tbaa !60
  %i.hh = fmul <2 x double> %i.gi, %i.hg
  %i.hi = fsub <2 x double> %i.he, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.hk = load <2 x double>, ptr %i.hj, align 16, !tbaa !60
  %i.hl = fmul <2 x double> %i.go, %i.hk
  %i.hm = fsub <2 x double> %i.hi, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ho = load <2 x double>, ptr %i.hn, align 16, !tbaa !60
  %i.hp = fmul <2 x double> %16, %i.ho
  %i.hq = fsub <2 x double> %i.hm, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.hs = load <2 x double>, ptr %i.hr, align 16, !tbaa !60
  %i.ht = fmul <2 x double> %20, %i.hs
  %i.hu = fsub <2 x double> %i.hq, %i.ht
  store <2 x double> %i.hu, ptr %i.gw, align 16, !tbaa !60
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.hx = load <2 x double>, ptr %i.hw, align 16, !tbaa !60
  %i.hy = fneg <2 x double> %i.hx
  %i.hz = fmul <2 x double> %i.fv, %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ib = load <2 x double>, ptr %i.ia, align 16, !tbaa !60
  %i.ic = fmul <2 x double> %i.gb, %i.ib
  %i.id = fsub <2 x double> %i.hz, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.if = load <2 x double>, ptr %i.ie, align 16, !tbaa !60
  %i.ig = fmul <2 x double> %i.gi, %i.if
  %i.ih = fsub <2 x double> %i.id, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ij = load <2 x double>, ptr %i.ii, align 16, !tbaa !60
  %i.ik = fmul <2 x double> %i.go, %i.ij
  %i.il = fsub <2 x double> %i.ih, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.in = load <2 x double>, ptr %i.im, align 16, !tbaa !60
  %i.io = fmul <2 x double> %16, %i.in
  %i.ip = fsub <2 x double> %i.il, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ir = load <2 x double>, ptr %i.iq, align 16, !tbaa !60
  %i.is = fmul <2 x double> %20, %i.ir
  %i.it = fsub <2 x double> %i.ip, %i.is
  store <2 x double> %i.it, ptr %i.hv, align 16, !tbaa !60
  call void @_ZN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE20computeQuadraticFormERKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS5_IdLi6ELi1ELi0ELi6ELi1EEE(ptr noundef nonnull align 16 dereferenceable(688) %0, ptr noundef nonnull align 16 dereferenceable(288) %i.fq, ptr noundef nonnull align 16 dereferenceable(48) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE16mapHessianMemoryEPdiib(ptr noundef nonnull align 16 dereferenceable(688) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add nsw i32 %3, -1
  %i.b = mul nsw i32 %i.a, %3
  %i.c = sdiv i32 %i.b, 2
  %i.d = add nsw i32 %i.c, %2
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 4 uses
  %i.j = sext i32 %3 to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.n = sext i32 %i.d to i64
  %i.o = load ptr, ptr %i.m, align 16, !tbaa !81
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.n ; 7 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !123
  %.not25 = icmp eq ptr %i.q, %1                  ; 2 uses
  br i1 %4, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not25, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i8, ptr %i.r, align 8, !tbaa !127, !range !105, !noundef !106
  %.not26.not = icmp eq i8 %i.s, 0
  br i1 %.not26.not, label %.sink.split, label %bb.f

bb.d:                                             ; preds = %bb.a
  br i1 %.not25, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.u = load i8, ptr %i.t, align 8, !tbaa !127, !range !105, !noundef !106
  %.not24 = icmp eq i8 %i.u, 0
  br i1 %.not24, label %bb.f, label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  %.sink = phi ptr [ %i.l, %bb.b ], [ %i.l, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %bb.d ]
  %.sink32 = phi ptr [ %i.i, %bb.b ], [ %i.i, %bb.c ], [ %i.l, %bb.e ], [ %i.l, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sink, i64 104
  %i.w = load i32, ptr %i.v, align 8, !tbaa !133
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.sink32, i64 104
  %i.z = load i32, ptr %i.y, align 8, !tbaa !133
  %i.aa = sext i32 %i.z to i64
  store ptr %1, ptr %i.p, align 8, !tbaa !123
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.x, ptr %i.ab, align 8, !tbaa !134
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !134
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e, %bb.c
  %i.ad = zext i1 %4 to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i8 %i.ad, ptr %i.ae, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE14linearizeOplusERNS_17JacobianWorkspaceE(ptr noundef nonnull align 16 dereferenceable(688) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !86  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !43   ; 5 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !77   ; 3 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !135    ; 3 uses
  %i.l = icmp eq i64 %i.g, 8
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.h, -2
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %i.m = and i64 %i.g, 8
  %lcmp.mod.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.07.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod8 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.07.epil.init
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.07.epil.init ; 3 uses
  %sext.epil = shl i64 %.07.epil.init, 32
  %i.q = ashr exact i64 %sext.epil, 28
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !138
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.u = load i32, ptr %i.t, align 8, !tbaa !133
  %i.v = sext i32 %i.u to i64
  store ptr %i.s, ptr %i.p, align 8, !tbaa !123
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 6, ptr %i.w, align 8, !tbaa !134
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.v, ptr %i.x, align 8, !tbaa !134
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.y = load ptr, ptr %0, align 16, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 224
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 16 dereferenceable(688) %0)
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.07 = phi i64 [ 0, %.lr.ph.new ], [ %i.ay, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.07
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.07 ; 3 uses
  %sext = shl i64 %.07, 32
  %i.ae = ashr exact i64 %sext, 28
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !138
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !133
  %i.aj = sext i32 %i.ai to i64
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !123
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 6, ptr %i.ak, align 8, !tbaa !134
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !134
  %i.am = or disjoint i64 %.07, 1                 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.am ; 3 uses
  %sext.1 = shl i64 %i.am, 32
  %i.aq = ashr exact i64 %sext.1, 28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !138
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.au = load i32, ptr %i.at, align 8, !tbaa !133
  %i.av = sext i32 %i.au to i64
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !123
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 6, ptr %i.aw, align 8, !tbaa !134
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !134
  %i.ay = add nuw i64 %.07, 2                     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !140
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE15initialEstimateERKSt3setIPNS_10HyperGraph6VertexESt4lessIS8_ESaIS8_EEPNS_16OptimizableGraph6VertexE(ptr noundef nonnull align 16 dereferenceable(640) %0, ptr noundef nonnull align 1 %1, ptr noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZN3g2o16OptimizableGraph4Edge23initialEstimatePossibleERKSt3setIPNS_10HyperGraph6VertexESt4lessIS5_ESaIS5_EEPNS0_6VertexE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 1 %1, ptr noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  ret double -1.000000e+00
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN3g2o16OptimizableGraph4Edge10createFromEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN3g2o16OptimizableGraph4Edge8createToEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN3g2o16OptimizableGraph4Edge12createVertexEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr null
end_hunk_0
