Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_dense?download=true
inline.NumInlined: 24160
inline.NumDeleted: 12008
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 137
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi2ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.505", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !521  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !522
  %.sroa.speculated246 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 5 uses
  %i.e = mul nsw i64 %.sroa.speculated246, %i.b   ; 4 uses
  %i.f = mul nsw i64 %i.b, %1                     ; 4 uses
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !80
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172: ; preds = %bb.a
  %i.i = load ptr, ptr %7, align 8, !tbaa !527    ; 2 uses
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !80
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !80
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
          to label %.noexc193 unwind label %bb.af

.noexc193:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !528  ; 2 uses
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !80
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
  br i1 %i.ai, label %bb.m, label %bb.q, !prof !83

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
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !530
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
  %16 = or disjoint i64 %.0134310.us.us, 1
  %i.cv = call i64 @llvm.smax.i64(i64 %16, i64 %i.co) ; 2 uses
  %17 = mul i64 %., %indvar377
  %i.cw = sub i64 %i.cv, %17                      ; 2 uses
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
  %i.du = load double, ptr %i.dt, align 8, !tbaa !370
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
  %wide.load397 = load <2 x double>, ptr %i.ed, align 8, !tbaa !370
  %wide.load398 = load <2 x double>, ptr %i.ee, align 8, !tbaa !370
  %i.ef = fmul <2 x double> %broadcast.splat394, %wide.load397
  %i.eg = fmul <2 x double> %broadcast.splat394, %wide.load398
  store <2 x double> %i.ef, ptr %i.ed, align 8, !tbaa !370
  store <2 x double> %i.eg, ptr %i.ee, align 8, !tbaa !370
  %index.next399 = add nuw i64 %index396, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next399, %n.vec392
  br i1 %i.eh, label %middle.block400, label %vector.body395, !llvm.loop !1550

middle.block400:                                  ; preds = %vector.body395
  br i1 %cmp.n401, label %._crit_edge304.us.us, label %.lr.ph303.split.us314.us.preheader403

.lr.ph303.split.us314.us.preheader403:            ; preds = %.lr.ph303.split.us314.us.preheader, %middle.block400
  %.0131301.us315.us.ph = phi i64 [ %.0134310.us.us, %.lr.ph303.split.us314.us.preheader ], [ %i.cy, %middle.block400 ]
  br label %.lr.ph303.split.us314.us

.lr.ph303.split.us314.us:                         ; preds = %.lr.ph303.split.us314.us.preheader403, %.lr.ph303.split.us314.us
  %.0131301.us315.us = phi i64 [ %i.em, %.lr.ph303.split.us314.us ], [ %.0131301.us315.us.ph, %.lr.ph303.split.us314.us.preheader403 ] ; 2 uses
  %i.ei = mul nsw i64 %.0131301.us315.us, %6
  %i.ej = getelementptr [8 x i8], ptr %i.dw, i64 %i.ei ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !370
  %i.el = fmul double %i.dv, %i.ek
  store double %i.el, ptr %i.ej, align 8, !tbaa !370
  %i.em = add nuw nsw i64 %.0131301.us315.us, 1   ; 2 uses
  %i.en = icmp slt i64 %i.em, %i.co
  br i1 %i.en, label %.lr.ph303.split.us314.us, label %._crit_edge304.us.us, !llvm.loop !1551

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.us.us.us
  %.0131301.us.us.us = phi i64 [ %i.fi, %._crit_edge.us.us.us ], [ %.0134310.us.us, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.eo = mul nsw i64 %.0131301.us.us.us, %6      ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %i.dw, i64 %i.eo ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !370
  %i.er = fmul double %i.dv, %i.eq                ; 2 uses
  store double %i.er, ptr %i.ep, align 8, !tbaa !370
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
  %wide.load = load <2 x double>, ptr %i.eu, align 8, !tbaa !370, !alias.scope !1563
  %wide.load386 = load <2 x double>, ptr %i.ev, align 8, !tbaa !370, !alias.scope !1563
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %index ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %wide.load387 = load <2 x double>, ptr %i.ew, align 8, !tbaa !370, !alias.scope !1564, !noalias !1563
  %wide.load388 = load <2 x double>, ptr %i.ex, align 8, !tbaa !370, !alias.scope !1564, !noalias !1563
  %i.ey = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load387)
  %i.ez = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load386, <2 x double> %wide.load388)
  store <2 x double> %i.ey, ptr %i.ew, align 8, !tbaa !370, !alias.scope !1564, !noalias !1563
  store <2 x double> %i.ez, ptr %i.ex, align 8, !tbaa !370, !alias.scope !1564, !noalias !1563
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !1555

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us, %middle.block
  %.0130300.us.us.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0130300.us.us.us = phi i64 [ %i.fg, %scalar.ph ], [ %.0130300.us.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.0130300.us.us.us
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !370
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.0130300.us.us.us ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !370
  %i.ff = call double @llvm.fmuladd.f64(double %i.et, double %i.fc, double %i.fe)
  store double %i.ff, ptr %i.fd, align 8, !tbaa !370
  %i.fg = add nuw nsw i64 %.0130300.us.us.us, 1   ; 2 uses
  %i.fh = icmp slt i64 %i.fg, %i.dp
  br i1 %i.fh, label %scalar.ph, label %._crit_edge.us.us.us, !llvm.loop !1556

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %i.fi = add nuw nsw i64 %.0131301.us.us.us, 1   ; 2 uses
  %i.fj = icmp slt i64 %i.fi, %i.co
  br i1 %i.fj, label %.lr.ph.us.us.us, label %._crit_edge304.us.us, !llvm.loop !1557

._crit_edge304.us.us:                             ; preds = %.lr.ph303.split.us314.us, %._crit_edge.us.us.us, %middle.block400
  %i.fk = add nuw nsw i64 %.0132305.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.fk, %i.de
  br i1 %exitcond.not, label %._crit_edge.split.us.us, label %.lr.ph303.us.us, !llvm.loop !1558

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
begin_hunk_1_@_ZN5Eigen8internal12ldlt_inplaceILi1EE9unblockedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEENS4_IdLin1ELi1ELi0ELin1ELi1EEEEEbRT_RT0_RT1_RNS0_10SignMatrixE:bb.a
  %bound0627 = icmp ult ptr %i.bk, %scevgep626
  %bound1628 = icmp ult ptr %i.bl, %scevgep624
  %found.conflict629 = and i1 %bound0627, %bound1628
  br i1 %found.conflict629, label %.lr.ph.i.i.i.i.i.i.preheader661, label %vector.ph632

vector.ph632:                                     ; preds = %vector.memcheck623
  %n.vec633 = and i64 %.0116.ph, -4               ; 3 uses
  br label %vector.body634

vector.body634:                                   ; preds = %vector.body634, %vector.ph632
  %index635 = phi i64 [ 0, %vector.ph632 ], [ %index.next640, %vector.body634 ] ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %index635 ; 3 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %index635 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load636 = load <2 x double>, ptr %i.bn, align 8, !tbaa !370, !alias.scope !1826, !noalias !1827
  %wide.load637 = load <2 x double>, ptr %i.bp, align 8, !tbaa !370, !alias.scope !1826, !noalias !1827
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %wide.load638 = load <2 x double>, ptr %i.bo, align 8, !tbaa !370, !alias.scope !1827
  %wide.load639 = load <2 x double>, ptr %i.bq, align 8, !tbaa !370, !alias.scope !1827
  store <2 x double> %wide.load638, ptr %i.bn, align 8, !tbaa !370, !alias.scope !1826, !noalias !1827
  store <2 x double> %wide.load639, ptr %i.bp, align 8, !tbaa !370, !alias.scope !1826, !noalias !1827
  store <2 x double> %wide.load636, ptr %i.bo, align 8, !tbaa !370, !alias.scope !1827
  store <2 x double> %wide.load637, ptr %i.bq, align 8, !tbaa !370, !alias.scope !1827
  %index.next640 = add nuw i64 %index635, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next640, %n.vec633
  br i1 %i.br, label %middle.block641, label %vector.body634, !llvm.loop !1786

middle.block641:                                  ; preds = %vector.body634
  %cmp.n642 = icmp eq i64 %.0116.ph, %n.vec633
  br i1 %cmp.n642, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader661

.lr.ph.i.i.i.i.i.i.preheader661:                  ; preds = %vector.memcheck623, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block641
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck623 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec633, %middle.block641 ] ; 4 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter670 = and i64 %.0116.ph, 1
  %lcmp.mod671.not = icmp eq i64 %xtraiter670, 0
  br i1 %lcmp.mod671.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader661
  %i.bs = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.w   ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bs ; 2 uses
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !370
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !370
  store double %i.bw, ptr %i.bt, align 8, !tbaa !370
  store double %i.bv, ptr %i.bu, align 8, !tbaa !370
  %i.bx = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader661
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader661 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.by = icmp eq i64 %.0116.ph, %.neg
  br i1 %i.by, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.bz = mul nsw i64 %.05.i.i.i.i.i.i, %i.w      ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bz ; 2 uses
  %i.cc = load double, ptr %i.ca, align 8, !tbaa !370
  %i.cd = load double, ptr %i.cb, align 8, !tbaa !370
  store double %i.cd, ptr %i.ca, align 8, !tbaa !370
  store double %i.cc, ptr %i.cb, align 8, !tbaa !370
  %i.ce = add nuw nsw i64 %.05.i.i.i.i.i.i, 1
  %i.cf = mul nsw i64 %i.ce, %i.w                 ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.cf ; 2 uses
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !370
  %i.cj = load double, ptr %i.ch, align 8, !tbaa !370
  store double %i.cj, ptr %i.cg, align 8, !tbaa !370
  store double %i.ci, ptr %i.ch, align 8, !tbaa !370
  %i.ck = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ck, %.0116.ph
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1787

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block641, %bb.j
  %i.cl = mul nsw i64 %i.w, %.0116.ph
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cl
  %i.cn = sub nsw i64 %i.w, %i.bj                 ; 4 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cn ; 11 uses
  %i.cp = mul i64 %i.be, %i.w
  %i.cq = getelementptr [8 x i8], ptr %i.z, i64 %i.cp
  %i.cr = getelementptr [8 x i8], ptr %i.cq, i64 %i.cn ; 10 uses
  %i.cs = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.ct = and i64 %i.cs, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %i.cu = lshr exact i64 %i.cs, 3
  %i.cv = and i64 %i.cu, 1
  %i.cw = call i64 @llvm.smin.i64(i64 %i.cv, i64 %i.bj)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.k, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.cw, %bb.k ], [ %i.bj, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ] ; 13 uses
  %i.cx = sub nsw i64 %i.bj, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.cy = sdiv i64 %i.cx, 2                       ; 2 uses
  %i.cz = shl nsw i64 %i.cy, 1                    ; 2 uses
  %i.da = add nsw i64 %i.cz, %.0.i.i.i.i.i.i.i    ; 6 uses
  %i.db = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.db, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check608 = icmp ult i64 %.0.i.i.i.i.i.i.i, 10
  br i1 %min.iters.check608, label %.lr.ph.i.i.i.i.i.i.i.preheader660, label %vector.memcheck599

