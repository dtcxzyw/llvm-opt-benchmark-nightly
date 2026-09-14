Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/tiny_api?download=true
inline.NumInlined: 10097
inline.NumDeleted: 4374
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 147
begin_hunk_0_@tiny_precompute_and_set_cache:bb.a
bb.af:                                            ; preds = %.noexc337, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i332, %.noexc335, %bb.p, %bb.n, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6formatERKNS_8IOFormatE.exit102
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen8IOFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(236) dereferenceable(236) %i.bo) #26
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn61 = phi { ptr, i32 } [ %i.ea, %bb.af ], [ %i.dz, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.fc

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %.noexc348, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i343, %.noexc346, %bb.s, %bb.q, %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6formatERKNS_8IOFormatE.exit106
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen8IOFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(236) dereferenceable(236) %i.ci) #26
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn63 = phi { ptr, i32 } [ %i.ec, %bb.ai ], [ %i.eb, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br label %bb.fc

bb.ak:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEES7_EEKNSA_INS4_18scalar_identity_opIdEES1_EEEEEEEERKNS_9EigenBaseIT_EE.exit, %.noexc359
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  store i64 %i.v, ptr %27, align 8, !tbaa !91, !alias.scope !381
  %i.ed = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.r, ptr %i.ed, align 8, !tbaa !91, !alias.scope !381
  %i.ee = getelementptr inbounds nuw i8, ptr %27, i64 16
  store double 0.000000e+00, ptr %i.ee, align 8, !tbaa !87, !alias.scope !381
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  %i.ef = getelementptr inbounds nuw i8, ptr %29, i64 40
  store i64 %i.r, ptr %i.ef, align 8
  %.sroa.6551.8..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 48
  store i64 1, ptr %.sroa.6551.8..sroa_idx, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i64 %i.r, ptr %i.eg, align 8, !alias.scope !382
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i64 1, ptr %.sroa.4.8..sroa_idx.i, align 8, !alias.scope !382
  %i.eh = getelementptr inbounds nuw i8, ptr %29, i64 32
  store double %8, ptr %i.eh, align 8, !tbaa !87, !alias.scope !383
  %i.ei = getelementptr inbounds nuw i8, ptr %29, i64 56
  store double 1.000000e+00, ptr %i.ei, align 8, !tbaa !87, !alias.scope !383
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_15DiagonalWrapperIKNS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKS2_EEKNS_13MatrixWrapperIKNS_12ArrayWrapperIKNSA_ISC_S2_EEEEEEEEEEEERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  store i64 %i.v, ptr %31, align 8, !tbaa !91, !alias.scope !384
  %i.ej = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.r, ptr %i.ej, align 8, !tbaa !91, !alias.scope !384
  %i.ek = getelementptr inbounds nuw i8, ptr %31, i64 16
  store double 0.000000e+00, ptr %i.ek, align 8, !tbaa !87, !alias.scope !384
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  store i64 %i.r, ptr %33, align 8, !tbaa !91, !alias.scope !385
  %i.el = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 %i.r, ptr %i.el, align 8, !tbaa !91, !alias.scope !385
  %i.em = getelementptr inbounds nuw i8, ptr %33, i64 16
  store double 0.000000e+00, ptr %i.em, align 8, !tbaa !87, !alias.scope !385
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit112 unwind label %bb.ar

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit112: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  %i.en = ptrtoint ptr %2 to i64
  %.sroa.5535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 8
  %.sroa.6536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 16
  %.sroa.7537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 24
  %.sroa.9539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 48
  %i.eo = getelementptr inbounds nuw i8, ptr %34, i64 56
  %i.ep = getelementptr inbounds nuw i8, ptr %35, i64 8
  %.sroa.5507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 16
  %.sroa.6508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 24
  %.sroa.7509.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 32
  %.sroa.8510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 40
  %i.eq = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  br label %bb.as

bb.ao:                                            ; preds = %bb.ak
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  br label %bb.fb

bb.ap:                                            ; preds = %bb.al
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %bb.fa

bb.aq:                                            ; preds = %bb.am
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  br label %bb.ez

bb.ar:                                            ; preds = %bb.an
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  br label %bb.ey

bb.as:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit112, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit136
  %.0587 = phi i32 [ 0, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES1_EEEERKNS_9EigenBaseIT_EE.exit112 ], [ %i.np, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit136 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  store ptr %20, ptr %34, align 8
  store ptr %2, ptr %.sroa.5535.0..sroa_idx, align 8
  store ptr %28, ptr %.sroa.6536.0..sroa_idx, align 8
  store ptr %2, ptr %.sroa.7537.0..sroa_idx, align 8
  store i64 %i.en, ptr %.sroa.9539.0..sroa_idx, align 8
  store ptr %28, ptr %.sroa.10.0..sroa_idx, align 8
  store ptr %1, ptr %i.eo, align 8, !tbaa !85, !alias.scope !386
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS4_INS4_INS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_KNS4_INS4_INS_9TransposeIS3_EES3_Li0EEES3_Li0EEEEEEESB_Li0EEES3_Li0EEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NSt9enable_ifIXsr25evaluator_assume_aliasingISO_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(64) %34, ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef null)
          to label %bb.at unwind label %bb.bg

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  store ptr %18, ptr %35, align 8, !tbaa !85, !alias.scope !387
  store ptr %1, ptr %i.ep, align 8
  store ptr %28, ptr %.sroa.5507.0..sroa_idx, align 8
  store ptr %1, ptr %.sroa.6508.0..sroa_idx, align 8
  store ptr %2, ptr %.sroa.7509.0..sroa_idx, align 8
  store ptr %30, ptr %.sroa.8510.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_KNS_7ProductINS8_INS_9TransposeIS3_EES3_Li0EEENS4_INS0_20scalar_difference_opIddEES7_KNS8_IS3_S3_Li0EEEEELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NSt9enable_ifIXsr25evaluator_assume_aliasingISO_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(57) %35, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef null)
          to label %bb.au unwind label %bb.bh

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  %i.fc = load ptr, ptr %30, align 8, !tbaa !40   ; 17 uses
  %i.fd = ptrtoaddr ptr %i.fc to i64
  %i.fe = load ptr, ptr %26, align 8, !tbaa !40   ; 12 uses
  %i.ff = load i64, ptr %i.eq, align 8, !tbaa !38 ; 2 uses
  %i.fg = load i64, ptr %i.er, align 8, !tbaa !39 ; 2 uses
  %i.fh = mul nsw i64 %i.fg, %i.ff                ; 10 uses
  %i.fi = sdiv i64 %i.fh, 4
  %i.fj = shl nsw i64 %i.fi, 2                    ; 4 uses
  %i.fk = sdiv i64 %i.fh, 2
  %i.fl = shl nsw i64 %i.fk, 1                    ; 7 uses
  %.off.i.i.i.i = add i64 %i.fh, 1
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 3
  br i1 %.not.i.i.i.i, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fm = load <2 x double>, ptr %i.fc, align 16, !tbaa !24
  %i.fn = load <2 x double>, ptr %i.fe, align 16, !tbaa !24
  %i.fo = fsub <2 x double> %i.fm, %i.fn
  %i.fp = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fo) ; 3 uses
  %i.fq = icmp sgt i64 %i.fh, 3
  br i1 %i.fq, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fs = load <2 x double>, ptr %i.fr, align 16, !tbaa !24
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fu = load <2 x double>, ptr %i.ft, align 16, !tbaa !24
  %i.fv = fsub <2 x double> %i.fs, %i.fu
  %i.fw = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fv) ; 2 uses
  %i.fx = icmp samesign ugt i64 %i.fh, 7
  br i1 %i.fx, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.aw
  %.075.lcssa.i.i.i.i = phi <2 x double> [ %i.fw, %bb.aw ], [ %i.gn, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <2 x double> [ %i.fp, %bb.aw ], [ %i.gg, %.lr.ph.i.i.i.i ]
  %i.fy = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %.075.lcssa.i.i.i.i, <2 x double> %.072.lcssa.i.i.i.i) ; 2 uses
  %i.fz = icmp sgt i64 %i.fl, %i.fj
  br i1 %i.fz, label %bb.ax, label %bb.ay

.lr.ph.i.i.i.i:                                   ; preds = %bb.aw, %.lr.ph.i.i.i.i
  %.054.in79.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 4, %bb.aw ] ; 4 uses
  %.07278.i.i.i.i = phi <2 x double> [ %i.gg, %.lr.ph.i.i.i.i ], [ %i.fp, %bb.aw ]
  %.07577.i.i.i.i = phi <2 x double> [ %i.gn, %.lr.ph.i.i.i.i ], [ %i.fw, %bb.aw ]
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.054.in79.i.i.i.i
  %i.gb = load <2 x double>, ptr %i.ga, align 16, !tbaa !24
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %.054.in79.i.i.i.i
  %i.gd = load <2 x double>, ptr %i.gc, align 16, !tbaa !24
  %i.ge = fsub <2 x double> %i.gb, %i.gd
  %i.gf = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ge)
  %i.gg = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gf, <2 x double> %.07278.i.i.i.i) ; 2 uses
  %50 = or disjoint i64 %.054.in79.i.i.i.i, 2     ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %50
  %i.gi = load <2 x double>, ptr %i.gh, align 16, !tbaa !24
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %50
  %i.gk = load <2 x double>, ptr %i.gj, align 16, !tbaa !24
  %i.gl = fsub <2 x double> %i.gi, %i.gk
  %i.gm = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.gl)
  %i.gn = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gm, <2 x double> %.07577.i.i.i.i) ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.054.in79.i.i.i.i, 4 ; 2 uses
  %i.go = icmp slt i64 %.054.i.i.i.i, %i.fj
  br i1 %i.go, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !330

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fj
  %i.gq = load <2 x double>, ptr %i.gp, align 16, !tbaa !24
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fj
  %i.gs = load <2 x double>, ptr %i.gr, align 16, !tbaa !24
  %i.gt = fsub <2 x double> %i.gq, %i.gs
  %i.gu = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.gt)
  %i.gv = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gu, <2 x double> %i.fy)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i.i.i.i, %bb.av
  %.274.i.i.i.i = phi <2 x double> [ %i.fp, %bb.av ], [ %i.gv, %bb.ax ], [ %i.fy, %._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %.274.i.i.i.i, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %.274.i.i.i.i, i64 1 ; 2 uses
  %i.gw = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i
  %i.gx = select i1 %i.gw, double %.sroa.0.8.vec.extract.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i ; 4 uses
  %i.gy = icmp slt i64 %i.fl, %i.fh
  br i1 %i.gy, label %.lr.ph85.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_13CwiseBinaryOpINS2_20scalar_difference_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEEEE8maxCoeffEv.exit

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.ay
  %.neg = or disjoint i64 %i.fl, 1
  %xtraiter = and i64 %i.fh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol

.lr.ph85.i.i.i.i.prol:                            ; preds = %.lr.ph85.i.i.i.i.preheader
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.fl
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.fl
  %i.hb = load double, ptr %i.gz, align 8, !tbaa !42
  %i.hc = load double, ptr %i.ha, align 8, !tbaa !42
  %i.hd = fsub double %i.hb, %i.hc
  %i.he = call noundef double @llvm.fabs.f64(double %i.hd) ; 2 uses
  %i.hf = fcmp olt double %i.gx, %i.he
  %i.hg = select i1 %i.hf, double %i.he, double %i.gx ; 2 uses
  %i.hh = or disjoint i64 %i.fl, 1
  br label %.lr.ph85.i.i.i.i.prol.loopexit

.lr.ph85.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph85.i.i.i.i.prol, %.lr.ph85.i.i.i.i.preheader
  %.lcssa816.unr = phi double [ poison, %.lr.ph85.i.i.i.i.preheader ], [ %i.hg, %.lr.ph85.i.i.i.i.prol ]
  %.05283.i.i.i.i.unr = phi i64 [ %i.fl, %.lr.ph85.i.i.i.i.preheader ], [ %i.hh, %.lr.ph85.i.i.i.i.prol ]
  %.182.i.i.i.i.unr = phi double [ %i.gx, %.lr.ph85.i.i.i.i.preheader ], [ %i.hg, %.lr.ph85.i.i.i.i.prol ]
  %i.hi = icmp eq i64 %i.fh, %.neg
  br i1 %i.hi, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_13CwiseBinaryOpINS2_20scalar_difference_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEEEE8maxCoeffEv.exit, label %.lr.ph85.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i
  %.05283.i.i.i.i = phi i64 [ %i.ia, %.lr.ph85.i.i.i.i ], [ %.05283.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 4 uses
  %.182.i.i.i.i = phi double [ %i.hz, %.lr.ph85.i.i.i.i ], [ %.182.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %.05283.i.i.i.i
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %.05283.i.i.i.i
  %i.hl = load double, ptr %i.hj, align 8, !tbaa !42
  %i.hm = load double, ptr %i.hk, align 8, !tbaa !42
  %i.hn = fsub double %i.hl, %i.hm
  %i.ho = call noundef double @llvm.fabs.f64(double %i.hn) ; 2 uses
  %i.hp = fcmp olt double %.182.i.i.i.i, %i.ho
  %i.hq = select i1 %i.hp, double %i.ho, double %.182.i.i.i.i ; 2 uses
  %i.hr = add nsw i64 %.05283.i.i.i.i, 1          ; 2 uses
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.hr
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.hr
  %i.hu = load double, ptr %i.hs, align 8, !tbaa !42
  %i.hv = load double, ptr %i.ht, align 8, !tbaa !42
  %i.hw = fsub double %i.hu, %i.hv
  %i.hx = call noundef double @llvm.fabs.f64(double %i.hw) ; 2 uses
  %i.hy = fcmp olt double %i.hq, %i.hx
  %i.hz = select i1 %i.hy, double %i.hx, double %i.hq ; 2 uses
  %i.ia = add nsw i64 %.05283.i.i.i.i, 2          ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.ia, %i.fh
  br i1 %exitcond.not.i.i.i.i.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_13CwiseBinaryOpINS2_20scalar_difference_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEEEE8maxCoeffEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !331

bb.az:                                            ; preds = %bb.au
  %i.ib = load double, ptr %i.fc, align 8, !tbaa !42
  %i.ic = load double, ptr %i.fe, align 8, !tbaa !42
  %i.id = fsub double %i.ib, %i.ic
  %i.ie = call noundef double @llvm.fabs.f64(double %i.id)
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_13CwiseBinaryOpINS2_20scalar_difference_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEEEE8maxCoeffEv.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_13CwiseBinaryOpINS2_20scalar_difference_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEEEE8maxCoeffEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %bb.az, %bb.ay
  %.3.i.i.i.i = phi double [ %i.gx, %bb.ay ], [ %i.ie, %bb.az ], [ %.lcssa816.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.hz, %.lr.ph85.i.i.i.i ]
  %i.if = fcmp olt double %.3.i.i.i.i, 1.000000e-05
  br i1 %i.if, label %bb.ba, label %bb.bj

bb.ba:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_13CwiseBinaryOpINS2_20scalar_difference_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEEEE8maxCoeffEv.exit
  br i1 %.not57, label %.loopexit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ig = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.41, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117: ; preds = %bb.bb
  %i.ih = add nuw nsw i32 %.0587, 1
  %i.ii = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.ih)
          to label %bb.bc unwind label %bb.bi     ; 4 uses

bb.bc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117
  %i.ij = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ii, ptr noundef nonnull @.str.42, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118: ; preds = %bb.bc
  %i.ik = load ptr, ptr %i.ii, align 8, !tbaa !37
  %i.il = getelementptr i8, ptr %i.ik, i64 -24
  %i.im = load i64, ptr %i.il, align 8
  %i.in = getelementptr inbounds i8, ptr %i.ii, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 240
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !78 ; 6 uses
  %.not.i.i.i362 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i362, label %bb.bd, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i363

bb.bd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc367 unwind label %bb.bi

.noexc367:                                        ; preds = %bb.bd
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i363: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 56
  %i.ir = load i8, ptr %i.iq, align 8, !tbaa !83
  %.not.i1.i.i364 = icmp eq i8 %i.ir, 0
  br i1 %.not.i1.i.i364, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i363
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 67
  %i.it = load i8, ptr %i.is, align 1, !tbaa !24
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i365

bb.bf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i363
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ip)
          to label %.noexc368 unwind label %bb.bi

.noexc368:                                        ; preds = %bb.bf
  %i.iu = load ptr, ptr %i.ip, align 8, !tbaa !37
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 48
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = invoke noundef signext i8 %i.iw(ptr noundef nonnull align 8 dereferenceable(570) %i.ip, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i365 unwind label %bb.bi, !inline_history !297

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i365: ; preds = %.noexc368, %bb.be
  %.0.i.i.i366 = phi i8 [ %i.it, %bb.be ], [ %i.ix, %.noexc368 ]
  %i.iy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ii, i8 noundef signext %.0.i.i.i366)
          to label %.noexc370 unwind label %bb.bi

.noexc370:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i365
  %i.iz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iy)
          to label %.loopexit unwind label %bb.bi ; 0 uses

