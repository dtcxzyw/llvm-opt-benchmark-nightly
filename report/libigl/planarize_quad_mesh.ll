Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/planarize_quad_mesh?download=true
inline.NumInlined: 17087
inline.NumDeleted: 8655
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZN5Eigen11EigenSolverINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE7computeIS2_EERS3_RKNS_9EigenBaseIT_EEb:bb.a
  store i8 0, ptr %i.ch, align 1, !tbaa !972
  store i32 1, ptr %i.f, align 4, !tbaa !970
  br label %bb.l

.thread:                                          ; preds = %bb.h, %._crit_edge
  %.sink = phi i64 [ 1, %._crit_edge ], [ 2, %bb.h ]
  %i.ci = add nuw nsw i64 %.05581, %.sink         ; 2 uses
  %i.cj = icmp samesign ult i64 %i.ci, 3
  br i1 %i.cj, label %bb.e, label %bb.j, !llvm.loop !964

bb.j:                                             ; preds = %.thread
  br i1 %2, label %bb.k, label %.thread78

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN5Eigen11EigenSolverINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21doComputeEigenvectorsEv(ptr noundef nonnull align 16 dereferenceable(560) %0)
  br label %.thread78

.thread78:                                        ; preds = %bb.k, %bb.j, %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.ck, align 16, !tbaa !971
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 %i.a, ptr %i.cl, align 1, !tbaa !972
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.i, %.thread78
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 16 dereferenceable(320) ptr @_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE7computeIS2_EERS3_RKNS_9EigenBaseIT_EEb(ptr noundef nonnull align 16 dereferenceable(320) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::HouseholderSequence", align 8 ; 8 uses
  %4 = alloca %"struct.Eigen::internal::HessenbergDecompositionMatrixHReturnType", align 8 ; 4 uses
  %i.a = zext i1 %2 to i8
  %i.b = load <2 x double>, ptr %1, align 1, !tbaa !77 ; 2 uses
  %i.c = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load <2 x double>, ptr %i.d, align 1, !tbaa !77
  %i.f = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.e)
  %i.g = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.c, <2 x double> %i.f) #28, !srcloc !78
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = load <2 x double>, ptr %i.h, align 1, !tbaa !77
  %i.j = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = load <2 x double>, ptr %i.k, align 1, !tbaa !77
  %i.m = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.l)
  %i.n = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.j, <2 x double> %i.m) #28, !srcloc !78
  %i.o = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.g, <2 x double> %i.n) #28, !srcloc !78 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %i.o, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %i.o, i64 1 ; 2 uses
  %i.p = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i
  %i.q = select i1 %i.p, double %.sroa.0.8.vec.extract.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !59
  %i.t = tail call noundef double @llvm.fabs.f64(double %i.s) ; 2 uses
  %i.u = fcmp olt double %i.q, %i.t
  %i.v = select i1 %i.u, double %i.t, double %i.q ; 4 uses
  %i.w = fcmp olt double %i.v, f0x0010000000000000
  br i1 %i.w, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double 1.000000e+00, ptr %i.x, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.z, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ab, align 8, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 0, ptr %i.ac, align 16, !tbaa !237
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i8 1, ptr %i.ad, align 4, !tbaa !210
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 309
  store i8 %i.a, ptr %i.ae, align 1, !tbaa !211
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %.sroa.9.16.vec.insert.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ag = shufflevector <2 x double> %.sroa.9.16.vec.insert.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.ah = fdiv <2 x double> %i.b, %i.ag
  store <2 x double> %i.ah, ptr %i.af, align 16, !tbaa !77
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aj = load <2 x double>, ptr %i.d, align 8, !tbaa !77
  %i.ak = fdiv <2 x double> %i.aj, %i.ag
  store <2 x double> %i.ak, ptr %i.ai, align 16, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.am = load <2 x double>, ptr %i.h, align 8, !tbaa !77
  %i.an = fdiv <2 x double> %i.am, %i.ag
  store <2 x double> %i.an, ptr %i.al, align 16, !tbaa !77
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ap = load <2 x double>, ptr %i.k, align 8, !tbaa !77
  %i.aq = fdiv <2 x double> %i.ap, %i.ag
  store <2 x double> %i.aq, ptr %i.ao, align 16, !tbaa !77
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.as = load double, ptr %i.r, align 8, !tbaa !59
  %i.at = fdiv double %i.as, %i.v
  store double %i.at, ptr %i.ar, align 16, !tbaa !59
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZN5Eigen23HessenbergDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8_computeERS2_RNS1_IdLi2ELi1ELi0ELi2ELi1EEERNS1_IdLi1ELi3ELi1ELi1ELi3EEE(ptr noundef nonnull align 16 dereferenceable(121) %i.af, ptr noundef nonnull align 16 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 1, ptr %i.aw, align 8, !tbaa !204
  br i1 %2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.af, ptr %3, align 8, !tbaa !190, !alias.scope !975
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.au, ptr %i.ay, align 8, !tbaa !239, !alias.scope !975
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.az, align 8, !tbaa !241, !alias.scope !975
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2, ptr %i.ba, align 8, !tbaa !242, !alias.scope !975
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 1, ptr %i.bb, align 8, !tbaa !243, !alias.scope !975
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE6evalToIS2_NS1_IdLi3ELi1ELi0ELi3ELi1EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.af, ptr %4, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.be = call noundef nonnull align 16 dereferenceable(320) ptr @_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21computeFromHessenbergINS_8internal40HessenbergDecompositionMatrixHReturnTypeIS2_EES2_EERS3_RKT_RKT0_b(ptr noundef nonnull align 16 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.bd, i1 noundef zeroext %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.bf = load <2 x double>, ptr %0, align 16, !tbaa !77
  %i.bg = fmul <2 x double> %i.ag, %i.bf
  store <2 x double> %i.bg, ptr %0, align 16, !tbaa !77
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = load <2 x double>, ptr %i.bh, align 16, !tbaa !77
  %i.bj = fmul <2 x double> %i.ag, %i.bi
  store <2 x double> %i.bj, ptr %i.bh, align 16, !tbaa !77
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bl = load <2 x double>, ptr %i.bk, align 16, !tbaa !77
  %i.bm = fmul <2 x double> %i.ag, %i.bl
  store <2 x double> %i.bm, ptr %i.bk, align 16, !tbaa !77
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bo = load <2 x double>, ptr %i.bn, align 16, !tbaa !77
  %i.bp = fmul <2 x double> %i.ag, %i.bo
  store <2 x double> %i.bp, ptr %i.bn, align 16, !tbaa !77
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.br = load double, ptr %i.bq, align 16, !tbaa !59
  %i.bs = fmul double %i.v, %i.br
  store double %i.bs, ptr %i.bq, align 16, !tbaa !59
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen11EigenSolverINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21doComputeEigenvectorsEv(ptr noundef nonnull align 16 dereferenceable(560) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.i.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load <9 x double>, ptr %i.b, align 16, !tbaa !59
  %i.g = tail call <9 x double> @llvm.fabs.v9f64(<9 x double> %i.f) ; 2 uses
  %i.h = shufflevector <9 x double> %i.g, <9 x double> poison, <8 x i32> <i32 0, i32 1, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8> ; 4 uses
  %i.i = shufflevector <9 x double> %i.g, <9 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.j = shufflevector <8 x double> %i.h, <8 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.k = fadd <2 x double> %i.i, %i.j
  %i.l = shufflevector <8 x double> %i.h, <8 x double> poison, <2 x i32> <i32 5, i32 6>
  %i.m = fadd <2 x double> %i.k, %i.l
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.o = shufflevector <8 x double> %i.h, <8 x double> %i.n, <2 x i32> <i32 4, i32 8>
  %i.p = shufflevector <8 x double> %i.h, <8 x double> %i.n, <2 x i32> <i32 7, i32 9>
  %i.q = fadd <2 x double> %i.o, %i.p             ; 2 uses
  %shift = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.q
  %i.r = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.s = fcmp oeq double %i.r, 0.000000e+00
  br i1 %i.s, label %.loopexit, label %.preheader599

.preheader599:                                    ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 11 uses
  %i.v = fmul double %i.r, f0x3CB0000000000000    ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %.preheader599, %.loopexit597
  %.0265619 = phi i64 [ 2, %.preheader599 ], [ %i.px, %.loopexit597 ] ; 18 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.0265619 ; 2 uses
  %i.x = load double, ptr %i.w, align 16, !tbaa !59 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !59 ; 11 uses
  %i.aa = fcmp oeq double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr [8 x i8], ptr %i.u, i64 %.0265619
  %.idx.i = mul i64 %.0265619, 24                 ; 6 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 %.idx.i
  store double 1.000000e+00, ptr %i.ac, align 8, !tbaa !59
  %.not621 = icmp eq i64 %.0265619, 0
  br i1 %.not621, label %.lr.ph.i.i.i.i.i.i.i.i.2, label %.lr.ph618

.lr.ph618:                                        ; preds = %bb.b
  %i.ad = getelementptr inbounds i8, ptr %i.u, i64 %.idx.i ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph618, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %.0258.in616 = phi i64 [ %.0265619, %.lr.ph618 ], [ %.0258617, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit ] ; 5 uses
  %.0259615 = phi i64 [ %.0265619, %.lr.ph618 ], [ %.1260, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit ] ; 5 uses
  %.0261614 = phi double [ 0.000000e+00, %.lr.ph618 ], [ %.1262, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit ] ; 7 uses
  %.0263613 = phi double [ 0.000000e+00, %.lr.ph618 ], [ %.1264, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit ] ; 6 uses
  %.0258617 = add nsw i64 %.0258.in616, -1        ; 9 uses
  %i.ae = getelementptr [8 x i8], ptr %i.u, i64 %.0258617 ; 5 uses
  %.idx.i274 = mul i64 %.0258617, 24              ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %.idx.i274
  %i.ag = load double, ptr %i.af, align 8, !tbaa !59
  %i.ah = fsub double %i.ag, %i.x                 ; 4 uses
  %i.ai = sub nsw i64 %.0265619, %.0259615        ; 4 uses
  %.idx.i.i.i.i.i275 = mul nsw i64 %.0259615, 24
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 %.idx.i.i.i.i.i275 ; 6 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %.0259615 ; 6 uses
  %i.al = icmp eq i64 %i.ai, -1
  br i1 %i.al, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = load double, ptr %i.aj, align 8, !tbaa !59
  %i.an = load double, ptr %i.ak, align 8, !tbaa !59
  %i.ao = fmul double %i.am, %i.an                ; 3 uses
  %i.ap = icmp sgt i64 %i.ai, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %xtraiter705 = and i64 %i.ai, 3                 ; 3 uses
  %i.aq = sub i64 %.0259615, %.0265619
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter710 = and i64 %i.ai, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %.01725.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.bt, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.02324.i.i.i.i.i = phi double [ %i.ao, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i.i.i.i ]
  %niter711 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter711.next.3, %.lr.ph.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i = mul i64 %.01725.i.i.i.i.i, 24
  %i.as = getelementptr i8, ptr %i.aj, i64 %.idx.i.i.i.i.i.i.i.i.i
  %i.at = load double, ptr %i.as, align 8, !tbaa !59
  %i.au = getelementptr [8 x i8], ptr %i.ak, i64 %.01725.i.i.i.i.i
  %i.av = load double, ptr %i.au, align 8, !tbaa !59
  %i.aw = fmul double %i.at, %i.av
  %i.ax = fadd double %.02324.i.i.i.i.i, %i.aw
  %i.ay = add nuw nsw i64 %.01725.i.i.i.i.i, 1    ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.1 = mul i64 %i.ay, 24
  %i.az = getelementptr i8, ptr %i.aj, i64 %.idx.i.i.i.i.i.i.i.i.i.1
  %i.ba = load double, ptr %i.az, align 8, !tbaa !59
  %i.bb = getelementptr [8 x i8], ptr %i.ak, i64 %i.ay
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !59
  %i.bd = fmul double %i.ba, %i.bc
  %i.be = fadd double %i.ax, %i.bd
  %i.bf = add nuw nsw i64 %.01725.i.i.i.i.i, 2    ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.2 = mul i64 %i.bf, 24
  %i.bg = getelementptr i8, ptr %i.aj, i64 %.idx.i.i.i.i.i.i.i.i.i.2
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !59
  %i.bi = getelementptr [8 x i8], ptr %i.ak, i64 %i.bf
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !59
  %i.bk = fmul double %i.bh, %i.bj
  %i.bl = fadd double %i.be, %i.bk
  %i.bm = add nuw nsw i64 %.01725.i.i.i.i.i, 3    ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.3 = mul i64 %i.bm, 24
  %i.bn = getelementptr i8, ptr %i.aj, i64 %.idx.i.i.i.i.i.i.i.i.i.3
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !59
  %i.bp = getelementptr [8 x i8], ptr %i.ak, i64 %i.bm
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !59
  %i.br = fmul double %i.bo, %i.bq
  %i.bs = fadd double %i.bl, %i.br                ; 3 uses
  %i.bt = add nuw nsw i64 %.01725.i.i.i.i.i, 4    ; 2 uses
  %niter711.next.3 = add i64 %niter711, 4         ; 2 uses
  %niter711.ncmp.3 = icmp eq i64 %niter711.next.3, %unroll_iter710
  br i1 %niter711.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !976

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod707.not = icmp eq i64 %xtraiter705, 0
  br i1 %lcmp.mod707.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.01725.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bt, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit.loopexit.unr-lcssa ]
  %.02324.i.i.i.i.i.epil.init = phi double [ %i.ao, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bs, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit.loopexit.unr-lcssa ]
  %lcmp.mod709 = icmp ne i64 %xtraiter705, 0
  tail call void @llvm.assume(i1 %lcmp.mod709)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %.01725.i.i.i.i.i.epil = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i.epil ], [ %.01725.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ] ; 3 uses
  %.02324.i.i.i.i.i.epil = phi double [ %i.bz, %.lr.ph.i.i.i.i.i.epil ], [ %.02324.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %epil.iter706 = phi i64 [ %epil.iter706.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.epil = mul i64 %.01725.i.i.i.i.i.epil, 24
  %i.bu = getelementptr i8, ptr %i.aj, i64 %.idx.i.i.i.i.i.i.i.i.i.epil
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !59
  %i.bw = getelementptr [8 x i8], ptr %i.ak, i64 %.01725.i.i.i.i.i.epil
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !59
  %i.by = fmul double %i.bv, %i.bx
  %i.bz = fadd double %.02324.i.i.i.i.i.epil, %i.by ; 2 uses
  %i.ca = add nuw nsw i64 %.01725.i.i.i.i.i.epil, 1
  %epil.iter706.next = add i64 %epil.iter706, 1   ; 2 uses
  %epil.iter706.cmp.not = icmp eq i64 %epil.iter706.next, %xtraiter705
  br i1 %epil.iter706.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !977

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.c, %bb.d
  %.0.i.i.i = phi double [ 0.000000e+00, %bb.c ], [ %i.ao, %bb.d ], [ %i.bs, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit.loopexit.unr-lcssa ], [ %i.bz, %.lr.ph.i.i.i.i.i.epil ] ; 3 uses
  %i.cb = getelementptr inbounds [16 x i8], ptr %i.t, i64 %.0258617 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !59 ; 3 uses
  %i.ce = fcmp olt double %i.cd, 0.000000e+00
  br i1 %i.ce, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit
  %i.cf = fcmp oeq double %i.cd, 0.000000e+00
  br i1 %i.cf, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.cg = fcmp une double %i.ah, 0.000000e+00
  %i.ch = fneg double %.0.i.i.i                   ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ae, i64 %.idx.i ; 2 uses
  br i1 %i.cg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cj = fdiv double %i.ch, %i.ah                ; 2 uses
  store double %i.cj, ptr %i.ci, align 8, !tbaa !59
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ck = fdiv double %i.ch, %i.v                 ; 2 uses
  store double %i.ck, ptr %i.ci, align 8, !tbaa !59
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %.idx.i278 = mul i64 %.0258.in616, 24
  %i.cl = getelementptr i8, ptr %i.ae, i64 %.idx.i278
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !59 ; 3 uses
  %i.cn = getelementptr [8 x i8], ptr %i.u, i64 %.0258.in616 ; 3 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 %.idx.i274
  %i.cp = load double, ptr %i.co, align 8, !tbaa !59
  %i.cq = load double, ptr %i.cb, align 16, !tbaa !59
  %i.cr = fsub double %i.cq, %i.x
  %i.cs = fneg double %.0.i.i.i                   ; 2 uses
  %i.ct = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %.0261614, i64 1 ; 2 uses
  %i.cv = insertelement <2 x double> %i.cu, double %i.cs, i64 1
  %i.cw = fmul <2 x double> %i.cu, %i.cv
  %i.cx = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.cm, i64 1 ; 2 uses
  %i.cz = insertelement <2 x double> %i.cy, double %.0263613, i64 1
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.cz, <2 x double> %i.cw) ; 2 uses
  %i.db = extractelement <2 x double> %i.da, i64 0
  %i.dc = extractelement <2 x double> %i.da, i64 1
  %i.dd = fdiv double %i.dc, %i.db                ; 5 uses
  %i.de = getelementptr i8, ptr %i.ae, i64 %.idx.i
  store double %i.dd, ptr %i.de, align 8, !tbaa !59
  %i.df = tail call noundef double @llvm.fabs.f64(double %i.cm)
  %i.dg = tail call noundef double @llvm.fabs.f64(double %.0261614)
  %i.dh = fcmp ogt double %i.df, %i.dg
  br i1 %i.dh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.di = fneg double %i.ah
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.di, double %i.dd, double %i.cs)
  %i.dk = fdiv double %i.dj, %i.cm
  %i.dl = getelementptr i8, ptr %i.cn, i64 %.idx.i
  store double %i.dk, ptr %i.dl, align 8, !tbaa !59
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.dm = fneg double %.0263613
  %i.dn = fneg double %i.cp
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.dd, double %i.dm)
  %i.dp = fdiv double %i.do, %.0261614
  %i.dq = getelementptr i8, ptr %i.cn, i64 %.idx.i
  store double %i.dp, ptr %i.dq, align 8, !tbaa !59
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.g, %bb.h
  %i.dr = phi double [ %i.dd, %bb.j ], [ %i.dd, %bb.k ], [ %i.cj, %bb.g ], [ %i.ck, %bb.h ] ; 2 uses
  %i.ds = tail call noundef double @llvm.fabs.f64(double %i.dr) ; 6 uses
  %i.dt = fmul double %i.ds, f0x3CB0000000000000
  %i.du = fmul double %i.ds, %i.dt
  %i.dv = fcmp ogt double %i.du, 1.000000e+00
  br i1 %i.dv, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.l
  %i.dw = sub nsw i64 4, %.0258.in616             ; 5 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %.0258617 ; 5 uses
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = lshr exact i64 %i.dy, 3
  %i.ea = and i64 %i.dz, 1
  %i.eb = tail call i64 @llvm.smin.i64(i64 %i.ea, i64 %i.dw) ; 5 uses
  %i.ec = sub i64 %i.dw, %i.eb                    ; 2 uses
  %i.ed = and i64 %i.ec, -2                       ; 2 uses
  %i.ee = add nsw i64 %i.ed, %i.eb                ; 5 uses
  %i.ef = icmp sgt i64 %i.eb, 0
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.eg = fdiv double %i.dr, %i.ds
  store double %i.eg, ptr %i.dx, align 8, !tbaa !59
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.eh = icmp sgt i64 %i.ec, 1
  br i1 %i.eh, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.ei = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.ek = icmp slt i64 %i.ee, %i.dw
  br i1 %i.ek, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.el = add i64 %i.eb, %i.ed
  %i.em = sub i64 %i.dw, %i.el                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.em, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader691, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.em, -2                      ; 3 uses
  %i.en = add i64 %i.ee, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ds, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = getelementptr [8 x i8], ptr %i.dx, i64 %i.ee
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %i.eo, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ep, align 8, !tbaa !59
  %i.eq = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.eq, ptr %i.ep, align 8, !tbaa !59
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !978

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.em, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader691

