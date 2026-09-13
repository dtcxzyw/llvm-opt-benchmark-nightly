Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed_precompute?download=true
inline.NumInlined: 8942
inline.NumDeleted: 3137
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 167
loop-unroll.NumUnrolled: 172
begin_hunk_0_@_ZN5Eigen14COLAMDOrderingIiEclINS_12SparseMatrixIdLi0EiEEEEvRKT_RNS_17PermutationMatrixILin1ELin1EiEE:bb.a
  br i1 %i.ha, label %.epil.preheader, label %.lr.ph76.new

.lr.ph76.new:                                     ; preds = %.lr.ph76
  %unroll_iter = and i64 %i.i, 2147483644
  br label %bb.ai

._crit_edge77.loopexit.unr-lcssa:                 ; preds = %bb.ai
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  br i1 %lcmp.mod180.not, label %._crit_edge77, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge77.loopexit.unr-lcssa, %.lr.ph76
  %indvars.iv85.epil.init = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next86.3, %._crit_edge77.loopexit.unr-lcssa ]
  %lcmp.mod181 = icmp ne i64 %xtraiter179, 0
  tail call void @llvm.assume(i1 %lcmp.mod181)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.epil.preheader
  %indvars.iv85.epil = phi i64 [ %indvars.iv85.epil.init, %.epil.preheader ], [ %indvars.iv.next86.epil, %bb.ag ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ag ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.054.0, i64 %indvars.iv85.epil
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !83
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hd
  %i.hf = trunc nuw nsw i64 %indvars.iv85.epil to i32
  store i32 %i.hf, ptr %i.he, align 4, !tbaa !83
  %indvars.iv.next86.epil = add nuw nsw i64 %indvars.iv85.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter179
  br i1 %epil.iter.cmp.not, label %._crit_edge77, label %bb.ag, !llvm.loop !519

._crit_edge77:                                    ; preds = %._crit_edge77.loopexit.unr-lcssa, %bb.ag, %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
  tail call void @free(ptr noundef %.sroa.0.0) #33
  tail call void @free(ptr noundef %.sroa.054.0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  ret void

bb.ah:                                            ; preds = %bb.af
  %i.hg = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef %.sroa.0.0) #33
  br label %.body

bb.ai:                                            ; preds = %bb.ai, %.lr.ph76.new
  %indvars.iv85 = phi i64 [ 0, %.lr.ph76.new ], [ %indvars.iv.next86.3, %bb.ai ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph76.new ], [ %niter.next.3, %bb.ai ]
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.054.0, i64 %indvars.iv85
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !83
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hj
  %i.hl = trunc nuw nsw i64 %indvars.iv85 to i32
  store i32 %i.hl, ptr %i.hk, align 4, !tbaa !83
  %indvars.iv.next86 = or disjoint i64 %indvars.iv85, 1 ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.054.0, i64 %indvars.iv.next86
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !83
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ho
  %i.hq = trunc nuw nsw i64 %indvars.iv.next86 to i32
  store i32 %i.hq, ptr %i.hp, align 4, !tbaa !83
  %indvars.iv.next86.1 = or disjoint i64 %indvars.iv85, 2 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.054.0, i64 %indvars.iv.next86.1
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !83
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ht
  %i.hv = trunc nuw nsw i64 %indvars.iv.next86.1 to i32
  store i32 %i.hv, ptr %i.hu, align 4, !tbaa !83
  %indvars.iv.next86.2 = or disjoint i64 %indvars.iv85, 3 ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.054.0, i64 %indvars.iv.next86.2
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !83
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hy
  %i.ia = trunc nuw nsw i64 %indvars.iv.next86.2 to i32
  store i32 %i.ia, ptr %i.hz, align 4, !tbaa !83
  %indvars.iv.next86.3 = add nuw nsw i64 %indvars.iv85, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge77.loopexit.unr-lcssa, label %bb.ai, !llvm.loop !520

.body:                                            ; preds = %bb.o, %bb.ah
  %.pn38.pn = phi { ptr, i32 } [ %i.hg, %bb.ah ], [ %i.dz, %bb.o ]
  tail call void @free(ptr noundef %.sroa.054.0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  resume { ptr, i32 } %.pn38.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN5Eigen8internal8coletreeINS_12SparseMatrixIdLi0EiEENS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEiRKT_RT0_SA_PNS6_12StorageIndexE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !98   ; 10 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !40   ; 3 uses
  %i.f = trunc i64 %i.e to i32
  %.sroa.speculated149 = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.c) ; 5 uses
  %i.g = icmp sgt i32 %i.c, 0                     ; 2 uses
  br i1 %i.g, label %bb.b, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit97

bb.b:                                             ; preds = %bb.a
  %i.h = shl i64 %i.b, 2
  %i.i = and i64 %i.h, 8589934588                 ; 2 uses
  %calloc = tail call ptr @calloc(i64 1, i64 %i.i) ; 3 uses
  %i.j = icmp eq ptr %calloc, null
  br i1 %i.j, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.i) #34 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i95

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !90
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc.i93 unwind label %bb.e

.noexc.i93:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i95: ; preds = %bb.c
  %i.p = shl i64 %i.b, 2
  %.idx.i.i.i.i.i.i.i.i.i.i.i96 = and i64 %i.p, 8589934588
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i96, i1 false), !tbaa !83
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit97

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit97: ; preds = %bb.a, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i95
  %.sroa.0129.0179 = phi ptr [ null, %bb.a ], [ %i.l, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i95 ] ; 9 uses
  %.sroa.0137.0164171178 = phi ptr [ null, %bb.a ], [ %calloc, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i95 ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !81
  %.not.i.i = icmp eq i64 %i.b, %i.r
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit97
  %i.s = load ptr, ptr %1, align 8, !tbaa !82
  tail call void @free(ptr noundef %i.s) #33
  %i.t = icmp sgt i64 %i.b, 0
  br i1 %i.t, label %bb.g, label %.sink.split.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.u, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.g
  %i.v = shl nuw i64 %i.b, 2
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #34 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.invoke, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.f
  %.sink.i.i = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.f ]
  store ptr %.sink.i.i, ptr %1, align 8, !tbaa !82
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit97
  store i64 %i.b, ptr %i.q, align 8, !tbaa !81
  %sext186 = shl i64 %i.e, 32                     ; 3 uses
  %i.y = ashr exact i64 %sext186, 32              ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !81
  %.not.i.i99 = icmp eq i64 %i.y, %i.aa
  %.pre216.pre = load ptr, ptr %2, align 8, !tbaa !82 ; 2 uses
  br i1 %.not.i.i99, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef %.pre216.pre) #33
  %i.ab = icmp sgt i64 %i.y, 0
  br i1 %i.ab, label %bb.j, label %.sink.split.i.i100

bb.j:                                             ; preds = %bb.i
  %i.ac = lshr exact i64 %sext186, 30
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #34 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.invoke, label %.sink.split.i.i100

.invoke:                                          ; preds = %bb.j, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.g
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !90
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i.i100:                               ; preds = %bb.j, %bb.i
  %.sink.i.i101 = phi ptr [ %i.ad, %bb.j ], [ null, %bb.i ] ; 2 uses
  store ptr %.sink.i.i101, ptr %2, align 8, !tbaa !82
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i.i100, %bb.h
  %.pre = phi ptr [ %.sink.i.i101, %.sink.split.i.i100 ], [ %.pre216.pre, %bb.h ] ; 12 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !81
  %i.ag = icmp slt i64 %i.y, 1
  br i1 %i.ag, label %.loopexit190, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.idx.i.i.i.i.i.i.i.i.i.i = lshr exact i64 %sext186, 30 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ai = add nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i, -4 ; 2 uses
  %i.aj = lshr exact i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.l
  %n.vec = and i64 %i.ak, 9223372036854775800     ; 3 uses
  %i.al = shl i64 %n.vec, 2
  %i.am = getelementptr i8, ptr %.pre, i64 %i.al
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.pre, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !83
  store <4 x i32> %broadcast.splat, ptr %i.ao, align 4, !tbaa !83
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !521

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.loopexit190, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.l, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.pre, %bb.l ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.c, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.ah
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit190, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !522

.loopexit190:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %bb.k
  %i.ar = zext i32 %.sroa.speculated149 to i64    ; 3 uses
  %i.as = add nsw i32 %.sroa.speculated149, -1
  %i.at = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated149, i32 2)
  %i.au = add nsw i32 %i.at, -1
  %i.av = sdiv i32 %i.as, %i.au                   ; 2 uses
  %or.cond = icmp sgt i32 %.sroa.speculated149, 0
  br i1 %or.cond, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.loopexit190
  %min.iters.check234 = icmp ult i32 %.sroa.speculated149, 8
  br i1 %min.iters.check234, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246, label %vector.ph235

vector.ph235:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec236 = and i64 %i.ar, 2147483640           ; 3 uses
  %broadcast.splatinsert237 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat238 = shufflevector <4 x i32> %broadcast.splatinsert237, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph235
  %index240 = phi i64 [ 0, %vector.ph235 ], [ %index.next241, %vector.body239 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph235 ], [ %vec.ind.next, %vector.body239 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.aw = mul nsw <4 x i32> %broadcast.splat238, %vec.ind
  %i.ax = mul nsw <4 x i32> %broadcast.splat238, %step.add
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index240 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x i32> %i.aw, ptr %i.ay, align 4, !tbaa !83
  store <4 x i32> %i.ax, ptr %i.az, align 4, !tbaa !83
  %index.next241 = add nuw i64 %index240, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ba = icmp eq i64 %index.next241, %n.vec236
  br i1 %i.ba, label %middle.block242, label %vector.body239, !llvm.loop !523

middle.block242:                                  ; preds = %vector.body239
  %cmp.n243 = icmp eq i64 %n.vec236, %i.ar
  br i1 %cmp.n243, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block242
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec236, %middle.block242 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.be, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246 ] ; 3 uses
  %i.bb = trunc i64 %.05.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.bc = mul nsw i32 %i.av, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !83
  %i.be = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.be, %i.ar
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !524

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i, %middle.block242, %.loopexit190
  br i1 %i.g, label %.lr.ph193, label %._crit_edge202

.lr.ph193:                                        ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit
  %.not83 = icmp eq ptr %3, null                  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !111 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !99 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !109 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  %wide.trip.count209 = and i64 %i.b, 2147483647  ; 3 uses
  br i1 %i.bl, label %.lr.ph193.split.us, label %.lr.ph192.split

.lr.ph193.split.us:                               ; preds = %.lr.ph193, %._crit_edge.us
  %indvars.iv206 = phi i64 [ %indvars.iv.next219, %._crit_edge.us ], [ 0, %.lr.ph193 ] ; 4 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv206 to i32 ; 3 uses
  br i1 %.not83, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, label %bb.m

bb.m:                                             ; preds = %.lr.ph193.split.us
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv206
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !83
  %i.bp = sext i32 %i.bo to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %bb.m, %.lr.ph193.split.us
  %.058.us = phi i64 [ %i.bp, %bb.m ], [ %indvars.iv206, %.lr.ph193.split.us ]
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.058.us ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !83 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bq, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !83 ; 2 uses
  %i.bu = sext i32 %i.bt to i64                   ; 3 uses
  %i.bv = icmp slt i32 %i.br, %i.bt
  br i1 %i.bv, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.bw = sext i32 %i.br to i64                   ; 5 uses
  %i.bx = sub nsw i64 %i.bu, %i.bw
  %xtraiter = and i64 %i.bx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bw
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !83
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !83
  %.sroa.speculated.us.prol = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.cc)
  store i32 %.sroa.speculated.us.prol, ptr %i.cb, align 4, !tbaa !83
  %i.cd = add nsw i64 %i.bw, 1
  br label %.lr.ph.us.prol.loopexit

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.7115.0191.us.unr = phi i64 [ %i.bw, %.lr.ph.us.preheader ], [ %i.cd, %.lr.ph.us.prol ]
  %i.ce = add nsw i64 %i.bu, -1
  %i.cf = icmp eq i64 %i.ce, %i.bw
  br i1 %i.cf, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.7115.0191.us = phi i64 [ %i.cr, %.lr.ph.us ], [ %.sroa.7115.0191.us.unr, %.lr.ph.us.prol.loopexit ] ; 3 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %.sroa.7115.0191.us
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !83
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !83
  %.sroa.speculated.us = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.ck)
  store i32 %.sroa.speculated.us, ptr %i.cj, align 4, !tbaa !83
  %i.cl = getelementptr [4 x i8], ptr %i.bg, i64 %.sroa.7115.0191.us
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !83
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !83
  %.sroa.speculated.us.1 = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.cq)
  store i32 %.sroa.speculated.us.1, ptr %i.cp, align 4, !tbaa !83
  %i.cr = add nsw i64 %.sroa.7115.0191.us, 2      ; 2 uses
  %exitcond205.not.1 = icmp eq i64 %i.cr, %i.bu
  br i1 %exitcond205.not.1, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !525

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count209
  br i1 %exitcond222.not, label %.lr.ph201, label %.lr.ph193.split.us, !llvm.loop !526

.lr.ph192.split:                                  ; preds = %.lr.ph193
  br i1 %.not83, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us194, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us194: ; preds = %.lr.ph192.split, %._crit_edge.us.a
  %indvars.iv212 = phi i64 [ %indvars.iv.next207, %._crit_edge.us.a ], [ 0, %.lr.ph192.split ] ; 4 uses
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv212
  %5 = load i32, ptr %4, align 4, !tbaa !83
  %6 = sext i32 %5 to i64                         ; 2 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv212
  %8 = load i32, ptr %7, align 4, !tbaa !83       ; 2 uses
  %9 = zext nneg i32 %8 to i64
  %10 = add nsw i64 %9, %6
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %.lr.ph.us196.preheader, label %._crit_edge.us.a

.lr.ph.us196.preheader:                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us194
  %12 = trunc nuw nsw i64 %indvars.iv212 to i32
  br label %.lr.ph.us196

.lr.ph.us196:                                     ; preds = %.lr.ph.us196.preheader, %.lr.ph.us196
  %.sroa.7115.0190.us197 = phi i64 [ %18, %.lr.ph.us196 ], [ %6, %.lr.ph.us196.preheader ] ; 2 uses
  %13 = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %.sroa.7115.0190.us197
  %14 = load i32, ptr %13, align 4, !tbaa !83
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr %.pre, i64 %15 ; 2 uses
  %17 = load i32, ptr %16, align 4, !tbaa !83
  %.sroa.speculated.us198 = tail call i32 @llvm.smin.i32(i32 %12, i32 %17)
  store i32 %.sroa.speculated.us198, ptr %16, align 4, !tbaa !83
  %18 = add nsw i64 %.sroa.7115.0190.us197, 1     ; 2 uses
  %19 = icmp slt i64 %18, %10
  br i1 %19, label %.lr.ph.us196, label %._crit_edge.us.a, !llvm.loop !525

._crit_edge.us.a:                                 ; preds = %.lr.ph.us196, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us194
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %.lr.ph201, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us194, !llvm.loop !526

.lr.ph201:                                        ; preds = %._crit_edge, %._crit_edge.us.a, %._crit_edge.us
  %i.cs = load ptr, ptr %1, align 8, !tbaa !82    ; 2 uses
  %.not = icmp eq ptr %3, null
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !111
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !99
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !109 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  %sext = shl i64 %i.e, 32
  %i.da = ashr exact i64 %sext, 32
  %wide.trip.count214 = and i64 %i.b, 2147483647
  br label %bb.o

bb.n:                                             ; preds = %.invoke
  %i.db = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef %.sroa.0129.0179) #33
  br label %.body

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %.lr.ph192.split, %._crit_edge
  %.058 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph192.split ] ; 3 uses
  %20 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.058
  %21 = load i32, ptr %20, align 4, !tbaa !83
  %22 = sext i32 %21 to i64                       ; 2 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %22
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !83
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %22
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !83 ; 2 uses
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = add nsw i64 %i.dh, %i.de
  %i.dj = icmp sgt i32 %i.dg, 0
  br i1 %i.dj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %23 = trunc nuw nsw i64 %.058 to i32
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %indvars.iv.next = add nuw nsw i64 %.058, 1     ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count209
  br i1 %exitcond.not, label %.lr.ph201, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, !llvm.loop !526

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.7115.0191 = phi i64 [ %i.dp, %.lr.ph ], [ %i.de, %.lr.ph.preheader ] ; 2 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %.sroa.7115.0191
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !83
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !83
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %23, i32 %i.do)
  store i32 %.sroa.speculated, ptr %i.dn, align 4, !tbaa !83
  %i.dp = add nsw i64 %.sroa.7115.0191, 1         ; 2 uses
  %i.dq = icmp slt i64 %i.dp, %i.di
  br i1 %i.dq, label %.lr.ph, label %._crit_edge, !llvm.loop !525

._crit_edge202:                                   ; preds = %._crit_edge199, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit
  tail call void @free(ptr noundef %.sroa.0129.0179) #33
  tail call void @free(ptr noundef %.sroa.0137.0164171178) #33
  ret i32 0

bb.o:                                             ; preds = %.lr.ph201, %._crit_edge199
  %indvars.iv211 = phi i64 [ 0, %.lr.ph201 ], [ %indvars.iv.next212, %._crit_edge199 ] ; 12 uses
  %i.dr = icmp sge i64 %indvars.iv211, %i.da      ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0129.0179, i64 %indvars.iv211
  %i.dt = trunc nuw nsw i64 %indvars.iv211 to i32 ; 5 uses
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !83
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0137.0164171178, i64 %indvars.iv211
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !83
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv211
  store i32 %i.c, ptr %i.dv, align 4, !tbaa !83
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv211
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !83
  %i.dy = sext i32 %i.dx to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.055 = phi i64 [ %i.dy, %bb.p ], [ %indvars.iv211, %bb.o ] ; 2 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %.055 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !83
  %i.eb = sext i32 %i.ea to i64                   ; 3 uses
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ec = getelementptr i8, ptr %i.dz, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !83
  %i.ee = sext i32 %i.ed to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107

bb.s:                                             ; preds = %bb.q
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.055
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !83
  %i.eh = sext i32 %i.eg to i64
  %i.ei = add nsw i64 %i.eh, %i.eb
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107: ; preds = %bb.r, %bb.s
  %.sink.i106 = phi i64 [ %i.ee, %bb.r ], [ %i.ei, %bb.s ] ; 2 uses
  %i.ej = icmp sle i64 %.sink.i106, %i.eb         ; 2 uses
  %.not188194 = select i1 %i.ej, i1 %i.dr, i1 false
  br i1 %.not188194, label %._crit_edge199, label %.lr.ph198

._crit_edge199:                                   ; preds = %bb.x, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %._crit_edge202, label %bb.o, !llvm.loop !527

.lr.ph198:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107, %bb.x
  %i.ek = phi i1 [ %i.fc, %bb.x ], [ %i.ej, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ]
  %.057197 = phi i32 [ %.2, %bb.x ], [ %i.dt, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ] ; 3 uses
  %.059196 = phi i1 [ %spec.select, %bb.x ], [ %i.dr, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ]
  %.sroa.7.0195 = phi i64 [ %i.fb, %bb.x ], [ %i.eb, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ] ; 2 uses
  br i1 %i.ek, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph198
  %i.el = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %.sroa.7.0195
  %i.em = load i32, ptr %i.el, align 4, !tbaa !83
  %i.en = sext i32 %i.em to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph198, %bb.t
  %.0 = phi i64 [ %i.en, %bb.t ], [ %indvars.iv211, %.lr.ph198 ] ; 2 uses
  %i.eo = icmp eq i64 %.0, %indvars.iv211
  %spec.select = select i1 %i.eo, i1 true, i1 %.059196 ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %.pre, i64 %.0
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !83 ; 2 uses
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %.not78 = icmp sgt i64 %indvars.iv211, %i.er
  br i1 %.not78, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %.014.in18.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %i.er
  %.01419.i = load i32, ptr %.014.in18.i, align 4, !tbaa !83 ; 3 uses
  %.pn20.i = sext i32 %.01419.i to i64            ; 2 uses
  %.0.in21.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %.pn20.i
  %.022.i = load i32, ptr %.0.in21.i, align 4, !tbaa !83 ; 2 uses
  %.not23.i = icmp eq i32 %.022.i, %.01419.i
  br i1 %.not23.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.i
  %.025.i = phi i32 [ %.0.i, %.lr.ph.i ], [ %.022.i, %bb.v ] ; 3 uses
  %.01524.i = phi i32 [ %.025.i, %.lr.ph.i ], [ %i.eq, %bb.v ]
  %i.es = sext i32 %.01524.i to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %i.es
  store i32 %.025.i, ptr %i.et, align 4, !tbaa !83
  %.pn16.i = sext i32 %.025.i to i64
  %.014.in.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %.pn16.i
  %.014.i = load i32, ptr %.014.in.i, align 4, !tbaa !83 ; 3 uses
  %.pn.i = sext i32 %.014.i to i64                ; 2 uses
  %.0.in.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %.pn.i
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !83 ; 2 uses
  %.not.i = icmp eq i32 %.0.i, %.014.i
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !528

.loopexit:                                        ; preds = %.lr.ph.i, %bb.v
  %.pre-phi = phi i64 [ %.pn20.i, %bb.v ], [ %.pn.i, %.lr.ph.i ]
  %.014.lcssa.i = phi i32 [ %.01419.i, %bb.v ], [ %.014.i, %.lr.ph.i ] ; 2 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %.sroa.0137.0164171178, i64 %.pre-phi ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !83 ; 2 uses
  %i.ew = zext i32 %i.ev to i64
  %.not79 = icmp eq i64 %indvars.iv211, %i.ew
  br i1 %.not79, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %i.ex = sext i32 %i.ev to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.ex
  store i32 %i.dt, ptr %i.ey, align 4, !tbaa !83
  %i.ez = sext i32 %.057197 to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %i.ez
  store i32 %.014.lcssa.i, ptr %i.fa, align 4, !tbaa !83
  store i32 %i.dt, ptr %i.eu, align 4, !tbaa !83
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %bb.w, %bb.u
  %.2 = phi i32 [ %.057197, %bb.u ], [ %.014.lcssa.i, %bb.w ], [ %.057197, %.loopexit ]
  %i.fb = add nsw i64 %.sroa.7.0195, 1            ; 2 uses
  %i.fc = icmp sge i64 %i.fb, %.sink.i106         ; 2 uses
  %.not188 = select i1 %i.fc, i1 %spec.select, i1 false
  br i1 %.not188, label %._crit_edge199, label %.lr.ph198, !llvm.loop !529

