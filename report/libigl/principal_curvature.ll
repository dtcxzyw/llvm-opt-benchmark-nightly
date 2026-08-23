Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/principal_curvature?download=true
inline.NumInlined: 17940
inline.NumDeleted: 8729
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 147
loop-unroll.NumUnrolled: 163
begin_hunk_0_@_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEES5_NS_11VectorBlockIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1EEEEEvRT_RKT0_RKT1_b:bb.a
  %6 = alloca %"class.Eigen::Matrix.1105", align 8 ; 15 uses
  %.sroa.029 = alloca %"class.Eigen::internal::BlockImpl_dense.430", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 12 uses
  %8 = alloca %"class.Eigen::Product.1118", align 8 ; 6 uses
  %9 = alloca %"class.Eigen::Product.1136", align 8 ; 6 uses
  %10 = alloca %"class.Eigen::Product.1147", align 8 ; 6 uses
  %11 = alloca %"class.Eigen::Product.1165", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !224  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread, label %bb.b

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.c
  %i.h = icmp sgt i64 %i.c, %i.g
  br i1 %i.h, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !58
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = mul nsw i64 %i.c, %i.c                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = icmp samesign ugt i64 %i.j, 2305843009213693951
  br i1 %i.m, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

.noexc:                                           ; preds = %bb.c
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !58
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.c
  %i.o = shl nuw i64 %i.j, 3
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #33 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.noexc23, label %.sink.split.i

.noexc23:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !58
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.p, ptr %6, align 8, !tbaa !1046
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit

_ZN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread, %.sink.split.i
  %i.s = phi ptr [ %i.f, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread ], [ %i.l, %.sink.split.i ]
  %i.t = phi ptr [ %i.e, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread ], [ %i.k, %.sink.split.i ]
  store i64 %i.c, ptr %i.t, align 8, !tbaa !1048
  store i64 %i.c, ptr %i.s, align 8, !tbaa !1049
  br i1 %3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit
  invoke void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit
  invoke void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS4_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.029)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.029, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockIS2_Lin1ELin1ELb0EEEEELj6EEES9_Li0EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockIS1_Lin1ELin1ELb0EEEEELj6EEES7_Li0EEEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.j

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockIS1_Lin1ELin1ELb0EEEEELj6EEES7_Li0EEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br i1 %3, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockIS1_Lin1ELin1ELb0EEEEELj6EEES7_Li0EEEEERKNS_9EigenBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  store ptr %6, ptr %9, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_14TriangularViewINS2_IdLin1ELin1ELi1ELin1ELin1EEELj2EEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISD_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef null)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.o

bb.j:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.r

bb.l:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockIS1_Lin1ELin1ELb0EEEEELj6EEES7_Li0EEEEERKNS_9EigenBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store ptr %6, ptr %10, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %7, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS2_IdLin1ELin1ELi1ELin1ELin1EEEEELj1EEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISH_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef null)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.029, i64 56, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr %7, ptr %i.ab, align 8, !tbaa !225, !alias.scope !1050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store double -1.000000e+00, ptr %i.a, align 8, !tbaa !60
  invoke void @_ZN5Eigen8internal23triangular_product_implILi5ELb1EKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELb0ES4_Lb0EE3runIS5_EEvRT_RS6_RKS4_RKNS9_6ScalarE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.ac = load ptr, ptr %7, align 8, !tbaa !55
  call void @free(ptr noundef %i.ac) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.029)
  %i.ad = load ptr, ptr %6, align 8, !tbaa !1046
  call void @free(ptr noundef %i.ad) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret void

bb.q:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.y, %bb.k ], [ %i.aa, %bb.n ]
  %i.af = load ptr, ptr %7, align 8, !tbaa !55
  call void @free(ptr noundef %i.af) #29
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.029)
  br label %common.resume

common.resume:                                    ; preds = %bb.s, %bb.e
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.u, %bb.e ]
  %i.ag = load ptr, ptr %6, align 8, !tbaa !1046
  call void @free(ptr noundef %i.ag) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.1270", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.1278", align 8 ; 12 uses
  %5 = alloca %"class.Eigen::Transpose.1285", align 8 ; 17 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %.sroa.7117 = alloca [32 x i8], align 8         ; 2 uses
  %.sroa.14178 = alloca { %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }, align 8 ; 4 uses
  %.sroa.25 = alloca %"class.Eigen::MapBase.432", align 8 ; 4 uses
  %.sroa.27 = alloca { %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }, align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !224  ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph195, label %._crit_edge

