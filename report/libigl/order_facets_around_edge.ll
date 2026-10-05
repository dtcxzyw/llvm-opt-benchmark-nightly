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
  %i.jr = load atomic ptr, ptr %i.jq acquire, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %.sroa.024.0.copyload.i.i.i330 = load <2 x double>, ptr %i.jr, align 16, !tbaa !86, !noalias !397 ; 2 uses
  %68 = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %.sroa.019.0.copyload.i.i.i333 = load <2 x double>, ptr %68, align 16, !tbaa !86, !noalias !397 ; 2 uses
  %69 = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %.sroa.014.0.copyload.i.i.i336 = load <2 x double>, ptr %69, align 16, !tbaa !86, !noalias !397 ; 2 uses
  %70 = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %.sroa.09.0.copyload.i.i.i339 = load <2 x double>, ptr %70, align 16, !tbaa !86, !noalias !397 ; 2 uses
  %71 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i330, <2 x double> %.sroa.019.0.copyload.i.i.i333, <2 x i32> <i32 0, i32 2>
  %72 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i336, <2 x double> %.sroa.09.0.copyload.i.i.i339, <2 x i32> <i32 0, i32 2>
  %73 = shufflevector <2 x double> %71, <2 x double> %72, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %74 = fneg <4 x double> %73                     ; 5 uses
  %75 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i330, <2 x double> %.sroa.019.0.copyload.i.i.i333, <2 x i32> <i32 1, i32 3>
  %76 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i336, <2 x double> %.sroa.09.0.copyload.i.i.i339, <2 x i32> <i32 1, i32 3>
  %77 = shufflevector <2 x double> %75, <2 x double> %76, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.js = fcmp oeq <4 x double> %77, %74
  %i.jt = freeze <4 x i1> %i.js
  %i.ju = bitcast <4 x i1> %i.jt to i4
  %i.jv = icmp eq i4 %i.ju, -1
  br i1 %i.jv, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jw = invoke noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %18, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %bb.dd unwind label %.loopexit

bb.cy:                                            ; preds = %bb.cw
  %i.jx = extractelement <4 x double> %74, i64 0
  store double %i.jx, ptr %16, align 8, !alias.scope !397
  %i.jy = extractelement <4 x double> %74, i64 1
  store double %i.jy, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !397
  %i.jz = extractelement <4 x double> %74, i64 2
  store double %i.jz, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !397
  %i.ka = extractelement <4 x double> %74, i64 3
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
  %i.jz = load atomic ptr, ptr %i.jy acquire, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %.sroa.024.0.copyload.i.i.i330 = load <2 x double>, ptr %i.jz, align 16, !tbaa !86, !noalias !538 ; 2 uses
  %68 = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %.sroa.019.0.copyload.i.i.i333 = load <2 x double>, ptr %68, align 16, !tbaa !86, !noalias !538 ; 2 uses
  %69 = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %.sroa.014.0.copyload.i.i.i336 = load <2 x double>, ptr %69, align 16, !tbaa !86, !noalias !538 ; 2 uses
  %70 = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  %.sroa.09.0.copyload.i.i.i339 = load <2 x double>, ptr %70, align 16, !tbaa !86, !noalias !538 ; 2 uses
  %71 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i330, <2 x double> %.sroa.019.0.copyload.i.i.i333, <2 x i32> <i32 0, i32 2>
  %72 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i336, <2 x double> %.sroa.09.0.copyload.i.i.i339, <2 x i32> <i32 0, i32 2>
  %73 = shufflevector <2 x double> %71, <2 x double> %72, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %74 = fneg <4 x double> %73                     ; 5 uses
  %75 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i330, <2 x double> %.sroa.019.0.copyload.i.i.i333, <2 x i32> <i32 1, i32 3>
  %76 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i336, <2 x double> %.sroa.09.0.copyload.i.i.i339, <2 x i32> <i32 1, i32 3>
  %77 = shufflevector <2 x double> %75, <2 x double> %76, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ka = fcmp oeq <4 x double> %77, %74
  %i.kb = freeze <4 x i1> %i.ka
  %i.kc = bitcast <4 x i1> %i.kb to i4
  %i.kd = icmp eq i4 %i.kc, -1
  br i1 %i.kd, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ke = invoke noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %18, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.jw)
          to label %bb.dd unwind label %.loopexit

bb.cy:                                            ; preds = %bb.cw
  %i.kf = extractelement <4 x double> %74, i64 0
  store double %i.kf, ptr %16, align 8, !alias.scope !538
  %i.kg = extractelement <4 x double> %74, i64 1
  store double %i.kg, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !538
  %i.kh = extractelement <4 x double> %74, i64 2
  store double %i.kh, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !538
  %i.ki = extractelement <4 x double> %74, i64 3
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
  %i.jr = load atomic ptr, ptr %i.jq acquire, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  %.sroa.024.0.copyload.i.i.i330 = load <2 x double>, ptr %i.jr, align 16, !tbaa !86, !noalias !664 ; 2 uses
  %68 = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %.sroa.019.0.copyload.i.i.i333 = load <2 x double>, ptr %68, align 16, !tbaa !86, !noalias !664 ; 2 uses
  %69 = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %.sroa.014.0.copyload.i.i.i336 = load <2 x double>, ptr %69, align 16, !tbaa !86, !noalias !664 ; 2 uses
  %70 = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %.sroa.09.0.copyload.i.i.i339 = load <2 x double>, ptr %70, align 16, !tbaa !86, !noalias !664 ; 2 uses
  %71 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i330, <2 x double> %.sroa.019.0.copyload.i.i.i333, <2 x i32> <i32 0, i32 2>
  %72 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i336, <2 x double> %.sroa.09.0.copyload.i.i.i339, <2 x i32> <i32 0, i32 2>
  %73 = shufflevector <2 x double> %71, <2 x double> %72, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %74 = fneg <4 x double> %73                     ; 5 uses
  %75 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i330, <2 x double> %.sroa.019.0.copyload.i.i.i333, <2 x i32> <i32 1, i32 3>
  %76 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i336, <2 x double> %.sroa.09.0.copyload.i.i.i339, <2 x i32> <i32 1, i32 3>
  %77 = shufflevector <2 x double> %75, <2 x double> %76, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.js = fcmp oeq <4 x double> %77, %74
  %i.jt = freeze <4 x i1> %i.js
  %i.ju = bitcast <4 x i1> %i.jt to i4
  %i.jv = icmp eq i4 %i.ju, -1
  br i1 %i.jv, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jw = invoke noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %18, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %bb.dd unwind label %.loopexit