bb.bg:                                            ; preds = %bb.as
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  br label %bb.ex

bb.bh:                                            ; preds = %bb.at
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  br label %bb.ex

bb.bi:                                            ; preds = %.invoke, %.noexc370, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i365, %.noexc368, %bb.bf, %bb.bd, %bb.bc, %bb.bb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.bj:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_13CwiseBinaryOpINS2_20scalar_difference_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEEEE8maxCoeffEv.exit
  %i.jd = load i64, ptr %i.es, align 8, !tbaa !38 ; 5 uses
  %i.je = load i64, ptr %i.et, align 8, !tbaa !39 ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ff, %i.jd
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.fg, %i.je
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %._crit_edge, label %bb.bk

._crit_edge:                                      ; preds = %bb.bj
  %.pre = mul nsw i64 %i.je, %i.jd
  br label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %i.jf = icmp eq i64 %i.je, 0
  br i1 %i.jf, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jg = sdiv i64 9223372036854775807, %i.je
  %i.jh = icmp sgt i64 %i.jd, %i.jg
  br i1 %i.jh, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bl, %bb.bk
  %i.ji = mul nsw i64 %i.je, %i.jd                ; 5 uses
  %.not.i = icmp eq i64 %i.ji, %i.fh
  br i1 %.not.i, label %.noexc120, label %bb.bm

bb.bm:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  call void @free(ptr noundef nonnull %i.fe) #26
  %i.jj = icmp sgt i64 %i.ji, 0
  br i1 %i.jj, label %bb.bn, label %.sink.split.i