.lr.ph195:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7117.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7117, i64 8
  %.sroa.9119.24..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.23.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.24.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.25.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.26.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.27.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.28.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.29.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.30.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8172.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10174.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11175.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12176.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13177.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 104
  %.sroa.14178.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 112
  %.sroa.15179.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.16180.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.17181.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.18182.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.20184.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %6 = shl i64 %i.c, 3                            ; 3 uses
  %7 = add i64 %6, -8                             ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph195, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph195 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047194 = phi i64 [ %i.d, %.lr.ph195 ], [ %i.gx, %.loopexit ] ; 15 uses
  %i.l = shl i64 %indvar, 3
  %8 = sub i64 %7, %i.l
  %9 = mul i64 %indvar, -8                        ; 2 uses
  %10 = add i64 %7, %9
  %11 = add i64 %6, %9
  %i.m = load i64, ptr %i.f, align 8, !tbaa !224  ; 2 uses
  %i.n = xor i64 %.047194, -1                     ; 2 uses
  %i.o = add i64 %i.c, %i.n                       ; 9 uses
  %.not201 = icmp eq i64 %i.o, 0
  br i1 %.not201, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nuw nsw i64 %.047194, 1             ; 4 uses
  %i.p = add i64 %i.m, %i.n                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14178)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27)
  %i.q = load ptr, ptr %2, align 8, !tbaa !716
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.047194
  %i.s = load double, ptr %i.r, align 8, !tbaa !60
  %i.t = fneg double %i.s
  %i.u = load ptr, ptr %1, align 8, !tbaa !653, !noalias !1053 ; 2 uses
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !807, !noalias !1053 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !56, !noalias !1053 ; 5 uses
  %i.y = mul nsw i64 %i.x, %.047194
  %i.z = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.y ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7117.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14178, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9119.24..sroa_idx, i64 24, i1 false)
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.neg
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !224, !noalias !1056
  %i.ac = sub nsw i64 %i.ab, %i.o                 ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.neg
  %i.ae = mul nsw i64 %i.ac, %i.x
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9119.24..sroa_idx, i64 24, i1 false)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !1046, !noalias !1059
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !1049, !noalias !1059 ; 5 uses
  %i.ai = mul nsw i64 %i.ah, %.047194
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.ak = sub nsw i64 %i.ah, %i.o                 ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak ; 5 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = and i64 %i.am, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ao = lshr exact i64 %i.am, 3
  %i.ap = and i64 %i.ao, 1                        ; 3 uses
  %i.aq = sub nuw nsw i64 %i.o, %i.ap             ; 4 uses
  %i.ar = lshr i64 %i.aq, 1                       ; 2 uses
  %i.as = and i64 %i.aq, 9223372036854775806      ; 3 uses
  %i.at = or disjoint i64 %i.as, %i.ap            ; 2 uses
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.au = phi i64 [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %bb.c ]
  %i.av = phi i64 [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.aw = phi i64 [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ax = phi i64 [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i191 = phi i64 [ 1, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.ay = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i191, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.ay, i1 false), !tbaa !60
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.az = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ba = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bb = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bc = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i190 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i191, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.bd = icmp samesign ugt i64 %i.bc, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.be = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i190, 3
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.al, i64 %i.be
  %i.bf = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i190, 2
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.az, i64 %i.bf)
  %i.bg = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i190, -1
  %i.bh = add nsw i64 %smax.i.i.i.i.i, %i.bg
  %i.bi = shl i64 %i.bh, 3
  %i.bj = and i64 %i.bi, -16
  %i.bk = add i64 %i.bj, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.bk, i1 false), !tbaa !16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bl = icmp samesign ult i64 %i.az, %i.o
  br i1 %i.bl, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = shl i64 %i.bb, 4
  %i.bn = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i190, 3
  %i.bo = getelementptr i8, ptr %i.al, i64 %i.bm
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bo, i64 %i.bn
  %i.bp = sub nsw i64 %i.bc, %i.ba
  %i.bq = shl nuw i64 %i.bp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i.i.i.i.i, i8 0, i64 %i.bq, i1 false), !tbaa !60
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.al, ptr %3, align 8
  store i64 %i.o, ptr %.sroa.5187.0..sroa_idx, align 8
  store ptr %i.aj, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ah, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %.047194, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.13.0..sroa_idx, align 8
  store i64 %i.ah, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.ak, ptr %.sroa.15188.0..sroa_idx, align 8
  store i64 %i.ah, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.af, ptr %4, align 8
  store i64 %i.p, ptr %.sroa.23.192..sroa_idx, align 8
  store i64 %i.o, ptr %.sroa.24.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25, i64 24, i1 false)
  store ptr %i.v, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27, i64 24, i1 false)
  store i64 %.neg, ptr %.sroa.28.192..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.29.192..sroa_idx, align 8
  store i64 %i.x, ptr %.sroa.30.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i64 %i.p, ptr %i.i, align 8, !alias.scope !1062
  store double %i.t, ptr %i.j, align 8, !tbaa !489, !alias.scope !1062
  store ptr %i.aa, ptr %i.k, align 8
  store i64 %i.p, ptr %.sroa.8172.32..sroa_idx, align 8
  store ptr %i.z, ptr %.sroa.10174.32..sroa_idx, align 8
  store i64 %i.m, ptr %.sroa.11175.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12176.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7117, i64 32, i1 false)
  store ptr %i.v, ptr %.sroa.13177.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14178.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14178, i64 24, i1 false)
  store i64 0, ptr %.sroa.15179.32..sroa_idx, align 8
  store i64 %.047194, ptr %.sroa.16180.32..sroa_idx, align 8
  store i64 %i.x, ptr %.sroa.17181.32..sroa_idx, align 8
  store i64 %.neg, ptr %.sroa.18182.32..sroa_idx, align 8
  store i64 %i.x, ptr %.sroa.20184.32..sroa_idx, align 8
  call void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14178)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  %i.br = icmp sgt i64 %i.d, %.047194
  br i1 %i.br, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit
  %indvar203 = phi i64 [ %indvar.next204, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ 0, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 4 uses
  %.0193 = phi i64 [ %i.gn, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ %i.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %i.bs = shl i64 %indvar203, 3
  %12 = sub i64 %7, %i.bs
  %13 = mul i64 %indvar203, -8                    ; 2 uses
  %14 = add i64 %7, %13
  %15 = add i64 %6, %13
  %i.bt = load ptr, ptr %0, align 8, !tbaa !1046  ; 8 uses
  %i.bu = load i64, ptr %i.h, align 8, !tbaa !1049 ; 9 uses
  %i.bv = mul nsw i64 %i.bu, %.047194
  %i.bw = getelementptr [8 x i8], ptr %i.bt, i64 %i.bv ; 2 uses
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %.0193 ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !60 ; 10 uses
  %i.bz = mul nsw i64 %i.bu, %.0193
  %i.ca = getelementptr [8 x i8], ptr %i.bt, i64 %i.bz ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %.0193
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !60
  %i.cd = fmul double %i.by, %i.cc
  store double %i.cd, ptr %i.bx, align 8, !tbaa !60
  %i.ce = xor i64 %.0193, -1
  %i.cf = add i64 %i.c, %i.ce                     ; 8 uses
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.ch = sub nsw i64 %i.bu, %i.cf                ; 4 uses
  %i.ci = getelementptr [8 x i8], ptr %i.ca, i64 %i.ch ; 10 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.ch ; 11 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ck = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cl = and i64 %i.ck, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cl, 0
  %i.cm = lshr exact i64 %i.ck, 3
  %i.cn = and i64 %i.cm, 1
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %i.cn, i64 %i.cf ; 13 uses
  %i.co = sub nsw i64 %i.cf, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.cp = sdiv i64 %i.co, 2                       ; 2 uses
  %i.cq = shl nsw i64 %i.cp, 1                    ; 2 uses
  %i.cr = add nsw i64 %i.cq, %.0.i.i.i.i.i.i.i    ; 6 uses
  %.not192 = icmp eq i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %.not192, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check217 = icmp ult i64 %.0.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check217, label %.lr.ph.i.i.i.i.i.i.i.preheader233, label %vector.memcheck210

vector.memcheck210:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.cs = mul i64 %8, %i.bu
  %i.ct = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.cu = shl i64 %i.ch, 3                        ; 2 uses
  %i.cv = getelementptr i8, ptr %i.bt, i64 %i.cs
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.ct
  %scevgep211 = getelementptr i8, ptr %i.cw, i64 %i.cu
  %i.cx = mul i64 %i.bu, %12
  %i.cy = getelementptr i8, ptr %i.bt, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.ct
  %scevgep212 = getelementptr i8, ptr %i.cz, i64 %i.cu
  %bound0213 = icmp ult ptr %i.cj, %scevgep212
  %bound1214 = icmp ult ptr %i.ci, %scevgep211
  %found.conflict215 = and i1 %bound0213, %bound1214
  br i1 %found.conflict215, label %.lr.ph.i.i.i.i.i.i.i.preheader233, label %vector.ph218

vector.ph218:                                     ; preds = %vector.memcheck210
  %n.vec219 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert220 = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat221 = shufflevector <2 x double> %broadcast.splatinsert220, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph218
  %index223 = phi i64 [ 0, %vector.ph218 ], [ %index.next228, %vector.body222 ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %index223 ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index223 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load224 = load <2 x double>, ptr %i.db, align 8, !tbaa !60, !alias.scope !1065
  %wide.load225 = load <2 x double>, ptr %i.dc, align 8, !tbaa !60, !alias.scope !1065
  %i.dd = fmul <2 x double> %broadcast.splat221, %wide.load224
  %i.de = fmul <2 x double> %broadcast.splat221, %wide.load225
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %wide.load226 = load <2 x double>, ptr %i.da, align 8, !tbaa !60, !alias.scope !1068, !noalias !1065
  %wide.load227 = load <2 x double>, ptr %i.df, align 8, !tbaa !60, !alias.scope !1068, !noalias !1065
  %i.dg = fadd <2 x double> %i.dd, %wide.load226
  %i.dh = fadd <2 x double> %i.de, %wide.load227
  store <2 x double> %i.dg, ptr %i.da, align 8, !tbaa !60, !alias.scope !1068, !noalias !1065
  store <2 x double> %i.dh, ptr %i.df, align 8, !tbaa !60, !alias.scope !1068, !noalias !1065
  %index.next228 = add nuw i64 %index223, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next228, %n.vec219
  br i1 %i.di, label %middle.block229, label %vector.body222, !llvm.loop !1070

middle.block229:                                  ; preds = %vector.body222
  %cmp.n230 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec219
  br i1 %cmp.n230, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader233

.lr.ph.i.i.i.i.i.i.i.preheader233:                ; preds = %vector.memcheck210, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block229
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck210 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec219, %middle.block229 ] ; 5 uses
  %.neg236 = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader233
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.05.i.i.i.i.i.i.i.ph
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !60
  %i.dm = fmul double %i.by, %i.dl
  %i.dn = load double, ptr %i.dj, align 8, !tbaa !60
  %i.do = fadd double %i.dm, %i.dn
  store double %i.do, ptr %i.dj, align 8, !tbaa !60
  %i.dp = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader233
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader233 ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.dq = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg236
  br i1 %i.dq, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.05.i.i.i.i.i.i.i
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !60
  %i.du = fmul double %i.by, %i.dt
  %i.dv = load double, ptr %i.dr, align 8, !tbaa !60
  %i.dw = fadd double %i.du, %i.dv
  store double %i.dw, ptr %i.dr, align 8, !tbaa !60
  %i.dx = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.dx
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !60
  %i.eb = fmul double %i.by, %i.ea
  %i.ec = load double, ptr %i.dy, align 8, !tbaa !60
  %i.ed = fadd double %i.eb, %i.ec
  store double %i.ed, ptr %i.dy, align 8, !tbaa !60
  %i.ee = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ee, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1071

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block229, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.ef = icmp sgt i64 %i.co, 1
  br i1 %i.ef, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.eg = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.eh = icmp slt i64 %i.cr, %i.cf
  br i1 %i.eh, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ei = add i64 %.0.i.i.i.i.i.i.i, %i.cq
  %i.ej = sub i64 %i.cf, %i.ei                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ej, 12
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader232, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.ek = mul i64 %10, %i.bu
  %i.el = shl i64 %i.cp, 4                        ; 2 uses
  %i.em = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.en = shl i64 %i.ch, 3                        ; 2 uses
  %i.eo = getelementptr i8, ptr %i.bt, i64 %i.ek
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.el
  %i.eq = getelementptr i8, ptr %i.ep, i64 %i.em
  %scevgep = getelementptr i8, ptr %i.eq, i64 %i.en
  %i.er = mul i64 %11, %i.bu
  %scevgep202 = getelementptr i8, ptr %i.bt, i64 %i.er
  %i.es = mul i64 %i.bu, %14
  %i.et = getelementptr i8, ptr %i.bt, i64 %i.es
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.el
  %i.ev = getelementptr i8, ptr %i.eu, i64 %i.em
  %scevgep205 = getelementptr i8, ptr %i.ev, i64 %i.en
  %i.ew = mul i64 %i.bu, %15
  %scevgep206 = getelementptr i8, ptr %i.bt, i64 %i.ew
  %bound0 = icmp ult ptr %scevgep, %scevgep206
  %bound1 = icmp ult ptr %scevgep205, %scevgep202
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader232, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ej, -4                      ; 3 uses
  %i.ex = add i64 %i.cr, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ey = add i64 %i.cr, %index                   ; 2 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.ey ; 3 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.ey ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load = load <2 x double>, ptr %i.fa, align 8, !tbaa !60, !alias.scope !1072
  %wide.load207 = load <2 x double>, ptr %i.fb, align 8, !tbaa !60, !alias.scope !1072
  %i.fc = fmul <2 x double> %broadcast.splat, %wide.load
  %i.fd = fmul <2 x double> %broadcast.splat, %wide.load207
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %wide.load208 = load <2 x double>, ptr %i.ez, align 8, !tbaa !60, !alias.scope !1075, !noalias !1072
  %wide.load209 = load <2 x double>, ptr %i.fe, align 8, !tbaa !60, !alias.scope !1075, !noalias !1072
  %i.ff = fadd <2 x double> %i.fc, %wide.load208
  %i.fg = fadd <2 x double> %i.fd, %wide.load209
  store <2 x double> %i.ff, ptr %i.ez, align 8, !tbaa !60, !alias.scope !1075, !noalias !1072
  store <2 x double> %i.fg, ptr %i.fe, align 8, !tbaa !60, !alias.scope !1075, !noalias !1072
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !1077

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ej, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader232

.lr.ph.i17.i.i.i.i.i.i.preheader232:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.ex, %middle.block ] ; 6 uses
  %i.fi = sub i64 %i.cf, %.05.i18.i.i.i.i.i.i.ph
  %.neg237 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter234 = and i64 %i.fi, 1
  %lcmp.mod235.not = icmp eq i64 %xtraiter234, 0
  br i1 %lcmp.mod235.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader232
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !60
  %i.fm = fmul double %i.by, %i.fl
  %i.fn = load double, ptr %i.fj, align 8, !tbaa !60
  %i.fo = fadd double %i.fm, %i.fn
  store double %i.fo, ptr %i.fj, align 8, !tbaa !60
  %i.fp = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader232
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader232 ], [ %i.fp, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.fq = icmp eq i64 %indvar203, %.neg237
  br i1 %i.fq, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.ge, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %.05.i18.i.i.i.i.i.i
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !60
  %i.fu = fmul double %i.by, %i.ft
  %i.fv = load double, ptr %i.fr, align 8, !tbaa !60
  %i.fw = fadd double %i.fu, %i.fv
  store double %i.fw, ptr %i.fr, align 8, !tbaa !60
  %i.fx = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.fx
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !60
  %i.gb = fmul double %i.by, %i.ga
  %i.gc = load double, ptr %i.fy, align 8, !tbaa !60
  %i.gd = fadd double %i.gb, %i.gc
  store double %i.gd, ptr %i.fy, align 8, !tbaa !60
  %i.ge = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.ge, %i.cf
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !1078

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gl, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.021.i.i.i.i.i.i
  %i.gh = load <2 x double>, ptr %i.gg, align 1, !tbaa !16
  %i.gi = fmul <2 x double> %i.eg, %i.gh
  %i.gj = load <2 x double>, ptr %i.gf, align 16, !tbaa !16
  %i.gk = fadd <2 x double> %i.gj, %i.gi
  store <2 x double> %i.gk, ptr %i.gf, align 16, !tbaa !16
  %i.gl = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.gm = icmp slt i64 %i.gl, %i.cr
  br i1 %i.gm, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1079

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %.lr.ph
  %i.gn = add nsw i64 %.0193, -1                  ; 2 uses
  %i.go = icmp sgt i64 %i.gn, %.047194
  %indvar.next204 = add i64 %indvar203, 1
  br i1 %i.go, label %.lr.ph, label %.loopexit, !llvm.loop !1080

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gp = load ptr, ptr %2, align 8, !tbaa !716
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.047194
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !60
  %i.gs = load ptr, ptr %0, align 8, !tbaa !1046
  %i.gt = load i64, ptr %i.h, align 8, !tbaa !1049
  %i.gu = mul nsw i64 %i.gt, %.047194
  %i.gv = getelementptr [8 x i8], ptr %i.gs, i64 %i.gu
  %i.gw = getelementptr [8 x i8], ptr %i.gv, i64 %.047194
  store double %i.gr, ptr %i.gw, align 8, !tbaa !60
  %i.gx = add nsw i64 %.047194, -1
  %i.gy = icmp sgt i64 %.047194, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gy, label %bb.b, label %._crit_edge, !llvm.loop !1081
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS4_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.1270", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.1278", align 8 ; 12 uses
  %5 = alloca %"class.Eigen::Transpose.1285", align 8 ; 17 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %.sroa.7117 = alloca [32 x i8], align 8         ; 2 uses
  %.sroa.14178 = alloca { %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }, align 8 ; 4 uses
  %.sroa.25 = alloca %"class.Eigen::MapBase.432", align 8 ; 4 uses
  %.sroa.27 = alloca { %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }, align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !224  ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph195, label %._crit_edge

.lr.ph195:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7117.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7117, i64 8
  %.sroa.9119.24..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.23.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.24.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.25.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.26.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.27.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.28.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.29.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.30.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8172.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10174.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11175.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12176.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13177.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 104
  %.sroa.14178.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 112
  %.sroa.15179.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.16180.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.17181.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.18182.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.20184.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %6 = shl i64 %i.c, 3                            ; 3 uses
  %7 = add i64 %6, -8                             ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph195, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph195 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047194 = phi i64 [ %i.d, %.lr.ph195 ], [ %i.gx, %.loopexit ] ; 15 uses
  %i.l = shl i64 %indvar, 3
  %8 = sub i64 %7, %i.l
  %9 = mul i64 %indvar, -8                        ; 2 uses
  %10 = add i64 %7, %9
  %11 = add i64 %6, %9
  %i.m = load i64, ptr %i.f, align 8, !tbaa !224  ; 2 uses
  %i.n = xor i64 %.047194, -1                     ; 2 uses
  %i.o = add i64 %i.c, %i.n                       ; 9 uses
  %.not201 = icmp eq i64 %i.o, 0
  br i1 %.not201, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nuw nsw i64 %.047194, 1             ; 4 uses
  %i.p = add i64 %i.m, %i.n                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14178)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27)
  %i.q = load ptr, ptr %2, align 8, !tbaa !716
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.047194
  %i.s = load double, ptr %i.r, align 8, !tbaa !60
  %i.t = fneg double %i.s
  %i.u = load ptr, ptr %1, align 8, !tbaa !653, !noalias !1082 ; 2 uses
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !807, !noalias !1082 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !56, !noalias !1082 ; 5 uses
  %i.y = mul nsw i64 %i.x, %.047194
  %i.z = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.y ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7117.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14178, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9119.24..sroa_idx, i64 24, i1 false)
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.neg
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !224, !noalias !1085
  %i.ac = sub nsw i64 %i.ab, %i.o                 ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.neg
  %i.ae = mul nsw i64 %i.ac, %i.x
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9119.24..sroa_idx, i64 24, i1 false)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !1046, !noalias !1088
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !1049, !noalias !1088 ; 5 uses
  %i.ai = mul nsw i64 %i.ah, %.047194
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.ak = sub nsw i64 %i.ah, %i.o                 ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak ; 5 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = and i64 %i.am, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ao = lshr exact i64 %i.am, 3
  %i.ap = and i64 %i.ao, 1                        ; 3 uses
  %i.aq = sub nuw nsw i64 %i.o, %i.ap             ; 4 uses
  %i.ar = lshr i64 %i.aq, 1                       ; 2 uses
  %i.as = and i64 %i.aq, 9223372036854775806      ; 3 uses
  %i.at = or disjoint i64 %i.as, %i.ap            ; 2 uses
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.au = phi i64 [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %bb.c ]
  %i.av = phi i64 [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.aw = phi i64 [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ax = phi i64 [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i191 = phi i64 [ 1, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.ay = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i191, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.ay, i1 false), !tbaa !60
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.az = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ba = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bb = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bc = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i190 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i191, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.bd = icmp samesign ugt i64 %i.bc, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.be = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i190, 3
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.al, i64 %i.be
  %i.bf = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i190, 2
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.az, i64 %i.bf)
  %i.bg = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i190, -1
  %i.bh = add nsw i64 %smax.i.i.i.i.i, %i.bg
  %i.bi = shl i64 %i.bh, 3
  %i.bj = and i64 %i.bi, -16
  %i.bk = add i64 %i.bj, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.bk, i1 false), !tbaa !16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bl = icmp samesign ult i64 %i.az, %i.o
  br i1 %i.bl, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = shl i64 %i.bb, 4
  %i.bn = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i190, 3
  %i.bo = getelementptr i8, ptr %i.al, i64 %i.bm
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bo, i64 %i.bn
  %i.bp = sub nsw i64 %i.bc, %i.ba
  %i.bq = shl nuw i64 %i.bp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i.i.i.i.i, i8 0, i64 %i.bq, i1 false), !tbaa !60
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.al, ptr %3, align 8
  store i64 %i.o, ptr %.sroa.5187.0..sroa_idx, align 8
  store ptr %i.aj, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ah, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %.047194, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.13.0..sroa_idx, align 8
  store i64 %i.ah, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.ak, ptr %.sroa.15188.0..sroa_idx, align 8
  store i64 %i.ah, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.af, ptr %4, align 8
  store i64 %i.p, ptr %.sroa.23.192..sroa_idx, align 8
  store i64 %i.o, ptr %.sroa.24.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25, i64 24, i1 false)
  store ptr %i.v, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27, i64 24, i1 false)
  store i64 %.neg, ptr %.sroa.28.192..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.29.192..sroa_idx, align 8
  store i64 %i.x, ptr %.sroa.30.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i64 %i.p, ptr %i.i, align 8, !alias.scope !1091
  store double %i.t, ptr %i.j, align 8, !tbaa !489, !alias.scope !1091
  store ptr %i.aa, ptr %i.k, align 8
  store i64 %i.p, ptr %.sroa.8172.32..sroa_idx, align 8
  store ptr %i.z, ptr %.sroa.10174.32..sroa_idx, align 8
  store i64 %i.m, ptr %.sroa.11175.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12176.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7117, i64 32, i1 false)
  store ptr %i.v, ptr %.sroa.13177.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14178.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14178, i64 24, i1 false)
  store i64 0, ptr %.sroa.15179.32..sroa_idx, align 8
  store i64 %.047194, ptr %.sroa.16180.32..sroa_idx, align 8
  store i64 %i.x, ptr %.sroa.17181.32..sroa_idx, align 8
  store i64 %.neg, ptr %.sroa.18182.32..sroa_idx, align 8
  store i64 %i.x, ptr %.sroa.20184.32..sroa_idx, align 8
  call void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14178)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  %i.br = icmp sgt i64 %i.d, %.047194
  br i1 %i.br, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit
  %indvar203 = phi i64 [ %indvar.next204, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ 0, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 4 uses
  %.0193 = phi i64 [ %i.gn, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ %i.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %i.bs = shl i64 %indvar203, 3
  %12 = sub i64 %7, %i.bs
  %13 = mul i64 %indvar203, -8                    ; 2 uses
  %14 = add i64 %7, %13
  %15 = add i64 %6, %13
  %i.bt = load ptr, ptr %0, align 8, !tbaa !1046  ; 8 uses
  %i.bu = load i64, ptr %i.h, align 8, !tbaa !1049 ; 9 uses
  %i.bv = mul nsw i64 %i.bu, %.047194
  %i.bw = getelementptr [8 x i8], ptr %i.bt, i64 %i.bv ; 2 uses
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %.0193 ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !60 ; 10 uses
  %i.bz = mul nsw i64 %i.bu, %.0193
  %i.ca = getelementptr [8 x i8], ptr %i.bt, i64 %i.bz ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %.0193
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !60
  %i.cd = fmul double %i.by, %i.cc
  store double %i.cd, ptr %i.bx, align 8, !tbaa !60
  %i.ce = xor i64 %.0193, -1
  %i.cf = add i64 %i.c, %i.ce                     ; 8 uses
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.ch = sub nsw i64 %i.bu, %i.cf                ; 4 uses
  %i.ci = getelementptr [8 x i8], ptr %i.ca, i64 %i.ch ; 10 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.ch ; 11 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ck = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cl = and i64 %i.ck, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cl, 0
  %i.cm = lshr exact i64 %i.ck, 3
  %i.cn = and i64 %i.cm, 1
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %i.cn, i64 %i.cf ; 13 uses
  %i.co = sub nsw i64 %i.cf, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.cp = sdiv i64 %i.co, 2                       ; 2 uses
  %i.cq = shl nsw i64 %i.cp, 1                    ; 2 uses
  %i.cr = add nsw i64 %i.cq, %.0.i.i.i.i.i.i.i    ; 6 uses
  %.not192 = icmp eq i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %.not192, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check217 = icmp ult i64 %.0.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check217, label %.lr.ph.i.i.i.i.i.i.i.preheader233, label %vector.memcheck210

vector.memcheck210:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.cs = mul i64 %8, %i.bu
  %i.ct = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.cu = shl i64 %i.ch, 3                        ; 2 uses
  %i.cv = getelementptr i8, ptr %i.bt, i64 %i.cs
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.ct
  %scevgep211 = getelementptr i8, ptr %i.cw, i64 %i.cu
  %i.cx = mul i64 %i.bu, %12
  %i.cy = getelementptr i8, ptr %i.bt, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.ct
  %scevgep212 = getelementptr i8, ptr %i.cz, i64 %i.cu
  %bound0213 = icmp ult ptr %i.cj, %scevgep212
  %bound1214 = icmp ult ptr %i.ci, %scevgep211
  %found.conflict215 = and i1 %bound0213, %bound1214
  br i1 %found.conflict215, label %.lr.ph.i.i.i.i.i.i.i.preheader233, label %vector.ph218

vector.ph218:                                     ; preds = %vector.memcheck210
  %n.vec219 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert220 = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat221 = shufflevector <2 x double> %broadcast.splatinsert220, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph218
  %index223 = phi i64 [ 0, %vector.ph218 ], [ %index.next228, %vector.body222 ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %index223 ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index223 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load224 = load <2 x double>, ptr %i.db, align 8, !tbaa !60, !alias.scope !1094
  %wide.load225 = load <2 x double>, ptr %i.dc, align 8, !tbaa !60, !alias.scope !1094
  %i.dd = fmul <2 x double> %broadcast.splat221, %wide.load224
  %i.de = fmul <2 x double> %broadcast.splat221, %wide.load225
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %wide.load226 = load <2 x double>, ptr %i.da, align 8, !tbaa !60, !alias.scope !1097, !noalias !1094
  %wide.load227 = load <2 x double>, ptr %i.df, align 8, !tbaa !60, !alias.scope !1097, !noalias !1094
  %i.dg = fadd <2 x double> %i.dd, %wide.load226
  %i.dh = fadd <2 x double> %i.de, %wide.load227
  store <2 x double> %i.dg, ptr %i.da, align 8, !tbaa !60, !alias.scope !1097, !noalias !1094
  store <2 x double> %i.dh, ptr %i.df, align 8, !tbaa !60, !alias.scope !1097, !noalias !1094
  %index.next228 = add nuw i64 %index223, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next228, %n.vec219
  br i1 %i.di, label %middle.block229, label %vector.body222, !llvm.loop !1099

middle.block229:                                  ; preds = %vector.body222
  %cmp.n230 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec219
  br i1 %cmp.n230, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader233

.lr.ph.i.i.i.i.i.i.i.preheader233:                ; preds = %vector.memcheck210, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block229
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck210 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec219, %middle.block229 ] ; 5 uses
  %.neg236 = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader233
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.05.i.i.i.i.i.i.i.ph
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !60
  %i.dm = fmul double %i.by, %i.dl
  %i.dn = load double, ptr %i.dj, align 8, !tbaa !60
  %i.do = fadd double %i.dm, %i.dn
  store double %i.do, ptr %i.dj, align 8, !tbaa !60
  %i.dp = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader233
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader233 ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.dq = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg236
  br i1 %i.dq, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.05.i.i.i.i.i.i.i
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !60
  %i.du = fmul double %i.by, %i.dt
  %i.dv = load double, ptr %i.dr, align 8, !tbaa !60
  %i.dw = fadd double %i.du, %i.dv
  store double %i.dw, ptr %i.dr, align 8, !tbaa !60
  %i.dx = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.dx
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !60
  %i.eb = fmul double %i.by, %i.ea
  %i.ec = load double, ptr %i.dy, align 8, !tbaa !60
  %i.ed = fadd double %i.eb, %i.ec
  store double %i.ed, ptr %i.dy, align 8, !tbaa !60
  %i.ee = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ee, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1100

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block229, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.ef = icmp sgt i64 %i.co, 1
  br i1 %i.ef, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.eg = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.eh = icmp slt i64 %i.cr, %i.cf
  br i1 %i.eh, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ei = add i64 %.0.i.i.i.i.i.i.i, %i.cq
  %i.ej = sub i64 %i.cf, %i.ei                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ej, 12
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader232, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.ek = mul i64 %10, %i.bu
  %i.el = shl i64 %i.cp, 4                        ; 2 uses
  %i.em = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.en = shl i64 %i.ch, 3                        ; 2 uses
  %i.eo = getelementptr i8, ptr %i.bt, i64 %i.ek
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.el
  %i.eq = getelementptr i8, ptr %i.ep, i64 %i.em
  %scevgep = getelementptr i8, ptr %i.eq, i64 %i.en
  %i.er = mul i64 %11, %i.bu
  %scevgep202 = getelementptr i8, ptr %i.bt, i64 %i.er
  %i.es = mul i64 %i.bu, %14
  %i.et = getelementptr i8, ptr %i.bt, i64 %i.es
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.el
  %i.ev = getelementptr i8, ptr %i.eu, i64 %i.em
  %scevgep205 = getelementptr i8, ptr %i.ev, i64 %i.en
  %i.ew = mul i64 %i.bu, %15
  %scevgep206 = getelementptr i8, ptr %i.bt, i64 %i.ew
  %bound0 = icmp ult ptr %scevgep, %scevgep206
  %bound1 = icmp ult ptr %scevgep205, %scevgep202
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader232, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ej, -4                      ; 3 uses
  %i.ex = add i64 %i.cr, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ey = add i64 %i.cr, %index                   ; 2 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.ey ; 3 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.ey ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load = load <2 x double>, ptr %i.fa, align 8, !tbaa !60, !alias.scope !1101
  %wide.load207 = load <2 x double>, ptr %i.fb, align 8, !tbaa !60, !alias.scope !1101
  %i.fc = fmul <2 x double> %broadcast.splat, %wide.load
  %i.fd = fmul <2 x double> %broadcast.splat, %wide.load207
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %wide.load208 = load <2 x double>, ptr %i.ez, align 8, !tbaa !60, !alias.scope !1104, !noalias !1101
  %wide.load209 = load <2 x double>, ptr %i.fe, align 8, !tbaa !60, !alias.scope !1104, !noalias !1101
  %i.ff = fadd <2 x double> %i.fc, %wide.load208
  %i.fg = fadd <2 x double> %i.fd, %wide.load209
  store <2 x double> %i.ff, ptr %i.ez, align 8, !tbaa !60, !alias.scope !1104, !noalias !1101
  store <2 x double> %i.fg, ptr %i.fe, align 8, !tbaa !60, !alias.scope !1104, !noalias !1101
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !1106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ej, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader232

.lr.ph.i17.i.i.i.i.i.i.preheader232:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.ex, %middle.block ] ; 6 uses
  %i.fi = sub i64 %i.cf, %.05.i18.i.i.i.i.i.i.ph
  %.neg237 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter234 = and i64 %i.fi, 1
  %lcmp.mod235.not = icmp eq i64 %xtraiter234, 0
  br i1 %lcmp.mod235.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader232
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !60
  %i.fm = fmul double %i.by, %i.fl
  %i.fn = load double, ptr %i.fj, align 8, !tbaa !60
  %i.fo = fadd double %i.fm, %i.fn
  store double %i.fo, ptr %i.fj, align 8, !tbaa !60
  %i.fp = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader232
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader232 ], [ %i.fp, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.fq = icmp eq i64 %indvar203, %.neg237
  br i1 %i.fq, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.ge, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %.05.i18.i.i.i.i.i.i
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !60
  %i.fu = fmul double %i.by, %i.ft
  %i.fv = load double, ptr %i.fr, align 8, !tbaa !60
  %i.fw = fadd double %i.fu, %i.fv
  store double %i.fw, ptr %i.fr, align 8, !tbaa !60
  %i.fx = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.fx
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !60
  %i.gb = fmul double %i.by, %i.ga
  %i.gc = load double, ptr %i.fy, align 8, !tbaa !60
  %i.gd = fadd double %i.gb, %i.gc
  store double %i.gd, ptr %i.fy, align 8, !tbaa !60
  %i.ge = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.ge, %i.cf
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !1107

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gl, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.021.i.i.i.i.i.i
  %i.gh = load <2 x double>, ptr %i.gg, align 1, !tbaa !16
  %i.gi = fmul <2 x double> %i.eg, %i.gh
  %i.gj = load <2 x double>, ptr %i.gf, align 16, !tbaa !16
  %i.gk = fadd <2 x double> %i.gj, %i.gi
  store <2 x double> %i.gk, ptr %i.gf, align 16, !tbaa !16
  %i.gl = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.gm = icmp slt i64 %i.gl, %i.cr
  br i1 %i.gm, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1079

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %.lr.ph
  %i.gn = add nsw i64 %.0193, -1                  ; 2 uses
  %i.go = icmp sgt i64 %i.gn, %.047194
  %indvar.next204 = add i64 %indvar203, 1
  br i1 %i.go, label %.lr.ph, label %.loopexit, !llvm.loop !1108

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gp = load ptr, ptr %2, align 8, !tbaa !716
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.047194
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !60
  %i.gs = load ptr, ptr %0, align 8, !tbaa !1046
  %i.gt = load i64, ptr %i.h, align 8, !tbaa !1049
  %i.gu = mul nsw i64 %i.gt, %.047194
  %i.gv = getelementptr [8 x i8], ptr %i.gs, i64 %i.gu
  %i.gw = getelementptr [8 x i8], ptr %i.gv, i64 %.047194
  store double %i.gr, ptr %i.gw, align 8, !tbaa !60
  %i.gx = add nsw i64 %.047194, -1
  %i.gy = icmp sgt i64 %.047194, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gy, label %bb.b, label %._crit_edge, !llvm.loop !1109
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %.sroa.063.0.copyload = load ptr, ptr %0, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.564.0.copyload = load i64, ptr %.sroa.564.0..sroa_idx, align 8
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.665.0.copyload = load i64, ptr %.sroa.665.0..sroa_idx, align 8
  %.sroa.767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.767.0.copyload = load ptr, ptr %.sroa.767.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.053.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.756.0.copyload = load i64, ptr %.sroa.756.0..sroa_idx, align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.e = load double, ptr %3, align 8, !tbaa !60
  %i.f = fmul double %i.d, %i.e
  store double %i.f, ptr %i.a, align 8, !tbaa !60
  %i.g = icmp ugt i64 %.sroa.756.0.copyload, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !58
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.053.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.i = shl nuw i64 %.sroa.756.0.copyload, 3     ; 2 uses
  %i.j = icmp samesign ult i64 %.sroa.756.0.copyload, 16385
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %i.i, 15
  %i.l = alloca i8, i64 %i.k, align 16            ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.i) #33 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !58
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

