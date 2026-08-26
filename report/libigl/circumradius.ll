Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/circumradius?download=true
inline.NumInlined: 27035
inline.NumDeleted: 14206
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 174
loop-unroll.NumUnrolled: 205
begin_hunk_0_@_ZN3igl12circumradiusIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi4ELi0ELin1ELi4EEEEEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERNS1_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EE:bb.a
  %i.xj = fadd double %i.xf, %i.xi
  %i.xk = fadd double %i.xc, %i.xj
  %i.xl = fadd double %i.wx, %i.xk
  %i.xm = call double @sqrt(double noundef %i.xl) #20
  %i.xn = load ptr, ptr %2, align 8, !tbaa !98
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.xn, i64 %indvars.iv
  store double %i.xm, ptr %i.xo, align 8, !tbaa !30
  call void @free(ptr noundef %i.wv) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.xp = load ptr, ptr %16, align 8, !tbaa !98
  call void @free(ptr noundef %i.xp) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.xq = load ptr, ptr %14, align 8, !tbaa !181
  call void @free(ptr noundef %i.xq) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.xr = load ptr, ptr %13, align 8, !tbaa !20
  call void @free(ptr noundef %i.xr) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.xs = load i64, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.xt = icmp sgt i64 %i.xs, %indvars.iv.next
  br i1 %i.xt, label %bb.b, label %._crit_edge, !llvm.loop !279

.body115:                                         ; preds = %bb.l, %bb.m
  %eh.lpad-body116 = phi { ptr, i32 } [ %i.dy, %bb.m ], [ %i.dq, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %.body113

bb.aa:                                            ; preds = %.loopexit217
  %i.xu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.body108, %bb.aa
  %.pn65 = phi { ptr, i32 } [ %i.rg, %.body108 ], [ %i.xu, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.ac

bb.ac:                                            ; preds = %.body118, %bb.ab
  %.pn71.pn.pn = phi { ptr, i32 } [ %i.wi, %.body118 ], [ %.pn65, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %.body

.body:                                            ; preds = %.body103, %bb.ac, %bb.p
  %.pn71.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hm, %bb.p ], [ %.pn71.pn.pn, %bb.ac ], [ %i.np, %.body103 ]
  %i.xv = load ptr, ptr %16, align 8, !tbaa !98
  call void @free(ptr noundef %i.xv) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %.body113

.body113:                                         ; preds = %.body, %.body115, %bb.k
  %.pn71.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.k ], [ %.pn71.pn.pn.pn.pn, %.body ], [ %eh.lpad-body116, %.body115 ]
  %i.xw = load ptr, ptr %14, align 8, !tbaa !181
  call void @free(ptr noundef %i.xw) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.xx = load ptr, ptr %13, align 8, !tbaa !20
  call void @free(ptr noundef %i.xx) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
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
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !166
  %i.i = mul nsw i64 %i.h, 3
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !161
  tail call void @free(ptr noundef %i.j) #20
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.n = shl nuw i64 %i.f, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #22 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !161
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !166
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
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
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !246
  %i.i = shl nsw i64 %i.h, 2
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi4ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !241
  tail call void @free(ptr noundef %i.j) #20
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.n = shl nuw i64 %i.f, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #22 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !241
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi4ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi4ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !246
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl12circumradiusIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEES6_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERNS1_15PlainObjectBaseIT1_EERNSG_IT2_EERNSG_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix.110", align 8 ; 9 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.3493", align 8 ; 4 uses
  %7 = alloca %"struct.Eigen::internal::evaluator.3497", align 8 ; 4 uses
  %8 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.3501", align 8 ; 7 uses
  %9 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %10 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %11 = alloca %"class.Eigen::Matrix.320", align 16 ; 16 uses
  %12 = alloca %"class.Eigen::Matrix.329", align 8 ; 15 uses
  %13 = alloca %"class.Eigen::CwiseBinaryOp.354", align 8 ; 7 uses
  %14 = alloca %"class.Eigen::Block.380", align 8 ; 10 uses
  %15 = alloca %"class.Eigen::Matrix.391", align 16 ; 6 uses
  %16 = alloca %"class.Eigen::Array.401", align 16 ; 7 uses
  %17 = alloca %"class.Eigen::Matrix.391", align 16 ; 8 uses
  %18 = alloca %"class.Eigen::ColPivHouseholderQR.451", align 16 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !280
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.b, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !tbaa !280
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !173
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.c, i64 noundef %i.e)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !280
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.f, i64 noundef 3)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !280
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.j = ptrtoint ptr %12 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 24
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %18, i64 304
  %i.x = getelementptr inbounds nuw i8, ptr %18, i64 305
  %i.y = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %18, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %18, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %18, i64 112
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 7 uses
  %i.av = shl i64 %indvars.iv, 3
  %i.aw = add i64 %i.av, 8                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.ax = load ptr, ptr %1, align 8, !tbaa !282, !noalias !283
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv ; 3 uses
  %i.az = load i64, ptr %i.d, align 8, !tbaa !173, !noalias !286 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false), !alias.scope !289
  %i.ba = load ptr, ptr %0, align 8, !tbaa !181, !noalias !289 ; 4 uses
  %i.bb = ptrtoaddr ptr %i.ba to i64              ; 3 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not8.i.i.i.i.i.i.i.i, label %.loopexit182, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.b
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi3ELin1ELi1ELi3ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef 3, i64 noundef %i.az)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !292, !alias.scope !289 ; 22 uses
  %.pre.i.i = load ptr, ptr %12, align 8, !tbaa !294, !alias.scope !289 ; 9 uses
  %.pre.i.i227 = ptrtoaddr ptr %.pre.i.i to i64   ; 3 uses
  %i.bc = icmp sgt i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.bc, label %.split.i.i.i.i.i.i.i.i, label %.loopexit182

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.c
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !280 ; 2 uses
  %i.be = load i32, ptr %i.ay, align 4, !tbaa !29
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = mul nsw i64 %i.az, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.ba, i64 %i.bg ; 6 uses
  %min.iters.check257 = icmp ult i64 %.pr.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check257, label %scalar.ph256.preheader, label %vector.memcheck254

vector.memcheck254:                               ; preds = %.split.i.i.i.i.i.i.i.i
  %i.bi = shl i64 %i.az, 3
  %i.bj = mul i64 %i.bi, %i.bf
  %i.bk = add i64 %i.bj, %i.bb
  %i.bl = sub i64 %i.bk, %.pre.i.i227
  %diff.check255 = icmp ugt i64 %i.bl, -32
  br i1 %diff.check255, label %scalar.ph256.preheader, label %vector.ph258

vector.ph258:                                     ; preds = %vector.memcheck254
  %n.vec259 = and i64 %.pr.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph258
  %index261 = phi i64 [ 0, %vector.ph258 ], [ %index.next264, %vector.body260 ] ; 3 uses
  %i.bm = getelementptr [8 x i8], ptr %.pre.i.i, i64 %index261 ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %i.bh, i64 %index261 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %wide.load262 = load <2 x double>, ptr %i.bn, align 8, !tbaa !30
  %wide.load263 = load <2 x double>, ptr %i.bo, align 8, !tbaa !30
  %i.bp = getelementptr i8, ptr %i.bm, i64 16
  store <2 x double> %wide.load262, ptr %i.bm, align 8, !tbaa !30
  store <2 x double> %wide.load263, ptr %i.bp, align 8, !tbaa !30
  %index.next264 = add nuw i64 %index261, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next264, %n.vec259
  br i1 %i.bq, label %middle.block265, label %vector.body260, !llvm.loop !295

middle.block265:                                  ; preds = %vector.body260
  %cmp.n266 = icmp eq i64 %.pr.i.i.i.i.i.i.i, %n.vec259
  br i1 %cmp.n266, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph256.preheader

scalar.ph256.preheader:                           ; preds = %vector.memcheck254, %.split.i.i.i.i.i.i.i.i, %middle.block265
  %.09.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck254 ], [ 0, %.split.i.i.i.i.i.i.i.i ], [ %n.vec259, %middle.block265 ] ; 3 uses
  %xtraiter = and i64 %.pr.i.i.i.i.i.i.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph256.prol.loopexit, label %scalar.ph256.prol

scalar.ph256.prol:                                ; preds = %scalar.ph256.preheader, %scalar.ph256.prol
  %.09.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bu, %scalar.ph256.prol ], [ %.09.i.i.i.i.i.i.i.i.ph, %scalar.ph256.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph256.prol ], [ 0, %scalar.ph256.preheader ]
  %i.br = getelementptr [8 x i8], ptr %.pre.i.i, i64 %.09.i.i.i.i.i.i.i.i.prol
  %i.bs = getelementptr [8 x i8], ptr %i.bh, i64 %.09.i.i.i.i.i.i.i.i.prol
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !30
  store double %i.bt, ptr %i.br, align 8, !tbaa !30
  %i.bu = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph256.prol.loopexit, label %scalar.ph256.prol, !llvm.loop !296

scalar.ph256.prol.loopexit:                       ; preds = %scalar.ph256.prol, %scalar.ph256.preheader
  %.09.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.ph, %scalar.ph256.preheader ], [ %i.bu, %scalar.ph256.prol ]
  %i.bv = sub nsw i64 %.09.i.i.i.i.i.i.i.i.ph, %.pr.i.i.i.i.i.i.i
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph256

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %scalar.ph256.prol.loopexit, %scalar.ph256, %middle.block265
  %i.bx = getelementptr [8 x i8], ptr %.pre.i.i, i64 %.pr.i.i.i.i.i.i.i ; 6 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bd
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !29
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = mul nsw i64 %i.az, %i.ca
  %i.cc = getelementptr [8 x i8], ptr %i.ba, i64 %i.cb ; 6 uses
  %min.iters.check243 = icmp ult i64 %.pr.i.i.i.i.i.i.i, 10
  br i1 %min.iters.check243, label %scalar.ph242.preheader, label %vector.memcheck240

vector.memcheck240:                               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.cd = shl i64 %.pr.i.i.i.i.i.i.i, 3
  %i.ce = add i64 %i.cd, %.pre.i.i227
  %i.cf = shl i64 %i.az, 3
  %i.cg = mul i64 %i.cf, %i.ca
  %i.ch = add i64 %i.cg, %i.bb
  %i.ci = sub i64 %i.ch, %i.ce
  %diff.check241 = icmp ugt i64 %i.ci, -32
  br i1 %diff.check241, label %scalar.ph242.preheader, label %vector.ph244

vector.ph244:                                     ; preds = %vector.memcheck240
  %n.vec245 = and i64 %.pr.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph244
  %index247 = phi i64 [ 0, %vector.ph244 ], [ %index.next250, %vector.body246 ] ; 3 uses
  %i.cj = getelementptr [8 x i8], ptr %i.bx, i64 %index247 ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %i.cc, i64 %index247 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  %wide.load248 = load <2 x double>, ptr %i.ck, align 8, !tbaa !30
  %wide.load249 = load <2 x double>, ptr %i.cl, align 8, !tbaa !30
  %i.cm = getelementptr i8, ptr %i.cj, i64 16
  store <2 x double> %wide.load248, ptr %i.cj, align 8, !tbaa !30
  store <2 x double> %wide.load249, ptr %i.cm, align 8, !tbaa !30
  %index.next250 = add nuw i64 %index247, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next250, %n.vec245
  br i1 %i.cn, label %middle.block251, label %vector.body246, !llvm.loop !297

middle.block251:                                  ; preds = %vector.body246
  %cmp.n252 = icmp eq i64 %.pr.i.i.i.i.i.i.i, %n.vec245
  br i1 %cmp.n252, label %._crit_edge.1.i.i.i.i.i.i.i.i, label %scalar.ph242.preheader

scalar.ph242.preheader:                           ; preds = %vector.memcheck240, %._crit_edge.i.i.i.i.i.i.i.i, %middle.block251
  %.09.1.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck240 ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i ], [ %n.vec245, %middle.block251 ] ; 3 uses
  %xtraiter268 = and i64 %.pr.i.i.i.i.i.i.i, 3    ; 2 uses
  %lcmp.mod269.not = icmp eq i64 %xtraiter268, 0
  br i1 %lcmp.mod269.not, label %scalar.ph242.prol.loopexit, label %scalar.ph242.prol

scalar.ph242.prol:                                ; preds = %scalar.ph242.preheader, %scalar.ph242.prol
  %.09.1.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cr, %scalar.ph242.prol ], [ %.09.1.i.i.i.i.i.i.i.i.ph, %scalar.ph242.preheader ] ; 3 uses
  %prol.iter270 = phi i64 [ %prol.iter270.next, %scalar.ph242.prol ], [ 0, %scalar.ph242.preheader ]
  %i.co = getelementptr [8 x i8], ptr %i.bx, i64 %.09.1.i.i.i.i.i.i.i.i.prol
  %i.cp = getelementptr [8 x i8], ptr %i.cc, i64 %.09.1.i.i.i.i.i.i.i.i.prol
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !30
  store double %i.cq, ptr %i.co, align 8, !tbaa !30
  %i.cr = add nuw nsw i64 %.09.1.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter270.next = add i64 %prol.iter270, 1   ; 2 uses
  %prol.iter270.cmp.not = icmp eq i64 %prol.iter270.next, %xtraiter268
  br i1 %prol.iter270.cmp.not, label %scalar.ph242.prol.loopexit, label %scalar.ph242.prol, !llvm.loop !298

scalar.ph242.prol.loopexit:                       ; preds = %scalar.ph242.prol, %scalar.ph242.preheader
  %.09.1.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.1.i.i.i.i.i.i.i.i.ph, %scalar.ph242.preheader ], [ %i.cr, %scalar.ph242.prol ]
  %i.cs = sub nsw i64 %.09.1.i.i.i.i.i.i.i.i.ph, %.pr.i.i.i.i.i.i.i
  %i.ct = icmp ugt i64 %i.cs, -4
  br i1 %i.ct, label %._crit_edge.1.i.i.i.i.i.i.i.i, label %scalar.ph242

scalar.ph242:                                     ; preds = %scalar.ph242.prol.loopexit, %scalar.ph242
  %.09.1.i.i.i.i.i.i.i.i = phi i64 [ %i.dj, %scalar.ph242 ], [ %.09.1.i.i.i.i.i.i.i.i.unr, %scalar.ph242.prol.loopexit ] ; 6 uses
  %i.cu = getelementptr [8 x i8], ptr %i.bx, i64 %.09.1.i.i.i.i.i.i.i.i
  %i.cv = getelementptr [8 x i8], ptr %i.cc, i64 %.09.1.i.i.i.i.i.i.i.i
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !30
  store double %i.cw, ptr %i.cu, align 8, !tbaa !30
  %i.cx = add nuw nsw i64 %.09.1.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cy = getelementptr [8 x i8], ptr %i.bx, i64 %i.cx
  %i.cz = getelementptr [8 x i8], ptr %i.cc, i64 %i.cx
  %i.da = load double, ptr %i.cz, align 8, !tbaa !30
  store double %i.da, ptr %i.cy, align 8, !tbaa !30
  %i.db = add nuw nsw i64 %.09.1.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %i.bx, i64 %i.db
  %i.dd = getelementptr [8 x i8], ptr %i.cc, i64 %i.db
  %i.de = load double, ptr %i.dd, align 8, !tbaa !30
  store double %i.de, ptr %i.dc, align 8, !tbaa !30
  %i.df = add nuw nsw i64 %.09.1.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.bx, i64 %i.df
  %i.dh = getelementptr [8 x i8], ptr %i.cc, i64 %i.df
  %i.di = load double, ptr %i.dh, align 8, !tbaa !30
  store double %i.di, ptr %i.dg, align 8, !tbaa !30
  %i.dj = add nuw nsw i64 %.09.1.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.1.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.dj, %.pr.i.i.i.i.i.i.i
  br i1 %exitcond.1.not.i.i.i.i.i.i.i.i.3, label %._crit_edge.1.i.i.i.i.i.i.i.i, label %scalar.ph242, !llvm.loop !299

