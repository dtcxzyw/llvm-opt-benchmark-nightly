inline.NumInlined: 5314
inline.NumDeleted: 2988
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_:bb.a
  store <2 x double> %i.fz, ptr %i.fi, align 16, !tbaa !10
  %i.ga = add nsw i64 %.03246, 2                  ; 2 uses
  %i.gb = icmp slt i64 %i.ga, %i.cq
  br i1 %i.gb, label %.lr.ph47, label %.preheader, !llvm.loop !263

._crit_edge:                                      ; preds = %scalar.ph88, %middle.block101, %.preheader
  %i.gc = add nsw i64 %.03550, %i.cg
  %i.gd = srem i64 %i.gc, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bz, i64 %i.gd)
  %i.ge = add nuw nsw i64 %.03451, 1              ; 2 uses
  %exitcond54.not = icmp eq i64 %i.ge, %i.cb
  br i1 %exitcond54.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit, label %bb.c, !llvm.loop !264

scalar.ph88:                                      ; preds = %scalar.ph88.preheader, %scalar.ph88
  %.048 = phi i64 [ %i.gm, %scalar.ph88 ], [ %.048.ph, %scalar.ph88.preheader ] ; 3 uses
  %i.gf = getelementptr [8 x i8], ptr %i.du, i64 %.048 ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.048
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !8
  %i.gi = load double, ptr %i.ee, align 8, !tbaa !8
  %i.gj = fmul double %i.gh, %i.gi
  %i.gk = load double, ptr %i.gf, align 8, !tbaa !8
  %i.gl = fsub double %i.gk, %i.gj
  store double %i.gl, ptr %i.gf, align 8, !tbaa !8
  %i.gm = add nsw i64 %.048, 1                    ; 2 uses
  %i.gn = icmp slt i64 %i.gm, %i.bz
  br i1 %i.gn, label %scalar.ph88, label %._crit_edge, !llvm.loop !265

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(40) %7) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 6 uses
  %9 = alloca %"struct.Eigen::internal::gemm_pack_lhs", align 1 ; 6 uses
  %10 = alloca %"struct.Eigen::internal::gemm_pack_rhs", align 1 ; 4 uses
  %11 = alloca %"class.Eigen::internal::blas_data_mapper.984", align 8 ; 6 uses
  %12 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %13 = alloca %"class.Eigen::internal::blas_data_mapper.984", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.984", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !142  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !139
  %.sroa.speculated243 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 5 uses
  %i.e = mul nsw i64 %.sroa.speculated243, %i.b   ; 4 uses
  %i.f = mul nsw i64 %i.b, %1                     ; 4 uses
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169: ; preds = %bb.a
  %i.i = load ptr, ptr %7, align 8, !tbaa !143    ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169
  %i.j = shl nuw i64 %i.e, 3                      ; 2 uses
  %i.k = icmp samesign ult i64 %i.e, 16385
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw nsw i64 %i.j, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.j) #25 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169, %bb.d
  %i.q = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 6 uses
  %i.s = icmp samesign ugt i64 %i.e, 16384        ; 2 uses
  %i.t = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.t, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !19
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.noexc190 unwind label %bb.af

.noexc190:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !144  ; 2 uses
  %.not156 = icmp eq ptr %i.w, null
  br i1 %.not156, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.x = shl nuw i64 %i.f, 3                      ; 2 uses
  %i.y = icmp samesign ult i64 %i.f, 16385
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw nsw i64 %i.x, 15
  %i.aa = alloca i8, i64 %i.z, align 16           ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #25 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !19
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.noexc193 unwind label %bb.ag

.noexc193:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.ah = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.q, !prof !266

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #22
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #22
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #22
  br label %.body

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.al = icmp sgt i64 %1, 0
  br i1 %i.al, label %bb.r, label %.thread.thread

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !267
  %.sroa.speculated275 = tail call i64 @llvm.smax.i64(i64 %6, i64 %0)
  %i.an = shl i64 %.sroa.speculated275, 5
  %.fr = freeze i64 %i.am
  %i.ao = udiv i64 %.fr, %i.an
  %i.ap = and i64 %i.ao, 576460752303423484       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp sgt i64 %0, 0
  %. = select i1 %i.aq, i64 4, i64 %i.ap          ; 5 uses
  br i1 %i.ar, label %.lr.ph314.us.preheader, label %._crit_edge

.thread.thread:                                   ; preds = %bb.q
  %i.as = icmp sgt i64 %0, 0
  br i1 %i.as, label %.lr.ph325.split.preheader, label %._crit_edge

.lr.ph325.split.preheader:                        ; preds = %.thread.thread
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.av = icmp slt i64 %i.b, %0
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph314.us.preheader:                           ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bb = shl i64 %i.b, 3
  %i.bc = mul i64 %., %6
  %i.bd = shl i64 %i.bc, 3
  %i.be = shl i64 %6, 3                           ; 3 uses
  %i.bf = shl i64 %3, 3
  %i.bg = add i64 %i.bf, 8                        ; 3 uses
  %i.bh = mul i64 %i.b, %i.bg
  %i.bi = shl i64 %3, 5
  %i.bj = add i64 %i.bi, 32
  %i.bk = shl i64 %3, 3
  %stride.check.1 = icmp slt i64 %i.be, 0
  %16 = shl i64 %i.bg, 1
  %i.bl = shl i64 %3, 4
  %stride.check.2 = icmp slt i64 %i.be, 0
  br label %.lr.ph314.us

.lr.ph314.us:                                     ; preds = %.loopexit.us, %.lr.ph314.us.preheader
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph314.us.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ %0, %.lr.ph314.us.preheader ] ; 2 uses
  %.0132323.us = phi i64 [ %i.ca, %.loopexit.us ], [ 0, %.lr.ph314.us.preheader ] ; 4 uses
  %i.bm = mul i64 %i.bb, %indvar                  ; 3 uses
  %i.bn = mul i64 %i.bh, %indvar                  ; 4 uses
  %smin = call i64 @llvm.smin.i64(i64 %i.b, i64 %indvars.iv)
  %i.bo = sub nsw i64 %0, %.0132323.us
  %.sroa.speculated218.us = call i64 @llvm.smin.i64(i64 %i.b, i64 %i.bo) ; 8 uses
  %i.bp = icmp sgt i64 %.sroa.speculated218.us, 0
  br i1 %i.bp, label %.lr.ph308.us.us.preheader, label %._crit_edge315.us

.lr.ph308.us.us.preheader:                        ; preds = %.lr.ph314.us
  %i.bq = getelementptr i8, ptr %4, i64 %i.bm
  %i.br = getelementptr i8, ptr %4, i64 %i.bm
  %17 = getelementptr i8, ptr %2, i64 %i.bn
  %18 = getelementptr i8, ptr %17, i64 8
  %invariant.gep389 = getelementptr i8, ptr %18, i64 %i.bg
  %i.bs = getelementptr i8, ptr %2, i64 %i.bn
  %i.bt = getelementptr i8, ptr %4, i64 %i.bm
  %19 = getelementptr i8, ptr %2, i64 %i.bn
  %20 = getelementptr i8, ptr %19, i64 8
  %invariant.gep391 = getelementptr i8, ptr %20, i64 %16
  %i.bu = getelementptr i8, ptr %2, i64 %i.bn
  br label %.lr.ph308.us.us

