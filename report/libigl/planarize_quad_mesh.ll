inline.NumInlined: 17087
inline.NumDeleted: 8655
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE7computeIS2_EERS3_RKNS_9EigenBaseIT_EEb:bb.a
  store ptr %i.au, ptr %i.ay, align 8, !tbaa !821, !alias.scope !818
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.az, align 8, !tbaa !823, !alias.scope !818
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2, ptr %i.ba, align 8, !tbaa !825, !alias.scope !818
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 1, ptr %i.bb, align 8, !tbaa !826, !alias.scope !818
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
  %i.bf = load <2 x double>, ptr %0, align 16, !tbaa !81
  %i.bg = fmul <2 x double> %i.ag, %i.bf
  store <2 x double> %i.bg, ptr %0, align 16, !tbaa !81
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = load <2 x double>, ptr %i.bh, align 16, !tbaa !81
  %i.bj = fmul <2 x double> %i.ag, %i.bi
  store <2 x double> %i.bj, ptr %i.bh, align 16, !tbaa !81
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bl = load <2 x double>, ptr %i.bk, align 16, !tbaa !81
  %i.bm = fmul <2 x double> %i.ag, %i.bl
  store <2 x double> %i.bm, ptr %i.bk, align 16, !tbaa !81
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bo = load <2 x double>, ptr %i.bn, align 16, !tbaa !81
  %i.bp = fmul <2 x double> %i.ag, %i.bo
  store <2 x double> %i.bp, ptr %i.bn, align 16, !tbaa !81
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.br = load double, ptr %i.bq, align 16, !tbaa !43
  %i.bs = fmul double %i.v, %i.br
  store double %i.bs, ptr %i.bq, align 16, !tbaa !43
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
  %i.f = load <9 x double>, ptr %i.b, align 16, !tbaa !43
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
  %.0252619 = phi i64 [ 2, %.preheader599 ], [ %i.qd, %.loopexit597 ] ; 18 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.0252619 ; 2 uses
  %i.x = load double, ptr %i.w, align 16, !tbaa !43 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !43 ; 12 uses
  %i.aa = fcmp oeq double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr [8 x i8], ptr %i.u, i64 %.0252619
  %.idx.i = mul i64 %.0252619, 24                 ; 6 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 %.idx.i
  store double 1.000000e+00, ptr %i.ac, align 8, !tbaa !43
  %.not621 = icmp eq i64 %.0252619, 0
  br i1 %.not621, label %.lr.ph.i.i.i.i.i.i.i.i.2, label %.lr.ph618

.lr.ph618:                                        ; preds = %bb.b
  %i.ad = getelementptr inbounds i8, ptr %i.u, i64 %.idx.i ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph618, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %.0253616 = phi double [ 0.000000e+00, %.lr.ph618 ], [ %.1254, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit ] ; 6 uses
  %.0255615 = phi double [ 0.000000e+00, %.lr.ph618 ], [ %.1256, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit ] ; 7 uses
  %.0257614 = phi i64 [ %.0252619, %.lr.ph618 ], [ %.1258, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit ] ; 5 uses
  %.0259.in613 = phi i64 [ %.0252619, %.lr.ph618 ], [ %.0259617, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit ] ; 5 uses
  %.0259617 = add nsw i64 %.0259.in613, -1        ; 9 uses
  %i.ae = getelementptr [8 x i8], ptr %i.u, i64 %.0259617 ; 5 uses
  %.idx.i274 = mul i64 %.0259617, 24              ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %.idx.i274
  %i.ag = load double, ptr %i.af, align 8, !tbaa !43
  %i.ah = fsub double %i.ag, %i.x                 ; 4 uses
  %i.ai = sub nsw i64 %.0252619, %.0257614        ; 4 uses
  %.idx.i.i.i.i.i275 = mul nsw i64 %.0257614, 24
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 %.idx.i.i.i.i.i275 ; 6 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %.0257614 ; 6 uses
  %i.al = icmp eq i64 %i.ai, -1
  br i1 %i.al, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = load double, ptr %i.aj, align 8, !tbaa !43
  %i.an = load double, ptr %i.ak, align 8, !tbaa !43
  %i.ao = fmul double %i.am, %i.an                ; 3 uses
  %i.ap = icmp sgt i64 %i.ai, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %xtraiter705 = and i64 %i.ai, 3                 ; 3 uses
  %i.aq = sub i64 %.0257614, %.0252619
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
  %i.at = load double, ptr %i.as, align 8, !tbaa !43
  %i.au = getelementptr [8 x i8], ptr %i.ak, i64 %.01725.i.i.i.i.i
  %i.av = load double, ptr %i.au, align 8, !tbaa !43
  %i.aw = fmul double %i.at, %i.av
  %i.ax = fadd double %.02324.i.i.i.i.i, %i.aw
  %i.ay = add nuw nsw i64 %.01725.i.i.i.i.i, 1    ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.1 = mul i64 %i.ay, 24
  %i.az = getelementptr i8, ptr %i.aj, i64 %.idx.i.i.i.i.i.i.i.i.i.1
  %i.ba = load double, ptr %i.az, align 8, !tbaa !43
  %i.bb = getelementptr [8 x i8], ptr %i.ak, i64 %i.ay
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !43
  %i.bd = fmul double %i.ba, %i.bc
  %i.be = fadd double %i.ax, %i.bd
  %i.bf = add nuw nsw i64 %.01725.i.i.i.i.i, 2    ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.2 = mul i64 %i.bf, 24
  %i.bg = getelementptr i8, ptr %i.aj, i64 %.idx.i.i.i.i.i.i.i.i.i.2
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !43
  %i.bi = getelementptr [8 x i8], ptr %i.ak, i64 %i.bf
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !43
  %i.bk = fmul double %i.bh, %i.bj
  %i.bl = fadd double %i.be, %i.bk
  %i.bm = add nuw nsw i64 %.01725.i.i.i.i.i, 3    ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.3 = mul i64 %i.bm, 24
  %i.bn = getelementptr i8, ptr %i.aj, i64 %.idx.i.i.i.i.i.i.i.i.i.3
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !43
  %i.bp = getelementptr [8 x i8], ptr %i.ak, i64 %i.bm
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !43
  %i.br = fmul double %i.bo, %i.bq
  %i.bs = fadd double %i.bl, %i.br                ; 3 uses
  %i.bt = add nuw nsw i64 %.01725.i.i.i.i.i, 4    ; 2 uses
  %niter711.next.3 = add i64 %niter711, 4         ; 2 uses
  %niter711.ncmp.3 = icmp eq i64 %niter711.next.3, %unroll_iter710
  br i1 %niter711.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !827

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
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !43
  %i.bw = getelementptr [8 x i8], ptr %i.ak, i64 %.01725.i.i.i.i.i.epil
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !43
  %i.by = fmul double %i.bv, %i.bx
  %i.bz = fadd double %.02324.i.i.i.i.i.epil, %i.by ; 2 uses
  %i.ca = add nuw nsw i64 %.01725.i.i.i.i.i.epil, 1
  %epil.iter706.next = add i64 %epil.iter706, 1   ; 2 uses
  %epil.iter706.cmp.not = icmp eq i64 %epil.iter706.next, %xtraiter705
  br i1 %epil.iter706.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !828

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.c, %bb.d
  %.0.i.i.i = phi double [ 0.000000e+00, %bb.c ], [ %i.ao, %bb.d ], [ %i.bs, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit.loopexit.unr-lcssa ], [ %i.bz, %.lr.ph.i.i.i.i.i.epil ] ; 3 uses
  %i.cb = getelementptr inbounds [16 x i8], ptr %i.t, i64 %.0259617 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !43 ; 3 uses
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
  store double %i.cj, ptr %i.ci, align 8, !tbaa !43
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ck = fdiv double %i.ch, %i.v                 ; 2 uses
  store double %i.ck, ptr %i.ci, align 8, !tbaa !43
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %.idx.i278 = mul i64 %.0259.in613, 24
  %i.cl = getelementptr i8, ptr %i.ae, i64 %.idx.i278
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !43 ; 3 uses
  %i.cn = getelementptr [8 x i8], ptr %i.u, i64 %.0259.in613 ; 3 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 %.idx.i274
  %i.cp = load double, ptr %i.co, align 8, !tbaa !43
  %i.cq = load double, ptr %i.cb, align 16, !tbaa !43
  %i.cr = fsub double %i.cq, %i.x
  %i.cs = fneg double %.0.i.i.i                   ; 2 uses
  %i.ct = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %.0255615, i64 1 ; 2 uses
  %i.cv = insertelement <2 x double> %i.cu, double %i.cs, i64 1
  %i.cw = fmul <2 x double> %i.cu, %i.cv
  %i.cx = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.cm, i64 1 ; 2 uses
  %i.cz = insertelement <2 x double> %i.cy, double %.0253616, i64 1
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.cz, <2 x double> %i.cw) ; 2 uses
  %i.db = extractelement <2 x double> %i.da, i64 0
  %i.dc = extractelement <2 x double> %i.da, i64 1
  %i.dd = fdiv double %i.dc, %i.db                ; 5 uses
  %i.de = getelementptr i8, ptr %i.ae, i64 %.idx.i
  store double %i.dd, ptr %i.de, align 8, !tbaa !43
  %i.df = tail call noundef double @llvm.fabs.f64(double %i.cm)
  %i.dg = tail call noundef double @llvm.fabs.f64(double %.0255615)
  %i.dh = fcmp ogt double %i.df, %i.dg
  br i1 %i.dh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.di = fneg double %i.ah
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.di, double %i.dd, double %i.cs)
  %i.dk = fdiv double %i.dj, %i.cm
  %i.dl = getelementptr i8, ptr %i.cn, i64 %.idx.i
  store double %i.dk, ptr %i.dl, align 8, !tbaa !43
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.dm = fneg double %.0253616
  %i.dn = fneg double %i.cp
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.dd, double %i.dm)
  %i.dp = fdiv double %i.do, %.0255615
  %i.dq = getelementptr i8, ptr %i.cn, i64 %.idx.i
  store double %i.dp, ptr %i.dq, align 8, !tbaa !43
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.g, %bb.h
  %i.dr = phi double [ %i.dd, %bb.j ], [ %i.dd, %bb.k ], [ %i.cj, %bb.g ], [ %i.ck, %bb.h ] ; 2 uses
  %i.ds = tail call noundef double @llvm.fabs.f64(double %i.dr) ; 6 uses
  %i.dt = fmul double %i.ds, f0x3CB0000000000000
  %i.du = fmul double %i.ds, %i.dt
  %i.dv = fcmp ogt double %i.du, 1.000000e+00
  br i1 %i.dv, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.l
  %i.dw = sub nsw i64 4, %.0259.in613             ; 5 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %.0259617 ; 5 uses
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = lshr exact i64 %i.dy, 3
  %i.ea = and i64 %i.dz, 1
  %i.eb = tail call i64 @llvm.smin.i64(i64 %i.ea, i64 %i.dw) ; 5 uses
  %i.ec = sub i64 %i.dw, %i.eb                    ; 3 uses
  %i.ed = and i64 %i.ec, -2
  %i.ee = add nsw i64 %i.ed, %i.eb                ; 5 uses
  %i.ef = icmp sgt i64 %i.eb, 0
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.eg = fdiv double %i.dr, %i.ds
  store double %i.eg, ptr %i.dx, align 8, !tbaa !43
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
  %i.el = and i64 %i.ec, -2
  %i.em = add i64 %i.eb, %i.el
  %i.en = sub i64 %i.dw, %i.em                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.en, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader691, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.en, -2                      ; 3 uses
  %i.eo = add i64 %i.ee, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ds, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = getelementptr [8 x i8], ptr %i.dx, i64 %i.ee
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eq = getelementptr [8 x i8], ptr %i.ep, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.eq, align 8, !tbaa !43
  %i.er = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.er, ptr %i.eq, align 8, !tbaa !43
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !829

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.en, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader691

