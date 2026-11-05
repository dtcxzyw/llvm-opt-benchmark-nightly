Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/AABB?download=true
inline.NumInlined: 10877
inline.NumDeleted: 4724
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16update_primitiveINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEPS4_RKNS1_10MatrixBaseIS3_EERKNS8_IT_EEd:bb.a

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %14 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = fcmp ogt double %4, %5
  br i1 %i.h, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !109    ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !108
  %i.q = sext i32 %i.p to i64
  call void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEdS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %i.r = load double, ptr %i.g, align 8, !tbaa !48 ; 2 uses
  %i.s = fcmp olt double %i.r, %5
  br i1 %i.s, label %bb.d, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.o, align 8, !tbaa !85
  store i32 %i.t, ptr %6, align 4, !tbaa !85
  %i.u = load <2 x double>, ptr %14, align 16, !tbaa !46
  store <2 x double> %i.u, ptr %7, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.x = load double, ptr %i.w, align 16, !tbaa !48
  store double %i.x, ptr %i.v, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit: ; preds = %bb.c, %bb.d
  %.6 = phi double [ %i.r, %bb.d ], [ %5, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ar

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load double, ptr %3, align 8, !tbaa !48  ; 6 uses
  %i.aa = load double, ptr %i.y, align 8, !tbaa !48
  %i.ab = fcmp ugt double %i.aa, %i.z
  br i1 %i.ab, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %i.af = load double, ptr %i.ac, align 8, !tbaa !48
  %i.ag = fcmp ugt double %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !48 ; 2 uses
  %i.ak = load double, ptr %i.ah, align 8, !tbaa !48
  %i.al = fcmp ugt double %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.an = load double, ptr %i.am, align 8
  %i.ao = fcmp ugt double %i.z, %i.an
  %or.cond.i = select i1 %i.al, i1 true, i1 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = fcmp ugt double %i.ae, %i.aq
  %or.cond17.i = select i1 %or.cond.i, i1 true, i1 %i.ar
  br i1 %or.cond17.i, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.at = load double, ptr %i.as, align 8, !tbaa !48
  %i.au = fcmp ugt double %i.aj, %i.at
  br i1 %i.au, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.av = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %13), !inline_history !485 ; 2 uses
  %i.aw = fcmp olt double %i.av, %5
  br i1 %i.aw, label %bb.g, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.ax = load i32, ptr %i.f, align 4, !tbaa !85
  store i32 %i.ax, ptr %6, align 4, !tbaa !85
  %i.ay = load <2 x double>, ptr %13, align 16, !tbaa !46
  store <2 x double> %i.ay, ptr %7, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bb = load double, ptr %i.ba, align 16, !tbaa !48
  store double %i.bb, ptr %i.az, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.8 = phi double [ %i.av, %bb.g ], [ %5, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !110
  %.pre162 = load double, ptr %3, align 8, !tbaa !48
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i, %bb.e, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  %i.bc = phi double [ %.pre162, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.z, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.z, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.z, %bb.e ], [ %i.z, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 6 uses
  %i.bd = phi ptr [ %.pre, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.l, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.l, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.l, %bb.e ], [ %i.l, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0161 = phi double [ %.8, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %5, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %5, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %5, %bb.e ], [ %5, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0159 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ true, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ true, %bb.e ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load double, ptr %i.be, align 8, !tbaa !48
  %i.bg = fcmp ugt double %i.bf, %i.bc
  br i1 %i.bg, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50: ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !48 ; 2 uses
  %i.bk = load double, ptr %i.bh, align 8, !tbaa !48
  %i.bl = fcmp ugt double %i.bk, %i.bj
  br i1 %i.bl, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !48 ; 2 uses
  %i.bp = load double, ptr %i.bm, align 8, !tbaa !48
  %i.bq = fcmp ugt double %i.bp, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bs = load double, ptr %i.br, align 8
  %i.bt = fcmp ugt double %i.bc, %i.bs
  %or.cond.i52 = select i1 %i.bq, i1 true, i1 %i.bt
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bv = load double, ptr %i.bu, align 8
  %i.bw = fcmp ugt double %i.bj, %i.bv
  %or.cond17.i53 = select i1 %or.cond.i52, i1 true, i1 %i.bw
  br i1 %or.cond17.i53, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.by = load double, ptr %i.bx, align 8, !tbaa !48
  %i.bz = fcmp ugt double %i.bo, %i.by
  br i1 %i.bz, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.ca = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.bd, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.0161, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %12), !inline_history !486 ; 2 uses
  %i.cb = fcmp olt double %i.ca, %.0161
  br i1 %i.cb, label %bb.i, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59

bb.i:                                             ; preds = %bb.h
  %i.cc = load i32, ptr %i.e, align 4, !tbaa !85
  store i32 %i.cc, ptr %6, align 4, !tbaa !85
  %i.cd = load <2 x double>, ptr %12, align 16, !tbaa !46
  store <2 x double> %i.cd, ptr %7, align 8, !tbaa !46
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cg = load double, ptr %i.cf, align 16, !tbaa !48
  store double %i.cg, ptr %i.ce, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59: ; preds = %bb.h, %bb.i
  %.9 = phi double [ %i.ca, %bb.i ], [ %.0161, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.pre163 = load double, ptr %3, align 8, !tbaa !48
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54
  %i.ch = phi double [ %.pre163, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %i.bc, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ %i.bc, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ %i.bc, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ %i.bc, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 8 uses
  %.1 = phi double [ %.9, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %.0161, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ %.0161, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ %.0161, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ %.0161, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 10 uses
  %.0160 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ true, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ true, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !109   ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !48 ; 2 uses
  %i.cl = fcmp ogt double %i.ck, %i.ch
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread
  %i.cm = fsub double %i.ck, %i.ch                ; 2 uses
  %15 = call double @llvm.fmuladd.f64(double %i.cm, double %i.cm, double 0.000000e+00)
  br label %bb.m

bb.k:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.co = load double, ptr %i.cn, align 8, !tbaa !48 ; 2 uses
  %i.cp = fcmp ogt double %i.ch, %i.co
  br i1 %i.cp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cq = fsub double %i.ch, %i.co                ; 2 uses
  %16 = call double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double 0.000000e+00)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1.i = phi double [ %15, %bb.j ], [ %16, %bb.l ], [ 0.000000e+00, %bb.k ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !48 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !48 ; 8 uses
  %i.cv = fcmp ogt double %i.cs, %i.cu
  br i1 %i.cv, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !48 ; 2 uses
  %i.cy = fcmp ogt double %i.cu, %i.cx
  br i1 %i.cy, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cz = fsub double %i.cu, %i.cx                ; 2 uses
  %i.da = call double @llvm.fmuladd.f64(double %i.cz, double %i.cz, double %.1.i)
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.db = fsub double %i.cs, %i.cu                ; 2 uses
  %i.dc = call double @llvm.fmuladd.f64(double %i.db, double %i.db, double %.1.i)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.1.1.i = phi double [ %i.dc, %bb.p ], [ %i.da, %bb.o ], [ %.1.i, %bb.n ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.de = load double, ptr %i.dd, align 8, !tbaa !48 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dg = load double, ptr %i.df, align 8, !tbaa !48 ; 8 uses
  %i.dh = fcmp ogt double %i.de, %i.dg
  br i1 %i.dh, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.dj = load double, ptr %i.di, align 8, !tbaa !48 ; 2 uses
  %i.dk = fcmp ogt double %i.dg, %i.dj
  br i1 %i.dk, label %bb.s, label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

bb.s:                                             ; preds = %bb.r
  %i.dl = fsub double %i.dg, %i.dj                ; 2 uses
  %i.dm = call double @llvm.fmuladd.f64(double %i.dl, double %i.dl, double %.1.1.i)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

bb.t:                                             ; preds = %bb.q
  %i.dn = fsub double %i.de, %i.dg                ; 2 uses
  %i.do = call double @llvm.fmuladd.f64(double %i.dn, double %i.dn, double %.1.1.i)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.r, %bb.s, %bb.t
  %.1.2.i = phi double [ %i.do, %bb.t ], [ %i.dm, %bb.s ], [ %.1.1.i, %bb.r ] ; 3 uses
  %i.dp = load ptr, ptr %i.k, align 8, !tbaa !110 ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !48 ; 2 uses
  %i.ds = fcmp ogt double %i.dr, %i.ch
  br i1 %i.ds, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit
  %i.dt = fsub double %i.dr, %i.ch                ; 2 uses
  %17 = call double @llvm.fmuladd.f64(double %i.dt, double %i.dt, double 0.000000e+00)
  br label %bb.x

bb.v:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dv = load double, ptr %i.du, align 8, !tbaa !48 ; 2 uses
  %i.dw = fcmp ogt double %i.ch, %i.dv
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dx = fsub double %i.ch, %i.dv                ; 2 uses
  %18 = call double @llvm.fmuladd.f64(double %i.dx, double %i.dx, double 0.000000e+00)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.1.i55 = phi double [ %17, %bb.u ], [ %18, %bb.w ], [ 0.000000e+00, %bb.v ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !48 ; 2 uses
  %i.ea = fcmp ogt double %i.dz, %i.cu
  br i1 %i.ea, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !48 ; 2 uses
  %i.ed = fcmp ogt double %i.cu, %i.ec
  br i1 %i.ed, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ee = fsub double %i.cu, %i.ec                ; 2 uses
  %i.ef = call double @llvm.fmuladd.f64(double %i.ee, double %i.ee, double %.1.i55)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.eg = fsub double %i.dz, %i.cu                ; 2 uses
  %i.eh = call double @llvm.fmuladd.f64(double %i.eg, double %i.eg, double %.1.i55)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.1.1.i56 = phi double [ %i.eh, %bb.aa ], [ %i.ef, %bb.z ], [ %.1.i55, %bb.y ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !48 ; 2 uses
  %i.ek = fcmp ogt double %i.ej, %i.dg
  br i1 %i.ek, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.em = load double, ptr %i.el, align 8, !tbaa !48 ; 2 uses
  %i.en = fcmp ogt double %i.dg, %i.em
  br i1 %i.en, label %bb.ad, label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58

bb.ad:                                            ; preds = %bb.ac
  %i.eo = fsub double %i.dg, %i.em                ; 2 uses
  %i.ep = call double @llvm.fmuladd.f64(double %i.eo, double %i.eo, double %.1.1.i56)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58

bb.ae:                                            ; preds = %bb.ab
  %i.eq = fsub double %i.ej, %i.dg                ; 2 uses
  %i.er = call double @llvm.fmuladd.f64(double %i.eq, double %i.eq, double %.1.1.i56)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58

_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58: ; preds = %bb.ac, %bb.ad, %bb.ae
  %.1.2.i57 = phi double [ %i.er, %bb.ae ], [ %i.ep, %bb.ad ], [ %.1.1.i56, %bb.ac ] ; 3 uses
  %i.es = fcmp olt double %.1.2.i, %.1.2.i57
  br i1 %i.es, label %bb.af, label %bb.al

bb.af:                                            ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58
  %i.et = fcmp olt double %.1.2.i, %.1
  %or.cond = select i1 %.0159, i1 %i.et, i1 false
  br i1 %or.cond, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.eu = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.ci, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %11), !inline_history !485 ; 2 uses
  %i.ev = fcmp olt double %i.eu, %.1
  br i1 %i.ev, label %bb.ah, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60

bb.ah:                                            ; preds = %bb.ag
  %i.ew = load i32, ptr %i.d, align 4, !tbaa !85
  store i32 %i.ew, ptr %6, align 4, !tbaa !85
  %i.ex = load <2 x double>, ptr %11, align 16, !tbaa !46
  store <2 x double> %i.ex, ptr %7, align 8, !tbaa !46
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fa = load double, ptr %i.ez, align 16, !tbaa !48
  store double %i.fa, ptr %i.ey, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60: ; preds = %bb.ag, %bb.ah
  %.10 = phi double [ %i.eu, %bb.ah ], [ %.1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60, %bb.af
  %.2 = phi double [ %.10, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60 ], [ %.1, %bb.af ] ; 5 uses
  %i.fb = fcmp olt double %.1.2.i57, %.2
  %or.cond43 = and i1 %.0160, %i.fb
  br i1 %or.cond43, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.fc = load ptr, ptr %i.k, align 8, !tbaa !110
  %i.fd = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.fc, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !486 ; 2 uses
  %i.fe = fcmp olt double %i.fd, %.2
  br i1 %i.fe, label %bb.ak, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61

bb.ak:                                            ; preds = %bb.aj
  %i.ff = load i32, ptr %i.c, align 4, !tbaa !85
  store i32 %i.ff, ptr %6, align 4, !tbaa !85
  %i.fg = load <2 x double>, ptr %10, align 16, !tbaa !46
  store <2 x double> %i.fg, ptr %7, align 8, !tbaa !46
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fj = load double, ptr %i.fi, align 16, !tbaa !48
  store double %i.fj, ptr %i.fh, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61: ; preds = %bb.aj, %bb.ak
  %.11 = phi double [ %i.fd, %bb.ak ], [ %.2, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.ar

bb.al:                                            ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58
  %i.fk = fcmp olt double %.1.2.i57, %.1
  %or.cond46 = and i1 %.0160, %i.fk
  br i1 %or.cond46, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.fl = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.dp, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !486 ; 2 uses
  %i.fm = fcmp olt double %i.fl, %.1
  br i1 %i.fm, label %bb.an, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62

bb.an:                                            ; preds = %bb.am
  %i.fn = load i32, ptr %i.b, align 4, !tbaa !85
  store i32 %i.fn, ptr %6, align 4, !tbaa !85
  %i.fo = load <2 x double>, ptr %9, align 16, !tbaa !46
  store <2 x double> %i.fo, ptr %7, align 8, !tbaa !46
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fr = load double, ptr %i.fq, align 16, !tbaa !48
  store double %i.fr, ptr %i.fp, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62: ; preds = %bb.am, %bb.an
  %.12 = phi double [ %i.fl, %bb.an ], [ %.1, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62, %bb.al
  %.3 = phi double [ %.12, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62 ], [ %.1, %bb.al ] ; 5 uses
  %i.fs = fcmp olt double %.1.2.i, %.3
  %or.cond49 = select i1 %.0159, i1 %i.fs, i1 false
  br i1 %or.cond49, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.ft = load ptr, ptr %0, align 8, !tbaa !109
  %i.fu = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %8), !inline_history !485 ; 2 uses
  %i.fv = fcmp olt double %i.fu, %.3
  br i1 %i.fv, label %bb.aq, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63

bb.aq:                                            ; preds = %bb.ap
  %i.fw = load i32, ptr %i.a, align 4, !tbaa !85
  store i32 %i.fw, ptr %6, align 4, !tbaa !85
  %i.fx = load <2 x double>, ptr %8, align 16, !tbaa !46
  store <2 x double> %i.fx, ptr %7, align 8, !tbaa !46
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ga = load double, ptr %i.fz, align 16, !tbaa !48
  store double %i.ga, ptr %i.fy, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63: ; preds = %bb.ap, %bb.aq
  %.13 = phi double [ %i.fu, %bb.aq ], [ %.3, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit, %bb.ao, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63, %bb.ai, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61, %bb.a
  %.0 = phi double [ %4, %bb.a ], [ %.6, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit ], [ %.11, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61 ], [ %.2, %bb.ai ], [ %.13, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63 ], [ %.3, %bb.ao ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE16squared_distanceINS2_IiLin1ELi2ELi0ELin1ELi2EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 16 dereferenceable(16) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.Eigen::Matrix.91", align 16 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.Eigen::Matrix.91", align 16 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.Eigen::Matrix.91", align 16 ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.Eigen::Matrix.91", align 16 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.Eigen::Matrix.91", align 16 ; 5 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.Eigen::Matrix.91", align 16 ; 5 uses
  %14 = alloca %"class.Eigen::Matrix.91", align 16 ; 4 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = fcmp ogt double %4, %5
  br i1 %i.h, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 16, !tbaa !151   ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = load i32, ptr %i.o, align 16, !tbaa !150
  %i.q = sext i32 %i.p to i64
  call void @_ZN3igl30point_simplex_squared_distanceILi2EN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEENS2_IdLin1ELi2ELi0ELin1ELi2EEENS2_IiLin1ELi2ELi0ELin1ELi2EEEdS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 16 dereferenceable(16) %14)
  %i.r = load double, ptr %i.g, align 8, !tbaa !48 ; 2 uses
  %i.s = fcmp olt double %i.r, %5
  br i1 %i.s, label %bb.d, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE21leaf_squared_distanceINS2_IiLin1ELi2ELi0ELin1ELi2EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.o, align 16, !tbaa !85
  store i32 %i.t, ptr %6, align 4, !tbaa !85
  %i.u = load <2 x double>, ptr %14, align 16, !tbaa !46
  store <2 x double> %i.u, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE21leaf_squared_distanceINS2_IiLin1ELi2ELi0ELin1ELi2EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE21leaf_squared_distanceINS2_IiLin1ELi2ELi0ELin1ELi2EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit: ; preds = %bb.c, %bb.d
  %.6 = phi double [ %i.r, %bb.d ], [ %5, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.aj

bb.e:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.w = load double, ptr %3, align 16, !tbaa !48 ; 5 uses
  %i.x = load double, ptr %i.v, align 8, !tbaa !48
  %i.y = fcmp ugt double %i.x, %i.w
  br i1 %i.y, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  %i.ac = load double, ptr %i.z, align 8, !tbaa !48
  %i.ad = fcmp ugt double %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.af = load double, ptr %i.ae, align 8
  %i.ag = fcmp ugt double %i.w, %i.af
  %or.cond.i = select i1 %i.ad, i1 true, i1 %i.ag
  br i1 %or.cond.i, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !48
  %i.aj = fcmp ugt double %i.ab, %i.ai
  br i1 %i.aj, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !143
  %i.ak = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE16squared_distanceINS2_IiLin1ELi2ELi0ELin1ELi2EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 16 dereferenceable(16) %13), !inline_history !487 ; 2 uses
  %i.al = fcmp olt double %i.ak, %5
  br i1 %i.al, label %bb.g, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr %i.f, align 4, !tbaa !85
  store i32 %i.am, ptr %6, align 4, !tbaa !85
  %i.an = load <2 x double>, ptr %13, align 16, !tbaa !46
  store <2 x double> %i.an, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.8 = phi double [ %i.ak, %bb.g ], [ %5, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !152
  %.pre159 = load double, ptr %3, align 16, !tbaa !48
  br label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread

_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread: ; preds = %bb.e, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  %i.ao = phi double [ %.pre159, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.w, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.w, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i ], [ %i.w, %bb.e ] ; 5 uses
  %i.ap = phi ptr [ %.pre, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.l, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.l, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i ], [ %i.l, %bb.e ] ; 5 uses
  %.0158 = phi double [ %.8, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %5, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %5, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i ], [ %5, %bb.e ] ; 6 uses
  %.0156 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ true, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i ], [ true, %bb.e ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !48
  %i.as = fcmp ugt double %i.ar, %i.ao
  br i1 %i.as, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50: ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !48 ; 2 uses
  %i.aw = load double, ptr %i.at, align 8, !tbaa !48
  %i.ax = fcmp ugt double %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.az = load double, ptr %i.ay, align 8
  %i.ba = fcmp ugt double %i.ao, %i.az
  %or.cond.i51 = select i1 %i.ax, i1 true, i1 %i.ba
  br i1 %or.cond.i51, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52

_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !48
  %i.bd = fcmp ugt double %i.av, %i.bc
  br i1 %i.bd, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !143
  %i.be = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE16squared_distanceINS2_IiLin1ELi2ELi0ELin1ELi2EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.ap, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %.0158, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 16 dereferenceable(16) %12), !inline_history !488 ; 2 uses
  %i.bf = fcmp olt double %i.be, %.0158
  br i1 %i.bf, label %bb.i, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56

bb.i:                                             ; preds = %bb.h
  %i.bg = load i32, ptr %i.e, align 4, !tbaa !85
  store i32 %i.bg, ptr %6, align 4, !tbaa !85
  %i.bh = load <2 x double>, ptr %12, align 16, !tbaa !46
  store <2 x double> %i.bh, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56: ; preds = %bb.h, %bb.i
  %.9 = phi double [ %i.be, %bb.i ], [ %.0158, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.pre160 = load double, ptr %3, align 16, !tbaa !48
  br label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread

_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread: ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52
  %i.bi = phi double [ %.pre160, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56 ], [ %i.ao, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52 ], [ %i.ao, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50 ], [ %i.ao, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ] ; 8 uses
  %.1 = phi double [ %.9, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56 ], [ %.0158, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52 ], [ %.0158, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50 ], [ %.0158, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ] ; 10 uses
  %.0157 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56 ], [ true, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52 ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50 ], [ true, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ] ; 2 uses
  %i.bj = load ptr, ptr %0, align 16, !tbaa !151  ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !48 ; 2 uses
  %i.bm = fcmp ogt double %i.bl, %i.bi
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread
  %i.bn = fsub double %i.bl, %i.bi                ; 2 uses
  %15 = call double @llvm.fmuladd.f64(double %i.bn, double %i.bn, double 0.000000e+00)
  br label %bb.m

bb.k:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !48 ; 2 uses
  %i.bq = fcmp ogt double %i.bi, %i.bp
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = fsub double %i.bi, %i.bp                ; 2 uses
  %16 = call double @llvm.fmuladd.f64(double %i.br, double %i.br, double 0.000000e+00)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1.i = phi double [ %15, %bb.j ], [ %16, %bb.l ], [ 0.000000e+00, %bb.k ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !48 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !48 ; 8 uses
  %i.bw = fcmp ogt double %i.bt, %i.bv
  br i1 %i.bw, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.by = load double, ptr %i.bx, align 8, !tbaa !48 ; 2 uses
  %i.bz = fcmp ogt double %i.bv, %i.by
  br i1 %i.bz, label %bb.o, label %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

bb.o:                                             ; preds = %bb.n
  %i.ca = fsub double %i.bv, %i.by                ; 2 uses
  %i.cb = call double @llvm.fmuladd.f64(double %i.ca, double %i.ca, double %.1.i)
  br label %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

bb.p:                                             ; preds = %bb.m
  %i.cc = fsub double %i.bt, %i.bv                ; 2 uses
  %i.cd = call double @llvm.fmuladd.f64(double %i.cc, double %i.cc, double %.1.i)
  br label %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.n, %bb.o, %bb.p
  %.1.1.i = phi double [ %i.cd, %bb.p ], [ %i.cb, %bb.o ], [ %.1.i, %bb.n ] ; 3 uses
  %i.ce = load ptr, ptr %i.k, align 8, !tbaa !152 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !48 ; 2 uses
  %i.ch = fcmp ogt double %i.cg, %i.bi
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit
  %i.ci = fsub double %i.cg, %i.bi                ; 2 uses
  %17 = call double @llvm.fmuladd.f64(double %i.ci, double %i.ci, double 0.000000e+00)
  br label %bb.t

bb.r:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !48 ; 2 uses
  %i.cl = fcmp ogt double %i.bi, %i.ck
  br i1 %i.cl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cm = fsub double %i.bi, %i.ck                ; 2 uses
  %18 = call double @llvm.fmuladd.f64(double %i.cm, double %i.cm, double 0.000000e+00)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.1.i53 = phi double [ %17, %bb.q ], [ %18, %bb.s ], [ 0.000000e+00, %bb.r ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.co = load double, ptr %i.cn, align 8, !tbaa !48 ; 2 uses
  %i.cp = fcmp ogt double %i.co, %i.bv
  br i1 %i.cp, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !48 ; 2 uses
  %i.cs = fcmp ogt double %i.bv, %i.cr
  br i1 %i.cs, label %bb.v, label %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55

bb.v:                                             ; preds = %bb.u
  %i.ct = fsub double %i.bv, %i.cr                ; 2 uses
  %i.cu = call double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double %.1.i53)
  br label %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55

bb.w:                                             ; preds = %bb.t
  %i.cv = fsub double %i.co, %i.bv                ; 2 uses
  %i.cw = call double @llvm.fmuladd.f64(double %i.cv, double %i.cv, double %.1.i53)
  br label %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55

_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55: ; preds = %bb.u, %bb.v, %bb.w
  %.1.1.i54 = phi double [ %i.cw, %bb.w ], [ %i.cu, %bb.v ], [ %.1.i53, %bb.u ] ; 3 uses
  %i.cx = fcmp olt double %.1.1.i, %.1.1.i54
  br i1 %i.cx, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55
  %i.cy = fcmp olt double %.1.1.i, %.1
  %or.cond = and i1 %.0156, %i.cy
  br i1 %or.cond, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !143
  %i.cz = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE16squared_distanceINS2_IiLin1ELi2ELi0ELin1ELi2EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 16 dereferenceable(16) %11), !inline_history !487 ; 2 uses
  %i.da = fcmp olt double %i.cz, %.1
  br i1 %i.da, label %bb.z, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit57

bb.z:                                             ; preds = %bb.y
  %i.db = load i32, ptr %i.d, align 4, !tbaa !85
  store i32 %i.db, ptr %6, align 4, !tbaa !85
  %i.dc = load <2 x double>, ptr %11, align 16, !tbaa !46
  store <2 x double> %i.dc, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit57

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit57: ; preds = %bb.y, %bb.z
  %.10 = phi double [ %i.cz, %bb.z ], [ %.1, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit57, %bb.x
  %.2 = phi double [ %.10, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit57 ], [ %.1, %bb.x ] ; 5 uses
  %i.dd = fcmp olt double %.1.1.i54, %.2
  %or.cond43 = and i1 %.0157, %i.dd
  br i1 %or.cond43, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !143
  %i.de = load ptr, ptr %i.k, align 8, !tbaa !152
  %i.df = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE16squared_distanceINS2_IiLin1ELi2ELi0ELin1ELi2EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.de, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %.2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %10), !inline_history !488 ; 2 uses
  %i.dg = fcmp olt double %i.df, %.2
  br i1 %i.dg, label %bb.ac, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58

bb.ac:                                            ; preds = %bb.ab
  %i.dh = load i32, ptr %i.c, align 4, !tbaa !85
  store i32 %i.dh, ptr %6, align 4, !tbaa !85
  %i.di = load <2 x double>, ptr %10, align 16, !tbaa !46
  store <2 x double> %i.di, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58: ; preds = %bb.ab, %bb.ac
  %.11 = phi double [ %i.df, %bb.ac ], [ %.2, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.aj

bb.ad:                                            ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55
  %i.dj = fcmp olt double %.1.1.i54, %.1
  %or.cond46 = and i1 %.0157, %i.dj
  br i1 %or.cond46, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !143
  %i.dk = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE16squared_distanceINS2_IiLin1ELi2ELi0ELin1ELi2EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.ce, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 16 dereferenceable(16) %9), !inline_history !488 ; 2 uses
  %i.dl = fcmp olt double %i.dk, %.1
  br i1 %i.dl, label %bb.af, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59

bb.af:                                            ; preds = %bb.ae
  %i.dm = load i32, ptr %i.b, align 4, !tbaa !85
  store i32 %i.dm, ptr %6, align 4, !tbaa !85
  %i.dn = load <2 x double>, ptr %9, align 16, !tbaa !46
  store <2 x double> %i.dn, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59: ; preds = %bb.ae, %bb.af
  %.12 = phi double [ %i.dk, %bb.af ], [ %.1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59, %bb.ad
  %.3 = phi double [ %.12, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %.1, %bb.ad ] ; 5 uses
  %i.do = fcmp olt double %.1.1.i, %.3
  %or.cond49 = and i1 %.0156, %i.do
  br i1 %or.cond49, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !143
  %i.dp = load ptr, ptr %0, align 16, !tbaa !151
  %i.dq = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE16squared_distanceINS2_IiLin1ELi2ELi0ELin1ELi2EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.dp, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %.3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %8), !inline_history !487 ; 2 uses
  %i.dr = fcmp olt double %i.dq, %.3
  br i1 %i.dr, label %bb.ai, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60

bb.ai:                                            ; preds = %bb.ah
  %i.ds = load i32, ptr %i.a, align 4, !tbaa !85
  store i32 %i.ds, ptr %6, align 4, !tbaa !85
  %i.dt = load <2 x double>, ptr %8, align 16, !tbaa !46
  store <2 x double> %i.dt, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60: ; preds = %bb.ah, %bb.ai
  %.13 = phi double [ %i.dq, %bb.ai ], [ %.3, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE21leaf_squared_distanceINS2_IiLin1ELi2ELi0ELin1ELi2EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit, %bb.ag, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60, %bb.aa, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58, %bb.a
  %.0 = phi double [ %4, %bb.a ], [ %.6, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE21leaf_squared_distanceINS2_IiLin1ELi2ELi0ELin1ELi2EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit ], [ %.11, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58 ], [ %.2, %bb.aa ], [ %.13, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60 ], [ %.3, %bb.ag ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.157", align 8 ; 7 uses
  %4 = alloca %"class.Eigen::Matrix.157", align 8 ; 7 uses
  %5 = alloca %"class.Eigen::Matrix.160", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi0ELin1ELi3EEES3_S3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS8_IT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EEi(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef 0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !163
  call void @free(ptr noundef %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.b = load ptr, ptr %4, align 8, !tbaa !165
  call void @free(ptr noundef %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.c = load ptr, ptr %3, align 8, !tbaa !165
  call void @free(ptr noundef %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !163
  call void @free(ptr noundef %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.f = load ptr, ptr %4, align 8, !tbaa !165
  call void @free(ptr noundef %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.g = load ptr, ptr %3, align 8, !tbaa !165
  call void @free(ptr noundef %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi0ELin1ELi3EEES3_S3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS8_IT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EEi(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix.160", align 8 ; 7 uses
  %8 = alloca %"class.Eigen::Matrix.157", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Matrix.277", align 8 ; 10 uses
  %10 = alloca %"class.Eigen::Matrix.157", align 8 ; 7 uses
  %11 = alloca %"class.Eigen::Matrix.277", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 -1, ptr %i.a, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %i.b, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.c, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRiRNS1_15PlainObjectBaseISF_EE:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %14 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = fcmp ogt double %4, %5
  br i1 %i.h, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !62     ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !63
  %i.q = sext i32 %i.p to i64
  call void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %i.r = load double, ptr %i.g, align 8, !tbaa !48 ; 2 uses
  %i.s = fcmp olt double %i.r, %5
  br i1 %i.s, label %bb.d, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE21leaf_squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.o, align 8, !tbaa !85
  store i32 %i.t, ptr %6, align 4, !tbaa !85
  %i.u = load <2 x double>, ptr %14, align 16, !tbaa !46
  store <2 x double> %i.u, ptr %7, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.x = load double, ptr %i.w, align 16, !tbaa !48
  store double %i.x, ptr %i.v, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE21leaf_squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE21leaf_squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit: ; preds = %bb.c, %bb.d
  %.6 = phi double [ %i.r, %bb.d ], [ %5, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ar

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load double, ptr %3, align 8, !tbaa !48  ; 6 uses
  %i.aa = load double, ptr %i.y, align 8, !tbaa !48
  %i.ab = fcmp ugt double %i.aa, %i.z
  br i1 %i.ab, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %i.af = load double, ptr %i.ac, align 8, !tbaa !48
  %i.ag = fcmp ugt double %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !48 ; 2 uses
  %i.ak = load double, ptr %i.ah, align 8, !tbaa !48
  %i.al = fcmp ugt double %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.an = load double, ptr %i.am, align 8
  %i.ao = fcmp ugt double %i.z, %i.an
  %or.cond.i = select i1 %i.al, i1 true, i1 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = fcmp ugt double %i.ae, %i.aq
  %or.cond17.i = select i1 %or.cond.i, i1 true, i1 %i.ar
  br i1 %or.cond17.i, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.at = load double, ptr %i.as, align 8, !tbaa !48
  %i.au = fcmp ugt double %i.aj, %i.at
  br i1 %i.au, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.av = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %13), !inline_history !561 ; 2 uses
  %i.aw = fcmp olt double %i.av, %5
  br i1 %i.aw, label %bb.g, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.ax = load i32, ptr %i.f, align 4, !tbaa !85
  store i32 %i.ax, ptr %6, align 4, !tbaa !85
  %i.ay = load <2 x double>, ptr %13, align 16, !tbaa !46
  store <2 x double> %i.ay, ptr %7, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bb = load double, ptr %i.ba, align 16, !tbaa !48
  store double %i.bb, ptr %i.az, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.8 = phi double [ %i.av, %bb.g ], [ %5, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !81
  %.pre162 = load double, ptr %3, align 8, !tbaa !48
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i, %bb.e, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  %i.bc = phi double [ %.pre162, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.z, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.z, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.z, %bb.e ], [ %i.z, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 6 uses
  %i.bd = phi ptr [ %.pre, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.l, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.l, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.l, %bb.e ], [ %i.l, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0161 = phi double [ %.8, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %5, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %5, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %5, %bb.e ], [ %5, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0159 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ true, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ true, %bb.e ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load double, ptr %i.be, align 8, !tbaa !48
  %i.bg = fcmp ugt double %i.bf, %i.bc
  br i1 %i.bg, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50: ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !48 ; 2 uses
  %i.bk = load double, ptr %i.bh, align 8, !tbaa !48
  %i.bl = fcmp ugt double %i.bk, %i.bj
  br i1 %i.bl, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !48 ; 2 uses
  %i.bp = load double, ptr %i.bm, align 8, !tbaa !48
  %i.bq = fcmp ugt double %i.bp, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bs = load double, ptr %i.br, align 8
  %i.bt = fcmp ugt double %i.bc, %i.bs
  %or.cond.i52 = select i1 %i.bq, i1 true, i1 %i.bt
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bv = load double, ptr %i.bu, align 8
  %i.bw = fcmp ugt double %i.bj, %i.bv
  %or.cond17.i53 = select i1 %or.cond.i52, i1 true, i1 %i.bw
  br i1 %or.cond17.i53, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.by = load double, ptr %i.bx, align 8, !tbaa !48
  %i.bz = fcmp ugt double %i.bo, %i.by
  br i1 %i.bz, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.ca = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.bd, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.0161, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %12), !inline_history !562 ; 2 uses
  %i.cb = fcmp olt double %i.ca, %.0161
  br i1 %i.cb, label %bb.i, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59

bb.i:                                             ; preds = %bb.h
  %i.cc = load i32, ptr %i.e, align 4, !tbaa !85
  store i32 %i.cc, ptr %6, align 4, !tbaa !85
  %i.cd = load <2 x double>, ptr %12, align 16, !tbaa !46
  store <2 x double> %i.cd, ptr %7, align 8, !tbaa !46
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cg = load double, ptr %i.cf, align 16, !tbaa !48
  store double %i.cg, ptr %i.ce, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59: ; preds = %bb.h, %bb.i
  %.9 = phi double [ %i.ca, %bb.i ], [ %.0161, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.pre163 = load double, ptr %3, align 8, !tbaa !48
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54
  %i.ch = phi double [ %.pre163, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %i.bc, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ %i.bc, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ %i.bc, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ %i.bc, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 8 uses
  %.1 = phi double [ %.9, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %.0161, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ %.0161, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ %.0161, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ %.0161, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 10 uses
  %.0160 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ true, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ true, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !62    ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !48 ; 2 uses
  %i.cl = fcmp ogt double %i.ck, %i.ch
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread
  %i.cm = fsub double %i.ck, %i.ch                ; 2 uses
  %15 = call double @llvm.fmuladd.f64(double %i.cm, double %i.cm, double 0.000000e+00)
  br label %bb.m

bb.k:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.co = load double, ptr %i.cn, align 8, !tbaa !48 ; 2 uses
  %i.cp = fcmp ogt double %i.ch, %i.co
  br i1 %i.cp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cq = fsub double %i.ch, %i.co                ; 2 uses
  %16 = call double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double 0.000000e+00)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1.i = phi double [ %15, %bb.j ], [ %16, %bb.l ], [ 0.000000e+00, %bb.k ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !48 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !48 ; 8 uses
  %i.cv = fcmp ogt double %i.cs, %i.cu
  br i1 %i.cv, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !48 ; 2 uses
  %i.cy = fcmp ogt double %i.cu, %i.cx
  br i1 %i.cy, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cz = fsub double %i.cu, %i.cx                ; 2 uses
  %i.da = call double @llvm.fmuladd.f64(double %i.cz, double %i.cz, double %.1.i)
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.db = fsub double %i.cs, %i.cu                ; 2 uses
  %i.dc = call double @llvm.fmuladd.f64(double %i.db, double %i.db, double %.1.i)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.1.1.i = phi double [ %i.dc, %bb.p ], [ %i.da, %bb.o ], [ %.1.i, %bb.n ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.de = load double, ptr %i.dd, align 8, !tbaa !48 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dg = load double, ptr %i.df, align 8, !tbaa !48 ; 8 uses
  %i.dh = fcmp ogt double %i.de, %i.dg
  br i1 %i.dh, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.dj = load double, ptr %i.di, align 8, !tbaa !48 ; 2 uses
  %i.dk = fcmp ogt double %i.dg, %i.dj
  br i1 %i.dk, label %bb.s, label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

bb.s:                                             ; preds = %bb.r
  %i.dl = fsub double %i.dg, %i.dj                ; 2 uses
  %i.dm = call double @llvm.fmuladd.f64(double %i.dl, double %i.dl, double %.1.1.i)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

bb.t:                                             ; preds = %bb.q
  %i.dn = fsub double %i.de, %i.dg                ; 2 uses
  %i.do = call double @llvm.fmuladd.f64(double %i.dn, double %i.dn, double %.1.1.i)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.r, %bb.s, %bb.t
  %.1.2.i = phi double [ %i.do, %bb.t ], [ %i.dm, %bb.s ], [ %.1.1.i, %bb.r ] ; 3 uses
  %i.dp = load ptr, ptr %i.k, align 8, !tbaa !81  ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !48 ; 2 uses
  %i.ds = fcmp ogt double %i.dr, %i.ch
  br i1 %i.ds, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit
  %i.dt = fsub double %i.dr, %i.ch                ; 2 uses
  %17 = call double @llvm.fmuladd.f64(double %i.dt, double %i.dt, double 0.000000e+00)
  br label %bb.x

bb.v:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dv = load double, ptr %i.du, align 8, !tbaa !48 ; 2 uses
  %i.dw = fcmp ogt double %i.ch, %i.dv
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dx = fsub double %i.ch, %i.dv                ; 2 uses
  %18 = call double @llvm.fmuladd.f64(double %i.dx, double %i.dx, double 0.000000e+00)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.1.i55 = phi double [ %17, %bb.u ], [ %18, %bb.w ], [ 0.000000e+00, %bb.v ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !48 ; 2 uses
  %i.ea = fcmp ogt double %i.dz, %i.cu
  br i1 %i.ea, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !48 ; 2 uses
  %i.ed = fcmp ogt double %i.cu, %i.ec
  br i1 %i.ed, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ee = fsub double %i.cu, %i.ec                ; 2 uses
  %i.ef = call double @llvm.fmuladd.f64(double %i.ee, double %i.ee, double %.1.i55)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.eg = fsub double %i.dz, %i.cu                ; 2 uses
  %i.eh = call double @llvm.fmuladd.f64(double %i.eg, double %i.eg, double %.1.i55)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.1.1.i56 = phi double [ %i.eh, %bb.aa ], [ %i.ef, %bb.z ], [ %.1.i55, %bb.y ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !48 ; 2 uses
  %i.ek = fcmp ogt double %i.ej, %i.dg
  br i1 %i.ek, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.em = load double, ptr %i.el, align 8, !tbaa !48 ; 2 uses
  %i.en = fcmp ogt double %i.dg, %i.em
  br i1 %i.en, label %bb.ad, label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58

bb.ad:                                            ; preds = %bb.ac
  %i.eo = fsub double %i.dg, %i.em                ; 2 uses
  %i.ep = call double @llvm.fmuladd.f64(double %i.eo, double %i.eo, double %.1.1.i56)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58

bb.ae:                                            ; preds = %bb.ab
  %i.eq = fsub double %i.ej, %i.dg                ; 2 uses
  %i.er = call double @llvm.fmuladd.f64(double %i.eq, double %i.eq, double %.1.1.i56)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58

_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58: ; preds = %bb.ac, %bb.ad, %bb.ae
  %.1.2.i57 = phi double [ %i.er, %bb.ae ], [ %i.ep, %bb.ad ], [ %.1.1.i56, %bb.ac ] ; 3 uses
  %i.es = fcmp olt double %.1.2.i, %.1.2.i57
  br i1 %i.es, label %bb.af, label %bb.al

bb.af:                                            ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58
  %i.et = fcmp olt double %.1.2.i, %.1
  %or.cond = select i1 %.0159, i1 %i.et, i1 false
  br i1 %or.cond, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.eu = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.ci, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %11), !inline_history !561 ; 2 uses
  %i.ev = fcmp olt double %i.eu, %.1
  br i1 %i.ev, label %bb.ah, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60

bb.ah:                                            ; preds = %bb.ag
  %i.ew = load i32, ptr %i.d, align 4, !tbaa !85
  store i32 %i.ew, ptr %6, align 4, !tbaa !85
  %i.ex = load <2 x double>, ptr %11, align 16, !tbaa !46
  store <2 x double> %i.ex, ptr %7, align 8, !tbaa !46
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fa = load double, ptr %i.ez, align 16, !tbaa !48
  store double %i.fa, ptr %i.ey, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60: ; preds = %bb.ag, %bb.ah
  %.10 = phi double [ %i.eu, %bb.ah ], [ %.1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60, %bb.af
  %.2 = phi double [ %.10, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60 ], [ %.1, %bb.af ] ; 5 uses
  %i.fb = fcmp olt double %.1.2.i57, %.2
  %or.cond43 = and i1 %.0160, %i.fb
  br i1 %or.cond43, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.fc = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.fd = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.fc, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !562 ; 2 uses
  %i.fe = fcmp olt double %i.fd, %.2
  br i1 %i.fe, label %bb.ak, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61

bb.ak:                                            ; preds = %bb.aj
  %i.ff = load i32, ptr %i.c, align 4, !tbaa !85
  store i32 %i.ff, ptr %6, align 4, !tbaa !85
  %i.fg = load <2 x double>, ptr %10, align 16, !tbaa !46
  store <2 x double> %i.fg, ptr %7, align 8, !tbaa !46
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fj = load double, ptr %i.fi, align 16, !tbaa !48
  store double %i.fj, ptr %i.fh, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61: ; preds = %bb.aj, %bb.ak
  %.11 = phi double [ %i.fd, %bb.ak ], [ %.2, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.ar

bb.al:                                            ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58
  %i.fk = fcmp olt double %.1.2.i57, %.1
  %or.cond46 = and i1 %.0160, %i.fk
  br i1 %or.cond46, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.fl = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.dp, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !562 ; 2 uses
  %i.fm = fcmp olt double %i.fl, %.1
  br i1 %i.fm, label %bb.an, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62

bb.an:                                            ; preds = %bb.am
  %i.fn = load i32, ptr %i.b, align 4, !tbaa !85
  store i32 %i.fn, ptr %6, align 4, !tbaa !85
  %i.fo = load <2 x double>, ptr %9, align 16, !tbaa !46
  store <2 x double> %i.fo, ptr %7, align 8, !tbaa !46
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fr = load double, ptr %i.fq, align 16, !tbaa !48
  store double %i.fr, ptr %i.fp, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62: ; preds = %bb.am, %bb.an
  %.12 = phi double [ %i.fl, %bb.an ], [ %.1, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62, %bb.al
  %.3 = phi double [ %.12, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62 ], [ %.1, %bb.al ] ; 5 uses
  %i.fs = fcmp olt double %.1.2.i, %.3
  %or.cond49 = select i1 %.0159, i1 %i.fs, i1 false
  br i1 %or.cond49, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.ft = load ptr, ptr %0, align 8, !tbaa !62
  %i.fu = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %8), !inline_history !561 ; 2 uses
  %i.fv = fcmp olt double %i.fu, %.3
  br i1 %i.fv, label %bb.aq, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63

bb.aq:                                            ; preds = %bb.ap
  %i.fw = load i32, ptr %i.a, align 4, !tbaa !85
  store i32 %i.fw, ptr %6, align 4, !tbaa !85
  %i.fx = load <2 x double>, ptr %8, align 16, !tbaa !46
  store <2 x double> %i.fx, ptr %7, align 8, !tbaa !46
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ga = load double, ptr %i.fz, align 16, !tbaa !48
  store double %i.ga, ptr %i.fy, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63: ; preds = %bb.ap, %bb.aq
  %.13 = phi double [ %i.fu, %bb.aq ], [ %.3, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE21leaf_squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit, %bb.ao, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63, %bb.ai, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61, %bb.a
  %.0 = phi double [ %4, %bb.a ], [ %.6, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE21leaf_squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit ], [ %.11, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61 ], [ %.2, %bb.ai ], [ %.13, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63 ], [ %.3, %bb.ao ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEERiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef 0.000000e+00, double noundef +inf, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %14 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = fcmp ogt double %4, %5
  br i1 %i.h, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !122    ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !121
  %i.q = sext i32 %i.p to i64
  call void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEdS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %i.r = load double, ptr %i.g, align 8, !tbaa !48 ; 2 uses
  %i.s = fcmp olt double %i.r, %5
  br i1 %i.s, label %bb.d, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.o, align 8, !tbaa !85
  store i32 %i.t, ptr %6, align 4, !tbaa !85
  %i.u = load <2 x double>, ptr %14, align 16, !tbaa !46
  store <2 x double> %i.u, ptr %7, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.x = load double, ptr %i.w, align 16, !tbaa !48
  store double %i.x, ptr %i.v, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit: ; preds = %bb.c, %bb.d
  %.6 = phi double [ %i.r, %bb.d ], [ %5, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ar

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load double, ptr %3, align 8, !tbaa !48  ; 6 uses
  %i.aa = load double, ptr %i.y, align 8, !tbaa !48
  %i.ab = fcmp ugt double %i.aa, %i.z
  br i1 %i.ab, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %i.af = load double, ptr %i.ac, align 8, !tbaa !48
  %i.ag = fcmp ugt double %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !48 ; 2 uses
  %i.ak = load double, ptr %i.ah, align 8, !tbaa !48
  %i.al = fcmp ugt double %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.an = load double, ptr %i.am, align 8
  %i.ao = fcmp ugt double %i.z, %i.an
  %or.cond.i = select i1 %i.al, i1 true, i1 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = fcmp ugt double %i.ae, %i.aq
  %or.cond17.i = select i1 %or.cond.i, i1 true, i1 %i.ar
  br i1 %or.cond17.i, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.at = load double, ptr %i.as, align 8, !tbaa !48
  %i.au = fcmp ugt double %i.aj, %i.at
  br i1 %i.au, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.av = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %13), !inline_history !563 ; 2 uses
  %i.aw = fcmp olt double %i.av, %5
  br i1 %i.aw, label %bb.g, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.ax = load i32, ptr %i.f, align 4, !tbaa !85
  store i32 %i.ax, ptr %6, align 4, !tbaa !85
  %i.ay = load <2 x double>, ptr %13, align 16, !tbaa !46
  store <2 x double> %i.ay, ptr %7, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bb = load double, ptr %i.ba, align 16, !tbaa !48
  store double %i.bb, ptr %i.az, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.8 = phi double [ %i.av, %bb.g ], [ %5, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !123
  %.pre162 = load double, ptr %3, align 8, !tbaa !48
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i, %bb.e, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  %i.bc = phi double [ %.pre162, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.z, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.z, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.z, %bb.e ], [ %i.z, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 6 uses
  %i.bd = phi ptr [ %.pre, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.l, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.l, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.l, %bb.e ], [ %i.l, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0161 = phi double [ %.8, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %5, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %5, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %5, %bb.e ], [ %5, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0159 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ true, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ true, %bb.e ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load double, ptr %i.be, align 8, !tbaa !48
  %i.bg = fcmp ugt double %i.bf, %i.bc
  br i1 %i.bg, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50: ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !48 ; 2 uses
  %i.bk = load double, ptr %i.bh, align 8, !tbaa !48
  %i.bl = fcmp ugt double %i.bk, %i.bj
  br i1 %i.bl, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !48 ; 2 uses
  %i.bp = load double, ptr %i.bm, align 8, !tbaa !48
  %i.bq = fcmp ugt double %i.bp, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bs = load double, ptr %i.br, align 8
  %i.bt = fcmp ugt double %i.bc, %i.bs
  %or.cond.i52 = select i1 %i.bq, i1 true, i1 %i.bt
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bv = load double, ptr %i.bu, align 8
  %i.bw = fcmp ugt double %i.bj, %i.bv
  %or.cond17.i53 = select i1 %or.cond.i52, i1 true, i1 %i.bw
  br i1 %or.cond17.i53, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.by = load double, ptr %i.bx, align 8, !tbaa !48
  %i.bz = fcmp ugt double %i.bo, %i.by
  br i1 %i.bz, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.ca = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.bd, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.0161, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %12), !inline_history !564 ; 2 uses
  %i.cb = fcmp olt double %i.ca, %.0161
  br i1 %i.cb, label %bb.i, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59

bb.i:                                             ; preds = %bb.h
  %i.cc = load i32, ptr %i.e, align 4, !tbaa !85
  store i32 %i.cc, ptr %6, align 4, !tbaa !85
  %i.cd = load <2 x double>, ptr %12, align 16, !tbaa !46
  store <2 x double> %i.cd, ptr %7, align 8, !tbaa !46
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cg = load double, ptr %i.cf, align 16, !tbaa !48
  store double %i.cg, ptr %i.ce, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59: ; preds = %bb.h, %bb.i
  %.9 = phi double [ %i.ca, %bb.i ], [ %.0161, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.pre163 = load double, ptr %3, align 8, !tbaa !48
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54
  %i.ch = phi double [ %.pre163, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %i.bc, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ %i.bc, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ %i.bc, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ %i.bc, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 8 uses
  %.1 = phi double [ %.9, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %.0161, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ %.0161, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ %.0161, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ %.0161, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 10 uses
  %.0160 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ true, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ true, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !122   ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !48 ; 2 uses
  %i.cl = fcmp ogt double %i.ck, %i.ch
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread
  %i.cm = fsub double %i.ck, %i.ch                ; 2 uses
  %15 = call double @llvm.fmuladd.f64(double %i.cm, double %i.cm, double 0.000000e+00)
  br label %bb.m

bb.k:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.co = load double, ptr %i.cn, align 8, !tbaa !48 ; 2 uses
  %i.cp = fcmp ogt double %i.ch, %i.co
  br i1 %i.cp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cq = fsub double %i.ch, %i.co                ; 2 uses
  %16 = call double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double 0.000000e+00)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1.i = phi double [ %15, %bb.j ], [ %16, %bb.l ], [ 0.000000e+00, %bb.k ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !48 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !48 ; 8 uses
  %i.cv = fcmp ogt double %i.cs, %i.cu
  br i1 %i.cv, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !48 ; 2 uses
  %i.cy = fcmp ogt double %i.cu, %i.cx
  br i1 %i.cy, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cz = fsub double %i.cu, %i.cx                ; 2 uses
  %i.da = call double @llvm.fmuladd.f64(double %i.cz, double %i.cz, double %.1.i)
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.db = fsub double %i.cs, %i.cu                ; 2 uses
  %i.dc = call double @llvm.fmuladd.f64(double %i.db, double %i.db, double %.1.i)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.1.1.i = phi double [ %i.dc, %bb.p ], [ %i.da, %bb.o ], [ %.1.i, %bb.n ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.de = load double, ptr %i.dd, align 8, !tbaa !48 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dg = load double, ptr %i.df, align 8, !tbaa !48 ; 8 uses
  %i.dh = fcmp ogt double %i.de, %i.dg
  br i1 %i.dh, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.dj = load double, ptr %i.di, align 8, !tbaa !48 ; 2 uses
  %i.dk = fcmp ogt double %i.dg, %i.dj
  br i1 %i.dk, label %bb.s, label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

bb.s:                                             ; preds = %bb.r
  %i.dl = fsub double %i.dg, %i.dj                ; 2 uses
  %i.dm = call double @llvm.fmuladd.f64(double %i.dl, double %i.dl, double %.1.1.i)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

bb.t:                                             ; preds = %bb.q
  %i.dn = fsub double %i.de, %i.dg                ; 2 uses
  %i.do = call double @llvm.fmuladd.f64(double %i.dn, double %i.dn, double %.1.1.i)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.r, %bb.s, %bb.t
  %.1.2.i = phi double [ %i.do, %bb.t ], [ %i.dm, %bb.s ], [ %.1.1.i, %bb.r ] ; 3 uses
  %i.dp = load ptr, ptr %i.k, align 8, !tbaa !123 ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !48 ; 2 uses
  %i.ds = fcmp ogt double %i.dr, %i.ch
  br i1 %i.ds, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit
  %i.dt = fsub double %i.dr, %i.ch                ; 2 uses
  %17 = call double @llvm.fmuladd.f64(double %i.dt, double %i.dt, double 0.000000e+00)
  br label %bb.x

bb.v:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dv = load double, ptr %i.du, align 8, !tbaa !48 ; 2 uses
  %i.dw = fcmp ogt double %i.ch, %i.dv
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dx = fsub double %i.ch, %i.dv                ; 2 uses
  %18 = call double @llvm.fmuladd.f64(double %i.dx, double %i.dx, double 0.000000e+00)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.1.i55 = phi double [ %17, %bb.u ], [ %18, %bb.w ], [ 0.000000e+00, %bb.v ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !48 ; 2 uses
  %i.ea = fcmp ogt double %i.dz, %i.cu
  br i1 %i.ea, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !48 ; 2 uses
  %i.ed = fcmp ogt double %i.cu, %i.ec
  br i1 %i.ed, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ee = fsub double %i.cu, %i.ec                ; 2 uses
  %i.ef = call double @llvm.fmuladd.f64(double %i.ee, double %i.ee, double %.1.i55)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.eg = fsub double %i.dz, %i.cu                ; 2 uses
  %i.eh = call double @llvm.fmuladd.f64(double %i.eg, double %i.eg, double %.1.i55)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.1.1.i56 = phi double [ %i.eh, %bb.aa ], [ %i.ef, %bb.z ], [ %.1.i55, %bb.y ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !48 ; 2 uses
  %i.ek = fcmp ogt double %i.ej, %i.dg
  br i1 %i.ek, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.em = load double, ptr %i.el, align 8, !tbaa !48 ; 2 uses
  %i.en = fcmp ogt double %i.dg, %i.em
  br i1 %i.en, label %bb.ad, label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58

bb.ad:                                            ; preds = %bb.ac
  %i.eo = fsub double %i.dg, %i.em                ; 2 uses
  %i.ep = call double @llvm.fmuladd.f64(double %i.eo, double %i.eo, double %.1.1.i56)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58

bb.ae:                                            ; preds = %bb.ab
  %i.eq = fsub double %i.ej, %i.dg                ; 2 uses
  %i.er = call double @llvm.fmuladd.f64(double %i.eq, double %i.eq, double %.1.1.i56)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58

_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58: ; preds = %bb.ac, %bb.ad, %bb.ae
  %.1.2.i57 = phi double [ %i.er, %bb.ae ], [ %i.ep, %bb.ad ], [ %.1.1.i56, %bb.ac ] ; 3 uses
  %i.es = fcmp olt double %.1.2.i, %.1.2.i57
  br i1 %i.es, label %bb.af, label %bb.al

bb.af:                                            ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58
  %i.et = fcmp olt double %.1.2.i, %.1
  %or.cond = select i1 %.0159, i1 %i.et, i1 false
  br i1 %or.cond, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.eu = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.ci, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %11), !inline_history !563 ; 2 uses
  %i.ev = fcmp olt double %i.eu, %.1
  br i1 %i.ev, label %bb.ah, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60

bb.ah:                                            ; preds = %bb.ag
  %i.ew = load i32, ptr %i.d, align 4, !tbaa !85
  store i32 %i.ew, ptr %6, align 4, !tbaa !85
  %i.ex = load <2 x double>, ptr %11, align 16, !tbaa !46
  store <2 x double> %i.ex, ptr %7, align 8, !tbaa !46
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fa = load double, ptr %i.ez, align 16, !tbaa !48
  store double %i.fa, ptr %i.ey, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60: ; preds = %bb.ag, %bb.ah
  %.10 = phi double [ %i.eu, %bb.ah ], [ %.1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60, %bb.af
  %.2 = phi double [ %.10, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60 ], [ %.1, %bb.af ] ; 5 uses
  %i.fb = fcmp olt double %.1.2.i57, %.2
  %or.cond43 = and i1 %.0160, %i.fb
  br i1 %or.cond43, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.fc = load ptr, ptr %i.k, align 8, !tbaa !123
  %i.fd = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.fc, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !564 ; 2 uses
  %i.fe = fcmp olt double %i.fd, %.2
  br i1 %i.fe, label %bb.ak, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61

bb.ak:                                            ; preds = %bb.aj
  %i.ff = load i32, ptr %i.c, align 4, !tbaa !85
  store i32 %i.ff, ptr %6, align 4, !tbaa !85
  %i.fg = load <2 x double>, ptr %10, align 16, !tbaa !46
  store <2 x double> %i.fg, ptr %7, align 8, !tbaa !46
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fj = load double, ptr %i.fi, align 16, !tbaa !48
  store double %i.fj, ptr %i.fh, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61: ; preds = %bb.aj, %bb.ak
  %.11 = phi double [ %i.fd, %bb.ak ], [ %.2, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.ar

bb.al:                                            ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58
  %i.fk = fcmp olt double %.1.2.i57, %.1
  %or.cond46 = and i1 %.0160, %i.fk
  br i1 %or.cond46, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.fl = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.dp, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !564 ; 2 uses
  %i.fm = fcmp olt double %i.fl, %.1
  br i1 %i.fm, label %bb.an, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62

bb.an:                                            ; preds = %bb.am
  %i.fn = load i32, ptr %i.b, align 4, !tbaa !85
  store i32 %i.fn, ptr %6, align 4, !tbaa !85
  %i.fo = load <2 x double>, ptr %9, align 16, !tbaa !46
  store <2 x double> %i.fo, ptr %7, align 8, !tbaa !46
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fr = load double, ptr %i.fq, align 16, !tbaa !48
  store double %i.fr, ptr %i.fp, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62: ; preds = %bb.am, %bb.an
  %.12 = phi double [ %i.fl, %bb.an ], [ %.1, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62, %bb.al
  %.3 = phi double [ %.12, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62 ], [ %.1, %bb.al ] ; 5 uses
  %i.fs = fcmp olt double %.1.2.i, %.3
  %or.cond49 = select i1 %.0159, i1 %i.fs, i1 false
  br i1 %or.cond49, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.ft = load ptr, ptr %0, align 8, !tbaa !122
  %i.fu = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %8), !inline_history !563 ; 2 uses
  %i.fv = fcmp olt double %i.fu, %.3
  br i1 %i.fv, label %bb.aq, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63

bb.aq:                                            ; preds = %bb.ap
  %i.fw = load i32, ptr %i.a, align 4, !tbaa !85
  store i32 %i.fw, ptr %6, align 4, !tbaa !85
  %i.fx = load <2 x double>, ptr %8, align 16, !tbaa !46
  store <2 x double> %i.fx, ptr %7, align 8, !tbaa !46
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ga = load double, ptr %i.fz, align 16, !tbaa !48
  store double %i.ga, ptr %i.fy, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63: ; preds = %bb.ap, %bb.aq
  %.13 = phi double [ %i.fu, %bb.aq ], [ %.3, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit, %bb.ao, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63, %bb.ai, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61, %bb.a
  %.0 = phi double [ %4, %bb.a ], [ %.6, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit ], [ %.11, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61 ], [ %.2, %bb.ai ], [ %.13, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63 ], [ %.3, %bb.ao ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(12) %7) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::Matrix.172", align 8 ; 5 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = fcmp ogt float %4, %5
  br i1 %i.h, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !226    ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !227
  %i.q = sext i32 %i.p to i64
  call void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEENS2_IfLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEfS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %14)
  %i.r = load float, ptr %i.g, align 4, !tbaa !178 ; 2 uses
  %i.s = fcmp olt float %i.r, %5
  br i1 %i.s, label %bb.d, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.o, align 8, !tbaa !85
  store i32 %i.t, ptr %6, align 4, !tbaa !85
  %i.u = load <2 x float>, ptr %14, align 8, !tbaa !178
  store <2 x float> %i.u, ptr %7, align 4, !tbaa !178
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.x = load float, ptr %i.w, align 8, !tbaa !178
  store float %i.x, ptr %i.v, align 4, !tbaa !178
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit: ; preds = %bb.c, %bb.d
  %.6 = phi float [ %i.r, %bb.d ], [ %5, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ar

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load float, ptr %3, align 4, !tbaa !178  ; 6 uses
  %i.aa = load float, ptr %i.y, align 4, !tbaa !178
  %i.ab = fcmp ugt float %i.aa, %i.z
  br i1 %i.ab, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !178 ; 2 uses
  %i.af = load float, ptr %i.ac, align 4, !tbaa !178
  %i.ag = fcmp ugt float %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !178 ; 2 uses
  %i.ak = load float, ptr %i.ah, align 4, !tbaa !178
  %i.al = fcmp ugt float %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.an = load float, ptr %i.am, align 4
  %i.ao = fcmp ugt float %i.z, %i.an
  %or.cond.i = select i1 %i.al, i1 true, i1 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = fcmp ugt float %i.ae, %i.aq
  %or.cond17.i = select i1 %or.cond.i, i1 true, i1 %i.ar
  br i1 %or.cond17.i, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.at = load float, ptr %i.as, align 4, !tbaa !178
  %i.au = fcmp ugt float %i.aj, %i.at
  br i1 %i.au, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !179
  %i.av = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %13), !inline_history !565 ; 2 uses
  %i.aw = fcmp olt float %i.av, %5
  br i1 %i.aw, label %bb.g, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.ax = load i32, ptr %i.f, align 4, !tbaa !85
  store i32 %i.ax, ptr %6, align 4, !tbaa !85
  %i.ay = load <2 x float>, ptr %13, align 8, !tbaa !178
  store <2 x float> %i.ay, ptr %7, align 4, !tbaa !178
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !178
  store float %i.bb, ptr %i.az, align 4, !tbaa !178
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.8 = phi float [ %i.av, %bb.g ], [ %5, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !228
  %.pre162 = load float, ptr %3, align 4, !tbaa !178
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread

_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i, %bb.e, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  %i.bc = phi float [ %.pre162, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.z, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.z, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.z, %bb.e ], [ %i.z, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 6 uses
  %i.bd = phi ptr [ %.pre, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.l, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.l, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.l, %bb.e ], [ %i.l, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0161 = phi float [ %.8, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %5, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %5, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %5, %bb.e ], [ %5, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0159 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ true, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ true, %bb.e ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load float, ptr %i.be, align 4, !tbaa !178
  %i.bg = fcmp ugt float %i.bf, %i.bc
  br i1 %i.bg, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50: ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !178 ; 2 uses
  %i.bk = load float, ptr %i.bh, align 4, !tbaa !178
  %i.bl = fcmp ugt float %i.bk, %i.bj
  br i1 %i.bl, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !178 ; 2 uses
  %i.bp = load float, ptr %i.bm, align 4, !tbaa !178
  %i.bq = fcmp ugt float %i.bp, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 36
  %i.bs = load float, ptr %i.br, align 4
  %i.bt = fcmp ugt float %i.bc, %i.bs
  %or.cond.i52 = select i1 %i.bq, i1 true, i1 %i.bt
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bv = load float, ptr %i.bu, align 4
  %i.bw = fcmp ugt float %i.bj, %i.bv
  %or.cond17.i53 = select i1 %or.cond.i52, i1 true, i1 %i.bw
  br i1 %or.cond17.i53, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54

_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  %i.by = load float, ptr %i.bx, align 4, !tbaa !178
  %i.bz = fcmp ugt float %i.bo, %i.by
  br i1 %i.bz, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !179
  %i.ca = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.bd, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.0161, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %12), !inline_history !566 ; 2 uses
  %i.cb = fcmp olt float %i.ca, %.0161
  br i1 %i.cb, label %bb.i, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59

bb.i:                                             ; preds = %bb.h
  %i.cc = load i32, ptr %i.e, align 4, !tbaa !85
  store i32 %i.cc, ptr %6, align 4, !tbaa !85
  %i.cd = load <2 x float>, ptr %12, align 8, !tbaa !178
  store <2 x float> %i.cd, ptr %7, align 4, !tbaa !178
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !178
  store float %i.cg, ptr %i.ce, align 4, !tbaa !178
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59: ; preds = %bb.h, %bb.i
  %.9 = phi float [ %i.ca, %bb.i ], [ %.0161, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.pre163 = load float, ptr %3, align 4, !tbaa !178
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread

_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54
  %i.ch = phi float [ %.pre163, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %i.bc, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ %i.bc, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ %i.bc, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ %i.bc, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 8 uses
  %.1 = phi float [ %.9, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %.0161, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ %.0161, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ %.0161, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ %.0161, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 10 uses
  %.0160 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ true, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ true, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !226   ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !178 ; 2 uses
  %i.cl = fcmp ogt float %i.ck, %i.ch
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread
  %i.cm = fsub float %i.ck, %i.ch                 ; 2 uses
  %15 = call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float 0.000000e+00)
  br label %bb.m

bb.k:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 36
  %i.co = load float, ptr %i.cn, align 4, !tbaa !178 ; 2 uses
  %i.cp = fcmp ogt float %i.ch, %i.co
  br i1 %i.cp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cq = fsub float %i.ch, %i.co                 ; 2 uses
  %16 = call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float 0.000000e+00)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1.i = phi float [ %15, %bb.j ], [ %16, %bb.l ], [ 0.000000e+00, %bb.k ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 28
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !178 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !178 ; 8 uses
  %i.cv = fcmp ogt float %i.cs, %i.cu
  br i1 %i.cv, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !178 ; 2 uses
  %i.cy = fcmp ogt float %i.cu, %i.cx
  br i1 %i.cy, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cz = fsub float %i.cu, %i.cx                 ; 2 uses
  %i.da = call float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float %.1.i)
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.db = fsub float %i.cs, %i.cu                 ; 2 uses
  %i.dc = call float @llvm.fmuladd.f32(float %i.db, float %i.db, float %.1.i)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.1.1.i = phi float [ %i.dc, %bb.p ], [ %i.da, %bb.o ], [ %.1.i, %bb.n ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.de = load float, ptr %i.dd, align 4, !tbaa !178 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dg = load float, ptr %i.df, align 4, !tbaa !178 ; 8 uses
  %i.dh = fcmp ogt float %i.de, %i.dg
  br i1 %i.dh, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 44
  %i.dj = load float, ptr %i.di, align 4, !tbaa !178 ; 2 uses
  %i.dk = fcmp ogt float %i.dg, %i.dj
  br i1 %i.dk, label %bb.s, label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit

bb.s:                                             ; preds = %bb.r
  %i.dl = fsub float %i.dg, %i.dj                 ; 2 uses
  %i.dm = call float @llvm.fmuladd.f32(float %i.dl, float %i.dl, float %.1.1.i)
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit

bb.t:                                             ; preds = %bb.q
  %i.dn = fsub float %i.de, %i.dg                 ; 2 uses
  %i.do = call float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float %.1.1.i)
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.r, %bb.s, %bb.t
  %.1.2.i = phi float [ %i.do, %bb.t ], [ %i.dm, %bb.s ], [ %.1.1.i, %bb.r ] ; 3 uses
  %i.dp = load ptr, ptr %i.k, align 8, !tbaa !228 ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !178 ; 2 uses
  %i.ds = fcmp ogt float %i.dr, %i.ch
  br i1 %i.ds, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit
  %i.dt = fsub float %i.dr, %i.ch                 ; 2 uses
  %17 = call float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float 0.000000e+00)
  br label %bb.x

bb.v:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 36
  %i.dv = load float, ptr %i.du, align 4, !tbaa !178 ; 2 uses
  %i.dw = fcmp ogt float %i.ch, %i.dv
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dx = fsub float %i.ch, %i.dv                 ; 2 uses
  %18 = call float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float 0.000000e+00)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.1.i55 = phi float [ %17, %bb.u ], [ %18, %bb.w ], [ 0.000000e+00, %bb.v ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 28
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !178 ; 2 uses
  %i.ea = fcmp ogt float %i.dz, %i.cu
  br i1 %i.ea, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !178 ; 2 uses
  %i.ed = fcmp ogt float %i.cu, %i.ec
  br i1 %i.ed, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ee = fsub float %i.cu, %i.ec                 ; 2 uses
  %i.ef = call float @llvm.fmuladd.f32(float %i.ee, float %i.ee, float %.1.i55)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.eg = fsub float %i.dz, %i.cu                 ; 2 uses
  %i.eh = call float @llvm.fmuladd.f32(float %i.eg, float %i.eg, float %.1.i55)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.1.1.i56 = phi float [ %i.eh, %bb.aa ], [ %i.ef, %bb.z ], [ %.1.i55, %bb.y ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !178 ; 2 uses
  %i.ek = fcmp ogt float %i.ej, %i.dg
  br i1 %i.ek, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds nuw i8, ptr %i.dp, i64 44
  %i.em = load float, ptr %i.el, align 4, !tbaa !178 ; 2 uses
  %i.en = fcmp ogt float %i.dg, %i.em
  br i1 %i.en, label %bb.ad, label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58

bb.ad:                                            ; preds = %bb.ac
  %i.eo = fsub float %i.dg, %i.em                 ; 2 uses
  %i.ep = call float @llvm.fmuladd.f32(float %i.eo, float %i.eo, float %.1.1.i56)
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58

bb.ae:                                            ; preds = %bb.ab
  %i.eq = fsub float %i.ej, %i.dg                 ; 2 uses
  %i.er = call float @llvm.fmuladd.f32(float %i.eq, float %i.eq, float %.1.1.i56)
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58

_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58: ; preds = %bb.ac, %bb.ad, %bb.ae
  %.1.2.i57 = phi float [ %i.er, %bb.ae ], [ %i.ep, %bb.ad ], [ %.1.1.i56, %bb.ac ] ; 3 uses
  %i.es = fcmp olt float %.1.2.i, %.1.2.i57
  br i1 %i.es, label %bb.af, label %bb.al

bb.af:                                            ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58
  %i.et = fcmp olt float %.1.2.i, %.1
  %or.cond = select i1 %.0159, i1 %i.et, i1 false
  br i1 %or.cond, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !179
  %i.eu = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.ci, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %11), !inline_history !565 ; 2 uses
  %i.ev = fcmp olt float %i.eu, %.1
  br i1 %i.ev, label %bb.ah, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60

bb.ah:                                            ; preds = %bb.ag
  %i.ew = load i32, ptr %i.d, align 4, !tbaa !85
  store i32 %i.ew, ptr %6, align 4, !tbaa !85
  %i.ex = load <2 x float>, ptr %11, align 8, !tbaa !178
  store <2 x float> %i.ex, ptr %7, align 4, !tbaa !178
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fa = load float, ptr %i.ez, align 8, !tbaa !178
  store float %i.fa, ptr %i.ey, align 4, !tbaa !178
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60: ; preds = %bb.ag, %bb.ah
  %.10 = phi float [ %i.eu, %bb.ah ], [ %.1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60, %bb.af
  %.2 = phi float [ %.10, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60 ], [ %.1, %bb.af ] ; 5 uses
  %i.fb = fcmp olt float %.1.2.i57, %.2
  %or.cond43 = and i1 %.0160, %i.fb
  br i1 %or.cond43, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !179
  %i.fc = load ptr, ptr %i.k, align 8, !tbaa !228
  %i.fd = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.fc, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %10), !inline_history !566 ; 2 uses
  %i.fe = fcmp olt float %i.fd, %.2
  br i1 %i.fe, label %bb.ak, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61

bb.ak:                                            ; preds = %bb.aj
  %i.ff = load i32, ptr %i.c, align 4, !tbaa !85
  store i32 %i.ff, ptr %6, align 4, !tbaa !85
  %i.fg = load <2 x float>, ptr %10, align 8, !tbaa !178
  store <2 x float> %i.fg, ptr %7, align 4, !tbaa !178
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fj = load float, ptr %i.fi, align 8, !tbaa !178
  store float %i.fj, ptr %i.fh, align 4, !tbaa !178
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61: ; preds = %bb.aj, %bb.ak
  %.11 = phi float [ %i.fd, %bb.ak ], [ %.2, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.ar

bb.al:                                            ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58
  %i.fk = fcmp olt float %.1.2.i57, %.1
  %or.cond46 = and i1 %.0160, %i.fk
  br i1 %or.cond46, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !179
  %i.fl = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.dp, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %9), !inline_history !566 ; 2 uses
  %i.fm = fcmp olt float %i.fl, %.1
  br i1 %i.fm, label %bb.an, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62

bb.an:                                            ; preds = %bb.am
  %i.fn = load i32, ptr %i.b, align 4, !tbaa !85
  store i32 %i.fn, ptr %6, align 4, !tbaa !85
  %i.fo = load <2 x float>, ptr %9, align 8, !tbaa !178
  store <2 x float> %i.fo, ptr %7, align 4, !tbaa !178
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fr = load float, ptr %i.fq, align 8, !tbaa !178
  store float %i.fr, ptr %i.fp, align 4, !tbaa !178
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62: ; preds = %bb.am, %bb.an
  %.12 = phi float [ %i.fl, %bb.an ], [ %.1, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62, %bb.al
  %.3 = phi float [ %.12, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62 ], [ %.1, %bb.al ] ; 5 uses
  %i.fs = fcmp olt float %.1.2.i, %.3
  %or.cond49 = select i1 %.0159, i1 %i.fs, i1 false
  br i1 %or.cond49, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !179
  %i.ft = load ptr, ptr %0, align 8, !tbaa !226
  %i.fu = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %8), !inline_history !565 ; 2 uses
  %i.fv = fcmp olt float %i.fu, %.3
  br i1 %i.fv, label %bb.aq, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63

bb.aq:                                            ; preds = %bb.ap
  %i.fw = load i32, ptr %i.a, align 4, !tbaa !85
  store i32 %i.fw, ptr %6, align 4, !tbaa !85
  %i.fx = load <2 x float>, ptr %8, align 8, !tbaa !178
  store <2 x float> %i.fx, ptr %7, align 4, !tbaa !178
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !178
  store float %i.ga, ptr %i.fy, align 4, !tbaa !178
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63: ; preds = %bb.ap, %bb.aq
  %.13 = phi float [ %i.fu, %bb.aq ], [ %.3, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit, %bb.ao, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63, %bb.ai, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61, %bb.a
  %.0 = phi float [ %4, %bb.a ], [ %.6, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit ], [ %.11, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61 ], [ %.2, %bb.ai ], [ %.13, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63 ], [ %.3, %bb.ao ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEERiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(12) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef 0.000000e+00, float noundef +inf, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(12) %5)
  ret float %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE4findINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEESt6vectorIiSaIiEERKNS1_10MatrixBaseIS3_EERKNSB_IT_EERKNSB_IT0_EEb(ptr dead_on_unwind noalias writable sret(%"class.std::vector.257") align 8 %0, ptr noundef nonnull align 16 dereferenceable(68) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Eigen::Matrix.68", align 16 ; 6 uses
  %7 = alloca %"class.Eigen::Matrix.68", align 16 ; 6 uses
  %8 = alloca %"class.Eigen::Matrix.68", align 16 ; 6 uses
  %9 = alloca %"class.Eigen::Matrix.68", align 16 ; 6 uses
  %10 = alloca %"class.std::vector.257", align 16 ; 16 uses
  %11 = alloca %"class.std::vector.257", align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %4, align 8, !tbaa !230    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt6threadSaIS0_EED2Ev:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %14 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = fcmp ogt double %4, %5
  br i1 %i.h, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !122    ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !121
  %i.q = sext i32 %i.p to i64
  call void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %i.r = load double, ptr %i.g, align 8, !tbaa !48 ; 2 uses
  %i.s = fcmp olt double %i.r, %5
  br i1 %i.s, label %bb.d, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.o, align 8, !tbaa !85
  store i32 %i.t, ptr %6, align 4, !tbaa !85
  %i.u = load <2 x double>, ptr %14, align 16, !tbaa !46
  store <2 x double> %i.u, ptr %7, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.x = load double, ptr %i.w, align 16, !tbaa !48
  store double %i.x, ptr %i.v, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit: ; preds = %bb.c, %bb.d
  %.6 = phi double [ %i.r, %bb.d ], [ %5, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ar

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load double, ptr %3, align 8, !tbaa !48  ; 6 uses
  %i.aa = load double, ptr %i.y, align 8, !tbaa !48
  %i.ab = fcmp ugt double %i.aa, %i.z
  br i1 %i.ab, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %i.af = load double, ptr %i.ac, align 8, !tbaa !48
  %i.ag = fcmp ugt double %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !48 ; 2 uses
  %i.ak = load double, ptr %i.ah, align 8, !tbaa !48
  %i.al = fcmp ugt double %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.an = load double, ptr %i.am, align 8
  %i.ao = fcmp ugt double %i.z, %i.an
  %or.cond.i = select i1 %i.al, i1 true, i1 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = fcmp ugt double %i.ae, %i.aq
  %or.cond17.i = select i1 %or.cond.i, i1 true, i1 %i.ar
  br i1 %or.cond17.i, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.at = load double, ptr %i.as, align 8, !tbaa !48
  %i.au = fcmp ugt double %i.aj, %i.at
  br i1 %i.au, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.av = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %13), !inline_history !781 ; 2 uses
  %i.aw = fcmp olt double %i.av, %5
  br i1 %i.aw, label %bb.g, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.ax = load i32, ptr %i.f, align 4, !tbaa !85
  store i32 %i.ax, ptr %6, align 4, !tbaa !85
  %i.ay = load <2 x double>, ptr %13, align 16, !tbaa !46
  store <2 x double> %i.ay, ptr %7, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bb = load double, ptr %i.ba, align 16, !tbaa !48
  store double %i.bb, ptr %i.az, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.8 = phi double [ %i.av, %bb.g ], [ %5, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !123
  %.pre162 = load double, ptr %3, align 8, !tbaa !48
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i, %bb.e, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  %i.bc = phi double [ %.pre162, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.z, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.z, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.z, %bb.e ], [ %i.z, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 6 uses
  %i.bd = phi ptr [ %.pre, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.l, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.l, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.l, %bb.e ], [ %i.l, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0161 = phi double [ %.8, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %5, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %5, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %5, %bb.e ], [ %5, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0159 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ true, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ true, %bb.e ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load double, ptr %i.be, align 8, !tbaa !48
  %i.bg = fcmp ugt double %i.bf, %i.bc
  br i1 %i.bg, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50: ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !48 ; 2 uses
  %i.bk = load double, ptr %i.bh, align 8, !tbaa !48
  %i.bl = fcmp ugt double %i.bk, %i.bj
  br i1 %i.bl, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !48 ; 2 uses
  %i.bp = load double, ptr %i.bm, align 8, !tbaa !48
  %i.bq = fcmp ugt double %i.bp, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bs = load double, ptr %i.br, align 8
  %i.bt = fcmp ugt double %i.bc, %i.bs
  %or.cond.i52 = select i1 %i.bq, i1 true, i1 %i.bt
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bv = load double, ptr %i.bu, align 8
  %i.bw = fcmp ugt double %i.bj, %i.bv
  %or.cond17.i53 = select i1 %or.cond.i52, i1 true, i1 %i.bw
  br i1 %or.cond17.i53, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.by = load double, ptr %i.bx, align 8, !tbaa !48
  %i.bz = fcmp ugt double %i.bo, %i.by
  br i1 %i.bz, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.ca = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.bd, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.0161, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %12), !inline_history !782 ; 2 uses
  %i.cb = fcmp olt double %i.ca, %.0161
  br i1 %i.cb, label %bb.i, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59

bb.i:                                             ; preds = %bb.h
  %i.cc = load i32, ptr %i.e, align 4, !tbaa !85
  store i32 %i.cc, ptr %6, align 4, !tbaa !85
  %i.cd = load <2 x double>, ptr %12, align 16, !tbaa !46
  store <2 x double> %i.cd, ptr %7, align 8, !tbaa !46
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cg = load double, ptr %i.cf, align 16, !tbaa !48
  store double %i.cg, ptr %i.ce, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59: ; preds = %bb.h, %bb.i
  %.9 = phi double [ %i.ca, %bb.i ], [ %.0161, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.pre163 = load double, ptr %3, align 8, !tbaa !48
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54
  %i.ch = phi double [ %.pre163, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %i.bc, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ %i.bc, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ %i.bc, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ %i.bc, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 8 uses
  %.1 = phi double [ %.9, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %.0161, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ %.0161, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ %.0161, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ %.0161, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 10 uses
  %.0160 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ true, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ true, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !122   ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !48 ; 2 uses
  %i.cl = fcmp ogt double %i.ck, %i.ch
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread
  %i.cm = fsub double %i.ck, %i.ch                ; 2 uses
  %15 = call double @llvm.fmuladd.f64(double %i.cm, double %i.cm, double 0.000000e+00)
  br label %bb.m

bb.k:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.co = load double, ptr %i.cn, align 8, !tbaa !48 ; 2 uses
  %i.cp = fcmp ogt double %i.ch, %i.co
  br i1 %i.cp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cq = fsub double %i.ch, %i.co                ; 2 uses
  %16 = call double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double 0.000000e+00)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1.i = phi double [ %15, %bb.j ], [ %16, %bb.l ], [ 0.000000e+00, %bb.k ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !48 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !48 ; 8 uses
  %i.cv = fcmp ogt double %i.cs, %i.cu
  br i1 %i.cv, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !48 ; 2 uses
  %i.cy = fcmp ogt double %i.cu, %i.cx
  br i1 %i.cy, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cz = fsub double %i.cu, %i.cx                ; 2 uses
  %i.da = call double @llvm.fmuladd.f64(double %i.cz, double %i.cz, double %.1.i)
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.db = fsub double %i.cs, %i.cu                ; 2 uses
  %i.dc = call double @llvm.fmuladd.f64(double %i.db, double %i.db, double %.1.i)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.1.1.i = phi double [ %i.dc, %bb.p ], [ %i.da, %bb.o ], [ %.1.i, %bb.n ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.de = load double, ptr %i.dd, align 8, !tbaa !48 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dg = load double, ptr %i.df, align 8, !tbaa !48 ; 8 uses
  %i.dh = fcmp ogt double %i.de, %i.dg
  br i1 %i.dh, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.dj = load double, ptr %i.di, align 8, !tbaa !48 ; 2 uses
  %i.dk = fcmp ogt double %i.dg, %i.dj
  br i1 %i.dk, label %bb.s, label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

bb.s:                                             ; preds = %bb.r
  %i.dl = fsub double %i.dg, %i.dj                ; 2 uses
  %i.dm = call double @llvm.fmuladd.f64(double %i.dl, double %i.dl, double %.1.1.i)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

bb.t:                                             ; preds = %bb.q
  %i.dn = fsub double %i.de, %i.dg                ; 2 uses
  %i.do = call double @llvm.fmuladd.f64(double %i.dn, double %i.dn, double %.1.1.i)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.r, %bb.s, %bb.t
  %.1.2.i = phi double [ %i.do, %bb.t ], [ %i.dm, %bb.s ], [ %.1.1.i, %bb.r ] ; 3 uses
  %i.dp = load ptr, ptr %i.k, align 8, !tbaa !123 ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !48 ; 2 uses
  %i.ds = fcmp ogt double %i.dr, %i.ch
  br i1 %i.ds, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit
  %i.dt = fsub double %i.dr, %i.ch                ; 2 uses
  %17 = call double @llvm.fmuladd.f64(double %i.dt, double %i.dt, double 0.000000e+00)
  br label %bb.x

bb.v:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dv = load double, ptr %i.du, align 8, !tbaa !48 ; 2 uses
  %i.dw = fcmp ogt double %i.ch, %i.dv
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dx = fsub double %i.ch, %i.dv                ; 2 uses
  %18 = call double @llvm.fmuladd.f64(double %i.dx, double %i.dx, double 0.000000e+00)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.1.i55 = phi double [ %17, %bb.u ], [ %18, %bb.w ], [ 0.000000e+00, %bb.v ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !48 ; 2 uses
  %i.ea = fcmp ogt double %i.dz, %i.cu
  br i1 %i.ea, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !48 ; 2 uses
  %i.ed = fcmp ogt double %i.cu, %i.ec
  br i1 %i.ed, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ee = fsub double %i.cu, %i.ec                ; 2 uses
  %i.ef = call double @llvm.fmuladd.f64(double %i.ee, double %i.ee, double %.1.i55)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.eg = fsub double %i.dz, %i.cu                ; 2 uses
  %i.eh = call double @llvm.fmuladd.f64(double %i.eg, double %i.eg, double %.1.i55)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.1.1.i56 = phi double [ %i.eh, %bb.aa ], [ %i.ef, %bb.z ], [ %.1.i55, %bb.y ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !48 ; 2 uses
  %i.ek = fcmp ogt double %i.ej, %i.dg
  br i1 %i.ek, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.em = load double, ptr %i.el, align 8, !tbaa !48 ; 2 uses
  %i.en = fcmp ogt double %i.dg, %i.em
  br i1 %i.en, label %bb.ad, label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58

bb.ad:                                            ; preds = %bb.ac
  %i.eo = fsub double %i.dg, %i.em                ; 2 uses
  %i.ep = call double @llvm.fmuladd.f64(double %i.eo, double %i.eo, double %.1.1.i56)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58

bb.ae:                                            ; preds = %bb.ab
  %i.eq = fsub double %i.ej, %i.dg                ; 2 uses
  %i.er = call double @llvm.fmuladd.f64(double %i.eq, double %i.eq, double %.1.1.i56)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58

_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58: ; preds = %bb.ac, %bb.ad, %bb.ae
  %.1.2.i57 = phi double [ %i.er, %bb.ae ], [ %i.ep, %bb.ad ], [ %.1.1.i56, %bb.ac ] ; 3 uses
  %i.es = fcmp olt double %.1.2.i, %.1.2.i57
  br i1 %i.es, label %bb.af, label %bb.al

bb.af:                                            ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58
  %i.et = fcmp olt double %.1.2.i, %.1
  %or.cond = select i1 %.0159, i1 %i.et, i1 false
  br i1 %or.cond, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.eu = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.ci, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %11), !inline_history !781 ; 2 uses
  %i.ev = fcmp olt double %i.eu, %.1
  br i1 %i.ev, label %bb.ah, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60

bb.ah:                                            ; preds = %bb.ag
  %i.ew = load i32, ptr %i.d, align 4, !tbaa !85
  store i32 %i.ew, ptr %6, align 4, !tbaa !85
  %i.ex = load <2 x double>, ptr %11, align 16, !tbaa !46
  store <2 x double> %i.ex, ptr %7, align 8, !tbaa !46
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fa = load double, ptr %i.ez, align 16, !tbaa !48
  store double %i.fa, ptr %i.ey, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60: ; preds = %bb.ag, %bb.ah
  %.10 = phi double [ %i.eu, %bb.ah ], [ %.1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60, %bb.af
  %.2 = phi double [ %.10, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60 ], [ %.1, %bb.af ] ; 5 uses
  %i.fb = fcmp olt double %.1.2.i57, %.2
  %or.cond43 = and i1 %.0160, %i.fb
  br i1 %or.cond43, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.fc = load ptr, ptr %i.k, align 8, !tbaa !123
  %i.fd = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.fc, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !782 ; 2 uses
  %i.fe = fcmp olt double %i.fd, %.2
  br i1 %i.fe, label %bb.ak, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61

bb.ak:                                            ; preds = %bb.aj
  %i.ff = load i32, ptr %i.c, align 4, !tbaa !85
  store i32 %i.ff, ptr %6, align 4, !tbaa !85
  %i.fg = load <2 x double>, ptr %10, align 16, !tbaa !46
  store <2 x double> %i.fg, ptr %7, align 8, !tbaa !46
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fj = load double, ptr %i.fi, align 16, !tbaa !48
  store double %i.fj, ptr %i.fh, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61: ; preds = %bb.aj, %bb.ak
  %.11 = phi double [ %i.fd, %bb.ak ], [ %.2, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.ar

bb.al:                                            ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58
  %i.fk = fcmp olt double %.1.2.i57, %.1
  %or.cond46 = and i1 %.0160, %i.fk
  br i1 %or.cond46, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.fl = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.dp, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !782 ; 2 uses
  %i.fm = fcmp olt double %i.fl, %.1
  br i1 %i.fm, label %bb.an, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62

bb.an:                                            ; preds = %bb.am
  %i.fn = load i32, ptr %i.b, align 4, !tbaa !85
  store i32 %i.fn, ptr %6, align 4, !tbaa !85
  %i.fo = load <2 x double>, ptr %9, align 16, !tbaa !46
  store <2 x double> %i.fo, ptr %7, align 8, !tbaa !46
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fr = load double, ptr %i.fq, align 16, !tbaa !48
  store double %i.fr, ptr %i.fp, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62: ; preds = %bb.am, %bb.an
  %.12 = phi double [ %i.fl, %bb.an ], [ %.1, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62, %bb.al
  %.3 = phi double [ %.12, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62 ], [ %.1, %bb.al ] ; 5 uses
  %i.fs = fcmp olt double %.1.2.i, %.3
  %or.cond49 = select i1 %.0159, i1 %i.fs, i1 false
  br i1 %or.cond49, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.ft = load ptr, ptr %0, align 8, !tbaa !122
  %i.fu = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %8), !inline_history !781 ; 2 uses
  %i.fv = fcmp olt double %i.fu, %.3
  br i1 %i.fv, label %bb.aq, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63

bb.aq:                                            ; preds = %bb.ap
  %i.fw = load i32, ptr %i.a, align 4, !tbaa !85
  store i32 %i.fw, ptr %6, align 4, !tbaa !85
  %i.fx = load <2 x double>, ptr %8, align 16, !tbaa !46
  store <2 x double> %i.fx, ptr %7, align 8, !tbaa !46
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ga = load double, ptr %i.fz, align 16, !tbaa !48
  store double %i.ga, ptr %i.fy, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63: ; preds = %bb.ap, %bb.aq
  %.13 = phi double [ %i.fu, %bb.aq ], [ %.3, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit, %bb.ao, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63, %bb.ai, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61, %bb.a
  %.0 = phi double [ %4, %bb.a ], [ %.6, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit ], [ %.11, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61 ], [ %.2, %bb.ai ], [ %.13, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63 ], [ %.3, %bb.ao ]
  ret double %.0
}

declare void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNKS4_4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS9_IiLin1ELin1ELi0ELin1ELin1EEESA_NS9_IdLin1ELi1ELi0ELin1ELi1EEENS9_IiLin1ELi1ELi0ELin1ELi1EEESA_EEvRKNS8_10MatrixBaseISA_EERKNSG_IT_EERKNSG_IT0_EERNS8_15PlainObjectBaseIT1_EERNSS_IT2_EERNSS_IT3_EEEUliE_EEbSK_RKSO_mEUlmE_ZNS6_IlS12_EEbSK_S14_mEUllmE_S15_EEbSK_S14_RKST_RKSW_mEUlllmE_RlS1E_RmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !303  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !302    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
  unreachable
end_hunk_2
begin_hunk_3_@_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE17intersect_ray_optINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEESH_SH_SH_dRNS_3HitIdEE:bb.a
  store double %i.ad, ptr %i.a, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false), !tbaa.struct !289
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %i.af = phi double [ %i.ad, %bb.f ], [ %.pre, %bb.e ], [ %.pre, %bb.d ]
  %.031 = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ false, %bb.d ] ; 2 uses
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.ah = call noundef zeroext i1 @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE17intersect_ray_optINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEESH_SH_SH_dRNS_3HitIdEE(ptr noundef nonnull align 8 dereferenceable(76) %i.ag, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, double noundef %i.af, ptr noundef nonnull align 8 dereferenceable(32) %11)
  br i1 %i.ah, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !316
  %i.ak = load double, ptr %i.a, align 8, !tbaa !48
  %i.al = fcmp olt double %i.aj, %i.ak
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !289
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.0 = phi i1 [ true, %bb.i ], [ %.031, %bb.h ], [ %.031, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %bb.c
  %.1 = phi i1 [ %i.y, %bb.c ], [ %.0, %bb.j ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN3igl18ray_mesh_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_NS2_IdLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKNS2_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERNS_3HitINSI_6ScalarEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 16 dereferenceable(16) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.Eigen::Matrix.91", align 16 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.Eigen::Matrix.91", align 16 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.Eigen::Matrix.91", align 16 ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.Eigen::Matrix.91", align 16 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.Eigen::Matrix.91", align 16 ; 5 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.Eigen::Matrix.91", align 16 ; 5 uses
  %14 = alloca %"class.Eigen::Matrix.91", align 16 ; 4 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = fcmp ogt double %4, %5
  br i1 %i.h, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 16, !tbaa !140   ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = load i32, ptr %i.o, align 16, !tbaa !139
  %i.q = sext i32 %i.p to i64
  call void @_ZN3igl30point_simplex_squared_distanceILi2EN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 16 dereferenceable(16) %14)
  %i.r = load double, ptr %i.g, align 8, !tbaa !48 ; 2 uses
  %i.s = fcmp olt double %i.r, %5
  br i1 %i.s, label %bb.d, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE21leaf_squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.o, align 16, !tbaa !85
  store i32 %i.t, ptr %6, align 4, !tbaa !85
  %i.u = load <2 x double>, ptr %14, align 16, !tbaa !46
  store <2 x double> %i.u, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE21leaf_squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE21leaf_squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit: ; preds = %bb.c, %bb.d
  %.6 = phi double [ %i.r, %bb.d ], [ %5, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.aj

bb.e:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.w = load double, ptr %3, align 16, !tbaa !48 ; 5 uses
  %i.x = load double, ptr %i.v, align 8, !tbaa !48
  %i.y = fcmp ugt double %i.x, %i.w
  br i1 %i.y, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  %i.ac = load double, ptr %i.z, align 8, !tbaa !48
  %i.ad = fcmp ugt double %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.af = load double, ptr %i.ae, align 8
  %i.ag = fcmp ugt double %i.w, %i.af
  %or.cond.i = select i1 %i.ad, i1 true, i1 %i.ag
  br i1 %or.cond.i, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !48
  %i.aj = fcmp ugt double %i.ab, %i.ai
  br i1 %i.aj, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !143
  %i.ak = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 16 dereferenceable(16) %13), !inline_history !849 ; 2 uses
  %i.al = fcmp olt double %i.ak, %5
  br i1 %i.al, label %bb.g, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr %i.f, align 4, !tbaa !85
  store i32 %i.am, ptr %6, align 4, !tbaa !85
  %i.an = load <2 x double>, ptr %13, align 16, !tbaa !46
  store <2 x double> %i.an, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.8 = phi double [ %i.ak, %bb.g ], [ %5, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !141
  %.pre159 = load double, ptr %3, align 16, !tbaa !48
  br label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread

_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread: ; preds = %bb.e, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  %i.ao = phi double [ %.pre159, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.w, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.w, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i ], [ %i.w, %bb.e ] ; 5 uses
  %i.ap = phi ptr [ %.pre, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.l, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.l, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i ], [ %i.l, %bb.e ] ; 5 uses
  %.0158 = phi double [ %.8, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %5, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %5, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i ], [ %5, %bb.e ] ; 6 uses
  %.0156 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ true, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i ], [ true, %bb.e ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !48
  %i.as = fcmp ugt double %i.ar, %i.ao
  br i1 %i.as, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50: ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !48 ; 2 uses
  %i.aw = load double, ptr %i.at, align 8, !tbaa !48
  %i.ax = fcmp ugt double %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.az = load double, ptr %i.ay, align 8
  %i.ba = fcmp ugt double %i.ao, %i.az
  %or.cond.i51 = select i1 %i.ax, i1 true, i1 %i.ba
  br i1 %or.cond.i51, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52

_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !48
  %i.bd = fcmp ugt double %i.av, %i.bc
  br i1 %i.bd, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !143
  %i.be = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.ap, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %.0158, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 16 dereferenceable(16) %12), !inline_history !850 ; 2 uses
  %i.bf = fcmp olt double %i.be, %.0158
  br i1 %i.bf, label %bb.i, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56

bb.i:                                             ; preds = %bb.h
  %i.bg = load i32, ptr %i.e, align 4, !tbaa !85
  store i32 %i.bg, ptr %6, align 4, !tbaa !85
  %i.bh = load <2 x double>, ptr %12, align 16, !tbaa !46
  store <2 x double> %i.bh, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56: ; preds = %bb.h, %bb.i
  %.9 = phi double [ %i.be, %bb.i ], [ %.0158, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.pre160 = load double, ptr %3, align 16, !tbaa !48
  br label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread

_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread: ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52
  %i.bi = phi double [ %.pre160, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56 ], [ %i.ao, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52 ], [ %i.ao, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50 ], [ %i.ao, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ] ; 8 uses
  %.1 = phi double [ %.9, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56 ], [ %.0158, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52 ], [ %.0158, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50 ], [ %.0158, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ] ; 10 uses
  %.0157 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56 ], [ true, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52 ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50 ], [ true, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ] ; 2 uses
  %i.bj = load ptr, ptr %0, align 16, !tbaa !140  ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !48 ; 2 uses
  %i.bm = fcmp ogt double %i.bl, %i.bi
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread
  %i.bn = fsub double %i.bl, %i.bi                ; 2 uses
  %15 = call double @llvm.fmuladd.f64(double %i.bn, double %i.bn, double 0.000000e+00)
  br label %bb.m

bb.k:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !48 ; 2 uses
  %i.bq = fcmp ogt double %i.bi, %i.bp
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = fsub double %i.bi, %i.bp                ; 2 uses
  %16 = call double @llvm.fmuladd.f64(double %i.br, double %i.br, double 0.000000e+00)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1.i = phi double [ %15, %bb.j ], [ %16, %bb.l ], [ 0.000000e+00, %bb.k ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !48 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !48 ; 8 uses
  %i.bw = fcmp ogt double %i.bt, %i.bv
  br i1 %i.bw, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.by = load double, ptr %i.bx, align 8, !tbaa !48 ; 2 uses
  %i.bz = fcmp ogt double %i.bv, %i.by
  br i1 %i.bz, label %bb.o, label %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

bb.o:                                             ; preds = %bb.n
  %i.ca = fsub double %i.bv, %i.by                ; 2 uses
  %i.cb = call double @llvm.fmuladd.f64(double %i.ca, double %i.ca, double %.1.i)
  br label %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

bb.p:                                             ; preds = %bb.m
  %i.cc = fsub double %i.bt, %i.bv                ; 2 uses
  %i.cd = call double @llvm.fmuladd.f64(double %i.cc, double %i.cc, double %.1.i)
  br label %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.n, %bb.o, %bb.p
  %.1.1.i = phi double [ %i.cd, %bb.p ], [ %i.cb, %bb.o ], [ %.1.i, %bb.n ] ; 3 uses
  %i.ce = load ptr, ptr %i.k, align 8, !tbaa !141 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !48 ; 2 uses
  %i.ch = fcmp ogt double %i.cg, %i.bi
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit
  %i.ci = fsub double %i.cg, %i.bi                ; 2 uses
  %17 = call double @llvm.fmuladd.f64(double %i.ci, double %i.ci, double 0.000000e+00)
  br label %bb.t

bb.r:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !48 ; 2 uses
  %i.cl = fcmp ogt double %i.bi, %i.ck
  br i1 %i.cl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cm = fsub double %i.bi, %i.ck                ; 2 uses
  %18 = call double @llvm.fmuladd.f64(double %i.cm, double %i.cm, double 0.000000e+00)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.1.i53 = phi double [ %17, %bb.q ], [ %18, %bb.s ], [ 0.000000e+00, %bb.r ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.co = load double, ptr %i.cn, align 8, !tbaa !48 ; 2 uses
  %i.cp = fcmp ogt double %i.co, %i.bv
  br i1 %i.cp, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !48 ; 2 uses
  %i.cs = fcmp ogt double %i.bv, %i.cr
  br i1 %i.cs, label %bb.v, label %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55

bb.v:                                             ; preds = %bb.u
  %i.ct = fsub double %i.bv, %i.cr                ; 2 uses
  %i.cu = call double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double %.1.i53)
  br label %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55

bb.w:                                             ; preds = %bb.t
  %i.cv = fsub double %i.co, %i.bv                ; 2 uses
  %i.cw = call double @llvm.fmuladd.f64(double %i.cv, double %i.cv, double %.1.i53)
  br label %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55

_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55: ; preds = %bb.u, %bb.v, %bb.w
  %.1.1.i54 = phi double [ %i.cw, %bb.w ], [ %i.cu, %bb.v ], [ %.1.i53, %bb.u ] ; 3 uses
  %i.cx = fcmp olt double %.1.1.i, %.1.1.i54
  br i1 %i.cx, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55
  %i.cy = fcmp olt double %.1.1.i, %.1
  %or.cond = and i1 %.0156, %i.cy
  br i1 %or.cond, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !143
  %i.cz = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 16 dereferenceable(16) %11), !inline_history !849 ; 2 uses
  %i.da = fcmp olt double %i.cz, %.1
  br i1 %i.da, label %bb.z, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit57

bb.z:                                             ; preds = %bb.y
  %i.db = load i32, ptr %i.d, align 4, !tbaa !85
  store i32 %i.db, ptr %6, align 4, !tbaa !85
  %i.dc = load <2 x double>, ptr %11, align 16, !tbaa !46
  store <2 x double> %i.dc, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit57

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit57: ; preds = %bb.y, %bb.z
  %.10 = phi double [ %i.cz, %bb.z ], [ %.1, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit57, %bb.x
  %.2 = phi double [ %.10, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit57 ], [ %.1, %bb.x ] ; 5 uses
  %i.dd = fcmp olt double %.1.1.i54, %.2
  %or.cond43 = and i1 %.0157, %i.dd
  br i1 %or.cond43, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !143
  %i.de = load ptr, ptr %i.k, align 8, !tbaa !141
  %i.df = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.de, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %.2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %10), !inline_history !850 ; 2 uses
  %i.dg = fcmp olt double %i.df, %.2
  br i1 %i.dg, label %bb.ac, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58

bb.ac:                                            ; preds = %bb.ab
  %i.dh = load i32, ptr %i.c, align 4, !tbaa !85
  store i32 %i.dh, ptr %6, align 4, !tbaa !85
  %i.di = load <2 x double>, ptr %10, align 16, !tbaa !46
  store <2 x double> %i.di, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58: ; preds = %bb.ab, %bb.ac
  %.11 = phi double [ %i.df, %bb.ac ], [ %.2, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.aj

bb.ad:                                            ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55
  %i.dj = fcmp olt double %.1.1.i54, %.1
  %or.cond46 = and i1 %.0157, %i.dj
  br i1 %or.cond46, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !143
  %i.dk = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.ce, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 16 dereferenceable(16) %9), !inline_history !850 ; 2 uses
  %i.dl = fcmp olt double %i.dk, %.1
  br i1 %i.dl, label %bb.af, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59

bb.af:                                            ; preds = %bb.ae
  %i.dm = load i32, ptr %i.b, align 4, !tbaa !85
  store i32 %i.dm, ptr %6, align 4, !tbaa !85
  %i.dn = load <2 x double>, ptr %9, align 16, !tbaa !46
  store <2 x double> %i.dn, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59: ; preds = %bb.ae, %bb.af
  %.12 = phi double [ %i.dk, %bb.af ], [ %.1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59, %bb.ad
  %.3 = phi double [ %.12, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %.1, %bb.ad ] ; 5 uses
  %i.do = fcmp olt double %.1.1.i, %.3
  %or.cond49 = and i1 %.0156, %i.do
  br i1 %or.cond49, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !143
  %i.dp = load ptr, ptr %0, align 16, !tbaa !140
  %i.dq = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.dp, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %.3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %8), !inline_history !849 ; 2 uses
  %i.dr = fcmp olt double %i.dq, %.3
  br i1 %i.dr, label %bb.ai, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60

bb.ai:                                            ; preds = %bb.ah
  %i.ds = load i32, ptr %i.a, align 4, !tbaa !85
  store i32 %i.ds, ptr %6, align 4, !tbaa !85
  %i.dt = load <2 x double>, ptr %8, align 16, !tbaa !46
  store <2 x double> %i.dt, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60: ; preds = %bb.ah, %bb.ai
  %.13 = phi double [ %i.dq, %bb.ai ], [ %.3, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE21leaf_squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit, %bb.ag, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60, %bb.aa, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58, %bb.a
  %.0 = phi double [ %4, %bb.a ], [ %.6, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE21leaf_squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit ], [ %.11, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58 ], [ %.2, %bb.aa ], [ %.13, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60 ], [ %.3, %bb.ag ]
  ret double %.0
}

declare void @_ZN3igl30point_simplex_squared_distanceILi2EN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 16 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEdS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEENS2_IfLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEfS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(12) %7) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::Matrix.172", align 8 ; 5 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = fcmp ogt float %4, %5
  br i1 %i.h, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !276    ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !275
  %i.q = sext i32 %i.p to i64
  call void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEENS2_IfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEfS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %14)
  %i.r = load float, ptr %i.g, align 4, !tbaa !178 ; 2 uses
  %i.s = fcmp olt float %i.r, %5
  br i1 %i.s, label %bb.d, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.o, align 8, !tbaa !85
  store i32 %i.t, ptr %6, align 4, !tbaa !85
  %i.u = load <2 x float>, ptr %14, align 8, !tbaa !178
  store <2 x float> %i.u, ptr %7, align 4, !tbaa !178
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.x = load float, ptr %i.w, align 8, !tbaa !178
  store float %i.x, ptr %i.v, align 4, !tbaa !178
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit: ; preds = %bb.c, %bb.d
  %.6 = phi float [ %i.r, %bb.d ], [ %5, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ar

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load float, ptr %3, align 4, !tbaa !178  ; 6 uses
  %i.aa = load float, ptr %i.y, align 4, !tbaa !178
  %i.ab = fcmp ugt float %i.aa, %i.z
  br i1 %i.ab, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !178 ; 2 uses
  %i.af = load float, ptr %i.ac, align 4, !tbaa !178
  %i.ag = fcmp ugt float %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !178 ; 2 uses
  %i.ak = load float, ptr %i.ah, align 4, !tbaa !178
  %i.al = fcmp ugt float %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.an = load float, ptr %i.am, align 4
  %i.ao = fcmp ugt float %i.z, %i.an
  %or.cond.i = select i1 %i.al, i1 true, i1 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = fcmp ugt float %i.ae, %i.aq
  %or.cond17.i = select i1 %or.cond.i, i1 true, i1 %i.ar
  br i1 %or.cond17.i, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.at = load float, ptr %i.as, align 4, !tbaa !178
  %i.au = fcmp ugt float %i.aj, %i.at
  br i1 %i.au, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !179
  %i.av = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %13), !inline_history !851 ; 2 uses
  %i.aw = fcmp olt float %i.av, %5
  br i1 %i.aw, label %bb.g, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.ax = load i32, ptr %i.f, align 4, !tbaa !85
  store i32 %i.ax, ptr %6, align 4, !tbaa !85
  %i.ay = load <2 x float>, ptr %13, align 8, !tbaa !178
  store <2 x float> %i.ay, ptr %7, align 4, !tbaa !178
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !178
  store float %i.bb, ptr %i.az, align 4, !tbaa !178
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.8 = phi float [ %i.av, %bb.g ], [ %5, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !278
  %.pre162 = load float, ptr %3, align 4, !tbaa !178
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread

_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i, %bb.e, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  %i.bc = phi float [ %.pre162, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.z, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.z, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.z, %bb.e ], [ %i.z, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 6 uses
  %i.bd = phi ptr [ %.pre, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.l, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.l, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.l, %bb.e ], [ %i.l, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0161 = phi float [ %.8, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %5, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %5, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %5, %bb.e ], [ %5, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0159 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ true, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ true, %bb.e ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load float, ptr %i.be, align 4, !tbaa !178
  %i.bg = fcmp ugt float %i.bf, %i.bc
  br i1 %i.bg, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50: ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !178 ; 2 uses
  %i.bk = load float, ptr %i.bh, align 4, !tbaa !178
  %i.bl = fcmp ugt float %i.bk, %i.bj
  br i1 %i.bl, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !178 ; 2 uses
  %i.bp = load float, ptr %i.bm, align 4, !tbaa !178
  %i.bq = fcmp ugt float %i.bp, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 36
  %i.bs = load float, ptr %i.br, align 4
  %i.bt = fcmp ugt float %i.bc, %i.bs
  %or.cond.i52 = select i1 %i.bq, i1 true, i1 %i.bt
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bv = load float, ptr %i.bu, align 4
  %i.bw = fcmp ugt float %i.bj, %i.bv
  %or.cond17.i53 = select i1 %or.cond.i52, i1 true, i1 %i.bw
  br i1 %or.cond17.i53, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54

_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  %i.by = load float, ptr %i.bx, align 4, !tbaa !178
  %i.bz = fcmp ugt float %i.bo, %i.by
  br i1 %i.bz, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !179
  %i.ca = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.bd, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.0161, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %12), !inline_history !852 ; 2 uses
  %i.cb = fcmp olt float %i.ca, %.0161
  br i1 %i.cb, label %bb.i, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59

bb.i:                                             ; preds = %bb.h
  %i.cc = load i32, ptr %i.e, align 4, !tbaa !85
  store i32 %i.cc, ptr %6, align 4, !tbaa !85
  %i.cd = load <2 x float>, ptr %12, align 8, !tbaa !178
  store <2 x float> %i.cd, ptr %7, align 4, !tbaa !178
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !178
  store float %i.cg, ptr %i.ce, align 4, !tbaa !178
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59: ; preds = %bb.h, %bb.i
  %.9 = phi float [ %i.ca, %bb.i ], [ %.0161, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.pre163 = load float, ptr %3, align 4, !tbaa !178
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread

_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54
  %i.ch = phi float [ %.pre163, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %i.bc, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ %i.bc, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ %i.bc, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ %i.bc, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 8 uses
  %.1 = phi float [ %.9, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %.0161, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ %.0161, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ %.0161, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ %.0161, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 10 uses
  %.0160 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ true, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ true, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !276   ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !178 ; 2 uses
  %i.cl = fcmp ogt float %i.ck, %i.ch
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread
  %i.cm = fsub float %i.ck, %i.ch                 ; 2 uses
  %15 = call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float 0.000000e+00)
  br label %bb.m

bb.k:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 36
  %i.co = load float, ptr %i.cn, align 4, !tbaa !178 ; 2 uses
  %i.cp = fcmp ogt float %i.ch, %i.co
  br i1 %i.cp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cq = fsub float %i.ch, %i.co                 ; 2 uses
  %16 = call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float 0.000000e+00)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1.i = phi float [ %15, %bb.j ], [ %16, %bb.l ], [ 0.000000e+00, %bb.k ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 28
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !178 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !178 ; 8 uses
  %i.cv = fcmp ogt float %i.cs, %i.cu
  br i1 %i.cv, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !178 ; 2 uses
  %i.cy = fcmp ogt float %i.cu, %i.cx
  br i1 %i.cy, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cz = fsub float %i.cu, %i.cx                 ; 2 uses
  %i.da = call float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float %.1.i)
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.db = fsub float %i.cs, %i.cu                 ; 2 uses
  %i.dc = call float @llvm.fmuladd.f32(float %i.db, float %i.db, float %.1.i)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.1.1.i = phi float [ %i.dc, %bb.p ], [ %i.da, %bb.o ], [ %.1.i, %bb.n ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.de = load float, ptr %i.dd, align 4, !tbaa !178 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dg = load float, ptr %i.df, align 4, !tbaa !178 ; 8 uses
  %i.dh = fcmp ogt float %i.de, %i.dg
  br i1 %i.dh, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 44
  %i.dj = load float, ptr %i.di, align 4, !tbaa !178 ; 2 uses
  %i.dk = fcmp ogt float %i.dg, %i.dj
  br i1 %i.dk, label %bb.s, label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit

bb.s:                                             ; preds = %bb.r
  %i.dl = fsub float %i.dg, %i.dj                 ; 2 uses
  %i.dm = call float @llvm.fmuladd.f32(float %i.dl, float %i.dl, float %.1.1.i)
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit

bb.t:                                             ; preds = %bb.q
  %i.dn = fsub float %i.de, %i.dg                 ; 2 uses
  %i.do = call float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float %.1.1.i)
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.r, %bb.s, %bb.t
  %.1.2.i = phi float [ %i.do, %bb.t ], [ %i.dm, %bb.s ], [ %.1.1.i, %bb.r ] ; 3 uses
  %i.dp = load ptr, ptr %i.k, align 8, !tbaa !278 ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !178 ; 2 uses
  %i.ds = fcmp ogt float %i.dr, %i.ch
  br i1 %i.ds, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit
  %i.dt = fsub float %i.dr, %i.ch                 ; 2 uses
  %17 = call float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float 0.000000e+00)
  br label %bb.x

bb.v:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 36
  %i.dv = load float, ptr %i.du, align 4, !tbaa !178 ; 2 uses
  %i.dw = fcmp ogt float %i.ch, %i.dv
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dx = fsub float %i.ch, %i.dv                 ; 2 uses
  %18 = call float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float 0.000000e+00)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.1.i55 = phi float [ %17, %bb.u ], [ %18, %bb.w ], [ 0.000000e+00, %bb.v ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 28
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !178 ; 2 uses
  %i.ea = fcmp ogt float %i.dz, %i.cu
  br i1 %i.ea, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !178 ; 2 uses
  %i.ed = fcmp ogt float %i.cu, %i.ec
  br i1 %i.ed, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ee = fsub float %i.cu, %i.ec                 ; 2 uses
  %i.ef = call float @llvm.fmuladd.f32(float %i.ee, float %i.ee, float %.1.i55)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.eg = fsub float %i.dz, %i.cu                 ; 2 uses
  %i.eh = call float @llvm.fmuladd.f32(float %i.eg, float %i.eg, float %.1.i55)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.1.1.i56 = phi float [ %i.eh, %bb.aa ], [ %i.ef, %bb.z ], [ %.1.i55, %bb.y ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !178 ; 2 uses
  %i.ek = fcmp ogt float %i.ej, %i.dg
  br i1 %i.ek, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds nuw i8, ptr %i.dp, i64 44
  %i.em = load float, ptr %i.el, align 4, !tbaa !178 ; 2 uses
  %i.en = fcmp ogt float %i.dg, %i.em
  br i1 %i.en, label %bb.ad, label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58

bb.ad:                                            ; preds = %bb.ac
  %i.eo = fsub float %i.dg, %i.em                 ; 2 uses
  %i.ep = call float @llvm.fmuladd.f32(float %i.eo, float %i.eo, float %.1.1.i56)
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58

bb.ae:                                            ; preds = %bb.ab
  %i.eq = fsub float %i.ej, %i.dg                 ; 2 uses
  %i.er = call float @llvm.fmuladd.f32(float %i.eq, float %i.eq, float %.1.1.i56)
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58

_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58: ; preds = %bb.ac, %bb.ad, %bb.ae
  %.1.2.i57 = phi float [ %i.er, %bb.ae ], [ %i.ep, %bb.ad ], [ %.1.1.i56, %bb.ac ] ; 3 uses
  %i.es = fcmp olt float %.1.2.i, %.1.2.i57
  br i1 %i.es, label %bb.af, label %bb.al

bb.af:                                            ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58
  %i.et = fcmp olt float %.1.2.i, %.1
  %or.cond = select i1 %.0159, i1 %i.et, i1 false
  br i1 %or.cond, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !179
  %i.eu = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.ci, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %11), !inline_history !851 ; 2 uses
  %i.ev = fcmp olt float %i.eu, %.1
  br i1 %i.ev, label %bb.ah, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60

bb.ah:                                            ; preds = %bb.ag
  %i.ew = load i32, ptr %i.d, align 4, !tbaa !85
  store i32 %i.ew, ptr %6, align 4, !tbaa !85
  %i.ex = load <2 x float>, ptr %11, align 8, !tbaa !178
  store <2 x float> %i.ex, ptr %7, align 4, !tbaa !178
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fa = load float, ptr %i.ez, align 8, !tbaa !178
  store float %i.fa, ptr %i.ey, align 4, !tbaa !178
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60: ; preds = %bb.ag, %bb.ah
  %.10 = phi float [ %i.eu, %bb.ah ], [ %.1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60, %bb.af
  %.2 = phi float [ %.10, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60 ], [ %.1, %bb.af ] ; 5 uses
  %i.fb = fcmp olt float %.1.2.i57, %.2
  %or.cond43 = and i1 %.0160, %i.fb
  br i1 %or.cond43, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !179
  %i.fc = load ptr, ptr %i.k, align 8, !tbaa !278
  %i.fd = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.fc, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %10), !inline_history !852 ; 2 uses
  %i.fe = fcmp olt float %i.fd, %.2
  br i1 %i.fe, label %bb.ak, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61

bb.ak:                                            ; preds = %bb.aj
  %i.ff = load i32, ptr %i.c, align 4, !tbaa !85
  store i32 %i.ff, ptr %6, align 4, !tbaa !85
  %i.fg = load <2 x float>, ptr %10, align 8, !tbaa !178
  store <2 x float> %i.fg, ptr %7, align 4, !tbaa !178
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fj = load float, ptr %i.fi, align 8, !tbaa !178
  store float %i.fj, ptr %i.fh, align 4, !tbaa !178
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61: ; preds = %bb.aj, %bb.ak
  %.11 = phi float [ %i.fd, %bb.ak ], [ %.2, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.ar

bb.al:                                            ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58
  %i.fk = fcmp olt float %.1.2.i57, %.1
  %or.cond46 = and i1 %.0160, %i.fk
  br i1 %or.cond46, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !179
  %i.fl = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.dp, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %9), !inline_history !852 ; 2 uses
  %i.fm = fcmp olt float %i.fl, %.1
  br i1 %i.fm, label %bb.an, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62

bb.an:                                            ; preds = %bb.am
  %i.fn = load i32, ptr %i.b, align 4, !tbaa !85
  store i32 %i.fn, ptr %6, align 4, !tbaa !85
  %i.fo = load <2 x float>, ptr %9, align 8, !tbaa !178
  store <2 x float> %i.fo, ptr %7, align 4, !tbaa !178
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fr = load float, ptr %i.fq, align 8, !tbaa !178
  store float %i.fr, ptr %i.fp, align 4, !tbaa !178
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62: ; preds = %bb.am, %bb.an
  %.12 = phi float [ %i.fl, %bb.an ], [ %.1, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62, %bb.al
  %.3 = phi float [ %.12, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62 ], [ %.1, %bb.al ] ; 5 uses
  %i.fs = fcmp olt float %.1.2.i, %.3
  %or.cond49 = select i1 %.0159, i1 %i.fs, i1 false
  br i1 %or.cond49, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !179
  %i.ft = load ptr, ptr %0, align 8, !tbaa !276
  %i.fu = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %8), !inline_history !851 ; 2 uses
  %i.fv = fcmp olt float %i.fu, %.3
  br i1 %i.fv, label %bb.aq, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63

bb.aq:                                            ; preds = %bb.ap
  %i.fw = load i32, ptr %i.a, align 4, !tbaa !85
  store i32 %i.fw, ptr %6, align 4, !tbaa !85
  %i.fx = load <2 x float>, ptr %8, align 8, !tbaa !178
  store <2 x float> %i.fx, ptr %7, align 4, !tbaa !178
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !178
  store float %i.ga, ptr %i.fy, align 4, !tbaa !178
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63: ; preds = %bb.ap, %bb.aq
  %.13 = phi float [ %i.fu, %bb.aq ], [ %.3, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit, %bb.ao, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63, %bb.ai, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61, %bb.a
  %.0 = phi float [ %4, %bb.a ], [ %.6, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit ], [ %.11, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61 ], [ %.2, %bb.ai ], [ %.13, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63 ], [ %.3, %bb.ao ]
  ret float %.0
}

declare void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEENS2_IfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEfS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #2

declare noundef double @_ZN3igl3EPSIdEET_v() local_unnamed_addr #2

declare noundef double @_ZN3igl17doublearea_singleIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEES3_S3_EENT_6ScalarERKNS1_10MatrixBaseIS4_EERKNS6_IT0_EERKNS6_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EE:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %14 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = fcmp ogt double %4, %5
  br i1 %i.h, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !62     ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !63
  %i.q = sext i32 %i.p to i64
  call void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEdS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %i.r = load double, ptr %i.g, align 8, !tbaa !48 ; 2 uses
  %i.s = fcmp olt double %i.r, %5
  br i1 %i.s, label %bb.d, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.o, align 8, !tbaa !85
  store i32 %i.t, ptr %6, align 4, !tbaa !85
  %i.u = load <2 x double>, ptr %14, align 16, !tbaa !46
  store <2 x double> %i.u, ptr %7, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.x = load double, ptr %i.w, align 16, !tbaa !48
  store double %i.x, ptr %i.v, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit: ; preds = %bb.c, %bb.d
  %.6 = phi double [ %i.r, %bb.d ], [ %5, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ar

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load double, ptr %3, align 8, !tbaa !48  ; 6 uses
  %i.aa = load double, ptr %i.y, align 8, !tbaa !48
  %i.ab = fcmp ugt double %i.aa, %i.z
  br i1 %i.ab, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %i.af = load double, ptr %i.ac, align 8, !tbaa !48
  %i.ag = fcmp ugt double %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !48 ; 2 uses
  %i.ak = load double, ptr %i.ah, align 8, !tbaa !48
  %i.al = fcmp ugt double %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.an = load double, ptr %i.am, align 8
  %i.ao = fcmp ugt double %i.z, %i.an
  %or.cond.i = select i1 %i.al, i1 true, i1 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = fcmp ugt double %i.ae, %i.aq
  %or.cond17.i = select i1 %or.cond.i, i1 true, i1 %i.ar
  br i1 %or.cond17.i, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.at = load double, ptr %i.as, align 8, !tbaa !48
  %i.au = fcmp ugt double %i.aj, %i.at
  br i1 %i.au, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.av = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %13), !inline_history !1536 ; 2 uses
  %i.aw = fcmp olt double %i.av, %5
  br i1 %i.aw, label %bb.g, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.ax = load i32, ptr %i.f, align 4, !tbaa !85
  store i32 %i.ax, ptr %6, align 4, !tbaa !85
  %i.ay = load <2 x double>, ptr %13, align 16, !tbaa !46
  store <2 x double> %i.ay, ptr %7, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bb = load double, ptr %i.ba, align 16, !tbaa !48
  store double %i.bb, ptr %i.az, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.8 = phi double [ %i.av, %bb.g ], [ %5, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !81
  %.pre162 = load double, ptr %3, align 8, !tbaa !48
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i, %bb.e, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  %i.bc = phi double [ %.pre162, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.z, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.z, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.z, %bb.e ], [ %i.z, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 6 uses
  %i.bd = phi ptr [ %.pre, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.l, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.l, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.l, %bb.e ], [ %i.l, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0161 = phi double [ %.8, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %5, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %5, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %5, %bb.e ], [ %5, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0159 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ true, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ true, %bb.e ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load double, ptr %i.be, align 8, !tbaa !48
  %i.bg = fcmp ugt double %i.bf, %i.bc
  br i1 %i.bg, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50: ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !48 ; 2 uses
  %i.bk = load double, ptr %i.bh, align 8, !tbaa !48
  %i.bl = fcmp ugt double %i.bk, %i.bj
  br i1 %i.bl, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !48 ; 2 uses
  %i.bp = load double, ptr %i.bm, align 8, !tbaa !48
  %i.bq = fcmp ugt double %i.bp, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bs = load double, ptr %i.br, align 8
  %i.bt = fcmp ugt double %i.bc, %i.bs
  %or.cond.i52 = select i1 %i.bq, i1 true, i1 %i.bt
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bv = load double, ptr %i.bu, align 8
  %i.bw = fcmp ugt double %i.bj, %i.bv
  %or.cond17.i53 = select i1 %or.cond.i52, i1 true, i1 %i.bw
  br i1 %or.cond17.i53, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.by = load double, ptr %i.bx, align 8, !tbaa !48
  %i.bz = fcmp ugt double %i.bo, %i.by
  br i1 %i.bz, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.ca = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.bd, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.0161, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %12), !inline_history !1537 ; 2 uses
  %i.cb = fcmp olt double %i.ca, %.0161
  br i1 %i.cb, label %bb.i, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59

bb.i:                                             ; preds = %bb.h
  %i.cc = load i32, ptr %i.e, align 4, !tbaa !85
  store i32 %i.cc, ptr %6, align 4, !tbaa !85
  %i.cd = load <2 x double>, ptr %12, align 16, !tbaa !46
  store <2 x double> %i.cd, ptr %7, align 8, !tbaa !46
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cg = load double, ptr %i.cf, align 16, !tbaa !48
  store double %i.cg, ptr %i.ce, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59: ; preds = %bb.h, %bb.i
  %.9 = phi double [ %i.ca, %bb.i ], [ %.0161, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.pre163 = load double, ptr %3, align 8, !tbaa !48
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54
  %i.ch = phi double [ %.pre163, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %i.bc, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ %i.bc, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ %i.bc, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ %i.bc, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 8 uses
  %.1 = phi double [ %.9, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %.0161, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ %.0161, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ %.0161, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ %.0161, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 10 uses
  %.0160 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ true, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ true, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !62    ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !48 ; 2 uses
  %i.cl = fcmp ogt double %i.ck, %i.ch
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread
  %i.cm = fsub double %i.ck, %i.ch                ; 2 uses
  %15 = call double @llvm.fmuladd.f64(double %i.cm, double %i.cm, double 0.000000e+00)
  br label %bb.m

bb.k:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.co = load double, ptr %i.cn, align 8, !tbaa !48 ; 2 uses
  %i.cp = fcmp ogt double %i.ch, %i.co
  br i1 %i.cp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cq = fsub double %i.ch, %i.co                ; 2 uses
  %16 = call double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double 0.000000e+00)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1.i = phi double [ %15, %bb.j ], [ %16, %bb.l ], [ 0.000000e+00, %bb.k ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !48 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !48 ; 8 uses
  %i.cv = fcmp ogt double %i.cs, %i.cu
  br i1 %i.cv, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !48 ; 2 uses
  %i.cy = fcmp ogt double %i.cu, %i.cx
  br i1 %i.cy, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cz = fsub double %i.cu, %i.cx                ; 2 uses
  %i.da = call double @llvm.fmuladd.f64(double %i.cz, double %i.cz, double %.1.i)
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.db = fsub double %i.cs, %i.cu                ; 2 uses
  %i.dc = call double @llvm.fmuladd.f64(double %i.db, double %i.db, double %.1.i)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.1.1.i = phi double [ %i.dc, %bb.p ], [ %i.da, %bb.o ], [ %.1.i, %bb.n ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.de = load double, ptr %i.dd, align 8, !tbaa !48 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dg = load double, ptr %i.df, align 8, !tbaa !48 ; 8 uses
  %i.dh = fcmp ogt double %i.de, %i.dg
  br i1 %i.dh, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.dj = load double, ptr %i.di, align 8, !tbaa !48 ; 2 uses
  %i.dk = fcmp ogt double %i.dg, %i.dj
  br i1 %i.dk, label %bb.s, label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

bb.s:                                             ; preds = %bb.r
  %i.dl = fsub double %i.dg, %i.dj                ; 2 uses
  %i.dm = call double @llvm.fmuladd.f64(double %i.dl, double %i.dl, double %.1.1.i)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

bb.t:                                             ; preds = %bb.q
  %i.dn = fsub double %i.de, %i.dg                ; 2 uses
  %i.do = call double @llvm.fmuladd.f64(double %i.dn, double %i.dn, double %.1.1.i)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.r, %bb.s, %bb.t
  %.1.2.i = phi double [ %i.do, %bb.t ], [ %i.dm, %bb.s ], [ %.1.1.i, %bb.r ] ; 3 uses
  %i.dp = load ptr, ptr %i.k, align 8, !tbaa !81  ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !48 ; 2 uses
  %i.ds = fcmp ogt double %i.dr, %i.ch
  br i1 %i.ds, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit
  %i.dt = fsub double %i.dr, %i.ch                ; 2 uses
  %17 = call double @llvm.fmuladd.f64(double %i.dt, double %i.dt, double 0.000000e+00)
  br label %bb.x

bb.v:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dv = load double, ptr %i.du, align 8, !tbaa !48 ; 2 uses
  %i.dw = fcmp ogt double %i.ch, %i.dv
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dx = fsub double %i.ch, %i.dv                ; 2 uses
  %18 = call double @llvm.fmuladd.f64(double %i.dx, double %i.dx, double 0.000000e+00)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.1.i55 = phi double [ %17, %bb.u ], [ %18, %bb.w ], [ 0.000000e+00, %bb.v ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !48 ; 2 uses
  %i.ea = fcmp ogt double %i.dz, %i.cu
  br i1 %i.ea, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !48 ; 2 uses
  %i.ed = fcmp ogt double %i.cu, %i.ec
  br i1 %i.ed, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ee = fsub double %i.cu, %i.ec                ; 2 uses
  %i.ef = call double @llvm.fmuladd.f64(double %i.ee, double %i.ee, double %.1.i55)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.eg = fsub double %i.dz, %i.cu                ; 2 uses
  %i.eh = call double @llvm.fmuladd.f64(double %i.eg, double %i.eg, double %.1.i55)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.1.1.i56 = phi double [ %i.eh, %bb.aa ], [ %i.ef, %bb.z ], [ %.1.i55, %bb.y ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !48 ; 2 uses
  %i.ek = fcmp ogt double %i.ej, %i.dg
  br i1 %i.ek, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.em = load double, ptr %i.el, align 8, !tbaa !48 ; 2 uses
  %i.en = fcmp ogt double %i.dg, %i.em
  br i1 %i.en, label %bb.ad, label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58

bb.ad:                                            ; preds = %bb.ac
  %i.eo = fsub double %i.dg, %i.em                ; 2 uses
  %i.ep = call double @llvm.fmuladd.f64(double %i.eo, double %i.eo, double %.1.1.i56)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58

bb.ae:                                            ; preds = %bb.ab
  %i.eq = fsub double %i.ej, %i.dg                ; 2 uses
  %i.er = call double @llvm.fmuladd.f64(double %i.eq, double %i.eq, double %.1.1.i56)
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58

_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58: ; preds = %bb.ac, %bb.ad, %bb.ae
  %.1.2.i57 = phi double [ %i.er, %bb.ae ], [ %i.ep, %bb.ad ], [ %.1.1.i56, %bb.ac ] ; 3 uses
  %i.es = fcmp olt double %.1.2.i, %.1.2.i57
  br i1 %i.es, label %bb.af, label %bb.al

bb.af:                                            ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58
  %i.et = fcmp olt double %.1.2.i, %.1
  %or.cond = select i1 %.0159, i1 %i.et, i1 false
  br i1 %or.cond, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.eu = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.ci, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %11), !inline_history !1536 ; 2 uses
  %i.ev = fcmp olt double %i.eu, %.1
  br i1 %i.ev, label %bb.ah, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60

bb.ah:                                            ; preds = %bb.ag
  %i.ew = load i32, ptr %i.d, align 4, !tbaa !85
  store i32 %i.ew, ptr %6, align 4, !tbaa !85
  %i.ex = load <2 x double>, ptr %11, align 16, !tbaa !46
  store <2 x double> %i.ex, ptr %7, align 8, !tbaa !46
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fa = load double, ptr %i.ez, align 16, !tbaa !48
  store double %i.fa, ptr %i.ey, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60: ; preds = %bb.ag, %bb.ah
  %.10 = phi double [ %i.eu, %bb.ah ], [ %.1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60, %bb.af
  %.2 = phi double [ %.10, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60 ], [ %.1, %bb.af ] ; 5 uses
  %i.fb = fcmp olt double %.1.2.i57, %.2
  %or.cond43 = and i1 %.0160, %i.fb
  br i1 %or.cond43, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.fc = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.fd = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.fc, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !1537 ; 2 uses
  %i.fe = fcmp olt double %i.fd, %.2
  br i1 %i.fe, label %bb.ak, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61

bb.ak:                                            ; preds = %bb.aj
  %i.ff = load i32, ptr %i.c, align 4, !tbaa !85
  store i32 %i.ff, ptr %6, align 4, !tbaa !85
  %i.fg = load <2 x double>, ptr %10, align 16, !tbaa !46
  store <2 x double> %i.fg, ptr %7, align 8, !tbaa !46
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fj = load double, ptr %i.fi, align 16, !tbaa !48
  store double %i.fj, ptr %i.fh, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61: ; preds = %bb.aj, %bb.ak
  %.11 = phi double [ %i.fd, %bb.ak ], [ %.2, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.ar

bb.al:                                            ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58
  %i.fk = fcmp olt double %.1.2.i57, %.1
  %or.cond46 = and i1 %.0160, %i.fk
  br i1 %or.cond46, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.fl = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.dp, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !1537 ; 2 uses
  %i.fm = fcmp olt double %i.fl, %.1
  br i1 %i.fm, label %bb.an, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62

bb.an:                                            ; preds = %bb.am
  %i.fn = load i32, ptr %i.b, align 4, !tbaa !85
  store i32 %i.fn, ptr %6, align 4, !tbaa !85
  %i.fo = load <2 x double>, ptr %9, align 16, !tbaa !46
  store <2 x double> %i.fo, ptr %7, align 8, !tbaa !46
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fr = load double, ptr %i.fq, align 16, !tbaa !48
  store double %i.fr, ptr %i.fp, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62: ; preds = %bb.am, %bb.an
  %.12 = phi double [ %i.fl, %bb.an ], [ %.1, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62, %bb.al
  %.3 = phi double [ %.12, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62 ], [ %.1, %bb.al ] ; 5 uses
  %i.fs = fcmp olt double %.1.2.i, %.3
  %or.cond49 = select i1 %.0159, i1 %i.fs, i1 false
  br i1 %or.cond49, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !49
  %i.ft = load ptr, ptr %0, align 8, !tbaa !62
  %i.fu = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %8), !inline_history !1536 ; 2 uses
  %i.fv = fcmp olt double %i.fu, %.3
  br i1 %i.fv, label %bb.aq, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63

bb.aq:                                            ; preds = %bb.ap
  %i.fw = load i32, ptr %i.a, align 4, !tbaa !85
  store i32 %i.fw, ptr %6, align 4, !tbaa !85
  %i.fx = load <2 x double>, ptr %8, align 16, !tbaa !46
  store <2 x double> %i.fx, ptr %7, align 8, !tbaa !46
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ga = load double, ptr %i.fz, align 16, !tbaa !48
  store double %i.ga, ptr %i.fy, align 8, !tbaa !48
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63: ; preds = %bb.ap, %bb.aq
  %.13 = phi double [ %i.fu, %bb.aq ], [ %.3, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit, %bb.ao, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63, %bb.ai, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61, %bb.a
  %.0 = phi double [ %4, %bb.a ], [ %.6, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit ], [ %.11, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61 ], [ %.2, %bb.ai ], [ %.13, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63 ], [ %.3, %bb.ao ]
  ret double %.0
}

declare void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEdS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE16squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 16 dereferenceable(16) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.Eigen::Matrix.91", align 16 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.Eigen::Matrix.91", align 16 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.Eigen::Matrix.91", align 16 ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.Eigen::Matrix.91", align 16 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.Eigen::Matrix.91", align 16 ; 5 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.Eigen::Matrix.91", align 16 ; 5 uses
  %14 = alloca %"class.Eigen::Matrix.91", align 16 ; 4 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = fcmp ogt double %4, %5
  br i1 %i.h, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 16, !tbaa !140   ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = load i32, ptr %i.o, align 16, !tbaa !139
  %i.q = sext i32 %i.p to i64
  call void @_ZN3igl30point_simplex_squared_distanceILi2EN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEdS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 16 dereferenceable(16) %14)
  %i.r = load double, ptr %i.g, align 8, !tbaa !48 ; 2 uses
  %i.s = fcmp olt double %i.r, %5
  br i1 %i.s, label %bb.d, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE21leaf_squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.o, align 16, !tbaa !85
  store i32 %i.t, ptr %6, align 4, !tbaa !85
  %i.u = load <2 x double>, ptr %14, align 16, !tbaa !46
  store <2 x double> %i.u, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE21leaf_squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE21leaf_squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit: ; preds = %bb.c, %bb.d
  %.6 = phi double [ %i.r, %bb.d ], [ %5, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.aj

bb.e:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.w = load double, ptr %3, align 16, !tbaa !48 ; 5 uses
  %i.x = load double, ptr %i.v, align 8, !tbaa !48
  %i.y = fcmp ugt double %i.x, %i.w
  br i1 %i.y, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  %i.ac = load double, ptr %i.z, align 8, !tbaa !48
  %i.ad = fcmp ugt double %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.af = load double, ptr %i.ae, align 8
  %i.ag = fcmp ugt double %i.w, %i.af
  %or.cond.i = select i1 %i.ad, i1 true, i1 %i.ag
  br i1 %or.cond.i, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !48
  %i.aj = fcmp ugt double %i.ab, %i.ai
  br i1 %i.aj, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !143
  %i.ak = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE16squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 16 dereferenceable(16) %13), !inline_history !1538 ; 2 uses
  %i.al = fcmp olt double %i.ak, %5
  br i1 %i.al, label %bb.g, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr %i.f, align 4, !tbaa !85
  store i32 %i.am, ptr %6, align 4, !tbaa !85
  %i.an = load <2 x double>, ptr %13, align 16, !tbaa !46
  store <2 x double> %i.an, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.8 = phi double [ %i.ak, %bb.g ], [ %5, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !141
  %.pre159 = load double, ptr %3, align 16, !tbaa !48
  br label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread

_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread: ; preds = %bb.e, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  %i.ao = phi double [ %.pre159, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.w, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.w, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i ], [ %i.w, %bb.e ] ; 5 uses
  %i.ap = phi ptr [ %.pre, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.l, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.l, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i ], [ %i.l, %bb.e ] ; 5 uses
  %.0158 = phi double [ %.8, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %5, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %5, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i ], [ %5, %bb.e ] ; 6 uses
  %.0156 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ true, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i ], [ true, %bb.e ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !48
  %i.as = fcmp ugt double %i.ar, %i.ao
  br i1 %i.as, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50: ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !48 ; 2 uses
  %i.aw = load double, ptr %i.at, align 8, !tbaa !48
  %i.ax = fcmp ugt double %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.az = load double, ptr %i.ay, align 8
  %i.ba = fcmp ugt double %i.ao, %i.az
  %or.cond.i51 = select i1 %i.ax, i1 true, i1 %i.ba
  br i1 %or.cond.i51, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52

_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !48
  %i.bd = fcmp ugt double %i.av, %i.bc
  br i1 %i.bd, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !143
  %i.be = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE16squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.ap, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %.0158, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 16 dereferenceable(16) %12), !inline_history !1539 ; 2 uses
  %i.bf = fcmp olt double %i.be, %.0158
  br i1 %i.bf, label %bb.i, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56

bb.i:                                             ; preds = %bb.h
  %i.bg = load i32, ptr %i.e, align 4, !tbaa !85
  store i32 %i.bg, ptr %6, align 4, !tbaa !85
  %i.bh = load <2 x double>, ptr %12, align 16, !tbaa !46
  store <2 x double> %i.bh, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56: ; preds = %bb.h, %bb.i
  %.9 = phi double [ %i.be, %bb.i ], [ %.0158, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.pre160 = load double, ptr %3, align 16, !tbaa !48
  br label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread

_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread: ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52
  %i.bi = phi double [ %.pre160, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56 ], [ %i.ao, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52 ], [ %i.ao, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50 ], [ %i.ao, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ] ; 8 uses
  %.1 = phi double [ %.9, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56 ], [ %.0158, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52 ], [ %.0158, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50 ], [ %.0158, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ] ; 10 uses
  %.0157 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit56 ], [ true, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52 ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i50 ], [ true, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ] ; 2 uses
  %i.bj = load ptr, ptr %0, align 16, !tbaa !140  ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !48 ; 2 uses
  %i.bm = fcmp ogt double %i.bl, %i.bi
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread
  %i.bn = fsub double %i.bl, %i.bi                ; 2 uses
  %15 = call double @llvm.fmuladd.f64(double %i.bn, double %i.bn, double 0.000000e+00)
  br label %bb.m

bb.k:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit52.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !48 ; 2 uses
  %i.bq = fcmp ogt double %i.bi, %i.bp
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = fsub double %i.bi, %i.bp                ; 2 uses
  %16 = call double @llvm.fmuladd.f64(double %i.br, double %i.br, double 0.000000e+00)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1.i = phi double [ %15, %bb.j ], [ %16, %bb.l ], [ 0.000000e+00, %bb.k ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !48 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !48 ; 8 uses
  %i.bw = fcmp ogt double %i.bt, %i.bv
  br i1 %i.bw, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.by = load double, ptr %i.bx, align 8, !tbaa !48 ; 2 uses
  %i.bz = fcmp ogt double %i.bv, %i.by
  br i1 %i.bz, label %bb.o, label %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

bb.o:                                             ; preds = %bb.n
  %i.ca = fsub double %i.bv, %i.by                ; 2 uses
  %i.cb = call double @llvm.fmuladd.f64(double %i.ca, double %i.ca, double %.1.i)
  br label %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

bb.p:                                             ; preds = %bb.m
  %i.cc = fsub double %i.bt, %i.bv                ; 2 uses
  %i.cd = call double @llvm.fmuladd.f64(double %i.cc, double %i.cc, double %.1.i)
  br label %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.n, %bb.o, %bb.p
  %.1.1.i = phi double [ %i.cd, %bb.p ], [ %i.cb, %bb.o ], [ %.1.i, %bb.n ] ; 3 uses
  %i.ce = load ptr, ptr %i.k, align 8, !tbaa !141 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !48 ; 2 uses
  %i.ch = fcmp ogt double %i.cg, %i.bi
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit
  %i.ci = fsub double %i.cg, %i.bi                ; 2 uses
  %17 = call double @llvm.fmuladd.f64(double %i.ci, double %i.ci, double 0.000000e+00)
  br label %bb.t

bb.r:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !48 ; 2 uses
  %i.cl = fcmp ogt double %i.bi, %i.ck
  br i1 %i.cl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cm = fsub double %i.bi, %i.ck                ; 2 uses
  %18 = call double @llvm.fmuladd.f64(double %i.cm, double %i.cm, double 0.000000e+00)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.1.i53 = phi double [ %17, %bb.q ], [ %18, %bb.s ], [ 0.000000e+00, %bb.r ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.co = load double, ptr %i.cn, align 8, !tbaa !48 ; 2 uses
  %i.cp = fcmp ogt double %i.co, %i.bv
  br i1 %i.cp, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !48 ; 2 uses
  %i.cs = fcmp ogt double %i.bv, %i.cr
  br i1 %i.cs, label %bb.v, label %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55

bb.v:                                             ; preds = %bb.u
  %i.ct = fsub double %i.bv, %i.cr                ; 2 uses
  %i.cu = call double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double %.1.i53)
  br label %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55

bb.w:                                             ; preds = %bb.t
  %i.cv = fsub double %i.co, %i.bv                ; 2 uses
  %i.cw = call double @llvm.fmuladd.f64(double %i.cv, double %i.cv, double %.1.i53)
  br label %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55

_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55: ; preds = %bb.u, %bb.v, %bb.w
  %.1.1.i54 = phi double [ %i.cw, %bb.w ], [ %i.cu, %bb.v ], [ %.1.i53, %bb.u ] ; 3 uses
  %i.cx = fcmp olt double %.1.1.i, %.1.1.i54
  br i1 %i.cx, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55
  %i.cy = fcmp olt double %.1.1.i, %.1
  %or.cond = and i1 %.0156, %i.cy
  br i1 %or.cond, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !143
  %i.cz = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE16squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 16 dereferenceable(16) %11), !inline_history !1538 ; 2 uses
  %i.da = fcmp olt double %i.cz, %.1
  br i1 %i.da, label %bb.z, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit57

bb.z:                                             ; preds = %bb.y
  %i.db = load i32, ptr %i.d, align 4, !tbaa !85
  store i32 %i.db, ptr %6, align 4, !tbaa !85
  %i.dc = load <2 x double>, ptr %11, align 16, !tbaa !46
  store <2 x double> %i.dc, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit57

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit57: ; preds = %bb.y, %bb.z
  %.10 = phi double [ %i.cz, %bb.z ], [ %.1, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit57, %bb.x
  %.2 = phi double [ %.10, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit57 ], [ %.1, %bb.x ] ; 5 uses
  %i.dd = fcmp olt double %.1.1.i54, %.2
  %or.cond43 = and i1 %.0157, %i.dd
  br i1 %or.cond43, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !143
  %i.de = load ptr, ptr %i.k, align 8, !tbaa !141
  %i.df = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE16squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.de, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %.2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %10), !inline_history !1539 ; 2 uses
  %i.dg = fcmp olt double %i.df, %.2
  br i1 %i.dg, label %bb.ac, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58

bb.ac:                                            ; preds = %bb.ab
  %i.dh = load i32, ptr %i.c, align 4, !tbaa !85
  store i32 %i.dh, ptr %6, align 4, !tbaa !85
  %i.di = load <2 x double>, ptr %10, align 16, !tbaa !46
  store <2 x double> %i.di, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58: ; preds = %bb.ab, %bb.ac
  %.11 = phi double [ %i.df, %bb.ac ], [ %.2, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.aj

bb.ad:                                            ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55
  %i.dj = fcmp olt double %.1.1.i54, %.1
  %or.cond46 = and i1 %.0157, %i.dj
  br i1 %or.cond46, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !143
  %i.dk = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE16squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.ce, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 16 dereferenceable(16) %9), !inline_history !1539 ; 2 uses
  %i.dl = fcmp olt double %i.dk, %.1
  br i1 %i.dl, label %bb.af, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59

bb.af:                                            ; preds = %bb.ae
  %i.dm = load i32, ptr %i.b, align 4, !tbaa !85
  store i32 %i.dm, ptr %6, align 4, !tbaa !85
  %i.dn = load <2 x double>, ptr %9, align 16, !tbaa !46
  store <2 x double> %i.dn, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59: ; preds = %bb.ae, %bb.af
  %.12 = phi double [ %i.dk, %bb.af ], [ %.1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59, %bb.ad
  %.3 = phi double [ %.12, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %.1, %bb.ad ] ; 5 uses
  %i.do = fcmp olt double %.1.1.i, %.3
  %or.cond49 = and i1 %.0156, %i.do
  br i1 %or.cond49, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !143
  %i.dp = load ptr, ptr %0, align 16, !tbaa !140
  %i.dq = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE16squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.dp, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %.3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %8), !inline_history !1538 ; 2 uses
  %i.dr = fcmp olt double %i.dq, %.3
  br i1 %i.dr, label %bb.ai, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60

bb.ai:                                            ; preds = %bb.ah
  %i.ds = load i32, ptr %i.a, align 4, !tbaa !85
  store i32 %i.ds, ptr %6, align 4, !tbaa !85
  %i.dt = load <2 x double>, ptr %8, align 16, !tbaa !46
  store <2 x double> %i.dt, ptr %7, align 16, !tbaa !46
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60: ; preds = %bb.ah, %bb.ai
  %.13 = phi double [ %i.dq, %bb.ai ], [ %.3, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE21leaf_squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit, %bb.ag, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60, %bb.aa, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58, %bb.a
  %.0 = phi double [ %4, %bb.a ], [ %.6, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE21leaf_squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit ], [ %.11, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58 ], [ %.2, %bb.aa ], [ %.13, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60 ], [ %.3, %bb.ag ]
  ret double %.0
}

declare void @_ZN3igl30point_simplex_squared_distanceILi2EN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEdS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 16 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE13intersect_rayINS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S5_NS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_IdLin1ELi1ELi0ELin1ELi1EEES5_EEvRKNS3_10MatrixBaseIS5_EERKNSB_IT_EERKNSB_IT0_EERKNSB_IT1_EEdRNS3_15PlainObjectBaseIT2_EERNSR_IT3_EERNSR_IT4_EEEUliE_EEbSF_RKSJ_mEUlmE_ZNS1_IlS11_EEbSF_S13_mEUllmE_S14_EEbSF_S13_RKSN_RKSS_m(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %5 = alloca %class.anon.1756, align 8           ; 6 uses
  %6 = alloca %"class.std::vector.974", align 8   ; 13 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !291
  %i.e = icmp eq i64 %0, 0
  br i1 %i.e, label %.loopexit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0) ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp uge i64 %0, %4
  %i.i = icmp ugt i32 %i.f, 1
  %or.cond.not = and i1 %i.i, %i.h
  br i1 %or.cond.not, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i, label %.preheader57

.preheader57:                                     ; preds = %bb.b
  %i.j = icmp sgt i64 %0, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit58

.lr.ph:                                           ; preds = %.preheader57, %.lr.ph
  %.03360 = phi i64 [ %i.m, %.lr.ph ], [ 0, %.preheader57 ] ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !399, !nonnull !99, !align !100
  %i.l = trunc i64 %.03360 to i32
  tail call void @_ZZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE13intersect_rayINS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S3_NS2_IiLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_EEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EEdRNS1_15PlainObjectBaseIT2_EERNSP_IT3_EERNSP_IT4_EEENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(72) %i.k, i32 noundef %i.l)
  %i.m = add nuw nsw i64 %.03360, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %0
  br i1 %exitcond.not, label %.loopexit58, label %.lr.ph, !llvm.loop !1540

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.n = add nsw i64 %0, 1
  %i.o = sitofp i64 %i.n to double
  %i.p = uitofp i32 %i.f to double
  %i.q = fdiv double %i.o, %i.p
  %i.r = tail call double @llvm.round.f64(double %i.q)
  %i.s = fptosi double %i.r to i64
  %.sroa.speculated51 = tail call i64 @llvm.smax.i64(i64 %i.s, i64 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %2, ptr %5, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.v = shl nuw nsw i64 %i.g, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27
          to label %.noexc unwind label %bb.e     ; 6 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.x = load ptr, ptr %6, align 8, !tbaa !302    ; 8 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !303  ; 3 uses
end_hunk_4