.lr.ph.i17.i.i.i.i.i.i.preheader691:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.ee, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.en, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader691, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.ev, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader691 ] ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !59
  %i.eu = fdiv double %i.et, %i.ds
  store double %i.eu, ptr %i.es, align 8, !tbaa !59
  %i.ev = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.ev, %i.dw
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !979

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.ez, %.lr.ph.i.i.i.i.i.i ], [ %i.eb, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.ex = load <2 x double>, ptr %i.ew, align 16, !tbaa !77
  %i.ey = fdiv <2 x double> %i.ex, %i.ej
  store <2 x double> %i.ey, ptr %i.ew, align 16, !tbaa !77
  %i.ez = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.fa = icmp slt i64 %i.ez, %i.ee
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !980

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %bb.l, %._crit_edge.i.i.i.i.i.i, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit
  %.1264 = phi double [ %.0.i.i.i, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit ], [ %.0263613, %bb.l ], [ %.0263613, %._crit_edge.i.i.i.i.i.i ], [ %.0263613, %middle.block ], [ %.0263613, %.lr.ph.i17.i.i.i.i.i.i ]
  %.1262 = phi double [ %i.ah, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit ], [ %.0261614, %bb.l ], [ %.0261614, %._crit_edge.i.i.i.i.i.i ], [ %.0261614, %middle.block ], [ %.0261614, %.lr.ph.i17.i.i.i.i.i.i ]
  %.1260 = phi i64 [ %.0259615, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit ], [ %.0258617, %bb.l ], [ %.0258617, %._crit_edge.i.i.i.i.i.i ], [ %.0258617, %middle.block ], [ %.0258617, %.lr.ph.i17.i.i.i.i.i.i ]
  %i.fb = icmp samesign ugt i64 %.0258.in616, 1
  br i1 %i.fb, label %bb.c, label %.loopexit597, !llvm.loop !981

bb.m:                                             ; preds = %bb.a
  %i.fc = fcmp olt double %i.z, 0.000000e+00
  %i.fd = icmp ne i64 %.0265619, 0
  %or.cond = and i1 %i.fd, %i.fc
  br i1 %or.cond, label %bb.n, label %.loopexit597

bb.n:                                             ; preds = %bb.m
  %i.fe = add nsw i64 %.0265619, -1               ; 4 uses
  %i.ff = getelementptr [8 x i8], ptr %i.u, i64 %.0265619 ; 3 uses
  %.idx.i285 = mul i64 %i.fe, 24                  ; 8 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 %.idx.i285 ; 2 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !59 ; 3 uses
  %i.fi = tail call noundef double @llvm.fabs.f64(double %i.fh)
  %i.fj = getelementptr [8 x i8], ptr %i.u, i64 %i.fe ; 2 uses
  %.idx.i286 = mul i64 %.0265619, 24              ; 8 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 %.idx.i286 ; 2 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !59 ; 2 uses
  %i.fm = tail call noundef double @llvm.fabs.f64(double %i.fl)
  %i.fn = fcmp ogt double %i.fi, %i.fm
  %i.fo = getelementptr i8, ptr %i.fj, i64 %.idx.i285 ; 3 uses
  br i1 %i.fn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fp = fdiv double %i.z, %i.fh
  store double %i.fp, ptr %i.fo, align 8, !tbaa !59
  %i.fq = getelementptr i8, ptr %i.ff, i64 %.idx.i286
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !59
  %i.fs = fsub double %i.fr, %i.x
  %i.ft = fneg double %i.fs
  %i.fu = fdiv double %i.ft, %i.fh
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.fv = fneg double %i.fl
  %i.fw = load double, ptr %i.fo, align 8, !tbaa !59
  %i.fx = fsub double %i.fw, %i.x
  %i.fy = tail call noundef { double, double } @__divdc3(double noundef 0.000000e+00, double noundef %i.fv, double noundef %i.fx, double noundef %i.z) #27 ; 2 uses
  %i.fz = extractvalue { double, double } %i.fy, 0
  %i.ga = extractvalue { double, double } %i.fy, 1
  store double %i.fz, ptr %i.fo, align 8, !tbaa !59
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %storemerge596 = phi double [ %i.ga, %bb.p ], [ %i.fu, %bb.o ]
  store double %storemerge596, ptr %i.fk, align 8, !tbaa !59
  store double 0.000000e+00, ptr %i.fg, align 8, !tbaa !59
  %i.gb = getelementptr i8, ptr %i.ff, i64 %.idx.i286
  store double 1.000000e+00, ptr %i.gb, align 8, !tbaa !59
  %i.gc = icmp samesign ugt i64 %.0265619, 1
  br i1 %i.gc, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i.i.2

.lr.ph:                                           ; preds = %bb.q
  %i.gd = add nsw i64 %.0265619, -2
  %i.ge = getelementptr inbounds i8, ptr %i.u, i64 %.idx.i285
  %i.gf = getelementptr inbounds i8, ptr %i.u, i64 %.idx.i286 ; 2 uses
  %i.gg = fneg double %i.z                        ; 2 uses
  %i.gh = tail call double @llvm.fabs.f64(double %i.z) ; 2 uses
  %i.gi = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gj = insertelement <2 x double> %i.gi, double %i.z, i64 1 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEdVERKd.exit
  %.0250611 = phi i64 [ %i.gd, %.lr.ph ], [ %i.pv, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEdVERKd.exit ] ; 11 uses
  %.0251610 = phi i64 [ %i.fe, %.lr.ph ], [ %.1, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEdVERKd.exit ] ; 7 uses
  %.0252609 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1253, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEdVERKd.exit ] ; 8 uses
  %i.gk = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.pu, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEdVERKd.exit ] ; 6 uses
  %i.gl = getelementptr [8 x i8], ptr %i.u, i64 %.0250611 ; 8 uses
  %i.gm = sub nsw i64 %.0265619, %.0251610        ; 6 uses
  %.idx.i.i.i.i.i298 = mul nsw i64 %.0251610, 24
  %i.gn = getelementptr inbounds i8, ptr %i.gl, i64 %.idx.i.i.i.i.i298 ; 11 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %.0251610 ; 6 uses
  %i.gp = icmp eq i64 %i.gm, -1
  br i1 %i.gp, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gq = load double, ptr %i.gn, align 8, !tbaa !59 ; 3 uses
  %i.gr = load double, ptr %i.go, align 8, !tbaa !59
  %i.gs = fmul double %i.gq, %i.gr                ; 3 uses
  %i.gt = icmp sgt i64 %i.gm, 0
  br i1 %i.gt, label %.lr.ph.i.i.i.i.i305.preheader, label %.thread

