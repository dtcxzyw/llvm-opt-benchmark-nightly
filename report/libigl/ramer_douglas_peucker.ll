Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ramer_douglas_peucker?download=true
inline.NumInlined: 3863
inline.NumDeleted: 2180
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3igl21ramer_douglas_peuckerIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EERNSB_IT1_EE:bb.a
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %.011.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.el, %.lr.ph.i.i.i.i.i.i.i.i.epil ], [ %.011.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter66 = phi i64 [ %epil.iter66.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.011.i.i.i.i.i.i.i.i.epil
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.011.i.i.i.i.i.i.i.i.epil
  %i.ek = load <2 x double>, ptr %i.ej, align 16, !tbaa !69
  store <2 x double> %i.ek, ptr %i.ei, align 16, !tbaa !69
  %i.el = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i.epil, 2
  %epil.iter66.next = add i64 %epil.iter66, 1     ; 2 uses
  %epil.iter66.cmp.not = icmp eq i64 %epil.iter66.next, %xtraiter65
  br i1 %epil.iter66.cmp.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEEaSIS2_EERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !218

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEEaSIS2_EERS2_RKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEEaSIS2_EERS2_RKNS_9EigenBaseIT_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %bb.e, %_ZNSt14_Function_baseD2Ev.exit
  ret void

bb.x:                                             ; preds = %_ZN5Eigen5ArrayIbLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIbEES1_EEEERKNS_9EigenBaseIT_EENS4_9enable_ifIXsr8internal14is_convertibleINS9_6ScalarEbEE5valueENS1_11PrivateTypeEE4typeE.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.y:                                             ; preds = %bb.n, %bb.m, %bb.o
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.p
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i28, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEE16_resize_to_matchINS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILi2EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i, %bb.r
  %i.ep = landingpad { ptr, i32 }
          cleanup
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !53
  call void @free(ptr noundef %i.er) #21
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.ep, %bb.aa ], [ %i.eo, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ab ], [ %i.en, %bb.y ], [ %i.em, %bb.x ]
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.et = load ptr, ptr %i.es, align 16, !tbaa !85 ; 2 uses
  %.not.i33 = icmp eq ptr %i.et, null
  br i1 %.not.i33, label %_ZNSt14_Function_baseD2Ev.exit34, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = invoke noundef zeroext i1 %i.et(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit34 unwind label %bb.ae ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit34:                 ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.ex = load ptr, ptr %5, align 8, !tbaa !72
  call void @free(ptr noundef %i.ex) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEEclINS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal5all_tEEENS6_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeIS9_SA_E4typeEEE19ReturnAsIndexedViewESD_E4typeERKS9_RKSA_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::IndexedView.235") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !224 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread, label %bb.b

_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread: ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.b, 4611686018427387903
  br i1 %i.e, label %bb.c, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #21, !noalias !224 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !23, !noalias !224
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23, !noalias !224
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = shl nuw i64 %i.b, 2                      ; 4 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #22, !noalias !224 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4

bb.d:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #21, !noalias !224 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !23, !noalias !224
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23, !noalias !224
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.k = load ptr, ptr %2, align 8, !tbaa !53, !noalias !224
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr align 4 %i.k, i64 %i.g, i1 false), !noalias !224
  store ptr %1, ptr %0, align 8, !tbaa !100
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.g) #22 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.noexc5 unwind label %bb.h