bb.cy:                                            ; preds = %bb.cw
  %i.jx = extractelement <4 x double> %74, i64 0
  store double %i.jx, ptr %16, align 8, !alias.scope !664
  %i.jy = extractelement <4 x double> %74, i64 1
  store double %i.jy, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !664
  %i.jz = extractelement <4 x double> %74, i64 2
  store double %i.jz, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !664
  %i.ka = extractelement <4 x double> %74, i64 3
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
  %i.jr = load atomic ptr, ptr %i.jq acquire, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %.sroa.024.0.copyload.i.i.i330 = load <2 x double>, ptr %i.jr, align 16, !tbaa !86, !noalias !737 ; 2 uses
  %68 = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %.sroa.019.0.copyload.i.i.i333 = load <2 x double>, ptr %68, align 16, !tbaa !86, !noalias !737 ; 2 uses
  %69 = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %.sroa.014.0.copyload.i.i.i336 = load <2 x double>, ptr %69, align 16, !tbaa !86, !noalias !737 ; 2 uses
  %70 = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %.sroa.09.0.copyload.i.i.i339 = load <2 x double>, ptr %70, align 16, !tbaa !86, !noalias !737 ; 2 uses
  %71 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i330, <2 x double> %.sroa.019.0.copyload.i.i.i333, <2 x i32> <i32 0, i32 2>
  %72 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i336, <2 x double> %.sroa.09.0.copyload.i.i.i339, <2 x i32> <i32 0, i32 2>
  %73 = shufflevector <2 x double> %71, <2 x double> %72, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %74 = fneg <4 x double> %73                     ; 5 uses
  %75 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i330, <2 x double> %.sroa.019.0.copyload.i.i.i333, <2 x i32> <i32 1, i32 3>
  %76 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i336, <2 x double> %.sroa.09.0.copyload.i.i.i339, <2 x i32> <i32 1, i32 3>
  %77 = shufflevector <2 x double> %75, <2 x double> %76, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.js = fcmp oeq <4 x double> %77, %74
  %i.jt = freeze <4 x i1> %i.js
  %i.ju = bitcast <4 x i1> %i.jt to i4
  %i.jv = icmp eq i4 %i.ju, -1
  br i1 %i.jv, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jw = invoke noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %18, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %bb.dd unwind label %.loopexit

bb.cy:                                            ; preds = %bb.cw
  %i.jx = extractelement <4 x double> %74, i64 0
  store double %i.jx, ptr %16, align 8, !alias.scope !737
  %i.jy = extractelement <4 x double> %74, i64 1
  store double %i.jy, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !737
  %i.jz = extractelement <4 x double> %74, i64 2
  store double %i.jz, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !737
  %i.ka = extractelement <4 x double> %74, i64 3
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
  %i.jr = load atomic ptr, ptr %i.jq acquire, align 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %.sroa.024.0.copyload.i.i.i330 = load <2 x double>, ptr %i.jr, align 16, !tbaa !86, !noalias !799 ; 2 uses
  %68 = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %.sroa.019.0.copyload.i.i.i333 = load <2 x double>, ptr %68, align 16, !tbaa !86, !noalias !799 ; 2 uses
  %69 = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %.sroa.014.0.copyload.i.i.i336 = load <2 x double>, ptr %69, align 16, !tbaa !86, !noalias !799 ; 2 uses
  %70 = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %.sroa.09.0.copyload.i.i.i339 = load <2 x double>, ptr %70, align 16, !tbaa !86, !noalias !799 ; 2 uses
  %71 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i330, <2 x double> %.sroa.019.0.copyload.i.i.i333, <2 x i32> <i32 0, i32 2>
  %72 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i336, <2 x double> %.sroa.09.0.copyload.i.i.i339, <2 x i32> <i32 0, i32 2>
  %73 = shufflevector <2 x double> %71, <2 x double> %72, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %74 = fneg <4 x double> %73                     ; 5 uses
  %75 = shufflevector <2 x double> %.sroa.024.0.copyload.i.i.i330, <2 x double> %.sroa.019.0.copyload.i.i.i333, <2 x i32> <i32 1, i32 3>
  %76 = shufflevector <2 x double> %.sroa.014.0.copyload.i.i.i336, <2 x double> %.sroa.09.0.copyload.i.i.i339, <2 x i32> <i32 1, i32 3>
  %77 = shufflevector <2 x double> %75, <2 x double> %76, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.js = fcmp oeq <4 x double> %77, %74
  %i.jt = freeze <4 x i1> %i.js
  %i.ju = bitcast <4 x i1> %i.jt to i4
  %i.jv = icmp eq i4 %i.ju, -1
  br i1 %i.jv, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jw = invoke noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %18, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %bb.dd unwind label %.loopexit

bb.cy:                                            ; preds = %bb.cw
  %i.jx = extractelement <4 x double> %74, i64 0
  store double %i.jx, ptr %16, align 8, !alias.scope !799
  %i.jy = extractelement <4 x double> %74, i64 1
  store double %i.jy, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !799
  %i.jz = extractelement <4 x double> %74, i64 2
  store double %i.jz, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !799
  %i.ka = extractelement <4 x double> %74, i64 3
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
begin_hunk_5_@_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EEEEEbDpRKT_:bb.a
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aj, i64 200
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = select i1 %i.bo, ptr %i.bl, ptr %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !233
  %i.bt = icmp eq i64 %i.bs, 0
  br label %_ZNK4CGAL20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Plane_3ISG_EE.exit

