Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/order_facets_around_edge?download=true
inline.NumInlined: 10252
inline.NumDeleted: 2796
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb:bb.a
bb.cg:                                            ; preds = %bb.bz
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ky

bb.ch:                                            ; preds = %bb.ca
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.kx

bb.ci:                                            ; preds = %bb.cb
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.kw

bb.cj:                                            ; preds = %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Plane_3IS4_EE.exit.i.i, %bb.cf
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.kv

bb.ck:                                            ; preds = %bb.ce
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hp) #22
  br label %bb.kv

bb.cl:                                            ; preds = %.split, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  %.not1046 = icmp eq ptr %i.b, %i.c              ; 3 uses
  br i1 %.not1046, label %._crit_edge1003.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cl
  %i.hv = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %57, i64 16
  br label %bb.cm

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEERS3_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.hx = getelementptr inbounds nuw i8, ptr %16, i64 32
  %.sroa.4.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.5.0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.hz = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.ia = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 3 uses
  br label %bb.cw

bb.cm:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEERS3_DpOT_.exit
  %.0190987 = phi i64 [ 0, %.lr.ph ], [ %i.ji, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEERS3_DpOT_.exit ] ; 2 uses
  %i.ii = load ptr, ptr %4, align 8, !tbaa !92
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.0190987
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !98
  %i.il = call i32 @llvm.abs.i32(i32 %i.ik, i1 true)
  %i.im = load ptr, ptr %1, align 8, !tbaa !100
  %i.in = zext nneg i32 %i.il to i64
  %i.io = getelementptr [4 x i8], ptr %i.im, i64 %i.in
  %i.ip = getelementptr i8, ptr %i.io, i64 -4     ; 3 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !98 ; 3 uses
  %.not.i316 = icmp eq i32 %i.iq, %i.fs
  %.not10.i317 = icmp eq i32 %i.iq, %i.ft
  %or.cond783 = or i1 %.not.i316, %.not10.i317
  br i1 %or.cond783, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ir = sext i32 %i.iq to i64
  br label %bb.cs

bb.co:                                            ; preds = %bb.cm
  %i.is = load i64, ptr %i.fn, align 8, !tbaa !101 ; 2 uses
  %i.it = getelementptr [4 x i8], ptr %i.ip, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !98 ; 3 uses
  %.not11.i319 = icmp eq i32 %i.iu, %i.fs
  %.not12.i320 = icmp eq i32 %i.iu, %i.ft
  %or.cond784 = or i1 %.not11.i319, %.not12.i320
  br i1 %or.cond784, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.iv = sext i32 %i.iu to i64
  br label %bb.cs

bb.cq:                                            ; preds = %bb.co
  %.idx.i321 = shl i64 %i.is, 3
  %i.iw = getelementptr i8, ptr %i.ip, i64 %.idx.i321
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !98 ; 3 uses
  %.not13.i322 = icmp eq i32 %i.ix, %i.fs
  br i1 %.not13.i322, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.not14.i323 = icmp eq i32 %i.ix, %i.ft
  %narrow.i324 = select i1 %.not14.i323, i32 -1, i32 %i.ix
  %spec.select.i325 = sext i32 %narrow.i324 to i64
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cn, %bb.cp, %bb.cq, %bb.cr
  %.0.i318 = phi i64 [ %i.ir, %bb.cn ], [ %i.iv, %bb.cp ], [ -1, %bb.cq ], [ %spec.select.i325, %bb.cr ]
  %i.iy = load ptr, ptr %0, align 8, !tbaa !81
  %i.iz = getelementptr [16 x i8], ptr %i.iy, i64 %.0.i318 ; 4 uses
  %i.ja = load i64, ptr %i.gc, align 8, !tbaa !82 ; 2 uses
  %i.jb = getelementptr [16 x i8], ptr %i.iz, i64 %i.ja ; 2 uses
  %.idx794 = shl i64 %i.ja, 5
  %i.jc = getelementptr i8, ptr %i.iz, i64 %.idx794 ; 2 uses
  %i.jd = load ptr, ptr %i.hv, align 8, !tbaa !131 ; 3 uses
  %i.je = load ptr, ptr %i.hw, align 8, !tbaa !132
  %.not.i327 = icmp eq ptr %i.jd, %i.je
  br i1 %.not.i327, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %19, ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(9) %i.iz, ptr noundef nonnull align 8 dereferenceable(9) %i.jb, ptr noundef nonnull align 8 dereferenceable(9) %i.jc)
          to label %.noexc328 unwind label %bb.cv

.noexc328:                                        ; preds = %bb.ct
  %i.jf = load ptr, ptr %19, align 8, !tbaa !85
  store ptr %i.jf, ptr %i.jd, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.jg = load ptr, ptr %i.hv, align 8, !tbaa !131
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store ptr %i.jh, ptr %i.hv, align 8, !tbaa !131
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEERS3_DpOT_.exit

bb.cu:                                            ; preds = %bb.cs
  invoke void @_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE17_M_realloc_insertIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %57, ptr %i.jd, ptr noundef nonnull align 8 dereferenceable(9) %i.iz, ptr noundef nonnull align 8 dereferenceable(9) %i.jb, ptr noundef nonnull align 8 dereferenceable(9) %i.jc)
          to label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEERS3_DpOT_.exit unwind label %bb.cv

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEERS3_DpOT_.exit: ; preds = %bb.cu, %.noexc328
  %i.ji = add nuw i64 %.0190987, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ji, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.cm, !llvm.loop !370

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ku

._crit_edge1003.critedge:                         ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false)
  br label %._crit_edge1003

._crit_edge1003:                                  ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %._crit_edge1003.critedge
  %.sroa.0711.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.0711.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12716.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.12716.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %.sroa.0702.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.0702.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12707.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.12707.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %.sroa.0693.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.0693.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12698.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.12698.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %.sroa.0685.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.0685.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  br i1 %6, label %bb.ew, label %bb.fs