vector.memcheck599:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.dc = mul i64 %i.w, %i.re
  %i.dd = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.de = getelementptr i8, ptr %i.z, i64 %i.dc
  %scevgep600 = getelementptr i8, ptr %i.de, i64 %i.dd
  %i.df = shl i64 %i.cn, 3                        ; 2 uses
  %scevgep601 = getelementptr i8, ptr %scevgep600, i64 %i.df
  %scevgep602 = getelementptr i8, ptr %i.z, i64 %i.dd
  %i.dg = shl i64 %i.w, 3
  %i.dh = mul i64 %i.dg, %i.be
  %i.di = getelementptr i8, ptr %scevgep602, i64 %i.dh
  %scevgep603 = getelementptr i8, ptr %i.di, i64 %i.df
  %bound0604 = icmp ult ptr %i.co, %scevgep603
  %bound1605 = icmp ult ptr %i.cr, %scevgep601
  %found.conflict606 = and i1 %bound0604, %bound1605
  br i1 %found.conflict606, label %.lr.ph.i.i.i.i.i.i.i.preheader660, label %vector.ph609

vector.ph609:                                     ; preds = %vector.memcheck599
  %n.vec610 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body611

vector.body611:                                   ; preds = %vector.body611, %vector.ph609
  %index612 = phi i64 [ 0, %vector.ph609 ], [ %index.next617, %vector.body611 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %index612 ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index612 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load613 = load <2 x double>, ptr %i.dj, align 8, !tbaa !370, !alias.scope !1828, !noalias !1829
  %wide.load614 = load <2 x double>, ptr %i.dl, align 8, !tbaa !370, !alias.scope !1828, !noalias !1829
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %wide.load615 = load <2 x double>, ptr %i.dk, align 8, !tbaa !370, !alias.scope !1829
  %wide.load616 = load <2 x double>, ptr %i.dm, align 8, !tbaa !370, !alias.scope !1829
  store <2 x double> %wide.load615, ptr %i.dj, align 8, !tbaa !370, !alias.scope !1828, !noalias !1829
  store <2 x double> %wide.load616, ptr %i.dl, align 8, !tbaa !370, !alias.scope !1828, !noalias !1829
  store <2 x double> %wide.load613, ptr %i.dk, align 8, !tbaa !370, !alias.scope !1829
  store <2 x double> %wide.load614, ptr %i.dm, align 8, !tbaa !370, !alias.scope !1829
  %index.next617 = add nuw i64 %index612, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next617, %n.vec610
  br i1 %i.dn, label %middle.block618, label %vector.body611, !llvm.loop !1791

middle.block618:                                  ; preds = %vector.body611
  %cmp.n619 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec610
  br i1 %cmp.n619, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader660

.lr.ph.i.i.i.i.i.i.i.preheader660:                ; preds = %vector.memcheck599, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block618
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck599 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec610, %middle.block618 ] ; 5 uses
  %.neg691 = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter672 = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod673.not = icmp eq i64 %xtraiter672, 0
  br i1 %lcmp.mod673.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader660
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.dq = load double, ptr %i.do, align 8, !tbaa !370
  %i.dr = load double, ptr %i.dp, align 8, !tbaa !370
  store double %i.dr, ptr %i.do, align 8, !tbaa !370
  store double %i.dq, ptr %i.dp, align 8, !tbaa !370
  %i.ds = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader660
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader660 ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.dt = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg691
  br i1 %i.dt, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.dw = load double, ptr %i.du, align 8, !tbaa !370
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !370
  store double %i.dx, ptr %i.du, align 8, !tbaa !370
  store double %i.dw, ptr %i.dv, align 8, !tbaa !370
  %i.dy = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dy ; 2 uses
  %i.eb = load double, ptr %i.dz, align 8, !tbaa !370
  %i.ec = load double, ptr %i.ea, align 8, !tbaa !370
  store double %i.ec, ptr %i.dz, align 8, !tbaa !370
  store double %i.eb, ptr %i.ea, align 8, !tbaa !370
  %i.ed = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ed, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1792

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block618, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.ee = icmp sgt i64 %i.cx, 1
  br i1 %i.ee, label %.lr.ph.i.i.i.i.i.i134, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i134, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.ef = icmp slt i64 %i.da, %i.bj
  br i1 %i.ef, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %6 = xor i64 %.0116.ph, -1
  %7 = add i64 %i.b, %6                           ; 2 uses
  %i.eg = add i64 %.sroa.0.1.i.i.lcssa, %.0.i.i.i.i.i.i.i
  %i.eh = add i64 %i.eg, %i.cz
  %i.ei = sub i64 %7, %i.eh                       ; 3 uses
  %min.iters.check586 = icmp ult i64 %i.ei, 18
  br i1 %min.iters.check586, label %.lr.ph.i17.i.i.i.i.i.i.preheader659, label %vector.memcheck575

