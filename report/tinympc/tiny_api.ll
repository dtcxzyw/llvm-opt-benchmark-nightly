Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/tiny_api?download=true
inline.NumInlined: 10097
inline.NumDeleted: 4374
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKS3_KNS_7ProductIS3_S3_Li0EEEEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:bb.a
  %i.cq = mul nsw i64 %i.cp, %i.bc
  %i.cr = getelementptr [8 x i8], ptr %i.bn, i64 %i.cq
  %i.cs = mul nsw i64 %i.cp, %i.be
  %i.ct = getelementptr [8 x i8], ptr %i.bo, i64 %i.cs
  %i.cu = load double, ptr %i.cr, align 8, !tbaa !42
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !42
  %i.cw = fsub double %i.cu, %i.cv
  store double %i.cw, ptr %gep.i.1, align 8, !tbaa !42
  %i.cx = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.cx, %i.aw
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1408

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_9TransposeIKNS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKS5_KNS_7ProductIS5_S5_Li0EEEEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSL_.exit: ; preds = %._crit_edge.i, %bb.k
  %i.cy = load ptr, ptr %i.j, align 8, !tbaa !40
  call void @free(ptr noundef %i.cy) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.l:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.j
  %i.cz = landingpad { ptr, i32 }
          cleanup
  %i.da = load ptr, ptr %i.j, align 8, !tbaa !40
  call void @free(ptr noundef %i.da) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS4_INS2_IdLin1ELin1ELi0ELin1ELin1EEES5_Li0EEES5_Li0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS7_RKS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !240, !nonnull !88, !align !89
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1414 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %.not = icmp eq i64 %i.i, %i.c
  %.not11 = icmp eq i64 %i.g, 1
  %or.cond = select i1 %.not, i1 %.not11, i1 false
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = mul nsw i64 %i.g, %i.c                   ; 4 uses
  %.not.i.i = icmp eq i64 %i.j, %i.i
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !58
  tail call void @free(ptr noundef %i.k) #26
  %i.l = icmp sgt i64 %i.j, 0
  br i1 %i.l, label %bb.d, label %.sink.split.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ugt i64 %i.j, 2305843009213693951
  br i1 %i.m, label %bb.e, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.d
  %i.o = shl nuw i64 %i.j, 3
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #30 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.c
  %.sink.i.i = phi ptr [ %i.p, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.c ]
  store ptr %.sink.i.i, ptr %0, align 8, !tbaa !58
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !1414
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit: ; preds = %bb.b, %.sink.split.i.i
  %.pre = phi ptr [ %i.e, %bb.b ], [ %.pre.pre, %.sink.split.i.i ]
  store i64 %i.c, ptr %i.h, align 8, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit
  %i.s = phi ptr [ %i.e, %bb.a ], [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit ]
  tail call void @_ZN5Eigen8internal20generic_product_implINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEES4_NS_10DenseShapeES6_Li8EE6evalToINS3_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS5_RKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.s)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal20generic_product_implINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEES4_NS_10DenseShapeES6_Li8EE6evalToINS3_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS5_RKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.1737", align 8 ; 8 uses
  %4 = alloca %"class.Eigen::Block.403", align 8  ; 8 uses
  %5 = alloca %"class.Eigen::Product.1724", align 8 ; 5 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !57   ; 5 uses
  %i.f = add nsw i64 %i.e, %i.c
  %i.g = icmp slt i64 %i.f, 19
  %i.h = icmp sgt i64 %i.c, 0
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.i, align 8, !tbaa !85, !alias.scope !1421
  call void @_ZN5Eigen8internal42call_restricted_packet_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS4_INS2_IdLin1ELin1ELi0ELin1ELin1EEES5_Li0EEES5_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %i.e, 1
  br i1 %i.j, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !58
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !42
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %bb.c, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !241, !nonnull !88, !align !89
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !39
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEES4_NS_10DenseShapeES6_Li8EE13scaleAndAddToINS3_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS5_RKS4_RKd.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %i.q = load ptr, ptr %1, align 8, !tbaa !240, !nonnull !88, !align !89
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !38
  %i.t = icmp eq i64 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.v, 0
  %or.cond.i = select i1 %i.t, i1 true, i1 %i.w
  br i1 %or.cond.i, label %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEES4_NS_10DenseShapeES6_Li8EE13scaleAndAddToINS3_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS5_RKS4_RKd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  %i.x = load ptr, ptr %0, align 8, !tbaa !58, !noalias !1422
  store ptr %i.x, ptr %3, align 8, !tbaa !253, !alias.scope !1422
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.y, align 8, !tbaa !91, !alias.scope !1422
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %0, ptr %i.z, align 8, !tbaa !93, !alias.scope !1422
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.aa, align 8, !tbaa !91, !alias.scope !1422
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.e, ptr %i.ab, align 8, !tbaa !257, !alias.scope !1422
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  %i.ac = load ptr, ptr %2, align 8, !tbaa !40, !noalias !1423
  store ptr %i.ac, ptr %4, align 8, !tbaa !129, !alias.scope !1423
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.c, ptr %i.ad, align 8, !tbaa !91, !alias.scope !1423
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %i.ae, align 8, !tbaa !85, !alias.scope !1423
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store i64 %i.c, ptr %i.ag, align 8, !tbaa !131, !alias.scope !1423
  call void @_ZN5Eigen8internal20generic_product_implINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEEKNS_5BlockIKS4_Lin1ELi1ELb1EEENS_10DenseShapeESA_Li7EE13scaleAndAddToINS6_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEEvRT_RKS5_RS9_RKd(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEES4_NS_10DenseShapeES6_Li8EE13scaleAndAddToINS3_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS5_RKS4_RKd.exit

_ZN5Eigen8internal20generic_product_implINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEES4_NS_10DenseShapeES6_Li8EE13scaleAndAddToINS3_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS5_RKS4_RKd.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEES4_NS_10DenseShapeES6_Li8EE13scaleAndAddToINS3_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS5_RKS4_RKd.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal42call_restricted_packet_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS4_INS2_IdLin1ELin1ELi0ELin1ELin1EEES5_Li0EEES5_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.1731", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_Li0EEES4_Li1EEELi8ENS_10DenseShapeES7_ddEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = load ptr, ptr %1, align 8, !tbaa !240, !nonnull !88, !align !89
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !259, !nonnull !88, !align !89
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %.not.i = icmp eq i64 %i.i, %i.c
  %.not8.i = icmp eq i64 %i.g, 1
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = mul nsw i64 %i.g, %i.c                   ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.j, %i.i
  br i1 %.not.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !58
  call void @free(ptr noundef %i.k) #26
  %i.l = icmp sgt i64 %i.j, 0
  br i1 %i.l, label %bb.d, label %.sink.split.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ugt i64 %i.j, 2305843009213693951
  br i1 %i.m, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i: ; preds = %bb.d
  %i.n = shl nuw i64 %i.j, 3
  %i.o = call noalias ptr @malloc(i64 noundef %i.n) #30 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.invoke, label %.sink.split.i.i.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.d
  %i.q = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !37
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.c
  %.sink.i.i.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i ], [ null, %bb.c ]
  store ptr %.sink.i.i.i, ptr %0, align 8, !tbaa !58
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i: ; preds = %.sink.split.i.i.i, %bb.b
  store i64 %i.c, ptr %i.h, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i, %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !58     ; 7 uses
  %i.s = and i64 %i.c, -2                         ; 8 uses
  %i.t = icmp sgt i64 %i.c, 1
  br i1 %i.t, label %.lr.ph53.i.preheader, label %.preheader.i