bb.cw:                                            ; preds = %._crit_edge, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %storemerge1000 = phi i64 [ 0, %._crit_edge ], [ %i.qx, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 11 uses
  %.sroa.12.0999 = phi ptr [ null, %._crit_edge ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9689.0998 = phi ptr [ null, %._crit_edge ], [ %.sroa.9689.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0685.0997 = phi ptr [ null, %._crit_edge ], [ %.sroa.0685.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %.sroa.12698.0996 = phi ptr [ null, %._crit_edge ], [ %.sroa.12698.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9697.0995 = phi ptr [ null, %._crit_edge ], [ %.sroa.9697.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0693.0994 = phi ptr [ null, %._crit_edge ], [ %.sroa.0693.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %.sroa.12707.0993 = phi ptr [ null, %._crit_edge ], [ %.sroa.12707.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9706.0992 = phi ptr [ null, %._crit_edge ], [ %.sroa.9706.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0702.0991 = phi ptr [ null, %._crit_edge ], [ %.sroa.0702.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %.sroa.12716.0990 = phi ptr [ null, %._crit_edge ], [ %.sroa.12716.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9715.0989 = phi ptr [ null, %._crit_edge ], [ %.sroa.9715.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0711.0988 = phi ptr [ null, %._crit_edge ], [ %.sroa.0711.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %i.jk = load ptr, ptr %4, align 8, !tbaa !92
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %storemerge1000
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !98 ; 8 uses
  %i.jn = load ptr, ptr %57, align 8, !tbaa !133
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %storemerge1000 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.jp = load ptr, ptr %56, align 8, !tbaa !85
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 80
  %i.jr = load atomic ptr, ptr %i.jq acquire, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %68 = load <8 x double>, ptr %i.jr, align 16, !tbaa !86, !noalias !397 ; 2 uses
  %69 = fneg <8 x double> %68                     ; 5 uses
  %70 = shufflevector <8 x double> %69, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %71 = shufflevector <8 x double> %68, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.js = fcmp oeq <4 x double> %71, %70
  %i.jt = freeze <4 x i1> %i.js
  %i.ju = bitcast <4 x i1> %i.jt to i4
  %i.jv = icmp eq i4 %i.ju, -1
  br i1 %i.jv, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jw = invoke noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %18, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %bb.dd unwind label %.loopexit

bb.cy:                                            ; preds = %bb.cw
  %i.jx = extractelement <8 x double> %69, i64 0
  store double %i.jx, ptr %16, align 8, !alias.scope !397
  %i.jy = extractelement <8 x double> %69, i64 2
  store double %i.jy, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !397
  %i.jz = extractelement <8 x double> %69, i64 4
  store double %i.jz, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !397
  %i.ka = extractelement <8 x double> %69, i64 6
  store double %i.ka, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !397
  store i8 1, ptr %i.hx, align 8, !tbaa !138, !alias.scope !397
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.kb = load ptr, ptr %i.jo, align 8, !tbaa !85 ; 6 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !86, !noalias !398
  %i.kf = load double, ptr %i.kc, align 16, !tbaa !86, !noalias !398
  %i.kg = fneg double %i.kf                       ; 2 uses
  %i.kh = fcmp oeq double %i.ke, %i.kg
  br i1 %i.kh, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 40
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !86, !noalias !398
  %i.kl = load double, ptr %i.ki, align 16, !tbaa !86, !noalias !398
  %i.km = fneg double %i.kl                       ; 2 uses
  %i.kn = fcmp oeq double %i.kk, %i.km
  br i1 %i.kn, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kb, i64 56
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !86, !noalias !398
  %i.kr = load double, ptr %i.ko, align 16, !tbaa !86, !noalias !398
  %i.ks = fneg double %i.kr                       ; 2 uses
  %i.kt = fcmp oeq double %i.kq, %i.ks
  br i1 %i.kt, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cy
  %i.ku = invoke noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %18, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %.noexc347 unwind label %.loopexit

bb.dc:                                            ; preds = %bb.da
  store double %i.kg, ptr %17, align 8, !alias.scope !398
  store double %i.km, ptr %.sroa.4.0..sroa_idx.i7.i.i, align 8, !alias.scope !398
  store double %i.ks, ptr %.sroa.5.0..sroa_idx.i8.i.i, align 8, !alias.scope !398
  store i8 1, ptr %i.hy, align 8, !tbaa !145, !alias.scope !399
  %i.kv = invoke noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %.noexc347 unwind label %.loopexit

.noexc347:                                        ; preds = %bb.dc, %bb.db
  %.0.i.i345 = phi i32 [ %i.ku, %bb.db ], [ %i.kv, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.dd

bb.dd:                                            ; preds = %.noexc347, %bb.cx
  %.1.i.i = phi i32 [ %.0.i.i345, %.noexc347 ], [ %i.jw, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  switch i32 %.1.i.i, label %bb.et [
    i32 1, label %bb.de
    i32 -1, label %bb.dn
    i32 0, label %bb.dw
  ]

.loopexit:                                        ; preds = %bb.cx, %bb.db, %bb.dc, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i360, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i370
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

.loopexit.split-lp:                               ; preds = %.invoke1545, %bb.eu
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

bb.de:                                            ; preds = %bb.dd
  %i.kw = load ptr, ptr %i.ig, align 8, !tbaa !91 ; 4 uses
  %i.kx = load ptr, ptr %i.ih, align 8, !tbaa !125
  %.not.i349 = icmp eq ptr %i.kw, %i.kx
  br i1 %.not.i349, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  store i32 %i.jm, ptr %i.kw, align 4, !tbaa !98
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  store ptr %i.ky, ptr %i.ig, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.dg:                                            ; preds = %bb.de
  %i.kz = load ptr, ptr %58, align 8, !tbaa !92   ; 4 uses
  %i.la = ptrtoint ptr %i.kw to i64
  %i.lb = ptrtoint ptr %i.kz to i64               ; 2 uses
  %i.lc = sub i64 %i.la, %i.lb                    ; 5 uses
  %i.ld = icmp eq i64 %i.lc, 9223372036854775804
  br i1 %i.ld, label %.invoke1545, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke1545:                                      ; preds = %bb.dt, %bb.dp, %bb.dk, %bb.dg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #36
          to label %.cont1546 unwind label %.loopexit.split-lp

.cont1546:                                        ; preds = %.invoke1545
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dg
  %i.le = ashr exact i64 %i.lc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.le, i64 1)
  %i.lf = add nsw i64 %.sroa.speculated.i.i.i, %i.le ; 2 uses
  %i.lg = icmp ult i64 %i.lf, %i.le
  %i.lh = call i64 @llvm.umin.i64(i64 %i.lf, i64 2305843009213693951)
  %i.li = select i1 %i.lg, i64 2305843009213693951, i64 %i.lh ; 3 uses
  %.not.i.i.i350 = icmp ne i64 %i.li, 0
  call void @llvm.assume(i1 %.not.i.i.i350)
  %i.lj = shl nuw nsw i64 %i.li, 2
  %i.lk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lj) #37
          to label %.noexc352 unwind label %.loopexit ; 4 uses

.noexc352:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 %i.lc ; 2 uses
  store i32 %i.jm, ptr %i.ll, align 4, !tbaa !98
  %i.lm = icmp sgt i64 %i.lc, 0
  br i1 %i.lm, label %bb.dh, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.dh:                                            ; preds = %.noexc352
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lk, ptr align 4 %i.kz, i64 %i.lc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.dh, %.noexc352
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %.not.i17.i.i = icmp eq ptr %i.kz, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.lo = load ptr, ptr %i.ih, align 8, !tbaa !125
  %i.lp = ptrtoint ptr %i.lo to i64
  %i.lq = sub i64 %i.lp, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef %i.lq) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.di, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.lk, ptr %58, align 8, !tbaa !92
  store ptr %i.ln, ptr %i.ig, align 8, !tbaa !91
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.li
  store ptr %i.lr, ptr %i.ih, align 8, !tbaa !125
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.df
  %.not.i353 = icmp eq ptr %.sroa.9715.0989, %.sroa.12716.0990
  br i1 %.not.i353, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i64 %storemerge1000, ptr %.sroa.9715.0989, align 8, !tbaa !93
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.9715.0989, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.dk:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.lt = ptrtoint ptr %.sroa.12716.0990 to i64
  %i.lu = ptrtoint ptr %.sroa.0711.0988 to i64
  %i.lv = sub i64 %i.lt, %i.lu                    ; 6 uses
  %i.lw = icmp eq i64 %i.lv, 9223372036854775800
  br i1 %i.lw, label %.invoke1545, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dk
  %i.lx = ashr exact i64 %i.lv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i354 = call i64 @llvm.umax.i64(i64 %i.lx, i64 1)
  %i.ly = add nsw i64 %.sroa.speculated.i.i.i354, %i.lx ; 2 uses
  %i.lz = icmp ult i64 %i.ly, %i.lx
  %i.ma = call i64 @llvm.umin.i64(i64 %i.ly, i64 1152921504606846975)
  %i.mb = select i1 %i.lz, i64 1152921504606846975, i64 %i.ma ; 3 uses
  %.not.i.i.i355 = icmp ne i64 %i.mb, 0
  call void @llvm.assume(i1 %.not.i.i.i355)
  %i.mc = shl nuw nsw i64 %i.mb, 3
  %i.md = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mc) #37
          to label %.noexc358 unwind label %.loopexit ; 4 uses

.noexc358:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.me = getelementptr inbounds i8, ptr %i.md, i64 %i.lv ; 2 uses
  store i64 %storemerge1000, ptr %i.me, align 8, !tbaa !93
  %i.mf = icmp sgt i64 %i.lv, 0
  br i1 %i.mf, label %bb.dl, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.dl:                                            ; preds = %.noexc358
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.md, ptr align 8 %.sroa.0711.0988, i64 %i.lv, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.dl, %.noexc358
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %.not.i17.i.i356 = icmp eq ptr %.sroa.0711.0988, null
  br i1 %.not.i17.i.i356, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0711.0988, i64 noundef %i.lv) #35
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.dm, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.mb
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.dn:                                            ; preds = %bb.dd
  %i.mi = load ptr, ptr %i.ie, align 8, !tbaa !91 ; 4 uses
  %i.mj = load ptr, ptr %i.if, align 8, !tbaa !125
  %.not.i359 = icmp eq ptr %i.mi, %i.mj
  br i1 %.not.i359, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i32 %i.jm, ptr %i.mi, align 4, !tbaa !98
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store ptr %i.mk, ptr %i.ie, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit368
end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb:bb.a
bb.cg:                                            ; preds = %bb.bz
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ky

bb.ch:                                            ; preds = %bb.ca
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.kx

bb.ci:                                            ; preds = %bb.cb
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.kw

bb.cj:                                            ; preds = %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Plane_3IS4_EE.exit.i.i, %bb.cf
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.kv

bb.ck:                                            ; preds = %bb.ce
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hw) #22
  br label %bb.kv

bb.cl:                                            ; preds = %.split, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  %.not1039 = icmp eq ptr %i.b, %i.c              ; 3 uses
  br i1 %.not1039, label %._crit_edge996.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cl
  %i.ic = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %57, i64 16
  br label %bb.cm

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEERS3_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ie = getelementptr inbounds nuw i8, ptr %16, i64 32
  %.sroa.4.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.5.0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.if = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ig = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.ih = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 3 uses
  br label %bb.cw

bb.cm:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEERS3_DpOT_.exit
  %.0190980 = phi i64 [ 0, %.lr.ph ], [ %i.jq, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEERS3_DpOT_.exit ] ; 2 uses
  %i.ip = load ptr, ptr %4, align 8, !tbaa !92
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %.0190980
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !98
  %i.is = call i32 @llvm.abs.i32(i32 %i.ir, i1 true)
  %i.it = load ptr, ptr %1, align 8, !tbaa !100
  %i.iu = zext nneg i32 %i.is to i64
  %i.iv = getelementptr [4 x i8], ptr %i.it, i64 %i.iu
  %i.iw = getelementptr i8, ptr %i.iv, i64 -4     ; 3 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !98 ; 3 uses
  %.not.i316 = icmp eq i32 %i.ix, %i.fw
  %.not10.i317 = icmp eq i32 %i.ix, %i.fx
  %or.cond783 = or i1 %.not.i316, %.not10.i317
  br i1 %or.cond783, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.iy = sext i32 %i.ix to i64
  br label %bb.cs

bb.co:                                            ; preds = %bb.cm
  %i.iz = load i64, ptr %i.fr, align 8, !tbaa !101 ; 2 uses
  %i.ja = getelementptr [4 x i8], ptr %i.iw, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !98 ; 3 uses
  %.not11.i319 = icmp eq i32 %i.jb, %i.fw
  %.not12.i320 = icmp eq i32 %i.jb, %i.fx
  %or.cond784 = or i1 %.not11.i319, %.not12.i320
  br i1 %or.cond784, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jc = sext i32 %i.jb to i64
  br label %bb.cs

bb.cq:                                            ; preds = %bb.co
  %.idx.i321 = shl i64 %i.iz, 3
  %i.jd = getelementptr i8, ptr %i.iw, i64 %.idx.i321
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !98 ; 3 uses
  %.not13.i322 = icmp eq i32 %i.je, %i.fw
  br i1 %.not13.i322, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.not14.i323 = icmp eq i32 %i.je, %i.fx
  %narrow.i324 = select i1 %.not14.i323, i32 -1, i32 %i.je
  %spec.select.i325 = sext i32 %narrow.i324 to i64
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cn, %bb.cp, %bb.cq, %bb.cr
  %.0.i318 = phi i64 [ %i.iy, %bb.cn ], [ %i.jc, %bb.cp ], [ -1, %bb.cq ], [ %spec.select.i325, %bb.cr ]
  %i.jf = load ptr, ptr %0, align 8, !tbaa !171
  %i.jg = load i64, ptr %i.gg, align 8, !tbaa !172
  %i.jh = mul nsw i64 %i.jg, %.0.i318
  %i.ji = getelementptr [16 x i8], ptr %i.jf, i64 %i.jh ; 4 uses
  %i.jj = getelementptr i8, ptr %i.ji, i64 16     ; 2 uses
  %i.jk = getelementptr i8, ptr %i.ji, i64 32     ; 2 uses
  %i.jl = load ptr, ptr %i.ic, align 8, !tbaa !131 ; 3 uses
  %i.jm = load ptr, ptr %i.id, align 8, !tbaa !132
  %.not.i327 = icmp eq ptr %i.jl, %i.jm
  br i1 %.not.i327, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %19, ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(9) %i.ji, ptr noundef nonnull align 8 dereferenceable(9) %i.jj, ptr noundef nonnull align 8 dereferenceable(9) %i.jk)
          to label %.noexc328 unwind label %bb.cv

.noexc328:                                        ; preds = %bb.ct
  %i.jn = load ptr, ptr %19, align 8, !tbaa !85
  store ptr %i.jn, ptr %i.jl, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.jo = load ptr, ptr %i.ic, align 8, !tbaa !131
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  store ptr %i.jp, ptr %i.ic, align 8, !tbaa !131
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEERS3_DpOT_.exit

bb.cu:                                            ; preds = %bb.cs
  invoke void @_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE17_M_realloc_insertIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %57, ptr %i.jl, ptr noundef nonnull align 8 dereferenceable(9) %i.ji, ptr noundef nonnull align 8 dereferenceable(9) %i.jj, ptr noundef nonnull align 8 dereferenceable(9) %i.jk)
          to label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEERS3_DpOT_.exit unwind label %bb.cv

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEERS3_DpOT_.exit: ; preds = %bb.cu, %.noexc328
  %i.jq = add nuw i64 %.0190980, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.jq, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.cm, !llvm.loop !511

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ku

._crit_edge996.critedge:                          ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false)
  br label %._crit_edge996

._crit_edge996:                                   ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %._crit_edge996.critedge
  %.sroa.0711.0.lcssa = phi ptr [ null, %._crit_edge996.critedge ], [ %.sroa.0711.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12716.0.lcssa = phi ptr [ null, %._crit_edge996.critedge ], [ %.sroa.12716.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %.sroa.0702.0.lcssa = phi ptr [ null, %._crit_edge996.critedge ], [ %.sroa.0702.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12707.0.lcssa = phi ptr [ null, %._crit_edge996.critedge ], [ %.sroa.12707.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %.sroa.0693.0.lcssa = phi ptr [ null, %._crit_edge996.critedge ], [ %.sroa.0693.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12698.0.lcssa = phi ptr [ null, %._crit_edge996.critedge ], [ %.sroa.12698.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %.sroa.0685.0.lcssa = phi ptr [ null, %._crit_edge996.critedge ], [ %.sroa.0685.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %._crit_edge996.critedge ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  br i1 %6, label %bb.ew, label %bb.fs

bb.cw:                                            ; preds = %._crit_edge, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %storemerge993 = phi i64 [ 0, %._crit_edge ], [ %i.rf, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 11 uses
  %.sroa.12.0992 = phi ptr [ null, %._crit_edge ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9689.0991 = phi ptr [ null, %._crit_edge ], [ %.sroa.9689.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0685.0990 = phi ptr [ null, %._crit_edge ], [ %.sroa.0685.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %.sroa.12698.0989 = phi ptr [ null, %._crit_edge ], [ %.sroa.12698.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9697.0988 = phi ptr [ null, %._crit_edge ], [ %.sroa.9697.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0693.0987 = phi ptr [ null, %._crit_edge ], [ %.sroa.0693.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %.sroa.12707.0986 = phi ptr [ null, %._crit_edge ], [ %.sroa.12707.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9706.0985 = phi ptr [ null, %._crit_edge ], [ %.sroa.9706.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0702.0984 = phi ptr [ null, %._crit_edge ], [ %.sroa.0702.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %.sroa.12716.0983 = phi ptr [ null, %._crit_edge ], [ %.sroa.12716.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9715.0982 = phi ptr [ null, %._crit_edge ], [ %.sroa.9715.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0711.0981 = phi ptr [ null, %._crit_edge ], [ %.sroa.0711.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %i.js = load ptr, ptr %4, align 8, !tbaa !92
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %storemerge993
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !98 ; 8 uses
  %i.jv = load ptr, ptr %57, align 8, !tbaa !133
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %storemerge993 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.jx = load ptr, ptr %56, align 8, !tbaa !85
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 80
  %i.jz = load atomic ptr, ptr %i.jy acquire, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %68 = load <8 x double>, ptr %i.jz, align 16, !tbaa !86, !noalias !538 ; 2 uses
  %69 = fneg <8 x double> %68                     ; 5 uses
  %70 = shufflevector <8 x double> %69, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %71 = shufflevector <8 x double> %68, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ka = fcmp oeq <4 x double> %71, %70
  %i.kb = freeze <4 x i1> %i.ka
  %i.kc = bitcast <4 x i1> %i.kb to i4
  %i.kd = icmp eq i4 %i.kc, -1
  br i1 %i.kd, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ke = invoke noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %18, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.jw)
          to label %bb.dd unwind label %.loopexit

bb.cy:                                            ; preds = %bb.cw
  %i.kf = extractelement <8 x double> %69, i64 0
  store double %i.kf, ptr %16, align 8, !alias.scope !538
  %i.kg = extractelement <8 x double> %69, i64 2
  store double %i.kg, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !538
  %i.kh = extractelement <8 x double> %69, i64 4
  store double %i.kh, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !538
  %i.ki = extractelement <8 x double> %69, i64 6
  store double %i.ki, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !538
  store i8 1, ptr %i.ie, align 8, !tbaa !138, !alias.scope !538
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.kj = load ptr, ptr %i.jw, align 8, !tbaa !85 ; 6 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.km = load double, ptr %i.kl, align 8, !tbaa !86, !noalias !539
  %i.kn = load double, ptr %i.kk, align 16, !tbaa !86, !noalias !539
  %i.ko = fneg double %i.kn                       ; 2 uses
  %i.kp = fcmp oeq double %i.km, %i.ko
  br i1 %i.kp, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kj, i64 40
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !86, !noalias !539
  %i.kt = load double, ptr %i.kq, align 16, !tbaa !86, !noalias !539
  %i.ku = fneg double %i.kt                       ; 2 uses
  %i.kv = fcmp oeq double %i.ks, %i.ku
  br i1 %i.kv, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kj, i64 48
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kj, i64 56
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !86, !noalias !539
  %i.kz = load double, ptr %i.kw, align 16, !tbaa !86, !noalias !539
  %i.la = fneg double %i.kz                       ; 2 uses
  %i.lb = fcmp oeq double %i.ky, %i.la
  br i1 %i.lb, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cy
  %i.lc = invoke noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %18, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.jw)
          to label %.noexc347 unwind label %.loopexit

bb.dc:                                            ; preds = %bb.da
  store double %i.ko, ptr %17, align 8, !alias.scope !539
  store double %i.ku, ptr %.sroa.4.0..sroa_idx.i7.i.i, align 8, !alias.scope !539
  store double %i.la, ptr %.sroa.5.0..sroa_idx.i8.i.i, align 8, !alias.scope !539
  store i8 1, ptr %i.if, align 8, !tbaa !145, !alias.scope !540
  %i.ld = invoke noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.ig, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %.noexc347 unwind label %.loopexit

.noexc347:                                        ; preds = %bb.dc, %bb.db
  %.0.i.i345 = phi i32 [ %i.lc, %bb.db ], [ %i.ld, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.dd

bb.dd:                                            ; preds = %.noexc347, %bb.cx
  %.1.i.i = phi i32 [ %.0.i.i345, %.noexc347 ], [ %i.ke, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  switch i32 %.1.i.i, label %bb.et [
    i32 1, label %bb.de
    i32 -1, label %bb.dn
    i32 0, label %bb.dw
  ]

.loopexit:                                        ; preds = %bb.cx, %bb.db, %bb.dc, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i360, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i370
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

.loopexit.split-lp:                               ; preds = %.invoke1538, %bb.eu
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

bb.de:                                            ; preds = %bb.dd
  %i.le = load ptr, ptr %i.in, align 8, !tbaa !91 ; 4 uses
  %i.lf = load ptr, ptr %i.io, align 8, !tbaa !125
  %.not.i349 = icmp eq ptr %i.le, %i.lf
  br i1 %.not.i349, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  store i32 %i.ju, ptr %i.le, align 4, !tbaa !98
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  store ptr %i.lg, ptr %i.in, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.dg:                                            ; preds = %bb.de
  %i.lh = load ptr, ptr %58, align 8, !tbaa !92   ; 4 uses
  %i.li = ptrtoint ptr %i.le to i64
  %i.lj = ptrtoint ptr %i.lh to i64               ; 2 uses
  %i.lk = sub i64 %i.li, %i.lj                    ; 5 uses
  %i.ll = icmp eq i64 %i.lk, 9223372036854775804
  br i1 %i.ll, label %.invoke1538, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke1538:                                      ; preds = %bb.dt, %bb.dp, %bb.dk, %bb.dg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #36
          to label %.cont1539 unwind label %.loopexit.split-lp

.cont1539:                                        ; preds = %.invoke1538
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dg
  %i.lm = ashr exact i64 %i.lk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.lm, i64 1)
  %i.ln = add nsw i64 %.sroa.speculated.i.i.i, %i.lm ; 2 uses
  %i.lo = icmp ult i64 %i.ln, %i.lm
  %i.lp = call i64 @llvm.umin.i64(i64 %i.ln, i64 2305843009213693951)
  %i.lq = select i1 %i.lo, i64 2305843009213693951, i64 %i.lp ; 3 uses
  %.not.i.i.i350 = icmp ne i64 %i.lq, 0
  call void @llvm.assume(i1 %.not.i.i.i350)
  %i.lr = shl nuw nsw i64 %i.lq, 2
  %i.ls = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lr) #37
          to label %.noexc352 unwind label %.loopexit ; 4 uses

.noexc352:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 %i.lk ; 2 uses
  store i32 %i.ju, ptr %i.lt, align 4, !tbaa !98
  %i.lu = icmp sgt i64 %i.lk, 0
  br i1 %i.lu, label %bb.dh, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.dh:                                            ; preds = %.noexc352
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ls, ptr align 4 %i.lh, i64 %i.lk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.dh, %.noexc352
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  %.not.i17.i.i = icmp eq ptr %i.lh, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.lw = load ptr, ptr %i.io, align 8, !tbaa !125
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = sub i64 %i.lx, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %i.lh, i64 noundef %i.ly) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.di, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ls, ptr %58, align 8, !tbaa !92
  store ptr %i.lv, ptr %i.in, align 8, !tbaa !91
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lq
  store ptr %i.lz, ptr %i.io, align 8, !tbaa !125
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.df
  %.not.i353 = icmp eq ptr %.sroa.9715.0982, %.sroa.12716.0983
  br i1 %.not.i353, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i64 %storemerge993, ptr %.sroa.9715.0982, align 8, !tbaa !93
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.9715.0982, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.dk:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.mb = ptrtoint ptr %.sroa.12716.0983 to i64
  %i.mc = ptrtoint ptr %.sroa.0711.0981 to i64
  %i.md = sub i64 %i.mb, %i.mc                    ; 6 uses
  %i.me = icmp eq i64 %i.md, 9223372036854775800
  br i1 %i.me, label %.invoke1538, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dk
  %i.mf = ashr exact i64 %i.md, 3                 ; 3 uses
  %.sroa.speculated.i.i.i354 = call i64 @llvm.umax.i64(i64 %i.mf, i64 1)
  %i.mg = add nsw i64 %.sroa.speculated.i.i.i354, %i.mf ; 2 uses
  %i.mh = icmp ult i64 %i.mg, %i.mf
  %i.mi = call i64 @llvm.umin.i64(i64 %i.mg, i64 1152921504606846975)
  %i.mj = select i1 %i.mh, i64 1152921504606846975, i64 %i.mi ; 3 uses
  %.not.i.i.i355 = icmp ne i64 %i.mj, 0
  call void @llvm.assume(i1 %.not.i.i.i355)
  %i.mk = shl nuw nsw i64 %i.mj, 3
  %i.ml = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mk) #37
          to label %.noexc358 unwind label %.loopexit ; 4 uses

.noexc358:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 %i.md ; 2 uses
  store i64 %storemerge993, ptr %i.mm, align 8, !tbaa !93
  %i.mn = icmp sgt i64 %i.md, 0
  br i1 %i.mn, label %bb.dl, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.dl:                                            ; preds = %.noexc358
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ml, ptr align 8 %.sroa.0711.0981, i64 %i.md, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.dl, %.noexc358
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %.not.i17.i.i356 = icmp eq ptr %.sroa.0711.0981, null
  br i1 %.not.i17.i.i356, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0711.0981, i64 noundef %i.md) #35
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.dm, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mj
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.dn:                                            ; preds = %bb.dd
  %i.mq = load ptr, ptr %i.il, align 8, !tbaa !91 ; 4 uses
  %i.mr = load ptr, ptr %i.im, align 8, !tbaa !125
  %.not.i359 = icmp eq ptr %i.mq, %i.mr
  br i1 %.not.i359, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i32 %i.ju, ptr %i.mq, align 4, !tbaa !98
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  store ptr %i.ms, ptr %i.il, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit368
end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb:bb.a
bb.cg:                                            ; preds = %bb.bz
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ky

bb.ch:                                            ; preds = %bb.ca
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.kx

bb.ci:                                            ; preds = %bb.cb
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.kw

bb.cj:                                            ; preds = %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Plane_3IS4_EE.exit.i.i, %bb.cf
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.kv

bb.ck:                                            ; preds = %bb.ce
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hp) #22
  br label %bb.kv

bb.cl:                                            ; preds = %.split, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  %.not1046 = icmp eq ptr %i.b, %i.c              ; 3 uses
  br i1 %.not1046, label %._crit_edge1003.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cl
  %i.hv = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %57, i64 16
  br label %bb.cm

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEERS3_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.hx = getelementptr inbounds nuw i8, ptr %16, i64 32
  %.sroa.4.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.5.0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.hz = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.ia = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 3 uses
  br label %bb.cw

bb.cm:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEERS3_DpOT_.exit
  %.0190987 = phi i64 [ 0, %.lr.ph ], [ %i.ji, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEERS3_DpOT_.exit ] ; 2 uses
  %i.ii = load ptr, ptr %4, align 8, !tbaa !92
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.0190987
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !98
  %i.il = call i32 @llvm.abs.i32(i32 %i.ik, i1 true)
  %i.im = load ptr, ptr %1, align 8, !tbaa !195
  %i.in = zext nneg i32 %i.il to i64
  %i.io = getelementptr [4 x i8], ptr %i.im, i64 %i.in
  %i.ip = getelementptr i8, ptr %i.io, i64 -4     ; 3 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !98 ; 3 uses
  %.not.i316 = icmp eq i32 %i.iq, %i.fs
  %.not10.i317 = icmp eq i32 %i.iq, %i.ft
  %or.cond783 = or i1 %.not.i316, %.not10.i317
  br i1 %or.cond783, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ir = sext i32 %i.iq to i64
  br label %bb.cs

bb.co:                                            ; preds = %bb.cm
  %i.is = load i64, ptr %i.fn, align 8, !tbaa !196 ; 2 uses
  %i.it = getelementptr [4 x i8], ptr %i.ip, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !98 ; 3 uses
  %.not11.i319 = icmp eq i32 %i.iu, %i.fs
  %.not12.i320 = icmp eq i32 %i.iu, %i.ft
  %or.cond784 = or i1 %.not11.i319, %.not12.i320
  br i1 %or.cond784, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.iv = sext i32 %i.iu to i64
  br label %bb.cs

bb.cq:                                            ; preds = %bb.co
  %.idx.i321 = shl i64 %i.is, 3
  %i.iw = getelementptr i8, ptr %i.ip, i64 %.idx.i321
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !98 ; 3 uses
  %.not13.i322 = icmp eq i32 %i.ix, %i.fs
  br i1 %.not13.i322, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.not14.i323 = icmp eq i32 %i.ix, %i.ft
  %narrow.i324 = select i1 %.not14.i323, i32 -1, i32 %i.ix
  %spec.select.i325 = sext i32 %narrow.i324 to i64
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cn, %bb.cp, %bb.cq, %bb.cr
  %.0.i318 = phi i64 [ %i.ir, %bb.cn ], [ %i.iv, %bb.cp ], [ -1, %bb.cq ], [ %spec.select.i325, %bb.cr ]
  %i.iy = load ptr, ptr %0, align 8, !tbaa !192
  %i.iz = getelementptr [16 x i8], ptr %i.iy, i64 %.0.i318 ; 4 uses
  %i.ja = load i64, ptr %i.gc, align 8, !tbaa !193 ; 2 uses
  %i.jb = getelementptr [16 x i8], ptr %i.iz, i64 %i.ja ; 2 uses
  %.idx794 = shl i64 %i.ja, 5
  %i.jc = getelementptr i8, ptr %i.iz, i64 %.idx794 ; 2 uses
  %i.jd = load ptr, ptr %i.hv, align 8, !tbaa !131 ; 3 uses
  %i.je = load ptr, ptr %i.hw, align 8, !tbaa !132
  %.not.i327 = icmp eq ptr %i.jd, %i.je
  br i1 %.not.i327, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %19, ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(9) %i.iz, ptr noundef nonnull align 8 dereferenceable(9) %i.jb, ptr noundef nonnull align 8 dereferenceable(9) %i.jc)
          to label %.noexc328 unwind label %bb.cv

.noexc328:                                        ; preds = %bb.ct
  %i.jf = load ptr, ptr %19, align 8, !tbaa !85
  store ptr %i.jf, ptr %i.jd, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.jg = load ptr, ptr %i.hv, align 8, !tbaa !131
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store ptr %i.jh, ptr %i.hv, align 8, !tbaa !131
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEERS3_DpOT_.exit

bb.cu:                                            ; preds = %bb.cs
  invoke void @_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE17_M_realloc_insertIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %57, ptr %i.jd, ptr noundef nonnull align 8 dereferenceable(9) %i.iz, ptr noundef nonnull align 8 dereferenceable(9) %i.jb, ptr noundef nonnull align 8 dereferenceable(9) %i.jc)
          to label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEERS3_DpOT_.exit unwind label %bb.cv

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKNS0_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEESN_SN_EEERS3_DpOT_.exit: ; preds = %bb.cu, %.noexc328
  %i.ji = add nuw i64 %.0190987, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ji, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.cm, !llvm.loop !637

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ku

._crit_edge1003.critedge:                         ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false)
  br label %._crit_edge1003

._crit_edge1003:                                  ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %._crit_edge1003.critedge
  %.sroa.0711.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.0711.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12716.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.12716.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %.sroa.0702.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.0702.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12707.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.12707.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %.sroa.0693.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.0693.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12698.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.12698.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %.sroa.0685.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.0685.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  br i1 %6, label %bb.ew, label %bb.fs

bb.cw:                                            ; preds = %._crit_edge, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %storemerge1000 = phi i64 [ 0, %._crit_edge ], [ %i.qx, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 11 uses
  %.sroa.12.0999 = phi ptr [ null, %._crit_edge ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9689.0998 = phi ptr [ null, %._crit_edge ], [ %.sroa.9689.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0685.0997 = phi ptr [ null, %._crit_edge ], [ %.sroa.0685.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %.sroa.12698.0996 = phi ptr [ null, %._crit_edge ], [ %.sroa.12698.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9697.0995 = phi ptr [ null, %._crit_edge ], [ %.sroa.9697.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0693.0994 = phi ptr [ null, %._crit_edge ], [ %.sroa.0693.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %.sroa.12707.0993 = phi ptr [ null, %._crit_edge ], [ %.sroa.12707.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9706.0992 = phi ptr [ null, %._crit_edge ], [ %.sroa.9706.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0702.0991 = phi ptr [ null, %._crit_edge ], [ %.sroa.0702.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %.sroa.12716.0990 = phi ptr [ null, %._crit_edge ], [ %.sroa.12716.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9715.0989 = phi ptr [ null, %._crit_edge ], [ %.sroa.9715.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0711.0988 = phi ptr [ null, %._crit_edge ], [ %.sroa.0711.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %i.jk = load ptr, ptr %4, align 8, !tbaa !92
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %storemerge1000
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !98 ; 8 uses
  %i.jn = load ptr, ptr %57, align 8, !tbaa !133
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %storemerge1000 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.jp = load ptr, ptr %56, align 8, !tbaa !85
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 80
  %i.jr = load atomic ptr, ptr %i.jq acquire, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  %68 = load <8 x double>, ptr %i.jr, align 16, !tbaa !86, !noalias !664 ; 2 uses
  %69 = fneg <8 x double> %68                     ; 5 uses
  %70 = shufflevector <8 x double> %69, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %71 = shufflevector <8 x double> %68, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.js = fcmp oeq <4 x double> %71, %70
  %i.jt = freeze <4 x i1> %i.js
  %i.ju = bitcast <4 x i1> %i.jt to i4
  %i.jv = icmp eq i4 %i.ju, -1
  br i1 %i.jv, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jw = invoke noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %18, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %bb.dd unwind label %.loopexit

bb.cy:                                            ; preds = %bb.cw
  %i.jx = extractelement <8 x double> %69, i64 0
  store double %i.jx, ptr %16, align 8, !alias.scope !664
  %i.jy = extractelement <8 x double> %69, i64 2
  store double %i.jy, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !664
  %i.jz = extractelement <8 x double> %69, i64 4
  store double %i.jz, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !664
  %i.ka = extractelement <8 x double> %69, i64 6
  store double %i.ka, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !664
  store i8 1, ptr %i.hx, align 8, !tbaa !138, !alias.scope !664
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.kb = load ptr, ptr %i.jo, align 8, !tbaa !85 ; 6 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !86, !noalias !665
  %i.kf = load double, ptr %i.kc, align 16, !tbaa !86, !noalias !665
  %i.kg = fneg double %i.kf                       ; 2 uses
  %i.kh = fcmp oeq double %i.ke, %i.kg
  br i1 %i.kh, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 40
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !86, !noalias !665
  %i.kl = load double, ptr %i.ki, align 16, !tbaa !86, !noalias !665
  %i.km = fneg double %i.kl                       ; 2 uses
  %i.kn = fcmp oeq double %i.kk, %i.km
  br i1 %i.kn, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kb, i64 56
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !86, !noalias !665
  %i.kr = load double, ptr %i.ko, align 16, !tbaa !86, !noalias !665
  %i.ks = fneg double %i.kr                       ; 2 uses
  %i.kt = fcmp oeq double %i.kq, %i.ks
  br i1 %i.kt, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cy
  %i.ku = invoke noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %18, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %.noexc347 unwind label %.loopexit

bb.dc:                                            ; preds = %bb.da
  store double %i.kg, ptr %17, align 8, !alias.scope !665
  store double %i.km, ptr %.sroa.4.0..sroa_idx.i7.i.i, align 8, !alias.scope !665
  store double %i.ks, ptr %.sroa.5.0..sroa_idx.i8.i.i, align 8, !alias.scope !665
  store i8 1, ptr %i.hy, align 8, !tbaa !145, !alias.scope !666
  %i.kv = invoke noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %.noexc347 unwind label %.loopexit

.noexc347:                                        ; preds = %bb.dc, %bb.db
  %.0.i.i345 = phi i32 [ %i.ku, %bb.db ], [ %i.kv, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.dd

bb.dd:                                            ; preds = %.noexc347, %bb.cx
  %.1.i.i = phi i32 [ %.0.i.i345, %.noexc347 ], [ %i.jw, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  switch i32 %.1.i.i, label %bb.et [
    i32 1, label %bb.de
    i32 -1, label %bb.dn
    i32 0, label %bb.dw
  ]

.loopexit:                                        ; preds = %bb.cx, %bb.db, %bb.dc, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i360, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i370
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

.loopexit.split-lp:                               ; preds = %.invoke1545, %bb.eu
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

bb.de:                                            ; preds = %bb.dd
  %i.kw = load ptr, ptr %i.ig, align 8, !tbaa !91 ; 4 uses
  %i.kx = load ptr, ptr %i.ih, align 8, !tbaa !125
  %.not.i349 = icmp eq ptr %i.kw, %i.kx
  br i1 %.not.i349, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  store i32 %i.jm, ptr %i.kw, align 4, !tbaa !98
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  store ptr %i.ky, ptr %i.ig, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.dg:                                            ; preds = %bb.de
  %i.kz = load ptr, ptr %58, align 8, !tbaa !92   ; 4 uses
  %i.la = ptrtoint ptr %i.kw to i64
  %i.lb = ptrtoint ptr %i.kz to i64               ; 2 uses
  %i.lc = sub i64 %i.la, %i.lb                    ; 5 uses
  %i.ld = icmp eq i64 %i.lc, 9223372036854775804
  br i1 %i.ld, label %.invoke1545, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke1545:                                      ; preds = %bb.dt, %bb.dp, %bb.dk, %bb.dg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #36
          to label %.cont1546 unwind label %.loopexit.split-lp

.cont1546:                                        ; preds = %.invoke1545
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dg
  %i.le = ashr exact i64 %i.lc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.le, i64 1)
  %i.lf = add nsw i64 %.sroa.speculated.i.i.i, %i.le ; 2 uses
  %i.lg = icmp ult i64 %i.lf, %i.le
  %i.lh = call i64 @llvm.umin.i64(i64 %i.lf, i64 2305843009213693951)
  %i.li = select i1 %i.lg, i64 2305843009213693951, i64 %i.lh ; 3 uses
  %.not.i.i.i350 = icmp ne i64 %i.li, 0
  call void @llvm.assume(i1 %.not.i.i.i350)
  %i.lj = shl nuw nsw i64 %i.li, 2
  %i.lk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lj) #37
          to label %.noexc352 unwind label %.loopexit ; 4 uses

.noexc352:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 %i.lc ; 2 uses
  store i32 %i.jm, ptr %i.ll, align 4, !tbaa !98
  %i.lm = icmp sgt i64 %i.lc, 0
  br i1 %i.lm, label %bb.dh, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.dh:                                            ; preds = %.noexc352
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lk, ptr align 4 %i.kz, i64 %i.lc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.dh, %.noexc352
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %.not.i17.i.i = icmp eq ptr %i.kz, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.lo = load ptr, ptr %i.ih, align 8, !tbaa !125
  %i.lp = ptrtoint ptr %i.lo to i64
  %i.lq = sub i64 %i.lp, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef %i.lq) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.di, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.lk, ptr %58, align 8, !tbaa !92
  store ptr %i.ln, ptr %i.ig, align 8, !tbaa !91
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.li
  store ptr %i.lr, ptr %i.ih, align 8, !tbaa !125
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.df
  %.not.i353 = icmp eq ptr %.sroa.9715.0989, %.sroa.12716.0990
  br i1 %.not.i353, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i64 %storemerge1000, ptr %.sroa.9715.0989, align 8, !tbaa !93
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.9715.0989, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.dk:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.lt = ptrtoint ptr %.sroa.12716.0990 to i64
  %i.lu = ptrtoint ptr %.sroa.0711.0988 to i64
  %i.lv = sub i64 %i.lt, %i.lu                    ; 6 uses
  %i.lw = icmp eq i64 %i.lv, 9223372036854775800
  br i1 %i.lw, label %.invoke1545, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dk
  %i.lx = ashr exact i64 %i.lv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i354 = call i64 @llvm.umax.i64(i64 %i.lx, i64 1)
  %i.ly = add nsw i64 %.sroa.speculated.i.i.i354, %i.lx ; 2 uses
  %i.lz = icmp ult i64 %i.ly, %i.lx
  %i.ma = call i64 @llvm.umin.i64(i64 %i.ly, i64 1152921504606846975)
  %i.mb = select i1 %i.lz, i64 1152921504606846975, i64 %i.ma ; 3 uses
  %.not.i.i.i355 = icmp ne i64 %i.mb, 0
  call void @llvm.assume(i1 %.not.i.i.i355)
  %i.mc = shl nuw nsw i64 %i.mb, 3
  %i.md = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mc) #37
          to label %.noexc358 unwind label %.loopexit ; 4 uses

.noexc358:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.me = getelementptr inbounds i8, ptr %i.md, i64 %i.lv ; 2 uses
  store i64 %storemerge1000, ptr %i.me, align 8, !tbaa !93
  %i.mf = icmp sgt i64 %i.lv, 0
  br i1 %i.mf, label %bb.dl, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.dl:                                            ; preds = %.noexc358
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.md, ptr align 8 %.sroa.0711.0988, i64 %i.lv, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.dl, %.noexc358
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %.not.i17.i.i356 = icmp eq ptr %.sroa.0711.0988, null
  br i1 %.not.i17.i.i356, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0711.0988, i64 noundef %i.lv) #35
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.dm, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.mb
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.dn:                                            ; preds = %bb.dd
  %i.mi = load ptr, ptr %i.ie, align 8, !tbaa !91 ; 4 uses
  %i.mj = load ptr, ptr %i.if, align 8, !tbaa !125
  %.not.i359 = icmp eq ptr %i.mi, %i.mj
  br i1 %.not.i359, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i32 %i.jm, ptr %i.mi, align 4, !tbaa !98
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store ptr %i.mk, ptr %i.ie, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit368
end_hunk_2
begin_hunk_3_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb:bb.a
bb.cg:                                            ; preds = %bb.bz
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ky

bb.ch:                                            ; preds = %bb.ca
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.kx

bb.ci:                                            ; preds = %bb.cb
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.kw

bb.cj:                                            ; preds = %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Plane_3IS4_EE.exit.i.i, %bb.cf
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.kv

bb.ck:                                            ; preds = %bb.ce
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hp) #22
  br label %bb.kv

bb.cl:                                            ; preds = %.split, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  %.not1046 = icmp eq ptr %i.b, %i.c              ; 3 uses
  br i1 %.not1046, label %._crit_edge1003.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cl
  %i.hv = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %57, i64 16
  br label %bb.cm

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKdS8_S8_EEERS3_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.hx = getelementptr inbounds nuw i8, ptr %16, i64 32
  %.sroa.4.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.5.0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.hz = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.ia = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 3 uses
  br label %bb.cw

bb.cm:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKdS8_S8_EEERS3_DpOT_.exit
  %.0190987 = phi i64 [ 0, %.lr.ph ], [ %i.ji, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKdS8_S8_EEERS3_DpOT_.exit ] ; 2 uses
  %i.ii = load ptr, ptr %4, align 8, !tbaa !92
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.0190987
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !98
  %i.il = call i32 @llvm.abs.i32(i32 %i.ik, i1 true)
  %i.im = load ptr, ptr %1, align 8, !tbaa !100
  %i.in = zext nneg i32 %i.il to i64
  %i.io = getelementptr [4 x i8], ptr %i.im, i64 %i.in
  %i.ip = getelementptr i8, ptr %i.io, i64 -4     ; 3 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !98 ; 3 uses
  %.not.i316 = icmp eq i32 %i.iq, %i.fs
  %.not10.i317 = icmp eq i32 %i.iq, %i.ft
  %or.cond783 = or i1 %.not.i316, %.not10.i317
  br i1 %or.cond783, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ir = sext i32 %i.iq to i64
  br label %bb.cs

bb.co:                                            ; preds = %bb.cm
  %i.is = load i64, ptr %i.fn, align 8, !tbaa !101 ; 2 uses
  %i.it = getelementptr [4 x i8], ptr %i.ip, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !98 ; 3 uses
  %.not11.i319 = icmp eq i32 %i.iu, %i.fs
  %.not12.i320 = icmp eq i32 %i.iu, %i.ft
  %or.cond784 = or i1 %.not11.i319, %.not12.i320
  br i1 %or.cond784, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.iv = sext i32 %i.iu to i64
  br label %bb.cs

bb.cq:                                            ; preds = %bb.co
  %.idx.i321 = shl i64 %i.is, 3
  %i.iw = getelementptr i8, ptr %i.ip, i64 %.idx.i321
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !98 ; 3 uses
  %.not13.i322 = icmp eq i32 %i.ix, %i.fs
  br i1 %.not13.i322, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.not14.i323 = icmp eq i32 %i.ix, %i.ft
  %narrow.i324 = select i1 %.not14.i323, i32 -1, i32 %i.ix
  %spec.select.i325 = sext i32 %narrow.i324 to i64
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cn, %bb.cp, %bb.cq, %bb.cr
  %.0.i318 = phi i64 [ %i.ir, %bb.cn ], [ %i.iv, %bb.cp ], [ -1, %bb.cq ], [ %spec.select.i325, %bb.cr ]
  %i.iy = load ptr, ptr %0, align 8, !tbaa !222
  %i.iz = getelementptr [8 x i8], ptr %i.iy, i64 %.0.i318 ; 4 uses
  %i.ja = load i64, ptr %i.gc, align 8, !tbaa !223 ; 2 uses
  %i.jb = getelementptr [8 x i8], ptr %i.iz, i64 %i.ja ; 2 uses
  %.idx794 = shl i64 %i.ja, 4
  %i.jc = getelementptr i8, ptr %i.iz, i64 %.idx794 ; 2 uses
  %i.jd = load ptr, ptr %i.hv, align 8, !tbaa !131 ; 3 uses
  %i.je = load ptr, ptr %i.hw, align 8, !tbaa !132
  %.not.i327 = icmp eq ptr %i.jd, %i.je
  br i1 %.not.i327, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagEdddEEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %19, ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull align 8 dereferenceable(8) %i.jc)
          to label %.noexc328 unwind label %bb.cv

.noexc328:                                        ; preds = %bb.ct
  %i.jf = load ptr, ptr %19, align 8, !tbaa !85
  store ptr %i.jf, ptr %i.jd, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.jg = load ptr, ptr %i.hv, align 8, !tbaa !131
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store ptr %i.jh, ptr %i.hv, align 8, !tbaa !131
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKdS8_S8_EEERS3_DpOT_.exit

bb.cu:                                            ; preds = %bb.cs
  invoke void @_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE17_M_realloc_insertIJRKdS8_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %57, ptr %i.jd, ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull align 8 dereferenceable(8) %i.jc)
          to label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKdS8_S8_EEERS3_DpOT_.exit unwind label %bb.cv

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKdS8_S8_EEERS3_DpOT_.exit: ; preds = %bb.cu, %.noexc328
  %i.ji = add nuw i64 %.0190987, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ji, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.cm, !llvm.loop !710

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ku

._crit_edge1003.critedge:                         ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false)
  br label %._crit_edge1003

._crit_edge1003:                                  ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %._crit_edge1003.critedge
  %.sroa.0711.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.0711.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12716.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.12716.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %.sroa.0702.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.0702.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12707.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.12707.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %.sroa.0693.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.0693.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12698.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.12698.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %.sroa.0685.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.0685.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  br i1 %6, label %bb.ew, label %bb.fs

bb.cw:                                            ; preds = %._crit_edge, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %storemerge1000 = phi i64 [ 0, %._crit_edge ], [ %i.qx, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 11 uses
  %.sroa.12.0999 = phi ptr [ null, %._crit_edge ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9689.0998 = phi ptr [ null, %._crit_edge ], [ %.sroa.9689.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0685.0997 = phi ptr [ null, %._crit_edge ], [ %.sroa.0685.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %.sroa.12698.0996 = phi ptr [ null, %._crit_edge ], [ %.sroa.12698.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9697.0995 = phi ptr [ null, %._crit_edge ], [ %.sroa.9697.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0693.0994 = phi ptr [ null, %._crit_edge ], [ %.sroa.0693.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %.sroa.12707.0993 = phi ptr [ null, %._crit_edge ], [ %.sroa.12707.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9706.0992 = phi ptr [ null, %._crit_edge ], [ %.sroa.9706.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0702.0991 = phi ptr [ null, %._crit_edge ], [ %.sroa.0702.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %.sroa.12716.0990 = phi ptr [ null, %._crit_edge ], [ %.sroa.12716.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9715.0989 = phi ptr [ null, %._crit_edge ], [ %.sroa.9715.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0711.0988 = phi ptr [ null, %._crit_edge ], [ %.sroa.0711.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %i.jk = load ptr, ptr %4, align 8, !tbaa !92
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %storemerge1000
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !98 ; 8 uses
  %i.jn = load ptr, ptr %57, align 8, !tbaa !133
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %storemerge1000 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.jp = load ptr, ptr %56, align 8, !tbaa !85
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 80
  %i.jr = load atomic ptr, ptr %i.jq acquire, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %68 = load <8 x double>, ptr %i.jr, align 16, !tbaa !86, !noalias !737 ; 2 uses
  %69 = fneg <8 x double> %68                     ; 5 uses
  %70 = shufflevector <8 x double> %69, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %71 = shufflevector <8 x double> %68, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.js = fcmp oeq <4 x double> %71, %70
  %i.jt = freeze <4 x i1> %i.js
  %i.ju = bitcast <4 x i1> %i.jt to i4
  %i.jv = icmp eq i4 %i.ju, -1
  br i1 %i.jv, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jw = invoke noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %18, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %bb.dd unwind label %.loopexit

bb.cy:                                            ; preds = %bb.cw
  %i.jx = extractelement <8 x double> %69, i64 0
  store double %i.jx, ptr %16, align 8, !alias.scope !737
  %i.jy = extractelement <8 x double> %69, i64 2
  store double %i.jy, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !737
  %i.jz = extractelement <8 x double> %69, i64 4
  store double %i.jz, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !737
  %i.ka = extractelement <8 x double> %69, i64 6
  store double %i.ka, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !737
  store i8 1, ptr %i.hx, align 8, !tbaa !138, !alias.scope !737
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.kb = load ptr, ptr %i.jo, align 8, !tbaa !85 ; 6 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !86, !noalias !738
  %i.kf = load double, ptr %i.kc, align 16, !tbaa !86, !noalias !738
  %i.kg = fneg double %i.kf                       ; 2 uses
  %i.kh = fcmp oeq double %i.ke, %i.kg
  br i1 %i.kh, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 40
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !86, !noalias !738
  %i.kl = load double, ptr %i.ki, align 16, !tbaa !86, !noalias !738
  %i.km = fneg double %i.kl                       ; 2 uses
  %i.kn = fcmp oeq double %i.kk, %i.km
  br i1 %i.kn, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kb, i64 56
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !86, !noalias !738
  %i.kr = load double, ptr %i.ko, align 16, !tbaa !86, !noalias !738
  %i.ks = fneg double %i.kr                       ; 2 uses
  %i.kt = fcmp oeq double %i.kq, %i.ks
  br i1 %i.kt, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cy
  %i.ku = invoke noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %18, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %.noexc347 unwind label %.loopexit

bb.dc:                                            ; preds = %bb.da
  store double %i.kg, ptr %17, align 8, !alias.scope !738
  store double %i.km, ptr %.sroa.4.0..sroa_idx.i7.i.i, align 8, !alias.scope !738
  store double %i.ks, ptr %.sroa.5.0..sroa_idx.i8.i.i, align 8, !alias.scope !738
  store i8 1, ptr %i.hy, align 8, !tbaa !145, !alias.scope !739
  %i.kv = invoke noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %.noexc347 unwind label %.loopexit

.noexc347:                                        ; preds = %bb.dc, %bb.db
  %.0.i.i345 = phi i32 [ %i.ku, %bb.db ], [ %i.kv, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.dd

bb.dd:                                            ; preds = %.noexc347, %bb.cx
  %.1.i.i = phi i32 [ %.0.i.i345, %.noexc347 ], [ %i.jw, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  switch i32 %.1.i.i, label %bb.et [
    i32 1, label %bb.de
    i32 -1, label %bb.dn
    i32 0, label %bb.dw
  ]

.loopexit:                                        ; preds = %bb.cx, %bb.db, %bb.dc, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i360, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i370
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

.loopexit.split-lp:                               ; preds = %.invoke1545, %bb.eu
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

bb.de:                                            ; preds = %bb.dd
  %i.kw = load ptr, ptr %i.ig, align 8, !tbaa !91 ; 4 uses
  %i.kx = load ptr, ptr %i.ih, align 8, !tbaa !125
  %.not.i349 = icmp eq ptr %i.kw, %i.kx
  br i1 %.not.i349, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  store i32 %i.jm, ptr %i.kw, align 4, !tbaa !98
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  store ptr %i.ky, ptr %i.ig, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.dg:                                            ; preds = %bb.de
  %i.kz = load ptr, ptr %58, align 8, !tbaa !92   ; 4 uses
  %i.la = ptrtoint ptr %i.kw to i64
  %i.lb = ptrtoint ptr %i.kz to i64               ; 2 uses
  %i.lc = sub i64 %i.la, %i.lb                    ; 5 uses
  %i.ld = icmp eq i64 %i.lc, 9223372036854775804
  br i1 %i.ld, label %.invoke1545, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke1545:                                      ; preds = %bb.dt, %bb.dp, %bb.dk, %bb.dg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #36
          to label %.cont1546 unwind label %.loopexit.split-lp

.cont1546:                                        ; preds = %.invoke1545
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dg
  %i.le = ashr exact i64 %i.lc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.le, i64 1)
  %i.lf = add nsw i64 %.sroa.speculated.i.i.i, %i.le ; 2 uses
  %i.lg = icmp ult i64 %i.lf, %i.le
  %i.lh = call i64 @llvm.umin.i64(i64 %i.lf, i64 2305843009213693951)
  %i.li = select i1 %i.lg, i64 2305843009213693951, i64 %i.lh ; 3 uses
  %.not.i.i.i350 = icmp ne i64 %i.li, 0
  call void @llvm.assume(i1 %.not.i.i.i350)
  %i.lj = shl nuw nsw i64 %i.li, 2
  %i.lk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lj) #37
          to label %.noexc352 unwind label %.loopexit ; 4 uses

.noexc352:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 %i.lc ; 2 uses
  store i32 %i.jm, ptr %i.ll, align 4, !tbaa !98
  %i.lm = icmp sgt i64 %i.lc, 0
  br i1 %i.lm, label %bb.dh, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.dh:                                            ; preds = %.noexc352
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lk, ptr align 4 %i.kz, i64 %i.lc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.dh, %.noexc352
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %.not.i17.i.i = icmp eq ptr %i.kz, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.lo = load ptr, ptr %i.ih, align 8, !tbaa !125
  %i.lp = ptrtoint ptr %i.lo to i64
  %i.lq = sub i64 %i.lp, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef %i.lq) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.di, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.lk, ptr %58, align 8, !tbaa !92
  store ptr %i.ln, ptr %i.ig, align 8, !tbaa !91
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.li
  store ptr %i.lr, ptr %i.ih, align 8, !tbaa !125
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.df
  %.not.i353 = icmp eq ptr %.sroa.9715.0989, %.sroa.12716.0990
  br i1 %.not.i353, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i64 %storemerge1000, ptr %.sroa.9715.0989, align 8, !tbaa !93
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.9715.0989, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.dk:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.lt = ptrtoint ptr %.sroa.12716.0990 to i64
  %i.lu = ptrtoint ptr %.sroa.0711.0988 to i64
  %i.lv = sub i64 %i.lt, %i.lu                    ; 6 uses
  %i.lw = icmp eq i64 %i.lv, 9223372036854775800
  br i1 %i.lw, label %.invoke1545, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dk
  %i.lx = ashr exact i64 %i.lv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i354 = call i64 @llvm.umax.i64(i64 %i.lx, i64 1)
  %i.ly = add nsw i64 %.sroa.speculated.i.i.i354, %i.lx ; 2 uses
  %i.lz = icmp ult i64 %i.ly, %i.lx
  %i.ma = call i64 @llvm.umin.i64(i64 %i.ly, i64 1152921504606846975)
  %i.mb = select i1 %i.lz, i64 1152921504606846975, i64 %i.ma ; 3 uses
  %.not.i.i.i355 = icmp ne i64 %i.mb, 0
  call void @llvm.assume(i1 %.not.i.i.i355)
  %i.mc = shl nuw nsw i64 %i.mb, 3
  %i.md = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mc) #37
          to label %.noexc358 unwind label %.loopexit ; 4 uses

.noexc358:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.me = getelementptr inbounds i8, ptr %i.md, i64 %i.lv ; 2 uses
  store i64 %storemerge1000, ptr %i.me, align 8, !tbaa !93
  %i.mf = icmp sgt i64 %i.lv, 0
  br i1 %i.mf, label %bb.dl, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.dl:                                            ; preds = %.noexc358
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.md, ptr align 8 %.sroa.0711.0988, i64 %i.lv, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.dl, %.noexc358
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %.not.i17.i.i356 = icmp eq ptr %.sroa.0711.0988, null
  br i1 %.not.i17.i.i356, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0711.0988, i64 noundef %i.lv) #35
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.dm, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.mb
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.dn:                                            ; preds = %bb.dd
  %i.mi = load ptr, ptr %i.ie, align 8, !tbaa !91 ; 4 uses
  %i.mj = load ptr, ptr %i.if, align 8, !tbaa !125
  %.not.i359 = icmp eq ptr %i.mi, %i.mj
  br i1 %.not.i359, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i32 %i.jm, ptr %i.mi, align 4, !tbaa !98
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store ptr %i.mk, ptr %i.ie, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit368
end_hunk_3
begin_hunk_4_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb:bb.a
bb.cg:                                            ; preds = %bb.bz
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ky

bb.ch:                                            ; preds = %bb.ca
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.kx

bb.ci:                                            ; preds = %bb.cb
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.kw

bb.cj:                                            ; preds = %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Plane_3IS4_EE.exit.i.i, %bb.cf
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.kv

bb.ck:                                            ; preds = %bb.ce
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hp) #22
  br label %bb.kv

bb.cl:                                            ; preds = %.split, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  %.not1046 = icmp eq ptr %i.b, %i.c              ; 3 uses
  br i1 %.not1046, label %._crit_edge1003.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cl
  %i.hv = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %57, i64 16
  br label %bb.cm

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKdS8_S8_EEERS3_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.hx = getelementptr inbounds nuw i8, ptr %16, i64 32
  %.sroa.4.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.5.0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.hz = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.ia = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 3 uses
  br label %bb.cw

bb.cm:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKdS8_S8_EEERS3_DpOT_.exit
  %.0190987 = phi i64 [ 0, %.lr.ph ], [ %i.ji, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKdS8_S8_EEERS3_DpOT_.exit ] ; 2 uses
  %i.ii = load ptr, ptr %4, align 8, !tbaa !92
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.0190987
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !98
  %i.il = call i32 @llvm.abs.i32(i32 %i.ik, i1 true)
  %i.im = load ptr, ptr %1, align 8, !tbaa !195
  %i.in = zext nneg i32 %i.il to i64
  %i.io = getelementptr [4 x i8], ptr %i.im, i64 %i.in
  %i.ip = getelementptr i8, ptr %i.io, i64 -4     ; 3 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !98 ; 3 uses
  %.not.i316 = icmp eq i32 %i.iq, %i.fs
  %.not10.i317 = icmp eq i32 %i.iq, %i.ft
  %or.cond783 = or i1 %.not.i316, %.not10.i317
  br i1 %or.cond783, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ir = sext i32 %i.iq to i64
  br label %bb.cs

bb.co:                                            ; preds = %bb.cm
  %i.is = load i64, ptr %i.fn, align 8, !tbaa !196 ; 2 uses
  %i.it = getelementptr [4 x i8], ptr %i.ip, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !98 ; 3 uses
  %.not11.i319 = icmp eq i32 %i.iu, %i.fs
  %.not12.i320 = icmp eq i32 %i.iu, %i.ft
  %or.cond784 = or i1 %.not11.i319, %.not12.i320
  br i1 %or.cond784, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.iv = sext i32 %i.iu to i64
  br label %bb.cs

bb.cq:                                            ; preds = %bb.co
  %.idx.i321 = shl i64 %i.is, 3
  %i.iw = getelementptr i8, ptr %i.ip, i64 %.idx.i321
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !98 ; 3 uses
  %.not13.i322 = icmp eq i32 %i.ix, %i.fs
  br i1 %.not13.i322, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.not14.i323 = icmp eq i32 %i.ix, %i.ft
  %narrow.i324 = select i1 %.not14.i323, i32 -1, i32 %i.ix
  %spec.select.i325 = sext i32 %narrow.i324 to i64
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cn, %bb.cp, %bb.cq, %bb.cr
  %.0.i318 = phi i64 [ %i.ir, %bb.cn ], [ %i.iv, %bb.cp ], [ -1, %bb.cq ], [ %spec.select.i325, %bb.cr ]
  %i.iy = load ptr, ptr %0, align 8, !tbaa !228
  %i.iz = getelementptr [8 x i8], ptr %i.iy, i64 %.0.i318 ; 4 uses
  %i.ja = load i64, ptr %i.gc, align 8, !tbaa !229 ; 2 uses
  %i.jb = getelementptr [8 x i8], ptr %i.iz, i64 %i.ja ; 2 uses
  %.idx794 = shl i64 %i.ja, 4
  %i.jc = getelementptr i8, ptr %i.iz, i64 %.idx794 ; 2 uses
  %i.jd = load ptr, ptr %i.hv, align 8, !tbaa !131 ; 3 uses
  %i.je = load ptr, ptr %i.hw, align 8, !tbaa !132
  %.not.i327 = icmp eq ptr %i.jd, %i.je
  br i1 %.not.i327, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagEdddEEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %19, ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull align 8 dereferenceable(8) %i.jc)
          to label %.noexc328 unwind label %bb.cv

.noexc328:                                        ; preds = %bb.ct
  %i.jf = load ptr, ptr %19, align 8, !tbaa !85
  store ptr %i.jf, ptr %i.jd, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.jg = load ptr, ptr %i.hv, align 8, !tbaa !131
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store ptr %i.jh, ptr %i.hv, align 8, !tbaa !131
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKdS8_S8_EEERS3_DpOT_.exit

bb.cu:                                            ; preds = %bb.cs
  invoke void @_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE17_M_realloc_insertIJRKdS8_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %57, ptr %i.jd, ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull align 8 dereferenceable(8) %i.jc)
          to label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKdS8_S8_EEERS3_DpOT_.exit unwind label %bb.cv

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12emplace_backIJRKdS8_S8_EEERS3_DpOT_.exit: ; preds = %bb.cu, %.noexc328
  %i.ji = add nuw i64 %.0190987, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ji, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.cm, !llvm.loop !772

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ku

._crit_edge1003.critedge:                         ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false)
  br label %._crit_edge1003

._crit_edge1003:                                  ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %._crit_edge1003.critedge
  %.sroa.0711.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.0711.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12716.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.12716.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %.sroa.0702.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.0702.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12707.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.12707.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %.sroa.0693.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.0693.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12698.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.12698.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %.sroa.0685.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.0685.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 14 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %._crit_edge1003.critedge ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  br i1 %6, label %bb.ew, label %bb.fs

bb.cw:                                            ; preds = %._crit_edge, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %storemerge1000 = phi i64 [ 0, %._crit_edge ], [ %i.qx, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 11 uses
  %.sroa.12.0999 = phi ptr [ null, %._crit_edge ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9689.0998 = phi ptr [ null, %._crit_edge ], [ %.sroa.9689.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0685.0997 = phi ptr [ null, %._crit_edge ], [ %.sroa.0685.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %.sroa.12698.0996 = phi ptr [ null, %._crit_edge ], [ %.sroa.12698.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9697.0995 = phi ptr [ null, %._crit_edge ], [ %.sroa.9697.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0693.0994 = phi ptr [ null, %._crit_edge ], [ %.sroa.0693.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %.sroa.12707.0993 = phi ptr [ null, %._crit_edge ], [ %.sroa.12707.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9706.0992 = phi ptr [ null, %._crit_edge ], [ %.sroa.9706.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0702.0991 = phi ptr [ null, %._crit_edge ], [ %.sroa.0702.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %.sroa.12716.0990 = phi ptr [ null, %._crit_edge ], [ %.sroa.12716.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 15 uses
  %.sroa.9715.0989 = phi ptr [ null, %._crit_edge ], [ %.sroa.9715.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0711.0988 = phi ptr [ null, %._crit_edge ], [ %.sroa.0711.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 17 uses
  %i.jk = load ptr, ptr %4, align 8, !tbaa !92
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %storemerge1000
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !98 ; 8 uses
  %i.jn = load ptr, ptr %57, align 8, !tbaa !133
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %storemerge1000 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.jp = load ptr, ptr %56, align 8, !tbaa !85
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 80
  %i.jr = load atomic ptr, ptr %i.jq acquire, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %68 = load <8 x double>, ptr %i.jr, align 16, !tbaa !86, !noalias !799 ; 2 uses
  %69 = fneg <8 x double> %68                     ; 5 uses
  %70 = shufflevector <8 x double> %69, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %71 = shufflevector <8 x double> %68, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.js = fcmp oeq <4 x double> %71, %70
  %i.jt = freeze <4 x i1> %i.js
  %i.ju = bitcast <4 x i1> %i.jt to i4
  %i.jv = icmp eq i4 %i.ju, -1
  br i1 %i.jv, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jw = invoke noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %18, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %bb.dd unwind label %.loopexit

bb.cy:                                            ; preds = %bb.cw
  %i.jx = extractelement <8 x double> %69, i64 0
  store double %i.jx, ptr %16, align 8, !alias.scope !799
  %i.jy = extractelement <8 x double> %69, i64 2
  store double %i.jy, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !799
  %i.jz = extractelement <8 x double> %69, i64 4
  store double %i.jz, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !799
  %i.ka = extractelement <8 x double> %69, i64 6
  store double %i.ka, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !799
  store i8 1, ptr %i.hx, align 8, !tbaa !138, !alias.scope !799
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.kb = load ptr, ptr %i.jo, align 8, !tbaa !85 ; 6 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !86, !noalias !800
  %i.kf = load double, ptr %i.kc, align 16, !tbaa !86, !noalias !800
  %i.kg = fneg double %i.kf                       ; 2 uses
  %i.kh = fcmp oeq double %i.ke, %i.kg
  br i1 %i.kh, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 40
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !86, !noalias !800
  %i.kl = load double, ptr %i.ki, align 16, !tbaa !86, !noalias !800
  %i.km = fneg double %i.kl                       ; 2 uses
  %i.kn = fcmp oeq double %i.kk, %i.km
  br i1 %i.kn, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kb, i64 56
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !86, !noalias !800
  %i.kr = load double, ptr %i.ko, align 16, !tbaa !86, !noalias !800
  %i.ks = fneg double %i.kr                       ; 2 uses
  %i.kt = fcmp oeq double %i.kq, %i.ks
  br i1 %i.kt, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cy
  %i.ku = invoke noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %18, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %.noexc347 unwind label %.loopexit

bb.dc:                                            ; preds = %bb.da
  store double %i.kg, ptr %17, align 8, !alias.scope !800
  store double %i.km, ptr %.sroa.4.0..sroa_idx.i7.i.i, align 8, !alias.scope !800
  store double %i.ks, ptr %.sroa.5.0..sroa_idx.i8.i.i, align 8, !alias.scope !800
  store i8 1, ptr %i.hy, align 8, !tbaa !145, !alias.scope !801
  %i.kv = invoke noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %.noexc347 unwind label %.loopexit

.noexc347:                                        ; preds = %bb.dc, %bb.db
  %.0.i.i345 = phi i32 [ %i.ku, %bb.db ], [ %i.kv, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.dd

bb.dd:                                            ; preds = %.noexc347, %bb.cx
  %.1.i.i = phi i32 [ %.0.i.i345, %.noexc347 ], [ %i.jw, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  switch i32 %.1.i.i, label %bb.et [
    i32 1, label %bb.de
    i32 -1, label %bb.dn
    i32 0, label %bb.dw
  ]

.loopexit:                                        ; preds = %bb.cx, %bb.db, %bb.dc, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i360, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i370
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

.loopexit.split-lp:                               ; preds = %.invoke1545, %bb.eu
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

bb.de:                                            ; preds = %bb.dd
  %i.kw = load ptr, ptr %i.ig, align 8, !tbaa !91 ; 4 uses
  %i.kx = load ptr, ptr %i.ih, align 8, !tbaa !125
  %.not.i349 = icmp eq ptr %i.kw, %i.kx
  br i1 %.not.i349, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  store i32 %i.jm, ptr %i.kw, align 4, !tbaa !98
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  store ptr %i.ky, ptr %i.ig, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.dg:                                            ; preds = %bb.de
  %i.kz = load ptr, ptr %58, align 8, !tbaa !92   ; 4 uses
  %i.la = ptrtoint ptr %i.kw to i64
  %i.lb = ptrtoint ptr %i.kz to i64               ; 2 uses
  %i.lc = sub i64 %i.la, %i.lb                    ; 5 uses
  %i.ld = icmp eq i64 %i.lc, 9223372036854775804
  br i1 %i.ld, label %.invoke1545, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke1545:                                      ; preds = %bb.dt, %bb.dp, %bb.dk, %bb.dg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #36
          to label %.cont1546 unwind label %.loopexit.split-lp

.cont1546:                                        ; preds = %.invoke1545
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dg
  %i.le = ashr exact i64 %i.lc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.le, i64 1)
  %i.lf = add nsw i64 %.sroa.speculated.i.i.i, %i.le ; 2 uses
  %i.lg = icmp ult i64 %i.lf, %i.le
  %i.lh = call i64 @llvm.umin.i64(i64 %i.lf, i64 2305843009213693951)
  %i.li = select i1 %i.lg, i64 2305843009213693951, i64 %i.lh ; 3 uses
  %.not.i.i.i350 = icmp ne i64 %i.li, 0
  call void @llvm.assume(i1 %.not.i.i.i350)
  %i.lj = shl nuw nsw i64 %i.li, 2
  %i.lk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lj) #37
          to label %.noexc352 unwind label %.loopexit ; 4 uses

.noexc352:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 %i.lc ; 2 uses
  store i32 %i.jm, ptr %i.ll, align 4, !tbaa !98
  %i.lm = icmp sgt i64 %i.lc, 0
  br i1 %i.lm, label %bb.dh, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.dh:                                            ; preds = %.noexc352
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lk, ptr align 4 %i.kz, i64 %i.lc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.dh, %.noexc352
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %.not.i17.i.i = icmp eq ptr %i.kz, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.lo = load ptr, ptr %i.ih, align 8, !tbaa !125
  %i.lp = ptrtoint ptr %i.lo to i64
  %i.lq = sub i64 %i.lp, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef %i.lq) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.di, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.lk, ptr %58, align 8, !tbaa !92
  store ptr %i.ln, ptr %i.ig, align 8, !tbaa !91
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.li
  store ptr %i.lr, ptr %i.ih, align 8, !tbaa !125
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.df
  %.not.i353 = icmp eq ptr %.sroa.9715.0989, %.sroa.12716.0990
  br i1 %.not.i353, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i64 %storemerge1000, ptr %.sroa.9715.0989, align 8, !tbaa !93
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.9715.0989, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.dk:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.lt = ptrtoint ptr %.sroa.12716.0990 to i64
  %i.lu = ptrtoint ptr %.sroa.0711.0988 to i64
  %i.lv = sub i64 %i.lt, %i.lu                    ; 6 uses
  %i.lw = icmp eq i64 %i.lv, 9223372036854775800
  br i1 %i.lw, label %.invoke1545, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dk
  %i.lx = ashr exact i64 %i.lv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i354 = call i64 @llvm.umax.i64(i64 %i.lx, i64 1)
  %i.ly = add nsw i64 %.sroa.speculated.i.i.i354, %i.lx ; 2 uses
  %i.lz = icmp ult i64 %i.ly, %i.lx
  %i.ma = call i64 @llvm.umin.i64(i64 %i.ly, i64 1152921504606846975)
  %i.mb = select i1 %i.lz, i64 1152921504606846975, i64 %i.ma ; 3 uses
  %.not.i.i.i355 = icmp ne i64 %i.mb, 0
  call void @llvm.assume(i1 %.not.i.i.i355)
  %i.mc = shl nuw nsw i64 %i.mb, 3
  %i.md = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mc) #37
          to label %.noexc358 unwind label %.loopexit ; 4 uses

.noexc358:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.me = getelementptr inbounds i8, ptr %i.md, i64 %i.lv ; 2 uses
  store i64 %storemerge1000, ptr %i.me, align 8, !tbaa !93
  %i.mf = icmp sgt i64 %i.lv, 0
  br i1 %i.mf, label %bb.dl, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.dl:                                            ; preds = %.noexc358
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.md, ptr align 8 %.sroa.0711.0988, i64 %i.lv, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.dl, %.noexc358
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %.not.i17.i.i356 = icmp eq ptr %.sroa.0711.0988, null
  br i1 %.not.i17.i.i356, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0711.0988, i64 noundef %i.lv) #35
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.dm, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.mb
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.dn:                                            ; preds = %bb.dd
  %i.mi = load ptr, ptr %i.ie, align 8, !tbaa !91 ; 4 uses
  %i.mj = load ptr, ptr %i.if, align 8, !tbaa !125
  %.not.i359 = icmp eq ptr %i.mi, %i.mj
  br i1 %.not.i359, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i32 %i.jm, ptr %i.mi, align 4, !tbaa !98
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store ptr %i.mk, ptr %i.ie, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit368
end_hunk_4