bb.bn:                                            ; preds = %bb.bm
  %i.jk = icmp samesign ugt i64 %i.ji, 2305843009213693951
  br i1 %i.jk, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.bn
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS7_INS_9TransposeIS5_EES5_Li0EEES5_Li1EEEEENS0_13add_assign_opIddEEEELi4ELi0EE3runERSF_:bb.a
  %epil.iter102.cmp.not = icmp eq i64 %epil.iter102.next, %xtraiter101
  br i1 %epil.iter102.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS6_INS_9TransposeIS4_EES4_Li0EEES4_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39, label %.lr.ph.i.i.i.i.i.i35.epil, !llvm.loop !675

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS6_INS_9TransposeIS4_EES4_Li0EEES4_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS6_INS_9TransposeIS4_EES4_Li0EEES4_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i35.epil, %bb.d
  %.0.i.i.i.i34 = phi double [ %i.fw, %bb.d ], [ %i.hb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS6_INS_9TransposeIS4_EES4_Li0EEES4_Li1EEEEENS0_13add_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.loopexit.unr-lcssa ], [ %i.hj, %.lr.ph.i.i.i.i.i.i35.epil ]
  %gep58 = getelementptr [8 x i8], ptr %invariant.gep57, i64 %.055 ; 2 uses
  %i.hl = load double, ptr %gep58, align 8, !tbaa !42
  %i.hm = fadd double %.0.i.i.i.i34, %i.hl
  store double %i.hm, ptr %gep58, align 8, !tbaa !42
  %i.hn = add nsw i64 %.055, 1                    ; 2 uses
  %i.ho = icmp slt i64 %i.hn, %i.d
  br i1 %i.ho, label %bb.d, label %._crit_edge, !llvm.loop !676
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_9TransposeIS3_EES3_Li0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS7_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Product.368", align 8 ; 5 uses
  %4 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !88, !align !89
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !174, !nonnull !88, !align !89 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !38
  %.not = icmp eq i64 %i.j, %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %.not11 = icmp eq i64 %i.l, %i.h
  %or.cond = select i1 %.not, i1 %.not11, i1 false
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv i64 9223372036854775807, %i.h
  %i.o = icmp sgt i64 %i.d, %i.n
  br i1 %i.o, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.b, %bb.c
  %i.q = mul nsw i64 %i.h, %i.d
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q, i64 noundef %i.d, i64 noundef %i.h)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !174
  %.pre13 = load i64, ptr %i.i, align 8, !tbaa !38
  %.pre14 = load i64, ptr %i.k, align 8, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.r = phi i64 [ %i.h, %bb.a ], [ %.pre14, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ] ; 2 uses
  %i.s = phi i64 [ %i.d, %bb.a ], [ %.pre13, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ] ; 2 uses
  %i.t = phi ptr [ %i.f, %bb.a ], [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !38   ; 2 uses
  %i.w = add nsw i64 %i.s, %i.v
  %i.x = add nsw i64 %i.w, %i.r
  %i.y = icmp slt i64 %i.x, 20
  %i.z = icmp sgt i64 %i.v, 0
  %or.cond.i = and i1 %i.z, %i.y
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !88, !align !89
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.aa, ptr %3, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.t, ptr %i.ab, align 8
  call void @_ZN5Eigen8internal42call_restricted_packet_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_9TransposeIKS3_EES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_NS_10DenseShapeES6_Li8EE6evalToIS4_EEvRT_RKS5_RKS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = mul nsw i64 %i.r, %i.s                  ; 2 uses
  %i.ad = icmp slt i64 %i.ac, 1
  br i1 %i.ad, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i: ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !tbaa !40
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ac, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !42
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !42
  call void @_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_NS_10DenseShapeES6_Li8EE13scaleAndAddToIS4_EEvRT_RKS5_RKS4_RKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_NS_10DenseShapeES6_Li8EE6evalToIS4_EEvRT_RKS5_RKS4_.exit

_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_NS_10DenseShapeES6_Li8EE6evalToIS4_EEvRT_RKS5_RKS4_.exit: ; preds = %bb.f, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_NS_10DenseShapeES6_Li8EE13scaleAndAddToIS4_EEvRT_RKS5_RKS4_RKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Transpose.556", align 8 ; 8 uses
  %5 = alloca %"class.Eigen::Transpose.331", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::Transpose.469", align 8 ; 8 uses
  %7 = alloca %"class.Eigen::Transpose", align 8  ; 4 uses
  %8 = alloca %"class.Eigen::Block.403", align 8  ; 8 uses
  %9 = alloca %"class.Eigen::Block", align 8      ; 8 uses
  %10 = alloca %"class.Eigen::internal::gemm_blocking_space", align 8 ; 14 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !159    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38   ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !39   ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !39   ; 3 uses
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.n = load ptr, ptr %0, align 8, !tbaa !40, !noalias !703 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !38, !noalias !703 ; 2 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !124, !alias.scope !703
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !91, !alias.scope !703
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %0, ptr %i.r, align 8, !tbaa !85, !alias.scope !703
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i64 %i.p, ptr %i.t, align 8, !tbaa !127, !alias.scope !703
  %i.u = load ptr, ptr %2, align 8, !tbaa !40, !noalias !704 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !38, !noalias !704 ; 12 uses
  %i.x = icmp eq i64 %i.f, 1
  br i1 %i.x, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.y = load double, ptr %3, align 8, !tbaa !42
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !40, !noalias !705 ; 11 uses
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEEE3dotINS1_IKNS1_IKS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = sdiv i64 %i.w, 4
  %i.ac = shl nsw i64 %i.ab, 2                    ; 4 uses
  %i.ad = sdiv i64 %i.w, 2
  %i.ae = shl nsw i64 %i.ad, 1                    ; 6 uses
  %.off.i.i.i.i.i.i = add i64 %i.w, 1
  %.not.i.i.i.i.i11.i = icmp ult i64 %.off.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i11.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load <2 x double>, ptr %i.z, align 1, !tbaa !24
  %i.ag = load <2 x double>, ptr %i.u, align 1, !tbaa !24
  %i.ah = fmul <2 x double> %i.af, %i.ag          ; 3 uses
  %i.ai = icmp sgt i64 %i.w, 3
  br i1 %i.ai, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ak = load <2 x double>, ptr %i.aj, align 1, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.am = load <2 x double>, ptr %i.al, align 1, !tbaa !24
  %i.an = fmul <2 x double> %i.ak, %i.am          ; 2 uses
  %i.ao = icmp samesign ugt i64 %i.w, 7
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.i
  %.075.lcssa.i.i.i.i.i.i = phi <2 x double> [ %i.an, %bb.i ], [ %i.bc, %.lr.ph.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.i = phi <2 x double> [ %i.ah, %bb.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i ]
  %i.ap = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.i ; 2 uses
  %i.aq = icmp sgt i64 %i.ae, %i.ac
  br i1 %i.aq, label %bb.j, label %bb.k

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i
  %.054.in79.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ 4, %bb.i ] ; 4 uses
  %.07278.i.i.i.i.i.i = phi <2 x double> [ %i.aw, %.lr.ph.i.i.i.i.i.i ], [ %i.ah, %bb.i ]
  %.07577.i.i.i.i.i.i = phi <2 x double> [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %i.an, %bb.i ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.054.in79.i.i.i.i.i.i
  %i.as = load <2 x double>, ptr %i.ar, align 1, !tbaa !24
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.054.in79.i.i.i.i.i.i
  %i.au = load <2 x double>, ptr %i.at, align 1, !tbaa !24
  %i.av = fmul <2 x double> %i.as, %i.au
  %i.aw = fadd <2 x double> %.07278.i.i.i.i.i.i, %i.av ; 2 uses
  %11 = or disjoint i64 %.054.in79.i.i.i.i.i.i, 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %11
  %i.ay = load <2 x double>, ptr %i.ax, align 1, !tbaa !24
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %11
  %i.ba = load <2 x double>, ptr %i.az, align 1, !tbaa !24
  %i.bb = fmul <2 x double> %i.ay, %i.ba
  %i.bc = fadd <2 x double> %.07577.i.i.i.i.i.i, %i.bb ; 2 uses
  %.054.i.i.i.i.i.i = add nuw nsw i64 %.054.in79.i.i.i.i.i.i, 4 ; 2 uses
  %i.bd = icmp slt i64 %.054.i.i.i.i.i.i, %i.ac
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !691

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ac
  %i.bf = load <2 x double>, ptr %i.be, align 1, !tbaa !24
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.bh = load <2 x double>, ptr %i.bg, align 1, !tbaa !24
  %i.bi = fmul <2 x double> %i.bf, %i.bh
  %i.bj = fadd <2 x double> %i.ap, %i.bi
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i, %bb.h
  %.274.i.i.i.i.i.i = phi <2 x double> [ %i.ah, %bb.h ], [ %i.bj, %bb.j ], [ %i.ap, %._crit_edge.i.i.i.i.i.i ]
  %i.bk = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.i) ; 3 uses
  %i.bl = icmp slt i64 %i.ae, %i.w
  br i1 %i.bl, label %.lr.ph85.i.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEEE3dotINS1_IKNS1_IKS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i

.lr.ph85.i.i.i.i.i.i.preheader:                   ; preds = %bb.k
  %i.bm = sub i64 %i.w, %i.ae
  %xtraiter99 = and i64 %i.bm, 3                  ; 2 uses
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod100.not, label %.lr.ph85.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph85.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.prol = phi i64 [ %i.bt, %.lr.ph85.i.i.i.i.i.i.prol ], [ %i.ae, %.lr.ph85.i.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.i.prol = phi double [ %i.bs, %.lr.ph85.i.i.i.i.i.i.prol ], [ %i.bk, %.lr.ph85.i.i.i.i.i.i.preheader ]
  %prol.iter101 = phi i64 [ %prol.iter101.next, %.lr.ph85.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.preheader ]
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.05283.i.i.i.i.i.i.prol
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !42
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.05283.i.i.i.i.i.i.prol
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !42
  %i.br = fmul double %i.bo, %i.bq
  %i.bs = fadd double %.182.i.i.i.i.i.i.prol, %i.br ; 3 uses
  %i.bt = add nsw i64 %.05283.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter101.next = add i64 %prol.iter101, 1   ; 2 uses
  %prol.iter101.cmp.not = icmp eq i64 %prol.iter101.next, %xtraiter99
  br i1 %prol.iter101.cmp.not, label %.lr.ph85.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.prol, !llvm.loop !692

.lr.ph85.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph85.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.bs, %.lr.ph85.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.unr = phi i64 [ %i.ae, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.bt, %.lr.ph85.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.unr = phi double [ %i.bk, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.bs, %.lr.ph85.i.i.i.i.i.i.prol ]
  %i.bu = sub i64 %i.ae, %i.w
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEEE3dotINS1_IKNS1_IKS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, label %.lr.ph85.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i = phi i64 [ %i.cx, %.lr.ph85.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i = phi double [ %i.cw, %.lr.ph85.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.prol.loopexit ]
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.05283.i.i.i.i.i.i
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !42
  %i.by = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.05283.i.i.i.i.i.i
  %i.bz = load double, ptr %i.by, align 8, !tbaa !42
  %i.ca = fmul double %i.bx, %i.bz
  %i.cb = fadd double %.182.i.i.i.i.i.i, %i.ca
  %i.cc = add nsw i64 %.05283.i.i.i.i.i.i, 1      ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !42
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.cc
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !42
  %i.ch = fmul double %i.ce, %i.cg
  %i.ci = fadd double %i.cb, %i.ch
  %i.cj = add nsw i64 %.05283.i.i.i.i.i.i, 2      ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !42
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.cj
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !42
  %i.co = fmul double %i.cl, %i.cn
  %i.cp = fadd double %i.ci, %i.co
  %i.cq = add nsw i64 %.05283.i.i.i.i.i.i, 3      ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !42
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.cq
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !42
  %i.cv = fmul double %i.cs, %i.cu
  %i.cw = fadd double %i.cp, %i.cv                ; 2 uses
  %i.cx = add nsw i64 %.05283.i.i.i.i.i.i, 4      ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.cx, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEEE3dotINS1_IKNS1_IKS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, label %.lr.ph85.i.i.i.i.i.i, !llvm.loop !693

bb.l:                                             ; preds = %bb.g
  %i.cy = load double, ptr %i.z, align 8, !tbaa !42
  %i.cz = load double, ptr %i.u, align 8, !tbaa !42
  %i.da = fmul double %i.cy, %i.cz
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEEE3dotINS1_IKNS1_IKS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEEE3dotINS1_IKNS1_IKS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i: ; preds = %.lr.ph85.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i, %bb.l, %bb.k, %bb.f
  %.0.i.i.i.i = phi double [ 0.000000e+00, %bb.f ], [ %i.bk, %bb.k ], [ %i.da, %bb.l ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.i.i.prol.loopexit ], [ %i.cw, %.lr.ph85.i.i.i.i.i.i ]
  %i.db = load double, ptr %i.n, align 8, !tbaa !42
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.y, double %.0.i.i.i.i, double %i.db)
  store double %i.dc, ptr %i.n, align 8, !tbaa !42
  br label %_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKNS_5BlockIKS4_Lin1ELi1ELb1EEENS_10DenseShapeESA_Li7EE13scaleAndAddToINS6_IS4_Lin1ELi1ELb1EEEEEvRT_RKS5_RS9_RKd.exit

bb.m:                                             ; preds = %bb.e
  %i.dd = ptrtoint ptr %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i64 %i.dd, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %i.u, ptr %8, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.w, ptr %.sroa.558.0..sroa_idx, align 8
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %2, ptr %.sroa.760.0..sroa_idx, align 8
  %.sroa.861.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.861.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.w, ptr %.sroa.10.0..sroa_idx, align 8
  call void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS_5BlockIKS6_Lin1ELi1ELb1EEENS8_IS6_Lin1ELi1ELb1EEEEEvRKT_RKT0_RT1_RKNSI_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKNS_5BlockIKS4_Lin1ELi1ELb1EEENS_10DenseShapeESA_Li7EE13scaleAndAddToINS6_IS4_Lin1ELi1ELb1EEEEEvRT_RKS5_RS9_RKd.exit

_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKNS_5BlockIKS4_Lin1ELi1ELb1EEENS_10DenseShapeESA_Li7EE13scaleAndAddToINS6_IS4_Lin1ELi1ELb1EEEEEvRT_RKS5_RS9_RKd.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEEE3dotINS1_IKNS1_IKS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit

bb.n:                                             ; preds = %bb.d
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !38 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.o, label %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES6_S6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i

bb.o:                                             ; preds = %bb.n
  %i.dh = load ptr, ptr %0, align 8, !tbaa !40, !noalias !706 ; 3 uses
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !40, !noalias !707 ; 12 uses
  %i.dj = icmp eq i64 %i.i, 1
  br i1 %i.dj, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.dk = load double, ptr %3, align 8, !tbaa !42
  %i.dl = load ptr, ptr %2, align 8, !tbaa !40, !noalias !708 ; 11 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !38, !noalias !708 ; 10 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dp = sdiv i64 %i.dn, 4
  %i.dq = shl nsw i64 %i.dp, 2                    ; 4 uses
  %i.dr = sdiv i64 %i.dn, 2
  %i.ds = shl nsw i64 %i.dr, 1                    ; 6 uses
  %.off.i.i.i.i.i.i29 = add i64 %i.dn, 1
  %.not.i.i.i.i.i12.i = icmp ult i64 %.off.i.i.i.i.i.i29, 3
  br i1 %.not.i.i.i.i.i12.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dt = load <2 x double>, ptr %i.di, align 1, !tbaa !24
  %i.du = load <2 x double>, ptr %i.dl, align 1, !tbaa !24
  %i.dv = fmul <2 x double> %i.dt, %i.du          ; 3 uses
  %i.dw = icmp sgt i64 %i.dn, 3
  br i1 %i.dw, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.ea = load <2 x double>, ptr %i.dz, align 1, !tbaa !24
  %i.eb = fmul <2 x double> %i.dy, %i.ea          ; 2 uses
  %i.ec = icmp samesign ugt i64 %i.dn, 7
  br i1 %i.ec, label %.lr.ph.i.i.i.i.i.i39, label %._crit_edge.i.i.i.i.i.i36

._crit_edge.i.i.i.i.i.i36:                        ; preds = %.lr.ph.i.i.i.i.i.i39, %bb.s
  %.075.lcssa.i.i.i.i.i.i37 = phi <2 x double> [ %i.eb, %bb.s ], [ %i.eq, %.lr.ph.i.i.i.i.i.i39 ]
  %.072.lcssa.i.i.i.i.i.i38 = phi <2 x double> [ %i.dv, %bb.s ], [ %i.ek, %.lr.ph.i.i.i.i.i.i39 ]
  %i.ed = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i37, %.072.lcssa.i.i.i.i.i.i38 ; 2 uses
  %i.ee = icmp sgt i64 %i.ds, %i.dq
  br i1 %i.ee, label %bb.t, label %bb.u

.lr.ph.i.i.i.i.i.i39:                             ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i39
  %.054.in79.i.i.i.i.i.i41 = phi i64 [ %.054.i.i.i.i.i.i44, %.lr.ph.i.i.i.i.i.i39 ], [ 4, %bb.s ] ; 4 uses
  %.07278.i.i.i.i.i.i42 = phi <2 x double> [ %i.ek, %.lr.ph.i.i.i.i.i.i39 ], [ %i.dv, %bb.s ]
  %.07577.i.i.i.i.i.i43 = phi <2 x double> [ %i.eq, %.lr.ph.i.i.i.i.i.i39 ], [ %i.eb, %bb.s ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.054.in79.i.i.i.i.i.i41
  %i.eg = load <2 x double>, ptr %i.ef, align 1, !tbaa !24
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.054.in79.i.i.i.i.i.i41
  %i.ei = load <2 x double>, ptr %i.eh, align 1, !tbaa !24
  %i.ej = fmul <2 x double> %i.eg, %i.ei
  %i.ek = fadd <2 x double> %.07278.i.i.i.i.i.i42, %i.ej ; 2 uses
  %12 = or disjoint i64 %.054.in79.i.i.i.i.i.i41, 2 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %12
  %i.em = load <2 x double>, ptr %i.el, align 1, !tbaa !24
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %12
  %i.eo = load <2 x double>, ptr %i.en, align 1, !tbaa !24
  %i.ep = fmul <2 x double> %i.em, %i.eo
  %i.eq = fadd <2 x double> %.07577.i.i.i.i.i.i43, %i.ep ; 2 uses
  %.054.i.i.i.i.i.i44 = add nuw nsw i64 %.054.in79.i.i.i.i.i.i41, 4 ; 2 uses
  %i.er = icmp slt i64 %.054.i.i.i.i.i.i44, %i.dq
  br i1 %i.er, label %.lr.ph.i.i.i.i.i.i39, label %._crit_edge.i.i.i.i.i.i36, !llvm.loop !700

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i.i36
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dq
  %i.et = load <2 x double>, ptr %i.es, align 1, !tbaa !24
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dq
  %i.ev = load <2 x double>, ptr %i.eu, align 1, !tbaa !24
  %i.ew = fmul <2 x double> %i.et, %i.ev
  %i.ex = fadd <2 x double> %i.ed, %i.ew
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i.i.i.i36, %bb.r
  %.274.i.i.i.i.i.i30 = phi <2 x double> [ %i.dv, %bb.r ], [ %i.ex, %bb.t ], [ %i.ed, %._crit_edge.i.i.i.i.i.i36 ]
  %i.ey = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.i30) ; 3 uses
  %i.ez = icmp slt i64 %i.ds, %i.dn
  br i1 %i.ez, label %.lr.ph85.i.i.i.i.i.i32.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i

.lr.ph85.i.i.i.i.i.i32.preheader:                 ; preds = %bb.u
  %i.fa = sub i64 %i.dn, %i.ds
  %xtraiter = and i64 %i.fa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.i32.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i32.prol

.lr.ph85.i.i.i.i.i.i32.prol:                      ; preds = %.lr.ph85.i.i.i.i.i.i32.preheader, %.lr.ph85.i.i.i.i.i.i32.prol
  %.05283.i.i.i.i.i.i33.prol = phi i64 [ %i.fh, %.lr.ph85.i.i.i.i.i.i32.prol ], [ %i.ds, %.lr.ph85.i.i.i.i.i.i32.preheader ] ; 3 uses
  %.182.i.i.i.i.i.i34.prol = phi double [ %i.fg, %.lr.ph85.i.i.i.i.i.i32.prol ], [ %i.ey, %.lr.ph85.i.i.i.i.i.i32.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.i32.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i32.preheader ]
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.di, i64 %.05283.i.i.i.i.i.i33.prol
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !42
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05283.i.i.i.i.i.i33.prol
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !42
  %i.ff = fmul double %i.fc, %i.fe
  %i.fg = fadd double %.182.i.i.i.i.i.i34.prol, %i.ff ; 3 uses
  %i.fh = add nsw i64 %.05283.i.i.i.i.i.i33.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.i32.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i32.prol, !llvm.loop !701

.lr.ph85.i.i.i.i.i.i32.prol.loopexit:             ; preds = %.lr.ph85.i.i.i.i.i.i32.prol, %.lr.ph85.i.i.i.i.i.i32.preheader
  %.lcssa96.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i32.preheader ], [ %i.fg, %.lr.ph85.i.i.i.i.i.i32.prol ]
  %.05283.i.i.i.i.i.i33.unr = phi i64 [ %i.ds, %.lr.ph85.i.i.i.i.i.i32.preheader ], [ %i.fh, %.lr.ph85.i.i.i.i.i.i32.prol ]
  %.182.i.i.i.i.i.i34.unr = phi double [ %i.ey, %.lr.ph85.i.i.i.i.i.i32.preheader ], [ %i.fg, %.lr.ph85.i.i.i.i.i.i32.prol ]
  %i.fi = sub i64 %i.ds, %i.dn
  %i.fj = icmp ugt i64 %i.fi, -4
  br i1 %i.fj, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, label %.lr.ph85.i.i.i.i.i.i32

.lr.ph85.i.i.i.i.i.i32:                           ; preds = %.lr.ph85.i.i.i.i.i.i32.prol.loopexit, %.lr.ph85.i.i.i.i.i.i32
  %.05283.i.i.i.i.i.i33 = phi i64 [ %i.gl, %.lr.ph85.i.i.i.i.i.i32 ], [ %.05283.i.i.i.i.i.i33.unr, %.lr.ph85.i.i.i.i.i.i32.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i34 = phi double [ %i.gk, %.lr.ph85.i.i.i.i.i.i32 ], [ %.182.i.i.i.i.i.i34.unr, %.lr.ph85.i.i.i.i.i.i32.prol.loopexit ]
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %.05283.i.i.i.i.i.i33
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !42
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05283.i.i.i.i.i.i33
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !42
  %i.fo = fmul double %i.fl, %i.fn
  %i.fp = fadd double %.182.i.i.i.i.i.i34, %i.fo
  %i.fq = add nsw i64 %.05283.i.i.i.i.i.i33, 1    ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.fq
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !42
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.fq
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !42
  %i.fv = fmul double %i.fs, %i.fu
  %i.fw = fadd double %i.fp, %i.fv
  %i.fx = add nsw i64 %.05283.i.i.i.i.i.i33, 2    ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.fx
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !42
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.fx
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !42
  %i.gc = fmul double %i.fz, %i.gb
  %i.gd = fadd double %i.fw, %i.gc
  %i.ge = add nsw i64 %.05283.i.i.i.i.i.i33, 3    ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !42
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ge
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !42
  %i.gj = fmul double %i.gg, %i.gi
  %i.gk = fadd double %i.gd, %i.gj                ; 2 uses
  %i.gl = add nsw i64 %.05283.i.i.i.i.i.i33, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i.i35.3 = icmp eq i64 %i.gl, %i.dn
  br i1 %exitcond.not.i.i.i.i.i.i35.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, label %.lr.ph85.i.i.i.i.i.i32, !llvm.loop !702

bb.v:                                             ; preds = %bb.q
  %i.gm = load double, ptr %i.di, align 8, !tbaa !42
  %i.gn = load double, ptr %i.dl, align 8, !tbaa !42
  %i.go = fmul double %i.gm, %i.gn
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i: ; preds = %.lr.ph85.i.i.i.i.i.i32.prol.loopexit, %.lr.ph85.i.i.i.i.i.i32, %bb.v, %bb.u, %bb.p
  %.0.i.i.i.i31 = phi double [ 0.000000e+00, %bb.p ], [ %i.ey, %bb.u ], [ %i.go, %bb.v ], [ %.lcssa96.unr, %.lr.ph85.i.i.i.i.i.i32.prol.loopexit ], [ %i.gk, %.lr.ph85.i.i.i.i.i.i32 ]
  %i.gp = load double, ptr %i.dh, align 8, !tbaa !42
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.dk, double %.0.i.i.i.i31, double %i.gp)
  store double %i.gq, ptr %i.dh, align 8, !tbaa !42
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit

bb.w:                                             ; preds = %bb.o
  %i.gr = ptrtoint ptr %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %i.di, ptr %6, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.c, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.gr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.949.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.748.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.c, ptr %.sroa.949.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.dh, ptr %4, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.l, ptr %.sroa.552.0..sroa_idx, align 8
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %.sroa.653.0..sroa_idx, align 8
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.956.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.754.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.956.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %2, ptr %5, align 8
  call void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS4_IKNS_5BlockIKNS4_IS6_EELi1ELin1ELb1EEEEENS4_INS9_IS6_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSN_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit

_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES6_S6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i: ; preds = %bb.n
  %i.gs = load double, ptr %3, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 16, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store i64 %i.df, ptr %i.gt, align 8, !tbaa !139
  %i.gu = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  store i64 %i.l, ptr %i.gu, align 8, !tbaa !142
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  store i64 %i.c, ptr %i.gv, align 8, !tbaa !138
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull align 8 dereferenceable(8) %i.gu, i64 noundef 1)
  %i.gw = load i64, ptr %i.gt, align 8, !tbaa !139
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !138 ; 2 uses
  %i.gy = mul nsw i64 %i.gx, %i.gw
  %i.gz = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !141
  %i.ha = load i64, ptr %i.gu, align 8, !tbaa !142
  %i.hb = mul nsw i64 %i.ha, %i.gx
  %i.hc = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !143
  %i.hd = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !88, !align !89
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !39
  %i.hg = load i64, ptr %i.h, align 8, !tbaa !39
  %i.hh = load i64, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.hi = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.hj = load ptr, ptr %2, align 8, !tbaa !40
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !38
  %i.hm = load ptr, ptr %0, align 8, !tbaa !40
  %i.hn = load i64, ptr %i.de, align 8, !tbaa !38
  invoke void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %i.hf, i64 noundef %i.hg, i64 noundef %i.hh, ptr noundef nonnull %i.hi, i64 noundef %i.hh, ptr noundef nonnull %i.hj, i64 noundef %i.hl, ptr noundef nonnull %i.hm, i64 noundef 1, i64 noundef %i.hn, double noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef null)
          to label %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_S7_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SG_SG_b.exit unwind label %bb.x