.noexc5:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.o, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.p, align 8, !tbaa !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 4 %i.h, i64 %i.g, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread
  %.sroa.06.01217 = phi ptr [ null, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread ], [ %i.h, %bb.f ]
  tail call void @free(ptr noundef %.sroa.06.01217) #21
  ret void

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.h) #21
  resume { ptr, i32 } %i.q
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_12ArrayWrapperIS2_EEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESB_SB_EEKNS_9ReplicateINS9_INS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELi2EEEEEEEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !230, !nonnull !61, !align !62
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 4611686018427387903
  br i1 %i.e, label %bb.b, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEE16_resize_to_matchINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_12ArrayWrapperIS2_EEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESB_SB_EEKNS_9ReplicateINS9_INS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELi2EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEE16_resize_to_matchINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_12ArrayWrapperIS2_EEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESB_SB_EEKNS_9ReplicateINS9_INS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELi2EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %bb.a
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.d, i64 noundef 2)
  %i.g = load ptr, ptr %1, align 8, !tbaa !232, !nonnull !61, !align !62 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91   ; 6 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !90   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !232, !nonnull !61, !align !62 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !91   ; 6 uses
  %i.o = ptrtoaddr ptr %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !90   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !232, !nonnull !61, !align !62 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !91   ; 6 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !90   ; 2 uses
  %i.x = load i64, ptr %i.a, align 8
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = inttoptr i64 %i.x to ptr ; 2 uses
  %i.y = load ptr, ptr %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !25 ; 9 uses
  %i.z = ptrtoaddr ptr %i.y to i64                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !90
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ad, %i.ab
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %thread-pre-split.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEE16_resize_to_matchINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_12ArrayWrapperIS2_EEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESB_SB_EEKNS_9ReplicateINS9_INS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELi2EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.ab, i64 noundef 2)
  %.pr.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !90
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEE16_resize_to_matchINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_12ArrayWrapperIS2_EEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESB_SB_EEKNS_9ReplicateINS9_INS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELi2EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.ae = phi i64 [ %.pr.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i ], [ %i.ab, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEE16_resize_to_matchINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_12ArrayWrapperIS2_EEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESB_SB_EEKNS_9ReplicateINS9_INS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELi2EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 15 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !91    ; 6 uses
  %i.ag = ptrtoaddr ptr %i.af to i64              ; 6 uses
  %i.ah = icmp sgt i64 %i.ae, 0
  br i1 %i.ah, label %.split.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_12ArrayWrapperIS2_EEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESB_SB_EEKNS_9ReplicateINS9_INS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELi2EEEEEEEEERS2_RKNS_9DenseBaseIT_EE.exit

.split.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.ae, 12
  br i1 %min.iters.check, label %.split.i.i.i.i.i.i.i.preheader35, label %vector.memcheck

vector.memcheck:                                  ; preds = %.split.i.i.i.i.i.i.i.preheader
  %i.ai = sub i64 %i.o, %i.ag
  %diff.check = icmp ugt i64 %i.ai, -16
  %i.aj = sub i64 %i.u, %i.ag
  %diff.check5 = icmp ugt i64 %i.aj, -16
  %conflict.rdx = or i1 %diff.check, %diff.check5
  %i.ak = sub i64 %i.z, %i.ag
  %diff.check6 = icmp ugt i64 %i.ak, -16
  %conflict.rdx7 = or i1 %conflict.rdx, %diff.check6
  %i.al = sub i64 %i.i, %i.ag
  %diff.check8 = icmp ugt i64 %i.al, -16
  %conflict.rdx9 = or i1 %conflict.rdx7, %diff.check8
  br i1 %conflict.rdx9, label %.split.i.i.i.i.i.i.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 9223372036854775806     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.am = getelementptr [8 x i8], ptr %i.af, i64 %index
  %i.an = getelementptr [8 x i8], ptr %i.h, i64 %index
  %i.ao = getelementptr [8 x i8], ptr %i.n, i64 %index
  %i.ap = getelementptr [8 x i8], ptr %i.t, i64 %index
  %wide.load = load <2 x double>, ptr %i.ao, align 8, !tbaa !28
  %wide.load10 = load <2 x double>, ptr %i.ap, align 8, !tbaa !28
  %i.aq = fsub <2 x double> %wide.load, %wide.load10
  %i.ar = getelementptr [8 x i8], ptr %i.y, i64 %index
  %wide.load11 = load <2 x double>, ptr %i.ar, align 8, !tbaa !28
  %i.as = fmul <2 x double> %i.aq, %wide.load11
  %wide.load12 = load <2 x double>, ptr %i.an, align 8, !tbaa !28
  %i.at = fadd <2 x double> %wide.load12, %i.as
  store <2 x double> %i.at, ptr %i.am, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.preheader35

.split.i.i.i.i.i.i.i.preheader35:                 ; preds = %vector.memcheck, %.split.i.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 8 uses
  %.neg = or disjoint i64 %.09.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split.i.i.i.i.i.i.i.prol.loopexit, label %.split.i.i.i.i.i.i.i.prol

.split.i.i.i.i.i.i.i.prol:                        ; preds = %.split.i.i.i.i.i.i.i.preheader35
  %gep.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %i.af, i64 %.09.i.i.i.i.i.i.i.ph
  %gep11.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %i.h, i64 %.09.i.i.i.i.i.i.i.ph
  %gep13.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %i.n, i64 %.09.i.i.i.i.i.i.i.ph
  %gep15.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %i.t, i64 %.09.i.i.i.i.i.i.i.ph
  %i.av = load double, ptr %gep13.i.i.i.i.i.i.i.prol, align 8, !tbaa !28
  %i.aw = load double, ptr %gep15.i.i.i.i.i.i.i.prol, align 8, !tbaa !28
  %i.ax = fsub double %i.av, %i.aw
  %i.ay = getelementptr [8 x i8], ptr %i.y, i64 %.09.i.i.i.i.i.i.i.ph
  %i.az = load double, ptr %i.ay, align 8, !tbaa !28
  %i.ba = fmul double %i.ax, %i.az
  %i.bb = load double, ptr %gep11.i.i.i.i.i.i.i.prol, align 8, !tbaa !28
  %i.bc = fadd double %i.bb, %i.ba
  store double %i.bc, ptr %gep.i.i.i.i.i.i.i.prol, align 8, !tbaa !28
  %i.bd = or disjoint i64 %.09.i.i.i.i.i.i.i.ph, 1
  br label %.split.i.i.i.i.i.i.i.prol.loopexit

.split.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.split.i.i.i.i.i.i.i.prol, %.split.i.i.i.i.i.i.i.preheader35
  %.09.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.ph, %.split.i.i.i.i.i.i.i.preheader35 ], [ %i.bd, %.split.i.i.i.i.i.i.i.prol ]
  %i.be = icmp eq i64 %i.ae, %.neg
  br i1 %i.be, label %._crit_edge.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.split.i.i.i.i.i.i.i.prol.loopexit, %.split.i.i.i.i.i.i.i, %middle.block
  %invariant.gep.1.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.af, i64 %i.ae ; 4 uses
  %invariant.gep10.1.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.k ; 4 uses
  %invariant.gep12.1.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.n, i64 %i.q ; 4 uses
  %invariant.gep14.1.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.t, i64 %i.w ; 4 uses
  %min.iters.check22 = icmp ult i64 %i.ae, 20
  br i1 %min.iters.check22, label %scalar.ph21.preheader, label %vector.memcheck13

