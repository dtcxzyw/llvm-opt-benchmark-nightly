inline.NumInlined: 921
inline.NumDeleted: 474
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN3igl10predicates12ear_clippingIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLin1ELi1ELi0ELin1ELi1EEENS3_IiLin1ELin1ELi0ELin1ELin1EEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERNS2_15PlainObjectBaseIT1_EERNSH_IT2_EE:bb.a

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.c
  %i.f = shl nuw i64 %i.b, 2                      ; 2 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #18 ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i75

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !21
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.cont.i unwind label %bb.d

.cont.i:                                          ; preds = %.invoke.i
  unreachable

common.resume:                                    ; preds = %.body, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %.pn69.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %.invoke.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %5, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.k) #16
  br label %common.resume

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i75: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  store ptr %i.g, ptr %5, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.b, ptr %i.l, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.f) #18 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.invoke.i76, label %.lr.ph

.invoke.i76:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i75
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !21
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.cont.i77 unwind label %bb.e

.cont.i77:                                        ; preds = %.invoke.i76
  unreachable

bb.e:                                             ; preds = %.invoke.i76
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %6, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.q) #16
  br label %.body

._crit_edge.thread:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.b, ptr %i.r, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %6, align 8
  store i64 %i.b, ptr %i.s, align 8, !tbaa !29
  br label %.preheader190

.lr.ph:                                           ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i75
  store ptr %i.m, ptr %6, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.b, ptr %i.t, align 8, !tbaa !29
  %.not258 = icmp eq i64 %i.b, 1
  br i1 %.not258, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %invariant.op = add nsw i64 %i.b, -1            ; 3 uses
  %i.u = add nsw i64 %i.b, -1                     ; 3 uses
  %xtraiter = and i64 %i.u, 1
  %i.v = icmp eq i64 %i.b, 2
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.split.new

.lr.ph.split.new:                                 ; preds = %.lr.ph.split
  %unroll_iter = and i64 %i.u, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.split.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.new ], [ %indvars.iv.next.1, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.split.new ], [ %niter.next.1, %bb.f ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %.reass = add i64 %indvars.iv, %invariant.op
  %i.x = srem i64 %.reass, %i.b
  %i.y = trunc i64 %i.x to i32
  store i32 %i.y, ptr %i.w, align 4, !tbaa !32
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !32
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  %.reass.1 = add i64 %indvars.iv.next, %invariant.op
  %i.ac = srem i64 %.reass.1, %i.b
  %i.ad = trunc i64 %i.ac to i32
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !32
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.af = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !32
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !33

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.split
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next.1, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod372 = trunc i64 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod372)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.epil.init
  %.reass.epil = add i64 %indvars.iv.epil.init, %invariant.op
  %i.ah = srem i64 %.reass.epil, %i.b
  %i.ai = trunc i64 %i.ah to i32
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !32
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.epil.init
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil.init, 1 ; 2 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv.next.epil to i32
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !32
  br label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %.epil.preheader, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph
  %i.al = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.loopexit.unr-lcssa ], [ %indvars.iv.next.epil, %.epil.preheader ] ; 4 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = add nsw i64 %i.al, -1
  %i.ao = add nsw i64 %i.b, %i.an
  %i.ap = urem i64 %i.ao, %i.b
  %i.aq = trunc i64 %i.ap to i32
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.al
  %indvars.iv.next.peel = add nuw nsw i64 %i.al, 1 ; 2 uses
  %i.as = icmp eq i64 %indvars.iv.next.peel, %i.b
  %i.at = trunc nuw nsw i64 %indvars.iv.next.peel to i32
  %i.au = select i1 %i.as, i32 0, i32 %i.at
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !32
  %i.av = shl nuw nsw i64 %i.b, 2                 ; 2 uses
  %calloc266 = tail call ptr @calloc(i64 1, i64 %i.av) ; 5 uses
  %i.aw = icmp eq ptr %calloc266, null
  br i1 %i.aw, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i86

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.ax = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ax, align 8, !tbaa !21
  invoke void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc79 unwind label %bb.i