_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_S7_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SG_SG_b.exit: ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES6_S6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.ho = load ptr, ptr %10, align 8, !tbaa !144
  call void @free(ptr noundef %i.ho) #26
  %i.hp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !145
  call void @free(ptr noundef %i.hq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit

_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit: ; preds = %bb.w, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, %bb.a, %bb.b, %bb.c, %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_S7_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SG_SG_b.exit, %_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKNS_5BlockIKS4_Lin1ELi1ELb1EEENS_10DenseShapeESA_Li7EE13scaleAndAddToINS6_IS4_Lin1ELi1ELb1EEEEEvRT_RKS5_RS9_RKd.exit
  ret void

bb.x:                                             ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES6_S6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.hr = landingpad { ptr, i32 }
          cleanup
  %i.hs = load ptr, ptr %10, align 8, !tbaa !144
  call void @free(ptr noundef %i.hs) #26
  %i.ht = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !145
  call void @free(ptr noundef %i.hu) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  resume { ptr, i32 } %i.hr
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal42call_restricted_packet_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_9TransposeIKS3_EES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !729, !nonnull !88, !align !89 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !39   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !38
  %.not.i = icmp eq i64 %i.l, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %.not8.i = icmp eq i64 %i.n, %i.j
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq i64 %i.j, 0
  br i1 %i.o, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sdiv i64 9223372036854775807, %i.j
  %i.q = icmp sgt i64 %i.h, %i.p
  br i1 %i.q, label %.noexc, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

.noexc:                                           ; preds = %bb.c
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.c, %bb.b
  %i.s = mul nsw i64 %i.j, %i.h
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %i.h, i64 noundef %i.j)
  %.pr = load i64, ptr %i.m, align 8, !tbaa !39
  %.pre = load i64, ptr %i.k, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.a
  %i.t = phi i64 [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.h, %bb.a ] ; 30 uses
  %i.u = phi i64 [ %.pr, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.j, %bb.a ] ; 13 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !40     ; 13 uses
  %i.w = icmp sgt i64 %i.u, 0
  %i.x = icmp sgt i64 %i.t, 0
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKS5_EES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSF_.exit

.preheader.lr.ph.split.i:                         ; preds = %bb.d
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !40, !noalias !730 ; 11 uses
  %i.z = load i64, ptr %i.f, align 8, !tbaa !38, !noalias !730 ; 33 uses
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = sdiv i64 %i.z, 4
  %i.ac = shl nsw i64 %i.ab, 2                    ; 12 uses
  %i.ad = sdiv i64 %i.z, 2
  %i.ae = shl nsw i64 %i.ad, 1                    ; 22 uses
  %i.af = icmp sgt i64 %i.z, 3
  %i.ag = icmp samesign ugt i64 %i.z, 7
  %i.ah = icmp sgt i64 %i.ae, %i.ac               ; 4 uses
  %i.ai = icmp slt i64 %i.ae, %i.z                ; 3 uses
  br i1 %i.aa, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.split.i
  %i.aj = mul i64 %i.u, %i.t
  %i.ak = shl i64 %i.aj, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.ak, i1 false), !tbaa !42
  br label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKS5_EES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSF_.exit

.preheader.lr.ph.split.split.i:                   ; preds = %.preheader.lr.ph.split.i
  %.off.i.i.i.i.i.i.i = add i64 %i.z, 1
  %.not.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i, 3
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !40, !noalias !731 ; 16 uses
  %i.am = load i64, ptr %i.e, align 8, !tbaa !38, !noalias !731 ; 14 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.preheader.us20.i.preheader, label %.preheader.i.preheader

.preheader.us20.i.preheader:                      ; preds = %.preheader.lr.ph.split.split.i
  %i.an = mul i64 %i.u, %i.t
  %i.ao = shl i64 %i.an, 3
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ao ; 2 uses
  %i.ap = shl i64 %i.t, 3                         ; 2 uses
  %scevgep134 = getelementptr i8, ptr %i.al, i64 %i.ap
  %i.aq = add nuw i64 %i.u, 2305843009213693951
  %i.ar = mul i64 %i.z, %i.aq
  %i.as = shl i64 %i.ar, 3
  %i.at = getelementptr i8, ptr %i.y, i64 %i.as
  %scevgep135 = getelementptr i8, ptr %i.at, i64 8
  %min.iters.check = icmp ugt i64 %i.t, 9
  %ident.check.not = icmp eq i64 %i.am, 1
  %or.cond142 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.v, %scevgep134
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0136 = icmp ult ptr %i.v, %scevgep135
  %bound1137 = icmp ult ptr %i.y, %scevgep
  %found.conflict138 = and i1 %bound0136, %bound1137
  %stride.check139 = icmp slt i64 %i.ap, 0
  %i.au = or i1 %found.conflict138, %stride.check139
  %.mask = and i64 %i.z, 1152921504606846976
  %stride.check140 = icmp ne i64 %.mask, 0
  %i.av = or i1 %i.au, %stride.check140
  %conflict.rdx = or i1 %found.conflict, %i.av
  %n.vec = and i64 %i.t, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec
  %xtraiter177 = and i64 %i.t, 1
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br label %.preheader.us20.i

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.split.split.i
  br i1 %i.af, label %.preheader.i.preheader.split.us, label %.preheader.i.preheader.split

.preheader.i.preheader.split.us:                  ; preds = %.preheader.i.preheader
  br i1 %i.ag, label %.preheader.i.preheader.split.us.split.us, label %.preheader.i.preheader.split.us.split

.preheader.i.preheader.split.us.split.us:         ; preds = %.preheader.i.preheader.split.us
  br i1 %i.ai, label %.preheader.i.preheader.split.us.split.us.split.us, label %.preheader.i.us.us

.preheader.i.preheader.split.us.split.us.split.us: ; preds = %.preheader.i.preheader.split.us.split.us
  br i1 %i.ah, label %.preheader.i.us.us.us.us.preheader, label %.preheader.i.us.us.us.preheader

.preheader.i.us.us.us.preheader:                  ; preds = %.preheader.i.preheader.split.us.split.us.split.us
  %i.aw = sub nsw i64 %i.z, %i.ae
  %xtraiter171 = and i64 %i.aw, 3                 ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  %i.ax = sub nsw i64 %i.ae, %i.z
  %i.ay = icmp ugt i64 %i.ax, -4
  br label %.preheader.i.us.us.us

.preheader.i.us.us.us.us.preheader:               ; preds = %.preheader.i.preheader.split.us.split.us.split.us
  %i.az = sub nsw i64 %i.z, %i.ae
  %xtraiter174 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  %i.ba = sub nsw i64 %i.ae, %i.z
  %i.bb = icmp ugt i64 %i.ba, -4
  br label %.preheader.i.us.us.us.us