.lr.ph53.i.preheader:                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %.lr.ph53.i

.preheader.i:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i, %bb.e
  %.not.i13 = icmp eq i64 %i.s, %i.c
  br i1 %.not.i13, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS7_INS4_IdLin1ELin1ELi0ELin1ELin1EEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSE_.exit, label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.preheader.i
  %i.y = load ptr, ptr %3, align 8, !tbaa !40, !noalias !1437 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1438, !nonnull !88, !align !89 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40, !noalias !1439 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !38, !noalias !1439 ; 4 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.us.preheader.i, label %.lr.ph55.split.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.us.preheader.i: ; preds = %.lr.ph55.i
  %i.af = shl i64 %i.c, 3                         ; 2 uses
  %i.ag = and i64 %i.af, -16                      ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.r, i64 %i.ag
  %i.ah = or i64 %i.af, 8
  %i.ai = sub i64 %i.ah, %i.ag
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ai, i1 false), !tbaa !42
  br label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS7_INS4_IdLin1ELin1ELi0ELin1ELin1EEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSE_.exit

.lr.ph55.split.i:                                 ; preds = %.lr.ph55.i
  %i.aj = icmp sgt i64 %i.ad, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !38 ; 5 uses
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i35.i.preheader.us.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader

.lr.ph.i.i.i.i.i.i35.i.preheader.us.preheader:    ; preds = %.lr.ph55.split.i
  %i.am = add nsw i64 %i.ad, -1                   ; 2 uses
  %i.an = add nsw i64 %i.ad, -2
  %xtraiter44 = and i64 %i.am, 3                  ; 3 uses
  %i.ao = icmp ult i64 %i.an, 3
  %unroll_iter48 = and i64 %i.am, -4
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  %lcmp.mod47 = icmp ne i64 %xtraiter44, 0
  br label %.lr.ph.i.i.i.i.i.i35.i.preheader.us

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader: ; preds = %.lr.ph55.split.i
  %i.ap = or i64 %i.c, 1                          ; 2 uses
  %i.aq = sub i64 %i.ap, %i.s                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 18
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader39, label %vector.memcheck

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader39: ; preds = %vector.body, %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader
  %.054.i.ph = phi i64 [ %i.s, %vector.memcheck ], [ %i.s, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader ], [ %i.au, %vector.body ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader
  %i.ar = shl i64 %i.c, 3
  %i.as = and i64 %i.ar, -16                      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.as ; 2 uses
  %i.at = shl i64 %i.ap, 3                        ; 2 uses
  %scevgep31 = getelementptr i8, ptr %i.r, i64 %i.at ; 2 uses
  %scevgep32 = getelementptr i8, ptr %i.y, i64 %i.as
  %scevgep33 = getelementptr i8, ptr %i.y, i64 %i.at
  %scevgep34 = getelementptr i8, ptr %i.ab, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep33
  %bound1 = icmp ult ptr %scevgep32, %scevgep31
  %found.conflict = and i1 %bound0, %bound1
  %bound035 = icmp ult ptr %scevgep, %scevgep34
  %bound136 = icmp ult ptr %i.ab, %scevgep31
  %found.conflict37 = and i1 %bound035, %bound136
  %conflict.rdx = or i1 %found.conflict, %found.conflict37
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, -4                      ; 2 uses
  %i.au = add i64 %i.s, %n.vec
  %i.av = load double, ptr %i.ab, align 8, !tbaa !42, !alias.scope !1440
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.av, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = add i64 %i.s, %index                    ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <2 x double>, ptr %i.ax, align 8, !tbaa !42, !alias.scope !1441
  %wide.load38 = load <2 x double>, ptr %i.ay, align 8, !tbaa !42, !alias.scope !1441
  %i.az = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ba = fmul <2 x double> %wide.load38, %broadcast.splat
  %i.bb = getelementptr [8 x i8], ptr %i.r, i64 %i.aw ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  store <2 x double> %i.az, ptr %i.bb, align 8, !tbaa !42, !alias.scope !1442, !noalias !1443
  store <2 x double> %i.ba, ptr %i.bc, align 8, !tbaa !42, !alias.scope !1442, !noalias !1443
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader39, label %vector.body, !llvm.loop !1432

.lr.ph.i.i.i.i.i.i35.i.preheader.us:              ; preds = %.lr.ph.i.i.i.i.i.i35.i.preheader.us.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us
  %.054.i.us = phi i64 [ %i.cx, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us ], [ %i.s, %.lr.ph.i.i.i.i.i.i35.i.preheader.us.preheader ] ; 3 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.y, i64 %.054.i.us ; 6 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !42
  %i.bg = load double, ptr %i.ab, align 8, !tbaa !42
  %i.bh = fmul double %i.bf, %i.bg                ; 2 uses
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i35.i.us.epil.preheader, label %.lr.ph.i.i.i.i.i.i35.i.us

.lr.ph.i.i.i.i.i.i35.i.us:                        ; preds = %.lr.ph.i.i.i.i.i.i35.i.preheader.us, %.lr.ph.i.i.i.i.i.i35.i.us
  %.010.i.i.i.i.i.i36.i.us = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i35.i.us ], [ 1, %.lr.ph.i.i.i.i.i.i35.i.preheader.us ] ; 6 uses
  %.089.i.i.i.i.i.i37.i.us = phi double [ %i.cm, %.lr.ph.i.i.i.i.i.i35.i.us ], [ %i.bh, %.lr.ph.i.i.i.i.i.i35.i.preheader.us ]
  %niter49 = phi i64 [ %niter49.next.3, %.lr.ph.i.i.i.i.i.i35.i.us ], [ 0, %.lr.ph.i.i.i.i.i.i35.i.preheader.us ]
  %i.bi = mul nsw i64 %.010.i.i.i.i.i.i36.i.us, %i.al
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !42
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.010.i.i.i.i.i.i36.i.us
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !42
  %i.bn = fmul double %i.bk, %i.bm
  %i.bo = fadd double %.089.i.i.i.i.i.i37.i.us, %i.bn
  %i.bp = add nuw nsw i64 %.010.i.i.i.i.i.i36.i.us, 1 ; 2 uses
  %i.bq = mul nsw i64 %i.bp, %i.al
  %i.br = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !42
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bp
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !42
  %i.bv = fmul double %i.bs, %i.bu
  %i.bw = fadd double %i.bo, %i.bv
  %i.bx = add nuw nsw i64 %.010.i.i.i.i.i.i36.i.us, 2 ; 2 uses
  %i.by = mul nsw i64 %i.bx, %i.al
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !42
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bx
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !42
  %i.cd = fmul double %i.ca, %i.cc
  %i.ce = fadd double %i.bw, %i.cd
  %i.cf = add nuw nsw i64 %.010.i.i.i.i.i.i36.i.us, 3 ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.al
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !42
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.cf
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !42
  %i.cl = fmul double %i.ci, %i.ck
  %i.cm = fadd double %i.ce, %i.cl                ; 3 uses
  %i.cn = add nuw nsw i64 %.010.i.i.i.i.i.i36.i.us, 4 ; 2 uses
  %niter49.next.3 = add i64 %niter49, 4           ; 2 uses
  %niter49.ncmp.3 = icmp eq i64 %niter49.next.3, %unroll_iter48
  br i1 %niter49.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa, label %.lr.ph.i.i.i.i.i.i35.i.us, !llvm.loop !4

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i35.i.us
  br i1 %lcmp.mod45.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us, label %.lr.ph.i.i.i.i.i.i35.i.us.epil.preheader

