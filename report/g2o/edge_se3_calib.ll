Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_calib?download=true
inline.NumInlined: 6074
inline.NumDeleted: 3139
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE6resizeEm:bb.a

_ZSt8_DestroyIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %bb.g
  store ptr %i.ak, ptr %i.aa, align 16, !tbaa !88
  br label %_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE6resizeEmRKS6_.exit

_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE6resizeEmRKS6_.exit: ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES6_EvT_S8_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE16allVerticesFixedEv(ptr noundef nonnull align 16 dereferenceable(688) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !86  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.057 = phi i64 [ %i.o, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.057
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  %i.m = load i8, ptr %i.l, align 4, !tbaa !89, !range !105, !noundef !106
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  %i.o = add nuw i64 %.057, 1                     ; 2 uses
  %exitcond.not = icmp ne i64 %i.o, %i.i
  %or.cond.not = select i1 %i.n, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge, !llvm.loop !107

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %i.n, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o12EdgeSE3Calib18setMeasurementDataEPKd(ptr noundef nonnull align 16 dereferenceable(688) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Transform", align 16 ; 4 uses
  %3 = alloca %"class.Eigen::Matrix.64", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !60
  store <2 x double> %i.a, ptr %3, align 16, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 1, !tbaa !60
  store <2 x double> %i.d, ptr %i.b, align 16, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x double>, ptr %i.f, align 1, !tbaa !60
  store <2 x double> %i.g, ptr %i.e, align 16, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.i = getelementptr i8, ptr %1, i64 48
  %i.j = load double, ptr %i.i, align 8, !tbaa !8
  store double %i.j, ptr %i.h, align 16, !tbaa !8
  call void @_ZN3g2o8internal12fromVectorQTERKN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Transform") align 16 %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
  %i.k = load ptr, ptr %0, align 16, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 16 dereferenceable(640) %0, ptr noundef nonnull align 16 dereferenceable(128) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o12EdgeSE3Calib18getMeasurementDataEPd(ptr noundef nonnull align 16 dereferenceable(688) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.64", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN3g2o8internal10toVectorQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.64") align 8 %2, ptr noundef nonnull align 16 dereferenceable(128) %i.a)
  %i.b = load <2 x double>, ptr %2, align 16, !tbaa !60
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !60
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
  %i.ai = load <2 x double>, ptr %i.ah, align 8   ; 2 uses
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ak = fmul <2 x double> %i.ag, %i.aj
  %i.al = fsub <2 x double> %i.ae, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.an = load <2 x double>, ptr %i.am, align 16, !tbaa !60
  %i.ao = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ap = fmul <2 x double> %i.an, %i.ao
  %i.aq = fsub <2 x double> %i.al, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.as = load <2 x double>, ptr %i.ar, align 16, !tbaa !60
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.au = load double, ptr %i.at, align 8, !tbaa !8
  %i.av = insertelement <2 x double> poison, double %i.au, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ax = fmul <2 x double> %i.as, %i.aw
  %i.ay = fsub <2 x double> %i.aq, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bb = load <2 x double>, ptr %i.ba, align 16, !tbaa !60
  %i.bc = fneg <2 x double> %i.bb
  %i.bd = fmul <2 x double> %i.p, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bf = load <2 x double>, ptr %i.be, align 16, !tbaa !60
  %i.bg = fmul <2 x double> %i.v, %i.bf
  %i.bh = fsub <2 x double> %i.bd, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bj = load <2 x double>, ptr %i.bi, align 16, !tbaa !60
  %i.bk = fmul <2 x double> %i.ac, %i.bj
  %i.bl = fsub <2 x double> %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bn = load <2 x double>, ptr %i.bm, align 16, !tbaa !60
  %i.bo = fmul <2 x double> %i.aj, %i.bn
  %i.bp = fsub <2 x double> %i.bl, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.br = load <2 x double>, ptr %i.bq, align 16, !tbaa !60
  %i.bs = fmul <2 x double> %i.ao, %i.br
  %i.bt = fsub <2 x double> %i.bp, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bv = load <2 x double>, ptr %i.bu, align 16, !tbaa !60
  %i.bw = fmul <2 x double> %i.aw, %i.bv
  %i.bx = fsub <2 x double> %i.bt, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ca = load <2 x double>, ptr %i.bz, align 16, !tbaa !60
  %i.cb = fneg <2 x double> %i.ca
  %i.cc = fmul <2 x double> %i.p, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ce = load <2 x double>, ptr %i.cd, align 16, !tbaa !60
  %i.cf = fmul <2 x double> %i.v, %i.ce
  %i.cg = fsub <2 x double> %i.cc, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ci = load <2 x double>, ptr %i.ch, align 16, !tbaa !60
  %i.cj = fmul <2 x double> %i.ac, %i.ci
  %i.ck = fsub <2 x double> %i.cg, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cm = load <2 x double>, ptr %i.cl, align 16, !tbaa !60
  %i.cn = fmul <2 x double> %i.aj, %i.cm
  %i.co = fsub <2 x double> %i.ck, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.cq = load <2 x double>, ptr %i.cp, align 16, !tbaa !60
  %i.cr = fmul <2 x double> %i.ao, %i.cq
  %i.cs = fsub <2 x double> %i.co, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.cu = load <2 x double>, ptr %i.ct, align 16, !tbaa !60
  %i.cv = fmul <2 x double> %i.aw, %i.cu
  %i.cw = fsub <2 x double> %i.cs, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !8, !noalias !110 ; 2 uses
  %i.cz = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.db = fmul <2 x double> %i.ay, %i.da
  store <2 x double> %i.db, ptr %2, align 16, !tbaa !60
  %i.dc = fmul <2 x double> %i.bx, %i.da
  store <2 x double> %i.dc, ptr %i.az, align 16, !tbaa !60
  %i.dd = fmul <2 x double> %i.cw, %i.da
  store <2 x double> %i.dd, ptr %i.by, align 16, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i)
  store double %i.cy, ptr %.sroa.2.i, align 16, !tbaa !116, !alias.scope !118, !noalias !113
  %.sroa.2.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.i, i64 8
  store ptr %i.k, ptr %.sroa.2.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !121, !alias.scope !118, !noalias !113
  %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i = load <2 x double>, ptr %.sroa.2.i, align 16, !noalias !113 ; 2 uses
  %bc.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i to <2 x i64>
  %i.de = extractelement <2 x i64> %bc.i.i.i.i.i.i.i, i64 1
  %i.df = inttoptr i64 %i.de to ptr               ; 18 uses
  %i.dg = shufflevector <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i, <2 x double> poison, <2 x i32> zeroinitializer ; 18 uses
  %i.dh = load <2 x double>, ptr %i.df, align 16, !tbaa !60, !noalias !113
  %i.di = fmul <2 x double> %i.dg, %i.dh
  store <2 x double> %i.di, ptr %3, align 16, !tbaa !60, !alias.scope !113
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dl = load <2 x double>, ptr %i.dk, align 16, !tbaa !60, !noalias !113
  %i.dm = fmul <2 x double> %i.dg, %i.dl
  store <2 x double> %i.dm, ptr %i.dj, align 16, !tbaa !60, !alias.scope !113
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dp = load <2 x double>, ptr %i.do, align 16, !tbaa !60, !noalias !113
  %i.dq = fmul <2 x double> %i.dg, %i.dp
  store <2 x double> %i.dq, ptr %i.dn, align 16, !tbaa !60, !alias.scope !113
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dt = load <2 x double>, ptr %i.ds, align 16, !tbaa !60, !noalias !113
  %i.du = fmul <2 x double> %i.dg, %i.dt
  store <2 x double> %i.du, ptr %i.dr, align 16, !tbaa !60, !alias.scope !113
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.dx = load <2 x double>, ptr %i.dw, align 16, !tbaa !60, !noalias !113
  %i.dy = fmul <2 x double> %i.dg, %i.dx
  store <2 x double> %i.dy, ptr %i.dv, align 16, !tbaa !60, !alias.scope !113
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ea = getelementptr inbounds nuw i8, ptr %i.df, i64 80
  %i.eb = load <2 x double>, ptr %i.ea, align 16, !tbaa !60, !noalias !113
  %i.ec = fmul <2 x double> %i.dg, %i.eb
  store <2 x double> %i.ec, ptr %i.dz, align 16, !tbaa !60, !alias.scope !113
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ee = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  %i.ef = load <2 x double>, ptr %i.ee, align 16, !tbaa !60, !noalias !113
  %i.eg = fmul <2 x double> %i.dg, %i.ef
  store <2 x double> %i.eg, ptr %i.ed, align 16, !tbaa !60, !alias.scope !113
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ei = getelementptr inbounds nuw i8, ptr %i.df, i64 112
  %i.ej = load <2 x double>, ptr %i.ei, align 16, !tbaa !60, !noalias !113
  %i.ek = fmul <2 x double> %i.dg, %i.ej
  store <2 x double> %i.ek, ptr %i.eh, align 16, !tbaa !60, !alias.scope !113
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.em = getelementptr inbounds nuw i8, ptr %i.df, i64 128
  %i.en = load <2 x double>, ptr %i.em, align 16, !tbaa !60, !noalias !113
  %i.eo = fmul <2 x double> %i.dg, %i.en
  store <2 x double> %i.eo, ptr %i.el, align 16, !tbaa !60, !alias.scope !113
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.eq = getelementptr inbounds nuw i8, ptr %i.df, i64 144
  %i.er = load <2 x double>, ptr %i.eq, align 16, !tbaa !60, !noalias !113
  %i.es = fmul <2 x double> %i.dg, %i.er
  store <2 x double> %i.es, ptr %i.ep, align 16, !tbaa !60, !alias.scope !113
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.eu = getelementptr inbounds nuw i8, ptr %i.df, i64 160
  %i.ev = load <2 x double>, ptr %i.eu, align 16, !tbaa !60, !noalias !113
  %i.ew = fmul <2 x double> %i.dg, %i.ev
  store <2 x double> %i.ew, ptr %i.et, align 16, !tbaa !60, !alias.scope !113
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.ey = getelementptr inbounds nuw i8, ptr %i.df, i64 176
  %i.ez = load <2 x double>, ptr %i.ey, align 16, !tbaa !60, !noalias !113
  %i.fa = fmul <2 x double> %i.dg, %i.ez
  store <2 x double> %i.fa, ptr %i.ex, align 16, !tbaa !60, !alias.scope !113
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.fc = getelementptr inbounds nuw i8, ptr %i.df, i64 192
  %i.fd = load <2 x double>, ptr %i.fc, align 16, !tbaa !60, !noalias !113
  %i.fe = fmul <2 x double> %i.dg, %i.fd
  store <2 x double> %i.fe, ptr %i.fb, align 16, !tbaa !60, !alias.scope !113
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.fg = getelementptr inbounds nuw i8, ptr %i.df, i64 208
  %i.fh = load <2 x double>, ptr %i.fg, align 16, !tbaa !60, !noalias !113
  %i.fi = fmul <2 x double> %i.dg, %i.fh
  store <2 x double> %i.fi, ptr %i.ff, align 16, !tbaa !60, !alias.scope !113
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.fk = getelementptr inbounds nuw i8, ptr %i.df, i64 224
  %i.fl = load <2 x double>, ptr %i.fk, align 16, !tbaa !60, !noalias !113
  %i.fm = fmul <2 x double> %i.dg, %i.fl
  store <2 x double> %i.fm, ptr %i.fj, align 16, !tbaa !60, !alias.scope !113
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.fo = getelementptr inbounds nuw i8, ptr %i.df, i64 240
  %i.fp = load <2 x double>, ptr %i.fo, align 16, !tbaa !60, !noalias !113
  %i.fq = fmul <2 x double> %i.dg, %i.fp
  store <2 x double> %i.fq, ptr %i.fn, align 16, !tbaa !60, !alias.scope !113
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.fs = getelementptr inbounds nuw i8, ptr %i.df, i64 256
  %i.ft = load <2 x double>, ptr %i.fs, align 16, !tbaa !60, !noalias !113
  %i.fu = fmul <2 x double> %i.dg, %i.ft
  store <2 x double> %i.fu, ptr %i.fr, align 16, !tbaa !60, !alias.scope !113
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.fw = getelementptr inbounds nuw i8, ptr %i.df, i64 272
  %i.fx = load <2 x double>, ptr %i.fw, align 16, !tbaa !60, !noalias !113
  %i.fy = fmul <2 x double> %i.dg, %i.fx
  store <2 x double> %i.fy, ptr %i.fv, align 16, !tbaa !60, !alias.scope !113
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  call void @_ZN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE20computeQuadraticFormERKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS5_IdLi6ELi1ELi0ELi6ELi1EEE(ptr noundef nonnull align 16 dereferenceable(688) %0, ptr noundef nonnull align 16 dereferenceable(288) %3, ptr noundef nonnull align 16 dereferenceable(48) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.gb = load <2 x double>, ptr %i.fz, align 16, !tbaa !60
  %i.gc = fneg <2 x double> %i.gb
  %i.gd = load <1 x double>, ptr %i.ga, align 16
  %i.ge = shufflevector <1 x double> %i.gd, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gf = fmul <2 x double> %i.ge, %i.gc
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.gh = load <2 x double>, ptr %i.gg, align 16, !tbaa !60
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.gj = load <1 x double>, ptr %i.gi, align 8
  %i.gk = shufflevector <1 x double> %i.gj, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gl = fmul <2 x double> %i.gh, %i.gk
  %i.gm = fsub <2 x double> %i.gf, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.go = load <2 x double>, ptr %i.gn, align 16, !tbaa !60
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.gq = load <1 x double>, ptr %i.gp, align 16
  %i.gr = shufflevector <1 x double> %i.gq, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gs = fmul <2 x double> %i.go, %i.gr
  %i.gt = fsub <2 x double> %i.gm, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.gv = load <2 x double>, ptr %i.gu, align 16, !tbaa !60
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.gx = load <2 x double>, ptr %i.gw, align 8   ; 2 uses
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gz = fmul <2 x double> %i.gv, %i.gy
  %i.ha = fsub <2 x double> %i.gt, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.hc = load <2 x double>, ptr %i.hb, align 16, !tbaa !60
  %i.hd = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.he = fmul <2 x double> %i.hc, %i.hd
  %i.hf = fsub <2 x double> %i.ha, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.hh = load <2 x double>, ptr %i.hg, align 16, !tbaa !60
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !8
  %i.hk = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hm = fmul <2 x double> %i.hh, %i.hl
  %i.hn = fsub <2 x double> %i.hf, %i.hm
  store <2 x double> %i.hn, ptr %4, align 16, !tbaa !60
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.hq = load <2 x double>, ptr %i.hp, align 16, !tbaa !60
  %i.hr = fneg <2 x double> %i.hq
  %i.hs = fmul <2 x double> %i.ge, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.hu = load <2 x double>, ptr %i.ht, align 16, !tbaa !60
  %i.hv = fmul <2 x double> %i.gk, %i.hu
  %i.hw = fsub <2 x double> %i.hs, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.hy = load <2 x double>, ptr %i.hx, align 16, !tbaa !60
  %i.hz = fmul <2 x double> %i.gr, %i.hy
  %i.ia = fsub <2 x double> %i.hw, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ic = load <2 x double>, ptr %i.ib, align 16, !tbaa !60
  %i.id = fmul <2 x double> %i.gy, %i.ic
  %i.ie = fsub <2 x double> %i.ia, %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ig = load <2 x double>, ptr %i.if, align 16, !tbaa !60
  %i.ih = fmul <2 x double> %i.hd, %i.ig
  %i.ii = fsub <2 x double> %i.ie, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ik = load <2 x double>, ptr %i.ij, align 16, !tbaa !60
  %i.il = fmul <2 x double> %i.hl, %i.ik
  %i.im = fsub <2 x double> %i.ii, %i.il
  store <2 x double> %i.im, ptr %i.ho, align 16, !tbaa !60
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ip = load <2 x double>, ptr %i.io, align 16, !tbaa !60
  %i.iq = fneg <2 x double> %i.ip
  %i.ir = fmul <2 x double> %i.ge, %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.it = load <2 x double>, ptr %i.is, align 16, !tbaa !60
  %i.iu = fmul <2 x double> %i.gk, %i.it
  %i.iv = fsub <2 x double> %i.ir, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ix = load <2 x double>, ptr %i.iw, align 16, !tbaa !60
  %i.iy = fmul <2 x double> %i.gr, %i.ix
  %i.iz = fsub <2 x double> %i.iv, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.jb = load <2 x double>, ptr %i.ja, align 16, !tbaa !60
  %i.jc = fmul <2 x double> %i.gy, %i.jb
  %i.jd = fsub <2 x double> %i.iz, %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.jf = load <2 x double>, ptr %i.je, align 16, !tbaa !60
  %i.jg = fmul <2 x double> %i.hd, %i.jf
  %i.jh = fsub <2 x double> %i.jd, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.jj = load <2 x double>, ptr %i.ji, align 16, !tbaa !60
  %i.jk = fmul <2 x double> %i.hl, %i.jj
  %i.jl = fsub <2 x double> %i.jh, %i.jk
  store <2 x double> %i.jl, ptr %i.in, align 16, !tbaa !60
  call void @_ZN3g2o21BaseVariableSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE20computeQuadraticFormERKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS5_IdLi6ELi1ELi0ELi6ELi1EEE(ptr noundef nonnull align 16 dereferenceable(688) %0, ptr noundef nonnull align 16 dereferenceable(288) %i.fz, ptr noundef nonnull align 16 dereferenceable(48) %4)
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

end_hunk_0
