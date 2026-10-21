Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/insert_into_cdt?download=true
inline.NumInlined: 11835
inline.NumDeleted: 3665
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15march_locate_2DENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEERKNS_7Point_2IS1_EERNSE_11Locate_typeERi:bb.a
  %i.ps = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.pj) ; 2 uses
  %i.pt = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.pk) ; 2 uses
  %i.pu = fcmp olt <2 x double> %i.ps, %i.pt
  %i.pv = select <2 x i1> %i.pu, <2 x double> %i.pt, <2 x double> %i.ps ; 2 uses
  %i.pw = extractelement <2 x double> %i.pv, i64 0 ; 3 uses
  %i.px = extractelement <2 x double> %i.pv, i64 1 ; 3 uses
  %i.py = fcmp ogt double %i.pw, %i.px            ; 2 uses
  %.155.i.i237 = select i1 %i.py, double %i.px, double %i.pw ; 3 uses
  %.1.i.i238 = select i1 %i.py, double %i.pw, double %i.px ; 2 uses
  %i.pz = fcmp olt double %.155.i.i237, 1.000000e-146
  br i1 %i.pz, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.qa = fcmp oeq double %.155.i.i237, 0.000000e+00
  br i1 %i.qa, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit242.thread, label %bb.cg

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit242.thread: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cc
  %i.qb = fcmp olt double %.1.i.i238, f0x5FB317E5EF3AB327
  br i1 %i.qb, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.qc = fmul double %.155.i.i237, f0x3CD0028010000004
  %i.qd = fmul double %.1.i.i238, %i.qc           ; 2 uses
  %i.qe = fcmp ule double %i.pr, %i.qd            ; 2 uses
  %i.qf = fneg double %i.qd
  %i.qg = fcmp uge double %i.pr, %i.qf
  %.021.i.i240 = select i1 %i.qe, i32 -1, i32 1
  %cond1.i.i241 = and i1 %i.qe, %i.qg
  br i1 %cond1.i.i241, label %bb.cg, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit242

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.qh = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_2IST_EES16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit242

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit242: ; preds = %bb.cf, %bb.cg
  %.3.i.i239 = phi i32 [ %i.qh, %bb.cg ], [ %.021.i.i240, %bb.cf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.qi = icmp eq i32 %.3.i.i239, -1
  br i1 %i.qi, label %bb.cp, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit242._crit_edge, !llvm.loop !1381

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit242._crit_edge: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit242
  %i.qj = load <2 x double>, ptr %2, align 8, !tbaa !172
  br label %bb.ch, !llvm.loop !1381

bb.ch:                                            ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit242._crit_edge, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit242.thread
  %.3.i.i239316 = phi i32 [ 0, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit242.thread ], [ %.3.i.i239, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit242._crit_edge ] ; 2 uses
  %i.qk = phi <2 x double> [ %i.pg, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit242.thread ], [ %i.qj, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit242._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ql = load <2 x double>, ptr %i.v, align 8, !tbaa !172 ; 2 uses
  %i.qm = load <2 x double>, ptr %i.t, align 8, !tbaa !172
  %i.qn = fsub <2 x double> %i.qm, %i.ql          ; 3 uses
  %i.qo = fsub <2 x double> %i.qk, %i.ql          ; 3 uses
  %i.qp = extractelement <2 x double> %i.qn, i64 1
  %i.qq = fneg double %i.qp
  %i.qr = extractelement <2 x double> %i.qo, i64 0
  %i.qs = fmul double %i.qr, %i.qq
  %i.qt = extractelement <2 x double> %i.qn, i64 0
  %i.qu = extractelement <2 x double> %i.qo, i64 1
  %i.qv = call noundef double @llvm.fmuladd.f64(double %i.qt, double %i.qu, double %i.qs) ; 2 uses
  %i.qw = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.qn) ; 2 uses
  %i.qx = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.qo) ; 2 uses
  %i.qy = fcmp olt <2 x double> %i.qw, %i.qx
  %i.qz = select <2 x i1> %i.qy, <2 x double> %i.qx, <2 x double> %i.qw ; 2 uses
  %i.ra = extractelement <2 x double> %i.qz, i64 0 ; 3 uses
  %i.rb = extractelement <2 x double> %i.qz, i64 1 ; 3 uses
  %i.rc = fcmp ogt double %i.ra, %i.rb            ; 2 uses
  %.155.i.i246 = select i1 %i.rc, double %i.rb, double %i.ra ; 3 uses
  %.1.i.i247 = select i1 %i.rc, double %i.ra, double %i.rb ; 2 uses
  %i.rd = fcmp olt double %.155.i.i246, 1.000000e-146
  br i1 %i.rd, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.re = fcmp oeq double %.155.i.i246, 0.000000e+00
  br i1 %i.re, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit251.thread, label %bb.cl

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit251.thread: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.loopexit