.body:                                            ; preds = %bb.n, %bb.e
  %.sroa.0137.0165 = phi ptr [ %calloc, %bb.e ], [ %.sroa.0137.0164171178, %bb.n ]
  %.pn84.pn.pn.pn.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.db, %bb.n ]
  tail call void @free(ptr noundef %.sroa.0137.0165) #33
  resume { ptr, i32 } %.pn84.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !158
  %.not.i = icmp eq i64 %1, %i.b
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !159
  tail call void @free(ptr noundef %i.c) #33
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %bb.c, label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.e, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.c
  %i.g = shl nuw i64 %1, 3
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #34 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.b
  %.sink.i = phi ptr [ %i.h, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.b ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !159
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %bb.a, %.sink.split.i
  store i64 %1, ptr %i.a, align 8, !tbaa !158
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN5Eigen8internal6ColamdL14init_rows_colsIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_SA_(i32 noundef range(i32 0, -2147483648) %0, i32 noundef range(i32 0, -2147483648) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(address) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull captures(none) %6) unnamed_addr #20 {
bb.a:
  %.not247 = icmp eq i32 %1, 0                    ; 4 uses
  br i1 %.not247, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.b = load i32, ptr %i.a, align 4, !tbaa !83   ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal26permutation_matrix_productINS_12SparseMatrixIdLi0EiEELi2ELb0ENS_11SparseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_:bb.a

bb.k:                                             ; preds = %.lr.ph38
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.lr.ph38:                                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %_ZN5Eigen12SparseMatrixIdLi0EiE18insertByOuterInnerEll.exit
  %.sroa.8.037 = phi i64 [ %i.ec, %_ZN5Eigen12SparseMatrixIdLi0EiE18insertByOuterInnerEll.exit ], [ %i.dh, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %.sroa.8.037
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !106
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %.sroa.8.037
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !83
  %i.ea = sext i32 %i.dz to i64
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi0EiE6insertEll(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %i.ea, i64 noundef %.040)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE18insertByOuterInnerEll.exit unwind label %bb.k

_ZN5Eigen12SparseMatrixIdLi0EiE18insertByOuterInnerEll.exit: ; preds = %.lr.ph38
  store double %i.dx, ptr %i.eb, align 8, !tbaa !106
  %i.ec = add nsw i64 %.sroa.8.037, 1             ; 2 uses
  %exitcond44.not = icmp eq i64 %i.ec, %.sink.i
  br i1 %exitcond44.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.loopexit, label %.lr.ph38, !llvm.loop !588

bb.l:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit._crit_edge
  %i.ed = load ptr, ptr %4, align 8, !tbaa !82
  call void @free(ptr noundef %i.ed) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.ee = load ptr, ptr %i.g, align 8, !tbaa !99
  call void @free(ptr noundef %i.ee) #33
  %i.ef = load ptr, ptr %i.m, align 8, !tbaa !109
  call void @free(ptr noundef %i.ef) #33
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !110 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.eh) #36
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !111 ; 2 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.ek) #36
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.p:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit._crit_edge
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k, %bb.g
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.g ], [ %i.dv, %bb.k ], [ %i.em, %bb.p ]
  %i.en = load ptr, ptr %4, align 8, !tbaa !82
  call void @free(ptr noundef %i.en) #33
  br label %.body

.body:                                            ; preds = %bb.e, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.s, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi0EiE19reserveInnerVectorsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !98   ; 12 uses
  %i.f = shl i64 %i.e, 2                          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #34 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !109
  %.not80 = icmp eq ptr %i.g, null
  br i1 %.not80, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %.preheader
  %i.i = load ptr, ptr %1, align 8, !tbaa !82     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99   ; 4 uses
  %xtraiter153 = and i64 %i.e, 1
  %i.l = icmp eq i64 %i.e, 1
  br i1 %i.l, label %.epil.preheader152, label %.lr.ph106.new

.lr.ph106.new:                                    ; preds = %.lr.ph106
  %unroll_iter157 = and i64 %i.e, 9223372036854775806
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

._crit_edge107.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %._crit_edge107, label %.epil.preheader152

.epil.preheader152:                               ; preds = %._crit_edge107.loopexit.unr-lcssa, %.lr.ph106
  %.070105.epil.init = phi i64 [ 0, %.lr.ph106 ], [ %i.ba, %._crit_edge107.loopexit.unr-lcssa ]
  %.076104.epil.init = phi i64 [ 0, %.lr.ph106 ], [ %i.ar, %._crit_edge107.loopexit.unr-lcssa ] ; 2 uses
  %.077103.epil.init = phi i32 [ 0, %.lr.ph106 ], [ %i.ay, %._crit_edge107.loopexit.unr-lcssa ]
  %lcmp.mod156 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076104.epil.init
  store i32 %.077103.epil.init, ptr %i.n, align 4, !tbaa !83
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.076104.epil.init
  %i.p = load i32, ptr %i.o, align 4, !tbaa !83
  %i.q = sext i32 %i.p to i64
  %i.r = add nsw i64 %.070105.epil.init, %i.q
  br label %._crit_edge107

._crit_edge107:                                   ; preds = %.epil.preheader152, %._crit_edge107.loopexit.unr-lcssa, %.preheader
  %.070.lcssa = phi i64 [ 0, %.preheader ], [ %i.ba, %._crit_edge107.loopexit.unr-lcssa ], [ %i.r, %.epil.preheader152 ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %.070.lcssa)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99   ; 3 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !98   ; 4 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = icmp sgt i64 %i.v, 0
  %i.y = load i32, ptr %i.w, align 4, !tbaa !83   ; 2 uses
  br i1 %i.x, label %.lr.ph117, label %._crit_edge118._crit_edge

.lr.ph117:                                        ; preds = %._crit_edge107
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !109
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph106.new
  %.070105 = phi i64 [ 0, %.lr.ph106.new ], [ %i.ba, %bb.d ]
  %.076104 = phi i64 [ 0, %.lr.ph106.new ], [ %i.ar, %bb.d ] ; 5 uses
  %.077103 = phi i32 [ 0, %.lr.ph106.new ], [ %i.ay, %bb.d ] ; 2 uses
  %niter158 = phi i64 [ 0, %.lr.ph106.new ], [ %niter158.next.1, %bb.d ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076104
  store i32 %.077103, ptr %i.ab, align 4, !tbaa !83
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.076104
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !83 ; 2 uses
  %i.ae = or disjoint i64 %.076104, 1             ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !83
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.076104
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !83
  %i.aj = add i32 %i.ad, %.077103
  %i.ak = add i32 %i.aj, %i.ag
  %i.al = sub i32 %i.ak, %i.ai                    ; 2 uses
  %i.am = sext i32 %i.ad to i64
  %i.an = add nsw i64 %.070105, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ae
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !83
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ae
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !83 ; 2 uses
  %i.ar = add nuw nsw i64 %.076104, 2             ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !83
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ae
  %i.av = load i32, ptr %i.au, align 4, !tbaa !83
  %i.aw = add i32 %i.aq, %i.al
  %i.ax = add i32 %i.aw, %i.at
  %i.ay = sub i32 %i.ax, %i.av                    ; 2 uses
  %i.az = sext i32 %i.aq to i64
  %i.ba = add nsw i64 %i.an, %i.az                ; 3 uses
  %niter158.next.1 = add nuw nsw i64 %niter158, 2 ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %._crit_edge107.loopexit.unr-lcssa, label %bb.d, !llvm.loop !589

bb.e:                                             ; preds = %.lr.ph117, %._crit_edge112
  %.074115.in = phi i64 [ %i.v, %.lr.ph117 ], [ %.074115, %._crit_edge112 ] ; 2 uses
  %.075114 = phi i32 [ %i.y, %.lr.ph117 ], [ %i.cc, %._crit_edge112 ]
  %.074115 = add nsw i64 %.074115.in, -1          ; 5 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.074115 ; 5 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !83 ; 4 uses
  %i.bd = sub nsw i32 %.075114, %i.bc             ; 4 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph111, label %.._crit_edge112_crit_edge

.._crit_edge112_crit_edge:                        ; preds = %bb.e
  %.phi.trans.insert123 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074115
  %.pre124 = load i32, ptr %.phi.trans.insert123, align 4, !tbaa !83
  br label %._crit_edge112

.lr.ph111:                                        ; preds = %bb.e
  %i.bf = add nsw i32 %i.bd, -1                   ; 2 uses
  %i.bg = zext nneg i32 %i.bf to i64              ; 4 uses
  %i.bh = load ptr, ptr %i.z, align 8, !tbaa !111 ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074115 ; 4 uses
  %i.bj = load ptr, ptr %i.s, align 8, !tbaa !110 ; 3 uses
  %.pre122 = load i32, ptr %i.bi, align 4, !tbaa !83 ; 2 uses
  %i.bk = and i32 %i.bd, 1
  %lcmp.mod162.not = icmp eq i32 %i.bk, 0
  br i1 %lcmp.mod162.not, label %.prol.loopexit160, label %.prol.loopexit160.unr-lcssa

.prol.loopexit160.unr-lcssa:                      ; preds = %.lr.ph111
  %i.bl = sext i32 %i.bc to i64
  %i.bm = getelementptr [4 x i8], ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bn = getelementptr [4 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !83
  %i.bp = sext i32 %.pre122 to i64
  %i.bq = getelementptr [4 x i8], ptr %i.bm, i64 %i.bp
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !83
  %i.br = load i32, ptr %i.bb, align 4, !tbaa !83 ; 3 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr %i.bj, i64 %i.bg ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !106
  %i.bw = load i32, ptr %i.bi, align 4, !tbaa !83 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr [8 x i8], ptr %i.bt, i64 %i.bx
  store double %i.bv, ptr %i.by, align 8, !tbaa !106
  %i.bz = add nsw i64 %i.bg, -1
  br label %.prol.loopexit160

.prol.loopexit160:                                ; preds = %.prol.loopexit160.unr-lcssa, %.lr.ph111
  %.lcssa144.unr = phi i32 [ poison, %.lr.ph111 ], [ %i.br, %.prol.loopexit160.unr-lcssa ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph111 ], [ %i.bw, %.prol.loopexit160.unr-lcssa ]
  %.unr163 = phi i32 [ %.pre122, %.lr.ph111 ], [ %i.bw, %.prol.loopexit160.unr-lcssa ]
  %.unr164 = phi i32 [ %i.bc, %.lr.ph111 ], [ %i.br, %.prol.loopexit160.unr-lcssa ]
  %.073109.unr = phi i64 [ %i.bg, %.lr.ph111 ], [ %i.bz, %.prol.loopexit160.unr-lcssa ]
  %i.ca = icmp eq i32 %i.bf, 0
  br i1 %i.ca, label %._crit_edge112, label %.lr.ph111.new

._crit_edge112:                                   ; preds = %.prol.loopexit160, %.lr.ph111.new, %.._crit_edge112_crit_edge
  %i.cb = phi i32 [ %.pre124, %.._crit_edge112_crit_edge ], [ %.lcssa.unr, %.prol.loopexit160 ], [ %i.dh, %.lr.ph111.new ]
  %i.cc = phi i32 [ %i.bc, %.._crit_edge112_crit_edge ], [ %.lcssa144.unr, %.prol.loopexit160 ], [ %i.dc, %.lr.ph111.new ]
  store i32 %i.cb, ptr %i.bb, align 4, !tbaa !83
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.074115
  store i32 %i.bd, ptr %i.cd, align 4, !tbaa !83
  %i.ce = icmp samesign ugt i64 %.074115.in, 1
  br i1 %i.ce, label %bb.e, label %._crit_edge118, !llvm.loop !590

.lr.ph111.new:                                    ; preds = %.prol.loopexit160, %.lr.ph111.new
  %i.cf = phi i32 [ %i.dh, %.lr.ph111.new ], [ %.unr163, %.prol.loopexit160 ]
  %i.cg = phi i32 [ %i.dc, %.lr.ph111.new ], [ %.unr164, %.prol.loopexit160 ]
  %.073109 = phi i64 [ %i.dk, %.lr.ph111.new ], [ %.073109.unr, %.prol.loopexit160 ] ; 4 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr [4 x i8], ptr %i.bh, i64 %.073109 ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !83
  %i.cl = sext i32 %i.cf to i64
  %i.cm = getelementptr [4 x i8], ptr %i.ci, i64 %i.cl
  store i32 %i.ck, ptr %i.cm, align 4, !tbaa !83
  %i.cn = load i32, ptr %i.bb, align 4, !tbaa !83 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [8 x i8], ptr %i.bj, i64 %.073109 ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !106
  %i.cs = load i32, ptr %i.bi, align 4, !tbaa !83 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr [8 x i8], ptr %i.cp, i64 %i.ct
  store double %i.cr, ptr %i.cu, align 8, !tbaa !106
  %i.cv = add nsw i64 %.073109, -1                ; 3 uses
  %i.cw = sext i32 %i.cn to i64
  %i.cx = getelementptr [4 x i8], ptr %i.bh, i64 %i.cv ; 2 uses
  %i.cy = getelementptr [4 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !83
  %i.da = sext i32 %i.cs to i64
  %i.db = getelementptr [4 x i8], ptr %i.cx, i64 %i.da
  store i32 %i.cz, ptr %i.db, align 4, !tbaa !83
  %i.dc = load i32, ptr %i.bb, align 4, !tbaa !83 ; 3 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr [8 x i8], ptr %i.bj, i64 %i.cv ; 2 uses
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.dd
  %i.dg = load double, ptr %i.df, align 8, !tbaa !106
  %i.dh = load i32, ptr %i.bi, align 4, !tbaa !83 ; 3 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr [8 x i8], ptr %i.de, i64 %i.di
  store double %i.dg, ptr %i.dj, align 8, !tbaa !106
  %i.dk = add nsw i64 %.073109, -2
  %.not140.1 = icmp eq i64 %i.cv, 0
  br i1 %.not140.1, label %._crit_edge112, label %.lr.ph111.new, !llvm.loop !591

._crit_edge118:                                   ; preds = %._crit_edge112
  %i.dl = add nsw i64 %i.v, -1                    ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !83
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dl
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !83
  %i.dr = add nsw i32 %i.dq, %i.dn
  %i.ds = load ptr, ptr %1, align 8, !tbaa !82
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dl
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !83
  %i.dv = add nsw i32 %i.dr, %i.du                ; 2 uses
  store i32 %i.dv, ptr %i.w, align 4, !tbaa !83
  br label %._crit_edge118._crit_edge

._crit_edge118._crit_edge:                        ; preds = %._crit_edge107, %._crit_edge118
  %i.dw = phi i32 [ %i.dv, %._crit_edge118 ], [ %i.y, %._crit_edge107 ]
  %i.dx = sext i32 %i.dw to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.dx, double noundef 0.000000e+00)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.dy = add i64 %i.f, 4
  %i.dz = tail call noalias ptr @malloc(i64 noundef %i.dy) #34 ; 7 uses
  %.not = icmp eq ptr %i.dz, null
  br i1 %.not, label %bb.g, label %.preheader92

.preheader92:                                     ; preds = %bb.f
  %i.ea = icmp sgt i64 %i.e, 0
  br i1 %i.ea, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader92
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !99 ; 4 uses
  %i.ed = load ptr, ptr %1, align 8, !tbaa !82    ; 3 uses
  %.pre = load i32, ptr %i.ec, align 4, !tbaa !83 ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.ee = icmp eq i64 %i.e, 1
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 9223372036854775806
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ef = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ef, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.ef, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre, %.lr.ph ], [ %i.fq, %._crit_edge.loopexit.unr-lcssa ]
  %.07194.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.fo, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %.07293.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.fy, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod148 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod148)
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.07194.epil.init
  store i32 %.07293.epil.init, ptr %i.eg, align 4, !tbaa !83
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.07194.epil.init
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !83
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07194.epil.init
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !83 ; 2 uses
  %i.em = add i32 %.epil.init, %i.el
  %i.en = sub i32 %i.ej, %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.07194.epil.init
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !83
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 %i.en)
  %i.eq = add i32 %i.el, %.07293.epil.init
  %i.er = add i32 %i.eq, %.sroa.speculated.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader92
  %.072.lcssa = phi i32 [ 0, %.preheader92 ], [ %i.fy, %._crit_edge.loopexit.unr-lcssa ], [ %i.er, %.epil.preheader ] ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.e
  store i32 %.072.lcssa, ptr %i.es, align 4, !tbaa !83
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eu = sext i32 %.072.lcssa to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 noundef %i.eu, double noundef 0.000000e+00)
  %i.ev = load i64, ptr %i.d, align 8, !tbaa !98  ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, 0
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !142 ; 2 uses
  br i1 %i.ew, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %._crit_edge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %i.fa = phi i32 [ %.pre, %.lr.ph.new ], [ %i.fq, %bb.h ]
  %.07194 = phi i64 [ 0, %.lr.ph.new ], [ %i.fo, %bb.h ] ; 5 uses
  %.07293 = phi i32 [ 0, %.lr.ph.new ], [ %i.fy, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.07194
  store i32 %.07293, ptr %i.fb, align 4, !tbaa !83
  %i.fc = or disjoint i64 %.07194, 1              ; 4 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !83 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07194
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !83 ; 2 uses
  %i.fh = add i32 %i.fa, %i.fg
  %i.fi = sub i32 %i.fe, %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.07194
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !83
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.fk, i32 %i.fi)
  %i.fl = add i32 %i.fg, %.07293
  %i.fm = add i32 %i.fl, %.sroa.speculated        ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.fc
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !83
  %i.fo = add nuw nsw i64 %.07194, 2              ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !83 ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fc
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !83 ; 2 uses
  %i.ft = add i32 %i.fe, %i.fs
  %i.fu = sub i32 %i.fq, %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.fc
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !83
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.fw, i32 %i.fu)
  %i.fx = add i32 %i.fs, %i.fm
  %i.fy = add i32 %i.fx, %.sroa.speculated.1      ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !592

._crit_edge102:                                   ; preds = %.loopexit, %._crit_edge
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dz, ptr %i.fz, align 8, !tbaa !142
  tail call void @free(ptr noundef %i.ey) #33
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph101, %.loopexit
  %.06999.in = phi i64 [ %i.ev, %.lr.ph101 ], [ %.06999, %.loopexit ] ; 2 uses
  %.06999 = add nsw i64 %.06999.in, -1            ; 4 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.06999
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !83 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.06999 ; 4 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !83 ; 3 uses
  %i.ge = icmp sgt i32 %i.gb, %i.gd
  br i1 %i.ge, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %.06999
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !83 ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %.lr.ph97, label %.loopexit

.lr.ph97:                                         ; preds = %bb.j
  %i.gj = add nsw i32 %i.gh, -1                   ; 2 uses
  %i.gk = zext nneg i32 %i.gj to i64              ; 4 uses
  %i.gl = load ptr, ptr %i.ez, align 8, !tbaa !111 ; 3 uses
  %i.gm = load ptr, ptr %i.et, align 8, !tbaa !110 ; 3 uses
  %i.gn = sext i32 %i.gb to i64                   ; 6 uses
  %i.go = and i32 %i.gh, 1
  %lcmp.mod150.not = icmp eq i32 %i.go, 0
  br i1 %lcmp.mod150.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph97
  %i.gp = sext i32 %i.gd to i64
  %i.gq = getelementptr [4 x i8], ptr %i.gl, i64 %i.gk ; 2 uses
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %i.gp
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !83
  %i.gt = getelementptr [4 x i8], ptr %i.gq, i64 %i.gn
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !83
  %i.gu = load i32, ptr %i.gc, align 4, !tbaa !83 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr [8 x i8], ptr %i.gm, i64 %i.gk ; 2 uses
  %i.gx = getelementptr [8 x i8], ptr %i.gw, i64 %i.gv
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !106
  %i.gz = getelementptr [8 x i8], ptr %i.gw, i64 %i.gn
  store double %i.gy, ptr %i.gz, align 8, !tbaa !106
  %i.ha = add nsw i64 %i.gk, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph97
  %.unr151 = phi i32 [ %i.gd, %.lr.ph97 ], [ %i.gu, %.prol.loopexit.unr-lcssa ]
  %.095.unr = phi i64 [ %i.gk, %.lr.ph97 ], [ %i.ha, %.prol.loopexit.unr-lcssa ]
  %i.hb = icmp eq i32 %i.gj, 0
  br i1 %i.hb, label %.loopexit, label %.lr.ph97.new

.lr.ph97.new:                                     ; preds = %.prol.loopexit, %.lr.ph97.new
  %i.hc = phi i32 [ %i.hu, %.lr.ph97.new ], [ %.unr151, %.prol.loopexit ]
  %.095 = phi i64 [ %i.ia, %.lr.ph97.new ], [ %.095.unr, %.prol.loopexit ] ; 4 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr [4 x i8], ptr %i.gl, i64 %.095 ; 2 uses
  %i.hf = getelementptr [4 x i8], ptr %i.he, i64 %i.hd
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !83
  %i.hh = getelementptr [4 x i8], ptr %i.he, i64 %i.gn
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !83
  %i.hi = load i32, ptr %i.gc, align 4, !tbaa !83 ; 2 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr [8 x i8], ptr %i.gm, i64 %.095 ; 2 uses
  %i.hl = getelementptr [8 x i8], ptr %i.hk, i64 %i.hj
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !106
  %i.hn = getelementptr [8 x i8], ptr %i.hk, i64 %i.gn
  store double %i.hm, ptr %i.hn, align 8, !tbaa !106
  %i.ho = add nsw i64 %.095, -1                   ; 3 uses
  %i.hp = sext i32 %i.hi to i64
  %i.hq = getelementptr [4 x i8], ptr %i.gl, i64 %i.ho ; 2 uses
  %i.hr = getelementptr [4 x i8], ptr %i.hq, i64 %i.hp
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !83
  %i.ht = getelementptr [4 x i8], ptr %i.hq, i64 %i.gn
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !83
  %i.hu = load i32, ptr %i.gc, align 4, !tbaa !83 ; 2 uses
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr [8 x i8], ptr %i.gm, i64 %i.ho ; 2 uses
  %i.hx = getelementptr [8 x i8], ptr %i.hw, i64 %i.hv
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !106
  %i.hz = getelementptr [8 x i8], ptr %i.hw, i64 %i.gn
  store double %i.hy, ptr %i.hz, align 8, !tbaa !106
  %i.ia = add nsw i64 %.095, -2
  %.not139.1 = icmp eq i64 %i.ho, 0
  br i1 %.not139.1, label %.loopexit, label %.lr.ph97.new, !llvm.loop !593

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph97.new, %bb.j, %bb.i
  %i.ib = icmp samesign ugt i64 %.06999.in, 1
  br i1 %i.ib, label %bb.i, label %._crit_edge102, !llvm.loop !594

bb.k:                                             ; preds = %._crit_edge102, %._crit_edge118._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi0EiE6insertEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::CwiseNullaryOp.241", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.loopexit78

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99   ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !98   ; 11 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !83
  %i.j = load i32, ptr %i.e, align 4, !tbaa !83
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !155
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !40
  %i.r = shl nsw i64 %i.q, 1
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.r)
  %.pre = load i64, ptr %i.f, align 8, !tbaa !98
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i64 [ %.pre, %bb.c ], [ %i.g, %bb.b ] ; 6 uses
  %i.t = shl i64 %i.s, 2
  %calloc = tail call ptr @calloc(i64 1, i64 %i.t) ; 5 uses
  store ptr %calloc, ptr %i.a, align 8, !tbaa !109
  %.not69 = icmp eq ptr %calloc, null
  br i1 %.not69, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.l, align 8, !tbaa !155
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %.not7081 = icmp slt i64 %i.s, 1
  br i1 %.not7081, label %.loopexit78, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.f
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !99   ; 2 uses
  %min.iters.check129 = icmp ult i64 %i.s, 8
  br i1 %min.iters.check129, label %scalar.ph128.preheader, label %vector.ph130

vector.ph130:                                     ; preds = %.lr.ph83
  %n.vec131 = and i64 %i.s, 9223372036854775800   ; 3 uses
  %i.y = or disjoint i64 %n.vec131, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph130
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next134, %vector.body132 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index133 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.aa, align 4, !tbaa !83
  store <4 x i32> %broadcast.splat, ptr %i.ab, align 4, !tbaa !83
  %index.next134 = add nuw i64 %index133, 8       ; 2 uses
  %i.ac = icmp eq i64 %index.next134, %n.vec131
  br i1 %i.ac, label %middle.block135, label %vector.body132, !llvm.loop !595

middle.block135:                                  ; preds = %vector.body132
  %cmp.n136 = icmp eq i64 %i.s, %n.vec131
  br i1 %cmp.n136, label %.loopexit78, label %scalar.ph128.preheader

scalar.ph128.preheader:                           ; preds = %.lr.ph83, %middle.block135
  %.06682.ph = phi i64 [ 1, %.lr.ph83 ], [ %i.y, %middle.block135 ]
  br label %scalar.ph128