.lr.ph.i17.i.i.i.i.i.i.preheader691:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.ee, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.eo, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader691, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.ew, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader691 ] ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !43
  %i.ev = fdiv double %i.eu, %i.ds
  store double %i.ev, ptr %i.et, align 8, !tbaa !43
  %i.ew = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.ew, %i.dw
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !830

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.fa, %.lr.ph.i.i.i.i.i.i ], [ %i.eb, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.ey = load <2 x double>, ptr %i.ex, align 16, !tbaa !81
  %i.ez = fdiv <2 x double> %i.ey, %i.ej
  store <2 x double> %i.ez, ptr %i.ex, align 16, !tbaa !81
  %i.fa = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.fb = icmp slt i64 %i.fa, %i.ee
  br i1 %i.fb, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !831

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %bb.l, %._crit_edge.i.i.i.i.i.i, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit
  %.1258 = phi i64 [ %.0257614, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit ], [ %.0259617, %bb.l ], [ %.0259617, %._crit_edge.i.i.i.i.i.i ], [ %.0259617, %middle.block ], [ %.0259617, %.lr.ph.i17.i.i.i.i.i.i ]
  %.1256 = phi double [ %i.ah, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit ], [ %.0255615, %bb.l ], [ %.0255615, %._crit_edge.i.i.i.i.i.i ], [ %.0255615, %middle.block ], [ %.0255615, %.lr.ph.i17.i.i.i.i.i.i ]
  %.1254 = phi double [ %.0.i.i.i, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit ], [ %.0253616, %bb.l ], [ %.0253616, %._crit_edge.i.i.i.i.i.i ], [ %.0253616, %middle.block ], [ %.0253616, %.lr.ph.i17.i.i.i.i.i.i ]
  %i.fc = icmp samesign ugt i64 %.0259.in613, 1
  br i1 %i.fc, label %bb.c, label %.loopexit597, !llvm.loop !832

bb.m:                                             ; preds = %bb.a
  %i.fd = fcmp olt double %i.z, 0.000000e+00
  %i.fe = icmp ne i64 %.0252619, 0
  %or.cond = and i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.n, label %.loopexit597

bb.n:                                             ; preds = %bb.m
  %i.ff = add nsw i64 %.0252619, -1               ; 4 uses
  %i.fg = getelementptr [8 x i8], ptr %i.u, i64 %.0252619 ; 3 uses
  %.idx.i285 = mul i64 %i.ff, 24                  ; 8 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 %.idx.i285 ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !43 ; 3 uses
  %i.fj = tail call noundef double @llvm.fabs.f64(double %i.fi)
  %i.fk = getelementptr [8 x i8], ptr %i.u, i64 %i.ff ; 2 uses
  %.idx.i286 = mul i64 %.0252619, 24              ; 8 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 %.idx.i286 ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !43 ; 2 uses
  %i.fn = tail call noundef double @llvm.fabs.f64(double %i.fm)
  %i.fo = fcmp ogt double %i.fj, %i.fn
  %i.fp = getelementptr i8, ptr %i.fk, i64 %.idx.i285 ; 3 uses
  br i1 %i.fo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fq = fdiv double %i.z, %i.fi
  store double %i.fq, ptr %i.fp, align 8, !tbaa !43
  %i.fr = getelementptr i8, ptr %i.fg, i64 %.idx.i286
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !43
  %i.ft = fsub double %i.fs, %i.x
  %i.fu = fneg double %i.ft
  %i.fv = fdiv double %i.fu, %i.fi
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.fw = fneg double %i.fm
  %i.fx = load double, ptr %i.fp, align 8, !tbaa !43
  %i.fy = fsub double %i.fx, %i.x
  %i.fz = tail call noundef { double, double } @__divdc3(double noundef 0.000000e+00, double noundef %i.fw, double noundef %i.fy, double noundef %i.z) #27 ; 2 uses
  %i.ga = extractvalue { double, double } %i.fz, 0
  %i.gb = extractvalue { double, double } %i.fz, 1
  store double %i.ga, ptr %i.fp, align 8, !tbaa !43
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %storemerge596 = phi double [ %i.gb, %bb.p ], [ %i.fv, %bb.o ]
  store double %storemerge596, ptr %i.fl, align 8, !tbaa !43
  store double 0.000000e+00, ptr %i.fh, align 8, !tbaa !43
  %i.gc = getelementptr i8, ptr %i.fg, i64 %.idx.i286
  store double 1.000000e+00, ptr %i.gc, align 8, !tbaa !43
  %i.gd = icmp samesign ugt i64 %.0252619, 1
  br i1 %i.gd, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i.i.2

.lr.ph:                                           ; preds = %bb.q
  %i.ge = add nsw i64 %.0252619, -2
  %i.gf = getelementptr inbounds i8, ptr %i.u, i64 %.idx.i285
  %i.gg = getelementptr inbounds i8, ptr %i.u, i64 %.idx.i286 ; 2 uses
  %i.gh = fneg double %i.z                        ; 3 uses
  %i.gi = tail call double @llvm.fabs.f64(double %i.z) ; 2 uses
  %i.gj = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %i.z, i64 1
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEdVERKd.exit
  %.0260611 = phi i64 [ %i.ge, %.lr.ph ], [ %i.qb, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEdVERKd.exit ] ; 11 uses
  %.0261610 = phi i64 [ %i.ff, %.lr.ph ], [ %.1262, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEdVERKd.exit ] ; 7 uses
  %.0263609 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1264, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEdVERKd.exit ] ; 8 uses
  %i.gl = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.qa, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEdVERKd.exit ] ; 6 uses
  %i.gm = getelementptr [8 x i8], ptr %i.u, i64 %.0260611 ; 8 uses
  %i.gn = sub nsw i64 %.0252619, %.0261610        ; 6 uses
  %.idx.i.i.i.i.i298 = mul nsw i64 %.0261610, 24
  %i.go = getelementptr inbounds i8, ptr %i.gm, i64 %.idx.i.i.i.i.i298 ; 11 uses
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %.0261610 ; 6 uses
  %i.gq = icmp eq i64 %i.gn, -1
  br i1 %i.gq, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gr = load double, ptr %i.go, align 8, !tbaa !43 ; 3 uses
  %i.gs = load double, ptr %i.gp, align 8, !tbaa !43
  %i.gt = fmul double %i.gr, %i.gs                ; 3 uses
  %i.gu = icmp sgt i64 %i.gn, 0
  br i1 %i.gu, label %.lr.ph.i.i.i.i.i305.preheader, label %.thread

.lr.ph.i.i.i.i.i305.preheader:                    ; preds = %bb.s
  %i.gv = xor i64 %.0261610, -1
  %i.gw = add i64 %.0252619, %i.gv                ; 2 uses
  %xtraiter = and i64 %i.gn, 3                    ; 3 uses
  %i.gx = icmp ult i64 %i.gw, 3
  br i1 %i.gx, label %.lr.ph.i.i.i.i.i305.epil.preheader, label %.lr.ph.i.i.i.i.i305.preheader.new

.lr.ph.i.i.i.i.i305.preheader.new:                ; preds = %.lr.ph.i.i.i.i.i305.preheader
  %unroll_iter = and i64 %i.gn, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i305

.thread:                                          ; preds = %bb.s
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %.0261610
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !43
  %i.ha = fmul double %i.gr, %i.gz
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323

.lr.ph.i.i.i.i.i305:                              ; preds = %.lr.ph.i.i.i.i.i305, %.lr.ph.i.i.i.i.i305.preheader.new
  %.01725.i.i.i.i.i306 = phi i64 [ 1, %.lr.ph.i.i.i.i.i305.preheader.new ], [ %i.ic, %.lr.ph.i.i.i.i.i305 ] ; 6 uses
  %.02324.i.i.i.i.i307 = phi double [ %i.gt, %.lr.ph.i.i.i.i.i305.preheader.new ], [ %i.ib, %.lr.ph.i.i.i.i.i305 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i305.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i305 ]
  %.idx.i.i.i.i.i.i.i.i.i308 = mul i64 %.01725.i.i.i.i.i306, 24
  %i.hb = getelementptr i8, ptr %i.go, i64 %.idx.i.i.i.i.i.i.i.i.i308
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !43
  %i.hd = getelementptr [8 x i8], ptr %i.gp, i64 %.01725.i.i.i.i.i306
  %i.he = load double, ptr %i.hd, align 8, !tbaa !43
  %i.hf = fmul double %i.hc, %i.he
  %i.hg = fadd double %.02324.i.i.i.i.i307, %i.hf
  %i.hh = add nuw nsw i64 %.01725.i.i.i.i.i306, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i308.1 = mul i64 %i.hh, 24
  %i.hi = getelementptr i8, ptr %i.go, i64 %.idx.i.i.i.i.i.i.i.i.i308.1
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !43
  %i.hk = getelementptr [8 x i8], ptr %i.gp, i64 %i.hh
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !43
  %i.hm = fmul double %i.hj, %i.hl
  %i.hn = fadd double %i.hg, %i.hm
  %i.ho = add nuw nsw i64 %.01725.i.i.i.i.i306, 2 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i308.2 = mul i64 %i.ho, 24
  %i.hp = getelementptr i8, ptr %i.go, i64 %.idx.i.i.i.i.i.i.i.i.i308.2
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !43
  %i.hr = getelementptr [8 x i8], ptr %i.gp, i64 %i.ho
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !43
  %i.ht = fmul double %i.hq, %i.hs
  %i.hu = fadd double %i.hn, %i.ht
  %i.hv = add nuw nsw i64 %.01725.i.i.i.i.i306, 3 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i308.3 = mul i64 %i.hv, 24
  %i.hw = getelementptr i8, ptr %i.go, i64 %.idx.i.i.i.i.i.i.i.i.i308.3
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !43
  %i.hy = getelementptr [8 x i8], ptr %i.gp, i64 %i.hv
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !43
  %i.ia = fmul double %i.hx, %i.hz
  %i.ib = fadd double %i.hu, %i.ia                ; 3 uses
  %i.ic = add nuw nsw i64 %.01725.i.i.i.i.i306, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i305, !llvm.loop !827

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i305
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.lr.ph.i.i.i.i.i305.epil.preheader