bb.s:                                             ; preds = %.lr.ph.us330, %bb.w
  %.0322.us = phi i64 [ %i.ca, %.lr.ph.us330 ], [ %i.by, %bb.w ] ; 4 uses
  %i.bv = sub nsw i64 %0, %.0322.us
  %.sroa.speculated.us = call i64 @llvm.smin.i64(i64 %i.bv, i64 %.sroa.speculated243) ; 3 uses
  %i.bw = icmp sgt i64 %.sroa.speculated.us, 0
  br i1 %i.bw, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %gep.us327 = getelementptr [8 x i8], ptr %invariant.gep.us331, i64 %.0322.us
  store ptr %gep.us327, ptr %14, align 8
  store i64 %3, ptr %i.az, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.sroa.speculated218.us, i64 noundef %.sroa.speculated.us, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %.split.us332

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.bx = getelementptr [8 x i8], ptr %4, i64 %.0322.us
  store ptr %i.bx, ptr %15, align 8
  store i64 %6, ptr %i.ba, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated.us, i64 noundef %.sroa.speculated218.us, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.v unwind label %.split334.us

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.by = add nsw i64 %.0322.us, %.sroa.speculated243 ; 2 uses
  %i.bz = icmp slt i64 %i.by, %0
  br i1 %i.bz, label %bb.s, label %.loopexit.us, !llvm.loop !269

.loopexit.us:                                     ; preds = %bb.w
  %indvars.iv.next = sub i64 %indvars.iv, %i.b
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph314.us, !llvm.loop !270

._crit_edge315.us:                                ; preds = %._crit_edge309.us.us, %.lr.ph314.us
  %i.ca = add nsw i64 %.0132323.us, %i.b          ; 3 uses
  %i.cb = icmp slt i64 %i.ca, %0
  br i1 %i.cb, label %.lr.ph.us330, label %._crit_edge

.lr.ph308.us.us:                                  ; preds = %.lr.ph308.us.us.preheader, %._crit_edge309.us.us
  %indvar375 = phi i64 [ %indvar.next376, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 3 uses
  %.0131312.us.us = phi i64 [ %i.gu, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 10 uses
  %i.cc = mul i64 %i.bd, %indvar375               ; 3 uses
  %i.cd = or disjoint i64 %.0131312.us.us, 1
  %i.ce = mul i64 %., %indvar375                  ; 2 uses
  %i.cf = sub i64 %1, %i.ce
  %smin379 = call i64 @llvm.smin.i64(i64 %., i64 %i.cf)
  %i.cg = add i64 %smin379, %.0131312.us.us
  %smax = call i64 @llvm.smax.i64(i64 %i.cd, i64 %i.cg)
  %i.ch = xor i64 %i.ce, -1
  %i.ci = add i64 %smax, %i.ch
  %i.cj = mul i64 %i.be, %i.ci
  %i.ck = sub nsw i64 %1, %.0131312.us.us         ; 2 uses
  %.sroa.speculated213.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.ck) ; 3 uses
  %i.cl = add nsw i64 %.sroa.speculated213.us.us, %.0131312.us.us ; 3 uses
  %i.cm = icmp slt i64 %i.ck, 1
  %i.cn = mul nuw nsw i64 %.0131312.us.us, %.sroa.speculated218.us
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cn ; 2 uses
  %i.cp = mul nsw i64 %.0131312.us.us, %6
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %4, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bq, i64 %i.cc
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.cj
  %i.cs = getelementptr i8, ptr %i.br, i64 %i.cc
  %i.ct = getelementptr i8, ptr %i.bt, i64 %i.cc
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %.lr.ph308.us.us
  %indvar377 = phi i64 [ %indvar.next378, %bb.ac ], [ 0, %.lr.ph308.us.us ] ; 3 uses
  %indvars.iv341 = phi i64 [ %indvars.iv.next342, %bb.ac ], [ %smin, %.lr.ph308.us.us ] ; 4 uses
  %.0130306.us.us = phi i64 [ %i.ea, %bb.ac ], [ 0, %.lr.ph308.us.us ] ; 5 uses
  %i.cu = shl i64 %indvar377, 5                   ; 3 uses
  %scevgep380 = getelementptr i8, ptr %i.cr, i64 %i.cu
  %smin381 = call i64 @llvm.smin.i64(i64 %indvars.iv341, i64 4)
  %i.cv = shl i64 %smin381, 3                     ; 3 uses
  %scevgep382 = getelementptr i8, ptr %scevgep380, i64 %i.cv ; 2 uses
  %i.cw = mul i64 %i.bj, %indvar377               ; 4 uses
  %i.cx = sub nsw i64 %.sroa.speculated218.us, %.0130306.us.us ; 6 uses
  %.sroa.speculated207.us.us = call i64 @llvm.smin.i64(i64 %i.cx, i64 4) ; 9 uses
  %i.cy = icmp slt i64 %i.cx, 1
  %i.cz = add nsw i64 %.0130306.us.us, %.0132323.us ; 10 uses
  %brmerge = select i1 %i.cy, i1 true, i1 %i.cm
  br i1 %brmerge, label %._crit_edge305.split.us.us, label %.lr.ph300.us.us

.lr.ph300.us.us:                                  ; preds = %bb.x
  %i.da = add nsw i64 %.sroa.speculated207.us.us, -1
  %i.db = add nsw i64 %i.cz, 1                    ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %4, i64 %i.cz
  %i.dd = getelementptr [8 x i8], ptr %4, i64 %i.db
  %i.de = mul nsw i64 %i.cz, %3
  %i.df = getelementptr [8 x i8], ptr %2, i64 %i.db
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.de
  %i.dh = icmp sgt i64 %i.cx, 1
  br i1 %i.dh, label %.lr.ph.us.us, label %._crit_edge301.split.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph300.us.us, %._crit_edge.us.us
  %.0128298.us.us = phi i64 [ %i.ec, %._crit_edge.us.us ], [ %.0131312.us.us, %.lr.ph300.us.us ] ; 2 uses
  %i.di = mul nsw i64 %.0128298.us.us, %6         ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %i.dc, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !8
  %i.dl = getelementptr [8 x i8], ptr %i.dd, i64 %i.di
  %i.dm = fneg double %i.dk
  br label %scalar.ph

scalar.ph:                                        ; preds = %.lr.ph.us.us, %scalar.ph
  %.0127297.us.us = phi i64 [ %i.ds, %scalar.ph ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.0127297.us.us
  %i.do = load double, ptr %i.dn, align 8, !tbaa !8
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.0127297.us.us ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !8
  %i.dr = call double @llvm.fmuladd.f64(double %i.dm, double %i.do, double %i.dq)
  store double %i.dr, ptr %i.dp, align 8, !tbaa !8
  %i.ds = add nuw nsw i64 %.0127297.us.us, 1      ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %i.da
  br i1 %i.dt, label %scalar.ph, label %._crit_edge.us.us, !llvm.loop !271

._crit_edge305.split.us.us:                       ; preds = %.lr.ph300.us.us.2, %._crit_edge.us.us.2, %._crit_edge301.split.us.us, %._crit_edge301.split.us.us.1, %bb.x
  %i.du = sub nsw i64 %i.cx, %.sroa.speculated207.us.us ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.cz
  store ptr %gep.us.us, ptr %11, align 8
  store i64 %6, ptr %i.aw, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull %i.co, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %.sroa.speculated207.us.us, i64 noundef %.sroa.speculated213.us.us, i64 noundef %.sroa.speculated218.us, i64 noundef %.0130306.us.us)
          to label %bb.y unwind label %.split.us.split.us

bb.y:                                             ; preds = %._crit_edge305.split.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.dw = add nsw i64 %.sroa.speculated207.us.us, %i.cz ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.dx = mul nsw i64 %i.cz, %3
  %i.dy = getelementptr [8 x i8], ptr %2, i64 %i.dw
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %i.dx
  store ptr %i.dz, ptr %12, align 8
  store i64 %3, ptr %i.ax, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %.sroa.speculated207.us.us, i64 noundef %i.du, i64 noundef 0, i64 noundef 0)
          to label %bb.aa unwind label %.split317.us.split.us

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %gep311.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.dw
  store ptr %gep311.us.us, ptr %13, align 8
  store i64 %6, ptr %i.ay, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.r, ptr noundef nonnull %i.co, i64 noundef %i.du, i64 noundef %.sroa.speculated207.us.us, i64 noundef %.sroa.speculated213.us.us, double noundef -1.000000e+00, i64 noundef %.sroa.speculated207.us.us, i64 noundef %.sroa.speculated218.us, i64 noundef 0, i64 noundef %.0130306.us.us)
          to label %bb.ab unwind label %.split320.us.split.us

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %i.ea = add nuw nsw i64 %.0130306.us.us, 4      ; 2 uses
  %i.eb = icmp slt i64 %i.ea, %.sroa.speculated218.us
  %indvars.iv.next342 = add i64 %indvars.iv341, -4
  %indvar.next378 = add i64 %indvar377, 1
  br i1 %i.eb, label %bb.x, label %._crit_edge309.us.us, !llvm.loop !272

