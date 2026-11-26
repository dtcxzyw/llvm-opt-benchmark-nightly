Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/cartpole_example?download=true
inline.NumInlined: 1646
inline.NumDeleted: 852
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS2_IdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEKNS7_IS8_NS_5BlockIS8_Lin1ELi1ELb1EEELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NSt9enable_ifIXsr25evaluator_assume_aliasingISK_EE5valueEPvE4typeE:bb.a
  call void @llvm.assume(i1 %lcmp.mod6)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.010.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.010.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %.089.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.089.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.010.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.av = load double, ptr %i.au, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.010.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !12
  %i.ay = fmul double %i.av, %i.ax
  %i.az = fadd double %.089.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.ay ; 2 uses
  %i.ba = add nuw nsw i64 %.010.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !90

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.c, %bb.b
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.b ], [ %i.n, %bb.c ], [ %i.as, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.bb = load ptr, ptr %7, align 8, !tbaa !18    ; 3 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !12
  %i.bd = fadd double %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bc
  store double %i.bd, ptr %i.bb, align 8, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !21
  store ptr %i.bg, ptr %4, align 8, !tbaa !104
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.e, ptr %i.bh, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %5, align 8, !tbaa !36
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.bi, align 8, !tbaa !37
  %i.bj = load ptr, ptr %7, align 8, !tbaa !18
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.e, i64 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.bj, i64 noundef 1, double noundef 1.000000e+00)
          to label %.noexc3.i unwind label %bb.e

.noexc3.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %.pre = load ptr, ptr %7, align 8, !tbaa !18
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %7, align 8, !tbaa !18
  call void @free(ptr noundef %i.bl) #16
  resume { ptr, i32 } %i.bk

bb.f:                                             ; preds = %.noexc3.i, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i.i.i.i
  %i.bm = phi ptr [ %.pre, %.noexc3.i ], [ %i.bb, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bn = load <2 x double>, ptr %i.bm, align 16, !tbaa !13
  store <2 x double> %i.bn, ptr %0, align 16, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bq = load <2 x double>, ptr %i.bp, align 16, !tbaa !13
  store <2 x double> %i.bq, ptr %i.bo, align 16, !tbaa !13
  call void @free(ptr noundef %i.bm) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi4ELi1ELi0ELi4ELi1EEELi0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS7_RKS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !119, !nonnull !28, !align !29 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %.not = icmp eq i64 %i.e, %i.c
  %.pre.i.i.i.i.pre = load ptr, ptr %0, align 8, !tbaa !18 ; 2 uses
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120, !nonnull !28, !align !33
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %.pre.i.i.i.i.pre) #16
  %i.i = icmp sgt i64 %i.c, 0
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = icmp samesign ugt i64 %i.c, 2305843009213693951
  br i1 %i.j, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.c
  %i.l = shl nuw i64 %i.c, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #17 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
  unreachable

bb.f:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.b
  %.sink.i.i = phi ptr [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.b ] ; 3 uses
  store ptr %.sink.i.i, ptr %0, align 8, !tbaa !18
  store i64 %i.c, ptr %i.d, align 8, !tbaa !19
  %.pre = load ptr, ptr %1, align 8, !tbaa !119   ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre12 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !22 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !120, !nonnull !28, !align !33 ; 2 uses
  %i.r = load ptr, ptr %.pre, align 8, !tbaa !21  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.c, %.pre12
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %.sink.i.i) #16
  %i.s = icmp sgt i64 %.pre12, 0
  br i1 %i.s, label %bb.h, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.t = icmp samesign ugt i64 %.pre12, 2305843009213693951
  br i1 %i.t, label %.noexc.i.i.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.h
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.v = shl nuw i64 %.pre12, 3
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #17 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.noexc12.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i.i.i.i.i