.lr.ph.i.i.i.i.i305.epil.preheader:               ; preds = %.unr-lcssa, %.lr.ph.i.i.i.i.i305.preheader
  %.01725.i.i.i.i.i306.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i305.preheader ], [ %i.ic, %.unr-lcssa ]
  %.02324.i.i.i.i.i307.epil.init = phi double [ %i.gt, %.lr.ph.i.i.i.i.i305.preheader ], [ %i.ib, %.unr-lcssa ]
  %lcmp.mod697 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod697)
  br label %.lr.ph.i.i.i.i.i305.epil

.lr.ph.i.i.i.i.i305.epil:                         ; preds = %.lr.ph.i.i.i.i.i305.epil, %.lr.ph.i.i.i.i.i305.epil.preheader
  %.01725.i.i.i.i.i306.epil = phi i64 [ %i.ij, %.lr.ph.i.i.i.i.i305.epil ], [ %.01725.i.i.i.i.i306.epil.init, %.lr.ph.i.i.i.i.i305.epil.preheader ] ; 3 uses
  %.02324.i.i.i.i.i307.epil = phi double [ %i.ii, %.lr.ph.i.i.i.i.i305.epil ], [ %.02324.i.i.i.i.i307.epil.init, %.lr.ph.i.i.i.i.i305.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i305.epil ], [ 0, %.lr.ph.i.i.i.i.i305.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i308.epil = mul i64 %.01725.i.i.i.i.i306.epil, 24
  %i.id = getelementptr i8, ptr %i.go, i64 %.idx.i.i.i.i.i.i.i.i.i308.epil
  %i.ie = load double, ptr %i.id, align 8, !tbaa !43
  %i.if = getelementptr [8 x i8], ptr %i.gp, i64 %.01725.i.i.i.i.i306.epil
  %i.ig = load double, ptr %i.if, align 8, !tbaa !43
  %i.ih = fmul double %i.ie, %i.ig
  %i.ii = fadd double %.02324.i.i.i.i.i307.epil, %i.ih ; 2 uses
  %i.ij = add nuw nsw i64 %.01725.i.i.i.i.i306.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.lr.ph.i.i.i.i.i305.epil, !llvm.loop !833

.epilog-lcssa:                                    ; preds = %.lr.ph.i.i.i.i.i305.epil, %.unr-lcssa
  %.lcssa = phi double [ %i.ib, %.unr-lcssa ], [ %i.ii, %.lr.ph.i.i.i.i.i305.epil ] ; 2 uses
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %.0261610 ; 6 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !43
  %i.im = fmul double %i.gr, %i.il                ; 2 uses
  %xtraiter698 = and i64 %i.gn, 3                 ; 3 uses
  %i.in = icmp ult i64 %i.gw, 3
  br i1 %i.in, label %.lr.ph.i.i.i.i.i318.epil.preheader, label %.new

.new:                                             ; preds = %.epilog-lcssa
  %unroll_iter703 = and i64 %i.gn, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i318

.lr.ph.i.i.i.i.i318:                              ; preds = %.lr.ph.i.i.i.i.i318, %.new
  %.01725.i.i.i.i.i319 = phi i64 [ 1, %.new ], [ %i.jp, %.lr.ph.i.i.i.i.i318 ] ; 6 uses
  %.02324.i.i.i.i.i320 = phi double [ %i.im, %.new ], [ %i.jo, %.lr.ph.i.i.i.i.i318 ]
  %niter704 = phi i64 [ 0, %.new ], [ %niter704.next.3, %.lr.ph.i.i.i.i.i318 ]
  %.idx.i.i.i.i.i.i.i.i.i321 = mul i64 %.01725.i.i.i.i.i319, 24
  %i.io = getelementptr i8, ptr %i.go, i64 %.idx.i.i.i.i.i.i.i.i.i321
  %i.ip = load double, ptr %i.io, align 8, !tbaa !43
  %i.iq = getelementptr [8 x i8], ptr %i.ik, i64 %.01725.i.i.i.i.i319
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !43
  %i.is = fmul double %i.ip, %i.ir
  %i.it = fadd double %.02324.i.i.i.i.i320, %i.is
  %i.iu = add nuw nsw i64 %.01725.i.i.i.i.i319, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i321.1 = mul i64 %i.iu, 24
  %i.iv = getelementptr i8, ptr %i.go, i64 %.idx.i.i.i.i.i.i.i.i.i321.1
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !43
  %i.ix = getelementptr [8 x i8], ptr %i.ik, i64 %i.iu
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !43
  %i.iz = fmul double %i.iw, %i.iy
  %i.ja = fadd double %i.it, %i.iz
  %i.jb = add nuw nsw i64 %.01725.i.i.i.i.i319, 2 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i321.2 = mul i64 %i.jb, 24
  %i.jc = getelementptr i8, ptr %i.go, i64 %.idx.i.i.i.i.i.i.i.i.i321.2
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !43
  %i.je = getelementptr [8 x i8], ptr %i.ik, i64 %i.jb
  %i.jf = load double, ptr %i.je, align 8, !tbaa !43
  %i.jg = fmul double %i.jd, %i.jf
  %i.jh = fadd double %i.ja, %i.jg
  %i.ji = add nuw nsw i64 %.01725.i.i.i.i.i319, 3 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i321.3 = mul i64 %i.ji, 24
  %i.jj = getelementptr i8, ptr %i.go, i64 %.idx.i.i.i.i.i.i.i.i.i321.3
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !43
  %i.jl = getelementptr [8 x i8], ptr %i.ik, i64 %i.ji
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !43
  %i.jn = fmul double %i.jk, %i.jm
  %i.jo = fadd double %i.jh, %i.jn                ; 3 uses
  %i.jp = add nuw nsw i64 %.01725.i.i.i.i.i319, 4 ; 2 uses
  %niter704.next.3 = add i64 %niter704, 4         ; 2 uses
  %niter704.ncmp.3 = icmp eq i64 %niter704.next.3, %unroll_iter703
  br i1 %niter704.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i318, !llvm.loop !827

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i318
  %lcmp.mod700.not = icmp eq i64 %xtraiter698, 0
  br i1 %lcmp.mod700.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323, label %.lr.ph.i.i.i.i.i318.epil.preheader

.lr.ph.i.i.i.i.i318.epil.preheader:               ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323.loopexit.unr-lcssa, %.epilog-lcssa
  %.01725.i.i.i.i.i319.epil.init = phi i64 [ 1, %.epilog-lcssa ], [ %i.jp, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323.loopexit.unr-lcssa ]
  %.02324.i.i.i.i.i320.epil.init = phi double [ %i.im, %.epilog-lcssa ], [ %i.jo, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323.loopexit.unr-lcssa ]
  %lcmp.mod702 = icmp ne i64 %xtraiter698, 0
  tail call void @llvm.assume(i1 %lcmp.mod702)
  br label %.lr.ph.i.i.i.i.i318.epil

.lr.ph.i.i.i.i.i318.epil:                         ; preds = %.lr.ph.i.i.i.i.i318.epil, %.lr.ph.i.i.i.i.i318.epil.preheader
  %.01725.i.i.i.i.i319.epil = phi i64 [ %i.jw, %.lr.ph.i.i.i.i.i318.epil ], [ %.01725.i.i.i.i.i319.epil.init, %.lr.ph.i.i.i.i.i318.epil.preheader ] ; 3 uses
  %.02324.i.i.i.i.i320.epil = phi double [ %i.jv, %.lr.ph.i.i.i.i.i318.epil ], [ %.02324.i.i.i.i.i320.epil.init, %.lr.ph.i.i.i.i.i318.epil.preheader ]
  %epil.iter699 = phi i64 [ %epil.iter699.next, %.lr.ph.i.i.i.i.i318.epil ], [ 0, %.lr.ph.i.i.i.i.i318.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i321.epil = mul i64 %.01725.i.i.i.i.i319.epil, 24
  %i.jq = getelementptr i8, ptr %i.go, i64 %.idx.i.i.i.i.i.i.i.i.i321.epil
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !43
  %i.js = getelementptr [8 x i8], ptr %i.ik, i64 %.01725.i.i.i.i.i319.epil
  %i.jt = load double, ptr %i.js, align 8, !tbaa !43
  %i.ju = fmul double %i.jr, %i.jt
  %i.jv = fadd double %.02324.i.i.i.i.i320.epil, %i.ju ; 2 uses
  %i.jw = add nuw nsw i64 %.01725.i.i.i.i.i319.epil, 1
  %epil.iter699.next = add i64 %epil.iter699, 1   ; 2 uses
  %epil.iter699.cmp.not = icmp eq i64 %epil.iter699.next, %xtraiter698
  br i1 %epil.iter699.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323, label %.lr.ph.i.i.i.i.i318.epil, !llvm.loop !834

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i318.epil, %bb.r, %.thread
  %.0.i.i.i304594 = phi double [ 0.000000e+00, %bb.r ], [ %i.gt, %.thread ], [ %.lcssa, %.lr.ph.i.i.i.i.i318.epil ], [ %.lcssa, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323.loopexit.unr-lcssa ] ; 3 uses
  %.0.i.i.i317 = phi double [ 0.000000e+00, %bb.r ], [ %i.ha, %.thread ], [ %i.jo, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323.loopexit.unr-lcssa ], [ %i.jv, %.lr.ph.i.i.i.i.i318.epil ] ; 3 uses
  %.idx.i324 = mul i64 %.0260611, 24              ; 2 uses
  %i.jx = getelementptr i8, ptr %i.gm, i64 %.idx.i324
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !43
  %i.jz = fsub double %i.jy, %i.x                 ; 4 uses
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.0260611 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !43 ; 4 uses
  %i.kd = fcmp olt double %i.kc, 0.000000e+00
  %i.ke = insertelement <2 x double> poison, double %.0.i.i.i317, i64 0
  %i.kf = insertelement <2 x double> %i.ke, double %.0.i.i.i304594, i64 1 ; 2 uses
  br i1 %i.kd, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEdVERKd.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323
  %i.kg = fcmp oeq double %i.kc, 0.000000e+00
  br i1 %i.kg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kh = fneg double %.0.i.i.i304594
  %i.ki = fneg double %.0.i.i.i317
  %i.kj = tail call noundef { double, double } @__divdc3(double noundef %i.kh, double noundef %i.ki, double noundef %i.jz, double noundef %i.z) #27 ; 2 uses
  %i.kk = extractvalue { double, double } %i.kj, 0 ; 2 uses
  %i.kl = extractvalue { double, double } %i.kj, 1 ; 2 uses
  %i.km = getelementptr i8, ptr %i.gm, i64 %.idx.i285
  store double %i.kk, ptr %i.km, align 8, !tbaa !43
  %i.kn = getelementptr i8, ptr %i.gm, i64 %.idx.i286
  store double %i.kl, ptr %i.kn, align 8, !tbaa !43
  br label %bb.aa

bb.v:                                             ; preds = %bb.t
  %i.ko = add nuw nsw i64 %.0260611, 1            ; 2 uses
  %.idx.i330 = mul i64 %i.ko, 24
  %i.kp = getelementptr i8, ptr %i.gm, i64 %.idx.i330
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !43 ; 3 uses
  %i.kr = getelementptr [8 x i8], ptr %i.u, i64 %i.ko ; 5 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 %.idx.i324
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !43 ; 2 uses
  %i.ku = load double, ptr %i.ka, align 16, !tbaa !43
  %i.kv = fsub double %i.ku, %i.x                 ; 3 uses
  %i.kw = fmul double %i.kc, %i.kc
  %i.kx = tail call double @llvm.fmuladd.f64(double %i.kv, double %i.kv, double %i.kw)
  %i.ky = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.z, double %i.kx) ; 2 uses
  %i.kz = fmul double %i.kv, 2.000000e+00
  %i.la = fmul double %i.z, %i.kz                 ; 2 uses
  %i.lb = fcmp oeq double %i.ky, 0.000000e+00
  %i.lc = fcmp oeq double %i.la, 0.000000e+00
  %or.cond3 = and i1 %i.lb, %i.lc
end_hunk_0
begin_hunk_1_@_ZN5Eigen11EigenSolverINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21doComputeEigenvectorsEv:.lr.ph.i.i.i
  %i.pv = getelementptr [8 x i8], ptr %i.nh, i64 %.050.i.i.i.i.i.i ; 2 uses
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !43
  %i.px = fdiv double %i.pw, %.sroa.speculated
  store double %i.px, ptr %i.pv, align 8, !tbaa !43
  %i.py = add nsw i64 %.050.i.i.i.i.i.i, 1        ; 2 uses
  %i.pz = icmp slt i64 %i.py, %i.no
  br i1 %i.pz, label %.lr.ph51.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i356, !llvm.loop !839

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEdVERKd.exit: ; preds = %scalar.ph664, %middle.block674, %.preheader.i.i.i.i.i.i.1, %bb.aa, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323
  %.1264 = phi double [ %i.jz, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323 ], [ %.0263609, %bb.aa ], [ %.0263609, %.preheader.i.i.i.i.i.i.1 ], [ %.0263609, %middle.block674 ], [ %.0263609, %scalar.ph664 ]
  %.1262 = phi i64 [ %.0261610, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323 ], [ %.0260611, %bb.aa ], [ %.0260611, %.preheader.i.i.i.i.i.i.1 ], [ %.0260611, %middle.block674 ], [ %.0260611, %scalar.ph664 ]
  %i.qa = phi <2 x double> [ %i.kf, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE3dotINS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit323 ], [ %i.gl, %bb.aa ], [ %i.gl, %.preheader.i.i.i.i.i.i.1 ], [ %i.gl, %middle.block674 ], [ %i.gl, %scalar.ph664 ]
  %i.qb = add nsw i64 %.0260611, -1
  %i.qc = icmp sgt i64 %.0260611, 0
  br i1 %i.qc, label %bb.r, label %.loopexit597, !llvm.loop !840

.loopexit597:                                     ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEdVERKd.exit, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, %bb.m
  %.1 = phi i64 [ %.0252619, %bb.m ], [ %.0252619, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit ], [ %i.ff, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEdVERKd.exit ] ; 2 uses
  %i.qd = add nsw i64 %.1, -1
  %i.qe = icmp sgt i64 %.1, 0
  br i1 %i.qe, label %bb.a, label %.lr.ph.i.i.i.i.i.i.i.i.2, !llvm.loop !841

.lr.ph.i.i.i.i.i.i.i.i.2:                         ; preds = %bb.q, %bb.b, %.loopexit597
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 6 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.qi = load double, ptr %0, align 16, !tbaa !43 ; 3 uses
  %i.qj = load double, ptr %i.qh, align 16, !tbaa !43 ; 2 uses
  %i.qk = fmul double %i.qi, %i.qj
  %i.ql = load double, ptr %i.a, align 8, !tbaa !43
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !43 ; 2 uses
  %i.qo = fmul double %i.ql, %i.qn
  %i.qp = fadd double %i.qk, %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qr = load double, ptr %i.qq, align 16, !tbaa !43
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.qt = load double, ptr %i.qs, align 16, !tbaa !43 ; 2 uses
  %i.qu = fmul double %i.qr, %i.qt
  %i.qv = fadd double %i.qp, %i.qu
  store double %i.qv, ptr %i.qf, align 8, !tbaa !43
  %i.qw = load <2 x double>, ptr %i.c, align 8, !tbaa !81 ; 3 uses
  %i.qx = insertelement <2 x double> poison, double %i.qj, i64 0
  %i.qy = shufflevector <2 x double> %i.qx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qz = fmul <2 x double> %i.qw, %i.qy
  %i.ra = fadd <2 x double> %i.qz, zeroinitializer
  %i.rb = load <2 x double>, ptr %i.d, align 16, !tbaa !81 ; 2 uses
  %i.rc = insertelement <2 x double> poison, double %i.qn, i64 0
  %i.rd = shufflevector <2 x double> %i.rc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.re = fmul <2 x double> %i.rb, %i.rd
  %i.rf = fadd <2 x double> %i.ra, %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.rh = load <2 x double>, ptr %i.rg, align 8, !tbaa !81
  %i.ri = insertelement <2 x double> poison, double %i.qt, i64 0
  %i.rj = shufflevector <2 x double> %i.ri, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rk = fmul <2 x double> %i.rh, %i.rj
  %i.rl = fadd <2 x double> %i.rf, %i.rk          ; 2 uses
  store <2 x double> %i.rl, ptr %i.qg, align 16, !tbaa !81
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.rn = load <2 x double>, ptr %i.qf, align 8, !tbaa !81
  store <2 x double> %i.rn, ptr %i.rm, align 16, !tbaa !81
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.rp = extractelement <2 x double> %i.rl, i64 1
  store double %i.rp, ptr %i.ro, align 16, !tbaa !43
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !43 ; 2 uses
  %i.rs = fmul double %i.qi, %i.rr
  %i.rt = load double, ptr %i.a, align 8, !tbaa !43
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.rv = load double, ptr %i.ru, align 16, !tbaa !43 ; 2 uses
  %i.rw = fmul double %i.rt, %i.rv
  %i.rx = fadd double %i.rs, %i.rw
  store double %i.rx, ptr %i.qf, align 8, !tbaa !43
  %i.ry = insertelement <2 x double> poison, double %i.rr, i64 0
  %i.rz = shufflevector <2 x double> %i.ry, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sa = fmul <2 x double> %i.qw, %i.rz
  %i.sb = fadd <2 x double> %i.sa, zeroinitializer
  %i.sc = insertelement <2 x double> poison, double %i.rv, i64 0
  %i.sd = shufflevector <2 x double> %i.sc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.se = fmul <2 x double> %i.rb, %i.sd
  %i.sf = fadd <2 x double> %i.sb, %i.se          ; 2 uses
  store <2 x double> %i.sf, ptr %i.qg, align 16, !tbaa !81
  %i.sg = load <2 x double>, ptr %i.qf, align 8, !tbaa !81
  store <2 x double> %i.sg, ptr %i.a, align 8, !tbaa !81
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.si = extractelement <2 x double> %i.sf, i64 1
  store double %i.si, ptr %i.sh, align 8, !tbaa !43
  %i.sj = load double, ptr %i.u, align 16, !tbaa !43 ; 2 uses
  %i.sk = fmul double %i.qi, %i.sj
  store double %i.sk, ptr %i.qf, align 8, !tbaa !43
  %i.sl = insertelement <2 x double> poison, double %i.sj, i64 0
  %i.sm = shufflevector <2 x double> %i.sl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sn = fmul <2 x double> %i.qw, %i.sm
  %i.so = fadd <2 x double> %i.sn, zeroinitializer ; 2 uses
  store <2 x double> %i.so, ptr %i.qg, align 16, !tbaa !81
  %i.sp = load <2 x double>, ptr %i.qf, align 8, !tbaa !81
  store <2 x double> %i.sp, ptr %0, align 16, !tbaa !81
  %i.sq = extractelement <2 x double> %i.so, i64 1
  store double %i.sq, ptr %i.e, align 16, !tbaa !43
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE6evalToIS2_NS1_IdLi3ELi1ELi0ELi3ELi1EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.850", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::Block.1540", align 8 ; 9 uses
  %5 = alloca %"class.Eigen::Block.850", align 8  ; 10 uses
  %6 = alloca %"class.Eigen::Block.1540", align 8 ; 9 uses
  %7 = alloca %"class.Eigen::Block.850", align 8  ; 10 uses
  %8 = alloca %"class.Eigen::Block.1540", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Block.850", align 8  ; 10 uses
  %10 = alloca %"class.Eigen::Block.1540", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !825  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !842, !nonnull !60, !align !221
  %i.d = icmp eq ptr %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store double 1.000000e+00, ptr %1, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.f, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %.lr.ph108, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader

.lr.ph108:                                        ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.c

.preheader:                                       ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %i.ah = icmp slt i64 %i.b, 3
  br i1 %i.ah, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, label %.loopexit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader: ; preds = %bb.b, %.preheader
  %i.ai = sub i64 3, %i.b
  %smax = call i64 @llvm.smax.i64(i64 %i.ai, i64 1)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58

bb.c:                                             ; preds = %.lr.ph108, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %.0.in106 = phi i64 [ %i.b, %.lr.ph108 ], [ %.0107, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit ] ; 5 uses
  %.0107 = add nsw i64 %.0.in106, -1              ; 7 uses
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !826 ; 2 uses
  %i.ak = add i64 %i.aj, %.0107                   ; 7 uses
  %i.al = sub i64 3, %i.ak                        ; 4 uses
  %i.am = load i8, ptr %i.j, align 8, !tbaa !823, !range !238, !noundef !60
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %.idx.i.i.i.i = mul nsw i64 %i.ak, 24
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %.idx.i.i.i.i ; 2 uses
  %i.aq = add nsw i64 %i.aj, %.0.in106            ; 5 uses
  %i.ar = sub nsw i64 3, %i.aq                    ; 2 uses
  %.idx.i.i.i.i.i = mul nsw i64 %.0107, 24        ; 3 uses
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.ap, ptr %3, align 8, !tbaa !843, !alias.scope !845
  store i64 %i.al, ptr %i.w, align 8, !tbaa !848, !alias.scope !845
  store i64 %i.al, ptr %i.x, align 8, !tbaa !848, !alias.scope !845
  store ptr %1, ptr %i.y, align 8, !tbaa !541, !alias.scope !845
  store i64 %i.ak, ptr %i.z, align 8, !tbaa !848, !alias.scope !845
  store i64 %i.ak, ptr %i.aa, align 8, !tbaa !848, !alias.scope !845
  store i64 3, ptr %i.ab, align 8, !tbaa !849, !alias.scope !845
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.as = load ptr, ptr %0, align 8, !tbaa !842, !noalias !858, !nonnull !60, !align !221 ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.aq
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.idx.i.i.i.i.i
  store ptr %i.au, ptr %4, align 8, !tbaa !859, !alias.scope !858
  store i64 %i.ar, ptr %i.ac, align 8, !tbaa !848, !alias.scope !858
  store ptr %i.as, ptr %i.ad, align 8, !tbaa !541, !alias.scope !858
  store i64 %i.aq, ptr %i.ae, align 8, !tbaa !848, !alias.scope !858
  store i64 %.0107, ptr %i.af, align 8, !tbaa !848, !alias.scope !858
  store i64 3, ptr %i.ag, align 8, !tbaa !862, !alias.scope !858
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !864, !nonnull !60, !align !865
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.av, i64 %.0107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %i.ap, ptr %5, align 8, !tbaa !843, !alias.scope !866
  store i64 %i.al, ptr %i.k, align 8, !tbaa !848, !alias.scope !866
  store i64 %i.al, ptr %i.l, align 8, !tbaa !848, !alias.scope !866
  store ptr %1, ptr %i.m, align 8, !tbaa !541, !alias.scope !866
  store i64 %i.ak, ptr %i.n, align 8, !tbaa !848, !alias.scope !866
  store i64 %i.ak, ptr %i.o, align 8, !tbaa !848, !alias.scope !866
  store i64 3, ptr %i.p, align 8, !tbaa !849, !alias.scope !866
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !869)
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.ax = load ptr, ptr %0, align 8, !tbaa !842, !noalias !875, !nonnull !60, !align !221 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.aq
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %.idx.i.i.i.i.i
  store ptr %i.az, ptr %6, align 8, !tbaa !859, !alias.scope !875
  store i64 %i.ar, ptr %i.q, align 8, !tbaa !848, !alias.scope !875
  store ptr %i.ax, ptr %i.r, align 8, !tbaa !541, !alias.scope !875
  store i64 %i.aq, ptr %i.s, align 8, !tbaa !848, !alias.scope !875
  store i64 %.0107, ptr %i.t, align 8, !tbaa !848, !alias.scope !875
  store i64 3, ptr %i.u, align 8, !tbaa !862, !alias.scope !875
  %i.ba = load ptr, ptr %i.v, align 8, !tbaa !864, !nonnull !60, !align !865
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %.0107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.bc = getelementptr inbounds i8, ptr %1, i64 %.idx.i.i.i.i.i
  %i.bd = sub nsw i64 3, %.0.in106                ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.0.in106 ; 4 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = lshr exact i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1
  %i.bi = call i64 @llvm.smin.i64(i64 %i.bh, i64 %i.bd) ; 7 uses
  %i.bj = sub nsw i64 %i.bd, %i.bi                ; 3 uses
  %i.bk = and i64 %i.bj, -2
  %i.bl = add i64 %i.bk, %i.bi                    ; 2 uses
  %i.bm = icmp sgt i64 %i.bi, 0
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %i.be, align 8
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = icmp sgt i64 %i.bj, 1
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = shl nuw i64 %i.bi, 3
  %scevgep.i = getelementptr i8, ptr %i.be, i64 %i.bo
  %i.bp = add nsw i64 %i.bi, 2
  %smax.i = call i64 @llvm.smax.i64(i64 %i.bl, i64 %i.bp)
  %i.bq = xor i64 %i.bi, -1
  %i.br = add i64 %smax.i, %i.bq
  %i.bs = shl i64 %i.br, 3
  %i.bt = and i64 %i.bs, -16
  %i.bu = add i64 %i.bt, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.bu, i1 false), !tbaa !81
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = icmp slt i64 %i.bl, %i.bd
  br i1 %i.bv, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bw = shl i64 %i.bj, 3                        ; 2 uses
  %i.bx = and i64 %i.bw, -16
  %i.by = shl nuw i64 %i.bi, 3
  %i.bz = getelementptr i8, ptr %i.be, i64 %i.bx
  %scevgep1.i = getelementptr i8, ptr %i.bz, i64 %i.by
  %i.ca = and i64 %i.bw, 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.ca, i1 false), !tbaa !43
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %i.cb = icmp samesign ugt i64 %.0.in106, 1
  br i1 %i.cb, label %bb.c, label %.preheader, !llvm.loop !876

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68
  %.052109 = phi i64 [ %i.dd, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68 ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader ] ; 4 uses
  %.idx.i.i.i.i56 = mul nuw nsw i64 %.052109, 24
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.i56
  %i.cd = sub nsw i64 2, %.052109                 ; 3 uses
  %i.ce = getelementptr [8 x i8], ptr %i.cc, i64 %.052109
  %i.cf = getelementptr i8, ptr %i.ce, i64 8      ; 4 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = lshr exact i64 %i.cg, 3
  %i.ci = and i64 %i.ch, 1
  %i.cj = call i64 @llvm.smin.i64(i64 %i.ci, i64 %i.cd) ; 7 uses
  %i.ck = sub i64 %i.cd, %i.cj                    ; 3 uses
  %i.cl = sdiv i64 %i.ck, 2                       ; 2 uses
  %i.cm = shl nsw i64 %i.cl, 1                    ; 2 uses
  %i.cn = add i64 %i.cm, %i.cj                    ; 2 uses
  %i.co = icmp sgt i64 %i.cj, 0
  br i1 %i.co, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67:     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58
  store i64 0, ptr %i.cf, align 8
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58
  %i.cp = icmp sgt i64 %i.ck, 1
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64:       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60
  %i.cq = shl nuw i64 %i.cj, 3
  %scevgep.i65 = getelementptr i8, ptr %i.cf, i64 %i.cq
  %i.cr = add nsw i64 %i.cj, 2
  %smax.i66 = call i64 @llvm.smax.i64(i64 %i.cn, i64 %i.cr)
  %i.cs = xor i64 %i.cj, -1
  %i.ct = add i64 %smax.i66, %i.cs
  %i.cu = shl i64 %i.ct, 3
  %i.cv = and i64 %i.cu, -16
  %i.cw = add i64 %i.cv, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i65, i8 0, i64 %i.cw, i1 false), !tbaa !81
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60
  %i.cx = icmp slt i64 %i.cn, %i.cd
  br i1 %i.cx, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61
  %i.cy = shl i64 %i.cl, 4
  %i.cz = shl nuw i64 %i.cj, 3
  %i.da = getelementptr i8, ptr %i.cf, i64 %i.cy
  %scevgep1.i63 = getelementptr i8, ptr %i.da, i64 %i.cz
  %i.db = sub i64 %i.ck, %i.cm
  %i.dc = shl nuw i64 %i.db, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i63, i8 0, i64 %i.dc, i1 false), !tbaa !43
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62
  %i.dd = add nuw nsw i64 %.052109, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.dd, %smax
  br i1 %exitcond.not, label %.loopexit, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58, !llvm.loop !877