.lr.ph.i.i.i.i.i.i35.i.us.epil.preheader:         ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa, %.lr.ph.i.i.i.i.i.i35.i.preheader.us
  %.010.i.i.i.i.i.i36.i.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i35.i.preheader.us ], [ %i.cn, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa ]
  %.089.i.i.i.i.i.i37.i.us.epil.init = phi double [ %i.bh, %.lr.ph.i.i.i.i.i.i35.i.preheader.us ], [ %i.cm, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod47)
  br label %.lr.ph.i.i.i.i.i.i35.i.us.epil

.lr.ph.i.i.i.i.i.i35.i.us.epil:                   ; preds = %.lr.ph.i.i.i.i.i.i35.i.us.epil, %.lr.ph.i.i.i.i.i.i35.i.us.epil.preheader
  %.010.i.i.i.i.i.i36.i.us.epil = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i.i35.i.us.epil ], [ %.010.i.i.i.i.i.i36.i.us.epil.init, %.lr.ph.i.i.i.i.i.i35.i.us.epil.preheader ] ; 3 uses
  %.089.i.i.i.i.i.i37.i.us.epil = phi double [ %i.cu, %.lr.ph.i.i.i.i.i.i35.i.us.epil ], [ %.089.i.i.i.i.i.i37.i.us.epil.init, %.lr.ph.i.i.i.i.i.i35.i.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i35.i.us.epil ], [ 0, %.lr.ph.i.i.i.i.i.i35.i.us.epil.preheader ]
  %i.co = mul nsw i64 %.010.i.i.i.i.i.i36.i.us.epil, %i.al
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !42
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.010.i.i.i.i.i.i36.i.us.epil
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !42
  %i.ct = fmul double %i.cq, %i.cs
  %i.cu = fadd double %.089.i.i.i.i.i.i37.i.us.epil, %i.ct ; 2 uses
  %i.cv = add nuw nsw i64 %.010.i.i.i.i.i.i36.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter44
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us, label %.lr.ph.i.i.i.i.i.i35.i.us.epil, !llvm.loop !1433

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us: ; preds = %.lr.ph.i.i.i.i.i.i35.i.us.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa
  %.lcssa = phi double [ %i.cm, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa ], [ %i.cu, %.lr.ph.i.i.i.i.i.i35.i.us.epil ]
  %i.cw = getelementptr [8 x i8], ptr %i.r, i64 %.054.i.us
  store double %.lcssa, ptr %i.cw, align 8, !tbaa !42
  %i.cx = add nsw i64 %.054.i.us, 1               ; 2 uses
  %i.cy = icmp slt i64 %i.cx, %i.c
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i35.i.preheader.us, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS7_INS4_IdLin1ELin1ELi0ELin1ELin1EEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSE_.exit, !llvm.loop !1434

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i
  %.02952.i = phi i64 [ %i.ei, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i ], [ 0, %.lr.ph53.i.preheader ] ; 3 uses
  %i.cz = load i64, ptr %i.u, align 8, !tbaa !261 ; 5 uses
  %i.da = icmp sgt i64 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph53.i
  %i.db = load ptr, ptr %i.w, align 8, !tbaa !158
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.02952.i ; 3 uses
  %i.dd = load i64, ptr %i.x, align 8, !tbaa !148 ; 3 uses
  %i.de = load ptr, ptr %i.v, align 8, !tbaa !158 ; 3 uses
  %xtraiter = and i64 %i.cz, 1
  %i.df = icmp eq i64 %i.cz, 1
  br i1 %i.df, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.new:                             ; preds = %.lr.ph.i.i.i.i.i
  %unroll_iter = and i64 %i.cz, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.new
  %i.dg = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i.i.new ], [ %i.dx, %bb.f ]
  %.012.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %i.dy, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %niter.next.1, %bb.f ]
  %i.dh = mul nsw i64 %.012.i.i.i.i.i, %i.dd
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dh
  %i.dj = load <2 x double>, ptr %i.di, align 1, !tbaa !24
  %gep.i.i.i.i = getelementptr [8 x i8], ptr %i.de, i64 %.012.i.i.i.i.i
  %i.dk = load double, ptr %gep.i.i.i.i, align 8, !tbaa !42
  %i.dl = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x double> %i.dj, %i.dm
  %i.do = fadd <2 x double> %i.dg, %i.dn
  %i.dp = or disjoint i64 %.012.i.i.i.i.i, 1      ; 2 uses
  %i.dq = mul nsw i64 %i.dp, %i.dd
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dq
  %i.ds = load <2 x double>, ptr %i.dr, align 1, !tbaa !24
  %gep.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.de, i64 %i.dp
  %i.dt = load double, ptr %gep.i.i.i.i.1, align 8, !tbaa !42
  %i.du = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x double> %i.ds, %i.dv
  %i.dx = fadd <2 x double> %i.do, %i.dw          ; 3 uses
  %i.dy = add nuw nsw i64 %.012.i.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !5

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i.i ], [ %i.dx, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa ]
  %.012.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.dy, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod43 = trunc i64 %i.cz to i1
  call void @llvm.assume(i1 %lcmp.mod43)
  %i.dz = mul nsw i64 %.012.i.i.i.i.i.epil.init, %i.dd
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dz
  %i.eb = load <2 x double>, ptr %i.ea, align 1, !tbaa !24
  %gep.i.i.i.i.epil = getelementptr [8 x i8], ptr %i.de, i64 %.012.i.i.i.i.i.epil.init
  %i.ec = load double, ptr %gep.i.i.i.i.epil, align 8, !tbaa !42
  %i.ed = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = fmul <2 x double> %i.eb, %i.ee
  %i.eg = fadd <2 x double> %.epil.init, %i.ef
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i: ; preds = %.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa, %.lr.ph53.i
  %.0.i.i.i.i = phi <2 x double> [ zeroinitializer, %.lr.ph53.i ], [ %i.dx, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa ], [ %i.eg, %.epil.preheader ]
  %i.eh = getelementptr [8 x i8], ptr %i.r, i64 %.02952.i
  store <2 x double> %.0.i.i.i.i, ptr %i.eh, align 16, !tbaa !24
  %i.ei = add nuw nsw i64 %.02952.i, 2            ; 2 uses
  %i.ej = icmp slt i64 %i.ei, %i.s
  br i1 %i.ej, label %.lr.ph53.i, label %.preheader.i, !llvm.loop !1435

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader39, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i
  %.054.i = phi i64 [ %i.ep, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i ], [ %.054.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEES7_Li0EEES7_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader39 ] ; 3 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.y, i64 %.054.i
  %i.el = load double, ptr %i.ek, align 8, !tbaa !42
  %i.em = load double, ptr %i.ab, align 8, !tbaa !42
  %i.en = fmul double %i.el, %i.em
  %i.eo = getelementptr [8 x i8], ptr %i.r, i64 %.054.i
  store double %i.en, ptr %i.eo, align 8, !tbaa !42
  %i.ep = add nsw i64 %.054.i, 1                  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS4_INS_9TransposeINS2_IdLin1ELin1ELi0ELin1ELin1EEEEES6_Li0EEES6_Li0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS9_RKSB_:bb.a
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = mul nsw i64 %i.g, %i.c                   ; 4 uses
  %.not.i.i = icmp eq i64 %i.j, %i.i
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !58
  tail call void @free(ptr noundef %i.k) #26
  %i.l = icmp sgt i64 %i.j, 0
  br i1 %i.l, label %bb.d, label %.sink.split.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ugt i64 %i.j, 2305843009213693951
  br i1 %i.m, label %bb.e, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.d
  %i.o = shl nuw i64 %i.j, 3
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #30 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.c
  %.sink.i.i = phi ptr [ %i.p, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.c ]
  store ptr %.sink.i.i, ptr %0, align 8, !tbaa !58
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !116
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit: ; preds = %bb.b, %.sink.split.i.i
  %.pre = phi ptr [ %i.e, %bb.b ], [ %.pre.pre, %.sink.split.i.i ]
  store i64 %i.c, ptr %i.h, align 8, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit
  %i.s = phi ptr [ %i.e, %bb.a ], [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit ]
  tail call void @_ZN5Eigen8internal20generic_product_implINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_NS_10DenseShapeES8_Li8EE6evalToINS4_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS7_RKS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.s)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal20generic_product_implINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_NS_10DenseShapeES8_Li8EE6evalToINS4_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS7_RKS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.1737", align 8 ; 8 uses
  %4 = alloca %"class.Eigen::Block.403", align 8  ; 8 uses
  %5 = alloca %"class.Eigen::Product.355", align 8 ; 5 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !57   ; 5 uses
  %i.f = add nsw i64 %i.e, %i.c
  %i.g = icmp slt i64 %i.f, 19
  %i.h = icmp sgt i64 %i.c, 0
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.i, align 8, !tbaa !85, !alias.scope !1461
  call void @_ZN5Eigen8internal42call_restricted_packet_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS4_INS_9TransposeINS2_IdLin1ELin1ELi0ELin1ELin1EEEEES6_Li0EEES6_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %i.e, 1
  br i1 %i.j, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !58
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !42
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %bb.c, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !174, !nonnull !88, !align !89
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !39
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_NS_10DenseShapeES8_Li8EE13scaleAndAddToINS4_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS7_RKS5_RKd.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %i.q = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !88, !align !89
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39
  %i.t = icmp eq i64 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.v, 0
  %or.cond.i = select i1 %i.t, i1 true, i1 %i.w
  br i1 %or.cond.i, label %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_NS_10DenseShapeES8_Li8EE13scaleAndAddToINS4_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS7_RKS5_RKd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  %i.x = load ptr, ptr %0, align 8, !tbaa !58, !noalias !1462
  store ptr %i.x, ptr %3, align 8, !tbaa !253, !alias.scope !1462
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.y, align 8, !tbaa !91, !alias.scope !1462
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %0, ptr %i.z, align 8, !tbaa !93, !alias.scope !1462
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.aa, align 8, !tbaa !91, !alias.scope !1462
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.e, ptr %i.ab, align 8, !tbaa !257, !alias.scope !1462
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  %i.ac = load ptr, ptr %2, align 8, !tbaa !40, !noalias !1463
  store ptr %i.ac, ptr %4, align 8, !tbaa !129, !alias.scope !1463
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.c, ptr %i.ad, align 8, !tbaa !91, !alias.scope !1463
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %i.ae, align 8, !tbaa !85, !alias.scope !1463
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store i64 %i.c, ptr %i.ag, align 8, !tbaa !131, !alias.scope !1463
  call void @_ZN5Eigen8internal20generic_product_implINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEEKNS_5BlockIKS5_Lin1ELi1ELb1EEENS_10DenseShapeESC_Li7EE13scaleAndAddToINS8_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEEvRT_RKS7_RSB_RKd(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_NS_10DenseShapeES8_Li8EE13scaleAndAddToINS4_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS7_RKS5_RKd.exit

_ZN5Eigen8internal20generic_product_implINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_NS_10DenseShapeES8_Li8EE13scaleAndAddToINS4_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS7_RKS5_RKd.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal20generic_product_implINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_NS_10DenseShapeES8_Li8EE13scaleAndAddToINS4_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS7_RKS5_RKd.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal42call_restricted_packet_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS4_INS_9TransposeINS2_IdLin1ELin1ELi0ELin1ELin1EEEEES6_Li0EEES6_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %4 = alloca %"struct.Eigen::internal::evaluator.362", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_9TransposeIS3_EES3_Li0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS7_RKS9_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5Eigen8internal9evaluatorINS_7ProductINS2_INS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_Li1EEEEC2ERKS8_.exit unwind label %.body.i.i

common.resume:                                    ; preds = %bb.g, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.a, %.body.i.i ], [ %i.fe, %bb.g ]
  resume { ptr, i32 } %common.resume.op

