Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/comb_frame_field?download=true
inline.NumInlined: 1184
inline.NumDeleted: 657
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN3igl16comb_frame_fieldIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EESH_SH_SH_RNS1_15PlainObjectBaseISE_EESK_:bb.a
bb.g:                                             ; preds = %bb.f, %bb.d
  %.pn80.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hp, %bb.f ], [ %i.aa, %bb.d ]
  %i.hq = load ptr, ptr %10, align 8, !tbaa !14
  call void @free(ptr noundef %i.hq) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.hr = load ptr, ptr %9, align 8, !tbaa !14
  call void @free(ptr noundef %i.hr) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.hs = load ptr, ptr %8, align 8, !tbaa !14
  call void @free(ptr noundef %i.hs) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  resume { ptr, i32 } %.pn80.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3igl11local_basisIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EERNSE_IT2_EERNSE_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
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
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = mul nsw i64 %i.h, 3
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.j) #14
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.n = shl nuw i64 %i.f, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #18 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !14
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl16comb_frame_fieldIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EESH_SH_SH_RNS1_15PlainObjectBaseISE_EESK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.Eigen::Matrix.48", align 8  ; 11 uses
  %9 = alloca %"class.Eigen::Matrix.48", align 8  ; 9 uses
  %10 = alloca %"class.Eigen::Matrix.48", align 8 ; 7 uses
  %11 = alloca %"class.Eigen::Matrix.4", align 16 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl11local_basisIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EERNSE_IT2_EERNSE_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = icmp sgt i64 %i.b, 3074457345618258602
  br i1 %i.c, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.b
  %i.d = mul nsw i64 %i.b, 3
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 3)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.c

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 3 uses
  %i.g = icmp sgt i64 %i.f, 3074457345618258602
  br i1 %i.g, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i91