vector.memcheck13:                                ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.bf = shl i64 %i.ae, 3                        ; 2 uses
  %2 = add i64 %i.bf, %i.ag                       ; 2 uses
  %3 = shl i64 %i.q, 3
  %i.bg = add i64 %3, %i.o
  %i.bh = sub i64 %i.bg, %2
  %diff.check14 = icmp ugt i64 %i.bh, -16
  %i.bi = shl i64 %i.w, 3
  %i.bj = add i64 %i.bi, %i.u
  %i.bk = sub i64 %i.bj, %2
  %diff.check15 = icmp ugt i64 %i.bk, -16
  %conflict.rdx16 = or i1 %diff.check14, %diff.check15
  %4 = add i64 %i.bf, %i.ag                       ; 2 uses
  %i.bl = sub i64 %i.z, %4
  %diff.check17 = icmp ugt i64 %i.bl, -16
  %conflict.rdx18 = or i1 %conflict.rdx16, %diff.check17
  %i.bm = shl i64 %i.k, 3
  %i.bn = add i64 %i.bm, %i.i
  %i.bo = sub i64 %i.bn, %4
  %diff.check19 = icmp ugt i64 %i.bo, -16
  %conflict.rdx20 = or i1 %conflict.rdx18, %diff.check19
  br i1 %conflict.rdx20, label %scalar.ph21.preheader, label %vector.ph23

