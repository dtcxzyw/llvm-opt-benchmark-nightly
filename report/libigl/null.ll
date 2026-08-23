Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/null?download=true
inline.NumInlined: 15362
inline.NumDeleted: 7247
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 181
begin_hunk_0_@_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEES5_NS_11VectorBlockIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1EEEEEvRT_RKT0_RKT1_b:bb.a
  %6 = alloca %"class.Eigen::Matrix.936", align 8 ; 15 uses
  %.sroa.029 = alloca %"class.Eigen::internal::BlockImpl_dense.264", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 12 uses
  %8 = alloca %"class.Eigen::Product.949", align 8 ; 6 uses
  %9 = alloca %"class.Eigen::Product.967", align 8 ; 6 uses
  %10 = alloca %"class.Eigen::Product.978", align 8 ; 6 uses
  %11 = alloca %"class.Eigen::Product.996", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !49   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
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
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = mul nsw i64 %i.c, %i.c                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = icmp samesign ugt i64 %i.j, 2305843009213693951
  br i1 %i.m, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

.noexc:                                           ; preds = %bb.c
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.c
  %i.o = shl nuw i64 %i.j, 3
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #21 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.noexc23, label %.sink.split.i

.noexc23:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.p, ptr %6, align 8, !tbaa !676
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit

_ZN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread, %.sink.split.i
  %i.s = phi ptr [ %i.f, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread ], [ %i.l, %.sink.split.i ]
  %i.t = phi ptr [ %i.e, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread ], [ %i.k, %.sink.split.i ]
  store i64 %i.c, ptr %i.t, align 8, !tbaa !678
  store i64 %i.c, ptr %i.s, align 8, !tbaa !679
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
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockIS2_Lin1ELin1ELb0EEEEELj6EEES9_Li0EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockIS1_Lin1ELin1ELb0EEEEELj6EEES7_Li0EEEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.j

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockIS1_Lin1ELin1ELb0EEEEELj6EEES7_Li0EEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %3, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockIS1_Lin1ELin1ELb0EEEEELj6EEES7_Li0EEEEERKNS_9EigenBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr %6, ptr %9, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_14TriangularViewINS2_IdLin1ELin1ELi1ELin1ELin1EEELj2EEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISD_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef null)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.o

bb.j:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.r

bb.l:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockIS1_Lin1ELin1ELb0EEEEELj6EEES7_Li0EEEEERKNS_9EigenBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store ptr %6, ptr %10, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %7, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS2_IdLin1ELin1ELi1ELin1ELin1EEEEELj1EEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISH_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef null)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.029, i64 56, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr %7, ptr %i.ab, align 8, !tbaa !50, !alias.scope !680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store double -1.000000e+00, ptr %i.a, align 8, !tbaa !18
  invoke void @_ZN5Eigen8internal23triangular_product_implILi5ELb1EKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELb0ES4_Lb0EE3runIS5_EEvRT_RS6_RKS4_RKNS9_6ScalarE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.ac = load ptr, ptr %7, align 8, !tbaa !11
  call void @free(ptr noundef %i.ac) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.029)
  %i.ad = load ptr, ptr %6, align 8, !tbaa !676
  call void @free(ptr noundef %i.ad) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret void

bb.q:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.y, %bb.k ], [ %i.aa, %bb.n ]
  %i.af = load ptr, ptr %7, align 8, !tbaa !11
  call void @free(ptr noundef %i.af) #20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.029)
  br label %common.resume

