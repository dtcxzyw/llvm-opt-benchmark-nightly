Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linear_tree_learner?download=true
inline.NumInlined: 6309
inline.NumDeleted: 2630
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 71
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169, %bb.d
  %i.q = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 6 uses
  %i.s = icmp samesign ugt i64 %i.e, 16384        ; 2 uses
  %i.t = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.t, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc190 unwind label %bb.af

.noexc190:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !349  ; 2 uses
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
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #38 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc193 unwind label %bb.ag

.noexc193:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  %i.ah = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.q, !prof !384

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #6
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #6
  br label %.body

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.al = icmp sgt i64 %1, 0
  br i1 %i.al, label %bb.r, label %.thread.thread

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !386
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
  %i.bg = add i64 %i.bf, 8
  %i.bh = mul i64 %i.b, %i.bg
  %i.bi = shl i64 %3, 5
  %i.bj = add i64 %i.bi, 32
  %i.bk = shl i64 %3, 3
  %stride.check.1 = icmp slt i64 %i.be, 0
  %i.bl = shl i64 %3, 4
  %stride.check.2 = icmp slt i64 %i.be, 0
  br label %.lr.ph314.us

.lr.ph314.us:                                     ; preds = %.loopexit.us, %.lr.ph314.us.preheader
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph314.us.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ %0, %.lr.ph314.us.preheader ] ; 2 uses
  %.0132323.us = phi i64 [ %i.ca, %.loopexit.us ], [ 0, %.lr.ph314.us.preheader ] ; 4 uses
  %i.bm = mul i64 %i.bb, %indvar                  ; 3 uses
  %i.bn = mul i64 %i.bh, %indvar                  ; 2 uses
  %smin = call i64 @llvm.smin.i64(i64 %i.b, i64 %indvars.iv)
  %i.bo = sub nsw i64 %0, %.0132323.us
  %.sroa.speculated218.us = call i64 @llvm.smin.i64(i64 %i.b, i64 %i.bo) ; 8 uses
  %i.bp = icmp sgt i64 %.sroa.speculated218.us, 0
  br i1 %i.bp, label %.lr.ph308.us.us.preheader, label %._crit_edge315.us

.lr.ph308.us.us.preheader:                        ; preds = %.lr.ph314.us
  %i.bq = getelementptr i8, ptr %4, i64 %i.bm
  %i.br = getelementptr i8, ptr %4, i64 %i.bm
  %i.bs = getelementptr i8, ptr %2, i64 %i.bn
  %i.bt = getelementptr i8, ptr %4, i64 %i.bm
  %i.bu = getelementptr i8, ptr %2, i64 %i.bn
  br label %.lr.ph308.us.us

bb.s:                                             ; preds = %.lr.ph.us330, %bb.w
  %.0322.us = phi i64 [ %i.ca, %.lr.ph.us330 ], [ %i.by, %bb.w ] ; 4 uses
  %i.bv = sub nsw i64 %0, %.0322.us
  %.sroa.speculated.us = call i64 @llvm.smin.i64(i64 %i.bv, i64 %.sroa.speculated243) ; 3 uses
  %i.bw = icmp sgt i64 %.sroa.speculated.us, 0
  br i1 %i.bw, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #6
  %gep.us327 = getelementptr [8 x i8], ptr %invariant.gep.us331, i64 %.0322.us
  store ptr %gep.us327, ptr %14, align 8
  store i64 %3, ptr %i.az, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.sroa.speculated218.us, i64 noundef %.sroa.speculated.us, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %.split.us332

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #6
  %i.bx = getelementptr [8 x i8], ptr %4, i64 %.0322.us
  store ptr %i.bx, ptr %15, align 8
  store i64 %6, ptr %i.ba, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated.us, i64 noundef %.sroa.speculated218.us, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.v unwind label %.split334.us

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.by = add nsw i64 %.0322.us, %.sroa.speculated243 ; 2 uses
  %i.bz = icmp slt i64 %i.by, %0
  br i1 %i.bz, label %bb.s, label %.loopexit.us, !llvm.loop !771