._crit_edge.1.i.i.i.i.i.i.i.i:                    ; preds = %scalar.ph242.prol.loopexit, %scalar.ph242, %middle.block251
  %.idx.i.i.i.i.i.i.i.i = shl i64 %.pr.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.dk = getelementptr i8, ptr %.pre.i.i, i64 %.idx.i.i.i.i.i.i.i.i ; 6 uses
  %.idx13.i.i.i.i.i.i.i.i = shl nsw i64 %i.bd, 3
  %i.dl = getelementptr inbounds i8, ptr %i.ay, i64 %.idx13.i.i.i.i.i.i.i.i
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !29
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = mul nsw i64 %i.az, %i.dn
  %i.dp = getelementptr [8 x i8], ptr %i.ba, i64 %i.do ; 6 uses
  %min.iters.check229 = icmp ult i64 %.pr.i.i.i.i.i.i.i, 10
  br i1 %min.iters.check229, label %scalar.ph228.preheader, label %vector.memcheck226

vector.memcheck226:                               ; preds = %._crit_edge.1.i.i.i.i.i.i.i.i
  %i.dq = add i64 %.idx.i.i.i.i.i.i.i.i, %.pre.i.i227
  %i.dr = shl i64 %i.az, 3
  %i.ds = mul i64 %i.dr, %i.dn
  %i.dt = add i64 %i.ds, %i.bb
  %i.du = sub i64 %i.dt, %i.dq
  %diff.check = icmp ugt i64 %i.du, -32
  br i1 %diff.check, label %scalar.ph228.preheader, label %vector.ph230

vector.ph230:                                     ; preds = %vector.memcheck226
  %n.vec231 = and i64 %.pr.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next236, %vector.body232 ] ; 3 uses
  %i.dv = getelementptr [8 x i8], ptr %i.dk, i64 %index233 ; 2 uses
  %i.dw = getelementptr [8 x i8], ptr %i.dp, i64 %index233 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  %wide.load234 = load <2 x double>, ptr %i.dw, align 8, !tbaa !30
  %wide.load235 = load <2 x double>, ptr %i.dx, align 8, !tbaa !30
  %i.dy = getelementptr i8, ptr %i.dv, i64 16
  store <2 x double> %wide.load234, ptr %i.dv, align 8, !tbaa !30
  store <2 x double> %wide.load235, ptr %i.dy, align 8, !tbaa !30
  %index.next236 = add nuw i64 %index233, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next236, %n.vec231
  br i1 %i.dz, label %middle.block237, label %vector.body232, !llvm.loop !300

middle.block237:                                  ; preds = %vector.body232
  %cmp.n238 = icmp eq i64 %.pr.i.i.i.i.i.i.i, %n.vec231
  br i1 %cmp.n238, label %.loopexit182, label %scalar.ph228.preheader

scalar.ph228.preheader:                           ; preds = %vector.memcheck226, %._crit_edge.1.i.i.i.i.i.i.i.i, %middle.block237
  %.09.2.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck226 ], [ 0, %._crit_edge.1.i.i.i.i.i.i.i.i ], [ %n.vec231, %middle.block237 ] ; 3 uses
  %xtraiter271 = and i64 %.pr.i.i.i.i.i.i.i, 3    ; 2 uses
  %lcmp.mod272.not = icmp eq i64 %xtraiter271, 0
  br i1 %lcmp.mod272.not, label %scalar.ph228.prol.loopexit, label %scalar.ph228.prol

scalar.ph228.prol:                                ; preds = %scalar.ph228.preheader, %scalar.ph228.prol
  %.09.2.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ed, %scalar.ph228.prol ], [ %.09.2.i.i.i.i.i.i.i.i.ph, %scalar.ph228.preheader ] ; 3 uses
  %prol.iter273 = phi i64 [ %prol.iter273.next, %scalar.ph228.prol ], [ 0, %scalar.ph228.preheader ]
  %i.ea = getelementptr [8 x i8], ptr %i.dk, i64 %.09.2.i.i.i.i.i.i.i.i.prol
  %i.eb = getelementptr [8 x i8], ptr %i.dp, i64 %.09.2.i.i.i.i.i.i.i.i.prol
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !30
  store double %i.ec, ptr %i.ea, align 8, !tbaa !30
  %i.ed = add nuw nsw i64 %.09.2.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter273.next = add i64 %prol.iter273, 1   ; 2 uses
  %prol.iter273.cmp.not = icmp eq i64 %prol.iter273.next, %xtraiter271
  br i1 %prol.iter273.cmp.not, label %scalar.ph228.prol.loopexit, label %scalar.ph228.prol, !llvm.loop !301

scalar.ph228.prol.loopexit:                       ; preds = %scalar.ph228.prol, %scalar.ph228.preheader
  %.09.2.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.2.i.i.i.i.i.i.i.i.ph, %scalar.ph228.preheader ], [ %i.ed, %scalar.ph228.prol ]
  %i.ee = sub nsw i64 %.09.2.i.i.i.i.i.i.i.i.ph, %.pr.i.i.i.i.i.i.i
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %.loopexit182, label %scalar.ph228

scalar.ph228:                                     ; preds = %scalar.ph228.prol.loopexit, %scalar.ph228
  %.09.2.i.i.i.i.i.i.i.i = phi i64 [ %i.ev, %scalar.ph228 ], [ %.09.2.i.i.i.i.i.i.i.i.unr, %scalar.ph228.prol.loopexit ] ; 6 uses
  %i.eg = getelementptr [8 x i8], ptr %i.dk, i64 %.09.2.i.i.i.i.i.i.i.i
  %i.eh = getelementptr [8 x i8], ptr %i.dp, i64 %.09.2.i.i.i.i.i.i.i.i
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !30
  store double %i.ei, ptr %i.eg, align 8, !tbaa !30
  %i.ej = add nuw nsw i64 %.09.2.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ek = getelementptr [8 x i8], ptr %i.dk, i64 %i.ej
  %i.el = getelementptr [8 x i8], ptr %i.dp, i64 %i.ej
  %i.em = load double, ptr %i.el, align 8, !tbaa !30
  store double %i.em, ptr %i.ek, align 8, !tbaa !30
  %i.en = add nuw nsw i64 %.09.2.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.eo = getelementptr [8 x i8], ptr %i.dk, i64 %i.en
  %i.ep = getelementptr [8 x i8], ptr %i.dp, i64 %i.en
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !30
  store double %i.eq, ptr %i.eo, align 8, !tbaa !30
  %i.er = add nuw nsw i64 %.09.2.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %i.dk, i64 %i.er
  %i.et = getelementptr [8 x i8], ptr %i.dp, i64 %i.er
  %i.eu = load double, ptr %i.et, align 8, !tbaa !30
  store double %i.eu, ptr %i.es, align 8, !tbaa !30
  %i.ev = add nuw nsw i64 %.09.2.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.2.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ev, %.pr.i.i.i.i.i.i.i
  br i1 %exitcond.2.not.i.i.i.i.i.i.i.i.3, label %.loopexit182, label %scalar.ph228, !llvm.loop !302

scalar.ph256:                                     ; preds = %scalar.ph256.prol.loopexit, %scalar.ph256
  %.09.i.i.i.i.i.i.i.i = phi i64 [ %i.fl, %scalar.ph256 ], [ %.09.i.i.i.i.i.i.i.i.unr, %scalar.ph256.prol.loopexit ] ; 6 uses
  %i.ew = getelementptr [8 x i8], ptr %.pre.i.i, i64 %.09.i.i.i.i.i.i.i.i
  %i.ex = getelementptr [8 x i8], ptr %i.bh, i64 %.09.i.i.i.i.i.i.i.i
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !30
  store double %i.ey, ptr %i.ew, align 8, !tbaa !30
  %i.ez = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fa = getelementptr [8 x i8], ptr %.pre.i.i, i64 %i.ez
  %i.fb = getelementptr [8 x i8], ptr %i.bh, i64 %i.ez
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !30
  store double %i.fc, ptr %i.fa, align 8, !tbaa !30
  %i.fd = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fe = getelementptr [8 x i8], ptr %.pre.i.i, i64 %i.fd
  %i.ff = getelementptr [8 x i8], ptr %i.bh, i64 %i.fd
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !30
  store double %i.fg, ptr %i.fe, align 8, !tbaa !30
  %i.fh = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.fi = getelementptr [8 x i8], ptr %.pre.i.i, i64 %i.fh
  %i.fj = getelementptr [8 x i8], ptr %i.bh, i64 %i.fh
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !30
  store double %i.fk, ptr %i.fi, align 8, !tbaa !30
  %i.fl = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.fl, %.pr.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph256, !llvm.loop !303

common.resume:                                    ; preds = %bb.p, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.fm, %bb.d ], [ %.pn68.pn.pn.pn, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.fm = landingpad { ptr, i32 }
          cleanup
  %i.fn = load ptr, ptr %12, align 8, !tbaa !294, !alias.scope !289
  call void @free(ptr noundef %i.fn) #20
  br label %common.resume

.loopexit182:                                     ; preds = %scalar.ph228.prol.loopexit, %scalar.ph228, %middle.block237, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  store double 2.000000e+00, ptr %i.k, align 8, !tbaa !52, !alias.scope !304
  store ptr %12, ptr %i.l, align 8
  store ptr %12, ptr %.sroa.5168.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  store ptr %11, ptr %14, align 8, !tbaa !307, !alias.scope !309
  store i64 3, ptr %i.m, align 8, !tbaa !46, !alias.scope !309
  store i64 3, ptr %i.n, align 8, !tbaa !46, !alias.scope !309
  store ptr %11, ptr %i.o, align 8, !tbaa !312, !alias.scope !309
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !alias.scope !309
  store i64 4, ptr %i.q, align 8, !tbaa !314, !alias.scope !309
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZN5Eigen8internal15call_assignmentINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLi3ELi3ELi0ELi3ELi3EEEEEKNS_7ProductINS3_IdLi3ELin1ELi1ELi3ELin1EEENS_9TransposeIKSH_EELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISS_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(41) %13, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef null)
          to label %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.j

.lr.ph54.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.loopexit182
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  store <2 x double> splat (double 1.000000e+00), ptr %i.r, align 16, !tbaa !82
  store double 1.000000e+00, ptr %i.s, align 8, !tbaa !30
  store double 1.000000e+00, ptr %i.ar, align 8, !tbaa !30
  store double 1.000000e+00, ptr %i.as, align 8, !tbaa !30
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.ak, align 16, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !317
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !317
  store i64 %i.j, ptr %6, align 8, !alias.scope !320, !noalias !317
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !317
  store ptr %16, ptr %7, align 8, !tbaa !323, !noalias !317
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !317
  store ptr %7, ptr %8, align 8, !tbaa !325, !noalias !317
  store ptr %6, ptr %i.t, align 8, !tbaa !327, !noalias !317
  store ptr %9, ptr %i.u, align 8, !tbaa !70, !noalias !317
  store ptr %16, ptr %i.v, align 8, !tbaa !329, !noalias !317
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS3_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi1ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSP_(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.k

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !317
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !317
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !317
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !317
  %i.fo = load <2 x double>, ptr %16, align 16, !tbaa !82
  store <2 x double> %i.fo, ptr %15, align 16, !tbaa !82
  %i.fp = load double, ptr %i.au, align 16, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.fq = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.fp, i64 0
  store <2 x double> %i.fq, ptr %i.at, align 16, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  store i8 0, ptr %i.w, align 16, !tbaa !334, !alias.scope !331
  store i8 0, ptr %i.x, align 1, !tbaa !358, !alias.scope !331
  %i.fr = load <2 x double>, ptr %11, align 16, !tbaa !82, !noalias !331
  store <2 x double> %i.fr, ptr %18, align 16, !tbaa !82, !alias.scope !331
  %i.fs = load <2 x double>, ptr %i.z, align 16, !tbaa !82, !noalias !331
  store <2 x double> %i.fs, ptr %i.y, align 16, !tbaa !82, !alias.scope !331
  %i.ft = load <2 x double>, ptr %i.ab, align 16, !tbaa !82, !noalias !331
  store <2 x double> %i.ft, ptr %i.aa, align 16, !tbaa !82, !alias.scope !331
  %i.fu = load <2 x double>, ptr %i.ad, align 16, !tbaa !82, !noalias !331
  store <2 x double> %i.fu, ptr %i.ac, align 16, !tbaa !82, !alias.scope !331
  %i.fv = load <2 x double>, ptr %i.af, align 16, !tbaa !82, !noalias !331
  store <2 x double> %i.fv, ptr %i.ae, align 16, !tbaa !82, !alias.scope !331
  %i.fw = load <2 x double>, ptr %i.ah, align 16, !tbaa !82, !noalias !331
  store <2 x double> %i.fw, ptr %i.ag, align 16, !tbaa !82, !alias.scope !331
  %i.fx = load <2 x double>, ptr %i.r, align 16, !tbaa !82, !noalias !331
  store <2 x double> %i.fx, ptr %i.ai, align 16, !tbaa !82, !alias.scope !331
  %i.fy = load <2 x double>, ptr %i.ak, align 16, !tbaa !82, !noalias !331
  store <2 x double> %i.fy, ptr %i.aj, align 16, !tbaa !82, !alias.scope !331
  invoke void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(344) %18)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE11_solve_implINS1_IdLi4ELi1ELi0ELi4ELi1EEES5_EEvRKT_RT0_(ptr noundef nonnull align 16 dereferenceable(344) %18, ptr noundef nonnull align 16 dereferenceable(32) %15, ptr noundef nonnull align 16 dereferenceable(32) %17)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.fz = load ptr, ptr %4, align 8, !tbaa !161, !noalias !359 ; 4 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv ; 11 uses
  %i.gb = load i64, ptr %i.al, align 8, !tbaa !166 ; 2 uses
  %i.gc = load double, ptr %17, align 16, !tbaa !30
  store double %i.gc, ptr %i.ga, align 8, !tbaa !30
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.gb
  %i.ge = load double, ptr %i.am, align 8, !tbaa !30
  store double %i.ge, ptr %i.gd, align 8, !tbaa !30
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.gb, 4
  %i.gf = getelementptr inbounds i8, ptr %i.ga, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = load double, ptr %i.an, align 16, !tbaa !30
  store double %i.gg, ptr %i.gf, align 8, !tbaa !30
  %i.gh = load ptr, ptr %3, align 8, !tbaa !161, !noalias !362
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.gj = load i64, ptr %i.i, align 8, !tbaa !292 ; 2 uses
  %.not11.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gj, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 1, i64 noundef %i.gj)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.g
  %.pre12.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !292 ; 5 uses
  %.pre13.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !144
  %i.gk = load i64, ptr %i.al, align 8, !tbaa !166 ; 2 uses
  %i.gl = load ptr, ptr %12, align 8, !tbaa !294  ; 3 uses
  %.not8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.pre13.i.i.i.i.i.i.i.i.i.i.i, %.pre12.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %.noexc.i.i.i.i.i.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 1, i64 noundef %.pre12.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc3.i.i.i.i.i.i.i unwind label %bb.i

.noexc3.i.i.i.i.i.i.i:                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !144
  br label %bb.h