bb.cj:                                            ; preds = %bb.ch
  %i.rf = fcmp olt double %.1.i.i247, f0x5FB317E5EF3AB327
  br i1 %i.rf, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.rg = fmul double %.155.i.i246, f0x3CD0028010000004
  %i.rh = fmul double %.1.i.i247, %i.rg           ; 2 uses
  %i.ri = fcmp ule double %i.qv, %i.rh            ; 2 uses
  %i.rj = fneg double %i.rh
  %i.rk = fcmp uge double %i.qv, %i.rj
  %.021.i.i249 = select i1 %i.ri, i32 -1, i32 1
  %cond1.i.i250 = and i1 %i.ri, %i.rk
  br i1 %cond1.i.i250, label %bb.cl, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit251

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci
  %i.rl = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_2IST_EES16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit251

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit251: ; preds = %bb.ck, %bb.cl
  %.3.i.i248 = phi i32 [ %i.rl, %bb.cl ], [ %.021.i.i249, %bb.ck ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.rm = icmp eq i32 %.3.i.i248, -1
  br i1 %i.rm, label %bb.cp, label %.loopexit, !llvm.loop !1381

.loopexit:                                        ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit251, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit233, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit214, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit195, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit177, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit158, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit139, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit251.thread, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit233.thread, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit214.thread, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit195.thread, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit177.thread, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit158.thread, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit139.thread
  %.0101 = phi i32 [ 0, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit139.thread ], [ 0, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit158.thread ], [ 1, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit177.thread ], [ %.3.i.i183307, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit195.thread ], [ %.3.i.i202310, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit214.thread ], [ 1, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit233.thread ], [ 0, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit251.thread ], [ %.3.i.i248, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit251 ], [ %.3.i.i202310, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit214 ], [ %.3.i.i183307, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit195 ], [ 1, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit177 ], [ %.3.i.i155, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit158 ], [ 1, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit233 ], [ %.3.i.i136, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit139 ]
  %.0100 = phi i32 [ %.3.i.i127298, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit139.thread ], [ 1, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit158.thread ], [ %.3.i.i165304, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit177.thread ], [ 0, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit195.thread ], [ 1, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit214.thread ], [ 0, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit233.thread ], [ %.3.i.i239316, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit251.thread ], [ %.3.i.i239316, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit251 ], [ 1, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit214 ], [ %.3.i.i192, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit195 ], [ %.3.i.i165304, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit177 ], [ 1, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit158 ], [ %.3.i.i230, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit233 ], [ %.3.i.i127298, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit139 ]
  %.099 = phi i32 [ %.3.i.i296, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit139.thread ], [ %.3.i.i146301, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit158.thread ], [ 0, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit177.thread ], [ 1, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit195.thread ], [ 0, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit214.thread ], [ %.3.i.i221313, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit233.thread ], [ 1, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit251.thread ], [ 1, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit251 ], [ %.3.i.i211, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit214 ], [ 1, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit195 ], [ %.3.i.i174, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit177 ], [ %.3.i.i146301, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit158 ], [ %.3.i.i221313, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit233 ], [ %.3.i.i296, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit139 ]
  %i.rn = icmp eq i32 %.099, 0                    ; 3 uses
  %i.ro = zext i1 %i.rn to i32
  %i.rp = icmp eq i32 %.0100, 0                   ; 2 uses
  %i.rq = zext i1 %i.rp to i32                    ; 2 uses
  %i.rr = icmp eq i32 %.0101, 0
  %i.rs = zext i1 %i.rr to i32
  %i.rt = add nuw nsw i32 %i.rq, %i.rs
  %i.ru = add nuw nsw i32 %i.rt, %i.ro
  switch i32 %i.ru, label %.thread [
    i32 0, label %bb.cm
    i32 1, label %bb.cn
    i32 2, label %bb.co
  ]

bb.cm:                                            ; preds = %.loopexit
  store i32 2, ptr %3, align 4, !tbaa !118
  br label %.thread.sink.split

bb.cn:                                            ; preds = %.loopexit
  store i32 1, ptr %3, align 4, !tbaa !118
  %not. = xor i1 %i.rp, true
  %i.rv = zext i1 %not. to i32
  %i.rw = select i1 %i.rn, i32 2, i32 %i.rv
  br label %.thread.sink.split

bb.co:                                            ; preds = %.loopexit
  store i32 0, ptr %3, align 4, !tbaa !118
  %i.rx = select i1 %i.rn, i32 %i.rq, i32 2
  br label %.thread.sink.split

bb.cp:                                            ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit251, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit242, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit233, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit195, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit186, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit168, %bb.bw, %bb.bp, %bb.bj, %bb.as, %bb.ag, %bb.aa, %bb.s, %bb.m, %bb.g
  %.sroa.0266.1.in = phi ptr [ %i.ba, %bb.g ], [ %i.cf, %bb.m ], [ %i.dj, %bb.s ], [ %i.fw, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit186 ], [ %i.lr, %bb.bj ], [ %i.mv, %bb.bp ], [ %i.oc, %bb.bw ], [ %i.dl, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit195 ], [ %i.dl, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit233 ], [ %i.dl, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit242 ], [ %i.er, %bb.aa ], [ %i.fv, %bb.ag ], [ %i.dl, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit168 ], [ %i.if, %bb.as ], [ %i.mw, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit251 ]
  %.sroa.0266.1 = load ptr, ptr %.sroa.0266.1.in, align 8, !tbaa !114 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !122 ; 4 uses
  %i.ry = load ptr, ptr %.sroa.0266.1, align 8, !tbaa !142 ; 2 uses
  %i.rz = icmp eq ptr %i.ry, %.sroa.0.0.copyload.i.i ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.0266.1, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8            ; 2 uses
  %i.sc = icmp eq ptr %i.sb, %.sroa.0.0.copyload.i.i
  %or.cond.i.i = select i1 %i.rz, i1 true, i1 %i.sc
  br i1 %or.cond.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit

.thread.sink.split:                               ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread.thread, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread, %bb.co, %bb.cn, %bb.cm
  %.sink = phi i32 [ 4, %bb.cm ], [ %i.rw, %bb.cn ], [ %i.rx, %bb.co ], [ %..i404, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread.thread ], [ %spec.select, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread ]
  %.sroa.0266.0356.ph = phi ptr [ %.sroa.0266.0363, %bb.cm ], [ %.sroa.0266.0363, %bb.cn ], [ %.sroa.0266.0363, %bb.co ], [ %.sroa.0266.0363, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread.thread ], [ %.sroa.0266.0.lcssa358, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread ]
  store i32 %.sink, ptr %4, align 4, !tbaa !119
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.loopexit
  %.sroa.0266.0356 = phi ptr [ %.sroa.0266.0363, %.loopexit ], [ %.sroa.0266.0356.ph, %.thread.sink.split ]
  ret ptr %.sroa.0266.0356
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE18finite_edges_beginEv(ptr dead_on_unwind noalias writable sret(%"struct.CGAL::Filter_iterator.390") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !140  ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !379, !noalias !1404 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.f, align 8, !alias.scope !1403
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !1403
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1403
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1403
  store ptr %i.a, ptr %0, align 8, !alias.scope !1403
  %.sroa.54.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %.sroa.54.0..sroa_idx5.i, align 8, !alias.scope !1403
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx7.i, align 8, !alias.scope !1403
  %.sroa.7.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.7.0..sroa_idx9.i, align 8, !alias.scope !1403
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = ptrtoint ptr %1 to i64
  store i64 %i.h, ptr %i.g, align 8, !tbaa !1405, !alias.scope !1406
  br label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !379, !noalias !1407 ; 9 uses
  %i.k = icmp eq i32 %i.b, 1                      ; 3 uses
  %spec.store.select.i.i.i = select i1 %i.k, i32 2, i32 0 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !383, !noalias !1408
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !384, !noalias !1408 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !278, !noalias !1408
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 3
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %.preheader.i.i.i.i.i, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.e, %.preheader.i.i.i.i.i.backedge
  %i.x = phi ptr [ %.be123, %.preheader.i.i.i.i.i.backedge ], [ %i.r, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !278, !noalias !1408
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 3
  switch i32 %i.ad, label %.preheader.i.i.i.i.i.unreachabledefault [
    i32 0, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i
    i32 3, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i
    i32 1, label %bb.f
    i32 2, label %.preheader.i.i.i.i.i.backedge
  ]

bb.f:                                             ; preds = %.preheader.i.i.i.i.i
  %i.ae = and i64 %i.ab, -4
  %i.af = inttoptr i64 %i.ae to ptr
  br label %.preheader.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.backedge:                    ; preds = %bb.f, %.preheader.i.i.i.i.i
  %.be123 = phi ptr [ %i.af, %bb.f ], [ %i.y, %.preheader.i.i.i.i.i ]
  br label %.preheader.i.i.i.i.i, !llvm.loop !45

.preheader.i.i.i.i.i.unreachabledefault:          ; preds = %.preheader.i.i.i.i.i
  unreachable

default.unreachable:                              ; preds = %.preheader, %bb.n, %.split.us.i.i.i.us.us, %.split.us.i.i.i.us
  unreachable

_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i: ; preds = %.preheader.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.c, %bb.e, %bb.d
  %i.ag = phi ptr [ %i.j, %bb.c ], [ null, %bb.d ], [ %i.r, %bb.e ], [ %i.y, %.preheader.i.i.i.i.i ], [ %i.y, %.preheader.i.i.i.i.i ] ; 5 uses
  br i1 %i.k, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i
  %.not57.i.i.i = icmp eq ptr %i.ag, %i.j
  br i1 %.not57.i.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i: ; preds = %bb.g, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i
  %.sroa.2.0 = phi ptr [ %.sroa.2.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ], [ %i.ag, %bb.g ] ; 2 uses
  %.sroa.64.0 = phi i32 [ %.sroa.64.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ], [ 0, %bb.g ] ; 4 uses
  %i.ah = phi ptr [ %i.ax, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ], [ %i.ag, %bb.g ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = zext nneg i32 %.sroa.64.0 to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !114, !noalias !1408
  %i.al = icmp ugt ptr %.sroa.0.0.copyload.i.i.i.i.i, %i.ah
  br i1 %i.al, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i
  %i.am = icmp eq i32 %.sroa.64.0, 2
  br i1 %i.am, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.h, %.preheader.backedge
  %i.an = phi ptr [ %.be121, %.preheader.backedge ], [ %i.ah, %bb.h ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !278, !noalias !1408
  %i.ar = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 3
  switch i32 %i.at, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i
    i32 1, label %bb.i
    i32 2, label %.preheader.backedge
  ]

bb.i:                                             ; preds = %.preheader
  %i.au = and i64 %i.ar, -4
  %i.av = inttoptr i64 %i.au to ptr
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.i, %.preheader
  %.be121 = phi ptr [ %i.av, %bb.i ], [ %i.ao, %.preheader ]
  br label %.preheader, !llvm.loop !45

bb.j:                                             ; preds = %bb.h
  %i.aw = add nuw nsw i32 %.sroa.64.0, 1
  br label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i: ; preds = %.preheader, %.preheader, %bb.j
  %.sroa.2.1 = phi ptr [ %.sroa.2.0, %bb.j ], [ %i.ao, %.preheader ], [ %i.ao, %.preheader ] ; 2 uses
  %.sroa.64.1 = phi i32 [ %i.aw, %bb.j ], [ 0, %.preheader ], [ 0, %.preheader ] ; 2 uses
  %i.ax = phi ptr [ %i.ah, %bb.j ], [ %i.ao, %.preheader ], [ %i.ao, %.preheader ] ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ax, %i.j
  br i1 %.not5.i.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i, !llvm.loop !1398

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i, %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i, %bb.g
  %.sroa.2.2 = phi ptr [ %i.ag, %bb.g ], [ %i.ag, %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i ], [ %.sroa.2.0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i ], [ %.sroa.2.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ] ; 5 uses
  %.sroa.64.2 = phi i32 [ 0, %bb.g ], [ 2, %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i ], [ %.sroa.64.0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i ], [ %.sroa.64.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  store ptr %i.a, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %spec.store.select.i.i.i, ptr %.sroa.611.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.ay, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store ptr %.sroa.2.2, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr null, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 %.sroa.64.2, ptr %.sroa.615.0..sroa_idx, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = ptrtoint ptr %1 to i64
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !1405, !alias.scope !1409
  %i.bb = icmp eq ptr %.sroa.2.2, %i.j
  %.not.i.i29 = icmp eq i32 %.sroa.64.2, %spec.store.select.i.i.i
  %.not.i.i.us.fr = freeze i1 %.not.i.i29         ; 2 uses
  %or.cond.i.i30 = and i1 %i.bb, %.not.i.i.us.fr
  br i1 %or.cond.i.i30, label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !122, !noalias !1409 ; 6 uses
  br i1 %i.k, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph
  %i.bd = zext nneg i32 %.sroa.64.2 to i64        ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE7ccw_mapE, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !119, !noalias !1409
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE6cw_mapE, i64 %i.bd ; 2 uses
  br i1 %.not.i.i.us.fr, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us.us
  %.lcssa232831.us.us = phi ptr [ %i.bp, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us.us ], [ %.sroa.2.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us ] ; 4 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %.lcssa232831.us.us, i64 %i.bg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.us = load ptr, ptr %i.bi, align 8, !tbaa !122, !noalias !1409
  %i.bj = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.bj, label %.split.us.i.i.i.us.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !119, !noalias !1409
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %.lcssa232831.us.us, i64 %i.bl
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us.us = load ptr, ptr %i.bm, align 8, !tbaa !122, !noalias !1409
  %i.bn = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.bn, label %.split.us.i.i.i.us.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge

.split.us.i.i.i.us.us.preheader:                  ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us
  br label %.split.us.i.i.i.us.us

.split.us.i.i.i.us.us:                            ; preds = %.split.us.i.i.i.us.us.backedge, %.split.us.i.i.i.us.us.preheader
  %i.bo = phi ptr [ %.lcssa232831.us.us, %.split.us.i.i.i.us.us.preheader ], [ %.be109, %.split.us.i.i.i.us.us.backedge ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !278, !noalias !1409
  %i.bs = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = and i32 %i.bt, 3
  switch i32 %i.bu, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us.us
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us.us
    i32 1, label %bb.k
    i32 2, label %.split.us.i.i.i.us.us.backedge
  ]

bb.k:                                             ; preds = %.split.us.i.i.i.us.us
  %i.bv = and i64 %i.bs, -4
  %i.bw = inttoptr i64 %i.bv to ptr
  br label %.split.us.i.i.i.us.us.backedge

.split.us.i.i.i.us.us.backedge:                   ; preds = %bb.k, %.split.us.i.i.i.us.us
  %.be109 = phi ptr [ %i.bp, %.split.us.i.i.i.us.us ], [ %i.bw, %bb.k ]
  br label %.split.us.i.i.i.us.us, !llvm.loop !45

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us.us: ; preds = %.split.us.i.i.i.us.us, %.split.us.i.i.i.us.us
  store ptr %i.bp, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !278, !alias.scope !1409
  br label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us
  %.lcssa232831.us = phi ptr [ %i.ce, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us ], [ %.sroa.2.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us ] ; 5 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %.lcssa232831.us, i64 %i.bg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.us = load ptr, ptr %i.bx, align 8, !tbaa !122, !noalias !1409
  %i.by = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.by, label %.split.us.i.i.i.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us
  %i.bz = load i32, ptr %i.bh, align 4, !tbaa !119, !noalias !1409
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %.lcssa232831.us, i64 %i.ca
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us = load ptr, ptr %i.cb, align 8, !tbaa !122, !noalias !1409
  %i.cc = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.cc, label %.split.us.i.i.i.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge

.split.us.i.i.i.us.preheader:                     ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us
  br label %.split.us.i.i.i.us

.split.us.i.i.i.us:                               ; preds = %.split.us.i.i.i.us.backedge, %.split.us.i.i.i.us.preheader
  %i.cd = phi ptr [ %.lcssa232831.us, %.split.us.i.i.i.us.preheader ], [ %.be, %.split.us.i.i.i.us.backedge ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !278, !noalias !1409
  %i.ch = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 3
  switch i32 %i.cj, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us
    i32 1, label %bb.l
    i32 2, label %.split.us.i.i.i.us.backedge
  ]

bb.l:                                             ; preds = %.split.us.i.i.i.us
  %i.ck = and i64 %i.ch, -4
  %i.cl = inttoptr i64 %i.ck to ptr
  br label %.split.us.i.i.i.us.backedge

.split.us.i.i.i.us.backedge:                      ; preds = %bb.l, %.split.us.i.i.i.us
  %.be = phi ptr [ %i.ce, %.split.us.i.i.i.us ], [ %i.cl, %bb.l ]
  br label %.split.us.i.i.i.us, !llvm.loop !45

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us: ; preds = %.split.us.i.i.i.us, %.split.us.i.i.i.us
  store ptr %i.ce, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !278, !alias.scope !1409
  %i.cm = icmp eq ptr %i.ce, %i.j
  br i1 %i.cm, label %._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us, !llvm.loop !1401

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17
  %.pre7.i4.i32 = phi i32 [ %.pre7.i3.i.ph, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17 ], [ %.sroa.64.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph ] ; 2 uses
  %.lcssa232831 = phi ptr [ %.lcssa2326, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17 ], [ %.sroa.2.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph ] ; 7 uses
  %i.cn = zext nneg i32 %.pre7.i4.i32 to i64      ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE7ccw_mapE, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !119, !noalias !1409
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %.lcssa232831, i64 %i.cq
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.cr, align 8, !tbaa !122, !noalias !1409
  %i.cs = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.cs, label %.split.i.i.i.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE6cw_mapE, i64 %i.cn
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !119, !noalias !1409
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %.lcssa232831, i64 %i.cv
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i = load ptr, ptr %i.cw, align 8, !tbaa !122, !noalias !1409
  %i.cx = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.cx, label %.split.i.i.i.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge

.split.i.i.i.preheader:                           ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.split.i.i.i.preheader, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1
  %.lcssa2327 = phi ptr [ %.lcssa2324, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %.lcssa232831, %.split.i.i.i.preheader ] ; 2 uses
  %.promoted.i.i1.i.i.i.i = phi ptr [ %.promoted.i.i1.i.i8.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %.lcssa232831, %.split.i.i.i.preheader ] ; 2 uses
  %i.cy = phi ptr [ %i.dl, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %.lcssa232831, %.split.i.i.i.preheader ] ; 2 uses
  %i.cz = phi i32 [ %i.dm, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %.pre7.i4.i32, %.split.i.i.i.preheader ] ; 2 uses
  %i.da = icmp eq i32 %i.cz, 2
  br i1 %i.da, label %bb.m, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i

bb.m:                                             ; preds = %.split.i.i.i
  store i32 0, ptr %.sroa.615.0..sroa_idx, align 8, !tbaa !385, !alias.scope !1409
  br label %bb.n

bb.n:                                             ; preds = %.backedge, %bb.m
  %i.db = phi ptr [ %.promoted.i.i1.i.i.i.i, %bb.m ], [ %.be114, %.backedge ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 56 ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !278, !noalias !1409
  %i.df = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dg = trunc i64 %i.df to i32
  %i.dh = and i32 %i.dg, 3
  switch i32 %i.dh, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i
    i32 1, label %bb.o
    i32 2, label %.backedge
  ]

bb.o:                                             ; preds = %bb.n
  %i.di = and i64 %i.df, -4
  %i.dj = inttoptr i64 %i.di to ptr
  br label %.backedge

.backedge:                                        ; preds = %bb.o, %bb.n
  %.be114 = phi ptr [ %i.dc, %bb.n ], [ %i.dj, %bb.o ]
  br label %bb.n, !llvm.loop !45

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i: ; preds = %bb.n, %bb.n
  store ptr %i.dc, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !278, !alias.scope !1409
  %.not3.i.i.i = icmp eq ptr %i.dc, %i.j
  br i1 %.not3.i.i.i, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i: ; preds = %.split.i.i.i
  %i.dk = add nuw nsw i32 %i.cz, 1                ; 3 uses
  store i32 %i.dk, ptr %.sroa.615.0..sroa_idx, align 8, !tbaa !385, !alias.scope !1409
  %.not2.i.i.i = icmp eq ptr %i.cy, %i.j
  br i1 %.not2.i.i.i, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i
  %.lcssa2324 = phi ptr [ %i.dc, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %.lcssa2327, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 2 uses
  %.promoted.i.i1.i.i8.i.i = phi ptr [ %i.dc, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %.promoted.i.i1.i.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ]
  %i.dl = phi ptr [ %i.dc, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.cy, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 3 uses
  %i.dm = phi i32 [ 0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.dk, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.do = zext nneg i32 %i.dm to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do
  %.sroa.0.0.copyload.i.i.i.i.i2 = load ptr, ptr %i.dp, align 8, !tbaa !114, !noalias !1409
  %i.dq = icmp ugt ptr %.sroa.0.0.copyload.i.i.i.i.i2, %i.dl
  br i1 %i.dq, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17, label %.split.i.i.i, !llvm.loop !1402

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1
  %.lcssa2326 = phi ptr [ %i.dc, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %.lcssa2324, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %.lcssa2327, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 2 uses
  %.pre7.i3.i.ph = phi i32 [ 0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.dm, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.dk, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 2 uses
  %i.dr = icmp eq ptr %.lcssa2326, %i.j
  %.not.i.i = icmp eq i32 %.pre7.i3.i.ph, %spec.store.select.i.i.i
  %or.cond.i.i = select i1 %i.dr, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i, !llvm.loop !1401

._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us
  %.us-phi39.in = phi ptr [ %.lcssa232831.us, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us ], [ %.lcssa232831, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17 ]
  %.us-phi39 = ptrtoint ptr %.us-phi39.in to i64
  store i64 %.us-phi39, ptr %.sroa.514.0..sroa_idx, align 8, !tbaa !114, !alias.scope !1409
  br label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us
  %.us-phi.in = phi ptr [ %.lcssa232831.us.us, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us ], [ %.lcssa232831.us, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us ], [ %.lcssa232831, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i ]
  %.us-phi = ptrtoint ptr %.us-phi.in to i64
  store i64 %.us-phi, ptr %.sroa.514.0..sroa_idx, align 8, !tbaa !114, !alias.scope !1409
  br label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit

_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, %._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN4CGAL15Filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEppEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !382  ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !140
  %i.d = icmp eq i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  %i.h = load ptr, ptr %0, align 8
  %.fr17 = freeze ptr %i.h
  %i.i = icmp eq ptr %i.b, %.fr17                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 192 ; 4 uses
  %i.r = load i32, ptr %i.e, align 8              ; 4 uses
  br i1 %i.d, label %.split3.us, label %.split3

.split3.us:                                       ; preds = %bb.a
  %.not.us = icmp ne i32 %i.r, %i.m
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE7ccw_mapE, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE6cw_mapE, i64 %i.s ; 2 uses
  %.promoted.i.i.i.us.i.us.us.pre = load ptr, ptr %i.f, align 8, !tbaa !278 ; 2 uses
  br i1 %i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us: ; preds = %.split3.us, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge
  %i.v = phi ptr [ %.be, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge ], [ %.promoted.i.i.i.us.i.us.us.pre, %.split3.us ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 8 uses
  store ptr %i.w, ptr %i.f, align 8, !tbaa !278
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !278
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 3
  switch i32 %i.ab, label %.unreachabledefault [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us.us
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us.us
    i32 1, label %bb.b
    i32 2, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge
  ]

bb.b:                                             ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us
  %i.ac = and i64 %i.z, -4
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !278
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge: ; preds = %bb.b, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us, %.split.us.us, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.us.us
  %.be = phi ptr [ %i.w, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.us.us ], [ %i.ad, %bb.b ], [ %i.w, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us ], [ %i.w, %.split.us.us ]
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us, !llvm.loop !1410

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us.us: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us
  %i.ae = icmp ne ptr %i.w, %i.k
  %brmerge = select i1 %i.ae, i1 true, i1 %.not.us
  br i1 %brmerge, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.us.us, label %.critedge

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.us.us: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us.us
  %i.af = ptrtoint ptr %i.w to i64
  store i64 %i.af, ptr %i.p, align 8, !tbaa !114
  %i.ag = load i32, ptr %i.t, align 4, !tbaa !119
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ah
  %.sroa.0.0.copyload.i.i.i.i.i.us.us = load ptr, ptr %i.ai, align 8, !tbaa !122
  %.sroa.0.0.copyload.i.i.i.i.i.i.us.us = load ptr, ptr %i.q, align 8, !tbaa !122 ; 2 uses
  %i.aj = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.us.us, %.sroa.0.0.copyload.i.i.i.i.i.i.us.us
  br i1 %i.aj, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge, label %.split.us.us

.split.us.us:                                     ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.us.us
  %i.ak = load i32, ptr %i.u, align 4, !tbaa !119
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.al
  %.sroa.0.0.copyload.i3.i.i.i.i.us.us = load ptr, ptr %i.am, align 8, !tbaa !122
  %i.an = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.us.us, %.sroa.0.0.copyload.i.i.i.i.i.i.us.us
  br i1 %i.an, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge, label %.critedge

.unreachabledefault:                              ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us
  unreachable

default.unreachable:                              ; preds = %bb.h, %bb.e, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us
  unreachable

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us: ; preds = %.split3.us, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge
  %i.ao = phi ptr [ %.be55, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge ], [ %.promoted.i.i.i.us.i.us.us.pre, %.split3.us ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56 ; 7 uses
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !278
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !278
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.at, 3
  switch i32 %i.au, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us
    i32 1, label %bb.c
    i32 2, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge
  ]

bb.c:                                             ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us
  %i.av = and i64 %i.as, -4
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  store ptr %i.aw, ptr %i.f, align 8, !tbaa !278
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge: ; preds = %bb.c, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us, %.split.us, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us
  %.be55 = phi ptr [ %i.ap, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us ], [ %i.aw, %bb.c ], [ %i.ap, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us ], [ %i.ap, %.split.us ]
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us, !llvm.loop !1410

.split.us:                                        ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us
  %i.ax = load i32, ptr %i.u, align 4, !tbaa !119
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ay
  %.sroa.0.0.copyload.i3.i.i.i.i.us = load ptr, ptr %i.az, align 8, !tbaa !122
  %i.ba = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.us, %.sroa.0.0.copyload.i.i.i.i.i.i.us
  br i1 %i.ba, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge, label %.critedge

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us
  %i.bb = ptrtoint ptr %i.ap to i64
  store i64 %i.bb, ptr %i.p, align 8, !tbaa !114
  %i.bc = load i32, ptr %i.t, align 4, !tbaa !119
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bd
  %.sroa.0.0.copyload.i.i.i.i.i.us = load ptr, ptr %i.be, align 8, !tbaa !122
  %.sroa.0.0.copyload.i.i.i.i.i.i.us = load ptr, ptr %i.q, align 8, !tbaa !122 ; 2 uses
  %i.bf = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.us, %.sroa.0.0.copyload.i.i.i.i.i.i.us
  br i1 %i.bf, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge, label %.split.us

.split3:                                          ; preds = %bb.a
  br i1 %i.i, label %.split.i.us, label %.split.i

.split.i.us:                                      ; preds = %.split3, %.split.i.us.backedge
  %i.bg = phi i32 [ %.be59, %.split.i.us.backedge ], [ %i.r, %.split3 ] ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 2
  br i1 %i.bh, label %bb.d, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.us

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.us: ; preds = %.split.i.us
  %i.bi = add nsw i32 %i.bg, 1                    ; 3 uses
  store i32 %i.bi, ptr %i.e, align 8, !tbaa !385
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !379 ; 2 uses
  %i.bk = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not2.i.us = icmp eq ptr %i.bk, %i.bj
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  br i1 %.not2.i.us, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit1.us, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.us

bb.d:                                             ; preds = %.split.i.us
  store i32 0, ptr %i.e, align 8, !tbaa !385
  %.promoted.i.i1.i.i.us = load ptr, ptr %i.f, align 8, !tbaa !278
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %i.bm = phi ptr [ %.promoted.i.i1.i.i.us, %bb.d ], [ %.be57, %.backedge ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56 ; 6 uses
  store ptr %i.bn, ptr %i.f, align 8, !tbaa !278
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !278
  %i.bq = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.br = trunc i64 %i.bq to i32
  %i.bs = and i32 %i.br, 3
  switch i32 %i.bs, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.us
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.us
    i32 1, label %bb.f
    i32 2, label %.backedge
  ]

bb.f:                                             ; preds = %bb.e
  %i.bt = and i64 %i.bq, -4
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !278
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.e
  %.be57 = phi ptr [ %i.bn, %bb.e ], [ %i.bu, %bb.f ]
  br label %bb.e, !llvm.loop !45

end_hunk_0
begin_hunk_1_@_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15march_locate_2DENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEERKNS_7Point_2IS1_EERNSE_11Locate_typeERi:bb.a

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0154.0199, i64 32
  br label %bb.af, !llvm.loop !2483

bb.l:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0154.0199, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i128 = load ptr, ptr %i.ax, align 8, !tbaa !144
  %i.ay = icmp eq ptr %.sroa.0.0.copyload.i128, %.sroa.0147.0198
  br i1 %i.ay, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.az = call noundef i32 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_23CartesianKernelFunctors13Orientation_2INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates13Orientation_2INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEEEEEclINS_7Point_2ISP_EES18_S18_EENS_4SignERKT_RKT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(13) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %bb.af, label %bb.n, !llvm.loop !2483

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.bb = call noundef i32 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_23CartesianKernelFunctors13Orientation_2INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates13Orientation_2INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEEEEEclINS_7Point_2ISP_EES18_S18_EENS_4SignERKT_RKT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(13) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0154.0199, i64 40
  br label %bb.af, !llvm.loop !2483

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.be = call noundef i32 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_23CartesianKernelFunctors13Orientation_2INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates13Orientation_2INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEEEEEclINS_7Point_2ISP_EES18_S18_EENS_4SignERKT_RKT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(13) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.af, label %bb.q, !llvm.loop !2483

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.bg = call noundef i32 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_23CartesianKernelFunctors13Orientation_2INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates13Orientation_2INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEEEEEclINS_7Point_2ISP_EES18_S18_EENS_4SignERKT_RKT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(13) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %bb.af, label %.loopexit, !llvm.loop !2483

bb.r:                                             ; preds = %bb.f
  br i1 %i.aq, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.bi = call noundef i32 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_23CartesianKernelFunctors13Orientation_2INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates13Orientation_2INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEEEEEclINS_7Point_2ISP_EES18_S18_EENS_4SignERKT_RKT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(13) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0154.0199, i64 32
  br label %bb.af, !llvm.loop !2483

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.bl = call noundef i32 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_23CartesianKernelFunctors13Orientation_2INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates13Orientation_2INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEEEEEclINS_7Point_2ISP_EES18_S18_EENS_4SignERKT_RKT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(13) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0154.0199, i64 40
  br label %bb.af, !llvm.loop !2483

bb.w:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0154.0199, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i136 = load ptr, ptr %i.bo, align 8, !tbaa !144
  %i.bp = icmp eq ptr %.sroa.0.0.copyload.i136, %.sroa.0147.0198
  br i1 %i.bp, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.bq = call noundef i32 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_23CartesianKernelFunctors13Orientation_2INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates13Orientation_2INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEEEEEclINS_7Point_2ISP_EES18_S18_EENS_4SignERKT_RKT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(13) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.br = icmp eq i32 %i.bq, -1
  br i1 %i.br, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0154.0199, i64 40
  br label %bb.af, !llvm.loop !2483

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.bt = call noundef i32 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_23CartesianKernelFunctors13Orientation_2INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates13Orientation_2INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEEEEEclINS_7Point_2ISP_EES18_S18_EENS_4SignERKT_RKT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.bu = icmp eq i32 %i.bt, -1
  br i1 %i.bu, label %bb.af, label %.loopexit, !llvm.loop !2483

bb.aa:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bv = call noundef i32 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_23CartesianKernelFunctors13Orientation_2INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates13Orientation_2INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEEEEEclINS_7Point_2ISP_EES18_S18_EENS_4SignERKT_RKT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(13) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.bw = icmp eq i32 %i.bv, -1
  br i1 %i.bw, label %bb.af, label %bb.ab, !llvm.loop !2483

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bx = call noundef i32 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_23CartesianKernelFunctors13Orientation_2INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates13Orientation_2INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEEEEEclINS_7Point_2ISP_EES18_S18_EENS_4SignERKT_RKT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(13) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.by = icmp eq i32 %i.bx, -1
  br i1 %i.by, label %bb.af, label %.loopexit, !llvm.loop !2483

.loopexit:                                        ; preds = %bb.ab, %bb.z, %bb.u, %bb.q, %bb.n, %bb.j, %bb.d
  %.sroa.0154.0199.lcssa209 = phi ptr [ %1, %bb.d ], [ %.sroa.0154.0199, %bb.j ], [ %.sroa.0154.0199, %bb.n ], [ %.sroa.0154.0199, %bb.q ], [ %.sroa.0154.0199, %bb.u ], [ %.sroa.0154.0199, %bb.z ], [ %.sroa.0154.0199, %bb.ab ] ; 4 uses
  %.0101 = phi i32 [ %i.q, %bb.d ], [ %i.bx, %bb.ab ], [ 1, %bb.z ], [ %i.bi, %bb.u ], [ %i.be, %bb.q ], [ 1, %bb.n ], [ %i.au, %bb.j ]
  %.0100 = phi i32 [ %i.o, %bb.d ], [ %i.bv, %bb.ab ], [ %i.bt, %bb.z ], [ 1, %bb.u ], [ %i.bg, %bb.q ], [ %i.az, %bb.n ], [ 1, %bb.j ]
  %.099 = phi i32 [ %i.m, %bb.d ], [ 1, %bb.ab ], [ %i.bq, %bb.z ], [ %i.bl, %bb.u ], [ 1, %bb.q ], [ %i.bb, %bb.n ], [ %i.ar, %bb.j ]
  %i.bz = icmp eq i32 %.099, 0                    ; 3 uses
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %.0100, 0                   ; 2 uses
  %i.cc = zext i1 %i.cb to i32                    ; 2 uses
  %i.cd = icmp eq i32 %.0101, 0
  %i.ce = zext i1 %i.cd to i32
  %i.cf = add nuw nsw i32 %i.cc, %i.ce
  %i.cg = add nuw nsw i32 %i.cf, %i.ca
  switch i32 %i.cg, label %.thread [
    i32 0, label %bb.ac
    i32 1, label %bb.ad
    i32 2, label %bb.ae
  ]

bb.ac:                                            ; preds = %.loopexit
  store i32 2, ptr %3, align 4, !tbaa !149
  br label %.thread.sink.split

bb.ad:                                            ; preds = %.loopexit
  store i32 1, ptr %3, align 4, !tbaa !149
  %not. = xor i1 %i.cb, true
  %i.ch = zext i1 %not. to i32
  %i.ci = select i1 %i.bz, i32 2, i32 %i.ch
  br label %.thread.sink.split

bb.ae:                                            ; preds = %.loopexit
  store i32 0, ptr %3, align 4, !tbaa !149
  %i.cj = select i1 %i.bz, i32 %i.cc, i32 2
  br label %.thread.sink.split

bb.af:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.q, %bb.p, %bb.m, %bb.y, %bb.v, %bb.t, %bb.o, %bb.k, %bb.i
  %.sroa.0154.1.in = phi ptr [ %i.bo, %bb.ab ], [ %i.bd, %bb.o ], [ %i.ap, %bb.m ], [ %i.ax, %bb.p ], [ %i.bk, %bb.t ], [ %i.bn, %bb.v ], [ %i.bs, %bb.y ], [ %i.ap, %bb.q ], [ %i.ap, %bb.z ], [ %i.ap, %bb.aa ], [ %i.at, %bb.i ], [ %i.aw, %bb.k ]
  %.sroa.0154.1 = load ptr, ptr %.sroa.0154.1.in, align 8, !tbaa !144 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !151 ; 4 uses
  %i.ck = load ptr, ptr %.sroa.0154.1, align 8, !tbaa !169 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %.sroa.0.0.copyload.i.i ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0154.1, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.co = icmp eq ptr %i.cn, %.sroa.0.0.copyload.i.i
  %or.cond.i.i = select i1 %i.cl, i1 true, i1 %i.co
  br i1 %or.cond.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit, !llvm.loop !2484

.thread.sink.split:                               ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread.thread, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread, %bb.ae, %bb.ad, %bb.ac
  %.sink255 = phi i32 [ 4, %bb.ac ], [ %i.ci, %bb.ad ], [ %i.cj, %bb.ae ], [ %..i247, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread.thread ], [ %spec.select, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread ]
  %.sroa.0154.0193.ph = phi ptr [ %.sroa.0154.0199.lcssa209, %bb.ac ], [ %.sroa.0154.0199.lcssa209, %bb.ad ], [ %.sroa.0154.0199.lcssa209, %bb.ae ], [ %.sroa.0154.0.lcssa194.ph, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread.thread ], [ %.sroa.0154.0.lcssa194, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread ]
  store i32 %.sink255, ptr %4, align 4, !tbaa !119
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.loopexit
  %.sroa.0154.0193 = phi ptr [ %.sroa.0154.0199.lcssa209, %.loopexit ], [ %.sroa.0154.0193.ph, %.thread.sink.split ]
  ret ptr %.sroa.0154.0193
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE18finite_edges_beginEv(ptr dead_on_unwind noalias writable sret(%"struct.CGAL::Filter_iterator.697") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2506)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !519, !noalias !2507 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.f, align 8, !alias.scope !2506
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !2506
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2506
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2506
  store ptr %i.a, ptr %0, align 8, !alias.scope !2506
  %.sroa.54.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %.sroa.54.0..sroa_idx5.i, align 8, !alias.scope !2506
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx7.i, align 8, !alias.scope !2506
  %.sroa.7.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.7.0..sroa_idx9.i, align 8, !alias.scope !2506
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = ptrtoint ptr %1 to i64
  store i64 %i.h, ptr %i.g, align 8, !tbaa !2508, !alias.scope !2509
  br label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !519, !noalias !2510 ; 9 uses
  %i.k = icmp eq i32 %i.b, 1                      ; 3 uses
  %spec.store.select.i.i.i = select i1 %i.k, i32 2, i32 0 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !523, !noalias !2511
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !524, !noalias !2511 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !460, !noalias !2511
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 3
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %.preheader.i.i.i.i.i, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.e, %.preheader.i.i.i.i.i.backedge
  %i.x = phi ptr [ %.be123, %.preheader.i.i.i.i.i.backedge ], [ %i.r, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !460, !noalias !2511
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 3
  switch i32 %i.ad, label %.preheader.i.i.i.i.i.unreachabledefault [
    i32 0, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i
    i32 3, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i
    i32 1, label %bb.f
    i32 2, label %.preheader.i.i.i.i.i.backedge
  ]

bb.f:                                             ; preds = %.preheader.i.i.i.i.i
  %i.ae = and i64 %i.ab, -4
  %i.af = inttoptr i64 %i.ae to ptr
  br label %.preheader.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.backedge:                    ; preds = %bb.f, %.preheader.i.i.i.i.i
  %.be123 = phi ptr [ %i.af, %bb.f ], [ %i.y, %.preheader.i.i.i.i.i ]
  br label %.preheader.i.i.i.i.i, !llvm.loop !78

.preheader.i.i.i.i.i.unreachabledefault:          ; preds = %.preheader.i.i.i.i.i
  unreachable

default.unreachable:                              ; preds = %.preheader, %bb.n, %.split.us.i.i.i.us.us, %.split.us.i.i.i.us
  unreachable

_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i: ; preds = %.preheader.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.c, %bb.e, %bb.d
  %i.ag = phi ptr [ %i.j, %bb.c ], [ null, %bb.d ], [ %i.r, %bb.e ], [ %i.y, %.preheader.i.i.i.i.i ], [ %i.y, %.preheader.i.i.i.i.i ] ; 5 uses
  br i1 %i.k, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i
  %.not57.i.i.i = icmp eq ptr %i.ag, %i.j
  br i1 %.not57.i.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i: ; preds = %bb.g, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i
  %.sroa.2.0 = phi ptr [ %.sroa.2.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ], [ %i.ag, %bb.g ] ; 2 uses
  %.sroa.64.0 = phi i32 [ %.sroa.64.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ], [ 0, %bb.g ] ; 4 uses
  %i.ah = phi ptr [ %i.ax, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ], [ %i.ag, %bb.g ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = zext nneg i32 %.sroa.64.0 to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !144, !noalias !2511
  %i.al = icmp ugt ptr %.sroa.0.0.copyload.i.i.i.i.i, %i.ah
  br i1 %i.al, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i
  %i.am = icmp eq i32 %.sroa.64.0, 2
  br i1 %i.am, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.h, %.preheader.backedge
  %i.an = phi ptr [ %.be121, %.preheader.backedge ], [ %i.ah, %bb.h ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !460, !noalias !2511
  %i.ar = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 3
  switch i32 %i.at, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i
    i32 1, label %bb.i
    i32 2, label %.preheader.backedge
  ]

bb.i:                                             ; preds = %.preheader
  %i.au = and i64 %i.ar, -4
  %i.av = inttoptr i64 %i.au to ptr
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.i, %.preheader
  %.be121 = phi ptr [ %i.av, %bb.i ], [ %i.ao, %.preheader ]
  br label %.preheader, !llvm.loop !78

bb.j:                                             ; preds = %bb.h
  %i.aw = add nuw nsw i32 %.sroa.64.0, 1
  br label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i: ; preds = %.preheader, %.preheader, %bb.j
  %.sroa.2.1 = phi ptr [ %.sroa.2.0, %bb.j ], [ %i.ao, %.preheader ], [ %i.ao, %.preheader ] ; 2 uses
  %.sroa.64.1 = phi i32 [ %i.aw, %bb.j ], [ 0, %.preheader ], [ 0, %.preheader ] ; 2 uses
  %i.ax = phi ptr [ %i.ah, %bb.j ], [ %i.ao, %.preheader ], [ %i.ao, %.preheader ] ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ax, %i.j
  br i1 %.not5.i.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i, !llvm.loop !2501

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i, %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i, %bb.g
  %.sroa.2.2 = phi ptr [ %i.ag, %bb.g ], [ %i.ag, %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i ], [ %.sroa.2.0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i ], [ %.sroa.2.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ] ; 5 uses
  %.sroa.64.2 = phi i32 [ 0, %bb.g ], [ 2, %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i ], [ %.sroa.64.0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i ], [ %.sroa.64.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2512)
  store ptr %i.a, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %spec.store.select.i.i.i, ptr %.sroa.611.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.ay, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store ptr %.sroa.2.2, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr null, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 %.sroa.64.2, ptr %.sroa.615.0..sroa_idx, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = ptrtoint ptr %1 to i64
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !2508, !alias.scope !2512
  %i.bb = icmp eq ptr %.sroa.2.2, %i.j
  %.not.i.i29 = icmp eq i32 %.sroa.64.2, %spec.store.select.i.i.i
  %.not.i.i.us.fr = freeze i1 %.not.i.i29         ; 2 uses
  %or.cond.i.i30 = and i1 %i.bb, %.not.i.i.us.fr
  br i1 %or.cond.i.i30, label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !151, !noalias !2512 ; 6 uses
  br i1 %i.k, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph
  %i.bd = zext nneg i32 %.sroa.64.2 to i64        ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE7ccw_mapE, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !119, !noalias !2512
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE6cw_mapE, i64 %i.bd ; 2 uses
  br i1 %.not.i.i.us.fr, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us.us
  %.lcssa232831.us.us = phi ptr [ %i.bp, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us.us ], [ %.sroa.2.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us ] ; 4 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %.lcssa232831.us.us, i64 %i.bg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.us = load ptr, ptr %i.bi, align 8, !tbaa !151, !noalias !2512
  %i.bj = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.bj, label %.split.us.i.i.i.us.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !119, !noalias !2512
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %.lcssa232831.us.us, i64 %i.bl
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us.us = load ptr, ptr %i.bm, align 8, !tbaa !151, !noalias !2512
  %i.bn = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.bn, label %.split.us.i.i.i.us.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge

.split.us.i.i.i.us.us.preheader:                  ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us
  br label %.split.us.i.i.i.us.us

.split.us.i.i.i.us.us:                            ; preds = %.split.us.i.i.i.us.us.backedge, %.split.us.i.i.i.us.us.preheader
  %i.bo = phi ptr [ %.lcssa232831.us.us, %.split.us.i.i.i.us.us.preheader ], [ %.be109, %.split.us.i.i.i.us.us.backedge ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !460, !noalias !2512
  %i.bs = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = and i32 %i.bt, 3
  switch i32 %i.bu, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us.us
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us.us
    i32 1, label %bb.k
    i32 2, label %.split.us.i.i.i.us.us.backedge
  ]

bb.k:                                             ; preds = %.split.us.i.i.i.us.us
  %i.bv = and i64 %i.bs, -4
  %i.bw = inttoptr i64 %i.bv to ptr
  br label %.split.us.i.i.i.us.us.backedge

.split.us.i.i.i.us.us.backedge:                   ; preds = %bb.k, %.split.us.i.i.i.us.us
  %.be109 = phi ptr [ %i.bp, %.split.us.i.i.i.us.us ], [ %i.bw, %bb.k ]
  br label %.split.us.i.i.i.us.us, !llvm.loop !78

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us.us: ; preds = %.split.us.i.i.i.us.us, %.split.us.i.i.i.us.us
  store ptr %i.bp, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !460, !alias.scope !2512
  br label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us
  %.lcssa232831.us = phi ptr [ %i.ce, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us ], [ %.sroa.2.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us ] ; 5 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %.lcssa232831.us, i64 %i.bg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.us = load ptr, ptr %i.bx, align 8, !tbaa !151, !noalias !2512
  %i.by = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.by, label %.split.us.i.i.i.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us
  %i.bz = load i32, ptr %i.bh, align 4, !tbaa !119, !noalias !2512
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %.lcssa232831.us, i64 %i.ca
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us = load ptr, ptr %i.cb, align 8, !tbaa !151, !noalias !2512
  %i.cc = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.cc, label %.split.us.i.i.i.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge

.split.us.i.i.i.us.preheader:                     ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us
  br label %.split.us.i.i.i.us

.split.us.i.i.i.us:                               ; preds = %.split.us.i.i.i.us.backedge, %.split.us.i.i.i.us.preheader
  %i.cd = phi ptr [ %.lcssa232831.us, %.split.us.i.i.i.us.preheader ], [ %.be, %.split.us.i.i.i.us.backedge ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !460, !noalias !2512
  %i.ch = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 3
  switch i32 %i.cj, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us
    i32 1, label %bb.l
    i32 2, label %.split.us.i.i.i.us.backedge
  ]

bb.l:                                             ; preds = %.split.us.i.i.i.us
  %i.ck = and i64 %i.ch, -4
  %i.cl = inttoptr i64 %i.ck to ptr
  br label %.split.us.i.i.i.us.backedge

.split.us.i.i.i.us.backedge:                      ; preds = %bb.l, %.split.us.i.i.i.us
  %.be = phi ptr [ %i.ce, %.split.us.i.i.i.us ], [ %i.cl, %bb.l ]
  br label %.split.us.i.i.i.us, !llvm.loop !78

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us: ; preds = %.split.us.i.i.i.us, %.split.us.i.i.i.us
  store ptr %i.ce, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !460, !alias.scope !2512
  %i.cm = icmp eq ptr %i.ce, %i.j
  br i1 %i.cm, label %._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us, !llvm.loop !2504

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17
  %.pre7.i4.i32 = phi i32 [ %.pre7.i3.i.ph, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17 ], [ %.sroa.64.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph ] ; 2 uses
  %.lcssa232831 = phi ptr [ %.lcssa2326, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17 ], [ %.sroa.2.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph ] ; 7 uses
  %i.cn = zext nneg i32 %.pre7.i4.i32 to i64      ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE7ccw_mapE, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !119, !noalias !2512
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %.lcssa232831, i64 %i.cq
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.cr, align 8, !tbaa !151, !noalias !2512
  %i.cs = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.cs, label %.split.i.i.i.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE6cw_mapE, i64 %i.cn
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !119, !noalias !2512
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %.lcssa232831, i64 %i.cv
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i = load ptr, ptr %i.cw, align 8, !tbaa !151, !noalias !2512
  %i.cx = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.cx, label %.split.i.i.i.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge

.split.i.i.i.preheader:                           ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.split.i.i.i.preheader, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1
  %.lcssa2327 = phi ptr [ %.lcssa2324, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %.lcssa232831, %.split.i.i.i.preheader ] ; 2 uses
  %.promoted.i.i1.i.i.i.i = phi ptr [ %.promoted.i.i1.i.i8.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %.lcssa232831, %.split.i.i.i.preheader ] ; 2 uses
  %i.cy = phi ptr [ %i.dl, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %.lcssa232831, %.split.i.i.i.preheader ] ; 2 uses
  %i.cz = phi i32 [ %i.dm, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %.pre7.i4.i32, %.split.i.i.i.preheader ] ; 2 uses
  %i.da = icmp eq i32 %i.cz, 2
  br i1 %i.da, label %bb.m, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i

bb.m:                                             ; preds = %.split.i.i.i
  store i32 0, ptr %.sroa.615.0..sroa_idx, align 8, !tbaa !525, !alias.scope !2512
  br label %bb.n

bb.n:                                             ; preds = %.backedge, %bb.m
  %i.db = phi ptr [ %.promoted.i.i1.i.i.i.i, %bb.m ], [ %.be114, %.backedge ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 56 ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !460, !noalias !2512
  %i.df = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dg = trunc i64 %i.df to i32
  %i.dh = and i32 %i.dg, 3
  switch i32 %i.dh, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i
    i32 1, label %bb.o
    i32 2, label %.backedge
  ]

bb.o:                                             ; preds = %bb.n
  %i.di = and i64 %i.df, -4
  %i.dj = inttoptr i64 %i.di to ptr
  br label %.backedge

.backedge:                                        ; preds = %bb.o, %bb.n
  %.be114 = phi ptr [ %i.dc, %bb.n ], [ %i.dj, %bb.o ]
  br label %bb.n, !llvm.loop !78

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i: ; preds = %bb.n, %bb.n
  store ptr %i.dc, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !460, !alias.scope !2512
  %.not3.i.i.i = icmp eq ptr %i.dc, %i.j
  br i1 %.not3.i.i.i, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i: ; preds = %.split.i.i.i
  %i.dk = add nuw nsw i32 %i.cz, 1                ; 3 uses
  store i32 %i.dk, ptr %.sroa.615.0..sroa_idx, align 8, !tbaa !525, !alias.scope !2512
  %.not2.i.i.i = icmp eq ptr %i.cy, %i.j
  br i1 %.not2.i.i.i, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i
  %.lcssa2324 = phi ptr [ %i.dc, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %.lcssa2327, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 2 uses
  %.promoted.i.i1.i.i8.i.i = phi ptr [ %i.dc, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %.promoted.i.i1.i.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ]
  %i.dl = phi ptr [ %i.dc, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.cy, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 3 uses
  %i.dm = phi i32 [ 0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.dk, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.do = zext nneg i32 %i.dm to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do
  %.sroa.0.0.copyload.i.i.i.i.i2 = load ptr, ptr %i.dp, align 8, !tbaa !144, !noalias !2512
  %i.dq = icmp ugt ptr %.sroa.0.0.copyload.i.i.i.i.i2, %i.dl
  br i1 %i.dq, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17, label %.split.i.i.i, !llvm.loop !2505

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1
  %.lcssa2326 = phi ptr [ %i.dc, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %.lcssa2324, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %.lcssa2327, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 2 uses
  %.pre7.i3.i.ph = phi i32 [ 0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.dm, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.dk, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 2 uses
  %i.dr = icmp eq ptr %.lcssa2326, %i.j
  %.not.i.i = icmp eq i32 %.pre7.i3.i.ph, %spec.store.select.i.i.i
  %or.cond.i.i = select i1 %i.dr, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i, !llvm.loop !2504

._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us
  %.us-phi39.in = phi ptr [ %.lcssa232831.us, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us ], [ %.lcssa232831, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17 ]
  %.us-phi39 = ptrtoint ptr %.us-phi39.in to i64
  store i64 %.us-phi39, ptr %.sroa.514.0..sroa_idx, align 8, !tbaa !144, !alias.scope !2512
  br label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us
  %.us-phi.in = phi ptr [ %.lcssa232831.us.us, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us ], [ %.lcssa232831.us, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us ], [ %.lcssa232831, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i ]
  %.us-phi = ptrtoint ptr %.us-phi.in to i64
  store i64 %.us-phi, ptr %.sroa.514.0..sroa_idx, align 8, !tbaa !144, !alias.scope !2512
  br label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit

_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, %._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN4CGAL15Filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEppEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !522  ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !167
  %i.d = icmp eq i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  %i.h = load ptr, ptr %0, align 8
  %.fr17 = freeze ptr %i.h
  %i.i = icmp eq ptr %i.b, %.fr17                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 192 ; 4 uses
  %i.r = load i32, ptr %i.e, align 8              ; 4 uses
  br i1 %i.d, label %.split3.us, label %.split3

.split3.us:                                       ; preds = %bb.a
  %.not.us = icmp ne i32 %i.r, %i.m
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE7ccw_mapE, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE6cw_mapE, i64 %i.s ; 2 uses
  %.promoted.i.i.i.us.i.us.us.pre = load ptr, ptr %i.f, align 8, !tbaa !460 ; 2 uses
  br i1 %i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us: ; preds = %.split3.us, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge
  %i.v = phi ptr [ %.be, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge ], [ %.promoted.i.i.i.us.i.us.us.pre, %.split3.us ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 8 uses
  store ptr %i.w, ptr %i.f, align 8, !tbaa !460
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !460
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 3
  switch i32 %i.ab, label %.unreachabledefault [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us.us
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us.us
    i32 1, label %bb.b
    i32 2, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge
  ]

bb.b:                                             ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us
  %i.ac = and i64 %i.z, -4
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !460
  br label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge: ; preds = %bb.b, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us, %.split.us.us, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.us.us
  %.be = phi ptr [ %i.w, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.us.us ], [ %i.ad, %bb.b ], [ %i.w, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us ], [ %i.w, %.split.us.us ]
  br label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us, !llvm.loop !2513

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us.us: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us
  %i.ae = icmp ne ptr %i.w, %i.k
  %brmerge = select i1 %i.ae, i1 true, i1 %.not.us
  br i1 %brmerge, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.us.us, label %.critedge

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.us.us: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us.us
  %i.af = ptrtoint ptr %i.w to i64
  store i64 %i.af, ptr %i.p, align 8, !tbaa !144
  %i.ag = load i32, ptr %i.t, align 4, !tbaa !119
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ah
  %.sroa.0.0.copyload.i.i.i.i.i.us.us = load ptr, ptr %i.ai, align 8, !tbaa !151
  %.sroa.0.0.copyload.i.i.i.i.i.i.us.us = load ptr, ptr %i.q, align 8, !tbaa !151 ; 2 uses
  %i.aj = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.us.us, %.sroa.0.0.copyload.i.i.i.i.i.i.us.us
  br i1 %i.aj, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge, label %.split.us.us

.split.us.us:                                     ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.us.us
  %i.ak = load i32, ptr %i.u, align 4, !tbaa !119
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.al
  %.sroa.0.0.copyload.i3.i.i.i.i.us.us = load ptr, ptr %i.am, align 8, !tbaa !151
  %i.an = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.us.us, %.sroa.0.0.copyload.i.i.i.i.i.i.us.us
  br i1 %i.an, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge, label %.critedge

.unreachabledefault:                              ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us
  unreachable

default.unreachable:                              ; preds = %bb.h, %bb.e, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us
  unreachable

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us: ; preds = %.split3.us, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge
  %i.ao = phi ptr [ %.be55, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge ], [ %.promoted.i.i.i.us.i.us.us.pre, %.split3.us ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56 ; 7 uses
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !460
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !460
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.at, 3
  switch i32 %i.au, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us
    i32 1, label %bb.c
    i32 2, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge
  ]

bb.c:                                             ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us
  %i.av = and i64 %i.as, -4
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  store ptr %i.aw, ptr %i.f, align 8, !tbaa !460
  br label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge: ; preds = %bb.c, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us, %.split.us, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us
  %.be55 = phi ptr [ %i.ap, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us ], [ %i.aw, %bb.c ], [ %i.ap, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us ], [ %i.ap, %.split.us ]
  br label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us, !llvm.loop !2513

.split.us:                                        ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us
  %i.ax = load i32, ptr %i.u, align 4, !tbaa !119
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ay
  %.sroa.0.0.copyload.i3.i.i.i.i.us = load ptr, ptr %i.az, align 8, !tbaa !151
  %i.ba = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.us, %.sroa.0.0.copyload.i.i.i.i.i.i.us
  br i1 %i.ba, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge, label %.critedge

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us
  %i.bb = ptrtoint ptr %i.ap to i64
  store i64 %i.bb, ptr %i.p, align 8, !tbaa !144
  %i.bc = load i32, ptr %i.t, align 4, !tbaa !119
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bd
  %.sroa.0.0.copyload.i.i.i.i.i.us = load ptr, ptr %i.be, align 8, !tbaa !151
  %.sroa.0.0.copyload.i.i.i.i.i.i.us = load ptr, ptr %i.q, align 8, !tbaa !151 ; 2 uses
  %i.bf = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.us, %.sroa.0.0.copyload.i.i.i.i.i.i.us
  br i1 %i.bf, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge, label %.split.us

.split3:                                          ; preds = %bb.a
  br i1 %i.i, label %.split.i.us, label %.split.i

.split.i.us:                                      ; preds = %.split3, %.split.i.us.backedge
  %i.bg = phi i32 [ %.be59, %.split.i.us.backedge ], [ %i.r, %.split3 ] ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 2
  br i1 %i.bh, label %bb.d, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.us

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.us: ; preds = %.split.i.us
  %i.bi = add nsw i32 %i.bg, 1                    ; 3 uses
  store i32 %i.bi, ptr %i.e, align 8, !tbaa !525
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !519 ; 2 uses
  %i.bk = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not2.i.us = icmp eq ptr %i.bk, %i.bj
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  br i1 %.not2.i.us, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit1.us, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.us

bb.d:                                             ; preds = %.split.i.us
  store i32 0, ptr %i.e, align 8, !tbaa !525
  %.promoted.i.i1.i.i.us = load ptr, ptr %i.f, align 8, !tbaa !460
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %i.bm = phi ptr [ %.promoted.i.i1.i.i.us, %bb.d ], [ %.be57, %.backedge ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56 ; 6 uses
  store ptr %i.bn, ptr %i.f, align 8, !tbaa !460
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !460
  %i.bq = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.br = trunc i64 %i.bq to i32
  %i.bs = and i32 %i.br, 3
  switch i32 %i.bs, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.us
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.us
    i32 1, label %bb.f
    i32 2, label %.backedge
  ]

bb.f:                                             ; preds = %bb.e
  %i.bt = and i64 %i.bq, -4
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !460
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.e
  %.be57 = phi ptr [ %i.bn, %bb.e ], [ %i.bu, %bb.f ]
  br label %bb.e, !llvm.loop !78

end_hunk_1