.invoke:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.b
  %i.h = call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !19
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i91: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.i = mul nsw i64 %i.f, 3
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.i, i64 noundef %i.f, i64 noundef 3)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit94.preheader unwind label %bb.c

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit94.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i91
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit94._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit94.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 88
  br label %bb.d

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit94._crit_edge: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit94.preheader
  %i.ah = load ptr, ptr %10, align 8, !tbaa !22
  call void @free(ptr noundef %i.ah) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.ai = load ptr, ptr %9, align 8, !tbaa !22
  call void @free(ptr noundef %i.ai) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.aj = load ptr, ptr %8, align 8, !tbaa !22
  call void @free(ptr noundef %i.aj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret void

bb.c:                                             ; preds = %.invoke, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i91, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.al = phi i64 [ %i.k, %.lr.ph ], [ %i.rw, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 8 uses
  %i.am = phi i64 [ 0, %.lr.ph ], [ %i.rv, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 9 uses
  %.064331 = phi i32 [ 0, %.lr.ph ], [ %i.ru, %_ZNSt6vectorIdSaIdEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.an = load ptr, ptr %2, align 8, !tbaa !22, !noalias !79
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am ; 8 uses
  %i.ap = load i64, ptr %i.m, align 8, !tbaa !23, !noalias !79 ; 12 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.thread

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader:     ; preds = %bb.d
  %xtraiter = and i64 %i.ap, 3                    ; 3 uses
  %i.ar = icmp ult i64 %i.ap, 4
  br i1 %i.ar, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ap, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.bl, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i, 5
  %i.as = getelementptr i8, ptr %11, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.at = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i, %i.al
  %i.au = getelementptr [8 x i8], ptr %i.ao, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !16, !noalias !80
  store double %i.av, ptr %i.as, align 16, !tbaa !16, !noalias !80
  %i.aw = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = shl i64 %i.aw, 5
  %i.ax = getelementptr i8, ptr %11, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.ay = mul nsw i64 %i.aw, %i.al
  %i.az = getelementptr [8 x i8], ptr %i.ao, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !16, !noalias !80
  store double %i.ba, ptr %i.ax, align 16, !tbaa !16, !noalias !80
  %i.bb = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = shl i64 %i.bb, 5
  %i.bc = getelementptr i8, ptr %11, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.bd = mul nsw i64 %i.bb, %i.al
  %i.be = getelementptr [8 x i8], ptr %i.ao, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !16, !noalias !80
  store double %i.bf, ptr %i.bc, align 16, !tbaa !16, !noalias !80
  %i.bg = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = shl i64 %i.bg, 5
  %i.bh = getelementptr i8, ptr %11, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.bi = mul nsw i64 %i.bg, %i.al
  %i.bj = getelementptr [8 x i8], ptr %i.ao, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !16, !noalias !80
  store double %i.bk, ptr %i.bh, align 16, !tbaa !16, !noalias !80
  %i.bl = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !53

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bl, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod369 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod369)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.epil:          ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.bq, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.0810.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = shl i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.epil, 5
  %i.bm = getelementptr i8, ptr %11, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.bn = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.al
  %i.bo = getelementptr [8 x i8], ptr %i.ao, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !16, !noalias !80
  store double %i.bp, ptr %i.bm, align 16, !tbaa !16, !noalias !80
  %i.bq = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !54

._crit_edge.i:                                    ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.epil, %._crit_edge.i.unr-lcssa
  %i.br = icmp eq i64 %i.ap, 3                    ; 3 uses
  %spec.select = zext i1 %i.br to i64             ; 2 uses
  %spec.select320 = select i1 %i.br, i64 0, i64 %i.ap ; 3 uses
  %spec.select.sroa.sel.idx.sroa.sel.idx = select i1 %i.br, i64 8, i64 0
  %spec.select.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %spec.select.sroa.sel.idx.sroa.sel.idx
  %.idx.i.i.i.i.i = shl nsw i64 %spec.select320, 5
  %i.bs = getelementptr inbounds nuw i8, ptr %spec.select.sroa.sel.idx.sroa.sel, i64 %.idx.i.i.i.i.i ; 3 uses
  %xtraiter370 = and i64 %i.ap, 1
  %i.bt = icmp eq i64 %i.ap, 1
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %._crit_edge.i.new

._crit_edge.i.new:                                ; preds = %._crit_edge.i
  %unroll_iter374 = and i64 %i.ap, 9223372036854775806
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.new
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.new ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %niter375 = phi i64 [ 0, %._crit_edge.i.new ], [ %niter375.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 5
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, %i.al
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !16
  %i.by = fneg double %i.bx
  store double %i.by, ptr %i.bu, align 8, !tbaa !16
  %i.bz = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = shl nuw nsw i64 %i.bz, 5
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.cb = mul nsw i64 %i.bz, %i.al
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.cb
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !16
  %i.ce = fneg double %i.cd
  store double %i.ce, ptr %i.ca, align 8, !tbaa !16
  %i.cf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter375.next.1 = add i64 %niter375, 2         ; 2 uses
  %niter375.ncmp.1 = icmp eq i64 %niter375.next.1, %unroll_iter374
  br i1 %niter375.ncmp.1, label %._crit_edge.i.thread.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !55

._crit_edge.i.thread.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod372.not = icmp eq i64 %xtraiter370, 0
  br i1 %lcmp.mod372.not, label %._crit_edge.i.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %._crit_edge.i.thread.loopexit.unr-lcssa, %._crit_edge.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %._crit_edge.i ], [ %i.cf, %._crit_edge.i.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod373 = trunc i64 %i.ap to i1
  call void @llvm.assume(i1 %lcmp.mod373)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = shl nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil.init, 5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.ch = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil.init, %i.al
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !16
  %i.ck = fneg double %i.cj
  store double %i.ck, ptr %i.cg, align 8, !tbaa !16
  br label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, %._crit_edge.i.thread.loopexit.unr-lcssa, %bb.d
  %i.cl = phi i64 [ %i.ap, %bb.d ], [ %spec.select320, %._crit_edge.i.thread.loopexit.unr-lcssa ], [ %spec.select320, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %.sroa.7290.0302 = phi i64 [ 0, %bb.d ], [ %spec.select, %._crit_edge.i.thread.loopexit.unr-lcssa ], [ %spec.select, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.cm = add nsw i64 %i.cl, %i.ap                ; 2 uses
  %i.cn = load ptr, ptr %3, align 8, !tbaa !22, !noalias !82
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.am ; 8 uses
  %i.cp = load i64, ptr %i.n, align 8, !tbaa !23, !noalias !82 ; 11 uses
  %i.cq = icmp eq i64 %i.cm, 3
  br i1 %i.cq, label %bb.e, label %._crit_edge.i95

bb.e:                                             ; preds = %._crit_edge.i.thread
  %.not.i101 = icmp eq i64 %i.cp, 0
  br i1 %.not.i101, label %_ZN5Eigen16CommaInitializerINS_6MatrixIdLi4ELi3ELi0ELi4ELi3EEEEcmINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit113, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cr = add nuw nsw i64 %.sroa.7290.0302, 1
  br label %._crit_edge.i95

._crit_edge.i95:                                  ; preds = %bb.f, %._crit_edge.i.thread
  %.sroa.7290.1 = phi i64 [ %.sroa.7290.0302, %._crit_edge.i.thread ], [ %i.cr, %bb.f ] ; 3 uses
  %i.cs = phi i64 [ %i.cm, %._crit_edge.i.thread ], [ 0, %bb.f ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %.sroa.7290.1
  %.idx.i.i.i.i.i96 = shl nsw i64 %i.cs, 5
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %.idx.i.i.i.i.i96 ; 5 uses
  %i.cv = load i64, ptr %i.o, align 8, !tbaa !21  ; 8 uses
  %i.cw = icmp sgt i64 %i.cp, 0                   ; 2 uses
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.preheader, label %.loopexit328

.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.preheader:         ; preds = %._crit_edge.i95
  %xtraiter376 = and i64 %i.cp, 3                 ; 3 uses
  %i.cx = icmp ult i64 %i.cp, 4
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.preheader.new:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.preheader
  %unroll_iter380 = and i64 %i.cp, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97

.lr.ph.i.i.i.i.i.i.i.i.i.i.i97:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.preheader.new
  %.05.i.i.i.i.i.i.i.i.i.i.i98 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.preheader.new ], [ %i.dr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97 ] ; 6 uses
  %niter381 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.preheader.new ], [ %niter381.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97 ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i99 = shl nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i98, 5
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i99
  %i.cz = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i98, %i.cv
  %i.da = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !16
  store double %i.db, ptr %i.cy, align 8, !tbaa !16
  %i.dc = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i98, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i99.1 = shl nuw nsw i64 %i.dc, 5
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i99.1
  %i.de = mul nsw i64 %i.dc, %i.cv
  %i.df = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !16
  store double %i.dg, ptr %i.dd, align 8, !tbaa !16
  %i.dh = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i98, 2 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i99.2 = shl nuw nsw i64 %i.dh, 5
  %i.di = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i99.2
  %i.dj = mul nsw i64 %i.dh, %i.cv
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !16
  store double %i.dl, ptr %i.di, align 8, !tbaa !16
  %i.dm = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i98, 3 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i99.3 = shl nuw nsw i64 %i.dm, 5
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i99.3
  %i.do = mul nsw i64 %i.dm, %i.cv
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !16
  store double %i.dq, ptr %i.dn, align 8, !tbaa !16
  %i.dr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i98, 4 ; 2 uses
  %niter381.next.3 = add nuw nsw i64 %niter381, 4 ; 2 uses
  %niter381.ncmp.3 = icmp eq i64 %niter381.next.3, %unroll_iter380
  br i1 %niter381.ncmp.3, label %.loopexit328.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97, !llvm.loop !58

.loopexit328.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97
  %lcmp.mod378.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod378.not, label %.loopexit328, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.epil.preheader:    ; preds = %.loopexit328.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i98.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.preheader ], [ %i.dr, %.loopexit328.loopexit.unr-lcssa ]
  %lcmp.mod379 = icmp ne i64 %xtraiter376, 0
  call void @llvm.assume(i1 %lcmp.mod379)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.epil:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.epil.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i98.epil = phi i64 [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.epil ], [ %.05.i.i.i.i.i.i.i.i.i.i.i98.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.epil.preheader ] ; 3 uses
  %epil.iter377 = phi i64 [ %epil.iter377.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i99.epil = shl nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i98.epil, 5
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i99.epil
  %i.dt = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i98.epil, %i.cv
  %i.du = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !16
  store double %i.dv, ptr %i.ds, align 8, !tbaa !16
  %i.dw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i98.epil, 1
  %epil.iter377.next = add i64 %epil.iter377, 1   ; 2 uses
  %epil.iter377.cmp.not = icmp eq i64 %epil.iter377.next, %xtraiter376
  br i1 %epil.iter377.cmp.not, label %.loopexit328, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.epil, !llvm.loop !59

.loopexit328:                                     ; preds = %.loopexit328.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i97.epil, %._crit_edge.i95
  %i.dx = add nsw i64 %i.cs, %i.cp                ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 3
  br i1 %i.dy, label %bb.g, label %._crit_edge.i104

bb.g:                                             ; preds = %.loopexit328
  %.not.i110 = icmp eq i64 %i.cp, 0
  br i1 %.not.i110, label %_ZN5Eigen16CommaInitializerINS_6MatrixIdLi4ELi3ELi0ELi4ELi3EEEEcmINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit113, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dz = add nuw nsw i64 %.sroa.7290.1, 1
  br label %._crit_edge.i104

._crit_edge.i104:                                 ; preds = %bb.h, %.loopexit328
  %.sroa.7290.2 = phi i64 [ %.sroa.7290.1, %.loopexit328 ], [ %i.dz, %bb.h ]
  %i.ea = phi i64 [ %i.dx, %.loopexit328 ], [ 0, %bb.h ]
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %.sroa.7290.2
  %.idx.i.i.i.i.i105 = shl nsw i64 %i.ea, 5
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %.idx.i.i.i.i.i105 ; 3 uses
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i106.preheader, label %_ZN5Eigen16CommaInitializerINS_6MatrixIdLi4ELi3ELi0ELi4ELi3EEEEcmINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit113

.lr.ph.i.i.i.i.i.i.i.i.i.i.i106.preheader:        ; preds = %._crit_edge.i104
  %xtraiter382 = and i64 %i.cp, 1
  %i.ed = icmp eq i64 %i.cp, 1
  br i1 %i.ed, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i106.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i106.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i106.preheader.new:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i106.preheader
  %unroll_iter386 = and i64 %i.cp, 9223372036854775806
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i106

.lr.ph.i.i.i.i.i.i.i.i.i.i.i106:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i106, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i106.preheader.new
  %.05.i.i.i.i.i.i.i.i.i.i.i107 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i106.preheader.new ], [ %i.ep, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i106 ] ; 4 uses
  %niter387 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i106.preheader.new ], [ %niter387.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i106 ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i108 = shl nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i107, 5
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i108
  %i.ef = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i107, %i.cv
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !16
  %i.ei = fneg double %i.eh
  store double %i.ei, ptr %i.ee, align 8, !tbaa !16
  %i.ej = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i107, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i108.1 = shl nuw nsw i64 %i.ej, 5
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i108.1
  %i.el = mul nsw i64 %i.ej, %i.cv
  %i.em = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !16
  %i.eo = fneg double %i.en
  store double %i.eo, ptr %i.ek, align 8, !tbaa !16
  %i.ep = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i107, 2 ; 2 uses
  %niter387.next.1 = add nuw nsw i64 %niter387, 2 ; 2 uses
  %niter387.ncmp.1 = icmp eq i64 %niter387.next.1, %unroll_iter386
  br i1 %niter387.ncmp.1, label %_ZN5Eigen16CommaInitializerINS_6MatrixIdLi4ELi3ELi0ELi4ELi3EEEEcmINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit113.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i106, !llvm.loop !55

_ZN5Eigen16CommaInitializerINS_6MatrixIdLi4ELi3ELi0ELi4ELi3EEEEcmINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit113.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i106
  %lcmp.mod384.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod384.not, label %_ZN5Eigen16CommaInitializerINS_6MatrixIdLi4ELi3ELi0ELi4ELi3EEEEcmINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit113, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i106.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i106.epil.preheader:   ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIdLi4ELi3ELi0ELi4ELi3EEEEcmINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit113.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i106.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i107.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i106.preheader ], [ %i.ep, %_ZN5Eigen16CommaInitializerINS_6MatrixIdLi4ELi3ELi0ELi4ELi3EEEEcmINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit113.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod385 = trunc i64 %i.cp to i1
  call void @llvm.assume(i1 %lcmp.mod385)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i108.epil = shl nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i107.epil.init, 5
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i108.epil
  %i.er = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i107.epil.init, %i.cv
  %i.es = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !16
  %i.eu = fneg double %i.et
  store double %i.eu, ptr %i.eq, align 8, !tbaa !16
  br label %_ZN5Eigen16CommaInitializerINS_6MatrixIdLi4ELi3ELi0ELi4ELi3EEEEcmINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit113

_ZN5Eigen16CommaInitializerINS_6MatrixIdLi4ELi3ELi0ELi4ELi3EEEEcmINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit113: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i106.epil.preheader, %_ZN5Eigen16CommaInitializerINS_6MatrixIdLi4ELi3ELi0ELi4ELi3EEEEcmINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit113.loopexit.unr-lcssa, %bb.e, %bb.g, %._crit_edge.i104
  %i.ev = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15
          to label %bb.i unwind label %bb.l       ; 9 uses

bb.i:                                             ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIdLi4ELi3ELi0ELi4ELi3EEEEcmINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit113
  %.ptr322.ptr = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ev, i8 0, i64 32, i1 false)
  %i.ew = load ptr, ptr %9, align 8, !tbaa !22, !noalias !83
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.am ; 10 uses
  %i.ey = load ptr, ptr %4, align 8, !tbaa !22, !noalias !84
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.am ; 7 uses
  %i.fa = load i64, ptr %i.p, align 8, !tbaa !23, !noalias !84 ; 4 uses
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fc = load i64, ptr %i.q, align 8, !tbaa !21  ; 6 uses
  %i.fd = load i64, ptr %i.a, align 8, !tbaa !21  ; 6 uses
  %i.fe = load double, ptr %i.ez, align 8, !tbaa !16 ; 3 uses
  %i.ff = load double, ptr %i.ex, align 8, !tbaa !16 ; 4 uses
  %i.fg = fmul double %i.fe, %i.ff                ; 3 uses
  %i.fh = icmp sgt i64 %i.fa, 1
  br i1 %i.fh, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit327

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.j
  %i.fi = add nsw i64 %i.fa, -1                   ; 6 uses
  %i.fj = add nsw i64 %i.fa, -2                   ; 2 uses
  %xtraiter388 = and i64 %i.fi, 1
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter393 = and i64 %i.fi, -2
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %.01724.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.gc, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %.02223.i.i.i.i.i = phi double [ %i.fg, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.gb, %.lr.ph.i.i.i.i.i ]
  %niter394 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter394.next.1, %.lr.ph.i.i.i.i.i ]
  %i.fl = mul nsw i64 %.01724.i.i.i.i.i, %i.fc
  %i.fm = getelementptr [8 x i8], ptr %i.ex, i64 %i.fl
  %i.fn = mul nsw i64 %.01724.i.i.i.i.i, %i.fd
  %i.fo = getelementptr [8 x i8], ptr %i.ez, i64 %i.fn
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !16
  %i.fq = load double, ptr %i.fm, align 8, !tbaa !16
  %i.fr = fmul double %i.fp, %i.fq
  %i.fs = fadd double %.02223.i.i.i.i.i, %i.fr
  %i.ft = add nuw nsw i64 %.01724.i.i.i.i.i, 1    ; 2 uses
  %i.fu = mul nsw i64 %i.ft, %i.fc
  %i.fv = getelementptr [8 x i8], ptr %i.ex, i64 %i.fu
  %i.fw = mul nsw i64 %i.ft, %i.fd
  %i.fx = getelementptr [8 x i8], ptr %i.ez, i64 %i.fw
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !16
  %i.fz = load double, ptr %i.fv, align 8, !tbaa !16
  %i.ga = fmul double %i.fy, %i.fz
  %i.gb = fadd double %i.fs, %i.ga                ; 3 uses
  %i.gc = add nuw nsw i64 %.01724.i.i.i.i.i, 2    ; 2 uses
  %niter394.next.1 = add nuw i64 %niter394, 2     ; 2 uses
  %niter394.ncmp.1 = icmp eq i64 %niter394.next.1, %unroll_iter393
  br i1 %niter394.ncmp.1, label %.lr.ph.i.i.i.i.i124.preheader.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !64

bb.k:                                             ; preds = %bb.i
  %i.gd = load ptr, ptr %8, align 8, !tbaa !22, !noalias !85
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.am ; 2 uses
  %.pre = load i64, ptr %i.q, align 8, !tbaa !21
  %.pre335 = load i64, ptr %i.r, align 8, !tbaa !21
  %.pre336 = load double, ptr %i.ex, align 8, !tbaa !16
  %.pre337 = load double, ptr %i.ge, align 8, !tbaa !16
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128

.loopexit327:                                     ; preds = %bb.j
  %i.gf = load ptr, ptr %8, align 8, !tbaa !22, !noalias !86
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.am ; 2 uses
  %i.gh = load i64, ptr %i.r, align 8, !tbaa !21
  %i.gi = load double, ptr %i.gg, align 8, !tbaa !16 ; 2 uses
  %i.gj = fmul double %i.fe, %i.gi
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128

.lr.ph.i.i.i.i.i124.preheader.unr-lcssa:          ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod390.not = icmp eq i64 %xtraiter388, 0
  br i1 %lcmp.mod390.not, label %.lr.ph.i.i.i.i.i124.preheader, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %.lr.ph.i.i.i.i.i124.preheader.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gc, %.lr.ph.i.i.i.i.i124.preheader.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.i.epil.init = phi double [ %i.fg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gb, %.lr.ph.i.i.i.i.i124.preheader.unr-lcssa ]
  %lcmp.mod392 = trunc i64 %i.fi to i1
  call void @llvm.assume(i1 %lcmp.mod392)
  %i.gk = mul nsw i64 %.01724.i.i.i.i.i.epil.init, %i.fc
  %i.gl = getelementptr [8 x i8], ptr %i.ex, i64 %i.gk
  %i.gm = mul nsw i64 %.01724.i.i.i.i.i.epil.init, %i.fd
  %i.gn = getelementptr [8 x i8], ptr %i.ez, i64 %i.gm
  %i.go = load double, ptr %i.gn, align 8, !tbaa !16
  %i.gp = load double, ptr %i.gl, align 8, !tbaa !16
  %i.gq = fmul double %i.go, %i.gp
  %i.gr = fadd double %.02223.i.i.i.i.i.epil.init, %i.gq
  br label %.lr.ph.i.i.i.i.i124.preheader

.lr.ph.i.i.i.i.i124.preheader:                    ; preds = %.lr.ph.i.i.i.i.i124.preheader.unr-lcssa, %.lr.ph.i.i.i.i.i.epil.preheader
  %.lcssa = phi double [ %i.gb, %.lr.ph.i.i.i.i.i124.preheader.unr-lcssa ], [ %i.gr, %.lr.ph.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.gs = load ptr, ptr %8, align 8, !tbaa !22, !noalias !86
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.am ; 6 uses
  %i.gu = load i64, ptr %i.r, align 8, !tbaa !21  ; 5 uses
  %i.gv = load double, ptr %i.gt, align 8, !tbaa !16 ; 3 uses
  %i.gw = fmul double %i.fe, %i.gv                ; 2 uses
  %xtraiter395 = and i64 %i.fi, 1
  %i.gx = icmp eq i64 %i.fj, 0
  br i1 %i.gx, label %.lr.ph.i.i.i.i.i124.epil.preheader, label %.lr.ph.i.i.i.i.i124.preheader.new

.lr.ph.i.i.i.i.i124.preheader.new:                ; preds = %.lr.ph.i.i.i.i.i124.preheader
  %unroll_iter400 = and i64 %i.fi, -2
  br label %.lr.ph.i.i.i.i.i124

.lr.ph.i.i.i.i.i124:                              ; preds = %.lr.ph.i.i.i.i.i124, %.lr.ph.i.i.i.i.i124.preheader.new
  %.01724.i.i.i.i.i125 = phi i64 [ 1, %.lr.ph.i.i.i.i.i124.preheader.new ], [ %i.hp, %.lr.ph.i.i.i.i.i124 ] ; 4 uses
  %.02223.i.i.i.i.i126 = phi double [ %i.gw, %.lr.ph.i.i.i.i.i124.preheader.new ], [ %i.ho, %.lr.ph.i.i.i.i.i124 ]
  %niter401 = phi i64 [ 0, %.lr.ph.i.i.i.i.i124.preheader.new ], [ %niter401.next.1, %.lr.ph.i.i.i.i.i124 ]
  %i.gy = mul nsw i64 %.01724.i.i.i.i.i125, %i.gu
  %i.gz = getelementptr [8 x i8], ptr %i.gt, i64 %i.gy
  %i.ha = mul nsw i64 %.01724.i.i.i.i.i125, %i.fd
  %i.hb = getelementptr [8 x i8], ptr %i.ez, i64 %i.ha
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !16
  %i.hd = load double, ptr %i.gz, align 8, !tbaa !16
  %i.he = fmul double %i.hc, %i.hd
  %i.hf = fadd double %.02223.i.i.i.i.i126, %i.he
  %i.hg = add nuw nsw i64 %.01724.i.i.i.i.i125, 1 ; 2 uses
  %i.hh = mul nsw i64 %i.hg, %i.gu
  %i.hi = getelementptr [8 x i8], ptr %i.gt, i64 %i.hh
  %i.hj = mul nsw i64 %i.hg, %i.fd
  %i.hk = getelementptr [8 x i8], ptr %i.ez, i64 %i.hj
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !16
  %i.hm = load double, ptr %i.hi, align 8, !tbaa !16
  %i.hn = fmul double %i.hl, %i.hm
  %i.ho = fadd double %i.hf, %i.hn                ; 3 uses
  %i.hp = add nuw nsw i64 %.01724.i.i.i.i.i125, 2 ; 2 uses
  %niter401.next.1 = add nuw i64 %niter401, 2     ; 2 uses
  %niter401.ncmp.1 = icmp eq i64 %niter401.next.1, %unroll_iter400
  br i1 %niter401.ncmp.1, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i124, !llvm.loop !64

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i124
  %lcmp.mod397.not = icmp eq i64 %xtraiter395, 0
  br i1 %lcmp.mod397.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128, label %.lr.ph.i.i.i.i.i124.epil.preheader

.lr.ph.i.i.i.i.i124.epil.preheader:               ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i124.preheader
  %.01724.i.i.i.i.i125.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i124.preheader ], [ %i.hp, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128.loopexit.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.i126.epil.init = phi double [ %i.gw, %.lr.ph.i.i.i.i.i124.preheader ], [ %i.ho, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128.loopexit.unr-lcssa ]
  %lcmp.mod399 = trunc i64 %i.fi to i1
  call void @llvm.assume(i1 %lcmp.mod399)
  %i.hq = mul nsw i64 %.01724.i.i.i.i.i125.epil.init, %i.gu
  %i.hr = getelementptr [8 x i8], ptr %i.gt, i64 %i.hq
  %i.hs = mul nsw i64 %.01724.i.i.i.i.i125.epil.init, %i.fd
  %i.ht = getelementptr [8 x i8], ptr %i.ez, i64 %i.hs
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !16
  %i.hv = load double, ptr %i.hr, align 8, !tbaa !16
  %i.hw = fmul double %i.hu, %i.hv
  %i.hx = fadd double %.02223.i.i.i.i.i126.epil.init, %i.hw
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128: ; preds = %.lr.ph.i.i.i.i.i124.epil.preheader, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128.loopexit.unr-lcssa, %.loopexit327, %bb.k
  %i.hy = phi double [ %.pre337, %bb.k ], [ %i.gi, %.loopexit327 ], [ %i.gv, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128.loopexit.unr-lcssa ], [ %i.gv, %.lr.ph.i.i.i.i.i124.epil.preheader ]
  %i.hz = phi double [ %.pre336, %bb.k ], [ %i.ff, %.loopexit327 ], [ %i.ff, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128.loopexit.unr-lcssa ], [ %i.ff, %.lr.ph.i.i.i.i.i124.epil.preheader ]
  %i.ia = phi i64 [ %.pre335, %bb.k ], [ %i.gh, %.loopexit327 ], [ %i.gu, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128.loopexit.unr-lcssa ], [ %i.gu, %.lr.ph.i.i.i.i.i124.epil.preheader ] ; 2 uses
  %i.ib = phi i64 [ %.pre, %bb.k ], [ %i.fc, %.loopexit327 ], [ %i.fc, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128.loopexit.unr-lcssa ], [ %i.fc, %.lr.ph.i.i.i.i.i124.epil.preheader ] ; 2 uses
  %i.ic = phi ptr [ %i.ge, %bb.k ], [ %i.gg, %.loopexit327 ], [ %i.gt, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128.loopexit.unr-lcssa ], [ %i.gt, %.lr.ph.i.i.i.i.i124.epil.preheader ] ; 5 uses
  %.0.i.i.i318 = phi double [ 0.000000e+00, %bb.k ], [ %i.fg, %.loopexit327 ], [ %.lcssa, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128.loopexit.unr-lcssa ], [ %.lcssa, %.lr.ph.i.i.i.i.i124.epil.preheader ]
  %.0.i.i.i123 = phi double [ 0.000000e+00, %bb.k ], [ %i.gj, %.loopexit327 ], [ %i.ho, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128.loopexit.unr-lcssa ], [ %i.hx, %.lr.ph.i.i.i.i.i124.epil.preheader ]
  %i.id = call double @atan2(double noundef %.0.i.i.i318, double noundef %.0.i.i.i123) #14 ; 4 uses
  %i.ie = getelementptr [8 x i8], ptr %i.ex, i64 %i.ib ; 4 uses
  %.idx.i.i.i.i.i133 = shl i64 %i.ib, 4
  %i.if = getelementptr i8, ptr %i.ex, i64 %.idx.i.i.i.i.i133 ; 4 uses
  %i.ig = getelementptr [8 x i8], ptr %i.ic, i64 %i.ia ; 4 uses
  %.idx.i.i.i.i.i138 = shl i64 %i.ia, 4
  %i.ih = getelementptr i8, ptr %i.ic, i64 %.idx.i.i.i.i.i138 ; 4 uses
  %i.ii = load double, ptr %11, align 16, !tbaa !16 ; 2 uses
  %i.ij = fmul double %i.hz, %i.ii
  %i.ik = load double, ptr %i.ie, align 8, !tbaa !16
  %i.il = load double, ptr %i.w, align 16, !tbaa !16 ; 2 uses
  %i.im = fmul double %i.ik, %i.il
  %i.in = fadd double %i.ij, %i.im
  %i.io = load double, ptr %i.if, align 8, !tbaa !16
  %i.ip = load double, ptr %i.x, align 16, !tbaa !16 ; 2 uses
  %i.iq = fmul double %i.io, %i.ip
  %i.ir = fadd double %i.in, %i.iq
  %i.is = fmul double %i.ii, %i.hy
  %i.it = load double, ptr %i.ig, align 8, !tbaa !16
  %i.iu = fmul double %i.il, %i.it
  %i.iv = fadd double %i.is, %i.iu
  %i.iw = load double, ptr %i.ih, align 8, !tbaa !16
  %i.ix = fmul double %i.ip, %i.iw
  %i.iy = fadd double %i.iv, %i.ix
  %i.iz = call double @atan2(double noundef %i.ir, double noundef %i.iy) #14
  %i.ja = fsub double %i.iz, %i.id                ; 3 uses
  %i.jb = fcmp olt double %i.ja, 0.000000e+00
  %i.jc = fdiv double %i.ja, f0xC01921FB54442D18
  %i.jd = call double @llvm.ceil.f64(double %i.jc)
  %i.je = select i1 %i.jb, double %i.jd, double 0.000000e+00
  %i.jf = call double @llvm.fmuladd.f64(double %i.je, double f0x401921FB54442D18, double %i.ja)
  %i.jg = call double @fmod(double noundef %i.jf, double noundef f0x401921FB54442D18) #14 ; 5 uses
  store double %i.jg, ptr %i.ev, align 8, !tbaa !16
  %i.jh = load double, ptr %i.ex, align 8, !tbaa !16
  %i.ji = load double, ptr %i.y, align 8, !tbaa !16 ; 2 uses
  %i.jj = fmul double %i.jh, %i.ji
  %i.jk = load double, ptr %i.ie, align 8, !tbaa !16
  %i.jl = load double, ptr %i.z, align 8, !tbaa !16 ; 2 uses
  %i.jm = fmul double %i.jk, %i.jl
  %i.jn = fadd double %i.jj, %i.jm
  %i.jo = load double, ptr %i.if, align 8, !tbaa !16
  %i.jp = load double, ptr %i.aa, align 8, !tbaa !16 ; 2 uses
  %i.jq = fmul double %i.jo, %i.jp
  %i.jr = fadd double %i.jn, %i.jq
  %i.js = load double, ptr %i.ic, align 8, !tbaa !16
  %i.jt = fmul double %i.ji, %i.js
  %i.ju = load double, ptr %i.ig, align 8, !tbaa !16
  %i.jv = fmul double %i.jl, %i.ju
  %i.jw = fadd double %i.jt, %i.jv
  %i.jx = load double, ptr %i.ih, align 8, !tbaa !16
  %i.jy = fmul double %i.jp, %i.jx
  %i.jz = fadd double %i.jw, %i.jy
  %i.ka = call double @atan2(double noundef %i.jr, double noundef %i.jz) #14
  %i.kb = fsub double %i.ka, %i.id                ; 3 uses
  %i.kc = fcmp olt double %i.kb, 0.000000e+00
  %i.kd = fdiv double %i.kb, f0xC01921FB54442D18
  %i.ke = call double @llvm.ceil.f64(double %i.kd)
  %i.kf = select i1 %i.kc, double %i.ke, double 0.000000e+00
  %i.kg = call double @llvm.fmuladd.f64(double %i.kf, double f0x401921FB54442D18, double %i.kb)
  %i.kh = call double @fmod(double noundef %i.kg, double noundef f0x401921FB54442D18) #14 ; 5 uses
  store double %i.kh, ptr %.ptr322.ptr, align 8, !tbaa !16
  %i.ki = load double, ptr %i.ex, align 8, !tbaa !16
  %i.kj = load double, ptr %i.ab, align 16, !tbaa !16 ; 2 uses
  %i.kk = fmul double %i.ki, %i.kj
  %i.kl = load double, ptr %i.ie, align 8, !tbaa !16
  %i.km = load double, ptr %i.ac, align 16, !tbaa !16 ; 2 uses
  %i.kn = fmul double %i.kl, %i.km
  %i.ko = fadd double %i.kk, %i.kn
  %i.kp = load double, ptr %i.if, align 8, !tbaa !16
  %i.kq = load double, ptr %i.ad, align 16, !tbaa !16 ; 2 uses
  %i.kr = fmul double %i.kp, %i.kq
  %i.ks = fadd double %i.ko, %i.kr
  %i.kt = load double, ptr %i.ic, align 8, !tbaa !16
  %i.ku = fmul double %i.kj, %i.kt
  %i.kv = load double, ptr %i.ig, align 8, !tbaa !16
  %i.kw = fmul double %i.km, %i.kv
  %i.kx = fadd double %i.ku, %i.kw
  %i.ky = load double, ptr %i.ih, align 8, !tbaa !16
  %i.kz = fmul double %i.kq, %i.ky
  %i.la = fadd double %i.kx, %i.kz
  %i.lb = call double @atan2(double noundef %i.ks, double noundef %i.la) #14
  %i.lc = fsub double %i.lb, %i.id                ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 3 uses
  %i.le = fcmp olt double %i.lc, 0.000000e+00
  %i.lf = fdiv double %i.lc, f0xC01921FB54442D18
  %i.lg = call double @llvm.ceil.f64(double %i.lf)
  %i.lh = select i1 %i.le, double %i.lg, double 0.000000e+00
  %i.li = call double @llvm.fmuladd.f64(double %i.lh, double f0x401921FB54442D18, double %i.lc)
  %i.lj = call double @fmod(double noundef %i.li, double noundef f0x401921FB54442D18) #14 ; 5 uses
  store double %i.lj, ptr %i.ld, align 8, !tbaa !16
  %i.lk = load double, ptr %i.ex, align 8, !tbaa !16
  %i.ll = load double, ptr %i.ae, align 8, !tbaa !16 ; 2 uses
  %i.lm = fmul double %i.lk, %i.ll
  %i.ln = load double, ptr %i.ie, align 8, !tbaa !16
  %i.lo = load double, ptr %i.af, align 8, !tbaa !16 ; 2 uses
  %i.lp = fmul double %i.ln, %i.lo
  %i.lq = fadd double %i.lm, %i.lp
  %i.lr = load double, ptr %i.if, align 8, !tbaa !16
  %i.ls = load double, ptr %i.ag, align 8, !tbaa !16 ; 2 uses
  %i.lt = fmul double %i.lr, %i.ls
  %i.lu = fadd double %i.lq, %i.lt
  %i.lv = load double, ptr %i.ic, align 8, !tbaa !16
  %i.lw = fmul double %i.ll, %i.lv
  %i.lx = load double, ptr %i.ig, align 8, !tbaa !16
  %i.ly = fmul double %i.lo, %i.lx
  %i.lz = fadd double %i.lw, %i.ly
  %i.ma = load double, ptr %i.ih, align 8, !tbaa !16
  %i.mb = fmul double %i.ls, %i.ma
  %i.mc = fadd double %i.lz, %i.mb
  %i.md = call double @atan2(double noundef %i.lu, double noundef %i.mc) #14
  %i.me = fsub double %i.md, %i.id                ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ev, i64 24 ; 3 uses
  %i.mg = fcmp olt double %i.me, 0.000000e+00
  %i.mh = fdiv double %i.me, f0xC01921FB54442D18
  %i.mi = call double @llvm.ceil.f64(double %i.mh)
  %i.mj = select i1 %i.mg, double %i.mi, double 0.000000e+00
  %i.mk = call double @llvm.fmuladd.f64(double %i.mj, double f0x401921FB54442D18, double %i.me)
  %i.ml = call double @fmod(double noundef %i.mk, double noundef f0x401921FB54442D18) #14 ; 3 uses
  store double %i.ml, ptr %i.mf, align 8, !tbaa !16
  %i.mm = fcmp olt double %i.jg, %i.kh            ; 2 uses
  %spec.select.i.i145 = select i1 %i.mm, ptr %.ptr322.ptr, ptr %i.ev
  %i.mn = select i1 %i.mm, double %i.kh, double %i.jg ; 2 uses
  %i.mo = fcmp olt double %i.mn, %i.lj            ; 2 uses
  %spec.select.i.i145.1 = select i1 %i.mo, ptr %i.ld, ptr %spec.select.i.i145
  %i.mp = select i1 %i.mo, double %i.lj, double %i.mn
  %i.mq = fcmp olt double %i.mp, %i.ml
  %spec.select.i.i145.2 = select i1 %i.mq, ptr %i.mf, ptr %spec.select.i.i145.1
  %i.mr = fcmp olt double %i.kh, %i.jg            ; 2 uses
  %spec.select.i.i = select i1 %i.mr, ptr %.ptr322.ptr, ptr %i.ev
  %i.ms = select i1 %i.mr, double %i.kh, double %i.jg ; 2 uses
  %i.mt = fcmp olt double %i.lj, %i.ms            ; 2 uses
  %spec.select.i.i.1 = select i1 %i.mt, ptr %i.ld, ptr %spec.select.i.i
  %i.mu = select i1 %i.mt, double %i.lj, double %i.ms
  %i.mv = fcmp olt double %i.ml, %i.mu
  %spec.select.i.i.2 = select i1 %i.mv, ptr %i.mf, ptr %spec.select.i.i.1
  %i.mw = ptrtoint ptr %spec.select.i.i.2 to i64
  %i.mx = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.my = sub i64 %i.mw, %i.mx
  %i.mz = ptrtoint ptr %spec.select.i.i145.2 to i64
  %i.na = sub i64 %i.mz, %i.mx
  %i.nb = shl i64 %i.my, 29
  %i.nc = ashr exact i64 %i.nb, 29
  %i.nd = getelementptr inbounds i8, ptr %11, i64 %i.nc ; 9 uses
  %i.ne = load ptr, ptr %6, align 8, !tbaa !22, !noalias !87
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %i.am ; 6 uses
  %i.ng = load i64, ptr %i.s, align 8, !tbaa !23, !noalias !87 ; 7 uses
  %i.nh = load i64, ptr %i.t, align 8, !tbaa !21  ; 6 uses
  %i.ni = icmp sgt i64 %i.ng, 0
  br i1 %i.ni, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128
  %min.iters.check357 = icmp ugt i64 %i.ng, 4
  %ident.check355.not = icmp eq i64 %i.nh, 1
  %or.cond = select i1 %min.iters.check357, i1 %ident.check355.not, i1 false
  br i1 %or.cond, label %vector.ph358, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader367

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader367:          ; preds = %vector.body360, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec359, %vector.body360 ] ; 4 uses
  %i.nj = sub i64 %i.ng, %.05.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter402 = and i64 %i.nj, 3                 ; 2 uses
  %lcmp.mod403.not = icmp eq i64 %xtraiter402, 0
  br i1 %lcmp.mod403.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader367, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.no, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader367 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader367 ]
  %i.nk = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.nh
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.nk
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.prol = shl nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 5
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !16
  store double %i.nn, ptr %i.nl, align 8, !tbaa !16
  %i.no = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter402
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !70

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader367
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader367 ], [ %i.no, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.np = sub i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.ng
  %i.nq = icmp ugt i64 %i.np, -4
  br i1 %i.nq, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

vector.ph358:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %i.nr = and i64 %i.ng, 3                        ; 2 uses
  %i.ns = icmp eq i64 %i.nr, 0
  %i.nt = select i1 %i.ns, i64 4, i64 %i.nr
  %n.vec359 = sub nsw i64 %i.ng, %i.nt            ; 2 uses
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next362, %vector.body360 ] ; 6 uses
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %index361 ; 2 uses
  %i.nv = shl nuw nsw i64 %index361, 5
  %i.nw = shl i64 %index361, 5
  %i.nx = shl i64 %index361, 5
  %i.ny = shl i64 %index361, 5
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.nv
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.nw
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 32
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.nx
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 64
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.ny
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 96
  %i.og = load double, ptr %i.nz, align 8, !tbaa !16
  %i.oh = load double, ptr %i.ob, align 8, !tbaa !16
  %i.oi = insertelement <2 x double> poison, double %i.og, i64 0
  %i.oj = insertelement <2 x double> %i.oi, double %i.oh, i64 1
  %i.ok = load double, ptr %i.od, align 8, !tbaa !16
  %i.ol = load double, ptr %i.of, align 8, !tbaa !16
  %i.om = insertelement <2 x double> poison, double %i.ok, i64 0
  %i.on = insertelement <2 x double> %i.om, double %i.ol, i64 1
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  store <2 x double> %i.oj, ptr %i.nu, align 8, !tbaa !16
  store <2 x double> %i.on, ptr %i.oo, align 8, !tbaa !16
  %index.next362 = add nuw i64 %index361, 4       ; 2 uses
  %i.op = icmp eq i64 %index.next362, %n.vec359
  br i1 %i.op, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader367, label %vector.body360, !llvm.loop !71

bb.l:                                             ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIdLi4ELi3ELi0ELi4ELi3EEEEcmINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit113
  %i.oq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.m

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.pk, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.or = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.nh
  %i.os = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.or
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 5
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !16
  store double %i.ou, ptr %i.os, align 8, !tbaa !16
  %i.ov = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ow = mul nsw i64 %i.ov, %i.nh
  %i.ox = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.ow
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = shl nuw nsw i64 %i.ov, 5
  %i.oy = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !16
  store double %i.oz, ptr %i.ox, align 8, !tbaa !16
  %i.pa = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.pb = mul nsw i64 %i.pa, %i.nh
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.pb
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = shl nuw nsw i64 %i.pa, 5
  %i.pd = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !16
  store double %i.pe, ptr %i.pc, align 8, !tbaa !16
  %i.pf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.pg = mul nsw i64 %i.pf, %i.nh
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.pg
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = shl nuw nsw i64 %i.pf, 5
  %i.pi = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !16
  store double %i.pj, ptr %i.ph, align 8, !tbaa !16
  %i.pk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.pk, %i.ng
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !72

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKS3_Li1ELin1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSA_17scalar_product_opIdSE_EEE10ReturnTypeERKNS0_ISC_EE.exit128
  %i.pl = shl i64 %i.na, 29
  %i.pm = ashr exact i64 %i.pl, 29
  %i.pn = getelementptr inbounds i8, ptr %11, i64 %i.pm ; 9 uses
  %i.po = load ptr, ptr %7, align 8, !tbaa !22, !noalias !90
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %i.am ; 6 uses
  %i.pq = load i64, ptr %i.u, align 8, !tbaa !23, !noalias !90 ; 7 uses
  %i.pr = load i64, ptr %i.v, align 8, !tbaa !21  ; 6 uses
  %i.ps = icmp sgt i64 %i.pq, 0
  br i1 %i.ps, label %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader, label %_ZNSt6vectorIdSaIdEED2Ev.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader:          ; preds = %.loopexit
  %min.iters.check = icmp ugt i64 %i.pq, 4
  %ident.check.not = icmp eq i64 %i.pr, 1
  %or.cond365 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond365, label %vector.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader366

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader
  %i.pt = and i64 %i.pq, 3                        ; 2 uses
  %i.pu = icmp eq i64 %i.pt, 0
  %i.pv = select i1 %i.pu, i64 4, i64 %i.pt
  %n.vec = sub nsw i64 %i.pq, %i.pv               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.pw = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %index ; 2 uses
  %i.px = shl nuw nsw i64 %index, 5
  %i.py = shl i64 %index, 5
  %i.pz = shl i64 %index, 5
  %i.qa = shl i64 %index, 5
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.px
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.py
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 32
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pz
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 64
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.qa
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 96
  %i.qi = load double, ptr %i.qb, align 8, !tbaa !16
  %i.qj = load double, ptr %i.qd, align 8, !tbaa !16
  %i.qk = insertelement <2 x double> poison, double %i.qi, i64 0
  %i.ql = insertelement <2 x double> %i.qk, double %i.qj, i64 1
  %i.qm = load double, ptr %i.qf, align 8, !tbaa !16
  %i.qn = load double, ptr %i.qh, align 8, !tbaa !16
  %i.qo = insertelement <2 x double> poison, double %i.qm, i64 0
  %i.qp = insertelement <2 x double> %i.qo, double %i.qn, i64 1
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  store <2 x double> %i.ql, ptr %i.pw, align 8, !tbaa !16
  store <2 x double> %i.qp, ptr %i.qq, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qr = icmp eq i64 %index.next, %n.vec
  br i1 %i.qr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader366, label %vector.body, !llvm.loop !75

.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader366:       ; preds = %vector.body, %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader
  %.05.i.i.i.i.i.i.i.i.i.i149.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader ], [ %n.vec, %vector.body ] ; 4 uses
  %i.qs = sub i64 %i.pq, %.05.i.i.i.i.i.i.i.i.i.i149.ph
  %xtraiter404 = and i64 %i.qs, 3                 ; 2 uses
  %lcmp.mod405.not = icmp eq i64 %xtraiter404, 0
  br i1 %lcmp.mod405.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i148.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i148.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i148.prol:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader366, %.lr.ph.i.i.i.i.i.i.i.i.i.i148.prol
  %.05.i.i.i.i.i.i.i.i.i.i149.prol = phi i64 [ %i.qx, %.lr.ph.i.i.i.i.i.i.i.i.i.i148.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i149.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader366 ] ; 3 uses
  %prol.iter406 = phi i64 [ %prol.iter406.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i148.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader366 ]
  %i.qt = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i149.prol, %i.pr
  %i.qu = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %i.qt
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i150.prol = shl nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i149.prol, 5
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i150.prol
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !16
  store double %i.qw, ptr %i.qu, align 8, !tbaa !16
  %i.qx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i149.prol, 1 ; 2 uses
  %prol.iter406.next = add i64 %prol.iter406, 1   ; 2 uses
  %prol.iter406.cmp.not = icmp eq i64 %prol.iter406.next, %xtraiter404
  br i1 %prol.iter406.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i148.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i148.prol, !llvm.loop !76