.noexc79:                                         ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i86: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %calloc = tail call ptr @calloc(i64 1, i64 %i.av) ; 3 uses
  %i.ay = icmp eq ptr %calloc, null
  br i1 %i.ay, label %bb.h, label %.lr.ph206

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i86
  %i.az = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.az, align 8, !tbaa !21
  invoke void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc88 unwind label %bb.i

.noexc88:                                         ; preds = %bb.h
  unreachable

.preheader190:                                    ; preds = %bb.j, %.thread, %._crit_edge.thread
  %.sroa.0142.2162168176265 = phi ptr [ null, %.thread ], [ null, %._crit_edge.thread ], [ %calloc266, %bb.j ] ; 17 uses
  %.sroa.0128.2177264 = phi ptr [ null, %.thread ], [ null, %._crit_edge.thread ], [ %calloc, %bb.j ] ; 21 uses
  %i.ba = phi i1 [ false, %.thread ], [ false, %._crit_edge.thread ], [ true, %bb.j ] ; 3 uses
  %i.bb = sdiv i64 %i.b, 8
  %i.bc = shl nsw i64 %i.bb, 3                    ; 5 uses
  %i.bd = sdiv i64 %i.b, 4                        ; 3 uses
  %i.be = shl nsw i64 %i.bd, 2                    ; 8 uses
  %.off.i.i.i.i = add i64 %i.b, 3
  %.not.i.i.i.i90 = icmp ult i64 %.off.i.i.i.i, 7 ; 2 uses
  %i.bf = icmp sgt i64 %i.b, 7                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0142.2162168176265, i64 16
  %i.bh = icmp samesign ugt i64 %i.b, 15          ; 2 uses
  %i.bi = icmp sgt i64 %i.be, %i.bc               ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0142.2162168176265, i64 %i.bc
  %i.bk = icmp slt i64 %i.be, %i.b                ; 2 uses
  %i.bl = icmp sgt i64 %i.b, 1                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bo = shl nsw i64 %i.bd, 2
  %i.bp = sub i64 %i.b, %i.bo                     ; 3 uses
  %min.iters.check288 = icmp ult i64 %i.bp, 8
  %n.vec290 = and i64 %i.bp, -8                   ; 3 uses
  %i.bq = add i64 %i.be, %n.vec290
  %i.br = getelementptr [4 x i8], ptr %.sroa.0142.2162168176265, i64 %i.be
  %cmp.n302 = icmp eq i64 %i.bp, %n.vec290
  %i.bs = add nsw i64 %i.b, -1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.bs, 8
  %n.vec = and i64 %i.bs, -8                      ; 3 uses
  %i.bt = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br label %bb.l

bb.i:                                             ; preds = %bb.ae, %bb.h, %bb.g
  %.sroa.0128.0 = phi ptr [ %.sroa.0128.2177264, %bb.ae ], [ null, %bb.g ], [ null, %bb.h ]
  %.sroa.0142.0 = phi ptr [ %.sroa.0142.2162168176265, %bb.ae ], [ null, %bb.g ], [ %calloc266, %bb.h ]
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.lr.ph206:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i86, %bb.j
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %bb.j ], [ 0, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i86 ] ; 3 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv231 to i32
  %i.bw = invoke noundef zeroext i1 @_ZZN3igl10predicates12ear_clippingIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLin1ELi1ELi0ELin1ELi1EEENS3_IiLin1ELin1ELi0ELin1ELin1EEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERNS2_15PlainObjectBaseIT1_EERNSH_IT2_EEENKUlRKNS8_IS4_EERKNS8_IS5_EERKS7_SV_iE_clESQ_ST_SV_SV_i(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %i.bv)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.lr.ph206
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %calloc266, i64 %indvars.iv231
  %i.by = zext i1 %i.bw to i32
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !32
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !23
  %i.ca = icmp sgt i64 %i.bz, %indvars.iv.next232
  br i1 %i.ca, label %.lr.ph206, label %.preheader190, !llvm.loop !36

