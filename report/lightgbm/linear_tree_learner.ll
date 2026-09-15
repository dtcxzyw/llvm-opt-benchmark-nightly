Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linear_tree_learner?download=true
inline.NumInlined: 6309
inline.NumDeleted: 2630
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 71
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.549", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !342  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !343
  %.sroa.speculated243 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 5 uses
  %i.e = mul nsw i64 %.sroa.speculated243, %i.b   ; 4 uses
  %i.f = mul nsw i64 %i.b, %1                     ; 4 uses
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169: ; preds = %bb.a
  %i.i = load ptr, ptr %7, align 8, !tbaa !348    ; 2 uses
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
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.j) #38 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

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
  %.0132323.us = phi i64 [ %i.gp, %.loopexit.us ], [ 0, %.lr.ph314.us.preheader ] ; 4 uses
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

.lr.ph308.us.us:                                  ; preds = %.lr.ph308.us.us.preheader, %._crit_edge309.us.us
  %indvar375 = phi i64 [ %indvar.next376, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 3 uses
  %.0131312.us.us = phi i64 [ %i.gn, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 10 uses
  %i.bv = mul i64 %i.bd, %indvar375               ; 3 uses
  %i.bw = or disjoint i64 %.0131312.us.us, 1
  %i.bx = mul i64 %., %indvar375                  ; 2 uses
  %i.by = sub i64 %1, %i.bx
  %smin379 = call i64 @llvm.smin.i64(i64 %., i64 %i.by)
  %i.bz = add i64 %smin379, %.0131312.us.us
  %smax = call i64 @llvm.smax.i64(i64 %i.bw, i64 %i.bz)
  %i.ca = xor i64 %i.bx, -1
  %i.cb = add i64 %smax, %i.ca
  %i.cc = mul i64 %i.be, %i.cb
  %i.cd = sub nuw nsw i64 %1, %.0131312.us.us     ; 2 uses
  %.sroa.speculated213.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.cd) ; 3 uses
  %i.ce = add nuw nsw i64 %.sroa.speculated213.us.us, %.0131312.us.us ; 3 uses
  %i.cf = icmp slt i64 %i.cd, 1
  %i.cg = mul nuw nsw i64 %.0131312.us.us, %.sroa.speculated218.us
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cg ; 2 uses
  %i.ci = mul nsw i64 %.0131312.us.us, %6
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %4, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bq, i64 %i.bv
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.cc
  %i.cl = getelementptr i8, ptr %i.br, i64 %i.bv
  %i.cm = getelementptr i8, ptr %i.bt, i64 %i.bv
  br label %bb.s

bb.s:                                             ; preds = %bb.x, %.lr.ph308.us.us
  %indvar377 = phi i64 [ %indvar.next378, %bb.x ], [ 0, %.lr.ph308.us.us ] ; 3 uses
  %indvars.iv341 = phi i64 [ %indvars.iv.next342, %bb.x ], [ %smin, %.lr.ph308.us.us ] ; 4 uses
  %.0130306.us.us = phi i64 [ %i.gl, %bb.x ], [ 0, %.lr.ph308.us.us ] ; 5 uses
  %i.cn = shl i64 %indvar377, 5                   ; 3 uses
  %scevgep380 = getelementptr i8, ptr %i.ck, i64 %i.cn
  %smin381 = call i64 @llvm.smin.i64(i64 %indvars.iv341, i64 4)
  %i.co = shl i64 %smin381, 3                     ; 3 uses
  %scevgep382 = getelementptr i8, ptr %scevgep380, i64 %i.co ; 2 uses
  %i.cp = mul i64 %i.bj, %indvar377               ; 2 uses
  %i.cq = sub nuw nsw i64 %.sroa.speculated218.us, %.0130306.us.us ; 6 uses
  %.sroa.speculated207.us.us = call i64 @llvm.smin.i64(i64 %i.cq, i64 4) ; 9 uses
  %i.cr = icmp slt i64 %i.cq, 1
  %i.cs = add i64 %.0130306.us.us, %.0132323.us   ; 10 uses
  %brmerge = select i1 %i.cr, i1 true, i1 %i.cf
  br i1 %brmerge, label %._crit_edge305.split.us.us, label %.lr.ph300.us.us

.lr.ph300.us.us:                                  ; preds = %bb.s
  %i.ct = add nsw i64 %.sroa.speculated207.us.us, -1
  %i.cu = add i64 %i.cs, 1                        ; 2 uses
  %i.cv = getelementptr [8 x i8], ptr %4, i64 %i.cs
  %i.cw = getelementptr [8 x i8], ptr %4, i64 %i.cu
  %i.cx = mul i64 %i.cs, %3
  %i.cy = getelementptr [8 x i8], ptr %2, i64 %i.cu
  %i.cz = getelementptr [8 x i8], ptr %i.cy, i64 %i.cx
  %i.da = icmp sgt i64 %i.cq, 1
  br i1 %i.da, label %.lr.ph.us.us, label %._crit_edge301.split.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph300.us.us, %._crit_edge.us.us
  %.0128298.us.us = phi i64 [ %i.dn, %._crit_edge.us.us ], [ %.0131312.us.us, %.lr.ph300.us.us ] ; 2 uses
  %i.db = mul nsw i64 %.0128298.us.us, %6         ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %i.cv, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !189
  %i.de = getelementptr [8 x i8], ptr %i.cw, i64 %i.db
  %i.df = fneg double %i.dd
  br label %scalar.ph

scalar.ph:                                        ; preds = %.lr.ph.us.us, %scalar.ph
  %.0127297.us.us = phi i64 [ %i.dl, %scalar.ph ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.0127297.us.us
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !189
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.0127297.us.us ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !189
  %i.dk = call double @llvm.fmuladd.f64(double %i.df, double %i.dh, double %i.dj)
  store double %i.dk, ptr %i.di, align 8, !tbaa !189
  %i.dl = add nuw nsw i64 %.0127297.us.us, 1      ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %i.ct
  br i1 %i.dm, label %scalar.ph, label %._crit_edge.us.us, !llvm.loop !771

._crit_edge.us.us:                                ; preds = %scalar.ph
  %i.dn = add nuw nsw i64 %.0128298.us.us, 1      ; 2 uses
  %i.do = icmp slt i64 %i.dn, %i.ce
  br i1 %i.do, label %.lr.ph.us.us, label %._crit_edge301.split.us.us, !llvm.loop !772

._crit_edge301.split.us.us:                       ; preds = %._crit_edge.us.us, %.lr.ph300.us.us
  %exitcond.not = icmp slt i64 %indvars.iv341, 2
  br i1 %exitcond.not, label %._crit_edge305.split.us.us, label %.lr.ph300.us.us.1

.lr.ph300.us.us.1:                                ; preds = %._crit_edge301.split.us.us
  %i.dp = getelementptr i8, ptr %i.cl, i64 %i.cn
  %scevgep.1 = getelementptr i8, ptr %i.dp, i64 16
  %i.dq = getelementptr i8, ptr %i.bs, i64 %i.cp
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.co
  %scevgep383.1 = getelementptr i8, ptr %i.dr, i64 %i.bk
  %i.ds = add i64 %i.cs, 1                        ; 2 uses
  %i.dt = add nsw i64 %.sroa.speculated207.us.us, -2 ; 4 uses
  %i.du = add i64 %i.cs, 2                        ; 2 uses
  %i.dv = getelementptr [8 x i8], ptr %4, i64 %i.ds
  %i.dw = getelementptr [8 x i8], ptr %4, i64 %i.du
  %i.dx = mul i64 %i.ds, %3
  %i.dy = getelementptr [8 x i8], ptr %2, i64 %i.du
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %i.dx ; 3 uses
  %i.ea = icmp sgt i64 %i.cq, 2
  br i1 %i.ea, label %.lr.ph.us.us.preheader.1, label %._crit_edge301.split.us.us.1

.lr.ph.us.us.preheader.1:                         ; preds = %.lr.ph300.us.us.1
  %min.iters.check.1 = icmp ult i64 %i.dt, 4
  %bound0.1 = icmp ult ptr %scevgep.1, %scevgep383.1
  %bound1.1 = icmp ult ptr %i.dz, %scevgep382
  %found.conflict.1 = and i1 %bound0.1, %bound1.1
  %i.eb = or i1 %found.conflict.1, %stride.check.1
  %n.vec.1 = and i64 %i.dt, 9223372036854775804   ; 3 uses
  %cmp.n.1 = icmp eq i64 %i.dt, %n.vec.1
  br label %.lr.ph.us.us.1

.lr.ph.us.us.1:                                   ; preds = %._crit_edge.us.us.1, %.lr.ph.us.us.preheader.1
  %.0128298.us.us.1 = phi i64 [ %i.ev, %._crit_edge.us.us.1 ], [ %.0131312.us.us, %.lr.ph.us.us.preheader.1 ] ; 2 uses
  %i.ec = mul nsw i64 %.0128298.us.us.1, %6       ; 2 uses
  %i.ed = getelementptr [8 x i8], ptr %i.dv, i64 %i.ec
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !189
  %i.ef = getelementptr [8 x i8], ptr %i.dw, i64 %i.ec ; 2 uses
  %i.eg = fneg double %i.ee                       ; 2 uses
  %brmerge388 = select i1 %min.iters.check.1, i1 true, i1 %i.eb
  br i1 %brmerge388, label %scalar.ph.preheader.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %.lr.ph.us.us.1
  %broadcast.splatinsert.1 = insertelement <2 x double> poison, double %i.eg, i64 0
  %broadcast.splat.1 = shufflevector <2 x double> %broadcast.splatinsert.1, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index.1 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load.1 = load <2 x double>, ptr %i.eh, align 8, !tbaa !189, !alias.scope !781
  %wide.load384.1 = load <2 x double>, ptr %i.ei, align 8, !tbaa !189, !alias.scope !781
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %index.1 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %wide.load385.1 = load <2 x double>, ptr %i.ej, align 8, !tbaa !189, !alias.scope !782, !noalias !781
  %wide.load386.1 = load <2 x double>, ptr %i.ek, align 8, !tbaa !189, !alias.scope !782, !noalias !781
  %i.el = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat.1, <2 x double> %wide.load.1, <2 x double> %wide.load385.1)
  %i.em = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat.1, <2 x double> %wide.load384.1, <2 x double> %wide.load386.1)
  store <2 x double> %i.el, ptr %i.ej, align 8, !tbaa !189, !alias.scope !782, !noalias !781
  store <2 x double> %i.em, ptr %i.ek, align 8, !tbaa !189, !alias.scope !782, !noalias !781
  %index.next.1 = add nuw i64 %index.1, 4         ; 2 uses
  %i.en = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.en, label %middle.block.1, label %vector.body.1, !llvm.loop !776