._crit_edge.us.us:                                ; preds = %scalar.ph
  %i.ec = add nuw nsw i64 %.0128298.us.us, 1      ; 2 uses
  %i.ed = icmp slt i64 %i.ec, %i.cl
  br i1 %i.ed, label %.lr.ph.us.us, label %._crit_edge301.split.us.us, !llvm.loop !273

._crit_edge301.split.us.us:                       ; preds = %._crit_edge.us.us, %.lr.ph300.us.us
  %exitcond.not = icmp slt i64 %indvars.iv341, 2
  br i1 %exitcond.not, label %._crit_edge305.split.us.us, label %.lr.ph300.us.us.1

.lr.ph300.us.us.1:                                ; preds = %._crit_edge301.split.us.us
  %i.ee = getelementptr i8, ptr %i.cs, i64 %i.cu
  %scevgep.1 = getelementptr i8, ptr %i.ee, i64 16
  %gep390 = getelementptr i8, ptr %invariant.gep389, i64 %i.cw
  %i.ef = getelementptr i8, ptr %i.bs, i64 %i.cw
  %i.eg = getelementptr i8, ptr %i.ef, i64 %i.cv
  %scevgep384.1 = getelementptr i8, ptr %i.eg, i64 %i.bk
  %i.eh = add nsw i64 %i.cz, 1                    ; 2 uses
  %i.ei = add nsw i64 %.sroa.speculated207.us.us, -2 ; 4 uses
  %i.ej = add nsw i64 %i.cz, 2                    ; 2 uses
  %i.ek = getelementptr [8 x i8], ptr %4, i64 %i.eh
  %i.el = getelementptr [8 x i8], ptr %4, i64 %i.ej
  %i.em = mul nsw i64 %i.eh, %3
  %i.en = getelementptr [8 x i8], ptr %2, i64 %i.ej
  %i.eo = getelementptr [8 x i8], ptr %i.en, i64 %i.em ; 2 uses
  %i.ep = icmp sgt i64 %i.cx, 2
  br i1 %i.ep, label %.lr.ph.us.us.preheader.1, label %._crit_edge301.split.us.us.1

.lr.ph.us.us.preheader.1:                         ; preds = %.lr.ph300.us.us.1
  %min.iters.check.1 = icmp ult i64 %i.ei, 4
  %bound0.1 = icmp ult ptr %scevgep.1, %scevgep384.1
  %bound1.1 = icmp ult ptr %gep390, %scevgep382
  %found.conflict.1 = and i1 %bound0.1, %bound1.1
  %i.eq = or i1 %found.conflict.1, %stride.check.1
  %n.vec.1 = and i64 %i.ei, 9223372036854775804   ; 3 uses
  %cmp.n.1 = icmp eq i64 %i.ei, %n.vec.1
  br label %.lr.ph.us.us.1

.lr.ph.us.us.1:                                   ; preds = %._crit_edge.us.us.1, %.lr.ph.us.us.preheader.1
  %.0128298.us.us.1 = phi i64 [ %i.fk, %._crit_edge.us.us.1 ], [ %.0131312.us.us, %.lr.ph.us.us.preheader.1 ] ; 2 uses
  %i.er = mul nsw i64 %.0128298.us.us.1, %6       ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %i.ek, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !8
  %i.eu = getelementptr [8 x i8], ptr %i.el, i64 %i.er ; 2 uses
  %i.ev = fneg double %i.et                       ; 2 uses
  %brmerge393 = select i1 %min.iters.check.1, i1 true, i1 %i.eq
  br i1 %brmerge393, label %scalar.ph.preheader.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %.lr.ph.us.us.1
  %broadcast.splatinsert.1 = insertelement <2 x double> poison, double %i.ev, i64 0
  %broadcast.splat.1 = shufflevector <2 x double> %broadcast.splatinsert.1, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %index.1 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load.1 = load <2 x double>, ptr %i.ew, align 8, !tbaa !8, !alias.scope !274
  %wide.load385.1.a = load <2 x double>, ptr %i.ex, align 8, !tbaa !8, !alias.scope !274
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %index.1 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %wide.load386.1.a = load <2 x double>, ptr %i.ey, align 8, !tbaa !8, !alias.scope !277, !noalias !274
  %wide.load387.1 = load <2 x double>, ptr %i.ez, align 8, !tbaa !8, !alias.scope !277, !noalias !274
  %i.fa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat.1, <2 x double> %wide.load.1, <2 x double> %wide.load386.1.a)
  %i.fb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat.1, <2 x double> %wide.load385.1.a, <2 x double> %wide.load387.1)
  store <2 x double> %i.fa, ptr %i.ey, align 8, !tbaa !8, !alias.scope !277, !noalias !274
  store <2 x double> %i.fb, ptr %i.ez, align 8, !tbaa !8, !alias.scope !277, !noalias !274
  %index.next.1 = add nuw i64 %index.1, 4         ; 2 uses
  %i.fc = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.fc, label %middle.block.1, label %vector.body.1, !llvm.loop !279

middle.block.1:                                   ; preds = %vector.body.1
  br i1 %cmp.n.1, label %._crit_edge.us.us.1, label %scalar.ph.preheader.1