scalar.ph128:                                     ; preds = %scalar.ph128.preheader, %scalar.ph128
  %.06682 = phi i64 [ %i.ae, %scalar.ph128 ], [ %.06682.ph, %scalar.ph128.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.06682
  store i32 %i.w, ptr %i.ad, align 4, !tbaa !83
  %i.ae = add nuw i64 %.06682, 1
  %exitcond99.not = icmp eq i64 %.06682, %i.s
  br i1 %exitcond99.not, label %.loopexit78, label %scalar.ph128, !llvm.loop !596

bb.g:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.af = shl i64 %i.g, 2
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.af) #34 ; 14 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !109
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.ah = icmp sgt i64 %i.g, 0
  br i1 %i.ah, label %.lr.ph.preheader, label %.loopexit78

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.g, 12
  br i1 %min.iters.check, label %.lr.ph.preheader138, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ai = shl i64 %i.g, 2                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.ai
  %i.aj = getelementptr i8, ptr %i.e, i64 %i.ai
  %scevgep124 = getelementptr i8, ptr %i.aj, i64 4
  %bound0 = icmp ult ptr %i.ag, %scevgep124
  %bound1 = icmp ult ptr %i.e, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader138, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 9223372036854775800      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
end_hunk_1
begin_hunk_2_@_ZN5Eigen12SparseMatrixIdLi0EiE6insertEll:bb.a
  store i32 %i.ev, ptr %i.fk, align 4, !tbaa !83
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph86.1
  %i.fo = add i64 %.06285, 2
  %exitcond100.not.1 = icmp eq i64 %i.fj, %i.ex
  br i1 %exitcond100.not.1, label %.loopexit77, label %.lr.ph86, !llvm.loop !605

.loopexit77:                                      ; preds = %.lr.ph86.prol.loopexit, %bb.x, %..loopexit77_crit_edge, %bb.t
  %i.fp = phi ptr [ %.pre103, %..loopexit77_crit_edge ], [ %.pre104, %bb.t ], [ %.pre104, %bb.x ], [ %.pre104, %.lr.ph86.prol.loopexit ]
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %2
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !83 ; 3 uses
  %i.fs = sext i32 %i.fr to i64
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %2
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !83
  %i.fw = add i32 %i.fr, -1
  %i.fx = add i32 %i.fw, %i.fv                    ; 2 uses
  %i.fy = sext i32 %i.fx to i64                   ; 2 uses
  %i.fz = icmp sgt i32 %i.fx, %i.fr
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !111 ; 3 uses
  br i1 %i.fz, label %.lr.ph88, label %.critedge2

.lr.ph88:                                         ; preds = %.loopexit77, %bb.y
  %.087 = phi i64 [ %i.gc, %bb.y ], [ %i.fy, %.loopexit77 ] ; 4 uses
  %i.gc = add nsw i64 %.087, -1                   ; 5 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !83 ; 2 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp slt i64 %1, %i.gf
  br i1 %i.gg, label %bb.y, label %.critedge2

bb.y:                                             ; preds = %.lr.ph88
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %.087
  store i32 %i.ge, ptr %i.gh, align 4, !tbaa !83
  %i.gi = load ptr, ptr %i.ch, align 8, !tbaa !110 ; 2 uses
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gc
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !106
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %.087
  store double %i.gk, ptr %i.gl, align 8, !tbaa !106
  %i.gm = icmp sgt i64 %i.gc, %i.fs
  br i1 %i.gm, label %.lr.ph88, label %.critedge2, !llvm.loop !606

.critedge2:                                       ; preds = %.lr.ph88, %bb.y, %.loopexit77
  %.0.lcssa = phi i64 [ %i.fy, %.loopexit77 ], [ %i.gc, %bb.y ], [ %.087, %.lr.ph88 ] ; 2 uses
  %i.gn = trunc i64 %1 to i32
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %.0.lcssa
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !83
  %i.gp = load ptr, ptr %i.ch, align 8, !tbaa !110
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %.0.lcssa ; 2 uses
  store double 0.000000e+00, ptr %i.gq, align 8, !tbaa !106
  br label %bb.ac

bb.z:                                             ; preds = %._crit_edge, %bb.r
  %i.gr = phi i64 [ %.pre102, %._crit_edge ], [ %i.eq, %bb.r ]
  %.not71 = icmp eq i64 %i.gr, %i.cj
  br i1 %.not71, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 noundef %i.cj, double noundef 0.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !98
  store i64 %i.gt, ptr %3, align 8, !tbaa !139, !alias.scope !613
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 2, ptr %i.gu, align 4, !tbaa !170, !alias.scope !613
  call void @_ZN5Eigen12SparseMatrixIdLi0EiE19reserveInnerVectorsINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi0EiE18insertUncompressedEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge2, %.loopexit
  %.067 = phi ptr [ %i.ef, %.loopexit ], [ %i.gq, %.critedge2 ], [ %i.gv, %bb.ab ]
  ret ptr %.067
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi0EiE19reserveInnerVectorsINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !98   ; 13 uses
  %i.f = shl i64 %i.e, 2                          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #34 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !109
  %.not80 = icmp eq ptr %i.g, null
  br i1 %.not80, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !170  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !99   ; 4 uses
  %i.m = sext i32 %i.j to i64
  %xtraiter152 = and i64 %i.e, 1
  %i.n = icmp eq i64 %i.e, 1
  br i1 %i.n, label %.epil.preheader151, label %.lr.ph108.new

.lr.ph108.new:                                    ; preds = %.lr.ph108
  %unroll_iter155 = and i64 %i.e, 9223372036854775806
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

._crit_edge109.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %._crit_edge109.loopexit, label %.epil.preheader151

.epil.preheader151:                               ; preds = %._crit_edge109.loopexit.unr-lcssa, %.lr.ph108
  %.076106.epil.init = phi i64 [ 0, %.lr.ph108 ], [ %i.ak, %._crit_edge109.loopexit.unr-lcssa ]
  %.077105.epil.init = phi i32 [ 0, %.lr.ph108 ], [ %i.ar, %._crit_edge109.loopexit.unr-lcssa ]
  %lcmp.mod154 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod154)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076106.epil.init
  store i32 %.077105.epil.init, ptr %i.p, align 4, !tbaa !83
  br label %._crit_edge109.loopexit

._crit_edge109.loopexit:                          ; preds = %._crit_edge109.loopexit.unr-lcssa, %.epil.preheader151
  %i.q = mul i64 %i.e, %i.m
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %._crit_edge109.loopexit, %.preheader
  %.070.lcssa = phi i64 [ 0, %.preheader ], [ %i.q, %._crit_edge109.loopexit ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %.070.lcssa)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99   ; 3 uses
  %i.u = load i64, ptr %i.d, align 8, !tbaa !98   ; 4 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.w = icmp sgt i64 %i.u, 0
  %i.x = load i32, ptr %i.v, align 4, !tbaa !83   ; 2 uses
  br i1 %i.w, label %.lr.ph119, label %._crit_edge120._crit_edge

.lr.ph119:                                        ; preds = %._crit_edge109
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !109
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph108.new
  %.076106 = phi i64 [ 0, %.lr.ph108.new ], [ %i.ak, %bb.d ] ; 4 uses
  %.077105 = phi i32 [ 0, %.lr.ph108.new ], [ %i.ar, %bb.d ] ; 2 uses
  %niter156 = phi i64 [ 0, %.lr.ph108.new ], [ %niter156.next.1, %bb.d ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076106
  store i32 %.077105, ptr %i.aa, align 4, !tbaa !83
  %i.ab = or disjoint i64 %.076106, 1             ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !83
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.076106
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !83
  %i.ag = add i32 %i.j, %.077105
  %i.ah = add i32 %i.ag, %i.ad
  %i.ai = sub i32 %i.ah, %i.af                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ab
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !83
  %i.ak = add nuw nsw i64 %.076106, 2             ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !83
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ab
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !83
  %i.ap = add i32 %i.j, %i.ai
  %i.aq = add i32 %i.ap, %i.am
  %i.ar = sub i32 %i.aq, %i.ao                    ; 2 uses
  %niter156.next.1 = add nuw nsw i64 %niter156, 2 ; 2 uses
  %niter156.ncmp.1 = icmp eq i64 %niter156.next.1, %unroll_iter155
  br i1 %niter156.ncmp.1, label %._crit_edge109.loopexit.unr-lcssa, label %bb.d, !llvm.loop !614

bb.e:                                             ; preds = %.lr.ph119, %._crit_edge114
  %.074117.in = phi i64 [ %i.u, %.lr.ph119 ], [ %.074117, %._crit_edge114 ] ; 2 uses
  %.075116 = phi i32 [ %i.x, %.lr.ph119 ], [ %i.bt, %._crit_edge114 ]
  %.074117 = add nsw i64 %.074117.in, -1          ; 5 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.074117 ; 5 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !83 ; 4 uses
  %i.au = sub nsw i32 %.075116, %i.at             ; 4 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph113, label %.._crit_edge114_crit_edge

.._crit_edge114_crit_edge:                        ; preds = %bb.e
  %.phi.trans.insert125 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117
  %.pre126 = load i32, ptr %.phi.trans.insert125, align 4, !tbaa !83
  br label %._crit_edge114

.lr.ph113:                                        ; preds = %bb.e
  %i.aw = add nsw i32 %i.au, -1                   ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64              ; 4 uses
  %i.ay = load ptr, ptr %i.y, align 8, !tbaa !111 ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117 ; 4 uses
  %i.ba = load ptr, ptr %i.r, align 8, !tbaa !110 ; 3 uses
  %.pre124 = load i32, ptr %i.az, align 4, !tbaa !83 ; 2 uses
  %i.bb = and i32 %i.au, 1
  %lcmp.mod160.not = icmp eq i32 %i.bb, 0
  br i1 %lcmp.mod160.not, label %.prol.loopexit158, label %.prol.loopexit158.unr-lcssa

.prol.loopexit158.unr-lcssa:                      ; preds = %.lr.ph113
  %i.bc = sext i32 %i.at to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ay, i64 %i.ax ; 2 uses
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !83
  %i.bg = sext i32 %.pre124 to i64
  %i.bh = getelementptr [4 x i8], ptr %i.bd, i64 %i.bg
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !83
  %i.bi = load i32, ptr %i.as, align 4, !tbaa !83 ; 3 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr [8 x i8], ptr %i.ba, i64 %i.ax ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !106
  %i.bn = load i32, ptr %i.az, align 4, !tbaa !83 ; 3 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr [8 x i8], ptr %i.bk, i64 %i.bo
  store double %i.bm, ptr %i.bp, align 8, !tbaa !106
  %i.bq = add nsw i64 %i.ax, -1
  br label %.prol.loopexit158

.prol.loopexit158:                                ; preds = %.prol.loopexit158.unr-lcssa, %.lr.ph113
  %.lcssa144.unr = phi i32 [ poison, %.lr.ph113 ], [ %i.bi, %.prol.loopexit158.unr-lcssa ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph113 ], [ %i.bn, %.prol.loopexit158.unr-lcssa ]
  %.unr161 = phi i32 [ %.pre124, %.lr.ph113 ], [ %i.bn, %.prol.loopexit158.unr-lcssa ]
  %.unr162 = phi i32 [ %i.at, %.lr.ph113 ], [ %i.bi, %.prol.loopexit158.unr-lcssa ]
  %.073111.unr = phi i64 [ %i.ax, %.lr.ph113 ], [ %i.bq, %.prol.loopexit158.unr-lcssa ]
  %i.br = icmp eq i32 %i.aw, 0
  br i1 %i.br, label %._crit_edge114, label %.lr.ph113.new

._crit_edge114:                                   ; preds = %.prol.loopexit158, %.lr.ph113.new, %.._crit_edge114_crit_edge
  %i.bs = phi i32 [ %.pre126, %.._crit_edge114_crit_edge ], [ %.lcssa.unr, %.prol.loopexit158 ], [ %i.cy, %.lr.ph113.new ]
  %i.bt = phi i32 [ %i.at, %.._crit_edge114_crit_edge ], [ %.lcssa144.unr, %.prol.loopexit158 ], [ %i.ct, %.lr.ph113.new ]
  store i32 %i.bs, ptr %i.as, align 4, !tbaa !83
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.074117
  store i32 %i.au, ptr %i.bu, align 4, !tbaa !83
  %i.bv = icmp samesign ugt i64 %.074117.in, 1
  br i1 %i.bv, label %bb.e, label %._crit_edge120, !llvm.loop !615

.lr.ph113.new:                                    ; preds = %.prol.loopexit158, %.lr.ph113.new
  %i.bw = phi i32 [ %i.cy, %.lr.ph113.new ], [ %.unr161, %.prol.loopexit158 ]
  %i.bx = phi i32 [ %i.ct, %.lr.ph113.new ], [ %.unr162, %.prol.loopexit158 ]
  %.073111 = phi i64 [ %i.db, %.lr.ph113.new ], [ %.073111.unr, %.prol.loopexit158 ] ; 4 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr [4 x i8], ptr %i.ay, i64 %.073111 ; 2 uses
  %i.ca = getelementptr [4 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !83
  %i.cc = sext i32 %i.bw to i64
  %i.cd = getelementptr [4 x i8], ptr %i.bz, i64 %i.cc
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !83
  %i.ce = load i32, ptr %i.as, align 4, !tbaa !83 ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr [8 x i8], ptr %i.ba, i64 %.073111 ; 2 uses
  %i.ch = getelementptr [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !106
  %i.cj = load i32, ptr %i.az, align 4, !tbaa !83 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr [8 x i8], ptr %i.cg, i64 %i.ck
  store double %i.ci, ptr %i.cl, align 8, !tbaa !106
  %i.cm = add nsw i64 %.073111, -1                ; 3 uses
  %i.cn = sext i32 %i.ce to i64
  %i.co = getelementptr [4 x i8], ptr %i.ay, i64 %i.cm ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.co, i64 %i.cn
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !83
  %i.cr = sext i32 %i.cj to i64
  %i.cs = getelementptr [4 x i8], ptr %i.co, i64 %i.cr
  store i32 %i.cq, ptr %i.cs, align 4, !tbaa !83
  %i.ct = load i32, ptr %i.as, align 4, !tbaa !83 ; 3 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr [8 x i8], ptr %i.ba, i64 %i.cm ; 2 uses
  %i.cw = getelementptr [8 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !106
  %i.cy = load i32, ptr %i.az, align 4, !tbaa !83 ; 3 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr [8 x i8], ptr %i.cv, i64 %i.cz
  store double %i.cx, ptr %i.da, align 8, !tbaa !106
  %i.db = add nsw i64 %.073111, -2
  %.not141.1 = icmp eq i64 %i.cm, 0
  br i1 %.not141.1, label %._crit_edge114, label %.lr.ph113.new, !llvm.loop !616

._crit_edge120:                                   ; preds = %._crit_edge114
  %i.dc = add nsw i64 %i.u, -1                    ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !83
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dc
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !83
  %i.di = add nsw i32 %i.dh, %i.de
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !170
  %i.dl = add nsw i32 %i.di, %i.dk                ; 2 uses
  store i32 %i.dl, ptr %i.v, align 4, !tbaa !83
  br label %._crit_edge120._crit_edge

._crit_edge120._crit_edge:                        ; preds = %._crit_edge109, %._crit_edge120
  %i.dm = phi i32 [ %i.dl, %._crit_edge120 ], [ %i.x, %._crit_edge109 ]
  %i.dn = sext i32 %i.dm to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %i.dn, double noundef 0.000000e+00)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.do = add i64 %i.f, 4
  %i.dp = tail call noalias ptr @malloc(i64 noundef %i.do) #34 ; 7 uses
  %.not = icmp eq ptr %i.dp, null
  br i1 %.not, label %bb.g, label %.preheader94

.preheader94:                                     ; preds = %bb.f
  %i.dq = icmp sgt i64 %i.e, 0
  br i1 %i.dq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader94
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !99 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !170 ; 3 uses
  %.pre = load i32, ptr %i.ds, align 4, !tbaa !83 ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.dv = icmp eq i64 %i.e, 1
  br i1 %i.dv, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 9223372036854775806
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dw = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dw, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.dw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre, %.lr.ph ], [ %i.fd, %._crit_edge.loopexit.unr-lcssa ]
  %.07196.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.fb, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.07295.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.fj, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod147 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod147)
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.07196.epil.init
  store i32 %.07295.epil.init, ptr %i.dx, align 4, !tbaa !83
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.07196.epil.init
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !83
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07196.epil.init
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !83 ; 2 uses
  %i.ed = add i32 %.epil.init, %i.ec
  %i.ee = sub i32 %i.ea, %i.ed
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %i.du, i32 %i.ee)
  %i.ef = add i32 %i.ec, %.07295.epil.init
  %i.eg = add i32 %i.ef, %.sroa.speculated.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader94
  %.072.lcssa = phi i32 [ 0, %.preheader94 ], [ %i.fj, %._crit_edge.loopexit.unr-lcssa ], [ %i.eg, %.epil.preheader ] ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.e
  store i32 %.072.lcssa, ptr %i.eh, align 4, !tbaa !83
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ej = sext i32 %.072.lcssa to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, i64 noundef %i.ej, double noundef 0.000000e+00)
  %i.ek = load i64, ptr %i.d, align 8, !tbaa !98  ; 2 uses
  %i.el = icmp sgt i64 %i.ek, 0
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !142 ; 2 uses
  br i1 %i.el, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %._crit_edge
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %i.ep = phi i32 [ %.pre, %.lr.ph.new ], [ %i.fd, %bb.h ]
  %.07196 = phi i64 [ 0, %.lr.ph.new ], [ %i.fb, %bb.h ] ; 4 uses
  %.07295 = phi i32 [ 0, %.lr.ph.new ], [ %i.fj, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.07196
  store i32 %.07295, ptr %i.eq, align 4, !tbaa !83
  %i.er = or disjoint i64 %.07196, 1              ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !83 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07196
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !83 ; 2 uses
  %i.ew = add i32 %i.ep, %i.ev
  %i.ex = sub i32 %i.et, %i.ew
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.du, i32 %i.ex)
  %i.ey = add i32 %i.ev, %.07295
  %i.ez = add i32 %i.ey, %.sroa.speculated        ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.er
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !83
  %i.fb = add nuw nsw i64 %.07196, 2              ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !83 ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.er
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !83 ; 2 uses
  %i.fg = add i32 %i.et, %i.ff
  %i.fh = sub i32 %i.fd, %i.fg
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.du, i32 %i.fh)
  %i.fi = add i32 %i.ff, %i.ez
  %i.fj = add i32 %i.fi, %.sroa.speculated.1      ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !617

._crit_edge104:                                   ; preds = %.loopexit, %._crit_edge
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dp, ptr %i.fk, align 8, !tbaa !142
  tail call void @free(ptr noundef %i.en) #33
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph103, %.loopexit
  %.069101.in = phi i64 [ %i.ek, %.lr.ph103 ], [ %.069101, %.loopexit ] ; 2 uses
  %.069101 = add nsw i64 %.069101.in, -1          ; 4 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.069101
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !83 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %.069101 ; 4 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !83 ; 3 uses
  %i.fp = icmp sgt i32 %i.fm, %i.fo
  br i1 %i.fp, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.fq = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %.069101
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !83 ; 3 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph99, label %.loopexit

.lr.ph99:                                         ; preds = %bb.j
  %i.fu = add nsw i32 %i.fs, -1                   ; 2 uses
  %i.fv = zext nneg i32 %i.fu to i64              ; 4 uses
  %i.fw = load ptr, ptr %i.eo, align 8, !tbaa !111 ; 3 uses
  %i.fx = load ptr, ptr %i.ei, align 8, !tbaa !110 ; 3 uses
  %i.fy = sext i32 %i.fm to i64                   ; 6 uses
  %i.fz = and i32 %i.fs, 1
  %lcmp.mod149.not = icmp eq i32 %i.fz, 0
  br i1 %lcmp.mod149.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph99
  %i.ga = sext i32 %i.fo to i64
  %i.gb = getelementptr [4 x i8], ptr %i.fw, i64 %i.fv ; 2 uses
  %i.gc = getelementptr [4 x i8], ptr %i.gb, i64 %i.ga
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !83
  %i.ge = getelementptr [4 x i8], ptr %i.gb, i64 %i.fy
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !83
  %i.gf = load i32, ptr %i.fn, align 4, !tbaa !83 ; 2 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr [8 x i8], ptr %i.fx, i64 %i.fv ; 2 uses
  %i.gi = getelementptr [8 x i8], ptr %i.gh, i64 %i.gg
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !106
  %i.gk = getelementptr [8 x i8], ptr %i.gh, i64 %i.fy
  store double %i.gj, ptr %i.gk, align 8, !tbaa !106
  %i.gl = add nsw i64 %i.fv, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph99
  %.unr150 = phi i32 [ %i.fo, %.lr.ph99 ], [ %i.gf, %.prol.loopexit.unr-lcssa ]
  %.097.unr = phi i64 [ %i.fv, %.lr.ph99 ], [ %i.gl, %.prol.loopexit.unr-lcssa ]
  %i.gm = icmp eq i32 %i.fu, 0
  br i1 %i.gm, label %.loopexit, label %.lr.ph99.new

.lr.ph99.new:                                     ; preds = %.prol.loopexit, %.lr.ph99.new
  %i.gn = phi i32 [ %i.hf, %.lr.ph99.new ], [ %.unr150, %.prol.loopexit ]
  %.097 = phi i64 [ %i.hl, %.lr.ph99.new ], [ %.097.unr, %.prol.loopexit ] ; 4 uses
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr [4 x i8], ptr %i.fw, i64 %.097 ; 2 uses
  %i.gq = getelementptr [4 x i8], ptr %i.gp, i64 %i.go
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !83
  %i.gs = getelementptr [4 x i8], ptr %i.gp, i64 %i.fy
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !83
  %i.gt = load i32, ptr %i.fn, align 4, !tbaa !83 ; 2 uses
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr [8 x i8], ptr %i.fx, i64 %.097 ; 2 uses
  %i.gw = getelementptr [8 x i8], ptr %i.gv, i64 %i.gu
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !106
  %i.gy = getelementptr [8 x i8], ptr %i.gv, i64 %i.fy
  store double %i.gx, ptr %i.gy, align 8, !tbaa !106
  %i.gz = add nsw i64 %.097, -1                   ; 3 uses
  %i.ha = sext i32 %i.gt to i64
  %i.hb = getelementptr [4 x i8], ptr %i.fw, i64 %i.gz ; 2 uses
  %i.hc = getelementptr [4 x i8], ptr %i.hb, i64 %i.ha
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !83
  %i.he = getelementptr [4 x i8], ptr %i.hb, i64 %i.fy
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !83
  %i.hf = load i32, ptr %i.fn, align 4, !tbaa !83 ; 2 uses
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr [8 x i8], ptr %i.fx, i64 %i.gz ; 2 uses
  %i.hi = getelementptr [8 x i8], ptr %i.hh, i64 %i.hg
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !106
  %i.hk = getelementptr [8 x i8], ptr %i.hh, i64 %i.fy
  store double %i.hj, ptr %i.hk, align 8, !tbaa !106
  %i.hl = add nsw i64 %.097, -2
  %.not140.1 = icmp eq i64 %i.gz, 0
  br i1 %.not140.1, label %.loopexit, label %.lr.ph99.new, !llvm.loop !618

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph99.new, %bb.j, %bb.i
  %i.hm = icmp samesign ugt i64 %.069101.in, 1
  br i1 %i.hm, label %bb.i, label %._crit_edge104, !llvm.loop !619