common.resume:                                    ; preds = %bb.s, %bb.e
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.u, %bb.e ]
  %i.ag = load ptr, ptr %6, align 8, !tbaa !676
  call void @free(ptr noundef %i.ag) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.1101", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.1109", align 8 ; 12 uses
  %5 = alloca %"class.Eigen::Transpose.1116", align 8 ; 17 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %.sroa.7117 = alloca [32 x i8], align 8         ; 2 uses
  %.sroa.14178 = alloca { %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }, align 8 ; 4 uses
  %.sroa.25 = alloca %"class.Eigen::MapBase.266", align 8 ; 4 uses
  %.sroa.27 = alloca { %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }, align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !49   ; 5 uses
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
  %i.m = load i64, ptr %i.f, align 8, !tbaa !49   ; 2 uses
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
  %i.q = load ptr, ptr %2, align 8, !tbaa !344
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.047194
  %i.s = load double, ptr %i.r, align 8, !tbaa !18
  %i.t = fneg double %i.s
  %i.u = load ptr, ptr %1, align 8, !tbaa !280, !noalias !683 ; 2 uses
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !437, !noalias !683 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16, !noalias !683 ; 5 uses
  %i.y = mul nsw i64 %i.x, %.047194
  %i.z = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.y ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7117.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14178, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9119.24..sroa_idx, i64 24, i1 false)
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.neg
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !49, !noalias !686
  %i.ac = sub nsw i64 %i.ab, %i.o                 ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.neg
  %i.ae = mul nsw i64 %i.ac, %i.x
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9119.24..sroa_idx, i64 24, i1 false)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !676, !noalias !689
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !679, !noalias !689 ; 5 uses
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
  call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.ay, i1 false), !tbaa !18
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
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.bk, i1 false), !tbaa !32
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
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i.i.i.i.i, i8 0, i64 %i.bq, i1 false), !tbaa !18
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %i.af, ptr %4, align 8
  store i64 %i.p, ptr %.sroa.23.192..sroa_idx, align 8
  store i64 %i.o, ptr %.sroa.24.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25, i64 24, i1 false)
  store ptr %i.v, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27, i64 24, i1 false)
  store i64 %.neg, ptr %.sroa.28.192..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.29.192..sroa_idx, align 8
  store i64 %i.x, ptr %.sroa.30.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 %i.p, ptr %i.i, align 8, !alias.scope !692
  store double %i.t, ptr %i.j, align 8, !tbaa !113, !alias.scope !692
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
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
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
  %i.bt = load ptr, ptr %0, align 8, !tbaa !676   ; 8 uses
  %i.bu = load i64, ptr %i.h, align 8, !tbaa !679 ; 9 uses
  %i.bv = mul nsw i64 %i.bu, %.047194
  %i.bw = getelementptr [8 x i8], ptr %i.bt, i64 %i.bv ; 2 uses
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %.0193 ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !18 ; 10 uses
  %i.bz = mul nsw i64 %i.bu, %.0193
  %i.ca = getelementptr [8 x i8], ptr %i.bt, i64 %i.bz ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %.0193
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !18
  %i.cd = fmul double %i.by, %i.cc
  store double %i.cd, ptr %i.bx, align 8, !tbaa !18
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
  %wide.load224 = load <2 x double>, ptr %i.db, align 8, !tbaa !18, !alias.scope !695
  %wide.load225 = load <2 x double>, ptr %i.dc, align 8, !tbaa !18, !alias.scope !695
  %i.dd = fmul <2 x double> %broadcast.splat221, %wide.load224
  %i.de = fmul <2 x double> %broadcast.splat221, %wide.load225
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %wide.load226 = load <2 x double>, ptr %i.da, align 8, !tbaa !18, !alias.scope !698, !noalias !695
  %wide.load227 = load <2 x double>, ptr %i.df, align 8, !tbaa !18, !alias.scope !698, !noalias !695
  %i.dg = fadd <2 x double> %i.dd, %wide.load226
  %i.dh = fadd <2 x double> %i.de, %wide.load227
  store <2 x double> %i.dg, ptr %i.da, align 8, !tbaa !18, !alias.scope !698, !noalias !695
  store <2 x double> %i.dh, ptr %i.df, align 8, !tbaa !18, !alias.scope !698, !noalias !695
  %index.next228 = add nuw i64 %index223, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next228, %n.vec219
  br i1 %i.di, label %middle.block229, label %vector.body222, !llvm.loop !700

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
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !18
  %i.dm = fmul double %i.by, %i.dl
  %i.dn = load double, ptr %i.dj, align 8, !tbaa !18
  %i.do = fadd double %i.dm, %i.dn
  store double %i.do, ptr %i.dj, align 8, !tbaa !18
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
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !18
  %i.du = fmul double %i.by, %i.dt
  %i.dv = load double, ptr %i.dr, align 8, !tbaa !18
  %i.dw = fadd double %i.du, %i.dv
  store double %i.dw, ptr %i.dr, align 8, !tbaa !18
  %i.dx = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.dx
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !18
  %i.eb = fmul double %i.by, %i.ea
  %i.ec = load double, ptr %i.dy, align 8, !tbaa !18
  %i.ed = fadd double %i.eb, %i.ec
  store double %i.ed, ptr %i.dy, align 8, !tbaa !18
  %i.ee = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ee, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !701

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
  %wide.load = load <2 x double>, ptr %i.fa, align 8, !tbaa !18, !alias.scope !702
  %wide.load207 = load <2 x double>, ptr %i.fb, align 8, !tbaa !18, !alias.scope !702
  %i.fc = fmul <2 x double> %broadcast.splat, %wide.load
  %i.fd = fmul <2 x double> %broadcast.splat, %wide.load207
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %wide.load208 = load <2 x double>, ptr %i.ez, align 8, !tbaa !18, !alias.scope !705, !noalias !702
  %wide.load209 = load <2 x double>, ptr %i.fe, align 8, !tbaa !18, !alias.scope !705, !noalias !702
  %i.ff = fadd <2 x double> %i.fc, %wide.load208
  %i.fg = fadd <2 x double> %i.fd, %wide.load209
  store <2 x double> %i.ff, ptr %i.ez, align 8, !tbaa !18, !alias.scope !705, !noalias !702
  store <2 x double> %i.fg, ptr %i.fe, align 8, !tbaa !18, !alias.scope !705, !noalias !702
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !707

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
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !18
  %i.fm = fmul double %i.by, %i.fl
  %i.fn = load double, ptr %i.fj, align 8, !tbaa !18
  %i.fo = fadd double %i.fm, %i.fn
  store double %i.fo, ptr %i.fj, align 8, !tbaa !18
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
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !18
  %i.fu = fmul double %i.by, %i.ft
  %i.fv = load double, ptr %i.fr, align 8, !tbaa !18
  %i.fw = fadd double %i.fu, %i.fv
  store double %i.fw, ptr %i.fr, align 8, !tbaa !18
  %i.fx = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.fx
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !18
  %i.gb = fmul double %i.by, %i.ga
  %i.gc = load double, ptr %i.fy, align 8, !tbaa !18
  %i.gd = fadd double %i.gb, %i.gc
  store double %i.gd, ptr %i.fy, align 8, !tbaa !18
  %i.ge = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.ge, %i.cf
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !708

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gl, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.021.i.i.i.i.i.i
  %i.gh = load <2 x double>, ptr %i.gg, align 1, !tbaa !32
  %i.gi = fmul <2 x double> %i.eg, %i.gh
  %i.gj = load <2 x double>, ptr %i.gf, align 16, !tbaa !32
  %i.gk = fadd <2 x double> %i.gj, %i.gi
  store <2 x double> %i.gk, ptr %i.gf, align 16, !tbaa !32
  %i.gl = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.gm = icmp slt i64 %i.gl, %i.cr
  br i1 %i.gm, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !709

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %.lr.ph
  %i.gn = add nsw i64 %.0193, -1                  ; 2 uses
  %i.go = icmp sgt i64 %i.gn, %.047194
  %indvar.next204 = add i64 %indvar203, 1
  br i1 %i.go, label %.lr.ph, label %.loopexit, !llvm.loop !710

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gp = load ptr, ptr %2, align 8, !tbaa !344
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.047194
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !18
  %i.gs = load ptr, ptr %0, align 8, !tbaa !676
  %i.gt = load i64, ptr %i.h, align 8, !tbaa !679
  %i.gu = mul nsw i64 %i.gt, %.047194
  %i.gv = getelementptr [8 x i8], ptr %i.gs, i64 %i.gu
  %i.gw = getelementptr [8 x i8], ptr %i.gv, i64 %.047194
  store double %i.gr, ptr %i.gw, align 8, !tbaa !18
  %i.gx = add nsw i64 %.047194, -1
  %i.gy = icmp sgt i64 %.047194, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gy, label %bb.b, label %._crit_edge, !llvm.loop !711
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS4_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.1101", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.1109", align 8 ; 12 uses
  %5 = alloca %"class.Eigen::Transpose.1116", align 8 ; 17 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %.sroa.7117 = alloca [32 x i8], align 8         ; 2 uses
  %.sroa.14178 = alloca { %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }, align 8 ; 4 uses
  %.sroa.25 = alloca %"class.Eigen::MapBase.266", align 8 ; 4 uses
  %.sroa.27 = alloca { %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }, align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !49   ; 5 uses
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
  %i.m = load i64, ptr %i.f, align 8, !tbaa !49   ; 2 uses
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
  %i.q = load ptr, ptr %2, align 8, !tbaa !344
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.047194
  %i.s = load double, ptr %i.r, align 8, !tbaa !18
  %i.t = fneg double %i.s
  %i.u = load ptr, ptr %1, align 8, !tbaa !280, !noalias !712 ; 2 uses
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !437, !noalias !712 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16, !noalias !712 ; 5 uses
  %i.y = mul nsw i64 %i.x, %.047194
  %i.z = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.y ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7117.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14178, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9119.24..sroa_idx, i64 24, i1 false)
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.neg
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !49, !noalias !715
  %i.ac = sub nsw i64 %i.ab, %i.o                 ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.neg
  %i.ae = mul nsw i64 %i.ac, %i.x
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9119.24..sroa_idx, i64 24, i1 false)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !676, !noalias !718
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !679, !noalias !718 ; 5 uses
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
  call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.ay, i1 false), !tbaa !18
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
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.bk, i1 false), !tbaa !32
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
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i.i.i.i.i, i8 0, i64 %i.bq, i1 false), !tbaa !18
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %i.af, ptr %4, align 8
  store i64 %i.p, ptr %.sroa.23.192..sroa_idx, align 8
  store i64 %i.o, ptr %.sroa.24.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25, i64 24, i1 false)
  store ptr %i.v, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27, i64 24, i1 false)
  store i64 %.neg, ptr %.sroa.28.192..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.29.192..sroa_idx, align 8
  store i64 %i.x, ptr %.sroa.30.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 %i.p, ptr %i.i, align 8, !alias.scope !721
  store double %i.t, ptr %i.j, align 8, !tbaa !113, !alias.scope !721
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
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
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
  %i.bt = load ptr, ptr %0, align 8, !tbaa !676   ; 8 uses
  %i.bu = load i64, ptr %i.h, align 8, !tbaa !679 ; 9 uses
  %i.bv = mul nsw i64 %i.bu, %.047194
  %i.bw = getelementptr [8 x i8], ptr %i.bt, i64 %i.bv ; 2 uses
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %.0193 ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !18 ; 10 uses
  %i.bz = mul nsw i64 %i.bu, %.0193
  %i.ca = getelementptr [8 x i8], ptr %i.bt, i64 %i.bz ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %.0193
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !18
  %i.cd = fmul double %i.by, %i.cc
  store double %i.cd, ptr %i.bx, align 8, !tbaa !18
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
  %wide.load224 = load <2 x double>, ptr %i.db, align 8, !tbaa !18, !alias.scope !724
  %wide.load225 = load <2 x double>, ptr %i.dc, align 8, !tbaa !18, !alias.scope !724
  %i.dd = fmul <2 x double> %broadcast.splat221, %wide.load224
  %i.de = fmul <2 x double> %broadcast.splat221, %wide.load225
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %wide.load226 = load <2 x double>, ptr %i.da, align 8, !tbaa !18, !alias.scope !727, !noalias !724
  %wide.load227 = load <2 x double>, ptr %i.df, align 8, !tbaa !18, !alias.scope !727, !noalias !724
  %i.dg = fadd <2 x double> %i.dd, %wide.load226
  %i.dh = fadd <2 x double> %i.de, %wide.load227
  store <2 x double> %i.dg, ptr %i.da, align 8, !tbaa !18, !alias.scope !727, !noalias !724
  store <2 x double> %i.dh, ptr %i.df, align 8, !tbaa !18, !alias.scope !727, !noalias !724
  %index.next228 = add nuw i64 %index223, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next228, %n.vec219
  br i1 %i.di, label %middle.block229, label %vector.body222, !llvm.loop !729

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
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !18
  %i.dm = fmul double %i.by, %i.dl
  %i.dn = load double, ptr %i.dj, align 8, !tbaa !18
  %i.do = fadd double %i.dm, %i.dn
  store double %i.do, ptr %i.dj, align 8, !tbaa !18
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
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !18
  %i.du = fmul double %i.by, %i.dt
  %i.dv = load double, ptr %i.dr, align 8, !tbaa !18
  %i.dw = fadd double %i.du, %i.dv
  store double %i.dw, ptr %i.dr, align 8, !tbaa !18
  %i.dx = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.dx
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !18
  %i.eb = fmul double %i.by, %i.ea
  %i.ec = load double, ptr %i.dy, align 8, !tbaa !18
  %i.ed = fadd double %i.eb, %i.ec
  store double %i.ed, ptr %i.dy, align 8, !tbaa !18
  %i.ee = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ee, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !730

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
  %wide.load = load <2 x double>, ptr %i.fa, align 8, !tbaa !18, !alias.scope !731
  %wide.load207 = load <2 x double>, ptr %i.fb, align 8, !tbaa !18, !alias.scope !731
  %i.fc = fmul <2 x double> %broadcast.splat, %wide.load
  %i.fd = fmul <2 x double> %broadcast.splat, %wide.load207
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %wide.load208 = load <2 x double>, ptr %i.ez, align 8, !tbaa !18, !alias.scope !734, !noalias !731
  %wide.load209 = load <2 x double>, ptr %i.fe, align 8, !tbaa !18, !alias.scope !734, !noalias !731
  %i.ff = fadd <2 x double> %i.fc, %wide.load208
  %i.fg = fadd <2 x double> %i.fd, %wide.load209
  store <2 x double> %i.ff, ptr %i.ez, align 8, !tbaa !18, !alias.scope !734, !noalias !731
  store <2 x double> %i.fg, ptr %i.fe, align 8, !tbaa !18, !alias.scope !734, !noalias !731
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !736

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
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !18
  %i.fm = fmul double %i.by, %i.fl
  %i.fn = load double, ptr %i.fj, align 8, !tbaa !18
  %i.fo = fadd double %i.fm, %i.fn
  store double %i.fo, ptr %i.fj, align 8, !tbaa !18
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
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !18
  %i.fu = fmul double %i.by, %i.ft
  %i.fv = load double, ptr %i.fr, align 8, !tbaa !18
  %i.fw = fadd double %i.fu, %i.fv
  store double %i.fw, ptr %i.fr, align 8, !tbaa !18
  %i.fx = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.fx
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !18
  %i.gb = fmul double %i.by, %i.ga
  %i.gc = load double, ptr %i.fy, align 8, !tbaa !18
  %i.gd = fadd double %i.gb, %i.gc
  store double %i.gd, ptr %i.fy, align 8, !tbaa !18
  %i.ge = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.ge, %i.cf
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !737

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gl, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.021.i.i.i.i.i.i
  %i.gh = load <2 x double>, ptr %i.gg, align 1, !tbaa !32
  %i.gi = fmul <2 x double> %i.eg, %i.gh
  %i.gj = load <2 x double>, ptr %i.gf, align 16, !tbaa !32
  %i.gk = fadd <2 x double> %i.gj, %i.gi
  store <2 x double> %i.gk, ptr %i.gf, align 16, !tbaa !32
  %i.gl = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.gm = icmp slt i64 %i.gl, %i.cr
  br i1 %i.gm, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !709

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %.lr.ph
  %i.gn = add nsw i64 %.0193, -1                  ; 2 uses
  %i.go = icmp sgt i64 %i.gn, %.047194
  %indvar.next204 = add i64 %indvar203, 1
  br i1 %i.go, label %.lr.ph, label %.loopexit, !llvm.loop !738

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gp = load ptr, ptr %2, align 8, !tbaa !344
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.047194
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !18
  %i.gs = load ptr, ptr %0, align 8, !tbaa !676
  %i.gt = load i64, ptr %i.h, align 8, !tbaa !679
  %i.gu = mul nsw i64 %i.gt, %.047194
  %i.gv = getelementptr [8 x i8], ptr %i.gs, i64 %i.gu
  %i.gw = getelementptr [8 x i8], ptr %i.gv, i64 %.047194
  store double %i.gr, ptr %i.gw, align 8, !tbaa !18
  %i.gx = add nsw i64 %.047194, -1
  %i.gy = icmp sgt i64 %.047194, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gy, label %bb.b, label %._crit_edge, !llvm.loop !739
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.d = load double, ptr %i.c, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.e = load double, ptr %3, align 8, !tbaa !18
  %i.f = fmul double %i.d, %i.e
  store double %i.f, ptr %i.a, align 8, !tbaa !18
  %i.g = icmp ugt i64 %.sroa.756.0.copyload, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
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
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.i) #21 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