bb.f:                                             ; preds = %bb.a
  %i.de = icmp sgt i64 %i.b, 48
  store double 1.000000e+00, ptr %1, align 8, !tbaa !43
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.dg, align 8, !tbaa !43
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.di, align 8, !tbaa !43
  br i1 %i.de, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE18applyThisOnTheLeftIS2_NS1_IdLi3ELi1ELi0ELi3ELi1EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.dj = icmp sgt i64 %i.b, 0
  br i1 %i.dj, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %.051.in103 = phi i64 [ %i.b, %.lr.ph ], [ %.051104, %bb.l ] ; 3 uses
  %.051104 = add nsw i64 %.051.in103, -1          ; 7 uses
  %i.ej = load i64, ptr %i.dk, align 8, !tbaa !826 ; 2 uses
  %i.ek = add i64 %i.ej, %.051104                 ; 7 uses
  %i.el = sub i64 3, %i.ek                        ; 4 uses
  %i.em = load i8, ptr %i.dl, align 8, !tbaa !823, !range !238, !noundef !60
  %i.en = trunc nuw i8 %i.em to i1
  %i.eo = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ek
  %.idx.i.i.i.i69 = mul nsw i64 %i.ek, 24
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 %.idx.i.i.i.i69 ; 2 uses
  %i.eq = add nsw i64 %i.ej, %.051.in103          ; 5 uses
  %i.er = sub nsw i64 3, %i.eq                    ; 2 uses
  %.idx.i.i.i.i.i70 = mul nsw i64 %.051104, 24    ; 2 uses
  br i1 %i.en, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr %i.ep, ptr %7, align 8, !tbaa !843, !alias.scope !878
  store i64 %i.el, ptr %i.dy, align 8, !tbaa !848, !alias.scope !878
  store i64 %i.el, ptr %i.dz, align 8, !tbaa !848, !alias.scope !878
  store ptr %1, ptr %i.ea, align 8, !tbaa !541, !alias.scope !878
  store i64 %i.ek, ptr %i.eb, align 8, !tbaa !848, !alias.scope !878
  store i64 %i.ek, ptr %i.ec, align 8, !tbaa !848, !alias.scope !878
  store i64 3, ptr %i.ed, align 8, !tbaa !849, !alias.scope !878
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.es = load ptr, ptr %0, align 8, !tbaa !842, !noalias !887, !nonnull !60, !align !221 ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.eq
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 %.idx.i.i.i.i.i70
  store ptr %i.eu, ptr %8, align 8, !tbaa !859, !alias.scope !887
  store i64 %i.er, ptr %i.ee, align 8, !tbaa !848, !alias.scope !887
  store ptr %i.es, ptr %i.ef, align 8, !tbaa !541, !alias.scope !887
  store i64 %i.eq, ptr %i.eg, align 8, !tbaa !848, !alias.scope !887
  store i64 %.051104, ptr %i.eh, align 8, !tbaa !848, !alias.scope !887
  store i64 3, ptr %i.ei, align 8, !tbaa !862, !alias.scope !887
  %i.ev = load ptr, ptr %i.dx, align 8, !tbaa !864, !nonnull !60, !align !865
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %.051104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %i.ep, ptr %9, align 8, !tbaa !843, !alias.scope !888
  store i64 %i.el, ptr %i.dm, align 8, !tbaa !848, !alias.scope !888
  store i64 %i.el, ptr %i.dn, align 8, !tbaa !848, !alias.scope !888
  store ptr %1, ptr %i.do, align 8, !tbaa !541, !alias.scope !888
  store i64 %i.ek, ptr %i.dp, align 8, !tbaa !848, !alias.scope !888
  store i64 %i.ek, ptr %i.dq, align 8, !tbaa !848, !alias.scope !888
  store i64 3, ptr %i.dr, align 8, !tbaa !849, !alias.scope !888
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.ex = load ptr, ptr %0, align 8, !tbaa !842, !noalias !897, !nonnull !60, !align !221 ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.eq
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 %.idx.i.i.i.i.i70
  store ptr %i.ez, ptr %10, align 8, !tbaa !859, !alias.scope !897
  store i64 %i.er, ptr %i.ds, align 8, !tbaa !848, !alias.scope !897
  store ptr %i.ex, ptr %i.dt, align 8, !tbaa !541, !alias.scope !897
  store i64 %i.eq, ptr %i.du, align 8, !tbaa !848, !alias.scope !897
  store i64 %.051104, ptr %i.dv, align 8, !tbaa !848, !alias.scope !897
  store i64 3, ptr %i.dw, align 8, !tbaa !862, !alias.scope !897
  %i.fa = load ptr, ptr %i.dx, align 8, !tbaa !864, !nonnull !60, !align !865
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %.051104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.fb, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fc = icmp samesign ugt i64 %.051.in103, 1
  br i1 %i.fc, label %bb.i, label %.loopexit, !llvm.loop !898