.lr.ph.i.i.i.i.i305.preheader:                    ; preds = %bb.s
  %i.gu = xor i64 %.0251610, -1
  %i.gv = add i64 %.0265619, %i.gu                ; 2 uses
  %xtraiter = and i64 %i.gm, 3                    ; 3 uses
  %i.gw = icmp ult i64 %i.gv, 3
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i305.epil.preheader, label %.lr.ph.i.i.i.i.i305.preheader.new

.lr.ph.i.i.i.i.i305.preheader.new:                ; preds = %.lr.ph.i.i.i.i.i305.preheader
  %unroll_iter = and i64 %i.gm, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i305

.thread:                                          ; preds = %bb.s
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %.0251610
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !59
  %i.gz = fmul double %i.gq, %i.gy
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323

.lr.ph.i.i.i.i.i305:                              ; preds = %.lr.ph.i.i.i.i.i305, %.lr.ph.i.i.i.i.i305.preheader.new
  %.01725.i.i.i.i.i306 = phi i64 [ 1, %.lr.ph.i.i.i.i.i305.preheader.new ], [ %i.ib, %.lr.ph.i.i.i.i.i305 ] ; 6 uses
  %.02324.i.i.i.i.i307 = phi double [ %i.gs, %.lr.ph.i.i.i.i.i305.preheader.new ], [ %i.ia, %.lr.ph.i.i.i.i.i305 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i305.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i305 ]
  %.idx.i.i.i.i.i.i.i.i.i308 = mul i64 %.01725.i.i.i.i.i306, 24
  %i.ha = getelementptr i8, ptr %i.gn, i64 %.idx.i.i.i.i.i.i.i.i.i308
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !59
  %i.hc = getelementptr [8 x i8], ptr %i.go, i64 %.01725.i.i.i.i.i306
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !59
  %i.he = fmul double %i.hb, %i.hd
  %i.hf = fadd double %.02324.i.i.i.i.i307, %i.he
  %i.hg = add nuw nsw i64 %.01725.i.i.i.i.i306, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i308.1 = mul i64 %i.hg, 24
  %i.hh = getelementptr i8, ptr %i.gn, i64 %.idx.i.i.i.i.i.i.i.i.i308.1
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !59
  %i.hj = getelementptr [8 x i8], ptr %i.go, i64 %i.hg
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !59
  %i.hl = fmul double %i.hi, %i.hk
  %i.hm = fadd double %i.hf, %i.hl
  %i.hn = add nuw nsw i64 %.01725.i.i.i.i.i306, 2 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i308.2 = mul i64 %i.hn, 24
  %i.ho = getelementptr i8, ptr %i.gn, i64 %.idx.i.i.i.i.i.i.i.i.i308.2
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !59
  %i.hq = getelementptr [8 x i8], ptr %i.go, i64 %i.hn
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !59
  %i.hs = fmul double %i.hp, %i.hr
  %i.ht = fadd double %i.hm, %i.hs
  %i.hu = add nuw nsw i64 %.01725.i.i.i.i.i306, 3 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i308.3 = mul i64 %i.hu, 24
  %i.hv = getelementptr i8, ptr %i.gn, i64 %.idx.i.i.i.i.i.i.i.i.i308.3
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !59
  %i.hx = getelementptr [8 x i8], ptr %i.go, i64 %i.hu
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !59
  %i.hz = fmul double %i.hw, %i.hy
  %i.ia = fadd double %i.ht, %i.hz                ; 3 uses
  %i.ib = add nuw nsw i64 %.01725.i.i.i.i.i306, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i305, !llvm.loop !976

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i305
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.lr.ph.i.i.i.i.i305.epil.preheader