bb.h:                                             ; preds = %.noexc3.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.gm = phi i64 [ %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc3.i.i.i.i.i.i.i ], [ %.pre12.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i ] ; 7 uses
  %i.gn = load ptr, ptr %5, align 8, !tbaa !125   ; 5 uses
  %i.go = sdiv i64 %i.gm, 2                       ; 2 uses
  %i.gp = shl nsw i64 %i.go, 1                    ; 7 uses
  %i.gq = icmp sgt i64 %i.gm, 1
  br i1 %i.gq, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.gr = getelementptr [8 x i8], ptr %i.ga, i64 %i.gk
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %.pre12.i.i.i.i.i.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.gk, 4
  %i.gt = getelementptr i8, ptr %i.ga, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.idx12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %.pre12.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.gu = getelementptr inbounds i8, ptr %i.gl, i64 %.idx12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %i.gv = icmp slt i64 %i.gp, %i.gm
  br i1 %i.gv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gw = load ptr, ptr %12, align 8, !tbaa !294, !noalias !365 ; 8 uses
  %i.gx = load i64, ptr %i.i, align 8, !tbaa !292 ; 5 uses
  %.idx1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.gx, 4 ; 4 uses
  %i.gy = load i64, ptr %i.al, align 8, !tbaa !166 ; 3 uses
  %i.gz = getelementptr [8 x i8], ptr %i.ga, i64 %i.gy ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.gy, 4 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.ga, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.hb = sub i64 %i.gm, %i.gp                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.hb, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hc = shl i64 %i.go, 4                        ; 4 uses
  %scevgep = getelementptr i8, ptr %i.gn, i64 %i.hc ; 6 uses
  %i.hd = shl i64 %i.gm, 3                        ; 3 uses
  %scevgep188 = getelementptr i8, ptr %i.gn, i64 %i.hd ; 6 uses
  %i.he = getelementptr i8, ptr %i.fz, i64 %i.aw
  %scevgep189 = getelementptr i8, ptr %i.he, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hf = shl i64 %i.gy, 3
  %i.hg = getelementptr i8, ptr %i.fz, i64 %i.aw
  %scevgep190 = getelementptr i8, ptr %i.hg, i64 %i.hf
  %scevgep191 = getelementptr i8, ptr %i.fz, i64 %i.aw
  %i.hh = getelementptr i8, ptr %i.gw, i64 %.idx1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %scevgep192 = getelementptr i8, ptr %i.hh, i64 %i.hc
  %i.hi = getelementptr i8, ptr %i.gw, i64 %.idx1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %scevgep193 = getelementptr i8, ptr %i.hi, i64 %i.hd
  %i.hj = shl i64 %i.gx, 3
  %i.hk = getelementptr i8, ptr %i.gw, i64 %i.hc
  %scevgep194 = getelementptr i8, ptr %i.hk, i64 %i.hj
  %i.hl = add i64 %i.gm, %i.gx
  %i.hm = shl i64 %i.hl, 3
  %scevgep195 = getelementptr i8, ptr %i.gw, i64 %i.hm
  %scevgep196 = getelementptr i8, ptr %i.gw, i64 %i.hc
  %scevgep197 = getelementptr i8, ptr %i.gw, i64 %i.hd
  %bound0 = icmp ult ptr %scevgep, %scevgep189
  %bound1 = icmp ult ptr %i.ha, %scevgep188
  %found.conflict = and i1 %bound0, %bound1
  %bound0198 = icmp ult ptr %scevgep, %scevgep190
  %bound1199 = icmp ult ptr %i.gz, %scevgep188
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx = or i1 %found.conflict, %found.conflict200
  %bound0201 = icmp ult ptr %scevgep, %scevgep191
  %bound1202 = icmp ult ptr %i.ga, %scevgep188
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx204 = or i1 %conflict.rdx, %found.conflict203
  %bound0205 = icmp ult ptr %scevgep, %scevgep193
  %bound1206 = icmp ult ptr %scevgep192, %scevgep188
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %conflict.rdx204, %found.conflict207
  %bound0209 = icmp ult ptr %scevgep, %scevgep195
  %bound1210 = icmp ult ptr %scevgep194, %scevgep188
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx212 = or i1 %conflict.rdx208, %found.conflict211
  %bound0213 = icmp ult ptr %scevgep, %scevgep197
  %bound1214 = icmp ult ptr %scevgep196, %scevgep188
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx216 = or i1 %conflict.rdx212, %found.conflict215
  br i1 %conflict.rdx216, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hb, -4                      ; 3 uses
  %i.hn = add i64 %i.gp, %n.vec
  %i.ho = load double, ptr %i.ga, align 8, !tbaa !30, !alias.scope !368
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ho, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hp = load double, ptr %i.gz, align 8, !tbaa !30, !alias.scope !371
  %broadcast.splatinsert220 = insertelement <2 x double> poison, double %i.hp, i64 0
  %broadcast.splat221 = shufflevector <2 x double> %broadcast.splatinsert220, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hq = load double, ptr %i.ha, align 8, !tbaa !30, !alias.scope !373
  %broadcast.splatinsert224 = insertelement <2 x double> poison, double %i.hq, i64 0
  %broadcast.splat225 = shufflevector <2 x double> %broadcast.splatinsert224, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hr = add i64 %i.gp, %index                   ; 2 uses
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.hr ; 2 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.hr ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %wide.load = load <2 x double>, ptr %i.ht, align 8, !tbaa !30, !alias.scope !375
  %wide.load217 = load <2 x double>, ptr %i.hu, align 8, !tbaa !30, !alias.scope !375
  %i.hv = fmul <2 x double> %broadcast.splat, %wide.load
  %i.hw = fmul <2 x double> %broadcast.splat, %wide.load217
  %i.hx = getelementptr [8 x i8], ptr %i.ht, i64 %i.gx ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 16
  %wide.load218 = load <2 x double>, ptr %i.hx, align 8, !tbaa !30, !alias.scope !377
  %wide.load219 = load <2 x double>, ptr %i.hy, align 8, !tbaa !30, !alias.scope !377
  %i.hz = fmul <2 x double> %broadcast.splat221, %wide.load218
  %i.ia = fmul <2 x double> %broadcast.splat221, %wide.load219
  %i.ib = getelementptr i8, ptr %i.ht, i64 %.idx1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 16
  %wide.load222 = load <2 x double>, ptr %i.ib, align 8, !tbaa !30, !alias.scope !379
  %wide.load223 = load <2 x double>, ptr %i.ic, align 8, !tbaa !30, !alias.scope !379
  %i.id = fmul <2 x double> %broadcast.splat225, %wide.load222
  %i.ie = fmul <2 x double> %broadcast.splat225, %wide.load223
  %i.if = fadd <2 x double> %i.hz, %i.id
  %i.ig = fadd <2 x double> %i.ia, %i.ie
  %i.ih = fadd <2 x double> %i.hv, %i.if
  %i.ii = fadd <2 x double> %i.hw, %i.ig
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store <2 x double> %i.ih, ptr %i.hs, align 8, !tbaa !30, !alias.scope !381, !noalias !383
  store <2 x double> %i.ii, ptr %i.ij, align 8, !tbaa !30, !alias.scope !381, !noalias !383
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ik = icmp eq i64 %index.next, %n.vec
  br i1 %i.ik, label %middle.block, label %vector.body, !llvm.loop !384

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hb, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.gp, %vector.memcheck ], [ %i.gp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hn, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ja, %scalar.ph ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.im = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.in = load double, ptr %i.ga, align 8, !tbaa !30
  %i.io = load double, ptr %i.im, align 8, !tbaa !30
  %i.ip = fmul double %i.in, %i.io
  %i.iq = load double, ptr %i.gz, align 8, !tbaa !30
  %i.ir = getelementptr [8 x i8], ptr %i.im, i64 %i.gx
  %i.is = load double, ptr %i.ir, align 8, !tbaa !30
  %i.it = fmul double %i.iq, %i.is
  %i.iu = load double, ptr %i.ha, align 8, !tbaa !30
  %i.iv = getelementptr i8, ptr %i.im, i64 %.idx1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !30
  %i.ix = fmul double %i.iu, %i.iw
  %i.iy = fadd double %i.it, %i.ix
  %i.iz = fadd double %i.ip, %i.iy
  store double %i.iz, ptr %i.il, align 8, !tbaa !30
  %i.ja = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ja, %i.gm
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %scalar.ph, !llvm.loop !385

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jc = load double, ptr %i.ga, align 8, !tbaa !30
  %i.jd = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.je = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jg = load <2 x double>, ptr %i.jf, align 1, !tbaa !82
  %i.jh = fmul <2 x double> %i.jg, %i.je
  %i.ji = load double, ptr %i.gr, align 8, !tbaa !30
  %i.jj = insertelement <2 x double> poison, double %i.ji, i64 0
  %i.jk = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jm = load <2 x double>, ptr %i.jl, align 1, !tbaa !82
  %i.jn = fmul <2 x double> %i.jm, %i.jk
  %i.jo = fadd <2 x double> %i.jh, %i.jn
  %i.jp = load double, ptr %i.gt, align 8, !tbaa !30
  %i.jq = insertelement <2 x double> poison, double %i.jp, i64 0
  %i.jr = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jt = load <2 x double>, ptr %i.js, align 1, !tbaa !82
  %i.ju = fmul <2 x double> %i.jt, %i.jr
  %i.jv = fadd <2 x double> %i.jo, %i.ju
  store <2 x double> %i.jv, ptr %i.jb, align 16, !tbaa !82
  %i.jw = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.jx = icmp slt i64 %i.jw, %i.gp
  br i1 %i.jx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !386

bb.i:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %i.jy = landingpad { ptr, i32 }
          cleanup
  %i.jz = load ptr, ptr %5, align 8, !tbaa !125
  call void @free(ptr noundef %i.jz) #20
  br label %.body

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.ka = load ptr, ptr %5, align 8, !tbaa !125   ; 4 uses
  %i.kb = load i64, ptr %i.ap, align 8, !tbaa !166 ; 2 uses
  %i.kc = load double, ptr %i.ka, align 8, !tbaa !30
  store double %i.kc, ptr %i.gi, align 8, !tbaa !30
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.kb
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !30
  store double %i.kf, ptr %i.kd, align 8, !tbaa !30
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i103 = shl nsw i64 %i.kb, 4
  %i.kg = getelementptr inbounds i8, ptr %i.gi, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i103
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !30
  store double %i.ki, ptr %i.kg, align 8, !tbaa !30
  call void @free(ptr noundef %i.ka) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.kj = load double, ptr %i.aq, align 8, !tbaa !30
  %i.kk = load ptr, ptr %3, align 8, !tbaa !161, !noalias !387
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv ; 3 uses
  %i.km = load i64, ptr %i.ap, align 8, !tbaa !166 ; 2 uses
  %i.kn = load double, ptr %i.kl, align 8, !tbaa !30 ; 2 uses
  %i.ko = fmul double %i.kn, %i.kn
  %i.kp = getelementptr [8 x i8], ptr %i.kl, i64 %i.km
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !30 ; 2 uses
  %i.kr = fmul double %i.kq, %i.kq
  %.idx.i.i.i.i.i.i.i = shl i64 %i.km, 4
  %i.ks = getelementptr i8, ptr %i.kl, i64 %.idx.i.i.i.i.i.i.i
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !30 ; 2 uses
  %i.ku = fmul double %i.kt, %i.kt
  %i.kv = fadd double %i.kr, %i.ku
  %i.kw = fadd double %i.ko, %i.kv
  %i.kx = fadd double %i.kj, %i.kw
  %i.ky = call double @sqrt(double noundef %i.kx) #20
  %i.kz = load ptr, ptr %2, align 8, !tbaa !98
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv
  store double %i.ky, ptr %i.la, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.lb = load ptr, ptr %12, align 8, !tbaa !294
  call void @free(ptr noundef %i.lb) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lc = load i64, ptr %i.a, align 8, !tbaa !280
  %i.ld = icmp sgt i64 %i.lc, %indvars.iv.next
  br i1 %i.ld, label %bb.b, label %._crit_edge, !llvm.loop !390

bb.j:                                             ; preds = %.loopexit182
  %i.le = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.p

bb.k:                                             ; preds = %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i
  %i.lf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.o

bb.l:                                             ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn62 = phi { ptr, i32 } [ %i.lh, %bb.m ], [ %i.lg, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %.body

.body:                                            ; preds = %bb.i, %bb.n
  %.pn68.pn = phi { ptr, i32 } [ %.pn62, %bb.n ], [ %i.jy, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.k
  %.pn68.pn.pn = phi { ptr, i32 } [ %.pn68.pn, %.body ], [ %i.lf, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.pn68.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn, %bb.o ], [ %i.le, %bb.j ]
  %i.li = load ptr, ptr %12, align 8, !tbaa !294
  call void @free(ptr noundef %i.li) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl12circumradiusIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi4ELi0ELin1ELi4EEEEEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERNS1_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Eigen::internal::evaluator.929", align 8 ; 5 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.1218", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1223", align 8 ; 7 uses
  %8 = alloca %"class.Eigen::Product.936", align 8 ; 8 uses
  %9 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %10 = alloca %"class.Eigen::Matrix", align 8    ; 10 uses
  %11 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %12 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %13 = alloca %"class.Eigen::Matrix", align 8    ; 16 uses
  %14 = alloca %"class.Eigen::Matrix", align 8    ; 14 uses
  %15 = alloca %"class.Eigen::Block.43", align 8  ; 11 uses
  %16 = alloca %"class.Eigen::Matrix.54", align 8 ; 10 uses
  %17 = alloca %"class.Eigen::Array", align 8     ; 10 uses
  %18 = alloca %"class.Eigen::Matrix.54", align 8 ; 10 uses
  %19 = alloca %"class.Eigen::ColPivHouseholderQR", align 8 ; 14 uses
  %20 = alloca %"class.Eigen::Product.505", align 8 ; 10 uses
  %21 = alloca %"class.Eigen::Block.301", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.c, i64 noundef 1)
  %i.d = load i64, ptr %i.b, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.d, i64 noundef %i.f)
  %i.g = load i64, ptr %i.b, align 8, !tbaa !9
  %i.h = load i64, ptr %i.a, align 8, !tbaa !19
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.g, i64 noundef %i.h)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.p = ptrtoint ptr %14 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.4.8..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %19, i64 104
  %i.ai = getelementptr inbounds nuw i8, ptr %19, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 24
  %.sroa.7131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 32
  %.sroa.8132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.y, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %i.au = phi i64 [ %i.i, %.lr.ph ], [ %i.sw, %bb.y ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.av = load i64, ptr %i.a, align 8, !tbaa !19  ; 14 uses
  %i.aw = add nsw i64 %i.av, 1                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ay = sdiv i64 9223372036854775807, %i.aw
  %.not = icmp slt i64 %i.av, %i.ay
  br i1 %.not, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  %i.az = mul nsw i64 %i.aw, %i.aw                ; 2 uses
  %i.ba = icmp samesign ugt i64 %i.az, 2305843009213693951
  br i1 %i.ba, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.d
  %i.bb = shl nuw i64 %i.az, 3
  %i.bc = call noalias ptr @malloc(i64 noundef %i.bb) #22 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.invoke, label %.sink.split.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d, %bb.c
  %i.be = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.be, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.bc, ptr %13, align 8, !tbaa !20
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.thread

common.resume:                                    ; preds = %.body116, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.e ], [ %.pn71.pn.pn.pn.pn.pn.pn, %.body116 ]
end_hunk_0
begin_hunk_1_@_ZN3igl12circumradiusIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi4ELi0ELin1ELi4EEEEEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERNS1_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EE:bb.a
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.qo, %i.nq
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !440

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.qs, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.qp = getelementptr inbounds [8 x i8], ptr %i.nr, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.ns, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.qr = load <2 x double>, ptr %i.qq, align 1, !tbaa !82
  store <2 x double> %i.qr, ptr %i.qp, align 16, !tbaa !82
  %i.qs = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.qt = icmp slt i64 %i.qs, %i.oc
  br i1 %i.qt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !121

.loopexit:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.qu = load ptr, ptr %17, align 8, !tbaa !98
  call void @free(ptr noundef %i.qu) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.qv = load i64, ptr %i.a, align 8, !tbaa !19
  %i.qw = load ptr, ptr %16, align 8, !tbaa !98
  %i.qx = getelementptr inbounds [8 x i8], ptr %i.qw, i64 %i.qv
  store double 1.000000e+00, ptr %i.qx, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  invoke void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2IS2_EERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(160) %19, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false), !alias.scope !441
  %i.qy = load i64, ptr %i.ag, align 8, !tbaa !14, !noalias !441 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.qy, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_5SolveINS_19ColPivHouseholderQRINS1_IdLin1ELin1ELi0ELin1ELin1EEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %18, i64 noundef %i.qy, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_5SolveINS_19ColPivHouseholderQRINS1_IdLin1ELin1ELi0ELin1ELin1EEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i.i unwind label %.body111

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_5SolveINS_19ColPivHouseholderQRINS1_IdLin1ELin1ELi0ELin1ELin1EEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i.i: ; preds = %bb.w, %bb.v
  invoke void @_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11_solve_implINS1_IdLin1ELi1ELi0ELin1ELi1EEES5_EEvRKT_RT0_(ptr noundef nonnull align 8 dereferenceable(160) %19, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %bb.x unwind label %.body111

.body111:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_5SolveINS_19ColPivHouseholderQRINS1_IdLin1ELin1ELi0ELin1ELin1EEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i.i, %bb.w
  %i.qz = landingpad { ptr, i32 }
          cleanup
  %i.ra = load ptr, ptr %18, align 8, !tbaa !98, !alias.scope !441
  call void @free(ptr noundef %i.ra) #20
  call void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %19) #20
  br label %bb.aa