bb.k:                                             ; preds = %bb.d
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c
  %.merged = phi { ptr, i32 } [ %i.bu, %bb.k ], [ %i.t, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.bv = load i32, ptr %i.a, align 4
  %i.bw = and i32 %i.bv, -24577
  %i.bx = or disjoint i32 %i.bw, %i.i
  store i32 %i.bx, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.resume

_ZNK4CGAL20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Plane_3ISG_EE.exit: ; preds = %bb.j, %_ZN4CGAL7is_zeroIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsISG_E7Is_zeroESI_E4type11result_typeERKSG_.exit1.i.i, %_ZN4CGAL7is_zeroIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsISG_E7Is_zeroESI_E4type11result_typeERKSG_.exit.i.i, %_ZNK4CGAL15Exact_converterINS_5EpeckENS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclINS_7Plane_3IS1_EEEEDcRKT_.exit, %bb.e
  %.3 = phi i1 [ %.113, %bb.e ], [ false, %_ZN4CGAL7is_zeroIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsISG_E7Is_zeroESI_E4type11result_typeERKSG_.exit1.i.i ], [ false, %_ZN4CGAL7is_zeroIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsISG_E7Is_zeroESI_E4type11result_typeERKSG_.exit.i.i ], [ false, %_ZNK4CGAL15Exact_converterINS_5EpeckENS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclINS_7Plane_3IS1_EEEEDcRKT_.exit ], [ %i.bt, %bb.j ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i16 @_ZNK4CGAL20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Plane_3IS5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.CGAL::Uncertain", align 2   ; 4 uses
  %3 = alloca %"class.CGAL::Uncertain", align 2   ; 4 uses
  %4 = alloca %"class.CGAL::Uncertain", align 2   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = load double, ptr %1, align 16, !tbaa !86 ; 2 uses
  %i.b = fneg double %i.a
  %i.c = fcmp olt double %i.a, 0.000000e+00
  br i1 %i.c, label %_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !86 ; 2 uses
  %i.f = fcmp olt double %i.e, 0.000000e+00
  br i1 %i.f, label %_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = fcmp oeq double %i.e, %i.b
  %i.h = zext i1 %i.g to i16
  %i.i = or disjoint i16 %i.h, 256
  br label %_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit.i

_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.5.0.i.i.i.i = phi i16 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  store i16 %.sroa.5.0.i.i.i.i, ptr %2, align 2
  %i.j = call noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  br i1 %i.j, label %bb.d, label %_ZNK4CGAL7PlaneC3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE13is_degenerateEv.exit

bb.d:                                             ; preds = %_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load double, ptr %i.k, align 16, !tbaa !86 ; 2 uses
  %i.m = fneg double %i.l
  %i.n = fcmp olt double %i.l, 0.000000e+00
  br i1 %i.n, label %_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit2.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !86 ; 2 uses
  %i.q = fcmp olt double %i.p, 0.000000e+00
  br i1 %i.q, label %_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit2.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = fcmp oeq double %i.p, %i.m
  %i.s = zext i1 %i.r to i16
  %i.t = or disjoint i16 %i.s, 256
  br label %_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit2.i

_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit2.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.5.0.i.i.i1.i = phi i16 [ %i.t, %bb.f ], [ 0, %bb.d ], [ 0, %bb.e ]
  store i16 %.sroa.5.0.i.i.i1.i, ptr %3, align 2
  %i.u = call noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %3)
  br i1 %i.u, label %bb.g, label %_ZNK4CGAL7PlaneC3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE13is_degenerateEv.exit

bb.g:                                             ; preds = %_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit2.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load double, ptr %i.v, align 16, !tbaa !86 ; 2 uses
  %i.x = fneg double %i.w
  %i.y = fcmp olt double %i.w, 0.000000e+00
  br i1 %i.y, label %_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit4.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load double, ptr %i.z, align 8, !tbaa !86 ; 2 uses
  %i.ab = fcmp olt double %i.aa, 0.000000e+00
  br i1 %i.ab, label %_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit4.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = fcmp oeq double %i.aa, %i.x
  %i.ad = zext i1 %i.ac to i16
  %i.ae = or disjoint i16 %i.ad, 256
  br label %_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit4.i

_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit4.i: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.5.0.i.i.i3.i = phi i16 [ %i.ae, %bb.i ], [ 0, %bb.g ], [ 0, %bb.h ]
  store i16 %.sroa.5.0.i.i.i3.i, ptr %4, align 2
  %i.af = call noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %4)
  %i.ag = select i1 %i.af, i16 257, i16 0
  br label %_ZNK4CGAL7PlaneC3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE13is_degenerateEv.exit

_ZNK4CGAL7PlaneC3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEE13is_degenerateEv.exit: ; preds = %_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit.i, %_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit2.i, %_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit4.i
  %.sroa.2.0.insert.ext.i = phi i16 [ 0, %_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit2.i ], [ 0, %_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit.i ], [ %i.ag, %_ZN4CGAL7is_zeroINS_11Interval_ntILb0EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsIS5_E7Is_zeroES7_E4type11result_typeERKS5_.exit4.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i16 %.sroa.2.0.insert.ext.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Plane_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv() #8 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !279
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1515, !nonnull !77, !align !281
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !322  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(92) %i.d), !inline_history !1513
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Plane_3IS3_EE(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Plane_3.640") align 16 %0, ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.CGAL::cpp_float", align 16  ; 16 uses
  %4 = alloca %"class.CGAL::cpp_float", align 16  ; 16 uses
  %5 = alloca %"class.CGAL::cpp_float", align 16  ; 16 uses
  %6 = alloca %"class.CGAL::cpp_float", align 16  ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  %i.a = load double, ptr %2, align 8, !tbaa !226, !noalias !1524 ; 2 uses
  store i64 0, ptr %3, align 16, !tbaa !86, !alias.scope !1524
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 1, ptr %i.b, align 16, !tbaa !294, !alias.scope !1524
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !295, !alias.scope !1524
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 73 ; 3 uses
  store i8 1, ptr %i.d, align 1, !tbaa !293, !alias.scope !1524
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 74 ; 3 uses
  store i8 0, ptr %i.e, align 2, !tbaa !296, !alias.scope !1524
  %i.f = bitcast double %i.a to i64               ; 4 uses
  %i.g = lshr i64 %i.f, 52
  %i.h = and i64 %i.g, 2047                       ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = fcmp oeq double %i.a, 0.000000e+00
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i32 0, ptr %i.k, align 16, !tbaa !300, !alias.scope !1524
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = and i64 %i.f, 4503599627370495
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i

bb.e:                                             ; preds = %bb.a
  %i.m = and i64 %i.f, 4503599627370495
  %i.n = or disjoint i64 %i.m, 4503599627370496
  %i.o = trunc nuw nsw i64 %i.h to i32
  %i.p = add nsw i32 %i.o, -1023
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i: ; preds = %bb.e, %bb.d
  %storemerge.i.i = phi i64 [ %i.n, %bb.e ], [ %i.l, %bb.d ] ; 3 uses
  %.0.i.i = phi i32 [ %i.p, %bb.e ], [ -1022, %bb.d ]
  %i.q = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %storemerge.i.i, i1 true)
  %i.r = lshr exact i64 %storemerge.i.i, %i.q     ; 2 uses
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = xor i32 %i.t, 63
  %i.v = sub nsw i32 %.0.i.i, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i32 %i.v, ptr %i.w, align 16, !tbaa !300, !alias.scope !1524
  store i64 %i.r, ptr %3, align 16, !tbaa !233, !alias.scope !1524
  %.not.i.i = icmp sgt i64 %i.f, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i
  %i.x = icmp ne i64 %storemerge.i.i, 0
  %spec.store.select.i.i = zext i1 %i.x to i8
  store i8 %spec.store.select.i.i, ptr %i.c, align 8, !alias.scope !1524
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  %i.z = load double, ptr %i.y, align 8, !tbaa !226, !noalias !1525 ; 2 uses
  store i64 0, ptr %4, align 16, !tbaa !86, !alias.scope !1525
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 1, ptr %i.aa, align 16, !tbaa !294, !alias.scope !1525
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !295, !alias.scope !1525
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 73 ; 3 uses
  store i8 1, ptr %i.ac, align 1, !tbaa !293, !alias.scope !1525
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 74 ; 3 uses
  store i8 0, ptr %i.ad, align 2, !tbaa !296, !alias.scope !1525
  %i.ae = bitcast double %i.z to i64              ; 4 uses
  %i.af = lshr i64 %i.ae, 52
  %i.ag = and i64 %i.af, 2047                     ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ai = fcmp oeq double %i.z, 0.000000e+00
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i32 0, ptr %i.aj, align 16, !tbaa !300, !alias.scope !1525
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ak = and i64 %i.ae, 4503599627370495
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i12

