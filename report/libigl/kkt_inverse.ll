Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/kkt_inverse?download=true
inline.NumInlined: 10943
inline.NumDeleted: 5252
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.310", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !112  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !113
  %.sroa.speculated243 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 5 uses
  %i.e = mul nsw i64 %.sroa.speculated243, %i.b   ; 4 uses
  %i.f = mul nsw i64 %i.b, %1                     ; 4 uses
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169: ; preds = %bb.a
  %i.i = load ptr, ptr %7, align 8, !tbaa !118    ; 2 uses
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
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.j) #21 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169, %bb.d
  %i.q = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 6 uses
  %i.s = icmp samesign ugt i64 %i.e, 16384        ; 2 uses
  %i.t = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.t, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !22
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc190 unwind label %bb.af

.noexc190:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !119  ; 2 uses
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
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #21 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !22
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc193 unwind label %bb.ag

.noexc193:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.ah = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.q, !prof !120

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #20
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #20
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #20
  br label %.body

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.al = icmp sgt i64 %1, 0
  br i1 %i.al, label %bb.r, label %.thread.thread

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !122
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
  %i.cd = sub nsw i64 %1, %.0131312.us.us         ; 2 uses
  %.sroa.speculated213.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.cd) ; 3 uses
  %i.ce = add nsw i64 %.sroa.speculated213.us.us, %.0131312.us.us ; 3 uses
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
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !47
  %i.de = getelementptr [8 x i8], ptr %i.cw, i64 %i.db
  %i.df = fneg double %i.dd
  br label %scalar.ph

scalar.ph:                                        ; preds = %.lr.ph.us.us, %scalar.ph
  %.0127297.us.us = phi i64 [ %i.dl, %scalar.ph ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.0127297.us.us
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !47
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.0127297.us.us ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !47
  %i.dk = call double @llvm.fmuladd.f64(double %i.df, double %i.dh, double %i.dj)
  store double %i.dk, ptr %i.di, align 8, !tbaa !47
  %i.dl = add nuw nsw i64 %.0127297.us.us, 1      ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %i.ct
  br i1 %i.dm, label %scalar.ph, label %._crit_edge.us.us, !llvm.loop !462

._crit_edge.us.us:                                ; preds = %scalar.ph
  %i.dn = add nuw nsw i64 %.0128298.us.us, 1      ; 2 uses
  %i.do = icmp slt i64 %i.dn, %i.ce
  br i1 %i.do, label %.lr.ph.us.us, label %._crit_edge301.split.us.us, !llvm.loop !463

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
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !47
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
  %wide.load.1 = load <2 x double>, ptr %i.eh, align 8, !tbaa !47, !alias.scope !472
  %wide.load384.1 = load <2 x double>, ptr %i.ei, align 8, !tbaa !47, !alias.scope !472
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %index.1 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %wide.load385.1 = load <2 x double>, ptr %i.ej, align 8, !tbaa !47, !alias.scope !473, !noalias !472
  %wide.load386.1 = load <2 x double>, ptr %i.ek, align 8, !tbaa !47, !alias.scope !473, !noalias !472
  %i.el = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat.1, <2 x double> %wide.load.1, <2 x double> %wide.load385.1)
  %i.em = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat.1, <2 x double> %wide.load384.1, <2 x double> %wide.load386.1)
  store <2 x double> %i.el, ptr %i.ej, align 8, !tbaa !47, !alias.scope !473, !noalias !472
  store <2 x double> %i.em, ptr %i.ek, align 8, !tbaa !47, !alias.scope !473, !noalias !472
  %index.next.1 = add nuw i64 %index.1, 4         ; 2 uses
  %i.en = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.en, label %middle.block.1, label %vector.body.1, !llvm.loop !467

middle.block.1:                                   ; preds = %vector.body.1
  br i1 %cmp.n.1, label %._crit_edge.us.us.1, label %scalar.ph.preheader.1

