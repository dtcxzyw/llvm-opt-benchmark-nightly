Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_dense?download=true
inline.NumInlined: 24160
inline.NumDeleted: 12008
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 160
begin_hunk_0_@_ZN5Eigen8internal26triangular_solver_selectorIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li1ELi2ELi0ELin1EE3runERS4_RS3_
define linkonce_odr void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li1ELi2ELi0ELin1EE3runERS4_RS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.Eigen::internal::gemm_blocking_space", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !376  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load i64, ptr %i.d, align 8, !tbaa !377  ; 2 uses
  %i.i = load <2 x i64>, ptr %i.e, align 8, !tbaa !16
  store <2 x i64> %i.i, ptr %i.f, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store i64 %i.c, ptr %i.j, align 8, !tbaa !917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.h, ptr %i.a, align 8, !tbaa !16
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi4ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.k = load i64, ptr %i.f, align 8, !tbaa !919
  %i.l = load i64, ptr %i.j, align 8, !tbaa !917  ; 2 uses
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.m, ptr %i.n, align 8, !tbaa !920
  %i.o = load i64, ptr %i.g, align 8, !tbaa !922
  %i.p = mul nsw i64 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.p, ptr %i.q, align 8, !tbaa !923
  %i.r = load ptr, ptr %0, align 8, !tbaa !365
  %i.s = load i64, ptr %i.b, align 8, !tbaa !376
  %i.t = load ptr, ptr %1, align 8, !tbaa !365
  %i.u = load i64, ptr %i.e, align 8, !tbaa !376
  invoke void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi2ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %i.c, i64 noundef %i.h, ptr noundef nonnull %i.r, i64 noundef %i.s, ptr noundef nonnull %i.t, i64 noundef 1, i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %2, align 8, !tbaa !924
  call void @free(ptr noundef %i.v) #35
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !925
  call void @free(ptr noundef %i.x) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret void

bb.c:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !924
  call void @free(ptr noundef %i.z) #35
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !925
  call void @free(ptr noundef %i.ab) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi2ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(40) %7) local_unnamed_addr #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 6 uses
  %9 = alloca %"struct.Eigen::internal::gemm_pack_lhs", align 1 ; 6 uses
  %10 = alloca %"struct.Eigen::internal::gemm_pack_rhs", align 1 ; 4 uses
  %11 = alloca %"class.Eigen::internal::blas_data_mapper.505", align 8 ; 6 uses
  %12 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %13 = alloca %"class.Eigen::internal::blas_data_mapper.505", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.505", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !917  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !919
  %.sroa.speculated246 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 5 uses
  %i.e = mul nsw i64 %.sroa.speculated246, %i.b   ; 4 uses
  %i.f = mul nsw i64 %i.b, %1                     ; 4 uses
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172: ; preds = %bb.a
  %i.i = load ptr, ptr %7, align 8, !tbaa !924    ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172
  %i.j = shl nuw i64 %i.e, 3                      ; 2 uses
  %i.k = icmp samesign ult i64 %i.e, 16385
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw nsw i64 %i.j, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.j) #41 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172, %bb.d
  %i.q = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 6 uses
  %i.s = icmp samesign ugt i64 %i.e, 16384        ; 2 uses
  %i.t = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.t, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
          to label %.noexc193 unwind label %bb.af

.noexc193:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !925  ; 2 uses
  %.not159 = icmp eq ptr %i.w, null
  br i1 %.not159, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.x = shl nuw i64 %i.f, 3                      ; 2 uses
  %i.y = icmp samesign ult i64 %i.f, 16385
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw nsw i64 %i.x, 15
  %i.aa = alloca i8, i64 %i.z, align 16           ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #41 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
          to label %.noexc196 unwind label %bb.ag

.noexc196:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %i.ah = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.q, !prof !35

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #35
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #35
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #35
  br label %.body

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.al = icmp sgt i64 %1, 0
  br i1 %i.al, label %bb.r, label %.thread.thread

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !926
  %.sroa.speculated280 = tail call i64 @llvm.smax.i64(i64 %6, i64 %0)
  %i.an = shl i64 %.sroa.speculated280, 5
  %.fr = freeze i64 %i.am
  %i.ao = udiv i64 %.fr, %i.an
  %i.ap = and i64 %i.ao, 576460752303423484       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp sgt i64 %0, 0
  %. = select i1 %i.aq, i64 4, i64 %i.ap          ; 7 uses
  br i1 %i.ar, label %.lr.ph312.us.preheader, label %._crit_edge

.thread.thread:                                   ; preds = %bb.q
  %i.as = icmp sgt i64 %0, 0
  br i1 %i.as, label %.lr.ph328.split.preheader, label %._crit_edge

.lr.ph328.split.preheader:                        ; preds = %.thread.thread
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.av = sub nsw i64 %0, %i.b                    ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.lr.ph, label %._crit_edge

.lr.ph.lr.ph:                                     ; preds = %.lr.ph328.split.preheader
  %.sroa.speculated221375 = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %0)
  br label %.lr.ph

.lr.ph312.us.preheader:                           ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bc = icmp sgt i64 %i.b, 0
  %i.bd = shl i64 %0, 3                           ; 2 uses
  %i.be = mul i64 %i.b, -8
  %i.bf = mul i64 %., %6
  %i.bg = shl i64 %i.bf, 3
  %i.bh = add i64 %i.bd, -8
  %i.bi = shl i64 %6, 3                           ; 2 uses
  %i.bj = add nuw i64 %0, 2305843009213693951
  %i.bk = mul i64 %3, %i.bj
  %i.bl = add i64 %i.bk, %0
  %i.bm = shl i64 %i.bl, 3
  %i.bn = shl i64 %3, 3
  %i.bo = sub nuw nsw i64 -8, %i.bn               ; 2 uses
  %i.bp = mul i64 %i.b, %i.bo
  %i.bq = shl i64 %3, 5
  %i.br = sub nuw nsw i64 -32, %i.bq
  %i.bs = getelementptr i8, ptr %4, i64 %i.bd
  %i.bt = getelementptr i8, ptr %2, i64 %i.bm
  %i.bu = getelementptr i8, ptr %i.bt, i64 -8
  %ident.check.not = icmp eq i64 %6, 1
  %stride.check = icmp slt i64 %i.bi, 0
  br label %.lr.ph312.us

