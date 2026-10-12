Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_pcg?download=true
inline.NumInlined: 27367
inline.NumDeleted: 13763
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 191
begin_hunk_0_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi2ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.513", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !572  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !573
  %.sroa.speculated246 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 5 uses
  %i.e = mul nsw i64 %.sroa.speculated246, %i.b   ; 4 uses
  %i.f = mul nsw i64 %i.b, %1                     ; 4 uses
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172: ; preds = %bb.a
  %i.i = load ptr, ptr %7, align 8, !tbaa !578    ; 2 uses
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !90
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !90
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
          to label %.noexc193 unwind label %bb.af

.noexc193:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !579  ; 2 uses
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !90
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
  br i1 %i.ai, label %bb.m, label %bb.q, !prof !93

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
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !581
  %.sroa.speculated280 = tail call i64 @llvm.smax.i64(i64 %6, i64 %0)
  %i.an = shl i64 %.sroa.speculated280, 5
  %.fr = freeze i64 %i.am
  %i.ao = udiv i64 %.fr, %i.an
  %i.ap = and i64 %i.ao, 576460752303423484       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp sgt i64 %0, 0
  %. = select i1 %i.aq, i64 4, i64 %i.ap          ; 6 uses
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
  %.0135326.us = phi i64 [ %i.fv, %.loopexit.us ], [ %0, %.lr.ph312.us.preheader ] ; 5 uses
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

.lr.ph308.us.us:                                  ; preds = %.lr.ph308.us.us.preheader, %._crit_edge309.us.us
  %indvar377 = phi i64 [ %indvar.next378, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 4 uses
  %.0134310.us.us = phi i64 [ %i.ft, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 12 uses
  %16 = mul i64 %., %indvar377
  %17 = or disjoint i64 %.0134310.us.us, 1
  %i.cd = mul i64 %i.bg, %indvar377               ; 2 uses
  %i.ce = add i64 %i.bw, %i.cd
  %i.cf = or disjoint i64 %.0134310.us.us, 1
  %i.cg = mul i64 %., %indvar377                  ; 2 uses
  %i.ch = sub i64 %1, %i.cg
  %smin383 = call i64 @llvm.smin.i64(i64 %., i64 %i.ch)
  %i.ci = add i64 %smin383, %.0134310.us.us
  %smax = call i64 @llvm.smax.i64(i64 %i.cf, i64 %i.ci)
  %i.cj = xor i64 %i.cg, -1
  %i.ck = add i64 %smax, %i.cj
  %i.cl = mul i64 %i.bi, %i.ck
  %i.cm = add i64 %i.ce, %i.cl
  %i.cn = sub nsw i64 %1, %.0134310.us.us         ; 2 uses
  %.sroa.speculated216.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.cn) ; 3 uses
  %i.co = add i64 %.sroa.speculated216.us.us, %.0134310.us.us ; 3 uses
  %i.cp = icmp slt i64 %i.cn, 1
  %i.cq = mul nuw nsw i64 %.0134310.us.us, %smin
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cq ; 2 uses
  %i.cs = mul nsw i64 %.0134310.us.us, %6         ; 2 uses
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %4, i64 %i.cs
  %i.ct = getelementptr [8 x i8], ptr %i.ca, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.cb, i64 %i.cd
  %i.cv = call i64 @llvm.smax.i64(i64 %17, i64 %i.co) ; 2 uses
  %i.cw = sub i64 %i.cv, %16                      ; 2 uses
  %min.iters.check390 = icmp ugt i64 %i.cw, 3
  %or.cond = and i1 %min.iters.check390, %ident.check.not
  %i.cx = and i64 %i.cv, 3                        ; 2 uses
  %n.vec392 = sub nuw i64 %i.cw, %i.cx            ; 2 uses
  %i.cy = add i64 %.0134310.us.us, %n.vec392
  %cmp.n401 = icmp eq i64 %i.cx, 0
  br label %bb.s

bb.s:                                             ; preds = %bb.x, %.lr.ph308.us.us
  %indvar379 = phi i64 [ %indvar.next380, %bb.x ], [ 0, %.lr.ph308.us.us ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ %smin, %.lr.ph308.us.us ] ; 3 uses
  %.0133306.us.us = phi i64 [ %i.fr, %bb.x ], [ 0, %.lr.ph308.us.us ] ; 4 uses
  %i.cz = mul i64 %indvar379, -32                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cu, i64 %i.cz
  %smin381 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 4)
  %i.da = mul i64 %smin381, -8
  %scevgep382 = getelementptr i8, ptr %scevgep, i64 %i.da
  %i.db = add i64 %i.cm, %i.cz
  %i.dc = mul i64 %i.br, %indvar379
  %i.dd = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.de = call i64 @llvm.umin.i64(i64 %i.dd, i64 4)
  %i.df = sub nuw nsw i64 %smin, %.0133306.us.us  ; 3 uses
  %.sroa.speculated210.us.us = call i64 @llvm.smin.i64(i64 %i.df, i64 4) ; 7 uses
  %i.dg = icmp slt i64 %i.df, 1
  %brmerge = select i1 %i.dg, i1 true, i1 %i.cp
  br i1 %brmerge, label %._crit_edge.split.us.us, label %.lr.ph303.us.us.preheader