bb.k:                                             ; preds = %._crit_edge104, %._crit_edge120._crit_edge
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi0EiE18insertUncompressedEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.Eigen::SparseMatrix<double>::SingletonVector", align 4 ; 5 uses
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.d = getelementptr [4 x i8], ptr %i.c, i64 %2 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !83
  %i.g = load i32, ptr %i.d, align 4, !tbaa !83   ; 2 uses
  %i.h = sub nsw i32 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !109  ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %2
  %i.l = load i32, ptr %i.k, align 4, !tbaa !83   ; 3 uses
  %.not = icmp slt i32 %i.l, %i.h
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.l, i32 2)
  %i.m = trunc i64 %2 to i32
  store i32 %i.m, ptr %3, align 4, !tbaa !172
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.speculated, ptr %i.n, align 4, !tbaa !621
  call void @_ZN5Eigen12SparseMatrixIdLi0EiE19reserveInnerVectorsINS1_15SingletonVectorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !99
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %.pre, i64 %2
  %.pre29 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !83
  %.pre30 = load ptr, ptr %i.i, align 8, !tbaa !109 ; 2 uses
  %.phi.trans.insert31 = getelementptr inbounds [4 x i8], ptr %.pre30, i64 %2
  %.pre32 = load i32, ptr %.phi.trans.insert31, align 4, !tbaa !83
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i32 [ %.pre32, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.p = phi ptr [ %.pre30, %bb.b ], [ %i.j, %bb.a ]
  %i.q = phi i32 [ %.pre29, %bb.b ], [ %i.g, %bb.a ]
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.p, i64 %2 ; 2 uses
  %i.t = sext i32 %i.o to i64
  %i.u = add nsw i64 %i.t, %i.r                   ; 2 uses
  %i.v = icmp sgt i32 %i.o, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !111  ; 3 uses
  br i1 %i.v, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.026 = phi i64 [ %i.u, %.lr.ph ], [ %i.z, %bb.e ] ; 4 uses
  %i.z = add nsw i64 %.026, -1                    ; 5 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !83 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, %i.a
  br i1 %i.ac, label %bb.e, label %.critedge.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.026
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !83
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !110 ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.z
  %i.ag = load double, ptr %i.af, align 8, !tbaa !106
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %.026
  store double %i.ag, ptr %i.ah, align 8, !tbaa !106
  %i.ai = icmp sgt i64 %i.z, %i.r
  br i1 %i.ai, label %bb.d, label %.critedge.loopexit, !llvm.loop !620

.critedge.loopexit:                               ; preds = %bb.e, %bb.d
  %.0.lcssa.ph = phi i64 [ %.026, %bb.d ], [ %i.z, %bb.e ]
  %.pre33 = load i32, ptr %i.s, align 4, !tbaa !83
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.loopexit
  %i.aj = phi i32 [ %.pre33, %.critedge.loopexit ], [ %i.o, %bb.c ]
  %.0.lcssa = phi i64 [ %.0.lcssa.ph, %.critedge.loopexit ], [ %i.u, %bb.c ] ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.s, align 4, !tbaa !83
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.0.lcssa
  store i32 %i.a, ptr %i.am, align 4, !tbaa !83
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !110
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %.0.lcssa ; 2 uses
  store double 0.000000e+00, ptr %i.ao, align 8, !tbaa !106
  ret ptr %i.ao
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi0EiE19reserveInnerVectorsINS1_15SingletonVectorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !98   ; 12 uses
  %i.f = shl i64 %i.e, 2                          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #34 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !109
  %.not80 = icmp eq ptr %i.g, null
  br i1 %.not80, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %.preheader
  %i.i = load i32, ptr %1, align 4, !tbaa !172
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99   ; 4 uses
  %xtraiter155 = and i64 %i.e, 1
  %i.o = icmp eq i64 %i.e, 1
  br i1 %i.o, label %.epil.preheader154, label %.lr.ph108.new

.lr.ph108.new:                                    ; preds = %.lr.ph108
  %unroll_iter159 = and i64 %i.e, 9223372036854775806
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

._crit_edge109.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod156.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod156.not, label %._crit_edge109, label %.epil.preheader154

.epil.preheader154:                               ; preds = %._crit_edge109.loopexit.unr-lcssa, %.lr.ph108
  %.070107.epil.init = phi i64 [ 0, %.lr.ph108 ], [ %i.bd, %._crit_edge109.loopexit.unr-lcssa ]
  %.076106.epil.init = phi i64 [ 0, %.lr.ph108 ], [ %i.au, %._crit_edge109.loopexit.unr-lcssa ] ; 2 uses
  %.077105.epil.init = phi i32 [ 0, %.lr.ph108 ], [ %i.bb, %._crit_edge109.loopexit.unr-lcssa ]
  %lcmp.mod158 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod158)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076106.epil.init
  store i32 %.077105.epil.init, ptr %i.q, align 4, !tbaa !83
  %i.r = icmp eq i64 %.076106.epil.init, %i.j
  %i.s = sext i32 %i.l to i64
  %i.t = select i1 %i.r, i64 %i.s, i64 0
  %i.u = add nsw i64 %.070107.epil.init, %i.t
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %.epil.preheader154, %._crit_edge109.loopexit.unr-lcssa, %.preheader
  %.070.lcssa = phi i64 [ 0, %.preheader ], [ %i.bd, %._crit_edge109.loopexit.unr-lcssa ], [ %i.u, %.epil.preheader154 ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %.070.lcssa)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99   ; 3 uses
  %i.y = load i64, ptr %i.d, align 8, !tbaa !98   ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = icmp sgt i64 %i.y, 0
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !83  ; 2 uses
  br i1 %i.aa, label %.lr.ph119, label %._crit_edge120._crit_edge

.lr.ph119:                                        ; preds = %._crit_edge109
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !109
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph108.new
  %.070107 = phi i64 [ 0, %.lr.ph108.new ], [ %i.bd, %bb.d ]
  %.076106 = phi i64 [ 0, %.lr.ph108.new ], [ %i.au, %bb.d ] ; 5 uses
  %.077105 = phi i32 [ 0, %.lr.ph108.new ], [ %i.bb, %bb.d ] ; 2 uses
  %niter160 = phi i64 [ 0, %.lr.ph108.new ], [ %niter160.next.1, %bb.d ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076106
  store i32 %.077105, ptr %i.ae, align 4, !tbaa !83
  %i.af = icmp eq i64 %.076106, %i.j
  %i.ag = select i1 %i.af, i32 %i.l, i32 0        ; 2 uses
  %i.ah = or disjoint i64 %.076106, 1             ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !83
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.076106
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !83
  %i.am = add i32 %i.aj, %.077105
  %i.an = add i32 %i.am, %i.ag
  %i.ao = sub i32 %i.an, %i.al                    ; 2 uses
  %i.ap = sext i32 %i.ag to i64
  %i.aq = add nsw i64 %.070107, %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ah
  store i32 %i.ao, ptr %i.ar, align 4, !tbaa !83
  %i.as = icmp eq i64 %i.ah, %i.j
  %i.at = select i1 %i.as, i32 %i.l, i32 0        ; 2 uses
  %i.au = add nuw nsw i64 %.076106, 2             ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !83
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ah
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !83
  %i.az = add i32 %i.aw, %i.ao
  %i.ba = add i32 %i.az, %i.at
  %i.bb = sub i32 %i.ba, %i.ay                    ; 2 uses
  %i.bc = sext i32 %i.at to i64
  %i.bd = add nsw i64 %i.aq, %i.bc                ; 3 uses
  %niter160.next.1 = add nuw nsw i64 %niter160, 2 ; 2 uses
  %niter160.ncmp.1 = icmp eq i64 %niter160.next.1, %unroll_iter159
  br i1 %niter160.ncmp.1, label %._crit_edge109.loopexit.unr-lcssa, label %bb.d, !llvm.loop !622

bb.e:                                             ; preds = %.lr.ph119, %._crit_edge114
  %.074117.in = phi i64 [ %i.y, %.lr.ph119 ], [ %.074117, %._crit_edge114 ] ; 2 uses
  %.075116 = phi i32 [ %i.ab, %.lr.ph119 ], [ %i.cf, %._crit_edge114 ]
  %.074117 = add nsw i64 %.074117.in, -1          ; 5 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.074117 ; 5 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !83 ; 4 uses
  %i.bg = sub nsw i32 %.075116, %i.bf             ; 4 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph113, label %.._crit_edge114_crit_edge

.._crit_edge114_crit_edge:                        ; preds = %bb.e
  %.phi.trans.insert125 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117
  %.pre126 = load i32, ptr %.phi.trans.insert125, align 4, !tbaa !83
  br label %._crit_edge114

.lr.ph113:                                        ; preds = %bb.e
  %i.bi = add nsw i32 %i.bg, -1                   ; 2 uses
  %i.bj = zext nneg i32 %i.bi to i64              ; 4 uses
  %i.bk = load ptr, ptr %i.ac, align 8, !tbaa !111 ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117 ; 4 uses
  %i.bm = load ptr, ptr %i.v, align 8, !tbaa !110 ; 3 uses
  %.pre124 = load i32, ptr %i.bl, align 4, !tbaa !83 ; 2 uses
  %i.bn = and i32 %i.bg, 1
  %lcmp.mod164.not = icmp eq i32 %i.bn, 0
  br i1 %lcmp.mod164.not, label %.prol.loopexit162, label %.prol.loopexit162.unr-lcssa

.prol.loopexit162.unr-lcssa:                      ; preds = %.lr.ph113
  %i.bo = sext i32 %i.bf to i64
  %i.bp = getelementptr [4 x i8], ptr %i.bk, i64 %i.bj ; 2 uses
  %i.bq = getelementptr [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !83
  %i.bs = sext i32 %.pre124 to i64
  %i.bt = getelementptr [4 x i8], ptr %i.bp, i64 %i.bs
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !83
  %i.bu = load i32, ptr %i.be, align 4, !tbaa !83 ; 3 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr [8 x i8], ptr %i.bm, i64 %i.bj ; 2 uses
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load double, ptr %i.bx, align 8, !tbaa !106
  %i.bz = load i32, ptr %i.bl, align 4, !tbaa !83 ; 3 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr [8 x i8], ptr %i.bw, i64 %i.ca
  store double %i.by, ptr %i.cb, align 8, !tbaa !106
  %i.cc = add nsw i64 %i.bj, -1
  br label %.prol.loopexit162

.prol.loopexit162:                                ; preds = %.prol.loopexit162.unr-lcssa, %.lr.ph113
  %.lcssa146.unr = phi i32 [ poison, %.lr.ph113 ], [ %i.bu, %.prol.loopexit162.unr-lcssa ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph113 ], [ %i.bz, %.prol.loopexit162.unr-lcssa ]
  %.unr165 = phi i32 [ %.pre124, %.lr.ph113 ], [ %i.bz, %.prol.loopexit162.unr-lcssa ]
  %.unr166 = phi i32 [ %i.bf, %.lr.ph113 ], [ %i.bu, %.prol.loopexit162.unr-lcssa ]
  %.073111.unr = phi i64 [ %i.bj, %.lr.ph113 ], [ %i.cc, %.prol.loopexit162.unr-lcssa ]
  %i.cd = icmp eq i32 %i.bi, 0
  br i1 %i.cd, label %._crit_edge114, label %.lr.ph113.new

._crit_edge114:                                   ; preds = %.prol.loopexit162, %.lr.ph113.new, %.._crit_edge114_crit_edge
  %i.ce = phi i32 [ %.pre126, %.._crit_edge114_crit_edge ], [ %.lcssa.unr, %.prol.loopexit162 ], [ %i.dk, %.lr.ph113.new ]
  %i.cf = phi i32 [ %i.bf, %.._crit_edge114_crit_edge ], [ %.lcssa146.unr, %.prol.loopexit162 ], [ %i.df, %.lr.ph113.new ]
  store i32 %i.ce, ptr %i.be, align 4, !tbaa !83
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.074117
  store i32 %i.bg, ptr %i.cg, align 4, !tbaa !83
  %i.ch = icmp samesign ugt i64 %.074117.in, 1
  br i1 %i.ch, label %bb.e, label %._crit_edge120, !llvm.loop !623

.lr.ph113.new:                                    ; preds = %.prol.loopexit162, %.lr.ph113.new
  %i.ci = phi i32 [ %i.dk, %.lr.ph113.new ], [ %.unr165, %.prol.loopexit162 ]
  %i.cj = phi i32 [ %i.df, %.lr.ph113.new ], [ %.unr166, %.prol.loopexit162 ]
  %.073111 = phi i64 [ %i.dn, %.lr.ph113.new ], [ %.073111.unr, %.prol.loopexit162 ] ; 4 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr [4 x i8], ptr %i.bk, i64 %.073111 ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !83
  %i.co = sext i32 %i.ci to i64
  %i.cp = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  store i32 %i.cn, ptr %i.cp, align 4, !tbaa !83
  %i.cq = load i32, ptr %i.be, align 4, !tbaa !83 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [8 x i8], ptr %i.bm, i64 %.073111 ; 2 uses
  %i.ct = getelementptr [8 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !106
  %i.cv = load i32, ptr %i.bl, align 4, !tbaa !83 ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr [8 x i8], ptr %i.cs, i64 %i.cw
  store double %i.cu, ptr %i.cx, align 8, !tbaa !106
  %i.cy = add nsw i64 %.073111, -1                ; 3 uses
  %i.cz = sext i32 %i.cq to i64
  %i.da = getelementptr [4 x i8], ptr %i.bk, i64 %i.cy ; 2 uses
  %i.db = getelementptr [4 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !83
  %i.dd = sext i32 %i.cv to i64
  %i.de = getelementptr [4 x i8], ptr %i.da, i64 %i.dd
  store i32 %i.dc, ptr %i.de, align 4, !tbaa !83
  %i.df = load i32, ptr %i.be, align 4, !tbaa !83 ; 3 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [8 x i8], ptr %i.bm, i64 %i.cy ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = load double, ptr %i.di, align 8, !tbaa !106
  %i.dk = load i32, ptr %i.bl, align 4, !tbaa !83 ; 3 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr [8 x i8], ptr %i.dh, i64 %i.dl
  store double %i.dj, ptr %i.dm, align 8, !tbaa !106
  %i.dn = add nsw i64 %.073111, -2
  %.not142.1 = icmp eq i64 %i.cy, 0
  br i1 %.not142.1, label %._crit_edge114, label %.lr.ph113.new, !llvm.loop !624

._crit_edge120:                                   ; preds = %._crit_edge114
  %i.do = add nsw i64 %i.y, -1                    ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !83
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.do
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !83
  %i.du = add nsw i32 %i.dt, %i.dq
  %i.dv = load i32, ptr %1, align 4, !tbaa !172
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp eq i64 %i.do, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = select i1 %i.dx, i32 %i.dz, i32 0
  %i.eb = add nsw i32 %i.du, %i.ea                ; 2 uses
  store i32 %i.eb, ptr %i.z, align 4, !tbaa !83
  br label %._crit_edge120._crit_edge

._crit_edge120._crit_edge:                        ; preds = %._crit_edge109, %._crit_edge120
  %i.ec = phi i32 [ %i.eb, %._crit_edge120 ], [ %i.ab, %._crit_edge109 ]
  %i.ed = sext i32 %i.ec to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ed, double noundef 0.000000e+00)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.ee = add i64 %i.f, 4
  %i.ef = tail call noalias ptr @malloc(i64 noundef %i.ee) #34 ; 7 uses
  %.not = icmp eq ptr %i.ef, null
  br i1 %.not, label %bb.g, label %.preheader94

.preheader94:                                     ; preds = %bb.f
  %i.eg = icmp sgt i64 %i.e, 0
  br i1 %i.eg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader94
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !99 ; 4 uses
  %i.ej = load i32, ptr %1, align 4, !tbaa !172
  %i.ek = sext i32 %i.ej to i64                   ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.em = load i32, ptr %i.el, align 4            ; 3 uses
  %.pre = load i32, ptr %i.ei, align 4, !tbaa !83 ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.en = icmp eq i64 %i.e, 1
  br i1 %i.en, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 9223372036854775806
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.eo = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.eo, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.eo, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre, %.lr.ph ], [ %i.fz, %._crit_edge.loopexit.unr-lcssa ]
  %.07196.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.fx, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %.07295.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.gh, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod150 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.07196.epil.init
  store i32 %.07295.epil.init, ptr %i.ep, align 4, !tbaa !83
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.07196.epil.init
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !83
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07196.epil.init
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !83 ; 2 uses
  %i.ev = add i32 %.epil.init, %i.eu
  %i.ew = sub i32 %i.es, %i.ev
  %i.ex = icmp eq i64 %.07196.epil.init, %i.ek
  %i.ey = select i1 %i.ex, i32 %i.em, i32 0
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %i.ey, i32 %i.ew)
  %i.ez = add i32 %i.eu, %.07295.epil.init
  %i.fa = add i32 %i.ez, %.sroa.speculated.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader94
  %.072.lcssa = phi i32 [ 0, %.preheader94 ], [ %i.gh, %._crit_edge.loopexit.unr-lcssa ], [ %i.fa, %.epil.preheader ] ; 2 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.e
  store i32 %.072.lcssa, ptr %i.fb, align 4, !tbaa !83
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fd = sext i32 %.072.lcssa to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, i64 noundef %i.fd, double noundef 0.000000e+00)
  %i.fe = load i64, ptr %i.d, align 8, !tbaa !98  ; 2 uses
  %i.ff = icmp sgt i64 %i.fe, 0
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !142 ; 2 uses
  br i1 %i.ff, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %._crit_edge
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %i.fj = phi i32 [ %.pre, %.lr.ph.new ], [ %i.fz, %bb.h ]
  %.07196 = phi i64 [ 0, %.lr.ph.new ], [ %i.fx, %bb.h ] ; 5 uses
  %.07295 = phi i32 [ 0, %.lr.ph.new ], [ %i.gh, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.07196
  store i32 %.07295, ptr %i.fk, align 4, !tbaa !83
  %i.fl = or disjoint i64 %.07196, 1              ; 4 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !83 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07196
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !83 ; 2 uses
  %i.fq = add i32 %i.fj, %i.fp
  %i.fr = sub i32 %i.fn, %i.fq
  %i.fs = icmp eq i64 %.07196, %i.ek
  %i.ft = select i1 %i.fs, i32 %i.em, i32 0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.ft, i32 %i.fr)
  %i.fu = add i32 %i.fp, %.07295
  %i.fv = add i32 %i.fu, %.sroa.speculated        ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.fl
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !83
  %i.fx = add nuw nsw i64 %.07196, 2              ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !83 ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fl
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !83 ; 2 uses
  %i.gc = add i32 %i.fn, %i.gb
  %i.gd = sub i32 %i.fz, %i.gc
  %i.ge = icmp eq i64 %i.fl, %i.ek
  %i.gf = select i1 %i.ge, i32 %i.em, i32 0
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.gf, i32 %i.gd)
  %i.gg = add i32 %i.gb, %i.fv
  %i.gh = add i32 %i.gg, %.sroa.speculated.1      ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !625

._crit_edge104:                                   ; preds = %.loopexit, %._crit_edge
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ef, ptr %i.gi, align 8, !tbaa !142
  tail call void @free(ptr noundef %i.fh) #33
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph103, %.loopexit
  %.069101.in = phi i64 [ %i.fe, %.lr.ph103 ], [ %.069101, %.loopexit ] ; 2 uses
  %.069101 = add nsw i64 %.069101.in, -1          ; 4 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.069101
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !83 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.069101 ; 4 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !83 ; 3 uses
  %i.gn = icmp sgt i32 %i.gk, %i.gm
  br i1 %i.gn, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.go = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.069101
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !83 ; 3 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph99, label %.loopexit

.lr.ph99:                                         ; preds = %bb.j
  %i.gs = add nsw i32 %i.gq, -1                   ; 2 uses
  %i.gt = zext nneg i32 %i.gs to i64              ; 4 uses
  %i.gu = load ptr, ptr %i.fi, align 8, !tbaa !111 ; 3 uses
  %i.gv = load ptr, ptr %i.fc, align 8, !tbaa !110 ; 3 uses
  %i.gw = sext i32 %i.gk to i64                   ; 6 uses
  %i.gx = and i32 %i.gq, 1
  %lcmp.mod152.not = icmp eq i32 %i.gx, 0
  br i1 %lcmp.mod152.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph99
  %i.gy = sext i32 %i.gm to i64
  %i.gz = getelementptr [4 x i8], ptr %i.gu, i64 %i.gt ; 2 uses
  %i.ha = getelementptr [4 x i8], ptr %i.gz, i64 %i.gy
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !83
  %i.hc = getelementptr [4 x i8], ptr %i.gz, i64 %i.gw
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !83
  %i.hd = load i32, ptr %i.gl, align 4, !tbaa !83 ; 2 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr [8 x i8], ptr %i.gv, i64 %i.gt ; 2 uses
  %i.hg = getelementptr [8 x i8], ptr %i.hf, i64 %i.he
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !106
  %i.hi = getelementptr [8 x i8], ptr %i.hf, i64 %i.gw
  store double %i.hh, ptr %i.hi, align 8, !tbaa !106
  %i.hj = add nsw i64 %i.gt, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph99
  %.unr153 = phi i32 [ %i.gm, %.lr.ph99 ], [ %i.hd, %.prol.loopexit.unr-lcssa ]
  %.097.unr = phi i64 [ %i.gt, %.lr.ph99 ], [ %i.hj, %.prol.loopexit.unr-lcssa ]
  %i.hk = icmp eq i32 %i.gs, 0
  br i1 %i.hk, label %.loopexit, label %.lr.ph99.new

.lr.ph99.new:                                     ; preds = %.prol.loopexit, %.lr.ph99.new
  %i.hl = phi i32 [ %i.id, %.lr.ph99.new ], [ %.unr153, %.prol.loopexit ]
  %.097 = phi i64 [ %i.ij, %.lr.ph99.new ], [ %.097.unr, %.prol.loopexit ] ; 4 uses
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr [4 x i8], ptr %i.gu, i64 %.097 ; 2 uses
  %i.ho = getelementptr [4 x i8], ptr %i.hn, i64 %i.hm
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !83
  %i.hq = getelementptr [4 x i8], ptr %i.hn, i64 %i.gw
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !83
  %i.hr = load i32, ptr %i.gl, align 4, !tbaa !83 ; 2 uses
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr [8 x i8], ptr %i.gv, i64 %.097 ; 2 uses
  %i.hu = getelementptr [8 x i8], ptr %i.ht, i64 %i.hs
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !106
  %i.hw = getelementptr [8 x i8], ptr %i.ht, i64 %i.gw
  store double %i.hv, ptr %i.hw, align 8, !tbaa !106
  %i.hx = add nsw i64 %.097, -1                   ; 3 uses
  %i.hy = sext i32 %i.hr to i64
  %i.hz = getelementptr [4 x i8], ptr %i.gu, i64 %i.hx ; 2 uses
  %i.ia = getelementptr [4 x i8], ptr %i.hz, i64 %i.hy
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !83
  %i.ic = getelementptr [4 x i8], ptr %i.hz, i64 %i.gw
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !83
  %i.id = load i32, ptr %i.gl, align 4, !tbaa !83 ; 2 uses
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr [8 x i8], ptr %i.gv, i64 %i.hx ; 2 uses
  %i.ig = getelementptr [8 x i8], ptr %i.if, i64 %i.ie
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !106
  %i.ii = getelementptr [8 x i8], ptr %i.if, i64 %i.gw
  store double %i.ih, ptr %i.ii, align 8, !tbaa !106
  %i.ij = add nsw i64 %.097, -2
  %.not141.1 = icmp eq i64 %i.hx, 0
  br i1 %.not141.1, label %.loopexit, label %.lr.ph99.new, !llvm.loop !626

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph99.new, %bb.j, %bb.i
  %i.ik = icmp samesign ugt i64 %.069101.in, 1
  br i1 %i.ik, label %bb.i, label %._crit_edge104, !llvm.loop !627