.lr.ph.i.i.i.i.i305.epil.preheader:               ; preds = %.unr-lcssa, %.lr.ph.i.i.i.i.i305.preheader
  %.01725.i.i.i.i.i306.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i305.preheader ], [ %i.ib, %.unr-lcssa ]
  %.02324.i.i.i.i.i307.epil.init = phi double [ %i.gs, %.lr.ph.i.i.i.i.i305.preheader ], [ %i.ia, %.unr-lcssa ]
  %lcmp.mod697 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod697)
  br label %.lr.ph.i.i.i.i.i305.epil

.lr.ph.i.i.i.i.i305.epil:                         ; preds = %.lr.ph.i.i.i.i.i305.epil, %.lr.ph.i.i.i.i.i305.epil.preheader
  %.01725.i.i.i.i.i306.epil = phi i64 [ %i.ii, %.lr.ph.i.i.i.i.i305.epil ], [ %.01725.i.i.i.i.i306.epil.init, %.lr.ph.i.i.i.i.i305.epil.preheader ] ; 3 uses
  %.02324.i.i.i.i.i307.epil = phi double [ %i.ih, %.lr.ph.i.i.i.i.i305.epil ], [ %.02324.i.i.i.i.i307.epil.init, %.lr.ph.i.i.i.i.i305.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i305.epil ], [ 0, %.lr.ph.i.i.i.i.i305.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i308.epil = mul i64 %.01725.i.i.i.i.i306.epil, 24
  %i.ic = getelementptr i8, ptr %i.gn, i64 %.idx.i.i.i.i.i.i.i.i.i308.epil
  %i.id = load double, ptr %i.ic, align 8, !tbaa !59
  %i.ie = getelementptr [8 x i8], ptr %i.go, i64 %.01725.i.i.i.i.i306.epil
  %i.if = load double, ptr %i.ie, align 8, !tbaa !59
  %i.ig = fmul double %i.id, %i.if
  %i.ih = fadd double %.02324.i.i.i.i.i307.epil, %i.ig ; 2 uses
  %i.ii = add nuw nsw i64 %.01725.i.i.i.i.i306.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.lr.ph.i.i.i.i.i305.epil, !llvm.loop !982

.epilog-lcssa:                                    ; preds = %.lr.ph.i.i.i.i.i305.epil, %.unr-lcssa
  %.lcssa = phi double [ %i.ia, %.unr-lcssa ], [ %i.ih, %.lr.ph.i.i.i.i.i305.epil ] ; 2 uses
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %.0251610 ; 6 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !59
  %i.il = fmul double %i.gq, %i.ik                ; 2 uses
  %xtraiter698 = and i64 %i.gm, 3                 ; 3 uses
  %i.im = icmp ult i64 %i.gv, 3
  br i1 %i.im, label %.lr.ph.i.i.i.i.i318.epil.preheader, label %.new

.new:                                             ; preds = %.epilog-lcssa
  %unroll_iter703 = and i64 %i.gm, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i318

.lr.ph.i.i.i.i.i318:                              ; preds = %.lr.ph.i.i.i.i.i318, %.new
  %.01725.i.i.i.i.i319 = phi i64 [ 1, %.new ], [ %i.jo, %.lr.ph.i.i.i.i.i318 ] ; 6 uses
  %.02324.i.i.i.i.i320 = phi double [ %i.il, %.new ], [ %i.jn, %.lr.ph.i.i.i.i.i318 ]
  %niter704 = phi i64 [ 0, %.new ], [ %niter704.next.3, %.lr.ph.i.i.i.i.i318 ]
  %.idx.i.i.i.i.i.i.i.i.i321 = mul i64 %.01725.i.i.i.i.i319, 24
  %i.in = getelementptr i8, ptr %i.gn, i64 %.idx.i.i.i.i.i.i.i.i.i321
  %i.io = load double, ptr %i.in, align 8, !tbaa !59
  %i.ip = getelementptr [8 x i8], ptr %i.ij, i64 %.01725.i.i.i.i.i319
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !59
  %i.ir = fmul double %i.io, %i.iq
  %i.is = fadd double %.02324.i.i.i.i.i320, %i.ir
  %i.it = add nuw nsw i64 %.01725.i.i.i.i.i319, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i321.1 = mul i64 %i.it, 24
  %i.iu = getelementptr i8, ptr %i.gn, i64 %.idx.i.i.i.i.i.i.i.i.i321.1
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !59
  %i.iw = getelementptr [8 x i8], ptr %i.ij, i64 %i.it
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !59
  %i.iy = fmul double %i.iv, %i.ix
  %i.iz = fadd double %i.is, %i.iy
  %i.ja = add nuw nsw i64 %.01725.i.i.i.i.i319, 2 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i321.2 = mul i64 %i.ja, 24
  %i.jb = getelementptr i8, ptr %i.gn, i64 %.idx.i.i.i.i.i.i.i.i.i321.2
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !59
  %i.jd = getelementptr [8 x i8], ptr %i.ij, i64 %i.ja
  %i.je = load double, ptr %i.jd, align 8, !tbaa !59
  %i.jf = fmul double %i.jc, %i.je
  %i.jg = fadd double %i.iz, %i.jf
  %i.jh = add nuw nsw i64 %.01725.i.i.i.i.i319, 3 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i321.3 = mul i64 %i.jh, 24
  %i.ji = getelementptr i8, ptr %i.gn, i64 %.idx.i.i.i.i.i.i.i.i.i321.3
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !59
  %i.jk = getelementptr [8 x i8], ptr %i.ij, i64 %i.jh
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !59
  %i.jm = fmul double %i.jj, %i.jl
  %i.jn = fadd double %i.jg, %i.jm                ; 3 uses
  %i.jo = add nuw nsw i64 %.01725.i.i.i.i.i319, 4 ; 2 uses
  %niter704.next.3 = add i64 %niter704, 4         ; 2 uses
  %niter704.ncmp.3 = icmp eq i64 %niter704.next.3, %unroll_iter703
  br i1 %niter704.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i318, !llvm.loop !976

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i318
  %lcmp.mod700.not = icmp eq i64 %xtraiter698, 0
  br i1 %lcmp.mod700.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323, label %.lr.ph.i.i.i.i.i318.epil.preheader

.lr.ph.i.i.i.i.i318.epil.preheader:               ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323.loopexit.unr-lcssa, %.epilog-lcssa
  %.01725.i.i.i.i.i319.epil.init = phi i64 [ 1, %.epilog-lcssa ], [ %i.jo, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323.loopexit.unr-lcssa ]
  %.02324.i.i.i.i.i320.epil.init = phi double [ %i.il, %.epilog-lcssa ], [ %i.jn, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323.loopexit.unr-lcssa ]
  %lcmp.mod702 = icmp ne i64 %xtraiter698, 0
  tail call void @llvm.assume(i1 %lcmp.mod702)
  br label %.lr.ph.i.i.i.i.i318.epil

.lr.ph.i.i.i.i.i318.epil:                         ; preds = %.lr.ph.i.i.i.i.i318.epil, %.lr.ph.i.i.i.i.i318.epil.preheader
  %.01725.i.i.i.i.i319.epil = phi i64 [ %i.jv, %.lr.ph.i.i.i.i.i318.epil ], [ %.01725.i.i.i.i.i319.epil.init, %.lr.ph.i.i.i.i.i318.epil.preheader ] ; 3 uses
  %.02324.i.i.i.i.i320.epil = phi double [ %i.ju, %.lr.ph.i.i.i.i.i318.epil ], [ %.02324.i.i.i.i.i320.epil.init, %.lr.ph.i.i.i.i.i318.epil.preheader ]
  %epil.iter699 = phi i64 [ %epil.iter699.next, %.lr.ph.i.i.i.i.i318.epil ], [ 0, %.lr.ph.i.i.i.i.i318.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i321.epil = mul i64 %.01725.i.i.i.i.i319.epil, 24
  %i.jp = getelementptr i8, ptr %i.gn, i64 %.idx.i.i.i.i.i.i.i.i.i321.epil
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !59
  %i.jr = getelementptr [8 x i8], ptr %i.ij, i64 %.01725.i.i.i.i.i319.epil
  %i.js = load double, ptr %i.jr, align 8, !tbaa !59
  %i.jt = fmul double %i.jq, %i.js
  %i.ju = fadd double %.02324.i.i.i.i.i320.epil, %i.jt ; 2 uses
  %i.jv = add nuw nsw i64 %.01725.i.i.i.i.i319.epil, 1
  %epil.iter699.next = add i64 %epil.iter699, 1   ; 2 uses
  %epil.iter699.cmp.not = icmp eq i64 %epil.iter699.next, %xtraiter698
  br i1 %epil.iter699.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323, label %.lr.ph.i.i.i.i.i318.epil, !llvm.loop !983

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i318.epil, %bb.r, %.thread
  %.0.i.i.i304594 = phi double [ 0.000000e+00, %bb.r ], [ %i.gs, %.thread ], [ %.lcssa, %.lr.ph.i.i.i.i.i318.epil ], [ %.lcssa, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323.loopexit.unr-lcssa ] ; 3 uses
  %.0.i.i.i317 = phi double [ 0.000000e+00, %bb.r ], [ %i.gz, %.thread ], [ %i.jn, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323.loopexit.unr-lcssa ], [ %i.ju, %.lr.ph.i.i.i.i.i318.epil ] ; 3 uses
  %.idx.i324 = mul i64 %.0250611, 24              ; 2 uses
  %i.jw = getelementptr i8, ptr %i.gl, i64 %.idx.i324
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !59
  %i.jy = fsub double %i.jx, %i.x                 ; 4 uses
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.0250611 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !59 ; 4 uses
  %i.kc = fcmp olt double %i.kb, 0.000000e+00
  %i.kd = insertelement <2 x double> poison, double %.0.i.i.i317, i64 0
  %i.ke = insertelement <2 x double> %i.kd, double %.0.i.i.i304594, i64 1 ; 2 uses
  br i1 %i.kc, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEdVERKd.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323
  %i.kf = fcmp oeq double %i.kb, 0.000000e+00
  br i1 %i.kf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kg = fneg double %.0.i.i.i304594
  %i.kh = fneg double %.0.i.i.i317
  %i.ki = tail call noundef { double, double } @__divdc3(double noundef %i.kg, double noundef %i.kh, double noundef %i.jy, double noundef %i.z) #27 ; 2 uses
  %i.kj = extractvalue { double, double } %i.ki, 0 ; 2 uses
  %i.kk = extractvalue { double, double } %i.ki, 1 ; 2 uses
  %i.kl = getelementptr i8, ptr %i.gl, i64 %.idx.i285
  store double %i.kj, ptr %i.kl, align 8, !tbaa !59
  %i.km = getelementptr i8, ptr %i.gl, i64 %.idx.i286
  store double %i.kk, ptr %i.km, align 8, !tbaa !59
  br label %bb.aa

bb.v:                                             ; preds = %bb.t
  %i.kn = add nuw nsw i64 %.0250611, 1            ; 2 uses
  %.idx.i330 = mul i64 %i.kn, 24
  %i.ko = getelementptr i8, ptr %i.gl, i64 %.idx.i330
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !59 ; 3 uses
  %i.kq = getelementptr [8 x i8], ptr %i.u, i64 %i.kn ; 5 uses
  %i.kr = getelementptr i8, ptr %i.kq, i64 %.idx.i324
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !59 ; 2 uses
  %i.kt = load double, ptr %i.jz, align 16, !tbaa !59
  %i.ku = fsub double %i.kt, %i.x                 ; 3 uses
  %i.kv = fmul double %i.kb, %i.kb
  %i.kw = tail call double @llvm.fmuladd.f64(double %i.ku, double %i.ku, double %i.kv)
  %i.kx = tail call double @llvm.fmuladd.f64(double %i.gg, double %i.z, double %i.kw) ; 2 uses
  %i.ky = fmul double %i.ku, 2.000000e+00
  %i.kz = fmul double %i.z, %i.ky                 ; 2 uses
  %i.la = fcmp oeq double %i.kx, 0.000000e+00
  %i.lb = fcmp oeq double %i.kz, 0.000000e+00
  %or.cond3 = and i1 %i.la, %i.lb
  br i1 %or.cond3, label %bb.w, label %._crit_edge

._crit_edge:                                      ; preds = %bb.v
  %.pre639 = tail call noundef double @llvm.fabs.f64(double %i.kp)
  %.pre640 = tail call noundef double @llvm.fabs.f64(double %.0252609)
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.lc = tail call noundef double @llvm.fabs.f64(double %i.jy)
  %i.ld = fadd double %i.gh, %i.lc
  %i.le = tail call noundef double @llvm.fabs.f64(double %i.kp) ; 2 uses
  %i.lf = fadd double %i.ld, %i.le
  %i.lg = tail call noundef double @llvm.fabs.f64(double %i.ks)
  %i.lh = fadd double %i.lf, %i.lg
  %i.li = tail call noundef double @llvm.fabs.f64(double %.0252609) ; 2 uses
  %i.lj = fadd double %i.li, %i.lh
  %i.lk = fmul double %i.v, %i.lj
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.w
  %.pre-phi641 = phi double [ %.pre640, %._crit_edge ], [ %i.li, %bb.w ]
  %.pre-phi = phi double [ %.pre639, %._crit_edge ], [ %i.le, %bb.w ]
  %.0249 = phi double [ %i.kx, %._crit_edge ], [ %i.lk, %bb.w ]
  %i.ll = fneg <2 x double> %i.ke                 ; 2 uses
  %i.lm = insertelement <2 x double> poison, double %.0252609, i64 0
  %i.ln = shufflevector <2 x double> %i.lm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lo = fmul <2 x double> %i.ln, %i.ll
  %i.lp = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lq, <2 x double> %i.gk, <2 x double> %i.lo)
  %1 = insertelement <2 x double> poison, double %.0.i.i.i304594, i64 0
  %2 = insertelement <2 x double> %1, double %.0.i.i.i317, i64 1
  %3 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> %2, <2 x double> %i.lr) ; 2 uses
  %i.ls = extractelement <2 x double> %3, i64 0
  %4 = extractelement <2 x double> %3, i64 1
  %i.lt = tail call noundef { double, double } @__divdc3(double noundef %4, double noundef %i.ls, double noundef %.0249, double noundef %i.kz) #27 ; 2 uses
  %i.lu = extractvalue { double, double } %i.lt, 0 ; 4 uses
  %i.lv = extractvalue { double, double } %i.lt, 1 ; 4 uses
  %i.lw = getelementptr i8, ptr %i.gl, i64 %.idx.i285 ; 2 uses
  store double %i.lu, ptr %i.lw, align 8, !tbaa !59
  %i.lx = getelementptr i8, ptr %i.gl, i64 %.idx.i286 ; 2 uses
  store double %i.lv, ptr %i.lx, align 8, !tbaa !59
  %i.ly = fadd double %i.gh, %.pre-phi641
  %i.lz = fcmp ogt double %.pre-phi, %i.ly
  br i1 %i.lz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ma = fneg double %i.jy
  %i.mb = getelementptr i8, ptr %i.kq, i64 %.idx.i285
  %i.mc = insertelement <2 x double> poison, double %i.ma, i64 0
  %i.md = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.me = insertelement <2 x double> poison, double %i.lv, i64 0
  %i.mf = insertelement <2 x double> %i.me, double %i.lu, i64 1 ; 2 uses
  %i.mg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> %i.mf, <2 x double> %i.ll)
  %i.mh = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> %i.mh, <2 x double> %i.mg)
  %i.mj = fdiv <2 x double> %i.mi, %i.lq          ; 2 uses
  %i.mk = extractelement <2 x double> %i.mj, i64 1
  store double %i.mk, ptr %i.mb, align 8, !tbaa !59
  %i.ml = getelementptr i8, ptr %i.kq, i64 %.idx.i286
  %i.mm = extractelement <2 x double> %i.mj, i64 0
  store double %i.mm, ptr %i.ml, align 8, !tbaa !59
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.mn = fneg <2 x double> %i.gk
  %i.mo = fneg double %i.ks
  %i.mp = insertelement <2 x double> poison, double %i.mo, i64 0
  %i.mq = shufflevector <2 x double> %i.mp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mr = insertelement <2 x double> poison, double %i.lv, i64 0
  %i.ms = insertelement <2 x double> %i.mr, double %i.lu, i64 1
  %i.mt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> %i.ms, <2 x double> %i.mn) ; 2 uses
  %i.mu = extractelement <2 x double> %i.mt, i64 0
  %i.mv = extractelement <2 x double> %i.mt, i64 1
  %i.mw = tail call noundef { double, double } @__divdc3(double noundef %i.mv, double noundef %i.mu, double noundef %.0252609, double noundef %i.z) #27 ; 2 uses
  %i.mx = extractvalue { double, double } %i.mw, 0
  %i.my = extractvalue { double, double } %i.mw, 1
  %i.mz = getelementptr i8, ptr %i.kq, i64 %.idx.i285
  store double %i.mx, ptr %i.mz, align 8, !tbaa !59
  %i.na = getelementptr i8, ptr %i.kq, i64 %.idx.i286
  store double %i.my, ptr %i.na, align 8, !tbaa !59
  %.pre = load double, ptr %i.lw, align 8, !tbaa !59
  %.pre632 = load double, ptr %i.lx, align 8, !tbaa !59
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.u
  %i.nb = phi double [ %i.lv, %bb.y ], [ %.pre632, %bb.z ], [ %i.kk, %bb.u ]
  %i.nc = phi double [ %i.lu, %bb.y ], [ %.pre, %bb.z ], [ %i.kj, %bb.u ]
  %i.nd = getelementptr i8, ptr %i.gl, i64 %.idx.i285 ; 9 uses
  %i.ne = tail call noundef double @llvm.fabs.f64(double %i.nc) ; 2 uses
  %i.nf = tail call noundef double @llvm.fabs.f64(double %i.nb) ; 2 uses
  %i.ng = fcmp olt double %i.ne, %i.nf
  %.sroa.speculated = select i1 %i.ng, double %i.nf, double %i.ne ; 9 uses
  %i.nh = fmul double %.sroa.speculated, f0x3CB0000000000000
  %i.ni = fmul double %.sroa.speculated, %i.nh
  %i.nj = fcmp ogt double %i.ni, 1.000000e+00
  br i1 %i.nj, label %.lr.ph54.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEdVERKd.exit