scalar.ph.preheader.1:                            ; preds = %.lr.ph.us.us.1, %middle.block.1
  %.0127297.us.us.ph.1 = phi i64 [ %n.vec.1, %middle.block.1 ], [ 0, %.lr.ph.us.us.1 ]
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph.1, %scalar.ph.preheader.1
  %.0127297.us.us.1 = phi i64 [ %i.fi, %scalar.ph.1 ], [ %.0127297.us.us.ph.1, %scalar.ph.preheader.1 ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.0127297.us.us.1
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !8
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.0127297.us.us.1 ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !8
  %i.fh = call double @llvm.fmuladd.f64(double %i.ev, double %i.fe, double %i.fg)
  store double %i.fh, ptr %i.ff, align 8, !tbaa !8
  %i.fi = add nuw nsw i64 %.0127297.us.us.1, 1    ; 2 uses
  %i.fj = icmp slt i64 %i.fi, %i.ei
  br i1 %i.fj, label %scalar.ph.1, label %._crit_edge.us.us.1, !llvm.loop !271

._crit_edge.us.us.1:                              ; preds = %scalar.ph.1, %middle.block.1
  %i.fk = add nuw nsw i64 %.0128298.us.us.1, 1    ; 2 uses
  %i.fl = icmp slt i64 %i.fk, %i.cl
  br i1 %i.fl, label %.lr.ph.us.us.1, label %._crit_edge301.split.us.us.1, !llvm.loop !273

._crit_edge301.split.us.us.1:                     ; preds = %._crit_edge.us.us.1, %.lr.ph300.us.us.1
  %exitcond.not.1 = icmp eq i64 %indvars.iv341, 2
  br i1 %exitcond.not.1, label %._crit_edge305.split.us.us, label %.lr.ph300.us.us.2

.lr.ph300.us.us.2:                                ; preds = %._crit_edge301.split.us.us.1
  %i.fm = getelementptr i8, ptr %i.ct, i64 %i.cu
  %scevgep.2 = getelementptr i8, ptr %i.fm, i64 24
  %gep392 = getelementptr i8, ptr %invariant.gep391, i64 %i.cw
  %i.fn = getelementptr i8, ptr %i.bu, i64 %i.cw
  %i.fo = getelementptr i8, ptr %i.fn, i64 %i.cv
  %scevgep384.2 = getelementptr i8, ptr %i.fo, i64 %i.bl
  %i.fp = add nsw i64 %i.cz, 2                    ; 2 uses
  %i.fq = add nsw i64 %.sroa.speculated207.us.us, -3 ; 4 uses
  %i.fr = add nsw i64 %i.cz, 3                    ; 2 uses
  %i.fs = getelementptr [8 x i8], ptr %4, i64 %i.fp
  %i.ft = getelementptr [8 x i8], ptr %4, i64 %i.fr
  %i.fu = mul nsw i64 %i.fp, %3
  %i.fv = getelementptr [8 x i8], ptr %2, i64 %i.fr
  %i.fw = getelementptr [8 x i8], ptr %i.fv, i64 %i.fu ; 2 uses
  %i.fx = icmp sgt i64 %i.cx, 3
  br i1 %i.fx, label %.lr.ph.us.us.preheader.2, label %._crit_edge305.split.us.us

.lr.ph.us.us.preheader.2:                         ; preds = %.lr.ph300.us.us.2
  %min.iters.check.2 = icmp ult i64 %i.fq, 4
  %bound0.2 = icmp ult ptr %scevgep.2, %scevgep384.2
  %bound1.2 = icmp ult ptr %gep392, %scevgep382
  %found.conflict.2 = and i1 %bound0.2, %bound1.2
  %i.fy = or i1 %found.conflict.2, %stride.check.2
  %n.vec.2 = and i64 %i.fq, 9223372036854775804   ; 3 uses
  %cmp.n.2 = icmp eq i64 %i.fq, %n.vec.2
  br label %.lr.ph.us.us.2

.lr.ph.us.us.2:                                   ; preds = %._crit_edge.us.us.2, %.lr.ph.us.us.preheader.2
  %.0128298.us.us.2 = phi i64 [ %i.gs, %._crit_edge.us.us.2 ], [ %.0131312.us.us, %.lr.ph.us.us.preheader.2 ] ; 2 uses
  %i.fz = mul nsw i64 %.0128298.us.us.2, %6       ; 2 uses
  %i.ga = getelementptr [8 x i8], ptr %i.fs, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !8
  %i.gc = getelementptr [8 x i8], ptr %i.ft, i64 %i.fz ; 2 uses
  %i.gd = fneg double %i.gb                       ; 2 uses
  %brmerge394 = select i1 %min.iters.check.2, i1 true, i1 %i.fy
  br i1 %brmerge394, label %scalar.ph.preheader.2, label %vector.ph.2

vector.ph.2:                                      ; preds = %.lr.ph.us.us.2
  %broadcast.splatinsert.2 = insertelement <2 x double> poison, double %i.gd, i64 0
  %broadcast.splat.2 = shufflevector <2 x double> %broadcast.splatinsert.2, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.2, %vector.ph.2
  %index.2 = phi i64 [ 0, %vector.ph.2 ], [ %index.next.2, %vector.body.2 ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %index.2 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load.2 = load <2 x double>, ptr %i.ge, align 8, !tbaa !8, !alias.scope !274
  %wide.load385.2.a = load <2 x double>, ptr %i.gf, align 8, !tbaa !8, !alias.scope !274
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %index.2 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %wide.load386.2.a = load <2 x double>, ptr %i.gg, align 8, !tbaa !8, !alias.scope !277, !noalias !274
  %wide.load387.2 = load <2 x double>, ptr %i.gh, align 8, !tbaa !8, !alias.scope !277, !noalias !274
  %i.gi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat.2, <2 x double> %wide.load.2, <2 x double> %wide.load386.2.a)
  %i.gj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat.2, <2 x double> %wide.load385.2.a, <2 x double> %wide.load387.2)
  store <2 x double> %i.gi, ptr %i.gg, align 8, !tbaa !8, !alias.scope !277, !noalias !274
  store <2 x double> %i.gj, ptr %i.gh, align 8, !tbaa !8, !alias.scope !277, !noalias !274
  %index.next.2 = add nuw i64 %index.2, 4         ; 2 uses
  %i.gk = icmp eq i64 %index.next.2, %n.vec.2
  br i1 %i.gk, label %middle.block.2, label %vector.body.2, !llvm.loop !279

middle.block.2:                                   ; preds = %vector.body.2
  br i1 %cmp.n.2, label %._crit_edge.us.us.2, label %scalar.ph.preheader.2

