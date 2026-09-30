Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_eigen?download=true
inline.NumInlined: 10301
inline.NumDeleted: 4818
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZZN8nanobind6detail11func_createILb0ELb1EZL33nanobind_test_eigen_ext_exec_implNS_7module_EE4$_57N5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEJNS_6objectEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSB_jPNS0_12cleanup_listEE_8__invokeESP_SQ_jSS_"
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL33nanobind_test_eigen_ext_exec_implNS_7module_EE4$_57N5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEJNS_6objectEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSB_jPNS0_12cleanup_listEE_8__invokeESP_SQ_jSS_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Ref.1962", align 8   ; 9 uses
  %5 = alloca %"struct.nanobind::detail::tuple.1699", align 8 ; 9 uses
  %6 = alloca %"class.Eigen::Matrix.422", align 8 ; 11 uses
  %7 = alloca %"class.nanobind::object", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr null, ptr %5, align 8
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  %i.b = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_6objectEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %i.a, i32 noundef %2, ptr noundef %3) #32
  br i1 %i.b, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL33nanobind_test_eigen_ext_exec_implNS_7module_EE4$_57N5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEJNS_6objectEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSB_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.c = load i64, ptr %5, align 8                ; 2 uses
  store i64 %i.c, ptr %7, align 8
  store ptr null, ptr %5, align 8, !tbaa !44
  %.val.cast = inttoptr i64 %i.c to ptr
  call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !1534
  invoke void @_ZN8nanobind6detail9cast_implILb1EN5Eigen3RefIKNS2_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILin1ELin1EEEEEEET0_NS_6handleE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Ref.1962") align 8 %4, ptr %.val.cast) #34
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !alias.scope !1534
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !68, !noalias !1534
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.e, i64 noundef 1) #34
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_3RefIKS2_Li0ENS_6StrideILin1ELin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i.i unwind label %.body.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_3RefIKS2_Li0ENS_6StrideILin1ELin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i.i: ; preds = %.noexc
  %i.f = load ptr, ptr %4, align 8, !tbaa !366, !noalias !1534
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68, !noalias !1534
  %i.i = load i64, ptr %i.d, align 8, !tbaa !68, !noalias !1534 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !104, !alias.scope !1534
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, %i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_3RefIKS2_Li0ENS_6StrideILin1ELin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.i, i64 noundef 1) #34
          to label %.noexc.i.i.i unwind label %.body.i

.noexc.i.i.i:                                     ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !104, !alias.scope !1534
  br label %bb.c

bb.c:                                             ; preds = %.noexc.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_3RefIKS2_Li0ENS_6StrideILin1ELin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i.i
  %i.l = phi i64 [ %.pr.i.i.i.i.i.i.i, %.noexc.i.i.i ], [ %i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_3RefIKS2_Li0ENS_6StrideILin1ELin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i.i ] ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !105, !alias.scope !1534
  %i.n = icmp sgt i64 %i.l, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.05.i.i.i.i.i.i.i.i
  %i.p = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.h
  %i.q = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !41
  store i32 %i.r, ptr %i.o, align 4, !tbaa !41
  %i.s = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1533

.body.i:                                          ; preds = %thread-pre-split.i.i.i.i.i.i.i, %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %6, align 8, !tbaa !105, !alias.scope !1534
  call void @free(ptr noundef %i.u) #32
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !105, !noalias !1534
  call void @free(ptr noundef %i.w) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !1534
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !105, !noalias !1534
  call void @free(ptr noundef %i.y) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !1534
  %i.z = call ptr @_ZN8nanobind6detail11type_casterIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEiE17from_cpp_internalERKS4_NS_9rv_policyEPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 4, ptr noundef %3) #32
  %i.aa = load ptr, ptr %6, align 8, !tbaa !105
  call void @free(ptr noundef %i.aa) #32
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL33nanobind_test_eigen_ext_exec_implNS_7module_EE4$_57N5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEJNS_6objectEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSB_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit"