bb.g:                                             ; preds = %bb.d, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.e
  %i.p = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.sroa.053.0.copyload, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %i.r = icmp samesign ugt i64 %.sroa.756.0.copyload, 16384 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.767.0.copyload, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !56
  %i.u = load ptr, ptr %2, align 8, !tbaa !1110
  invoke void @_ZN5Eigen8internal32triangular_matrix_vector_productIlLi6EdLb0EdLb0ELi1ELi0EE3runEllPKdlS4_lPdlRS3_(i64 noundef %.sroa.665.0.copyload, i64 noundef %.sroa.564.0.copyload, ptr noundef %.sroa.063.0.copyload, i64 noundef %i.t, ptr noundef nonnull %i.q, i64 noundef 1, ptr noundef %i.u, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br i1 %i.r, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit25

bb.i:                                             ; preds = %bb.g
  br i1 %i.r, label %bb.j, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.p) #29
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void

bb.k:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_5BlockINSC_INS5_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSC_IKSD_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSM_:bb.a
  %i.il = load <2 x double>, ptr %i.ik, align 1, !tbaa !16
  %i.im = getelementptr [8 x i8], ptr %i.hy, i64 %i.ij
  %i.in = load double, ptr %i.im, align 8, !tbaa !60
  %i.io = insertelement <2 x double> poison, double %i.in, i64 0
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iq = fmul <2 x double> %i.il, %i.ip
  %i.ir = fadd <2 x double> %i.ii, %i.iq          ; 3 uses
  %i.is = add nuw nsw i64 %.014.i.i.i.i, 2        ; 2 uses
  %niter106.next.1 = add nuw nsw i64 %niter106, 2 ; 2 uses
  %niter106.ncmp.1 = icmp eq i64 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !1920

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod102.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod102.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i ], [ %i.ir, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ]
  %.014.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.is, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod104 = trunc i64 %i.hs to i1
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %.idx.i.i.i.i.i.epil = shl nuw nsw i64 %.014.i.i.i.i.epil.init, 4
  %i.it = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.idx.i.i.i.i.i.epil
  %i.iu = load <2 x double>, ptr %i.it, align 1, !tbaa !16
  %i.iv = getelementptr [8 x i8], ptr %i.hy, i64 %.014.i.i.i.i.epil.init
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !60
  %i.ix = insertelement <2 x double> poison, double %i.iw, i64 0
  %i.iy = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x double> %i.iu, %i.iy
  %i.ja = fadd <2 x double> %.epil.init, %i.iz
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit: ; preds = %.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, %bb.c
  %.0.i.i.i = phi <2 x double> [ zeroinitializer, %bb.c ], [ %i.ir, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ], [ %i.ja, %.epil.preheader ]
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %.037
  store <2 x double> %.0.i.i.i, ptr %i.jb, align 16, !tbaa !16
  %i.jc = add nsw i64 %.037, 2                    ; 2 uses
  %i.jd = icmp slt i64 %i.jc, %i.n
  br i1 %i.jd, label %bb.c, label %._crit_edge, !llvm.loop !1921
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS4_IKS6_Lin1ELi1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERS10_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1922, !nonnull !233, !align !646 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1712
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !224  ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS4_IKS6_Lin1ELi1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS10_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !224  ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !233, !align !1653 ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS4_IKS6_Lin1ELi1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS10_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %0, align 8, !nonnull !233, !align !646
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1719 ; 4 uses
  %i.q = load ptr, ptr %i.n, align 16, !tbaa !1667, !noalias !1924 ; 3 uses
  %i.r = shl i64 %i.g, 4
  %i.s = shl i64 %i.j, 3                          ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.u, i64 -16  ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.m, i64 %i.s
  %i.v = shl i64 %i.g, 3
  %scevgep66 = getelementptr i8, ptr %i.q, i64 %i.v
  %min.iters.check = icmp ult i64 %i.j, 4
  %bound0 = icmp ult ptr %i.p, %scevgep65
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %i.p, %scevgep66
  %bound168 = icmp ult ptr %i.q, %scevgep
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ar, %._crit_edge.i ] ; 3 uses
  %.idx.i.i.i.i = shl i64 %.0810.i, 4
  %i.w = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0810.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !60, !alias.scope !1927
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x double>, ptr %i.aa, align 16, !tbaa !60, !alias.scope !1930
  %wide.load70 = load <2 x double>, ptr %i.ab, align 16, !tbaa !60, !alias.scope !1930
  %i.ac = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ad = fmul <2 x double> %wide.load70, %broadcast.splat
  %i.ae = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.z, align 8, !tbaa !60, !alias.scope !1932, !noalias !1934
  %wide.load72 = load <2 x double>, ptr %i.ae, align 8, !tbaa !60, !alias.scope !1932, !noalias !1934
  %i.af = fsub <2 x double> %wide.load71, %i.ac
  %i.ag = fsub <2 x double> %wide.load72, %i.ad
  store <2 x double> %i.af, ptr %i.z, align 8, !tbaa !60, !alias.scope !1932, !noalias !1934
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !60, !alias.scope !1932, !noalias !1934
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1935

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr [8 x i8], ptr %i.w, i64 %.09.i.ph ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i.ph
  %i.ak = load double, ptr %i.aj, align 16, !tbaa !60
  %i.al = load double, ptr %i.x, align 8, !tbaa !60
  %i.am = fmul double %i.ak, %i.al
  %i.an = load double, ptr %i.ai, align 8, !tbaa !60
  %i.ao = fsub double %i.an, %i.am
  store double %i.ao, ptr %i.ai, align 8, !tbaa !60
  %i.ap = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp eq i64 %i.j, %.neg
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ar = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS4_IKS6_Lin1ELi1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS10_.exit, label %.preheader.i, !llvm.loop !1936

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bh, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %i.w, i64 %.09.i ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !60
  %i.av = load double, ptr %i.x, align 8, !tbaa !60
  %i.aw = fmul double %i.au, %i.av
  %i.ax = load double, ptr %i.as, align 8, !tbaa !60
  %i.ay = fsub double %i.ax, %i.aw
  store double %i.ay, ptr %i.as, align 8, !tbaa !60
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.w, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !60
  %i.bd = load double, ptr %i.x, align 8, !tbaa !60
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !60
  %i.bg = fsub double %i.bf, %i.be
  store double %i.bg, ptr %i.ba, align 8, !tbaa !60
  %i.bh = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bh, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1937

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !224 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !224 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS4_IKS6_Lin1ELi1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS10_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.bn = lshr exact i64 %i.d, 3
  %i.bo = and i64 %i.bn, 1
  %i.bp = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bj)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.br = shl i64 %i.bj, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.ek, %._crit_edge ] ; 9 uses
  %.03552 = phi i64 [ %i.bp, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.bs = shl i64 %.03453, 4
  %i.bt = shl i64 %.03453, 3
  %i.bu = sub i64 %i.bj, %.03552                  ; 3 uses
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %i.bw = add nsw i64 %i.bv, %.03552              ; 6 uses
  %i.bx = icmp sgt i64 %.03552, 0
  br i1 %i.bx, label %.preheader45.loopexit, label %.preheader45

.preheader45.loopexit:                            ; preds = %bb.c
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !1938, !nonnull !233, !align !1653 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !1667, !noalias !1939
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.03453
  %i.cc = load ptr, ptr %0, align 8, !tbaa !1942, !nonnull !233, !align !646
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1719
  %.idx.i.i.i = shl i64 %.03453, 4
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.idx.i.i.i ; 2 uses
  %i.cf = load double, ptr %i.by, align 16, !tbaa !60
  %i.cg = load double, ptr %i.cb, align 8, !tbaa !60
  %i.ch = fmul double %i.cf, %i.cg
  %i.ci = load double, ptr %i.ce, align 8, !tbaa !60
  %i.cj = fsub double %i.ci, %i.ch
  store double %i.cj, ptr %i.ce, align 8, !tbaa !60
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.loopexit, %bb.c
  %i.ck = icmp sgt i64 %i.bu, 1
  br i1 %i.ck, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = shl i64 %.03453, 4
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.cl = icmp slt i64 %i.bw, %i.bj
  br i1 %i.cl, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.cm = load ptr, ptr %0, align 8, !tbaa !1942, !nonnull !233, !align !646
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1719 ; 3 uses
  %.idx.i.i.i38 = shl i64 %.03453, 4              ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38 ; 2 uses
  %i.cp = load ptr, ptr %i.bq, align 8, !tbaa !1938, !nonnull !233, !align !1653 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 16, !tbaa !1667, !noalias !1943 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.03453 ; 3 uses
  %i.ct = add i64 %.03552, %i.bv
  %i.cu = sub i64 %i.bj, %i.ct                    ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.cu, 6
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph51
  %i.cv = shl i64 %i.bu, 3
  %i.cw = and i64 %i.cv, -16                      ; 2 uses
  %i.cx = shl i64 %.03552, 3                      ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %scevgep74 = getelementptr i8, ptr %i.cz, i64 %i.cx ; 2 uses
  %i.da = getelementptr i8, ptr %i.cn, i64 %i.br
  %scevgep75 = getelementptr i8, ptr %i.da, i64 %i.bs ; 2 uses
  %i.db = getelementptr i8, ptr %i.cp, i64 %i.cw
  %scevgep76 = getelementptr i8, ptr %i.db, i64 %i.cx
  %scevgep77 = getelementptr i8, ptr %i.cp, i64 %i.br
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.bt
  %scevgep78 = getelementptr i8, ptr %i.dc, i64 8
  %bound079 = icmp ult ptr %scevgep74, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep74, %scevgep78
  %bound183 = icmp ult ptr %i.cs, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck73
  %n.vec89 = and i64 %i.cu, -4                    ; 3 uses
  %i.dd = add i64 %i.bw, %n.vec89
  %i.de = load double, ptr %i.cs, align 8, !tbaa !60, !alias.scope !1946
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.df = add i64 %i.bw, %index91                 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.co, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dh, align 8, !tbaa !60, !alias.scope !1949
  %wide.load93 = load <2 x double>, ptr %i.di, align 8, !tbaa !60, !alias.scope !1949
  %i.dj = fmul <2 x double> %wide.load92, %broadcast.splat95
  %i.dk = fmul <2 x double> %wide.load93, %broadcast.splat95
  %i.dl = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %wide.load96 = load <2 x double>, ptr %i.dg, align 8, !tbaa !60, !alias.scope !1951, !noalias !1953
  %wide.load97 = load <2 x double>, ptr %i.dl, align 8, !tbaa !60, !alias.scope !1951, !noalias !1953
  %i.dm = fsub <2 x double> %wide.load96, %i.dj
  %i.dn = fsub <2 x double> %wide.load97, %i.dk
  store <2 x double> %i.dm, ptr %i.dg, align 8, !tbaa !60, !alias.scope !1951, !noalias !1953
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !60, !alias.scope !1951, !noalias !1953
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.do, label %middle.block99, label %vector.body90, !llvm.loop !1954

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.cu, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bw, %vector.memcheck73 ], [ %i.bw, %.lr.ph51 ], [ %i.dd, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eh, %bb.d ] ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !1942, !nonnull !233, !align !646
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1719
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i37
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.03248 ; 2 uses
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !1938, !nonnull !233, !align !1653 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !1955
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.03248
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !16
  %i.dz = load ptr, ptr %i.dv, align 16, !tbaa !1721
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.03453
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !60
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dy, %i.ed
  %i.ef = load <2 x double>, ptr %i.ds, align 16, !tbaa !16
  %i.eg = fsub <2 x double> %i.ef, %i.ee
  store <2 x double> %i.eg, ptr %i.ds, align 16, !tbaa !16
  %i.eh = add nsw i64 %.03248, 2                  ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.bw
  br i1 %i.ei, label %bb.d, label %.preheader, !llvm.loop !1956

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ej = srem i64 %.03552, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ej)
  %i.ek = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.ek, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS4_IKS6_Lin1ELi1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS10_.exit, label %bb.c, !llvm.loop !1957

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.es, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.el = getelementptr [8 x i8], ptr %i.co, i64 %.050 ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.050
  %i.en = load double, ptr %i.em, align 8, !tbaa !60
  %i.eo = load double, ptr %i.cs, align 8, !tbaa !60
  %i.ep = fmul double %i.en, %i.eo
  %i.eq = load double, ptr %i.el, align 8, !tbaa !60
  %i.er = fsub double %i.eq, %i.ep
  store double %i.er, ptr %i.el, align 8, !tbaa !60
  %i.es = add nsw i64 %.050, 1                    ; 2 uses
  %i.et = icmp slt i64 %i.es, %i.bj
  br i1 %i.et, label %scalar.ph86, label %._crit_edge, !llvm.loop !1958

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS4_IKS6_Lin1ELi1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS10_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_IKS6_Lin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1959, !nonnull !233, !align !646 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1712
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !224  ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_IKS6_Lin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !224  ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !233, !align !1653 ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_IKS6_Lin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %0, align 8, !nonnull !233, !align !646
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1719 ; 4 uses
  %i.q = load ptr, ptr %i.n, align 16, !tbaa !1961, !noalias !1962 ; 3 uses
  %i.r = shl i64 %i.g, 4
  %i.s = shl i64 %i.j, 3                          ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.u, i64 -16  ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.m, i64 %i.s
  %i.v = shl i64 %i.g, 3
  %scevgep66 = getelementptr i8, ptr %i.q, i64 %i.v
  %min.iters.check = icmp ult i64 %i.j, 4
  %bound0 = icmp ult ptr %i.p, %scevgep65
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %i.p, %scevgep66
  %bound168 = icmp ult ptr %i.q, %scevgep
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ar, %._crit_edge.i ] ; 3 uses
  %.idx.i.i.i.i = shl i64 %.0810.i, 4
  %i.w = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0810.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !60, !alias.scope !1965
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x double>, ptr %i.aa, align 16, !tbaa !60, !alias.scope !1968
  %wide.load70 = load <2 x double>, ptr %i.ab, align 16, !tbaa !60, !alias.scope !1968
  %i.ac = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ad = fmul <2 x double> %wide.load70, %broadcast.splat
  %i.ae = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.z, align 8, !tbaa !60, !alias.scope !1970, !noalias !1972
  %wide.load72 = load <2 x double>, ptr %i.ae, align 8, !tbaa !60, !alias.scope !1970, !noalias !1972
  %i.af = fsub <2 x double> %wide.load71, %i.ac
  %i.ag = fsub <2 x double> %wide.load72, %i.ad
  store <2 x double> %i.af, ptr %i.z, align 8, !tbaa !60, !alias.scope !1970, !noalias !1972
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !60, !alias.scope !1970, !noalias !1972
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1973

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr [8 x i8], ptr %i.w, i64 %.09.i.ph ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i.ph
  %i.ak = load double, ptr %i.aj, align 16, !tbaa !60
  %i.al = load double, ptr %i.x, align 8, !tbaa !60
  %i.am = fmul double %i.ak, %i.al
  %i.an = load double, ptr %i.ai, align 8, !tbaa !60
  %i.ao = fsub double %i.an, %i.am
  store double %i.ao, ptr %i.ai, align 8, !tbaa !60
  %i.ap = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp eq i64 %i.j, %.neg
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ar = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_IKS6_Lin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %.preheader.i, !llvm.loop !1974

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bh, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %i.w, i64 %.09.i ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !60
  %i.av = load double, ptr %i.x, align 8, !tbaa !60
  %i.aw = fmul double %i.au, %i.av
  %i.ax = load double, ptr %i.as, align 8, !tbaa !60
  %i.ay = fsub double %i.ax, %i.aw
  store double %i.ay, ptr %i.as, align 8, !tbaa !60
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.w, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !60
  %i.bd = load double, ptr %i.x, align 8, !tbaa !60
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !60
  %i.bg = fsub double %i.bf, %i.be
  store double %i.bg, ptr %i.ba, align 8, !tbaa !60
  %i.bh = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bh, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1975

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !224 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !224 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_IKS6_Lin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.bn = lshr exact i64 %i.d, 3
  %i.bo = and i64 %i.bn, 1
  %i.bp = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bj)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.br = shl i64 %i.bj, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.ek, %._crit_edge ] ; 9 uses
  %.03552 = phi i64 [ %i.bp, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.bs = shl i64 %.03453, 4
  %i.bt = shl i64 %.03453, 3
  %i.bu = sub i64 %i.bj, %.03552                  ; 3 uses
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %i.bw = add nsw i64 %i.bv, %.03552              ; 6 uses
  %i.bx = icmp sgt i64 %.03552, 0
  br i1 %i.bx, label %.preheader45.loopexit, label %.preheader45

.preheader45.loopexit:                            ; preds = %bb.c
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !1976, !nonnull !233, !align !1653 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !1961, !noalias !1977
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.03453
  %i.cc = load ptr, ptr %0, align 8, !tbaa !1980, !nonnull !233, !align !646
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1719
  %.idx.i.i.i = shl i64 %.03453, 4
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.idx.i.i.i ; 2 uses
  %i.cf = load double, ptr %i.by, align 16, !tbaa !60
  %i.cg = load double, ptr %i.cb, align 8, !tbaa !60
  %i.ch = fmul double %i.cf, %i.cg
  %i.ci = load double, ptr %i.ce, align 8, !tbaa !60
  %i.cj = fsub double %i.ci, %i.ch
  store double %i.cj, ptr %i.ce, align 8, !tbaa !60
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.loopexit, %bb.c
  %i.ck = icmp sgt i64 %i.bu, 1
  br i1 %i.ck, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = shl i64 %.03453, 4
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.cl = icmp slt i64 %i.bw, %i.bj
  br i1 %i.cl, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.cm = load ptr, ptr %0, align 8, !tbaa !1980, !nonnull !233, !align !646
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1719 ; 3 uses
  %.idx.i.i.i38 = shl i64 %.03453, 4              ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38 ; 2 uses
  %i.cp = load ptr, ptr %i.bq, align 8, !tbaa !1976, !nonnull !233, !align !1653 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 16, !tbaa !1961, !noalias !1981 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.03453 ; 3 uses
  %i.ct = add i64 %.03552, %i.bv
  %i.cu = sub i64 %i.bj, %i.ct                    ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.cu, 6
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph51
  %i.cv = shl i64 %i.bu, 3
  %i.cw = and i64 %i.cv, -16                      ; 2 uses
  %i.cx = shl i64 %.03552, 3                      ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %scevgep74 = getelementptr i8, ptr %i.cz, i64 %i.cx ; 2 uses
  %i.da = getelementptr i8, ptr %i.cn, i64 %i.br
  %scevgep75 = getelementptr i8, ptr %i.da, i64 %i.bs ; 2 uses
  %i.db = getelementptr i8, ptr %i.cp, i64 %i.cw
  %scevgep76 = getelementptr i8, ptr %i.db, i64 %i.cx
  %scevgep77 = getelementptr i8, ptr %i.cp, i64 %i.br
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.bt
  %scevgep78 = getelementptr i8, ptr %i.dc, i64 8
  %bound079 = icmp ult ptr %scevgep74, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep74, %scevgep78
  %bound183 = icmp ult ptr %i.cs, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck73
  %n.vec89 = and i64 %i.cu, -4                    ; 3 uses
  %i.dd = add i64 %i.bw, %n.vec89
  %i.de = load double, ptr %i.cs, align 8, !tbaa !60, !alias.scope !1984
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.df = add i64 %i.bw, %index91                 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.co, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dh, align 8, !tbaa !60, !alias.scope !1987
  %wide.load93 = load <2 x double>, ptr %i.di, align 8, !tbaa !60, !alias.scope !1987
  %i.dj = fmul <2 x double> %wide.load92, %broadcast.splat95
  %i.dk = fmul <2 x double> %wide.load93, %broadcast.splat95
  %i.dl = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %wide.load96 = load <2 x double>, ptr %i.dg, align 8, !tbaa !60, !alias.scope !1989, !noalias !1991
  %wide.load97 = load <2 x double>, ptr %i.dl, align 8, !tbaa !60, !alias.scope !1989, !noalias !1991
  %i.dm = fsub <2 x double> %wide.load96, %i.dj
  %i.dn = fsub <2 x double> %wide.load97, %i.dk
  store <2 x double> %i.dm, ptr %i.dg, align 8, !tbaa !60, !alias.scope !1989, !noalias !1991
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !60, !alias.scope !1989, !noalias !1991
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.do, label %middle.block99, label %vector.body90, !llvm.loop !1992

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.cu, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bw, %vector.memcheck73 ], [ %i.bw, %.lr.ph51 ], [ %i.dd, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eh, %bb.d ] ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !1980, !nonnull !233, !align !646
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1719
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i37
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.03248 ; 2 uses
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !1976, !nonnull !233, !align !1653 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
  %i.dw = load ptr, ptr %i.du, align 16, !tbaa !1955
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.03248
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !16
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !1846
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.03453
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !60
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dy, %i.ed
  %i.ef = load <2 x double>, ptr %i.ds, align 16, !tbaa !16
  %i.eg = fsub <2 x double> %i.ef, %i.ee
  store <2 x double> %i.eg, ptr %i.ds, align 16, !tbaa !16
  %i.eh = add nsw i64 %.03248, 2                  ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.bw
  br i1 %i.ei, label %bb.d, label %.preheader, !llvm.loop !1993

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ej = srem i64 %.03552, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ej)
  %i.ek = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.ek, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_IKS6_Lin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %bb.c, !llvm.loop !1994

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.es, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.el = getelementptr [8 x i8], ptr %i.co, i64 %.050 ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.050
  %i.en = load double, ptr %i.em, align 8, !tbaa !60
  %i.eo = load double, ptr %i.cs, align 8, !tbaa !60
  %i.ep = fmul double %i.en, %i.eo
  %i.eq = load double, ptr %i.el, align 8, !tbaa !60
  %i.er = fsub double %i.eq, %i.ep
  store double %i.er, ptr %i.el, align 8, !tbaa !60
  %i.es = add nsw i64 %.050, 1                    ; 2 uses
  %i.et = icmp slt i64 %i.es, %i.bj
  br i1 %i.et, label %scalar.ph86, label %._crit_edge, !llvm.loop !1995

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS4_IKS6_Lin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEES5_NS_11VectorBlockIKNS3_IdLi1ELi1ELi0ELi1ELi1EEELin1EEEEEvRT_RKT0_RKT1_b(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %4 = alloca %"class.Eigen::internal::gemm_blocking_space.3201", align 16 ; 10 uses
  %5 = alloca %"class.Eigen::Matrix.3259", align 8 ; 6 uses
  %6 = alloca %"class.Eigen::Matrix.3259", align 8 ; 9 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %7 = alloca %"class.Eigen::internal::gemm_blocking_space.3201", align 16 ; 10 uses
  %8 = alloca %"class.Eigen::Matrix.1105", align 8 ; 16 uses
  %9 = alloca %"class.Eigen::Matrix.3014", align 16 ; 25 uses
  %i.d = ptrtoaddr ptr %9 to i64                  ; 2 uses
  %10 = alloca %"class.Eigen::Product.3048", align 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !224  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread, label %bb.b

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv i64 9223372036854775807, %i.f
  %i.k = icmp sgt i64 %i.f, %i.j
  br i1 %i.k, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = mul nsw i64 %i.f, %i.f                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = icmp samesign ugt i64 %i.l, 2305843009213693951
  br i1 %i.o, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.c
  %i.p = shl nuw i64 %i.l, 3
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #33 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEES5_NS_11VectorBlockIKNS3_IdLi1ELi1ELi0ELi1ELi1EEELin1EEEEEvRT_RKT0_RKT1_b:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store ptr %8, ptr %10, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %9, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELi2EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS0_IdLin1ELin1ELi1ELin1ELin1EEEEELj1EEENS0_IdLin1ELin1ELi0ELi2ELi2EEELi0EEEEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.noexc31 unwind label %bb.t

.noexc31:                                         ; preds = %bb.r
  %i.cv = load ptr, ptr %5, align 8, !tbaa !55    ; 9 uses
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !56 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !57 ; 3 uses
  %i.db = load i64, ptr %i.y, align 16, !tbaa !1996
  %.not.i.i.i.i.i.i.i.i21 = icmp eq i64 %i.db, %i.cy
  %i.dc = load i64, ptr %i.z, align 8
  %.not8.i.i.i.i.i.i.i.i22 = icmp eq i64 %i.dc, %i.da
  %or.cond.i.i.i.i.i.i.i.i23 = select i1 %.not.i.i.i.i.i.i.i.i21, i1 %.not8.i.i.i.i.i.i.i.i22, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i23, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELi2ELi2EEENS2_IdLin1ELin1ELi0ELin1ELi2EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24, label %bb.s

bb.s:                                             ; preds = %.noexc31
  store i64 %i.cy, ptr %i.y, align 16, !tbaa !1996
  store i64 %i.da, ptr %i.z, align 8, !tbaa !1998
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELi2ELi2EEENS2_IdLin1ELin1ELi0ELin1ELi2EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELi2ELi2EEENS2_IdLin1ELin1ELi0ELin1ELi2EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24: ; preds = %bb.s, %.noexc31
  %i.dd = mul nsw i64 %i.da, %i.cy                ; 7 uses
  %i.de = sdiv i64 %i.dd, 2
  %i.df = shl nsw i64 %i.de, 1                    ; 6 uses
  %i.dg = icmp sgt i64 %i.dd, 1
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.i.i.i29, label %._crit_edge.i.i.i.i.i.i.i.i25

._crit_edge.i.i.i.i.i.i.i.i25:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i29, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELi2ELi2EEENS2_IdLin1ELin1ELi0ELin1ELi2EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24
  %i.dh = icmp slt i64 %i.df, %i.dd
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader, label %.loopexit63

.lr.ph.i.i.i.i.i.i.i.i.i26.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i25
  %i.di = sub i64 %i.dd, %i.df                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.di, 8
  %i.dj = sub i64 %i.cw, %i.d
  %diff.check = icmp ugt i64 %i.dj, -32
  %or.cond97 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond97, label %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader
  %n.vec = and i64 %i.di, -4                      ; 3 uses
  %i.dk = add i64 %i.df, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = add i64 %i.df, %index                   ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %9, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.dl ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load = load <2 x double>, ptr %i.dn, align 8, !tbaa !60
  %wide.load82 = load <2 x double>, ptr %i.do, align 8, !tbaa !60
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <2 x double> %wide.load, ptr %i.dm, align 16, !tbaa !60
  store <2 x double> %wide.load82, ptr %i.dp, align 16, !tbaa !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !2003

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %.loopexit63, label %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99

.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i27.ph = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader ], [ %i.dk, %middle.block ] ; 4 uses
  %i.dr = sub i64 %i.dd, %.05.i.i.i.i.i.i.i.i.i27.ph
  %xtraiter = and i64 %i.dr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i.i.i.i.i26.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol
  %.05.i.i.i.i.i.i.i.i.i27.prol = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol ], [ %.05.i.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99 ]
  %i.ds = getelementptr inbounds [8 x i8], ptr %9, i64 %.05.i.i.i.i.i.i.i.i.i27.prol
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %.05.i.i.i.i.i.i.i.i.i27.prol
  %i.du = load double, ptr %i.dt, align 8, !tbaa !60
  store double %i.du, ptr %i.ds, align 8, !tbaa !60
  %i.dv = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol, !llvm.loop !2004