bb.k:                                             ; preds = %bb.g
  %i.al = and i64 %i.ae, 4503599627370495
  %i.am = or disjoint i64 %i.al, 4503599627370496
  %i.an = trunc nuw nsw i64 %i.ag to i32
  %i.ao = add nsw i32 %i.an, -1023
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i12

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i12: ; preds = %bb.k, %bb.j
  %storemerge.i.i13 = phi i64 [ %i.am, %bb.k ], [ %i.ak, %bb.j ] ; 3 uses
  %.0.i.i14 = phi i32 [ %i.ao, %bb.k ], [ -1022, %bb.j ]
  %i.ap = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %storemerge.i.i13, i1 true)
  %i.aq = lshr exact i64 %storemerge.i.i13, %i.ap ; 2 uses
  %i.ar = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = xor i32 %i.as, 63
  %i.au = sub nsw i32 %.0.i.i14, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i32 %i.au, ptr %i.av, align 16, !tbaa !300, !alias.scope !1525
  store i64 %i.aq, ptr %4, align 16, !tbaa !233, !alias.scope !1525
  %.not.i.i15 = icmp sgt i64 %i.ae, -1
  br i1 %.not.i.i15, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i12
  %i.aw = icmp ne i64 %storemerge.i.i13, 0
  %spec.store.select.i.i16 = zext i1 %i.aw to i8
  store i8 %spec.store.select.i.i16, ptr %i.ab, align 8, !alias.scope !1525
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i12, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1526)
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !226, !noalias !1526 ; 2 uses
  store i64 0, ptr %5, align 16, !tbaa !86, !alias.scope !1526
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.az, align 16, !tbaa !294, !alias.scope !1526
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store i8 0, ptr %i.ba, align 8, !tbaa !295, !alias.scope !1526
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 73 ; 3 uses
  store i8 1, ptr %i.bb, align 1, !tbaa !293, !alias.scope !1526
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 74 ; 3 uses
  store i8 0, ptr %i.bc, align 2, !tbaa !296, !alias.scope !1526
  %i.bd = bitcast double %i.ay to i64             ; 4 uses
  %i.be = lshr i64 %i.bd, 52
  %i.bf = and i64 %i.be, 2047                     ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bh = fcmp oeq double %i.ay, 0.000000e+00
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i32 0, ptr %i.bi, align 16, !tbaa !300, !alias.scope !1526
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.bj = and i64 %i.bd, 4503599627370495
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i18

bb.q:                                             ; preds = %bb.m
  %i.bk = and i64 %i.bd, 4503599627370495
  %i.bl = or disjoint i64 %i.bk, 4503599627370496
  %i.bm = trunc nuw nsw i64 %i.bf to i32
  %i.bn = add nsw i32 %i.bm, -1023
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i18

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i18: ; preds = %bb.q, %bb.p
  %storemerge.i.i19 = phi i64 [ %i.bl, %bb.q ], [ %i.bj, %bb.p ] ; 3 uses
  %.0.i.i20 = phi i32 [ %i.bn, %bb.q ], [ -1022, %bb.p ]
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %storemerge.i.i19, i1 true)
  %i.bp = lshr exact i64 %storemerge.i.i19, %i.bo ; 2 uses
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = xor i32 %i.br, 63
  %i.bt = sub nsw i32 %.0.i.i20, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i32 %i.bt, ptr %i.bu, align 16, !tbaa !300, !alias.scope !1526
  store i64 %i.bp, ptr %5, align 16, !tbaa !233, !alias.scope !1526
  %.not.i.i21 = icmp sgt i64 %i.bd, -1
  br i1 %.not.i.i21, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i18
  %i.bv = icmp ne i64 %storemerge.i.i19, 0
  %spec.store.select.i.i22 = zext i1 %i.bv to i8
  store i8 %spec.store.select.i.i22, ptr %i.ba, align 8, !alias.scope !1526
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i18, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !226, !noalias !1527 ; 2 uses
  store i64 0, ptr %6, align 16, !tbaa !86, !alias.scope !1527
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 1, ptr %i.by, align 16, !tbaa !294, !alias.scope !1527
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store i8 0, ptr %i.bz, align 8, !tbaa !295, !alias.scope !1527
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 73 ; 3 uses
  store i8 1, ptr %i.ca, align 1, !tbaa !293, !alias.scope !1527
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 74 ; 3 uses
  store i8 0, ptr %i.cb, align 2, !tbaa !296, !alias.scope !1527
  %i.cc = bitcast double %i.bx to i64             ; 4 uses
  %i.cd = lshr i64 %i.cc, 52
  %i.ce = and i64 %i.cd, 2047                     ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cg = fcmp oeq double %i.bx, 0.000000e+00
  br i1 %i.cg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i32 0, ptr %i.ch, align 16, !tbaa !300, !alias.scope !1527
  br label %_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd.exit29

bb.v:                                             ; preds = %bb.t
  %i.ci = and i64 %i.cc, 4503599627370495
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i24

bb.w:                                             ; preds = %bb.s
  %i.cj = and i64 %i.cc, 4503599627370495
  %i.ck = or disjoint i64 %i.cj, 4503599627370496
  %i.cl = trunc nuw nsw i64 %i.ce to i32
  %i.cm = add nsw i32 %i.cl, -1023
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i24

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i24: ; preds = %bb.w, %bb.v
  %storemerge.i.i25 = phi i64 [ %i.ck, %bb.w ], [ %i.ci, %bb.v ] ; 3 uses
  %.0.i.i26 = phi i32 [ %i.cm, %bb.w ], [ -1022, %bb.v ]
  %i.cn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %storemerge.i.i25, i1 true)
  %i.co = lshr exact i64 %storemerge.i.i25, %i.cn ; 2 uses
  %i.cp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = xor i32 %i.cq, 63
  %i.cs = sub nsw i32 %.0.i.i26, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i32 %i.cs, ptr %i.ct, align 16, !tbaa !300, !alias.scope !1527
  store i64 %i.co, ptr %6, align 16, !tbaa !233, !alias.scope !1527
  %.not.i.i27 = icmp sgt i64 %i.cc, -1
  br i1 %.not.i.i27, label %_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd.exit29, label %bb.x

bb.x:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i24
  %i.cu = icmp ne i64 %storemerge.i.i25, 0
  %spec.store.select.i.i28 = zext i1 %i.cu to i8
  store i8 %spec.store.select.i.i28, ptr %i.bz, align 8, !alias.scope !1527
  br label %_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd.exit29