.lr.ph312.us:                                     ; preds = %.loopexit.us, %.lr.ph312.us.preheader
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph312.us.preheader ] ; 3 uses
  %.0135326.us = phi i64 [ %i.ci, %.loopexit.us ], [ %0, %.lr.ph312.us.preheader ] ; 5 uses
  %i.bv = mul i64 %i.be, %indvar                  ; 2 uses
  %i.bw = add i64 %i.bh, %i.bv
  %i.bx = mul i64 %i.bp, %indvar
  %smin = call i64 @llvm.smin.i64(i64 %i.b, i64 %.0135326.us) ; 9 uses
  %i.by = sub nsw i64 %.0135326.us, %smin         ; 2 uses
  %i.bz = getelementptr [8 x i8], ptr %2, i64 %i.by
  %i.ca = getelementptr [8 x i8], ptr %4, i64 %i.by
  br i1 %i.bc, label %.lr.ph308.us.us.preheader, label %._crit_edge313.us

.lr.ph308.us.us.preheader:                        ; preds = %.lr.ph312.us
  %i.cb = getelementptr i8, ptr %i.bs, i64 %i.bv
  %i.cc = getelementptr i8, ptr %i.bu, i64 %i.bx
  br label %.lr.ph308.us.us

bb.s:                                             ; preds = %.lr.ph.us, %bb.w
  %.0325.us = phi i64 [ 0, %.lr.ph.us ], [ %i.cg, %bb.w ] ; 4 uses
  %i.cd = sub nsw i64 %i.ci, %.0325.us
  %.sroa.speculated.us = call i64 @llvm.smin.i64(i64 %i.cd, i64 %.sroa.speculated246) ; 3 uses
  %i.ce = icmp sgt i64 %.sroa.speculated.us, 0
  br i1 %i.ce, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  %gep.us330 = getelementptr [8 x i8], ptr %invariant.gep.us333, i64 %.0325.us
  store ptr %gep.us330, ptr %14, align 8
  store i64 %3, ptr %i.ba, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %smin, i64 noundef %.sroa.speculated.us, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %.split.us334

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  %i.cf = getelementptr [8 x i8], ptr %4, i64 %.0325.us
  store ptr %i.cf, ptr %15, align 8
  store i64 %6, ptr %i.bb, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated.us, i64 noundef %smin, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.v unwind label %.split336.us

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.cg = add nsw i64 %.0325.us, %.sroa.speculated246 ; 2 uses
  %i.ch = icmp slt i64 %i.cg, %i.ci
  br i1 %i.ch, label %bb.s, label %.loopexit.us, !llvm.loop !1215

.loopexit.us:                                     ; preds = %bb.w
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph312.us, !llvm.loop !1216

._crit_edge313.us:                                ; preds = %._crit_edge309.us.us, %.lr.ph312.us
  %i.ci = sub nsw i64 %.0135326.us, %i.b          ; 5 uses
  %i.cj = icmp sgt i64 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.us, label %._crit_edge

.lr.ph308.us.us:                                  ; preds = %.lr.ph308.us.us.preheader, %._crit_edge309.us.us
  %indvar377 = phi i64 [ %indvar.next378, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 4 uses
  %.0134310.us.us = phi i64 [ %i.fz, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 13 uses
  %16 = or disjoint i64 %.0134310.us.us, 1
  %i.ck = mul i64 %., %indvar377                  ; 2 uses
  %17 = sub i64 %1, %i.ck
  %smin389 = call i64 @llvm.smin.i64(i64 %., i64 %17)
  %18 = add i64 %smin389, %.0134310.us.us
  %smax390 = call i64 @llvm.smax.i64(i64 %16, i64 %18) ; 2 uses
  %19 = sub i64 %smax390, %i.ck                   ; 2 uses
  %i.cl = mul i64 %i.bg, %indvar377               ; 2 uses
  %i.cm = add i64 %i.bw, %i.cl
  %i.cn = or disjoint i64 %.0134310.us.us, 1
  %i.co = mul i64 %., %indvar377                  ; 2 uses
  %i.cp = sub i64 %1, %i.co
  %smin383 = call i64 @llvm.smin.i64(i64 %., i64 %i.cp)
  %i.cq = add i64 %smin383, %.0134310.us.us
  %smax = call i64 @llvm.smax.i64(i64 %i.cn, i64 %i.cq)
  %i.cr = xor i64 %i.co, -1
  %i.cs = add i64 %smax, %i.cr
  %i.ct = mul i64 %i.bi, %i.cs
  %i.cu = add i64 %i.cm, %i.ct
  %i.cv = sub nsw i64 %1, %.0134310.us.us         ; 2 uses
  %.sroa.speculated216.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.cv) ; 3 uses
  %i.cw = add nsw i64 %.sroa.speculated216.us.us, %.0134310.us.us ; 2 uses
  %i.cx = icmp slt i64 %i.cv, 1
  %i.cy = mul nuw nsw i64 %.0134310.us.us, %smin
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cy ; 2 uses
  %i.da = mul nsw i64 %.0134310.us.us, %6         ; 2 uses
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %4, i64 %i.da
  %i.db = getelementptr [8 x i8], ptr %i.ca, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.cb, i64 %i.cl
  %min.iters.check392 = icmp ugt i64 %19, 3
  %or.cond = and i1 %min.iters.check392, %ident.check.not
  %i.dd = and i64 %smax390, 3                     ; 2 uses
  %n.vec394 = sub nuw i64 %19, %i.dd              ; 2 uses
  %i.de = add i64 %.0134310.us.us, %n.vec394
  %cmp.n403 = icmp eq i64 %i.dd, 0
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %.lr.ph308.us.us
  %indvar379 = phi i64 [ %indvar.next380, %bb.ac ], [ 0, %.lr.ph308.us.us ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ac ], [ %smin, %.lr.ph308.us.us ] ; 3 uses
  %.0133306.us.us = phi i64 [ %i.fa, %bb.ac ], [ 0, %.lr.ph308.us.us ] ; 4 uses
  %i.df = mul i64 %indvar379, -32                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dc, i64 %i.df
  %smin381 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 4)
  %i.dg = mul i64 %smin381, -8
  %scevgep382 = getelementptr i8, ptr %scevgep, i64 %i.dg
  %i.dh = add i64 %i.cu, %i.df
  %i.di = mul i64 %i.br, %indvar379
  %i.dj = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.dk = call i64 @llvm.umin.i64(i64 %i.dj, i64 4)
  %i.dl = sub nsw i64 %smin, %.0133306.us.us      ; 3 uses
  %.sroa.speculated210.us.us = call i64 @llvm.smin.i64(i64 %i.dl, i64 4) ; 7 uses
  %i.dm = icmp slt i64 %i.dl, 1
  %brmerge = select i1 %i.dm, i1 true, i1 %i.cx
  br i1 %brmerge, label %._crit_edge.split.us.us, label %.lr.ph303.us.us.preheader