vector.ph23:                                      ; preds = %vector.memcheck13
  %n.vec24 = and i64 %i.ae, 9223372036854775806   ; 3 uses
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph23
  %index26 = phi i64 [ 0, %vector.ph23 ], [ %index.next31, %vector.body25 ] ; 6 uses
  %i.bp = getelementptr [8 x i8], ptr %invariant.gep.1.i.i.i.i.i.i.i, i64 %index26
  %i.bq = getelementptr [8 x i8], ptr %invariant.gep10.1.i.i.i.i.i.i.i, i64 %index26
  %i.br = getelementptr [8 x i8], ptr %invariant.gep12.1.i.i.i.i.i.i.i, i64 %index26
  %i.bs = getelementptr [8 x i8], ptr %invariant.gep14.1.i.i.i.i.i.i.i, i64 %index26
  %wide.load27 = load <2 x double>, ptr %i.br, align 8, !tbaa !28
  %wide.load28 = load <2 x double>, ptr %i.bs, align 8, !tbaa !28
  %i.bt = fsub <2 x double> %wide.load27, %wide.load28
  %i.bu = getelementptr [8 x i8], ptr %i.y, i64 %index26
  %wide.load29 = load <2 x double>, ptr %i.bu, align 8, !tbaa !28
  %i.bv = fmul <2 x double> %i.bt, %wide.load29
  %wide.load30 = load <2 x double>, ptr %i.bq, align 8, !tbaa !28
  %i.bw = fadd <2 x double> %wide.load30, %i.bv
  store <2 x double> %i.bw, ptr %i.bp, align 8, !tbaa !28
  %index.next31 = add nuw i64 %index26, 2         ; 2 uses
  %i.bx = icmp eq i64 %index.next31, %n.vec24
  br i1 %i.bx, label %middle.block32, label %vector.body25, !llvm.loop !226

middle.block32:                                   ; preds = %vector.body25
  %cmp.n33 = icmp eq i64 %i.ae, %n.vec24
  br i1 %cmp.n33, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_12ArrayWrapperIS2_EEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESB_SB_EEKNS_9ReplicateINS9_INS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELi2EEEEEEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %scalar.ph21.preheader

scalar.ph21.preheader:                            ; preds = %vector.memcheck13, %._crit_edge.i.i.i.i.i.i.i, %middle.block32
  %.09.1.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck13 ], [ 0, %._crit_edge.i.i.i.i.i.i.i ], [ %n.vec24, %middle.block32 ] ; 8 uses
  %.neg38 = or disjoint i64 %.09.1.i.i.i.i.i.i.i.ph, 1
  %xtraiter36 = and i64 %i.ae, 1
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %scalar.ph21.prol.loopexit, label %scalar.ph21.prol

scalar.ph21.prol:                                 ; preds = %scalar.ph21.preheader
  %gep.1.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.1.i.i.i.i.i.i.i, i64 %.09.1.i.i.i.i.i.i.i.ph
  %gep11.1.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep10.1.i.i.i.i.i.i.i, i64 %.09.1.i.i.i.i.i.i.i.ph
  %gep13.1.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep12.1.i.i.i.i.i.i.i, i64 %.09.1.i.i.i.i.i.i.i.ph
  %gep15.1.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep14.1.i.i.i.i.i.i.i, i64 %.09.1.i.i.i.i.i.i.i.ph
  %i.by = load double, ptr %gep13.1.i.i.i.i.i.i.i.prol, align 8, !tbaa !28
  %i.bz = load double, ptr %gep15.1.i.i.i.i.i.i.i.prol, align 8, !tbaa !28
  %i.ca = fsub double %i.by, %i.bz
  %i.cb = getelementptr [8 x i8], ptr %i.y, i64 %.09.1.i.i.i.i.i.i.i.ph
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !28
  %i.cd = fmul double %i.ca, %i.cc
  %i.ce = load double, ptr %gep11.1.i.i.i.i.i.i.i.prol, align 8, !tbaa !28
  %i.cf = fadd double %i.ce, %i.cd
  store double %i.cf, ptr %gep.1.i.i.i.i.i.i.i.prol, align 8, !tbaa !28
  %i.cg = or disjoint i64 %.09.1.i.i.i.i.i.i.i.ph, 1
  br label %scalar.ph21.prol.loopexit