_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd.exit29: ; preds = %bb.x, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i24, %bb.u
  invoke void @_ZN4CGAL7Plane_3INS_16Simple_cartesianINS_9cpp_floatEEEEC2ERKS2_S6_S6_S6_(ptr noundef nonnull align 16 dereferenceable(384) %0, ptr noundef nonnull align 16 dereferenceable(84) %3, ptr noundef nonnull align 16 dereferenceable(84) %4, ptr noundef nonnull align 16 dereferenceable(84) %5, ptr noundef nonnull align 16 dereferenceable(84) %6)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd.exit29
  %i.cv = load i8, ptr %i.ca, align 1, !tbaa !293, !range !76, !noundef !77
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = load i8, ptr %i.cb, align 2, !range !76
  %i.cy = trunc nuw i8 %i.cx to i1
  %or.cond.i.i.i = select i1 %i.cw, i1 true, i1 %i.cy
  br i1 %or.cond.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = load i64, ptr %6, align 16
  %i.dc = shl i64 %i.db, 3
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dc) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit

_ZN4CGAL9cpp_floatD2Ev.exit:                      ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.dd = load i8, ptr %i.bb, align 1, !tbaa !293, !range !76, !noundef !77
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = load i8, ptr %i.bc, align 2, !range !76
  %i.dg = trunc nuw i8 %i.df to i1
  %or.cond.i.i.i30 = select i1 %i.de, i1 true, i1 %i.dg
  br i1 %or.cond.i.i.i30, label %_ZN4CGAL9cpp_floatD2Ev.exit31, label %bb.aa

bb.aa:                                            ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = load i64, ptr %5, align 16
  %i.dk = shl i64 %i.dj, 3
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dk) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit31

_ZN4CGAL9cpp_floatD2Ev.exit31:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.dl = load i8, ptr %i.ac, align 1, !tbaa !293, !range !76, !noundef !77
  %i.dm = trunc nuw i8 %i.dl to i1
  %i.dn = load i8, ptr %i.ad, align 2, !range !76
  %i.do = trunc nuw i8 %i.dn to i1
  %or.cond.i.i.i32 = select i1 %i.dm, i1 true, i1 %i.do
  br i1 %or.cond.i.i.i32, label %_ZN4CGAL9cpp_floatD2Ev.exit33, label %bb.ab

bb.ab:                                            ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit31
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = load i64, ptr %4, align 16
  %i.ds = shl i64 %i.dr, 3
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.ds) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit33

_ZN4CGAL9cpp_floatD2Ev.exit33:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit31, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.dt = load i8, ptr %i.d, align 1, !tbaa !293, !range !76, !noundef !77
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = load i8, ptr %i.e, align 2, !range !76
  %i.dw = trunc nuw i8 %i.dv to i1
  %or.cond.i.i.i34 = select i1 %i.du, i1 true, i1 %i.dw
  br i1 %or.cond.i.i.i34, label %_ZN4CGAL9cpp_floatD2Ev.exit35, label %bb.ac

bb.ac:                                            ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit33
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = load i64, ptr %3, align 16
  %i.ea = shl i64 %i.dz, 3
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ea) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit35

_ZN4CGAL9cpp_floatD2Ev.exit35:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit33, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.ad:                                            ; preds = %_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd.exit29
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = load i8, ptr %i.ca, align 1, !tbaa !293, !range !76, !noundef !77
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = load i8, ptr %i.cb, align 2, !range !76
  %i.ef = trunc nuw i8 %i.ee to i1
  %or.cond.i.i.i36 = select i1 %i.ed, i1 true, i1 %i.ef
  br i1 %or.cond.i.i.i36, label %_ZN4CGAL9cpp_floatD2Ev.exit37, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = load i64, ptr %6, align 16
  %i.ej = shl i64 %i.ei, 3
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ej) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit37

_ZN4CGAL9cpp_floatD2Ev.exit37:                    ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ek = load i8, ptr %i.bb, align 1, !tbaa !293, !range !76, !noundef !77
  %i.el = trunc nuw i8 %i.ek to i1
  %i.em = load i8, ptr %i.bc, align 2, !range !76
  %i.en = trunc nuw i8 %i.em to i1
  %or.cond.i.i.i38 = select i1 %i.el, i1 true, i1 %i.en
  br i1 %or.cond.i.i.i38, label %_ZN4CGAL9cpp_floatD2Ev.exit39, label %bb.af

bb.af:                                            ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit37
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = load i64, ptr %5, align 16
  %i.er = shl i64 %i.eq, 3
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.er) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit39

_ZN4CGAL9cpp_floatD2Ev.exit39:                    ; preds = %bb.af, %_ZN4CGAL9cpp_floatD2Ev.exit37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.es = load i8, ptr %i.ac, align 1, !tbaa !293, !range !76, !noundef !77
  %i.et = trunc nuw i8 %i.es to i1
  %i.eu = load i8, ptr %i.ad, align 2, !range !76
  %i.ev = trunc nuw i8 %i.eu to i1
  %or.cond.i.i.i40 = select i1 %i.et, i1 true, i1 %i.ev
  br i1 %or.cond.i.i.i40, label %_ZN4CGAL9cpp_floatD2Ev.exit41, label %bb.ag

bb.ag:                                            ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit39
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = load i64, ptr %4, align 16
  %i.ez = shl i64 %i.ey, 3
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.ez) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit41

_ZN4CGAL9cpp_floatD2Ev.exit41:                    ; preds = %bb.ag, %_ZN4CGAL9cpp_floatD2Ev.exit39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.fa = load i8, ptr %i.d, align 1, !tbaa !293, !range !76, !noundef !77
  %i.fb = trunc nuw i8 %i.fa to i1
  %i.fc = load i8, ptr %i.e, align 2, !range !76
  %i.fd = trunc nuw i8 %i.fc to i1
  %or.cond.i.i.i42 = select i1 %i.fb, i1 true, i1 %i.fd
  br i1 %or.cond.i.i.i42, label %_ZN4CGAL9cpp_floatD2Ev.exit43, label %bb.ah

bb.ah:                                            ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit41
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = load i64, ptr %3, align 16
  %i.fh = shl i64 %i.fg, 3
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fh) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit43

_ZN4CGAL9cpp_floatD2Ev.exit43:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit41, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.eb
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL7PlaneC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 361
  %i.b = load i8, ptr %i.a, align 1, !tbaa !293, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 362
  %i.e = load i8, ptr %i.d, align 2, !range !76
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond.i.i.i.i = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond.i.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i64, ptr %i.g, align 16
  %i.k = shl i64 %i.j, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.k) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i

_ZN4CGAL9cpp_floatD2Ev.exit.i:                    ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 265
  %i.m = load i8, ptr %i.l, align 1, !tbaa !293, !range !76, !noundef !77
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 266
  %i.p = load i8, ptr %i.o, align 2, !range !76
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i.i.i.1.i = select i1 %i.n, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i.1.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i, label %bb.c

bb.c:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load i64, ptr %i.r, align 16
  %i.v = shl i64 %i.u, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.v) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i