.lr.ph303.us.us.preheader:                        ; preds = %bb.x
  %i.dn = getelementptr i8, ptr %i.cc, i64 %i.di
  br label %.lr.ph303.us.us

.lr.ph303.us.us:                                  ; preds = %.lr.ph303.us.us.preheader, %._crit_edge304.us.us
  %.0132305.us.us = phi i64 [ %i.fc, %._crit_edge304.us.us ], [ 0, %.lr.ph303.us.us.preheader ] ; 5 uses
  %i.do = shl i64 %.0132305.us.us, 3
  %i.dp = sub i64 %i.dh, %i.do
  %scevgep384 = getelementptr i8, ptr %4, i64 %i.dp
  %i.dq = mul i64 %i.bo, %.0132305.us.us
  %scevgep385 = getelementptr i8, ptr %i.dn, i64 %i.dq
  %i.dr = add nuw nsw i64 %.0132305.us.us, %.0133306.us.us
  %i.ds = xor i64 %i.dr, -1
  %i.dt = add nsw i64 %.0135326.us, %i.ds         ; 4 uses
  %i.du = xor i64 %.0132305.us.us, -1
  %i.dv = add nsw i64 %.sroa.speculated210.us.us, %i.du ; 6 uses
  %i.dw = sub i64 %i.dt, %i.dv                    ; 2 uses
  %i.dx = mul nsw i64 %i.dt, %3                   ; 2 uses
  %i.dy = getelementptr [8 x i8], ptr %2, i64 %i.dt
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %i.dx
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !378
  %i.eb = fdiv double 1.000000e+00, %i.ea         ; 3 uses
  %i.ec = getelementptr [8 x i8], ptr %4, i64 %i.dt ; 3 uses
  %i.ed = getelementptr [8 x i8], ptr %4, i64 %i.dw
  %i.ee = getelementptr [8 x i8], ptr %2, i64 %i.dw
  %i.ef = getelementptr [8 x i8], ptr %i.ee, i64 %i.dx ; 3 uses
  %i.eg = icmp sgt i64 %i.dv, 0
  br i1 %i.eg, label %.lr.ph.us.us.us.preheader, label %.lr.ph303.split.us316.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph303.us.us
  %min.iters.check = icmp ult i64 %i.dv, 4
  %bound0 = icmp ult ptr %scevgep382, %scevgep385
  %bound1 = icmp ult ptr %i.ef, %scevgep384
  %found.conflict = and i1 %bound0, %bound1
  %i.eh = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.dv, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br label %.lr.ph.us.us.us

.lr.ph303.split.us316.us.preheader:               ; preds = %.lr.ph303.us.us
  br i1 %or.cond, label %vector.ph393, label %.lr.ph303.split.us316.us.preheader405

vector.ph393:                                     ; preds = %.lr.ph303.split.us316.us.preheader
  %broadcast.splatinsert395 = insertelement <2 x double> poison, double %i.eb, i64 0
  %broadcast.splat396 = shufflevector <2 x double> %broadcast.splatinsert395, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ei = getelementptr [8 x i8], ptr %i.ec, i64 %.0134310.us.us
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph393
  %index398 = phi i64 [ 0, %vector.ph393 ], [ %index.next401, %vector.body397 ] ; 2 uses
  %i.ej = getelementptr [8 x i8], ptr %i.ei, i64 %index398 ; 3 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 16     ; 2 uses
  %wide.load399 = load <2 x double>, ptr %i.ej, align 8, !tbaa !378
  %wide.load400 = load <2 x double>, ptr %i.ek, align 8, !tbaa !378
  %i.el = fmul <2 x double> %broadcast.splat396, %wide.load399
  %i.em = fmul <2 x double> %broadcast.splat396, %wide.load400
  store <2 x double> %i.el, ptr %i.ej, align 8, !tbaa !378
  store <2 x double> %i.em, ptr %i.ek, align 8, !tbaa !378
  %index.next401 = add nuw i64 %index398, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next401, %n.vec394
  br i1 %i.en, label %middle.block402, label %vector.body397, !llvm.loop !1217

middle.block402:                                  ; preds = %vector.body397
  br i1 %cmp.n403, label %._crit_edge304.us.us, label %.lr.ph303.split.us316.us.preheader405