bb.k:                                             ; preds = %.lr.ph206
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.l:                                             ; preds = %.backedge, %.preheader190
  br i1 %.not.i.i.i.i90, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = load <4 x i32>, ptr %.sroa.0142.2162168176265, align 16, !tbaa !37 ; 3 uses
  br i1 %i.bf, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cd = load <4 x i32>, ptr %i.bg, align 16, !tbaa !37 ; 2 uses
  br i1 %i.bh, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.n
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.cd, %bb.n ], [ %i.cm, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.cc, %bb.n ], [ %i.ci, %.lr.ph.i.i.i.i ]
  %i.ce = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  br i1 %i.bi, label %bb.o, label %bb.p

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.n ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.n ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.ci, %.lr.ph.i.i.i.i ], [ %i.cc, %bb.n ]
  %i.cf = phi <4 x i32> [ %i.cm, %.lr.ph.i.i.i.i ], [ %i.cd, %bb.n ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0142.2162168176265, i64 %.05779.i.i.i.i
  %i.ch = load <4 x i32>, ptr %i.cg, align 16, !tbaa !37
  %i.ci = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.ch) ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0142.2162168176265, i64 %.057.in78.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load <4 x i32>, ptr %i.ck, align 16, !tbaa !37
  %i.cm = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cf, <4 x i32> %i.cl) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.cn = icmp slt i64 %.057.i.i.i.i, %i.bc
  br i1 %i.cn, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !38

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.co = load <4 x i32>, ptr %i.bj, align 16, !tbaa !37
  %i.cp = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ce, <4 x i32> %i.co)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i, %bb.m
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.cc, %bb.m ], [ %i.cp, %bb.o ], [ %i.ce, %._crit_edge.i.i.i.i ]
  %i.cq = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  br i1 %i.bk, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.p
  br i1 %min.iters.check288, label %.lr.ph84.i.i.i.i.preheader361, label %vector.ph289

vector.ph289:                                     ; preds = %.lr.ph84.i.i.i.i.preheader
  %broadcast.splatinsert291 = insertelement <4 x i32> poison, i32 %i.cq, i64 0
  %broadcast.splat292 = shufflevector <4 x i32> %broadcast.splatinsert291, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body293

vector.body293:                                   ; preds = %vector.body293, %vector.ph289
  %index294 = phi i64 [ 0, %vector.ph289 ], [ %index.next299, %vector.body293 ] ; 2 uses
  %vec.phi295.a = phi <4 x i32> [ %broadcast.splat292, %vector.ph289 ], [ %i.ct, %vector.body293 ]
  %vec.phi296 = phi <4 x i32> [ %broadcast.splat292, %vector.ph289 ], [ %i.cu, %vector.body293 ]
  %i.cr = getelementptr [4 x i8], ptr %i.br, i64 %index294 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load297.a = load <4 x i32>, ptr %i.cr, align 4, !tbaa !32
  %wide.load298 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !32
  %i.ct = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi295.a, <4 x i32> %wide.load297.a) ; 2 uses
  %i.cu = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi296, <4 x i32> %wide.load298) ; 2 uses
  %index.next299 = add nuw i64 %index294, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next299, %n.vec290
  br i1 %i.cv, label %middle.block300, label %vector.body293, !llvm.loop !39

middle.block300:                                  ; preds = %vector.body293
  %rdx.minmax301 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ct, <4 x i32> %i.cu)
  %i.cw = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax301) ; 2 uses
  br i1 %cmp.n302, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader361

.lr.ph84.i.i.i.i.preheader361:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block300
  %.05582.i.i.i.i.ph = phi i64 [ %i.be, %.lr.ph84.i.i.i.i.preheader ], [ %i.bq, %middle.block300 ]
  %.181.i.i.i.i.ph = phi i32 [ %i.cq, %.lr.ph84.i.i.i.i.preheader ], [ %i.cw, %middle.block300 ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader361, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.da, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader361 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.cz, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader361 ]
  %i.cx = getelementptr inbounds [4 x i8], ptr %.sroa.0142.2162168176265, i64 %.05582.i.i.i.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !32
  %i.cz = call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.cy) ; 2 uses
  %i.da = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.da, %i.b
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !42