.body.i.i:                                        ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = load ptr, ptr %4, align 8, !tbaa !40
  call void @free(ptr noundef %i.b) #26
  br label %common.resume

_ZN5Eigen8internal9evaluatorINS_7ProductINS2_INS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_Li1EEEEC2ERKS8_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !173, !nonnull !88, !align !89 ; 4 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !38
  store ptr %i.g, ptr %i.f, align 8, !tbaa !147
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i64 %i.i, ptr %i.j, align 8, !tbaa !148
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38
  store ptr %i.l, ptr %i.k, align 8, !tbaa !147
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %i.n, ptr %i.o, align 8, !tbaa !148
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174, !nonnull !88, !align !89
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !39
  store i64 %i.t, ptr %i.p, align 8, !tbaa !176
  %i.u = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !88, !align !89
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !39   ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !39   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !57  ; 2 uses
  %.not.i = icmp eq i64 %i.aa, %i.w
  %.not8.i = icmp eq i64 %i.y, 1
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen8internal9evaluatorINS_7ProductINS2_INS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_Li1EEEEC2ERKS8_.exit
  %i.ab = mul nsw i64 %i.y, %i.w                  ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.ab, %i.aa
  br i1 %.not.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %0, align 8, !tbaa !58
  call void @free(ptr noundef %i.ac) #26
  %i.ad = icmp sgt i64 %i.ab, 0
  br i1 %i.ad, label %bb.d, label %.sink.split.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp samesign ugt i64 %i.ab, 2305843009213693951
  br i1 %i.ae, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i: ; preds = %bb.d
  %i.af = shl nuw i64 %i.ab, 3
  %i.ag = call noalias ptr @malloc(i64 noundef %i.af) #30 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.invoke, label %.sink.split.i.i.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.d
  %i.ai = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ai, align 8, !tbaa !37
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.c
  %.sink.i.i.i = phi ptr [ %i.ag, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i ], [ null, %bb.c ]
  store ptr %.sink.i.i.i, ptr %0, align 8, !tbaa !58
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i: ; preds = %.sink.split.i.i.i, %bb.b
  store i64 %i.w, ptr %i.z, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i, %_ZN5Eigen8internal9evaluatorINS_7ProductINS2_INS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES5_Li0EEES5_Li1EEEEC2ERKS8_.exit
  %i.aj = load ptr, ptr %0, align 8, !tbaa !58    ; 7 uses
  %i.ak = and i64 %i.w, -2                        ; 8 uses
  %i.al = icmp sgt i64 %i.w, 1
  br i1 %i.al, label %.lr.ph53.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i, %bb.e
  %.not.i13 = icmp eq i64 %i.ak, %i.w
  br i1 %.not.i13, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS7_INS_9TransposeINS4_IdLin1ELin1ELi0ELin1ELin1EEEEES9_Li0EEES9_Li1EEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSG_.exit, label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.preheader.i
  %i.am = load ptr, ptr %4, align 8, !tbaa !40, !noalias !1477 ; 5 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !180, !nonnull !88, !align !89 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40, !noalias !1478 ; 10 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !38, !noalias !1478 ; 4 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.us.preheader.i, label %.lr.ph55.split.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.us.preheader.i: ; preds = %.lr.ph55.i
  %i.as = shl i64 %i.w, 3                         ; 2 uses
  %i.at = and i64 %i.as, -16                      ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.aj, i64 %i.at
  %i.au = or i64 %i.as, 8
  %i.av = sub i64 %i.au, %i.at
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.av, i1 false), !tbaa !42
  br label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS7_INS_9TransposeINS4_IdLin1ELin1ELi0ELin1ELin1EEEEES9_Li0EEES9_Li1EEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSG_.exit