scalar.ph.preheader.1:                            ; preds = %.lr.ph.us.us.1, %middle.block.1
  %.0127297.us.us.ph.1 = phi i64 [ %n.vec.1, %middle.block.1 ], [ 0, %.lr.ph.us.us.1 ]
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph.1, %scalar.ph.preheader.1
  %.0127297.us.us.1 = phi i64 [ %i.et, %scalar.ph.1 ], [ %.0127297.us.us.ph.1, %scalar.ph.preheader.1 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.0127297.us.us.1
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !47
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.0127297.us.us.1 ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !47
  %i.es = call double @llvm.fmuladd.f64(double %i.eg, double %i.ep, double %i.er)
  store double %i.es, ptr %i.eq, align 8, !tbaa !47
  %i.et = add nuw nsw i64 %.0127297.us.us.1, 1    ; 2 uses
  %i.eu = icmp slt i64 %i.et, %i.dt
  br i1 %i.eu, label %scalar.ph.1, label %._crit_edge.us.us.1, !llvm.loop !462

._crit_edge.us.us.1:                              ; preds = %scalar.ph.1, %middle.block.1
  %i.ev = add nuw nsw i64 %.0128298.us.us.1, 1    ; 2 uses
  %i.ew = icmp slt i64 %i.ev, %i.ce
  br i1 %i.ew, label %.lr.ph.us.us.1, label %._crit_edge301.split.us.us.1, !llvm.loop !463

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
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !47
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
begin_hunk_1_@_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE6evalToIS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEEEvRT_RT0_:bb.a
_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit76: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i74, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i66
  %i.ix = icmp sgt i64 %i.p, 0
  br i1 %i.ix, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit76
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.jd = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.je = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.jf = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.jg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.jj = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.jp = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.jq = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.jr = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.js = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ju = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.jv = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.jw = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.w
  %.0.in112 = phi i64 [ %i.p, %.lr.ph ], [ %.0113, %bb.w ] ; 3 uses
  %.0113 = add nsw i64 %.0.in112, -1              ; 7 uses
  %i.jx = load ptr, ptr %0, align 8, !tbaa !149, !nonnull !74, !align !86 ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 3 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !20
  %i.ka = load i64, ptr %i.iy, align 8, !tbaa !140
  %i.kb = add i64 %i.jz, 1
  %i.kc = add i64 %.0.in112, %i.ka                ; 7 uses
  %i.kd = sub i64 %i.kb, %i.kc                    ; 8 uses
  %i.ke = load i8, ptr %i.iz, align 8, !tbaa !138, !range !73, !noundef !74
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %i.kg = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !843 ; 3 uses
  %i.kh = sub nsw i64 %i.kg, %i.kd                ; 2 uses
  %i.ki = load i64, ptr %i.ig, align 8, !tbaa !24, !noalias !843
  %i.kj = sub nsw i64 %i.ki, %i.kd                ; 2 uses
  %i.kk = load ptr, ptr %1, align 8, !tbaa !23, !noalias !843
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.kh
  %i.km = mul nsw i64 %i.kj, %i.kg
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.km
  store ptr %i.kn, ptr %7, align 8, !tbaa !27, !alias.scope !843
  store i64 %i.kd, ptr %i.jm, align 8, !tbaa !28, !alias.scope !843
  store i64 %i.kd, ptr %i.jn, align 8, !tbaa !28, !alias.scope !843
  store ptr %1, ptr %i.jo, align 8, !tbaa !30, !alias.scope !843
  store i64 %i.kh, ptr %i.jp, align 8, !tbaa !28, !alias.scope !843
  store i64 %i.kj, ptr %i.jq, align 8, !tbaa !28, !alias.scope !843
  store i64 %i.kg, ptr %i.jr, align 8, !tbaa !33, !alias.scope !843
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %i.ko = load i64, ptr %i.jy, align 8, !tbaa !20, !noalias !846 ; 3 uses
  %i.kp = sub nsw i64 %i.ko, %i.kc
  %i.kq = load ptr, ptr %i.jx, align 8, !tbaa !23, !noalias !846
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.kc
  %i.ks = mul nsw i64 %i.ko, %.0113
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.ks
  store ptr %i.kt, ptr %8, align 8, !tbaa !151, !alias.scope !846
  store i64 %i.kp, ptr %i.js, align 8, !tbaa !28, !alias.scope !846
  store ptr %i.jx, ptr %i.jt, align 8, !tbaa !30, !alias.scope !846
  store i64 %i.kc, ptr %i.ju, align 8, !tbaa !28, !alias.scope !846
  store i64 %.0113, ptr %i.jv, align 8, !tbaa !28, !alias.scope !846
  store i64 %i.ko, ptr %i.jw, align 8, !tbaa !153, !alias.scope !846
  %i.ku = load ptr, ptr %i.jl, align 8, !tbaa !154, !nonnull !74, !align !86
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !63
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %.0113
  %i.kx = load ptr, ptr %2, align 8, !tbaa !79
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.kw, ptr noundef %i.kx)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %i.ky = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !847 ; 3 uses
  %i.kz = sub nsw i64 %i.ky, %i.kd                ; 2 uses
  %i.la = load i64, ptr %i.ig, align 8, !tbaa !24, !noalias !847
  %i.lb = sub nsw i64 %i.la, %i.kd                ; 2 uses
  %i.lc = load ptr, ptr %1, align 8, !tbaa !23, !noalias !847
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.kz
  %i.le = mul nsw i64 %i.lb, %i.ky
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %i.le
  store ptr %i.lf, ptr %9, align 8, !tbaa !27, !alias.scope !847
  store i64 %i.kd, ptr %i.ja, align 8, !tbaa !28, !alias.scope !847
  store i64 %i.kd, ptr %i.jb, align 8, !tbaa !28, !alias.scope !847
  store ptr %1, ptr %i.jc, align 8, !tbaa !30, !alias.scope !847
  store i64 %i.kz, ptr %i.jd, align 8, !tbaa !28, !alias.scope !847
  store i64 %i.lb, ptr %i.je, align 8, !tbaa !28, !alias.scope !847
  store i64 %i.ky, ptr %i.jf, align 8, !tbaa !33, !alias.scope !847
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !848)
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %i.lg = load i64, ptr %i.jy, align 8, !tbaa !20, !noalias !850 ; 3 uses
  %i.lh = sub nsw i64 %i.lg, %i.kc
  %i.li = load ptr, ptr %i.jx, align 8, !tbaa !23, !noalias !850
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.li, i64 %i.kc
  %i.lk = mul nsw i64 %i.lg, %.0113
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %i.lk
  store ptr %i.ll, ptr %10, align 8, !tbaa !151, !alias.scope !850
  store i64 %i.lh, ptr %i.jg, align 8, !tbaa !28, !alias.scope !850
  store ptr %i.jx, ptr %i.jh, align 8, !tbaa !30, !alias.scope !850
  store i64 %i.kc, ptr %i.ji, align 8, !tbaa !28, !alias.scope !850
  store i64 %.0113, ptr %i.jj, align 8, !tbaa !28, !alias.scope !850
  store i64 %i.lg, ptr %i.jk, align 8, !tbaa !153, !alias.scope !850
  %i.lm = load ptr, ptr %i.jl, align 8, !tbaa !154, !nonnull !74, !align !86
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !63
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %.0113
  %i.lp = load ptr, ptr %2, align 8, !tbaa !79
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.lo, ptr noundef %i.lp)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.lq = icmp samesign ugt i64 %.0.in112, 1
  br i1 %i.lq, label %bb.t, label %.loopexit, !llvm.loop !832