bb.q:                                             ; preds = %bb.l
  %i.db = load i32, ptr %.sroa.0142.2162168176265, align 4, !tbaa !32 ; 3 uses
  br i1 %i.bl, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.q
  br i1 %min.iters.check, label %.lr.ph89.i.i.i.i.preheader360, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph89.i.i.i.i.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.db, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi285 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.dg, %vector.body ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0142.2162168176265, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 20
  %wide.load = load <4 x i32>, ptr %i.dd, align 4, !tbaa !32
  %wide.load286 = load <4 x i32>, ptr %i.de, align 4, !tbaa !32
  %i.df = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.dg = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi285, <4 x i32> %wide.load286) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.df, <4 x i32> %i.dg)
  %i.di = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader360

.lr.ph89.i.i.i.i.preheader360:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  %.286.i.i.i.i.ph = phi i32 [ %i.db, %.lr.ph89.i.i.i.i.preheader ], [ %i.di, %middle.block ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader360, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.dm, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader360 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.dl, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader360 ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0142.2162168176265, i64 %.087.i.i.i.i
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !32
  %i.dl = call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.dk) ; 2 uses
  %i.dm = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.dm, %i.b
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !44

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block300, %middle.block, %bb.q, %bb.p
  %.3.i.i.i.i = phi i32 [ %i.dl, %.lr.ph89.i.i.i.i ], [ %i.db, %bb.q ], [ %i.cq, %bb.p ], [ %i.di, %middle.block ], [ %i.cw, %middle.block300 ], [ %i.cz, %.lr.ph84.i.i.i.i ]
  %i.dn = icmp eq i32 %.3.i.i.i.i, 1
  br i1 %i.dn, label %.preheader, label %.thread186

.preheader:                                       ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit
  br i1 %i.ba, label %.lr.ph208, label %._crit_edge209

.lr.ph208:                                        ; preds = %.preheader, %bb.r
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %bb.r ], [ 0, %.preheader ] ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0142.2162168176265, i64 %indvars.iv234
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !32
  %.not = icmp eq i32 %i.dp, 1
  br i1 %.not, label %._crit_edge209.loopexit, label %bb.r

bb.r:                                             ; preds = %.lr.ph208
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next235, %i.b
  br i1 %exitcond237.not, label %._crit_edge209.loopexit, label %.lr.ph208, !llvm.loop !45

._crit_edge209.loopexit:                          ; preds = %bb.r, %.lr.ph208
  %.lcssa198.ph = phi i64 [ %indvars.iv234, %.lr.ph208 ], [ %i.b, %bb.r ] ; 2 uses
  %storemerge.lcssa.ph = trunc i64 %.lcssa198.ph to i32
  br label %._crit_edge209

._crit_edge209:                                   ; preds = %._crit_edge209.loopexit, %.preheader
  %storemerge.lcssa = phi i32 [ 0, %.preheader ], [ %storemerge.lcssa.ph, %._crit_edge209.loopexit ]
  %.lcssa198 = phi i64 [ 0, %.preheader ], [ %.lcssa198.ph, %._crit_edge209.loopexit ] ; 6 uses
  %i.dq = load ptr, ptr %5, align 8, !tbaa !31
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.lcssa198
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !32 ; 6 uses
  %i.dt = load ptr, ptr %6, align 8, !tbaa !31
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.lcssa198
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !32 ; 6 uses
  %i.dw = icmp eq i32 %i.ds, %i.dv
  br i1 %i.dw, label %.thread186, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.u, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEcmERKi.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.t:                                             ; preds = %._crit_edge209
  %i.dy = load i64, ptr %i.bm, align 8, !tbaa !17