.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99
  %.05.i.i.i.i.i.i.i.i.i27.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99 ], [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol ]
  %i.dw = sub i64 %.05.i.i.i.i.i.i.i.i.i27.ph, %i.dd
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %.loopexit63, label %.lr.ph.i.i.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i.i.i26:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i26
  %.05.i.i.i.i.i.i.i.i.i27 = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i.i.i.i.i26 ], [ %.05.i.i.i.i.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %9, i64 %.05.i.i.i.i.i.i.i.i.i27
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %.05.i.i.i.i.i.i.i.i.i27
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !60
  store double %i.ea, ptr %i.dy, align 8, !tbaa !60
  %i.eb = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 1 ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %9, i64 %i.eb
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.eb
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !60
  store double %i.ee, ptr %i.ec, align 8, !tbaa !60
  %i.ef = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 2 ; 2 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %9, i64 %i.ef
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ef
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !60
  store double %i.ei, ptr %i.eg, align 8, !tbaa !60
  %i.ej = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 3 ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %9, i64 %i.ej
  %i.el = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ej
  %i.em = load double, ptr %i.el, align 8, !tbaa !60
  store double %i.em, ptr %i.ek, align 8, !tbaa !60
  %i.en = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i28.3 = icmp eq i64 %i.en, %i.dd
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i28.3, label %.loopexit63, label %.lr.ph.i.i.i.i.i.i.i.i.i26, !llvm.loop !2005

.lr.ph.i.i.i.i.i.i.i.i29:                         ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELi2ELi2EEENS2_IdLin1ELin1ELi0ELin1ELi2EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i.i.i.i29
  %.011.i.i.i.i.i.i.i.i30 = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i.i.i.i29 ], [ 0, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELi2ELi2EEENS2_IdLin1ELin1ELi0ELin1ELi2EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.011.i.i.i.i.i.i.i.i30
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.011.i.i.i.i.i.i.i.i30
  %i.eq = load <2 x double>, ptr %i.ep, align 16, !tbaa !16
  store <2 x double> %i.eq, ptr %i.eo, align 16, !tbaa !16
  %i.er = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i30, 2 ; 2 uses
  %i.es = icmp slt i64 %i.er, %i.df
  br i1 %i.es, label %.lr.ph.i.i.i.i.i.i.i.i29, label %._crit_edge.i.i.i.i.i.i.i.i25, !llvm.loop !2002

.loopexit63:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i26, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i25
  call void @free(ptr noundef %i.cv) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %.body

bb.u:                                             ; preds = %.loopexit63, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store double -1.000000e+00, ptr %i.b, align 8, !tbaa !60
  %i.eu = load i64, ptr %i.z, align 8, !tbaa !1998
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 2, ptr %i.ev, align 16, !tbaa !1130
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 2, ptr %i.ew, align 8, !tbaa !1132
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 2, ptr %i.ex, align 16, !tbaa !1133
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ey, ptr %4, align 16, !tbaa !1137
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !1138
  %i.fb = load i64, ptr %i.y, align 16, !tbaa !1996
  %i.fc = load ptr, ptr %0, align 8, !tbaa !1645
  invoke void @_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi5ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE(i64 noundef %.sroa.659.0.copyload, i64 noundef %i.eu, i64 noundef %.sroa.speculated40.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %.sroa.058.0.copyload, i64 noundef 2, ptr noundef nonnull align 16 dereferenceable(48) %9, i64 noundef %i.fb, ptr noundef nonnull %i.fc, i64 noundef 1, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.fd = load ptr, ptr %8, align 8, !tbaa !1046
  call void @free(ptr noundef %i.fd) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  ret void

bb.w:                                             ; preds = %bb.u
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.w, %bb.t, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.fe, %bb.w ], [ %i.ct, %bb.q ], [ %i.et, %bb.t ], [ %i.av, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.x

bb.x:                                             ; preds = %.body, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.x, %bb.f ]
  %i.ff = load ptr, ptr %8, align 8, !tbaa !1046
  call void @free(ptr noundef %i.ff) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IdLi1ELi1ELi0ELi1ELi1EEELin1EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.1270", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.3126", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Transpose.3133", align 8 ; 15 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %.sroa.7114 = alloca [64 x i8], align 8         ; 2 uses
  %.sroa.23 = alloca %"class.Eigen::internal::BlockImpl_dense.2212", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !224  ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph184, label %._crit_edge

.lr.ph184:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7114.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7114, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.21.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.23.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.24.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.25.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.26.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8163.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10165.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12167.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13168.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.14169.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.15170.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.16171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.18173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %6 = shl i64 %i.c, 3                            ; 3 uses
  %7 = add i64 %6, -8                             ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph184, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph184 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047183 = phi i64 [ %i.d, %.lr.ph184 ], [ %i.gr, %.loopexit ] ; 15 uses
  %i.k = shl i64 %indvar, 3
  %8 = sub i64 %7, %i.k
  %9 = mul i64 %indvar, -8                        ; 2 uses
  %10 = add i64 %7, %9
  %11 = add i64 %6, %9
  %i.l = load i64, ptr %i.f, align 8, !tbaa !224  ; 2 uses
  %i.m = xor i64 %.047183, -1                     ; 2 uses
  %i.n = add i64 %i.c, %i.m                       ; 9 uses
  %.not190 = icmp eq i64 %i.n, 0
  br i1 %.not190, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nuw nsw i64 %.047183, 1             ; 4 uses
  %i.o = add i64 %i.l, %i.m                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %i.p = load ptr, ptr %2, align 8, !tbaa !1870
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.047183
  %i.r = load double, ptr %i.q, align 8, !tbaa !60
  %i.s = fneg double %i.r
  %i.t = load ptr, ptr %1, align 8, !tbaa !1645, !noalias !2006 ; 2 uses
  %.idx.i.i.i.i = shl nsw i64 %.047183, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7114.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.neg
  %i.w = load i64, ptr %i.b, align 8, !tbaa !224, !noalias !2009
  %i.x = sub nsw i64 %i.w, %i.n                   ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.neg
  %.idx.i.i.i.i50 = shl nsw i64 %i.x, 4
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %.idx.i.i.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1046, !noalias !2012
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !1049, !noalias !2012 ; 5 uses
  %i.ac = mul nsw i64 %i.ab, %.047183
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ac ; 2 uses
  %i.ae = sub nsw i64 %i.ab, %i.n                 ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae ; 5 uses
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = and i64 %i.ag, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ai = lshr exact i64 %i.ag, 3
  %i.aj = and i64 %i.ai, 1                        ; 3 uses
  %i.ak = sub nuw nsw i64 %i.n, %i.aj             ; 4 uses
  %i.al = lshr i64 %i.ak, 1                       ; 2 uses
  %i.am = and i64 %i.ak, 9223372036854775806      ; 3 uses
  %i.an = or disjoint i64 %i.am, %i.aj            ; 2 uses
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ao = phi i64 [ %i.an, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %bb.c ]
  %i.ap = phi i64 [ %i.am, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.aq = phi i64 [ %i.al, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ar = phi i64 [ %i.ak, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i180 = phi i64 [ 1, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.as = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i180, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.as, i1 false), !tbaa !60
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.at = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.an, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.au = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.am, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.av = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.al, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aw = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ak, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i180, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ax = icmp samesign ugt i64 %i.aw, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, 3
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.af, i64 %i.ay
  %i.az = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, 2
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.at, i64 %i.az)
  %i.ba = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, -1
  %i.bb = add nsw i64 %smax.i.i.i.i.i, %i.ba
  %i.bc = shl i64 %i.bb, 3
  %i.bd = and i64 %i.bc, -16
  %i.be = add i64 %i.bd, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.be, i1 false), !tbaa !16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bf = icmp samesign ult i64 %i.at, %i.n
  br i1 %i.bf, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bg = shl i64 %i.av, 4
  %i.bh = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, 3
  %i.bi = getelementptr i8, ptr %i.af, i64 %i.bg
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bi, i64 %i.bh
  %i.bj = sub nsw i64 %i.aw, %i.au
  %i.bk = shl nuw i64 %i.bj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i.i.i.i.i, i8 0, i64 %i.bk, i1 false), !tbaa !60
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.af, ptr %3, align 8
  store i64 %i.n, ptr %.sroa.5176.0..sroa_idx, align 8
  store ptr %i.ad, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ab, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %.047183, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.13.0..sroa_idx, align 8
  store i64 %i.ab, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.ae, ptr %.sroa.15177.0..sroa_idx, align 8
  store i64 %i.ab, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.z, ptr %4, align 8
  store i64 %i.o, ptr %.sroa.21.192..sroa_idx, align 8
  store i64 %i.n, ptr %.sroa.22.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, i64 56, i1 false)
  store i64 %.neg, ptr %.sroa.24.192..sroa_idx, align 8
  store i64 %i.x, ptr %.sroa.25.192..sroa_idx, align 8
  store i64 2, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i64 %i.o, ptr %i.h, align 8, !alias.scope !2015
  store double %i.s, ptr %i.i, align 8, !tbaa !489, !alias.scope !2015
  store ptr %i.v, ptr %i.j, align 8
  store i64 %i.o, ptr %.sroa.8163.32..sroa_idx, align 8
  store ptr %i.u, ptr %.sroa.10165.32..sroa_idx, align 8
  store i64 %i.l, ptr %.sroa.11166.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12167.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7114, i64 64, i1 false)
  store i64 0, ptr %.sroa.13168.32..sroa_idx, align 8
  store i64 %.047183, ptr %.sroa.14169.32..sroa_idx, align 8
  store i64 2, ptr %.sroa.15170.32..sroa_idx, align 8
  store i64 %.neg, ptr %.sroa.16171.32..sroa_idx, align 8
  store i64 2, ptr %.sroa.18173.32..sroa_idx, align 8
  call void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  %i.bl = icmp sgt i64 %i.d, %.047183
  br i1 %i.bl, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit
  %indvar192 = phi i64 [ %indvar.next193, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ 0, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 4 uses
  %.0182 = phi i64 [ %i.gh, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ %i.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %i.bm = shl i64 %indvar192, 3
  %12 = sub i64 %7, %i.bm
  %13 = mul i64 %indvar192, -8                    ; 2 uses
  %14 = add i64 %7, %13
  %15 = add i64 %6, %13
  %i.bn = load ptr, ptr %0, align 8, !tbaa !1046  ; 8 uses
  %i.bo = load i64, ptr %i.g, align 8, !tbaa !1049 ; 9 uses
  %i.bp = mul nsw i64 %i.bo, %.047183
  %i.bq = getelementptr [8 x i8], ptr %i.bn, i64 %i.bp ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %.0182 ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !60 ; 10 uses
  %i.bt = mul nsw i64 %i.bo, %.0182
  %i.bu = getelementptr [8 x i8], ptr %i.bn, i64 %i.bt ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %.0182
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !60
  %i.bx = fmul double %i.bs, %i.bw
  store double %i.bx, ptr %i.br, align 8, !tbaa !60
  %i.by = xor i64 %.0182, -1
  %i.bz = add i64 %i.c, %i.by                     ; 8 uses
  %i.ca = icmp sgt i64 %i.bz, 0
  br i1 %i.ca, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.cb = sub nsw i64 %i.bo, %i.bz                ; 4 uses
  %i.cc = getelementptr [8 x i8], ptr %i.bu, i64 %i.cb ; 10 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.cb ; 11 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.ce = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cf = and i64 %i.ce, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cf, 0
  %i.cg = lshr exact i64 %i.ce, 3
  %i.ch = and i64 %i.cg, 1
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %i.ch, i64 %i.bz ; 13 uses
  %i.ci = sub nsw i64 %i.bz, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.cj = sdiv i64 %i.ci, 2                       ; 2 uses
  %i.ck = shl nsw i64 %i.cj, 1                    ; 2 uses
  %i.cl = add nsw i64 %i.ck, %.0.i.i.i.i.i.i.i    ; 6 uses
  %.not181 = icmp eq i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %.not181, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check206 = icmp ult i64 %.0.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check206, label %.lr.ph.i.i.i.i.i.i.i.preheader222, label %vector.memcheck199

vector.memcheck199:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.cm = mul i64 %8, %i.bo
  %i.cn = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.co = shl i64 %i.cb, 3                        ; 2 uses
  %i.cp = getelementptr i8, ptr %i.bn, i64 %i.cm
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cn
  %scevgep200 = getelementptr i8, ptr %i.cq, i64 %i.co
  %i.cr = mul i64 %i.bo, %12
  %i.cs = getelementptr i8, ptr %i.bn, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cn
  %scevgep201 = getelementptr i8, ptr %i.ct, i64 %i.co
  %bound0202 = icmp ult ptr %i.cd, %scevgep201
  %bound1203 = icmp ult ptr %i.cc, %scevgep200
  %found.conflict204 = and i1 %bound0202, %bound1203
  br i1 %found.conflict204, label %.lr.ph.i.i.i.i.i.i.i.preheader222, label %vector.ph207

vector.ph207:                                     ; preds = %vector.memcheck199
  %n.vec208 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert209 = insertelement <2 x double> poison, double %i.bs, i64 0
  %broadcast.splat210 = shufflevector <2 x double> %broadcast.splatinsert209, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph207
  %index212 = phi i64 [ 0, %vector.ph207 ], [ %index.next217, %vector.body211 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index212 ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %index212 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load213 = load <2 x double>, ptr %i.cv, align 8, !tbaa !60, !alias.scope !2018
  %wide.load214 = load <2 x double>, ptr %i.cw, align 8, !tbaa !60, !alias.scope !2018
  %i.cx = fmul <2 x double> %broadcast.splat210, %wide.load213
  %i.cy = fmul <2 x double> %broadcast.splat210, %wide.load214
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %wide.load215 = load <2 x double>, ptr %i.cu, align 8, !tbaa !60, !alias.scope !2021, !noalias !2018
  %wide.load216 = load <2 x double>, ptr %i.cz, align 8, !tbaa !60, !alias.scope !2021, !noalias !2018
  %i.da = fadd <2 x double> %i.cx, %wide.load215
  %i.db = fadd <2 x double> %i.cy, %wide.load216
  store <2 x double> %i.da, ptr %i.cu, align 8, !tbaa !60, !alias.scope !2021, !noalias !2018
  store <2 x double> %i.db, ptr %i.cz, align 8, !tbaa !60, !alias.scope !2021, !noalias !2018
  %index.next217 = add nuw i64 %index212, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.dc, label %middle.block218, label %vector.body211, !llvm.loop !2023

middle.block218:                                  ; preds = %vector.body211
  %cmp.n219 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec208
  br i1 %cmp.n219, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader222

.lr.ph.i.i.i.i.i.i.i.preheader222:                ; preds = %vector.memcheck199, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block218
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck199 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec208, %middle.block218 ] ; 5 uses
  %.neg225 = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader222
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.05.i.i.i.i.i.i.i.ph
  %i.df = load double, ptr %i.de, align 8, !tbaa !60
  %i.dg = fmul double %i.bs, %i.df
  %i.dh = load double, ptr %i.dd, align 8, !tbaa !60
  %i.di = fadd double %i.dg, %i.dh
  store double %i.di, ptr %i.dd, align 8, !tbaa !60
  %i.dj = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader222
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader222 ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.dk = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg225
  br i1 %i.dk, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.dy, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.05.i.i.i.i.i.i.i
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !60
  %i.do = fmul double %i.bs, %i.dn
  %i.dp = load double, ptr %i.dl, align 8, !tbaa !60
  %i.dq = fadd double %i.do, %i.dp
  store double %i.dq, ptr %i.dl, align 8, !tbaa !60
  %i.dr = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.dr
  %i.du = load double, ptr %i.dt, align 8, !tbaa !60
  %i.dv = fmul double %i.bs, %i.du
  %i.dw = load double, ptr %i.ds, align 8, !tbaa !60
  %i.dx = fadd double %i.dv, %i.dw
  store double %i.dx, ptr %i.ds, align 8, !tbaa !60
  %i.dy = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.dy, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2024

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block218, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.dz = icmp sgt i64 %i.ci, 1
  br i1 %i.dz, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.ea = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.eb = icmp slt i64 %i.cl, %i.bz
  br i1 %i.eb, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ec = add i64 %.0.i.i.i.i.i.i.i, %i.ck
  %i.ed = sub i64 %i.bz, %i.ec                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ed, 12
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader221, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.ee = mul i64 %10, %i.bo
  %i.ef = shl i64 %i.cj, 4                        ; 2 uses
  %i.eg = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.eh = shl i64 %i.cb, 3                        ; 2 uses
  %i.ei = getelementptr i8, ptr %i.bn, i64 %i.ee
  %i.ej = getelementptr i8, ptr %i.ei, i64 %i.ef
  %i.ek = getelementptr i8, ptr %i.ej, i64 %i.eg
  %scevgep = getelementptr i8, ptr %i.ek, i64 %i.eh
  %i.el = mul i64 %11, %i.bo
  %scevgep191 = getelementptr i8, ptr %i.bn, i64 %i.el
  %i.em = mul i64 %i.bo, %14
  %i.en = getelementptr i8, ptr %i.bn, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 %i.ef
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.eg
  %scevgep194 = getelementptr i8, ptr %i.ep, i64 %i.eh
  %i.eq = mul i64 %i.bo, %15
  %scevgep195 = getelementptr i8, ptr %i.bn, i64 %i.eq
  %bound0 = icmp ult ptr %scevgep, %scevgep195
  %bound1 = icmp ult ptr %scevgep194, %scevgep191
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader221, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ed, -4                      ; 3 uses
  %i.er = add i64 %i.cl, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bs, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.es = add i64 %i.cl, %index                   ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.es ; 3 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.es ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load = load <2 x double>, ptr %i.eu, align 8, !tbaa !60, !alias.scope !2025
  %wide.load196 = load <2 x double>, ptr %i.ev, align 8, !tbaa !60, !alias.scope !2025
  %i.ew = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ex = fmul <2 x double> %broadcast.splat, %wide.load196
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %wide.load197 = load <2 x double>, ptr %i.et, align 8, !tbaa !60, !alias.scope !2028, !noalias !2025
  %wide.load198 = load <2 x double>, ptr %i.ey, align 8, !tbaa !60, !alias.scope !2028, !noalias !2025
  %i.ez = fadd <2 x double> %i.ew, %wide.load197
  %i.fa = fadd <2 x double> %i.ex, %wide.load198
  store <2 x double> %i.ez, ptr %i.et, align 8, !tbaa !60, !alias.scope !2028, !noalias !2025
  store <2 x double> %i.fa, ptr %i.ey, align 8, !tbaa !60, !alias.scope !2028, !noalias !2025
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !2030

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader221

.lr.ph.i17.i.i.i.i.i.i.preheader221:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.er, %middle.block ] ; 6 uses
  %i.fc = sub i64 %i.bz, %.05.i18.i.i.i.i.i.i.ph
  %.neg226 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter223 = and i64 %i.fc, 1
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader221
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !60
  %i.fg = fmul double %i.bs, %i.ff
  %i.fh = load double, ptr %i.fd, align 8, !tbaa !60
  %i.fi = fadd double %i.fg, %i.fh
  store double %i.fi, ptr %i.fd, align 8, !tbaa !60
  %i.fj = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader221
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader221 ], [ %i.fj, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.fk = icmp eq i64 %indvar192, %.neg226
  br i1 %i.fk, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.fy, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %.05.i18.i.i.i.i.i.i
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !60
  %i.fo = fmul double %i.bs, %i.fn
  %i.fp = load double, ptr %i.fl, align 8, !tbaa !60
  %i.fq = fadd double %i.fo, %i.fp
  store double %i.fq, ptr %i.fl, align 8, !tbaa !60
  %i.fr = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.fr
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !60
  %i.fv = fmul double %i.bs, %i.fu
  %i.fw = load double, ptr %i.fs, align 8, !tbaa !60
  %i.fx = fadd double %i.fv, %i.fw
  store double %i.fx, ptr %i.fs, align 8, !tbaa !60
  %i.fy = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.fy, %i.bz
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !2031

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gf, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.021.i.i.i.i.i.i
  %i.gb = load <2 x double>, ptr %i.ga, align 1, !tbaa !16
  %i.gc = fmul <2 x double> %i.ea, %i.gb
  %i.gd = load <2 x double>, ptr %i.fz, align 16, !tbaa !16
  %i.ge = fadd <2 x double> %i.gd, %i.gc
  store <2 x double> %i.ge, ptr %i.fz, align 16, !tbaa !16
  %i.gf = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.gg = icmp slt i64 %i.gf, %i.cl
  br i1 %i.gg, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1079

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %.lr.ph
  %i.gh = add nsw i64 %.0182, -1                  ; 2 uses
  %i.gi = icmp sgt i64 %i.gh, %.047183
  %indvar.next193 = add i64 %indvar192, 1
  br i1 %i.gi, label %.lr.ph, label %.loopexit, !llvm.loop !2032

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gj = load ptr, ptr %2, align 8, !tbaa !1870
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %.047183
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !60
  %i.gm = load ptr, ptr %0, align 8, !tbaa !1046
  %i.gn = load i64, ptr %i.g, align 8, !tbaa !1049
  %i.go = mul nsw i64 %i.gn, %.047183
  %i.gp = getelementptr [8 x i8], ptr %i.gm, i64 %i.go
  %i.gq = getelementptr [8 x i8], ptr %i.gp, i64 %.047183
  store double %i.gl, ptr %i.gq, align 8, !tbaa !60
  %i.gr = add nsw i64 %.047183, -1
  %i.gs = icmp sgt i64 %.047183, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gs, label %bb.b, label %._crit_edge, !llvm.loop !2033
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS4_IKNS2_IdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.1270", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.3126", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Transpose.3133", align 8 ; 15 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %.sroa.7114 = alloca [64 x i8], align 8         ; 2 uses
  %.sroa.23 = alloca %"class.Eigen::internal::BlockImpl_dense.2212", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !224  ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph184, label %._crit_edge

.lr.ph184:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7114.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7114, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.21.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.23.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.24.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.25.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.26.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8163.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10165.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12167.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13168.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.14169.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.15170.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.16171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.18173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %6 = shl i64 %i.c, 3                            ; 3 uses
  %7 = add i64 %6, -8                             ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph184, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph184 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047183 = phi i64 [ %i.d, %.lr.ph184 ], [ %i.gr, %.loopexit ] ; 15 uses
  %i.k = shl i64 %indvar, 3
  %8 = sub i64 %7, %i.k
  %9 = mul i64 %indvar, -8                        ; 2 uses
  %10 = add i64 %7, %9
  %11 = add i64 %6, %9
  %i.l = load i64, ptr %i.f, align 8, !tbaa !224  ; 2 uses
  %i.m = xor i64 %.047183, -1                     ; 2 uses
  %i.n = add i64 %i.c, %i.m                       ; 9 uses
  %.not190 = icmp eq i64 %i.n, 0
  br i1 %.not190, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nuw nsw i64 %.047183, 1             ; 4 uses
  %i.o = add i64 %i.l, %i.m                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %i.p = load ptr, ptr %2, align 8, !tbaa !1870
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.047183
  %i.r = load double, ptr %i.q, align 8, !tbaa !60
  %i.s = fneg double %i.r
  %i.t = load ptr, ptr %1, align 8, !tbaa !1645, !noalias !2034 ; 2 uses
  %.idx.i.i.i.i = shl nsw i64 %.047183, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7114.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.neg
  %i.w = load i64, ptr %i.b, align 8, !tbaa !224, !noalias !2037
  %i.x = sub nsw i64 %i.w, %i.n                   ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.neg
  %.idx.i.i.i.i50 = shl nsw i64 %i.x, 4
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %.idx.i.i.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1046, !noalias !2040
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !1049, !noalias !2040 ; 5 uses
  %i.ac = mul nsw i64 %i.ab, %.047183
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ac ; 2 uses
  %i.ae = sub nsw i64 %i.ab, %i.n                 ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae ; 5 uses
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = and i64 %i.ag, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ai = lshr exact i64 %i.ag, 3
  %i.aj = and i64 %i.ai, 1                        ; 3 uses
  %i.ak = sub nuw nsw i64 %i.n, %i.aj             ; 4 uses
  %i.al = lshr i64 %i.ak, 1                       ; 2 uses
  %i.am = and i64 %i.ak, 9223372036854775806      ; 3 uses
  %i.an = or disjoint i64 %i.am, %i.aj            ; 2 uses
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ao = phi i64 [ %i.an, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %bb.c ]
  %i.ap = phi i64 [ %i.am, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.aq = phi i64 [ %i.al, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ar = phi i64 [ %i.ak, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i180 = phi i64 [ 1, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.as = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i180, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.as, i1 false), !tbaa !60
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.at = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.an, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.au = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.am, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.av = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.al, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aw = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ak, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i180, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ax = icmp samesign ugt i64 %i.aw, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, 3
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.af, i64 %i.ay
  %i.az = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, 2
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.at, i64 %i.az)
  %i.ba = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, -1
  %i.bb = add nsw i64 %smax.i.i.i.i.i, %i.ba
  %i.bc = shl i64 %i.bb, 3
  %i.bd = and i64 %i.bc, -16
  %i.be = add i64 %i.bd, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.be, i1 false), !tbaa !16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bf = icmp samesign ult i64 %i.at, %i.n
  br i1 %i.bf, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bg = shl i64 %i.av, 4
  %i.bh = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, 3
  %i.bi = getelementptr i8, ptr %i.af, i64 %i.bg
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bi, i64 %i.bh
  %i.bj = sub nsw i64 %i.aw, %i.au
  %i.bk = shl nuw i64 %i.bj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i.i.i.i.i, i8 0, i64 %i.bk, i1 false), !tbaa !60
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.af, ptr %3, align 8
  store i64 %i.n, ptr %.sroa.5176.0..sroa_idx, align 8
  store ptr %i.ad, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ab, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %.047183, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.13.0..sroa_idx, align 8
  store i64 %i.ab, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.ae, ptr %.sroa.15177.0..sroa_idx, align 8
  store i64 %i.ab, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.z, ptr %4, align 8
  store i64 %i.o, ptr %.sroa.21.192..sroa_idx, align 8
  store i64 %i.n, ptr %.sroa.22.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, i64 56, i1 false)
  store i64 %.neg, ptr %.sroa.24.192..sroa_idx, align 8
  store i64 %i.x, ptr %.sroa.25.192..sroa_idx, align 8
  store i64 2, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i64 %i.o, ptr %i.h, align 8, !alias.scope !2043
  store double %i.s, ptr %i.i, align 8, !tbaa !489, !alias.scope !2043
  store ptr %i.v, ptr %i.j, align 8
  store i64 %i.o, ptr %.sroa.8163.32..sroa_idx, align 8
  store ptr %i.u, ptr %.sroa.10165.32..sroa_idx, align 8
  store i64 %i.l, ptr %.sroa.11166.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12167.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7114, i64 64, i1 false)
  store i64 0, ptr %.sroa.13168.32..sroa_idx, align 8
  store i64 %.047183, ptr %.sroa.14169.32..sroa_idx, align 8
  store i64 2, ptr %.sroa.15170.32..sroa_idx, align 8
  store i64 %.neg, ptr %.sroa.16171.32..sroa_idx, align 8
  store i64 2, ptr %.sroa.18173.32..sroa_idx, align 8
  call void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  %i.bl = icmp sgt i64 %i.d, %.047183
  br i1 %i.bl, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit
  %indvar192 = phi i64 [ %indvar.next193, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ 0, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 4 uses
  %.0182 = phi i64 [ %i.gh, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ %i.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %i.bm = shl i64 %indvar192, 3
  %12 = sub i64 %7, %i.bm
  %13 = mul i64 %indvar192, -8                    ; 2 uses
  %14 = add i64 %7, %13
  %15 = add i64 %6, %13
  %i.bn = load ptr, ptr %0, align 8, !tbaa !1046  ; 8 uses
  %i.bo = load i64, ptr %i.g, align 8, !tbaa !1049 ; 9 uses
  %i.bp = mul nsw i64 %i.bo, %.047183
  %i.bq = getelementptr [8 x i8], ptr %i.bn, i64 %i.bp ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %.0182 ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !60 ; 10 uses
  %i.bt = mul nsw i64 %i.bo, %.0182
  %i.bu = getelementptr [8 x i8], ptr %i.bn, i64 %i.bt ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %.0182
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !60
  %i.bx = fmul double %i.bs, %i.bw
  store double %i.bx, ptr %i.br, align 8, !tbaa !60
  %i.by = xor i64 %.0182, -1
  %i.bz = add i64 %i.c, %i.by                     ; 8 uses
  %i.ca = icmp sgt i64 %i.bz, 0
  br i1 %i.ca, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.cb = sub nsw i64 %i.bo, %i.bz                ; 4 uses
  %i.cc = getelementptr [8 x i8], ptr %i.bu, i64 %i.cb ; 10 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.cb ; 11 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.ce = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cf = and i64 %i.ce, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cf, 0
  %i.cg = lshr exact i64 %i.ce, 3
  %i.ch = and i64 %i.cg, 1
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %i.ch, i64 %i.bz ; 13 uses
  %i.ci = sub nsw i64 %i.bz, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.cj = sdiv i64 %i.ci, 2                       ; 2 uses
  %i.ck = shl nsw i64 %i.cj, 1                    ; 2 uses
  %i.cl = add nsw i64 %i.ck, %.0.i.i.i.i.i.i.i    ; 6 uses
  %.not181 = icmp eq i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %.not181, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check206 = icmp ult i64 %.0.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check206, label %.lr.ph.i.i.i.i.i.i.i.preheader222, label %vector.memcheck199

vector.memcheck199:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.cm = mul i64 %8, %i.bo
  %i.cn = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.co = shl i64 %i.cb, 3                        ; 2 uses
  %i.cp = getelementptr i8, ptr %i.bn, i64 %i.cm
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cn
  %scevgep200 = getelementptr i8, ptr %i.cq, i64 %i.co
  %i.cr = mul i64 %i.bo, %12
  %i.cs = getelementptr i8, ptr %i.bn, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cn
  %scevgep201 = getelementptr i8, ptr %i.ct, i64 %i.co
  %bound0202 = icmp ult ptr %i.cd, %scevgep201
  %bound1203 = icmp ult ptr %i.cc, %scevgep200
  %found.conflict204 = and i1 %bound0202, %bound1203
  br i1 %found.conflict204, label %.lr.ph.i.i.i.i.i.i.i.preheader222, label %vector.ph207

vector.ph207:                                     ; preds = %vector.memcheck199
  %n.vec208 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert209 = insertelement <2 x double> poison, double %i.bs, i64 0
  %broadcast.splat210 = shufflevector <2 x double> %broadcast.splatinsert209, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph207
  %index212 = phi i64 [ 0, %vector.ph207 ], [ %index.next217, %vector.body211 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index212 ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %index212 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load213 = load <2 x double>, ptr %i.cv, align 8, !tbaa !60, !alias.scope !2046
  %wide.load214 = load <2 x double>, ptr %i.cw, align 8, !tbaa !60, !alias.scope !2046
  %i.cx = fmul <2 x double> %broadcast.splat210, %wide.load213
  %i.cy = fmul <2 x double> %broadcast.splat210, %wide.load214
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %wide.load215 = load <2 x double>, ptr %i.cu, align 8, !tbaa !60, !alias.scope !2049, !noalias !2046
  %wide.load216 = load <2 x double>, ptr %i.cz, align 8, !tbaa !60, !alias.scope !2049, !noalias !2046
  %i.da = fadd <2 x double> %i.cx, %wide.load215
  %i.db = fadd <2 x double> %i.cy, %wide.load216
  store <2 x double> %i.da, ptr %i.cu, align 8, !tbaa !60, !alias.scope !2049, !noalias !2046
  store <2 x double> %i.db, ptr %i.cz, align 8, !tbaa !60, !alias.scope !2049, !noalias !2046
  %index.next217 = add nuw i64 %index212, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.dc, label %middle.block218, label %vector.body211, !llvm.loop !2051

middle.block218:                                  ; preds = %vector.body211
  %cmp.n219 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec208
  br i1 %cmp.n219, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader222

.lr.ph.i.i.i.i.i.i.i.preheader222:                ; preds = %vector.memcheck199, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block218
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck199 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec208, %middle.block218 ] ; 5 uses
  %.neg225 = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader222
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.05.i.i.i.i.i.i.i.ph
  %i.df = load double, ptr %i.de, align 8, !tbaa !60
  %i.dg = fmul double %i.bs, %i.df
  %i.dh = load double, ptr %i.dd, align 8, !tbaa !60
  %i.di = fadd double %i.dg, %i.dh
  store double %i.di, ptr %i.dd, align 8, !tbaa !60
  %i.dj = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader222
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader222 ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.dk = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg225
  br i1 %i.dk, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.dy, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.05.i.i.i.i.i.i.i
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !60
  %i.do = fmul double %i.bs, %i.dn
  %i.dp = load double, ptr %i.dl, align 8, !tbaa !60
  %i.dq = fadd double %i.do, %i.dp
  store double %i.dq, ptr %i.dl, align 8, !tbaa !60
  %i.dr = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.dr
  %i.du = load double, ptr %i.dt, align 8, !tbaa !60
  %i.dv = fmul double %i.bs, %i.du
  %i.dw = load double, ptr %i.ds, align 8, !tbaa !60
  %i.dx = fadd double %i.dv, %i.dw
  store double %i.dx, ptr %i.ds, align 8, !tbaa !60
  %i.dy = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.dy, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2052

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block218, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.dz = icmp sgt i64 %i.ci, 1
  br i1 %i.dz, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.ea = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.eb = icmp slt i64 %i.cl, %i.bz
  br i1 %i.eb, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ec = add i64 %.0.i.i.i.i.i.i.i, %i.ck
  %i.ed = sub i64 %i.bz, %i.ec                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ed, 12
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader221, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.ee = mul i64 %10, %i.bo
  %i.ef = shl i64 %i.cj, 4                        ; 2 uses
  %i.eg = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.eh = shl i64 %i.cb, 3                        ; 2 uses
  %i.ei = getelementptr i8, ptr %i.bn, i64 %i.ee
  %i.ej = getelementptr i8, ptr %i.ei, i64 %i.ef
  %i.ek = getelementptr i8, ptr %i.ej, i64 %i.eg
  %scevgep = getelementptr i8, ptr %i.ek, i64 %i.eh
  %i.el = mul i64 %11, %i.bo
  %scevgep191 = getelementptr i8, ptr %i.bn, i64 %i.el
  %i.em = mul i64 %i.bo, %14
  %i.en = getelementptr i8, ptr %i.bn, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 %i.ef
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.eg
  %scevgep194 = getelementptr i8, ptr %i.ep, i64 %i.eh
  %i.eq = mul i64 %i.bo, %15
  %scevgep195 = getelementptr i8, ptr %i.bn, i64 %i.eq
  %bound0 = icmp ult ptr %scevgep, %scevgep195
  %bound1 = icmp ult ptr %scevgep194, %scevgep191
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader221, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ed, -4                      ; 3 uses
  %i.er = add i64 %i.cl, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bs, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.es = add i64 %i.cl, %index                   ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.es ; 3 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.es ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load = load <2 x double>, ptr %i.eu, align 8, !tbaa !60, !alias.scope !2053
  %wide.load196 = load <2 x double>, ptr %i.ev, align 8, !tbaa !60, !alias.scope !2053
  %i.ew = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ex = fmul <2 x double> %broadcast.splat, %wide.load196
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %wide.load197 = load <2 x double>, ptr %i.et, align 8, !tbaa !60, !alias.scope !2056, !noalias !2053
  %wide.load198 = load <2 x double>, ptr %i.ey, align 8, !tbaa !60, !alias.scope !2056, !noalias !2053
  %i.ez = fadd <2 x double> %i.ew, %wide.load197
  %i.fa = fadd <2 x double> %i.ex, %wide.load198
  store <2 x double> %i.ez, ptr %i.et, align 8, !tbaa !60, !alias.scope !2056, !noalias !2053
  store <2 x double> %i.fa, ptr %i.ey, align 8, !tbaa !60, !alias.scope !2056, !noalias !2053
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !2058

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader221

.lr.ph.i17.i.i.i.i.i.i.preheader221:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.er, %middle.block ] ; 6 uses
  %i.fc = sub i64 %i.bz, %.05.i18.i.i.i.i.i.i.ph
  %.neg226 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter223 = and i64 %i.fc, 1
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader221
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !60
  %i.fg = fmul double %i.bs, %i.ff
  %i.fh = load double, ptr %i.fd, align 8, !tbaa !60
  %i.fi = fadd double %i.fg, %i.fh
  store double %i.fi, ptr %i.fd, align 8, !tbaa !60
  %i.fj = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader221
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader221 ], [ %i.fj, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.fk = icmp eq i64 %indvar192, %.neg226
  br i1 %i.fk, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.fy, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %.05.i18.i.i.i.i.i.i
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !60
  %i.fo = fmul double %i.bs, %i.fn
  %i.fp = load double, ptr %i.fl, align 8, !tbaa !60
  %i.fq = fadd double %i.fo, %i.fp
  store double %i.fq, ptr %i.fl, align 8, !tbaa !60
  %i.fr = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.fr
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !60
  %i.fv = fmul double %i.bs, %i.fu
  %i.fw = load double, ptr %i.fs, align 8, !tbaa !60
  %i.fx = fadd double %i.fv, %i.fw
  store double %i.fx, ptr %i.fs, align 8, !tbaa !60
  %i.fy = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.fy, %i.bz
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !2059

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gf, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.021.i.i.i.i.i.i
  %i.gb = load <2 x double>, ptr %i.ga, align 1, !tbaa !16
  %i.gc = fmul <2 x double> %i.ea, %i.gb
  %i.gd = load <2 x double>, ptr %i.fz, align 16, !tbaa !16
  %i.ge = fadd <2 x double> %i.gd, %i.gc
  store <2 x double> %i.ge, ptr %i.fz, align 16, !tbaa !16
  %i.gf = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.gg = icmp slt i64 %i.gf, %i.cl
  br i1 %i.gg, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1079

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %.lr.ph
  %i.gh = add nsw i64 %.0182, -1                  ; 2 uses
  %i.gi = icmp sgt i64 %i.gh, %.047183
  %indvar.next193 = add i64 %indvar192, 1
  br i1 %i.gi, label %.lr.ph, label %.loopexit, !llvm.loop !2060

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gj = load ptr, ptr %2, align 8, !tbaa !1870
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %.047183
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !60
  %i.gm = load ptr, ptr %0, align 8, !tbaa !1046
  %i.gn = load i64, ptr %i.g, align 8, !tbaa !1049
  %i.go = mul nsw i64 %i.gn, %.047183
  %i.gp = getelementptr [8 x i8], ptr %i.gm, i64 %i.go
  %i.gq = getelementptr [8 x i8], ptr %i.gp, i64 %.047183
  store double %i.gl, ptr %i.gq, align 8, !tbaa !60
  %i.gr = add nsw i64 %.047183, -1
  %i.gs = icmp sgt i64 %.047183, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gs, label %bb.b, label %._crit_edge, !llvm.loop !2061
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELi2EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %.sroa.063.0.copyload = load ptr, ptr %0, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.564.0.copyload = load i64, ptr %.sroa.564.0..sroa_idx, align 8
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.665.0.copyload = load i64, ptr %.sroa.665.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.053.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.756.0.copyload = load i64, ptr %.sroa.756.0..sroa_idx, align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.e = load double, ptr %3, align 8, !tbaa !60
  %i.f = fmul double %i.d, %i.e
  store double %i.f, ptr %i.a, align 8, !tbaa !60
  %i.g = icmp ugt i64 %.sroa.756.0.copyload, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !58
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.053.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.i = shl nuw i64 %.sroa.756.0.copyload, 3     ; 2 uses
  %i.j = icmp samesign ult i64 %.sroa.756.0.copyload, 16385
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %i.i, 15
  %i.l = alloca i8, i64 %i.k, align 16            ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.i) #33 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !58
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

bb.g:                                             ; preds = %bb.d, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.e
  %i.p = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.sroa.053.0.copyload, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %i.r = icmp samesign ugt i64 %.sroa.756.0.copyload, 16384 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !1110
  invoke void @_ZN5Eigen8internal32triangular_matrix_vector_productIlLi6EdLb0EdLb0ELi1ELi0EE3runEllPKdlS4_lPdlRS3_(i64 noundef %.sroa.665.0.copyload, i64 noundef %.sroa.564.0.copyload, ptr noundef %.sroa.063.0.copyload, i64 noundef 2, ptr noundef nonnull %i.q, i64 noundef 1, ptr noundef %i.s, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br i1 %i.r, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit25

bb.i:                                             ; preds = %bb.g
  br i1 %i.r, label %bb.j, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.p) #29
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void

bb.k:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.p) #29
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit25

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit25: ; preds = %bb.h, %bb.k
end_hunk_2