middle.block.1:                                   ; preds = %vector.body.1
  br i1 %cmp.n.1, label %._crit_edge.us.us.1, label %scalar.ph.preheader.1

scalar.ph.preheader.1:                            ; preds = %.lr.ph.us.us.1, %middle.block.1
  %.0127297.us.us.ph.1 = phi i64 [ %n.vec.1, %middle.block.1 ], [ 0, %.lr.ph.us.us.1 ]
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph.1, %scalar.ph.preheader.1
  %.0127297.us.us.1 = phi i64 [ %i.et, %scalar.ph.1 ], [ %.0127297.us.us.ph.1, %scalar.ph.preheader.1 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.0127297.us.us.1
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !189
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.0127297.us.us.1 ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !189
  %i.es = call double @llvm.fmuladd.f64(double %i.eg, double %i.ep, double %i.er)
  store double %i.es, ptr %i.eq, align 8, !tbaa !189
  %i.et = add nuw nsw i64 %.0127297.us.us.1, 1    ; 2 uses
  %i.eu = icmp slt i64 %i.et, %i.dt
  br i1 %i.eu, label %scalar.ph.1, label %._crit_edge.us.us.1, !llvm.loop !771

._crit_edge.us.us.1:                              ; preds = %scalar.ph.1, %middle.block.1
  %i.ev = add nuw nsw i64 %.0128298.us.us.1, 1    ; 2 uses
  %i.ew = icmp slt i64 %i.ev, %i.ce
  br i1 %i.ew, label %.lr.ph.us.us.1, label %._crit_edge301.split.us.us.1, !llvm.loop !772

._crit_edge301.split.us.us.1:                     ; preds = %._crit_edge.us.us.1, %.lr.ph300.us.us.1
  %exitcond.not.1 = icmp eq i64 %indvars.iv341, 2
  br i1 %exitcond.not.1, label %._crit_edge305.split.us.us, label %.lr.ph300.us.us.2

.lr.ph300.us.us.2:                                ; preds = %._crit_edge301.split.us.us.1
  %i.ex = getelementptr i8, ptr %i.cm, i64 %i.cn
  %scevgep.2 = getelementptr i8, ptr %i.ex, i64 24
  %i.ey = getelementptr i8, ptr %i.bu, i64 %i.cp
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.co
  %scevgep383.2 = getelementptr i8, ptr %i.ez, i64 %i.bl
  %i.fa = add i64 %i.cs, 2                        ; 2 uses
  %i.fb = add nsw i64 %.sroa.speculated207.us.us, -3 ; 4 uses
  %i.fc = add i64 %i.cs, 3                        ; 2 uses
  %i.fd = getelementptr [8 x i8], ptr %4, i64 %i.fa
  %i.fe = getelementptr [8 x i8], ptr %4, i64 %i.fc
  %i.ff = mul i64 %i.fa, %3
  %i.fg = getelementptr [8 x i8], ptr %2, i64 %i.fc
  %i.fh = getelementptr [8 x i8], ptr %i.fg, i64 %i.ff ; 3 uses
  %i.fi = icmp sgt i64 %i.cq, 3
  br i1 %i.fi, label %.lr.ph.us.us.preheader.2, label %._crit_edge305.split.us.us

.lr.ph.us.us.preheader.2:                         ; preds = %.lr.ph300.us.us.2
  %min.iters.check.2 = icmp ult i64 %i.fb, 4
  %bound0.2 = icmp ult ptr %scevgep.2, %scevgep383.2
  %bound1.2 = icmp ult ptr %i.fh, %scevgep382
  %found.conflict.2 = and i1 %bound0.2, %bound1.2
  %i.fj = or i1 %found.conflict.2, %stride.check.2
  %n.vec.2 = and i64 %i.fb, 9223372036854775804   ; 3 uses
  %cmp.n.2 = icmp eq i64 %i.fb, %n.vec.2
  br label %.lr.ph.us.us.2

.lr.ph.us.us.2:                                   ; preds = %._crit_edge.us.us.2, %.lr.ph.us.us.preheader.2
  %.0128298.us.us.2 = phi i64 [ %i.gd, %._crit_edge.us.us.2 ], [ %.0131312.us.us, %.lr.ph.us.us.preheader.2 ] ; 2 uses
  %i.fk = mul nsw i64 %.0128298.us.us.2, %6       ; 2 uses
  %i.fl = getelementptr [8 x i8], ptr %i.fd, i64 %i.fk
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !189
  %i.fn = getelementptr [8 x i8], ptr %i.fe, i64 %i.fk ; 2 uses
  %i.fo = fneg double %i.fm                       ; 2 uses
  %brmerge389 = select i1 %min.iters.check.2, i1 true, i1 %i.fj
  br i1 %brmerge389, label %scalar.ph.preheader.2, label %vector.ph.2

vector.ph.2:                                      ; preds = %.lr.ph.us.us.2
  %broadcast.splatinsert.2 = insertelement <2 x double> poison, double %i.fo, i64 0
  %broadcast.splat.2 = shufflevector <2 x double> %broadcast.splatinsert.2, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.2, %vector.ph.2
end_hunk_0