end_hunk_0
begin_hunk_1_@_ZN3igl10predicates12ear_clippingIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IiLin1ELi1ELi0ELin1ELi1EEENS3_IiLin1ELin1ELi0ELin1ELin1EEES5_EEvRKNS2_10MatrixBaseIT_EERKNS7_IT0_EERNS2_15PlainObjectBaseIT1_EERNSG_IT2_EE:bb.a

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.c
  %i.f = shl nuw i64 %i.b, 2                      ; 2 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #18 ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i75

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !21
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.cont.i unwind label %bb.d

.cont.i:                                          ; preds = %.invoke.i
  unreachable

common.resume:                                    ; preds = %.body, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %.pn69.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %.invoke.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %5, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.k) #16
  br label %common.resume

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i75: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  store ptr %i.g, ptr %5, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.b, ptr %i.l, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.f) #18 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.invoke.i76, label %.lr.ph

.invoke.i76:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i75
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !21
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.cont.i77 unwind label %bb.e

.cont.i77:                                        ; preds = %.invoke.i76
  unreachable

bb.e:                                             ; preds = %.invoke.i76
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %6, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.q) #16
  br label %.body

._crit_edge.thread:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.b, ptr %i.r, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %6, align 8
  store i64 %i.b, ptr %i.s, align 8, !tbaa !29
  br label %.preheader190

.lr.ph:                                           ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i75
  store ptr %i.m, ptr %6, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.b, ptr %i.t, align 8, !tbaa !29
  %.not258 = icmp eq i64 %i.b, 1
  br i1 %.not258, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %invariant.op = add nsw i64 %i.b, -1            ; 3 uses
  %i.u = add nsw i64 %i.b, -1                     ; 3 uses
  %xtraiter = and i64 %i.u, 1
  %i.v = icmp eq i64 %i.b, 2
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.split.new

.lr.ph.split.new:                                 ; preds = %.lr.ph.split
  %unroll_iter = and i64 %i.u, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.split.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.new ], [ %indvars.iv.next.1, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.split.new ], [ %niter.next.1, %bb.f ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %.reass = add i64 %indvars.iv, %invariant.op
  %i.x = srem i64 %.reass, %i.b
  %i.y = trunc i64 %i.x to i32
  store i32 %i.y, ptr %i.w, align 4, !tbaa !32
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !32
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  %.reass.1 = add i64 %indvars.iv.next, %invariant.op
  %i.ac = srem i64 %.reass.1, %i.b
  %i.ad = trunc i64 %i.ac to i32
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !32
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.af = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !32
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !61

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.split
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next.1, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod372 = trunc i64 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod372)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.epil.init
  %.reass.epil = add i64 %indvars.iv.epil.init, %invariant.op
  %i.ah = srem i64 %.reass.epil, %i.b
  %i.ai = trunc i64 %i.ah to i32
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !32
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.epil.init
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil.init, 1 ; 2 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv.next.epil to i32
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !32
  br label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %.epil.preheader, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph
  %i.al = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.loopexit.unr-lcssa ], [ %indvars.iv.next.epil, %.epil.preheader ] ; 4 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = add nsw i64 %i.al, -1
  %i.ao = add nsw i64 %i.b, %i.an
  %i.ap = urem i64 %i.ao, %i.b
  %i.aq = trunc i64 %i.ap to i32
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.al
  %indvars.iv.next.peel = add nuw nsw i64 %i.al, 1 ; 2 uses
  %i.as = icmp eq i64 %indvars.iv.next.peel, %i.b
  %i.at = trunc nuw nsw i64 %indvars.iv.next.peel to i32
  %i.au = select i1 %i.as, i32 0, i32 %i.at
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !32
  %i.av = shl nuw nsw i64 %i.b, 2                 ; 2 uses
  %calloc266 = tail call ptr @calloc(i64 1, i64 %i.av) ; 5 uses
  %i.aw = icmp eq ptr %calloc266, null
  br i1 %i.aw, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i86

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.ax = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ax, align 8, !tbaa !21
  invoke void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc79 unwind label %bb.i