.lr.ph54.i.i.i.i.i.i:                             ; preds = %bb.aa
  %i.nk = sub nsw i64 3, %.0250611                ; 10 uses
  %i.nl = ptrtoint ptr %i.nd to i64
  %i.nm = lshr exact i64 %i.nl, 3
  %i.nn = and i64 %i.nm, 1
  %i.no = tail call i64 @llvm.smin.i64(i64 %i.nn, i64 %i.nk) ; 6 uses
  %i.np = insertelement <2 x double> poison, double %.sroa.speculated, i64 0
  %i.nq = shufflevector <2 x double> %i.np, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nr = sub i64 %i.nk, %i.no                    ; 2 uses
  %i.ns = and i64 %i.nr, -2                       ; 2 uses
  %i.nt = add nsw i64 %i.ns, %i.no                ; 5 uses
  %i.nu = icmp sgt i64 %i.no, 0
  br i1 %i.nu, label %.preheader45.loopexit.i.i.i.i.i.i, label %.preheader45.i.i.i.i.i.i

.preheader45.loopexit.i.i.i.i.i.i:                ; preds = %.lr.ph54.i.i.i.i.i.i
  %i.nv = load double, ptr %i.nd, align 8, !tbaa !59
  %i.nw = fdiv double %i.nv, %.sroa.speculated
  store double %i.nw, ptr %i.nd, align 8, !tbaa !59
  br label %.preheader45.i.i.i.i.i.i