bb.k:                                             ; preds = %._crit_edge104, %._crit_edge120._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi1EiEENS_9TransposeINS2_IdLi0EiEEEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix.55", align 8 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !641, !nonnull !120, !align !149 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !98   ; 9 uses
  %i.e = load i8, ptr %1, align 8, !tbaa !642, !range !119, !noundef !120
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !40
  tail call void @_ZN5Eigen12SparseMatrixIdLi1EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.d, i64 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store i64 0, ptr %i.i, align 8, !tbaa !144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !150
  %i.n = shl i64 %i.m, 2
  %i.o = add i64 %i.n, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi1EiE7setZeroEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.l, align 8, !tbaa !150
  %i.s = shl i64 %i.r, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.q, i8 0, i64 %i.s, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi1EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi1EiE7setZeroEv.exit:   ; preds = %bb.b, %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !641, !nonnull !120, !align !149 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !98   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !40   ; 2 uses
  %i.y = mul nsw i64 %i.x, %i.v
  %.sroa.speculated124 = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %i.x)
  %i.z = shl nsw i64 %.sroa.speculated124, 1
  %.sroa.speculated129 = tail call i64 @llvm.smin.i64(i64 %i.z, i64 %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 noundef %.sroa.speculated129)
  %i.ab = icmp sgt i64 %i.d, 0
  br i1 %i.ab, label %.lr.ph149, label %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveEl.exit._crit_edge

.lr.ph149:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE7setZeroEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  br label %bb.g

_ZN5Eigen12SparseMatrixIdLi1EiE7reserveEl.exit._crit_edge: ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveEl.exit, %_ZN5Eigen12SparseMatrixIdLi1EiE7setZeroEv.exit
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !115
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.d, label %_ZN5Eigen12SparseMatrixIdLi1EiE8finalizeEv.exit

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveEl.exit._crit_edge
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !144
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = load i64, ptr %i.l, align 8, !tbaa !150 ; 5 uses
  %i.am = icmp sgt i64 %i.al, -1
  br i1 %i.am, label %.lr.ph.i, label %_ZN5Eigen12SparseMatrixIdLi1EiE8finalizeEv.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !114 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %.08.i = phi i64 [ %i.al, %.lr.ph.i ], [ %i.ar, %bb.f ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.08.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !83
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ar = add nsw i64 %.08.i, -1
  %i.as = icmp sgt i64 %.08.i, 0
  br i1 %i.as, label %bb.e, label %.critedge.i, !llvm.loop !10

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %.0.lcssa.i = phi i64 [ -1, %bb.f ], [ %.08.i, %bb.e ] ; 5 uses
  %.not.not11.i = icmp slt i64 %.0.lcssa.i, %i.al
  br i1 %.not.not11.i, label %.lr.ph13.i.preheader, label %_ZN5Eigen12SparseMatrixIdLi1EiE8finalizeEv.exit

.lr.ph13.i.preheader:                             ; preds = %.critedge.i
  %i.at = sub i64 %i.al, %.0.lcssa.i              ; 3 uses
  %min.iters.check181 = icmp ult i64 %i.at, 8
  br i1 %min.iters.check181, label %.lr.ph13.i.preheader192, label %vector.ph182

vector.ph182:                                     ; preds = %.lr.ph13.i.preheader
  %n.vec183 = and i64 %i.at, -8                   ; 3 uses
  %i.au = add i64 %.0.lcssa.i, %n.vec183
  %broadcast.splatinsert184 = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat185 = shufflevector <4 x i32> %broadcast.splatinsert184, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.av = getelementptr [4 x i8], ptr %i.an, i64 %.0.lcssa.i
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph182
  %index187 = phi i64 [ 0, %vector.ph182 ], [ %index.next188, %vector.body186 ] ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %index187 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %i.ay = getelementptr i8, ptr %i.aw, i64 20
  store <4 x i32> %broadcast.splat185, ptr %i.ax, align 4, !tbaa !83
  store <4 x i32> %broadcast.splat185, ptr %i.ay, align 4, !tbaa !83
  %index.next188 = add nuw i64 %index187, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next188, %n.vec183
  br i1 %i.az, label %middle.block189, label %vector.body186, !llvm.loop !628

middle.block189:                                  ; preds = %vector.body186
  %cmp.n190 = icmp eq i64 %i.at, %n.vec183
  br i1 %cmp.n190, label %_ZN5Eigen12SparseMatrixIdLi1EiE8finalizeEv.exit, label %.lr.ph13.i.preheader192

.lr.ph13.i.preheader192:                          ; preds = %.lr.ph13.i.preheader, %middle.block189
  %.1.in12.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph13.i.preheader ], [ %i.au, %middle.block189 ]
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %.lr.ph13.i.preheader192, %.lr.ph13.i
  %.1.in12.i = phi i64 [ %.1.i, %.lr.ph13.i ], [ %.1.in12.i.ph, %.lr.ph13.i.preheader192 ]
  %.1.i = add nsw i64 %.1.in12.i, 1               ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNK5Eigen17SparseQR_QProductINS_8SparseQRINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEEES3_E6evalToIS3_EEvRT_:bb.a

.preheader114.lr.ph:                              ; preds = %bb.s
  %i.du = icmp sgt i64 %.sroa.speculated, 0
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.11.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.12.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  br i1 %i.du, label %.preheader114, label %.loopexit

.preheader114:                                    ; preds = %.preheader114.lr.ph, %._crit_edge
  %.029118 = phi i64 [ %i.eh, %._crit_edge ], [ 0, %.preheader114.lr.ph ] ; 2 uses
  %sext.i.i.i.i38 = shl i64 %.029118, 32
  %i.eg = ashr exact i64 %sext.i.i.i.i38, 32      ; 4 uses
  br label %bb.t

._crit_edge:                                      ; preds = %_ZNK5Eigen16SparseMatrixBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE3dotINS1_IS3_Lin1ELi1ELb1EEEEEdRKNS0_IT_EE.exit63.thread
  %i.eh = add nuw nsw i64 %.029118, 1             ; 2 uses
  %i.ei = load i64, ptr %i.dr, align 8, !tbaa !98
  %i.ej = icmp slt i64 %i.eh, %i.ei
  br i1 %i.ej, label %.preheader114, label %.loopexit, !llvm.loop !1333

bb.t:                                             ; preds = %.preheader114, %_ZNK5Eigen16SparseMatrixBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE3dotINS1_IS3_Lin1ELi1ELb1EEEEEdRKNS0_IT_EE.exit63.thread
  %.0117.in = phi i64 [ %.sroa.speculated, %.preheader114 ], [ %.0117, %_ZNK5Eigen16SparseMatrixBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE3dotINS1_IS3_Lin1ELi1ELb1EEEEEdRKNS0_IT_EE.exit63.thread ] ; 2 uses
  %.0117 = add nsw i64 %.0117.in, -1              ; 3 uses
  %i.ek = load ptr, ptr %0, align 8, !tbaa !1341, !nonnull !120, !align !149 ; 8 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 184
  %sext.i.i.i.i37 = shl i64 %.0117, 32
  %i.em = ashr exact i64 %sext.i.i.i.i37, 32      ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 224
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !110
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 232
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !111
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 208
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !99 ; 2 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.em ; 4 uses
  %i.eu = icmp eq ptr %i.es, null
  br i1 %i.eu, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ek, i64 216
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !109 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.v, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i59

bb.v:                                             ; preds = %bb.u
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !83
  %i.fa = load i32, ptr %i.et, align 4, !tbaa !83
  %i.fb = sub nsw i32 %i.ez, %i.fa
  br label %_ZNK5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i60

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i59: ; preds = %bb.u
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.em
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !83
  br label %_ZNK5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i60

_ZNK5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i60: ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i59, %bb.v
  %.0.in.i.i.i61 = phi i32 [ %i.fd, %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i59 ], [ %i.fb, %bb.v ]
  %.0.i.i.i62 = sext i32 %.0.in.i.i.i61 to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS6_l.exit.i39

bb.w:                                             ; preds = %bb.t
  %i.fe = load i32, ptr %i.et, align 4, !tbaa !83
  %i.ff = sext i32 %i.fe to i64                   ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ek, i64 216
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !109 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fj = getelementptr i8, ptr %i.et, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !83
  %i.fl = sext i32 %i.fk to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS6_l.exit.i39

bb.y:                                             ; preds = %bb.w
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.em
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !83
  %i.fo = sext i32 %i.fn to i64
  %i.fp = add nsw i64 %i.fo, %i.ff
  br label %_ZN5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS6_l.exit.i39

_ZN5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS6_l.exit.i39: ; preds = %bb.y, %bb.x, %_ZNK5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i60
  %.sroa.830.2.i40 = phi i64 [ 0, %_ZNK5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i60 ], [ %i.ff, %bb.x ], [ %i.ff, %bb.y ] ; 2 uses
  %.sink.i.i41 = phi i64 [ %.0.i.i.i62, %_ZNK5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i60 ], [ %i.fl, %bb.x ], [ %i.fp, %bb.y ] ; 2 uses
  %i.fq = load ptr, ptr %i.dv, align 8, !tbaa !110
  %i.fr = load ptr, ptr %i.dw, align 8, !tbaa !111
  %i.fs = load ptr, ptr %i.dx, align 8, !tbaa !99 ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.eg ; 4 uses
  %i.fu = icmp eq ptr %i.fs, null
  br i1 %i.fu, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_ZN5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS6_l.exit.i39
  %i.fv = load ptr, ptr %i.dy, align 8, !tbaa !109 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.aa, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i14.i55

bb.aa:                                            ; preds = %bb.z
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !83
  %i.fz = load i32, ptr %i.ft, align 4, !tbaa !83
  %i.ga = sub nsw i32 %i.fy, %i.fz
  br label %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i56

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i14.i55: ; preds = %bb.z
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.eg
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !83
  br label %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i56

_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i56: ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i14.i55, %bb.aa
  %.0.in.i.i15.i57 = phi i32 [ %i.gc, %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i14.i55 ], [ %i.ga, %bb.aa ]
  %.0.i.i16.i58 = sext i32 %.0.in.i.i15.i57 to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i42

bb.ab:                                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS6_l.exit.i39
  %i.gd = load i32, ptr %i.ft, align 4, !tbaa !83
  %i.ge = sext i32 %i.gd to i64                   ; 3 uses
  %i.gf = load ptr, ptr %i.dy, align 8, !tbaa !109 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gh = getelementptr i8, ptr %i.ft, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !83
  %i.gj = sext i32 %i.gi to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i42

bb.ad:                                            ; preds = %bb.ab
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.eg
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !83
  %i.gm = sext i32 %i.gl to i64
  %i.gn = add nsw i64 %i.gm, %i.ge
  br label %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i42

_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i42: ; preds = %bb.ad, %bb.ac, %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i56
  %.sroa.818.2.i43 = phi i64 [ 0, %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i56 ], [ %i.ge, %bb.ac ], [ %i.ge, %bb.ad ] ; 2 uses
  %.sink.i13.i44 = phi i64 [ %.0.i.i16.i58, %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i56 ], [ %i.gj, %bb.ac ], [ %i.gn, %bb.ad ] ; 2 uses
  %i.go = icmp slt i64 %.sroa.830.2.i40, %.sink.i.i41
  %i.gp = icmp slt i64 %.sroa.818.2.i43, %.sink.i13.i44
  %or.cond39.i45 = select i1 %i.go, i1 %i.gp, i1 false
  br i1 %or.cond39.i45, label %.lr.ph.i47, label %_ZNK5Eigen16SparseMatrixBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE3dotINS1_IS3_Lin1ELi1ELb1EEEEEdRKNS0_IT_EE.exit63.thread

.lr.ph.i47:                                       ; preds = %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i42, %bb.ai
  %.042.i48 = phi double [ %.1.i53, %bb.ai ], [ 0.000000e+00, %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i42 ] ; 3 uses
  %.sroa.818.041.i49 = phi i64 [ %.sroa.818.1.i52, %bb.ai ], [ %.sroa.818.2.i43, %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i42 ] ; 5 uses
  %.sroa.830.040.i50 = phi i64 [ %.sroa.830.1.i51, %bb.ai ], [ %.sroa.830.2.i40, %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i42 ] ; 5 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %.sroa.830.040.i50
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !83 ; 2 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %.sroa.818.041.i49
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !83 ; 2 uses
  %i.gu = icmp eq i32 %i.gr, %i.gt
  br i1 %i.gu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i47
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %.sroa.830.040.i50
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !106
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %.sroa.818.041.i49
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !106
  %i.gz = call double @llvm.fmuladd.f64(double %i.gw, double %i.gy, double %.042.i48)
  %i.ha = add nsw i64 %.sroa.830.040.i50, 1
  %i.hb = add nsw i64 %.sroa.818.041.i49, 1
  br label %bb.ai

bb.af:                                            ; preds = %.lr.ph.i47
  %i.hc = icmp slt i32 %i.gr, %i.gt
  br i1 %i.hc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hd = add nsw i64 %.sroa.830.040.i50, 1
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.he = add nsw i64 %.sroa.818.041.i49, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %.sroa.830.1.i51 = phi i64 [ %i.ha, %bb.ae ], [ %i.hd, %bb.ag ], [ %.sroa.830.040.i50, %bb.ah ] ; 2 uses
  %.sroa.818.1.i52 = phi i64 [ %i.hb, %bb.ae ], [ %.sroa.818.041.i49, %bb.ag ], [ %i.he, %bb.ah ] ; 2 uses
  %.1.i53 = phi double [ %i.gz, %bb.ae ], [ %.042.i48, %bb.ag ], [ %.042.i48, %bb.ah ] ; 3 uses
  %i.hf = icmp slt i64 %.sroa.830.1.i51, %.sink.i.i41
  %i.hg = icmp slt i64 %.sroa.818.1.i52, %.sink.i13.i44
  %or.cond.i54 = select i1 %i.hf, i1 %i.hg, i1 false
  br i1 %or.cond.i54, label %.lr.ph.i47, label %_ZNK5Eigen16SparseMatrixBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE3dotINS1_IS3_Lin1ELi1ELb1EEEEEdRKNS0_IT_EE.exit63, !llvm.loop !1325

_ZNK5Eigen16SparseMatrixBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE3dotINS1_IS3_Lin1ELi1ELb1EEEEEdRKNS0_IT_EE.exit63: ; preds = %bb.ai
  %i.hh = fcmp oeq double %.1.i53, 0.000000e+00
  br i1 %i.hh, label %_ZNK5Eigen16SparseMatrixBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE3dotINS1_IS3_Lin1ELi1ELb1EEEEEdRKNS0_IT_EE.exit63.thread, label %bb.aj

bb.aj:                                            ; preds = %_ZNK5Eigen16SparseMatrixBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE3dotINS1_IS3_Lin1ELi1ELb1EEEEEdRKNS0_IT_EE.exit63
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ek, i64 256
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !159
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %.0117
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !106
  %i.hm = fmul double %.1.i53, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ek, i64 200
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !40, !noalias !1347
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store i8 0, ptr %5, align 8, !tbaa !1344, !alias.scope !1348
  store ptr %1, ptr %i.dz, align 8, !tbaa !32, !alias.scope !1348
  store i64 %i.eg, ptr %i.ea, align 8, !tbaa !240, !alias.scope !1348
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store i8 0, ptr %2, align 8, !tbaa !242, !alias.scope !1349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  store i8 0, ptr %i.ec, align 8, !alias.scope !1349
  store i64 %i.ho, ptr %i.ed, align 8, !alias.scope !1349
  store double %i.hm, ptr %i.ee, align 8, !tbaa !29, !alias.scope !1349
  store i8 0, ptr %i.ef, align 8
  store ptr %i.el, ptr %.sroa.11.32..sroa_idx, align 8
  store i64 %i.em, ptr %.sroa.12.32..sroa_idx, align 8
  %i.hp = call noundef nonnull align 8 dereferenceable(25) ptr @_ZN5Eigen8internal24sparse_matrix_block_implINS_12SparseMatrixIdLi0EiEELin1ELi1EEaSINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIS3_Lin1ELi1ELb1EEEKNS6_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEKNS9_IKS3_Lin1ELi1ELb1EEEEEEEEERSA_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %_ZNK5Eigen16SparseMatrixBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE3dotINS1_IS3_Lin1ELi1ELb1EEEEEdRKNS0_IT_EE.exit63.thread

_ZNK5Eigen16SparseMatrixBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE3dotINS1_IS3_Lin1ELi1ELb1EEEEEdRKNS0_IT_EE.exit63.thread: ; preds = %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i42, %_ZNK5Eigen16SparseMatrixBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE3dotINS1_IS3_Lin1ELi1ELb1EEEEEdRKNS0_IT_EE.exit63, %bb.aj
  %i.hq = icmp sgt i64 %.0117.in, 1
  br i1 %i.hq, label %bb.t, label %._crit_edge, !llvm.loop !1340

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge120, %bb.s, %.preheader114.lr.ph, %.preheader113, %.preheader.lr.ph
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi0EiE18conservativeResizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = icmp eq i64 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = icmp eq i64 %i.e, %2                     ; 2 uses
  %or.cond80 = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond80, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %1, 0
  %i.h = icmp eq i64 %2, 0
  %or.cond = or i1 %i.g, %i.h
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2)
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.i = sub nsw i64 %1, %i.b                     ; 2 uses
  %i.j = sub i64 %2, %i.e                         ; 9 uses
  %i.k = trunc i64 %1 to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !109  ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = shl i64 %2, 2
  %i.o = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.n) #39 ; 4 uses
  %.not54 = icmp eq ptr %i.o, null
  br i1 %.not54, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

bb.g:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.l, align 8, !tbaa !109
  %i.q = load i64, ptr %i.d, align 8, !tbaa !98   ; 2 uses
  %i.r = icmp sgt i64 %i.j, 0
  br i1 %i.r, label %.loopexit82.sink.split, label %.loopexit82

bb.h:                                             ; preds = %bb.d
  %i.s = icmp slt i64 %i.i, 0
  br i1 %i.s, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.t = shl i64 %2, 2
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #34 ; 3 uses
  store ptr %i.u, ptr %i.l, align 8, !tbaa !109
  %.not53 = icmp eq ptr %i.u, null
  br i1 %.not53, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5Eigen8internal19throw_std_bad_allocEv()
  %.pre = load i64, ptr %i.d, align 8, !tbaa !98
  %.pre103.pre.pre = load ptr, ptr %i.l, align 8, !tbaa !109
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre103.pre = phi ptr [ %.pre103.pre.pre, %bb.j ], [ %i.u, %bb.i ] ; 10 uses
  %i.v = phi i64 [ %.pre, %bb.j ], [ %i.e, %bb.i ] ; 4 uses
  %.sroa.speculated62 = tail call i64 @llvm.smin.i64(i64 %i.j, i64 0) ; 2 uses
  %i.w = add nsw i64 %i.v, %.sroa.speculated62    ; 6 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph86, label %.preheader81

.lr.ph86:                                         ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !99   ; 14 uses
  %min.iters.check = icmp ult i64 %i.w, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph86
  %i.aa = shl i64 %i.w, 2                         ; 2 uses
  %scevgep127 = getelementptr i8, ptr %.pre103.pre, i64 %i.aa
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa
  %scevgep128 = getelementptr i8, ptr %i.ab, i64 4
  %bound0 = icmp ult ptr %.pre103.pre, %scevgep128
  %bound1 = icmp ult ptr %i.z, %scevgep127
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %wide.load = load <4 x i32>, ptr %i.ad, align 4, !tbaa !83, !alias.scope !1360
  %wide.load129 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !83, !alias.scope !1360
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load130 = load <4 x i32>, ptr %i.af, align 4, !tbaa !83, !alias.scope !1360
  %wide.load131 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !83, !alias.scope !1360
  %i.ah = sub nsw <4 x i32> %wide.load, %wide.load130
  %i.ai = sub nsw <4 x i32> %wide.load129, %wide.load131
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.pre103.pre, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <4 x i32> %i.ah, ptr %i.aj, align 4, !tbaa !83, !alias.scope !1361, !noalias !1360
  store <4 x i32> %i.ai, ptr %i.ak, align 4, !tbaa !83, !alias.scope !1361, !noalias !1360
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !1353

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.preheader81, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph86, %middle.block
  %.04585.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph86 ], [ %n.vec, %middle.block ] ; 3 uses
  %i.am = add i64 %i.v, %.sroa.speculated62       ; 2 uses
  %xtraiter = and i64 %i.am, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.04585.prol = phi i64 [ %i.an, %scalar.ph.prol ], [ %.04585.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.an = add nuw nsw i64 %.04585.prol, 1         ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !83
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.04585.prol
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !83
  %i.as = sub nsw i32 %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.pre103.pre, i64 %.04585.prol
  store i32 %i.as, ptr %i.at, align 4, !tbaa !83
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1354

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.04585.unr = phi i64 [ %.04585.ph, %scalar.ph.preheader ], [ %i.an, %scalar.ph.prol ]
  %i.au = sub i64 %.04585.ph, %i.am
  %i.av = icmp ugt i64 %i.au, -4
  br i1 %i.av, label %.preheader81, label %scalar.ph

.preheader81:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.k
  %i.aw = icmp sgt i64 %i.j, 0
  br i1 %i.aw, label %.loopexit82.sink.split, label %.loopexit82

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04585 = phi i64 [ %i.bs, %scalar.ph ], [ %.04585.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ax = add nuw nsw i64 %.04585, 1              ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !83
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.04585
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !83
  %i.bc = sub nsw i32 %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.pre103.pre, i64 %.04585
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !83
  %i.be = add nuw nsw i64 %.04585, 2              ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !83
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ax
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !83
  %i.bj = sub nsw i32 %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.pre103.pre, i64 %i.ax
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !83
  %i.bl = add nuw nsw i64 %.04585, 3              ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN5Eigen8internal26permutation_matrix_productINS_12SparseMatrixIdLi0EiEELi1ELb0ENS_11SparseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_:bb.a

.lr.ph46:                                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29, %_ZN5Eigen12SparseMatrixIdLi1EiE18insertByOuterInnerEll.exit
  %.sroa.8.045 = phi i64 [ %i.fv, %_ZN5Eigen12SparseMatrixIdLi1EiE18insertByOuterInnerEll.exit ], [ %i.ew, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29 ] ; 3 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.er, i64 %.sroa.8.045
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !106
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.es, i64 %.sroa.8.045
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !83
  %i.fp = sext i32 %i.fo to i64
  %i.fq = load ptr, ptr %5, align 8, !tbaa !82
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fp
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !83
  %i.ft = sext i32 %i.fs to i64
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi1EiE6insertEll(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %i.ft, i64 noundef %.048)
          to label %_ZN5Eigen12SparseMatrixIdLi1EiE18insertByOuterInnerEll.exit unwind label %bb.m

_ZN5Eigen12SparseMatrixIdLi1EiE18insertByOuterInnerEll.exit: ; preds = %.lr.ph46
  store double %i.fm, ptr %i.fu, align 8, !tbaa !106
  %i.fv = add nsw i64 %.sroa.8.045, 1             ; 2 uses
  %exitcond54.not = icmp eq i64 %i.fv, %.sink.i28
  br i1 %exitcond54.not, label %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.loopexit, label %.lr.ph46, !llvm.loop !1396

bb.n:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit._crit_edge
  %i.fw = load ptr, ptr %5, align 8, !tbaa !82
  call void @free(ptr noundef %i.fw) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.fx = load ptr, ptr %4, align 8, !tbaa !82
  call void @free(ptr noundef %i.fx) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.fy = load ptr, ptr %i.g, align 8, !tbaa !114
  call void @free(ptr noundef %i.fy) #33
  %i.fz = load ptr, ptr %i.m, align 8, !tbaa !115
  call void @free(ptr noundef %i.fz) #33
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !110 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.gb) #36
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !111 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.ge) #36
  br label %_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit:         ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.r:                                             ; preds = %bb.m, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ep, %bb.i ], [ %i.fk, %bb.m ], [ %i.dt, %bb.h ]
  %i.gg = load ptr, ptr %5, align 8, !tbaa !82
  call void @free(ptr noundef %i.gg) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.gh = load ptr, ptr %4, align 8, !tbaa !82
  call void @free(ptr noundef %i.gh) #33
  br label %.body