bb.g:                                             ; preds = %bb.d, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.e
  %i.p = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.sroa.053.0.copyload, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %i.r = icmp samesign ugt i64 %.sroa.756.0.copyload, 16384 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.767.0.copyload, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16
  %i.u = load ptr, ptr %2, align 8, !tbaa !740
  invoke void @_ZN5Eigen8internal32triangular_matrix_vector_productIlLi6EdLb0EdLb0ELi1ELi0EE3runEllPKdlS4_lPdlRS3_(i64 noundef %.sroa.665.0.copyload, i64 noundef %.sroa.564.0.copyload, ptr noundef %.sroa.063.0.copyload, i64 noundef %i.t, ptr noundef nonnull %i.q, i64 noundef 1, ptr noundef %i.u, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br i1 %i.r, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit25

bb.i:                                             ; preds = %bb.g
  br i1 %i.r, label %bb.j, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.p) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

bb.k:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEES5_NS_11VectorBlockIKNS3_IfLin1ELi1ELi0ELin1ELi1EEELin1EEEEEvRT_RKT0_RKT1_b:bb.a
  %6 = alloca %"class.Eigen::Matrix.2410", align 8 ; 15 uses
  %.sroa.029 = alloca %"class.Eigen::internal::BlockImpl_dense.1705", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::Matrix.59", align 8  ; 12 uses
  %8 = alloca %"class.Eigen::Product.2423", align 8 ; 6 uses
  %9 = alloca %"class.Eigen::Product.2441", align 8 ; 6 uses
  %10 = alloca %"class.Eigen::Product.2452", align 8 ; 6 uses
  %11 = alloca %"class.Eigen::Product.2470", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !49   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread, label %bb.b

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.c
  %i.h = icmp sgt i64 %i.c, %i.g
  br i1 %i.h, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = mul nsw i64 %i.c, %i.c                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = icmp samesign ugt i64 %i.j, 4611686018427387903
  br i1 %i.m, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i

.noexc:                                           ; preds = %bb.c
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i: ; preds = %bb.c
  %i.o = shl nuw i64 %i.j, 2
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #21 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.noexc23, label %.sink.split.i

.noexc23:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i
  store ptr %i.p, ptr %6, align 8, !tbaa !1682
  br label %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit

_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread, %.sink.split.i
  %i.s = phi ptr [ %i.f, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread ], [ %i.l, %.sink.split.i ]
  %i.t = phi ptr [ %i.e, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread ], [ %i.k, %.sink.split.i ]
  store i64 %i.c, ptr %i.t, align 8, !tbaa !1684
  store i64 %i.c, ptr %i.s, align 8, !tbaa !1685
  br i1 %3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit
  invoke void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IfLin1ELi1ELi0ELin1ELi1EEELin1EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit
  invoke void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS4_IKNS2_IfLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.029)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.029, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockIS2_Lin1ELin1ELb0EEEEELj6EEES9_Li0EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockIS1_Lin1ELin1ELb0EEEEELj6EEES7_Li0EEEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.j

_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockIS1_Lin1ELin1ELb0EEEEELj6EEES7_Li0EEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %3, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockIS1_Lin1ELin1ELb0EEEEELj6EEES7_Li0EEEEERKNS_9EigenBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr %6, ptr %9, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_14TriangularViewINS2_IfLin1ELin1ELi1ELin1ELin1EEELj2EEES3_Li0EEENS0_9assign_opIffEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISD_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef null)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.o

bb.j:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.r

bb.l:                                             ; preds = %_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockIS1_Lin1ELin1ELb0EEEEELj6EEES7_Li0EEEEERKNS_9EigenBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store ptr %6, ptr %10, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %7, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS2_IfLin1ELin1ELi1ELin1ELin1EEEEELj1EEES3_Li0EEENS0_9assign_opIffEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISH_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef null)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.029, i64 56, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr %7, ptr %i.ab, align 8, !tbaa !1050, !alias.scope !1686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store float -1.000000e+00, ptr %i.a, align 4, !tbaa !73
  invoke void @_ZN5Eigen8internal23triangular_product_implILi5ELb1EKNS_5BlockINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELb0ES4_Lb0EE3runIS5_EEvRT_RS6_RKS4_RKNS9_6ScalarE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.ac = load ptr, ptr %7, align 8, !tbaa !68
  call void @free(ptr noundef %i.ac) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.029)
  %i.ad = load ptr, ptr %6, align 8, !tbaa !1682
  call void @free(ptr noundef %i.ad) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret void

bb.q:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.y, %bb.k ], [ %i.aa, %bb.n ]
  %i.af = load ptr, ptr %7, align 8, !tbaa !68
  call void @free(ptr noundef %i.af) #20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.029)
  br label %common.resume

common.resume:                                    ; preds = %bb.s, %bb.e
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.u, %bb.e ]
  %i.ag = load ptr, ptr %6, align 8, !tbaa !1682
  call void @free(ptr noundef %i.ag) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IfLin1ELi1ELi0ELin1ELi1EEELin1EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.2575", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.2583", align 8 ; 12 uses
  %5 = alloca %"class.Eigen::Transpose.2590", align 8 ; 17 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %.sroa.7118 = alloca [32 x i8], align 8         ; 2 uses
  %.sroa.14181 = alloca { %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }, align 8 ; 4 uses
  %.sroa.25 = alloca %"class.Eigen::MapBase.1707", align 8 ; 4 uses
  %.sroa.27 = alloca { %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }, align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !49   ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph198, label %._crit_edge

