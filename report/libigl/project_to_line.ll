Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/project_to_line?download=true
inline.NumInlined: 4614
inline.NumDeleted: 2498
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3igl15project_to_lineIN5Eigen5BlockIKNS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEES7_NS3_IdLin1ELi1ELi0ELin1ELi1EEES8_EEvRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERNS1_15PlainObjectBaseIT2_EERNSM_IT3_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.by = load ptr, ptr %7, align 8, !tbaa !55
  call void @free(ptr noundef %i.by) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

bb.k:                                             ; preds = %bb.h, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11squaredNormEv.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.l ], [ %i.bz, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.cb = load ptr, ptr %7, align 8, !tbaa !55
  call void @free(ptr noundef %i.cb) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !62
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !64
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !65
  tail call void @free(ptr noundef %i.i) #21
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !62
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #23 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !62
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !65
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl15project_to_lineIN5Eigen5BlockIKNS1_6MatrixIdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENS3_IdLi1ELi2ELi1ELi1ELi2EEES7_NS3_IdLin1ELi1ELi0ELin1ELi1EEES8_EEvRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERNS1_15PlainObjectBaseIT2_EERNSM_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.684, align 1            ; 4 uses
  %6 = alloca %class.anon.686, align 8            ; 4 uses
  %7 = alloca %"class.Eigen::Matrix.76", align 16 ; 4 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %8 = alloca %class.anon.93, align 8             ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.d = trunc i64 %i.c to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.e = load <2 x double>, ptr %2, align 16, !tbaa !42
  %i.f = load <2 x double>, ptr %1, align 16, !tbaa !42
  %i.g = fsub <2 x double> %i.e, %i.f             ; 3 uses
  store <2 x double> %i.g, ptr %7, align 16, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.h = fmul <2 x double> %i.g, %i.g
  %i.i = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.h)
  store double %i.i, ptr %i.a, align 8, !tbaa !30
  %sext = shl i64 %i.c, 32
  %i.j = ashr exact i64 %sext, 32                 ; 2 uses
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.j, i64 noundef 1)
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.j, i64 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %0, ptr %8, align 8, !tbaa !183
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.k, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %3, ptr %i.l, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.m, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.a, ptr %i.n, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %2, ptr %i.o, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %4, ptr %i.p, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %8, ptr %6, align 8, !tbaa !41
  %i.q = call noundef zeroext i1 @_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_15project_to_lineIN5Eigen5BlockIKNS3_6MatrixIdLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENS5_IdLi1ELi2ELi1ELi1ELi2EEES9_NS5_IdLin1ELi1ELi0ELin1ELi1EEESA_EEvRKNS3_10MatrixBaseIT_EERKNSB_IT0_EERKNSB_IT1_EERNS3_15PlainObjectBaseIT2_EERNSO_IT3_EEEUliE_EEbSC_RKSG_mEUlmE_ZNS1_IiSV_EEbSC_SX_mEUlimE_SY_EEbSC_SX_RKSK_RKSP_m(i32 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef 10000) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl15project_to_lineIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEES3_S3_NS2_IdLi1ELi1ELi0ELi1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_15PlainObjectBaseIT2_EERNSI_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.831, align 1            ; 4 uses
  %6 = alloca %class.anon.833, align 8            ; 4 uses
  %7 = alloca %"class.Eigen::Matrix.76", align 16 ; 4 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %8 = alloca %class.anon.94, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.b = load <2 x double>, ptr %2, align 16, !tbaa !42
  %i.c = load <2 x double>, ptr %1, align 16, !tbaa !42
  %i.d = fsub <2 x double> %i.b, %i.c             ; 3 uses
  store <2 x double> %i.d, ptr %7, align 16, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.e = fmul <2 x double> %i.d, %i.d
  %i.f = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.e)
  store double %i.f, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %0, ptr %8, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %3, ptr %i.h, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.i, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.a, ptr %i.j, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %2, ptr %i.k, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %4, ptr %i.l, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %8, ptr %6, align 8, !tbaa !41
  %i.m = call noundef zeroext i1 @_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_15project_to_lineIN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEES5_S5_NS4_IdLi1ELi1ELi0ELi1ELi1EEES6_EEvRKNS3_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS3_15PlainObjectBaseIT2_EERNSK_IT3_EEEUliE_EEbS8_RKSC_mEUlmE_ZNS1_IiSR_EEbS8_ST_mEUlimE_SU_EEbS8_ST_RKSG_RKSL_m(i32 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef 10000) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl15project_to_lineIdEEvT_S1_S1_S1_S1_S1_S1_S1_S1_RS1_S2_(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = insertelement <2 x double> poison, double %6, i64 0 ; 2 uses
  %i.b = insertelement <2 x double> %i.a, double %3, i64 1
  %i.c = insertelement <2 x double> poison, double %3, i64 0
  %i.d = insertelement <2 x double> %i.c, double %0, i64 1
  %i.e = fsub <2 x double> %i.b, %i.d             ; 2 uses
  %i.f = insertelement <2 x double> poison, double %7, i64 0
  %i.g = insertelement <2 x double> %i.f, double %4, i64 1
  %i.h = insertelement <2 x double> poison, double %4, i64 0
  %i.i = insertelement <2 x double> %i.h, double %1, i64 1
  %i.j = fsub <2 x double> %i.g, %i.i             ; 2 uses
  %11 = fsub double %8, %5                        ; 3 uses
  %12 = fsub double %5, %2
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.j, %i.k
  %i.m = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.e, <2 x double> %i.l) ; 2 uses
  %13 = extractelement <2 x double> %i.n, i64 0
  %14 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %13)
  %i.o = extractelement <2 x double> %i.n, i64 1
  %15 = tail call double @llvm.fmuladd.f64(double %11, double %12, double %i.o)
  %16 = fneg double %15
  %i.p = insertelement <2 x double> %i.a, double %7, i64 1
  %i.q = insertelement <2 x double> poison, double %3, i64 0
  %i.r = insertelement <2 x double> %i.q, double %4, i64 1
  %i.s = fdiv double %16, %14                     ; 4 uses
  store double %i.s, ptr %9, align 8, !tbaa !30
  %i.t = fsub double 1.000000e+00, %i.s
  %i.u = insertelement <2 x double> poison, double %i.s, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.p, %i.v
  %i.x = insertelement <2 x double> poison, double %i.t, i64 0 ; 2 uses
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.r, <2 x double> %i.w) ; 2 uses
  %17 = extractelement <2 x double> %i.z, i64 0
  %18 = fsub double %0, %17
  %19 = extractelement <2 x double> %i.z, i64 1
  %20 = fsub double %1, %19
  %21 = insertelement <2 x double> poison, double %8, i64 0
  %i.aa = insertelement <2 x double> %21, double %20, i64 1 ; 2 uses
  %i.ab = insertelement <2 x double> %i.aa, double %i.s, i64 0
  %i.ac = fmul <2 x double> %i.aa, %i.ab
  %22 = insertelement <2 x double> %i.x, double %18, i64 1 ; 2 uses
  %i.ad = insertelement <2 x double> %22, double %5, i64 0
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %22, <2 x double> %i.ad, <2 x double> %i.ac) ; 2 uses
  %i.af = extractelement <2 x double> %i.ae, i64 0
  %i.ag = fsub double %2, %i.af                   ; 2 uses
  %i.ah = extractelement <2 x double> %i.ae, i64 1
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %i.ah)
  store double %i.ai, ptr %10, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN3igl15project_to_lineIdEEvT_S1_S1_S1_S1_S1_S1_S1_S1_RS1_S2_S2_S2_S2_(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = insertelement <2 x double> poison, double %6, i64 0
  %i.b = insertelement <2 x double> %i.a, double %3, i64 1
  %i.c = insertelement <2 x double> poison, double %3, i64 0
  %i.d = insertelement <2 x double> %i.c, double %0, i64 1
  %i.e = fsub <2 x double> %i.b, %i.d             ; 2 uses
  %i.f = insertelement <2 x double> poison, double %7, i64 0
  %i.g = insertelement <2 x double> %i.f, double %4, i64 1
  %i.h = insertelement <2 x double> poison, double %4, i64 0
  %i.i = insertelement <2 x double> %i.h, double %1, i64 1
  %i.j = fsub <2 x double> %i.g, %i.i             ; 2 uses
  %14 = fsub double %8, %5                        ; 3 uses
  %15 = fsub double %5, %2
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.j, %i.k
  %i.m = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.e, <2 x double> %i.l) ; 2 uses
  %16 = extractelement <2 x double> %i.n, i64 0
  %17 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %16)
  %i.o = extractelement <2 x double> %i.n, i64 1
  %18 = tail call double @llvm.fmuladd.f64(double %14, double %15, double %i.o)
  %19 = fneg double %18
  %i.p = fdiv double %19, %17                     ; 3 uses
  store double %i.p, ptr %12, align 8, !tbaa !30
  %i.q = fsub double 1.000000e+00, %i.p
  %i.r = fmul double %6, %i.p
  %i.s = tail call double @llvm.fmuladd.f64(double %i.q, double %3, double %i.r)
  store double %i.s, ptr %9, align 8, !tbaa !30
  %i.t = load double, ptr %12, align 8, !tbaa !30 ; 2 uses
  %i.u = fsub double 1.000000e+00, %i.t
  %i.v = fmul double %7, %i.t
  %i.w = tail call double @llvm.fmuladd.f64(double %i.u, double %4, double %i.v)
  store double %i.w, ptr %10, align 8, !tbaa !30
  %i.x = load double, ptr %12, align 8, !tbaa !30 ; 2 uses
  %i.y = fsub double 1.000000e+00, %i.x
  %i.z = fmul double %8, %i.x
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.y, double %5, double %i.z) ; 2 uses
  store double %i.aa, ptr %11, align 8, !tbaa !30
  %i.ab = load double, ptr %9, align 8, !tbaa !30
  %i.ac = fsub double %0, %i.ab                   ; 2 uses
  %i.ad = load double, ptr %10, align 8, !tbaa !30
  %i.ae = fsub double %1, %i.ad                   ; 2 uses
  %i.af = fsub double %2, %i.aa                   ; 2 uses
  %i.ag = fmul double %i.ae, %i.ae
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.ag)
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.ah)
  store double %i.ai, ptr %13, align 8, !tbaa !30
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl15project_to_lineIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_NS2_IdLi1ELi1ELi0ELi1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_15PlainObjectBaseIT2_EERNSI_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.896, align 1            ; 4 uses
  %6 = alloca %class.anon.898, align 8            ; 4 uses
  %7 = alloca %"class.Eigen::Matrix.28", align 16 ; 5 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %8 = alloca %class.anon.95, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.b = load <2 x double>, ptr %2, align 1, !tbaa !42
  %i.c = load <2 x double>, ptr %1, align 1, !tbaa !42
  %i.d = fsub <2 x double> %i.b, %i.c             ; 3 uses
  store <2 x double> %i.d, ptr %7, align 16, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.f = getelementptr i8, ptr %2, i64 16
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load double, ptr %i.f, align 8, !tbaa !30
  %i.i = load double, ptr %i.g, align 8, !tbaa !30
  %i.j = fsub double %i.h, %i.i                   ; 3 uses
  store double %i.j, ptr %i.e, align 16, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.k = fmul <2 x double> %i.d, %i.d             ; 2 uses
  %shift = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.k, %shift
  %i.l = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.m = fmul double %i.j, %i.j
  %i.n = fadd double %i.l, %i.m
  store double %i.n, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %0, ptr %8, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.o, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %3, ptr %i.p, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.q, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.a, ptr %i.r, align 8, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %2, ptr %i.s, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %4, ptr %i.t, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %8, ptr %6, align 8, !tbaa !41
  %i.u = call noundef zeroext i1 @_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_15project_to_lineIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES5_S5_NS4_IdLi1ELi1ELi0ELi1ELi1EEES6_EEvRKNS3_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS3_15PlainObjectBaseIT2_EERNSK_IT3_EEEUliE_EEbS8_RKSC_mEUlmE_ZNS1_IiSR_EEbS8_ST_mEUlimE_SU_EEbS8_ST_RKSG_RKSL_m(i32 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef 10000) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl15project_to_lineIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES4_S4_S4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_15PlainObjectBaseIT2_EERNSI_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.979, align 1            ; 4 uses
  %6 = alloca %class.anon.981, align 8            ; 4 uses
  %7 = alloca %"class.Eigen::Matrix.102", align 8 ; 13 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %8 = alloca %class.anon.110, align 8            ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !72   ; 2 uses
  %i.d = trunc i64 %i.c to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.f, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_S9_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.c

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_S9_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !65     ; 8 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = load ptr, ptr %1, align 8, !tbaa !65     ; 8 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = load i64, ptr %i.e, align 8, !tbaa !64   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !64
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.m, %i.k
  br i1 %.not.i.i.i.i.i.i.i, label %bb.b, label %thread-pre-split.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_S9_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.k, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.c