.body:                                            ; preds = %bb.f, %bb.r
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.r, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZN5Eigen12SparseMatrixIdLi1EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !150  ; 12 uses
  %i.f = shl i64 %i.e, 2                          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #34 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !115
  %.not80 = icmp eq ptr %i.g, null
  br i1 %.not80, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %.preheader
  %i.i = load ptr, ptr %1, align 8, !tbaa !82     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114  ; 4 uses
  %xtraiter153 = and i64 %i.e, 1
  %i.l = icmp eq i64 %i.e, 1
  br i1 %i.l, label %.epil.preheader152, label %.lr.ph106.new

.lr.ph106.new:                                    ; preds = %.lr.ph106
  %unroll_iter157 = and i64 %i.e, 9223372036854775806
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

._crit_edge107.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %._crit_edge107, label %.epil.preheader152

.epil.preheader152:                               ; preds = %._crit_edge107.loopexit.unr-lcssa, %.lr.ph106
  %.070105.epil.init = phi i64 [ 0, %.lr.ph106 ], [ %i.ba, %._crit_edge107.loopexit.unr-lcssa ]
  %.076104.epil.init = phi i64 [ 0, %.lr.ph106 ], [ %i.ar, %._crit_edge107.loopexit.unr-lcssa ] ; 2 uses
  %.077103.epil.init = phi i32 [ 0, %.lr.ph106 ], [ %i.ay, %._crit_edge107.loopexit.unr-lcssa ]
  %lcmp.mod156 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076104.epil.init
  store i32 %.077103.epil.init, ptr %i.n, align 4, !tbaa !83
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.076104.epil.init
  %i.p = load i32, ptr %i.o, align 4, !tbaa !83
  %i.q = sext i32 %i.p to i64
  %i.r = add nsw i64 %.070105.epil.init, %i.q
  br label %._crit_edge107

._crit_edge107:                                   ; preds = %.epil.preheader152, %._crit_edge107.loopexit.unr-lcssa, %.preheader
  %.070.lcssa = phi i64 [ 0, %.preheader ], [ %i.ba, %._crit_edge107.loopexit.unr-lcssa ], [ %i.r, %.epil.preheader152 ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %.070.lcssa)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !114  ; 3 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !150  ; 4 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = icmp sgt i64 %i.v, 0
  %i.y = load i32, ptr %i.w, align 4, !tbaa !83   ; 2 uses
  br i1 %i.x, label %.lr.ph117, label %._crit_edge118._crit_edge

.lr.ph117:                                        ; preds = %._crit_edge107
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !115
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph106.new
  %.070105 = phi i64 [ 0, %.lr.ph106.new ], [ %i.ba, %bb.d ]
  %.076104 = phi i64 [ 0, %.lr.ph106.new ], [ %i.ar, %bb.d ] ; 5 uses
  %.077103 = phi i32 [ 0, %.lr.ph106.new ], [ %i.ay, %bb.d ] ; 2 uses
  %niter158 = phi i64 [ 0, %.lr.ph106.new ], [ %niter158.next.1, %bb.d ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076104
  store i32 %.077103, ptr %i.ab, align 4, !tbaa !83
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.076104
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !83 ; 2 uses
  %i.ae = or disjoint i64 %.076104, 1             ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !83
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.076104
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !83
  %i.aj = add i32 %i.ad, %.077103
  %i.ak = add i32 %i.aj, %i.ag
  %i.al = sub i32 %i.ak, %i.ai                    ; 2 uses
  %i.am = sext i32 %i.ad to i64
  %i.an = add nsw i64 %.070105, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ae
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !83
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ae
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !83 ; 2 uses
  %i.ar = add nuw nsw i64 %.076104, 2             ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !83
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ae
  %i.av = load i32, ptr %i.au, align 4, !tbaa !83
  %i.aw = add i32 %i.aq, %i.al
  %i.ax = add i32 %i.aw, %i.at
  %i.ay = sub i32 %i.ax, %i.av                    ; 2 uses
  %i.az = sext i32 %i.aq to i64
  %i.ba = add nsw i64 %i.an, %i.az                ; 3 uses
  %niter158.next.1 = add nuw nsw i64 %niter158, 2 ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %._crit_edge107.loopexit.unr-lcssa, label %bb.d, !llvm.loop !1397

bb.e:                                             ; preds = %.lr.ph117, %._crit_edge112
  %.074115.in = phi i64 [ %i.v, %.lr.ph117 ], [ %.074115, %._crit_edge112 ] ; 2 uses
  %.075114 = phi i32 [ %i.y, %.lr.ph117 ], [ %i.cc, %._crit_edge112 ]
  %.074115 = add nsw i64 %.074115.in, -1          ; 5 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.074115 ; 5 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !83 ; 4 uses
  %i.bd = sub nsw i32 %.075114, %i.bc             ; 4 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph111, label %.._crit_edge112_crit_edge

.._crit_edge112_crit_edge:                        ; preds = %bb.e
  %.phi.trans.insert123 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074115
  %.pre124 = load i32, ptr %.phi.trans.insert123, align 4, !tbaa !83
  br label %._crit_edge112

.lr.ph111:                                        ; preds = %bb.e
  %i.bf = add nsw i32 %i.bd, -1                   ; 2 uses
  %i.bg = zext nneg i32 %i.bf to i64              ; 4 uses
  %i.bh = load ptr, ptr %i.z, align 8, !tbaa !111 ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074115 ; 4 uses
  %i.bj = load ptr, ptr %i.s, align 8, !tbaa !110 ; 3 uses
  %.pre122 = load i32, ptr %i.bi, align 4, !tbaa !83 ; 2 uses
  %i.bk = and i32 %i.bd, 1
  %lcmp.mod162.not = icmp eq i32 %i.bk, 0
  br i1 %lcmp.mod162.not, label %.prol.loopexit160, label %.prol.loopexit160.unr-lcssa

.prol.loopexit160.unr-lcssa:                      ; preds = %.lr.ph111
  %i.bl = sext i32 %i.bc to i64
  %i.bm = getelementptr [4 x i8], ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bn = getelementptr [4 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !83
  %i.bp = sext i32 %.pre122 to i64
  %i.bq = getelementptr [4 x i8], ptr %i.bm, i64 %i.bp
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !83
  %i.br = load i32, ptr %i.bb, align 4, !tbaa !83 ; 3 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr %i.bj, i64 %i.bg ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !106
  %i.bw = load i32, ptr %i.bi, align 4, !tbaa !83 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr [8 x i8], ptr %i.bt, i64 %i.bx
  store double %i.bv, ptr %i.by, align 8, !tbaa !106
  %i.bz = add nsw i64 %i.bg, -1
  br label %.prol.loopexit160

.prol.loopexit160:                                ; preds = %.prol.loopexit160.unr-lcssa, %.lr.ph111
  %.lcssa144.unr = phi i32 [ poison, %.lr.ph111 ], [ %i.br, %.prol.loopexit160.unr-lcssa ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph111 ], [ %i.bw, %.prol.loopexit160.unr-lcssa ]
  %.unr163 = phi i32 [ %.pre122, %.lr.ph111 ], [ %i.bw, %.prol.loopexit160.unr-lcssa ]
  %.unr164 = phi i32 [ %i.bc, %.lr.ph111 ], [ %i.br, %.prol.loopexit160.unr-lcssa ]
  %.073109.unr = phi i64 [ %i.bg, %.lr.ph111 ], [ %i.bz, %.prol.loopexit160.unr-lcssa ]
  %i.ca = icmp eq i32 %i.bf, 0
  br i1 %i.ca, label %._crit_edge112, label %.lr.ph111.new

._crit_edge112:                                   ; preds = %.prol.loopexit160, %.lr.ph111.new, %.._crit_edge112_crit_edge
  %i.cb = phi i32 [ %.pre124, %.._crit_edge112_crit_edge ], [ %.lcssa.unr, %.prol.loopexit160 ], [ %i.dh, %.lr.ph111.new ]
  %i.cc = phi i32 [ %i.bc, %.._crit_edge112_crit_edge ], [ %.lcssa144.unr, %.prol.loopexit160 ], [ %i.dc, %.lr.ph111.new ]
  store i32 %i.cb, ptr %i.bb, align 4, !tbaa !83
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.074115
  store i32 %i.bd, ptr %i.cd, align 4, !tbaa !83
  %i.ce = icmp samesign ugt i64 %.074115.in, 1
  br i1 %i.ce, label %bb.e, label %._crit_edge118, !llvm.loop !1398

.lr.ph111.new:                                    ; preds = %.prol.loopexit160, %.lr.ph111.new
  %i.cf = phi i32 [ %i.dh, %.lr.ph111.new ], [ %.unr163, %.prol.loopexit160 ]
  %i.cg = phi i32 [ %i.dc, %.lr.ph111.new ], [ %.unr164, %.prol.loopexit160 ]
  %.073109 = phi i64 [ %i.dk, %.lr.ph111.new ], [ %.073109.unr, %.prol.loopexit160 ] ; 4 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr [4 x i8], ptr %i.bh, i64 %.073109 ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !83
  %i.cl = sext i32 %i.cf to i64
  %i.cm = getelementptr [4 x i8], ptr %i.ci, i64 %i.cl
  store i32 %i.ck, ptr %i.cm, align 4, !tbaa !83
  %i.cn = load i32, ptr %i.bb, align 4, !tbaa !83 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [8 x i8], ptr %i.bj, i64 %.073109 ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !106
  %i.cs = load i32, ptr %i.bi, align 4, !tbaa !83 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr [8 x i8], ptr %i.cp, i64 %i.ct
  store double %i.cr, ptr %i.cu, align 8, !tbaa !106
  %i.cv = add nsw i64 %.073109, -1                ; 3 uses
  %i.cw = sext i32 %i.cn to i64
  %i.cx = getelementptr [4 x i8], ptr %i.bh, i64 %i.cv ; 2 uses
  %i.cy = getelementptr [4 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !83
  %i.da = sext i32 %i.cs to i64
  %i.db = getelementptr [4 x i8], ptr %i.cx, i64 %i.da
  store i32 %i.cz, ptr %i.db, align 4, !tbaa !83
  %i.dc = load i32, ptr %i.bb, align 4, !tbaa !83 ; 3 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr [8 x i8], ptr %i.bj, i64 %i.cv ; 2 uses
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.dd
  %i.dg = load double, ptr %i.df, align 8, !tbaa !106
  %i.dh = load i32, ptr %i.bi, align 4, !tbaa !83 ; 3 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr [8 x i8], ptr %i.de, i64 %i.di
  store double %i.dg, ptr %i.dj, align 8, !tbaa !106
  %i.dk = add nsw i64 %.073109, -2
  %.not140.1 = icmp eq i64 %i.cv, 0
  br i1 %.not140.1, label %._crit_edge112, label %.lr.ph111.new, !llvm.loop !1399

._crit_edge118:                                   ; preds = %._crit_edge112
  %i.dl = add nsw i64 %i.v, -1                    ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !83
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dl
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !83
  %i.dr = add nsw i32 %i.dq, %i.dn
  %i.ds = load ptr, ptr %1, align 8, !tbaa !82
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dl
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !83
  %i.dv = add nsw i32 %i.dr, %i.du                ; 2 uses
  store i32 %i.dv, ptr %i.w, align 4, !tbaa !83
  br label %._crit_edge118._crit_edge

._crit_edge118._crit_edge:                        ; preds = %._crit_edge107, %._crit_edge118
  %i.dw = phi i32 [ %i.dv, %._crit_edge118 ], [ %i.y, %._crit_edge107 ]
  %i.dx = sext i32 %i.dw to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.dx, double noundef 0.000000e+00)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.dy = add i64 %i.f, 4
  %i.dz = tail call noalias ptr @malloc(i64 noundef %i.dy) #34 ; 7 uses
  %.not = icmp eq ptr %i.dz, null
  br i1 %.not, label %bb.g, label %.preheader92

.preheader92:                                     ; preds = %bb.f
  %i.ea = icmp sgt i64 %i.e, 0
  br i1 %i.ea, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader92
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !114 ; 4 uses
  %i.ed = load ptr, ptr %1, align 8, !tbaa !82    ; 3 uses
  %.pre = load i32, ptr %i.ec, align 4, !tbaa !83 ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.ee = icmp eq i64 %i.e, 1
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 9223372036854775806
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ef = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ef, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.ef, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre, %.lr.ph ], [ %i.fq, %._crit_edge.loopexit.unr-lcssa ]
  %.07194.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.fo, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %.07293.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.fy, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod148 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod148)
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.07194.epil.init
  store i32 %.07293.epil.init, ptr %i.eg, align 4, !tbaa !83
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.07194.epil.init
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !83
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07194.epil.init
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !83 ; 2 uses
  %i.em = add i32 %.epil.init, %i.el
  %i.en = sub i32 %i.ej, %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.07194.epil.init
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !83
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 %i.en)
  %i.eq = add i32 %i.el, %.07293.epil.init
  %i.er = add i32 %i.eq, %.sroa.speculated.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader92
  %.072.lcssa = phi i32 [ 0, %.preheader92 ], [ %i.fy, %._crit_edge.loopexit.unr-lcssa ], [ %i.er, %.epil.preheader ] ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.e
  store i32 %.072.lcssa, ptr %i.es, align 4, !tbaa !83
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eu = sext i32 %.072.lcssa to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 noundef %i.eu, double noundef 0.000000e+00)
  %i.ev = load i64, ptr %i.d, align 8, !tbaa !150 ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, 0
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !142 ; 2 uses
  br i1 %i.ew, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %._crit_edge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %i.fa = phi i32 [ %.pre, %.lr.ph.new ], [ %i.fq, %bb.h ]
  %.07194 = phi i64 [ 0, %.lr.ph.new ], [ %i.fo, %bb.h ] ; 5 uses
  %.07293 = phi i32 [ 0, %.lr.ph.new ], [ %i.fy, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.07194
  store i32 %.07293, ptr %i.fb, align 4, !tbaa !83
  %i.fc = or disjoint i64 %.07194, 1              ; 4 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !83 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07194
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !83 ; 2 uses
  %i.fh = add i32 %i.fa, %i.fg
  %i.fi = sub i32 %i.fe, %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.07194
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !83
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.fk, i32 %i.fi)
  %i.fl = add i32 %i.fg, %.07293
  %i.fm = add i32 %i.fl, %.sroa.speculated        ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.fc
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !83
  %i.fo = add nuw nsw i64 %.07194, 2              ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !83 ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fc
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !83 ; 2 uses
  %i.ft = add i32 %i.fe, %i.fs
  %i.fu = sub i32 %i.fq, %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.fc
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !83
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.fw, i32 %i.fu)
  %i.fx = add i32 %i.fs, %i.fm
  %i.fy = add i32 %i.fx, %.sroa.speculated.1      ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !1400

._crit_edge102:                                   ; preds = %.loopexit, %._crit_edge
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dz, ptr %i.fz, align 8, !tbaa !142
  tail call void @free(ptr noundef %i.ey) #33
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph101, %.loopexit
  %.06999.in = phi i64 [ %i.ev, %.lr.ph101 ], [ %.06999, %.loopexit ] ; 2 uses
  %.06999 = add nsw i64 %.06999.in, -1            ; 4 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.06999
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !83 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.06999 ; 4 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !83 ; 3 uses
  %i.ge = icmp sgt i32 %i.gb, %i.gd
  br i1 %i.ge, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %.06999
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !83 ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %.lr.ph97, label %.loopexit

.lr.ph97:                                         ; preds = %bb.j
  %i.gj = add nsw i32 %i.gh, -1                   ; 2 uses
  %i.gk = zext nneg i32 %i.gj to i64              ; 4 uses
  %i.gl = load ptr, ptr %i.ez, align 8, !tbaa !111 ; 3 uses
  %i.gm = load ptr, ptr %i.et, align 8, !tbaa !110 ; 3 uses
  %i.gn = sext i32 %i.gb to i64                   ; 6 uses
  %i.go = and i32 %i.gh, 1
  %lcmp.mod150.not = icmp eq i32 %i.go, 0
  br i1 %lcmp.mod150.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph97
  %i.gp = sext i32 %i.gd to i64
  %i.gq = getelementptr [4 x i8], ptr %i.gl, i64 %i.gk ; 2 uses
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %i.gp
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !83
  %i.gt = getelementptr [4 x i8], ptr %i.gq, i64 %i.gn
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !83
  %i.gu = load i32, ptr %i.gc, align 4, !tbaa !83 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr [8 x i8], ptr %i.gm, i64 %i.gk ; 2 uses
  %i.gx = getelementptr [8 x i8], ptr %i.gw, i64 %i.gv
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !106
  %i.gz = getelementptr [8 x i8], ptr %i.gw, i64 %i.gn
  store double %i.gy, ptr %i.gz, align 8, !tbaa !106
  %i.ha = add nsw i64 %i.gk, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph97
  %.unr151 = phi i32 [ %i.gd, %.lr.ph97 ], [ %i.gu, %.prol.loopexit.unr-lcssa ]
  %.095.unr = phi i64 [ %i.gk, %.lr.ph97 ], [ %i.ha, %.prol.loopexit.unr-lcssa ]
  %i.hb = icmp eq i32 %i.gj, 0
  br i1 %i.hb, label %.loopexit, label %.lr.ph97.new

.lr.ph97.new:                                     ; preds = %.prol.loopexit, %.lr.ph97.new
  %i.hc = phi i32 [ %i.hu, %.lr.ph97.new ], [ %.unr151, %.prol.loopexit ]
  %.095 = phi i64 [ %i.ia, %.lr.ph97.new ], [ %.095.unr, %.prol.loopexit ] ; 4 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr [4 x i8], ptr %i.gl, i64 %.095 ; 2 uses
  %i.hf = getelementptr [4 x i8], ptr %i.he, i64 %i.hd
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !83
  %i.hh = getelementptr [4 x i8], ptr %i.he, i64 %i.gn
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !83
  %i.hi = load i32, ptr %i.gc, align 4, !tbaa !83 ; 2 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr [8 x i8], ptr %i.gm, i64 %.095 ; 2 uses
  %i.hl = getelementptr [8 x i8], ptr %i.hk, i64 %i.hj
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !106
  %i.hn = getelementptr [8 x i8], ptr %i.hk, i64 %i.gn
  store double %i.hm, ptr %i.hn, align 8, !tbaa !106
  %i.ho = add nsw i64 %.095, -1                   ; 3 uses
  %i.hp = sext i32 %i.hi to i64
  %i.hq = getelementptr [4 x i8], ptr %i.gl, i64 %i.ho ; 2 uses
  %i.hr = getelementptr [4 x i8], ptr %i.hq, i64 %i.hp
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !83
  %i.ht = getelementptr [4 x i8], ptr %i.hq, i64 %i.gn
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !83
  %i.hu = load i32, ptr %i.gc, align 4, !tbaa !83 ; 2 uses
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr [8 x i8], ptr %i.gm, i64 %i.ho ; 2 uses
  %i.hx = getelementptr [8 x i8], ptr %i.hw, i64 %i.hv
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !106
  %i.hz = getelementptr [8 x i8], ptr %i.hw, i64 %i.gn
  store double %i.hy, ptr %i.hz, align 8, !tbaa !106
  %i.ia = add nsw i64 %.095, -2
  %.not139.1 = icmp eq i64 %i.ho, 0
  br i1 %.not139.1, label %.loopexit, label %.lr.ph97.new, !llvm.loop !1401

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph97.new, %bb.j, %bb.i
  %i.ib = icmp samesign ugt i64 %.06999.in, 1
  br i1 %i.ib, label %bb.i, label %._crit_edge102, !llvm.loop !1402

bb.k:                                             ; preds = %._crit_edge102, %._crit_edge118._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi1EiE6insertEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::CwiseNullaryOp.241", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE8nonZerosEv.exit, label %.loopexit78

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE8nonZerosEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114  ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !150  ; 11 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !83
  %i.j = load i32, ptr %i.e, align 4, !tbaa !83
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE8nonZerosEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !155
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !151
  %i.r = shl nsw i64 %i.q, 1
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.r)
  %.pre = load i64, ptr %i.f, align 8, !tbaa !150
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i64 [ %.pre, %bb.c ], [ %i.g, %bb.b ] ; 6 uses
  %i.t = shl i64 %i.s, 2
  %calloc = tail call ptr @calloc(i64 1, i64 %i.t) ; 5 uses
  store ptr %calloc, ptr %i.a, align 8, !tbaa !115
  %.not69 = icmp eq ptr %calloc, null
  br i1 %.not69, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.l, align 8, !tbaa !155
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %.not7081 = icmp slt i64 %i.s, 1
  br i1 %.not7081, label %.loopexit78, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.f
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !114  ; 2 uses
  %min.iters.check129 = icmp ult i64 %i.s, 8
  br i1 %min.iters.check129, label %scalar.ph128.preheader, label %vector.ph130

vector.ph130:                                     ; preds = %.lr.ph83
  %n.vec131 = and i64 %i.s, 9223372036854775800   ; 3 uses
  %i.y = or disjoint i64 %n.vec131, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph130
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next134, %vector.body132 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index133 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.aa, align 4, !tbaa !83
  store <4 x i32> %broadcast.splat, ptr %i.ab, align 4, !tbaa !83
  %index.next134 = add nuw i64 %index133, 8       ; 2 uses
  %i.ac = icmp eq i64 %index.next134, %n.vec131
  br i1 %i.ac, label %middle.block135, label %vector.body132, !llvm.loop !1403

middle.block135:                                  ; preds = %vector.body132
  %cmp.n136 = icmp eq i64 %i.s, %n.vec131
  br i1 %cmp.n136, label %.loopexit78, label %scalar.ph128.preheader

scalar.ph128.preheader:                           ; preds = %.lr.ph83, %middle.block135
  %.06682.ph = phi i64 [ 1, %.lr.ph83 ], [ %i.y, %middle.block135 ]
  br label %scalar.ph128

scalar.ph128:                                     ; preds = %scalar.ph128.preheader, %scalar.ph128
  %.06682 = phi i64 [ %i.ae, %scalar.ph128 ], [ %.06682.ph, %scalar.ph128.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.06682
  store i32 %i.w, ptr %i.ad, align 4, !tbaa !83
  %i.ae = add nuw i64 %.06682, 1
  %exitcond99.not = icmp eq i64 %.06682, %i.s
  br i1 %exitcond99.not, label %.loopexit78, label %scalar.ph128, !llvm.loop !1404

bb.g:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE8nonZerosEv.exit
  %i.af = shl i64 %i.g, 2
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.af) #34 ; 14 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !115
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.ah = icmp sgt i64 %i.g, 0
  br i1 %i.ah, label %.lr.ph.preheader, label %.loopexit78

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.g, 12
  br i1 %min.iters.check, label %.lr.ph.preheader138, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ai = shl i64 %i.g, 2                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.ai
  %i.aj = getelementptr i8, ptr %i.e, i64 %i.ai
  %scevgep124 = getelementptr i8, ptr %i.aj, i64 4
  %bound0 = icmp ult ptr %i.ag, %scevgep124
  %bound1 = icmp ult ptr %i.e, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader138, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 9223372036854775800      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
end_hunk_4
begin_hunk_5_@_ZN5Eigen12SparseMatrixIdLi1EiE6insertEll:bb.a
  store i32 %i.ev, ptr %i.fk, align 4, !tbaa !83
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph86.1
  %i.fo = add i64 %.06285, 2
  %exitcond100.not.1 = icmp eq i64 %i.fj, %i.ex
  br i1 %exitcond100.not.1, label %.loopexit77, label %.lr.ph86, !llvm.loop !1413

.loopexit77:                                      ; preds = %.lr.ph86.prol.loopexit, %bb.x, %..loopexit77_crit_edge, %bb.t
  %i.fp = phi ptr [ %.pre103, %..loopexit77_crit_edge ], [ %.pre104, %bb.t ], [ %.pre104, %bb.x ], [ %.pre104, %.lr.ph86.prol.loopexit ]
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %1
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !83 ; 3 uses
  %i.fs = sext i32 %i.fr to i64
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %1
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !83
  %i.fw = add i32 %i.fr, -1
  %i.fx = add i32 %i.fw, %i.fv                    ; 2 uses
  %i.fy = sext i32 %i.fx to i64                   ; 2 uses
  %i.fz = icmp sgt i32 %i.fx, %i.fr
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !111 ; 3 uses
  br i1 %i.fz, label %.lr.ph88, label %.critedge2