.preheader45.i.i.i.i.i.i:                         ; preds = %.preheader45.loopexit.i.i.i.i.i.i, %.lr.ph54.i.i.i.i.i.i
  %i.nx = icmp sgt i64 %i.nr, 1
  br i1 %i.nx, label %.lr.ph49.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph49.i.i.i.i.i.i, %.preheader45.i.i.i.i.i.i
  %i.ny = icmp slt i64 %i.nt, %i.nk
  br i1 %i.ny, label %.lr.ph51.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i356

.lr.ph51.i.i.i.i.i.i.preheader:                   ; preds = %.preheader.i.i.i.i.i.i
  %i.nz = add i64 %i.no, %i.ns
  %i.oa = sub i64 %i.nk, %i.nz                    ; 3 uses
  %min.iters.check678 = icmp ult i64 %i.oa, 2
  br i1 %min.iters.check678, label %.lr.ph51.i.i.i.i.i.i.preheader692, label %vector.ph679

vector.ph679:                                     ; preds = %.lr.ph51.i.i.i.i.i.i.preheader
  %n.vec680 = and i64 %i.oa, -2                   ; 3 uses
  %i.ob = add i64 %i.nt, %n.vec680
  %broadcast.splatinsert681 = insertelement <2 x double> poison, double %.sroa.speculated, i64 0
  %broadcast.splat682 = shufflevector <2 x double> %broadcast.splatinsert681, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oc = getelementptr [8 x i8], ptr %i.nd, i64 %i.nt
  br label %vector.body683