.preheader.i.us.us.us.us:                         ; preds = %.preheader.i.us.us.us.us.preheader, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us
  %.0816.i.us.us.us.us = phi i64 [ %i.du, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us ], [ 0, %.preheader.i.us.us.us.us.preheader ] ; 3 uses
  %i.bc = mul nuw nsw i64 %.0816.i.us.us.us.us, %i.z
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bc ; 10 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ac
  %i.bg = mul nuw nsw i64 %.0816.i.us.us.us.us, %i.t
  %invariant.gep.i.us.us.us.us = getelementptr [8 x i8], ptr %i.v, i64 %i.bg
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us, %.preheader.i.us.us.us.us
  %.011.i.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader.i.us.us.us.us ], [ %i.dt, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.bh = mul nsw i64 %i.am, %.011.i.us.us.us.us.us.us.us.us
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bh ; 10 uses
  %i.bj = load <2 x double>, ptr %i.bi, align 1, !tbaa !24
  %i.bk = load <2 x double>, ptr %i.bd, align 1, !tbaa !24
  %i.bl = fmul <2 x double> %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bn = load <2 x double>, ptr %i.bm, align 1, !tbaa !24
  %i.bo = load <2 x double>, ptr %i.be, align 1, !tbaa !24
  %i.bp = fmul <2 x double> %i.bn, %i.bo
  br label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us:     ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us
  %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi i64 [ %.054.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ 4, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us ] ; 4 uses
  %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi <2 x double> [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us ]
  %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi <2 x double> [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.br = load <2 x double>, ptr %i.bq, align 1, !tbaa !24
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.bt = load <2 x double>, ptr %i.bs, align 1, !tbaa !24
  %i.bu = fmul <2 x double> %i.br, %i.bt
  %i.bv = fadd <2 x double> %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.bu ; 2 uses
  %3 = or disjoint i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %3
  %i.bx = load <2 x double>, ptr %i.bw, align 1, !tbaa !24
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %3
  %i.bz = load <2 x double>, ptr %i.by, align 1, !tbaa !24
  %i.ca = fmul <2 x double> %i.bx, %i.bz
  %i.cb = fadd <2 x double> %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.ca ; 2 uses
  %.054.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 4 ; 2 uses
  %i.cc = icmp slt i64 %.054.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.ac
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, label %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us, !llvm.loop !713

._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.cd = fadd <2 x double> %i.cb, %i.bv
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ac
  %i.cf = load <2 x double>, ptr %i.ce, align 1, !tbaa !24
  %i.cg = load <2 x double>, ptr %i.bf, align 1, !tbaa !24
  %i.ch = fmul <2 x double> %i.cf, %i.cg
  %i.ci = fadd <2 x double> %i.cd, %i.ch
  %i.cj = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ci) ; 2 uses
  br i1 %lcmp.mod175.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol: ; preds = %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol = phi i64 [ %i.cq, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ], [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ] ; 3 uses
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol = phi double [ %i.cp, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ], [ %i.cj, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ]
  %prol.iter176 = phi i64 [ %prol.iter176.next, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ], [ 0, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !42
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !42
  %i.co = fmul double %i.cl, %i.cn
  %i.cp = fadd double %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, %i.co ; 3 uses
  %i.cq = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter176.next = add i64 %prol.iter176, 1   ; 2 uses
  %prol.iter176.cmp.not = icmp eq i64 %prol.iter176.next, %xtraiter174
  br i1 %prol.iter176.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, !llvm.loop !714

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us
  %.lcssa145.unr = phi double [ poison, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ], [ %i.cp, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ]
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr = phi i64 [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ], [ %i.cq, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ]
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr = phi double [ %i.cj, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ], [ %i.cp, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ]
  br i1 %i.bb, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us:   ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi i64 [ %i.ds, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi double [ %i.dr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit ]
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !42
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !42
  %i.cv = fmul double %i.cs, %i.cu
  %i.cw = fadd double %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.cv
  %i.cx = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !42
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cx
  %i.db = load double, ptr %i.da, align 8, !tbaa !42
  %i.dc = fmul double %i.cz, %i.db
  %i.dd = fadd double %i.cw, %i.dc
  %i.de = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !42
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.de
  %i.di = load double, ptr %i.dh, align 8, !tbaa !42
  %i.dj = fmul double %i.dg, %i.di
  %i.dk = fadd double %i.dd, %i.dj
  %i.dl = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 3 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !42
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.dl
  %i.dp = load double, ptr %i.do, align 8, !tbaa !42
  %i.dq = fmul double %i.dn, %i.dp
  %i.dr = fadd double %i.dk, %i.dq                ; 2 uses
  %i.ds = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.3 = icmp eq i64 %i.ds, %i.z
  br i1 %exitcond.not.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, !llvm.loop !715

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit
  %.lcssa145 = phi double [ %.lcssa145.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit ], [ %i.dr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ]
  %gep.i.us.us.us.us.us.us.us.us = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.us, i64 %.011.i.us.us.us.us.us.us.us.us
  store double %.lcssa145, ptr %gep.i.us.us.us.us.us.us.us.us, align 8, !tbaa !42
  %i.dt = add nuw nsw i64 %.011.i.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us.us.us.us.us.us = icmp eq i64 %i.dt, %i.t
  br i1 %exitcond.not.i.us.us.us.us.us.us.us.us, label %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us, !llvm.loop !716

._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us
  %i.du = add nuw nsw i64 %.0816.i.us.us.us.us, 1 ; 2 uses
  %exitcond27.not.i.us.us.us.us = icmp eq i64 %i.du, %i.u
  br i1 %exitcond27.not.i.us.us.us.us, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKS5_EES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSF_.exit, label %.preheader.i.us.us.us.us, !llvm.loop !717

.preheader.i.us.us.us:                            ; preds = %.preheader.i.us.us.us.preheader, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split
  %.0816.i.us.us.us = phi i64 [ %i.gh, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split ], [ 0, %.preheader.i.us.us.us.preheader ] ; 3 uses
  %i.dv = mul nuw nsw i64 %.0816.i.us.us.us, %i.z
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.dv ; 9 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = mul nuw nsw i64 %.0816.i.us.us.us, %i.t
  %invariant.gep.i.us.us.us = getelementptr [8 x i8], ptr %i.v, i64 %i.dy
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us, %.preheader.i.us.us.us
  %.011.i.us.us.us.us.us.us = phi i64 [ 0, %.preheader.i.us.us.us ], [ %i.gg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us ] ; 3 uses
  %i.dz = mul nsw i64 %i.am, %.011.i.us.us.us.us.us.us
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.dz ; 9 uses
  %i.eb = load <2 x double>, ptr %i.ea, align 1, !tbaa !24
  %i.ec = load <2 x double>, ptr %i.dw, align 1, !tbaa !24
  %i.ed = fmul <2 x double> %i.eb, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ef = load <2 x double>, ptr %i.ee, align 1, !tbaa !24
  %i.eg = load <2 x double>, ptr %i.dx, align 1, !tbaa !24
  %i.eh = fmul <2 x double> %i.ef, %i.eg
  br label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us:           ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us
  %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us = phi i64 [ %.054.i.i.i.i.i.i.i.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ 4, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us ] ; 4 uses
  %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us = phi <2 x double> [ %i.en, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us ]
  %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us = phi <2 x double> [ %i.et, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us
  %i.ej = load <2 x double>, ptr %i.ei, align 1, !tbaa !24
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us
  %i.el = load <2 x double>, ptr %i.ek, align 1, !tbaa !24
  %i.em = fmul <2 x double> %i.ej, %i.el
  %i.en = fadd <2 x double> %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us, %i.em ; 2 uses
  %4 = or disjoint i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us, 2 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %4
  %i.ep = load <2 x double>, ptr %i.eo, align 1, !tbaa !24
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %4
  %i.er = load <2 x double>, ptr %i.eq, align 1, !tbaa !24
  %i.es = fmul <2 x double> %i.ep, %i.er
  %i.et = fadd <2 x double> %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us, %i.es ; 2 uses
  %.054.i.i.i.i.i.i.i.us.us.us.us.us.us = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us, 4 ; 2 uses
  %i.eu = icmp slt i64 %.054.i.i.i.i.i.i.i.us.us.us.us.us.us, %i.ac
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us, label %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us, !llvm.loop !713

._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us
  %i.ev = fadd <2 x double> %i.et, %i.en
  %i.ew = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ev) ; 2 uses
  br i1 %lcmp.mod172.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol:    ; preds = %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.prol = phi i64 [ %i.fd, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol ], [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us ] ; 3 uses
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.prol = phi double [ %i.fc, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol ], [ %i.ew, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us ]
  %prol.iter173 = phi i64 [ %prol.iter173.next, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol ], [ 0, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.prol
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !42
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.prol
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !42
  %i.fb = fmul double %i.ey, %i.fa
  %i.fc = fadd double %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.prol, %i.fb ; 3 uses
  %i.fd = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol, !llvm.loop !718

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us
  %.lcssa149.unr = phi double [ poison, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us ], [ %i.fc, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol ]
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.unr = phi i64 [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us ], [ %i.fd, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol ]
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.unr = phi double [ %i.ew, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us ], [ %i.fc, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol ]
  br i1 %i.ay, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us:         ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us = phi i64 [ %i.gf, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us = phi double [ %i.ge, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol.loopexit ]
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !42
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !42
  %i.fi = fmul double %i.ff, %i.fh
  %i.fj = fadd double %.182.i.i.i.i.i.i.i.us.us.us.us.us.us, %i.fi
  %i.fk = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us, 1 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fk
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !42
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fk
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !42
  %i.fp = fmul double %i.fm, %i.fo
  %i.fq = fadd double %i.fj, %i.fp
  %i.fr = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us, 2 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !42
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fr
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !42
  %i.fw = fmul double %i.ft, %i.fv
  %i.fx = fadd double %i.fq, %i.fw
  %i.fy = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us, 3 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fy
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !42
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fy
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !42
  %i.gd = fmul double %i.ga, %i.gc
  %i.ge = fadd double %i.fx, %i.gd                ; 2 uses
  %i.gf = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.us.us.us.us.us.us.3 = icmp eq i64 %i.gf, %i.z
  br i1 %exitcond.not.i.i.i.i.i.i.i.us.us.us.us.us.us.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us, !llvm.loop !715

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol.loopexit
  %.lcssa149 = phi double [ %.lcssa149.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.prol.loopexit ], [ %i.ge, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us ]
  %gep.i.us.us.us.us.us.us = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us, i64 %.011.i.us.us.us.us.us.us
  store double %.lcssa149, ptr %gep.i.us.us.us.us.us.us, align 8, !tbaa !42
  %i.gg = add nuw nsw i64 %.011.i.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us.us.us.us = icmp eq i64 %i.gg, %i.t
  br i1 %exitcond.not.i.us.us.us.us.us.us, label %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us, !llvm.loop !716

._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us
  %i.gh = add nuw nsw i64 %.0816.i.us.us.us, 1    ; 2 uses
  %exitcond27.not.i.us.us.us = icmp eq i64 %i.gh, %i.u
  br i1 %exitcond27.not.i.us.us.us, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKS5_EES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSF_.exit, label %.preheader.i.us.us.us, !llvm.loop !717

.preheader.i.us.us:                               ; preds = %.preheader.i.preheader.split.us.split.us, %._crit_edge.split.split.i.split.us.us.split.us.us.split
  %.0816.i.us.us = phi i64 [ %i.hr, %._crit_edge.split.split.i.split.us.us.split.us.us.split ], [ 0, %.preheader.i.preheader.split.us.split.us ] ; 3 uses
  %i.gi = mul nuw nsw i64 %.0816.i.us.us, %i.z
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.gi ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.ac
  %i.gm = mul nuw nsw i64 %.0816.i.us.us, %i.t
  %invariant.gep.i.us.us = getelementptr [8 x i8], ptr %i.v, i64 %i.gm
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us:       ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us.us.us, %.preheader.i.us.us
  %.011.i.us.us.us.us = phi i64 [ 0, %.preheader.i.us.us ], [ %i.hq, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us.us.us ] ; 3 uses
  %i.gn = mul nsw i64 %i.am, %.011.i.us.us.us.us
  %i.go = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.gn ; 5 uses
  %i.gp = load <2 x double>, ptr %i.go, align 1, !tbaa !24
  %i.gq = load <2 x double>, ptr %i.gj, align 1, !tbaa !24
  %i.gr = fmul <2 x double> %i.gp, %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gt = load <2 x double>, ptr %i.gs, align 1, !tbaa !24
  %i.gu = load <2 x double>, ptr %i.gk, align 1, !tbaa !24
  %i.gv = fmul <2 x double> %i.gt, %i.gu
  br label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.us.us.us.us:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us
  %.054.in79.i.i.i.i.i.i.i.us.us.us.us = phi i64 [ %.054.i.i.i.i.i.i.i.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us ], [ 4, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us ] ; 4 uses
  %.07278.i.i.i.i.i.i.i.us.us.us.us = phi <2 x double> [ %i.hb, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us ], [ %i.gr, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us ]
  %.07577.i.i.i.i.i.i.i.us.us.us.us = phi <2 x double> [ %i.hh, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us ], [ %i.gv, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us ]
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us
  %i.gx = load <2 x double>, ptr %i.gw, align 1, !tbaa !24
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us
  %i.gz = load <2 x double>, ptr %i.gy, align 1, !tbaa !24
  %i.ha = fmul <2 x double> %i.gx, %i.gz
  %i.hb = fadd <2 x double> %.07278.i.i.i.i.i.i.i.us.us.us.us, %i.ha ; 2 uses
  %5 = or disjoint i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us, 2 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %5
  %i.hd = load <2 x double>, ptr %i.hc, align 1, !tbaa !24
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %5
  %i.hf = load <2 x double>, ptr %i.he, align 1, !tbaa !24
  %i.hg = fmul <2 x double> %i.hd, %i.hf
  %i.hh = fadd <2 x double> %.07577.i.i.i.i.i.i.i.us.us.us.us, %i.hg ; 2 uses
  %.054.i.i.i.i.i.i.i.us.us.us.us = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us, 4 ; 2 uses
  %i.hi = icmp slt i64 %.054.i.i.i.i.i.i.i.us.us.us.us, %i.ac
  br i1 %i.hi, label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us, label %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us, !llvm.loop !713

._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us:   ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us
  %i.hj = fadd <2 x double> %i.hh, %i.hb          ; 2 uses
  br i1 %i.ah, label %bb.e, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us.us.us

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.ac
  %i.hl = load <2 x double>, ptr %i.hk, align 1, !tbaa !24
  %i.hm = load <2 x double>, ptr %i.gl, align 1, !tbaa !24
  %i.hn = fmul <2 x double> %i.hl, %i.hm
  %i.ho = fadd <2 x double> %i.hj, %i.hn
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us.us.us

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us.us.us: ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us
  %.274.i.i.i.i.i.i.i.us.us.us.us = phi <2 x double> [ %i.hj, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us ], [ %i.ho, %bb.e ]
  %i.hp = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.i.i.us.us.us.us)
  %gep.i.us.us.us.us = getelementptr [8 x i8], ptr %invariant.gep.i.us.us, i64 %.011.i.us.us.us.us
  store double %i.hp, ptr %gep.i.us.us.us.us, align 8, !tbaa !42
  %i.hq = add nuw nsw i64 %.011.i.us.us.us.us, 1  ; 2 uses
  %exitcond.not.i.us.us.us.us = icmp eq i64 %i.hq, %i.t
  br i1 %exitcond.not.i.us.us.us.us, label %._crit_edge.split.split.i.split.us.us.split.us.us.split, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us, !llvm.loop !716

._crit_edge.split.split.i.split.us.us.split.us.us.split: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.us.us.us.us
  %i.hr = add nuw nsw i64 %.0816.i.us.us, 1       ; 2 uses
  %exitcond27.not.i.us.us = icmp eq i64 %i.hr, %i.u
  br i1 %exitcond27.not.i.us.us, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKS5_EES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSF_.exit, label %.preheader.i.us.us, !llvm.loop !717

.preheader.i.preheader.split.us.split:            ; preds = %.preheader.i.preheader.split.us
  br i1 %i.ai, label %.preheader.i.preheader.split.us.split.split.us, label %.preheader.i.us

.preheader.i.preheader.split.us.split.split.us:   ; preds = %.preheader.i.preheader.split.us.split
  br i1 %i.ah, label %.preheader.i.us.us49.us.preheader, label %.preheader.i.us.us49.preheader

.preheader.i.us.us49.preheader:                   ; preds = %.preheader.i.preheader.split.us.split.split.us
  %i.hs = sub nsw i64 %i.z, %i.ae
  %xtraiter165 = and i64 %i.hs, 3                 ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  %i.ht = sub nsw i64 %i.ae, %i.z
  %i.hu = icmp ugt i64 %i.ht, -4
  br label %.preheader.i.us.us49

.preheader.i.us.us49.us.preheader:                ; preds = %.preheader.i.preheader.split.us.split.split.us
  %i.hv = sub nsw i64 %i.z, %i.ae
  %xtraiter168 = and i64 %i.hv, 3                 ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  %i.hw = sub nsw i64 %i.ae, %i.z
  %i.hx = icmp ugt i64 %i.hw, -4
  br label %.preheader.i.us.us49.us

.preheader.i.us.us49.us:                          ; preds = %.preheader.i.us.us49.us.preheader, %._crit_edge.split.split.i.split.us.us.split.split.us.us.split.us.us
  %.0816.i.us.us50.us = phi i64 [ %i.kd, %._crit_edge.split.split.i.split.us.us.split.split.us.us.split.us.us ], [ 0, %.preheader.i.us.us49.us.preheader ] ; 3 uses
  %i.hy = mul nuw nsw i64 %.0816.i.us.us50.us, %i.z
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.hy ; 8 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.ac
  %i.ic = mul nuw nsw i64 %.0816.i.us.us50.us, %i.t
  %invariant.gep.i.us.us51.us = getelementptr [8 x i8], ptr %i.v, i64 %i.ic
  br label %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us

._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us:    ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us43.us.us.us, %.preheader.i.us.us49.us
  %.011.i.us.us.us36.us.us.us = phi i64 [ 0, %.preheader.i.us.us49.us ], [ %i.kc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us43.us.us.us ] ; 3 uses
  %i.id = mul nsw i64 %i.am, %.011.i.us.us.us36.us.us.us
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.id ; 8 uses
  %i.if = load <2 x double>, ptr %i.ie, align 1, !tbaa !24
  %i.ig = load <2 x double>, ptr %i.hz, align 1, !tbaa !24
  %i.ih = fmul <2 x double> %i.if, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ij = load <2 x double>, ptr %i.ii, align 1, !tbaa !24
  %i.ik = load <2 x double>, ptr %i.ia, align 1, !tbaa !24
  %i.il = fmul <2 x double> %i.ij, %i.ik
  %i.im = fadd <2 x double> %i.il, %i.ih
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.ac
  %i.io = load <2 x double>, ptr %i.in, align 1, !tbaa !24
  %i.ip = load <2 x double>, ptr %i.ib, align 1, !tbaa !24
  %i.iq = fmul <2 x double> %i.io, %i.ip
  %i.ir = fadd <2 x double> %i.im, %i.iq
  %i.is = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ir) ; 2 uses
  br i1 %lcmp.mod169.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol

.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol:  ; preds = %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol
  %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us.prol = phi i64 [ %i.iz, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol ], [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us ] ; 3 uses
  %.182.i.i.i.i.i.i.i.us.us.us41.us.us.us.prol = phi double [ %i.iy, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol ], [ %i.is, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us ]
  %prol.iter170 = phi i64 [ %prol.iter170.next, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol ], [ 0, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us ]
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us.prol
  %i.iu = load double, ptr %i.it, align 8, !tbaa !42
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us.prol
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !42
  %i.ix = fmul double %i.iu, %i.iw
  %i.iy = fadd double %.182.i.i.i.i.i.i.i.us.us.us41.us.us.us.prol, %i.ix ; 3 uses
  %i.iz = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us.prol, 1 ; 2 uses
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol, !llvm.loop !719

.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us
  %.lcssa154.unr = phi double [ poison, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us ], [ %i.iy, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol ]
  %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us.unr = phi i64 [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us ], [ %i.iz, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol ]
  %.182.i.i.i.i.i.i.i.us.us.us41.us.us.us.unr = phi double [ %i.is, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us ], [ %i.iy, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol ]
  br i1 %i.hx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us43.us.us.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us

.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us:       ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us
  %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us = phi i64 [ %i.kb, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us ], [ %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.us.us.us41.us.us.us = phi double [ %i.ka, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us ], [ %.182.i.i.i.i.i.i.i.us.us.us41.us.us.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol.loopexit ]
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !42
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !42
  %i.je = fmul double %i.jb, %i.jd
  %i.jf = fadd double %.182.i.i.i.i.i.i.i.us.us.us41.us.us.us, %i.je
  %i.jg = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us, 1 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.jg
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !42
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.jg
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !42
  %i.jl = fmul double %i.ji, %i.jk
  %i.jm = fadd double %i.jf, %i.jl
  %i.jn = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us, 2 ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.jn
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !42
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.jn
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !42
  %i.js = fmul double %i.jp, %i.jr
  %i.jt = fadd double %i.jm, %i.js
  %i.ju = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us, 3 ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.ju
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !42
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.ju
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !42
  %i.jz = fmul double %i.jw, %i.jy
  %i.ka = fadd double %i.jt, %i.jz                ; 2 uses
  %i.kb = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.us.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.us.us.us42.us.us.us.3 = icmp eq i64 %i.kb, %i.z
  br i1 %exitcond.not.i.i.i.i.i.i.i.us.us.us42.us.us.us.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us43.us.us.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us, !llvm.loop !715

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us43.us.us.us: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol.loopexit
  %.lcssa154 = phi double [ %.lcssa154.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us.prol.loopexit ], [ %i.ka, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.us.us ]
  %gep.i.us.us.us47.us.us.us = getelementptr [8 x i8], ptr %invariant.gep.i.us.us51.us, i64 %.011.i.us.us.us36.us.us.us
  store double %.lcssa154, ptr %gep.i.us.us.us47.us.us.us, align 8, !tbaa !42
  %i.kc = add nuw nsw i64 %.011.i.us.us.us36.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us48.us.us.us = icmp eq i64 %i.kc, %i.t
  br i1 %exitcond.not.i.us.us.us48.us.us.us, label %._crit_edge.split.split.i.split.us.us.split.split.us.us.split.us.us, label %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us.us.us, !llvm.loop !716

._crit_edge.split.split.i.split.us.us.split.split.us.us.split.us.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us43.us.us.us
  %i.kd = add nuw nsw i64 %.0816.i.us.us50.us, 1  ; 2 uses
  %exitcond27.not.i.us.us52.us = icmp eq i64 %i.kd, %i.u
  br i1 %exitcond27.not.i.us.us52.us, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKS5_EES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSF_.exit, label %.preheader.i.us.us49.us, !llvm.loop !717

.preheader.i.us.us49:                             ; preds = %.preheader.i.us.us49.preheader, %._crit_edge.split.split.i.split.us.us.split.split.us.us.split
  %.0816.i.us.us50 = phi i64 [ %i.md, %._crit_edge.split.split.i.split.us.us.split.split.us.us.split ], [ 0, %.preheader.i.us.us49.preheader ] ; 3 uses
  %i.ke = mul nuw nsw i64 %.0816.i.us.us50, %i.z
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ke ; 7 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = mul nuw nsw i64 %.0816.i.us.us50, %i.t
  %invariant.gep.i.us.us51 = getelementptr [8 x i8], ptr %i.v, i64 %i.kh
  br label %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us

._crit_edge.i.i.i.i.i.i.i.us.us.us35.us:          ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us43.us, %.preheader.i.us.us49
  %.011.i.us.us.us36.us = phi i64 [ 0, %.preheader.i.us.us49 ], [ %i.mc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us43.us ] ; 3 uses
  %i.ki = mul nsw i64 %i.am, %.011.i.us.us.us36.us
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ki ; 7 uses
  %i.kk = load <2 x double>, ptr %i.kj, align 1, !tbaa !24
  %i.kl = load <2 x double>, ptr %i.kf, align 1, !tbaa !24
  %i.km = fmul <2 x double> %i.kk, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.ko = load <2 x double>, ptr %i.kn, align 1, !tbaa !24
  %i.kp = load <2 x double>, ptr %i.kg, align 1, !tbaa !24
  %i.kq = fmul <2 x double> %i.ko, %i.kp
  %i.kr = fadd <2 x double> %i.kq, %i.km
  %i.ks = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.kr) ; 2 uses
  br i1 %lcmp.mod166.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol

.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol:        ; preds = %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol
  %.05283.i.i.i.i.i.i.i.us.us.us40.us.prol = phi i64 [ %i.kz, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol ], [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us ] ; 3 uses
  %.182.i.i.i.i.i.i.i.us.us.us41.us.prol = phi double [ %i.ky, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol ], [ %i.ks, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us ]
  %prol.iter167 = phi i64 [ %prol.iter167.next, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol ], [ 0, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us ]
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.prol
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !42
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.prol
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !42
  %i.kx = fmul double %i.ku, %i.kw
  %i.ky = fadd double %.182.i.i.i.i.i.i.i.us.us.us41.us.prol, %i.kx ; 3 uses
  %i.kz = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us.prol, 1 ; 2 uses
  %prol.iter167.next = add i64 %prol.iter167, 1   ; 2 uses
  %prol.iter167.cmp.not = icmp eq i64 %prol.iter167.next, %xtraiter165
  br i1 %prol.iter167.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol, !llvm.loop !720

.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us
  %.lcssa156.unr = phi double [ poison, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us ], [ %i.ky, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol ]
  %.05283.i.i.i.i.i.i.i.us.us.us40.us.unr = phi i64 [ %i.ae, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us ], [ %i.kz, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol ]
  %.182.i.i.i.i.i.i.i.us.us.us41.us.unr = phi double [ %i.ks, %._crit_edge.i.i.i.i.i.i.i.us.us.us35.us ], [ %i.ky, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol ]
  br i1 %i.hu, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us43.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us

.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us:             ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us
  %.05283.i.i.i.i.i.i.i.us.us.us40.us = phi i64 [ %i.mb, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us ], [ %.05283.i.i.i.i.i.i.i.us.us.us40.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.us.us.us41.us = phi double [ %i.ma, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us ], [ %.182.i.i.i.i.i.i.i.us.us.us41.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us39.us.prol.loopexit ]
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us
  %i.lb = load double, ptr %i.la, align 8, !tbaa !42
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.05283.i.i.i.i.i.i.i.us.us.us40.us
end_hunk_1
begin_hunk_2_@_ZN5Eigen12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiE7computeIS2_EERS3_RKNS_9EigenBaseIT_EE:bb.a
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !42
  store double %i.bc, ptr %i.ba, align 8, !tbaa !42
  %i.bd = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bd, %i.t
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !955

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.011.i.i.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.011.i.i.i.i.i.i.i.i
  %i.bg = load <2 x double>, ptr %i.bf, align 16, !tbaa !24
  store <2 x double> %i.bg, ptr %i.be, align 16, !tbaa !24
  %i.bh = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bi = icmp slt i64 %i.bh, %i.v
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  tail call void @_ZN5Eigen12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiE7computeEv(ptr noundef nonnull align 8 dereferenceable(66) %0)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiE7computeEv(ptr noundef nonnull align 8 dereferenceable(66) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::internal::redux_evaluator.747", align 8 ; 4 uses
  %2 = alloca %"struct.Eigen::internal::scalar_max_op", align 1 ; 3 uses
  %3 = alloca %"class.Eigen::PartialReduxExpr", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !39
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %0, ptr %1, align 8
  %i.f = call noundef double @_ZN5Eigen8internal10redux_implINS0_13scalar_max_opIddLi0EEENS0_15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEEELi1ELi0EE3runISG_EEdRKSH_RKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi double [ %i.f, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sink, ptr %i.g, align 8, !tbaa !213
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !38   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !94
  %.not.i.i.i = icmp eq i64 %i.i, %i.l
  br i1 %.not.i.i.i, label %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !97
  call void @free(ptr noundef %i.m) #26
  %i.n = icmp sgt i64 %i.i, 0
  br i1 %i.n, label %bb.e, label %.sink.split.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = icmp samesign ugt i64 %i.i, 4611686018427387903
  br i1 %i.o, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !37
  call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.e
  %i.q = shl nuw i64 %i.i, 2
  %i.r = call noalias ptr @malloc(i64 noundef %i.q) #30 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %.sink.split.i.i.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.t = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !37
  call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.d
  %.sink.i.i.i = phi ptr [ %i.r, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i ], [ null, %bb.d ]
  store ptr %.sink.i.i.i, ptr %i.j, align 8, !tbaa !97
  %.pr = load i64, ptr %i.h, align 8, !tbaa !38
  br label %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit

_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit: ; preds = %bb.c, %.sink.split.i.i.i
  %i.u = phi i64 [ %i.i, %bb.c ], [ %.pr, %.sink.split.i.i.i ] ; 3 uses
  store i64 %i.i, ptr %i.k, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit
  %i.w = load i64, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit
  store i32 0, ptr %i.a, align 4, !tbaa !43
  br label %_ZN5Eigen8internal18partial_lu_inplaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEEEEvRT_RT0_RNS8_12StorageIndexE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %0, align 8, !tbaa !40
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.aa = call noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE10blocked_luEllPdlPiRil(i64 noundef %i.u, i64 noundef %i.w, ptr noundef nonnull %i.y, i64 noundef %i.u, ptr noundef nonnull %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 256) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !43
  %.pre3 = load i64, ptr %i.k, align 8, !tbaa !94
  %i.ab = and i32 %.pre, 1
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = select i1 %i.ac, i8 1, i8 -1
  br label %_ZN5Eigen8internal18partial_lu_inplaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEEEEvRT_RT0_RNS8_12StorageIndexE.exit

_ZN5Eigen8internal18partial_lu_inplaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEEEEvRT_RT0_RNS8_12StorageIndexE.exit: ; preds = %bb.i, %bb.j
  %i.ae = phi i64 [ %i.i, %bb.i ], [ %.pre3, %bb.j ]
  %.not = phi i8 [ 1, %bb.i ], [ %i.ad, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.not, ptr %i.af, align 8, !tbaa !214
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 noundef %i.ae)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !94 ; 5 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSINS_14TranspositionsILin1ELin1EiEEEERS1_RKNS_18TranspositionsBaseIT_EE.exit

.lr.ph.i.i:                                       ; preds = %_ZN5Eigen8internal18partial_lu_inplaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEEEEvRT_RT0_RNS8_12StorageIndexE.exit
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !97  ; 3 uses
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !97 ; 6 uses
  %xtraiter = and i64 %i.ai, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i
  %.0.i.i.prol = add nsw i64 %i.ai, -1            ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.0.i.i.prol
  %i.an = load i32, ptr %i.am, align 4, !tbaa !43
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.0.i.i.prol ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ao ; 2 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !43
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !43
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !43
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !43
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i
  %.0.in6.i.i.unr = phi i64 [ %i.ai, %.lr.ph.i.i ], [ %.0.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.at = icmp eq i64 %i.ai, 1
  br i1 %i.at, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSINS_14TranspositionsILin1ELin1EiEEEERS1_RKNS_18TranspositionsBaseIT_EE.exit, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %.0.in6.i.i = phi i64 [ %.0.i.i.1, %.lr.ph.i.i.new ], [ %.0.in6.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0.i.i = add nsw i64 %.0.in6.i.i, -1           ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %.0.i.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !43
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.al, i64 %.0.i.i ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.aw ; 2 uses
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !43
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !43
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !43
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !43
  %.0.i.i.1 = add nsw i64 %.0.in6.i.i, -2         ; 3 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %.0.i.i.1
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !43
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.al, i64 %.0.i.i.1 ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.bd ; 2 uses
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !43
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !43
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !43
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !43
  %i.bi = icmp sgt i64 %.0.in6.i.i, 2
  br i1 %i.bi, label %.lr.ph.i.i.new, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSINS_14TranspositionsILin1ELin1EiEEEERS1_RKNS_18TranspositionsBaseIT_EE.exit, !llvm.loop !956

_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSINS_14TranspositionsILin1ELin1EiEEEERS1_RKNS_18TranspositionsBaseIT_EE.exit: ; preds = %.prol.loopexit, %.lr.ph.i.i.new, %_ZN5Eigen8internal18partial_lu_inplaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEEEEvRT_RT0_RNS8_12StorageIndexE.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 1, ptr %i.bj, align 1, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZN5Eigen8internal10redux_implINS0_13scalar_max_opIddLi0EEENS0_15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEEELi1ELi0EE3runISG_EEdRKSH_RKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(25) %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38, !noalias !966 ; 30 uses
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !40 ; 10 uses
  %i.e = sdiv i64 %i.b, 4
  %i.f = shl nsw i64 %i.e, 2                      ; 3 uses
  %i.g = sdiv i64 %i.b, 2
  %i.h = shl nsw i64 %i.g, 1                      ; 6 uses
  %.off.i.i.i.i.i = add i64 %i.b, 1
  %.not.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load <2 x i64>, ptr %i.d, align 1, !tbaa !24
  %i.j = and <2 x i64> %i.i, splat (i64 9223372036854775807)
  %i.k = bitcast <2 x i64> %i.j to <2 x double>   ; 3 uses
  %i.l = icmp sgt i64 %i.b, 3
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.d, i64 16
  %i.n = load <2 x i64>, ptr %i.m, align 1, !tbaa !24
  %i.o = and <2 x i64> %i.n, splat (i64 9223372036854775807)
  %i.p = bitcast <2 x i64> %i.o to <2 x double>   ; 2 uses
  %i.q = icmp samesign ugt i64 %i.b, 7
  br i1 %i.q, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.075.lcssa.i.i.i.i.i = phi <2 x double> [ %i.p, %bb.d ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i = phi <2 x double> [ %i.k, %bb.d ], [ %i.x, %.lr.ph.i.i.i.i.i ]
  %i.r = fadd <2 x double> %.075.lcssa.i.i.i.i.i, %.072.lcssa.i.i.i.i.i ; 2 uses
  %i.s = icmp sgt i64 %i.h, %i.f
  br i1 %i.s, label %bb.e, label %bb.f

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.054.in79.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 4, %bb.d ] ; 2 uses
  %.07278.i.i.i.i.i = phi <2 x double> [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.d ]
  %.07577.i.i.i.i.i = phi <2 x double> [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ]
  %i.t = getelementptr [8 x i8], ptr %i.d, i64 %.054.in79.i.i.i.i.i ; 2 uses
  %i.u = load <2 x i64>, ptr %i.t, align 1, !tbaa !24
  %i.v = and <2 x i64> %i.u, splat (i64 9223372036854775807)
  %i.w = bitcast <2 x i64> %i.v to <2 x double>
  %i.x = fadd <2 x double> %.07278.i.i.i.i.i, %i.w ; 2 uses
  %i.y = getelementptr i8, ptr %i.t, i64 16
  %i.z = load <2 x i64>, ptr %i.y, align 1, !tbaa !24
  %i.aa = and <2 x i64> %i.z, splat (i64 9223372036854775807)
  %i.ab = bitcast <2 x i64> %i.aa to <2 x double>
  %i.ac = fadd <2 x double> %.07577.i.i.i.i.i, %i.ab ; 2 uses
  %.054.i.i.i.i.i = add nuw nsw i64 %.054.in79.i.i.i.i.i, 4 ; 2 uses
  %i.ad = icmp slt i64 %.054.i.i.i.i.i, %i.f
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !959

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ae = getelementptr [8 x i8], ptr %i.d, i64 %i.f
  %i.af = load <2 x i64>, ptr %i.ae, align 1, !tbaa !24
  %i.ag = and <2 x i64> %i.af, splat (i64 9223372036854775807)
  %i.ah = bitcast <2 x i64> %i.ag to <2 x double>
  %i.ai = fadd <2 x double> %i.r, %i.ah
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i, %bb.c
  %.274.i.i.i.i.i = phi <2 x double> [ %i.k, %bb.c ], [ %i.ai, %bb.e ], [ %i.r, %._crit_edge.i.i.i.i.i ]
  %i.aj = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i) ; 3 uses
  %i.ak = icmp slt i64 %i.h, %i.b
  br i1 %i.ak, label %.lr.ph85.i.i.i.i.i.preheader, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.f
  %i.al = sub i64 %i.b, %i.h
  %xtraiter = and i64 %i.al, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.prol:                          ; preds = %.lr.ph85.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.prol = phi i64 [ %i.aq, %.lr.ph85.i.i.i.i.i.prol ], [ %i.h, %.lr.ph85.i.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.prol = phi double [ %i.ap, %.lr.ph85.i.i.i.i.i.prol ], [ %i.aj, %.lr.ph85.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader ]
  %i.am = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i.prol
  %i.an = load double, ptr %i.am, align 8, !tbaa !42
  %i.ao = tail call noundef double @llvm.fabs.f64(double %i.an)
  %i.ap = fadd double %.182.i.i.i.i.i.prol, %i.ao ; 3 uses
  %i.aq = add nsw i64 %.05283.i.i.i.i.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol, !llvm.loop !960

.lr.ph85.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph85.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.preheader
  %.lcssa128.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.ap, %.lr.ph85.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.unr = phi i64 [ %i.h, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.aq, %.lr.ph85.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.unr = phi double [ %i.aj, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.ap, %.lr.ph85.i.i.i.i.i.prol ]
  %i.ar = sub i64 %i.h, %i.b
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit, label %.lr.ph85.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i
  %.05283.i.i.i.i.i = phi i64 [ %i.bm, %.lr.ph85.i.i.i.i.i ], [ %.05283.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i = phi double [ %i.bl, %.lr.ph85.i.i.i.i.i ], [ %.182.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ]
  %i.at = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !42
  %i.av = tail call noundef double @llvm.fabs.f64(double %i.au)
  %i.aw = fadd double %.182.i.i.i.i.i, %i.av
  %i.ax = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !42
  %i.ba = tail call noundef double @llvm.fabs.f64(double %i.az)
  %i.bb = fadd double %i.aw, %i.ba
  %i.bc = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !42
  %i.bf = tail call noundef double @llvm.fabs.f64(double %i.be)
  %i.bg = fadd double %i.bb, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !42
  %i.bk = tail call noundef double @llvm.fabs.f64(double %i.bj)
  %i.bl = fadd double %i.bg, %i.bk                ; 2 uses
  %i.bm = add nsw i64 %.05283.i.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.bm, %i.b
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit, label %.lr.ph85.i.i.i.i.i, !llvm.loop !961

bb.g:                                             ; preds = %bb.b
  %i.bn = load double, ptr %i.d, align 8, !tbaa !42
  %i.bo = tail call noundef double @llvm.fabs.f64(double %i.bn)
  br label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit: ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i, %bb.a, %bb.f, %bb.g
  %.0.i.i.i = phi double [ 0.000000e+00, %bb.a ], [ %i.aj, %bb.f ], [ %i.bo, %bb.g ], [ %.lcssa128.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ], [ %i.bl, %.lr.ph85.i.i.i.i.i ] ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !969, !nonnull !88, !align !89
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !39 ; 9 uses
  %i.bt = icmp sgt i64 %i.bs, 1
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit
  %i.bu = sdiv i64 %i.b, 4
  %i.bv = shl nsw i64 %i.bu, 2                    ; 3 uses
  %i.bw = sdiv i64 %i.b, 2
  %i.bx = shl nsw i64 %i.bw, 1                    ; 10 uses
  %i.by = icmp sgt i64 %i.b, 3
  %i.bz = icmp samesign ugt i64 %i.b, 7
  %i.ca = icmp sgt i64 %i.bx, %i.bv
  %i.cb = icmp slt i64 %i.bx, %i.b                ; 2 uses
  br i1 %i.c, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.preheader, label %.lr.ph.split

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.preheader: ; preds = %.lr.ph
  %i.cc = add nsw i64 %i.bs, -1                   ; 2 uses
  %i.cd = add nsw i64 %i.bs, -2
  %xtraiter147 = and i64 %i.cc, 3                 ; 3 uses
  %i.ce = icmp ult i64 %i.cd, 3
  br i1 %i.ce, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.epil.preheader, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.preheader.new

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.preheader.new: ; preds = %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.preheader
  %unroll_iter151 = and i64 %i.cc, -4
  br label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us: ; preds = %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.preheader.new
  %.02733.us = phi double [ %.0.i.i.i, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.preheader.new ], [ %i.cg, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us ] ; 2 uses
  %niter152 = phi i64 [ 0, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.preheader.new ], [ %niter152.next.3, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us ]
  %i.cf = fcmp olt double %.02733.us, 0.000000e+00
  %i.cg = select i1 %i.cf, double 0.000000e+00, double %.02733.us ; 3 uses
  %niter152.next.3 = add i64 %niter152, 4         ; 2 uses
  %niter152.ncmp.3 = icmp eq i64 %niter152.next.3, %unroll_iter151
  br i1 %niter152.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us, !llvm.loop !962

.lr.ph.split:                                     ; preds = %.lr.ph
  %.off.i.i.i.i.i7 = add i64 %i.b, 1
  %.not.i.i.i.i.i8 = icmp ult i64 %.off.i.i.i.i.i7, 3
  %i.ch = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !40 ; 8 uses
  br i1 %.not.i.i.i.i.i8, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.preheader, label %.lr.ph.split.split

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.preheader: ; preds = %.lr.ph.split
  %i.ci = add nsw i64 %i.bs, -1                   ; 3 uses
  %xtraiter141 = and i64 %i.ci, 1
  %i.cj = icmp eq i64 %i.bs, 2
  br i1 %i.cj, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.epil.preheader, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.preheader.new

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.preheader.new: ; preds = %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.preheader
  %unroll_iter145 = and i64 %i.ci, -2
  br label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37: ; preds = %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.preheader.new
  %.034.us35 = phi i64 [ 1, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.preheader.new ], [ %i.cx, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37 ] ; 3 uses
  %.02733.us36 = phi double [ %.0.i.i.i, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.preheader.new ], [ %i.cw, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37 ] ; 2 uses
  %niter146 = phi i64 [ 0, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.preheader.new ], [ %niter146.next.1, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37 ]
  %i.ck = mul nsw i64 %.034.us35, %i.b
  %i.cl = getelementptr [8 x i8], ptr %i.ch, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !42
  %i.cn = tail call noundef double @llvm.fabs.f64(double %i.cm) ; 2 uses
  %i.co = fcmp olt double %.02733.us36, %i.cn
  %i.cp = select i1 %i.co, double %i.cn, double %.02733.us36 ; 2 uses
  %i.cq = add nuw nsw i64 %.034.us35, 1
  %i.cr = mul nsw i64 %i.cq, %i.b
  %i.cs = getelementptr [8 x i8], ptr %i.ch, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !42
  %i.cu = tail call noundef double @llvm.fabs.f64(double %i.ct) ; 2 uses
  %i.cv = fcmp olt double %i.cp, %i.cu
  %i.cw = select i1 %i.cv, double %i.cu, double %i.cp ; 3 uses
  %i.cx = add nuw nsw i64 %.034.us35, 2           ; 2 uses
  %niter146.next.1 = add nuw i64 %niter146, 2     ; 2 uses
  %niter146.ncmp.1 = icmp eq i64 %niter146.next.1, %unroll_iter145
  br i1 %niter146.ncmp.1, label %._crit_edge.loopexit116.unr-lcssa, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37, !llvm.loop !962

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.by, label %.lr.ph.split.split.split.us.preheader, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us.preheader:            ; preds = %.lr.ph.split.split
  %i.cy = sub nsw i64 %i.b, %i.bx
  %xtraiter138 = and i64 %i.cy, 3                 ; 2 uses
  %lcmp.mod139.not = icmp eq i64 %xtraiter138, 0
  %i.cz = sub nsw i64 %i.bx, %i.b
  %i.da = icmp ugt i64 %i.cz, -4
  br label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split.split.us.preheader, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us43
  %.034.us41 = phi i64 [ %i.fd, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us43 ], [ 1, %.lr.ph.split.split.split.us.preheader ] ; 2 uses
  %.02733.us42 = phi double [ %i.fc, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us43 ], [ %.0.i.i.i, %.lr.ph.split.split.split.us.preheader ] ; 2 uses
  %i.db = mul nuw nsw i64 %.034.us41, %i.b
  %i.dc = getelementptr [8 x i8], ptr %i.ch, i64 %i.db ; 9 uses
  %i.dd = load <2 x i64>, ptr %i.dc, align 1, !tbaa !24
  %i.de = and <2 x i64> %i.dd, splat (i64 9223372036854775807)
  %i.df = bitcast <2 x i64> %i.de to <2 x double> ; 2 uses
  %i.dg = getelementptr i8, ptr %i.dc, i64 16
  %i.dh = load <2 x i64>, ptr %i.dg, align 1, !tbaa !24
  %i.di = and <2 x i64> %i.dh, splat (i64 9223372036854775807)
  %i.dj = bitcast <2 x i64> %i.di to <2 x double> ; 2 uses
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i18.us, label %._crit_edge.i.i.i.i.i15.us

.lr.ph.i.i.i.i.i18.us:                            ; preds = %.lr.ph.split.split.split.us, %.lr.ph.i.i.i.i.i18.us
  %.054.in79.i.i.i.i.i20.us = phi i64 [ %.054.i.i.i.i.i23.us, %.lr.ph.i.i.i.i.i18.us ], [ 4, %.lr.ph.split.split.split.us ] ; 2 uses
  %.07278.i.i.i.i.i21.us = phi <2 x double> [ %i.do, %.lr.ph.i.i.i.i.i18.us ], [ %i.df, %.lr.ph.split.split.split.us ]
  %.07577.i.i.i.i.i22.us = phi <2 x double> [ %i.dt, %.lr.ph.i.i.i.i.i18.us ], [ %i.dj, %.lr.ph.split.split.split.us ]
  %i.dk = getelementptr [8 x i8], ptr %i.dc, i64 %.054.in79.i.i.i.i.i20.us ; 2 uses
  %i.dl = load <2 x i64>, ptr %i.dk, align 1, !tbaa !24
  %i.dm = and <2 x i64> %i.dl, splat (i64 9223372036854775807)
  %i.dn = bitcast <2 x i64> %i.dm to <2 x double>
  %i.do = fadd <2 x double> %.07278.i.i.i.i.i21.us, %i.dn ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dk, i64 16
  %i.dq = load <2 x i64>, ptr %i.dp, align 1, !tbaa !24
  %i.dr = and <2 x i64> %i.dq, splat (i64 9223372036854775807)
  %i.ds = bitcast <2 x i64> %i.dr to <2 x double>
  %i.dt = fadd <2 x double> %.07577.i.i.i.i.i22.us, %i.ds ; 2 uses
  %.054.i.i.i.i.i23.us = add nuw nsw i64 %.054.in79.i.i.i.i.i20.us, 4 ; 2 uses
  %i.du = icmp slt i64 %.054.i.i.i.i.i23.us, %i.bv
  br i1 %i.du, label %.lr.ph.i.i.i.i.i18.us, label %._crit_edge.i.i.i.i.i15.us, !llvm.loop !959

._crit_edge.i.i.i.i.i15.us:                       ; preds = %.lr.ph.i.i.i.i.i18.us, %.lr.ph.split.split.split.us
  %.075.lcssa.i.i.i.i.i16.us = phi <2 x double> [ %i.dj, %.lr.ph.split.split.split.us ], [ %i.dt, %.lr.ph.i.i.i.i.i18.us ]
  %.072.lcssa.i.i.i.i.i17.us = phi <2 x double> [ %i.df, %.lr.ph.split.split.split.us ], [ %i.do, %.lr.ph.i.i.i.i.i18.us ]
  %i.dv = fadd <2 x double> %.075.lcssa.i.i.i.i.i16.us, %.072.lcssa.i.i.i.i.i17.us ; 2 uses
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i15.us
  %i.dw = getelementptr [8 x i8], ptr %i.dc, i64 %i.bv
  %i.dx = load <2 x i64>, ptr %i.dw, align 1, !tbaa !24
  %i.dy = and <2 x i64> %i.dx, splat (i64 9223372036854775807)
  %i.dz = bitcast <2 x i64> %i.dy to <2 x double>
  %i.ea = fadd <2 x double> %i.dv, %i.dz
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i15.us
  %.274.i.i.i.i.i9.us = phi <2 x double> [ %i.dv, %._crit_edge.i.i.i.i.i15.us ], [ %i.ea, %bb.h ]
  %i.eb = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i9.us) ; 3 uses
  br i1 %i.cb, label %.lr.ph85.i.i.i.i.i11.us.preheader, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us43

.lr.ph85.i.i.i.i.i11.us.preheader:                ; preds = %bb.i
  br i1 %lcmp.mod139.not, label %.lr.ph85.i.i.i.i.i11.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i11.us.prol

.lr.ph85.i.i.i.i.i11.us.prol:                     ; preds = %.lr.ph85.i.i.i.i.i11.us.preheader, %.lr.ph85.i.i.i.i.i11.us.prol
  %.05283.i.i.i.i.i12.us.prol = phi i64 [ %i.eg, %.lr.ph85.i.i.i.i.i11.us.prol ], [ %i.bx, %.lr.ph85.i.i.i.i.i11.us.preheader ] ; 2 uses
  %.182.i.i.i.i.i13.us.prol = phi double [ %i.ef, %.lr.ph85.i.i.i.i.i11.us.prol ], [ %i.eb, %.lr.ph85.i.i.i.i.i11.us.preheader ]
  %prol.iter140 = phi i64 [ %prol.iter140.next, %.lr.ph85.i.i.i.i.i11.us.prol ], [ 0, %.lr.ph85.i.i.i.i.i11.us.preheader ]
  %i.ec = getelementptr [8 x i8], ptr %i.dc, i64 %.05283.i.i.i.i.i12.us.prol
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !42
  %i.ee = tail call noundef double @llvm.fabs.f64(double %i.ed)
  %i.ef = fadd double %.182.i.i.i.i.i13.us.prol, %i.ee ; 3 uses
  %i.eg = add nuw nsw i64 %.05283.i.i.i.i.i12.us.prol, 1 ; 2 uses
  %prol.iter140.next = add i64 %prol.iter140, 1   ; 2 uses
  %prol.iter140.cmp.not = icmp eq i64 %prol.iter140.next, %xtraiter138
  br i1 %prol.iter140.cmp.not, label %.lr.ph85.i.i.i.i.i11.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i11.us.prol, !llvm.loop !963

.lr.ph85.i.i.i.i.i11.us.prol.loopexit:            ; preds = %.lr.ph85.i.i.i.i.i11.us.prol, %.lr.ph85.i.i.i.i.i11.us.preheader
  %.lcssa121.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i11.us.preheader ], [ %i.ef, %.lr.ph85.i.i.i.i.i11.us.prol ]
  %.05283.i.i.i.i.i12.us.unr = phi i64 [ %i.bx, %.lr.ph85.i.i.i.i.i11.us.preheader ], [ %i.eg, %.lr.ph85.i.i.i.i.i11.us.prol ]
  %.182.i.i.i.i.i13.us.unr = phi double [ %i.eb, %.lr.ph85.i.i.i.i.i11.us.preheader ], [ %i.ef, %.lr.ph85.i.i.i.i.i11.us.prol ]
  br i1 %i.da, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us43, label %.lr.ph85.i.i.i.i.i11.us

.lr.ph85.i.i.i.i.i11.us:                          ; preds = %.lr.ph85.i.i.i.i.i11.us.prol.loopexit, %.lr.ph85.i.i.i.i.i11.us
  %.05283.i.i.i.i.i12.us = phi i64 [ %i.fa, %.lr.ph85.i.i.i.i.i11.us ], [ %.05283.i.i.i.i.i12.us.unr, %.lr.ph85.i.i.i.i.i11.us.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i13.us = phi double [ %i.ez, %.lr.ph85.i.i.i.i.i11.us ], [ %.182.i.i.i.i.i13.us.unr, %.lr.ph85.i.i.i.i.i11.us.prol.loopexit ]
  %i.eh = getelementptr [8 x i8], ptr %i.dc, i64 %.05283.i.i.i.i.i12.us
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !42
  %i.ej = tail call noundef double @llvm.fabs.f64(double %i.ei)
  %i.ek = fadd double %.182.i.i.i.i.i13.us, %i.ej
  %i.el = getelementptr [8 x i8], ptr %i.dc, i64 %.05283.i.i.i.i.i12.us
  %i.em = getelementptr i8, ptr %i.el, i64 8
  %i.en = load double, ptr %i.em, align 8, !tbaa !42
  %i.eo = tail call noundef double @llvm.fabs.f64(double %i.en)
  %i.ep = fadd double %i.ek, %i.eo
  %i.eq = getelementptr [8 x i8], ptr %i.dc, i64 %.05283.i.i.i.i.i12.us
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  %i.es = load double, ptr %i.er, align 8, !tbaa !42
  %i.et = tail call noundef double @llvm.fabs.f64(double %i.es)
  %i.eu = fadd double %i.ep, %i.et
  %i.ev = getelementptr [8 x i8], ptr %i.dc, i64 %.05283.i.i.i.i.i12.us
  %i.ew = getelementptr i8, ptr %i.ev, i64 24
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !42
  %i.ey = tail call noundef double @llvm.fabs.f64(double %i.ex)
  %i.ez = fadd double %i.eu, %i.ey                ; 2 uses
  %i.fa = add nuw nsw i64 %.05283.i.i.i.i.i12.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i14.us.3 = icmp eq i64 %i.fa, %i.b
  br i1 %exitcond.not.i.i.i.i.i14.us.3, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us43, label %.lr.ph85.i.i.i.i.i11.us, !llvm.loop !961

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us43: ; preds = %.lr.ph85.i.i.i.i.i11.us.prol.loopexit, %.lr.ph85.i.i.i.i.i11.us, %bb.i
  %.0.i.i.i10.us44 = phi double [ %i.eb, %bb.i ], [ %.lcssa121.unr, %.lr.ph85.i.i.i.i.i11.us.prol.loopexit ], [ %i.ez, %.lr.ph85.i.i.i.i.i11.us ] ; 2 uses
  %i.fb = fcmp olt double %.02733.us42, %.0.i.i.i10.us44
  %i.fc = select i1 %i.fb, double %.0.i.i.i10.us44, double %.02733.us42 ; 2 uses
  %i.fd = add nuw nsw i64 %.034.us41, 1           ; 2 uses
  %exitcond76.not = icmp eq i64 %i.fd, %i.bs
  br i1 %exitcond76.not, label %._crit_edge, label %.lr.ph.split.split.split.us, !llvm.loop !962

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  br i1 %i.cb, label %.lr.ph85.i.i.i.i.i11.preheader.us49.preheader, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.preheader

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.preheader: ; preds = %.lr.ph.split.split.split
  %i.fe = add nsw i64 %i.bs, -1                   ; 3 uses
  %xtraiter131 = and i64 %i.fe, 1
  %i.ff = icmp eq i64 %i.bs, 2
  br i1 %i.ff, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.epil.preheader, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.preheader.new

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.preheader.new: ; preds = %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.preheader
  %unroll_iter = and i64 %i.fe, -2
  br label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24

.lr.ph85.i.i.i.i.i11.preheader.us49.preheader:    ; preds = %.lr.ph.split.split.split
  %i.fg = sub i64 %i.b, %i.bx
  %xtraiter135 = and i64 %i.fg, 3                 ; 2 uses
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  %i.fh = sub i64 %i.bx, %i.b
  %i.fi = icmp ugt i64 %i.fh, -4
  br label %.lr.ph85.i.i.i.i.i11.preheader.us49

.lr.ph85.i.i.i.i.i11.preheader.us49:              ; preds = %.lr.ph85.i.i.i.i.i11.preheader.us49.preheader, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.loopexit.us54
  %.034.us47 = phi i64 [ %i.gq, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.loopexit.us54 ], [ 1, %.lr.ph85.i.i.i.i.i11.preheader.us49.preheader ] ; 2 uses
  %.02733.us48 = phi double [ %i.gp, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.loopexit.us54 ], [ %.0.i.i.i, %.lr.ph85.i.i.i.i.i11.preheader.us49.preheader ] ; 2 uses
  %i.fj = mul nsw i64 %.034.us47, %i.b
  %i.fk = getelementptr [8 x i8], ptr %i.ch, i64 %i.fj ; 6 uses
  %i.fl = load <2 x i64>, ptr %i.fk, align 1, !tbaa !24
  %i.fm = and <2 x i64> %i.fl, splat (i64 9223372036854775807)
  %i.fn = bitcast <2 x i64> %i.fm to <2 x double>
  %i.fo = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.fn) ; 2 uses
  br i1 %lcmp.mod136.not, label %.lr.ph85.i.i.i.i.i11.us50.prol.loopexit, label %.lr.ph85.i.i.i.i.i11.us50.prol

.lr.ph85.i.i.i.i.i11.us50.prol:                   ; preds = %.lr.ph85.i.i.i.i.i11.preheader.us49, %.lr.ph85.i.i.i.i.i11.us50.prol
  %.05283.i.i.i.i.i12.us51.prol = phi i64 [ %i.ft, %.lr.ph85.i.i.i.i.i11.us50.prol ], [ %i.bx, %.lr.ph85.i.i.i.i.i11.preheader.us49 ] ; 2 uses
  %.182.i.i.i.i.i13.us52.prol = phi double [ %i.fs, %.lr.ph85.i.i.i.i.i11.us50.prol ], [ %i.fo, %.lr.ph85.i.i.i.i.i11.preheader.us49 ]
  %prol.iter137 = phi i64 [ %prol.iter137.next, %.lr.ph85.i.i.i.i.i11.us50.prol ], [ 0, %.lr.ph85.i.i.i.i.i11.preheader.us49 ]
  %i.fp = getelementptr [8 x i8], ptr %i.fk, i64 %.05283.i.i.i.i.i12.us51.prol
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !42
  %i.fr = tail call noundef double @llvm.fabs.f64(double %i.fq)
  %i.fs = fadd double %.182.i.i.i.i.i13.us52.prol, %i.fr ; 3 uses
  %i.ft = add nsw i64 %.05283.i.i.i.i.i12.us51.prol, 1 ; 2 uses
  %prol.iter137.next = add i64 %prol.iter137, 1   ; 2 uses
  %prol.iter137.cmp.not = icmp eq i64 %prol.iter137.next, %xtraiter135
  br i1 %prol.iter137.cmp.not, label %.lr.ph85.i.i.i.i.i11.us50.prol.loopexit, label %.lr.ph85.i.i.i.i.i11.us50.prol, !llvm.loop !964

.lr.ph85.i.i.i.i.i11.us50.prol.loopexit:          ; preds = %.lr.ph85.i.i.i.i.i11.us50.prol, %.lr.ph85.i.i.i.i.i11.preheader.us49
  %.lcssa124.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i11.preheader.us49 ], [ %i.fs, %.lr.ph85.i.i.i.i.i11.us50.prol ]
  %.05283.i.i.i.i.i12.us51.unr = phi i64 [ %i.bx, %.lr.ph85.i.i.i.i.i11.preheader.us49 ], [ %i.ft, %.lr.ph85.i.i.i.i.i11.us50.prol ]
  %.182.i.i.i.i.i13.us52.unr = phi double [ %i.fo, %.lr.ph85.i.i.i.i.i11.preheader.us49 ], [ %i.fs, %.lr.ph85.i.i.i.i.i11.us50.prol ]
  br i1 %i.fi, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.loopexit.us54, label %.lr.ph85.i.i.i.i.i11.us50

.lr.ph85.i.i.i.i.i11.us50:                        ; preds = %.lr.ph85.i.i.i.i.i11.us50.prol.loopexit, %.lr.ph85.i.i.i.i.i11.us50
  %.05283.i.i.i.i.i12.us51 = phi i64 [ %i.gn, %.lr.ph85.i.i.i.i.i11.us50 ], [ %.05283.i.i.i.i.i12.us51.unr, %.lr.ph85.i.i.i.i.i11.us50.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i13.us52 = phi double [ %i.gm, %.lr.ph85.i.i.i.i.i11.us50 ], [ %.182.i.i.i.i.i13.us52.unr, %.lr.ph85.i.i.i.i.i11.us50.prol.loopexit ]
  %i.fu = getelementptr [8 x i8], ptr %i.fk, i64 %.05283.i.i.i.i.i12.us51
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !42
  %i.fw = tail call noundef double @llvm.fabs.f64(double %i.fv)
  %i.fx = fadd double %.182.i.i.i.i.i13.us52, %i.fw
  %i.fy = getelementptr [8 x i8], ptr %i.fk, i64 %.05283.i.i.i.i.i12.us51
  %i.fz = getelementptr i8, ptr %i.fy, i64 8
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !42
  %i.gb = tail call noundef double @llvm.fabs.f64(double %i.ga)
  %i.gc = fadd double %i.fx, %i.gb
  %i.gd = getelementptr [8 x i8], ptr %i.fk, i64 %.05283.i.i.i.i.i12.us51
  %i.ge = getelementptr i8, ptr %i.gd, i64 16
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !42
  %i.gg = tail call noundef double @llvm.fabs.f64(double %i.gf)
  %i.gh = fadd double %i.gc, %i.gg
  %i.gi = getelementptr [8 x i8], ptr %i.fk, i64 %.05283.i.i.i.i.i12.us51
  %i.gj = getelementptr i8, ptr %i.gi, i64 24
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !42
  %i.gl = tail call noundef double @llvm.fabs.f64(double %i.gk)
  %i.gm = fadd double %i.gh, %i.gl                ; 2 uses
  %i.gn = add nsw i64 %.05283.i.i.i.i.i12.us51, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i14.us53.3 = icmp eq i64 %i.gn, %i.b
  br i1 %exitcond.not.i.i.i.i.i14.us53.3, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.loopexit.us54, label %.lr.ph85.i.i.i.i.i11.us50, !llvm.loop !961

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.loopexit.us54: ; preds = %.lr.ph85.i.i.i.i.i11.us50, %.lr.ph85.i.i.i.i.i11.us50.prol.loopexit
  %.lcssa124 = phi double [ %.lcssa124.unr, %.lr.ph85.i.i.i.i.i11.us50.prol.loopexit ], [ %i.gm, %.lr.ph85.i.i.i.i.i11.us50 ] ; 2 uses
  %i.go = fcmp olt double %.02733.us48, %.lcssa124
  %i.gp = select i1 %i.go, double %.lcssa124, double %.02733.us48 ; 2 uses
  %i.gq = add nuw nsw i64 %.034.us47, 1           ; 2 uses
  %exitcond75.not = icmp eq i64 %i.gq, %i.bs
  br i1 %exitcond75.not, label %._crit_edge, label %.lr.ph85.i.i.i.i.i11.preheader.us49, !llvm.loop !962

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us
  %lcmp.mod148.not = icmp eq i64 %xtraiter147, 0
  br i1 %lcmp.mod148.not, label %._crit_edge, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.epil.preheader

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.preheader
  %.02733.us.epil.init = phi double [ %.0.i.i.i, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.preheader ], [ %i.cg, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod150 = icmp ne i64 %xtraiter147, 0
  tail call void @llvm.assume(i1 %lcmp.mod150)
  br label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.epil

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.epil: ; preds = %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.epil, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.epil.preheader
  %.02733.us.epil = phi double [ %i.gs, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.epil ], [ %.02733.us.epil.init, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.epil ], [ 0, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.epil.preheader ]
  %i.gr = fcmp olt double %.02733.us.epil, 0.000000e+00
  %i.gs = select i1 %i.gr, double 0.000000e+00, double %.02733.us.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter147
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.epil, !llvm.loop !965

._crit_edge.loopexit116.unr-lcssa:                ; preds = %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br i1 %lcmp.mod142.not, label %._crit_edge, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.epil.preheader

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.epil.preheader: ; preds = %._crit_edge.loopexit116.unr-lcssa, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.preheader
  %.034.us35.epil.init = phi i64 [ 1, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.preheader ], [ %i.cx, %._crit_edge.loopexit116.unr-lcssa ]
  %.02733.us36.epil.init = phi double [ %.0.i.i.i, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.preheader ], [ %i.cw, %._crit_edge.loopexit116.unr-lcssa ] ; 2 uses
  %lcmp.mod144 = trunc i64 %i.ci to i1
  tail call void @llvm.assume(i1 %lcmp.mod144)
  %i.gt = mul nsw i64 %.034.us35.epil.init, %i.b
  %i.gu = getelementptr [8 x i8], ptr %i.ch, i64 %i.gt
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !42
  %i.gw = tail call noundef double @llvm.fabs.f64(double %i.gv) ; 2 uses
  %i.gx = fcmp olt double %.02733.us36.epil.init, %i.gw
  %i.gy = select i1 %i.gx, double %i.gw, double %.02733.us36.epil.init
  br label %._crit_edge

._crit_edge.loopexit126.unr-lcssa:                ; preds = %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24
end_hunk_2