.lr.ph198:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7118.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7118, i64 8
  %.sroa.9120.24..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
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
  %.sroa.8175.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10177.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11178.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12179.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13180.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 104
  %.sroa.14181.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 112
  %.sroa.15182.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.16183.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.17184.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.18185.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.20187.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %6 = shl i64 %i.c, 2
  %7 = add i64 %6, -4                             ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph198, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph198 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047197 = phi i64 [ %i.d, %.lr.ph198 ], [ %i.hh, %.loopexit ] ; 15 uses
  %i.l = shl i64 %indvar, 2
  %8 = sub i64 %7, %i.l
  %i.m = shl i64 %indvar, 2
  %9 = sub i64 %7, %i.m
  %i.n = load i64, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %i.o = xor i64 %.047197, -1                     ; 2 uses
  %i.p = add i64 %i.c, %i.o                       ; 10 uses
  %.not204 = icmp eq i64 %i.p, 0
  br i1 %.not204, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nuw nsw i64 %.047197, 1             ; 4 uses
  %i.q = add i64 %i.n, %i.o                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14181)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27)
  %i.r = load ptr, ptr %2, align 8, !tbaa !1303
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.047197
  %i.t = load float, ptr %i.s, align 4, !tbaa !73
  %i.u = fneg float %i.t
  %i.v = load ptr, ptr %1, align 8, !tbaa !1240, !noalias !1689 ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !1397, !noalias !1689 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !71, !noalias !1689 ; 5 uses
  %i.z = mul nsw i64 %i.y, %.047197
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.z ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7118.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14181, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9120.24..sroa_idx, i64 24, i1 false)
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %.neg
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !49, !noalias !1692
  %i.ad = sub nsw i64 %i.ac, %i.p                 ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.neg
  %i.af = mul nsw i64 %i.ad, %i.y
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9120.24..sroa_idx, i64 24, i1 false)
  %i.ah = load ptr, ptr %0, align 8, !tbaa !1682, !noalias !1695
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !1685, !noalias !1695 ; 5 uses
  %i.aj = mul nsw i64 %i.ai, %.047197
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.aj ; 2 uses
  %i.al = sub nsw i64 %i.ai, %i.p                 ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al ; 5 uses
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = and i64 %i.an, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ap = lshr exact i64 %i.an, 2
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = and i64 %i.aq, 3                        ; 2 uses
  %i.as = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.p) ; 3 uses
  %i.at = sub nsw i64 %i.p, %i.as                 ; 3 uses
  %i.au = sdiv i64 %i.at, 4                       ; 3 uses
  %i.av = shl nuw nsw i64 %i.au, 2                ; 3 uses
  %i.aw = or disjoint i64 %i.av, %i.as            ; 2 uses
  %.not = icmp eq i64 %i.ar, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = phi i64 [ %i.aw, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.p, %bb.c ]
  %i.ay = phi i64 [ %i.av, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.az = phi i64 [ %i.au, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ba = phi i64 [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i194 = phi i64 [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  %i.bb = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i194, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.am, i8 0, i64 %i.bb, i1 false), !tbaa !73
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.aw, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bd = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.av, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.be = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.au, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bf = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i193 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i194, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.bg = icmp sgt i64 %i.bf, 3
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bh = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i193, 2
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.am, i64 %i.bh
  %i.bi = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i193, 4
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bc, i64 %i.bi)
  %i.bj = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i193, -1
  %i.bk = add nsw i64 %smax.i.i.i.i.i, %i.bj
  %i.bl = shl i64 %i.bk, 2
  %i.bm = and i64 %i.bl, -16
  %i.bn = add i64 %i.bm, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.bn, i1 false), !tbaa !32
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = icmp samesign ult i64 %i.bc, %i.p
  br i1 %i.bo, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = shl i64 %i.be, 4
  %i.bq = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i193, 2
  %i.br = getelementptr i8, ptr %i.am, i64 %i.bp
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.br, i64 %i.bq
  %i.bs = sub nsw i64 %i.bf, %i.bd
  %i.bt = shl nuw i64 %i.bs, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i.i.i.i.i, i8 0, i64 %i.bt, i1 false), !tbaa !73
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %i.am, ptr %3, align 8
  store i64 %i.p, ptr %.sroa.5190.0..sroa_idx, align 8
  store ptr %i.ak, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ai, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %.047197, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.13.0..sroa_idx, align 8
  store i64 %i.ai, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.al, ptr %.sroa.15191.0..sroa_idx, align 8
  store i64 %i.ai, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %i.ag, ptr %4, align 8
  store i64 %i.q, ptr %.sroa.23.192..sroa_idx, align 8
  store i64 %i.p, ptr %.sroa.24.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25, i64 24, i1 false)
  store ptr %i.w, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27, i64 24, i1 false)
  store i64 %.neg, ptr %.sroa.28.192..sroa_idx, align 8
  store i64 %i.ad, ptr %.sroa.29.192..sroa_idx, align 8
  store i64 %i.y, ptr %.sroa.30.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !1698
  store float %i.u, ptr %i.j, align 8, !tbaa !1075, !alias.scope !1698
  store ptr %i.ab, ptr %i.k, align 8
  store i64 %i.q, ptr %.sroa.8175.32..sroa_idx, align 8
  store ptr %i.aa, ptr %.sroa.10177.32..sroa_idx, align 8
  store i64 %i.n, ptr %.sroa.11178.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12179.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7118, i64 32, i1 false)
  store ptr %i.w, ptr %.sroa.13180.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14181.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14181, i64 24, i1 false)
  store i64 0, ptr %.sroa.15182.32..sroa_idx, align 8
  store i64 %.047197, ptr %.sroa.16183.32..sroa_idx, align 8
  store i64 %i.y, ptr %.sroa.17184.32..sroa_idx, align 8
  store i64 %.neg, ptr %.sroa.18185.32..sroa_idx, align 8
  store i64 %i.y, ptr %.sroa.20187.32..sroa_idx, align 8
  call void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS6_IfLi1ELin1ELi1ELi1ELin1EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14181)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  %i.bu = icmp sgt i64 %i.d, %.047197
  br i1 %i.bu, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit
  %indvar209 = phi i64 [ %indvar.next210, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ 0, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %.0196 = phi i64 [ %i.gx, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ %i.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %i.bv = shl i64 %indvar209, 2
  %10 = sub i64 %7, %i.bv
  %i.bw = shl i64 %indvar209, 2                   ; 2 uses
  %i.bx = shl i64 %indvar209, 2
  %11 = sub i64 %7, %i.bx
  %i.by = load ptr, ptr %0, align 8, !tbaa !1682  ; 8 uses
  %i.bz = load i64, ptr %i.h, align 8, !tbaa !1685 ; 7 uses
  %i.ca = mul nsw i64 %i.bz, %.047197
  %i.cb = getelementptr [4 x i8], ptr %i.by, i64 %i.ca ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.cb, i64 %.0196 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !73 ; 10 uses
  %i.ce = mul nsw i64 %i.bz, %.0196
  %i.cf = getelementptr [4 x i8], ptr %i.by, i64 %i.ce ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %.0196
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !73
  %i.ci = fmul float %i.cd, %i.ch
  store float %i.ci, ptr %i.cc, align 4, !tbaa !73
  %i.cj = xor i64 %.0196, -1
  %i.ck = add i64 %i.c, %i.cj                     ; 10 uses
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %bb.d, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.cm = sub nsw i64 %i.bz, %i.ck                ; 4 uses
  %i.cn = getelementptr [4 x i8], ptr %i.cf, i64 %i.cm ; 10 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cm ; 11 uses
  %i.cp = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cq = and i64 %i.cp, 3
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.cr = lshr exact i64 %i.cp, 2
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = and i64 %i.cs, 3                        ; 2 uses
  %i.cu = call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.ck) ; 3 uses
  %i.cv = sub nsw i64 %i.ck, %i.cu                ; 3 uses
  %i.cw = sdiv i64 %i.cv, 4
  %i.cx = shl nuw nsw i64 %i.cw, 2
  %i.cy = or disjoint i64 %i.cx, %i.cu            ; 2 uses
  %.not195 = icmp eq i64 %i.ct, 0
  br i1 %.not195, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.cz = phi i64 [ %i.cy, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.d ] ; 3 uses
  %i.da = phi i64 [ %i.cv, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %.0.i.i.i.i.i.i.i207 = phi i64 [ %i.cu, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.d ] ; 10 uses
  %min.iters.check224 = icmp ult i64 %.0.i.i.i.i.i.i.i207, 8
  br i1 %min.iters.check224, label %.lr.ph.i.i.i.i.i.i.i.preheader240, label %vector.memcheck217

vector.memcheck217:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.db = mul i64 %8, %i.bz
  %i.dc = shl i64 %.0.i.i.i.i.i.i.i207, 2         ; 2 uses
  %i.dd = shl i64 %i.cm, 2                        ; 2 uses
  %i.de = getelementptr i8, ptr %i.by, i64 %i.db
  %i.df = getelementptr i8, ptr %i.de, i64 %i.dc
  %scevgep218 = getelementptr i8, ptr %i.df, i64 %i.dd
  %i.dg = mul i64 %i.bz, %10
  %i.dh = getelementptr i8, ptr %i.by, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.dc
  %scevgep219 = getelementptr i8, ptr %i.di, i64 %i.dd
  %bound0220 = icmp ult ptr %i.co, %scevgep219
  %bound1221 = icmp ult ptr %i.cn, %scevgep218
  %found.conflict222 = and i1 %bound0220, %bound1221
  br i1 %found.conflict222, label %.lr.ph.i.i.i.i.i.i.i.preheader240, label %vector.ph225

vector.ph225:                                     ; preds = %vector.memcheck217
  %n.vec226 = and i64 %.0.i.i.i.i.i.i.i207, -8    ; 3 uses
  %broadcast.splatinsert227 = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat228 = shufflevector <4 x float> %broadcast.splatinsert227, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph225
  %index230 = phi i64 [ 0, %vector.ph225 ], [ %index.next235, %vector.body229 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index230 ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index230 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load231.a = load <4 x float>, ptr %i.dk, align 4, !tbaa !73, !alias.scope !1701
  %wide.load232.a = load <4 x float>, ptr %i.dl, align 4, !tbaa !73, !alias.scope !1701
  %i.dm = fmul <4 x float> %broadcast.splat228, %wide.load231.a
  %i.dn = fmul <4 x float> %broadcast.splat228, %wide.load232.a
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load233 = load <4 x float>, ptr %i.dj, align 4, !tbaa !73, !alias.scope !1704, !noalias !1701
  %wide.load234 = load <4 x float>, ptr %i.do, align 4, !tbaa !73, !alias.scope !1704, !noalias !1701
  %i.dp = fadd <4 x float> %i.dm, %wide.load233
  %i.dq = fadd <4 x float> %i.dn, %wide.load234
  store <4 x float> %i.dp, ptr %i.dj, align 4, !tbaa !73, !alias.scope !1704, !noalias !1701
  store <4 x float> %i.dq, ptr %i.do, align 4, !tbaa !73, !alias.scope !1704, !noalias !1701
  %index.next235 = add nuw i64 %index230, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next235, %n.vec226
  br i1 %i.dr, label %middle.block236, label %vector.body229, !llvm.loop !1706

middle.block236:                                  ; preds = %vector.body229
  %cmp.n237 = icmp eq i64 %.0.i.i.i.i.i.i.i207, %n.vec226
  br i1 %cmp.n237, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader240

.lr.ph.i.i.i.i.i.i.i.preheader240:                ; preds = %vector.memcheck217, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block236
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck217 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec226, %middle.block236 ] ; 5 uses
  %.neg244 = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i207, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader240
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.05.i.i.i.i.i.i.i.ph
  %i.du = load float, ptr %i.dt, align 4, !tbaa !73
  %i.dv = fmul float %i.cd, %i.du
  %i.dw = load float, ptr %i.ds, align 4, !tbaa !73
  %i.dx = fadd float %i.dv, %i.dw
  store float %i.dx, ptr %i.ds, align 4, !tbaa !73
  %i.dy = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader240
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader240 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.dz = icmp eq i64 %.0.i.i.i.i.i.i.i207, %.neg244
  br i1 %i.dz, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.05.i.i.i.i.i.i.i
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !73
  %i.ed = fmul float %i.cd, %i.ec
  %i.ee = load float, ptr %i.ea, align 4, !tbaa !73
  %i.ef = fadd float %i.ed, %i.ee
  store float %i.ef, ptr %i.ea, align 4, !tbaa !73
  %i.eg = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.eg
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !73
  %i.ek = fmul float %i.cd, %i.ej
  %i.el = load float, ptr %i.eh, align 4, !tbaa !73
  %i.em = fadd float %i.ek, %i.el
  store float %i.em, ptr %i.eh, align 4, !tbaa !73
  %i.en = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.en, %.0.i.i.i.i.i.i.i207
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1707

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block236, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.eo = phi i64 [ %i.cy, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.cz, %middle.block236 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.ep = phi i64 [ %i.cv, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.da, %middle.block236 ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.0.i.i.i.i.i.i.i208 = phi i64 [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i207, %middle.block236 ], [ %.0.i.i.i.i.i.i.i207, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i207, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.eq = icmp sgt i64 %i.ep, 3
  br i1 %i.eq, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.er = insertelement <1 x float> poison, float %i.cd, i64 0
  %i.es = shufflevector <1 x float> %i.er, <1 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.et = icmp samesign ult i64 %i.eo, %i.ck
  br i1 %i.et, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.eu = sub nuw i64 %i.ck, %i.eo                ; 3 uses
  %min.iters.check = icmp ult i64 %i.eu, 12
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader239, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.ev = mul i64 %9, %i.bz                       ; 2 uses
  %i.ew = shl i64 %i.eo, 2                        ; 2 uses
  %i.ex = shl i64 %i.cm, 2                        ; 4 uses
  %i.ey = getelementptr i8, ptr %i.by, i64 %i.ev
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.ew
  %scevgep = getelementptr i8, ptr %i.ez, i64 %i.ex
  %i.fa = getelementptr i8, ptr %i.by, i64 %i.bw
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ev
  %scevgep211.a = getelementptr i8, ptr %i.fb, i64 %i.ex
  %i.fc = mul i64 %i.bz, %11                      ; 2 uses
  %i.fd = getelementptr i8, ptr %i.by, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.ew
  %scevgep212 = getelementptr i8, ptr %i.fe, i64 %i.ex
  %i.ff = getelementptr i8, ptr %i.by, i64 %i.bw
  %i.fg = getelementptr i8, ptr %i.ff, i64 %i.fc
  %scevgep213 = getelementptr i8, ptr %i.fg, i64 %i.ex
  %bound0 = icmp ult ptr %scevgep, %scevgep213
  %bound1 = icmp ult ptr %scevgep212, %scevgep211.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader239, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eu, 9223372036854775800     ; 3 uses
  %i.fh = add i64 %i.eo, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = add i64 %i.eo, %index                   ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.fi ; 3 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.fi ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load = load <4 x float>, ptr %i.fk, align 4, !tbaa !73, !alias.scope !1708
  %wide.load214.a = load <4 x float>, ptr %i.fl, align 4, !tbaa !73, !alias.scope !1708
  %i.fm = fmul <4 x float> %broadcast.splat, %wide.load
  %i.fn = fmul <4 x float> %broadcast.splat, %wide.load214.a
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %wide.load215 = load <4 x float>, ptr %i.fj, align 4, !tbaa !73, !alias.scope !1711, !noalias !1708
  %wide.load216 = load <4 x float>, ptr %i.fo, align 4, !tbaa !73, !alias.scope !1711, !noalias !1708
  %i.fp = fadd <4 x float> %i.fm, %wide.load215
  %i.fq = fadd <4 x float> %i.fn, %wide.load216
  store <4 x float> %i.fp, ptr %i.fj, align 4, !tbaa !73, !alias.scope !1711, !noalias !1708
  store <4 x float> %i.fq, ptr %i.fo, align 4, !tbaa !73, !alias.scope !1711, !noalias !1708
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !1713

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader239

.lr.ph.i17.i.i.i.i.i.i.preheader239:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.eo, %vector.memcheck ], [ %i.eo, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.fh, %middle.block ] ; 6 uses
  %i.fs = sub i64 %i.ck, %.05.i18.i.i.i.i.i.i.ph
  %.neg245 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter241 = and i64 %i.fs, 1
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader239
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.co, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !73
  %i.fw = fmul float %i.cd, %i.fv
  %i.fx = load float, ptr %i.ft, align 4, !tbaa !73
  %i.fy = fadd float %i.fw, %i.fx
  store float %i.fy, ptr %i.ft, align 4, !tbaa !73
  %i.fz = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader239
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader239 ], [ %i.fz, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.ga = icmp eq i64 %indvar209, %.neg245
  br i1 %i.ga, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.go, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.co, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !73
  %i.ge = fmul float %i.cd, %i.gd
  %i.gf = load float, ptr %i.gb, align 4, !tbaa !73
  %i.gg = fadd float %i.ge, %i.gf
  store float %i.gg, ptr %i.gb, align 4, !tbaa !73
  %i.gh = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.gh
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !73
  %i.gl = fmul float %i.cd, %i.gk
  %i.gm = load float, ptr %i.gi, align 4, !tbaa !73
  %i.gn = fadd float %i.gl, %i.gm
  store float %i.gn, ptr %i.gi, align 4, !tbaa !73
  %i.go = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.go, %i.ck
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !1714

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gv, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i208, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.021.i.i.i.i.i.i
  %i.gr = load <4 x float>, ptr %i.gq, align 1, !tbaa !32
  %i.gs = fmul <4 x float> %i.es, %i.gr
  %i.gt = load <4 x float>, ptr %i.gp, align 16, !tbaa !32
  %i.gu = fadd <4 x float> %i.gt, %i.gs
  store <4 x float> %i.gu, ptr %i.gp, align 16, !tbaa !32
  %i.gv = add nuw nsw i64 %.021.i.i.i.i.i.i, 4    ; 2 uses
  %i.gw = icmp slt i64 %i.gv, %i.eo
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1715

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %middle.block, %.lr.ph.i17.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph
  %i.gx = add nsw i64 %.0196, -1                  ; 2 uses
  %i.gy = icmp sgt i64 %i.gx, %.047197
  %indvar.next210 = add i64 %indvar209, 1
  br i1 %i.gy, label %.lr.ph, label %.loopexit, !llvm.loop !1716

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gz = load ptr, ptr %2, align 8, !tbaa !1303
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %.047197
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !73
  %i.hc = load ptr, ptr %0, align 8, !tbaa !1682
  %i.hd = load i64, ptr %i.h, align 8, !tbaa !1685
  %i.he = mul nsw i64 %i.hd, %.047197
  %i.hf = getelementptr [4 x i8], ptr %i.hc, i64 %i.he
  %i.hg = getelementptr [4 x i8], ptr %i.hf, i64 %.047197
  store float %i.hb, ptr %i.hg, align 4, !tbaa !73
  %i.hh = add nsw i64 %.047197, -1
  %i.hi = icmp sgt i64 %.047197, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hi, label %bb.b, label %._crit_edge, !llvm.loop !1717
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS4_IKNS2_IfLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.2575", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.2583", align 8 ; 12 uses
  %5 = alloca %"class.Eigen::Transpose.2590", align 8 ; 17 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %.sroa.7118 = alloca [32 x i8], align 8         ; 2 uses
  %.sroa.14181 = alloca { %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }, align 8 ; 4 uses
  %.sroa.25 = alloca %"class.Eigen::MapBase.1707", align 8 ; 4 uses
  %.sroa.27 = alloca { %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }, align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !49   ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph198, label %._crit_edge

.lr.ph198:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7118.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7118, i64 8
  %.sroa.9120.24..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
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
  %.sroa.8175.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10177.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11178.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12179.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13180.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 104
  %.sroa.14181.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 112
  %.sroa.15182.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.16183.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.17184.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.18185.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.20187.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %6 = shl i64 %i.c, 2
  %7 = add i64 %6, -4                             ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph198, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph198 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047197 = phi i64 [ %i.d, %.lr.ph198 ], [ %i.hh, %.loopexit ] ; 15 uses
  %i.l = shl i64 %indvar, 2
  %8 = sub i64 %7, %i.l
  %i.m = shl i64 %indvar, 2
  %9 = sub i64 %7, %i.m
  %i.n = load i64, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %i.o = xor i64 %.047197, -1                     ; 2 uses
  %i.p = add i64 %i.c, %i.o                       ; 10 uses
  %.not204 = icmp eq i64 %i.p, 0
  br i1 %.not204, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nuw nsw i64 %.047197, 1             ; 4 uses
  %i.q = add i64 %i.n, %i.o                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14181)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27)
  %i.r = load ptr, ptr %2, align 8, !tbaa !1303
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.047197
  %i.t = load float, ptr %i.s, align 4, !tbaa !73
  %i.u = fneg float %i.t
  %i.v = load ptr, ptr %1, align 8, !tbaa !1240, !noalias !1718 ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !1397, !noalias !1718 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !71, !noalias !1718 ; 5 uses
  %i.z = mul nsw i64 %i.y, %.047197
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.z ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7118.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14181, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9120.24..sroa_idx, i64 24, i1 false)
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %.neg
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !49, !noalias !1721
  %i.ad = sub nsw i64 %i.ac, %i.p                 ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.neg
  %i.af = mul nsw i64 %i.ad, %i.y
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9120.24..sroa_idx, i64 24, i1 false)
  %i.ah = load ptr, ptr %0, align 8, !tbaa !1682, !noalias !1724
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !1685, !noalias !1724 ; 5 uses
  %i.aj = mul nsw i64 %i.ai, %.047197
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.aj ; 2 uses
  %i.al = sub nsw i64 %i.ai, %i.p                 ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al ; 5 uses
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = and i64 %i.an, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ap = lshr exact i64 %i.an, 2
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = and i64 %i.aq, 3                        ; 2 uses
  %i.as = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.p) ; 3 uses
  %i.at = sub nsw i64 %i.p, %i.as                 ; 3 uses
  %i.au = sdiv i64 %i.at, 4                       ; 3 uses
  %i.av = shl nuw nsw i64 %i.au, 2                ; 3 uses
  %i.aw = or disjoint i64 %i.av, %i.as            ; 2 uses
  %.not = icmp eq i64 %i.ar, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = phi i64 [ %i.aw, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.p, %bb.c ]
  %i.ay = phi i64 [ %i.av, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.az = phi i64 [ %i.au, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ba = phi i64 [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i194 = phi i64 [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  %i.bb = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i194, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.am, i8 0, i64 %i.bb, i1 false), !tbaa !73
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.aw, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bd = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.av, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.be = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.au, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bf = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i193 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i194, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.bg = icmp sgt i64 %i.bf, 3
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bh = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i193, 2
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.am, i64 %i.bh
  %i.bi = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i193, 4
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bc, i64 %i.bi)
  %i.bj = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i193, -1
  %i.bk = add nsw i64 %smax.i.i.i.i.i, %i.bj
  %i.bl = shl i64 %i.bk, 2
  %i.bm = and i64 %i.bl, -16
  %i.bn = add i64 %i.bm, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.bn, i1 false), !tbaa !32
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = icmp samesign ult i64 %i.bc, %i.p
  br i1 %i.bo, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = shl i64 %i.be, 4
  %i.bq = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i193, 2
  %i.br = getelementptr i8, ptr %i.am, i64 %i.bp
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.br, i64 %i.bq
  %i.bs = sub nsw i64 %i.bf, %i.bd
  %i.bt = shl nuw i64 %i.bs, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i.i.i.i.i, i8 0, i64 %i.bt, i1 false), !tbaa !73
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %i.am, ptr %3, align 8
  store i64 %i.p, ptr %.sroa.5190.0..sroa_idx, align 8
  store ptr %i.ak, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ai, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %.047197, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.13.0..sroa_idx, align 8
  store i64 %i.ai, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.al, ptr %.sroa.15191.0..sroa_idx, align 8
  store i64 %i.ai, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %i.ag, ptr %4, align 8
  store i64 %i.q, ptr %.sroa.23.192..sroa_idx, align 8
  store i64 %i.p, ptr %.sroa.24.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25, i64 24, i1 false)
  store ptr %i.w, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27, i64 24, i1 false)
  store i64 %.neg, ptr %.sroa.28.192..sroa_idx, align 8
  store i64 %i.ad, ptr %.sroa.29.192..sroa_idx, align 8
  store i64 %i.y, ptr %.sroa.30.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !1727
  store float %i.u, ptr %i.j, align 8, !tbaa !1075, !alias.scope !1727
  store ptr %i.ab, ptr %i.k, align 8
  store i64 %i.q, ptr %.sroa.8175.32..sroa_idx, align 8
  store ptr %i.aa, ptr %.sroa.10177.32..sroa_idx, align 8
  store i64 %i.n, ptr %.sroa.11178.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12179.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7118, i64 32, i1 false)
  store ptr %i.w, ptr %.sroa.13180.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14181.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14181, i64 24, i1 false)
  store i64 0, ptr %.sroa.15182.32..sroa_idx, align 8
  store i64 %.047197, ptr %.sroa.16183.32..sroa_idx, align 8
  store i64 %i.y, ptr %.sroa.17184.32..sroa_idx, align 8
  store i64 %.neg, ptr %.sroa.18185.32..sroa_idx, align 8
  store i64 %i.y, ptr %.sroa.20187.32..sroa_idx, align 8
  call void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS6_IfLi1ELin1ELi1ELi1ELin1EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14181)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  %i.bu = icmp sgt i64 %i.d, %.047197
  br i1 %i.bu, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit
  %indvar209 = phi i64 [ %indvar.next210, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ 0, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %.0196 = phi i64 [ %i.gx, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ %i.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %i.bv = shl i64 %indvar209, 2
  %10 = sub i64 %7, %i.bv
  %i.bw = shl i64 %indvar209, 2                   ; 2 uses
  %i.bx = shl i64 %indvar209, 2
  %11 = sub i64 %7, %i.bx
  %i.by = load ptr, ptr %0, align 8, !tbaa !1682  ; 8 uses
  %i.bz = load i64, ptr %i.h, align 8, !tbaa !1685 ; 7 uses
  %i.ca = mul nsw i64 %i.bz, %.047197
  %i.cb = getelementptr [4 x i8], ptr %i.by, i64 %i.ca ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.cb, i64 %.0196 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !73 ; 10 uses
  %i.ce = mul nsw i64 %i.bz, %.0196
  %i.cf = getelementptr [4 x i8], ptr %i.by, i64 %i.ce ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %.0196
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !73
  %i.ci = fmul float %i.cd, %i.ch
  store float %i.ci, ptr %i.cc, align 4, !tbaa !73
  %i.cj = xor i64 %.0196, -1
  %i.ck = add i64 %i.c, %i.cj                     ; 10 uses
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %bb.d, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.cm = sub nsw i64 %i.bz, %i.ck                ; 4 uses
  %i.cn = getelementptr [4 x i8], ptr %i.cf, i64 %i.cm ; 10 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cm ; 11 uses
  %i.cp = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cq = and i64 %i.cp, 3
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.cr = lshr exact i64 %i.cp, 2
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = and i64 %i.cs, 3                        ; 2 uses
  %i.cu = call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.ck) ; 3 uses
  %i.cv = sub nsw i64 %i.ck, %i.cu                ; 3 uses
  %i.cw = sdiv i64 %i.cv, 4
  %i.cx = shl nuw nsw i64 %i.cw, 2
  %i.cy = or disjoint i64 %i.cx, %i.cu            ; 2 uses
  %.not195 = icmp eq i64 %i.ct, 0
  br i1 %.not195, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.cz = phi i64 [ %i.cy, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.d ] ; 3 uses
  %i.da = phi i64 [ %i.cv, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %.0.i.i.i.i.i.i.i207 = phi i64 [ %i.cu, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.d ] ; 10 uses
  %min.iters.check224 = icmp ult i64 %.0.i.i.i.i.i.i.i207, 8
  br i1 %min.iters.check224, label %.lr.ph.i.i.i.i.i.i.i.preheader240, label %vector.memcheck217

vector.memcheck217:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.db = mul i64 %8, %i.bz
  %i.dc = shl i64 %.0.i.i.i.i.i.i.i207, 2         ; 2 uses
  %i.dd = shl i64 %i.cm, 2                        ; 2 uses
  %i.de = getelementptr i8, ptr %i.by, i64 %i.db
  %i.df = getelementptr i8, ptr %i.de, i64 %i.dc
  %scevgep218 = getelementptr i8, ptr %i.df, i64 %i.dd
  %i.dg = mul i64 %i.bz, %10
  %i.dh = getelementptr i8, ptr %i.by, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.dc
  %scevgep219 = getelementptr i8, ptr %i.di, i64 %i.dd
  %bound0220 = icmp ult ptr %i.co, %scevgep219
  %bound1221 = icmp ult ptr %i.cn, %scevgep218
  %found.conflict222 = and i1 %bound0220, %bound1221
  br i1 %found.conflict222, label %.lr.ph.i.i.i.i.i.i.i.preheader240, label %vector.ph225

vector.ph225:                                     ; preds = %vector.memcheck217
  %n.vec226 = and i64 %.0.i.i.i.i.i.i.i207, -8    ; 3 uses
  %broadcast.splatinsert227 = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat228 = shufflevector <4 x float> %broadcast.splatinsert227, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph225
  %index230 = phi i64 [ 0, %vector.ph225 ], [ %index.next235, %vector.body229 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index230 ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index230 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load231.a = load <4 x float>, ptr %i.dk, align 4, !tbaa !73, !alias.scope !1730
  %wide.load232.a = load <4 x float>, ptr %i.dl, align 4, !tbaa !73, !alias.scope !1730
  %i.dm = fmul <4 x float> %broadcast.splat228, %wide.load231.a
  %i.dn = fmul <4 x float> %broadcast.splat228, %wide.load232.a
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load233 = load <4 x float>, ptr %i.dj, align 4, !tbaa !73, !alias.scope !1733, !noalias !1730
  %wide.load234 = load <4 x float>, ptr %i.do, align 4, !tbaa !73, !alias.scope !1733, !noalias !1730
  %i.dp = fadd <4 x float> %i.dm, %wide.load233
  %i.dq = fadd <4 x float> %i.dn, %wide.load234
  store <4 x float> %i.dp, ptr %i.dj, align 4, !tbaa !73, !alias.scope !1733, !noalias !1730
  store <4 x float> %i.dq, ptr %i.do, align 4, !tbaa !73, !alias.scope !1733, !noalias !1730
  %index.next235 = add nuw i64 %index230, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next235, %n.vec226
  br i1 %i.dr, label %middle.block236, label %vector.body229, !llvm.loop !1735

middle.block236:                                  ; preds = %vector.body229
  %cmp.n237 = icmp eq i64 %.0.i.i.i.i.i.i.i207, %n.vec226
  br i1 %cmp.n237, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader240

.lr.ph.i.i.i.i.i.i.i.preheader240:                ; preds = %vector.memcheck217, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block236
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck217 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec226, %middle.block236 ] ; 5 uses
  %.neg244 = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i207, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader240
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.05.i.i.i.i.i.i.i.ph
  %i.du = load float, ptr %i.dt, align 4, !tbaa !73
  %i.dv = fmul float %i.cd, %i.du
  %i.dw = load float, ptr %i.ds, align 4, !tbaa !73
  %i.dx = fadd float %i.dv, %i.dw
  store float %i.dx, ptr %i.ds, align 4, !tbaa !73
  %i.dy = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader240
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader240 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.dz = icmp eq i64 %.0.i.i.i.i.i.i.i207, %.neg244
  br i1 %i.dz, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.05.i.i.i.i.i.i.i
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !73
  %i.ed = fmul float %i.cd, %i.ec
  %i.ee = load float, ptr %i.ea, align 4, !tbaa !73
  %i.ef = fadd float %i.ed, %i.ee
  store float %i.ef, ptr %i.ea, align 4, !tbaa !73
  %i.eg = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.eg
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !73
  %i.ek = fmul float %i.cd, %i.ej
  %i.el = load float, ptr %i.eh, align 4, !tbaa !73
  %i.em = fadd float %i.ek, %i.el
  store float %i.em, ptr %i.eh, align 4, !tbaa !73
  %i.en = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.en, %.0.i.i.i.i.i.i.i207
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1736

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block236, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.eo = phi i64 [ %i.cy, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.cz, %middle.block236 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.ep = phi i64 [ %i.cv, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.da, %middle.block236 ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.0.i.i.i.i.i.i.i208 = phi i64 [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i207, %middle.block236 ], [ %.0.i.i.i.i.i.i.i207, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i207, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.eq = icmp sgt i64 %i.ep, 3
  br i1 %i.eq, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.er = insertelement <1 x float> poison, float %i.cd, i64 0
  %i.es = shufflevector <1 x float> %i.er, <1 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.et = icmp samesign ult i64 %i.eo, %i.ck
  br i1 %i.et, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.eu = sub nuw i64 %i.ck, %i.eo                ; 3 uses
  %min.iters.check = icmp ult i64 %i.eu, 12
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader239, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.ev = mul i64 %9, %i.bz                       ; 2 uses
  %i.ew = shl i64 %i.eo, 2                        ; 2 uses
  %i.ex = shl i64 %i.cm, 2                        ; 4 uses
  %i.ey = getelementptr i8, ptr %i.by, i64 %i.ev
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.ew
  %scevgep = getelementptr i8, ptr %i.ez, i64 %i.ex
  %i.fa = getelementptr i8, ptr %i.by, i64 %i.bw
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ev
  %scevgep211.a = getelementptr i8, ptr %i.fb, i64 %i.ex
  %i.fc = mul i64 %i.bz, %11                      ; 2 uses
  %i.fd = getelementptr i8, ptr %i.by, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.ew
  %scevgep212 = getelementptr i8, ptr %i.fe, i64 %i.ex
  %i.ff = getelementptr i8, ptr %i.by, i64 %i.bw
  %i.fg = getelementptr i8, ptr %i.ff, i64 %i.fc
  %scevgep213 = getelementptr i8, ptr %i.fg, i64 %i.ex
  %bound0 = icmp ult ptr %scevgep, %scevgep213
  %bound1 = icmp ult ptr %scevgep212, %scevgep211.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader239, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eu, 9223372036854775800     ; 3 uses
  %i.fh = add i64 %i.eo, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = add i64 %i.eo, %index                   ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.fi ; 3 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.fi ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load = load <4 x float>, ptr %i.fk, align 4, !tbaa !73, !alias.scope !1737
  %wide.load214.a = load <4 x float>, ptr %i.fl, align 4, !tbaa !73, !alias.scope !1737
  %i.fm = fmul <4 x float> %broadcast.splat, %wide.load
  %i.fn = fmul <4 x float> %broadcast.splat, %wide.load214.a
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %wide.load215 = load <4 x float>, ptr %i.fj, align 4, !tbaa !73, !alias.scope !1740, !noalias !1737
  %wide.load216 = load <4 x float>, ptr %i.fo, align 4, !tbaa !73, !alias.scope !1740, !noalias !1737
  %i.fp = fadd <4 x float> %i.fm, %wide.load215
  %i.fq = fadd <4 x float> %i.fn, %wide.load216
  store <4 x float> %i.fp, ptr %i.fj, align 4, !tbaa !73, !alias.scope !1740, !noalias !1737
  store <4 x float> %i.fq, ptr %i.fo, align 4, !tbaa !73, !alias.scope !1740, !noalias !1737
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !1742

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader239

.lr.ph.i17.i.i.i.i.i.i.preheader239:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.eo, %vector.memcheck ], [ %i.eo, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.fh, %middle.block ] ; 6 uses
  %i.fs = sub i64 %i.ck, %.05.i18.i.i.i.i.i.i.ph
  %.neg245 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter241 = and i64 %i.fs, 1
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader239
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.co, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !73
  %i.fw = fmul float %i.cd, %i.fv
  %i.fx = load float, ptr %i.ft, align 4, !tbaa !73
  %i.fy = fadd float %i.fw, %i.fx
  store float %i.fy, ptr %i.ft, align 4, !tbaa !73
  %i.fz = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader239
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader239 ], [ %i.fz, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.ga = icmp eq i64 %indvar209, %.neg245
  br i1 %i.ga, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.go, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.co, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !73
  %i.ge = fmul float %i.cd, %i.gd
  %i.gf = load float, ptr %i.gb, align 4, !tbaa !73
  %i.gg = fadd float %i.ge, %i.gf
  store float %i.gg, ptr %i.gb, align 4, !tbaa !73
  %i.gh = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.gh
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !73
  %i.gl = fmul float %i.cd, %i.gk
  %i.gm = load float, ptr %i.gi, align 4, !tbaa !73
  %i.gn = fadd float %i.gl, %i.gm
  store float %i.gn, ptr %i.gi, align 4, !tbaa !73
  %i.go = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.go, %i.ck
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !1743

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gv, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i208, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.021.i.i.i.i.i.i
  %i.gr = load <4 x float>, ptr %i.gq, align 1, !tbaa !32
  %i.gs = fmul <4 x float> %i.es, %i.gr
  %i.gt = load <4 x float>, ptr %i.gp, align 16, !tbaa !32
  %i.gu = fadd <4 x float> %i.gt, %i.gs
  store <4 x float> %i.gu, ptr %i.gp, align 16, !tbaa !32
  %i.gv = add nuw nsw i64 %.021.i.i.i.i.i.i, 4    ; 2 uses
  %i.gw = icmp slt i64 %i.gv, %i.eo
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1715

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %middle.block, %.lr.ph.i17.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph
  %i.gx = add nsw i64 %.0196, -1                  ; 2 uses
  %i.gy = icmp sgt i64 %i.gx, %.047197
  %indvar.next210 = add i64 %indvar209, 1
  br i1 %i.gy, label %.lr.ph, label %.loopexit, !llvm.loop !1744

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gz = load ptr, ptr %2, align 8, !tbaa !1303
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %.047197
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !73
  %i.hc = load ptr, ptr %0, align 8, !tbaa !1682
  %i.hd = load i64, ptr %i.h, align 8, !tbaa !1685
  %i.he = mul nsw i64 %i.hd, %.047197
  %i.hf = getelementptr [4 x i8], ptr %i.hc, i64 %i.he
  %i.hg = getelementptr [4 x i8], ptr %i.hf, i64 %.047197
  store float %i.hb, ptr %i.hg, align 4, !tbaa !73
  %i.hh = add nsw i64 %.047197, -1
  %i.hi = icmp sgt i64 %.047197, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hi, label %bb.b, label %._crit_edge, !llvm.loop !1745
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS6_IfLi1ELin1ELi1ELi1ELin1EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %.sroa.065.0.copyload = load ptr, ptr %0, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.566.0.copyload = load i64, ptr %.sroa.566.0..sroa_idx, align 8
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.667.0.copyload = load i64, ptr %.sroa.667.0..sroa_idx, align 8
  %.sroa.769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.769.0.copyload = load ptr, ptr %.sroa.769.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.055.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.758.0.copyload = load i64, ptr %.sroa.758.0..sroa_idx, align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load float, ptr %i.c, align 8, !tbaa !1075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.e = load float, ptr %3, align 4, !tbaa !73
  %i.f = fmul float %i.d, %i.e
  store float %i.f, ptr %i.a, align 4, !tbaa !73
  %i.g = icmp ugt i64 %.sroa.758.0.copyload, 4611686018427387903
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit: ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.055.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit
  %i.i = shl nuw i64 %.sroa.758.0.copyload, 2     ; 2 uses
  %i.j = icmp samesign ult i64 %.sroa.758.0.copyload, 32769
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %i.i, 15
  %i.l = alloca i8, i64 %i.k, align 16            ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.i) #21 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !9
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

bb.g:                                             ; preds = %bb.d, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit, %bb.e
  %i.p = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.sroa.055.0.copyload, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %i.r = icmp samesign ugt i64 %.sroa.758.0.copyload, 32768 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.769.0.copyload, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !71
  %i.u = load ptr, ptr %2, align 8, !tbaa !1746
  invoke void @_ZN5Eigen8internal32triangular_matrix_vector_productIlLi6EfLb0EfLb0ELi1ELi0EE3runEllPKflS4_lPflRS3_(i64 noundef %.sroa.667.0.copyload, i64 noundef %.sroa.566.0.copyload, ptr noundef %.sroa.065.0.copyload, i64 noundef %i.t, ptr noundef nonnull %i.q, i64 noundef 1, ptr noundef %i.u, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br i1 %i.r, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit25

bb.i:                                             ; preds = %bb.g
  br i1 %i.r, label %bb.j, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.p) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

bb.k:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.p) #20
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit25

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit25: ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal32triangular_matrix_vector_productIlLi6EfLb0EfLb0ELi1ELi0EE3runEllPKflS4_lPflRS3_(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef nonnull align 4 dereferenceable(4) %8) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.Eigen::internal::const_blas_data_mapper.2026", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::const_blas_data_mapper.2026", align 8 ; 5 uses
  %.sroa.speculated132 = tail call i64 @llvm.smin.i64(i64 %1, i64 %0) ; 4 uses
  %i.a = icmp sgt i64 %.sroa.speculated132, 0
  br i1 %i.a, label %.lr.ph146, label %._crit_edge147

.lr.ph146:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.b

._crit_edge147:                                   ; preds = %bb.k, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph146, %bb.k
  %indvars.iv = phi i64 [ %.sroa.speculated132, %.lr.ph146 ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.052144 = phi i64 [ 0, %.lr.ph146 ], [ %i.dv, %bb.k ] ; 6 uses
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 8) ; 2 uses
  %i.d = add i64 %smin, -2
  %i.e = add i64 %smin, -3
  %i.f = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.g = call i64 @llvm.umin.i64(i64 %i.f, i64 8)
  %i.h = sub nsw i64 %.sroa.speculated132, %.052144 ; 2 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.h, i64 8) ; 3 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.b
  %i.j = add i64 %.sroa.speculated, %.052144      ; 3 uses
  %i.k = sub i64 %1, %i.j                         ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.j, label %bb.k

.lr.ph:                                           ; preds = %bb.b, %bb.i
  %.0143 = phi i64 [ %i.dn, %bb.i ], [ 0, %bb.b ] ; 5 uses
  %i.m = sub i64 %i.d, %.0143                     ; 2 uses
  %i.n = sub i64 %i.e, %.0143
  %i.o = add nuw nsw i64 %.0143, %.052144         ; 5 uses
  %i.p = xor i64 %.0143, -1
  %i.q = add nsw i64 %.sroa.speculated, %i.p      ; 9 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = mul nsw i64 %i.o, %7
  br label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %i.s = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %i.t = load float, ptr %8, align 4, !tbaa !73
  %i.u = mul nsw i64 %i.o, %3
  %i.v = getelementptr inbounds [4 x i8], ptr %2, i64 %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.s ; 12 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s ; 12 uses
  %i.y = and i64 %i.q, 9223372036854775800        ; 4 uses
  %i.z = and i64 %i.q, 9223372036854775804        ; 3 uses
  %.not.i.i.i = icmp samesign ult i64 %i.q, 4
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load <4 x float>, ptr %i.w, align 1, !tbaa !32
  %i.ab = load <4 x float>, ptr %i.x, align 1, !tbaa !32
  %i.ac = fmul <4 x float> %i.aa, %i.ab           ; 3 uses
  %i.ad = icmp samesign ugt i64 %i.q, 7
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.af = load <4 x float>, ptr %i.ae, align 1, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ah = load <4 x float>, ptr %i.ag, align 1, !tbaa !32
  %i.ai = fmul <4 x float> %i.af, %i.ah           ; 2 uses
  %i.aj = icmp samesign ugt i64 %i.q, 15
  br i1 %i.aj, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.e
  %.075.lcssa.i.i.i = phi <4 x float> [ %i.ai, %bb.e ], [ %i.ay, %.lr.ph.i.i.i ]
  %.072.lcssa.i.i.i = phi <4 x float> [ %i.ac, %bb.e ], [ %i.ar, %.lr.ph.i.i.i ]
  %i.ak = fadd <4 x float> %.075.lcssa.i.i.i, %.072.lcssa.i.i.i ; 2 uses
  %i.al = icmp samesign ugt i64 %i.z, %i.y
  br i1 %i.al, label %bb.f, label %bb.g

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.05480.i.i.i = phi i64 [ %.054.i.i.i, %.lr.ph.i.i.i ], [ 8, %bb.e ] ; 4 uses
  %.054.in79.i.i.i = phi i64 [ %.05480.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %.07278.i.i.i = phi <4 x float> [ %i.ar, %.lr.ph.i.i.i ], [ %i.ac, %bb.e ]
  %.07577.i.i.i = phi <4 x float> [ %i.ay, %.lr.ph.i.i.i ], [ %i.ai, %bb.e ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.05480.i.i.i
  %i.an = load <4 x float>, ptr %i.am, align 1, !tbaa !32
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.05480.i.i.i
  %i.ap = load <4 x float>, ptr %i.ao, align 1, !tbaa !32
  %i.aq = fmul <4 x float> %i.an, %i.ap
  %i.ar = fadd <4 x float> %.07278.i.i.i, %i.aq   ; 2 uses
  %i.as = add nuw nsw i64 %.054.in79.i.i.i, 12    ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.as
  %i.au = load <4 x float>, ptr %i.at, align 1, !tbaa !32
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.as
  %i.aw = load <4 x float>, ptr %i.av, align 1, !tbaa !32
  %i.ax = fmul <4 x float> %i.au, %i.aw
  %i.ay = fadd <4 x float> %.07577.i.i.i, %i.ax   ; 2 uses
  %.054.i.i.i = add nuw nsw i64 %.05480.i.i.i, 8  ; 2 uses
  %i.az = icmp samesign ult i64 %.054.i.i.i, %i.y
  br i1 %i.az, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !1748

end_hunk_1