bb.d:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.d ], [ %i.t, %.body.i ]
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  resume { ptr, i32 } %eh.lpad-body

"_ZZN8nanobind6detail11func_createILb0ELb1EZL33nanobind_test_eigen_ext_exec_implNS_7module_EE4$_57N5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEJNS_6objectEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSB_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit": ; preds = %bb.a, %.loopexit
  %.0.i = phi ptr [ %i.z, %.loopexit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9cast_implILb1EN5Eigen3RefIKNS2_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILin1ELin1EEEEEEET0_NS_6handleE(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Ref.1962") align 8 %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.nanobind::detail::type_caster.1971", align 8 ; 13 uses
  %3 = alloca %struct.raii_cleanup.1972, align 8  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %2, i8 0, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.a = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  store <2 x i32> <i32 1, i32 5>, ptr %3, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !270
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.a, ptr %i.d, align 8, !tbaa !271
  store ptr null, ptr %i.c, align 8, !tbaa !22
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterIN5Eigen3RefIKNS2_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILin1ELin1EEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr %1, i32 noundef 17, ptr noundef nonnull %3) #32
  br i1 %i.e, label %bb.d, label %.critedge

.critedge:                                        ; preds = %bb.a
  invoke void @_ZN8nanobind6detail26raise_python_or_cast_errorEv() #36
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.critedge
  unreachable

bb.c:                                             ; preds = %.critedge
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN8nanobind6detail9cast_implILb1EN5Eigen3RefIKNS2_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILin1ELin1EEEEEEET0_NS_6handleEEN12raii_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !358
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.h) #32
  %i.i = load ptr, ptr %2, align 8, !tbaa !358
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.i) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !358, !noalias !1537
  %.not.i = icmp eq ptr %i.k, null                ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i, i64 8, i64 64
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %2, i64 %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.o = load ptr, ptr %..i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !359, !noalias !1537
  %.24.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i, i64 48, i64 104
  %.24.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %2, i64 %.24.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.p = load i64, ptr %.24.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !360, !noalias !1537
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %.25.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i, i64 32, i64 88
  %.25.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %2, i64 %.25.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.r = load ptr, ptr %.25.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !361, !noalias !1537
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39, !noalias !1537 ; 3 uses
  %.26.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i, i64 40, i64 96
  %.26.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %2, i64 %.26.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.t = load ptr, ptr %.26.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !362, !noalias !1537
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39, !noalias !1537
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !alias.scope !1537
  %i.v = call noundef i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.w = icmp eq i64 %i.s, 1
  %i.x = select i1 %i.w, i64 1, i64 %i.v          ; 2 uses
  %i.y = mul nsw i64 %i.x, %i.s
  store ptr %i.q, ptr %0, align 8, !tbaa !366, !alias.scope !1537
  store i64 %i.s, ptr %i.n, align 8, !tbaa !68, !alias.scope !1537
  store i64 %i.y, ptr %i.l, align 8, !tbaa !68, !alias.scope !1537
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.x, ptr %i.z, align 8, !tbaa !68, !alias.scope !1537
  call void @_ZZN8nanobind6detail9cast_implILb1EN5Eigen3RefIKNS2_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILin1ELin1EEEEEEET0_NS_6handleEEN12raii_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !358
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.aa) #32
  %i.ab = load ptr, ptr %2, align 8, !tbaa !358
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.ab) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterIN5Eigen3RefIKNS2_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILin1ELin1EEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i32 %2, -6
  %i.b = tail call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJKiNS_5numpyENS0_5shapeIJLln1EEEENS0_6unusedEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i32 noundef %i.a, ptr noundef %3) #32
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = and i32 %2, 16
  %.not = icmp eq i32 %4, 0
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.v = select i1 %.not, i32 -5, i32 -6
  %i.c = and i32 %.v, %2
  %i.d = tail call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJKiNS_5numpyENS0_5shapeIJLln1EEEENS0_6unusedEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr %1, i32 noundef %i.c, ptr noundef %3) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %i.d, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZZN8nanobind6detail9cast_implILb1EN5Eigen3RefIKNS2_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILin1ELin1EEEEEEET0_NS_6handleEEN12raii_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !272
  %i.b = icmp ugt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge.i:                                    ; preds = %_ZL9Py_DECREFP7_object.exit.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !273
  %.not.i = icmp eq i32 %i.e, 5
  br i1 %.not.i, label %_ZN8nanobind6detail12cleanup_list7releaseEv.exit, label %bb.e