.lr.ph303.us.us.preheader:                        ; preds = %bb.s
  %i.dh = getelementptr i8, ptr %i.cc, i64 %i.dc
  br label %.lr.ph303.us.us

.lr.ph303.us.us:                                  ; preds = %.lr.ph303.us.us.preheader, %._crit_edge304.us.us
  %.0132305.us.us = phi i64 [ %i.fk, %._crit_edge304.us.us ], [ 0, %.lr.ph303.us.us.preheader ] ; 5 uses
  %i.di = shl i64 %.0132305.us.us, 3
  %i.dj = sub i64 %i.db, %i.di
  %scevgep384 = getelementptr i8, ptr %4, i64 %i.dj
  %i.dk = mul i64 %i.bo, %.0132305.us.us
  %scevgep385 = getelementptr i8, ptr %i.dh, i64 %i.dk
  %i.dl = add nuw nsw i64 %.0132305.us.us, %.0133306.us.us
  %i.dm = xor i64 %i.dl, -1
  %i.dn = add nsw i64 %.0135326.us, %i.dm         ; 4 uses
  %i.do = xor i64 %.0132305.us.us, -1
  %i.dp = add nsw i64 %.sroa.speculated210.us.us, %i.do ; 6 uses
  %i.dq = sub i64 %i.dn, %i.dp                    ; 2 uses
  %i.dr = mul nsw i64 %i.dn, %3                   ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %2, i64 %i.dn
  %i.dt = getelementptr [8 x i8], ptr %i.ds, i64 %i.dr
  %i.du = load double, ptr %i.dt, align 8, !tbaa !128
  %i.dv = fdiv double 1.000000e+00, %i.du         ; 3 uses
  %i.dw = getelementptr [8 x i8], ptr %4, i64 %i.dn ; 3 uses
  %i.dx = getelementptr [8 x i8], ptr %4, i64 %i.dq
  %i.dy = getelementptr [8 x i8], ptr %2, i64 %i.dq
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %i.dr ; 3 uses
  %i.ea = icmp sgt i64 %i.dp, 0
  br i1 %i.ea, label %.lr.ph.us.us.us.preheader, label %.lr.ph303.split.us314.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph303.us.us
  %min.iters.check = icmp ult i64 %i.dp, 4
  %bound0 = icmp ult ptr %scevgep382, %scevgep385
  %bound1 = icmp ult ptr %i.dz, %scevgep384
  %found.conflict = and i1 %bound0, %bound1
  %i.eb = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.dp, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br label %.lr.ph.us.us.us

.lr.ph303.split.us314.us.preheader:               ; preds = %.lr.ph303.us.us
  br i1 %or.cond, label %vector.ph391, label %.lr.ph303.split.us314.us.preheader403

vector.ph391:                                     ; preds = %.lr.ph303.split.us314.us.preheader
  %broadcast.splatinsert393 = insertelement <2 x double> poison, double %i.dv, i64 0
  %broadcast.splat394 = shufflevector <2 x double> %broadcast.splatinsert393, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %i.dw, i64 %.0134310.us.us
  br label %vector.body395

vector.body395:                                   ; preds = %vector.body395, %vector.ph391
  %index396 = phi i64 [ 0, %vector.ph391 ], [ %index.next399, %vector.body395 ] ; 2 uses
  %i.ed = getelementptr [8 x i8], ptr %i.ec, i64 %index396 ; 3 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 16     ; 2 uses
  %wide.load397 = load <2 x double>, ptr %i.ed, align 8, !tbaa !128
  %wide.load398 = load <2 x double>, ptr %i.ee, align 8, !tbaa !128
  %i.ef = fmul <2 x double> %broadcast.splat394, %wide.load397
  %i.eg = fmul <2 x double> %broadcast.splat394, %wide.load398
  store <2 x double> %i.ef, ptr %i.ed, align 8, !tbaa !128
  store <2 x double> %i.eg, ptr %i.ee, align 8, !tbaa !128
  %index.next399 = add nuw i64 %index396, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next399, %n.vec392
  br i1 %i.eh, label %middle.block400, label %vector.body395, !llvm.loop !1694

middle.block400:                                  ; preds = %vector.body395
  br i1 %cmp.n401, label %._crit_edge304.us.us, label %.lr.ph303.split.us314.us.preheader403

.lr.ph303.split.us314.us.preheader403:            ; preds = %.lr.ph303.split.us314.us.preheader, %middle.block400
  %.0131301.us315.us.ph = phi i64 [ %.0134310.us.us, %.lr.ph303.split.us314.us.preheader ], [ %i.cy, %middle.block400 ]
  br label %.lr.ph303.split.us314.us