.lr.ph55.split.i:                                 ; preds = %.lr.ph55.i
  %i.aw = icmp sgt i64 %i.aq, 1
  %i.ax = load i64, ptr %i.h, align 8, !tbaa !38  ; 5 uses
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i35.i.preheader.us.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader

.lr.ph.i.i.i.i.i.i35.i.preheader.us.preheader:    ; preds = %.lr.ph55.split.i
  %i.ay = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.az = add nsw i64 %i.aq, -2
  %xtraiter44 = and i64 %i.ay, 3                  ; 3 uses
  %i.ba = icmp ult i64 %i.az, 3
  %unroll_iter48 = and i64 %i.ay, -4
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  %lcmp.mod47 = icmp ne i64 %xtraiter44, 0
  br label %.lr.ph.i.i.i.i.i.i35.i.preheader.us

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader: ; preds = %.lr.ph55.split.i
  %i.bb = or i64 %i.w, 1                          ; 2 uses
  %i.bc = sub i64 %i.bb, %i.ak                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 18
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader39, label %vector.memcheck

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader39: ; preds = %vector.body, %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader
  %.054.i.ph = phi i64 [ %i.ak, %vector.memcheck ], [ %i.ak, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader ], [ %i.bg, %vector.body ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader
  %i.bd = shl i64 %i.w, 3
  %i.be = and i64 %i.bd, -16                      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aj, i64 %i.be ; 2 uses
  %i.bf = shl i64 %i.bb, 3                        ; 2 uses
  %scevgep31 = getelementptr i8, ptr %i.aj, i64 %i.bf ; 2 uses
  %scevgep32 = getelementptr i8, ptr %i.am, i64 %i.be
  %scevgep33 = getelementptr i8, ptr %i.am, i64 %i.bf
  %scevgep34 = getelementptr i8, ptr %i.ao, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep33
  %bound1 = icmp ult ptr %scevgep32, %scevgep31
  %found.conflict = and i1 %bound0, %bound1
  %bound035 = icmp ult ptr %scevgep, %scevgep34
  %bound136 = icmp ult ptr %i.ao, %scevgep31
  %found.conflict37 = and i1 %bound035, %bound136
  %conflict.rdx = or i1 %found.conflict, %found.conflict37
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, -4                      ; 2 uses
  %i.bg = add i64 %i.ak, %n.vec
  %i.bh = load double, ptr %i.ao, align 8, !tbaa !42, !alias.scope !1479
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bh, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = add i64 %i.ak, %index                   ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load = load <2 x double>, ptr %i.bj, align 8, !tbaa !42, !alias.scope !1480
  %wide.load38 = load <2 x double>, ptr %i.bk, align 8, !tbaa !42, !alias.scope !1480
  %i.bl = fmul <2 x double> %wide.load, %broadcast.splat
  %i.bm = fmul <2 x double> %wide.load38, %broadcast.splat
  %i.bn = getelementptr [8 x i8], ptr %i.aj, i64 %i.bi ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  store <2 x double> %i.bl, ptr %i.bn, align 8, !tbaa !42, !alias.scope !1481, !noalias !1482
  store <2 x double> %i.bm, ptr %i.bo, align 8, !tbaa !42, !alias.scope !1481, !noalias !1482
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader39, label %vector.body, !llvm.loop !1472

.lr.ph.i.i.i.i.i.i35.i.preheader.us:              ; preds = %.lr.ph.i.i.i.i.i.i35.i.preheader.us.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us
  %.054.i.us = phi i64 [ %i.dj, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us ], [ %i.ak, %.lr.ph.i.i.i.i.i.i35.i.preheader.us.preheader ] ; 3 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.am, i64 %.054.i.us ; 6 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !42
  %i.bs = load double, ptr %i.ao, align 8, !tbaa !42
  %i.bt = fmul double %i.br, %i.bs                ; 2 uses
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i35.i.us.epil.preheader, label %.lr.ph.i.i.i.i.i.i35.i.us

.lr.ph.i.i.i.i.i.i35.i.us:                        ; preds = %.lr.ph.i.i.i.i.i.i35.i.preheader.us, %.lr.ph.i.i.i.i.i.i35.i.us
  %.010.i.i.i.i.i.i36.i.us = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.i.i35.i.us ], [ 1, %.lr.ph.i.i.i.i.i.i35.i.preheader.us ] ; 6 uses
  %.089.i.i.i.i.i.i37.i.us = phi double [ %i.cy, %.lr.ph.i.i.i.i.i.i35.i.us ], [ %i.bt, %.lr.ph.i.i.i.i.i.i35.i.preheader.us ]
  %niter49 = phi i64 [ %niter49.next.3, %.lr.ph.i.i.i.i.i.i35.i.us ], [ 0, %.lr.ph.i.i.i.i.i.i35.i.preheader.us ]
  %i.bu = mul nsw i64 %.010.i.i.i.i.i.i36.i.us, %i.ax
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !42
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.010.i.i.i.i.i.i36.i.us
  %i.by = load double, ptr %i.bx, align 8, !tbaa !42
  %i.bz = fmul double %i.bw, %i.by
  %i.ca = fadd double %.089.i.i.i.i.i.i37.i.us, %i.bz
  %i.cb = add nuw nsw i64 %.010.i.i.i.i.i.i36.i.us, 1 ; 2 uses
  %i.cc = mul nsw i64 %i.cb, %i.ax
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !42
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cb
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !42
  %i.ch = fmul double %i.ce, %i.cg
  %i.ci = fadd double %i.ca, %i.ch
  %i.cj = add nuw nsw i64 %.010.i.i.i.i.i.i36.i.us, 2 ; 2 uses
  %i.ck = mul nsw i64 %i.cj, %i.ax
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !42
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cj
  %i.co = load double, ptr %i.cn, align 8, !tbaa !42
  %i.cp = fmul double %i.cm, %i.co
  %i.cq = fadd double %i.ci, %i.cp
  %i.cr = add nuw nsw i64 %.010.i.i.i.i.i.i36.i.us, 3 ; 2 uses
  %i.cs = mul nsw i64 %i.cr, %i.ax
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !42
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cr
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !42
  %i.cx = fmul double %i.cu, %i.cw
  %i.cy = fadd double %i.cq, %i.cx                ; 3 uses
  %i.cz = add nuw nsw i64 %.010.i.i.i.i.i.i36.i.us, 4 ; 2 uses
  %niter49.next.3 = add i64 %niter49, 4           ; 2 uses
  %niter49.ncmp.3 = icmp eq i64 %niter49.next.3, %unroll_iter48
  br i1 %niter49.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa, label %.lr.ph.i.i.i.i.i.i35.i.us, !llvm.loop !4

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i35.i.us
  br i1 %lcmp.mod45.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us, label %.lr.ph.i.i.i.i.i.i35.i.us.epil.preheader