.loopexit:                                        ; preds = %bb.l, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68, %bb.h, %.preheader, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 16 dereferenceable(320) ptr @_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21computeFromHessenbergINS_8internal40HessenbergDecompositionMatrixHReturnTypeIS2_EES2_EERS3_RKT_RKT0_b(ptr noundef nonnull align 16 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 9 uses
  %4 = alloca %"class.Eigen::Matrix.431", align 8 ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !899, !nonnull !60, !align !865 ; 5 uses
  %i.c = load <2 x double>, ptr %i.b, align 16, !tbaa !81 ; 2 uses
  store <2 x double> %i.c, ptr %0, align 16, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load <2 x double>, ptr %i.e, align 16, !tbaa !81
  store <2 x double> %i.f, ptr %i.d, align 16, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load <2 x double>, ptr %i.h, align 16, !tbaa !81 ; 2 uses
  store <2 x double> %i.i, ptr %i.g, align 16, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load <2 x double>, ptr %i.k, align 16, !tbaa !81 ; 2 uses
  store <2 x double> %i.l, ptr %i.j, align 16, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.o = load double, ptr %i.n, align 16, !tbaa !43 ; 2 uses
  store double %i.o, ptr %i.m, align 16, !tbaa !43
  store double 0.000000e+00, ptr %i.d, align 16, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = icmp eq ptr %i.q, %2
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load <2 x double>, ptr %2, align 8, !tbaa !81
  store <2 x double> %i.s, ptr %i.q, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load <2 x double>, ptr %i.u, align 8, !tbaa !81
  store <2 x double> %i.v, ptr %i.t, align 8, !tbaa !81
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load <2 x double>, ptr %i.x, align 8, !tbaa !81
  store <2 x double> %i.y, ptr %i.w, align 8, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ab = load <2 x double>, ptr %i.aa, align 8, !tbaa !81
  store <2 x double> %i.ab, ptr %i.z, align 8, !tbaa !81
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !43
  store double %i.ae, ptr %i.ac, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !564 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -1
  %spec.select67 = select i1 %i.ah, i64 120, i64 %i.ag ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load <2 x double>, ptr %i.ai, align 8, !tbaa !81
  %i.ak = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.l) ; 2 uses
  %i.al = insertelement <2 x double> %i.i, double %i.o, i64 0
  %i.am = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.al)
  %i.an = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.c) ; 2 uses
  %i.ao = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aj) ; 2 uses
  %i.ap = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aq = fadd <2 x double> %i.an, %i.ap
  %i.ar = shufflevector <2 x double> %i.ak, <2 x double> %i.ao, <2 x i32> <i32 0, i32 2>
  %i.as = shufflevector <2 x double> %i.ak, <2 x double> %i.ao, <2 x i32> <i32 1, i32 3>
  %i.at = fadd <2 x double> %i.ar, %i.as
  %i.au = fadd <2 x double> %i.at, %i.am          ; 2 uses
  %shift87 = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop88 = fadd <2 x double> %i.aq, %shift87
  %foldExtExtBinop90 = fadd <2 x double> %i.au, %foldExtExtBinop88
  %i.av = extractelement <2 x double> %foldExtExtBinop90, i64 0 ; 2 uses
  %i.aw = fmul double %i.av, f0x3970000000000000  ; 2 uses
  %i.ax = fcmp olt double %i.aw, f0x0010000000000000
  %.sroa.speculated = select i1 %i.ax, double f0x0010000000000000, double %i.aw ; 2 uses
  %i.ay = fcmp une double %i.av, 0.000000e+00
  br i1 %i.ay, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d
  %.07.i.i.i.i.ptr.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.07.i.i.i.i.ptr.2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.s
  %.050 = phi i64 [ %.252, %bb.s ], [ 0, %.preheader ] ; 2 uses
  %.047 = phi i64 [ %.249, %bb.s ], [ 0, %.preheader ] ; 4 uses
  %.045 = phi i64 [ %.2, %bb.s ], [ 2, %.preheader ] ; 21 uses
  %i.az = icmp sgt i64 %.045, 0
  br i1 %i.az, label %.lr.ph, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21findSmallSubdiagEntryElRKd.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ba = icmp sgt i64 %.014.i83, 1
  br i1 %i.ba, label %.lr.ph, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21findSmallSubdiagEntryElRKd.exit

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.014.i83 = phi i64 [ %i.bb, %bb.f ], [ %.045, %bb.e ] ; 5 uses
  %i.bb = add nsw i64 %.014.i83, -1               ; 3 uses
  %i.bc = getelementptr [8 x i8], ptr %0, i64 %i.bb
  %.idx.i.i = mul i64 %i.bb, 24                   ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 %.idx.i.i
  %i.be = load double, ptr %i.bd, align 8, !tbaa !43
  %i.bf = call noundef double @llvm.fabs.f64(double %i.be)
  %i.bg = getelementptr [8 x i8], ptr %0, i64 %.014.i83 ; 2 uses
  %.idx.i15.i = mul i64 %.014.i83, 24
  %i.bh = getelementptr i8, ptr %i.bg, i64 %.idx.i15.i
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !43
  %i.bj = call noundef double @llvm.fabs.f64(double %i.bi)
  %i.bk = fadd double %i.bf, %i.bj
  %i.bl = fmul double %i.bk, f0x3CB0000000000000  ; 2 uses
  %i.bm = fcmp olt double %i.bl, %.sroa.speculated
  %.sroa.speculated.i = select i1 %i.bm, double %.sroa.speculated, double %i.bl
  %i.bn = getelementptr i8, ptr %i.bg, i64 %.idx.i.i
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !43
  %i.bp = call noundef double @llvm.fabs.f64(double %i.bo)
  %i.bq = fcmp ugt double %i.bp, %.sroa.speculated.i
  br i1 %i.bq, label %bb.f, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21findSmallSubdiagEntryElRKd.exit