bb.x:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_5SolveINS_19ColPivHouseholderQRINS1_IdLin1ELin1ELi0ELin1ELin1EEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i.i
  %i.rb = load ptr, ptr %i.ah, align 8, !tbaa !125
  call void @free(ptr noundef %i.rb) #20
  %i.rc = load ptr, ptr %i.ai, align 8, !tbaa !125
  call void @free(ptr noundef %i.rc) #20
  %i.rd = load ptr, ptr %i.aj, align 8, !tbaa !125
  call void @free(ptr noundef %i.rd) #20
  %i.re = load ptr, ptr %i.ak, align 8, !tbaa !127
  call void @free(ptr noundef %i.re) #20
  %i.rf = load ptr, ptr %i.al, align 8, !tbaa !130
  call void @free(ptr noundef %i.rf) #20
  %i.rg = load ptr, ptr %i.am, align 8, !tbaa !98
  call void @free(ptr noundef %i.rg) #20
  %i.rh = load ptr, ptr %19, align 8, !tbaa !20
  call void @free(ptr noundef %i.rh) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %i.ri = load ptr, ptr %18, align 8, !tbaa !98, !noalias !444 ; 4 uses
  %i.rj = load ptr, ptr %4, align 8, !tbaa !241, !noalias !447
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %indvars.iv ; 5 uses
  %i.rl = load i64, ptr %i.an, align 8, !tbaa !246 ; 3 uses
  %i.rm = load double, ptr %i.ri, align 8, !tbaa !30
  store double %i.rm, ptr %i.rk, align 8, !tbaa !30
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.rk, i64 %i.rl
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !30
  store double %i.rp, ptr %i.rn, align 8, !tbaa !30
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.rl, 4
  %i.rq = getelementptr inbounds i8, ptr %i.rk, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !30
  store double %i.rs, ptr %i.rq, align 8, !tbaa !30
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.rl, 24
  %i.rt = getelementptr inbounds i8, ptr %i.rk, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ri, i64 24
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !30
  store double %i.rv, ptr %i.rt, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  store ptr %i.rk, ptr %20, align 8
  store ptr %4, ptr %.sroa.5130.0..sroa_idx, align 8
  store i64 %indvars.iv, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.7131.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.8132.0..sroa_idx, align 8
  store ptr %14, ptr %i.ao, align 8, !tbaa !47, !alias.scope !450
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.rw = load ptr, ptr %3, align 8, !tbaa !161, !noalias !453
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %indvars.iv
  store ptr %i.rx, ptr %21, align 8, !tbaa !456, !alias.scope !453
  store ptr %3, ptr %i.ap, align 8, !tbaa !459, !alias.scope !453
  store i64 %indvars.iv, ptr %i.aq, align 8, !tbaa !46, !alias.scope !453
  store i64 0, ptr %i.ar, align 8, !tbaa !46, !alias.scope !453
  store i64 1, ptr %i.as, align 8, !tbaa !461, !alias.scope !453
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  invoke void @_ZN5Eigen8internal15call_assignmentINS_5BlockINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEENS_7ProductINS2_INS3_IdLin1ELi4ELi0ELin1ELi4EEELi1ELi4ELb0EEENS3_IdLin1ELin1ELi0ELin1ELin1EEELi0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISF_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull align 8 dereferenceable(56) %20, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef null)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.ry = load i64, ptr %i.a, align 8, !tbaa !19
  %i.rz = load ptr, ptr %18, align 8, !tbaa !98   ; 2 uses
  %i.sa = getelementptr inbounds [8 x i8], ptr %i.rz, i64 %i.ry
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !30
  %i.sc = load ptr, ptr %3, align 8, !tbaa !161, !noalias !464
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv ; 3 uses
  %i.se = load i64, ptr %i.at, align 8, !tbaa !166 ; 2 uses
  %i.sf = load double, ptr %i.sd, align 8, !tbaa !30 ; 2 uses
  %i.sg = fmul double %i.sf, %i.sf
  %i.sh = getelementptr [8 x i8], ptr %i.sd, i64 %i.se
  %i.si = load double, ptr %i.sh, align 8, !tbaa !30 ; 2 uses
  %i.sj = fmul double %i.si, %i.si
  %.idx.i.i.i.i.i.i.i = shl i64 %i.se, 4
  %i.sk = getelementptr i8, ptr %i.sd, i64 %.idx.i.i.i.i.i.i.i
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !30 ; 2 uses
  %i.sm = fmul double %i.sl, %i.sl
  %i.sn = fadd double %i.sj, %i.sm
  %i.so = fadd double %i.sg, %i.sn
  %i.sp = fadd double %i.sb, %i.so
  %i.sq = call double @sqrt(double noundef %i.sp) #20
  %i.sr = load ptr, ptr %2, align 8, !tbaa !98
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv
  store double %i.sq, ptr %i.ss, align 8, !tbaa !30
  call void @free(ptr noundef %i.rz) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.st = load ptr, ptr %16, align 8, !tbaa !98
  call void @free(ptr noundef %i.st) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.su = load ptr, ptr %14, align 8, !tbaa !20
  call void @free(ptr noundef %i.su) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.sv = load ptr, ptr %13, align 8, !tbaa !20
  call void @free(ptr noundef %i.sv) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.sw = load i64, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.sx = icmp sgt i64 %i.sw, %indvars.iv.next
  br i1 %i.sx, label %bb.b, label %._crit_edge, !llvm.loop !467

.body118:                                         ; preds = %bb.m, %bb.n
  %eh.lpad-body119 = phi { ptr, i32 } [ %i.ds, %bb.n ], [ %i.dk, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %.body116

bb.z:                                             ; preds = %.loopexit
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.body111, %bb.z
  %.pn65 = phi { ptr, i32 } [ %i.qz, %.body111 ], [ %i.sy, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %i.sz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.ta = load ptr, ptr %18, align 8, !tbaa !98
  call void @free(ptr noundef %i.ta) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn71.pn.pn = phi { ptr, i32 } [ %i.sz, %bb.ab ], [ %.pn65, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %.body

.body:                                            ; preds = %.body104, %bb.ac, %bb.q
  %.pn71.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hg, %bb.q ], [ %.pn71.pn.pn, %bb.ac ], [ %i.no, %.body104 ]
  %i.tb = load ptr, ptr %16, align 8, !tbaa !98
  call void @free(ptr noundef %i.tb) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %.body116

.body116:                                         ; preds = %.body, %.body118, %bb.l
  %.pn71.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dg, %bb.l ], [ %.pn71.pn.pn.pn.pn, %.body ], [ %eh.lpad-body119, %.body118 ]
  %i.tc = load ptr, ptr %14, align 8, !tbaa !20
  call void @free(ptr noundef %i.tc) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.td = load ptr, ptr %13, align 8, !tbaa !20
  call void @free(ptr noundef %i.td) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl12circumradiusIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEES6_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERNS1_15PlainObjectBaseIT1_EERNSG_IT2_EERNSG_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix.110", align 8 ; 8 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix.320", align 16 ; 16 uses
  %8 = alloca %"class.Eigen::Matrix.512", align 8 ; 14 uses
  %9 = alloca %"class.Eigen::CwiseBinaryOp.527", align 8 ; 7 uses
  %10 = alloca %"class.Eigen::Block.380", align 8 ; 10 uses
  %11 = alloca %"class.Eigen::Matrix.391", align 16 ; 6 uses
  %12 = alloca %"class.Eigen::Matrix.391", align 16 ; 8 uses
  %13 = alloca %"class.Eigen::ColPivHouseholderQR.451", align 16 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !280
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.b, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !tbaa !280
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.c, i64 noundef %i.e)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !280
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.f, i64 noundef 3)
  %i.g = load i64, ptr %i.a, align 8, !tbaa !280
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 304
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 305
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 7 uses
  %i.ar = shl i64 %indvars.iv, 3
  %i.as = add i64 %i.ar, 8                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.at = load ptr, ptr %1, align 8, !tbaa !282, !noalias !468
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv ; 3 uses
  %i.av = load i64, ptr %i.d, align 8, !tbaa !14, !noalias !471 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !alias.scope !474
  %i.aw = load ptr, ptr %0, align 8, !tbaa !20, !noalias !474 ; 6 uses
  %i.ax = load i64, ptr %i.i, align 8, !tbaa !21, !noalias !474 ; 4 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not8.i.i.i.i.i.i.i.i, label %.loopexit190, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.b
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 3, i64 noundef %i.av)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !477, !alias.scope !474 ; 12 uses
  %.pre.i.i = load ptr, ptr %8, align 8, !tbaa !479, !alias.scope !474 ; 12 uses
  %i.ay = icmp sgt i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit190

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c
  %i.az = load i32, ptr %i.au, align 4, !tbaa !29
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.aw, i64 %i.ba ; 5 uses
  %i.bc = getelementptr i8, ptr %.pre.i.i, i64 8  ; 5 uses
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !280 ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !29
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %i.aw, i64 %i.bg ; 5 uses
  %i.bi = getelementptr i8, ptr %.pre.i.i, i64 16 ; 5 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.bd, 3
  %i.bj = getelementptr inbounds i8, ptr %i.au, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !29
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.aw, i64 %i.bl ; 5 uses
  %min.iters.check249 = icmp ult i64 %.pr.i.i.i.i.i.i.i, 30
  br i1 %min.iters.check249, label %scalar.ph248.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %ident.check = icmp ne i64 %i.ax, 1
  %i.bn = add nsw i64 %.pr.i.i.i.i.i.i.i, -1
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bn, i64 24) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 3 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.bo = getelementptr i8, ptr %.pre.i.i, i64 %mul.result
  %i.bp = icmp ult ptr %i.bo, %.pre.i.i
  %i.bq = getelementptr i8, ptr %i.bc, i64 %mul.result
  %i.br = icmp ult ptr %i.bq, %i.bc
  %i.bs = or i1 %i.br, %mul.overflow
  %i.bt = getelementptr i8, ptr %i.bi, i64 %mul.result
  %i.bu = icmp ult ptr %i.bt, %i.bi
  %i.bv = or i1 %i.bp, %ident.check
  %i.bw = or i1 %i.bv, %i.bs
  %i.bx = or i1 %i.bu, %i.bw
  br i1 %i.bx, label %scalar.ph248.preheader, label %vector.memcheck232

vector.memcheck232:                               ; preds = %vector.scevcheck
  %i.by = add i64 %.pr.i.i.i.i.i.i.i, %i.bl
  %i.bz = shl i64 %i.by, 3
  %scevgep233 = getelementptr i8, ptr %i.aw, i64 %i.bz
  %i.ca = mul i64 %.pr.i.i.i.i.i.i.i, 24
  %scevgep234 = getelementptr i8, ptr %.pre.i.i, i64 %i.ca ; 3 uses
  %i.cb = add i64 %.pr.i.i.i.i.i.i.i, %i.bg
  %i.cc = shl i64 %i.cb, 3
  %scevgep235 = getelementptr i8, ptr %i.aw, i64 %i.cc
  %i.cd = add i64 %.pr.i.i.i.i.i.i.i, %i.ba
  %i.ce = shl i64 %i.cd, 3
  %scevgep236 = getelementptr i8, ptr %i.aw, i64 %i.ce
  %bound0237 = icmp ult ptr %i.bm, %scevgep234
  %bound1238 = icmp ult ptr %.pre.i.i, %scevgep233
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0240 = icmp ult ptr %i.bh, %scevgep234
  %bound1241 = icmp ult ptr %.pre.i.i, %scevgep235
  %found.conflict242 = and i1 %bound0240, %bound1241
  %conflict.rdx243 = or i1 %found.conflict239, %found.conflict242
  %bound0244 = icmp ult ptr %i.bb, %scevgep234
  %bound1245 = icmp ult ptr %.pre.i.i, %scevgep236
  %found.conflict246 = and i1 %bound0244, %bound1245
  %conflict.rdx247 = or i1 %conflict.rdx243, %found.conflict246
  br i1 %conflict.rdx247, label %scalar.ph248.preheader, label %vector.ph250

vector.ph250:                                     ; preds = %vector.memcheck232
  %n.vec251 = and i64 %.pr.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  br label %vector.body252

vector.body252:                                   ; preds = %vector.body252, %vector.ph250
  %index253 = phi i64 [ 0, %vector.ph250 ], [ %index.next256, %vector.body252 ] ; 5 uses
  %i.cf = mul i64 %index253, 24
  %i.cg = getelementptr i8, ptr %.pre.i.i, i64 %i.cf
  %i.ch = getelementptr [8 x i8], ptr %i.bb, i64 %index253
  %wide.load = load <2 x double>, ptr %i.ch, align 8, !tbaa !30, !alias.scope !480, !noalias !483
  %i.ci = getelementptr [8 x i8], ptr %i.bh, i64 %index253
  %wide.load254 = load <2 x double>, ptr %i.ci, align 8, !tbaa !30, !alias.scope !485, !noalias !483
  %i.cj = getelementptr [8 x i8], ptr %i.bm, i64 %index253
  %wide.load255 = load <2 x double>, ptr %i.cj, align 8, !tbaa !30, !alias.scope !487, !noalias !483
  %i.ck = shufflevector <2 x double> %wide.load, <2 x double> %wide.load254, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cl = shufflevector <2 x double> %wide.load255, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.ck, <4 x double> %i.cl, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.cg, align 8, !tbaa !30, !alias.scope !483
  %index.next256 = add nuw i64 %index253, 2       ; 2 uses
  %i.cm = icmp eq i64 %index.next256, %n.vec251
  br i1 %i.cm, label %middle.block257, label %vector.body252, !llvm.loop !489

middle.block257:                                  ; preds = %vector.body252
  %cmp.n258 = icmp eq i64 %.pr.i.i.i.i.i.i.i, %n.vec251
  br i1 %cmp.n258, label %.loopexit190, label %scalar.ph248.preheader

scalar.ph248.preheader:                           ; preds = %vector.memcheck232, %vector.scevcheck, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block257
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck232 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %n.vec251, %middle.block257 ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.pr.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph248.prol.loopexit, label %scalar.ph248.prol

scalar.ph248.prol:                                ; preds = %scalar.ph248.preheader
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.prol = mul i64 %.05.i.i.i.i.i.i.i.i.ph, 24 ; 3 uses
  %i.cn = getelementptr i8, ptr %.pre.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.co = mul nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %i.ax ; 3 uses
  %i.cp = getelementptr [8 x i8], ptr %i.bb, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !30
  store double %i.cq, ptr %i.cn, align 8, !tbaa !30
  %i.cr = getelementptr i8, ptr %i.bc, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cs = getelementptr [8 x i8], ptr %i.bh, i64 %i.co
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !30
  store double %i.ct, ptr %i.cr, align 8, !tbaa !30
  %i.cu = getelementptr i8, ptr %i.bi, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cv = getelementptr [8 x i8], ptr %i.bm, i64 %i.co
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !30
  store double %i.cw, ptr %i.cu, align 8, !tbaa !30
  %i.cx = or disjoint i64 %.05.i.i.i.i.i.i.i.i.ph, 1
  br label %scalar.ph248.prol.loopexit

scalar.ph248.prol.loopexit:                       ; preds = %scalar.ph248.prol, %scalar.ph248.preheader
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %scalar.ph248.preheader ], [ %i.cx, %scalar.ph248.prol ]
  %i.cy = icmp eq i64 %.pr.i.i.i.i.i.i.i, %.neg
  br i1 %i.cy, label %.loopexit190, label %scalar.ph248