vector.body683:                                   ; preds = %vector.body683, %vector.ph679
  %index684 = phi i64 [ 0, %vector.ph679 ], [ %index.next686, %vector.body683 ] ; 2 uses
  %i.od = getelementptr [8 x i8], ptr %i.oc, i64 %index684 ; 2 uses
  %wide.load685 = load <2 x double>, ptr %i.od, align 8, !tbaa !59
  %i.oe = fdiv <2 x double> %wide.load685, %broadcast.splat682
  store <2 x double> %i.oe, ptr %i.od, align 8, !tbaa !59
  %index.next686 = add nuw i64 %index684, 2       ; 2 uses
  %i.of = icmp eq i64 %index.next686, %n.vec680
  br i1 %i.of, label %middle.block687, label %vector.body683, !llvm.loop !984

middle.block687:                                  ; preds = %vector.body683
  %cmp.n688 = icmp eq i64 %i.oa, %n.vec680
  br i1 %cmp.n688, label %._crit_edge.i.i.i.i.i.i356, label %.lr.ph51.i.i.i.i.i.i.preheader692

.lr.ph51.i.i.i.i.i.i.preheader692:                ; preds = %.lr.ph51.i.i.i.i.i.i.preheader, %middle.block687
  %.050.i.i.i.i.i.i.ph = phi i64 [ %i.nt, %.lr.ph51.i.i.i.i.i.i.preheader ], [ %i.ob, %middle.block687 ]
  br label %.lr.ph51.i.i.i.i.i.i