vector.memcheck575:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.ej = mul i64 %i.w, %i.rf
  %i.ek = shl i64 %i.cy, 4                        ; 2 uses
  %i.el = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.em = getelementptr i8, ptr %i.z, i64 %i.ej
  %i.en = getelementptr i8, ptr %i.em, i64 %i.ek
  %scevgep576 = getelementptr i8, ptr %i.en, i64 %i.el
  %i.eo = shl i64 %i.cn, 3                        ; 2 uses
  %scevgep577 = getelementptr i8, ptr %scevgep576, i64 %i.eo
  %i.ep = mul i64 %i.w, %i.rg
  %scevgep578 = getelementptr i8, ptr %i.z, i64 %i.ep
  %i.eq = getelementptr i8, ptr %i.z, i64 %i.ek
  %scevgep579 = getelementptr i8, ptr %i.eq, i64 %i.el
  %i.er = shl i64 %i.w, 3                         ; 2 uses
  %i.es = mul i64 %i.er, %i.be
  %i.et = getelementptr i8, ptr %scevgep579, i64 %i.es
  %scevgep580 = getelementptr i8, ptr %i.et, i64 %i.eo
  %i.eu = add i64 %i.rh, %.sroa.0.1.i.i.lcssa
  %i.ev = mul i64 %i.er, %i.eu
  %scevgep581 = getelementptr i8, ptr %i.z, i64 %i.ev
  %bound0582 = icmp ult ptr %scevgep577, %scevgep581
  %bound1583 = icmp ult ptr %scevgep580, %scevgep578
  %found.conflict584 = and i1 %bound0582, %bound1583
  br i1 %found.conflict584, label %.lr.ph.i17.i.i.i.i.i.i.preheader659, label %vector.ph587

vector.ph587:                                     ; preds = %vector.memcheck575
  %n.vec588 = and i64 %i.ei, -4                   ; 3 uses
  %i.ew = add i64 %i.da, %n.vec588
  br label %vector.body589

vector.body589:                                   ; preds = %vector.body589, %vector.ph587
  %index590 = phi i64 [ 0, %vector.ph587 ], [ %index.next595, %vector.body589 ] ; 2 uses
  %i.ex = add i64 %i.da, %index590                ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.ex ; 3 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ex ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %wide.load591 = load <2 x double>, ptr %i.ey, align 8, !tbaa !370, !alias.scope !1830, !noalias !1831
  %wide.load592 = load <2 x double>, ptr %i.fa, align 8, !tbaa !370, !alias.scope !1830, !noalias !1831
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %wide.load593 = load <2 x double>, ptr %i.ez, align 8, !tbaa !370, !alias.scope !1831
  %wide.load594 = load <2 x double>, ptr %i.fb, align 8, !tbaa !370, !alias.scope !1831
  store <2 x double> %wide.load593, ptr %i.ey, align 8, !tbaa !370, !alias.scope !1830, !noalias !1831
  store <2 x double> %wide.load594, ptr %i.fa, align 8, !tbaa !370, !alias.scope !1830, !noalias !1831
  store <2 x double> %wide.load591, ptr %i.ez, align 8, !tbaa !370, !alias.scope !1831
  store <2 x double> %wide.load592, ptr %i.fb, align 8, !tbaa !370, !alias.scope !1831
  %index.next595 = add nuw i64 %index590, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next595, %n.vec588
  br i1 %i.fc, label %middle.block596, label %vector.body589, !llvm.loop !1796

middle.block596:                                  ; preds = %vector.body589
  %cmp.n597 = icmp eq i64 %i.ei, %n.vec588
  br i1 %cmp.n597, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader659