bb.b:                                             ; preds = %_ZL9Py_DECREFP7_object.exit.i, %.lr.ph.i
  %.04.i = phi i64 [ 1, %.lr.ph.i ], [ %i.m, %_ZL9Py_DECREFP7_object.exit.i ] ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !270
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.04.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.j = and i64 %i.i, 2147483648
  %.not3.i = icmp eq i64 %i.j, 0
  br i1 %.not3.i, label %bb.c, label %_ZL9Py_DECREFP7_object.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %i.i, -1                     ; 2 uses
  store i64 %i.k, ptr %i.h, align 8, !tbaa !25
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZL9Py_DECREFP7_object.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.h) #34
          to label %_ZL9Py_DECREFP7_object.exit.i unwind label %.loopexit.i

_ZL9Py_DECREFP7_object.exit.i:                    ; preds = %bb.d, %bb.c, %bb.b
  %i.m = add nuw nsw i64 %.04.i, 1                ; 2 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !272
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge.i, !llvm.loop !9

bb.e:                                             ; preds = %._crit_edge.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !270
  invoke void @PyMem_Free(ptr noundef %i.r) #34
          to label %_ZN8nanobind6detail12cleanup_list7releaseEv.exit unwind label %.loopexit.split-lp.i

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.s = extractvalue { ptr, i32 } %lpad.phi.i, 0
  tail call void @__clang_call_terminate(ptr %i.s) #35
  unreachable

_ZN8nanobind6detail12cleanup_list7releaseEv.exit: ; preds = %._crit_edge.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL33nanobind_test_eigen_ext_exec_implNS_7module_EE4$_58N5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEEJNS4_3MapIKS6_Li0ENS4_6StrideILin1ELin1EEEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSF_jPNS0_12cleanup_listEE_8__invokeEST_SU_jSW_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.1982", align 8 ; 11 uses
  %5 = alloca %"class.Eigen::Matrix.1987", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  %i.b = and i32 %2, -6
  %i.c = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJKfNS_5numpyENS0_5shapeIJLln1EEEENS0_6unusedEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr %i.a, i32 noundef %i.b, ptr noundef %3) #32
  br i1 %i.c, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL33nanobind_test_eigen_ext_exec_implNS_7module_EE4$_58N5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEEJNS4_3MapIKS6_Li0ENS4_6StrideILin1ELin1EEEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSF_jPNS0_12cleanup_listEE_clEST_SU_jSW_.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1545, !noalias !1546
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1547, !noalias !1546
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1548, !noalias !1546
  %i.k = load i64, ptr %i.j, align 8, !tbaa !39, !noalias !1546 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1549, !noalias !1550
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39, !noalias !1550
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !1551
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.k, i64 noundef 1) #34
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_3MapIKS2_Li0ENS_6StrideILin1ELin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i.i unwind label %.body

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_3MapIKS2_Li0ENS_6StrideILin1ELin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !369, !alias.scope !1551
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.p, %i.k
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_3MapIKS2_Li0ENS_6StrideILin1ELin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.k, i64 noundef 1) #34
          to label %.noexc.i.i.i unwind label %.body

.noexc.i.i.i:                                     ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !369, !alias.scope !1551
  br label %bb.c