scalar.ph.preheader.2:                            ; preds = %.lr.ph.us.us.2, %middle.block.2
  %.0127297.us.us.ph.2 = phi i64 [ %n.vec.2, %middle.block.2 ], [ 0, %.lr.ph.us.us.2 ]
  br label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.2, %scalar.ph.preheader.2
  %.0127297.us.us.2 = phi i64 [ %i.gq, %scalar.ph.2 ], [ %.0127297.us.us.ph.2, %scalar.ph.preheader.2 ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.0127297.us.us.2
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !8
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %.0127297.us.us.2 ; 2 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !8
  %i.gp = call double @llvm.fmuladd.f64(double %i.gd, double %i.gm, double %i.go)
  store double %i.gp, ptr %i.gn, align 8, !tbaa !8
  %i.gq = add nuw nsw i64 %.0127297.us.us.2, 1    ; 2 uses
  %i.gr = icmp slt i64 %i.gq, %i.fq
  br i1 %i.gr, label %scalar.ph.2, label %._crit_edge.us.us.2, !llvm.loop !271

._crit_edge.us.us.2:                              ; preds = %scalar.ph.2, %middle.block.2
  %i.gs = add nuw nsw i64 %.0128298.us.us.2, 1    ; 2 uses
  %i.gt = icmp slt i64 %i.gs, %i.cl
  br i1 %i.gt, label %.lr.ph.us.us.2, label %._crit_edge305.split.us.us, !llvm.loop !273

._crit_edge309.us.us:                             ; preds = %bb.ac
  %i.gu = add nuw nsw i64 %.0131312.us.us, %.     ; 2 uses
  %i.gv = icmp slt i64 %i.gu, %1
  %indvar.next376 = add i64 %indvar375, 1
  br i1 %i.gv, label %.lr.ph308.us.us, label %._crit_edge315.us, !llvm.loop !280

.lr.ph.us330:                                     ; preds = %._crit_edge315.us
  %i.gw = mul nsw i64 %.0132323.us, %3
  %invariant.gep.us331 = getelementptr [8 x i8], ptr %2, i64 %i.gw
  br label %bb.s

.split.us332:                                     ; preds = %bb.t
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.split334.us:                                     ; preds = %bb.u
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.split.us.split.us:                               ; preds = %._crit_edge305.split.us.us
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

.split317.us.split.us:                            ; preds = %bb.z
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.body

.split320.us.split.us:                            ; preds = %bb.aa
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.body

.loopexit:                                        ; preds = %bb.an
  %i.hc = sub nsw i64 %0, %i.hh
  %.sroa.speculated218 = call i64 @llvm.smin.i64(i64 %i.b, i64 %i.hc)
  %i.hd = add nsw i64 %i.hh, %i.b                 ; 2 uses
  %i.he = icmp slt i64 %i.hd, %0
  br i1 %i.he, label %.lr.ph, label %._crit_edge, !llvm.loop !270

._crit_edge:                                      ; preds = %.loopexit, %._crit_edge315.us, %.lr.ph325.split.preheader, %bb.r, %.thread.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %i.ag, label %bb.ad, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.ad:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.ae) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.ad
  br i1 %i.s, label %bb.ae, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

bb.ae:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.q) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.ae
  ret void

bb.af:                                            ; preds = %bb.g
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202

bb.ag:                                            ; preds = %bb.k
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202

.lr.ph:                                           ; preds = %.lr.ph325.split.preheader, %.loopexit
  %i.hh = phi i64 [ %i.hd, %.loopexit ], [ %i.b, %.lr.ph325.split.preheader ] ; 4 uses
  %.sroa.speculated218374 = phi i64 [ %.sroa.speculated218, %.loopexit ], [ %i.b, %.lr.ph325.split.preheader ] ; 2 uses
  %.0132323373 = phi i64 [ %i.hh, %.loopexit ], [ 0, %.lr.ph325.split.preheader ]
  %i.hi = mul nsw i64 %.0132323373, %3
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.hi
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %bb.an
  %.0322 = phi i64 [ %i.hh, %.lr.ph ], [ %i.ho, %bb.an ] ; 4 uses
  %i.hj = sub nsw i64 %0, %.0322
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.hj, i64 %.sroa.speculated243) ; 3 uses
  %i.hk = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.hk, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0322
  store ptr %gep, ptr %14, align 8
  store i64 %3, ptr %i.at, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.sroa.speculated218374, i64 noundef %.sroa.speculated, i64 noundef 0, i64 noundef 0)
          to label %bb.aj unwind label %.split

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.hl = getelementptr [8 x i8], ptr %4, i64 %.0322
  store ptr %i.hl, ptr %15, align 8
  store i64 %6, ptr %i.au, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated, i64 noundef %.sroa.speculated218374, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ak unwind label %.split334

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.an

.split:                                           ; preds = %bb.ai
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.split.us332, %.split
  %.us-phi = phi { ptr, i32 } [ %i.hm, %.split ], [ %i.gx, %.split.us332 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.body

.split334:                                        ; preds = %bb.aj
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.split334.us, %.split334
  %.us-phi335 = phi { ptr, i32 } [ %i.hn, %.split334 ], [ %i.gy, %.split334.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %.body

bb.an:                                            ; preds = %bb.ak, %bb.ah
  %i.ho = add nsw i64 %.0322, %.sroa.speculated243 ; 2 uses
  %i.hp = icmp slt i64 %i.ho, %0
  br i1 %i.hp, label %bb.ah, label %.loopexit, !llvm.loop !269

end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal22lhs_process_one_packetILi4ELl2ELl1EdddDv2_dS2_S2_S2_NS0_11gebp_traitsIddLb0ELb0ELi1ELi0EEENS0_16BlasLinearMapperIdlLi0ELi1EEENS0_16blas_data_mapperIdlLi0ELi0ELi1EEEEclERKS8_PKdSD_dllllllilllll:bb.a
  %i.nd = fadd <2 x double> %i.nc, %i.nb
  store <2 x double> %i.nd, ptr %i.kl, align 1, !tbaa !10
  %i.ne = add i64 %.0119375, 1                    ; 2 uses
  %exitcond402.not = icmp eq i64 %i.ne, %14
  br i1 %exitcond402.not, label %._crit_edge377, label %bb.c, !llvm.loop !428

.lr.ph370:                                        ; preds = %.preheader, %.lr.ph370
  %.0369 = phi i64 [ %i.nn, %.lr.ph370 ], [ %12, %.preheader ]
  %.1368 = phi ptr [ %i.nl, %.lr.ph370 ], [ %.0116.lcssa, %.preheader ] ; 2 uses
  %.1118367 = phi ptr [ %i.nm, %.lr.ph370 ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1314366 = phi <2 x double> [ %i.nk, %.lr.ph370 ], [ %.0313.lcssa, %.preheader ]
  tail call void asm sideeffect "#begin step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !429
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !430
  %i.nf = load <2 x double>, ptr %.1118367, align 1, !tbaa !10
  %i.ng = load double, ptr %.1368, align 8, !tbaa !8
  %i.nh = insertelement <2 x double> poison, double %i.ng, i64 0
  %i.ni = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nj = fmul <2 x double> %i.nf, %i.ni
  %i.nk = fadd <2 x double> %.1314366, %i.nj      ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !431
  %i.nl = getelementptr inbounds nuw i8, ptr %.1368, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %.1118367, i64 16
  %i.nn = add i64 %.0369, 1                       ; 2 uses
  %exitcond401.not = icmp eq i64 %i.nn, %15
  br i1 %exitcond401.not, label %._crit_edge371, label %.lr.ph370, !llvm.loop !432
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #17

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi2ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(40) %7) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 6 uses
  %9 = alloca %"struct.Eigen::internal::gemm_pack_lhs", align 1 ; 6 uses
  %10 = alloca %"struct.Eigen::internal::gemm_pack_rhs", align 1 ; 4 uses
  %11 = alloca %"class.Eigen::internal::blas_data_mapper.984", align 8 ; 6 uses
  %12 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %13 = alloca %"class.Eigen::internal::blas_data_mapper.984", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.984", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !142  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !139
  %.sroa.speculated246 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 5 uses
  %i.e = mul nsw i64 %.sroa.speculated246, %i.b   ; 4 uses
  %i.f = mul nsw i64 %i.b, %1                     ; 4 uses
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172: ; preds = %bb.a
  %i.i = load ptr, ptr %7, align 8, !tbaa !143    ; 2 uses
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
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.j) #25 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172, %bb.d
  %i.q = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 6 uses
  %i.s = icmp samesign ugt i64 %i.e, 16384        ; 2 uses
  %i.t = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.t, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !19
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.noexc193 unwind label %bb.af

.noexc193:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !144  ; 2 uses
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
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #25 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !19
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.noexc196 unwind label %bb.ag

.noexc196:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.ah = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.q, !prof !266

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #22
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #22
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #22
  br label %.body

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.al = icmp sgt i64 %1, 0
  br i1 %i.al, label %bb.r, label %.thread.thread

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !267
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
  %i.bd = shl i64 %0, 3                           ; 4 uses
  %i.be = mul i64 %i.b, -8
  %i.bf = mul i64 %., %6
  %i.bg = shl i64 %i.bf, 3
  %i.bh = add i64 %i.bd, -8
  %i.bi = shl i64 %6, 3                           ; 2 uses
  %i.bj = add nuw i64 %0, 2305843009213693951
  %i.bk = mul i64 %3, %i.bj
  %16 = shl i64 %i.bk, 3                          ; 2 uses
  %17 = add i64 %16, %i.bd
  %i.bl = shl i64 %3, 3
  %i.bm = sub nuw nsw i64 -8, %i.bl               ; 2 uses
  %i.bn = mul i64 %i.b, %i.bm
  %i.bo = shl i64 %3, 5
  %i.bp = sub nuw nsw i64 -32, %i.bo
  %18 = mul i64 %3, -8
  %19 = getelementptr i8, ptr %4, i64 %i.bd
  %i.bq = getelementptr i8, ptr %2, i64 %16
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bd
  %i.bs = getelementptr i8, ptr %i.br, i64 -8
  %ident.check.not = icmp eq i64 %6, 1
  %stride.check = icmp slt i64 %i.bi, 0
  br label %.lr.ph312.us

.lr.ph312.us:                                     ; preds = %.loopexit.us, %.lr.ph312.us.preheader
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph312.us.preheader ] ; 3 uses
  %.0135326.us = phi i64 [ %i.cg, %.loopexit.us ], [ %0, %.lr.ph312.us.preheader ] ; 5 uses
  %i.bt = mul i64 %i.be, %indvar                  ; 2 uses
  %i.bu = add i64 %i.bh, %i.bt
  %i.bv = mul i64 %i.bn, %indvar                  ; 2 uses
  %20 = add i64 %17, %i.bv
  %smin = call i64 @llvm.smin.i64(i64 %i.b, i64 %.0135326.us) ; 9 uses
  %i.bw = sub nsw i64 %.0135326.us, %smin         ; 2 uses
  %i.bx = getelementptr [8 x i8], ptr %2, i64 %i.bw
  %i.by = getelementptr [8 x i8], ptr %4, i64 %i.bw
  br i1 %i.bc, label %.lr.ph308.us.us.preheader, label %._crit_edge313.us

