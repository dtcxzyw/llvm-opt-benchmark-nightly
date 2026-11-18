Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/cartpole_example?download=true
inline.NumInlined: 1646
inline.NumDeleted: 850
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS2_IdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEKNS7_IS8_NS_5BlockIS8_Lin1ELi1ELb1EEELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NSt9enable_ifIXsr25evaluator_assume_aliasingISK_EE5valueEPvE4typeE:bb.a
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
  %i.av = getelementptr i8, ptr %i.al, i64 %.idx11.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.ar
  %i.ax = getelementptr i8, ptr %i.al, i64 %.idx11.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.at
  %bound0 = icmp ult ptr %i.as, %i.ay
  %bound1 = icmp ult ptr %i.aw, %i.au
  %found.conflict = and i1 %bound0, %bound1
  %i.az = getelementptr i8, ptr %i.al, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.ar
  %3 = getelementptr i8, ptr %i.al, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.bb = getelementptr i8, ptr %3, i64 %i.at
  %bound046 = icmp ult ptr %i.as, %i.bb
  %bound147 = icmp ult ptr %i.ba, %i.au
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx = or i1 %found.conflict, %found.conflict48
  %4 = shl nsw i64 %i.am, 3
  %i.bc = getelementptr i8, ptr %i.al, i64 %i.ar
  %i.bd = getelementptr i8, ptr %i.bc, i64 %4
  %5 = add i64 %i.ac, %i.am
  %6 = shl i64 %5, 3
  %7 = getelementptr i8, ptr %i.al, i64 %6
  %bound046.a = icmp ult ptr %i.as, %7
  %bound147.a = icmp ult ptr %i.bd, %i.au
  %found.conflict48.a = and i1 %bound046.a, %bound147.a
  %conflict.rdx.a = or i1 %conflict.rdx, %found.conflict48.a
  %8 = getelementptr i8, ptr %i.al, i64 %i.ar
  %9 = getelementptr i8, ptr %i.al, i64 %i.at
  %bound053 = icmp ult ptr %i.as, %9
  %bound154 = icmp ult ptr %8, %i.au
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx56 = or i1 %conflict.rdx.a, %found.conflict55
  %10 = getelementptr i8, ptr %i.aa, i64 32
  %bound057 = icmp ult ptr %i.as, %10
  %bound158 = icmp ult ptr %i.aa, %i.au
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %conflict.rdx56, %found.conflict59
  br i1 %conflict.rdx60, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.be = and i64 %i.ac, 1                        ; 2 uses
  %n.vec = sub i64 %i.aq, %i.be                   ; 2 uses
  %i.bf = add i64 %i.ag, %n.vec
  %i.bg = load double, ptr %i.aa, align 16, !tbaa !12, !alias.scope !122
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bg, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = load double, ptr %i.an, align 8, !tbaa !12, !alias.scope !122
  %broadcast.splatinsert62 = insertelement <2 x double> poison, double %i.bh, i64 0
  %broadcast.splat63 = shufflevector <2 x double> %broadcast.splatinsert62, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = load double, ptr %i.ao, align 16, !tbaa !12, !alias.scope !122
  %broadcast.splatinsert65 = insertelement <2 x double> poison, double %i.bi, i64 0
  %broadcast.splat66 = shufflevector <2 x double> %broadcast.splatinsert65, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = load double, ptr %i.ap, align 8, !tbaa !12, !alias.scope !122
  %broadcast.splatinsert68 = insertelement <2 x double> poison, double %i.bj, i64 0
  %broadcast.splat69 = shufflevector <2 x double> %broadcast.splatinsert68, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = add i64 %i.ag, %index                   ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.bk
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bk ; 4 uses
  %wide.load = load <2 x double>, ptr %i.bm, align 8, !tbaa !12, !alias.scope !123
  %i.bn = fmul <2 x double> %wide.load, %broadcast.splat
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.am
  %wide.load61 = load <2 x double>, ptr %i.bo, align 8, !tbaa !12, !alias.scope !124
  %i.bp = fmul <2 x double> %wide.load61, %broadcast.splat63
  %i.bq = fadd <2 x double> %i.bn, %i.bp
  %i.br = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %wide.load64 = load <2 x double>, ptr %i.br, align 8, !tbaa !12, !alias.scope !125
  %i.bs = fmul <2 x double> %wide.load64, %broadcast.splat66
  %i.bt = fadd <2 x double> %i.bq, %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bm, i64 %.idx11.i.i.i.i.i.i.i.i.i.i.i
  %wide.load67 = load <2 x double>, ptr %i.bu, align 8, !tbaa !12, !alias.scope !126
  %i.bv = fmul <2 x double> %wide.load67, %broadcast.splat69
  %i.bw = fadd <2 x double> %i.bt, %i.bv
  store <2 x double> %i.bw, ptr %i.bl, align 8, !tbaa !12, !alias.scope !127, !noalias !128
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, 0
  br i1 %cmp.n, label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi4ELi1ELi0ELi4ELi1EEENS_10DenseShapeES5_Li3EE6evalToINS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS3_RKS4_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i, %middle.block
  %.05.i.i.i.i.i.i.ph = phi i64 [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %i.bf, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.05.i.i.i.i.i.i = phi i64 [ %i.cu, %scalar.ph ], [ %.05.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %.05.i.i.i.i.i.i
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.al, i64 %.05.i.i.i.i.i.i ; 4 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !12
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.am
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !12
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !12
  %i.cf = getelementptr inbounds i8, ptr %i.bz, i64 %.idx11.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !12
  %i.ch = load <4 x double>, ptr %i.aa, align 16, !tbaa !12
  %i.ci = insertelement <4 x double> poison, double %i.ca, i64 0
  %i.cj = insertelement <4 x double> %i.ci, double %i.cc, i64 1
  %i.ck = insertelement <4 x double> %i.cj, double %i.ce, i64 2
  %i.cl = insertelement <4 x double> %i.ck, double %i.cg, i64 3
  %i.cm = fmul <4 x double> %i.cl, %i.ch          ; 4 uses
  %i.cn = extractelement <4 x double> %i.cm, i64 0
  %i.co = extractelement <4 x double> %i.cm, i64 1
  %i.cp = fadd double %i.cn, %i.co
  %i.cq = extractelement <4 x double> %i.cm, i64 2
  %i.cr = fadd double %i.cp, %i.cq
  %i.cs = extractelement <4 x double> %i.cm, i64 3
  %i.ct = fadd double %i.cr, %i.cs
  store double %i.ct, ptr %i.by, align 8, !tbaa !12
  %i.cu = add nsw i64 %.05.i.i.i.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.cu, %i.ac
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi4ELi1ELi0ELi4ELi1EEENS_10DenseShapeES5_Li3EE6evalToINS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS3_RKS4_.exit, label %scalar.ph, !llvm.loop !116

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.011.i.i.i.i.i = phi i64 [ %i.ds, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.011.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.i.i ; 4 uses
  %i.cx = load <2 x double>, ptr %i.cw, align 1, !tbaa !13
  %i.cy = load <1 x double>, ptr %i.aa, align 16
  %i.cz = shufflevector <1 x double> %i.cy, <1 x double> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x double> %i.cx, %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.ac
  %i.dc = load <2 x double>, ptr %i.db, align 1, !tbaa !13
  %i.dd = load <1 x double>, ptr %i.ai, align 8
  %i.de = shufflevector <1 x double> %i.dd, <1 x double> poison, <2 x i32> zeroinitializer
  %i.df = fmul <2 x double> %i.dc, %i.de
  %i.dg = fadd <2 x double> %i.da, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.di = load <2 x double>, ptr %i.dh, align 1, !tbaa !13
  %i.dj = load <2 x double>, ptr %i.aj, align 16  ; 2 uses
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x double> %i.di, %i.dk
  %i.dm = fadd <2 x double> %i.dg, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx.i.i.i.i.i.i.i.i.i
  %i.do = load <2 x double>, ptr %i.dn, align 1, !tbaa !13
  %i.dp = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dq = fmul <2 x double> %i.do, %i.dp
  %i.dr = fadd <2 x double> %i.dq, %i.dm
  store <2 x double> %i.dr, ptr %i.cv, align 16, !tbaa !13
  %i.ds = add nuw nsw i64 %.011.i.i.i.i.i, 2      ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %i.ag
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !117

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
  %i.at = fmul <2 x double> %i.l, %i.ci
  %i.au = fadd <2 x double> %i.at, %i.as
  store <2 x double> %i.au, ptr %i.ar, align 1, !tbaa !13
end_hunk_0