_ZN4CGAL9cpp_floatD2Ev.exit.1.i:                  ; preds = %bb.c, %_ZN4CGAL9cpp_floatD2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.x = load i8, ptr %i.w, align 1, !tbaa !293, !range !76, !noundef !77
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.aa = load i8, ptr %i.z, align 2, !range !76
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond.i.i.i.2.i = select i1 %i.y, i1 true, i1 %i.ab
  br i1 %or.cond.i.i.i.2.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.2.i, label %bb.d
end_hunk_5
begin_hunk_6_@_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors7Equal_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_11Direction_3IST_EES16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEEbDpRKS18_:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.e = invoke noundef zeroext i1 @_ZN4CGAL17equal_directionC3INS_9cpp_floatEEENS_8Equal_toIT_S3_E11result_typeERKS3_S7_S7_S7_S7_S7_(ptr noundef nonnull align 16 dereferenceable(288) %3, ptr noundef nonnull align 16 dereferenceable(84) %i.a, ptr noundef nonnull align 16 dereferenceable(84) %i.b, ptr noundef nonnull align 16 dereferenceable(288) %4, ptr noundef nonnull align 16 dereferenceable(84) %i.c, ptr noundef nonnull align 16 dereferenceable(84) %i.d)
          to label %_ZNK4CGAL20CommonKernelFunctors7Equal_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_11Direction_3IS4_EES9_.exit unwind label %bb.j

_ZNK4CGAL20CommonKernelFunctors7Equal_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_11Direction_3IS4_EES9_.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 265
  %i.g = load i8, ptr %i.f, align 1, !tbaa !293, !range !76, !noundef !77
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 266
  %i.j = load i8, ptr %i.i, align 2, !range !76
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i.i.i.i.i = select i1 %i.h, i1 true, i1 %i.k
  br i1 %or.cond.i.i.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNK4CGAL20CommonKernelFunctors7Equal_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_11Direction_3IS4_EES9_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load i64, ptr %i.d, align 16
  %i.o = shl i64 %i.n, 3
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.o) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.i.i:                  ; preds = %bb.c, %_ZNK4CGAL20CommonKernelFunctors7Equal_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_11Direction_3IS4_EES9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 169
  %i.q = load i8, ptr %i.p, align 1, !tbaa !293, !range !76, !noundef !77
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 170
  %i.t = load i8, ptr %i.s, align 2, !range !76
  %i.u = trunc nuw i8 %i.t to i1
  %or.cond.i.i.i.1.i.i = select i1 %i.r, i1 true, i1 %i.u
  br i1 %or.cond.i.i.i.1.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load i64, ptr %i.c, align 16
  %i.y = shl i64 %i.x, 3
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.y) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i:                ; preds = %bb.d, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 73
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !293, !range !76, !noundef !77
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 74
  %i.ad = load i8, ptr %i.ac, align 2, !range !76
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i.i.i.2.i.i = select i1 %i.ab, i1 true, i1 %i.ae
  br i1 %or.cond.i.i.i.2.i.i, label %_ZN4CGAL11DirectionC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = load i64, ptr %4, align 16
  %i.ai = shl i64 %i.ah, 3
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ai) #35
  br label %_ZN4CGAL11DirectionC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit

_ZN4CGAL11DirectionC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 265
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !293, !range !76, !noundef !77
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 266
  %i.an = load i8, ptr %i.am, align 2, !range !76
  %i.ao = trunc nuw i8 %i.an to i1
  %or.cond.i.i.i.i.i6 = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond.i.i.i.i.i6, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i7, label %bb.f

bb.f:                                             ; preds = %_ZN4CGAL11DirectionC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = load i64, ptr %i.b, align 16
  %i.as = shl i64 %i.ar, 3
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.as) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i7

_ZN4CGAL9cpp_floatD2Ev.exit.i.i7:                 ; preds = %bb.f, %_ZN4CGAL11DirectionC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 169
  %i.au = load i8, ptr %i.at, align 1, !tbaa !293, !range !76, !noundef !77
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 170
  %i.ax = load i8, ptr %i.aw, align 2, !range !76
  %i.ay = trunc nuw i8 %i.ax to i1
  %or.cond.i.i.i.1.i.i8 = select i1 %i.av, i1 true, i1 %i.ay
  br i1 %or.cond.i.i.i.1.i.i8, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i9, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i7
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load i64, ptr %i.a, align 16
  %i.bc = shl i64 %i.bb, 3
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bc) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i9

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i9:               ; preds = %bb.g, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i7
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 73
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !293, !range !76, !noundef !77
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 74
  %i.bh = load i8, ptr %i.bg, align 2, !range !76
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i.i.i.2.i.i10 = select i1 %i.bf, i1 true, i1 %i.bi
  br i1 %or.cond.i.i.i.2.i.i10, label %_ZN4CGAL11DirectionC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit11, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i9
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load i64, ptr %3, align 16
  %i.bm = shl i64 %i.bl, 3
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bm) #35
  br label %_ZN4CGAL11DirectionC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit11

_ZN4CGAL11DirectionC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit11: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i9, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i1 %i.e

bb.i:                                             ; preds = %bb.a
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL11DirectionC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %4) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.j ], [ %i.bn, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN4CGAL11DirectionC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_11Direction_3IS3_EE(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Direction_3.714") align 16 %0, ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.CGAL::DirectionC3.715", align 16 ; 22 uses
  %4 = alloca %"class.CGAL::cpp_float", align 16  ; 16 uses
  %5 = alloca %"class.CGAL::cpp_float", align 16  ; 16 uses
  %6 = alloca %"class.CGAL::cpp_float", align 16  ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  %i.a = load double, ptr %2, align 8, !tbaa !226, !noalias !1702 ; 2 uses
  store i64 0, ptr %4, align 16, !tbaa !86, !alias.scope !1702
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 1, ptr %i.b, align 16, !tbaa !294, !alias.scope !1702
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !295, !alias.scope !1702
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 73 ; 3 uses
  store i8 1, ptr %i.d, align 1, !tbaa !293, !alias.scope !1702
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 74 ; 3 uses
  store i8 0, ptr %i.e, align 2, !tbaa !296, !alias.scope !1702
  %i.f = bitcast double %i.a to i64               ; 4 uses
  %i.g = lshr i64 %i.f, 52
  %i.h = and i64 %i.g, 2047                       ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = fcmp oeq double %i.a, 0.000000e+00
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i32 0, ptr %i.k, align 16, !tbaa !300, !alias.scope !1702
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = and i64 %i.f, 4503599627370495
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i

bb.e:                                             ; preds = %bb.a
  %i.m = and i64 %i.f, 4503599627370495
  %i.n = or disjoint i64 %i.m, 4503599627370496
  %i.o = trunc nuw nsw i64 %i.h to i32
  %i.p = add nsw i32 %i.o, -1023
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i: ; preds = %bb.e, %bb.d
  %storemerge.i.i = phi i64 [ %i.n, %bb.e ], [ %i.l, %bb.d ] ; 3 uses
  %.0.i.i = phi i32 [ %i.p, %bb.e ], [ -1022, %bb.d ]
  %i.q = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %storemerge.i.i, i1 true)
  %i.r = lshr exact i64 %storemerge.i.i, %i.q     ; 2 uses
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = xor i32 %i.t, 63
  %i.v = sub nsw i32 %.0.i.i, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i32 %i.v, ptr %i.w, align 16, !tbaa !300, !alias.scope !1702
  store i64 %i.r, ptr %4, align 16, !tbaa !233, !alias.scope !1702
  %.not.i.i = icmp sgt i64 %i.f, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i
  %i.x = icmp ne i64 %storemerge.i.i, 0
  %spec.store.select.i.i = zext i1 %i.x to i8
  store i8 %spec.store.select.i.i, ptr %i.c, align 8, !alias.scope !1702
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1703)
  %i.z = load double, ptr %i.y, align 8, !tbaa !226, !noalias !1703 ; 2 uses
  store i64 0, ptr %5, align 16, !tbaa !86, !alias.scope !1703
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.aa, align 16, !tbaa !294, !alias.scope !1703
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !295, !alias.scope !1703
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 73 ; 3 uses
  store i8 1, ptr %i.ac, align 1, !tbaa !293, !alias.scope !1703
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 74 ; 3 uses
  store i8 0, ptr %i.ad, align 2, !tbaa !296, !alias.scope !1703
  %i.ae = bitcast double %i.z to i64              ; 4 uses
  %i.af = lshr i64 %i.ae, 52
  %i.ag = and i64 %i.af, 2047                     ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ai = fcmp oeq double %i.z, 0.000000e+00
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i32 0, ptr %i.aj, align 16, !tbaa !300, !alias.scope !1703
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ak = and i64 %i.ae, 4503599627370495
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i9