.lr.ph303.split.us316.us.preheader405:            ; preds = %.lr.ph303.split.us316.us.preheader, %middle.block402
  %.0131301.us314.us.ph = phi i64 [ %.0134310.us.us, %.lr.ph303.split.us316.us.preheader ], [ %i.de, %middle.block402 ]
  br label %.lr.ph303.split.us316.us

.lr.ph303.split.us316.us:                         ; preds = %.lr.ph303.split.us316.us.preheader405, %.lr.ph303.split.us316.us
  %.0131301.us314.us = phi i64 [ %i.es, %.lr.ph303.split.us316.us ], [ %.0131301.us314.us.ph, %.lr.ph303.split.us316.us.preheader405 ] ; 2 uses
  %i.eo = mul nsw i64 %.0131301.us314.us, %6
  %i.ep = getelementptr [8 x i8], ptr %i.ec, i64 %i.eo ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !378
  %i.er = fmul double %i.eb, %i.eq
  store double %i.er, ptr %i.ep, align 8, !tbaa !378
  %i.es = add nuw nsw i64 %.0131301.us314.us, 1   ; 2 uses
  %i.et = icmp slt i64 %i.es, %i.cw
  br i1 %i.et, label %.lr.ph303.split.us316.us, label %._crit_edge304.us.us, !llvm.loop !1218

._crit_edge.split.us.us:                          ; preds = %._crit_edge304.us.us, %bb.x
  %i.eu = sub nsw i64 %i.dl, %.sroa.speculated210.us.us ; 5 uses
  %i.ev = add i64 %.0133306.us.us, %.sroa.speculated210.us.us
  %i.ew = sub i64 %.0135326.us, %i.ev             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.ew
  store ptr %gep.us.us, ptr %11, align 8
  store i64 %6, ptr %i.ax, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %.sroa.speculated210.us.us, i64 noundef %.sroa.speculated216.us.us, i64 noundef %smin, i64 noundef %i.eu)
          to label %bb.y unwind label %.split.us.split.us

bb.y:                                             ; preds = %._crit_edge.split.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %i.ex = icmp sgt i64 %i.eu, 0
  br i1 %i.ex, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.ey = mul nsw i64 %i.ew, %3
  %i.ez = getelementptr [8 x i8], ptr %i.bz, i64 %i.ey
  store ptr %i.ez, ptr %12, align 8
  store i64 %3, ptr %i.ay, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %.sroa.speculated210.us.us, i64 noundef %i.eu, i64 noundef 0, i64 noundef 0)
          to label %bb.aa unwind label %.split320.us.split.us

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  store ptr %i.db, ptr %13, align 8
  store i64 %6, ptr %i.az, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.r, ptr noundef nonnull %i.cz, i64 noundef %i.eu, i64 noundef %.sroa.speculated210.us.us, i64 noundef %.sroa.speculated216.us.us, double noundef -1.000000e+00, i64 noundef %.sroa.speculated210.us.us, i64 noundef %smin, i64 noundef 0, i64 noundef %i.eu)
          to label %bb.ab unwind label %.split323.us.split.us

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %i.fa = add nuw nsw i64 %.0133306.us.us, 4      ; 2 uses
  %i.fb = icmp slt i64 %i.fa, %smin
  %indvars.iv.next = add i64 %indvars.iv, -4
  %indvar.next380 = add i64 %indvar379, 1
  br i1 %i.fb, label %bb.x, label %._crit_edge309.us.us, !llvm.loop !1219