scalar.ph248:                                     ; preds = %scalar.ph248.prol.loopexit, %scalar.ph248
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.du, %scalar.ph248 ], [ %.05.i.i.i.i.i.i.i.i.unr, %scalar.ph248.prol.loopexit ] ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %.05.i.i.i.i.i.i.i.i, 24 ; 3 uses
  %i.cz = getelementptr i8, ptr %.pre.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  %i.da = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.ax ; 3 uses
  %i.db = getelementptr [8 x i8], ptr %i.bb, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !30
  store double %i.dc, ptr %i.cz, align 8, !tbaa !30
  %i.dd = getelementptr i8, ptr %i.bc, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  %i.de = getelementptr [8 x i8], ptr %i.bh, i64 %i.da
  %i.df = load double, ptr %i.de, align 8, !tbaa !30
  store double %i.df, ptr %i.dd, align 8, !tbaa !30
  %i.dg = getelementptr i8, ptr %i.bi, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dh = getelementptr [8 x i8], ptr %i.bm, i64 %i.da
  %i.di = load double, ptr %i.dh, align 8, !tbaa !30
  store double %i.di, ptr %i.dg, align 8, !tbaa !30
  %i.dj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = mul i64 %i.dj, 24 ; 3 uses
  %i.dk = getelementptr i8, ptr %.pre.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.dl = mul nsw i64 %i.dj, %i.ax                ; 3 uses
  %i.dm = getelementptr [8 x i8], ptr %i.bb, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !30
  store double %i.dn, ptr %i.dk, align 8, !tbaa !30
  %i.do = getelementptr i8, ptr %i.bc, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.dp = getelementptr [8 x i8], ptr %i.bh, i64 %i.dl
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !30
  store double %i.dq, ptr %i.do, align 8, !tbaa !30
  %i.dr = getelementptr i8, ptr %i.bi, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.ds = getelementptr [8 x i8], ptr %i.bm, i64 %i.dl
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !30
  store double %i.dt, ptr %i.dr, align 8, !tbaa !30
  %i.du = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.du, %.pr.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.1, label %.loopexit190, label %scalar.ph248, !llvm.loop !490

common.resume:                                    ; preds = %bb.m, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.dv, %bb.d ], [ %.pn68.pn.pn.pn, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %8, align 8, !tbaa !479, !alias.scope !474
  call void @free(ptr noundef %i.dw) #20
  br label %common.resume

.loopexit190:                                     ; preds = %scalar.ph248.prol.loopexit, %scalar.ph248, %middle.block257, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store double 2.000000e+00, ptr %i.k, align 8, !tbaa !52, !alias.scope !491
  store ptr %8, ptr %i.l, align 8
  store ptr %8, ptr %.sroa.5175.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store ptr %7, ptr %10, align 8, !tbaa !307, !alias.scope !494
  store i64 3, ptr %i.m, align 8, !tbaa !46, !alias.scope !494
  store i64 3, ptr %i.n, align 8, !tbaa !46, !alias.scope !494
  store ptr %7, ptr %i.o, align 8, !tbaa !312, !alias.scope !494
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !alias.scope !494
  store i64 4, ptr %i.q, align 8, !tbaa !314, !alias.scope !494
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZN5Eigen8internal15call_assignmentINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLi3ELi3ELi0ELi3ELi3EEEEEKNS_7ProductINS3_IdLi3ELin1ELi0ELi3ELin1EEENS_9TransposeIKSH_EELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISS_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(41) %9, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef null)
          to label %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.i

.lr.ph54.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.loopexit190
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  store <2 x double> splat (double 1.000000e+00), ptr %i.r, align 16, !tbaa !82
  store double 1.000000e+00, ptr %i.s, align 8, !tbaa !30
  store double 1.000000e+00, ptr %i.ao, align 8, !tbaa !30
  store double 1.000000e+00, ptr %i.ap, align 8, !tbaa !30
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.ah, align 16, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %.pre.pre.i = load i64, ptr %i.j, align 8, !tbaa !477 ; 9 uses
  %i.dx = icmp eq i64 %.pre.pre.i, 0
  %i.dy = add i64 %.pre.pre.i, -1                 ; 3 uses
  %i.dz = and i64 %i.dy, -4
  %i.ea = load ptr, ptr %8, align 8               ; 8 uses
  br i1 %i.dx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i100.split

.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.preheader.new
  %.01726.i.i.i.i.i.i.i23.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ex, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i ] ; 5 uses
  %.02425.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i = phi double [ %i.ho, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ew, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i18.i.i.i.i.i.i.i25.i.i.i.i.i.i.i.i = mul i64 %.01726.i.i.i.i.i.i.i23.i.i.i.i.i.i.i.i, 24
  %i.eb = getelementptr i8, ptr %i.hm, i64 %.idx.i.i.i.i.i18.i.i.i.i.i.i.i25.i.i.i.i.i.i.i.i
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !30 ; 2 uses
  %i.ed = fmul double %i.ec, %i.ec
  %i.ee = fadd double %.02425.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i, %i.ed
  %i.ef = mul i64 %.01726.i.i.i.i.i.i.i23.i.i.i.i.i.i.i.i, 24
  %i.eg = getelementptr i8, ptr %i.hm, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.eg, i64 24
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !30 ; 2 uses
  %i.ej = fmul double %i.ei, %i.ei
  %i.ek = fadd double %i.ee, %i.ej
  %i.el = mul i64 %.01726.i.i.i.i.i.i.i23.i.i.i.i.i.i.i.i, 24
  %i.em = getelementptr i8, ptr %i.hm, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 48
  %i.eo = load double, ptr %i.en, align 8, !tbaa !30 ; 2 uses
  %i.ep = fmul double %i.eo, %i.eo
  %i.eq = fadd double %i.ek, %i.ep
  %i.er = mul i64 %.01726.i.i.i.i.i.i.i23.i.i.i.i.i.i.i.i, 24
  %i.es = getelementptr i8, ptr %i.hm, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 72
  %i.eu = load double, ptr %i.et, align 8, !tbaa !30 ; 2 uses
  %i.ev = fmul double %i.eu, %i.eu
  %i.ew = fadd double %i.eq, %i.ev                ; 3 uses
  %i.ex = add nuw nsw i64 %.01726.i.i.i.i.i.i.i23.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i, !llvm.loop !497

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.preheader
  %.01726.i.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.preheader ], [ %i.ex, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02425.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.ho, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.preheader ], [ %i.ew, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod268 = icmp ne i64 %xtraiter265, 0
  call void @llvm.assume(i1 %lcmp.mod268)
  br label %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.epil:      ; preds = %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.epil.preheader
  %.01726.i.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.fc, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.epil ], [ %.01726.i.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.02425.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.epil = phi double [ %i.fb, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.epil ], [ %.02425.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i18.i.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.epil = mul i64 %.01726.i.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.epil, 24
  %i.ey = getelementptr i8, ptr %i.hm, i64 %.idx.i.i.i.i.i18.i.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.epil
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !30 ; 2 uses
  %i.fa = fmul double %i.ez, %i.ez
  %i.fb = fadd double %.02425.i.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.epil, %i.fa ; 2 uses
  %i.fc = add nuw nsw i64 %.01726.i.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter265
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.epil, !llvm.loop !498

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.epil, %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i
  %.sroa.0.0 = phi <2 x double> [ %.025.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i ], [ zeroinitializer, %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i ], [ %.025.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.epil ], [ %.025.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.0.i.i.i.i.i20.i.i.i.i.i.i.i.i = phi double [ %i.ho, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i ], [ 0.000000e+00, %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ew, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.fb, %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.epil ]
  store <2 x double> %.sroa.0.0, ptr %11, align 16, !tbaa !82
  %i.fd = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.0.i.i.i.i.i20.i.i.i.i.i.i.i.i, i64 0
  store <2 x double> %i.fd, ptr %i.aq, align 16, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  store i8 0, ptr %i.t, align 16, !tbaa !334, !alias.scope !499
  store i8 0, ptr %i.u, align 1, !tbaa !358, !alias.scope !499
  %i.fe = load <2 x double>, ptr %7, align 16, !tbaa !82, !noalias !499
  store <2 x double> %i.fe, ptr %13, align 16, !tbaa !82, !alias.scope !499
  %i.ff = load <2 x double>, ptr %i.w, align 16, !tbaa !82, !noalias !499
  store <2 x double> %i.ff, ptr %i.v, align 16, !tbaa !82, !alias.scope !499
  %i.fg = load <2 x double>, ptr %i.y, align 16, !tbaa !82, !noalias !499
  store <2 x double> %i.fg, ptr %i.x, align 16, !tbaa !82, !alias.scope !499
  %i.fh = load <2 x double>, ptr %i.aa, align 16, !tbaa !82, !noalias !499
  store <2 x double> %i.fh, ptr %i.z, align 16, !tbaa !82, !alias.scope !499
  %i.fi = load <2 x double>, ptr %i.ac, align 16, !tbaa !82, !noalias !499
  store <2 x double> %i.fi, ptr %i.ab, align 16, !tbaa !82, !alias.scope !499
  %i.fj = load <2 x double>, ptr %i.ae, align 16, !tbaa !82, !noalias !499
  store <2 x double> %i.fj, ptr %i.ad, align 16, !tbaa !82, !alias.scope !499
  store <2 x double> splat (double 1.000000e+00), ptr %i.af, align 16, !tbaa !82, !alias.scope !499
  %i.fk = load <2 x double>, ptr %i.ah, align 16, !tbaa !82, !noalias !499
  store <2 x double> %i.fk, ptr %i.ag, align 16, !tbaa !82, !alias.scope !499
  invoke void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(344) %13)
          to label %bb.e unwind label %bb.j

.lr.ph.i.i.i.i.i.i.i.i100.split:                  ; preds = %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i
  %i.fl = icmp sgt i64 %.pre.pre.i, 4
  %i.fm = load <2 x double>, ptr %i.ea, align 1, !tbaa !82 ; 2 uses
  %i.fn = fmul <2 x double> %i.fm, %i.fm          ; 2 uses
  br i1 %i.fl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i101

.preheader.i.i.i.i.i.i.i.i.i.i.i101:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i100.split
  %.042.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.fn, %.lr.ph.i.i.i.i.i.i.i.i100.split ], [ %i.gm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i100.split ], [ %i.gn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.fo = icmp slt i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, %.pre.pre.i
  br i1 %i.fo, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i

.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.preheader:      ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i101
  %i.fp = sub i64 %.pre.pre.i, %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i
  %xtraiter263 = and i64 %i.fp, 3                 ; 2 uses
  %lcmp.mod264.not = icmp eq i64 %xtraiter263, 0
  br i1 %lcmp.mod264.not, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol.loopexit, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol

.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol:           ; preds = %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.preheader, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol
  %.148.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fu, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.preheader ] ; 2 uses
  %.14347.i.i.i.i.i.i.i.i.i.i.i.prol = phi <2 x double> [ %i.ft, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol ], [ %.042.lcssa.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol ], [ 0, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.preheader ]
  %.idx.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.prol = mul nsw i64 %.148.i.i.i.i.i.i.i.i.i.i.i.prol, 24
  %i.fq = getelementptr inbounds i8, ptr %i.ea, i64 %.idx.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.fr = load <2 x double>, ptr %i.fq, align 1, !tbaa !82 ; 2 uses
  %i.fs = fmul <2 x double> %i.fr, %i.fr
  %i.ft = fadd <2 x double> %.14347.i.i.i.i.i.i.i.i.i.i.i.prol, %i.fs ; 3 uses
  %i.fu = add nuw nsw i64 %.148.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter263
  br i1 %prol.iter.cmp.not, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol.loopexit, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol, !llvm.loop !502

.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol.loopexit:  ; preds = %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.preheader
  %.lcssa261.unr = phi <2 x double> [ poison, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.preheader ], [ %i.ft, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol ]
  %.148.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.preheader ], [ %i.fu, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol ]
  %.14347.i.i.i.i.i.i.i.i.i.i.i.unr = phi <2 x double> [ %.042.lcssa.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.preheader ], [ %i.ft, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol ]
  %i.fv = sub i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, %.pre.pre.i
  %i.fw = icmp ugt i64 %i.fv, -4
  br i1 %i.fw, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i100.split, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.045.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i100.split ] ; 2 uses
  %.04244.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.gm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fn, %.lr.ph.i.i.i.i.i.i.i.i100.split ]
  %.idx.i.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.045.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.fx = getelementptr i8, ptr %i.ea, i64 %.idx.i.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.fy = load <2 x double>, ptr %i.fx, align 1, !tbaa !82 ; 2 uses
  %i.fz = fmul <2 x double> %i.fy, %i.fy
  %i.ga = getelementptr i8, ptr %i.fx, i64 24
  %i.gb = load <2 x double>, ptr %i.ga, align 1, !tbaa !82 ; 2 uses
  %i.gc = fmul <2 x double> %i.gb, %i.gb
  %i.gd = fadd <2 x double> %i.fz, %i.gc
  %i.ge = getelementptr i8, ptr %i.fx, i64 48
  %i.gf = load <2 x double>, ptr %i.ge, align 1, !tbaa !82 ; 2 uses
  %i.gg = fmul <2 x double> %i.gf, %i.gf
  %i.gh = getelementptr i8, ptr %i.fx, i64 72
  %i.gi = load <2 x double>, ptr %i.gh, align 1, !tbaa !82 ; 2 uses
  %i.gj = fmul <2 x double> %i.gi, %i.gi
  %i.gk = fadd <2 x double> %i.gg, %i.gj
  %i.gl = fadd <2 x double> %i.gd, %i.gk
  %i.gm = fadd <2 x double> %.04244.i.i.i.i.i.i.i.i.i.i.i, %i.gl ; 2 uses
  %i.gn = add nuw nsw i64 %.045.i.i.i.i.i.i.i.i.i.i.i, 4 ; 3 uses
  %i.go = icmp slt i64 %i.gn, %i.dz
  br i1 %i.go, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i101, !llvm.loop !503

.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102:                ; preds = %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol.loopexit, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102
  %.148.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hl, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102 ], [ %.148.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol.loopexit ] ; 5 uses
  %.14347.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.hk, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102 ], [ %.14347.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol.loopexit ]
  %.idx.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %.148.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.gp = getelementptr inbounds i8, ptr %i.ea, i64 %.idx.i.i.i.i.i31.i.i.i.i.i.i.i.i.i.i.i
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !82 ; 2 uses
  %i.gr = fmul <2 x double> %i.gq, %i.gq
  %i.gs = fadd <2 x double> %.14347.i.i.i.i.i.i.i.i.i.i.i, %i.gr
  %i.gt = mul i64 %.148.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.gu = getelementptr i8, ptr %i.ea, i64 %i.gt
  %i.gv = getelementptr i8, ptr %i.gu, i64 24
  %i.gw = load <2 x double>, ptr %i.gv, align 1, !tbaa !82 ; 2 uses
  %i.gx = fmul <2 x double> %i.gw, %i.gw
  %i.gy = fadd <2 x double> %i.gs, %i.gx
  %i.gz = mul i64 %.148.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.ha = getelementptr i8, ptr %i.ea, i64 %i.gz
  %i.hb = getelementptr i8, ptr %i.ha, i64 48
  %i.hc = load <2 x double>, ptr %i.hb, align 1, !tbaa !82 ; 2 uses
  %i.hd = fmul <2 x double> %i.hc, %i.hc
  %i.he = fadd <2 x double> %i.gy, %i.hd
  %i.hf = mul i64 %.148.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.hg = getelementptr i8, ptr %i.ea, i64 %i.hf
  %i.hh = getelementptr i8, ptr %i.hg, i64 72
  %i.hi = load <2 x double>, ptr %i.hh, align 1, !tbaa !82 ; 2 uses
  %i.hj = fmul <2 x double> %i.hi, %i.hi
  %i.hk = fadd <2 x double> %i.he, %i.hj          ; 2 uses
  %i.hl = add nuw nsw i64 %.148.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.hl, %.pre.pre.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102, !llvm.loop !504

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol.loopexit, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102, %.preheader.i.i.i.i.i.i.i.i.i.i.i101
  %.025.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %.042.lcssa.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i101 ], [ %.lcssa261.unr, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102.prol.loopexit ], [ %i.hk, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.i102 ] ; 3 uses
  %i.hm = getelementptr i8, ptr %i.ea, i64 16     ; 6 uses
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !30 ; 2 uses
  %i.ho = fmul double %i.hn, %i.hn                ; 3 uses
  %i.hp = icmp sgt i64 %.pre.pre.i, 1
  br i1 %i.hp, label %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i
  %i.hq = add nsw i64 %.pre.pre.i, -2
  %xtraiter265 = and i64 %i.dy, 3                 ; 3 uses
  %i.hr = icmp ult i64 %i.hq, 3
  br i1 %i.hr, label %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.preheader.new: ; preds = %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.dy, -4
  br label %.lr.ph.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.i.i.i.i.i.i.i.i
  invoke void @_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE11_solve_implINS1_IdLi4ELi1ELi0ELi4ELi1EEES5_EEvRKT_RT0_(ptr noundef nonnull align 16 dereferenceable(344) %13, ptr noundef nonnull align 16 dereferenceable(32) %11, ptr noundef nonnull align 16 dereferenceable(32) %12)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.hs = load ptr, ptr %4, align 8, !tbaa !161, !noalias !505 ; 4 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv ; 8 uses
  %i.hu = load i64, ptr %i.ai, align 8, !tbaa !166 ; 2 uses
  %i.hv = load double, ptr %12, align 16, !tbaa !30
  store double %i.hv, ptr %i.ht, align 8, !tbaa !30
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.hu
  %i.hx = load double, ptr %i.aj, align 8, !tbaa !30
  store double %i.hx, ptr %i.hw, align 8, !tbaa !30
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.hu, 4
  %i.hy = getelementptr inbounds i8, ptr %i.ht, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hz = load double, ptr %i.ak, align 16, !tbaa !30
  store double %i.hz, ptr %i.hy, align 8, !tbaa !30
  %i.ia = load ptr, ptr %3, align 8, !tbaa !161, !noalias !508
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.ic = load i64, ptr %i.j, align 8, !tbaa !477 ; 2 uses
  %.not11.i.i.i.i.i.i = icmp ne i64 %i.ic, 0
  call void @llvm.assume(i1 %.not11.i.i.i.i.i.i)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 1, i64 noundef %i.ic)
          to label %.noexc.i.i unwind label %bb.h