.lr.ph308.us.us.preheader:                        ; preds = %.lr.ph312.us
  %i.bz = getelementptr i8, ptr %19, i64 %i.bt
  %i.ca = getelementptr i8, ptr %i.bs, i64 %i.bv
  br label %.lr.ph308.us.us

bb.s:                                             ; preds = %.lr.ph.us, %bb.w
  %.0325.us = phi i64 [ 0, %.lr.ph.us ], [ %i.ce, %bb.w ] ; 4 uses
  %i.cb = sub nsw i64 %i.cg, %.0325.us
  %.sroa.speculated.us = call i64 @llvm.smin.i64(i64 %i.cb, i64 %.sroa.speculated246) ; 3 uses
  %i.cc = icmp sgt i64 %.sroa.speculated.us, 0
  br i1 %i.cc, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %gep.us330 = getelementptr [8 x i8], ptr %invariant.gep.us333, i64 %.0325.us
  store ptr %gep.us330, ptr %14, align 8
  store i64 %3, ptr %i.ba, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %smin, i64 noundef %.sroa.speculated.us, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %.split.us334

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.cd = getelementptr [8 x i8], ptr %4, i64 %.0325.us
  store ptr %i.cd, ptr %15, align 8
  store i64 %6, ptr %i.bb, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated.us, i64 noundef %smin, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.v unwind label %.split336.us

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.ce = add nsw i64 %.0325.us, %.sroa.speculated246 ; 2 uses
  %i.cf = icmp slt i64 %i.ce, %i.cg
  br i1 %i.cf, label %bb.s, label %.loopexit.us, !llvm.loop !433

.loopexit.us:                                     ; preds = %bb.w
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph312.us, !llvm.loop !434

._crit_edge313.us:                                ; preds = %._crit_edge309.us.us, %.lr.ph312.us
  %i.cg = sub nsw i64 %.0135326.us, %i.b          ; 5 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.us, label %._crit_edge

.lr.ph308.us.us:                                  ; preds = %.lr.ph308.us.us.preheader, %._crit_edge309.us.us
  %indvar377 = phi i64 [ %indvar.next378, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 4 uses
  %.0134310.us.us = phi i64 [ %i.gb, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 13 uses
  %i.ci = or disjoint i64 %.0134310.us.us, 1
  %i.cj = mul i64 %., %indvar377                  ; 2 uses
  %i.ck = sub i64 %1, %i.cj
  %smin390 = call i64 @llvm.smin.i64(i64 %., i64 %i.ck)
  %i.cl = add i64 %smin390, %.0134310.us.us
  %smax391 = call i64 @llvm.smax.i64(i64 %i.ci, i64 %i.cl) ; 2 uses
  %i.cm = sub i64 %smax391, %i.cj                 ; 2 uses
  %i.cn = mul i64 %i.bg, %indvar377               ; 2 uses
  %i.co = add i64 %i.bu, %i.cn
  %i.cp = or disjoint i64 %.0134310.us.us, 1
  %i.cq = mul i64 %., %indvar377                  ; 2 uses
  %i.cr = sub i64 %1, %i.cq
  %smin383 = call i64 @llvm.smin.i64(i64 %., i64 %i.cr)
  %i.cs = add i64 %smin383, %.0134310.us.us
  %smax = call i64 @llvm.smax.i64(i64 %i.cp, i64 %i.cs)
  %i.ct = xor i64 %i.cq, -1
  %i.cu = add i64 %smax, %i.ct
  %i.cv = mul i64 %i.bi, %i.cu
  %i.cw = add i64 %i.co, %i.cv
  %i.cx = sub nsw i64 %1, %.0134310.us.us         ; 2 uses
  %.sroa.speculated216.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.cx) ; 3 uses
  %i.cy = add nsw i64 %.sroa.speculated216.us.us, %.0134310.us.us ; 2 uses
  %i.cz = icmp slt i64 %i.cx, 1
  %i.da = mul nuw nsw i64 %.0134310.us.us, %smin
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.da ; 2 uses
  %i.dc = mul nsw i64 %.0134310.us.us, %6         ; 2 uses
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %4, i64 %i.dc
  %i.dd = getelementptr [8 x i8], ptr %i.by, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.bz, i64 %i.cn
  %min.iters.check393 = icmp ugt i64 %i.cm, 3
  %or.cond = and i1 %min.iters.check393, %ident.check.not
  %i.df = and i64 %smax391, 3                     ; 2 uses
  %n.vec395 = sub nuw i64 %i.cm, %i.df            ; 2 uses
  %i.dg = add i64 %.0134310.us.us, %n.vec395
  %cmp.n404 = icmp eq i64 %i.df, 0
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %.lr.ph308.us.us
  %indvar379 = phi i64 [ %indvar.next380, %bb.ac ], [ 0, %.lr.ph308.us.us ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ac ], [ %smin, %.lr.ph308.us.us ] ; 3 uses
  %.0133306.us.us = phi i64 [ %i.fc, %bb.ac ], [ 0, %.lr.ph308.us.us ] ; 4 uses
  %i.dh = mul i64 %indvar379, -32                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.de, i64 %i.dh
  %smin381 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 4) ; 2 uses
  %i.di = mul i64 %smin381, -8
  %scevgep382 = getelementptr i8, ptr %scevgep, i64 %i.di
  %i.dj = add i64 %i.cw, %i.dh
  %i.dk = mul i64 %i.bp, %indvar379               ; 2 uses
  %21 = add i64 %20, %i.dk
  %22 = shl i64 %smin381, 3
  %23 = sub i64 %21, %22
  %i.dl = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dl, i64 4)
  %i.dn = sub nsw i64 %smin, %.0133306.us.us      ; 3 uses
  %.sroa.speculated210.us.us = call i64 @llvm.smin.i64(i64 %i.dn, i64 4) ; 7 uses
  %i.do = icmp slt i64 %i.dn, 1
  %brmerge = select i1 %i.do, i1 true, i1 %i.cz
  br i1 %brmerge, label %._crit_edge.split.us.us, label %.lr.ph303.us.us.preheader