.noexc.i.i:                                       ; preds = %thread-pre-split.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !64
  br label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_S9_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.n = phi i64 [ %.pr.i.i.i.i.i.i, %.noexc.i.i ], [ %i.k, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_S9_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i ] ; 7 uses
  %i.o = load ptr, ptr %7, align 8, !tbaa !65     ; 8 uses
  %i.p = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %i.q = sdiv i64 %i.n, 2
  %i.r = shl nsw i64 %i.q, 1                      ; 7 uses
  %i.s = icmp sgt i64 %i.n, 1
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.b
  %i.t = icmp slt i64 %i.r, %i.n
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_S7_EEEERKNS_9EigenBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.u = sub i64 %i.n, %i.r                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.u, 10
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader36, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.v = sub i64 %i.h, %i.p
  %diff.check = icmp ugt i64 %i.v, -32
  %i.w = sub i64 %i.j, %i.p
  %diff.check30 = icmp ugt i64 %i.w, -32
  %conflict.rdx = or i1 %diff.check, %diff.check30
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, -4                       ; 3 uses
  %i.x = add i64 %i.r, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = add i64 %i.r, %index                     ; 3 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.y ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x double>, ptr %i.aa, align 8, !tbaa !30
  %wide.load31 = load <2 x double>, ptr %i.ac, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load32 = load <2 x double>, ptr %i.ab, align 8, !tbaa !30
  %wide.load33 = load <2 x double>, ptr %i.ad, align 8, !tbaa !30
  %i.ae = fsub <2 x double> %wide.load, %wide.load32
  %i.af = fsub <2 x double> %wide.load31, %wide.load33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x double> %i.ae, ptr %i.z, align 8, !tbaa !30
  store <2 x double> %i.af, ptr %i.ag, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_S7_EEEERKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader36

.lr.ph.i.i.i.i.i.i.i.i.preheader36:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.x, %middle.block ] ; 4 uses
  %i.ai = sub i64 %i.n, %.05.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader36, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader36 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader36 ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.al = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.am = load double, ptr %i.ak, align 8, !tbaa !30
  %i.an = load double, ptr %i.al, align 8, !tbaa !30
  %i.ao = fsub double %i.am, %i.an
  store double %i.ao, ptr %i.aj, align 8, !tbaa !30
  %i.ap = add nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !185

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader36
end_hunk_0