.loopexit:                                        ; preds = %bb.w, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit64, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit76, %.preheader, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE18applyThisOnTheLeftIS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Block", align 8      ; 10 uses
  %5 = alloca %"class.Eigen::Block", align 8      ; 10 uses
  %6 = alloca %"class.Eigen::VectorBlock.1329", align 8 ; 8 uses
  %7 = alloca %"class.Eigen::Block", align 8      ; 10 uses
  %8 = alloca %"class.Eigen::Block.1108", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !73
  %i.c = trunc nuw i8 %i.b to i1
  %or.cond = select i1 %3, i1 %i.c, i1 false
  %.048.shrunk = xor i1 %3, %or.cond              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !139  ; 5 uses
  %i.f = icmp sgt i64 %i.e, 47
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24   ; 6 uses
  %i.i = icmp sgt i64 %i.h, 1
  %or.cond79 = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond79, label %.lr.ph66, label %._crit_edge

.lr.ph66:                                         ; preds = %bb.a
  %i.j = icmp samesign ult i64 %i.e, 96
  %.lhs.trunc = add nuw i64 %i.e, 1
  %i.k = lshr i64 %.lhs.trunc, 1
  %.zext = and i64 %i.k, 127
  %i.l = select i1 %i.j, i64 %.zext, i64 48       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph66, %bb.f
  %i.af = phi i64 [ %i.e, %.lr.ph66 ], [ %i.bp, %bb.f ] ; 2 uses
  %.04765 = phi i64 [ 0, %.lr.ph66 ], [ %i.bo, %bb.f ] ; 4 uses
  %i.ag = load i8, ptr %i.a, align 8, !tbaa !138, !range !73, !noundef !74
  %i.ah = trunc nuw i8 %i.ag to i1                ; 2 uses
  br i1 %i.ah, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.ai = add nuw nsw i64 %.04765, %i.l
  %.sroa.speculated57 = call i64 @llvm.smin.i64(i64 %i.ai, i64 %i.af)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = sub nsw i64 %i.af, %.04765              ; 2 uses
  %i.ak = sub nsw i64 %i.aj, %i.l
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.ak, i64 0)
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.al = phi i64 [ %i.aj, %bb.c ], [ %.sroa.speculated57, %.thread ]
  %i.am = phi i64 [ %.sroa.speculated, %bb.c ], [ %.04765, %.thread ] ; 6 uses
  %i.an = sub nsw i64 %i.al, %i.am                ; 2 uses
  %i.ao = load i64, ptr %i.m, align 8, !tbaa !140
  %i.ap = add i64 %i.ao, %i.am                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aq = load ptr, ptr %0, align 8, !tbaa !149, !nonnull !74, !align !86 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !20 ; 4 uses
  %i.at = sub i64 %i.as, %i.ap                    ; 3 uses
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !23
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ap
  %i.aw = mul nsw i64 %i.as, %i.am
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  store ptr %i.ax, ptr %4, align 8, !tbaa !27
  store i64 %i.at, ptr %i.n, align 8, !tbaa !28
  store i64 %i.an, ptr %i.o, align 8, !tbaa !28
  store ptr %i.aq, ptr %i.p, align 8, !tbaa !30
  store i64 %i.ap, ptr %i.q, align 8, !tbaa !28
  store i64 %i.am, ptr %i.r, align 8, !tbaa !28
  store i64 %i.as, ptr %i.s, align 8, !tbaa !33
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !20  ; 3 uses
  %i.az = sub i64 %i.ap, %i.as
  %i.ba = add i64 %i.az, %i.ay                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bb = select i1 %.048.shrunk, i64 %i.ba, i64 0 ; 2 uses
  br i1 %.048.shrunk, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bd = phi i64 [ %i.bc, %bb.e ], [ %i.at, %bb.d ]
  %i.be = load ptr, ptr %1, align 8, !tbaa !23
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ba
  %i.bg = mul nsw i64 %i.bb, %i.ay
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  store ptr %i.bh, ptr %5, align 8, !tbaa !27
  store i64 %i.at, ptr %i.u, align 8, !tbaa !28
  store i64 %i.bd, ptr %i.v, align 8, !tbaa !28
  store ptr %1, ptr %i.w, align 8, !tbaa !30
  store i64 %i.ba, ptr %i.x, align 8, !tbaa !28
  store i64 %i.bb, ptr %i.y, align 8, !tbaa !28
  store i64 %i.ay, ptr %i.z, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.bi = load ptr, ptr %i.aa, align 8, !tbaa !154, !nonnull !74, !align !86 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !63, !noalias !861
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.am
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !64, !noalias !861
  store ptr %i.bk, ptr %6, align 8, !tbaa !156, !alias.scope !861
  store i64 %i.an, ptr %i.ab, align 8, !tbaa !28, !alias.scope !861
  store ptr %i.bi, ptr %i.ac, align 8, !tbaa !136, !alias.scope !861
  store i64 %i.am, ptr %i.ad, align 8, !tbaa !28, !alias.scope !861
  store i64 %i.bm, ptr %i.ae, align 8, !tbaa !159, !alias.scope !861
  %i.bn = xor i1 %i.ah, true
  call void @_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEES5_NS_11VectorBlockIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1EEEEEvRT_RKT0_RKT1_b(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %6, i1 noundef zeroext %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bo = add nuw nsw i64 %.04765, %i.l           ; 2 uses
  %i.bp = load i64, ptr %i.d, align 8, !tbaa !139 ; 2 uses
  %i.bq = icmp slt i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.b, label %.loopexit, !llvm.loop !853

._crit_edge:                                      ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !141
  %.not.i.i = icmp eq i64 %i.h, %i.bt
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.bu = load ptr, ptr %2, align 8, !tbaa !79
  tail call void @free(ptr noundef %i.bu) #20
  %i.bv = icmp sgt i64 %i.h, 0
  br i1 %i.bv, label %bb.h, label %.sink.split.i.i

bb.h:                                             ; preds = %bb.g
  %i.bw = icmp samesign ugt i64 %i.h, 2305843009213693951
  br i1 %i.bw, label %bb.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bx = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bx, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.h
  %i.by = shl nuw i64 %i.h, 3
  %i.bz = tail call noalias ptr @malloc(i64 noundef %i.by) #21 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.j, label %.sink.split.i.i

bb.j:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.cb = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cb, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.g
  %.sink.i.i = phi ptr [ %i.bz, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.g ]
  store ptr %.sink.i.i, ptr %2, align 8, !tbaa !79
  %.pre68 = load i64, ptr %i.d, align 8, !tbaa !139
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit: ; preds = %._crit_edge, %.sink.split.i.i
  %i.cc = phi i64 [ %i.e, %._crit_edge ], [ %.pre68, %.sink.split.i.i ] ; 2 uses
  store i64 %i.h, ptr %i.bs, align 8, !tbaa !141
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %i.cs = phi i64 [ %i.cc, %.lr.ph ], [ %i.dx, %bb.k ]
  %.064 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %bb.k ] ; 3 uses
  %i.ct = load i8, ptr %i.a, align 8, !tbaa !138, !range !73, !noundef !74
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = xor i64 %.064, -1
  %i.cw = add i64 %i.cs, %i.cv
  %i.cx = select i1 %i.cu, i64 %.064, i64 %i.cw   ; 4 uses
  %i.cy = load ptr, ptr %0, align 8, !tbaa !149, !nonnull !74, !align !86 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !20
  %i.db = load i64, ptr %i.ce, align 8, !tbaa !140
  %i.dc = add i64 %i.cx, %i.db                    ; 2 uses
  %i.dd = sub i64 %i.da, %i.dc                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %.pre69 = load i64, ptr %i.br, align 8, !tbaa !24 ; 2 uses
  %spec.select = select i1 %.048.shrunk, i64 %i.dd, i64 %.pre69 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.de = load i64, ptr %i.cf, align 8, !tbaa !20, !noalias !862 ; 3 uses
  %i.df = sub nsw i64 %i.de, %i.dd                ; 2 uses
  %i.dg = sub nsw i64 %.pre69, %spec.select       ; 2 uses
  %i.dh = load ptr, ptr %1, align 8, !tbaa !23, !noalias !862
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.df
  %i.dj = mul nsw i64 %i.dg, %i.de
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dj
  store ptr %i.dk, ptr %7, align 8, !tbaa !27, !alias.scope !862
  store i64 %i.dd, ptr %i.cg, align 8, !tbaa !28, !alias.scope !862
  store i64 %spec.select, ptr %i.ch, align 8, !tbaa !28, !alias.scope !862
  store ptr %1, ptr %i.ci, align 8, !tbaa !30, !alias.scope !862
  store i64 %i.df, ptr %i.cj, align 8, !tbaa !28, !alias.scope !862
  store i64 %i.dg, ptr %i.ck, align 8, !tbaa !28, !alias.scope !862
  store i64 %i.de, ptr %i.cl, align 8, !tbaa !33, !alias.scope !862
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.dl = add i64 %i.dc, 1                        ; 3 uses
  %i.dm = load i64, ptr %i.cz, align 8, !tbaa !20, !noalias !865 ; 3 uses
  %i.dn = sub nsw i64 %i.dm, %i.dl
  %i.do = load ptr, ptr %i.cy, align 8, !tbaa !23, !noalias !865
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dl
  %i.dq = mul nsw i64 %i.dm, %i.cx
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.dq
  store ptr %i.dr, ptr %8, align 8, !tbaa !151, !alias.scope !865
  store i64 %i.dn, ptr %i.cm, align 8, !tbaa !28, !alias.scope !865
  store ptr %i.cy, ptr %i.cn, align 8, !tbaa !30, !alias.scope !865
  store i64 %i.dl, ptr %i.co, align 8, !tbaa !28, !alias.scope !865
  store i64 %i.cx, ptr %i.cp, align 8, !tbaa !28, !alias.scope !865
  store i64 %i.dm, ptr %i.cq, align 8, !tbaa !153, !alias.scope !865
  %i.ds = load ptr, ptr %i.cr, align 8, !tbaa !154, !nonnull !74, !align !86
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !63
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.cx
  %i.dv = load ptr, ptr %2, align 8, !tbaa !79
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.dw = add nuw nsw i64 %.064, 1                ; 2 uses
  %i.dx = load i64, ptr %i.d, align 8, !tbaa !139 ; 2 uses
  %i.dy = icmp slt i64 %i.dw, %i.dx
  br i1 %i.dy, label %bb.k, label %.loopexit, !llvm.loop !860