scalar.ph21.prol.loopexit:                        ; preds = %scalar.ph21.prol, %scalar.ph21.preheader
  %.09.1.i.i.i.i.i.i.i.unr = phi i64 [ %.09.1.i.i.i.i.i.i.i.ph, %scalar.ph21.preheader ], [ %i.cg, %scalar.ph21.prol ]
  %i.ch = icmp eq i64 %i.ae, %.neg38
  br i1 %i.ch, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_12ArrayWrapperIS2_EEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESB_SB_EEKNS_9ReplicateINS9_INS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELi2EEEEEEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %scalar.ph21

scalar.ph21:                                      ; preds = %scalar.ph21.prol.loopexit, %scalar.ph21
  %.09.1.i.i.i.i.i.i.i = phi i64 [ %i.cz, %scalar.ph21 ], [ %.09.1.i.i.i.i.i.i.i.unr, %scalar.ph21.prol.loopexit ] ; 7 uses
  %gep.1.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.1.i.i.i.i.i.i.i, i64 %.09.1.i.i.i.i.i.i.i
  %gep11.1.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep10.1.i.i.i.i.i.i.i, i64 %.09.1.i.i.i.i.i.i.i
  %gep13.1.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep12.1.i.i.i.i.i.i.i, i64 %.09.1.i.i.i.i.i.i.i
  %gep15.1.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep14.1.i.i.i.i.i.i.i, i64 %.09.1.i.i.i.i.i.i.i
  %i.ci = load double, ptr %gep13.1.i.i.i.i.i.i.i, align 8, !tbaa !28
  %i.cj = load double, ptr %gep15.1.i.i.i.i.i.i.i, align 8, !tbaa !28
  %i.ck = fsub double %i.ci, %i.cj
  %i.cl = getelementptr [8 x i8], ptr %i.y, i64 %.09.1.i.i.i.i.i.i.i
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !28
  %i.cn = fmul double %i.ck, %i.cm
  %i.co = load double, ptr %gep11.1.i.i.i.i.i.i.i, align 8, !tbaa !28
  %i.cp = fadd double %i.co, %i.cn
  store double %i.cp, ptr %gep.1.i.i.i.i.i.i.i, align 8, !tbaa !28
  %i.cq = add nuw nsw i64 %.09.1.i.i.i.i.i.i.i, 1 ; 5 uses
  %gep.1.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.1.i.i.i.i.i.i.i, i64 %i.cq
  %gep11.1.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep10.1.i.i.i.i.i.i.i, i64 %i.cq
  %gep13.1.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep12.1.i.i.i.i.i.i.i, i64 %i.cq
  %gep15.1.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep14.1.i.i.i.i.i.i.i, i64 %i.cq
  %i.cr = load double, ptr %gep13.1.i.i.i.i.i.i.i.1, align 8, !tbaa !28
  %i.cs = load double, ptr %gep15.1.i.i.i.i.i.i.i.1, align 8, !tbaa !28
  %i.ct = fsub double %i.cr, %i.cs
  %i.cu = getelementptr [8 x i8], ptr %i.y, i64 %i.cq
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !28
  %i.cw = fmul double %i.ct, %i.cv
  %i.cx = load double, ptr %gep11.1.i.i.i.i.i.i.i.1, align 8, !tbaa !28
  %i.cy = fadd double %i.cx, %i.cw
  store double %i.cy, ptr %gep.1.i.i.i.i.i.i.i.1, align 8, !tbaa !28
  %i.cz = add nuw nsw i64 %.09.1.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.1.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.cz, %i.ae
  br i1 %exitcond.1.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_12ArrayWrapperIS2_EEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESB_SB_EEKNS_9ReplicateINS9_INS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELi2EEEEEEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %scalar.ph21, !llvm.loop !227