.lr.ph303.us.us.preheader:                        ; preds = %bb.x
  %24 = getelementptr i8, ptr %2, i64 %23
  %i.dp = getelementptr i8, ptr %i.ca, i64 %i.dk
  br label %.lr.ph303.us.us

.lr.ph303.us.us:                                  ; preds = %.lr.ph303.us.us.preheader, %._crit_edge304.us.us
  %.0132305.us.us = phi i64 [ %i.fe, %._crit_edge304.us.us ], [ 0, %.lr.ph303.us.us.preheader ] ; 6 uses
  %i.dq = shl i64 %.0132305.us.us, 3
  %i.dr = sub i64 %i.dj, %i.dq
  %scevgep384 = getelementptr i8, ptr %4, i64 %i.dr
  %25 = mul i64 %18, %.0132305.us.us
  %scevgep385.a = getelementptr i8, ptr %24, i64 %25
  %i.ds = mul i64 %i.bm, %.0132305.us.us
  %scevgep386 = getelementptr i8, ptr %i.dp, i64 %i.ds
  %i.dt = add nuw nsw i64 %.0132305.us.us, %.0133306.us.us
  %i.du = xor i64 %i.dt, -1
  %i.dv = add nsw i64 %.0135326.us, %i.du         ; 4 uses
  %i.dw = xor i64 %.0132305.us.us, -1
  %i.dx = add nsw i64 %.sroa.speculated210.us.us, %i.dw ; 6 uses
  %i.dy = sub nsw i64 %i.dv, %i.dx                ; 2 uses
  %i.dz = mul nsw i64 %i.dv, %3                   ; 2 uses
  %i.ea = getelementptr [8 x i8], ptr %2, i64 %i.dv
  %i.eb = getelementptr [8 x i8], ptr %i.ea, i64 %i.dz
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !8
  %i.ed = fdiv double 1.000000e+00, %i.ec         ; 3 uses
  %i.ee = getelementptr [8 x i8], ptr %4, i64 %i.dv ; 3 uses
  %i.ef = getelementptr [8 x i8], ptr %4, i64 %i.dy
  %i.eg = getelementptr [8 x i8], ptr %2, i64 %i.dy
  %i.eh = getelementptr [8 x i8], ptr %i.eg, i64 %i.dz ; 2 uses
  %i.ei = icmp sgt i64 %i.dx, 0
  br i1 %i.ei, label %.lr.ph.us.us.us.preheader, label %.lr.ph303.split.us316.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph303.us.us
  %min.iters.check = icmp ult i64 %i.dx, 4
  %bound0 = icmp ult ptr %scevgep382, %scevgep386
  %bound1 = icmp ult ptr %scevgep385.a, %scevgep384
  %found.conflict = and i1 %bound0, %bound1
  %i.ej = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.dx, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.dx, %n.vec
  br label %.lr.ph.us.us.us

.lr.ph303.split.us316.us.preheader:               ; preds = %.lr.ph303.us.us
  br i1 %or.cond, label %vector.ph394, label %.lr.ph303.split.us316.us.preheader406

vector.ph394:                                     ; preds = %.lr.ph303.split.us316.us.preheader
  %broadcast.splatinsert396 = insertelement <2 x double> poison, double %i.ed, i64 0
  %broadcast.splat397 = shufflevector <2 x double> %broadcast.splatinsert396, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ek = getelementptr [8 x i8], ptr %i.ee, i64 %.0134310.us.us
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph394
  %index399 = phi i64 [ 0, %vector.ph394 ], [ %index.next402, %vector.body398 ] ; 2 uses
  %i.el = getelementptr [8 x i8], ptr %i.ek, i64 %index399 ; 3 uses
  %i.em = getelementptr i8, ptr %i.el, i64 16     ; 2 uses
  %wide.load400.a = load <2 x double>, ptr %i.el, align 8, !tbaa !8
  %wide.load401 = load <2 x double>, ptr %i.em, align 8, !tbaa !8
  %i.en = fmul <2 x double> %broadcast.splat397, %wide.load400.a
  %i.eo = fmul <2 x double> %broadcast.splat397, %wide.load401
  store <2 x double> %i.en, ptr %i.el, align 8, !tbaa !8
  store <2 x double> %i.eo, ptr %i.em, align 8, !tbaa !8
  %index.next402 = add nuw i64 %index399, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next402, %n.vec395
  br i1 %i.ep, label %middle.block403, label %vector.body398, !llvm.loop !435

middle.block403:                                  ; preds = %vector.body398
  br i1 %cmp.n404, label %._crit_edge304.us.us, label %.lr.ph303.split.us316.us.preheader406

.lr.ph303.split.us316.us.preheader406:            ; preds = %.lr.ph303.split.us316.us.preheader, %middle.block403
  %.0131301.us314.us.ph = phi i64 [ %.0134310.us.us, %.lr.ph303.split.us316.us.preheader ], [ %i.dg, %middle.block403 ]
  br label %.lr.ph303.split.us316.us