.loopexit:                                        ; preds = %bb.k, %bb.f, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  ret void
}

end_hunk_1
begin_hunk_2_@_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE6evalToIS2_S3_EEvRT_RT0_:bb.a
_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit76: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i74, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i66
  %i.ix = icmp sgt i64 %i.p, 0
  br i1 %i.ix, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit76
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.jd = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.je = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.jf = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.jg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.jj = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.jp = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.jq = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.jr = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.js = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ju = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.jv = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.jw = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.w
  %.0.in112 = phi i64 [ %i.p, %.lr.ph ], [ %.0113, %bb.w ] ; 3 uses
  %.0113 = add nsw i64 %.0.in112, -1              ; 7 uses
  %i.jx = load ptr, ptr %0, align 8, !tbaa !149, !nonnull !74, !align !86 ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 3 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !20
  %i.ka = load i64, ptr %i.iy, align 8, !tbaa !140
  %i.kb = add i64 %i.jz, 1
  %i.kc = add i64 %.0.in112, %i.ka                ; 7 uses
  %i.kd = sub i64 %i.kb, %i.kc                    ; 8 uses
  %i.ke = load i8, ptr %i.iz, align 8, !tbaa !138, !range !73, !noundef !74
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %i.kg = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !1301 ; 3 uses
  %i.kh = sub nsw i64 %i.kg, %i.kd                ; 2 uses
  %i.ki = load i64, ptr %i.ig, align 8, !tbaa !24, !noalias !1301
  %i.kj = sub nsw i64 %i.ki, %i.kd                ; 2 uses
  %i.kk = load ptr, ptr %1, align 8, !tbaa !23, !noalias !1301
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.kh
  %i.km = mul nsw i64 %i.kj, %i.kg
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.km
  store ptr %i.kn, ptr %7, align 8, !tbaa !27, !alias.scope !1301
  store i64 %i.kd, ptr %i.jm, align 8, !tbaa !28, !alias.scope !1301
  store i64 %i.kd, ptr %i.jn, align 8, !tbaa !28, !alias.scope !1301
  store ptr %1, ptr %i.jo, align 8, !tbaa !30, !alias.scope !1301
  store i64 %i.kh, ptr %i.jp, align 8, !tbaa !28, !alias.scope !1301
  store i64 %i.kj, ptr %i.jq, align 8, !tbaa !28, !alias.scope !1301
  store i64 %i.kg, ptr %i.jr, align 8, !tbaa !33, !alias.scope !1301
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %i.ko = load i64, ptr %i.jy, align 8, !tbaa !20, !noalias !1304 ; 3 uses
  %i.kp = sub nsw i64 %i.ko, %i.kc
  %i.kq = load ptr, ptr %i.jx, align 8, !tbaa !23, !noalias !1304
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.kc
  %i.ks = mul nsw i64 %i.ko, %.0113
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.ks
  store ptr %i.kt, ptr %8, align 8, !tbaa !151, !alias.scope !1304
  store i64 %i.kp, ptr %i.js, align 8, !tbaa !28, !alias.scope !1304
  store ptr %i.jx, ptr %i.jt, align 8, !tbaa !30, !alias.scope !1304
  store i64 %i.kc, ptr %i.ju, align 8, !tbaa !28, !alias.scope !1304
  store i64 %.0113, ptr %i.jv, align 8, !tbaa !28, !alias.scope !1304
  store i64 %i.ko, ptr %i.jw, align 8, !tbaa !153, !alias.scope !1304
  %i.ku = load ptr, ptr %i.jl, align 8, !tbaa !154, !nonnull !74, !align !86
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !63
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %.0113
  %i.kx = load ptr, ptr %2, align 8, !tbaa !63
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.kw, ptr noundef %i.kx)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %i.ky = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !1305 ; 3 uses
  %i.kz = sub nsw i64 %i.ky, %i.kd                ; 2 uses
  %i.la = load i64, ptr %i.ig, align 8, !tbaa !24, !noalias !1305
  %i.lb = sub nsw i64 %i.la, %i.kd                ; 2 uses
  %i.lc = load ptr, ptr %1, align 8, !tbaa !23, !noalias !1305
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.kz
  %i.le = mul nsw i64 %i.lb, %i.ky
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %i.le
  store ptr %i.lf, ptr %9, align 8, !tbaa !27, !alias.scope !1305
  store i64 %i.kd, ptr %i.ja, align 8, !tbaa !28, !alias.scope !1305
  store i64 %i.kd, ptr %i.jb, align 8, !tbaa !28, !alias.scope !1305
  store ptr %1, ptr %i.jc, align 8, !tbaa !30, !alias.scope !1305
  store i64 %i.kz, ptr %i.jd, align 8, !tbaa !28, !alias.scope !1305
  store i64 %i.lb, ptr %i.je, align 8, !tbaa !28, !alias.scope !1305
  store i64 %i.ky, ptr %i.jf, align 8, !tbaa !33, !alias.scope !1305
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.lg = load i64, ptr %i.jy, align 8, !tbaa !20, !noalias !1308 ; 3 uses
  %i.lh = sub nsw i64 %i.lg, %i.kc
  %i.li = load ptr, ptr %i.jx, align 8, !tbaa !23, !noalias !1308
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.li, i64 %i.kc
  %i.lk = mul nsw i64 %i.lg, %.0113
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %i.lk
  store ptr %i.ll, ptr %10, align 8, !tbaa !151, !alias.scope !1308
  store i64 %i.lh, ptr %i.jg, align 8, !tbaa !28, !alias.scope !1308
  store ptr %i.jx, ptr %i.jh, align 8, !tbaa !30, !alias.scope !1308
  store i64 %i.kc, ptr %i.ji, align 8, !tbaa !28, !alias.scope !1308
  store i64 %.0113, ptr %i.jj, align 8, !tbaa !28, !alias.scope !1308
  store i64 %i.lg, ptr %i.jk, align 8, !tbaa !153, !alias.scope !1308
  %i.lm = load ptr, ptr %i.jl, align 8, !tbaa !154, !nonnull !74, !align !86
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !63
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %.0113
  %i.lp = load ptr, ptr %2, align 8, !tbaa !63
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.lo, ptr noundef %i.lp)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.lq = icmp samesign ugt i64 %.0.in112, 1
  br i1 %i.lq, label %bb.t, label %.loopexit, !llvm.loop !1290