.lr.ph49.i.i.i.i.i.i:                             ; preds = %.preheader45.i.i.i.i.i.i, %.lr.ph49.i.i.i.i.i.i
  %.03248.i.i.i.i.i.i = phi i64 [ %i.oj, %.lr.ph49.i.i.i.i.i.i ], [ %i.no, %.preheader45.i.i.i.i.i.i ] ; 2 uses
  %i.og = getelementptr [8 x i8], ptr %i.nd, i64 %.03248.i.i.i.i.i.i ; 2 uses
  %i.oh = load <2 x double>, ptr %i.og, align 16, !tbaa !77
  %i.oi = fdiv <2 x double> %i.oh, %i.nq
  store <2 x double> %i.oi, ptr %i.og, align 16, !tbaa !77
  %i.oj = add nsw i64 %.03248.i.i.i.i.i.i, 2      ; 2 uses
  %i.ok = icmp slt i64 %i.oj, %i.nt
  br i1 %i.ok, label %.lr.ph49.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !985

._crit_edge.i.i.i.i.i.i356:                       ; preds = %.lr.ph51.i.i.i.i.i.i, %middle.block687, %.preheader.i.i.i.i.i.i
  %i.ol = add nsw i64 %i.no, 1
  %i.om = srem i64 %i.ol, 2
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.nk, i64 %i.om) ; 5 uses
  %i.on = sub i64 %i.nk, %.sroa.speculated.i.i.i.i.i.i ; 2 uses
  %i.oo = and i64 %i.on, -2                       ; 2 uses
  %i.op = add nsw i64 %i.oo, %.sroa.speculated.i.i.i.i.i.i ; 5 uses
  %i.oq = icmp sgt i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.oq, label %.preheader45.loopexit.i.i.i.i.i.i.1, label %.preheader45.i.i.i.i.i.i.1

.preheader45.loopexit.i.i.i.i.i.i.1:              ; preds = %._crit_edge.i.i.i.i.i.i356
  %i.or = getelementptr i8, ptr %i.nd, i64 24     ; 2 uses
  %i.os = load double, ptr %i.or, align 8, !tbaa !59
  %i.ot = fdiv double %i.os, %.sroa.speculated
  store double %i.ot, ptr %i.or, align 8, !tbaa !59
  br label %.preheader45.i.i.i.i.i.i.1

.preheader45.i.i.i.i.i.i.1:                       ; preds = %.preheader45.loopexit.i.i.i.i.i.i.1, %._crit_edge.i.i.i.i.i.i356
  %i.ou = icmp sgt i64 %i.on, 1
  br i1 %i.ou, label %.lr.ph49.i.i.i.i.i.i.1, label %.preheader.i.i.i.i.i.i.1

.lr.ph49.i.i.i.i.i.i.1:                           ; preds = %.preheader45.i.i.i.i.i.i.1
  %i.ov = getelementptr i8, ptr %i.nd, i64 24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph49.i.i.i.i.i.i.1
  %.03248.i.i.i.i.i.i.1 = phi i64 [ %.sroa.speculated.i.i.i.i.i.i, %.lr.ph49.i.i.i.i.i.i.1 ], [ %i.oz, %bb.ab ] ; 2 uses
  %i.ow = getelementptr [8 x i8], ptr %i.ov, i64 %.03248.i.i.i.i.i.i.1 ; 2 uses
  %i.ox = load <2 x double>, ptr %i.ow, align 16, !tbaa !77
  %i.oy = fdiv <2 x double> %i.ox, %i.nq
  store <2 x double> %i.oy, ptr %i.ow, align 16, !tbaa !77
  %i.oz = add nsw i64 %.03248.i.i.i.i.i.i.1, 2    ; 2 uses
  %i.pa = icmp slt i64 %i.oz, %i.op
  br i1 %i.pa, label %bb.ab, label %.preheader.i.i.i.i.i.i.1, !llvm.loop !985

.preheader.i.i.i.i.i.i.1:                         ; preds = %bb.ab, %.preheader45.i.i.i.i.i.i.1
  %i.pb = icmp slt i64 %i.op, %i.nk
  br i1 %i.pb, label %.lr.ph51.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEdVERKd.exit

.lr.ph51.i.i.i.i.i.i.1:                           ; preds = %.preheader.i.i.i.i.i.i.1
  %i.pc = getelementptr i8, ptr %i.nd, i64 24     ; 2 uses
  %i.pd = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.oo
  %i.pe = sub i64 %i.nk, %i.pd                    ; 3 uses
  %min.iters.check665 = icmp ult i64 %i.pe, 2
  br i1 %min.iters.check665, label %scalar.ph664.preheader, label %vector.ph666

vector.ph666:                                     ; preds = %.lr.ph51.i.i.i.i.i.i.1
  %n.vec667 = and i64 %i.pe, -2                   ; 3 uses
  %i.pf = add i64 %i.op, %n.vec667
  %broadcast.splatinsert668 = insertelement <2 x double> poison, double %.sroa.speculated, i64 0
  %broadcast.splat669 = shufflevector <2 x double> %broadcast.splatinsert668, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pg = getelementptr [8 x i8], ptr %i.pc, i64 %i.op
  br label %vector.body670

vector.body670:                                   ; preds = %vector.body670, %vector.ph666
  %index671 = phi i64 [ 0, %vector.ph666 ], [ %index.next673, %vector.body670 ] ; 2 uses
  %i.ph = getelementptr [8 x i8], ptr %i.pg, i64 %index671 ; 2 uses
  %wide.load672 = load <2 x double>, ptr %i.ph, align 8, !tbaa !59
  %i.pi = fdiv <2 x double> %wide.load672, %broadcast.splat669
  store <2 x double> %i.pi, ptr %i.ph, align 8, !tbaa !59
  %index.next673 = add nuw i64 %index671, 2       ; 2 uses
  %i.pj = icmp eq i64 %index.next673, %n.vec667
  br i1 %i.pj, label %middle.block674, label %vector.body670, !llvm.loop !986

middle.block674:                                  ; preds = %vector.body670
  %cmp.n675 = icmp eq i64 %i.pe, %n.vec667
  br i1 %cmp.n675, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEdVERKd.exit, label %scalar.ph664.preheader

end_hunk_0