.loopexit.us:                                     ; preds = %bb.w
  %indvars.iv.next = sub i64 %indvars.iv, %i.b
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph314.us, !llvm.loop !772

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
  %i.ck = sub nuw nsw i64 %1, %.0131312.us.us     ; 2 uses
  %.sroa.speculated213.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.ck) ; 3 uses
  %i.cl = add nuw nsw i64 %.sroa.speculated213.us.us, %.0131312.us.us ; 3 uses
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
  %i.cw = mul i64 %i.bj, %indvar377               ; 2 uses
  %i.cx = sub nuw nsw i64 %.sroa.speculated218.us, %.0130306.us.us ; 6 uses
  %.sroa.speculated207.us.us = call i64 @llvm.smin.i64(i64 %i.cx, i64 4) ; 9 uses
  %i.cy = icmp slt i64 %i.cx, 1
  %i.cz = add i64 %.0130306.us.us, %.0132323.us   ; 10 uses
  %brmerge = select i1 %i.cy, i1 true, i1 %i.cm
  br i1 %brmerge, label %._crit_edge305.split.us.us, label %.lr.ph300.us.us

.lr.ph300.us.us:                                  ; preds = %bb.x
  %i.da = add nsw i64 %.sroa.speculated207.us.us, -1
  %i.db = add i64 %i.cz, 1                        ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %4, i64 %i.cz
  %i.dd = getelementptr [8 x i8], ptr %4, i64 %i.db
  %i.de = mul i64 %i.cz, %3
  %i.df = getelementptr [8 x i8], ptr %2, i64 %i.db
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.de
  %i.dh = icmp sgt i64 %i.cx, 1
  br i1 %i.dh, label %.lr.ph.us.us, label %._crit_edge301.split.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph300.us.us, %._crit_edge.us.us
  %.0128298.us.us = phi i64 [ %i.ec, %._crit_edge.us.us ], [ %.0131312.us.us, %.lr.ph300.us.us ] ; 2 uses
  %i.di = mul nsw i64 %.0128298.us.us, %6         ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %i.dc, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !189
  %i.dl = getelementptr [8 x i8], ptr %i.dd, i64 %i.di
  %i.dm = fneg double %i.dk
  br label %scalar.ph

scalar.ph:                                        ; preds = %.lr.ph.us.us, %scalar.ph
  %.0127297.us.us = phi i64 [ %i.ds, %scalar.ph ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.0127297.us.us
  %i.do = load double, ptr %i.dn, align 8, !tbaa !189
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.0127297.us.us ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !189
  %i.dr = call double @llvm.fmuladd.f64(double %i.dm, double %i.do, double %i.dq)
  store double %i.dr, ptr %i.dp, align 8, !tbaa !189
  %i.ds = add nuw nsw i64 %.0127297.us.us, 1      ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %i.da
  br i1 %i.dt, label %scalar.ph, label %._crit_edge.us.us, !llvm.loop !773

._crit_edge305.split.us.us:                       ; preds = %.lr.ph300.us.us.2, %._crit_edge.us.us.2, %._crit_edge301.split.us.us, %._crit_edge301.split.us.us.1, %bb.x
  %i.du = sub nsw i64 %i.cx, %.sroa.speculated207.us.us ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.cz
  store ptr %gep.us.us, ptr %11, align 8
  store i64 %6, ptr %i.aw, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull %i.co, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %.sroa.speculated207.us.us, i64 noundef %.sroa.speculated213.us.us, i64 noundef %.sroa.speculated218.us, i64 noundef %.0130306.us.us)
          to label %bb.y unwind label %.split.us.split.us