.noexc79:                                         ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i86: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %calloc = tail call ptr @calloc(i64 1, i64 %i.av) ; 3 uses
  %i.ay = icmp eq ptr %calloc, null
  br i1 %i.ay, label %bb.h, label %.lr.ph206

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i86
  %i.az = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.az, align 8, !tbaa !21
  invoke void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc88 unwind label %bb.i

.noexc88:                                         ; preds = %bb.h
  unreachable

.preheader190:                                    ; preds = %bb.j, %.thread, %._crit_edge.thread
  %.sroa.0142.2162168176265 = phi ptr [ null, %.thread ], [ null, %._crit_edge.thread ], [ %calloc266, %bb.j ] ; 17 uses
  %.sroa.0128.2177264 = phi ptr [ null, %.thread ], [ null, %._crit_edge.thread ], [ %calloc, %bb.j ] ; 21 uses
  %i.ba = phi i1 [ false, %.thread ], [ false, %._crit_edge.thread ], [ true, %bb.j ] ; 3 uses
  %i.bb = sdiv i64 %i.b, 8
  %i.bc = shl nsw i64 %i.bb, 3                    ; 5 uses
  %i.bd = sdiv i64 %i.b, 4                        ; 3 uses
  %i.be = shl nsw i64 %i.bd, 2                    ; 8 uses
  %.off.i.i.i.i = add i64 %i.b, 3
  %.not.i.i.i.i90 = icmp ult i64 %.off.i.i.i.i, 7 ; 2 uses
  %i.bf = icmp sgt i64 %i.b, 7                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0142.2162168176265, i64 16
  %i.bh = icmp samesign ugt i64 %i.b, 15          ; 2 uses
  %i.bi = icmp sgt i64 %i.be, %i.bc               ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0142.2162168176265, i64 %i.bc
  %i.bk = icmp slt i64 %i.be, %i.b                ; 2 uses
  %i.bl = icmp sgt i64 %i.b, 1                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bo = shl nsw i64 %i.bd, 2
  %i.bp = sub i64 %i.b, %i.bo                     ; 3 uses
  %min.iters.check288 = icmp ult i64 %i.bp, 8
  %n.vec290 = and i64 %i.bp, -8                   ; 3 uses
  %i.bq = add i64 %i.be, %n.vec290
  %i.br = getelementptr [4 x i8], ptr %.sroa.0142.2162168176265, i64 %i.be
  %cmp.n302 = icmp eq i64 %i.bp, %n.vec290
  %i.bs = add nsw i64 %i.b, -1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.bs, 8
  %n.vec = and i64 %i.bs, -8                      ; 3 uses
  %i.bt = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br label %bb.l

bb.i:                                             ; preds = %bb.ae, %bb.h, %bb.g
  %.sroa.0128.0 = phi ptr [ %.sroa.0128.2177264, %bb.ae ], [ null, %bb.g ], [ null, %bb.h ]
  %.sroa.0142.0 = phi ptr [ %.sroa.0142.2162168176265, %bb.ae ], [ null, %bb.g ], [ %calloc266, %bb.h ]
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.lr.ph206:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i86, %bb.j
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %bb.j ], [ 0, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i86 ] ; 3 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv231 to i32
  %i.bw = invoke noundef zeroext i1 @_ZZN3igl10predicates12ear_clippingIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IiLin1ELi1ELi0ELin1ELi1EEENS3_IiLin1ELin1ELi0ELin1ELin1EEES5_EEvRKNS2_10MatrixBaseIT_EERKNS7_IT0_EERNS2_15PlainObjectBaseIT1_EERNSG_IT2_EEENKUlRKNS7_IS4_EERKNS7_IS5_EERKS5_SU_iE_clESP_SS_SU_SU_i(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %i.bv)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.lr.ph206
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %calloc266, i64 %indvars.iv231
  %i.by = zext i1 %i.bw to i32
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !32
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !23
  %i.ca = icmp sgt i64 %i.bz, %indvars.iv.next232
  br i1 %i.ca, label %.lr.ph206, label %.preheader190, !llvm.loop !62