.noexc.i.i:                                       ; preds = %bb.f
  %.pre12.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !477 ; 3 uses
  %.pre13.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !tbaa !144
  %.not8.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.pre13.i.i.i.i.i.i, %.pre12.i.i.i.i.i.i
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %thread-pre-split.i.i.i.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i.i.i.i:             ; preds = %.noexc.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 1, i64 noundef %.pre12.i.i.i.i.i.i)
          to label %.noexc3.i.i unwind label %bb.h

.noexc3.i.i:                                      ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !tbaa !144
  br label %bb.g

bb.g:                                             ; preds = %.noexc3.i.i, %.noexc.i.i
  %i.id = phi i64 [ %.pr.i.i.i.i.i.i.i.i.i.i, %.noexc3.i.i ], [ %.pre12.i.i.i.i.i.i, %.noexc.i.i ] ; 7 uses
  %i.ie = load ptr, ptr %5, align 8, !tbaa !125   ; 8 uses
  %i.if = icmp sgt i64 %i.id, 0
  br i1 %i.if, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i108, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i108:                  ; preds = %bb.g
  %i.ig = load ptr, ptr %8, align 8, !tbaa !479, !noalias !511 ; 5 uses
  %i.ih = load i64, ptr %i.ai, align 8, !tbaa !166 ; 3 uses
  %i.ii = getelementptr [8 x i8], ptr %i.ht, i64 %i.ih ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.ih, 4 ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ht, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.id, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i108
  %i.ik = shl i64 %i.id, 3
  %scevgep212 = getelementptr i8, ptr %i.ie, i64 %i.ik
  %i.il = getelementptr i8, ptr %i.hs, i64 %i.as
  %scevgep213 = getelementptr i8, ptr %i.il, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.im = shl i64 %i.ih, 3
  %i.in = getelementptr i8, ptr %i.hs, i64 %i.as
  %scevgep214 = getelementptr i8, ptr %i.in, i64 %i.im
  %scevgep215 = getelementptr i8, ptr %i.hs, i64 %i.as
  %i.io = mul i64 %i.id, 24
  %scevgep216 = getelementptr i8, ptr %i.ig, i64 %i.io
  %i.ip = insertelement <4 x ptr> poison, ptr %i.ie, i64 0
  %i.iq = shufflevector <4 x ptr> %i.ip, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ir = insertelement <4 x ptr> poison, ptr %scevgep213, i64 0
  %i.is = insertelement <4 x ptr> %i.ir, ptr %scevgep214, i64 1
  %i.it = insertelement <4 x ptr> %i.is, ptr %scevgep215, i64 2
  %i.iu = insertelement <4 x ptr> %i.it, ptr %scevgep216, i64 3
  %i.iv = icmp ult <4 x ptr> %i.iq, %i.iu
  %i.iw = insertelement <4 x ptr> poison, ptr %i.ij, i64 0
  %i.ix = insertelement <4 x ptr> %i.iw, ptr %i.ii, i64 1
  %i.iy = insertelement <4 x ptr> %i.ix, ptr %i.ht, i64 2
  %i.iz = insertelement <4 x ptr> %i.iy, ptr %i.ig, i64 3
  %i.ja = insertelement <4 x ptr> poison, ptr %scevgep212, i64 0
  %i.jb = shufflevector <4 x ptr> %i.ja, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.jc = icmp ult <4 x ptr> %i.iz, %i.jb
  %i.jd = and <4 x i1> %i.iv, %i.jc
  %i.je = bitcast <4 x i1> %i.jd to i4
  %.not = icmp eq i4 %i.je, 0
  br i1 %.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.id, 9223372036854775806     ; 3 uses
  %i.jf = load double, ptr %i.ht, align 8, !tbaa !30, !alias.scope !514
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.jf, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jg = load double, ptr %i.ii, align 8, !tbaa !30, !alias.scope !517
  %broadcast.splatinsert228 = insertelement <2 x double> poison, double %i.jg, i64 0
  %broadcast.splat229 = shufflevector <2 x double> %broadcast.splatinsert228, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jh = load double, ptr %i.ij, align 8, !tbaa !30, !alias.scope !519
  %broadcast.splatinsert230 = insertelement <2 x double> poison, double %i.jh, i64 0
  %broadcast.splat231 = shufflevector <2 x double> %broadcast.splatinsert230, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %index
  %i.jj = mul nuw nsw i64 %index, 24
  %i.jk = mul nuw i64 %index, 24
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.jj ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.jk ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.jo = load double, ptr %i.jl, align 8, !tbaa !30, !alias.scope !521
  %i.jp = load double, ptr %i.jn, align 8, !tbaa !30, !alias.scope !521
  %i.jq = insertelement <2 x double> poison, double %i.jo, i64 0
  %i.jr = insertelement <2 x double> %i.jq, double %i.jp, i64 1
  %i.js = fmul <2 x double> %broadcast.splat, %i.jr
  %i.jt = getelementptr i8, ptr %i.jl, i64 8
  %i.ju = getelementptr i8, ptr %i.jm, i64 32
  %i.jv = load double, ptr %i.jt, align 8, !tbaa !30, !alias.scope !521
  %i.jw = load double, ptr %i.ju, align 8, !tbaa !30, !alias.scope !521
  %i.jx = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %i.jw, i64 1
  %i.jz = fmul <2 x double> %broadcast.splat229, %i.jy
  %i.ka = getelementptr i8, ptr %i.jl, i64 16
  %i.kb = getelementptr i8, ptr %i.jm, i64 40
  %i.kc = load double, ptr %i.ka, align 8, !tbaa !30, !alias.scope !521
  %i.kd = load double, ptr %i.kb, align 8, !tbaa !30, !alias.scope !521
  %i.ke = insertelement <2 x double> poison, double %i.kc, i64 0
  %i.kf = insertelement <2 x double> %i.ke, double %i.kd, i64 1
  %i.kg = fmul <2 x double> %broadcast.splat231, %i.kf
  %i.kh = fadd <2 x double> %i.jz, %i.kg
  %i.ki = fadd <2 x double> %i.js, %i.kh
  store <2 x double> %i.ki, ptr %i.ji, align 8, !tbaa !30, !alias.scope !523, !noalias !525
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kj = icmp eq i64 %index.next, %n.vec
  br i1 %i.kj, label %middle.block, label %vector.body, !llvm.loop !526

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.id, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i108, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i109.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i108 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.05.i.i.i.i.i.i.i.i.i.i.i109 = phi i64 [ %i.kz, %scalar.ph ], [ %.05.i.i.i.i.i.i.i.i.i.i.i109.ph, %scalar.ph.preheader ] ; 3 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.05.i.i.i.i.i.i.i.i.i.i.i109
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i109, 24
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.km = load double, ptr %i.ht, align 8, !tbaa !30
  %i.kn = load double, ptr %i.kl, align 8, !tbaa !30
  %i.ko = fmul double %i.km, %i.kn
  %i.kp = load double, ptr %i.ii, align 8, !tbaa !30
  %i.kq = getelementptr i8, ptr %i.kl, i64 8
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !30
  %i.ks = fmul double %i.kp, %i.kr
  %i.kt = load double, ptr %i.ij, align 8, !tbaa !30
  %i.ku = getelementptr i8, ptr %i.kl, i64 16
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !30
  %i.kw = fmul double %i.kt, %i.kv
  %i.kx = fadd double %i.ks, %i.kw
  %i.ky = fadd double %i.ko, %i.kx
  store double %i.ky, ptr %i.kk, align 8, !tbaa !30
  %i.kz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i109, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i110 = icmp eq i64 %i.kz, %i.id
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i110, label %.loopexit, label %scalar.ph, !llvm.loop !527

bb.h:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.la = landingpad { ptr, i32 }
          cleanup
  %i.lb = load ptr, ptr %5, align 8, !tbaa !125
  call void @free(ptr noundef %i.lb) #20
  br label %.body

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.g
  %i.lc = load i64, ptr %i.am, align 8, !tbaa !166 ; 2 uses
  %i.ld = load double, ptr %i.ie, align 8, !tbaa !30
  store double %i.ld, ptr %i.ib, align 8, !tbaa !30
  %i.le = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.lc
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !30
  store double %i.lg, ptr %i.le, align 8, !tbaa !30
  %.idx.i.i.i.i.i.i.i.i = shl nsw i64 %i.lc, 4
  %i.lh = getelementptr inbounds i8, ptr %i.ib, i64 %.idx.i.i.i.i.i.i.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.lj = load double, ptr %i.li, align 8, !tbaa !30
  store double %i.lj, ptr %i.lh, align 8, !tbaa !30
  call void @free(ptr noundef %i.ie) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.lk = load double, ptr %i.an, align 8, !tbaa !30
  %i.ll = load ptr, ptr %3, align 8, !tbaa !161, !noalias !528
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv ; 3 uses
  %i.ln = load i64, ptr %i.am, align 8, !tbaa !166 ; 2 uses
  %i.lo = load double, ptr %i.lm, align 8, !tbaa !30 ; 2 uses
  %i.lp = fmul double %i.lo, %i.lo
  %i.lq = getelementptr [8 x i8], ptr %i.lm, i64 %i.ln
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !30 ; 2 uses
  %i.ls = fmul double %i.lr, %i.lr
  %.idx.i.i.i.i.i.i.i = shl i64 %i.ln, 4
  %i.lt = getelementptr i8, ptr %i.lm, i64 %.idx.i.i.i.i.i.i.i
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !30 ; 2 uses
  %i.lv = fmul double %i.lu, %i.lu
  %i.lw = fadd double %i.ls, %i.lv
  %i.lx = fadd double %i.lp, %i.lw
  %i.ly = fadd double %i.lk, %i.lx
  %i.lz = call double @sqrt(double noundef %i.ly) #20
  %i.ma = load ptr, ptr %2, align 8, !tbaa !98
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %indvars.iv
  store double %i.lz, ptr %i.mb, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.mc = load ptr, ptr %8, align 8, !tbaa !479
  call void @free(ptr noundef %i.mc) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.md = load i64, ptr %i.a, align 8, !tbaa !280
  %i.me = icmp sgt i64 %i.md, %indvars.iv.next
  br i1 %i.me, label %bb.b, label %._crit_edge, !llvm.loop !531

bb.i:                                             ; preds = %.loopexit190
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.m