._crit_edge304.us.us:                             ; preds = %.lr.ph303.split.us316.us, %._crit_edge.us.us.us, %middle.block402
  %i.fc = add nuw nsw i64 %.0132305.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.fc, %i.dk
  br i1 %exitcond.not, label %._crit_edge.split.us.us, label %.lr.ph303.us.us, !llvm.loop !1220

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.us.us.us
  %.0131301.us.us.us = phi i64 [ %i.fx, %._crit_edge.us.us.us ], [ %.0134310.us.us, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.fd = mul nsw i64 %.0131301.us.us.us, %6      ; 2 uses
  %i.fe = getelementptr [8 x i8], ptr %i.ec, i64 %i.fd ; 2 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !378
  %i.fg = fmul double %i.eb, %i.ff                ; 2 uses
  store double %i.fg, ptr %i.fe, align 8, !tbaa !378
  %i.fh = getelementptr [8 x i8], ptr %i.ed, i64 %i.fd ; 2 uses
  %i.fi = fneg double %i.fg                       ; 2 uses
  %brmerge408 = select i1 %min.iters.check, i1 true, i1 %i.eh
  br i1 %brmerge408, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fi, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %index ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load = load <2 x double>, ptr %i.fj, align 8, !tbaa !378, !alias.scope !1221
  %wide.load386 = load <2 x double>, ptr %i.fk, align 8, !tbaa !378, !alias.scope !1221
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %index ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %wide.load387 = load <2 x double>, ptr %i.fl, align 8, !tbaa !378, !alias.scope !1224, !noalias !1221
  %wide.load388 = load <2 x double>, ptr %i.fm, align 8, !tbaa !378, !alias.scope !1224, !noalias !1221
  %i.fn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load387)
  %i.fo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load386, <2 x double> %wide.load388)
  store <2 x double> %i.fn, ptr %i.fl, align 8, !tbaa !378, !alias.scope !1224, !noalias !1221
  store <2 x double> %i.fo, ptr %i.fm, align 8, !tbaa !378, !alias.scope !1224, !noalias !1221
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fp, label %middle.block, label %vector.body, !llvm.loop !1226

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us, %middle.block
  %.0130300.us.us.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0130300.us.us.us = phi i64 [ %i.fv, %scalar.ph ], [ %.0130300.us.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.0130300.us.us.us
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !378
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.0130300.us.us.us ; 2 uses
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !378
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal12ldlt_inplaceILi1EE9unblockedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEENS4_IdLin1ELi1ELi0ELin1ELi1EEEEEbRT_RT0_RT1_RNS0_10SignMatrixE:bb.a
  %bound0574 = icmp ult ptr %i.cd, %scevgep573
  %bound1575 = icmp ult ptr %i.ce, %scevgep571.a
  %found.conflict576 = and i1 %bound0574, %bound1575
  br i1 %found.conflict576, label %.lr.ph.i.i.i.i.i.i.preheader609, label %vector.ph579

vector.ph579:                                     ; preds = %vector.memcheck570
  %n.vec580 = and i64 %.0116461, -4               ; 3 uses
  br label %vector.body581

vector.body581:                                   ; preds = %vector.body581, %vector.ph579
  %index582 = phi i64 [ 0, %vector.ph579 ], [ %index.next587, %vector.body581 ] ; 3 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %index582 ; 3 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %index582 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %wide.load583.a = load <2 x double>, ptr %i.cg, align 8, !tbaa !378, !alias.scope !1496, !noalias !1499
  %wide.load584.a = load <2 x double>, ptr %i.ci, align 8, !tbaa !378, !alias.scope !1496, !noalias !1499
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %wide.load585.a = load <2 x double>, ptr %i.ch, align 8, !tbaa !378, !alias.scope !1499
  %wide.load586 = load <2 x double>, ptr %i.cj, align 8, !tbaa !378, !alias.scope !1499
  store <2 x double> %wide.load585.a, ptr %i.cg, align 8, !tbaa !378, !alias.scope !1496, !noalias !1499
  store <2 x double> %wide.load586, ptr %i.ci, align 8, !tbaa !378, !alias.scope !1496, !noalias !1499
  store <2 x double> %wide.load583.a, ptr %i.ch, align 8, !tbaa !378, !alias.scope !1499
  store <2 x double> %wide.load584.a, ptr %i.cj, align 8, !tbaa !378, !alias.scope !1499
  %index.next587 = add nuw i64 %index582, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next587, %n.vec580
  br i1 %i.ck, label %middle.block588, label %vector.body581, !llvm.loop !1501

middle.block588:                                  ; preds = %vector.body581
  %cmp.n589 = icmp eq i64 %.0116461, %n.vec580
  br i1 %cmp.n589, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader609

.lr.ph.i.i.i.i.i.i.preheader609:                  ; preds = %vector.memcheck570, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block588
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck570 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec580, %middle.block588 ] ; 4 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter617 = and i64 %.0116461, 1
  %lcmp.mod618.not = icmp eq i64 %xtraiter617, 0
  br i1 %lcmp.mod618.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader609
  %i.cl = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.ap  ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cl ; 2 uses
  %i.co = load double, ptr %i.cm, align 8, !tbaa !378
  %i.cp = load double, ptr %i.cn, align 8, !tbaa !378
  store double %i.cp, ptr %i.cm, align 8, !tbaa !378
  store double %i.co, ptr %i.cn, align 8, !tbaa !378
  %i.cq = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader609
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader609 ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.cr = icmp eq i64 %.0116461, %.neg
  br i1 %i.cr, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.cs = mul nsw i64 %.05.i.i.i.i.i.i, %i.ap     ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cs ; 2 uses
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !378
  %i.cw = load double, ptr %i.cu, align 8, !tbaa !378
  store double %i.cw, ptr %i.ct, align 8, !tbaa !378
  store double %i.cv, ptr %i.cu, align 8, !tbaa !378
  %i.cx = add nuw nsw i64 %.05.i.i.i.i.i.i, 1
  %i.cy = mul nsw i64 %i.cx, %i.ap                ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cy ; 2 uses
  %i.db = load double, ptr %i.cz, align 8, !tbaa !378
  %i.dc = load double, ptr %i.da, align 8, !tbaa !378
  store double %i.dc, ptr %i.cz, align 8, !tbaa !378
  store double %i.db, ptr %i.da, align 8, !tbaa !378
  %i.dd = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.dd, %.0116461
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1502

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block588, %bb.k
  %i.de = mul nsw i64 %i.ap, %.0116461
  %i.df = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.de
  %i.dg = sub nsw i64 %i.ap, %i.cc                ; 4 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dg ; 11 uses
  %i.di = mul i64 %i.bx, %i.ap
  %i.dj = getelementptr [8 x i8], ptr %i.as, i64 %i.di
  %i.dk = getelementptr [8 x i8], ptr %i.dj, i64 %i.dg ; 10 uses
  %i.dl = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dm = and i64 %i.dl, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %i.dn = lshr exact i64 %i.dl, 3
  %i.do = and i64 %i.dn, 1
  %i.dp = call i64 @llvm.smin.i64(i64 %i.do, i64 %i.cc)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.l, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.dp, %bb.l ], [ %i.cc, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ] ; 13 uses
  %i.dq = sub nsw i64 %i.cc, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.dr = sdiv i64 %i.dq, 2                       ; 2 uses
  %i.ds = shl nsw i64 %i.dr, 1                    ; 2 uses
  %i.dt = add nsw i64 %i.ds, %.0.i.i.i.i.i.i.i    ; 6 uses
  %i.du = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.du, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check555 = icmp ult i64 %.0.i.i.i.i.i.i.i, 10
  br i1 %min.iters.check555, label %.lr.ph.i.i.i.i.i.i.i.preheader608, label %vector.memcheck546