.split.i.i.i.i.i.i.i:                             ; preds = %.split.i.i.i.i.i.i.i.prol.loopexit, %.split.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi i64 [ %i.dr, %.split.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.unr, %.split.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %gep.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.af, i64 %.09.i.i.i.i.i.i.i
  %gep11.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.h, i64 %.09.i.i.i.i.i.i.i
  %gep13.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.n, i64 %.09.i.i.i.i.i.i.i
  %gep15.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.t, i64 %.09.i.i.i.i.i.i.i
  %i.da = load double, ptr %gep13.i.i.i.i.i.i.i, align 8, !tbaa !28
  %i.db = load double, ptr %gep15.i.i.i.i.i.i.i, align 8, !tbaa !28
  %i.dc = fsub double %i.da, %i.db
  %i.dd = getelementptr [8 x i8], ptr %i.y, i64 %.09.i.i.i.i.i.i.i
  %i.de = load double, ptr %i.dd, align 8, !tbaa !28
  %i.df = fmul double %i.dc, %i.de
  %i.dg = load double, ptr %gep11.i.i.i.i.i.i.i, align 8, !tbaa !28
  %i.dh = fadd double %i.dg, %i.df
  store double %i.dh, ptr %gep.i.i.i.i.i.i.i, align 8, !tbaa !28
  %i.di = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 1   ; 5 uses
  %gep.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.af, i64 %i.di
  %gep11.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.h, i64 %i.di
  %gep13.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.n, i64 %i.di
  %gep15.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.t, i64 %i.di
  %i.dj = load double, ptr %gep13.i.i.i.i.i.i.i.1, align 8, !tbaa !28
  %i.dk = load double, ptr %gep15.i.i.i.i.i.i.i.1, align 8, !tbaa !28
  %i.dl = fsub double %i.dj, %i.dk
  %i.dm = getelementptr [8 x i8], ptr %i.y, i64 %i.di
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !28
  %i.do = fmul double %i.dl, %i.dn
  %i.dp = load double, ptr %gep11.i.i.i.i.i.i.i.1, align 8, !tbaa !28
  %i.dq = fadd double %i.dp, %i.do
  store double %i.dq, ptr %gep.i.i.i.i.i.i.i.1, align 8, !tbaa !28
  %i.dr = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.dr, %i.ae
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i, !llvm.loop !228

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_12ArrayWrapperIS2_EEKNS5_INS6_17scalar_product_opIddEEKNS5_INS6_20scalar_difference_opIddEESB_SB_EEKNS_9ReplicateINS9_INS1_IdLin1ELi1ELi0ELin1ELi1EEEEELi1ELi2EEEEEEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %scalar.ph21.prol.loopexit, %scalar.ph21, %middle.block32, %bb.c
  ret ptr %0
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSIS2_EERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 4 uses
  %i.e = icmp eq i64 %i.b, 0
  %i.f = icmp eq i64 %i.d, 0
  %or.cond.i.i.i = or i1 %i.e, %i.f
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.d
  %i.h = icmp sgt i64 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit: ; preds = %bb.a, %bb.b
  %i.j = mul nsw i64 %i.d, %i.b
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, i64 noundef %i.b, i64 noundef %i.d)
  %i.k = load ptr, ptr %1, align 8, !tbaa !30     ; 8 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = load i64, ptr %i.a, align 8, !tbaa !21   ; 6 uses
  %i.n = load i64, ptr %i.c, align 8, !tbaa !29   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.r, %i.n
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit
  %i.s = icmp eq i64 %i.m, 0
  %i.t = icmp eq i64 %i.n, 0
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.s, %i.t
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = sdiv i64 9223372036854775807, %i.n
  %i.v = icmp sgt i64 %i.m, %i.u
  br i1 %i.v, label %.noexc.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.e
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
end_hunk_0