bb.j:                                             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_16scalar_square_opIdEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELin1ELi0ELi3ELin1EEEEEEENS0_10member_sumIddEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.i.i.i.i.i.i.i.i
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn62 = phi { ptr, i32 } [ %i.mh, %bb.k ], [ %i.mg, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %.body

.body:                                            ; preds = %bb.h, %bb.l
  %.pn68.pn = phi { ptr, i32 } [ %.pn62, %bb.l ], [ %i.la, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.m

bb.m:                                             ; preds = %.body, %bb.i
  %.pn68.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn, %.body ], [ %i.mf, %bb.i ]
  %i.mi = load ptr, ptr %8, align 8, !tbaa !479
  call void @free(ptr noundef %i.mi) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl12circumradiusIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_NS2_IdLin1ELi4ELi0ELin1ELi4EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERNS1_15PlainObjectBaseIT1_EERNSG_IT2_EERNSG_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Eigen::internal::evaluator.929", align 8 ; 5 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.1218", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1223", align 8 ; 7 uses
  %8 = alloca %"class.Eigen::Product.5024", align 8 ; 7 uses
  %9 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %10 = alloca %"class.Eigen::Matrix", align 8    ; 10 uses
  %11 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %12 = alloca %"class.Eigen::Matrix", align 8    ; 16 uses
  %13 = alloca %"class.Eigen::Matrix.148", align 8 ; 14 uses
  %14 = alloca %"class.Eigen::Block.43", align 8  ; 11 uses
  %15 = alloca %"class.Eigen::Matrix.54", align 8 ; 10 uses
  %16 = alloca %"class.Eigen::Array", align 8     ; 10 uses
  %17 = alloca %"class.Eigen::Matrix.54", align 8 ; 8 uses
  %18 = alloca %"class.Eigen::ColPivHouseholderQR", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.c, i64 noundef 1)
  %i.d = load i64, ptr %i.b, align 8, !tbaa !9
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.d, i64 noundef 3)
  %i.e = load i64, ptr %i.b, align 8, !tbaa !9
  %i.f = load i64, ptr %i.a, align 8, !tbaa !19
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.e, i64 noundef %i.f)
  %i.g = load i64, ptr %i.b, align 8, !tbaa !9
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  %i.m = ptrtoint ptr %13 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %18, i64 104
  %i.af = getelementptr inbounds nuw i8, ptr %18, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.x, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.am = load i64, ptr %i.a, align 8, !tbaa !19  ; 4 uses
  %i.an = add nsw i64 %i.am, 1                    ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = sdiv i64 9223372036854775807, %i.an
  %.not = icmp slt i64 %i.am, %i.ap
  br i1 %.not, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  %i.aq = mul nsw i64 %i.an, %i.an                ; 2 uses
  %i.ar = icmp samesign ugt i64 %i.aq, 2305843009213693951
  br i1 %i.ar, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.d
  %i.as = shl nuw i64 %i.aq, 3
  %i.at = call noalias ptr @malloc(i64 noundef %i.as) #22 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.invoke, label %.sink.split.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d, %bb.c
  %i.av = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.av, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.av, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.at, ptr %12, align 8, !tbaa !20
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.thread

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.e ], [ %.pn71.pn.pn.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.invoke
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %12, align 8, !tbaa !20
  call void @free(ptr noundef %i.ax) #20
  br label %common.resume

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.thread: ; preds = %bb.b, %.sink.split.i
  store i64 %i.an, ptr %i.i, align 8, !tbaa !21
  store i64 %i.an, ptr %i.j, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.ay = load ptr, ptr %1, align 8, !tbaa !22, !noalias !532
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv ; 15 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false), !alias.scope !535
  %i.ba = load ptr, ptr %0, align 8, !tbaa !161, !noalias !535 ; 7 uses
  %i.bb = load i64, ptr %i.k, align 8, !tbaa !166, !noalias !535 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit217, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.thread
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef %i.am, i64 noundef 3)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN3igl12circumradiusIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_NS2_IdLin1ELi4ELi0ELin1ELi4EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERNS1_15PlainObjectBaseIT1_EERNSG_IT2_EERNSG_IT3_EE:bb.a
  %i.db = getelementptr [8 x i8], ptr %i.ct, i64 %i.cb
  %i.dc = load double, ptr %i.db, align 8, !tbaa !30, !noalias !605
  store double %i.dc, ptr %i.n, align 8, !tbaa !30, !alias.scope !605
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.cb, 4 ; 4 uses
  %i.dd = getelementptr i8, ptr %i.ce, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.de = load double, ptr %i.dd, align 8, !tbaa !30, !noalias !605
  store double %i.de, ptr %i.o, align 16, !tbaa !30, !alias.scope !605
  %i.df = getelementptr i8, ptr %i.cj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dg = load double, ptr %i.df, align 8, !tbaa !30, !noalias !605
  store double %i.dg, ptr %i.p, align 8, !tbaa !30, !alias.scope !605
  %i.dh = getelementptr i8, ptr %i.co, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.di = load double, ptr %i.dh, align 8, !tbaa !30, !noalias !605
  store double %i.di, ptr %i.q, align 16, !tbaa !30, !alias.scope !605
  %i.dj = getelementptr i8, ptr %i.ct, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !30, !noalias !605
  store double %i.dk, ptr %i.r, align 8, !tbaa !30, !alias.scope !605
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store double 2.000000e+00, ptr %i.s, align 8, !tbaa !52, !alias.scope !608
  store ptr %7, ptr %i.t, align 8
  store ptr %7, ptr %.sroa.4139.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr %6, ptr %9, align 8, !tbaa !611, !alias.scope !613
  store i64 4, ptr %i.u, align 8, !tbaa !46, !alias.scope !613
  store i64 4, ptr %i.v, align 8, !tbaa !46, !alias.scope !613
  store ptr %6, ptr %i.w, align 8, !tbaa !616, !alias.scope !613
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !alias.scope !613
  store i64 5, ptr %i.y, align 8, !tbaa !618, !alias.scope !613
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN5Eigen8internal15call_assignmentINS_5BlockINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLi4ELi4ELi0ELi4ELi4EEEEEKNS_7ProductINS3_IdLi4ELi3ELi0ELi4ELi3EEENS_9TransposeIKSH_EELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISS_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(41) %8, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  store <2 x double> splat (double 1.000000e+00), ptr %i.z, align 16, !tbaa !82
  store <2 x double> splat (double 1.000000e+00), ptr %i.bw, align 16, !tbaa !82
  store double 1.000000e+00, ptr %i.aa, align 16, !tbaa !30
  store double 1.000000e+00, ptr %i.br, align 8, !tbaa !30
  store double 1.000000e+00, ptr %i.bs, align 16, !tbaa !30
  store double 1.000000e+00, ptr %i.bt, align 8, !tbaa !30
  store double 0.000000e+00, ptr %i.ab, align 16, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.dl = load <2 x double>, ptr %7, align 16, !tbaa !82, !noalias !621 ; 2 uses
  %i.dm = fmul <2 x double> %i.dl, %i.dl
  %i.dn = load <2 x double>, ptr %i.k, align 16, !tbaa !82, !noalias !621 ; 2 uses
  %i.do = fmul <2 x double> %i.dn, %i.dn
  %i.dp = load <2 x double>, ptr %i.o, align 16, !tbaa !82, !noalias !621 ; 2 uses
  %i.dq = fmul <2 x double> %i.dp, %i.dp
  %i.dr = fadd <2 x double> %i.do, %i.dq
  %i.ds = fadd <2 x double> %i.dm, %i.dr          ; 2 uses
  store <2 x double> %i.ds, ptr %11, align 16, !tbaa !82, !alias.scope !621
  %i.dt = load <2 x double>, ptr %i.i, align 16, !tbaa !82, !noalias !621 ; 2 uses
  %i.du = fmul <2 x double> %i.dt, %i.dt
  %i.dv = load <2 x double>, ptr %i.m, align 16, !tbaa !82, !noalias !621 ; 2 uses
  %i.dw = fmul <2 x double> %i.dv, %i.dv
  %i.dx = load <2 x double>, ptr %i.q, align 16, !tbaa !82, !noalias !621 ; 2 uses
  %i.dy = fmul <2 x double> %i.dx, %i.dx
  %i.dz = fadd <2 x double> %i.dw, %i.dy
  %i.ea = fadd <2 x double> %i.du, %i.dz
  store <2 x double> %i.ea, ptr %i.ac, align 16, !tbaa !82, !alias.scope !621
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELi1ELb0EEEEENS5_INS_5ArrayIdLi4ELi1ELi0ELi4ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.thread, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELi1ELb0EEEEENS5_INS_5ArrayIdLi4ELi1ELi0ELi4ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.thread: ; preds = %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep156, i64 %i.bq, i1 false), !tbaa !82
  br label %_ZNK5Eigen9DenseBaseINS_5SolveINS_19ColPivHouseholderQRINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEEEENS3_IdLi5ELi1ELi0ELi5ELi1EEEEEE4evalEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i
  %i.eb = extractelement <2 x double> %i.ds, i64 0
  store double %i.eb, ptr %10, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep156, i64 %i.bq, i1 false), !tbaa !82
  %i.ec = load double, ptr %i.bv, align 8, !tbaa !30
  store double %i.ec, ptr %i.bu, align 8, !tbaa !30
  br label %_ZNK5Eigen9DenseBaseINS_5SolveINS_19ColPivHouseholderQRINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEEEENS3_IdLi5ELi1ELi0ELi5ELi1EEEEEE4evalEv.exit

_ZNK5Eigen9DenseBaseINS_5SolveINS_19ColPivHouseholderQRINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEEEENS3_IdLi5ELi1ELi0ELi5ELi1EEEEEE4evalEv.exit: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELi1ELb0EEEEENS5_INS_5ArrayIdLi4ELi1ELi0ELi4ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.thread, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  store double 1.000000e+00, ptr %i.ai, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  store i8 0, ptr %i.aj, align 8, !tbaa !627, !alias.scope !624
  store i8 0, ptr %i.ak, align 1, !tbaa !650, !alias.scope !624
  %i.ed = load <2 x double>, ptr %6, align 16, !tbaa !82, !noalias !624
  store <2 x double> %i.ed, ptr %13, align 16, !tbaa !82, !alias.scope !624
  %i.ee = load <2 x double>, ptr %i.am, align 16, !tbaa !82, !noalias !624
  store <2 x double> %i.ee, ptr %i.al, align 16, !tbaa !82, !alias.scope !624
  %i.ef = load <2 x double>, ptr %i.aa, align 16, !tbaa !82, !noalias !624
  store <2 x double> %i.ef, ptr %i.an, align 16, !tbaa !82, !alias.scope !624
  %i.eg = load <2 x double>, ptr %i.ap, align 16, !tbaa !82, !noalias !624
  store <2 x double> %i.eg, ptr %i.ao, align 16, !tbaa !82, !alias.scope !624
  %i.eh = load <2 x double>, ptr %i.ar, align 16, !tbaa !82, !noalias !624
  store <2 x double> %i.eh, ptr %i.aq, align 16, !tbaa !82, !alias.scope !624
  %i.ei = load <2 x double>, ptr %i.at, align 16, !tbaa !82, !noalias !624
  store <2 x double> %i.ei, ptr %i.as, align 16, !tbaa !82, !alias.scope !624
  %i.ej = load <2 x double>, ptr %i.av, align 16, !tbaa !82, !noalias !624
  store <2 x double> %i.ej, ptr %i.au, align 16, !tbaa !82, !alias.scope !624
  %i.ek = load <2 x double>, ptr %i.ax, align 16, !tbaa !82, !noalias !624
  store <2 x double> %i.ek, ptr %i.aw, align 16, !tbaa !82, !alias.scope !624
  %i.el = load <2 x double>, ptr %i.az, align 16, !tbaa !82, !noalias !624
  store <2 x double> %i.el, ptr %i.ay, align 16, !tbaa !82, !alias.scope !624
  %i.em = load <2 x double>, ptr %i.bb, align 16, !tbaa !82, !noalias !624
  store <2 x double> %i.em, ptr %i.ba, align 16, !tbaa !82, !alias.scope !624
  %i.en = load <2 x double>, ptr %i.z, align 16, !tbaa !82, !noalias !624
  store <2 x double> %i.en, ptr %i.bc, align 16, !tbaa !82, !alias.scope !624
  %i.eo = load <2 x double>, ptr %i.be, align 16, !tbaa !82, !noalias !624
  store <2 x double> %i.eo, ptr %i.bd, align 16, !tbaa !82, !alias.scope !624
  store double 0.000000e+00, ptr %i.bf, align 16, !tbaa !30, !alias.scope !624
  call void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(464) %13)
  call void @_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEEE11_solve_implINS1_IdLi5ELi1ELi0ELi5ELi1EEES5_EEvRKT_RT0_(ptr noundef nonnull align 8 dereferenceable(464) %13, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(40) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.ep = load ptr, ptr %4, align 8, !tbaa !241, !noalias !651
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv ; 5 uses
  %i.er = load i64, ptr %i.bg, align 8, !tbaa !246 ; 3 uses
  %i.es = load double, ptr %12, align 8, !tbaa !30
  store double %i.es, ptr %i.eq, align 8, !tbaa !30
  %i.et = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.er ; 2 uses
  %i.eu = load double, ptr %i.bh, align 8, !tbaa !30
  store double %i.eu, ptr %i.et, align 8, !tbaa !30
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.er, 4
  %i.ev = getelementptr inbounds i8, ptr %i.eq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ew = load double, ptr %i.bi, align 8, !tbaa !30
  store double %i.ew, ptr %i.ev, align 8, !tbaa !30
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i73 = mul nsw i64 %i.er, 24
  %i.ex = getelementptr inbounds i8, ptr %i.eq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i73
  %i.ey = load double, ptr %i.bj, align 8, !tbaa !30 ; 4 uses
  store double %i.ey, ptr %i.ex, align 8, !tbaa !30
  %i.ez = load ptr, ptr %3, align 8, !tbaa !161, !noalias !654
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv ; 4 uses
  %i.fb = load double, ptr %i.eq, align 8, !tbaa !30 ; 3 uses
  %i.fc = load double, ptr %7, align 16, !tbaa !30
  %i.fd = fmul double %i.fb, %i.fc
  %i.fe = load double, ptr %i.et, align 8, !tbaa !30 ; 3 uses
  %i.ff = load double, ptr %i.h, align 8, !tbaa !30
  %i.fg = fmul double %i.fe, %i.ff
  %i.fh = fadd double %i.fd, %i.fg
  %i.fi = load double, ptr %i.ev, align 8, !tbaa !30 ; 3 uses
  %i.fj = load double, ptr %i.i, align 16, !tbaa !30
  %i.fk = fmul double %i.fi, %i.fj
  %i.fl = load double, ptr %i.j, align 8, !tbaa !30
  %i.fm = fmul double %i.ey, %i.fl
  %i.fn = fadd double %i.fk, %i.fm
  %i.fo = fadd double %i.fh, %i.fn
  %i.fp = load double, ptr %i.k, align 16, !tbaa !30
  %i.fq = fmul double %i.fb, %i.fp
  %i.fr = load double, ptr %i.l, align 8, !tbaa !30
  %i.fs = fmul double %i.fe, %i.fr
  %i.ft = fadd double %i.fq, %i.fs
  %i.fu = load double, ptr %i.m, align 16, !tbaa !30
  %i.fv = fmul double %i.fi, %i.fu
  %i.fw = load double, ptr %i.n, align 8, !tbaa !30
  %i.fx = fmul double %i.ey, %i.fw
  %i.fy = fadd double %i.fv, %i.fx
  %i.fz = fadd double %i.ft, %i.fy
  %i.ga = load <4 x double>, ptr %i.o, align 16, !tbaa !30
  %i.gb = insertelement <4 x double> poison, double %i.fb, i64 0
  %i.gc = insertelement <4 x double> %i.gb, double %i.fe, i64 1
  %i.gd = insertelement <4 x double> %i.gc, double %i.fi, i64 2
  %i.ge = insertelement <4 x double> %i.gd, double %i.ey, i64 3
  %i.gf = fmul <4 x double> %i.ge, %i.ga          ; 2 uses
  %i.gg = shufflevector <4 x double> %i.gf, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.gh = shufflevector <4 x double> %i.gf, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.gi = fadd <2 x double> %i.gg, %i.gh          ; 2 uses
  %shift = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.gi, %shift ; 3 uses
  %i.gj = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.gk = load i64, ptr %i.bk, align 8, !tbaa !166 ; 2 uses
  store double %i.fo, ptr %i.fa, align 8, !tbaa !30
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.gk ; 2 uses
  store double %i.fz, ptr %i.gl, align 8, !tbaa !30
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i74 = shl nsw i64 %i.gk, 4
  %i.gm = getelementptr inbounds i8, ptr %i.fa, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i74
  store double %i.gj, ptr %i.gm, align 8, !tbaa !30
  %i.gn = load double, ptr %i.bl, align 8, !tbaa !30
  %i.go = load double, ptr %i.fa, align 8, !tbaa !30 ; 2 uses
  %i.gp = fmul double %i.go, %i.go
  %i.gq = load double, ptr %i.gl, align 8, !tbaa !30 ; 2 uses
  %i.gr = fmul double %i.gq, %i.gq
  %foldExtExtBinop183 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop
  %i.gs = extractelement <2 x double> %foldExtExtBinop183, i64 0
  %i.gt = fadd double %i.gs, %i.gr
  %i.gu = fadd double %i.gp, %i.gt
  %i.gv = fadd double %i.gn, %i.gu
  %i.gw = call double @sqrt(double noundef %i.gv) #20
  %i.gx = load ptr, ptr %2, align 8, !tbaa !98
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv
  store double %i.gw, ptr %i.gy, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gz = load i64, ptr %i.a, align 8, !tbaa !599 ; 2 uses
  %i.ha = icmp sgt i64 %i.gz, %indvars.iv.next
  br i1 %i.ha, label %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge, !llvm.loop !657
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl12circumradiusIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EERNSF_IT2_EERNSF_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %6 = alloca %"class.Eigen::Matrix.320", align 16 ; 15 uses
  %7 = alloca %"class.Eigen::Matrix.821", align 16 ; 15 uses
  %8 = alloca %"class.Eigen::CwiseBinaryOp.838", align 8 ; 6 uses
  %9 = alloca %"class.Eigen::Block.380", align 8  ; 9 uses
  %10 = alloca %"class.Eigen::Matrix.391", align 16 ; 6 uses
  %11 = alloca %"class.Eigen::Matrix.391", align 16 ; 7 uses
  %12 = alloca %"class.Eigen::ColPivHouseholderQR.451", align 16 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !280
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.b, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !tbaa !280
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.c, i64 noundef 3)
  %i.d = load i64, ptr %i.a, align 8, !tbaa !280
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.d, i64 noundef 3)
  %i.e = load i64, ptr %i.a, align 8, !tbaa !280  ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i.lr.ph, label %._crit_edge

.lr.ph54.i.i.i.i.i.i.i.i.i.i.i.lr.ph:             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 304
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 305
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i

._crit_edge:                                      ; preds = %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i, %bb.a
  ret void