bb.k:                                             ; preds = %bb.g
  %i.al = and i64 %i.ae, 4503599627370495
  %i.am = or disjoint i64 %i.al, 4503599627370496
  %i.an = trunc nuw nsw i64 %i.ag to i32
  %i.ao = add nsw i32 %i.an, -1023
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i9

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i9: ; preds = %bb.k, %bb.j
  %storemerge.i.i10 = phi i64 [ %i.am, %bb.k ], [ %i.ak, %bb.j ] ; 3 uses
  %.0.i.i11 = phi i32 [ %i.ao, %bb.k ], [ -1022, %bb.j ]
  %i.ap = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %storemerge.i.i10, i1 true)
  %i.aq = lshr exact i64 %storemerge.i.i10, %i.ap ; 2 uses
  %i.ar = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = xor i32 %i.as, 63
  %i.au = sub nsw i32 %.0.i.i11, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i32 %i.au, ptr %i.av, align 16, !tbaa !300, !alias.scope !1703
  store i64 %i.aq, ptr %5, align 16, !tbaa !233, !alias.scope !1703
  %.not.i.i12 = icmp sgt i64 %i.ae, -1
  br i1 %.not.i.i12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i9
  %i.aw = icmp ne i64 %storemerge.i.i10, 0
  %spec.store.select.i.i13 = zext i1 %i.aw to i8
  store i8 %spec.store.select.i.i13, ptr %i.ab, align 8, !alias.scope !1703
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i9, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !226, !noalias !1704 ; 2 uses
  store i64 0, ptr %6, align 16, !tbaa !86, !alias.scope !1704
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 1, ptr %i.az, align 16, !tbaa !294, !alias.scope !1704
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store i8 0, ptr %i.ba, align 8, !tbaa !295, !alias.scope !1704
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 73 ; 3 uses
  store i8 1, ptr %i.bb, align 1, !tbaa !293, !alias.scope !1704
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 74 ; 3 uses
  store i8 0, ptr %i.bc, align 2, !tbaa !296, !alias.scope !1704
  %i.bd = bitcast double %i.ay to i64             ; 4 uses
  %i.be = lshr i64 %i.bd, 52
  %i.bf = and i64 %i.be, 2047                     ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bh = fcmp oeq double %i.ay, 0.000000e+00
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i32 0, ptr %i.bi, align 16, !tbaa !300, !alias.scope !1704
  br label %_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd.exit20

bb.p:                                             ; preds = %bb.n
  %i.bj = and i64 %i.bd, 4503599627370495
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i15

bb.q:                                             ; preds = %bb.m
  %i.bk = and i64 %i.bd, 4503599627370495
  %i.bl = or disjoint i64 %i.bk, 4503599627370496
  %i.bm = trunc nuw nsw i64 %i.bf to i32
  %i.bn = add nsw i32 %i.bm, -1023
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i15

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i15: ; preds = %bb.q, %bb.p
  %storemerge.i.i16 = phi i64 [ %i.bl, %bb.q ], [ %i.bj, %bb.p ] ; 3 uses
  %.0.i.i17 = phi i32 [ %i.bn, %bb.q ], [ -1022, %bb.p ]
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %storemerge.i.i16, i1 true)
  %i.bp = lshr exact i64 %storemerge.i.i16, %i.bo ; 2 uses
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = xor i32 %i.br, 63
  %i.bt = sub nsw i32 %.0.i.i17, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i32 %i.bt, ptr %i.bu, align 16, !tbaa !300, !alias.scope !1704
  store i64 %i.bp, ptr %6, align 16, !tbaa !233, !alias.scope !1704
  %.not.i.i18 = icmp sgt i64 %i.bd, -1
  br i1 %.not.i.i18, label %_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd.exit20, label %bb.r

bb.r:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i15
  %i.bv = icmp ne i64 %storemerge.i.i16, 0
  %spec.store.select.i.i19 = zext i1 %i.bv to i8
  store i8 %spec.store.select.i.i19, ptr %i.ba, align 8, !alias.scope !1704
  br label %_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd.exit20

_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd.exit20: ; preds = %bb.r, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i15, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN4CGAL11DirectionC3INS_16Simple_cartesianINS_9cpp_floatEEEEC2ERKS2_S6_S6_(ptr noundef nonnull align 16 dereferenceable(288) %3, ptr noundef nonnull align 16 dereferenceable(84) %4, ptr noundef nonnull align 16 dereferenceable(84) %5, ptr noundef nonnull align 16 dereferenceable(84) %6)
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd.exit20
  store i64 0, ptr %0, align 16, !tbaa !86
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.by = load i64, ptr %i.bx, align 16, !tbaa !294 ; 2 uses
  store i64 %i.by, ptr %i.bw, align 16, !tbaa !294
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !295, !range !76, !noundef !77
  store i8 %i.cb, ptr %i.bz, align 8, !tbaa !295
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 73
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !293, !range !76, !noundef !77 ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !293
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 74
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !296, !range !76, !noundef !77
  store i8 %i.ch, ptr %i.cf, align 2, !tbaa !296
  %i.ci = trunc nuw i8 %i.ce to i1
  br i1 %i.ci, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.noexc
  %i.cj = shl i64 %i.by, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(288) %0, ptr nonnull align 16 dereferenceable(288) %3, i64 %i.cj, i1 false)
  br label %bb.u