bb.y:                                             ; preds = %._crit_edge305.split.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.dw = add nsw i64 %.sroa.speculated207.us.us, %i.cz ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  %i.dx = mul nsw i64 %i.cz, %3
  %i.dy = getelementptr [8 x i8], ptr %2, i64 %i.dw
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %i.dx
  store ptr %i.dz, ptr %12, align 8
  store i64 %3, ptr %i.ax, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %.sroa.speculated207.us.us, i64 noundef %i.du, i64 noundef 0, i64 noundef 0)
          to label %bb.aa unwind label %.split317.us.split.us

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  %gep311.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.dw
  store ptr %gep311.us.us, ptr %13, align 8
  store i64 %6, ptr %i.ay, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.r, ptr noundef nonnull %i.co, i64 noundef %i.du, i64 noundef %.sroa.speculated207.us.us, i64 noundef %.sroa.speculated213.us.us, double noundef -1.000000e+00, i64 noundef %.sroa.speculated207.us.us, i64 noundef %.sroa.speculated218.us, i64 noundef 0, i64 noundef %.0130306.us.us)
          to label %bb.ab unwind label %.split320.us.split.us

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %i.ea = add nuw nsw i64 %.0130306.us.us, 4      ; 2 uses
  %i.eb = icmp slt i64 %i.ea, %.sroa.speculated218.us
  %indvars.iv.next342 = add i64 %indvars.iv341, -4
  %indvar.next378 = add i64 %indvar377, 1
  br i1 %i.eb, label %bb.x, label %._crit_edge309.us.us, !llvm.loop !774

._crit_edge.us.us:                                ; preds = %scalar.ph
  %i.ec = add nuw nsw i64 %.0128298.us.us, 1      ; 2 uses
  %i.ed = icmp slt i64 %i.ec, %i.cl
  br i1 %i.ed, label %.lr.ph.us.us, label %._crit_edge301.split.us.us, !llvm.loop !775

._crit_edge301.split.us.us:                       ; preds = %._crit_edge.us.us, %.lr.ph300.us.us
  %exitcond.not = icmp slt i64 %indvars.iv341, 2
  br i1 %exitcond.not, label %._crit_edge305.split.us.us, label %.lr.ph300.us.us.1

.lr.ph300.us.us.1:                                ; preds = %._crit_edge301.split.us.us
  %i.ee = getelementptr i8, ptr %i.cs, i64 %i.cu
  %scevgep.1 = getelementptr i8, ptr %i.ee, i64 16
  %i.ef = getelementptr i8, ptr %i.bs, i64 %i.cw
  %i.eg = getelementptr i8, ptr %i.ef, i64 %i.cv
  %scevgep383.1 = getelementptr i8, ptr %i.eg, i64 %i.bk
  %i.eh = add i64 %i.cz, 1                        ; 2 uses
  %i.ei = add nsw i64 %.sroa.speculated207.us.us, -2 ; 4 uses
  %i.ej = add i64 %i.cz, 2                        ; 2 uses
  %i.ek = getelementptr [8 x i8], ptr %4, i64 %i.eh
  %i.el = getelementptr [8 x i8], ptr %4, i64 %i.ej
  %i.em = mul i64 %i.eh, %3
  %i.en = getelementptr [8 x i8], ptr %2, i64 %i.ej
  %i.eo = getelementptr [8 x i8], ptr %i.en, i64 %i.em ; 3 uses
  %i.ep = icmp sgt i64 %i.cx, 2
  br i1 %i.ep, label %.lr.ph.us.us.preheader.1, label %._crit_edge301.split.us.us.1

.lr.ph.us.us.preheader.1:                         ; preds = %.lr.ph300.us.us.1
  %min.iters.check.1 = icmp ult i64 %i.ei, 4
  %bound0.1 = icmp ult ptr %scevgep.1, %scevgep383.1
  %bound1.1 = icmp ult ptr %i.eo, %scevgep382
  %found.conflict.1 = and i1 %bound0.1, %bound1.1
  %i.eq = or i1 %found.conflict.1, %stride.check.1
  %n.vec.1 = and i64 %i.ei, 9223372036854775804   ; 3 uses
  %cmp.n.1 = icmp eq i64 %i.ei, %n.vec.1
  br label %.lr.ph.us.us.1