.lr.ph303.split.us316.us:                         ; preds = %.lr.ph303.split.us316.us.preheader406, %.lr.ph303.split.us316.us
  %.0131301.us314.us = phi i64 [ %i.eu, %.lr.ph303.split.us316.us ], [ %.0131301.us314.us.ph, %.lr.ph303.split.us316.us.preheader406 ] ; 2 uses
  %i.eq = mul nsw i64 %.0131301.us314.us, %6
  %i.er = getelementptr [8 x i8], ptr %i.ee, i64 %i.eq ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !8
  %i.et = fmul double %i.ed, %i.es
  store double %i.et, ptr %i.er, align 8, !tbaa !8
  %i.eu = add nuw nsw i64 %.0131301.us314.us, 1   ; 2 uses
  %i.ev = icmp slt i64 %i.eu, %i.cy
  br i1 %i.ev, label %.lr.ph303.split.us316.us, label %._crit_edge304.us.us, !llvm.loop !436

._crit_edge.split.us.us:                          ; preds = %._crit_edge304.us.us, %bb.x
  %i.ew = sub nsw i64 %i.dn, %.sroa.speculated210.us.us ; 5 uses
  %i.ex = add i64 %.0133306.us.us, %.sroa.speculated210.us.us
  %i.ey = sub i64 %.0135326.us, %i.ex             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.ey
  store ptr %gep.us.us, ptr %11, align 8
  store i64 %6, ptr %i.ax, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull %i.db, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %.sroa.speculated210.us.us, i64 noundef %.sroa.speculated216.us.us, i64 noundef %smin, i64 noundef %i.ew)
          to label %bb.y unwind label %.split.us.split.us

bb.y:                                             ; preds = %._crit_edge.split.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.ez = icmp sgt i64 %i.ew, 0
  br i1 %i.ez, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.fa = mul nsw i64 %i.ey, %3
  %i.fb = getelementptr [8 x i8], ptr %i.bx, i64 %i.fa
  store ptr %i.fb, ptr %12, align 8
  store i64 %3, ptr %i.ay, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %.sroa.speculated210.us.us, i64 noundef %i.ew, i64 noundef 0, i64 noundef 0)
          to label %bb.aa unwind label %.split320.us.split.us

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %i.dd, ptr %13, align 8
  store i64 %6, ptr %i.az, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.r, ptr noundef nonnull %i.db, i64 noundef %i.ew, i64 noundef %.sroa.speculated210.us.us, i64 noundef %.sroa.speculated216.us.us, double noundef -1.000000e+00, i64 noundef %.sroa.speculated210.us.us, i64 noundef %smin, i64 noundef 0, i64 noundef %i.ew)
          to label %bb.ab unwind label %.split323.us.split.us

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %i.fc = add nuw nsw i64 %.0133306.us.us, 4      ; 2 uses
  %i.fd = icmp slt i64 %i.fc, %smin
  %indvars.iv.next = add i64 %indvars.iv, -4
  %indvar.next380 = add i64 %indvar379, 1
  br i1 %i.fd, label %bb.x, label %._crit_edge309.us.us, !llvm.loop !437

._crit_edge304.us.us:                             ; preds = %.lr.ph303.split.us316.us, %._crit_edge.us.us.us, %middle.block403
  %i.fe = add nuw nsw i64 %.0132305.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.fe, %i.dm
  br i1 %exitcond.not, label %._crit_edge.split.us.us, label %.lr.ph303.us.us, !llvm.loop !438

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.us.us.us
  %.0131301.us.us.us = phi i64 [ %i.fz, %._crit_edge.us.us.us ], [ %.0134310.us.us, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.ff = mul nsw i64 %.0131301.us.us.us, %6      ; 2 uses
  %i.fg = getelementptr [8 x i8], ptr %i.ee, i64 %i.ff ; 2 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !8
  %i.fi = fmul double %i.ed, %i.fh                ; 2 uses
  store double %i.fi, ptr %i.fg, align 8, !tbaa !8
  %i.fj = getelementptr [8 x i8], ptr %i.ef, i64 %i.ff ; 2 uses
  %i.fk = fneg double %i.fi                       ; 2 uses
  %brmerge409 = select i1 %min.iters.check, i1 true, i1 %i.ej
  br i1 %brmerge409, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fk, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %index ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %wide.load = load <2 x double>, ptr %i.fl, align 8, !tbaa !8, !alias.scope !439
  %wide.load387.a = load <2 x double>, ptr %i.fm, align 8, !tbaa !8, !alias.scope !439
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %index ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %wide.load388.a = load <2 x double>, ptr %i.fn, align 8, !tbaa !8, !alias.scope !442, !noalias !439
  %wide.load389 = load <2 x double>, ptr %i.fo, align 8, !tbaa !8, !alias.scope !442, !noalias !439
  %i.fp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load388.a)
  %i.fq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load387.a, <2 x double> %wide.load389)
  store <2 x double> %i.fp, ptr %i.fn, align 8, !tbaa !8, !alias.scope !442, !noalias !439
  store <2 x double> %i.fq, ptr %i.fo, align 8, !tbaa !8, !alias.scope !442, !noalias !439
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !444

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us, %middle.block
  %.0130300.us.us.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0130300.us.us.us = phi i64 [ %i.fx, %scalar.ph ], [ %.0130300.us.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.0130300.us.us.us
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !8
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.0130300.us.us.us ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !8
  %i.fw = call double @llvm.fmuladd.f64(double %i.fk, double %i.ft, double %i.fv)
  store double %i.fw, ptr %i.fu, align 8, !tbaa !8
  %i.fx = add nuw nsw i64 %.0130300.us.us.us, 1   ; 2 uses
  %i.fy = icmp slt i64 %i.fx, %i.dx
  br i1 %i.fy, label %scalar.ph, label %._crit_edge.us.us.us, !llvm.loop !445

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %i.fz = add nuw nsw i64 %.0131301.us.us.us, 1   ; 2 uses
  %i.ga = icmp slt i64 %i.fz, %i.cy
  br i1 %i.ga, label %.lr.ph.us.us.us, label %._crit_edge304.us.us, !llvm.loop !446

._crit_edge309.us.us:                             ; preds = %bb.ac
  %i.gb = add nuw nsw i64 %.0134310.us.us, %.     ; 2 uses
  %i.gc = icmp slt i64 %i.gb, %1
  %indvar.next378 = add i64 %indvar377, 1
  br i1 %i.gc, label %.lr.ph308.us.us, label %._crit_edge313.us, !llvm.loop !447

.lr.ph.us:                                        ; preds = %._crit_edge313.us
  %i.gd = mul nsw i64 %i.cg, %3
  %invariant.gep.us333 = getelementptr [8 x i8], ptr %2, i64 %i.gd
  br label %bb.s

.split.us334:                                     ; preds = %bb.t
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.split336.us:                                     ; preds = %bb.u
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.split.us.split.us:                               ; preds = %._crit_edge.split.us.us
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

.split320.us.split.us:                            ; preds = %bb.z
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.body

.split323.us.split.us:                            ; preds = %bb.aa
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.body

.loopexit:                                        ; preds = %bb.an
  %.sroa.speculated221 = call i64 @llvm.smin.i64(i64 %i.b, i64 %i.gn)
  %i.gj = sub nsw i64 %i.gn, %i.b                 ; 2 uses
  %i.gk = icmp sgt i64 %i.gj, 0
  br i1 %i.gk, label %.lr.ph, label %._crit_edge, !llvm.loop !434

end_hunk_1