.lr.ph88:                                         ; preds = %.loopexit77, %bb.y
  %.087 = phi i64 [ %i.gc, %bb.y ], [ %i.fy, %.loopexit77 ] ; 4 uses
  %i.gc = add nsw i64 %.087, -1                   ; 5 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !83 ; 2 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp slt i64 %2, %i.gf
  br i1 %i.gg, label %bb.y, label %.critedge2

bb.y:                                             ; preds = %.lr.ph88
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %.087
  store i32 %i.ge, ptr %i.gh, align 4, !tbaa !83
  %i.gi = load ptr, ptr %i.ch, align 8, !tbaa !110 ; 2 uses
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gc
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !106
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %.087
  store double %i.gk, ptr %i.gl, align 8, !tbaa !106
  %i.gm = icmp sgt i64 %i.gc, %i.fs
  br i1 %i.gm, label %.lr.ph88, label %.critedge2, !llvm.loop !1414

.critedge2:                                       ; preds = %.lr.ph88, %bb.y, %.loopexit77
  %.0.lcssa = phi i64 [ %i.fy, %.loopexit77 ], [ %i.gc, %bb.y ], [ %.087, %.lr.ph88 ] ; 2 uses
  %i.gn = trunc i64 %2 to i32
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %.0.lcssa
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !83
  %i.gp = load ptr, ptr %i.ch, align 8, !tbaa !110
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %.0.lcssa ; 2 uses
  store double 0.000000e+00, ptr %i.gq, align 8, !tbaa !106
  br label %bb.ac

bb.z:                                             ; preds = %._crit_edge, %bb.r
  %i.gr = phi i64 [ %.pre102, %._crit_edge ], [ %i.eq, %bb.r ]
  %.not71 = icmp eq i64 %i.gr, %i.cj
  br i1 %.not71, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 noundef %i.cj, double noundef 0.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !150
  store i64 %i.gt, ptr %3, align 8, !tbaa !139, !alias.scope !1421
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 2, ptr %i.gu, align 4, !tbaa !170, !alias.scope !1421
  call void @_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi1EiE18insertUncompressedEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge2, %.loopexit
  %.067 = phi ptr [ %i.ef, %.loopexit ], [ %i.gq, %.critedge2 ], [ %i.gv, %bb.ab ]
  ret ptr %.067
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !150  ; 13 uses
  %i.f = shl i64 %i.e, 2                          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #34 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !115
  %.not80 = icmp eq ptr %i.g, null
  br i1 %.not80, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !170  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !114  ; 4 uses
  %i.m = sext i32 %i.j to i64
  %xtraiter152 = and i64 %i.e, 1
  %i.n = icmp eq i64 %i.e, 1
  br i1 %i.n, label %.epil.preheader151, label %.lr.ph108.new

.lr.ph108.new:                                    ; preds = %.lr.ph108
  %unroll_iter155 = and i64 %i.e, 9223372036854775806
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

._crit_edge109.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %._crit_edge109.loopexit, label %.epil.preheader151

.epil.preheader151:                               ; preds = %._crit_edge109.loopexit.unr-lcssa, %.lr.ph108
  %.076106.epil.init = phi i64 [ 0, %.lr.ph108 ], [ %i.ak, %._crit_edge109.loopexit.unr-lcssa ]
  %.077105.epil.init = phi i32 [ 0, %.lr.ph108 ], [ %i.ar, %._crit_edge109.loopexit.unr-lcssa ]
  %lcmp.mod154 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod154)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076106.epil.init
  store i32 %.077105.epil.init, ptr %i.p, align 4, !tbaa !83
  br label %._crit_edge109.loopexit

._crit_edge109.loopexit:                          ; preds = %._crit_edge109.loopexit.unr-lcssa, %.epil.preheader151
  %i.q = mul i64 %i.e, %i.m
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %._crit_edge109.loopexit, %.preheader
  %.070.lcssa = phi i64 [ 0, %.preheader ], [ %i.q, %._crit_edge109.loopexit ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %.070.lcssa)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !114  ; 3 uses
  %i.u = load i64, ptr %i.d, align 8, !tbaa !150  ; 4 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.w = icmp sgt i64 %i.u, 0
  %i.x = load i32, ptr %i.v, align 4, !tbaa !83   ; 2 uses
  br i1 %i.w, label %.lr.ph119, label %._crit_edge120._crit_edge

.lr.ph119:                                        ; preds = %._crit_edge109
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !115
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph108.new
  %.076106 = phi i64 [ 0, %.lr.ph108.new ], [ %i.ak, %bb.d ] ; 4 uses
  %.077105 = phi i32 [ 0, %.lr.ph108.new ], [ %i.ar, %bb.d ] ; 2 uses
  %niter156 = phi i64 [ 0, %.lr.ph108.new ], [ %niter156.next.1, %bb.d ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076106
  store i32 %.077105, ptr %i.aa, align 4, !tbaa !83
  %i.ab = or disjoint i64 %.076106, 1             ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !83
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.076106
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !83
  %i.ag = add i32 %i.j, %.077105
  %i.ah = add i32 %i.ag, %i.ad
  %i.ai = sub i32 %i.ah, %i.af                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ab
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !83
  %i.ak = add nuw nsw i64 %.076106, 2             ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !83
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ab
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !83
  %i.ap = add i32 %i.j, %i.ai
  %i.aq = add i32 %i.ap, %i.am
  %i.ar = sub i32 %i.aq, %i.ao                    ; 2 uses
  %niter156.next.1 = add nuw nsw i64 %niter156, 2 ; 2 uses
  %niter156.ncmp.1 = icmp eq i64 %niter156.next.1, %unroll_iter155
  br i1 %niter156.ncmp.1, label %._crit_edge109.loopexit.unr-lcssa, label %bb.d, !llvm.loop !1422

bb.e:                                             ; preds = %.lr.ph119, %._crit_edge114
  %.074117.in = phi i64 [ %i.u, %.lr.ph119 ], [ %.074117, %._crit_edge114 ] ; 2 uses
  %.075116 = phi i32 [ %i.x, %.lr.ph119 ], [ %i.bt, %._crit_edge114 ]
  %.074117 = add nsw i64 %.074117.in, -1          ; 5 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.074117 ; 5 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !83 ; 4 uses
  %i.au = sub nsw i32 %.075116, %i.at             ; 4 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph113, label %.._crit_edge114_crit_edge

.._crit_edge114_crit_edge:                        ; preds = %bb.e
  %.phi.trans.insert125 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117
  %.pre126 = load i32, ptr %.phi.trans.insert125, align 4, !tbaa !83
  br label %._crit_edge114

.lr.ph113:                                        ; preds = %bb.e
  %i.aw = add nsw i32 %i.au, -1                   ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64              ; 4 uses
  %i.ay = load ptr, ptr %i.y, align 8, !tbaa !111 ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117 ; 4 uses
  %i.ba = load ptr, ptr %i.r, align 8, !tbaa !110 ; 3 uses
  %.pre124 = load i32, ptr %i.az, align 4, !tbaa !83 ; 2 uses
  %i.bb = and i32 %i.au, 1
  %lcmp.mod160.not = icmp eq i32 %i.bb, 0
  br i1 %lcmp.mod160.not, label %.prol.loopexit158, label %.prol.loopexit158.unr-lcssa

.prol.loopexit158.unr-lcssa:                      ; preds = %.lr.ph113
  %i.bc = sext i32 %i.at to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ay, i64 %i.ax ; 2 uses
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !83
  %i.bg = sext i32 %.pre124 to i64
  %i.bh = getelementptr [4 x i8], ptr %i.bd, i64 %i.bg
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !83
  %i.bi = load i32, ptr %i.as, align 4, !tbaa !83 ; 3 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr [8 x i8], ptr %i.ba, i64 %i.ax ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !106
  %i.bn = load i32, ptr %i.az, align 4, !tbaa !83 ; 3 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr [8 x i8], ptr %i.bk, i64 %i.bo
  store double %i.bm, ptr %i.bp, align 8, !tbaa !106
  %i.bq = add nsw i64 %i.ax, -1
  br label %.prol.loopexit158

.prol.loopexit158:                                ; preds = %.prol.loopexit158.unr-lcssa, %.lr.ph113
  %.lcssa144.unr = phi i32 [ poison, %.lr.ph113 ], [ %i.bi, %.prol.loopexit158.unr-lcssa ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph113 ], [ %i.bn, %.prol.loopexit158.unr-lcssa ]
  %.unr161 = phi i32 [ %.pre124, %.lr.ph113 ], [ %i.bn, %.prol.loopexit158.unr-lcssa ]
  %.unr162 = phi i32 [ %i.at, %.lr.ph113 ], [ %i.bi, %.prol.loopexit158.unr-lcssa ]
  %.073111.unr = phi i64 [ %i.ax, %.lr.ph113 ], [ %i.bq, %.prol.loopexit158.unr-lcssa ]
  %i.br = icmp eq i32 %i.aw, 0
  br i1 %i.br, label %._crit_edge114, label %.lr.ph113.new

._crit_edge114:                                   ; preds = %.prol.loopexit158, %.lr.ph113.new, %.._crit_edge114_crit_edge
  %i.bs = phi i32 [ %.pre126, %.._crit_edge114_crit_edge ], [ %.lcssa.unr, %.prol.loopexit158 ], [ %i.cy, %.lr.ph113.new ]
  %i.bt = phi i32 [ %i.at, %.._crit_edge114_crit_edge ], [ %.lcssa144.unr, %.prol.loopexit158 ], [ %i.ct, %.lr.ph113.new ]
  store i32 %i.bs, ptr %i.as, align 4, !tbaa !83
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.074117
  store i32 %i.au, ptr %i.bu, align 4, !tbaa !83
  %i.bv = icmp samesign ugt i64 %.074117.in, 1
  br i1 %i.bv, label %bb.e, label %._crit_edge120, !llvm.loop !1423

.lr.ph113.new:                                    ; preds = %.prol.loopexit158, %.lr.ph113.new
  %i.bw = phi i32 [ %i.cy, %.lr.ph113.new ], [ %.unr161, %.prol.loopexit158 ]
  %i.bx = phi i32 [ %i.ct, %.lr.ph113.new ], [ %.unr162, %.prol.loopexit158 ]
  %.073111 = phi i64 [ %i.db, %.lr.ph113.new ], [ %.073111.unr, %.prol.loopexit158 ] ; 4 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr [4 x i8], ptr %i.ay, i64 %.073111 ; 2 uses
  %i.ca = getelementptr [4 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !83
  %i.cc = sext i32 %i.bw to i64
  %i.cd = getelementptr [4 x i8], ptr %i.bz, i64 %i.cc
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !83
  %i.ce = load i32, ptr %i.as, align 4, !tbaa !83 ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr [8 x i8], ptr %i.ba, i64 %.073111 ; 2 uses
  %i.ch = getelementptr [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !106
  %i.cj = load i32, ptr %i.az, align 4, !tbaa !83 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr [8 x i8], ptr %i.cg, i64 %i.ck
  store double %i.ci, ptr %i.cl, align 8, !tbaa !106
  %i.cm = add nsw i64 %.073111, -1                ; 3 uses
  %i.cn = sext i32 %i.ce to i64
  %i.co = getelementptr [4 x i8], ptr %i.ay, i64 %i.cm ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.co, i64 %i.cn
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !83
  %i.cr = sext i32 %i.cj to i64
  %i.cs = getelementptr [4 x i8], ptr %i.co, i64 %i.cr
  store i32 %i.cq, ptr %i.cs, align 4, !tbaa !83
  %i.ct = load i32, ptr %i.as, align 4, !tbaa !83 ; 3 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr [8 x i8], ptr %i.ba, i64 %i.cm ; 2 uses
  %i.cw = getelementptr [8 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !106
  %i.cy = load i32, ptr %i.az, align 4, !tbaa !83 ; 3 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr [8 x i8], ptr %i.cv, i64 %i.cz
  store double %i.cx, ptr %i.da, align 8, !tbaa !106
  %i.db = add nsw i64 %.073111, -2
  %.not141.1 = icmp eq i64 %i.cm, 0
  br i1 %.not141.1, label %._crit_edge114, label %.lr.ph113.new, !llvm.loop !1424

._crit_edge120:                                   ; preds = %._crit_edge114
  %i.dc = add nsw i64 %i.u, -1                    ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !83
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dc
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !83
  %i.di = add nsw i32 %i.dh, %i.de
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !170
  %i.dl = add nsw i32 %i.di, %i.dk                ; 2 uses
  store i32 %i.dl, ptr %i.v, align 4, !tbaa !83
  br label %._crit_edge120._crit_edge

._crit_edge120._crit_edge:                        ; preds = %._crit_edge109, %._crit_edge120
  %i.dm = phi i32 [ %i.dl, %._crit_edge120 ], [ %i.x, %._crit_edge109 ]
  %i.dn = sext i32 %i.dm to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %i.dn, double noundef 0.000000e+00)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.do = add i64 %i.f, 4
  %i.dp = tail call noalias ptr @malloc(i64 noundef %i.do) #34 ; 7 uses
  %.not = icmp eq ptr %i.dp, null
  br i1 %.not, label %bb.g, label %.preheader94

.preheader94:                                     ; preds = %bb.f
  %i.dq = icmp sgt i64 %i.e, 0
  br i1 %i.dq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader94
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !114 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !170 ; 3 uses
  %.pre = load i32, ptr %i.ds, align 4, !tbaa !83 ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.dv = icmp eq i64 %i.e, 1
  br i1 %i.dv, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 9223372036854775806
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dw = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dw, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.dw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre, %.lr.ph ], [ %i.fd, %._crit_edge.loopexit.unr-lcssa ]
  %.07196.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.fb, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.07295.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.fj, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod147 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod147)
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.07196.epil.init
  store i32 %.07295.epil.init, ptr %i.dx, align 4, !tbaa !83
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.07196.epil.init
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !83
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07196.epil.init
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !83 ; 2 uses
  %i.ed = add i32 %.epil.init, %i.ec
  %i.ee = sub i32 %i.ea, %i.ed
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %i.du, i32 %i.ee)
  %i.ef = add i32 %i.ec, %.07295.epil.init
  %i.eg = add i32 %i.ef, %.sroa.speculated.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader94
  %.072.lcssa = phi i32 [ 0, %.preheader94 ], [ %i.fj, %._crit_edge.loopexit.unr-lcssa ], [ %i.eg, %.epil.preheader ] ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.e
  store i32 %.072.lcssa, ptr %i.eh, align 4, !tbaa !83
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ej = sext i32 %.072.lcssa to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, i64 noundef %i.ej, double noundef 0.000000e+00)
  %i.ek = load i64, ptr %i.d, align 8, !tbaa !150 ; 2 uses
  %i.el = icmp sgt i64 %i.ek, 0
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !142 ; 2 uses
  br i1 %i.el, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %._crit_edge
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %i.ep = phi i32 [ %.pre, %.lr.ph.new ], [ %i.fd, %bb.h ]
  %.07196 = phi i64 [ 0, %.lr.ph.new ], [ %i.fb, %bb.h ] ; 4 uses
  %.07295 = phi i32 [ 0, %.lr.ph.new ], [ %i.fj, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.07196
  store i32 %.07295, ptr %i.eq, align 4, !tbaa !83
  %i.er = or disjoint i64 %.07196, 1              ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !83 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07196
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !83 ; 2 uses
  %i.ew = add i32 %i.ep, %i.ev
  %i.ex = sub i32 %i.et, %i.ew
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.du, i32 %i.ex)
  %i.ey = add i32 %i.ev, %.07295
  %i.ez = add i32 %i.ey, %.sroa.speculated        ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.er
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !83
  %i.fb = add nuw nsw i64 %.07196, 2              ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !83 ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.er
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !83 ; 2 uses
  %i.fg = add i32 %i.et, %i.ff
  %i.fh = sub i32 %i.fd, %i.fg
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.du, i32 %i.fh)
  %i.fi = add i32 %i.ff, %i.ez
  %i.fj = add i32 %i.fi, %.sroa.speculated.1      ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !1425

._crit_edge104:                                   ; preds = %.loopexit, %._crit_edge
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dp, ptr %i.fk, align 8, !tbaa !142
  tail call void @free(ptr noundef %i.en) #33
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph103, %.loopexit
  %.069101.in = phi i64 [ %i.ek, %.lr.ph103 ], [ %.069101, %.loopexit ] ; 2 uses
  %.069101 = add nsw i64 %.069101.in, -1          ; 4 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.069101
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !83 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %.069101 ; 4 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !83 ; 3 uses
  %i.fp = icmp sgt i32 %i.fm, %i.fo
  br i1 %i.fp, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.fq = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %.069101
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !83 ; 3 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph99, label %.loopexit

.lr.ph99:                                         ; preds = %bb.j
  %i.fu = add nsw i32 %i.fs, -1                   ; 2 uses
  %i.fv = zext nneg i32 %i.fu to i64              ; 4 uses
  %i.fw = load ptr, ptr %i.eo, align 8, !tbaa !111 ; 3 uses
  %i.fx = load ptr, ptr %i.ei, align 8, !tbaa !110 ; 3 uses
  %i.fy = sext i32 %i.fm to i64                   ; 6 uses
  %i.fz = and i32 %i.fs, 1
  %lcmp.mod149.not = icmp eq i32 %i.fz, 0
  br i1 %lcmp.mod149.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph99
  %i.ga = sext i32 %i.fo to i64
  %i.gb = getelementptr [4 x i8], ptr %i.fw, i64 %i.fv ; 2 uses
  %i.gc = getelementptr [4 x i8], ptr %i.gb, i64 %i.ga
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !83
  %i.ge = getelementptr [4 x i8], ptr %i.gb, i64 %i.fy
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !83
  %i.gf = load i32, ptr %i.fn, align 4, !tbaa !83 ; 2 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr [8 x i8], ptr %i.fx, i64 %i.fv ; 2 uses
  %i.gi = getelementptr [8 x i8], ptr %i.gh, i64 %i.gg
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !106
  %i.gk = getelementptr [8 x i8], ptr %i.gh, i64 %i.fy
  store double %i.gj, ptr %i.gk, align 8, !tbaa !106
  %i.gl = add nsw i64 %i.fv, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph99
  %.unr150 = phi i32 [ %i.fo, %.lr.ph99 ], [ %i.gf, %.prol.loopexit.unr-lcssa ]
  %.097.unr = phi i64 [ %i.fv, %.lr.ph99 ], [ %i.gl, %.prol.loopexit.unr-lcssa ]
  %i.gm = icmp eq i32 %i.fu, 0
  br i1 %i.gm, label %.loopexit, label %.lr.ph99.new

.lr.ph99.new:                                     ; preds = %.prol.loopexit, %.lr.ph99.new
  %i.gn = phi i32 [ %i.hf, %.lr.ph99.new ], [ %.unr150, %.prol.loopexit ]
  %.097 = phi i64 [ %i.hl, %.lr.ph99.new ], [ %.097.unr, %.prol.loopexit ] ; 4 uses
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr [4 x i8], ptr %i.fw, i64 %.097 ; 2 uses
  %i.gq = getelementptr [4 x i8], ptr %i.gp, i64 %i.go
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !83
  %i.gs = getelementptr [4 x i8], ptr %i.gp, i64 %i.fy
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !83
  %i.gt = load i32, ptr %i.fn, align 4, !tbaa !83 ; 2 uses
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr [8 x i8], ptr %i.fx, i64 %.097 ; 2 uses
  %i.gw = getelementptr [8 x i8], ptr %i.gv, i64 %i.gu
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !106
  %i.gy = getelementptr [8 x i8], ptr %i.gv, i64 %i.fy
  store double %i.gx, ptr %i.gy, align 8, !tbaa !106
  %i.gz = add nsw i64 %.097, -1                   ; 3 uses
  %i.ha = sext i32 %i.gt to i64
  %i.hb = getelementptr [4 x i8], ptr %i.fw, i64 %i.gz ; 2 uses
  %i.hc = getelementptr [4 x i8], ptr %i.hb, i64 %i.ha
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !83
  %i.he = getelementptr [4 x i8], ptr %i.hb, i64 %i.fy
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !83
  %i.hf = load i32, ptr %i.fn, align 4, !tbaa !83 ; 2 uses
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr [8 x i8], ptr %i.fx, i64 %i.gz ; 2 uses
  %i.hi = getelementptr [8 x i8], ptr %i.hh, i64 %i.hg
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !106
  %i.hk = getelementptr [8 x i8], ptr %i.hh, i64 %i.fy
  store double %i.hj, ptr %i.hk, align 8, !tbaa !106
  %i.hl = add nsw i64 %.097, -2
  %.not140.1 = icmp eq i64 %i.gz, 0
  br i1 %.not140.1, label %.loopexit, label %.lr.ph99.new, !llvm.loop !1426

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph99.new, %bb.j, %bb.i
  %i.hm = icmp samesign ugt i64 %.069101.in, 1
  br i1 %i.hm, label %bb.i, label %._crit_edge104, !llvm.loop !1427