_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21findSmallSubdiagEntryElRKd.exit: ; preds = %.lr.ph, %bb.f, %bb.e
  %.014.lcssa.i = phi i64 [ 0, %bb.e ], [ %.014.i83, %.lr.ph ], [ 0, %bb.f ] ; 6 uses
  %i.br = icmp eq i64 %.014.lcssa.i, %.045
  br i1 %i.br, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21findSmallSubdiagEntryElRKd.exit
  %i.bs = getelementptr [8 x i8], ptr %0, i64 %.045
  %.idx.i = mul i64 %.045, 24
  %i.bt = getelementptr i8, ptr %i.bs, i64 %.idx.i ; 3 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !43
  %i.bv = load double, ptr %i.a, align 8, !tbaa !43
  %i.bw = fadd double %i.bu, %i.bv
  store double %i.bw, ptr %i.bt, align 8, !tbaa !43
  %.not80 = icmp eq i64 %.045, 0
  br i1 %.not80, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr i8, ptr %i.bt, i64 -24
  store double 0.000000e+00, ptr %i.bx, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.by = add nsw i64 %.045, -1
  br label %bb.s

bb.j:                                             ; preds = %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21findSmallSubdiagEntryElRKd.exit
  %i.bz = add nsw i64 %.045, -1                   ; 3 uses
  %i.ca = icmp eq i64 %.014.lcssa.i, %i.bz
  br i1 %i.ca, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15splitOffTwoRowsElbRKd(ptr noundef nonnull align 16 dereferenceable(320) %0, i64 noundef %.045, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cb = add nsw i64 %.045, -2
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.cc = getelementptr [8 x i8], ptr %0, i64 %.045 ; 2 uses
  %.idx.i.i60 = mul i64 %.045, 24                 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 %.idx.i.i60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !43 ; 11 uses
  %i.cf = getelementptr [8 x i8], ptr %0, i64 %i.bz ; 2 uses
  %.idx.i62.i = mul i64 %i.bz, 24                 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 %.idx.i62.i
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !43 ; 4 uses
  %i.ci = getelementptr i8, ptr %i.cc, i64 %.idx.i62.i
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !43 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cf, i64 %.idx.i.i60 ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !43
  %i.cm = fmul double %i.cj, %i.cl                ; 4 uses
  switch i64 %.050, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit [
    i64 10, label %bb.m
    i64 30, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.cn = load double, ptr %i.a, align 8, !tbaa !43
  %i.co = fadd double %i.ce, %i.cn
  store double %i.co, ptr %i.a, align 8, !tbaa !43
  %.not69.i = icmp slt i64 %.045, 0
  br i1 %.not69.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m
end_hunk_1
begin_hunk_2_@_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES1_Li0EEEEERKT_:bb.a
  %gep.i.us.us.i.i.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %i.y, i64 %i.al
  %i.am = load double, ptr %gep.i.us.us.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !43
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.am, double %.013.i.us.us.i.i.i.i.i.i.i.i.i.prol) ; 3 uses
  %i.ao = add nsw i64 %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter24.next = add i64 %prol.iter24, 1     ; 2 uses
  %prol.iter24.cmp.not = icmp eq i64 %prol.iter24.next, %xtraiter22
  br i1 %prol.iter24.cmp.not, label %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1886

.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.us.us.preheader.i.i.i.i.i.i.i.i.i
  %.lcssa.unr = phi double [ poison, %.lr.ph.i.us.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.an, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol ]
  %.013.i.us.us.i.i.i.i.i.i.i.i.i.unr = phi double [ 0.000000e+00, %.lr.ph.i.us.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.an, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.af, %.lr.ph.i.us.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.ao, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol ]
  %i.ap = sub nsw i64 %i.af, %i.ad
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %.loopexit.us.us.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i

.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i
  %.013.i.us.us.i.i.i.i.i.i.i.i.i = phi double [ %i.bv, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i ], [ %.013.i.us.us.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i ], [ %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i
  %i.as = load double, ptr %i.ar, align 8, !tbaa !43
  %i.at = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !154
  %i.av = sext i32 %i.au to i64
  %gep.i.us.us.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.y, i64 %i.av
  %i.aw = load double, ptr %gep.i.us.us.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.as, double %i.aw, double %.013.i.us.us.i.i.i.i.i.i.i.i.i)
  %i.ay = add nsw i64 %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !43
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ay
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !154
  %i.bd = sext i32 %i.bc to i64
  %gep.i.us.us.i.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.y, i64 %i.bd
  %i.be = load double, ptr %gep.i.us.us.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !43
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.be, double %i.ax)
  %i.bg = add nsw i64 %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !43
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.bg
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !154
  %i.bl = sext i32 %i.bk to i64
  %gep.i.us.us.i.i.i.i.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %i.y, i64 %i.bl
  %i.bm = load double, ptr %gep.i.us.us.i.i.i.i.i.i.i.i.i.2, align 8, !tbaa !43
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bm, double %i.bf)
  %i.bo = add nsw i64 %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !43
  %i.br = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !154
  %i.bt = sext i32 %i.bs to i64
  %gep.i.us.us.i.i.i.i.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %i.y, i64 %i.bt
  %i.bu = load double, ptr %gep.i.us.us.i.i.i.i.i.i.i.i.i.3, align 8, !tbaa !43
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bu, double %i.bn) ; 2 uses
  %i.bw = add nsw i64 %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.us.us.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bw, %i.ad
  br i1 %exitcond.not.i.us.us.i.i.i.i.i.i.i.i.i.3, label %.loopexit.us.us.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i, !llvm.loop !1887