.lr.ph.us.us.1:                                   ; preds = %._crit_edge.us.us.1, %.lr.ph.us.us.preheader.1
  %.0128298.us.us.1 = phi i64 [ %i.fk, %._crit_edge.us.us.1 ], [ %.0131312.us.us, %.lr.ph.us.us.preheader.1 ] ; 2 uses
  %i.er = mul nsw i64 %.0128298.us.us.1, %6       ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %i.ek, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !189
  %i.eu = getelementptr [8 x i8], ptr %i.el, i64 %i.er ; 2 uses
  %i.ev = fneg double %i.et                       ; 2 uses
  %brmerge388 = select i1 %min.iters.check.1, i1 true, i1 %i.eq
  br i1 %brmerge388, label %scalar.ph.preheader.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %.lr.ph.us.us.1
  %broadcast.splatinsert.1 = insertelement <2 x double> poison, double %i.ev, i64 0
  %broadcast.splat.1 = shufflevector <2 x double> %broadcast.splatinsert.1, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %index.1 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load.1 = load <2 x double>, ptr %i.ew, align 8, !tbaa !189, !alias.scope !781
  %wide.load384.1 = load <2 x double>, ptr %i.ex, align 8, !tbaa !189, !alias.scope !781
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %index.1 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %wide.load385.1 = load <2 x double>, ptr %i.ey, align 8, !tbaa !189, !alias.scope !782, !noalias !781
  %wide.load386.1 = load <2 x double>, ptr %i.ez, align 8, !tbaa !189, !alias.scope !782, !noalias !781
  %i.fa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat.1, <2 x double> %wide.load.1, <2 x double> %wide.load385.1)
  %i.fb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat.1, <2 x double> %wide.load384.1, <2 x double> %wide.load386.1)
  store <2 x double> %i.fa, ptr %i.ey, align 8, !tbaa !189, !alias.scope !782, !noalias !781
  store <2 x double> %i.fb, ptr %i.ez, align 8, !tbaa !189, !alias.scope !782, !noalias !781
  %index.next.1 = add nuw i64 %index.1, 4         ; 2 uses
  %i.fc = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.fc, label %middle.block.1, label %vector.body.1, !llvm.loop !779

middle.block.1:                                   ; preds = %vector.body.1
  br i1 %cmp.n.1, label %._crit_edge.us.us.1, label %scalar.ph.preheader.1

scalar.ph.preheader.1:                            ; preds = %.lr.ph.us.us.1, %middle.block.1
  %.0127297.us.us.ph.1 = phi i64 [ %n.vec.1, %middle.block.1 ], [ 0, %.lr.ph.us.us.1 ]
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph.1, %scalar.ph.preheader.1
  %.0127297.us.us.1 = phi i64 [ %i.fi, %scalar.ph.1 ], [ %.0127297.us.us.ph.1, %scalar.ph.preheader.1 ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.0127297.us.us.1
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !189
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.0127297.us.us.1 ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !189
  %i.fh = call double @llvm.fmuladd.f64(double %i.ev, double %i.fe, double %i.fg)
  store double %i.fh, ptr %i.ff, align 8, !tbaa !189
  %i.fi = add nuw nsw i64 %.0127297.us.us.1, 1    ; 2 uses
  %i.fj = icmp slt i64 %i.fi, %i.ei
  br i1 %i.fj, label %scalar.ph.1, label %._crit_edge.us.us.1, !llvm.loop !773

._crit_edge.us.us.1:                              ; preds = %scalar.ph.1, %middle.block.1
  %i.fk = add nuw nsw i64 %.0128298.us.us.1, 1    ; 2 uses
  %i.fl = icmp slt i64 %i.fk, %i.cl
  br i1 %i.fl, label %.lr.ph.us.us.1, label %._crit_edge301.split.us.us.1, !llvm.loop !775

._crit_edge301.split.us.us.1:                     ; preds = %._crit_edge.us.us.1, %.lr.ph300.us.us.1
  %exitcond.not.1 = icmp eq i64 %indvars.iv341, 2
end_hunk_0