.lr.ph.i.i.i.i.i.i35.i.us.epil.preheader:         ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa, %.lr.ph.i.i.i.i.i.i35.i.preheader.us
  %.010.i.i.i.i.i.i36.i.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i35.i.preheader.us ], [ %i.cz, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa ]
  %.089.i.i.i.i.i.i37.i.us.epil.init = phi double [ %i.bt, %.lr.ph.i.i.i.i.i.i35.i.preheader.us ], [ %i.cy, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod47)
  br label %.lr.ph.i.i.i.i.i.i35.i.us.epil

.lr.ph.i.i.i.i.i.i35.i.us.epil:                   ; preds = %.lr.ph.i.i.i.i.i.i35.i.us.epil, %.lr.ph.i.i.i.i.i.i35.i.us.epil.preheader
  %.010.i.i.i.i.i.i36.i.us.epil = phi i64 [ %i.dh, %.lr.ph.i.i.i.i.i.i35.i.us.epil ], [ %.010.i.i.i.i.i.i36.i.us.epil.init, %.lr.ph.i.i.i.i.i.i35.i.us.epil.preheader ] ; 3 uses
  %.089.i.i.i.i.i.i37.i.us.epil = phi double [ %i.dg, %.lr.ph.i.i.i.i.i.i35.i.us.epil ], [ %.089.i.i.i.i.i.i37.i.us.epil.init, %.lr.ph.i.i.i.i.i.i35.i.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i35.i.us.epil ], [ 0, %.lr.ph.i.i.i.i.i.i35.i.us.epil.preheader ]
  %i.da = mul nsw i64 %.010.i.i.i.i.i.i36.i.us.epil, %i.ax
  %i.db = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !42
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.010.i.i.i.i.i.i36.i.us.epil
  %i.de = load double, ptr %i.dd, align 8, !tbaa !42
  %i.df = fmul double %i.dc, %i.de
  %i.dg = fadd double %.089.i.i.i.i.i.i37.i.us.epil, %i.df ; 2 uses
  %i.dh = add nuw nsw i64 %.010.i.i.i.i.i.i36.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter44
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us, label %.lr.ph.i.i.i.i.i.i35.i.us.epil, !llvm.loop !1473

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us: ; preds = %.lr.ph.i.i.i.i.i.i35.i.us.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa
  %.lcssa = phi double [ %i.cy, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa ], [ %i.dg, %.lr.ph.i.i.i.i.i.i35.i.us.epil ]
  %i.di = getelementptr [8 x i8], ptr %i.aj, i64 %.054.i.us
  store double %.lcssa, ptr %i.di, align 8, !tbaa !42
  %i.dj = add nsw i64 %.054.i.us, 1               ; 2 uses
  %i.dk = icmp slt i64 %i.dj, %i.w
  br i1 %i.dk, label %.lr.ph.i.i.i.i.i.i35.i.preheader.us, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS7_INS_9TransposeINS4_IdLin1ELin1ELi0ELin1ELin1EEEEES9_Li0EEES9_Li1EEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSG_.exit, !llvm.loop !1474