.lr.ph.i.i.i.i.i.i.i.i.i.i148.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader366
  %.05.i.i.i.i.i.i.i.i.i.i149.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i149.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader366 ], [ %i.qx, %.lr.ph.i.i.i.i.i.i.i.i.i.i148.prol ]
  %i.qy = sub i64 %.05.i.i.i.i.i.i.i.i.i.i149.ph, %i.pq
  %i.qz = icmp ugt i64 %i.qy, -4
  br i1 %i.qz, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i148

.lr.ph.i.i.i.i.i.i.i.i.i.i148:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i148
  %.05.i.i.i.i.i.i.i.i.i.i149 = phi i64 [ %i.rt, %.lr.ph.i.i.i.i.i.i.i.i.i.i148 ], [ %.05.i.i.i.i.i.i.i.i.i.i149.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i148.prol.loopexit ] ; 6 uses
  %i.ra = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i149, %i.pr
  %i.rb = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %i.ra
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i150 = shl nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i149, 5
  %i.rc = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i150
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !16
  store double %i.rd, ptr %i.rb, align 8, !tbaa !16
  %i.re = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i149, 1 ; 2 uses
  %i.rf = mul nsw i64 %i.re, %i.pr
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %i.rf
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i150.1 = shl nuw nsw i64 %i.re, 5
  %i.rh = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i150.1
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !16
  store double %i.ri, ptr %i.rg, align 8, !tbaa !16
  %i.rj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i149, 2 ; 2 uses
  %i.rk = mul nsw i64 %i.rj, %i.pr
  %i.rl = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %i.rk
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i150.2 = shl nuw nsw i64 %i.rj, 5
  %i.rm = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i150.2
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !16
  store double %i.rn, ptr %i.rl, align 8, !tbaa !16
  %i.ro = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i149, 3 ; 2 uses
  %i.rp = mul nsw i64 %i.ro, %i.pr
  %i.rq = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %i.rp
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i150.3 = shl nuw nsw i64 %i.ro, 5
  %i.rr = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i150.3
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !16
  store double %i.rs, ptr %i.rq, align 8, !tbaa !16
  %i.rt = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i149, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i151.3 = icmp eq i64 %i.rt, %i.pq
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i151.3, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i148, !llvm.loop !77

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i148, %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef 32) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.ru = add i32 %.064331, 1                     ; 2 uses
  %i.rv = zext i32 %i.ru to i64                   ; 2 uses
  %i.rw = load i64, ptr %i.j, align 8, !tbaa !21  ; 2 uses
  %i.rx = icmp sgt i64 %i.rw, %i.rv
  br i1 %i.rx, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit94._crit_edge, !llvm.loop !78

