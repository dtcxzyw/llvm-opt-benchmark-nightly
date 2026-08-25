Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_euler?download=true
inline.NumInlined: 5314
inline.NumDeleted: 2988
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN3g2o12EdgeSE3EulerD0Ev:bb.a
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(864) dereferenceable(864) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 864) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph4Edge11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3ES4_EE6resizeEm(ptr noundef nonnull align 16 dereferenceable(712) %0, i64 noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o10HyperGraph4Edge6resizeEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3ES4_EE16allVerticesFixedEv(ptr noundef nonnull align 16 dereferenceable(712) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !40, !range !59, !noundef !60
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3ES4_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.j = load i8, ptr %i.i, align 4, !tbaa !40, !range !59, !noundef !60
  %i.k = trunc nuw i8 %i.j to i1
  br label %_ZNK3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3ES4_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

_ZNK3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3ES4_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

declare void @_ZN3g2o7EdgeSE312computeErrorEv(ptr noundef nonnull align 16 dereferenceable(864)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o7EdgeSE318setMeasurementDataEPKd(ptr noundef nonnull align 16 dereferenceable(864) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Transform", align 16 ; 4 uses
  %3 = alloca %"class.Eigen::Matrix.92", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !10
  store <2 x double> %i.a, ptr %3, align 16, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 1, !tbaa !10
  store <2 x double> %i.d, ptr %i.b, align 16, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x double>, ptr %i.f, align 1, !tbaa !10
  store <2 x double> %i.g, ptr %i.e, align 16, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.i = getelementptr i8, ptr %1, i64 48
  %i.j = load double, ptr %i.i, align 8, !tbaa !8
  store double %i.j, ptr %i.h, align 16, !tbaa !8
  call void @_ZN3g2o8internal12fromVectorQTERKN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Transform") align 16 %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
  %i.k = load ptr, ptr %0, align 16, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 16 dereferenceable(864) %0, ptr noundef nonnull align 16 dereferenceable(128) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o7EdgeSE318getMeasurementDataEPd(ptr noundef nonnull align 16 dereferenceable(864) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.92", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN3g2o8internal10toVectorQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.92") align 8 %2, ptr noundef nonnull align 16 dereferenceable(128) %i.a)
  %i.b = load <2 x double>, ptr %2, align 16, !tbaa !10
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !10
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
  %i.ai = load <2 x double>, ptr %i.ah, align 8   ; 2 uses
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ak = fmul <2 x double> %i.ag, %i.aj
  %i.al = fsub <2 x double> %i.ae, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.an = load <2 x double>, ptr %i.am, align 16, !tbaa !10
  %i.ao = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ap = fmul <2 x double> %i.an, %i.ao
  %i.aq = fsub <2 x double> %i.al, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.as = load <2 x double>, ptr %i.ar, align 16, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.au = load double, ptr %i.at, align 8, !tbaa !8
  %i.av = insertelement <2 x double> poison, double %i.au, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ax = fmul <2 x double> %i.as, %i.aw
  %i.ay = fsub <2 x double> %i.aq, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bb = load <2 x double>, ptr %i.ba, align 16, !tbaa !10
  %i.bc = fneg <2 x double> %i.bb
  %i.bd = fmul <2 x double> %i.p, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bf = load <2 x double>, ptr %i.be, align 16, !tbaa !10
  %i.bg = fmul <2 x double> %i.v, %i.bf
  %i.bh = fsub <2 x double> %i.bd, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bj = load <2 x double>, ptr %i.bi, align 16, !tbaa !10
  %i.bk = fmul <2 x double> %i.ac, %i.bj
  %i.bl = fsub <2 x double> %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bn = load <2 x double>, ptr %i.bm, align 16, !tbaa !10
  %i.bo = fmul <2 x double> %i.aj, %i.bn
  %i.bp = fsub <2 x double> %i.bl, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.br = load <2 x double>, ptr %i.bq, align 16, !tbaa !10
  %i.bs = fmul <2 x double> %i.ao, %i.br
  %i.bt = fsub <2 x double> %i.bp, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bv = load <2 x double>, ptr %i.bu, align 16, !tbaa !10
  %i.bw = fmul <2 x double> %i.aw, %i.bv
  %i.bx = fsub <2 x double> %i.bt, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ca = load <2 x double>, ptr %i.bz, align 16, !tbaa !10
  %i.cb = fneg <2 x double> %i.ca
  %i.cc = fmul <2 x double> %i.p, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ce = load <2 x double>, ptr %i.cd, align 16, !tbaa !10
  %i.cf = fmul <2 x double> %i.v, %i.ce
  %i.cg = fsub <2 x double> %i.cc, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ci = load <2 x double>, ptr %i.ch, align 16, !tbaa !10
  %i.cj = fmul <2 x double> %i.ac, %i.ci
  %i.ck = fsub <2 x double> %i.cg, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cm = load <2 x double>, ptr %i.cl, align 16, !tbaa !10
  %i.cn = fmul <2 x double> %i.aj, %i.cm
  %i.co = fsub <2 x double> %i.ck, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.cq = load <2 x double>, ptr %i.cp, align 16, !tbaa !10
  %i.cr = fmul <2 x double> %i.ao, %i.cq
  %i.cs = fsub <2 x double> %i.co, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.cu = load <2 x double>, ptr %i.ct, align 16, !tbaa !10
  %i.cv = fmul <2 x double> %i.aw, %i.cu
  %i.cw = fsub <2 x double> %i.cs, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !8, !noalias !85 ; 2 uses
  %i.cz = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.db = fmul <2 x double> %i.ay, %i.da
  store <2 x double> %i.db, ptr %2, align 16, !tbaa !10
  %i.dc = fmul <2 x double> %i.bx, %i.da
  store <2 x double> %i.dc, ptr %i.az, align 16, !tbaa !10
  %i.dd = fmul <2 x double> %i.cw, %i.da
  store <2 x double> %i.dd, ptr %i.by, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i)
  store double %i.cy, ptr %.sroa.2.i, align 16, !tbaa !91, !alias.scope !93, !noalias !88
  %.sroa.2.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.i, i64 8
  store ptr %i.k, ptr %.sroa.2.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !13, !alias.scope !93, !noalias !88
  %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i = load <2 x double>, ptr %.sroa.2.i, align 16, !noalias !88 ; 2 uses
  %bc.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i to <2 x i64>
  %i.de = extractelement <2 x i64> %bc.i.i.i.i.i.i.i, i64 1
  %i.df = inttoptr i64 %i.de to ptr               ; 18 uses
  %i.dg = shufflevector <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i, <2 x double> poison, <2 x i32> zeroinitializer ; 18 uses
  %i.dh = load <2 x double>, ptr %i.df, align 16, !tbaa !10, !noalias !88
  %i.di = fmul <2 x double> %i.dg, %i.dh
  store <2 x double> %i.di, ptr %3, align 16, !tbaa !10, !alias.scope !88
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dl = load <2 x double>, ptr %i.dk, align 16, !tbaa !10, !noalias !88
  %i.dm = fmul <2 x double> %i.dg, %i.dl
  store <2 x double> %i.dm, ptr %i.dj, align 16, !tbaa !10, !alias.scope !88
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dp = load <2 x double>, ptr %i.do, align 16, !tbaa !10, !noalias !88
  %i.dq = fmul <2 x double> %i.dg, %i.dp
  store <2 x double> %i.dq, ptr %i.dn, align 16, !tbaa !10, !alias.scope !88
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dt = load <2 x double>, ptr %i.ds, align 16, !tbaa !10, !noalias !88
  %i.du = fmul <2 x double> %i.dg, %i.dt
  store <2 x double> %i.du, ptr %i.dr, align 16, !tbaa !10, !alias.scope !88
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.dx = load <2 x double>, ptr %i.dw, align 16, !tbaa !10, !noalias !88
  %i.dy = fmul <2 x double> %i.dg, %i.dx
  store <2 x double> %i.dy, ptr %i.dv, align 16, !tbaa !10, !alias.scope !88
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ea = getelementptr inbounds nuw i8, ptr %i.df, i64 80
  %i.eb = load <2 x double>, ptr %i.ea, align 16, !tbaa !10, !noalias !88
  %i.ec = fmul <2 x double> %i.dg, %i.eb
  store <2 x double> %i.ec, ptr %i.dz, align 16, !tbaa !10, !alias.scope !88
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ee = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  %i.ef = load <2 x double>, ptr %i.ee, align 16, !tbaa !10, !noalias !88
  %i.eg = fmul <2 x double> %i.dg, %i.ef
  store <2 x double> %i.eg, ptr %i.ed, align 16, !tbaa !10, !alias.scope !88
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ei = getelementptr inbounds nuw i8, ptr %i.df, i64 112
  %i.ej = load <2 x double>, ptr %i.ei, align 16, !tbaa !10, !noalias !88
  %i.ek = fmul <2 x double> %i.dg, %i.ej
  store <2 x double> %i.ek, ptr %i.eh, align 16, !tbaa !10, !alias.scope !88
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.em = getelementptr inbounds nuw i8, ptr %i.df, i64 128
  %i.en = load <2 x double>, ptr %i.em, align 16, !tbaa !10, !noalias !88
  %i.eo = fmul <2 x double> %i.dg, %i.en
  store <2 x double> %i.eo, ptr %i.el, align 16, !tbaa !10, !alias.scope !88
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.eq = getelementptr inbounds nuw i8, ptr %i.df, i64 144
  %i.er = load <2 x double>, ptr %i.eq, align 16, !tbaa !10, !noalias !88
  %i.es = fmul <2 x double> %i.dg, %i.er
  store <2 x double> %i.es, ptr %i.ep, align 16, !tbaa !10, !alias.scope !88
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.eu = getelementptr inbounds nuw i8, ptr %i.df, i64 160
  %i.ev = load <2 x double>, ptr %i.eu, align 16, !tbaa !10, !noalias !88
  %i.ew = fmul <2 x double> %i.dg, %i.ev
  store <2 x double> %i.ew, ptr %i.et, align 16, !tbaa !10, !alias.scope !88
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.ey = getelementptr inbounds nuw i8, ptr %i.df, i64 176
  %i.ez = load <2 x double>, ptr %i.ey, align 16, !tbaa !10, !noalias !88
  %i.fa = fmul <2 x double> %i.dg, %i.ez
  store <2 x double> %i.fa, ptr %i.ex, align 16, !tbaa !10, !alias.scope !88
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.fc = getelementptr inbounds nuw i8, ptr %i.df, i64 192
  %i.fd = load <2 x double>, ptr %i.fc, align 16, !tbaa !10, !noalias !88
  %i.fe = fmul <2 x double> %i.dg, %i.fd
  store <2 x double> %i.fe, ptr %i.fb, align 16, !tbaa !10, !alias.scope !88
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.fg = getelementptr inbounds nuw i8, ptr %i.df, i64 208
  %i.fh = load <2 x double>, ptr %i.fg, align 16, !tbaa !10, !noalias !88
  %i.fi = fmul <2 x double> %i.dg, %i.fh
  store <2 x double> %i.fi, ptr %i.ff, align 16, !tbaa !10, !alias.scope !88
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.fk = getelementptr inbounds nuw i8, ptr %i.df, i64 224
  %i.fl = load <2 x double>, ptr %i.fk, align 16, !tbaa !10, !noalias !88
  %i.fm = fmul <2 x double> %i.dg, %i.fl
  store <2 x double> %i.fm, ptr %i.fj, align 16, !tbaa !10, !alias.scope !88
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.fo = getelementptr inbounds nuw i8, ptr %i.df, i64 240
  %i.fp = load <2 x double>, ptr %i.fo, align 16, !tbaa !10, !noalias !88
  %i.fq = fmul <2 x double> %i.dg, %i.fp
  store <2 x double> %i.fq, ptr %i.fn, align 16, !tbaa !10, !alias.scope !88
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.fs = getelementptr inbounds nuw i8, ptr %i.df, i64 256
  %i.ft = load <2 x double>, ptr %i.fs, align 16, !tbaa !10, !noalias !88
  %i.fu = fmul <2 x double> %i.dg, %i.ft
  store <2 x double> %i.fu, ptr %i.fr, align 16, !tbaa !10, !alias.scope !88
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.fw = getelementptr inbounds nuw i8, ptr %i.df, i64 272
  %i.fx = load <2 x double>, ptr %i.fw, align 16, !tbaa !10, !noalias !88
  %i.fy = fmul <2 x double> %i.dg, %i.fx
  store <2 x double> %i.fy, ptr %i.fv, align 16, !tbaa !10, !alias.scope !88
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  call void @_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3ES4_EE23constructQuadraticFormNILi0EEEvRKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS7_IdLi6ELi1ELi0ELi6ELi1EEE(ptr noundef nonnull align 16 dereferenceable(712) %0, ptr noundef nonnull align 16 dereferenceable(288) %3, ptr noundef nonnull align 16 dereferenceable(48) %2)
  call void @_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3ES4_EE23constructQuadraticFormNILi1EEEvRKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS7_IdLi6ELi1ELi0ELi6ELi1EEE(ptr noundef nonnull align 16 dereferenceable(712) %0, ptr noundef nonnull align 16 dereferenceable(288) %3, ptr noundef nonnull align 16 dereferenceable(48) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.gb = load <2 x double>, ptr %i.fz, align 16, !tbaa !10
  %i.gc = fneg <2 x double> %i.gb
  %i.gd = load <1 x double>, ptr %i.ga, align 16
  %i.ge = shufflevector <1 x double> %i.gd, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gf = fmul <2 x double> %i.ge, %i.gc
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.gh = load <2 x double>, ptr %i.gg, align 16, !tbaa !10
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.gj = load <1 x double>, ptr %i.gi, align 8
  %i.gk = shufflevector <1 x double> %i.gj, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gl = fmul <2 x double> %i.gh, %i.gk
  %i.gm = fsub <2 x double> %i.gf, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.go = load <2 x double>, ptr %i.gn, align 16, !tbaa !10
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.gq = load <1 x double>, ptr %i.gp, align 16
  %i.gr = shufflevector <1 x double> %i.gq, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gs = fmul <2 x double> %i.go, %i.gr
  %i.gt = fsub <2 x double> %i.gm, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.gv = load <2 x double>, ptr %i.gu, align 16, !tbaa !10
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.gx = load <2 x double>, ptr %i.gw, align 8   ; 2 uses
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gz = fmul <2 x double> %i.gv, %i.gy
  %i.ha = fsub <2 x double> %i.gt, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.hc = load <2 x double>, ptr %i.hb, align 16, !tbaa !10
  %i.hd = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.he = fmul <2 x double> %i.hc, %i.hd
  %i.hf = fsub <2 x double> %i.ha, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.hh = load <2 x double>, ptr %i.hg, align 16, !tbaa !10
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !8
  %i.hk = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hm = fmul <2 x double> %i.hh, %i.hl
  %i.hn = fsub <2 x double> %i.hf, %i.hm
  store <2 x double> %i.hn, ptr %4, align 16, !tbaa !10
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.hq = load <2 x double>, ptr %i.hp, align 16, !tbaa !10
  %i.hr = fneg <2 x double> %i.hq
  %i.hs = fmul <2 x double> %i.ge, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.hu = load <2 x double>, ptr %i.ht, align 16, !tbaa !10
  %i.hv = fmul <2 x double> %i.gk, %i.hu
  %i.hw = fsub <2 x double> %i.hs, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.hy = load <2 x double>, ptr %i.hx, align 16, !tbaa !10
  %i.hz = fmul <2 x double> %i.gr, %i.hy
  %i.ia = fsub <2 x double> %i.hw, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ic = load <2 x double>, ptr %i.ib, align 16, !tbaa !10
  %i.id = fmul <2 x double> %i.gy, %i.ic
  %i.ie = fsub <2 x double> %i.ia, %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ig = load <2 x double>, ptr %i.if, align 16, !tbaa !10
  %i.ih = fmul <2 x double> %i.hd, %i.ig
  %i.ii = fsub <2 x double> %i.ie, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ik = load <2 x double>, ptr %i.ij, align 16, !tbaa !10
  %i.il = fmul <2 x double> %i.hl, %i.ik
  %i.im = fsub <2 x double> %i.ii, %i.il
  store <2 x double> %i.im, ptr %i.ho, align 16, !tbaa !10
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ip = load <2 x double>, ptr %i.io, align 16, !tbaa !10
  %i.iq = fneg <2 x double> %i.ip
  %i.ir = fmul <2 x double> %i.ge, %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.it = load <2 x double>, ptr %i.is, align 16, !tbaa !10
  %i.iu = fmul <2 x double> %i.gk, %i.it
  %i.iv = fsub <2 x double> %i.ir, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ix = load <2 x double>, ptr %i.iw, align 16, !tbaa !10
  %i.iy = fmul <2 x double> %i.gr, %i.ix
  %i.iz = fsub <2 x double> %i.iv, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.jb = load <2 x double>, ptr %i.ja, align 16, !tbaa !10
  %i.jc = fmul <2 x double> %i.gy, %i.jb
  %i.jd = fsub <2 x double> %i.iz, %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.jf = load <2 x double>, ptr %i.je, align 16, !tbaa !10
  %i.jg = fmul <2 x double> %i.hd, %i.jf
  %i.jh = fsub <2 x double> %i.jd, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.jj = load <2 x double>, ptr %i.ji, align 16, !tbaa !10
  %i.jk = fmul <2 x double> %i.hl, %i.jj
  %i.jl = fsub <2 x double> %i.jh, %i.jk
  store <2 x double> %i.jl, ptr %i.in, align 16, !tbaa !10
  call void @_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3ES4_EE23constructQuadraticFormNILi0EEEvRKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS7_IdLi6ELi1ELi0ELi6ELi1EEE(ptr noundef nonnull align 16 dereferenceable(712) %0, ptr noundef nonnull align 16 dereferenceable(288) %i.fz, ptr noundef nonnull align 16 dereferenceable(48) %4)
  call void @_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3ES4_EE23constructQuadraticFormNILi1EEEvRKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS7_IdLi6ELi1ELi0ELi6ELi1EEE(ptr noundef nonnull align 16 dereferenceable(712) %0, ptr noundef nonnull align 16 dereferenceable(288) %i.fz, ptr noundef nonnull align 16 dereferenceable(48) %4)
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
  %i.x = load <2 x double>, ptr %1, align 16      ; 2 uses
  %i.y = load double, ptr %i.g, align 16, !tbaa !8, !noalias !108
  %.sroa.0.8.vec.insert = insertelement <2 x double> %i.x, double %i.y, i64 1 ; 2 uses
  %i.z = load double, ptr %i.m, align 16, !tbaa !8, !noalias !108 ; 2 uses
  %.sroa.9.32.vec.insert = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !8, !noalias !108
  %.sroa.9.40.vec.insert = insertelement <2 x double> %.sroa.9.32.vec.insert, double %i.ab, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !8, !noalias !108 ; 2 uses
  %2 = load <2 x double>, ptr %i.d, align 16
  %i.ae = load double, ptr %i.j, align 16, !tbaa !8, !noalias !108
  %.sroa.15.72.vec.insert = insertelement <2 x double> %2, double %i.ae, i64 1 ; 2 uses
  %i.af = load double, ptr %i.p, align 16, !tbaa !8, !noalias !108 ; 2 uses
  %i.ag = fneg <2 x double> %.sroa.0.8.vec.insert
  %i.ah = load double, ptr %i.s, align 16, !tbaa !8, !noalias !108 ; 2 uses
  %i.ai = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x double> %i.aj, %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.am = load double, ptr %i.al, align 8, !tbaa !8, !noalias !108 ; 2 uses
  %i.an = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %.sroa.9.40.vec.insert, %i.ao
  %i.aq = fsub <2 x double> %i.ak, %i.ap
  %i.ar = load double, ptr %i.v, align 16, !tbaa !8, !noalias !108 ; 2 uses
  %i.as = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x double> %.sroa.15.72.vec.insert, %i.at
  %i.av = fsub <2 x double> %i.aq, %i.au
  %i.aw = fneg double %i.af
  %i.ax = fmul double %i.ar, %i.aw
  %i.ay = fmul double %i.ad, %i.am
  %i.az = fsub double %i.ax, %i.ay
  %i.ba = fmul double %i.z, %i.ah
  %i.bb = fsub double %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <2 x double> %.sroa.0.8.vec.insert, ptr %i.bc, align 16
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
  store double %i.af, ptr %.sroa.18.0..sroa_idx, align 16
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 824
  store double 0.000000e+00, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 832
  store <2 x double> %i.av, ptr %.sroa.21.0..sroa_idx, align 16
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 848
  store double %i.bb, ptr %.sroa.22.0..sroa_idx, align 16
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
  %i.ca = fmul <2 x double> %.pre22.i, %i.bu
  %i.cb = fadd <2 x double> %i.bz, %i.ca
  %i.cc = fadd <2 x double> %i.by, %i.cb          ; 2 uses
  %i.cd = shufflevector <2 x double> %i.bx, <2 x double> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.ce = shufflevector <2 x double> %i.bx, <2 x double> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.cf = fadd <2 x double> %i.cd, %i.ce
  %i.cg = fmul <2 x double> %.pre23.i, %i.bq
  %i.ch = fmul <2 x double> %.pre24.i, %i.bs
  %i.ci = fmul <2 x double> %.pre25.i, %i.bu
  %i.cj = fadd <2 x double> %i.ch, %i.ci
  %i.ck = fadd <2 x double> %i.cg, %i.cj          ; 2 uses
  %i.cl = fmul <2 x double> %.pre26.i, %i.bq
  %i.cm = fmul <2 x double> %.pre27.i, %i.bs
  %i.cn = fmul <2 x double> %.pre28.i, %i.bu
  %i.co = fadd <2 x double> %i.cm, %i.cn
  %i.cp = fadd <2 x double> %i.cl, %i.co          ; 2 uses
  %i.cq = shufflevector <2 x double> %i.ck, <2 x double> %i.cp, <2 x i32> <i32 0, i32 2>
  %i.cr = shufflevector <2 x double> %i.ck, <2 x double> %i.cp, <2 x i32> <i32 1, i32 3>
  %i.cs = fadd <2 x double> %i.cq, %i.cr
  %i.ct = fmul <2 x double> %.pre29.i, %i.bq
  %i.cu = fmul <2 x double> %.pre30.i, %i.bs
  %i.cv = fmul <2 x double> %.pre31.i, %i.bu
  %i.cw = fadd <2 x double> %i.cu, %i.cv
  %i.cx = fadd <2 x double> %i.ct, %i.cw          ; 2 uses
  %i.cy = fmul <2 x double> %.pre32.i, %i.bq
  %i.cz = fmul <2 x double> %.pre33.i, %i.bs
  %i.da = fmul <2 x double> %.pre34.i, %i.bu
  %i.db = fadd <2 x double> %i.cz, %i.da
  %i.dc = fadd <2 x double> %i.cy, %i.db          ; 2 uses
  %i.dd = shufflevector <2 x double> %i.cx, <2 x double> %i.dc, <2 x i32> <i32 0, i32 2>
  %i.de = shufflevector <2 x double> %i.cx, <2 x double> %i.dc, <2 x i32> <i32 1, i32 3>
  %i.df = fadd <2 x double> %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.dj = load <2 x double>, ptr %i.dg, align 16, !tbaa !10 ; 6 uses
  %i.dk = fmul <2 x double> %.pre.i, %i.dj
  %i.dl = load <2 x double>, ptr %i.dh, align 16, !tbaa !10 ; 6 uses
end_hunk_0