bb.k:                                             ; preds = %.lr.ph206
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.l:                                             ; preds = %.backedge, %.preheader190
  br i1 %.not.i.i.i.i90, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = load <4 x i32>, ptr %.sroa.0142.2162168176265, align 16, !tbaa !37 ; 3 uses
  br i1 %i.bf, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cd = load <4 x i32>, ptr %i.bg, align 16, !tbaa !37 ; 2 uses
  br i1 %i.bh, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.n
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.cd, %bb.n ], [ %i.cm, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.cc, %bb.n ], [ %i.ci, %.lr.ph.i.i.i.i ]
  %i.ce = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  br i1 %i.bi, label %bb.o, label %bb.p

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.n ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.n ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.ci, %.lr.ph.i.i.i.i ], [ %i.cc, %bb.n ]
  %i.cf = phi <4 x i32> [ %i.cm, %.lr.ph.i.i.i.i ], [ %i.cd, %bb.n ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0142.2162168176265, i64 %.05779.i.i.i.i
  %i.ch = load <4 x i32>, ptr %i.cg, align 16, !tbaa !37
  %i.ci = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.ch) ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0142.2162168176265, i64 %.057.in78.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load <4 x i32>, ptr %i.ck, align 16, !tbaa !37
  %i.cm = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cf, <4 x i32> %i.cl) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.cn = icmp slt i64 %.057.i.i.i.i, %i.bc
  br i1 %i.cn, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !38

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.co = load <4 x i32>, ptr %i.bj, align 16, !tbaa !37
  %i.cp = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ce, <4 x i32> %i.co)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i, %bb.m
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.cc, %bb.m ], [ %i.cp, %bb.o ], [ %i.ce, %._crit_edge.i.i.i.i ]
  %i.cq = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  br i1 %i.bk, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.p
  br i1 %min.iters.check288, label %.lr.ph84.i.i.i.i.preheader361, label %vector.ph289

vector.ph289:                                     ; preds = %.lr.ph84.i.i.i.i.preheader
  %broadcast.splatinsert291 = insertelement <4 x i32> poison, i32 %i.cq, i64 0
  %broadcast.splat292 = shufflevector <4 x i32> %broadcast.splatinsert291, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body293

vector.body293:                                   ; preds = %vector.body293, %vector.ph289
  %index294 = phi i64 [ 0, %vector.ph289 ], [ %index.next299, %vector.body293 ] ; 2 uses
  %vec.phi295.a = phi <4 x i32> [ %broadcast.splat292, %vector.ph289 ], [ %i.ct, %vector.body293 ]
  %vec.phi296 = phi <4 x i32> [ %broadcast.splat292, %vector.ph289 ], [ %i.cu, %vector.body293 ]
  %i.cr = getelementptr [4 x i8], ptr %i.br, i64 %index294 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load297.a = load <4 x i32>, ptr %i.cr, align 4, !tbaa !32
  %wide.load298 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !32
  %i.ct = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi295.a, <4 x i32> %wide.load297.a) ; 2 uses
  %i.cu = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi296, <4 x i32> %wide.load298) ; 2 uses
  %index.next299 = add nuw i64 %index294, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next299, %n.vec290
  br i1 %i.cv, label %middle.block300, label %vector.body293, !llvm.loop !63

middle.block300:                                  ; preds = %vector.body293
  %rdx.minmax301 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ct, <4 x i32> %i.cu)
  %i.cw = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax301) ; 2 uses
  br i1 %cmp.n302, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader361

.lr.ph84.i.i.i.i.preheader361:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block300
  %.05582.i.i.i.i.ph = phi i64 [ %i.be, %.lr.ph84.i.i.i.i.preheader ], [ %i.bq, %middle.block300 ]
  %.181.i.i.i.i.ph = phi i32 [ %i.cq, %.lr.ph84.i.i.i.i.preheader ], [ %i.cw, %middle.block300 ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader361, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.da, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader361 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.cz, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader361 ]
  %i.cx = getelementptr inbounds [4 x i8], ptr %.sroa.0142.2162168176265, i64 %.05582.i.i.i.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !32
  %i.cz = call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.cy) ; 2 uses
  %i.da = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.da, %i.b
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !64