bb.c:                                             ; preds = %.noexc.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_3MapIKS2_Li0ENS_6StrideILin1ELin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i.i
  %i.q = phi i64 [ %.pr.i.i.i.i.i.i.i, %.noexc.i.i.i ], [ %i.k, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_3MapIKS2_Li0ENS_6StrideILin1ELin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i.i ] ; 2 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !370, !alias.scope !1551
  %i.s = icmp sgt i64 %i.q, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZZL33nanobind_test_eigen_ext_exec_implN8nanobind7module_EENK4$_58clEN5Eigen3MapIKNS2_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILin1ELin1EEEEE.exit"

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i
  %i.u = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.n
  %i.v = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !35
  store float %i.w, ptr %i.t, align 4, !tbaa !35
  %i.x = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.x, %i.q
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %"_ZZL33nanobind_test_eigen_ext_exec_implN8nanobind7module_EENK4$_58clEN5Eigen3MapIKNS2_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILin1ELin1EEEEE.exit", label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1544

.body:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %5, align 8, !tbaa !370, !alias.scope !1551
  call void @free(ptr noundef %i.z) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.aa = load ptr, ptr %4, align 8, !tbaa !371
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.aa) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.y

"_ZZL33nanobind_test_eigen_ext_exec_implN8nanobind7module_EENK4$_58clEN5Eigen3MapIKNS2_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILin1ELin1EEEEE.exit": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.c
  %i.ab = call ptr @_ZN8nanobind6detail11type_casterIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEEiE17from_cpp_internalERKS4_NS_9rv_policyEPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 4, ptr noundef %3) #32
  %i.ac = load ptr, ptr %5, align 8, !tbaa !370
  call void @free(ptr noundef %i.ac) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL33nanobind_test_eigen_ext_exec_implNS_7module_EE4$_58N5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEEJNS4_3MapIKS6_Li0ENS4_6StrideILin1ELin1EEEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSF_jPNS0_12cleanup_listEE_clEST_SU_jSW_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL33nanobind_test_eigen_ext_exec_implNS_7module_EE4$_58N5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEEJNS4_3MapIKS6_Li0ENS4_6StrideILin1ELin1EEEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSF_jPNS0_12cleanup_listEE_clEST_SU_jSW_.exit": ; preds = %bb.a, %"_ZZL33nanobind_test_eigen_ext_exec_implN8nanobind7module_EENK4$_58clEN5Eigen3MapIKNS2_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILin1ELin1EEEEE.exit"
  %.0.i = phi ptr [ %i.ab, %"_ZZL33nanobind_test_eigen_ext_exec_implN8nanobind7module_EENK4$_58clEN5Eigen3MapIKNS2_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILin1ELin1EEEEE.exit" ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.ad = load ptr, ptr %4, align 8, !tbaa !371
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.ad) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJKfNS_5numpyENS0_5shapeIJLln1EEEENS0_6unusedEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  %4 = alloca %"struct.nanobind::detail::ndarray_config", align 16 ; 7 uses
  %i.b = icmp ne ptr %1, @_Py_NoneStruct
  %i.c = and i32 %2, 4
  %.not = icmp eq i32 %i.c, 0
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !371
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef null) #32
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store <4 x i32> <i32 0, i32 0, i32 1, i32 73730>, ptr %4, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.e, align 16, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.f, align 1, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 -1, ptr %i.a, align 8, !tbaa !39
  store ptr %i.a, ptr %i.g, align 8, !tbaa !84
  %i.h = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.i = trunc i32 %2 to i1
  %i.j = call noundef ptr @_ZN8nanobind6detail14ndarray_importEPNS0_12nb_internalsEP7_objectPKNS0_14ndarray_configEbPNS0_12cleanup_listE(ptr noundef %i.h, ptr noundef %1, ptr noundef nonnull %4, i1 noundef zeroext %i.i, ptr noundef %3) #32 ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !1553   ; 2 uses
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %bb.e, label %bb.d, !prof !85

bb.d:                                             ; preds = %bb.c
end_hunk_0