.lr.ph.i17.i.i.i.i.i.i.preheader659:              ; preds = %vector.memcheck575, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block596
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.da, %vector.memcheck575 ], [ %i.da, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.ew, %middle.block596 ] ; 6 uses
  %i.fd = add i64 %.05.i18.i.i.i.i.i.i.ph, %.sroa.0.1.i.i.lcssa
  %i.fe = sub i64 %7, %i.fd
  %i.ff = add i64 %indvar, %.05.i18.i.i.i.i.i.i.ph
  %i.fg = add i64 %i.ff, %.sroa.0.1.i.i.lcssa
  %xtraiter674 = and i64 %i.fe, 1
  %lcmp.mod675.not = icmp eq i64 %xtraiter674, 0
  br i1 %lcmp.mod675.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader659
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.co, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fj = load double, ptr %i.fh, align 8, !tbaa !370
  %i.fk = load double, ptr %i.fi, align 8, !tbaa !370
  store double %i.fk, ptr %i.fh, align 8, !tbaa !370
  store double %i.fj, ptr %i.fi, align 8, !tbaa !370
  %i.fl = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader659
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader659 ], [ %i.fl, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.fm = icmp eq i64 %i.g, %i.fg
  br i1 %i.fm, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.fw, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.co, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.fp = load double, ptr %i.fn, align 8, !tbaa !370
  %i.fq = load double, ptr %i.fo, align 8, !tbaa !370
  store double %i.fq, ptr %i.fn, align 8, !tbaa !370
  store double %i.fp, ptr %i.fo, align 8, !tbaa !370
  %i.fr = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.fr ; 2 uses
  %i.fu = load double, ptr %i.fs, align 8, !tbaa !370
  %i.fv = load double, ptr %i.ft, align 8, !tbaa !370
  store double %i.fv, ptr %i.fs, align 8, !tbaa !370
  store double %i.fu, ptr %i.ft, align 8, !tbaa !370
  %i.fw = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.fw, %i.bj
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !1797

.lr.ph.i.i.i.i.i.i134:                            ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i134
  %.021.i.i.i.i.i.i = phi i64 [ %i.gb, %.lr.ph.i.i.i.i.i.i134 ], [ %.0.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i ] ; 3 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.fy = load <2 x double>, ptr %i.fx, align 1, !tbaa !71
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.co, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.ga = load <2 x double>, ptr %i.fz, align 16, !tbaa !71
  store <2 x double> %i.ga, ptr %i.fx, align 1, !tbaa !71
  store <2 x double> %i.fy, ptr %i.fz, align 16, !tbaa !71
  %i.gb = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.gc = icmp slt i64 %i.gb, %i.da
  br i1 %i.gc, label %.lr.ph.i.i.i.i.i.i134, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1798

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block596, %._crit_edge.i.i.i.i.i.i
  %i.gd = load ptr, ptr %0, align 8, !tbaa !358   ; 7 uses
  %i.ge = load i64, ptr %i.a, align 8, !tbaa !368 ; 4 uses
  %i.gf = mul nsw i64 %i.ge, %.0116.ph            ; 2 uses
  %i.gg = getelementptr [8 x i8], ptr %i.gd, i64 %.0116.ph
  %i.gh = getelementptr [8 x i8], ptr %i.gg, i64 %i.gf ; 2 uses
  %i.gi = mul nsw i64 %i.ge, %i.be
  %i.gj = getelementptr [8 x i8], ptr %i.gd, i64 %i.be ; 3 uses
  %i.gk = getelementptr [8 x i8], ptr %i.gj, i64 %i.gi ; 2 uses
  %i.gl = load double, ptr %i.gh, align 8, !tbaa !370
  %i.gm = load double, ptr %i.gk, align 8, !tbaa !370
  store double %i.gm, ptr %i.gh, align 8, !tbaa !370
  store double %i.gl, ptr %i.gk, align 8, !tbaa !370
  %invariant.gep = getelementptr [8 x i8], ptr %i.gd, i64 %i.gf ; 2 uses
  %.0115424 = add nuw i64 %.0116.ph, 1            ; 7 uses
  %.not511 = icmp eq i64 %.sroa.0.1.i.i.lcssa, 1
  br i1 %.not511, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %8 = add nuw i64 %.0116.ph, 2
  %i.gn = call i64 @llvm.smax.i64(i64 %8, i64 %i.be)
  %9 = xor i64 %.0116.ph, -1
  %i.go = add i64 %i.gn, %9                       ; 3 uses
  %min.iters.check562 = icmp ugt i64 %i.go, 9
  %ident.check549.not = icmp eq i64 %i.ge, 1
  %or.cond655 = and i1 %min.iters.check562, %ident.check549.not
  br i1 %or.cond655, label %vector.memcheck550, label %.lr.ph.preheader658

vector.memcheck550:                               ; preds = %.lr.ph.preheader
  %i.gp = getelementptr i8, ptr %i.gd, i64 %i.ri
  %scevgep551 = getelementptr i8, ptr %i.gp, i64 8
  %i.gq = getelementptr i8, ptr %i.gd, i64 %i.ri
  %smax = call i64 @llvm.smax.i64(i64 %i.rj, i64 %i.be)
  %reass.sub = sub i64 %smax, %indvar
  %i.gr = shl i64 %reass.sub, 3                   ; 2 uses
  %scevgep553 = getelementptr i8, ptr %i.gq, i64 %i.gr
  %i.gs = getelementptr i8, ptr %i.gd, i64 %i.rk
  %scevgep554 = getelementptr i8, ptr %i.gs, i64 8
  %i.gt = shl i64 %i.be, 3                        ; 2 uses
  %scevgep555 = getelementptr i8, ptr %scevgep554, i64 %i.gt
  %i.gu = getelementptr i8, ptr %i.gd, i64 %i.rk
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.gr
  %scevgep557 = getelementptr i8, ptr %i.gv, i64 %i.gt
  %bound0558 = icmp ult ptr %scevgep551, %scevgep557
  %bound1559 = icmp ult ptr %scevgep555, %scevgep553
  %found.conflict560 = and i1 %bound0558, %bound1559
  br i1 %found.conflict560, label %.lr.ph.preheader658, label %vector.ph563

vector.ph563:                                     ; preds = %vector.memcheck550
  %n.vec564 = and i64 %i.go, -4                   ; 3 uses
  %i.gw = add i64 %.0115424, %n.vec564
  br label %vector.body565

vector.body565:                                   ; preds = %vector.body565, %vector.ph563
  %index566 = phi i64 [ 0, %vector.ph563 ], [ %index.next571, %vector.body565 ] ; 2 uses
  %i.gx = add nuw i64 %.0115424, %index566        ; 2 uses
  %i.gy = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.gx ; 3 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 16     ; 2 uses
  %wide.load567 = load <2 x double>, ptr %i.gy, align 8, !tbaa !370, !alias.scope !1832, !noalias !1833
  %wide.load568 = load <2 x double>, ptr %i.gz, align 8, !tbaa !370, !alias.scope !1832, !noalias !1833
  %i.ha = getelementptr [8 x i8], ptr %i.gj, i64 %i.gx ; 3 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 16     ; 2 uses
  %wide.load569 = load <2 x double>, ptr %i.ha, align 8, !tbaa !370, !alias.scope !1833
  %wide.load570 = load <2 x double>, ptr %i.hb, align 8, !tbaa !370, !alias.scope !1833
  store <2 x double> %wide.load569, ptr %i.gy, align 8, !tbaa !370, !alias.scope !1832, !noalias !1833
  store <2 x double> %wide.load570, ptr %i.gz, align 8, !tbaa !370, !alias.scope !1832, !noalias !1833
  store <2 x double> %wide.load567, ptr %i.ha, align 8, !tbaa !370, !alias.scope !1833
  store <2 x double> %wide.load568, ptr %i.hb, align 8, !tbaa !370, !alias.scope !1833
  %index.next571 = add nuw i64 %index566, 4       ; 2 uses
  %i.hc = icmp eq i64 %index.next571, %n.vec564
  br i1 %i.hc, label %middle.block572, label %vector.body565, !llvm.loop !1802

middle.block572:                                  ; preds = %vector.body565
  %cmp.n573 = icmp eq i64 %i.go, %n.vec564
  br i1 %cmp.n573, label %.loopexit, label %.lr.ph.preheader658

.lr.ph.preheader658:                              ; preds = %vector.memcheck550, %.lr.ph.preheader, %middle.block572
  %.0115425.ph = phi i64 [ %.0115424, %vector.memcheck550 ], [ %.0115424, %.lr.ph.preheader ], [ %i.gw, %middle.block572 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader658, %.lr.ph
  %.0115425 = phi i64 [ %.0115, %.lr.ph ], [ %.0115425.ph, %.lr.ph.preheader658 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0115425 ; 2 uses
  %i.hd = load double, ptr %gep, align 8, !tbaa !370
  %i.he = mul nsw i64 %.0115425, %i.ge
  %i.hf = getelementptr [8 x i8], ptr %i.gj, i64 %i.he ; 2 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !370
  store double %i.hg, ptr %gep, align 8, !tbaa !370
  store double %i.hd, ptr %i.hf, align 8, !tbaa !370
  %.0115 = add nuw nsw i64 %.0115425, 1           ; 2 uses
  %i.hh = icmp slt i64 %.0115, %i.be
  br i1 %i.hh, label %.lr.ph, label %.loopexit, !llvm.loop !1803

.loopexit:                                        ; preds = %.lr.ph, %middle.block572, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %.pre-phi = phi i64 [ %.pre, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge ], [ %.0115424, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ], [ %.0115424, %middle.block572 ], [ %.0115424, %.lr.ph ] ; 3 uses
  %i.hi = load ptr, ptr %0, align 8, !tbaa !358   ; 16 uses
  %i.hj = load i64, ptr %i.a, align 8, !tbaa !368 ; 18 uses
  %.not132.not = icmp eq i64 %.0116.ph, 0
  br i1 %.not132.not, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.hk = add nsw i64 %i.v, -1                    ; 3 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %.pre-phi ; 8 uses
  %i.hm = mul nsw i64 %i.hj, %.0116.ph            ; 2 uses
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.hm ; 4 uses
  %i.ho = getelementptr [8 x i8], ptr %i.hi, i64 %.0116.ph ; 12 uses
  %i.hp = load ptr, ptr %2, align 8, !tbaa !341, !noalias !1834 ; 20 uses
  %i.hq = add nsw i64 %i.hj, 1                    ; 7 uses
  %min.iters.check538 = icmp ugt i64 %.0116.ph, 12
  %ident.check.not = icmp eq i64 %i.hj, 1
  %or.cond656 = select i1 %min.iters.check538, i1 %ident.check.not, i1 false
  br i1 %or.cond656, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

vector.memcheck:                                  ; preds = %bb.l
  %scevgep = getelementptr i8, ptr %i.hp, i64 %i.rl ; 2 uses
  %scevgep531 = getelementptr i8, ptr %i.hi, i64 %i.rm
  %i.hr = shl i64 %.0116.ph, 4
  %i.hs = getelementptr i8, ptr %i.hi, i64 %i.hr
  %scevgep532 = getelementptr i8, ptr %i.hs, i64 -16 ; 4 uses
  %i.ht = icmp ult ptr %i.hi, %scevgep532
  %umin = select i1 %i.ht, ptr %i.hi, ptr %scevgep532
  %i.hu = icmp ugt ptr %i.hi, %scevgep532
  %umax = select i1 %i.hu, ptr %i.hi, ptr %scevgep532
  %scevgep533 = getelementptr i8, ptr %umax, i64 8
  %bound0 = icmp ult ptr %i.hp, %scevgep531
  %bound1 = icmp ult ptr %i.ho, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0534 = icmp ult ptr %i.hp, %scevgep533
  %bound1535 = icmp ult ptr %umin, %scevgep
  %found.conflict536 = and i1 %bound0534, %bound1535
  %conflict.rdx = or i1 %found.conflict, %found.conflict536
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph539

vector.ph539:                                     ; preds = %vector.memcheck
  %i.hv = and i64 %.0116.ph, 3                    ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 0
  %i.hx = select i1 %i.hw, i64 4, i64 %i.hv
  %n.vec540 = sub i64 %.0116.ph, %i.hx            ; 2 uses
  br label %vector.body541

vector.body541:                                   ; preds = %vector.body541, %vector.ph539
  %index542 = phi i64 [ 0, %vector.ph539 ], [ %index.next545, %vector.body541 ] ; 7 uses
  %i.hy = or disjoint i64 %index542, 1
  %i.hz = or disjoint i64 %index542, 2
  %i.ia = or disjoint i64 %index542, 3
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %index542 ; 2 uses
  %i.ic = mul nsw i64 %index542, %i.hq
  %i.id = mul nsw i64 %i.hy, %i.hq
  %i.ie = mul nsw i64 %i.hz, %i.hq
  %i.if = mul nsw i64 %i.ia, %i.hq
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.ic
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.id
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.ie
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.if
  %i.ik = load double, ptr %i.ig, align 8, !tbaa !370, !alias.scope !1835
  %i.il = load double, ptr %i.ih, align 8, !tbaa !370, !alias.scope !1835
  %i.im = insertelement <2 x double> poison, double %i.ik, i64 0
  %i.in = insertelement <2 x double> %i.im, double %i.il, i64 1
  %i.io = load double, ptr %i.ii, align 8, !tbaa !370, !alias.scope !1835
  %i.ip = load double, ptr %i.ij, align 8, !tbaa !370, !alias.scope !1835
  %i.iq = insertelement <2 x double> poison, double %i.io, i64 0
  %i.ir = insertelement <2 x double> %i.iq, double %i.ip, i64 1
  %i.is = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %index542 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %wide.load543 = load <2 x double>, ptr %i.is, align 8, !tbaa !370, !alias.scope !1836
  %wide.load544 = load <2 x double>, ptr %i.it, align 8, !tbaa !370, !alias.scope !1836
  %i.iu = fmul <2 x double> %i.in, %wide.load543
  %i.iv = fmul <2 x double> %i.ir, %wide.load544
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store <2 x double> %i.iu, ptr %i.ib, align 8, !tbaa !370, !alias.scope !1837, !noalias !1838
  store <2 x double> %i.iv, ptr %i.iw, align 8, !tbaa !370, !alias.scope !1837, !noalias !1838
  %index.next545 = add nuw i64 %index542, 4       ; 2 uses
  %i.ix = icmp eq i64 %index.next545, %n.vec540
  br i1 %i.ix, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.body541, !llvm.loop !1810

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %vector.body541, %vector.memcheck, %bb.l
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.l ], [ %n.vec540, %vector.body541 ] ; 7 uses
  %i.iy = sub i64 %.0116.ph, %.05.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter676 = and i64 %i.iy, 1
  %lcmp.mod677.not = icmp eq i64 %xtraiter676, 0
  br i1 %lcmp.mod677.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.05.i.i.i.i.i.i.i.i.i.i.ph
  %i.ja = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.hq
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.ja
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !370
  %i.jd = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.hj
  %i.je = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.jd
  %i.jf = load double, ptr %i.je, align 8, !tbaa !370
  %i.jg = fmul double %i.jc, %i.jf
  store double %i.jg, ptr %i.iz, align 8, !tbaa !370
  %i.jh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.jh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ji = icmp eq i64 %i.qz, %.05.i.i.i.i.i.i.i.i.i.i.ph
  br i1 %i.ji, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ka, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.jk = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.hq
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.jk
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !370
  %i.jn = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.hj
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.jn
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !370
  %i.jq = fmul double %i.jm, %i.jp
  store double %i.jq, ptr %i.jj, align 8, !tbaa !370
  %i.jr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.jr
  %i.jt = mul nsw i64 %i.jr, %i.hq
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.jt
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !370
  %i.jw = mul nsw i64 %i.jr, %i.hj
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.jw
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !370
  %i.jz = fmul double %i.jv, %i.jy
  store double %i.jz, ptr %i.js, align 8, !tbaa !370
  %i.ka = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal12ldlt_inplaceILi1EE9unblockedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEENS4_IdLin1ELi1ELi0ELin1ELi1EEEEEbRT_RT0_RT1_RNS0_10SignMatrixE:bb.a
  %i.os = load double, ptr %i.or, align 8, !tbaa !370
  %i.ot = fcmp oeq double %i.os, 0.000000e+00
  br i1 %i.ot, label %bb.r, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit: ; preds = %.preheader.us.i, %bb.r, %bb.q, %bb.p
  %i.ou = phi i8 [ 0, %bb.p ], [ 1, %bb.q ], [ 0, %.preheader.us.i ], [ 1, %bb.r ] ; 2 uses
  %i.ov = add nuw nsw i64 %.0427, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ov, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !1817

.loopexit453:                                     ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit
  %i.ow = add nsw i64 %i.v, -1
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %.pre-phi
  %i.oy = mul nuw nsw i64 %i.hj, %.0116.ph
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %i.oy
  br label %bb.s

bb.s:                                             ; preds = %.loopexit453, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread
  %i.pa = phi i64 [ %i.hk, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread ], [ %i.ow, %.loopexit453 ] ; 6 uses
  %i.pb = phi ptr [ %i.hn, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread ], [ %i.oz, %.loopexit453 ] ; 7 uses
  %i.pc = phi i1 [ %i.nx, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread ], [ true, %.loopexit453 ] ; 3 uses
  %i.pd = phi double [ %i.nw, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread ], [ %i.od, %.loopexit453 ] ; 9 uses
  %or.cond4 = and i1 %i.ad, %i.pc
  br i1 %or.cond4, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i137, label %bb.t

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i137: ; preds = %bb.s
  %i.pe = ptrtoint ptr %i.pb to i64               ; 2 uses
  %i.pf = and i64 %i.pe, 7
  %.not.i.i.i.i.i.i.i136 = icmp eq i64 %i.pf, 0
  %i.pg = lshr exact i64 %i.pe, 3
  %i.ph = and i64 %i.pg, 1
  %.0.i.i.i.i.i.i.i138 = select i1 %.not.i.i.i.i.i.i.i136, i64 %i.ph, i64 %i.pa ; 8 uses
  %i.pi = sub nsw i64 %i.pa, %.0.i.i.i.i.i.i.i138 ; 2 uses
  %i.pj = sdiv i64 %i.pi, 2
  %i.pk = shl nsw i64 %i.pj, 1                    ; 2 uses
  %i.pl = add nsw i64 %i.pk, %.0.i.i.i.i.i.i.i138 ; 5 uses
  switch i64 %.0.i.i.i.i.i.i.i138, label %vector.ph520 [
    i64 0, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
    i64 1, label %.lr.ph.i.i.i.i.i.i.i145.preheader
  ]

vector.ph520:                                     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i137
  %n.vec521 = and i64 %.0.i.i.i.i.i.i.i138, -2    ; 3 uses
  %broadcast.splatinsert522 = insertelement <2 x double> poison, double %i.pd, i64 0
  %broadcast.splat523 = shufflevector <2 x double> %broadcast.splatinsert522, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body524

vector.body524:                                   ; preds = %vector.body524, %vector.ph520
  %index525 = phi i64 [ 0, %vector.ph520 ], [ %index.next527, %vector.body524 ] ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %index525 ; 2 uses
  %wide.load526 = load <2 x double>, ptr %i.pm, align 8, !tbaa !370
  %i.pn = fdiv <2 x double> %wide.load526, %broadcast.splat523
  store <2 x double> %i.pn, ptr %i.pm, align 8, !tbaa !370
  %index.next527 = add nuw i64 %index525, 2       ; 2 uses
  %i.po = icmp eq i64 %index.next527, %n.vec521
  br i1 %i.po, label %middle.block528, label %vector.body524, !llvm.loop !1818

middle.block528:                                  ; preds = %vector.body524
  %cmp.n529 = icmp eq i64 %.0.i.i.i.i.i.i.i138, %n.vec521
  br i1 %cmp.n529, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i145.preheader

.lr.ph.i.i.i.i.i.i.i145.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i137, %middle.block528
  %.05.i.i.i.i.i.i.i146.ph = phi i64 [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i137 ], [ %n.vec521, %middle.block528 ]
  br label %.lr.ph.i.i.i.i.i.i.i145

.lr.ph.i.i.i.i.i.i.i145:                          ; preds = %.lr.ph.i.i.i.i.i.i.i145.preheader, %.lr.ph.i.i.i.i.i.i.i145
  %.05.i.i.i.i.i.i.i146 = phi i64 [ %i.ps, %.lr.ph.i.i.i.i.i.i.i145 ], [ %.05.i.i.i.i.i.i.i146.ph, %.lr.ph.i.i.i.i.i.i.i145.preheader ] ; 2 uses
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %.05.i.i.i.i.i.i.i146 ; 2 uses
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !370
  %i.pr = fdiv double %i.pq, %i.pd
  store double %i.pr, ptr %i.pp, align 8, !tbaa !370
  %i.ps = add nuw nsw i64 %.05.i.i.i.i.i.i.i146, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i147 = icmp eq i64 %i.ps, %.0.i.i.i.i.i.i.i138
  br i1 %exitcond.not.i.i.i.i.i.i.i147, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i145, !llvm.loop !1819

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i145, %middle.block528, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i137
  %i.pt = icmp sgt i64 %i.pi, 1
  br i1 %i.pt, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i139

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.pu = insertelement <2 x double> poison, double %i.pd, i64 0
  %i.pv = shufflevector <2 x double> %i.pu, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i143

._crit_edge.i.i.i.i.i.i139:                       ; preds = %.lr.ph.i.i.i.i.i.i143, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.pw = icmp slt i64 %i.pl, %i.pa
  br i1 %i.pw, label %.lr.ph.i17.i.i.i.i.i.i140.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit

.lr.ph.i17.i.i.i.i.i.i140.preheader:              ; preds = %._crit_edge.i.i.i.i.i.i139
  %i.px = add i64 %.0.i.i.i.i.i.i.i138, %i.pk
  %i.py = sub i64 %i.pa, %i.px                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.py, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i140.preheader657, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i140.preheader
  %n.vec = and i64 %i.py, -2                      ; 3 uses
  %i.pz = add i64 %i.pl, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.pd, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qa = getelementptr [8 x i8], ptr %i.pb, i64 %i.pl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qb = getelementptr [8 x i8], ptr %i.qa, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.qb, align 8, !tbaa !370
  %i.qc = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.qc, ptr %i.qb, align 8, !tbaa !370
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.qd = icmp eq i64 %index.next, %n.vec
  br i1 %i.qd, label %middle.block, label %vector.body, !llvm.loop !1820

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.py, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i140.preheader657

.lr.ph.i17.i.i.i.i.i.i140.preheader657:           ; preds = %.lr.ph.i17.i.i.i.i.i.i140.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i141.ph = phi i64 [ %i.pl, %.lr.ph.i17.i.i.i.i.i.i140.preheader ], [ %i.pz, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i140

.lr.ph.i17.i.i.i.i.i.i140:                        ; preds = %.lr.ph.i17.i.i.i.i.i.i140.preheader657, %.lr.ph.i17.i.i.i.i.i.i140
  %.05.i18.i.i.i.i.i.i141 = phi i64 [ %i.qh, %.lr.ph.i17.i.i.i.i.i.i140 ], [ %.05.i18.i.i.i.i.i.i141.ph, %.lr.ph.i17.i.i.i.i.i.i140.preheader657 ] ; 2 uses
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.pb, i64 %.05.i18.i.i.i.i.i.i141 ; 2 uses
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !370
  %i.qg = fdiv double %i.qf, %i.pd
  store double %i.qg, ptr %i.qe, align 8, !tbaa !370
  %i.qh = add nsw i64 %.05.i18.i.i.i.i.i.i141, 1  ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i142 = icmp eq i64 %i.qh, %i.pa
  br i1 %exitcond.not.i19.i.i.i.i.i.i142, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i140, !llvm.loop !1821

.lr.ph.i.i.i.i.i.i143:                            ; preds = %.lr.ph.i.i.i.i.i.i143, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i144 = phi i64 [ %i.ql, %.lr.ph.i.i.i.i.i.i143 ], [ %.0.i.i.i.i.i.i.i138, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.qi = getelementptr inbounds [8 x i8], ptr %i.pb, i64 %.021.i.i.i.i.i.i144 ; 2 uses
  %i.qj = load <2 x double>, ptr %i.qi, align 16, !tbaa !71
  %i.qk = fdiv <2 x double> %i.qj, %i.pv
  store <2 x double> %i.qk, ptr %i.qi, align 16, !tbaa !71
  %i.ql = add nsw i64 %.021.i.i.i.i.i.i144, 2     ; 2 uses
  %i.qm = icmp slt i64 %i.ql, %i.pl
  br i1 %i.qm, label %.lr.ph.i.i.i.i.i.i143, label %._crit_edge.i.i.i.i.i.i139, !llvm.loop !1822

bb.t:                                             ; preds = %bb.s
  br i1 %i.ad, label %bb.u, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit

bb.u:                                             ; preds = %bb.t
  %i.qn = trunc nuw i8 %.0118.ph to i1
  br i1 %i.qn, label %.preheader.us.i150, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit

.preheader.us.i150:                               ; preds = %bb.u, %.preheader.us.i150
  %.01324.us.i151 = phi i64 [ %i.qr, %.preheader.us.i150 ], [ 0, %bb.u ] ; 2 uses
  %i.qo = getelementptr [8 x i8], ptr %i.pb, i64 %.01324.us.i151
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !370
  %i.qq = fcmp oeq double %i.qp, 0.000000e+00     ; 2 uses
  %i.qr = add nuw nsw i64 %.01324.us.i151, 1      ; 2 uses
  %exitcond.not.i152 = icmp ne i64 %i.qr, %i.pa
  %or.cond419.not = select i1 %i.qq, i1 %exitcond.not.i152, i1 false
  br i1 %or.cond419.not, label %.preheader.us.i150, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit, !llvm.loop !1823

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit: ; preds = %.preheader.us.i150
  %i.qs = zext i1 %i.qq to i8
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i140, %middle.block, %bb.u, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit, %._crit_edge.i.i.i.i.i.i139, %bb.t
  %.2 = phi i8 [ %.0118.ph, %bb.t ], [ %i.qs, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit ], [ %.0118.ph, %._crit_edge.i.i.i.i.i.i139 ], [ 0, %bb.u ], [ %.0118.ph, %middle.block ], [ %.0118.ph, %.lr.ph.i17.i.i.i.i.i.i140 ]
  %or.cond6 = and i1 %.0120.ph, %i.pc
  %not. = xor i1 %i.pc, true
  %.1121 = select i1 %not., i1 true, i1 %.0120.ph
  %.3 = select i1 %or.cond6, i8 0, i8 %.2
  %i.qt = load i32, ptr %3, align 4, !tbaa !1824
  switch i32 %i.qt, label %bb.z [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
  ]

bb.v:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.qu = fcmp olt double %i.pd, 0.000000e+00
  br i1 %i.qu, label %.sink.split, label %bb.z

bb.w:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.qv = fcmp ogt double %i.pd, 0.000000e+00
  br i1 %i.qv, label %.sink.split, label %bb.z

bb.x:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.qw = fcmp ogt double %i.pd, 0.000000e+00
  br i1 %i.qw, label %.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.qx = fcmp olt double %i.pd, 0.000000e+00
  br i1 %i.qx, label %.sink.split, label %bb.z

.sink.split:                                      ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.sink = phi i32 [ 3, %bb.v ], [ 0, %bb.x ], [ 3, %bb.w ], [ 1, %bb.y ]
  store i32 %.sink, ptr %3, align 4, !tbaa !1824
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.v, %bb.y, %bb.w, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit
  %indvar.next = add i64 %indvar, 1
  br label %.outer

.outer:                                           ; preds = %.preheader, %bb.z
  %indvar = phi i64 [ 0, %.preheader ], [ %indvar.next, %bb.z ] ; 13 uses
  %.0120.ph = phi i1 [ false, %.preheader ], [ %.1121, %bb.z ] ; 2 uses
  %.0118.ph = phi i8 [ 1, %.preheader ], [ %.3, %bb.z ] ; 7 uses
  %.0116.ph = phi i64 [ 0, %.preheader ], [ %.pre-phi, %bb.z ] ; 42 uses
  %i.qy = add i64 %.0116.ph, -2                   ; 2 uses
  %i.qz = add i64 %.0116.ph, -1                   ; 5 uses
  %i.ra = xor i64 %indvar, -1
  %i.rb = add i64 %i.b, %i.ra                     ; 3 uses
  %i.rc = shl i64 %indvar, 4
  %i.rd = shl i64 %indvar, 3
  %i.re = shl i64 %indvar, 3
  %i.rf = shl i64 %indvar, 3                      ; 2 uses
  %i.rg = add i64 %i.rf, 8
  %i.rh = add i64 %.0116.ph, 1
  %i.ri = shl i64 %indvar, 4                      ; 2 uses
  %i.rj = add i64 %.0116.ph, 2
  %i.rk = shl i64 %indvar, 3                      ; 2 uses
  %i.rl = shl i64 %indvar, 3
  %i.rm = shl i64 %indvar, 4
  %exitcond433.not = icmp eq i64 %.0116.ph, %i.b
  br i1 %exitcond433.not, label %.thread410, label %bb.i

.thread410:                                       ; preds = %.outer
  %i.rn = trunc nuw i8 %.0118.ph to i1
  br label %.loopexit420

.loopexit420:                                     ; preds = %._crit_edge, %bb.c, %bb.g, %bb.h, %bb.e, %.thread410
  %.3126 = phi i1 [ true, %bb.c ], [ %i.rn, %.thread410 ], [ true, %bb.e ], [ true, %bb.h ], [ true, %bb.g ], [ %i.og, %._crit_edge ]
  ret i1 %.3126
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE22_solve_impl_transposedILb1ENS_3MapIKNS1_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS5_IS6_Li0ES9_EEEEvRKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(19) %1, ptr noundef nonnull align 8 dereferenceable(19) %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::TriangularView.1684", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.446.8.copyload = load ptr, ptr %1, align 8 ; 15 uses
  %.sroa.446.8.copyload59 = ptrtoaddr ptr %.sroa.446.8.copyload to i64 ; 2 uses
  %.sroa.647.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.647.8.copyload = load i64, ptr %.sroa.647.8..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !502  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !500  ; 9 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !577    ; 15 uses
  %i.g = icmp eq ptr %i.f, %.sroa.446.8.copyload
  %i.h = icmp eq i64 %i.e, %.sroa.647.8.copyload
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %i.i, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS0_IKS2_Li0ES4_EEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.k = and i64 %i.j, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = lshr exact i64 %i.j, 3
  %i.m = and i64 %i.l, 1
  %i.n = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %i.e)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.e, %bb.b ] ; 11 uses
  %i.o = sub nsw i64 %i.e, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.p = sdiv i64 %i.o, 2
  %i.q = shl nsw i64 %i.p, 1                      ; 2 uses
  %i.r = add nsw i64 %i.q, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.s = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  %i.t = sub i64 %.sroa.446.8.copyload59, %i.j
  %diff.check = icmp ugt i64 %i.t, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader77, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.sroa.446.8.copyload, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <2 x double>, ptr %i.v, align 8, !tbaa !370
  %wide.load60 = load <2 x double>, ptr %i.w, align 8, !tbaa !370
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x double> %wide.load, ptr %i.u, align 8, !tbaa !370
  store <2 x double> %wide.load60, ptr %i.x, align 8, !tbaa !370
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1839

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader77

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader77: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader77, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader77 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader77 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.446.8.copyload, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !370
  store double %i.ab, ptr %i.z, align 8, !tbaa !370
  %i.ac = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1840

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader77
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader77 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ad = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.446.8.copyload, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !370
  store double %i.ah, ptr %i.af, align 8, !tbaa !370
  %i.ai = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.446.8.copyload, i64 %i.ai
  %i.al = load double, ptr %i.ak, align 8, !tbaa !370
  store double %i.al, ptr %i.aj, align 8, !tbaa !370
  %i.am = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.446.8.copyload, i64 %i.am
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !370
  store double %i.ap, ptr %i.an, align 8, !tbaa !370
  %i.aq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.sroa.446.8.copyload, i64 %i.aq
  %i.at = load double, ptr %i.as, align 8, !tbaa !370
  store double %i.at, ptr %i.ar, align 8, !tbaa !370
  %i.au = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.au, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1841

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.av = icmp sgt i64 %i.o, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = icmp slt i64 %i.r, %i.e
  br i1 %i.aw, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS0_IKS2_Li0ES4_EEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.q
  %i.ay = sub i64 %i.e, %i.ax                     ; 3 uses
  %min.iters.check64 = icmp ult i64 %i.ay, 8
  %i.az = sub i64 %.sroa.446.8.copyload59, %i.j
  %diff.check62 = icmp ugt i64 %i.az, -32
  %or.cond75 = or i1 %min.iters.check64, %diff.check62
  br i1 %or.cond75, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader76, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec66 = and i64 %i.ay, -4                    ; 3 uses
  %i.ba = add i64 %i.r, %n.vec66
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next71, %vector.body67 ] ; 2 uses
  %i.bb = add i64 %i.r, %index68                  ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %.sroa.446.8.copyload, i64 %i.bb ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load69 = load <2 x double>, ptr %i.bd, align 8, !tbaa !370
  %wide.load70 = load <2 x double>, ptr %i.be, align 8, !tbaa !370
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <2 x double> %wide.load69, ptr %i.bc, align 8, !tbaa !370
  store <2 x double> %wide.load70, ptr %i.bf, align 8, !tbaa !370
  %index.next71 = add nuw i64 %index68, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next71, %n.vec66
  br i1 %i.bg, label %middle.block72, label %vector.body67, !llvm.loop !1842

middle.block72:                                   ; preds = %vector.body67
  %cmp.n73 = icmp eq i64 %i.ay, %n.vec66
  br i1 %cmp.n73, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS0_IKS2_Li0ES4_EEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader76

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader76: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block72
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.r, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ba, %middle.block72 ] ; 4 uses
  %i.bh = sub i64 %i.e, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter78 = and i64 %i.bh, 3                  ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader76, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader76 ] ; 3 uses
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader76 ]
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bj = getelementptr inbounds [8 x i8], ptr %.sroa.446.8.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !370
  store double %i.bk, ptr %i.bi, align 8, !tbaa !370
  %i.bl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1843

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader76
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader76 ], [ %i.bl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bm = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %i.e
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS0_IKS2_Li0ES4_EEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
end_hunk_2