.loopexit.us.us.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.us.us.i.i.i.i.i.i.i.i.i
  %.0.lcssa.i.us.us.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.us.us.i.i.i.i.i.i.i.i.i ], [ %.lcssa.unr, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.bv, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i ]
  %gep.us.us.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.l, i64 %.019.us.us.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bx = load double, ptr %gep.us.us.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.by = fadd double %.0.lcssa.i.us.us.i.i.i.i.i.i.i.i.i, %i.bx
  store double %i.by, ptr %gep.us.us.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.bz = add nuw nsw i64 %.019.us.us.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond29.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bz, %i.n
  br i1 %exitcond29.not.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6_init1INS_7ProductINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES2_Li0EEESA_EEvRKNS_9DenseBaseIT0_EE.exit, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.us.us.i.i.i.i.i.i.i.i.i, !llvm.loop !1888

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i
  %.019.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dz, %.loopexit.i.i.i.i.i.i.i.i.i ], [ 0, %.split.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.019.i.i.i.i.i.i.i.i.i
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !154
  %i.cc = sext i32 %i.cb to i64                   ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.019.i.i.i.i.i.i.i.i.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !154 ; 3 uses
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = add nsw i64 %i.cf, %i.cc
  %i.ch = icmp sgt i32 %i.ce, 0
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.i.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.cf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.i.i.i.i.prol = phi double [ %i.co, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0.000000e+00, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.7.012.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.sroa.7.012.i.i.i.i.i.i.i.i.i.i.prol
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !43
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.sroa.7.012.i.i.i.i.i.i.i.i.i.i.prol
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !154
  %i.cm = sext i32 %i.cl to i64
  %gep.i.i.i.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %i.y, i64 %i.cm
  %i.cn = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !43
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.cn, double %.013.i.i.i.i.i.i.i.i.i.i.prol) ; 3 uses
  %i.cp = add nsw i64 %.sroa.7.012.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1889

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa21.unr = phi double [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.co, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.i.i.i.i.unr = phi double [ 0.000000e+00, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.co, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.7.012.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.cq = icmp ult i32 %i.ce, 4
  br i1 %i.cq, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i = phi double [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.7.012.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.7.012.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.sroa.7.012.i.i.i.i.i.i.i.i.i.i
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !43
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.sroa.7.012.i.i.i.i.i.i.i.i.i.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !154
  %i.cv = sext i32 %i.cu to i64
  %gep.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.y, i64 %i.cv
  %i.cw = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.cw, double %.013.i.i.i.i.i.i.i.i.i.i)
  %i.cy = add nsw i64 %.sroa.7.012.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !43
  %i.db = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.cy
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !154
  %i.dd = sext i32 %i.dc to i64
  %gep.i.i.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.y, i64 %i.dd
  %i.de = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !43
  %i.df = tail call double @llvm.fmuladd.f64(double %i.da, double %i.de, double %i.cx)
  %i.dg = add nsw i64 %.sroa.7.012.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !43
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.dg
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !154
  %i.dl = sext i32 %i.dk to i64
  %gep.i.i.i.i.i.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %i.y, i64 %i.dl
  %i.dm = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.2, align 8, !tbaa !43
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.di, double %i.dm, double %i.df)
  %i.do = add nsw i64 %.sroa.7.012.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !43
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.do
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !154
  %i.dt = sext i32 %i.ds to i64
  %gep.i.i.i.i.i.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %i.y, i64 %i.dt
  %i.du = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.3, align 8, !tbaa !43
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.du, double %i.dn) ; 2 uses
  %i.dw = add nsw i64 %.sroa.7.012.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.dw, %i.cg
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1887

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.i.i.i.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa21.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %gep.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.l, i64 %.019.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dx = load double, ptr %gep.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.dy = fadd double %.0.lcssa.i.i.i.i.i.i.i.i.i.i, %i.dx
  store double %i.dy, ptr %gep.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.dz = add nuw nsw i64 %.019.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dz, %i.n
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6_init1INS_7ProductINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES2_Li0EEESA_EEvRKNS_9DenseBaseIT0_EE.exit, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1888

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6_init1INS_7ProductINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES2_Li0EEESA_EEvRKNS_9DenseBaseIT0_EE.exit: ; preds = %.loopexit.i.i.i.i.i.i.i.i.i, %.loopexit.us.us.i.i.i.i.i.i.i.i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = load ptr, ptr %0, align 8, !tbaa !42
  tail call void @free(ptr noundef %i.eb) #27
  resume { ptr, i32 } %i.ea
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi6ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1890, !nonnull !60, !align !221 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  %i.f = load ptr, ptr %1, align 8                ; 8 uses
  br i1 %i.e, label %.split, label %.split51

.split:                                           ; preds = %bb.a
  %.02144 = add nsw i64 %i.d, -1                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !137  ; 6 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !138  ; 8 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !135  ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !136  ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us: ; preds = %.split, %._crit_edge.us.us
  %.02145.us.us = phi i64 [ %.021.us.us, %._crit_edge.us.us ], [ %.02144, %.split ] ; 6 uses
  %gep49.us.us = getelementptr [8 x i8], ptr %i.f, i64 %.02145.us.us ; 2 uses
  %i.p = load double, ptr %gep49.us.us, align 8, !tbaa !43 ; 4 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.02145.us.us ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !154  ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr i8, ptr %i.q, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !154  ; 2 uses
  %i.v = sext i32 %i.u to i64                     ; 5 uses
  %i.w = icmp slt i32 %i.r, %i.u
  br i1 %i.w, label %.lr.ph.us.us, label %.critedge.us.us

.lr.ph.us.us:                                     ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, %bb.b
  %.sroa.10.039.us.us = phi i64 [ %i.ab, %bb.b ], [ %i.s, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ] ; 3 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.039.us.us
  %i.y = load i32, ptr %i.x, align 4, !tbaa !154
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = icmp sgt i64 %.02145.us.us, %i.z
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.us.us
  %i.ab = add nsw i64 %.sroa.10.039.us.us, 1      ; 2 uses
  %exitcond64.not = icmp eq i64 %i.ab, %i.v
  br i1 %exitcond64.not, label %._crit_edge.us.us, label %.lr.ph.us.us, !llvm.loop !1896

bb.c:                                             ; preds = %.lr.ph.us.us
  %i.ac = icmp eq i64 %.02145.us.us, %i.z
  %i.ad = zext i1 %i.ac to i64
  %spec.select.us.us = add nsw i64 %.sroa.10.039.us.us, %i.ad
  br label %.critedge.us.us

.critedge.us.us:                                  ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, %bb.c
  %.sroa.10.1.us.us = phi i64 [ %spec.select.us.us, %bb.c ], [ %i.s, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ] ; 7 uses
  %i.ae = icmp slt i64 %.sroa.10.1.us.us, %i.v
  br i1 %i.ae, label %.lr.ph42.us.us.preheader, label %._crit_edge.us.us

.lr.ph42.us.us.preheader:                         ; preds = %.critedge.us.us
  %i.af = sub i64 %i.v, %.sroa.10.1.us.us
  %xtraiter104 = and i64 %i.af, 1
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.lr.ph42.us.us.prol.loopexit, label %.lr.ph42.us.us.prol

.lr.ph42.us.us.prol:                              ; preds = %.lr.ph42.us.us.preheader
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.1.us.us
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !43
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.1.us.us
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !154
  %i.ak = sext i32 %i.aj to i64
  %gep.us.us.prol = getelementptr [8 x i8], ptr %i.f, i64 %i.ak
  %i.al = load double, ptr %gep.us.us.prol, align 8, !tbaa !43
  %i.am = fneg double %i.ah
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.al, double %i.p) ; 2 uses
  %i.ao = add nsw i64 %.sroa.10.1.us.us, 1
  br label %.lr.ph42.us.us.prol.loopexit

.lr.ph42.us.us.prol.loopexit:                     ; preds = %.lr.ph42.us.us.prol, %.lr.ph42.us.us.preheader
  %.lcssa97.unr = phi double [ poison, %.lr.ph42.us.us.preheader ], [ %i.an, %.lr.ph42.us.us.prol ]
  %.02241.us.us.unr = phi double [ %i.p, %.lr.ph42.us.us.preheader ], [ %i.an, %.lr.ph42.us.us.prol ]
  %.sroa.10.240.us.us.unr = phi i64 [ %.sroa.10.1.us.us, %.lr.ph42.us.us.preheader ], [ %i.ao, %.lr.ph42.us.us.prol ]
  %i.ap = add nsw i64 %i.v, -1
  %i.aq = icmp eq i64 %.sroa.10.1.us.us, %i.ap
  br i1 %i.aq, label %._crit_edge.us.us, label %.lr.ph42.us.us

.lr.ph42.us.us:                                   ; preds = %.lr.ph42.us.us.prol.loopexit, %.lr.ph42.us.us
  %.02241.us.us = phi double [ %i.bh, %.lr.ph42.us.us ], [ %.02241.us.us.unr, %.lr.ph42.us.us.prol.loopexit ]
  %.sroa.10.240.us.us = phi i64 [ %i.bi, %.lr.ph42.us.us ], [ %.sroa.10.240.us.us.unr, %.lr.ph42.us.us.prol.loopexit ] ; 4 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.240.us.us
  %i.as = load double, ptr %i.ar, align 8, !tbaa !43
  %i.at = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.240.us.us
  %i.au = load i32, ptr %i.at, align 4, !tbaa !154
  %i.av = sext i32 %i.au to i64
  %gep.us.us = getelementptr [8 x i8], ptr %i.f, i64 %i.av
  %i.aw = load double, ptr %gep.us.us, align 8, !tbaa !43
  %i.ax = fneg double %i.as
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.aw, double %.02241.us.us)
  %i.az = add nsw i64 %.sroa.10.240.us.us, 1      ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !43
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.az
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !154
  %i.be = sext i32 %i.bd to i64
  %gep.us.us.1 = getelementptr [8 x i8], ptr %i.f, i64 %i.be
  %i.bf = load double, ptr %gep.us.us.1, align 8, !tbaa !43
  %i.bg = fneg double %i.bb
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bf, double %i.ay) ; 2 uses
  %i.bi = add nsw i64 %.sroa.10.240.us.us, 2      ; 2 uses
  %exitcond65.not.1 = icmp eq i64 %i.bi, %i.v
  br i1 %exitcond65.not.1, label %._crit_edge.us.us, label %.lr.ph42.us.us, !llvm.loop !1897