bb.k:                                             ; preds = %._crit_edge104, %._crit_edge120._crit_edge
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi1EiE18insertUncompressedEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.Eigen::SparseMatrix<double, 1>::SingletonVector", align 4 ; 5 uses
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.d = getelementptr [4 x i8], ptr %i.c, i64 %1 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !83
  %i.g = load i32, ptr %i.d, align 4, !tbaa !83   ; 2 uses
  %i.h = sub nsw i32 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !115  ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %1
  %i.l = load i32, ptr %i.k, align 4, !tbaa !83   ; 3 uses
  %.not = icmp slt i32 %i.l, %i.h
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.l, i32 2)
  %i.m = trunc i64 %1 to i32
  store i32 %i.m, ptr %3, align 4, !tbaa !254
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.speculated, ptr %i.n, align 4, !tbaa !1429
  call void @_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS1_15SingletonVectorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !114
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %.pre, i64 %1
  %.pre29 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !83
  %.pre30 = load ptr, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %.phi.trans.insert31 = getelementptr inbounds [4 x i8], ptr %.pre30, i64 %1
  %.pre32 = load i32, ptr %.phi.trans.insert31, align 4, !tbaa !83
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i32 [ %.pre32, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.p = phi ptr [ %.pre30, %bb.b ], [ %i.j, %bb.a ]
  %i.q = phi i32 [ %.pre29, %bb.b ], [ %i.g, %bb.a ]
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.p, i64 %1 ; 2 uses
  %i.t = sext i32 %i.o to i64
  %i.u = add nsw i64 %i.t, %i.r                   ; 2 uses
  %i.v = icmp sgt i32 %i.o, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !111  ; 3 uses
  br i1 %i.v, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.026 = phi i64 [ %i.u, %.lr.ph ], [ %i.z, %bb.e ] ; 4 uses
  %i.z = add nsw i64 %.026, -1                    ; 5 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !83 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, %i.a
  br i1 %i.ac, label %bb.e, label %.critedge.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.026
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !83
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !110 ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.z
  %i.ag = load double, ptr %i.af, align 8, !tbaa !106
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %.026
  store double %i.ag, ptr %i.ah, align 8, !tbaa !106
  %i.ai = icmp sgt i64 %i.z, %i.r
  br i1 %i.ai, label %bb.d, label %.critedge.loopexit, !llvm.loop !1428

.critedge.loopexit:                               ; preds = %bb.e, %bb.d
  %.0.lcssa.ph = phi i64 [ %.026, %bb.d ], [ %i.z, %bb.e ]
  %.pre33 = load i32, ptr %i.s, align 4, !tbaa !83
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.loopexit
  %i.aj = phi i32 [ %.pre33, %.critedge.loopexit ], [ %i.o, %bb.c ]
  %.0.lcssa = phi i64 [ %.0.lcssa.ph, %.critedge.loopexit ], [ %i.u, %bb.c ] ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.s, align 4, !tbaa !83
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.0.lcssa
  store i32 %i.a, ptr %i.am, align 4, !tbaa !83
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !110
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %.0.lcssa ; 2 uses
  store double 0.000000e+00, ptr %i.ao, align 8, !tbaa !106
  ret ptr %i.ao
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS1_15SingletonVectorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !150  ; 12 uses
  %i.f = shl i64 %i.e, 2                          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #34 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !115
  %.not80 = icmp eq ptr %i.g, null
  br i1 %.not80, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %.preheader
  %i.i = load i32, ptr %1, align 4, !tbaa !254
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !114  ; 4 uses
  %xtraiter155 = and i64 %i.e, 1
  %i.o = icmp eq i64 %i.e, 1
  br i1 %i.o, label %.epil.preheader154, label %.lr.ph108.new

.lr.ph108.new:                                    ; preds = %.lr.ph108
  %unroll_iter159 = and i64 %i.e, 9223372036854775806
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

._crit_edge109.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod156.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod156.not, label %._crit_edge109, label %.epil.preheader154

.epil.preheader154:                               ; preds = %._crit_edge109.loopexit.unr-lcssa, %.lr.ph108
  %.070107.epil.init = phi i64 [ 0, %.lr.ph108 ], [ %i.bd, %._crit_edge109.loopexit.unr-lcssa ]
  %.076106.epil.init = phi i64 [ 0, %.lr.ph108 ], [ %i.au, %._crit_edge109.loopexit.unr-lcssa ] ; 2 uses
  %.077105.epil.init = phi i32 [ 0, %.lr.ph108 ], [ %i.bb, %._crit_edge109.loopexit.unr-lcssa ]
  %lcmp.mod158 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod158)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076106.epil.init
  store i32 %.077105.epil.init, ptr %i.q, align 4, !tbaa !83
  %i.r = icmp eq i64 %.076106.epil.init, %i.j
  %i.s = sext i32 %i.l to i64
  %i.t = select i1 %i.r, i64 %i.s, i64 0
  %i.u = add nsw i64 %.070107.epil.init, %i.t
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %.epil.preheader154, %._crit_edge109.loopexit.unr-lcssa, %.preheader
  %.070.lcssa = phi i64 [ 0, %.preheader ], [ %i.bd, %._crit_edge109.loopexit.unr-lcssa ], [ %i.u, %.epil.preheader154 ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %.070.lcssa)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !114  ; 3 uses
  %i.y = load i64, ptr %i.d, align 8, !tbaa !150  ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = icmp sgt i64 %i.y, 0
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !83  ; 2 uses
  br i1 %i.aa, label %.lr.ph119, label %._crit_edge120._crit_edge

.lr.ph119:                                        ; preds = %._crit_edge109
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !115
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph108.new
  %.070107 = phi i64 [ 0, %.lr.ph108.new ], [ %i.bd, %bb.d ]
  %.076106 = phi i64 [ 0, %.lr.ph108.new ], [ %i.au, %bb.d ] ; 5 uses
  %.077105 = phi i32 [ 0, %.lr.ph108.new ], [ %i.bb, %bb.d ] ; 2 uses
  %niter160 = phi i64 [ 0, %.lr.ph108.new ], [ %niter160.next.1, %bb.d ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076106
  store i32 %.077105, ptr %i.ae, align 4, !tbaa !83
  %i.af = icmp eq i64 %.076106, %i.j
  %i.ag = select i1 %i.af, i32 %i.l, i32 0        ; 2 uses
  %i.ah = or disjoint i64 %.076106, 1             ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !83
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.076106
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !83
  %i.am = add i32 %i.aj, %.077105
  %i.an = add i32 %i.am, %i.ag
  %i.ao = sub i32 %i.an, %i.al                    ; 2 uses
  %i.ap = sext i32 %i.ag to i64
  %i.aq = add nsw i64 %.070107, %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ah
  store i32 %i.ao, ptr %i.ar, align 4, !tbaa !83
  %i.as = icmp eq i64 %i.ah, %i.j
  %i.at = select i1 %i.as, i32 %i.l, i32 0        ; 2 uses
  %i.au = add nuw nsw i64 %.076106, 2             ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !83
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ah
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !83
  %i.az = add i32 %i.aw, %i.ao
  %i.ba = add i32 %i.az, %i.at
  %i.bb = sub i32 %i.ba, %i.ay                    ; 2 uses
  %i.bc = sext i32 %i.at to i64
  %i.bd = add nsw i64 %i.aq, %i.bc                ; 3 uses
  %niter160.next.1 = add nuw nsw i64 %niter160, 2 ; 2 uses
  %niter160.ncmp.1 = icmp eq i64 %niter160.next.1, %unroll_iter159
  br i1 %niter160.ncmp.1, label %._crit_edge109.loopexit.unr-lcssa, label %bb.d, !llvm.loop !1430

bb.e:                                             ; preds = %.lr.ph119, %._crit_edge114
  %.074117.in = phi i64 [ %i.y, %.lr.ph119 ], [ %.074117, %._crit_edge114 ] ; 2 uses
  %.075116 = phi i32 [ %i.ab, %.lr.ph119 ], [ %i.cf, %._crit_edge114 ]
  %.074117 = add nsw i64 %.074117.in, -1          ; 5 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.074117 ; 5 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !83 ; 4 uses
  %i.bg = sub nsw i32 %.075116, %i.bf             ; 4 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph113, label %.._crit_edge114_crit_edge

.._crit_edge114_crit_edge:                        ; preds = %bb.e
  %.phi.trans.insert125 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117
  %.pre126 = load i32, ptr %.phi.trans.insert125, align 4, !tbaa !83
  br label %._crit_edge114

.lr.ph113:                                        ; preds = %bb.e
  %i.bi = add nsw i32 %i.bg, -1                   ; 2 uses
  %i.bj = zext nneg i32 %i.bi to i64              ; 4 uses
  %i.bk = load ptr, ptr %i.ac, align 8, !tbaa !111 ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117 ; 4 uses
  %i.bm = load ptr, ptr %i.v, align 8, !tbaa !110 ; 3 uses
  %.pre124 = load i32, ptr %i.bl, align 4, !tbaa !83 ; 2 uses
  %i.bn = and i32 %i.bg, 1
  %lcmp.mod164.not = icmp eq i32 %i.bn, 0
  br i1 %lcmp.mod164.not, label %.prol.loopexit162, label %.prol.loopexit162.unr-lcssa

.prol.loopexit162.unr-lcssa:                      ; preds = %.lr.ph113
  %i.bo = sext i32 %i.bf to i64
  %i.bp = getelementptr [4 x i8], ptr %i.bk, i64 %i.bj ; 2 uses
  %i.bq = getelementptr [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !83
  %i.bs = sext i32 %.pre124 to i64
  %i.bt = getelementptr [4 x i8], ptr %i.bp, i64 %i.bs
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !83
  %i.bu = load i32, ptr %i.be, align 4, !tbaa !83 ; 3 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr [8 x i8], ptr %i.bm, i64 %i.bj ; 2 uses
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load double, ptr %i.bx, align 8, !tbaa !106
  %i.bz = load i32, ptr %i.bl, align 4, !tbaa !83 ; 3 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr [8 x i8], ptr %i.bw, i64 %i.ca
  store double %i.by, ptr %i.cb, align 8, !tbaa !106
  %i.cc = add nsw i64 %i.bj, -1
  br label %.prol.loopexit162

.prol.loopexit162:                                ; preds = %.prol.loopexit162.unr-lcssa, %.lr.ph113
  %.lcssa146.unr = phi i32 [ poison, %.lr.ph113 ], [ %i.bu, %.prol.loopexit162.unr-lcssa ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph113 ], [ %i.bz, %.prol.loopexit162.unr-lcssa ]
  %.unr165 = phi i32 [ %.pre124, %.lr.ph113 ], [ %i.bz, %.prol.loopexit162.unr-lcssa ]
  %.unr166 = phi i32 [ %i.bf, %.lr.ph113 ], [ %i.bu, %.prol.loopexit162.unr-lcssa ]
  %.073111.unr = phi i64 [ %i.bj, %.lr.ph113 ], [ %i.cc, %.prol.loopexit162.unr-lcssa ]
  %i.cd = icmp eq i32 %i.bi, 0
  br i1 %i.cd, label %._crit_edge114, label %.lr.ph113.new

._crit_edge114:                                   ; preds = %.prol.loopexit162, %.lr.ph113.new, %.._crit_edge114_crit_edge
  %i.ce = phi i32 [ %.pre126, %.._crit_edge114_crit_edge ], [ %.lcssa.unr, %.prol.loopexit162 ], [ %i.dk, %.lr.ph113.new ]
  %i.cf = phi i32 [ %i.bf, %.._crit_edge114_crit_edge ], [ %.lcssa146.unr, %.prol.loopexit162 ], [ %i.df, %.lr.ph113.new ]
  store i32 %i.ce, ptr %i.be, align 4, !tbaa !83
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.074117
  store i32 %i.bg, ptr %i.cg, align 4, !tbaa !83
  %i.ch = icmp samesign ugt i64 %.074117.in, 1
  br i1 %i.ch, label %bb.e, label %._crit_edge120, !llvm.loop !1431

.lr.ph113.new:                                    ; preds = %.prol.loopexit162, %.lr.ph113.new
  %i.ci = phi i32 [ %i.dk, %.lr.ph113.new ], [ %.unr165, %.prol.loopexit162 ]
  %i.cj = phi i32 [ %i.df, %.lr.ph113.new ], [ %.unr166, %.prol.loopexit162 ]
  %.073111 = phi i64 [ %i.dn, %.lr.ph113.new ], [ %.073111.unr, %.prol.loopexit162 ] ; 4 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr [4 x i8], ptr %i.bk, i64 %.073111 ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !83
  %i.co = sext i32 %i.ci to i64
  %i.cp = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  store i32 %i.cn, ptr %i.cp, align 4, !tbaa !83
  %i.cq = load i32, ptr %i.be, align 4, !tbaa !83 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [8 x i8], ptr %i.bm, i64 %.073111 ; 2 uses
  %i.ct = getelementptr [8 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !106
  %i.cv = load i32, ptr %i.bl, align 4, !tbaa !83 ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr [8 x i8], ptr %i.cs, i64 %i.cw
  store double %i.cu, ptr %i.cx, align 8, !tbaa !106
  %i.cy = add nsw i64 %.073111, -1                ; 3 uses
  %i.cz = sext i32 %i.cq to i64
  %i.da = getelementptr [4 x i8], ptr %i.bk, i64 %i.cy ; 2 uses
  %i.db = getelementptr [4 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !83
  %i.dd = sext i32 %i.cv to i64
  %i.de = getelementptr [4 x i8], ptr %i.da, i64 %i.dd
  store i32 %i.dc, ptr %i.de, align 4, !tbaa !83
  %i.df = load i32, ptr %i.be, align 4, !tbaa !83 ; 3 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [8 x i8], ptr %i.bm, i64 %i.cy ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = load double, ptr %i.di, align 8, !tbaa !106
  %i.dk = load i32, ptr %i.bl, align 4, !tbaa !83 ; 3 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr [8 x i8], ptr %i.dh, i64 %i.dl
  store double %i.dj, ptr %i.dm, align 8, !tbaa !106
  %i.dn = add nsw i64 %.073111, -2
  %.not142.1 = icmp eq i64 %i.cy, 0
  br i1 %.not142.1, label %._crit_edge114, label %.lr.ph113.new, !llvm.loop !1432

._crit_edge120:                                   ; preds = %._crit_edge114
  %i.do = add nsw i64 %i.y, -1                    ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !83
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.do
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !83
  %i.du = add nsw i32 %i.dt, %i.dq
  %i.dv = load i32, ptr %1, align 4, !tbaa !254
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp eq i64 %i.do, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = select i1 %i.dx, i32 %i.dz, i32 0
  %i.eb = add nsw i32 %i.du, %i.ea                ; 2 uses
  store i32 %i.eb, ptr %i.z, align 4, !tbaa !83
  br label %._crit_edge120._crit_edge

._crit_edge120._crit_edge:                        ; preds = %._crit_edge109, %._crit_edge120
  %i.ec = phi i32 [ %i.eb, %._crit_edge120 ], [ %i.ab, %._crit_edge109 ]
  %i.ed = sext i32 %i.ec to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ed, double noundef 0.000000e+00)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.ee = add i64 %i.f, 4
  %i.ef = tail call noalias ptr @malloc(i64 noundef %i.ee) #34 ; 7 uses
  %.not = icmp eq ptr %i.ef, null
  br i1 %.not, label %bb.g, label %.preheader94

.preheader94:                                     ; preds = %bb.f
  %i.eg = icmp sgt i64 %i.e, 0
  br i1 %i.eg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader94
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !114 ; 4 uses
  %i.ej = load i32, ptr %1, align 4, !tbaa !254
  %i.ek = sext i32 %i.ej to i64                   ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.em = load i32, ptr %i.el, align 4            ; 3 uses
  %.pre = load i32, ptr %i.ei, align 4, !tbaa !83 ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.en = icmp eq i64 %i.e, 1
  br i1 %i.en, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 9223372036854775806
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.eo = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.eo, align 8, !tbaa !90
  tail call void @__cxa_throw(ptr nonnull %i.eo, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre, %.lr.ph ], [ %i.fz, %._crit_edge.loopexit.unr-lcssa ]
  %.07196.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.fx, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %.07295.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.gh, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod150 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.07196.epil.init
  store i32 %.07295.epil.init, ptr %i.ep, align 4, !tbaa !83
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.07196.epil.init
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !83
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07196.epil.init
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !83 ; 2 uses
  %i.ev = add i32 %.epil.init, %i.eu
  %i.ew = sub i32 %i.es, %i.ev
  %i.ex = icmp eq i64 %.07196.epil.init, %i.ek
  %i.ey = select i1 %i.ex, i32 %i.em, i32 0
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %i.ey, i32 %i.ew)
  %i.ez = add i32 %i.eu, %.07295.epil.init
  %i.fa = add i32 %i.ez, %.sroa.speculated.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader94
  %.072.lcssa = phi i32 [ 0, %.preheader94 ], [ %i.gh, %._crit_edge.loopexit.unr-lcssa ], [ %i.fa, %.epil.preheader ] ; 2 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.e
  store i32 %.072.lcssa, ptr %i.fb, align 4, !tbaa !83
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fd = sext i32 %.072.lcssa to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, i64 noundef %i.fd, double noundef 0.000000e+00)
  %i.fe = load i64, ptr %i.d, align 8, !tbaa !150 ; 2 uses
  %i.ff = icmp sgt i64 %i.fe, 0
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !142 ; 2 uses
  br i1 %i.ff, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %._crit_edge
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %i.fj = phi i32 [ %.pre, %.lr.ph.new ], [ %i.fz, %bb.h ]
  %.07196 = phi i64 [ 0, %.lr.ph.new ], [ %i.fx, %bb.h ] ; 5 uses
  %.07295 = phi i32 [ 0, %.lr.ph.new ], [ %i.gh, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.07196
  store i32 %.07295, ptr %i.fk, align 4, !tbaa !83
  %i.fl = or disjoint i64 %.07196, 1              ; 4 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !83 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07196
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !83 ; 2 uses
  %i.fq = add i32 %i.fj, %i.fp
  %i.fr = sub i32 %i.fn, %i.fq
  %i.fs = icmp eq i64 %.07196, %i.ek
  %i.ft = select i1 %i.fs, i32 %i.em, i32 0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.ft, i32 %i.fr)
  %i.fu = add i32 %i.fp, %.07295
  %i.fv = add i32 %i.fu, %.sroa.speculated        ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.fl
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !83
  %i.fx = add nuw nsw i64 %.07196, 2              ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !83 ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fl
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !83 ; 2 uses
  %i.gc = add i32 %i.fn, %i.gb
  %i.gd = sub i32 %i.fz, %i.gc
  %i.ge = icmp eq i64 %i.fl, %i.ek
  %i.gf = select i1 %i.ge, i32 %i.em, i32 0
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.gf, i32 %i.gd)
  %i.gg = add i32 %i.gb, %i.fv
  %i.gh = add i32 %i.gg, %.sroa.speculated.1      ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !1433

._crit_edge104:                                   ; preds = %.loopexit, %._crit_edge
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ef, ptr %i.gi, align 8, !tbaa !142
  tail call void @free(ptr noundef %i.fh) #33
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph103, %.loopexit
  %.069101.in = phi i64 [ %i.fe, %.lr.ph103 ], [ %.069101, %.loopexit ] ; 2 uses
  %.069101 = add nsw i64 %.069101.in, -1          ; 4 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.069101
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !83 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.069101 ; 4 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !83 ; 3 uses
  %i.gn = icmp sgt i32 %i.gk, %i.gm
  br i1 %i.gn, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.go = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.069101
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !83 ; 3 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph99, label %.loopexit

.lr.ph99:                                         ; preds = %bb.j
  %i.gs = add nsw i32 %i.gq, -1                   ; 2 uses
  %i.gt = zext nneg i32 %i.gs to i64              ; 4 uses
  %i.gu = load ptr, ptr %i.fi, align 8, !tbaa !111 ; 3 uses
  %i.gv = load ptr, ptr %i.fc, align 8, !tbaa !110 ; 3 uses
  %i.gw = sext i32 %i.gk to i64                   ; 6 uses
  %i.gx = and i32 %i.gq, 1
  %lcmp.mod152.not = icmp eq i32 %i.gx, 0
  br i1 %lcmp.mod152.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph99
  %i.gy = sext i32 %i.gm to i64
  %i.gz = getelementptr [4 x i8], ptr %i.gu, i64 %i.gt ; 2 uses
  %i.ha = getelementptr [4 x i8], ptr %i.gz, i64 %i.gy
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !83
  %i.hc = getelementptr [4 x i8], ptr %i.gz, i64 %i.gw
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !83
  %i.hd = load i32, ptr %i.gl, align 4, !tbaa !83 ; 2 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr [8 x i8], ptr %i.gv, i64 %i.gt ; 2 uses
  %i.hg = getelementptr [8 x i8], ptr %i.hf, i64 %i.he
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !106
  %i.hi = getelementptr [8 x i8], ptr %i.hf, i64 %i.gw
  store double %i.hh, ptr %i.hi, align 8, !tbaa !106
  %i.hj = add nsw i64 %i.gt, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph99
  %.unr153 = phi i32 [ %i.gm, %.lr.ph99 ], [ %i.hd, %.prol.loopexit.unr-lcssa ]
  %.097.unr = phi i64 [ %i.gt, %.lr.ph99 ], [ %i.hj, %.prol.loopexit.unr-lcssa ]
  %i.hk = icmp eq i32 %i.gs, 0
  br i1 %i.hk, label %.loopexit, label %.lr.ph99.new

.lr.ph99.new:                                     ; preds = %.prol.loopexit, %.lr.ph99.new
  %i.hl = phi i32 [ %i.id, %.lr.ph99.new ], [ %.unr153, %.prol.loopexit ]
  %.097 = phi i64 [ %i.ij, %.lr.ph99.new ], [ %.097.unr, %.prol.loopexit ] ; 4 uses
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr [4 x i8], ptr %i.gu, i64 %.097 ; 2 uses
  %i.ho = getelementptr [4 x i8], ptr %i.hn, i64 %i.hm
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !83
  %i.hq = getelementptr [4 x i8], ptr %i.hn, i64 %i.gw
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !83
  %i.hr = load i32, ptr %i.gl, align 4, !tbaa !83 ; 2 uses
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr [8 x i8], ptr %i.gv, i64 %.097 ; 2 uses
  %i.hu = getelementptr [8 x i8], ptr %i.ht, i64 %i.hs
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !106
  %i.hw = getelementptr [8 x i8], ptr %i.ht, i64 %i.gw
  store double %i.hv, ptr %i.hw, align 8, !tbaa !106
  %i.hx = add nsw i64 %.097, -1                   ; 3 uses
  %i.hy = sext i32 %i.hr to i64
  %i.hz = getelementptr [4 x i8], ptr %i.gu, i64 %i.hx ; 2 uses
  %i.ia = getelementptr [4 x i8], ptr %i.hz, i64 %i.hy
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !83
  %i.ic = getelementptr [4 x i8], ptr %i.hz, i64 %i.gw
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !83
  %i.id = load i32, ptr %i.gl, align 4, !tbaa !83 ; 2 uses
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr [8 x i8], ptr %i.gv, i64 %i.hx ; 2 uses
  %i.ig = getelementptr [8 x i8], ptr %i.if, i64 %i.ie
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !106
  %i.ii = getelementptr [8 x i8], ptr %i.if, i64 %i.gw
  store double %i.ih, ptr %i.ii, align 8, !tbaa !106
  %i.ij = add nsw i64 %.097, -2
  %.not141.1 = icmp eq i64 %i.hx, 0
  br i1 %.not141.1, label %.loopexit, label %.lr.ph99.new, !llvm.loop !1434

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph99.new, %bb.j, %bb.i
  %i.ik = icmp samesign ugt i64 %.069101.in, 1
  br i1 %i.ik, label %bb.i, label %._crit_edge104, !llvm.loop !1435

bb.k:                                             ; preds = %._crit_edge104, %._crit_edge120._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26permutation_matrix_productINS_12SparseMatrixIdLi0EiEELi1ELb1ENS_11SparseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::SparseMatrix.55", align 8 ; 15 uses
  %4 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !98   ; 4 uses
  store i8 0, ptr %3, align 8, !tbaa !108
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !151
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.h = shl i64 %i.b, 2                          ; 2 uses
  %i.i = add i64 %i.h, 4
  %calloc79 = tail call ptr @calloc(i64 1, i64 %i.i) ; 2 uses
  store ptr %calloc79, ptr %i.g, align 8, !tbaa !114
  %.not6.i = icmp eq ptr %calloc79, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi1EiEC2Ell.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !90
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.c ], [ %.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.l) #33
  br label %common.resume

_ZN5Eigen12SparseMatrixIdLi1EiEC2Ell.exit:        ; preds = %bb.a
  store i64 %i.b, ptr %i.e, align 8, !tbaa !150
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiEC2Ell.exit
  %i.n = icmp sgt i64 %i.b, 0
  br i1 %i.n, label %bb.e, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.o = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.o, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.e
  %calloc = tail call ptr @calloc(i64 1, i64 %i.h) ; 3 uses
  %i.p = icmp eq ptr %calloc, null
  br i1 %i.p, label %.invoke.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.e
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !90
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont.i unwind label %bb.f

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.f:                                             ; preds = %.invoke.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  store ptr %calloc, ptr %4, align 8, !tbaa !82
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.sink.split

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.sink.split: ; preds = %bb.d, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i
  %.ph = phi ptr [ %calloc, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i ], [ null, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.b, ptr %i.s, align 8, !tbaa !81
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.sink.split, %_ZN5Eigen12SparseMatrixIdLi1EiEC2Ell.exit
  %i.t = phi ptr [ null, %_ZN5Eigen12SparseMatrixIdLi1EiEC2Ell.exit ], [ %.ph, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.sink.split ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !81   ; 8 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %bb.h, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.x = icmp samesign ugt i64 %i.v, 4611686018427387903
  br i1 %i.x, label %.invoke.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.y = shl nuw i64 %i.v, 2
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.y) #34 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.invoke.i.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i

.invoke.i.i:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i, %bb.h
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ab, align 8, !tbaa !90
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont.i.i unwind label %bb.i

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.i:                                             ; preds = %.invoke.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body27

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i, %bb.g
  %.sink.i.i.i.i.i = phi ptr [ %i.z, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i ], [ null, %bb.g ] ; 8 uses
  %i.ad = trunc i64 %i.v to i32
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit
end_hunk_5