.noexc12.i.i.i.i:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i.i.i
  %i.y = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.y, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i.i.i.i.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i.i.i, %bb.g
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i.i.i ], [ null, %bb.g ] ; 2 uses
  store ptr %.sink.i.i.i.i.i.i.i, ptr %0, align 8, !tbaa !18
  store i64 %.pre12, ptr %i.d, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %.thread, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i.i.i.i.i, %bb.f
  %i.z = phi ptr [ %i.r, %bb.f ], [ %i.r, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i.i.i.i.i ], [ %i.h, %.thread ]
  %i.aa = phi ptr [ %i.q, %bb.f ], [ %i.q, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i.i.i.i.i ], [ %i.g, %.thread ] ; 10 uses
  %i.ab = phi ptr [ %.pre, %bb.f ], [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i.i.i.i.i ], [ %i.a, %.thread ] ; 2 uses
  %i.ac = phi i64 [ %.pre12, %bb.f ], [ %.pre12, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i.i.i.i.i ], [ %i.c, %.thread ] ; 11 uses
  %i.ad = phi ptr [ %.sink.i.i, %bb.f ], [ %.sink.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i.i.i.i.i ], [ %.pre.i.i.i.i.pre, %.thread ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = sdiv i64 %i.ac, 2                       ; 2 uses
  %i.ag = shl nsw i64 %i.af, 1                    ; 7 uses
  %i.ah = icmp sgt i64 %i.ac, 1
  br i1 %i.ah, label %.lr.ph.i.preheader.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ac, 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.idx.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.ac, 24
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.i
  %i.ak = icmp slt i64 %i.ag, %i.ac
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i, label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi4ELi1ELi0ELi4ELi1EEENS_10DenseShapeES5_Li3EE6evalToINS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS3_RKS4_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i.i.i.i.i
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !21, !noalias !121 ; 10 uses
  %i.am = load i64, ptr %i.ae, align 8, !tbaa !22 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.am, 4 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.idx11.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.am, 24 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.aq = sub i64 %i.ac, %i.ag                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ar = shl i64 %i.af, 4                        ; 5 uses
  %i.as = getelementptr i8, ptr %i.ad, i64 %i.ar  ; 5 uses
  %i.at = shl i64 %i.ac, 3                        ; 4 uses
  %i.au = getelementptr i8, ptr %i.ad, i64 %i.at  ; 5 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %i.ar
  %i.aw = getelementptr i8, ptr %i.al, i64 %i.at
  %3 = shl nsw i64 %i.am, 3
  %i.ax = getelementptr i8, ptr %i.al, i64 %i.ar
  %i.ay = getelementptr i8, ptr %i.ax, i64 %3
  %4 = add i64 %i.ac, %i.am
  %5 = shl i64 %4, 3
  %i.az = getelementptr i8, ptr %i.al, i64 %5
  %6 = getelementptr i8, ptr %i.al, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = getelementptr i8, ptr %6, i64 %i.ar
  %i.bb = getelementptr i8, ptr %i.al, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %7 = getelementptr i8, ptr %i.bb, i64 %i.at
  %8 = getelementptr i8, ptr %i.al, i64 %.idx11.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = getelementptr i8, ptr %8, i64 %i.ar
  %i.bd = getelementptr i8, ptr %i.al, i64 %.idx11.i.i.i.i.i.i.i.i.i.i.i
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.at
  %i.bf = getelementptr i8, ptr %i.aa, i64 32
  %bound0 = icmp ult ptr %i.as, %i.aw
  %bound1 = icmp ult ptr %i.av, %i.au
  %found.conflict = and i1 %bound0, %bound1
  %bound046 = icmp ult ptr %i.as, %i.az
  %bound147 = icmp ult ptr %i.ay, %i.au
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx = or i1 %found.conflict, %found.conflict48
  %bound049 = icmp ult ptr %i.as, %7
  %bound150 = icmp ult ptr %i.ba, %i.au
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx52 = or i1 %conflict.rdx, %found.conflict51
  %bound053 = icmp ult ptr %i.as, %i.be
  %bound154 = icmp ult ptr %i.bc, %i.au
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx56 = or i1 %conflict.rdx52, %found.conflict55
  %bound057 = icmp ult ptr %i.as, %i.bf
  %bound158 = icmp ult ptr %i.aa, %i.au
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %conflict.rdx56, %found.conflict59
  br i1 %conflict.rdx60, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bg = and i64 %i.ac, 1                        ; 2 uses
  %n.vec = sub i64 %i.aq, %i.bg                   ; 2 uses
  %i.bh = add i64 %i.ag, %n.vec
  %i.bi = load double, ptr %i.aa, align 16, !tbaa !12, !alias.scope !122
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bi, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = load double, ptr %i.an, align 8, !tbaa !12, !alias.scope !122
  %broadcast.splatinsert62 = insertelement <2 x double> poison, double %i.bj, i64 0
  %broadcast.splat63 = shufflevector <2 x double> %broadcast.splatinsert62, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = load double, ptr %i.ao, align 16, !tbaa !12, !alias.scope !122
  %broadcast.splatinsert65 = insertelement <2 x double> poison, double %i.bk, i64 0
  %broadcast.splat66 = shufflevector <2 x double> %broadcast.splatinsert65, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = load double, ptr %i.ap, align 8, !tbaa !12, !alias.scope !122
  %broadcast.splatinsert68 = insertelement <2 x double> poison, double %i.bl, i64 0
  %broadcast.splat69 = shufflevector <2 x double> %broadcast.splatinsert68, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = add i64 %i.ag, %index                   ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bm ; 4 uses
  %wide.load = load <2 x double>, ptr %i.bo, align 8, !tbaa !12, !alias.scope !123
  %i.bp = fmul <2 x double> %wide.load, %broadcast.splat
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.am
  %wide.load61 = load <2 x double>, ptr %i.bq, align 8, !tbaa !12, !alias.scope !124
  %i.br = fmul <2 x double> %wide.load61, %broadcast.splat63
  %i.bs = fadd <2 x double> %i.bp, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %wide.load64 = load <2 x double>, ptr %i.bt, align 8, !tbaa !12, !alias.scope !125
  %i.bu = fmul <2 x double> %wide.load64, %broadcast.splat66
  %i.bv = fadd <2 x double> %i.bs, %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bo, i64 %.idx11.i.i.i.i.i.i.i.i.i.i.i
  %wide.load67 = load <2 x double>, ptr %i.bw, align 8, !tbaa !12, !alias.scope !126
  %i.bx = fmul <2 x double> %wide.load67, %broadcast.splat69
  %i.by = fadd <2 x double> %i.bv, %i.bx
  store <2 x double> %i.by, ptr %i.bn, align 8, !tbaa !12, !alias.scope !127, !noalias !128
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, 0
  br i1 %cmp.n, label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi4ELi1ELi0ELi4ELi1EEENS_10DenseShapeES5_Li3EE6evalToINS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS3_RKS4_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i, %middle.block
  %.05.i.i.i.i.i.i.ph = phi i64 [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %i.bh, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.05.i.i.i.i.i.i = phi i64 [ %i.cw, %scalar.ph ], [ %.05.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %.05.i.i.i.i.i.i
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.al, i64 %.05.i.i.i.i.i.i ; 4 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !12
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.am
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !12
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !12
  %i.ch = getelementptr inbounds i8, ptr %i.cb, i64 %.idx11.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !12
  %i.cj = load <4 x double>, ptr %i.aa, align 16, !tbaa !12
  %i.ck = insertelement <4 x double> poison, double %i.cc, i64 0
  %i.cl = insertelement <4 x double> %i.ck, double %i.ce, i64 1
  %i.cm = insertelement <4 x double> %i.cl, double %i.cg, i64 2
  %i.cn = insertelement <4 x double> %i.cm, double %i.ci, i64 3
  %i.co = fmul <4 x double> %i.cn, %i.cj          ; 4 uses
  %i.cp = extractelement <4 x double> %i.co, i64 0
  %i.cq = extractelement <4 x double> %i.co, i64 1
  %i.cr = fadd double %i.cp, %i.cq
  %i.cs = extractelement <4 x double> %i.co, i64 2
  %i.ct = fadd double %i.cr, %i.cs
  %i.cu = extractelement <4 x double> %i.co, i64 3
  %i.cv = fadd double %i.ct, %i.cu
  store double %i.cv, ptr %i.ca, align 8, !tbaa !12
  %i.cw = add nsw i64 %.05.i.i.i.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.cw, %i.ac
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi4ELi1ELi0ELi4ELi1EEENS_10DenseShapeES5_Li3EE6evalToINS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS3_RKS4_.exit, label %scalar.ph, !llvm.loop !116

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.011.i.i.i.i.i = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.011.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.i.i ; 4 uses
  %i.cz = load <2 x double>, ptr %i.cy, align 1, !tbaa !13
  %i.da = load <1 x double>, ptr %i.aa, align 16
  %i.db = shufflevector <1 x double> %i.da, <1 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x double> %i.cz, %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ac
  %i.de = load <2 x double>, ptr %i.dd, align 1, !tbaa !13
  %i.df = load <1 x double>, ptr %i.ai, align 8
  %i.dg = shufflevector <1 x double> %i.df, <1 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x double> %i.de, %i.dg
  %i.di = fadd <2 x double> %i.dc, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.dk = load <2 x double>, ptr %i.dj, align 1, !tbaa !13
  %i.dl = load <2 x double>, ptr %i.aj, align 16  ; 2 uses
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x double> %i.dk, %i.dm
  %i.do = fadd <2 x double> %i.di, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i.i.i.i.i.i.i.i.i
  %i.dq = load <2 x double>, ptr %i.dp, align 1, !tbaa !13
  %i.dr = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ds = fmul <2 x double> %i.dq, %i.dr
  %i.dt = fadd <2 x double> %i.ds, %i.do
  store <2 x double> %i.dt, ptr %i.cx, align 16, !tbaa !13
  %i.du = add nuw nsw i64 %.011.i.i.i.i.i, 2      ; 2 uses
  %i.dv = icmp slt i64 %i.du, %i.ag
  br i1 %i.dv, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !117

_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi4ELi1ELi0ELi4ELi1EEENS_10DenseShapeES5_Li3EE6evalToINS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS3_RKS4_.exit: ; preds = %scalar.ph, %middle.block, %._crit_edge.i.i.i.i.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, i64 noundef %5, double noundef %6) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %.sroa.0336.0.copyload = load ptr, ptr %2, align 8 ; 6 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8 ; 7 uses
  %i.a = add nsw i64 %0, -15
  %i.b = add nsw i64 %0, -7
  %i.c = add nsw i64 %0, -5
  %i.d = add nsw i64 %0, -3
  %i.e = add nsw i64 %0, -1
  %i.f = icmp slt i64 %1, 128
  %i.g = shl i64 %.sroa.22.0.copyload, 3
  %i.h = icmp ult i64 %i.g, 32000
  %i.i = select i1 %i.h, i64 16, i64 4
  %i.j = select i1 %i.f, i64 %1, i64 %i.i
  %i.k = insertelement <2 x double> poison, double %6, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer ; 18 uses
  %i.m = icmp sgt i64 %1, 0
  br i1 %i.m, label %.lr.ph464, label %._crit_edge465

.lr.ph464:                                        ; preds = %bb.a
  %i.n = icmp sgt i64 %0, 15
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  br label %bb.b

.loopexit:                                        ; preds = %._crit_edge459, %bb.k
  %i.p = icmp slt i64 %i.q, %1
  br i1 %i.p, label %bb.b, label %._crit_edge465, !llvm.loop !131

._crit_edge465:                                   ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph464, %.loopexit
  %.0188462 = phi i64 [ 0, %.lr.ph464 ], [ %i.q, %.loopexit ] ; 7 uses
  %i.q = add nuw nsw i64 %.0188462, %i.j          ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %1, i64 %i.q) ; 6 uses
  br i1 %i.n, label %.lr.ph, label %._crit_edge422

.lr.ph:                                           ; preds = %bb.b, %._crit_edge
  %.0187421 = phi i64 [ %i.bh, %._crit_edge ], [ 0, %bb.b ] ; 3 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !36
  %i.s = load i64, ptr %i.o, align 8, !tbaa !37
  %i.t = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.0187421 ; 8 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %i.v = getelementptr i8, ptr %i.t, i64 32
  %i.w = getelementptr i8, ptr %i.t, i64 48
  %i.x = getelementptr i8, ptr %i.t, i64 64
  %i.y = getelementptr i8, ptr %i.t, i64 80
  %i.z = getelementptr i8, ptr %i.t, i64 96
  %i.aa = getelementptr i8, ptr %i.t, i64 112
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0187421 ; 9 uses
  %i.ac = load <2 x double>, ptr %i.ab, align 1, !tbaa !13
  %i.ad = fmul <2 x double> %i.l, %i.bs
  %i.ae = fadd <2 x double> %i.ad, %i.ac
  store <2 x double> %i.ae, ptr %i.ab, align 1, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ag = load <2 x double>, ptr %i.af, align 1, !tbaa !13
  %i.ah = fmul <2 x double> %i.l, %i.bw
  %i.ai = fadd <2 x double> %i.ah, %i.ag
  store <2 x double> %i.ai, ptr %i.af, align 1, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ak = load <2 x double>, ptr %i.aj, align 1, !tbaa !13
  %i.al = fmul <2 x double> %i.l, %i.ca
  %i.am = fadd <2 x double> %i.al, %i.ak
  store <2 x double> %i.am, ptr %i.aj, align 1, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.ao = load <2 x double>, ptr %i.an, align 1, !tbaa !13
  %i.ap = fmul <2 x double> %i.l, %i.ce
  %i.aq = fadd <2 x double> %i.ap, %i.ao
  store <2 x double> %i.aq, ptr %i.an, align 1, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 2 uses
  %i.as = load <2 x double>, ptr %i.ar, align 1, !tbaa !13
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a
  %i.ih = load i64, ptr %i.o, align 8, !tbaa !37
  br label %.lr.ph458

.lr.ph458:                                        ; preds = %._crit_edge459, %.preheader.lr.ph
  %.5461 = phi i64 [ %.4, %.preheader.lr.ph ], [ %i.im, %._crit_edge459 ] ; 3 uses
  %i.ii = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.5461
  br label %bb.l

._crit_edge459:                                   ; preds = %bb.l
  %i.ij = getelementptr inbounds [8 x i8], ptr %4, i64 %.5461 ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !12
  %i.il = tail call double @llvm.fmuladd.f64(double %6, double %i.iu, double %i.ik)
  store double %i.il, ptr %i.ij, align 8, !tbaa !12
  %i.im = add nsw i64 %.5461, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.im, %0
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph458, !llvm.loop !138

bb.l:                                             ; preds = %.lr.ph458, %bb.l
  %.0457 = phi i64 [ %.0188462, %.lr.ph458 ], [ %i.iv, %bb.l ] ; 3 uses
  %.0181456 = phi double [ 0.000000e+00, %.lr.ph458 ], [ %i.iu, %bb.l ]
  %i.in = mul nsw i64 %.0457, %.sroa.22.0.copyload
  %i.io = getelementptr [8 x i8], ptr %i.ii, i64 %i.in
  %i.ip = mul nsw i64 %i.ih, %.0457
  %i.iq = getelementptr [8 x i8], ptr %i.ig, i64 %i.ip
  %i.ir = load double, ptr %i.io, align 8, !tbaa !12
  %i.is = load double, ptr %i.iq, align 8, !tbaa !12
  %i.it = fmul double %i.ir, %i.is
  %i.iu = fadd double %.0181456, %i.it            ; 2 uses
  %i.iv = add nuw nsw i64 %.0457, 1               ; 2 uses
  %i.iw = icmp slt i64 %i.iv, %.sroa.speculated
  br i1 %i.iw, label %bb.l, label %._crit_edge459, !llvm.loop !139
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #11

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"double", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"p1 double", !14, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !15, i64 0, !16, i64 8}
!18 = !{!17, !15, i64 0}
!19 = !{!17, !16, i64 8}
!20 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !15, i64 0, !16, i64 8, !16, i64 16}
!21 = !{!20, !15, i64 0}
!22 = !{!20, !16, i64 8}
!23 = !{!20, !16, i64 16}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE", !14, i64 0}
!26 = !{!"_ZTSN5Eigen15DiagonalWrapperIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{}
!29 = !{i64 8}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!"p1 _ZTSN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEE", !14, i64 0}
!32 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi1EEE"}
!33 = !{i64 16}
!34 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE", !14, i64 0}
!35 = !{!"_ZTSN5Eigen8internal16blas_data_mapperIKdlLi1ELi0ELi1EEE", !15, i64 0, !16, i64 8}
!36 = !{!35, !15, i64 0}
!37 = !{!35, !16, i64 8}
!38 = distinct !{!38, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEEElsERKd"}
!39 = distinct !{!39, !38, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEEElsERKd: argument 0"}
!40 = distinct !{!40, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEEElsERKd"}
!41 = distinct !{!41, !40, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEEElsERKd: argument 0"}
!42 = distinct !{!42, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!43 = distinct !{!43, !42, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!44 = distinct !{null, null, null, null}
!45 = distinct !{!45, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!46 = distinct !{!46, !45, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!47 = distinct !{!47, !24}
!48 = !{!14, !14, i64 0}
!49 = !{!"_ZTS10TinySolver", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!50 = !{!49, !14, i64 8}
!51 = !{!"_ZTS12TinySettings", !11, i64 0, !11, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !11, i64 64, !11, i64 72, !6, i64 80}
!52 = !{!51, !6, i64 16}
!53 = !{!49, !14, i64 24}
!54 = !{!39}
!55 = !{!41}
!56 = !{!43}
!57 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!58 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!59 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!60 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !16, i64 8}
!61 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!62 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!63 = !{!"_ZTSSt6locale", !62, i64 0}
!64 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !57, i64 24, !58, i64 28, !58, i64 32, !59, i64 40, !60, i64 48, !5, i64 64, !6, i64 192, !61, i64 200, !63, i64 208}
!65 = !{!"p1 _ZTSSo", !14, i64 0}
!66 = !{!"bool", !5, i64 0}
!67 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 0}
!68 = !{!"p1 _ZTSSt5ctypeIcE", !14, i64 0}
!69 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !14, i64 0}
!70 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !14, i64 0}
!71 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !64, i64 0, !65, i64 216, !5, i64 224, !66, i64 225, !67, i64 232, !68, i64 240, !69, i64 248, !70, i64 256}
!72 = !{!71, !68, i64 240}
!73 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!74 = !{!"p1 _ZTS15__locale_struct", !14, i64 0}
!75 = !{!"p1 int", !14, i64 0}
!76 = !{!"p1 short", !14, i64 0}
!77 = !{!"_ZTSSt5ctypeIcE", !73, i64 0, !74, i64 16, !66, i64 24, !75, i64 32, !75, i64 40, !76, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!78 = !{!77, !5, i64 56}
!79 = !{!46}
!80 = distinct !{!80, !24}
!81 = distinct !{!81, !30}
!82 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi10EEE"}
!83 = !{!"_ZTSN5Eigen9ReplicateINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELi1ELi10EEE", !31, i64 0, !32, i64 8, !82, i64 9}
!84 = !{!83, !31, i64 0}
!85 = distinct !{!85, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!86 = distinct !{!86, !85, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!87 = distinct !{!87, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE3colEl"}
!88 = distinct !{!88, !87, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE3colEl: argument 0"}
!89 = distinct !{!89, !24}
!90 = distinct !{!90, !30}
!91 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !16, i64 0}
!92 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi0EEE", !15, i64 0, !91, i64 8, !32, i64 16}
!93 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1EEE", !92, i64 0}
!94 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1ELb1EEE", !93, i64 0, !34, i64 24, !91, i64 32, !91, i64 40, !16, i64 48}
!95 = !{!"_ZTSN5Eigen9BlockImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1ENS_5DenseEEE", !94, i64 0}
!96 = !{!"_ZTSN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEE", !95, i64 0}
!97 = !{!"_ZTSN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS2_Lin1ELi1ELb1EEELi0EEE", !34, i64 0, !96, i64 8}
!98 = !{!97, !34, i64 0}
!99 = !{!86}
!100 = !{!92, !15, i64 0}
!101 = !{!88}
!102 = !{!91, !16, i64 0}
!103 = !{!"_ZTSN5Eigen8internal16blas_data_mapperIKdlLi0ELi0ELi1EEE", !15, i64 0, !16, i64 8}
!104 = !{!103, !15, i64 0}
!105 = !{!103, !16, i64 8}
!106 = distinct !{!106, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!107 = distinct !{!107, !106, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!108 = distinct !{!108, i1 false, !"LVerDomain"}
!109 = distinct !{!109, !108}
!110 = distinct !{!110, !108}
!111 = distinct !{!111, !108}
!112 = distinct !{!112, !108}
!113 = distinct !{!113, !108}
!114 = distinct !{!114, !108}
!115 = distinct !{!115, !24, !129, !130}
!116 = distinct !{!116, !24, !129}
!117 = distinct !{!117, !24}
!118 = !{!"_ZTSN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLi4ELi1ELi0ELi4ELi1EEELi0EEE", !34, i64 0, !31, i64 8}
!119 = !{!118, !34, i64 0}
!120 = !{!118, !31, i64 8}
!121 = !{!107}
!122 = !{!109}
!123 = !{!110}
!124 = !{!111}
!125 = !{!112}
!126 = !{!113}
!127 = !{!114}
!128 = !{!110, !111, !112, !113, !109}
!129 = !{!"llvm.loop.isvectorized", i32 1}
!130 = !{!"llvm.loop.unroll.runtime.disable"}
!131 = distinct !{!131, !24}
!132 = distinct !{!132, !24}
!133 = distinct !{!133, !24}
!134 = distinct !{!134, !24}
!135 = distinct !{!135, !24}
!136 = distinct !{!136, !24}
!137 = distinct !{!137, !24}
!138 = distinct !{!138, !24}
!139 = distinct !{!139, !24}
end_hunk_1