.lr.ph54.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i.lr.ph, %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv = phi i64 [ 0, %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i.lr.ph ], [ %indvars.iv.next, %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.aw = phi i64 [ %i.e, %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.ex, %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ax = load ptr, ptr %1, align 8, !tbaa !282, !noalias !658
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.az = load ptr, ptr %0, align 8, !tbaa !161, !noalias !661 ; 3 uses
  %i.ba = load i64, ptr %i.g, align 8, !tbaa !166, !noalias !661 ; 4 uses
  %i.bb = load i32, ptr %i.ay, align 4, !tbaa !29, !noalias !661
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [8 x i8], ptr %i.az, i64 %i.bc ; 3 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !30, !noalias !661
  store double %i.be, ptr %7, align 16, !tbaa !30, !alias.scope !661
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.aw
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !29, !noalias !661
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr [8 x i8], ptr %i.az, i64 %i.bh ; 3 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !30, !noalias !661
  store double %i.bj, ptr %i.h, align 8, !tbaa !30, !alias.scope !661
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.aw, 3
  %i.bk = getelementptr inbounds i8, ptr %i.ay, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !29, !noalias !661
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr [8 x i8], ptr %i.az, i64 %i.bm ; 3 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !30, !noalias !661
  store double %i.bo, ptr %i.i, align 16, !tbaa !30, !alias.scope !661
  %i.bp = getelementptr [8 x i8], ptr %i.bd, i64 %i.ba
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !30, !noalias !661
  store double %i.bq, ptr %i.j, align 8, !tbaa !30, !alias.scope !661
  %i.br = getelementptr [8 x i8], ptr %i.bi, i64 %i.ba
  %i.bs = load double, ptr %i.br, align 8, !tbaa !30, !noalias !661
  store double %i.bs, ptr %i.k, align 16, !tbaa !30, !alias.scope !661
  %i.bt = getelementptr [8 x i8], ptr %i.bn, i64 %i.ba
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !30, !noalias !661
  store double %i.bu, ptr %i.l, align 8, !tbaa !30, !alias.scope !661
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.ba, 4 ; 3 uses
  %i.bv = getelementptr i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !30, !noalias !661
  store double %i.bw, ptr %i.m, align 16, !tbaa !30, !alias.scope !661
  %i.bx = getelementptr i8, ptr %i.bi, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.by = load double, ptr %i.bx, align 8, !tbaa !30, !noalias !661
  store double %i.by, ptr %i.n, align 8, !tbaa !30, !alias.scope !661
  %i.bz = getelementptr i8, ptr %i.bn, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !30, !noalias !661
  store double %i.ca, ptr %i.o, align 16, !tbaa !30, !alias.scope !661
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store double 2.000000e+00, ptr %i.p, align 8, !tbaa !52, !alias.scope !664
  store ptr %7, ptr %i.q, align 8
  store ptr %7, ptr %.sroa.4139.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr %6, ptr %9, align 8, !tbaa !307, !alias.scope !667
  store i64 3, ptr %i.r, align 8, !tbaa !46, !alias.scope !667
  store i64 3, ptr %i.s, align 8, !tbaa !46, !alias.scope !667
  store ptr %6, ptr %i.t, align 8, !tbaa !312, !alias.scope !667
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !alias.scope !667
  store i64 4, ptr %i.v, align 8, !tbaa !314, !alias.scope !667
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN5Eigen8internal15call_assignmentINS_5BlockINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLi3ELi3ELi0ELi3ELi3EEEEEKNS_7ProductISC_NS_9TransposeISD_EELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISQ_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(41) %8, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  store <2 x double> splat (double 1.000000e+00), ptr %i.w, align 16, !tbaa !82
  store double 1.000000e+00, ptr %i.x, align 8, !tbaa !30
  store double 1.000000e+00, ptr %i.at, align 8, !tbaa !30
  store double 1.000000e+00, ptr %i.au, align 8, !tbaa !30
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.an, align 16, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.cb = load <2 x double>, ptr %7, align 16, !tbaa !82, !noalias !670 ; 2 uses
  %i.cc = fmul <2 x double> %i.cb, %i.cb
  %i.cd = load <2 x double>, ptr %i.j, align 8, !tbaa !82, !noalias !670 ; 2 uses
  %i.ce = fmul <2 x double> %i.cd, %i.cd
  %i.cf = load <2 x double>, ptr %i.m, align 16, !tbaa !82, !noalias !670 ; 2 uses
  %i.cg = fmul <2 x double> %i.cf, %i.cf
  %i.ch = fadd <2 x double> %i.ce, %i.cg
  %i.ci = fadd <2 x double> %i.cc, %i.ch
  %i.cj = load double, ptr %i.i, align 16, !tbaa !30, !noalias !670 ; 2 uses
  %i.ck = fmul double %i.cj, %i.cj
  %i.cl = load double, ptr %i.l, align 8, !tbaa !30, !noalias !670 ; 2 uses
  %i.cm = fmul double %i.cl, %i.cl
  %i.cn = load double, ptr %i.o, align 16, !tbaa !30, !noalias !670 ; 2 uses
  %i.co = fmul double %i.cn, %i.cn
  %i.cp = fadd double %i.cm, %i.co
  %i.cq = fadd double %i.ck, %i.cp
  store <2 x double> %i.ci, ptr %10, align 16, !tbaa !82
  store double %i.cq, ptr %i.av, align 16, !tbaa !30
  store double 1.000000e+00, ptr %i.y, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  store i8 0, ptr %i.z, align 16, !tbaa !334, !alias.scope !673
  store i8 0, ptr %i.aa, align 1, !tbaa !358, !alias.scope !673
  %i.cr = load <2 x double>, ptr %6, align 16, !tbaa !82, !noalias !673
  store <2 x double> %i.cr, ptr %12, align 16, !tbaa !82, !alias.scope !673
  %i.cs = load <2 x double>, ptr %i.ac, align 16, !tbaa !82, !noalias !673
  store <2 x double> %i.cs, ptr %i.ab, align 16, !tbaa !82, !alias.scope !673
  %i.ct = load <2 x double>, ptr %i.ae, align 16, !tbaa !82, !noalias !673
  store <2 x double> %i.ct, ptr %i.ad, align 16, !tbaa !82, !alias.scope !673
  %i.cu = load <2 x double>, ptr %i.ag, align 16, !tbaa !82, !noalias !673
  store <2 x double> %i.cu, ptr %i.af, align 16, !tbaa !82, !alias.scope !673
  %i.cv = load <2 x double>, ptr %i.ai, align 16, !tbaa !82, !noalias !673
  store <2 x double> %i.cv, ptr %i.ah, align 16, !tbaa !82, !alias.scope !673
  %i.cw = load <2 x double>, ptr %i.ak, align 16, !tbaa !82, !noalias !673
  store <2 x double> %i.cw, ptr %i.aj, align 16, !tbaa !82, !alias.scope !673
  store <2 x double> splat (double 1.000000e+00), ptr %i.al, align 16, !tbaa !82, !alias.scope !673
  %i.cx = load <2 x double>, ptr %i.an, align 16, !tbaa !82, !noalias !673
  store <2 x double> %i.cx, ptr %i.am, align 16, !tbaa !82, !alias.scope !673
  call void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(344) %12)
  call void @_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE11_solve_implINS1_IdLi4ELi1ELi0ELi4ELi1EEES5_EEvRKT_RT0_(ptr noundef nonnull align 16 dereferenceable(344) %12, ptr noundef nonnull align 16 dereferenceable(32) %10, ptr noundef nonnull align 16 dereferenceable(32) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.cy = load ptr, ptr %4, align 8, !tbaa !161, !noalias !676
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv ; 4 uses
  %i.da = load i64, ptr %i.ao, align 8, !tbaa !166 ; 2 uses
  %i.db = load double, ptr %11, align 16, !tbaa !30
  store double %i.db, ptr %i.cz, align 8, !tbaa !30
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.da ; 2 uses
  %i.dd = load double, ptr %i.ap, align 8, !tbaa !30
  store double %i.dd, ptr %i.dc, align 8, !tbaa !30
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.da, 4
  %i.de = getelementptr inbounds i8, ptr %i.cz, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.df = load double, ptr %i.aq, align 16, !tbaa !30 ; 4 uses
  store double %i.df, ptr %i.de, align 8, !tbaa !30
  %i.dg = load ptr, ptr %3, align 8, !tbaa !161, !noalias !679
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv ; 4 uses
  %i.di = load double, ptr %i.cz, align 8, !tbaa !30 ; 3 uses
  %i.dj = load double, ptr %7, align 16, !tbaa !30
  %i.dk = fmul double %i.di, %i.dj
  %i.dl = load double, ptr %i.dc, align 8, !tbaa !30 ; 3 uses
  %i.dm = load double, ptr %i.h, align 8, !tbaa !30
  %i.dn = fmul double %i.dl, %i.dm
  %i.do = load double, ptr %i.i, align 16, !tbaa !30
  %i.dp = fmul double %i.df, %i.do
  %i.dq = fadd double %i.dn, %i.dp
  %i.dr = fadd double %i.dk, %i.dq
  %i.ds = load double, ptr %i.j, align 8, !tbaa !30
  %i.dt = fmul double %i.di, %i.ds
  %i.du = load double, ptr %i.k, align 16, !tbaa !30
  %i.dv = fmul double %i.dl, %i.du
  %i.dw = load double, ptr %i.l, align 8, !tbaa !30
  %i.dx = fmul double %i.df, %i.dw
  %i.dy = fadd double %i.dv, %i.dx
  %i.dz = fadd double %i.dt, %i.dy
  %i.ea = load double, ptr %i.m, align 16, !tbaa !30
  %i.eb = fmul double %i.di, %i.ea
  %i.ec = load double, ptr %i.n, align 8, !tbaa !30
  %i.ed = fmul double %i.dl, %i.ec
  %i.ee = load double, ptr %i.o, align 16, !tbaa !30
  %i.ef = fmul double %i.df, %i.ee
  %i.eg = fadd double %i.ed, %i.ef
  %i.eh = fadd double %i.eb, %i.eg                ; 3 uses
  %i.ei = load i64, ptr %i.ar, align 8, !tbaa !166 ; 2 uses
  store double %i.dr, ptr %i.dh, align 8, !tbaa !30
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ei ; 2 uses
  store double %i.dz, ptr %i.ej, align 8, !tbaa !30
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i74 = shl nsw i64 %i.ei, 4
  %i.ek = getelementptr inbounds i8, ptr %i.dh, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i74
  store double %i.eh, ptr %i.ek, align 8, !tbaa !30
  %i.el = load double, ptr %i.as, align 8, !tbaa !30
  %i.em = load double, ptr %i.dh, align 8, !tbaa !30 ; 2 uses
  %i.en = fmul double %i.em, %i.em
  %i.eo = load double, ptr %i.ej, align 8, !tbaa !30 ; 2 uses
  %i.ep = fmul double %i.eo, %i.eo
  %i.eq = fmul double %i.eh, %i.eh
  %i.er = fadd double %i.eq, %i.ep
  %i.es = fadd double %i.en, %i.er
  %i.et = fadd double %i.el, %i.es
  %i.eu = call double @sqrt(double noundef %i.et) #20
  %i.ev = load ptr, ptr %2, align 8, !tbaa !98
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv
  store double %i.eu, ptr %i.ew, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ex = load i64, ptr %i.a, align 8, !tbaa !280 ; 2 uses
  %i.ey = icmp sgt i64 %i.ex, %indvars.iv.next
  br i1 %i.ey, label %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge, !llvm.loop !682
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl12circumradiusIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.148", align 8 ; 10 uses
  %4 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl12edge_lengthsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %3, align 8, !tbaa !161, !noalias !683 ; 8 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !166, !noalias !686 ; 3 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.d ; 5 uses
  %.idx = shl i64 %i.d, 4                         ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %.idx ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.h, i64 noundef %i.h, i64 noundef 1)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  %i.i = load ptr, ptr %4, align 8, !tbaa !20     ; 6 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = load i64, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.m, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.o, 1
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.k, i64 noundef %i.k, i64 noundef 1)
          to label %.noexc16 unwind label %bb.g

.noexc16:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !21
  %.pre27.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !14
  %i.p = mul nsw i64 %.pre27.i.i.i.i.i.i.i, %.pre.i.i.i.i.i.i.i
  br label %bb.d

bb.d:                                             ; preds = %.noexc16, %.noexc
  %i.q = phi i64 [ %i.p, %.noexc16 ], [ %i.k, %.noexc ] ; 8 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !20     ; 6 uses
  %i.s = ptrtoaddr ptr %i.r to i64                ; 3 uses
  %i.t = sdiv i64 %i.q, 2
  %i.u = shl nsw i64 %i.t, 1                      ; 7 uses
  %i.v = icmp sgt i64 %i.q, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %i.w = icmp slt i64 %i.u, %i.q
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_ISA_KNS_12ArrayWrapperINS_5BlockINS1_IdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEESG_EESG_EEKNS5_ISA_KNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELin1ELi0ELin1ELin1EEEEEKNSB_IS2_EEEEEEEERS2_RKNS_9EigenBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.x = sub i64 %i.q, %i.u                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader116, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.y = sub i64 %i.s, %i.b                       ; 2 uses
  %i.z = sub i64 %.idx, %i.y
  %diff.check = icmp ugt i64 %i.z, -16
  %i.aa = shl i64 %i.d, 3
  %i.ab = sub i64 %i.aa, %i.y
  %diff.check108 = icmp ugt i64 %i.ab, -16
  %conflict.rdx = or i1 %diff.check, %diff.check108
  %i.ac = sub i64 %i.b, %i.s
  %diff.check109 = icmp ugt i64 %i.ac, -16
  %conflict.rdx110 = or i1 %conflict.rdx, %diff.check109
  %i.ad = sub i64 %i.j, %i.s
  %diff.check111 = icmp ugt i64 %i.ad, -16
  %conflict.rdx112 = or i1 %conflict.rdx110, %diff.check111
  br i1 %conflict.rdx112, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader116, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ae = and i64 %i.q, 1                         ; 2 uses
  %n.vec = sub i64 %i.x, %i.ae                    ; 2 uses
  %i.af = add i64 %i.u, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = add i64 %i.u, %index                    ; 5 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ag
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ag
  %wide.load = load <2 x double>, ptr %i.ai, align 8, !tbaa !30
  %wide.load113 = load <2 x double>, ptr %i.aj, align 8, !tbaa !30
  %i.ak = fmul <2 x double> %wide.load, %wide.load113
  %i.al = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ag
  %wide.load114 = load <2 x double>, ptr %i.al, align 8, !tbaa !30
  %i.am = fmul <2 x double> %i.ak, %wide.load114
  %i.an = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ag
  %wide.load115 = load <2 x double>, ptr %i.an, align 8, !tbaa !30
  %i.ao = fmul <2 x double> %wide.load115, splat (double 2.000000e+00)
  %i.ap = fdiv <2 x double> %i.am, %i.ao
  store <2 x double> %i.ap, ptr %i.ah, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !689

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, 0
  br i1 %cmp.n, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_ISA_KNS_12ArrayWrapperINS_5BlockINS1_IdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEESG_EESG_EEKNS5_ISA_KNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELin1ELi0ELin1ELin1EEEEEKNSB_IS2_EEEEEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader116

.lr.ph.i.i.i.i.i.i.i.i.i.preheader116:            ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ] ; 9 uses
  %i.ar = sub i64 %i.q, %.05.i.i.i.i.i.i.i.i.i.ph
  %.neg = add i64 %.05.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.ar, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader116
  %i.as = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i.i.ph
  %i.at = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.i.i.i.i.ph
  %i.au = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.05.i.i.i.i.i.i.i.i.i.ph
  %i.av = load double, ptr %i.at, align 8, !tbaa !30
  %i.aw = load double, ptr %i.au, align 8, !tbaa !30
  %i.ax = fmul double %i.av, %i.aw
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.ph
  %i.az = load double, ptr %i.ay, align 8, !tbaa !30
  %i.ba = fmul double %i.ax, %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.05.i.i.i.i.i.i.i.i.i.ph
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !30
  %i.bd = fmul double %i.bc, 2.000000e+00
  %i.be = fdiv double %i.ba, %i.bd
  store double %i.be, ptr %i.as, align 8, !tbaa !30
  %i.bf = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader116
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader116 ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.bg = icmp eq i64 %i.q, %.neg
  br i1 %i.bg, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS5_ISA_KNS_12ArrayWrapperINS_5BlockINS1_IdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEESG_EESG_EEKNS5_ISA_KNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS_5ArrayIdLin1ELin1ELi0ELin1ELin1EEEEEKNSB_IS2_EEEEEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !30
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !30
  %i.bm = fmul double %i.bk, %i.bl
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !30
  %i.bp = fmul double %i.bm, %i.bo
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.br = load double, ptr %i.bq, align 8, !tbaa !30
  %i.bs = fmul double %i.br, 2.000000e+00
  %i.bt = fdiv double %i.bp, %i.bs
  store double %i.bt, ptr %i.bh, align 8, !tbaa !30
  %i.bu = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 5 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bu
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bu
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bu
  %i.by = load double, ptr %i.bw, align 8, !tbaa !30
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !30
  %i.ca = fmul double %i.by, %i.bz
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bu
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !30
  %i.cd = fmul double %i.ca, %i.cc
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bu
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !30
  %i.cg = fmul double %i.cf, 2.000000e+00
  %i.ch = fdiv double %i.cd, %i.cg
end_hunk_2