bb.m:                                             ; preds = %bb.l, %bb.c
  %.pn80.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oq, %bb.l ], [ %i.ak, %bb.c ]
  %i.ry = load ptr, ptr %10, align 8, !tbaa !22
  call void @free(ptr noundef %i.ry) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.rz = load ptr, ptr %9, align 8, !tbaa !22
  call void @free(ptr noundef %i.rz) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.sa = load ptr, ptr %8, align 8, !tbaa !22
  call void @free(ptr noundef %i.sa) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  resume { ptr, i32 } %.pn80.pn.pn.pn.pn.pn.pn
}

declare void @_ZN3igl11local_basisIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EERNSE_IT2_EERNSE_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.f) #14
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #18 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !21
  store i64 %3, ptr %i.c, align 8, !tbaa !23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 double", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EEE", !10, i64 0, !11, i64 8}
!13 = !{!12, !11, i64 8}
!14 = !{!12, !10, i64 0}
!15 = !{!"double", !5, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"vtable pointer", !4, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !10, i64 0, !11, i64 8, !11, i64 16}
!21 = !{!20, !11, i64 8}
!22 = !{!20, !10, i64 0}
!23 = !{!20, !11, i64 16}
!24 = distinct !{!24, i1 false, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!25 = distinct !{!25, !24, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!26 = distinct !{!26, i1 false, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi4ELi3ELi0ELi4ELi3EEEElsINS_5BlockIKNS1_IdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE"}
!27 = distinct !{!27, !26, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi4ELi3ELi0ELi4ELi3EEEElsINS_5BlockIKNS1_IdLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE: argument 0"}
!28 = distinct !{!28, i1 false, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!29 = distinct !{!29, !28, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!30 = distinct !{!30, i1 false, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!31 = distinct !{!31, !30, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!32 = distinct !{!32, i1 false, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!33 = distinct !{!33, !32, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!34 = distinct !{!34, i1 false, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!35 = distinct !{!35, !34, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!36 = distinct !{!36, i1 false, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!37 = distinct !{!37, !36, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!38 = distinct !{!38, i1 false, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl"}
!39 = distinct !{!39, !38, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE3rowEl: argument 0"}
!40 = distinct !{!40, !17}
!41 = !{!25}
!42 = !{!27}
!43 = !{!29}
!44 = !{!31}
!45 = !{!33}
!46 = !{!35}
!47 = !{!37}
!48 = !{!39}
!49 = distinct !{!49, i1 false, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!50 = distinct !{!50, !49, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!51 = distinct !{!51, i1 false, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi4ELi3ELi0ELi4ELi3EEEElsINS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE"}
!52 = distinct !{!52, !51, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi4ELi3ELi0ELi4ELi3EEEElsINS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE: argument 0"}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !81}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, i1 false, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!57 = distinct !{!57, !56, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !81}
!60 = distinct !{!60, i1 false, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!61 = distinct !{!61, !60, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!62 = distinct !{!62, i1 false, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!63 = distinct !{!63, !62, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!64 = distinct !{!64, !17}
!65 = distinct !{!65, i1 false, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!66 = distinct !{!66, !65, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!67 = distinct !{!67, !65, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0:thread"}
!68 = distinct !{!68, i1 false, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!69 = distinct !{!69, !68, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!70 = distinct !{!70, !81}
!71 = distinct !{!71, !17, !88, !89}
!72 = distinct !{!72, !17, !88}
!73 = distinct !{!73, i1 false, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!74 = distinct !{!74, !73, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!75 = distinct !{!75, !17, !88, !89}
!76 = distinct !{!76, !81}
!77 = distinct !{!77, !17, !88}
!78 = distinct !{!78, !17}
!79 = !{!50}
!80 = !{!52}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!57}
!83 = !{!61}
!84 = !{!63}
!85 = !{!66}
!86 = !{!67}
!87 = !{!69}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
!90 = !{!74}
end_hunk_0