.loopexit:                                        ; preds = %bb.w, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit64, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit76, %.preheader, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE18applyThisOnTheLeftIS2_S3_EEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Block", align 8      ; 10 uses
  %5 = alloca %"class.Eigen::Block", align 8      ; 10 uses
  %6 = alloca %"class.Eigen::VectorBlock.1329", align 8 ; 8 uses
  %7 = alloca %"class.Eigen::Block", align 8      ; 10 uses
  %8 = alloca %"class.Eigen::Block.1108", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !73
  %i.c = trunc nuw i8 %i.b to i1
  %or.cond = select i1 %3, i1 %i.c, i1 false
  %.048.shrunk = xor i1 %3, %or.cond              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !139  ; 5 uses
  %i.f = icmp sgt i64 %i.e, 47
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24   ; 6 uses
  %i.i = icmp sgt i64 %i.h, 1
  %or.cond79 = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond79, label %.lr.ph66, label %._crit_edge

.lr.ph66:                                         ; preds = %bb.a
  %i.j = icmp samesign ult i64 %i.e, 96
  %.lhs.trunc = add nuw i64 %i.e, 1
  %i.k = lshr i64 %.lhs.trunc, 1
  %.zext = and i64 %i.k, 127
  %i.l = select i1 %i.j, i64 %.zext, i64 48       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph66, %bb.f
  %i.af = phi i64 [ %i.e, %.lr.ph66 ], [ %i.bp, %bb.f ] ; 2 uses
  %.04765 = phi i64 [ 0, %.lr.ph66 ], [ %i.bo, %bb.f ] ; 4 uses
  %i.ag = load i8, ptr %i.a, align 8, !tbaa !138, !range !73, !noundef !74
  %i.ah = trunc nuw i8 %i.ag to i1                ; 2 uses
  br i1 %i.ah, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.ai = add nuw nsw i64 %.04765, %i.l
  %.sroa.speculated57 = call i64 @llvm.smin.i64(i64 %i.ai, i64 %i.af)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = sub nsw i64 %i.af, %.04765              ; 2 uses
  %i.ak = sub nsw i64 %i.aj, %i.l
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.ak, i64 0)
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.al = phi i64 [ %i.aj, %bb.c ], [ %.sroa.speculated57, %.thread ]
  %i.am = phi i64 [ %.sroa.speculated, %bb.c ], [ %.04765, %.thread ] ; 6 uses
  %i.an = sub nsw i64 %i.al, %i.am                ; 2 uses
  %i.ao = load i64, ptr %i.m, align 8, !tbaa !140
  %i.ap = add i64 %i.ao, %i.am                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aq = load ptr, ptr %0, align 8, !tbaa !149, !nonnull !74, !align !86 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !20 ; 4 uses
  %i.at = sub i64 %i.as, %i.ap                    ; 3 uses
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !23
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ap
  %i.aw = mul nsw i64 %i.as, %i.am
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  store ptr %i.ax, ptr %4, align 8, !tbaa !27
  store i64 %i.at, ptr %i.n, align 8, !tbaa !28
  store i64 %i.an, ptr %i.o, align 8, !tbaa !28
  store ptr %i.aq, ptr %i.p, align 8, !tbaa !30
  store i64 %i.ap, ptr %i.q, align 8, !tbaa !28
  store i64 %i.am, ptr %i.r, align 8, !tbaa !28
  store i64 %i.as, ptr %i.s, align 8, !tbaa !33
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !20  ; 3 uses
  %i.az = sub i64 %i.ap, %i.as
  %i.ba = add i64 %i.az, %i.ay                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bb = select i1 %.048.shrunk, i64 %i.ba, i64 0 ; 2 uses
  br i1 %.048.shrunk, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bd = phi i64 [ %i.bc, %bb.e ], [ %i.at, %bb.d ]
  %i.be = load ptr, ptr %1, align 8, !tbaa !23
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ba
  %i.bg = mul nsw i64 %i.bb, %i.ay
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  store ptr %i.bh, ptr %5, align 8, !tbaa !27
  store i64 %i.at, ptr %i.u, align 8, !tbaa !28
  store i64 %i.bd, ptr %i.v, align 8, !tbaa !28
  store ptr %1, ptr %i.w, align 8, !tbaa !30
  store i64 %i.ba, ptr %i.x, align 8, !tbaa !28
  store i64 %i.bb, ptr %i.y, align 8, !tbaa !28
  store i64 %i.ay, ptr %i.z, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.bi = load ptr, ptr %i.aa, align 8, !tbaa !154, !nonnull !74, !align !86 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !63, !noalias !1319
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.am
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !64, !noalias !1319
  store ptr %i.bk, ptr %6, align 8, !tbaa !156, !alias.scope !1319
  store i64 %i.an, ptr %i.ab, align 8, !tbaa !28, !alias.scope !1319
  store ptr %i.bi, ptr %i.ac, align 8, !tbaa !136, !alias.scope !1319
  store i64 %i.am, ptr %i.ad, align 8, !tbaa !28, !alias.scope !1319
  store i64 %i.bm, ptr %i.ae, align 8, !tbaa !159, !alias.scope !1319
  %i.bn = xor i1 %i.ah, true
  call void @_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEES5_NS_11VectorBlockIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1EEEEEvRT_RKT0_RKT1_b(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %6, i1 noundef zeroext %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bo = add nuw nsw i64 %.04765, %i.l           ; 2 uses
  %i.bp = load i64, ptr %i.d, align 8, !tbaa !139 ; 2 uses
  %i.bq = icmp slt i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.b, label %.loopexit, !llvm.loop !1311

._crit_edge:                                      ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !64
  %.not.i.i = icmp eq i64 %i.h, %i.bt
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.bu = load ptr, ptr %2, align 8, !tbaa !63
  tail call void @free(ptr noundef %i.bu) #20
  %i.bv = icmp sgt i64 %i.h, 0
  br i1 %i.bv, label %bb.h, label %.sink.split.i.i

bb.h:                                             ; preds = %bb.g
  %i.bw = icmp samesign ugt i64 %i.h, 2305843009213693951
  br i1 %i.bw, label %bb.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bx = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bx, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.h
  %i.by = shl nuw i64 %i.h, 3
  %i.bz = tail call noalias ptr @malloc(i64 noundef %i.by) #21 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.j, label %.sink.split.i.i

bb.j:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.cb = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cb, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.g
  %.sink.i.i = phi ptr [ %i.bz, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.g ]
  store ptr %.sink.i.i, ptr %2, align 8, !tbaa !63
  %.pre68 = load i64, ptr %i.d, align 8, !tbaa !139
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %._crit_edge, %.sink.split.i.i
  %i.cc = phi i64 [ %i.e, %._crit_edge ], [ %.pre68, %.sink.split.i.i ] ; 2 uses
  store i64 %i.h, ptr %i.bs, align 8, !tbaa !64
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %i.cs = phi i64 [ %i.cc, %.lr.ph ], [ %i.dx, %bb.k ]
  %.064 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %bb.k ] ; 3 uses
  %i.ct = load i8, ptr %i.a, align 8, !tbaa !138, !range !73, !noundef !74
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = xor i64 %.064, -1
  %i.cw = add i64 %i.cs, %i.cv
  %i.cx = select i1 %i.cu, i64 %.064, i64 %i.cw   ; 4 uses
  %i.cy = load ptr, ptr %0, align 8, !tbaa !149, !nonnull !74, !align !86 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !20
  %i.db = load i64, ptr %i.ce, align 8, !tbaa !140
  %i.dc = add i64 %i.cx, %i.db                    ; 2 uses
  %i.dd = sub i64 %i.da, %i.dc                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %.pre69 = load i64, ptr %i.br, align 8, !tbaa !24 ; 2 uses
  %spec.select = select i1 %.048.shrunk, i64 %i.dd, i64 %.pre69 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  %i.de = load i64, ptr %i.cf, align 8, !tbaa !20, !noalias !1320 ; 3 uses
  %i.df = sub nsw i64 %i.de, %i.dd                ; 2 uses
  %i.dg = sub nsw i64 %.pre69, %spec.select       ; 2 uses
  %i.dh = load ptr, ptr %1, align 8, !tbaa !23, !noalias !1320
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.df
  %i.dj = mul nsw i64 %i.dg, %i.de
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dj
  store ptr %i.dk, ptr %7, align 8, !tbaa !27, !alias.scope !1320
  store i64 %i.dd, ptr %i.cg, align 8, !tbaa !28, !alias.scope !1320
  store i64 %spec.select, ptr %i.ch, align 8, !tbaa !28, !alias.scope !1320
  store ptr %1, ptr %i.ci, align 8, !tbaa !30, !alias.scope !1320
  store i64 %i.df, ptr %i.cj, align 8, !tbaa !28, !alias.scope !1320
  store i64 %i.dg, ptr %i.ck, align 8, !tbaa !28, !alias.scope !1320
  store i64 %i.de, ptr %i.cl, align 8, !tbaa !33, !alias.scope !1320
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  %i.dl = add i64 %i.dc, 1                        ; 3 uses
  %i.dm = load i64, ptr %i.cz, align 8, !tbaa !20, !noalias !1323 ; 3 uses
  %i.dn = sub nsw i64 %i.dm, %i.dl
  %i.do = load ptr, ptr %i.cy, align 8, !tbaa !23, !noalias !1323
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dl
  %i.dq = mul nsw i64 %i.dm, %i.cx
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.dq
  store ptr %i.dr, ptr %8, align 8, !tbaa !151, !alias.scope !1323
  store i64 %i.dn, ptr %i.cm, align 8, !tbaa !28, !alias.scope !1323
  store ptr %i.cy, ptr %i.cn, align 8, !tbaa !30, !alias.scope !1323
  store i64 %i.dl, ptr %i.co, align 8, !tbaa !28, !alias.scope !1323
  store i64 %i.cx, ptr %i.cp, align 8, !tbaa !28, !alias.scope !1323
  store i64 %i.dm, ptr %i.cq, align 8, !tbaa !153, !alias.scope !1323
  %i.ds = load ptr, ptr %i.cr, align 8, !tbaa !154, !nonnull !74, !align !86
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !63
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.cx
  %i.dv = load ptr, ptr %2, align 8, !tbaa !63
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.dw = add nuw nsw i64 %.064, 1                ; 2 uses
  %i.dx = load i64, ptr %i.d, align 8, !tbaa !139 ; 2 uses
  %i.dy = icmp slt i64 %i.dw, %i.dx
  br i1 %i.dy, label %bb.k, label %.loopexit, !llvm.loop !1318

.loopexit:                                        ; preds = %bb.k, %bb.f, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  ret void
}

end_hunk_2
