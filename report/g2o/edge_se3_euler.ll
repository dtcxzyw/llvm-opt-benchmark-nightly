Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_euler?download=true
inline.NumInlined: 5314
inline.NumDeleted: 2988
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZNK3g2o7EdgeSE318getMeasurementDataEPd:bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load <2 x double>, ptr %i.d, align 16, !tbaa !10
  store <2 x double> %i.e, ptr %i.c, align 1, !tbaa !10
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !10
  store <2 x double> %i.h, ptr %i.f, align 1, !tbaa !10
  %i.i = getelementptr i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load double, ptr %i.j, align 16, !tbaa !8
  store double %i.k, ptr %i.i, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o7EdgeSE320measurementDimensionEv(ptr noundef nonnull align 16 dereferenceable(864) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 7
}

declare noundef zeroext i1 @_ZN3g2o7EdgeSE323setMeasurementFromStateEv(ptr noundef nonnull align 16 dereferenceable(864)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE4chi2Ev(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = load <2 x double>, ptr %i.b, align 16, !tbaa !10
  %i.d = load <2 x double>, ptr %i.a, align 16    ; 2 uses
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.f = fmul <2 x double> %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.j = load <1 x double>, ptr %i.i, align 8
  %i.k = shufflevector <1 x double> %i.j, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.l = fmul <2 x double> %i.h, %i.k
  %i.m = fadd <2 x double> %i.f, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.o = load <2 x double>, ptr %i.n, align 16, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.q = load <2 x double>, ptr %i.p, align 16    ; 2 uses
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.s = fmul <2 x double> %i.o, %i.r
  %i.t = fadd <2 x double> %i.m, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.x = load <1 x double>, ptr %i.w, align 8
  %i.y = shufflevector <1 x double> %i.x, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.z = fmul <2 x double> %i.v, %i.y
  %i.aa = fadd <2 x double> %i.t, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ac = load <2 x double>, ptr %i.ab, align 16, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ae = load <2 x double>, ptr %i.ad, align 16  ; 3 uses
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ag = fmul <2 x double> %i.ac, %i.af
  %i.ah = fadd <2 x double> %i.aa, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.aj = load <2 x double>, ptr %i.ai, align 16, !tbaa !10
  %i.ak = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.al = fmul <2 x double> %i.aj, %i.ak
  %i.am = fadd <2 x double> %i.al, %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ao = load <2 x double>, ptr %i.an, align 16, !tbaa !10
  %i.ap = fmul <2 x double> %i.e, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ar = load <2 x double>, ptr %i.aq, align 16, !tbaa !10
  %i.as = fmul <2 x double> %i.k, %i.ar
  %i.at = fadd <2 x double> %i.ap, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.av = load <2 x double>, ptr %i.au, align 16, !tbaa !10
  %i.aw = fmul <2 x double> %i.r, %i.av
  %i.ax = fadd <2 x double> %i.at, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.az = load <2 x double>, ptr %i.ay, align 16, !tbaa !10
  %i.ba = fmul <2 x double> %i.y, %i.az
  %i.bb = fadd <2 x double> %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bd = load <2 x double>, ptr %i.bc, align 16, !tbaa !10
  %i.be = fmul <2 x double> %i.af, %i.bd
  %i.bf = fadd <2 x double> %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bh = load <2 x double>, ptr %i.bg, align 16, !tbaa !10
  %i.bi = fmul <2 x double> %i.ak, %i.bh
  %i.bj = fadd <2 x double> %i.bi, %i.bf
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bl = load <2 x double>, ptr %i.bk, align 16, !tbaa !10
  %i.bm = fmul <2 x double> %i.e, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bo = load <2 x double>, ptr %i.bn, align 16, !tbaa !10
  %i.bp = fmul <2 x double> %i.k, %i.bo
  %i.bq = fadd <2 x double> %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bs = load <2 x double>, ptr %i.br, align 16, !tbaa !10
  %i.bt = fmul <2 x double> %i.r, %i.bs
  %i.bu = fadd <2 x double> %i.bq, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bw = load <2 x double>, ptr %i.bv, align 16, !tbaa !10
  %i.bx = fmul <2 x double> %i.y, %i.bw
  %i.by = fadd <2 x double> %i.bu, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ca = load <2 x double>, ptr %i.bz, align 16, !tbaa !10
  %i.cb = fmul <2 x double> %i.af, %i.ca
  %i.cc = fadd <2 x double> %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ce = load <2 x double>, ptr %i.cd, align 16, !tbaa !10
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
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3ES4_EE22constructQuadraticFormEv(ptr noundef nonnull align 16 dereferenceable(712) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2.i = alloca <2 x double>, align 16      ; 5 uses
  %1 = alloca %"class.Eigen::Matrix.326", align 8 ; 4 uses
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 7 uses
  %3 = alloca %"class.Eigen::Matrix.13", align 16 ; 22 uses
  %4 = alloca %"class.Eigen::Matrix", align 16    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !61
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 16 dereferenceable(640) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !61  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.g, double noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.m = load <2 x double>, ptr %i.k, align 16, !tbaa !10
  %i.n = fneg <2 x double> %i.m
  %i.o = load <1 x double>, ptr %i.l, align 16
  %i.p = shufflevector <1 x double> %i.o, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.q = fmul <2 x double> %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.s = load <2 x double>, ptr %i.r, align 16, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.u = load <1 x double>, ptr %i.t, align 8
  %i.v = shufflevector <1 x double> %i.u, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.w = fmul <2 x double> %i.s, %i.v
  %i.x = fsub <2 x double> %i.q, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.z = load <2 x double>, ptr %i.y, align 16, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ab = load <1 x double>, ptr %i.aa, align 16
  %i.ac = shufflevector <1 x double> %i.ab, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ad = fmul <2 x double> %i.z, %i.ac
  %i.ae = fsub <2 x double> %i.x, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ag = load <2 x double>, ptr %i.af, align 16, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 616
  %5 = load <1 x double>, ptr %i.ah, align 8
  %i.ai = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aj = fmul <2 x double> %i.ag, %i.ai
  %i.ak = fsub <2 x double> %i.ae, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.am = load <2 x double>, ptr %i.al, align 16, !tbaa !10
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %7 = load <2 x double>, ptr %6, align 16        ; 2 uses
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %9 = fmul <2 x double> %i.am, %8
  %10 = fsub <2 x double> %i.ak, %9
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 544
  %11 = load <2 x double>, ptr %i.an, align 16, !tbaa !10
  %12 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ao = fmul <2 x double> %11, %12
  %i.ap = fsub <2 x double> %10, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.as = load <2 x double>, ptr %i.ar, align 16, !tbaa !10
  %i.at = fneg <2 x double> %i.as
  %i.au = fmul <2 x double> %i.p, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aw = load <2 x double>, ptr %i.av, align 16, !tbaa !10
  %i.ax = fmul <2 x double> %i.v, %i.aw
  %i.ay = fsub <2 x double> %i.au, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ba = load <2 x double>, ptr %i.az, align 16, !tbaa !10
  %i.bb = fmul <2 x double> %i.ac, %i.ba
  %i.bc = fsub <2 x double> %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.be = load <2 x double>, ptr %i.bd, align 16, !tbaa !10
  %i.bf = fmul <2 x double> %i.ai, %i.be
  %i.bg = fsub <2 x double> %i.bc, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bi = load <2 x double>, ptr %i.bh, align 16, !tbaa !10
  %i.bj = fmul <2 x double> %8, %i.bi
  %i.bk = fsub <2 x double> %i.bg, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bm = load <2 x double>, ptr %i.bl, align 16, !tbaa !10
  %i.bn = fmul <2 x double> %12, %i.bm
  %i.bo = fsub <2 x double> %i.bk, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.br = load <2 x double>, ptr %i.bq, align 16, !tbaa !10
  %i.bs = fneg <2 x double> %i.br
  %i.bt = fmul <2 x double> %i.p, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bv = load <2 x double>, ptr %i.bu, align 16, !tbaa !10
  %i.bw = fmul <2 x double> %i.v, %i.bv
  %i.bx = fsub <2 x double> %i.bt, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bz = load <2 x double>, ptr %i.by, align 16, !tbaa !10
  %i.ca = fmul <2 x double> %i.ac, %i.bz
  %i.cb = fsub <2 x double> %i.bx, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cd = load <2 x double>, ptr %i.cc, align 16, !tbaa !10
  %i.ce = fmul <2 x double> %i.ai, %i.cd
  %i.cf = fsub <2 x double> %i.cb, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ch = load <2 x double>, ptr %i.cg, align 16, !tbaa !10
  %i.ci = fmul <2 x double> %8, %i.ch
  %i.cj = fsub <2 x double> %i.cf, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.cl = load <2 x double>, ptr %i.ck, align 16, !tbaa !10
  %i.cm = fmul <2 x double> %12, %i.cl
  %i.cn = fsub <2 x double> %i.cj, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load double, ptr %i.co, align 8, !tbaa !8, !noalias !85 ; 2 uses
  %i.cq = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cs = fmul <2 x double> %i.ap, %i.cr
  store <2 x double> %i.cs, ptr %2, align 16, !tbaa !10
  %i.ct = fmul <2 x double> %i.bo, %i.cr
  store <2 x double> %i.ct, ptr %i.aq, align 16, !tbaa !10
  %i.cu = fmul <2 x double> %i.cn, %i.cr
  store <2 x double> %i.cu, ptr %i.bp, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i)
  store double %i.cp, ptr %.sroa.2.i, align 16, !tbaa !91, !alias.scope !93, !noalias !88
  %.sroa.2.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.i, i64 8
  store ptr %i.k, ptr %.sroa.2.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !13, !alias.scope !93, !noalias !88
  %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i = load <2 x double>, ptr %.sroa.2.i, align 16, !noalias !88 ; 2 uses
  %bc.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i to <2 x i64>
  %i.cv = extractelement <2 x i64> %bc.i.i.i.i.i.i.i, i64 1
  %i.cw = inttoptr i64 %i.cv to ptr               ; 18 uses
  %i.cx = shufflevector <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i, <2 x double> poison, <2 x i32> zeroinitializer ; 18 uses
  %i.cy = load <2 x double>, ptr %i.cw, align 16, !tbaa !10, !noalias !88
  %i.cz = fmul <2 x double> %i.cx, %i.cy
  store <2 x double> %i.cz, ptr %3, align 16, !tbaa !10, !alias.scope !88
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.dc = load <2 x double>, ptr %i.db, align 16, !tbaa !10, !noalias !88
  %i.dd = fmul <2 x double> %i.cx, %i.dc
  store <2 x double> %i.dd, ptr %i.da, align 16, !tbaa !10, !alias.scope !88
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dg = load <2 x double>, ptr %i.df, align 16, !tbaa !10, !noalias !88
  %i.dh = fmul <2 x double> %i.cx, %i.dg
  store <2 x double> %i.dh, ptr %i.de, align 16, !tbaa !10, !alias.scope !88
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.dk = load <2 x double>, ptr %i.dj, align 16, !tbaa !10, !noalias !88
  %i.dl = fmul <2 x double> %i.cx, %i.dk
  store <2 x double> %i.dl, ptr %i.di, align 16, !tbaa !10, !alias.scope !88
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  %i.do = load <2 x double>, ptr %i.dn, align 16, !tbaa !10, !noalias !88
  %i.dp = fmul <2 x double> %i.cx, %i.do
  store <2 x double> %i.dp, ptr %i.dm, align 16, !tbaa !10, !alias.scope !88
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cw, i64 80
  %i.ds = load <2 x double>, ptr %i.dr, align 16, !tbaa !10, !noalias !88
  %i.dt = fmul <2 x double> %i.cx, %i.ds
  store <2 x double> %i.dt, ptr %i.dq, align 16, !tbaa !10, !alias.scope !88
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  %i.dw = load <2 x double>, ptr %i.dv, align 16, !tbaa !10, !noalias !88
  %i.dx = fmul <2 x double> %i.cx, %i.dw
  store <2 x double> %i.dx, ptr %i.du, align 16, !tbaa !10, !alias.scope !88
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cw, i64 112
  %i.ea = load <2 x double>, ptr %i.dz, align 16, !tbaa !10, !noalias !88
  %i.eb = fmul <2 x double> %i.cx, %i.ea
  store <2 x double> %i.eb, ptr %i.dy, align 16, !tbaa !10, !alias.scope !88
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cw, i64 128
  %i.ee = load <2 x double>, ptr %i.ed, align 16, !tbaa !10, !noalias !88
  %i.ef = fmul <2 x double> %i.cx, %i.ee
  store <2 x double> %i.ef, ptr %i.ec, align 16, !tbaa !10, !alias.scope !88
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cw, i64 144
  %i.ei = load <2 x double>, ptr %i.eh, align 16, !tbaa !10, !noalias !88
  %i.ej = fmul <2 x double> %i.cx, %i.ei
  store <2 x double> %i.ej, ptr %i.eg, align 16, !tbaa !10, !alias.scope !88
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.el = getelementptr inbounds nuw i8, ptr %i.cw, i64 160
  %i.em = load <2 x double>, ptr %i.el, align 16, !tbaa !10, !noalias !88
  %i.en = fmul <2 x double> %i.cx, %i.em
  store <2 x double> %i.en, ptr %i.ek, align 16, !tbaa !10, !alias.scope !88
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cw, i64 176
  %i.eq = load <2 x double>, ptr %i.ep, align 16, !tbaa !10, !noalias !88
  %i.er = fmul <2 x double> %i.cx, %i.eq
  store <2 x double> %i.er, ptr %i.eo, align 16, !tbaa !10, !alias.scope !88
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.et = getelementptr inbounds nuw i8, ptr %i.cw, i64 192
  %i.eu = load <2 x double>, ptr %i.et, align 16, !tbaa !10, !noalias !88
  %i.ev = fmul <2 x double> %i.cx, %i.eu
  store <2 x double> %i.ev, ptr %i.es, align 16, !tbaa !10, !alias.scope !88
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cw, i64 208
  %i.ey = load <2 x double>, ptr %i.ex, align 16, !tbaa !10, !noalias !88
  %i.ez = fmul <2 x double> %i.cx, %i.ey
  store <2 x double> %i.ez, ptr %i.ew, align 16, !tbaa !10, !alias.scope !88
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cw, i64 224
  %i.fc = load <2 x double>, ptr %i.fb, align 16, !tbaa !10, !noalias !88
  %i.fd = fmul <2 x double> %i.cx, %i.fc
  store <2 x double> %i.fd, ptr %i.fa, align 16, !tbaa !10, !alias.scope !88
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cw, i64 240
  %i.fg = load <2 x double>, ptr %i.ff, align 16, !tbaa !10, !noalias !88
  %i.fh = fmul <2 x double> %i.cx, %i.fg
  store <2 x double> %i.fh, ptr %i.fe, align 16, !tbaa !10, !alias.scope !88
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cw, i64 256
  %i.fk = load <2 x double>, ptr %i.fj, align 16, !tbaa !10, !noalias !88
  %i.fl = fmul <2 x double> %i.cx, %i.fk
  store <2 x double> %i.fl, ptr %i.fi, align 16, !tbaa !10, !alias.scope !88
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cw, i64 272
  %i.fo = load <2 x double>, ptr %i.fn, align 16, !tbaa !10, !noalias !88
  %i.fp = fmul <2 x double> %i.cx, %i.fo
  store <2 x double> %i.fp, ptr %i.fm, align 16, !tbaa !10, !alias.scope !88
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  call void @_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3ES4_EE23constructQuadraticFormNILi0EEEvRKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS7_IdLi6ELi1ELi0ELi6ELi1EEE(ptr noundef nonnull align 16 dereferenceable(712) %0, ptr noundef nonnull align 16 dereferenceable(288) %3, ptr noundef nonnull align 16 dereferenceable(48) %2)
  call void @_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3ES4_EE23constructQuadraticFormNILi1EEEvRKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS7_IdLi6ELi1ELi0ELi6ELi1EEE(ptr noundef nonnull align 16 dereferenceable(712) %0, ptr noundef nonnull align 16 dereferenceable(288) %3, ptr noundef nonnull align 16 dereferenceable(48) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.fs = load <2 x double>, ptr %i.fq, align 16, !tbaa !10
  %i.ft = fneg <2 x double> %i.fs
  %i.fu = load <1 x double>, ptr %i.fr, align 16
  %i.fv = shufflevector <1 x double> %i.fu, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fw = fmul <2 x double> %i.fv, %i.ft
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.fy = load <2 x double>, ptr %i.fx, align 16, !tbaa !10
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ga = load <1 x double>, ptr %i.fz, align 8
  %i.gb = shufflevector <1 x double> %i.ga, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gc = fmul <2 x double> %i.fy, %i.gb
  %i.gd = fsub <2 x double> %i.fw, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.gf = load <2 x double>, ptr %i.ge, align 16, !tbaa !10
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.gh = load <1 x double>, ptr %i.gg, align 16
  %i.gi = shufflevector <1 x double> %i.gh, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gj = fmul <2 x double> %i.gf, %i.gi
  %i.gk = fsub <2 x double> %i.gd, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.gm = load <2 x double>, ptr %i.gl, align 16, !tbaa !10
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 616
  %13 = load <1 x double>, ptr %i.gn, align 8
  %i.go = shufflevector <1 x double> %13, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gp = fmul <2 x double> %i.gm, %i.go
  %i.gq = fsub <2 x double> %i.gk, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.gs = load <2 x double>, ptr %i.gr, align 16, !tbaa !10
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %15 = load <2 x double>, ptr %14, align 16      ; 2 uses
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %17 = fmul <2 x double> %i.gs, %16
  %18 = fsub <2 x double> %i.gq, %17
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 544
  %19 = load <2 x double>, ptr %i.gt, align 16, !tbaa !10
  %20 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.gu = fmul <2 x double> %19, %20
  %i.gv = fsub <2 x double> %18, %i.gu
  store <2 x double> %i.gv, ptr %4, align 16, !tbaa !10
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.gy = load <2 x double>, ptr %i.gx, align 16, !tbaa !10
  %i.gz = fneg <2 x double> %i.gy
  %i.ha = fmul <2 x double> %i.fv, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.hc = load <2 x double>, ptr %i.hb, align 16, !tbaa !10
  %i.hd = fmul <2 x double> %i.gb, %i.hc
  %i.he = fsub <2 x double> %i.ha, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.hg = load <2 x double>, ptr %i.hf, align 16, !tbaa !10
  %i.hh = fmul <2 x double> %i.gi, %i.hg
  %i.hi = fsub <2 x double> %i.he, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.hk = load <2 x double>, ptr %i.hj, align 16, !tbaa !10
  %i.hl = fmul <2 x double> %i.go, %i.hk
  %i.hm = fsub <2 x double> %i.hi, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ho = load <2 x double>, ptr %i.hn, align 16, !tbaa !10
  %i.hp = fmul <2 x double> %16, %i.ho
  %i.hq = fsub <2 x double> %i.hm, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.hs = load <2 x double>, ptr %i.hr, align 16, !tbaa !10
  %i.ht = fmul <2 x double> %20, %i.hs
  %i.hu = fsub <2 x double> %i.hq, %i.ht
  store <2 x double> %i.hu, ptr %i.gw, align 16, !tbaa !10
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.hx = load <2 x double>, ptr %i.hw, align 16, !tbaa !10
  %i.hy = fneg <2 x double> %i.hx
  %i.hz = fmul <2 x double> %i.fv, %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ib = load <2 x double>, ptr %i.ia, align 16, !tbaa !10
  %i.ic = fmul <2 x double> %i.gb, %i.ib
  %i.id = fsub <2 x double> %i.hz, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.if = load <2 x double>, ptr %i.ie, align 16, !tbaa !10
  %i.ig = fmul <2 x double> %i.gi, %i.if
  %i.ih = fsub <2 x double> %i.id, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ij = load <2 x double>, ptr %i.ii, align 16, !tbaa !10
  %i.ik = fmul <2 x double> %i.go, %i.ij
  %i.il = fsub <2 x double> %i.ih, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.in = load <2 x double>, ptr %i.im, align 16, !tbaa !10
  %i.io = fmul <2 x double> %16, %i.in
  %i.ip = fsub <2 x double> %i.il, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ir = load <2 x double>, ptr %i.iq, align 16, !tbaa !10
  %i.is = fmul <2 x double> %20, %i.ir
  %i.it = fsub <2 x double> %i.ip, %i.is
  store <2 x double> %i.it, ptr %i.hv, align 16, !tbaa !10
  call void @_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3ES4_EE23constructQuadraticFormNILi0EEEvRKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS7_IdLi6ELi1ELi0ELi6ELi1EEE(ptr noundef nonnull align 16 dereferenceable(712) %0, ptr noundef nonnull align 16 dereferenceable(288) %i.fq, ptr noundef nonnull align 16 dereferenceable(48) %4)
  call void @_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3ES4_EE23constructQuadraticFormNILi1EEEvRKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS7_IdLi6ELi1ELi0ELi6ELi1EEE(ptr noundef nonnull align 16 dereferenceable(712) %0, ptr noundef nonnull align 16 dereferenceable(288) %i.fq, ptr noundef nonnull align 16 dereferenceable(48) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3ES4_EE16mapHessianMemoryEPdiib(ptr noundef nonnull align 16 dereferenceable(712) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = zext i1 %4 to i8
  %i.b = add nsw i32 %3, -1
  %i.c = mul nsw i32 %i.b, %3
  %i.d = sdiv i32 %i.c, 2
  %i.e = add nsw i32 %i.d, %2                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  store i8 %i.a, ptr %i.h, align 1, !tbaa !96
  %i.i = icmp eq i32 %i.e, 0
  br i1 %i.i, label %_ZN3g2o13tuple_apply_iINS_17MapHessianMemoryKESt5tupleIJN5Eigen3MapINS3_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS3_6StrideILi0ELi0EEEEEEEEEvOT_RT0_i.exit.sink.split, label %_ZN3g2o13tuple_apply_iINS_17MapHessianMemoryKESt5tupleIJN5Eigen3MapINS3_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS3_6StrideILi0ELi0EEEEEEEEEvOT_RT0_i.exit

_ZN3g2o13tuple_apply_iINS_17MapHessianMemoryKESt5tupleIJN5Eigen3MapINS3_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS3_6StrideILi0ELi0EEEEEEEEEvOT_RT0_i.exit.sink.split: ; preds = %bb.a
  %. = select i1 %4, i64 664, i64 648
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.
  store ptr %1, ptr %i.j, align 8, !tbaa !97
  br label %_ZN3g2o13tuple_apply_iINS_17MapHessianMemoryKESt5tupleIJN5Eigen3MapINS3_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS3_6StrideILi0ELi0EEEEEEEEEvOT_RT0_i.exit

_ZN3g2o13tuple_apply_iINS_17MapHessianMemoryKESt5tupleIJN5Eigen3MapINS3_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS3_6StrideILi0ELi0EEEEEEEEEvOT_RT0_i.exit: ; preds = %bb.a, %_ZN3g2o13tuple_apply_iINS_17MapHessianMemoryKESt5tupleIJN5Eigen3MapINS3_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS3_6StrideILi0ELi0EEEEEEEEEvOT_RT0_i.exit.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3ES4_EE14linearizeOplusERNS_17JacobianWorkspaceE(ptr noundef nonnull align 16 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.c = load ptr, ptr %1, align 8, !tbaa !101    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104
  store ptr %i.d, ptr %i.b, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104
  store ptr %i.f, ptr %i.a, align 8, !tbaa !106
  %i.g = load ptr, ptr %0, align 16, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 16 dereferenceable(712) %0)
  ret void
}

declare void @_ZN3g2o7EdgeSE315initialEstimateERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE(ptr noundef nonnull align 16 dereferenceable(864), ptr noundef nonnull align 1, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZN3g2o7EdgeSE323initialEstimatePossibleERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE(ptr noundef nonnull align 16 dereferenceable(864) %0, ptr noundef nonnull align 1 %1, ptr noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  ret double 1.000000e+00
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
}

declare noundef zeroext i1 @_ZN3g2o16OptimizableGraph4Edge13resolveCachesEv(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o7EdgeSE314setMeasurementERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr noundef nonnull align 16 dereferenceable(864) %0, ptr noundef nonnull align 16 dereferenceable(128) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load <2 x double>, ptr %1, align 16, !tbaa !10
  store <2 x double> %i.b, ptr %i.a, align 16, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load <2 x double>, ptr %i.d, align 16, !tbaa !10
  store <2 x double> %i.e, ptr %i.c, align 16, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !10
  store <2 x double> %i.h, ptr %i.f, align 16, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = load <2 x double>, ptr %i.j, align 16, !tbaa !10
  store <2 x double> %i.k, ptr %i.i, align 16, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.n = load <2 x double>, ptr %i.m, align 16, !tbaa !10
  store <2 x double> %i.n, ptr %i.l, align 16, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.q = load <2 x double>, ptr %i.p, align 16, !tbaa !10
  store <2 x double> %i.q, ptr %i.o, align 16, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.t = load <2 x double>, ptr %i.s, align 16, !tbaa !10
  store <2 x double> %i.t, ptr %i.r, align 16, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.w = load <2 x double>, ptr %i.v, align 16, !tbaa !10
  store <2 x double> %i.w, ptr %i.u, align 16, !tbaa !10
  %i.x = load <2 x double>, ptr %1, align 16
  %i.y = load double, ptr %i.g, align 16, !tbaa !8, !noalias !108
  %.sroa.0.8.vec.insert = insertelement <2 x double> %i.x, double %i.y, i64 1 ; 2 uses
  %i.z = load double, ptr %i.m, align 16, !tbaa !8, !noalias !108 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = load <2 x double>, ptr %2, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !8, !noalias !108
  %.sroa.9.40.vec.insert = insertelement <2 x double> %3, double %i.ab, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !8, !noalias !108 ; 2 uses
  %i.ae = load <2 x double>, ptr %i.d, align 16
  %i.af = load double, ptr %i.j, align 16, !tbaa !8, !noalias !108
  %.sroa.15.72.vec.insert = insertelement <2 x double> %i.ae, double %i.af, i64 1 ; 2 uses
  %i.ag = load double, ptr %i.p, align 16, !tbaa !8, !noalias !108 ; 2 uses
  %i.ah = fneg <2 x double> %.sroa.0.8.vec.insert
  %i.ai = load double, ptr %i.s, align 16, !tbaa !8, !noalias !108 ; 2 uses
  %i.aj = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x double> %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.an = load double, ptr %i.am, align 8, !tbaa !8, !noalias !108 ; 2 uses
  %i.ao = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x double> %.sroa.9.40.vec.insert, %i.ap
  %i.ar = fsub <2 x double> %i.al, %i.aq
  %i.as = load double, ptr %i.v, align 16, !tbaa !8, !noalias !108 ; 2 uses
  %i.at = insertelement <2 x double> poison, double %i.as, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x double> %.sroa.15.72.vec.insert, %i.au
  %i.aw = fsub <2 x double> %i.ar, %i.av
  %i.ax = fneg double %i.ag
  %i.ay = fmul double %i.as, %i.ax
  %i.az = fmul double %i.ad, %i.an
  %i.ba = fsub double %i.ay, %i.az
  %i.bb = fmul double %i.z, %i.ai
  %i.bc = fsub double %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <2 x double> %.sroa.0.8.vec.insert, ptr %i.bd, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 752
  store double %i.z, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 760
  store double 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 768
  store <2 x double> %.sroa.9.40.vec.insert, ptr %.sroa.9.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 784
  store double %i.ad, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 792
  store double 0.000000e+00, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 800
  store <2 x double> %.sroa.15.72.vec.insert, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 816
  store double %i.ag, ptr %.sroa.18.0..sroa_idx, align 16
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 824
  store double 0.000000e+00, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 832
  store <2 x double> %i.aw, ptr %.sroa.21.0..sroa_idx, align 16
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 848
  store double %i.bc, ptr %.sroa.22.0..sroa_idx, align 16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 856
  store double 1.000000e+00, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE4rankEv(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !111
  ret i32 %i.b
}

declare void @_ZN3g2o7EdgeSE314linearizeOplusEv(ptr noundef nonnull align 16 dereferenceable(864)) unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn40_N3g2o12EdgeSE3EulerD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(864) dereferenceable(864) %i.a) #22
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn40_N3g2o12EdgeSE3EulerD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40 ; 2 uses
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(864) dereferenceable(864) %i.a) #22
  tail call void @_ZdlPvm(ptr noundef nonnull align 16 dereferenceable(864) %i.a, i64 noundef 864) #23
  ret void
}

declare void @_ZN3g2o8internal10toVectorQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix.92") align 8, ptr noundef nonnull align 16 dereferenceable(128)) local_unnamed_addr #2

declare void @_ZN3g2o8internal12fromVectorQTERKN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEE(ptr dead_on_unwind writable sret(%"class.Eigen::Transform") align 16, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEENS_7ProductINS4_INS_9TransposeIS3_EES3_Li0EEES3_Li1EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS8_RKSA_(ptr noundef nonnull align 16 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112, !nonnull !60, !align !115 ; 18 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %.pre.i = load <2 x double>, ptr %i.d, align 16, !tbaa !10 ; 6 uses
  %.pre18.i = load <2 x double>, ptr %i.e, align 16, !tbaa !10 ; 6 uses
  %.pre19.i = load <2 x double>, ptr %i.f, align 16, !tbaa !10 ; 6 uses
  %.pre20.i = load <2 x double>, ptr %i.g, align 16, !tbaa !10 ; 6 uses
  %.pre21.i = load <2 x double>, ptr %i.h, align 16, !tbaa !10 ; 6 uses
  %.pre22.i = load <2 x double>, ptr %i.i, align 16, !tbaa !10 ; 6 uses
  %.pre23.i = load <2 x double>, ptr %i.j, align 16, !tbaa !10 ; 6 uses
  %.pre24.i = load <2 x double>, ptr %i.k, align 16, !tbaa !10 ; 6 uses
  %.pre25.i = load <2 x double>, ptr %i.l, align 16, !tbaa !10 ; 6 uses
  %.pre26.i = load <2 x double>, ptr %i.m, align 16, !tbaa !10 ; 6 uses
  %.pre27.i = load <2 x double>, ptr %i.n, align 16, !tbaa !10 ; 6 uses
  %.pre28.i = load <2 x double>, ptr %i.o, align 16, !tbaa !10 ; 6 uses
  %.pre29.i = load <2 x double>, ptr %i.p, align 16, !tbaa !10 ; 6 uses
  %.pre30.i = load <2 x double>, ptr %i.q, align 16, !tbaa !10 ; 6 uses
  %.pre31.i = load <2 x double>, ptr %i.r, align 16, !tbaa !10 ; 6 uses
  %.pre32.i = load <2 x double>, ptr %i.s, align 16, !tbaa !10 ; 6 uses
  %.pre33.i = load <2 x double>, ptr %i.t, align 16, !tbaa !10 ; 6 uses
  %.pre34.i = load <2 x double>, ptr %i.u, align 16, !tbaa !10 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.x = load <2 x double>, ptr %i.b, align 16, !tbaa !10 ; 6 uses
  %i.y = fmul <2 x double> %.pre.i, %i.x
  %i.z = load <2 x double>, ptr %i.v, align 16, !tbaa !10 ; 6 uses
  %i.aa = fmul <2 x double> %.pre18.i, %i.z
  %i.ab = load <2 x double>, ptr %i.w, align 16, !tbaa !10 ; 6 uses
  %i.ac = fmul <2 x double> %.pre19.i, %i.ab
  %i.ad = fadd <2 x double> %i.aa, %i.ac
  %i.ae = fadd <2 x double> %i.y, %i.ad           ; 2 uses
  %i.af = fmul <2 x double> %.pre20.i, %i.x
  %i.ag = fmul <2 x double> %.pre21.i, %i.z
  %i.ah = fmul <2 x double> %.pre22.i, %i.ab
  %i.ai = fadd <2 x double> %i.ag, %i.ah
  %i.aj = fadd <2 x double> %i.af, %i.ai          ; 2 uses
  %i.ak = shufflevector <2 x double> %i.ae, <2 x double> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.al = shufflevector <2 x double> %i.ae, <2 x double> %i.aj, <2 x i32> <i32 1, i32 3>
  %i.am = fadd <2 x double> %i.ak, %i.al
  %i.an = fmul <2 x double> %.pre23.i, %i.x
  %i.ao = fmul <2 x double> %.pre24.i, %i.z
  %i.ap = fmul <2 x double> %.pre25.i, %i.ab
  %i.aq = fadd <2 x double> %i.ao, %i.ap
  %i.ar = fadd <2 x double> %i.an, %i.aq          ; 2 uses
  %i.as = fmul <2 x double> %.pre26.i, %i.x
  %i.at = fmul <2 x double> %.pre27.i, %i.z
  %i.au = fmul <2 x double> %.pre28.i, %i.ab
  %i.av = fadd <2 x double> %i.at, %i.au
  %i.aw = fadd <2 x double> %i.as, %i.av          ; 2 uses
  %i.ax = shufflevector <2 x double> %i.ar, <2 x double> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.ay = shufflevector <2 x double> %i.ar, <2 x double> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.az = fadd <2 x double> %i.ax, %i.ay
  %i.ba = fmul <2 x double> %.pre29.i, %i.x
  %i.bb = fmul <2 x double> %.pre30.i, %i.z
  %i.bc = fmul <2 x double> %.pre31.i, %i.ab
  %i.bd = fadd <2 x double> %i.bb, %i.bc
  %i.be = fadd <2 x double> %i.ba, %i.bd          ; 2 uses
  %i.bf = fmul <2 x double> %.pre32.i, %i.x
  %i.bg = fmul <2 x double> %.pre33.i, %i.z
  %i.bh = fmul <2 x double> %.pre34.i, %i.ab
  %i.bi = fadd <2 x double> %i.bg, %i.bh
  %i.bj = fadd <2 x double> %i.bf, %i.bi          ; 2 uses
  %i.bk = shufflevector <2 x double> %i.be, <2 x double> %i.bj, <2 x i32> <i32 0, i32 2>
  %i.bl = shufflevector <2 x double> %i.be, <2 x double> %i.bj, <2 x i32> <i32 1, i32 3>
  %i.bm = fadd <2 x double> %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bq = load <2 x double>, ptr %i.bn, align 16, !tbaa !10 ; 6 uses
  %i.br = fmul <2 x double> %.pre.i, %i.bq
  %i.bs = load <2 x double>, ptr %i.bo, align 16, !tbaa !10 ; 6 uses
  %i.bt = fmul <2 x double> %.pre18.i, %i.bs
  %i.bu = load <2 x double>, ptr %i.bp, align 16, !tbaa !10 ; 6 uses
  %i.bv = fmul <2 x double> %.pre19.i, %i.bu
  %i.bw = fadd <2 x double> %i.bt, %i.bv
  %i.bx = fadd <2 x double> %i.br, %i.bw          ; 2 uses
  %i.by = fmul <2 x double> %.pre20.i, %i.bq
  %i.bz = fmul <2 x double> %.pre21.i, %i.bs
end_hunk_0