.lr.ph53.i:                                       ; preds = %bb.e, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i
  %.02952.i = phi i64 [ %i.eu, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i ], [ 0, %bb.e ] ; 3 uses
  %i.dl = load i64, ptr %i.p, align 8, !tbaa !176 ; 5 uses
  %i.dm = icmp sgt i64 %i.dl, 0
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph53.i
  %i.dn = load ptr, ptr %i.f, align 8, !tbaa !158
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.02952.i ; 3 uses
  %i.dp = load i64, ptr %i.j, align 8, !tbaa !148 ; 3 uses
  %i.dq = load ptr, ptr %i.k, align 8, !tbaa !158 ; 3 uses
  %xtraiter = and i64 %i.dl, 1
  %i.dr = icmp eq i64 %i.dl, 1
  br i1 %i.dr, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.new:                             ; preds = %.lr.ph.i.i.i.i.i
  %unroll_iter = and i64 %i.dl, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.new
  %i.ds = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i.i.new ], [ %i.ej, %bb.f ]
  %.012.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %i.ek, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %niter.next.1, %bb.f ]
  %i.dt = mul nsw i64 %.012.i.i.i.i.i, %i.dp
  %i.du = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dt
  %i.dv = load <2 x double>, ptr %i.du, align 1, !tbaa !24
  %gep.i.i.i.i = getelementptr [8 x i8], ptr %i.dq, i64 %.012.i.i.i.i.i
  %i.dw = load double, ptr %gep.i.i.i.i, align 8, !tbaa !42
  %i.dx = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x double> %i.dv, %i.dy
  %i.ea = fadd <2 x double> %i.ds, %i.dz
  %i.eb = or disjoint i64 %.012.i.i.i.i.i, 1      ; 2 uses
  %i.ec = mul nsw i64 %i.eb, %i.dp
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ec
  %i.ee = load <2 x double>, ptr %i.ed, align 1, !tbaa !24
  %gep.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.dq, i64 %i.eb
  %i.ef = load double, ptr %gep.i.i.i.i.1, align 8, !tbaa !42
  %i.eg = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = fmul <2 x double> %i.ee, %i.eh
  %i.ej = fadd <2 x double> %i.ea, %i.ei          ; 3 uses
  %i.ek = add nuw nsw i64 %.012.i.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !5

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i.i ], [ %i.ej, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa ]
  %.012.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ek, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod43 = trunc i64 %i.dl to i1
  call void @llvm.assume(i1 %lcmp.mod43)
  %i.el = mul nsw i64 %.012.i.i.i.i.i.epil.init, %i.dp
  %i.em = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.el
  %i.en = load <2 x double>, ptr %i.em, align 1, !tbaa !24
  %gep.i.i.i.i.epil = getelementptr [8 x i8], ptr %i.dq, i64 %.012.i.i.i.i.i.epil.init
  %i.eo = load double, ptr %gep.i.i.i.i.epil, align 8, !tbaa !42
  %i.ep = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x double> %i.en, %i.eq
  %i.es = fadd <2 x double> %.epil.init, %i.er
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i: ; preds = %.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa, %.lr.ph53.i
  %.0.i.i.i.i = phi <2 x double> [ zeroinitializer, %.lr.ph53.i ], [ %i.ej, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.unr-lcssa ], [ %i.es, %.epil.preheader ]
  %i.et = getelementptr [8 x i8], ptr %i.aj, i64 %.02952.i
  store <2 x double> %.0.i.i.i.i, ptr %i.et, align 16, !tbaa !24
  %i.eu = add nuw nsw i64 %.02952.i, 2            ; 2 uses
  %i.ev = icmp slt i64 %i.eu, %i.ak
  br i1 %i.ev, label %.lr.ph53.i, label %.preheader.i, !llvm.loop !1475

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader39, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i
  %.054.i = phi i64 [ %i.fb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i ], [ %.054.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_7ProductINS6_INS_9TransposeINS3_IdLin1ELin1ELi0ELin1ELin1EEEEES8_Li0EEES8_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader39 ] ; 3 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.am, i64 %.054.i
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !42
  %i.ey = load double, ptr %i.ao, align 8, !tbaa !42
  %i.ez = fmul double %i.ex, %i.ey
  %i.fa = getelementptr [8 x i8], ptr %i.aj, i64 %.054.i
  store double %i.ez, ptr %i.fa, align 8, !tbaa !42
  %i.fb = add nsw i64 %.054.i, 1                  ; 2 uses
end_hunk_1