.lr.ph303.split.us314.us:                         ; preds = %.lr.ph303.split.us314.us.preheader403, %.lr.ph303.split.us314.us
  %.0131301.us315.us = phi i64 [ %i.em, %.lr.ph303.split.us314.us ], [ %.0131301.us315.us.ph, %.lr.ph303.split.us314.us.preheader403 ] ; 2 uses
  %i.ei = mul nsw i64 %.0131301.us315.us, %6
  %i.ej = getelementptr [8 x i8], ptr %i.dw, i64 %i.ei ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !128
  %i.el = fmul double %i.dv, %i.ek
  store double %i.el, ptr %i.ej, align 8, !tbaa !128
  %i.em = add nuw nsw i64 %.0131301.us315.us, 1   ; 2 uses
  %i.en = icmp slt i64 %i.em, %i.co
  br i1 %i.en, label %.lr.ph303.split.us314.us, label %._crit_edge304.us.us, !llvm.loop !1695

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.us.us.us
  %.0131301.us.us.us = phi i64 [ %i.fi, %._crit_edge.us.us.us ], [ %.0134310.us.us, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.eo = mul nsw i64 %.0131301.us.us.us, %6      ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %i.dw, i64 %i.eo ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !128
  %i.er = fmul double %i.dv, %i.eq                ; 2 uses
  store double %i.er, ptr %i.ep, align 8, !tbaa !128
  %i.es = getelementptr [8 x i8], ptr %i.dx, i64 %i.eo ; 2 uses
  %i.et = fneg double %i.er                       ; 2 uses
  %brmerge406 = select i1 %min.iters.check, i1 true, i1 %i.eb
  br i1 %brmerge406, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.et, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load = load <2 x double>, ptr %i.eu, align 8, !tbaa !128, !alias.scope !1707
  %wide.load386 = load <2 x double>, ptr %i.ev, align 8, !tbaa !128, !alias.scope !1707
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %index ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %wide.load387 = load <2 x double>, ptr %i.ew, align 8, !tbaa !128, !alias.scope !1708, !noalias !1707
  %wide.load388 = load <2 x double>, ptr %i.ex, align 8, !tbaa !128, !alias.scope !1708, !noalias !1707
  %i.ey = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load387)
  %i.ez = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load386, <2 x double> %wide.load388)
  store <2 x double> %i.ey, ptr %i.ew, align 8, !tbaa !128, !alias.scope !1708, !noalias !1707
  store <2 x double> %i.ez, ptr %i.ex, align 8, !tbaa !128, !alias.scope !1708, !noalias !1707
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !1699

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us, %middle.block
  %.0130300.us.us.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0130300.us.us.us = phi i64 [ %i.fg, %scalar.ph ], [ %.0130300.us.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.0130300.us.us.us
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !128
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.0130300.us.us.us ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !128
  %i.ff = call double @llvm.fmuladd.f64(double %i.et, double %i.fc, double %i.fe)
  store double %i.ff, ptr %i.fd, align 8, !tbaa !128
  %i.fg = add nuw nsw i64 %.0130300.us.us.us, 1   ; 2 uses
  %i.fh = icmp slt i64 %i.fg, %i.dp
  br i1 %i.fh, label %scalar.ph, label %._crit_edge.us.us.us, !llvm.loop !1700

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %i.fi = add nuw nsw i64 %.0131301.us.us.us, 1   ; 2 uses
  %i.fj = icmp slt i64 %i.fi, %i.co
  br i1 %i.fj, label %.lr.ph.us.us.us, label %._crit_edge304.us.us, !llvm.loop !1701

._crit_edge304.us.us:                             ; preds = %.lr.ph303.split.us314.us, %._crit_edge.us.us.us, %middle.block400
  %i.fk = add nuw nsw i64 %.0132305.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.fk, %i.de
  br i1 %exitcond.not, label %._crit_edge.split.us.us, label %.lr.ph303.us.us, !llvm.loop !1702

._crit_edge.split.us.us:                          ; preds = %._crit_edge304.us.us, %bb.s
  %i.fl = sub nsw i64 %i.df, %.sroa.speculated210.us.us ; 5 uses
  %i.fm = add nuw i64 %.0133306.us.us, %.sroa.speculated210.us.us
  %i.fn = sub i64 %.0135326.us, %i.fm             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.fn
  store ptr %gep.us.us, ptr %11, align 8
  store i64 %6, ptr %i.ax, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %.sroa.speculated210.us.us, i64 noundef %.sroa.speculated216.us.us, i64 noundef %smin, i64 noundef %i.fl)
          to label %bb.t unwind label %.split.us.split.us

bb.t:                                             ; preds = %._crit_edge.split.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %i.fo = icmp sgt i64 %i.fl, 0
  br i1 %i.fo, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.fp = mul nsw i64 %i.fn, %3
  %i.fq = getelementptr [8 x i8], ptr %i.bz, i64 %i.fp
  store ptr %i.fq, ptr %12, align 8
  store i64 %3, ptr %i.ay, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %.sroa.speculated210.us.us, i64 noundef %i.fl, i64 noundef 0, i64 noundef 0)
          to label %bb.v unwind label %.split320.us.split.us

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  store ptr %i.ct, ptr %13, align 8
end_hunk_0