bb.q:                                             ; preds = %bb.l
  %i.db = load i32, ptr %.sroa.0142.2162168176265, align 4, !tbaa !32 ; 3 uses
  br i1 %i.bl, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.q
  br i1 %min.iters.check, label %.lr.ph89.i.i.i.i.preheader360, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph89.i.i.i.i.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.db, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi285 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.dg, %vector.body ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0142.2162168176265, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 20
  %wide.load = load <4 x i32>, ptr %i.dd, align 4, !tbaa !32
  %wide.load286 = load <4 x i32>, ptr %i.de, align 4, !tbaa !32
  %i.df = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.dg = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi285, <4 x i32> %wide.load286) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.df, <4 x i32> %i.dg)
  %i.di = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader360

.lr.ph89.i.i.i.i.preheader360:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  %.286.i.i.i.i.ph = phi i32 [ %i.db, %.lr.ph89.i.i.i.i.preheader ], [ %i.di, %middle.block ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader360, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.dm, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader360 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.dl, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader360 ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0142.2162168176265, i64 %.087.i.i.i.i
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !32
  %i.dl = call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.dk) ; 2 uses
  %i.dm = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.dm, %i.b
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !66

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block300, %middle.block, %bb.q, %bb.p
  %.3.i.i.i.i = phi i32 [ %i.dl, %.lr.ph89.i.i.i.i ], [ %i.db, %bb.q ], [ %i.cq, %bb.p ], [ %i.di, %middle.block ], [ %i.cw, %middle.block300 ], [ %i.cz, %.lr.ph84.i.i.i.i ]
  %i.dn = icmp eq i32 %.3.i.i.i.i, 1
  br i1 %i.dn, label %.preheader, label %.thread186

.preheader:                                       ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit
  br i1 %i.ba, label %.lr.ph208, label %._crit_edge209

.lr.ph208:                                        ; preds = %.preheader, %bb.r
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %bb.r ], [ 0, %.preheader ] ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0142.2162168176265, i64 %indvars.iv234
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !32
  %.not = icmp eq i32 %i.dp, 1
  br i1 %.not, label %._crit_edge209.loopexit, label %bb.r

bb.r:                                             ; preds = %.lr.ph208
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next235, %i.b
  br i1 %exitcond237.not, label %._crit_edge209.loopexit, label %.lr.ph208, !llvm.loop !67

._crit_edge209.loopexit:                          ; preds = %bb.r, %.lr.ph208
  %.lcssa198.ph = phi i64 [ %indvars.iv234, %.lr.ph208 ], [ %i.b, %bb.r ] ; 2 uses
  %storemerge.lcssa.ph = trunc i64 %.lcssa198.ph to i32
  br label %._crit_edge209

._crit_edge209:                                   ; preds = %._crit_edge209.loopexit, %.preheader
  %storemerge.lcssa = phi i32 [ 0, %.preheader ], [ %storemerge.lcssa.ph, %._crit_edge209.loopexit ]
  %.lcssa198 = phi i64 [ 0, %.preheader ], [ %.lcssa198.ph, %._crit_edge209.loopexit ] ; 6 uses
  %i.dq = load ptr, ptr %5, align 8, !tbaa !31
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.lcssa198
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !32 ; 6 uses
  %i.dt = load ptr, ptr %6, align 8, !tbaa !31
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.lcssa198
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !32 ; 6 uses
  %i.dw = icmp eq i32 %i.ds, %i.dv
  br i1 %i.dw, label %.thread186, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.u, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEcmERKi.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.t:                                             ; preds = %._crit_edge209
  %i.dy = load i64, ptr %i.bm, align 8, !tbaa !17
end_hunk_1