bb.t:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %0, ptr noundef nonnull align 16 dereferenceable(288) %3, i64 16, i1 false), !tbaa.struct !250
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.cm = load i32, ptr %i.cl, align 16, !tbaa !300
  store i32 %i.cm, ptr %i.ck, align 16, !tbaa !300
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 0, ptr %i.cn, align 16, !tbaa !86
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.cr = load i64, ptr %i.cq, align 16, !tbaa !294 ; 2 uses
  store i64 %i.cr, ptr %i.cp, align 16, !tbaa !294
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !295, !range !76, !noundef !77
  store i8 %i.cu, ptr %i.cs, align 8, !tbaa !295
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 169
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !293, !range !76, !noundef !77 ; 2 uses
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !293
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 170
  %i.da = load i8, ptr %i.cz, align 2, !tbaa !296, !range !76, !noundef !77
  store i8 %i.da, ptr %i.cy, align 2, !tbaa !296
  %i.db = trunc nuw i8 %i.cx to i1
  %i.dc = shl i64 %i.cr, 3
  %.sink.i = select i1 %i.db, i64 %i.dc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(84) %i.cn, ptr nonnull align 16 dereferenceable(84) %i.co, i64 %.sink.i, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.df = load i32, ptr %i.de, align 16, !tbaa !300
  store i32 %i.df, ptr %i.dd, align 16, !tbaa !300
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 192
  store i64 0, ptr %i.dg, align 16, !tbaa !86
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.dk = load i64, ptr %i.dj, align 16, !tbaa !294 ; 2 uses
  store i64 %i.dk, ptr %i.di, align 16, !tbaa !294
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !295, !range !76, !noundef !77
  store i8 %i.dn, ptr %i.dl, align 8, !tbaa !295
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 265
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 265
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !293, !range !76, !noundef !77 ; 2 uses
  store i8 %i.dq, ptr %i.do, align 1, !tbaa !293
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 266
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 266
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !296, !range !76, !noundef !77
  store i8 %i.dt, ptr %i.dr, align 2, !tbaa !296
  %i.du = trunc nuw i8 %i.dq to i1
  %i.dv = shl i64 %i.dk, 3
  %.sink5.i = select i1 %i.du, i64 %i.dv, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(84) %i.dg, ptr nonnull align 16 dereferenceable(84) %i.dh, i64 %.sink5.i, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.dy = load i32, ptr %i.dx, align 16, !tbaa !300
  store i32 %i.dy, ptr %i.dw, align 16, !tbaa !300
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.dz = load i8, ptr %i.bb, align 1, !tbaa !293, !range !76, !noundef !77
  %i.ea = trunc nuw i8 %i.dz to i1
  %i.eb = load i8, ptr %i.bc, align 2, !range !76
  %i.ec = trunc nuw i8 %i.eb to i1
  %or.cond.i.i.i = select i1 %i.ea, i1 true, i1 %i.ec
  br i1 %or.cond.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = load i64, ptr %6, align 16
  %i.eg = shl i64 %i.ef, 3
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eg) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit

_ZN4CGAL9cpp_floatD2Ev.exit:                      ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.eh = load i8, ptr %i.ac, align 1, !tbaa !293, !range !76, !noundef !77
  %i.ei = trunc nuw i8 %i.eh to i1
  %i.ej = load i8, ptr %i.ad, align 2, !range !76
  %i.ek = trunc nuw i8 %i.ej to i1
  %or.cond.i.i.i21 = select i1 %i.ei, i1 true, i1 %i.ek
  br i1 %or.cond.i.i.i21, label %_ZN4CGAL9cpp_floatD2Ev.exit22, label %bb.w

bb.w:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = load i64, ptr %5, align 16
  %i.eo = shl i64 %i.en, 3
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eo) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit22

_ZN4CGAL9cpp_floatD2Ev.exit22:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ep = load i8, ptr %i.d, align 1, !tbaa !293, !range !76, !noundef !77
  %i.eq = trunc nuw i8 %i.ep to i1
  %i.er = load i8, ptr %i.e, align 2, !range !76
  %i.es = trunc nuw i8 %i.er to i1
  %or.cond.i.i.i23 = select i1 %i.eq, i1 true, i1 %i.es
  br i1 %or.cond.i.i.i23, label %_ZN4CGAL9cpp_floatD2Ev.exit24, label %bb.x

bb.x:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit22
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = load i64, ptr %4, align 16
  %i.ew = shl i64 %i.ev, 3
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ew) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit24

_ZN4CGAL9cpp_floatD2Ev.exit24:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit22, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.y:                                             ; preds = %_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd.exit20
  %i.ex = landingpad { ptr, i32 }
          cleanup
  %i.ey = load i8, ptr %i.bb, align 1, !tbaa !293, !range !76, !noundef !77
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = load i8, ptr %i.bc, align 2, !range !76
  %i.fb = trunc nuw i8 %i.fa to i1
  %or.cond.i.i.i25 = select i1 %i.ez, i1 true, i1 %i.fb
  br i1 %or.cond.i.i.i25, label %_ZN4CGAL9cpp_floatD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = load i64, ptr %6, align 16
  %i.ff = shl i64 %i.fe, 3
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.ff) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit26

_ZN4CGAL9cpp_floatD2Ev.exit26:                    ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.fg = load i8, ptr %i.ac, align 1, !tbaa !293, !range !76, !noundef !77
  %i.fh = trunc nuw i8 %i.fg to i1
  %i.fi = load i8, ptr %i.ad, align 2, !range !76
  %i.fj = trunc nuw i8 %i.fi to i1
  %or.cond.i.i.i27 = select i1 %i.fh, i1 true, i1 %i.fj
  br i1 %or.cond.i.i.i27, label %_ZN4CGAL9cpp_floatD2Ev.exit28, label %bb.aa

bb.aa:                                            ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit26
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = load i64, ptr %5, align 16
  %i.fn = shl i64 %i.fm, 3
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fn) #35
  br label %_ZN4CGAL9cpp_floatD2Ev.exit28

_ZN4CGAL9cpp_floatD2Ev.exit28:                    ; preds = %bb.aa, %_ZN4CGAL9cpp_floatD2Ev.exit26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.fo = load i8, ptr %i.d, align 1, !tbaa !293, !range !76, !noundef !77
  %i.fp = trunc nuw i8 %i.fo to i1
  %i.fq = load i8, ptr %i.e, align 2, !range !76
  %i.fr = trunc nuw i8 %i.fq to i1
  %or.cond.i.i.i29 = select i1 %i.fp, i1 true, i1 %i.fr
  br i1 %or.cond.i.i.i29, label %_ZN4CGAL9cpp_floatD2Ev.exit30, label %bb.ab

bb.ab:                                            ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit28
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = load i64, ptr %4, align 16
  %i.fv = shl i64 %i.fu, 3
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fv) #35
end_hunk_6