._crit_edge.us.us:                                ; preds = %bb.b, %.lr.ph42.us.us.prol.loopexit, %.lr.ph42.us.us, %.critedge.us.us
  %.022.lcssa.us.us = phi double [ %i.p, %.critedge.us.us ], [ %i.bh, %.lr.ph42.us.us ], [ %.lcssa97.unr, %.lr.ph42.us.us.prol.loopexit ], [ %i.p, %bb.b ]
  store double %.022.lcssa.us.us, ptr %gep49.us.us, align 8, !tbaa !43
  %.021.us.us = add nsw i64 %.02145.us.us, -1
  %i.bj = icmp sgt i64 %.02145.us.us, 0
  br i1 %i.bj, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, label %.split51, !llvm.loop !1898

.split51:                                         ; preds = %._crit_edge, %._crit_edge.us.us, %bb.a
  ret void

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit: ; preds = %.split, %._crit_edge
  %.02145 = phi i64 [ %.021, %._crit_edge ], [ %.02144, %.split ] ; 7 uses
  %gep49 = getelementptr [8 x i8], ptr %i.f, i64 %.02145 ; 2 uses
  %i.bk = load double, ptr %gep49, align 8, !tbaa !43 ; 4 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.02145
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !154
  %i.bn = sext i32 %i.bm to i64                   ; 5 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.n, i64 %.02145
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !154 ; 2 uses
  %i.bq = sext i32 %i.bp to i64                   ; 3 uses
  %i.br = add nsw i64 %i.bq, %i.bn                ; 3 uses
  %i.bs = icmp sgt i32 %i.bp, 0
  br i1 %i.bs, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, %bb.d
  %.sroa.10.039 = phi i64 [ %i.bx, %bb.d ], [ %i.bn, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ] ; 3 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.039
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !154
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = icmp sgt i64 %.02145, %i.bv
  br i1 %i.bw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.bx = add nsw i64 %.sroa.10.039, 1            ; 2 uses
  %i.by = icmp slt i64 %i.bx, %i.br
  br i1 %i.by, label %.lr.ph, label %._crit_edge, !llvm.loop !1896

bb.e:                                             ; preds = %.lr.ph
  %i.bz = icmp eq i64 %.02145, %i.bv
  %i.ca = zext i1 %i.bz to i64
  %spec.select = add nsw i64 %.sroa.10.039, %i.ca
  br label %.critedge

.critedge:                                        ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, %bb.e
  %.sroa.10.1 = phi i64 [ %spec.select, %bb.e ], [ %i.bn, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ] ; 7 uses
  %i.cb = icmp slt i64 %.sroa.10.1, %i.br
  br i1 %i.cb, label %.lr.ph42.preheader, label %._crit_edge

.lr.ph42.preheader:                               ; preds = %.critedge
  %i.cc = add nsw i64 %i.bq, %i.bn
  %i.cd = sub i64 %i.cc, %.sroa.10.1
  %i.ce = add nsw i64 %i.bq, -1
  %i.cf = add nsw i64 %i.ce, %i.bn
  %xtraiter = and i64 %i.cd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph42.prol.loopexit, label %.lr.ph42.prol

.lr.ph42.prol:                                    ; preds = %.lr.ph42.preheader
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.1
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !43
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.1
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !154
  %i.ck = sext i32 %i.cj to i64
  %gep.prol = getelementptr [8 x i8], ptr %i.f, i64 %i.ck
  %i.cl = load double, ptr %gep.prol, align 8, !tbaa !43
  %i.cm = fneg double %i.ch
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.cl, double %i.bk) ; 2 uses
  %i.co = add nsw i64 %.sroa.10.1, 1
  br label %.lr.ph42.prol.loopexit

.lr.ph42.prol.loopexit:                           ; preds = %.lr.ph42.prol, %.lr.ph42.preheader
  %.lcssa103.unr = phi double [ poison, %.lr.ph42.preheader ], [ %i.cn, %.lr.ph42.prol ]
  %.02241.unr = phi double [ %i.bk, %.lr.ph42.preheader ], [ %i.cn, %.lr.ph42.prol ]
  %.sroa.10.240.unr = phi i64 [ %.sroa.10.1, %.lr.ph42.preheader ], [ %i.co, %.lr.ph42.prol ]
  %i.cp = icmp eq i64 %i.cf, %.sroa.10.1
  br i1 %i.cp, label %._crit_edge, label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.prol.loopexit, %.lr.ph42
  %.02241 = phi double [ %i.dg, %.lr.ph42 ], [ %.02241.unr, %.lr.ph42.prol.loopexit ]
  %.sroa.10.240 = phi i64 [ %i.dh, %.lr.ph42 ], [ %.sroa.10.240.unr, %.lr.ph42.prol.loopexit ] ; 4 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.240
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !43
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.240
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !154
  %i.cu = sext i32 %i.ct to i64
  %gep = getelementptr [8 x i8], ptr %i.f, i64 %i.cu
  %i.cv = load double, ptr %gep, align 8, !tbaa !43
  %i.cw = fneg double %i.cr
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cv, double %.02241)
  %i.cy = add nsw i64 %.sroa.10.240, 1            ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !43
  %i.db = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.cy
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !154
  %i.dd = sext i32 %i.dc to i64
  %gep.1 = getelementptr [8 x i8], ptr %i.f, i64 %i.dd
  %i.de = load double, ptr %gep.1, align 8, !tbaa !43
  %i.df = fneg double %i.da
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.df, double %i.de, double %i.cx) ; 2 uses
  %i.dh = add nsw i64 %.sroa.10.240, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dh, %i.br
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph42, !llvm.loop !1897

._crit_edge:                                      ; preds = %bb.d, %.lr.ph42.prol.loopexit, %.lr.ph42, %.critedge
  %.022.lcssa = phi double [ %i.bk, %.critedge ], [ %i.dg, %.lr.ph42 ], [ %.lcssa103.unr, %.lr.ph42.prol.loopexit ], [ %i.bk, %bb.d ]
  store double %.022.lcssa, ptr %gep49, align 8, !tbaa !43
  %.021 = add nsw i64 %.02145, -1
  %i.di = icmp sgt i64 %.02145, 0
  br i1 %i.di, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, label %.split51, !llvm.loop !1898
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26permutation_matrix_productINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi1ELb0ENS_10DenseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !41   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !42     ; 8 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !42     ; 6 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, %i.b
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %i.i, label %bb.b, label %.preheader78

.preheader78:                                     ; preds = %bb.a
  %i.j = icmp sgt i64 %i.b, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit79

.lr.ph:                                           ; preds = %.preheader78
  %i.k = load ptr, ptr %1, align 8, !tbaa !139    ; 5 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.l = icmp ult i64 %i.b, 4
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !338  ; 4 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %calloc = tail call ptr @calloc(i64 1, i64 %i.n) ; 6 uses
  %i.p = icmp eq ptr %calloc, null
  br i1 %i.p, label %.noexc.i, label %.preheader.preheader

.noexc.i:                                         ; preds = %bb.c
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !140
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable

.preheader.preheader:                             ; preds = %bb.c
  %i.r = load ptr, ptr %1, align 8                ; 2 uses
  br label %.preheader

.loopexit:                                        ; preds = %bb.f, %bb.e
  %i.s = icmp slt i64 %i.z, %i.n
  br i1 %i.s, label %.preheader.backedge, label %.critedge

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.preheader
  %.14082 = phi i64 [ 0, %.preheader.preheader ], [ %.14082.be, %.preheader.backedge ] ; 8 uses
  %i.t = getelementptr inbounds i8, ptr %calloc, i64 %.14082
  %i.u = load i8, ptr %i.t, align 1, !tbaa !289, !range !238, !noundef !60
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.w = add nsw i64 %.14082, 1                   ; 2 uses
  %i.x = icmp slt i64 %i.w, %i.n
  br i1 %i.x, label %.preheader.backedge, label %.critedge

.preheader.backedge:                              ; preds = %bb.d, %.loopexit
  %.14082.be = phi i64 [ %i.w, %bb.d ], [ %i.z, %.loopexit ]
  br label %.preheader, !llvm.loop !1899

bb.e:                                             ; preds = %.preheader
  %i.y = getelementptr inbounds i8, ptr %calloc, i64 %.14082
  %i.z = add nsw i64 %.14082, 1                   ; 2 uses
  store i8 1, ptr %i.y, align 1, !tbaa !289
  %.037.in.in83 = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.14082
  %.037.in84 = load i32, ptr %.037.in.in83, align 4, !tbaa !154
  %.03785 = sext i32 %.037.in84 to i64            ; 2 uses
  %.not4486 = icmp eq i64 %.14082, %.03785
  br i1 %.not4486, label %.loopexit, label %.lr.ph88

.lr.ph88:                                         ; preds = %bb.e
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.14082 ; 2 uses
  %.pre = load double, ptr %i.aa, align 8, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph88, %bb.f
  %i.ab = phi double [ %.pre, %.lr.ph88 ], [ %i.ad, %bb.f ]
  %.03787 = phi i64 [ %.03785, %.lr.ph88 ], [ %.037, %bb.f ] ; 3 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.03787 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !43 ; 2 uses
  store double %i.ab, ptr %i.ac, align 8, !tbaa !43
  store double %i.ad, ptr %i.aa, align 8, !tbaa !43
  %i.ae = getelementptr inbounds i8, ptr %calloc, i64 %.03787
  store i8 1, ptr %i.ae, align 1, !tbaa !289
  %.037.in.in = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.03787
  %.037.in = load i32, ptr %.037.in.in, align 4, !tbaa !154
  %.037 = sext i32 %.037.in to i64                ; 2 uses
  %.not44 = icmp eq i64 %.14082, %.037
  br i1 %.not44, label %.loopexit, label %bb.f, !llvm.loop !1900

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.b
  %.sroa.068.07699 = phi ptr [ null, %bb.b ], [ %calloc, %bb.d ], [ %calloc, %.loopexit ]
  tail call void @free(ptr noundef %.sroa.068.07699) #27
  br label %.loopexit79

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %.081 = phi i64 [ 0, %.lr.ph.new ], [ %i.bg, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
end_hunk_2