vector.memcheck546:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.dv = mul i64 %i.ap, %i.ab
  %i.dw = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.dx = getelementptr i8, ptr %i.as, i64 %i.dv
  %scevgep547.a = getelementptr i8, ptr %i.dx, i64 %i.dw
  %i.dy = shl i64 %i.dg, 3                        ; 2 uses
  %scevgep548.a = getelementptr i8, ptr %scevgep547.a, i64 %i.dy
  %scevgep549.a = getelementptr i8, ptr %i.as, i64 %i.dw
  %i.dz = shl i64 %i.ap, 3
  %i.ea = mul i64 %i.dz, %i.bx
  %i.eb = getelementptr i8, ptr %scevgep549.a, i64 %i.ea
  %scevgep550 = getelementptr i8, ptr %i.eb, i64 %i.dy
  %bound0551 = icmp ult ptr %i.dh, %scevgep550
  %bound1552 = icmp ult ptr %i.dk, %scevgep548.a
  %found.conflict553 = and i1 %bound0551, %bound1552
  br i1 %found.conflict553, label %.lr.ph.i.i.i.i.i.i.i.preheader608, label %vector.ph556

vector.ph556:                                     ; preds = %vector.memcheck546
  %n.vec557 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body558

vector.body558:                                   ; preds = %vector.body558, %vector.ph556
  %index559 = phi i64 [ 0, %vector.ph556 ], [ %index.next564, %vector.body558 ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %index559 ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %index559 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %wide.load560.a = load <2 x double>, ptr %i.ec, align 8, !tbaa !378, !alias.scope !1503, !noalias !1506
  %wide.load561.a = load <2 x double>, ptr %i.ee, align 8, !tbaa !378, !alias.scope !1503, !noalias !1506
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %wide.load562.a = load <2 x double>, ptr %i.ed, align 8, !tbaa !378, !alias.scope !1506
  %wide.load563 = load <2 x double>, ptr %i.ef, align 8, !tbaa !378, !alias.scope !1506
  store <2 x double> %wide.load562.a, ptr %i.ec, align 8, !tbaa !378, !alias.scope !1503, !noalias !1506
  store <2 x double> %wide.load563, ptr %i.ee, align 8, !tbaa !378, !alias.scope !1503, !noalias !1506
  store <2 x double> %wide.load560.a, ptr %i.ed, align 8, !tbaa !378, !alias.scope !1506
  store <2 x double> %wide.load561.a, ptr %i.ef, align 8, !tbaa !378, !alias.scope !1506
  %index.next564 = add nuw i64 %index559, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next564, %n.vec557
  br i1 %i.eg, label %middle.block565, label %vector.body558, !llvm.loop !1508

middle.block565:                                  ; preds = %vector.body558
  %cmp.n566 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec557
  br i1 %cmp.n566, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader608

.lr.ph.i.i.i.i.i.i.i.preheader608:                ; preds = %vector.memcheck546, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block565
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck546 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec557, %middle.block565 ] ; 5 uses
  %.neg638 = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter619 = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod620.not = icmp eq i64 %xtraiter619, 0
  br i1 %lcmp.mod620.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader608
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.ej = load double, ptr %i.eh, align 8, !tbaa !378
  %i.ek = load double, ptr %i.ei, align 8, !tbaa !378
  store double %i.ek, ptr %i.eh, align 8, !tbaa !378
  store double %i.ej, ptr %i.ei, align 8, !tbaa !378
  %i.el = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader608
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader608 ], [ %i.el, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.em = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg638
  br i1 %i.em, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.ep = load double, ptr %i.en, align 8, !tbaa !378
  %i.eq = load double, ptr %i.eo, align 8, !tbaa !378
  store double %i.eq, ptr %i.en, align 8, !tbaa !378
  store double %i.ep, ptr %i.eo, align 8, !tbaa !378
  %i.er = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.er ; 2 uses
  %i.eu = load double, ptr %i.es, align 8, !tbaa !378
  %i.ev = load double, ptr %i.et, align 8, !tbaa !378
  store double %i.ev, ptr %i.es, align 8, !tbaa !378
  store double %i.eu, ptr %i.et, align 8, !tbaa !378
  %i.ew = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ew, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1509

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block565, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.ex = icmp sgt i64 %i.dq, 1
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i.i134, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i134, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.ey = icmp slt i64 %i.dt, %i.cc
  br i1 %i.ey, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ez = add i64 %.0.i.i.i.i.i.i.i, %i.ds
  %i.fa = add i64 %i.ez, %.sroa.0.1.i.i.lcssa
  %i.fb = sub i64 %i.ad, %i.fa                    ; 3 uses
  %min.iters.check533 = icmp ult i64 %i.fb, 18
  br i1 %min.iters.check533, label %.lr.ph.i17.i.i.i.i.i.i.preheader607, label %vector.memcheck522

vector.memcheck522:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.fc = mul i64 %i.ap, %i.ae
  %i.fd = shl i64 %i.dr, 4                        ; 2 uses
  %i.fe = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.ff = getelementptr i8, ptr %i.as, i64 %i.fc
  %i.fg = getelementptr i8, ptr %i.ff, i64 %i.fd
  %scevgep523.a = getelementptr i8, ptr %i.fg, i64 %i.fe
  %i.fh = shl i64 %i.dg, 3                        ; 2 uses
  %scevgep524.a = getelementptr i8, ptr %scevgep523.a, i64 %i.fh
  %i.fi = mul i64 %i.ap, %i.af
  %scevgep525.a = getelementptr i8, ptr %i.as, i64 %i.fi
  %i.fj = getelementptr i8, ptr %i.as, i64 %i.fd
  %scevgep526.a = getelementptr i8, ptr %i.fj, i64 %i.fe
  %i.fk = shl i64 %i.ap, 3                        ; 2 uses
  %i.fl = mul i64 %i.fk, %i.bx
  %i.fm = getelementptr i8, ptr %scevgep526.a, i64 %i.fl
  %scevgep527.a = getelementptr i8, ptr %i.fm, i64 %i.fh
  %i.fn = add i64 %i.ag, %.sroa.0.1.i.i.lcssa
  %i.fo = mul i64 %i.fk, %i.fn
  %scevgep528 = getelementptr i8, ptr %i.as, i64 %i.fo
  %bound0529 = icmp ult ptr %scevgep524.a, %scevgep528
  %bound1530 = icmp ult ptr %scevgep527.a, %scevgep525.a
  %found.conflict531 = and i1 %bound0529, %bound1530
  br i1 %found.conflict531, label %.lr.ph.i17.i.i.i.i.i.i.preheader607, label %vector.ph534

vector.ph534:                                     ; preds = %vector.memcheck522
  %n.vec535 = and i64 %i.fb, -4                   ; 3 uses
  %i.fp = add i64 %i.dt, %n.vec535
  br label %vector.body536

vector.body536:                                   ; preds = %vector.body536, %vector.ph534
  %index537 = phi i64 [ 0, %vector.ph534 ], [ %index.next542, %vector.body536 ] ; 2 uses
  %i.fq = add i64 %i.dt, %index537                ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.fq ; 3 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.fq ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %wide.load538.a = load <2 x double>, ptr %i.fr, align 8, !tbaa !378, !alias.scope !1510, !noalias !1513
  %wide.load539.a = load <2 x double>, ptr %i.ft, align 8, !tbaa !378, !alias.scope !1510, !noalias !1513
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %wide.load540.a = load <2 x double>, ptr %i.fs, align 8, !tbaa !378, !alias.scope !1513
  %wide.load541 = load <2 x double>, ptr %i.fu, align 8, !tbaa !378, !alias.scope !1513
  store <2 x double> %wide.load540.a, ptr %i.fr, align 8, !tbaa !378, !alias.scope !1510, !noalias !1513
  store <2 x double> %wide.load541, ptr %i.ft, align 8, !tbaa !378, !alias.scope !1510, !noalias !1513
  store <2 x double> %wide.load538.a, ptr %i.fs, align 8, !tbaa !378, !alias.scope !1513
  store <2 x double> %wide.load539.a, ptr %i.fu, align 8, !tbaa !378, !alias.scope !1513
  %index.next542 = add nuw i64 %index537, 4       ; 2 uses
  %i.fv = icmp eq i64 %index.next542, %n.vec535
  br i1 %i.fv, label %middle.block543, label %vector.body536, !llvm.loop !1515

middle.block543:                                  ; preds = %vector.body536
  %cmp.n544 = icmp eq i64 %i.fb, %n.vec535
  br i1 %cmp.n544, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader607

.lr.ph.i17.i.i.i.i.i.i.preheader607:              ; preds = %vector.memcheck522, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block543
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.dt, %vector.memcheck522 ], [ %i.dt, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.fp, %middle.block543 ] ; 6 uses
  %i.fw = add i64 %.05.i18.i.i.i.i.i.i.ph, %.sroa.0.1.i.i.lcssa
  %i.fx = sub i64 %i.ad, %i.fw
  %i.fy = add i64 %indvar, %.05.i18.i.i.i.i.i.i.ph
  %i.fz = add i64 %i.fy, %.sroa.0.1.i.i.lcssa
  %xtraiter621 = and i64 %i.fx, 1
  %lcmp.mod622.not = icmp eq i64 %xtraiter621, 0
  br i1 %lcmp.mod622.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader607
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.gc = load double, ptr %i.ga, align 8, !tbaa !378
  %i.gd = load double, ptr %i.gb, align 8, !tbaa !378
  store double %i.gd, ptr %i.ga, align 8, !tbaa !378
  store double %i.gc, ptr %i.gb, align 8, !tbaa !378
  %i.ge = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader607
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader607 ], [ %i.ge, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.gf = icmp eq i64 %i.g, %i.fz
  br i1 %i.gf, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.gp, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.gi = load double, ptr %i.gg, align 8, !tbaa !378
  %i.gj = load double, ptr %i.gh, align 8, !tbaa !378
  store double %i.gj, ptr %i.gg, align 8, !tbaa !378
  store double %i.gi, ptr %i.gh, align 8, !tbaa !378
  %i.gk = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.gk ; 2 uses
  %i.gn = load double, ptr %i.gl, align 8, !tbaa !378
  %i.go = load double, ptr %i.gm, align 8, !tbaa !378
  store double %i.go, ptr %i.gl, align 8, !tbaa !378
  store double %i.gn, ptr %i.gm, align 8, !tbaa !378
  %i.gp = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.gp, %i.cc
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !1516

.lr.ph.i.i.i.i.i.i134:                            ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i134
  %.021.i.i.i.i.i.i = phi i64 [ %i.gu, %.lr.ph.i.i.i.i.i.i134 ], [ %.0.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i ] ; 3 uses
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gr = load <2 x double>, ptr %i.gq, align 1, !tbaa !17
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gt = load <2 x double>, ptr %i.gs, align 16, !tbaa !17
  store <2 x double> %i.gt, ptr %i.gq, align 1, !tbaa !17
  store <2 x double> %i.gr, ptr %i.gs, align 16, !tbaa !17
  %i.gu = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.gv = icmp slt i64 %i.gu, %i.dt
  br i1 %i.gv, label %.lr.ph.i.i.i.i.i.i134, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1517

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block543, %._crit_edge.i.i.i.i.i.i
  %i.gw = load ptr, ptr %0, align 8, !tbaa !365   ; 7 uses
  %i.gx = load i64, ptr %i.a, align 8, !tbaa !376 ; 4 uses
  %i.gy = mul nsw i64 %i.gx, %.0116461            ; 2 uses
  %i.gz = getelementptr [8 x i8], ptr %i.gw, i64 %.0116461
  %i.ha = getelementptr [8 x i8], ptr %i.gz, i64 %i.gy ; 2 uses
  %i.hb = mul nsw i64 %i.gx, %i.bx
  %i.hc = getelementptr [8 x i8], ptr %i.gw, i64 %i.bx ; 3 uses
  %i.hd = getelementptr [8 x i8], ptr %i.hc, i64 %i.hb ; 2 uses
  %i.he = load double, ptr %i.ha, align 8, !tbaa !378
  %i.hf = load double, ptr %i.hd, align 8, !tbaa !378
  store double %i.hf, ptr %i.ha, align 8, !tbaa !378
  store double %i.he, ptr %i.hd, align 8, !tbaa !378
  %invariant.gep = getelementptr [8 x i8], ptr %i.gw, i64 %i.gy ; 2 uses
  %.0115424 = add nuw nsw i64 %.0116461, 1        ; 7 uses
  %.not453 = icmp eq i64 %.sroa.0.1.i.i.lcssa, 1
  br i1 %.not453, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %smax507 = call i64 @llvm.smax.i64(i64 %i.ai, i64 %i.bx)
  %i.hg = add i64 %smax507, %i.ah                 ; 3 uses
  %min.iters.check509 = icmp ugt i64 %i.hg, 9
  %ident.check495.not = icmp eq i64 %i.gx, 1
  %or.cond603.a = and i1 %min.iters.check509, %ident.check495.not
  br i1 %or.cond603.a, label %vector.memcheck496, label %.lr.ph.preheader606

vector.memcheck496:                               ; preds = %.lr.ph.preheader
  %i.hh = getelementptr i8, ptr %i.gw, i64 %i.aj
  %scevgep497 = getelementptr i8, ptr %i.hh, i64 8
  %i.hi = getelementptr i8, ptr %i.gw, i64 %i.aj
  %smax = call i64 @llvm.smax.i64(i64 %i.ak, i64 %i.bx)
  %reass.sub = sub i64 %smax, %indvar
  %i.hj = shl i64 %reass.sub, 3                   ; 2 uses
  %scevgep499 = getelementptr i8, ptr %i.hi, i64 %i.hj
  %i.hk = getelementptr i8, ptr %i.gw, i64 %i.al
  %scevgep500 = getelementptr i8, ptr %i.hk, i64 8
  %i.hl = shl i64 %i.bx, 3                        ; 2 uses
  %scevgep501 = getelementptr i8, ptr %scevgep500, i64 %i.hl
  %i.hm = getelementptr i8, ptr %i.gw, i64 %i.al
  %i.hn = getelementptr i8, ptr %i.hm, i64 %i.hj
  %scevgep503 = getelementptr i8, ptr %i.hn, i64 %i.hl
  %bound0504 = icmp ult ptr %scevgep497, %scevgep503
  %bound1505 = icmp ult ptr %scevgep501, %scevgep499
  %found.conflict506 = and i1 %bound0504, %bound1505
  br i1 %found.conflict506, label %.lr.ph.preheader606, label %vector.ph510

vector.ph510:                                     ; preds = %vector.memcheck496
  %n.vec511 = and i64 %i.hg, -4                   ; 3 uses
  %i.ho = add i64 %.0115424, %n.vec511
  br label %vector.body512

vector.body512:                                   ; preds = %vector.body512, %vector.ph510
  %index513 = phi i64 [ 0, %vector.ph510 ], [ %index.next518, %vector.body512 ] ; 2 uses
  %i.hp = add nuw i64 %.0115424, %index513        ; 2 uses
  %i.hq = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.hp ; 3 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 16     ; 2 uses
  %wide.load514.a = load <2 x double>, ptr %i.hq, align 8, !tbaa !378, !alias.scope !1518, !noalias !1521
  %wide.load515.a = load <2 x double>, ptr %i.hr, align 8, !tbaa !378, !alias.scope !1518, !noalias !1521
  %i.hs = getelementptr [8 x i8], ptr %i.hc, i64 %i.hp ; 3 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 16     ; 2 uses
  %wide.load516.a = load <2 x double>, ptr %i.hs, align 8, !tbaa !378, !alias.scope !1521
  %wide.load517 = load <2 x double>, ptr %i.ht, align 8, !tbaa !378, !alias.scope !1521
  store <2 x double> %wide.load516.a, ptr %i.hq, align 8, !tbaa !378, !alias.scope !1518, !noalias !1521
  store <2 x double> %wide.load517, ptr %i.hr, align 8, !tbaa !378, !alias.scope !1518, !noalias !1521
  store <2 x double> %wide.load514.a, ptr %i.hs, align 8, !tbaa !378, !alias.scope !1521
  store <2 x double> %wide.load515.a, ptr %i.ht, align 8, !tbaa !378, !alias.scope !1521
  %index.next518 = add nuw i64 %index513, 4       ; 2 uses
  %i.hu = icmp eq i64 %index.next518, %n.vec511
  br i1 %i.hu, label %middle.block519, label %vector.body512, !llvm.loop !1523

middle.block519:                                  ; preds = %vector.body512
  %cmp.n520 = icmp eq i64 %i.hg, %n.vec511
  br i1 %cmp.n520, label %.loopexit, label %.lr.ph.preheader606

.lr.ph.preheader606:                              ; preds = %vector.memcheck496, %.lr.ph.preheader, %middle.block519
  %.0115425.ph = phi i64 [ %.0115424, %vector.memcheck496 ], [ %.0115424, %.lr.ph.preheader ], [ %i.ho, %middle.block519 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader606, %.lr.ph
  %.0115425 = phi i64 [ %.0115, %.lr.ph ], [ %.0115425.ph, %.lr.ph.preheader606 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0115425 ; 2 uses
  %i.hv = load double, ptr %gep, align 8, !tbaa !378
  %i.hw = mul nsw i64 %.0115425, %i.gx
  %i.hx = getelementptr [8 x i8], ptr %i.hc, i64 %i.hw ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !378
  store double %i.hy, ptr %gep, align 8, !tbaa !378
  store double %i.hv, ptr %i.hx, align 8, !tbaa !378
end_hunk_1
