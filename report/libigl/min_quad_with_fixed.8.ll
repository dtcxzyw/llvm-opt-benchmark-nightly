Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.8?download=true
inline.NumInlined: 12661
inline.NumDeleted: 4783
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 216
loop-unroll.NumUnrolled: 221
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
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !113
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hd
  %i.hf = trunc nuw nsw i64 %indvars.iv85.epil to i32
  store i32 %i.hf, ptr %i.he, align 4, !tbaa !113
  %indvars.iv.next86.epil = add nuw nsw i64 %indvars.iv85.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter179
  br i1 %epil.iter.cmp.not, label %._crit_edge77, label %bb.ag, !llvm.loop !550

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
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !113
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hj
  %i.hl = trunc nuw nsw i64 %indvars.iv85 to i32
  store i32 %i.hl, ptr %i.hk, align 4, !tbaa !113
  %indvars.iv.next86 = or disjoint i64 %indvars.iv85, 1 ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.054.0, i64 %indvars.iv.next86
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !113
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ho
  %i.hq = trunc nuw nsw i64 %indvars.iv.next86 to i32
  store i32 %i.hq, ptr %i.hp, align 4, !tbaa !113
  %indvars.iv.next86.1 = or disjoint i64 %indvars.iv85, 2 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.054.0, i64 %indvars.iv.next86.1
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !113
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ht
  %i.hv = trunc nuw nsw i64 %indvars.iv.next86.1 to i32
  store i32 %i.hv, ptr %i.hu, align 4, !tbaa !113
  %indvars.iv.next86.2 = or disjoint i64 %indvars.iv85, 3 ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.054.0, i64 %indvars.iv.next86.2
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !113
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hy
  %i.ia = trunc nuw nsw i64 %indvars.iv.next86.2 to i32
  store i32 %i.ia, ptr %i.hz, align 4, !tbaa !113
  %indvars.iv.next86.3 = add nuw nsw i64 %indvars.iv85, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge77.loopexit.unr-lcssa, label %bb.ai, !llvm.loop !551

.body:                                            ; preds = %bb.o, %bb.ah
  %.pn38.pn = phi { ptr, i32 } [ %i.hg, %bb.ah ], [ %i.dz, %bb.o ]
  tail call void @free(ptr noundef %.sroa.054.0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  resume { ptr, i32 } %.pn38.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN5Eigen8internal8coletreeINS_12SparseMatrixIdLi0EiEENS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEiRKT_RT0_SA_PNS6_12StorageIndexE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39   ; 10 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !102  ; 3 uses
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.i) #35 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i95

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !119
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i96, i1 false), !tbaa !113
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit97

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit97: ; preds = %bb.a, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i95
  %.sroa.0129.0179 = phi ptr [ null, %bb.a ], [ %i.l, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i95 ] ; 9 uses
  %.sroa.0137.0164171178 = phi ptr [ null, %bb.a ], [ %calloc, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i95 ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !112
  %.not.i.i = icmp eq i64 %i.b, %i.r
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit97
  %i.s = load ptr, ptr %1, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.s) #33
  %i.t = icmp sgt i64 %i.b, 0
  br i1 %i.t, label %bb.g, label %.sink.split.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.u, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.g
  %i.v = shl nuw i64 %i.b, 2
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #35 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.invoke, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.f
  %.sink.i.i = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.f ]
  store ptr %.sink.i.i, ptr %1, align 8, !tbaa !94
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit97
  store i64 %i.b, ptr %i.q, align 8, !tbaa !112
  %sext186 = shl i64 %i.e, 32                     ; 3 uses
  %i.y = ashr exact i64 %sext186, 32              ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !112
  %.not.i.i99 = icmp eq i64 %i.y, %i.aa
  %.pre216.pre = load ptr, ptr %2, align 8, !tbaa !94 ; 2 uses
  br i1 %.not.i.i99, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef %.pre216.pre) #33
  %i.ab = icmp sgt i64 %i.y, 0
  br i1 %i.ab, label %bb.j, label %.sink.split.i.i100

bb.j:                                             ; preds = %bb.i
  %i.ac = lshr exact i64 %sext186, 30
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #35 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.invoke, label %.sink.split.i.i100

.invoke:                                          ; preds = %bb.j, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.g
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !119
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i.i100:                               ; preds = %bb.j, %bb.i
  %.sink.i.i101 = phi ptr [ %i.ad, %bb.j ], [ null, %bb.i ] ; 2 uses
  store ptr %.sink.i.i101, ptr %2, align 8, !tbaa !94
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i.i100, %bb.h
  %.pre = phi ptr [ %.sink.i.i101, %.sink.split.i.i100 ], [ %.pre216.pre, %bb.h ] ; 12 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !112
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
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !113
  store <4 x i32> %broadcast.splat, ptr %i.ao, align 4, !tbaa !113
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !552

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.loopexit190, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.l, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.pre, %bb.l ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.c, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !113
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.ah
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit190, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !553

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
  store <4 x i32> %i.aw, ptr %i.ay, align 4, !tbaa !113
  store <4 x i32> %i.ax, ptr %i.az, align 4, !tbaa !113
  %index.next241 = add nuw i64 %index240, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ba = icmp eq i64 %index.next241, %n.vec236
  br i1 %i.ba, label %middle.block242, label %vector.body239, !llvm.loop !554

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
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !113
  %i.be = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.be, %i.ar
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !555

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i, %middle.block242, %.loopexit190
  br i1 %i.g, label %.lr.ph193, label %._crit_edge202

.lr.ph193:                                        ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit
  %.not83 = icmp eq ptr %3, null                  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !135 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !127 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !133 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  %wide.trip.count209 = and i64 %i.b, 2147483647  ; 3 uses
  br i1 %i.bl, label %.lr.ph193.split.us, label %.lr.ph192.split

.lr.ph193.split.us:                               ; preds = %.lr.ph193, %._crit_edge.us
  %indvars.iv206 = phi i64 [ %indvars.iv.next219, %._crit_edge.us ], [ 0, %.lr.ph193 ] ; 4 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv206 to i32 ; 3 uses
  br i1 %.not83, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, label %bb.m

bb.m:                                             ; preds = %.lr.ph193.split.us
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv206
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !113
  %i.bp = sext i32 %i.bo to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %bb.m, %.lr.ph193.split.us
  %.058.us = phi i64 [ %i.bp, %bb.m ], [ %indvars.iv206, %.lr.ph193.split.us ]
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.058.us ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !113 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bq, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !113 ; 2 uses
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
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !113
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !113
  %.sroa.speculated.us.prol = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.cc)
  store i32 %.sroa.speculated.us.prol, ptr %i.cb, align 4, !tbaa !113
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
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !113
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !113
  %.sroa.speculated.us = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.ck)
  store i32 %.sroa.speculated.us, ptr %i.cj, align 4, !tbaa !113
  %i.cl = getelementptr [4 x i8], ptr %i.bg, i64 %.sroa.7115.0191.us
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !113
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !113
  %.sroa.speculated.us.1 = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.cq)
  store i32 %.sroa.speculated.us.1, ptr %i.cp, align 4, !tbaa !113
  %i.cr = add nsw i64 %.sroa.7115.0191.us, 2      ; 2 uses
  %exitcond205.not.1 = icmp eq i64 %i.cr, %i.bu
  br i1 %exitcond205.not.1, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !556

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count209
  br i1 %exitcond222.not, label %.lr.ph201, label %.lr.ph193.split.us, !llvm.loop !557

.lr.ph192.split:                                  ; preds = %.lr.ph193
  br i1 %.not83, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us194, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us194: ; preds = %.lr.ph192.split, %._crit_edge.us.a
  %indvars.iv212 = phi i64 [ %indvars.iv.next207, %._crit_edge.us.a ], [ 0, %.lr.ph192.split ] ; 4 uses
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv212
  %5 = load i32, ptr %4, align 4, !tbaa !113
  %6 = sext i32 %5 to i64                         ; 2 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv212
  %8 = load i32, ptr %7, align 4, !tbaa !113      ; 2 uses
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
  %14 = load i32, ptr %13, align 4, !tbaa !113
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr %.pre, i64 %15 ; 2 uses
  %17 = load i32, ptr %16, align 4, !tbaa !113
  %.sroa.speculated.us198 = tail call i32 @llvm.smin.i32(i32 %12, i32 %17)
  store i32 %.sroa.speculated.us198, ptr %16, align 4, !tbaa !113
  %18 = add nsw i64 %.sroa.7115.0190.us197, 1     ; 2 uses
  %19 = icmp slt i64 %18, %10
  br i1 %19, label %.lr.ph.us196, label %._crit_edge.us.a, !llvm.loop !556

._crit_edge.us.a:                                 ; preds = %.lr.ph.us196, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us194
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %.lr.ph201, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us194, !llvm.loop !557

.lr.ph201:                                        ; preds = %._crit_edge, %._crit_edge.us.a, %._crit_edge.us
  %i.cs = load ptr, ptr %1, align 8, !tbaa !94    ; 2 uses
  %.not = icmp eq ptr %3, null
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !135
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !127
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !133 ; 2 uses
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
  %21 = load i32, ptr %20, align 4, !tbaa !113
  %22 = sext i32 %21 to i64                       ; 2 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %22
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !113
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %22
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !113 ; 2 uses
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
  br i1 %exitcond.not, label %.lr.ph201, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, !llvm.loop !557

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.7115.0191 = phi i64 [ %i.dp, %.lr.ph ], [ %i.de, %.lr.ph.preheader ] ; 2 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %.sroa.7115.0191
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !113
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !113
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %23, i32 %i.do)
  store i32 %.sroa.speculated, ptr %i.dn, align 4, !tbaa !113
  %i.dp = add nsw i64 %.sroa.7115.0191, 1         ; 2 uses
  %i.dq = icmp slt i64 %i.dp, %i.di
  br i1 %i.dq, label %.lr.ph, label %._crit_edge, !llvm.loop !556

._crit_edge202:                                   ; preds = %._crit_edge199, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit
  tail call void @free(ptr noundef %.sroa.0129.0179) #33
  tail call void @free(ptr noundef %.sroa.0137.0164171178) #33
  ret i32 0

bb.o:                                             ; preds = %.lr.ph201, %._crit_edge199
  %indvars.iv211 = phi i64 [ 0, %.lr.ph201 ], [ %indvars.iv.next212, %._crit_edge199 ] ; 12 uses
  %i.dr = icmp sge i64 %indvars.iv211, %i.da      ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0129.0179, i64 %indvars.iv211
  %i.dt = trunc nuw nsw i64 %indvars.iv211 to i32 ; 5 uses
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !113
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0137.0164171178, i64 %indvars.iv211
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !113
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv211
  store i32 %i.c, ptr %i.dv, align 4, !tbaa !113
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv211
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !113
  %i.dy = sext i32 %i.dx to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.055 = phi i64 [ %i.dy, %bb.p ], [ %indvars.iv211, %bb.o ] ; 2 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %.055 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !113
  %i.eb = sext i32 %i.ea to i64                   ; 3 uses
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ec = getelementptr i8, ptr %i.dz, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !113
  %i.ee = sext i32 %i.ed to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107

bb.s:                                             ; preds = %bb.q
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.055
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !113
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
  br i1 %exitcond215.not, label %._crit_edge202, label %bb.o, !llvm.loop !558

.lr.ph198:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107, %bb.x
  %i.ek = phi i1 [ %i.fc, %bb.x ], [ %i.ej, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ]
  %.057197 = phi i32 [ %.2, %bb.x ], [ %i.dt, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ] ; 3 uses
  %.059196 = phi i1 [ %spec.select, %bb.x ], [ %i.dr, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ]
  %.sroa.7.0195 = phi i64 [ %i.fb, %bb.x ], [ %i.eb, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ] ; 2 uses
  br i1 %i.ek, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph198
  %i.el = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %.sroa.7.0195
  %i.em = load i32, ptr %i.el, align 4, !tbaa !113
  %i.en = sext i32 %i.em to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph198, %bb.t
  %.0 = phi i64 [ %i.en, %bb.t ], [ %indvars.iv211, %.lr.ph198 ] ; 2 uses
  %i.eo = icmp eq i64 %.0, %indvars.iv211
  %spec.select = select i1 %i.eo, i1 true, i1 %.059196 ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %.pre, i64 %.0
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !113 ; 2 uses
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %.not78 = icmp sgt i64 %indvars.iv211, %i.er
  br i1 %.not78, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %.014.in18.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %i.er
  %.01419.i = load i32, ptr %.014.in18.i, align 4, !tbaa !113 ; 3 uses
  %.pn20.i = sext i32 %.01419.i to i64            ; 2 uses
  %.0.in21.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %.pn20.i
  %.022.i = load i32, ptr %.0.in21.i, align 4, !tbaa !113 ; 2 uses
  %.not23.i = icmp eq i32 %.022.i, %.01419.i
  br i1 %.not23.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.i
  %.025.i = phi i32 [ %.0.i, %.lr.ph.i ], [ %.022.i, %bb.v ] ; 3 uses
  %.01524.i = phi i32 [ %.025.i, %.lr.ph.i ], [ %i.eq, %bb.v ]
  %i.es = sext i32 %.01524.i to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %i.es
  store i32 %.025.i, ptr %i.et, align 4, !tbaa !113
  %.pn16.i = sext i32 %.025.i to i64
  %.014.in.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %.pn16.i
  %.014.i = load i32, ptr %.014.in.i, align 4, !tbaa !113 ; 3 uses
  %.pn.i = sext i32 %.014.i to i64                ; 2 uses
  %.0.in.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %.pn.i
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !113 ; 2 uses
  %.not.i = icmp eq i32 %.0.i, %.014.i
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !559

.loopexit:                                        ; preds = %.lr.ph.i, %bb.v
  %.pre-phi = phi i64 [ %.pn20.i, %bb.v ], [ %.pn.i, %.lr.ph.i ]
  %.014.lcssa.i = phi i32 [ %.01419.i, %bb.v ], [ %.014.i, %.lr.ph.i ] ; 2 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %.sroa.0137.0164171178, i64 %.pre-phi ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !113 ; 2 uses
  %i.ew = zext i32 %i.ev to i64
  %.not79 = icmp eq i64 %indvars.iv211, %i.ew
  br i1 %.not79, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %i.ex = sext i32 %i.ev to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.ex
  store i32 %i.dt, ptr %i.ey, align 4, !tbaa !113
  %i.ez = sext i32 %.057197 to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %i.ez
  store i32 %.014.lcssa.i, ptr %i.fa, align 4, !tbaa !113
  store i32 %i.dt, ptr %i.eu, align 4, !tbaa !113
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %bb.w, %bb.u
  %.2 = phi i32 [ %.057197, %bb.u ], [ %.014.lcssa.i, %bb.w ], [ %.057197, %.loopexit ]
  %i.fb = add nsw i64 %.sroa.7.0195, 1            ; 2 uses
  %i.fc = icmp sge i64 %i.fb, %.sink.i106         ; 2 uses
  %.not188 = select i1 %i.fc, i1 %spec.select, i1 false
  br i1 %.not188, label %._crit_edge199, label %.lr.ph198, !llvm.loop !560

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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !182
  %.not.i = icmp eq i64 %1, %i.b
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !165
  tail call void @free(ptr noundef %i.c) #33
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %bb.c, label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.e, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.c
  %i.g = shl nuw i64 %1, 3
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #35 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.b
  %.sink.i = phi ptr [ %i.h, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.b ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !165
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %bb.a, %.sink.split.i
  store i64 %1, ptr %i.a, align 8, !tbaa !182
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !113  ; 2 uses
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
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !130
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %.sroa.8.037
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !113
  %i.ea = sext i32 %i.dz to i64
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi0EiE6insertEll(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %i.ea, i64 noundef %.040)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE18insertByOuterInnerEll.exit unwind label %bb.k

_ZN5Eigen12SparseMatrixIdLi0EiE18insertByOuterInnerEll.exit: ; preds = %.lr.ph38
  store double %i.dx, ptr %i.eb, align 8, !tbaa !130
  %i.ec = add nsw i64 %.sroa.8.037, 1             ; 2 uses
  %exitcond44.not = icmp eq i64 %i.ec, %.sink.i
  br i1 %exitcond44.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.loopexit, label %.lr.ph38, !llvm.loop !619

bb.l:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit._crit_edge
  %i.ed = load ptr, ptr %4, align 8, !tbaa !94
  call void @free(ptr noundef %i.ed) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.ee = load ptr, ptr %i.g, align 8, !tbaa !127
  call void @free(ptr noundef %i.ee) #33
  %i.ef = load ptr, ptr %i.m, align 8, !tbaa !133
  call void @free(ptr noundef %i.ef) #33
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !134 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.eh) #34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !135 ; 2 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.ek) #34
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
  %i.en = load ptr, ptr %4, align 8, !tbaa !94
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39   ; 12 uses
  %i.f = shl i64 %i.e, 2                          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #35 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !133
  %.not80 = icmp eq ptr %i.g, null
  br i1 %.not80, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %.preheader
  %i.i = load ptr, ptr %1, align 8, !tbaa !94     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !127  ; 4 uses
  %xtraiter153 = and i64 %i.e, 1
  %i.l = icmp eq i64 %i.e, 1
  br i1 %i.l, label %.epil.preheader152, label %.lr.ph106.new

.lr.ph106.new:                                    ; preds = %.lr.ph106
  %unroll_iter157 = and i64 %i.e, 9223372036854775806
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
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
  store i32 %.077103.epil.init, ptr %i.n, align 4, !tbaa !113
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.076104.epil.init
  %i.p = load i32, ptr %i.o, align 4, !tbaa !113
  %i.q = sext i32 %i.p to i64
  %i.r = add nsw i64 %.070105.epil.init, %i.q
  br label %._crit_edge107

._crit_edge107:                                   ; preds = %.epil.preheader152, %._crit_edge107.loopexit.unr-lcssa, %.preheader
  %.070.lcssa = phi i64 [ 0, %.preheader ], [ %i.ba, %._crit_edge107.loopexit.unr-lcssa ], [ %i.r, %.epil.preheader152 ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %.070.lcssa)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !127  ; 3 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !39   ; 4 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = icmp sgt i64 %i.v, 0
  %i.y = load i32, ptr %i.w, align 4, !tbaa !113  ; 2 uses
  br i1 %i.x, label %.lr.ph117, label %._crit_edge118._crit_edge

.lr.ph117:                                        ; preds = %._crit_edge107
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !133
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph106.new
  %.070105 = phi i64 [ 0, %.lr.ph106.new ], [ %i.ba, %bb.d ]
  %.076104 = phi i64 [ 0, %.lr.ph106.new ], [ %i.ar, %bb.d ] ; 5 uses
  %.077103 = phi i32 [ 0, %.lr.ph106.new ], [ %i.ay, %bb.d ] ; 2 uses
  %niter158 = phi i64 [ 0, %.lr.ph106.new ], [ %niter158.next.1, %bb.d ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076104
  store i32 %.077103, ptr %i.ab, align 4, !tbaa !113
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.076104
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !113 ; 2 uses
  %i.ae = or disjoint i64 %.076104, 1             ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !113
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.076104
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !113
  %i.aj = add i32 %i.ad, %.077103
  %i.ak = add i32 %i.aj, %i.ag
  %i.al = sub i32 %i.ak, %i.ai                    ; 2 uses
  %i.am = sext i32 %i.ad to i64
  %i.an = add nsw i64 %.070105, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ae
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !113
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ae
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !113 ; 2 uses
  %i.ar = add nuw nsw i64 %.076104, 2             ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !113
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ae
  %i.av = load i32, ptr %i.au, align 4, !tbaa !113
  %i.aw = add i32 %i.aq, %i.al
  %i.ax = add i32 %i.aw, %i.at
  %i.ay = sub i32 %i.ax, %i.av                    ; 2 uses
  %i.az = sext i32 %i.aq to i64
  %i.ba = add nsw i64 %i.an, %i.az                ; 3 uses
  %niter158.next.1 = add nuw nsw i64 %niter158, 2 ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %._crit_edge107.loopexit.unr-lcssa, label %bb.d, !llvm.loop !620

bb.e:                                             ; preds = %.lr.ph117, %._crit_edge112
  %.074115.in = phi i64 [ %i.v, %.lr.ph117 ], [ %.074115, %._crit_edge112 ] ; 2 uses
  %.075114 = phi i32 [ %i.y, %.lr.ph117 ], [ %i.cc, %._crit_edge112 ]
  %.074115 = add nsw i64 %.074115.in, -1          ; 5 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.074115 ; 5 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !113 ; 4 uses
  %i.bd = sub nsw i32 %.075114, %i.bc             ; 4 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph111, label %.._crit_edge112_crit_edge

.._crit_edge112_crit_edge:                        ; preds = %bb.e
  %.phi.trans.insert123 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074115
  %.pre124 = load i32, ptr %.phi.trans.insert123, align 4, !tbaa !113
  br label %._crit_edge112

.lr.ph111:                                        ; preds = %bb.e
  %i.bf = add nsw i32 %i.bd, -1                   ; 2 uses
  %i.bg = zext nneg i32 %i.bf to i64              ; 4 uses
  %i.bh = load ptr, ptr %i.z, align 8, !tbaa !135 ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074115 ; 4 uses
  %i.bj = load ptr, ptr %i.s, align 8, !tbaa !134 ; 3 uses
  %.pre122 = load i32, ptr %i.bi, align 4, !tbaa !113 ; 2 uses
  %i.bk = and i32 %i.bd, 1
  %lcmp.mod162.not = icmp eq i32 %i.bk, 0
  br i1 %lcmp.mod162.not, label %.prol.loopexit160, label %.prol.loopexit160.unr-lcssa

.prol.loopexit160.unr-lcssa:                      ; preds = %.lr.ph111
  %i.bl = sext i32 %i.bc to i64
  %i.bm = getelementptr [4 x i8], ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bn = getelementptr [4 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !113
  %i.bp = sext i32 %.pre122 to i64
  %i.bq = getelementptr [4 x i8], ptr %i.bm, i64 %i.bp
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !113
  %i.br = load i32, ptr %i.bb, align 4, !tbaa !113 ; 3 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr %i.bj, i64 %i.bg ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !130
  %i.bw = load i32, ptr %i.bi, align 4, !tbaa !113 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr [8 x i8], ptr %i.bt, i64 %i.bx
  store double %i.bv, ptr %i.by, align 8, !tbaa !130
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
  store i32 %i.cb, ptr %i.bb, align 4, !tbaa !113
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.074115
  store i32 %i.bd, ptr %i.cd, align 4, !tbaa !113
  %i.ce = icmp samesign ugt i64 %.074115.in, 1
  br i1 %i.ce, label %bb.e, label %._crit_edge118, !llvm.loop !621

.lr.ph111.new:                                    ; preds = %.prol.loopexit160, %.lr.ph111.new
  %i.cf = phi i32 [ %i.dh, %.lr.ph111.new ], [ %.unr163, %.prol.loopexit160 ]
  %i.cg = phi i32 [ %i.dc, %.lr.ph111.new ], [ %.unr164, %.prol.loopexit160 ]
  %.073109 = phi i64 [ %i.dk, %.lr.ph111.new ], [ %.073109.unr, %.prol.loopexit160 ] ; 4 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr [4 x i8], ptr %i.bh, i64 %.073109 ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !113
  %i.cl = sext i32 %i.cf to i64
  %i.cm = getelementptr [4 x i8], ptr %i.ci, i64 %i.cl
  store i32 %i.ck, ptr %i.cm, align 4, !tbaa !113
  %i.cn = load i32, ptr %i.bb, align 4, !tbaa !113 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [8 x i8], ptr %i.bj, i64 %.073109 ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !130
  %i.cs = load i32, ptr %i.bi, align 4, !tbaa !113 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr [8 x i8], ptr %i.cp, i64 %i.ct
  store double %i.cr, ptr %i.cu, align 8, !tbaa !130
  %i.cv = add nsw i64 %.073109, -1                ; 3 uses
  %i.cw = sext i32 %i.cn to i64
  %i.cx = getelementptr [4 x i8], ptr %i.bh, i64 %i.cv ; 2 uses
  %i.cy = getelementptr [4 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !113
  %i.da = sext i32 %i.cs to i64
  %i.db = getelementptr [4 x i8], ptr %i.cx, i64 %i.da
  store i32 %i.cz, ptr %i.db, align 4, !tbaa !113
  %i.dc = load i32, ptr %i.bb, align 4, !tbaa !113 ; 3 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr [8 x i8], ptr %i.bj, i64 %i.cv ; 2 uses
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.dd
  %i.dg = load double, ptr %i.df, align 8, !tbaa !130
  %i.dh = load i32, ptr %i.bi, align 4, !tbaa !113 ; 3 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr [8 x i8], ptr %i.de, i64 %i.di
  store double %i.dg, ptr %i.dj, align 8, !tbaa !130
  %i.dk = add nsw i64 %.073109, -2
  %.not140.1 = icmp eq i64 %i.cv, 0
  br i1 %.not140.1, label %._crit_edge112, label %.lr.ph111.new, !llvm.loop !622

._crit_edge118:                                   ; preds = %._crit_edge112
  %i.dl = add nsw i64 %i.v, -1                    ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !113
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dl
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !113
  %i.dr = add nsw i32 %i.dq, %i.dn
  %i.ds = load ptr, ptr %1, align 8, !tbaa !94
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dl
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !113
  %i.dv = add nsw i32 %i.dr, %i.du                ; 2 uses
  store i32 %i.dv, ptr %i.w, align 4, !tbaa !113
  br label %._crit_edge118._crit_edge

._crit_edge118._crit_edge:                        ; preds = %._crit_edge107, %._crit_edge118
  %i.dw = phi i32 [ %i.dv, %._crit_edge118 ], [ %i.y, %._crit_edge107 ]
  %i.dx = sext i32 %i.dw to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.dx, double noundef 0.000000e+00)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.dy = add i64 %i.f, 4
  %i.dz = tail call noalias ptr @malloc(i64 noundef %i.dy) #35 ; 7 uses
  %.not = icmp eq ptr %i.dz, null
  br i1 %.not, label %bb.g, label %.preheader92

.preheader92:                                     ; preds = %bb.f
  %i.ea = icmp sgt i64 %i.e, 0
  br i1 %i.ea, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader92
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !127 ; 4 uses
  %i.ed = load ptr, ptr %1, align 8, !tbaa !94    ; 3 uses
  %.pre = load i32, ptr %i.ec, align 4, !tbaa !113 ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.ee = icmp eq i64 %i.e, 1
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 9223372036854775806
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ef = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ef, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.ef, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
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
  store i32 %.07293.epil.init, ptr %i.eg, align 4, !tbaa !113
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.07194.epil.init
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !113
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07194.epil.init
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !113 ; 2 uses
  %i.em = add i32 %.epil.init, %i.el
  %i.en = sub i32 %i.ej, %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.07194.epil.init
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !113
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 %i.en)
  %i.eq = add i32 %i.el, %.07293.epil.init
  %i.er = add i32 %i.eq, %.sroa.speculated.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader92
  %.072.lcssa = phi i32 [ 0, %.preheader92 ], [ %i.fy, %._crit_edge.loopexit.unr-lcssa ], [ %i.er, %.epil.preheader ] ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.e
  store i32 %.072.lcssa, ptr %i.es, align 4, !tbaa !113
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eu = sext i32 %.072.lcssa to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 noundef %i.eu, double noundef 0.000000e+00)
  %i.ev = load i64, ptr %i.d, align 8, !tbaa !39  ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, 0
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !167 ; 2 uses
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
  store i32 %.07293, ptr %i.fb, align 4, !tbaa !113
  %i.fc = or disjoint i64 %.07194, 1              ; 4 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !113 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07194
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !113 ; 2 uses
  %i.fh = add i32 %i.fa, %i.fg
  %i.fi = sub i32 %i.fe, %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.07194
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !113
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.fk, i32 %i.fi)
  %i.fl = add i32 %i.fg, %.07293
  %i.fm = add i32 %i.fl, %.sroa.speculated        ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.fc
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !113
  %i.fo = add nuw nsw i64 %.07194, 2              ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !113 ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fc
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !113 ; 2 uses
  %i.ft = add i32 %i.fe, %i.fs
  %i.fu = sub i32 %i.fq, %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.fc
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !113
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.fw, i32 %i.fu)
  %i.fx = add i32 %i.fs, %i.fm
  %i.fy = add i32 %i.fx, %.sroa.speculated.1      ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !623

._crit_edge102:                                   ; preds = %.loopexit, %._crit_edge
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dz, ptr %i.fz, align 8, !tbaa !167
  tail call void @free(ptr noundef %i.ey) #33
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph101, %.loopexit
  %.06999.in = phi i64 [ %i.ev, %.lr.ph101 ], [ %.06999, %.loopexit ] ; 2 uses
  %.06999 = add nsw i64 %.06999.in, -1            ; 4 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.06999
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !113 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.06999 ; 4 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !113 ; 3 uses
  %i.ge = icmp sgt i32 %i.gb, %i.gd
  br i1 %i.ge, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %.06999
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !113 ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %.lr.ph97, label %.loopexit

.lr.ph97:                                         ; preds = %bb.j
  %i.gj = add nsw i32 %i.gh, -1                   ; 2 uses
  %i.gk = zext nneg i32 %i.gj to i64              ; 4 uses
  %i.gl = load ptr, ptr %i.ez, align 8, !tbaa !135 ; 3 uses
  %i.gm = load ptr, ptr %i.et, align 8, !tbaa !134 ; 3 uses
  %i.gn = sext i32 %i.gb to i64                   ; 6 uses
  %i.go = and i32 %i.gh, 1
  %lcmp.mod150.not = icmp eq i32 %i.go, 0
  br i1 %lcmp.mod150.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph97
  %i.gp = sext i32 %i.gd to i64
  %i.gq = getelementptr [4 x i8], ptr %i.gl, i64 %i.gk ; 2 uses
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %i.gp
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !113
  %i.gt = getelementptr [4 x i8], ptr %i.gq, i64 %i.gn
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !113
  %i.gu = load i32, ptr %i.gc, align 4, !tbaa !113 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr [8 x i8], ptr %i.gm, i64 %i.gk ; 2 uses
  %i.gx = getelementptr [8 x i8], ptr %i.gw, i64 %i.gv
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !130
  %i.gz = getelementptr [8 x i8], ptr %i.gw, i64 %i.gn
  store double %i.gy, ptr %i.gz, align 8, !tbaa !130
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
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !113
  %i.hh = getelementptr [4 x i8], ptr %i.he, i64 %i.gn
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !113
  %i.hi = load i32, ptr %i.gc, align 4, !tbaa !113 ; 2 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr [8 x i8], ptr %i.gm, i64 %.095 ; 2 uses
  %i.hl = getelementptr [8 x i8], ptr %i.hk, i64 %i.hj
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !130
  %i.hn = getelementptr [8 x i8], ptr %i.hk, i64 %i.gn
  store double %i.hm, ptr %i.hn, align 8, !tbaa !130
  %i.ho = add nsw i64 %.095, -1                   ; 3 uses
  %i.hp = sext i32 %i.hi to i64
  %i.hq = getelementptr [4 x i8], ptr %i.gl, i64 %i.ho ; 2 uses
  %i.hr = getelementptr [4 x i8], ptr %i.hq, i64 %i.hp
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !113
  %i.ht = getelementptr [4 x i8], ptr %i.hq, i64 %i.gn
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !113
  %i.hu = load i32, ptr %i.gc, align 4, !tbaa !113 ; 2 uses
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr [8 x i8], ptr %i.gm, i64 %i.ho ; 2 uses
  %i.hx = getelementptr [8 x i8], ptr %i.hw, i64 %i.hv
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !130
  %i.hz = getelementptr [8 x i8], ptr %i.hw, i64 %i.gn
  store double %i.hy, ptr %i.hz, align 8, !tbaa !130
  %i.ia = add nsw i64 %.095, -2
  %.not139.1 = icmp eq i64 %i.ho, 0
  br i1 %.not139.1, label %.loopexit, label %.lr.ph97.new, !llvm.loop !624

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph97.new, %bb.j, %bb.i
  %i.ib = icmp samesign ugt i64 %.06999.in, 1
  br i1 %i.ib, label %bb.i, label %._crit_edge102, !llvm.loop !625

bb.k:                                             ; preds = %._crit_edge102, %._crit_edge118._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi0EiE6insertEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::CwiseNullaryOp.232", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.loopexit78

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !127  ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39   ; 11 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !113
  %i.j = load i32, ptr %i.e, align 4, !tbaa !113
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !179
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !102
  %i.r = shl nsw i64 %i.q, 1
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.r)
  %.pre = load i64, ptr %i.f, align 8, !tbaa !39
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i64 [ %.pre, %bb.c ], [ %i.g, %bb.b ] ; 6 uses
  %i.t = shl i64 %i.s, 2
  %calloc = tail call ptr @calloc(i64 1, i64 %i.t) ; 5 uses
  store ptr %calloc, ptr %i.a, align 8, !tbaa !133
  %.not69 = icmp eq ptr %calloc, null
  br i1 %.not69, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.l, align 8, !tbaa !179
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %.not7081 = icmp slt i64 %i.s, 1
  br i1 %.not7081, label %.loopexit78, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.f
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !127  ; 2 uses
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
  store <4 x i32> %broadcast.splat, ptr %i.aa, align 4, !tbaa !113
  store <4 x i32> %broadcast.splat, ptr %i.ab, align 4, !tbaa !113
  %index.next134 = add nuw i64 %index133, 8       ; 2 uses
  %i.ac = icmp eq i64 %index.next134, %n.vec131
  br i1 %i.ac, label %middle.block135, label %vector.body132, !llvm.loop !626

middle.block135:                                  ; preds = %vector.body132
  %cmp.n136 = icmp eq i64 %i.s, %n.vec131
  br i1 %cmp.n136, label %.loopexit78, label %scalar.ph128.preheader

scalar.ph128.preheader:                           ; preds = %.lr.ph83, %middle.block135
  %.06682.ph = phi i64 [ 1, %.lr.ph83 ], [ %i.y, %middle.block135 ]
  br label %scalar.ph128

scalar.ph128:                                     ; preds = %scalar.ph128.preheader, %scalar.ph128
  %.06682 = phi i64 [ %i.ae, %scalar.ph128 ], [ %.06682.ph, %scalar.ph128.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.06682
  store i32 %i.w, ptr %i.ad, align 4, !tbaa !113
  %i.ae = add nuw i64 %.06682, 1
  %exitcond99.not = icmp eq i64 %.06682, %i.s
  br i1 %exitcond99.not, label %.loopexit78, label %scalar.ph128, !llvm.loop !627

bb.g:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.af = shl i64 %i.g, 2
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.af) #35 ; 14 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !133
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
  store i32 %i.ev, ptr %i.fk, align 4, !tbaa !113
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph86.1
  %i.fo = add i64 %.06285, 2
  %exitcond100.not.1 = icmp eq i64 %i.fj, %i.ex
  br i1 %exitcond100.not.1, label %.loopexit77, label %.lr.ph86, !llvm.loop !636

.loopexit77:                                      ; preds = %.lr.ph86.prol.loopexit, %bb.x, %..loopexit77_crit_edge, %bb.t
  %i.fp = phi ptr [ %.pre103, %..loopexit77_crit_edge ], [ %.pre104, %bb.t ], [ %.pre104, %bb.x ], [ %.pre104, %.lr.ph86.prol.loopexit ]
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %2
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !113 ; 3 uses
  %i.fs = sext i32 %i.fr to i64
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %2
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !113
  %i.fw = add i32 %i.fr, -1
  %i.fx = add i32 %i.fw, %i.fv                    ; 2 uses
  %i.fy = sext i32 %i.fx to i64                   ; 2 uses
  %i.fz = icmp sgt i32 %i.fx, %i.fr
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !135 ; 3 uses
  br i1 %i.fz, label %.lr.ph88, label %.critedge2

.lr.ph88:                                         ; preds = %.loopexit77, %bb.y
  %.087 = phi i64 [ %i.gc, %bb.y ], [ %i.fy, %.loopexit77 ] ; 4 uses
  %i.gc = add nsw i64 %.087, -1                   ; 5 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !113 ; 2 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp slt i64 %1, %i.gf
  br i1 %i.gg, label %bb.y, label %.critedge2

bb.y:                                             ; preds = %.lr.ph88
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %.087
  store i32 %i.ge, ptr %i.gh, align 4, !tbaa !113
  %i.gi = load ptr, ptr %i.ch, align 8, !tbaa !134 ; 2 uses
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gc
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !130
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %.087
  store double %i.gk, ptr %i.gl, align 8, !tbaa !130
  %i.gm = icmp sgt i64 %i.gc, %i.fs
  br i1 %i.gm, label %.lr.ph88, label %.critedge2, !llvm.loop !637

.critedge2:                                       ; preds = %.lr.ph88, %bb.y, %.loopexit77
  %.0.lcssa = phi i64 [ %i.fy, %.loopexit77 ], [ %i.gc, %bb.y ], [ %.087, %.lr.ph88 ] ; 2 uses
  %i.gn = trunc i64 %1 to i32
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %.0.lcssa
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !113
  %i.gp = load ptr, ptr %i.ch, align 8, !tbaa !134
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %.0.lcssa ; 2 uses
  store double 0.000000e+00, ptr %i.gq, align 8, !tbaa !130
  br label %bb.ac

bb.z:                                             ; preds = %._crit_edge, %bb.r
  %i.gr = phi i64 [ %.pre102, %._crit_edge ], [ %i.eq, %bb.r ]
  %.not71 = icmp eq i64 %i.gr, %i.cj
  br i1 %.not71, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 noundef %i.cj, double noundef 0.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !39
  store i64 %i.gt, ptr %3, align 8, !tbaa !159, !alias.scope !644
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 2, ptr %i.gu, align 4, !tbaa !192, !alias.scope !644
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39   ; 13 uses
  %i.f = shl i64 %i.e, 2                          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #35 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !133
  %.not80 = icmp eq ptr %i.g, null
  br i1 %.not80, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !192  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !127  ; 4 uses
  %i.m = sext i32 %i.j to i64
  %xtraiter152 = and i64 %i.e, 1
  %i.n = icmp eq i64 %i.e, 1
  br i1 %i.n, label %.epil.preheader151, label %.lr.ph108.new

.lr.ph108.new:                                    ; preds = %.lr.ph108
  %unroll_iter155 = and i64 %i.e, 9223372036854775806
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
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
  store i32 %.077105.epil.init, ptr %i.p, align 4, !tbaa !113
  br label %._crit_edge109.loopexit

._crit_edge109.loopexit:                          ; preds = %._crit_edge109.loopexit.unr-lcssa, %.epil.preheader151
  %i.q = mul i64 %i.e, %i.m
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %._crit_edge109.loopexit, %.preheader
  %.070.lcssa = phi i64 [ 0, %.preheader ], [ %i.q, %._crit_edge109.loopexit ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %.070.lcssa)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !127  ; 3 uses
  %i.u = load i64, ptr %i.d, align 8, !tbaa !39   ; 4 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.w = icmp sgt i64 %i.u, 0
  %i.x = load i32, ptr %i.v, align 4, !tbaa !113  ; 2 uses
  br i1 %i.w, label %.lr.ph119, label %._crit_edge120._crit_edge

.lr.ph119:                                        ; preds = %._crit_edge109
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !133
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph108.new
  %.076106 = phi i64 [ 0, %.lr.ph108.new ], [ %i.ak, %bb.d ] ; 4 uses
  %.077105 = phi i32 [ 0, %.lr.ph108.new ], [ %i.ar, %bb.d ] ; 2 uses
  %niter156 = phi i64 [ 0, %.lr.ph108.new ], [ %niter156.next.1, %bb.d ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076106
  store i32 %.077105, ptr %i.aa, align 4, !tbaa !113
  %i.ab = or disjoint i64 %.076106, 1             ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !113
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.076106
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !113
  %i.ag = add i32 %i.j, %.077105
  %i.ah = add i32 %i.ag, %i.ad
  %i.ai = sub i32 %i.ah, %i.af                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ab
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !113
  %i.ak = add nuw nsw i64 %.076106, 2             ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !113
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ab
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !113
  %i.ap = add i32 %i.j, %i.ai
  %i.aq = add i32 %i.ap, %i.am
  %i.ar = sub i32 %i.aq, %i.ao                    ; 2 uses
  %niter156.next.1 = add nuw nsw i64 %niter156, 2 ; 2 uses
  %niter156.ncmp.1 = icmp eq i64 %niter156.next.1, %unroll_iter155
  br i1 %niter156.ncmp.1, label %._crit_edge109.loopexit.unr-lcssa, label %bb.d, !llvm.loop !645

bb.e:                                             ; preds = %.lr.ph119, %._crit_edge114
  %.074117.in = phi i64 [ %i.u, %.lr.ph119 ], [ %.074117, %._crit_edge114 ] ; 2 uses
  %.075116 = phi i32 [ %i.x, %.lr.ph119 ], [ %i.bt, %._crit_edge114 ]
  %.074117 = add nsw i64 %.074117.in, -1          ; 5 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.074117 ; 5 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !113 ; 4 uses
  %i.au = sub nsw i32 %.075116, %i.at             ; 4 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph113, label %.._crit_edge114_crit_edge

.._crit_edge114_crit_edge:                        ; preds = %bb.e
  %.phi.trans.insert125 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117
  %.pre126 = load i32, ptr %.phi.trans.insert125, align 4, !tbaa !113
  br label %._crit_edge114

.lr.ph113:                                        ; preds = %bb.e
  %i.aw = add nsw i32 %i.au, -1                   ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64              ; 4 uses
  %i.ay = load ptr, ptr %i.y, align 8, !tbaa !135 ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117 ; 4 uses
  %i.ba = load ptr, ptr %i.r, align 8, !tbaa !134 ; 3 uses
  %.pre124 = load i32, ptr %i.az, align 4, !tbaa !113 ; 2 uses
  %i.bb = and i32 %i.au, 1
  %lcmp.mod160.not = icmp eq i32 %i.bb, 0
  br i1 %lcmp.mod160.not, label %.prol.loopexit158, label %.prol.loopexit158.unr-lcssa

.prol.loopexit158.unr-lcssa:                      ; preds = %.lr.ph113
  %i.bc = sext i32 %i.at to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ay, i64 %i.ax ; 2 uses
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !113
  %i.bg = sext i32 %.pre124 to i64
  %i.bh = getelementptr [4 x i8], ptr %i.bd, i64 %i.bg
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !113
  %i.bi = load i32, ptr %i.as, align 4, !tbaa !113 ; 3 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr [8 x i8], ptr %i.ba, i64 %i.ax ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !130
  %i.bn = load i32, ptr %i.az, align 4, !tbaa !113 ; 3 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr [8 x i8], ptr %i.bk, i64 %i.bo
  store double %i.bm, ptr %i.bp, align 8, !tbaa !130
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
  store i32 %i.bs, ptr %i.as, align 4, !tbaa !113
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.074117
  store i32 %i.au, ptr %i.bu, align 4, !tbaa !113
  %i.bv = icmp samesign ugt i64 %.074117.in, 1
  br i1 %i.bv, label %bb.e, label %._crit_edge120, !llvm.loop !646

.lr.ph113.new:                                    ; preds = %.prol.loopexit158, %.lr.ph113.new
  %i.bw = phi i32 [ %i.cy, %.lr.ph113.new ], [ %.unr161, %.prol.loopexit158 ]
  %i.bx = phi i32 [ %i.ct, %.lr.ph113.new ], [ %.unr162, %.prol.loopexit158 ]
  %.073111 = phi i64 [ %i.db, %.lr.ph113.new ], [ %.073111.unr, %.prol.loopexit158 ] ; 4 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr [4 x i8], ptr %i.ay, i64 %.073111 ; 2 uses
  %i.ca = getelementptr [4 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !113
  %i.cc = sext i32 %i.bw to i64
  %i.cd = getelementptr [4 x i8], ptr %i.bz, i64 %i.cc
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !113
  %i.ce = load i32, ptr %i.as, align 4, !tbaa !113 ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr [8 x i8], ptr %i.ba, i64 %.073111 ; 2 uses
  %i.ch = getelementptr [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !130
  %i.cj = load i32, ptr %i.az, align 4, !tbaa !113 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr [8 x i8], ptr %i.cg, i64 %i.ck
  store double %i.ci, ptr %i.cl, align 8, !tbaa !130
  %i.cm = add nsw i64 %.073111, -1                ; 3 uses
  %i.cn = sext i32 %i.ce to i64
  %i.co = getelementptr [4 x i8], ptr %i.ay, i64 %i.cm ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.co, i64 %i.cn
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !113
  %i.cr = sext i32 %i.cj to i64
  %i.cs = getelementptr [4 x i8], ptr %i.co, i64 %i.cr
  store i32 %i.cq, ptr %i.cs, align 4, !tbaa !113
  %i.ct = load i32, ptr %i.as, align 4, !tbaa !113 ; 3 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr [8 x i8], ptr %i.ba, i64 %i.cm ; 2 uses
  %i.cw = getelementptr [8 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !130
  %i.cy = load i32, ptr %i.az, align 4, !tbaa !113 ; 3 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr [8 x i8], ptr %i.cv, i64 %i.cz
  store double %i.cx, ptr %i.da, align 8, !tbaa !130
  %i.db = add nsw i64 %.073111, -2
  %.not141.1 = icmp eq i64 %i.cm, 0
  br i1 %.not141.1, label %._crit_edge114, label %.lr.ph113.new, !llvm.loop !647

._crit_edge120:                                   ; preds = %._crit_edge114
  %i.dc = add nsw i64 %i.u, -1                    ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !113
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dc
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !113
  %i.di = add nsw i32 %i.dh, %i.de
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !192
  %i.dl = add nsw i32 %i.di, %i.dk                ; 2 uses
  store i32 %i.dl, ptr %i.v, align 4, !tbaa !113
  br label %._crit_edge120._crit_edge

._crit_edge120._crit_edge:                        ; preds = %._crit_edge109, %._crit_edge120
  %i.dm = phi i32 [ %i.dl, %._crit_edge120 ], [ %i.x, %._crit_edge109 ]
  %i.dn = sext i32 %i.dm to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %i.dn, double noundef 0.000000e+00)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.do = add i64 %i.f, 4
  %i.dp = tail call noalias ptr @malloc(i64 noundef %i.do) #35 ; 7 uses
  %.not = icmp eq ptr %i.dp, null
  br i1 %.not, label %bb.g, label %.preheader94

.preheader94:                                     ; preds = %bb.f
  %i.dq = icmp sgt i64 %i.e, 0
  br i1 %i.dq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader94
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !127 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !192 ; 3 uses
  %.pre = load i32, ptr %i.ds, align 4, !tbaa !113 ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.dv = icmp eq i64 %i.e, 1
  br i1 %i.dv, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 9223372036854775806
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dw = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dw, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.dw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
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
  store i32 %.07295.epil.init, ptr %i.dx, align 4, !tbaa !113
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.07196.epil.init
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !113
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07196.epil.init
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !113 ; 2 uses
  %i.ed = add i32 %.epil.init, %i.ec
  %i.ee = sub i32 %i.ea, %i.ed
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %i.du, i32 %i.ee)
  %i.ef = add i32 %i.ec, %.07295.epil.init
  %i.eg = add i32 %i.ef, %.sroa.speculated.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader94
  %.072.lcssa = phi i32 [ 0, %.preheader94 ], [ %i.fj, %._crit_edge.loopexit.unr-lcssa ], [ %i.eg, %.epil.preheader ] ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.e
  store i32 %.072.lcssa, ptr %i.eh, align 4, !tbaa !113
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ej = sext i32 %.072.lcssa to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, i64 noundef %i.ej, double noundef 0.000000e+00)
  %i.ek = load i64, ptr %i.d, align 8, !tbaa !39  ; 2 uses
  %i.el = icmp sgt i64 %i.ek, 0
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !167 ; 2 uses
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
  store i32 %.07295, ptr %i.eq, align 4, !tbaa !113
  %i.er = or disjoint i64 %.07196, 1              ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !113 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07196
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !113 ; 2 uses
  %i.ew = add i32 %i.ep, %i.ev
  %i.ex = sub i32 %i.et, %i.ew
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.du, i32 %i.ex)
  %i.ey = add i32 %i.ev, %.07295
  %i.ez = add i32 %i.ey, %.sroa.speculated        ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.er
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !113
  %i.fb = add nuw nsw i64 %.07196, 2              ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !113 ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.er
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !113 ; 2 uses
  %i.fg = add i32 %i.et, %i.ff
  %i.fh = sub i32 %i.fd, %i.fg
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.du, i32 %i.fh)
  %i.fi = add i32 %i.ff, %i.ez
  %i.fj = add i32 %i.fi, %.sroa.speculated.1      ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !648

._crit_edge104:                                   ; preds = %.loopexit, %._crit_edge
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dp, ptr %i.fk, align 8, !tbaa !167
  tail call void @free(ptr noundef %i.en) #33
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph103, %.loopexit
  %.069101.in = phi i64 [ %i.ek, %.lr.ph103 ], [ %.069101, %.loopexit ] ; 2 uses
  %.069101 = add nsw i64 %.069101.in, -1          ; 4 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.069101
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !113 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %.069101 ; 4 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !113 ; 3 uses
  %i.fp = icmp sgt i32 %i.fm, %i.fo
  br i1 %i.fp, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.fq = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %.069101
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !113 ; 3 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph99, label %.loopexit

.lr.ph99:                                         ; preds = %bb.j
  %i.fu = add nsw i32 %i.fs, -1                   ; 2 uses
  %i.fv = zext nneg i32 %i.fu to i64              ; 4 uses
  %i.fw = load ptr, ptr %i.eo, align 8, !tbaa !135 ; 3 uses
  %i.fx = load ptr, ptr %i.ei, align 8, !tbaa !134 ; 3 uses
  %i.fy = sext i32 %i.fm to i64                   ; 6 uses
  %i.fz = and i32 %i.fs, 1
  %lcmp.mod149.not = icmp eq i32 %i.fz, 0
  br i1 %lcmp.mod149.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph99
  %i.ga = sext i32 %i.fo to i64
  %i.gb = getelementptr [4 x i8], ptr %i.fw, i64 %i.fv ; 2 uses
  %i.gc = getelementptr [4 x i8], ptr %i.gb, i64 %i.ga
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !113
  %i.ge = getelementptr [4 x i8], ptr %i.gb, i64 %i.fy
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !113
  %i.gf = load i32, ptr %i.fn, align 4, !tbaa !113 ; 2 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr [8 x i8], ptr %i.fx, i64 %i.fv ; 2 uses
  %i.gi = getelementptr [8 x i8], ptr %i.gh, i64 %i.gg
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !130
  %i.gk = getelementptr [8 x i8], ptr %i.gh, i64 %i.fy
  store double %i.gj, ptr %i.gk, align 8, !tbaa !130
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
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !113
  %i.gs = getelementptr [4 x i8], ptr %i.gp, i64 %i.fy
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !113
  %i.gt = load i32, ptr %i.fn, align 4, !tbaa !113 ; 2 uses
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr [8 x i8], ptr %i.fx, i64 %.097 ; 2 uses
  %i.gw = getelementptr [8 x i8], ptr %i.gv, i64 %i.gu
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !130
  %i.gy = getelementptr [8 x i8], ptr %i.gv, i64 %i.fy
  store double %i.gx, ptr %i.gy, align 8, !tbaa !130
  %i.gz = add nsw i64 %.097, -1                   ; 3 uses
  %i.ha = sext i32 %i.gt to i64
  %i.hb = getelementptr [4 x i8], ptr %i.fw, i64 %i.gz ; 2 uses
  %i.hc = getelementptr [4 x i8], ptr %i.hb, i64 %i.ha
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !113
  %i.he = getelementptr [4 x i8], ptr %i.hb, i64 %i.fy
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !113
  %i.hf = load i32, ptr %i.fn, align 4, !tbaa !113 ; 2 uses
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr [8 x i8], ptr %i.fx, i64 %i.gz ; 2 uses
  %i.hi = getelementptr [8 x i8], ptr %i.hh, i64 %i.hg
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !130
  %i.hk = getelementptr [8 x i8], ptr %i.hh, i64 %i.fy
  store double %i.hj, ptr %i.hk, align 8, !tbaa !130
  %i.hl = add nsw i64 %.097, -2
  %.not140.1 = icmp eq i64 %i.gz, 0
  br i1 %.not140.1, label %.loopexit, label %.lr.ph99.new, !llvm.loop !649

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph99.new, %bb.j, %bb.i
  %i.hm = icmp samesign ugt i64 %.069101.in, 1
  br i1 %i.hm, label %bb.i, label %._crit_edge104, !llvm.loop !650

bb.k:                                             ; preds = %._crit_edge104, %._crit_edge120._crit_edge
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi0EiE18insertUncompressedEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %3 = alloca %"class.Eigen::SparseMatrix<double>::SingletonVector", align 4 ; 5 uses
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !127
  %i.d = getelementptr [4 x i8], ptr %i.c, i64 %2 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !113
  %i.g = load i32, ptr %i.d, align 4, !tbaa !113  ; 2 uses
  %i.h = sub nsw i32 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133  ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %2
  %i.l = load i32, ptr %i.k, align 4, !tbaa !113  ; 3 uses
  %.not = icmp slt i32 %i.l, %i.h
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.l, i32 2)
  %i.m = trunc i64 %2 to i32
  store i32 %i.m, ptr %3, align 4, !tbaa !194
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.speculated, ptr %i.n, align 4, !tbaa !652
  call void @_ZN5Eigen12SparseMatrixIdLi0EiE19reserveInnerVectorsINS1_15SingletonVectorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !127
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %.pre, i64 %2
  %.pre29 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !113
  %.pre30 = load ptr, ptr %i.i, align 8, !tbaa !133 ; 2 uses
  %.phi.trans.insert31 = getelementptr inbounds [4 x i8], ptr %.pre30, i64 %2
  %.pre32 = load i32, ptr %.phi.trans.insert31, align 4, !tbaa !113
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
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !135  ; 3 uses
  br i1 %i.v, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.026 = phi i64 [ %i.u, %.lr.ph ], [ %i.z, %bb.e ] ; 4 uses
  %i.z = add nsw i64 %.026, -1                    ; 5 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !113 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, %i.a
  br i1 %i.ac, label %bb.e, label %.critedge.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.026
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !113
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !134 ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.z
  %i.ag = load double, ptr %i.af, align 8, !tbaa !130
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %.026
  store double %i.ag, ptr %i.ah, align 8, !tbaa !130
  %i.ai = icmp sgt i64 %i.z, %i.r
  br i1 %i.ai, label %bb.d, label %.critedge.loopexit, !llvm.loop !651

.critedge.loopexit:                               ; preds = %bb.e, %bb.d
  %.0.lcssa.ph = phi i64 [ %.026, %bb.d ], [ %i.z, %bb.e ]
  %.pre33 = load i32, ptr %i.s, align 4, !tbaa !113
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.loopexit
  %i.aj = phi i32 [ %.pre33, %.critedge.loopexit ], [ %i.o, %bb.c ]
  %.0.lcssa = phi i64 [ %.0.lcssa.ph, %.critedge.loopexit ], [ %i.u, %bb.c ] ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.s, align 4, !tbaa !113
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.0.lcssa
  store i32 %i.a, ptr %i.am, align 4, !tbaa !113
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !134
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %.0.lcssa ; 2 uses
  store double 0.000000e+00, ptr %i.ao, align 8, !tbaa !130
  ret ptr %i.ao
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi0EiE19reserveInnerVectorsINS1_15SingletonVectorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39   ; 12 uses
  %i.f = shl i64 %i.e, 2                          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #35 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !133
  %.not80 = icmp eq ptr %i.g, null
  br i1 %.not80, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %.preheader
  %i.i = load i32, ptr %1, align 4, !tbaa !194
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !127  ; 4 uses
  %xtraiter155 = and i64 %i.e, 1
  %i.o = icmp eq i64 %i.e, 1
  br i1 %i.o, label %.epil.preheader154, label %.lr.ph108.new

.lr.ph108.new:                                    ; preds = %.lr.ph108
  %unroll_iter159 = and i64 %i.e, 9223372036854775806
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
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
  store i32 %.077105.epil.init, ptr %i.q, align 4, !tbaa !113
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
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !127  ; 3 uses
  %i.y = load i64, ptr %i.d, align 8, !tbaa !39   ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = icmp sgt i64 %i.y, 0
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !113 ; 2 uses
  br i1 %i.aa, label %.lr.ph119, label %._crit_edge120._crit_edge

.lr.ph119:                                        ; preds = %._crit_edge109
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !133
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph108.new
  %.070107 = phi i64 [ 0, %.lr.ph108.new ], [ %i.bd, %bb.d ]
  %.076106 = phi i64 [ 0, %.lr.ph108.new ], [ %i.au, %bb.d ] ; 5 uses
  %.077105 = phi i32 [ 0, %.lr.ph108.new ], [ %i.bb, %bb.d ] ; 2 uses
  %niter160 = phi i64 [ 0, %.lr.ph108.new ], [ %niter160.next.1, %bb.d ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076106
  store i32 %.077105, ptr %i.ae, align 4, !tbaa !113
  %i.af = icmp eq i64 %.076106, %i.j
  %i.ag = select i1 %i.af, i32 %i.l, i32 0        ; 2 uses
  %i.ah = or disjoint i64 %.076106, 1             ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !113
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.076106
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !113
  %i.am = add i32 %i.aj, %.077105
  %i.an = add i32 %i.am, %i.ag
  %i.ao = sub i32 %i.an, %i.al                    ; 2 uses
  %i.ap = sext i32 %i.ag to i64
  %i.aq = add nsw i64 %.070107, %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ah
  store i32 %i.ao, ptr %i.ar, align 4, !tbaa !113
  %i.as = icmp eq i64 %i.ah, %i.j
  %i.at = select i1 %i.as, i32 %i.l, i32 0        ; 2 uses
  %i.au = add nuw nsw i64 %.076106, 2             ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !113
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ah
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !113
  %i.az = add i32 %i.aw, %i.ao
  %i.ba = add i32 %i.az, %i.at
  %i.bb = sub i32 %i.ba, %i.ay                    ; 2 uses
  %i.bc = sext i32 %i.at to i64
  %i.bd = add nsw i64 %i.aq, %i.bc                ; 3 uses
  %niter160.next.1 = add nuw nsw i64 %niter160, 2 ; 2 uses
  %niter160.ncmp.1 = icmp eq i64 %niter160.next.1, %unroll_iter159
  br i1 %niter160.ncmp.1, label %._crit_edge109.loopexit.unr-lcssa, label %bb.d, !llvm.loop !653

bb.e:                                             ; preds = %.lr.ph119, %._crit_edge114
  %.074117.in = phi i64 [ %i.y, %.lr.ph119 ], [ %.074117, %._crit_edge114 ] ; 2 uses
  %.075116 = phi i32 [ %i.ab, %.lr.ph119 ], [ %i.cf, %._crit_edge114 ]
  %.074117 = add nsw i64 %.074117.in, -1          ; 5 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.074117 ; 5 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !113 ; 4 uses
  %i.bg = sub nsw i32 %.075116, %i.bf             ; 4 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph113, label %.._crit_edge114_crit_edge

.._crit_edge114_crit_edge:                        ; preds = %bb.e
  %.phi.trans.insert125 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117
  %.pre126 = load i32, ptr %.phi.trans.insert125, align 4, !tbaa !113
  br label %._crit_edge114

.lr.ph113:                                        ; preds = %bb.e
  %i.bi = add nsw i32 %i.bg, -1                   ; 2 uses
  %i.bj = zext nneg i32 %i.bi to i64              ; 4 uses
  %i.bk = load ptr, ptr %i.ac, align 8, !tbaa !135 ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117 ; 4 uses
  %i.bm = load ptr, ptr %i.v, align 8, !tbaa !134 ; 3 uses
  %.pre124 = load i32, ptr %i.bl, align 4, !tbaa !113 ; 2 uses
  %i.bn = and i32 %i.bg, 1
  %lcmp.mod164.not = icmp eq i32 %i.bn, 0
  br i1 %lcmp.mod164.not, label %.prol.loopexit162, label %.prol.loopexit162.unr-lcssa

.prol.loopexit162.unr-lcssa:                      ; preds = %.lr.ph113
  %i.bo = sext i32 %i.bf to i64
  %i.bp = getelementptr [4 x i8], ptr %i.bk, i64 %i.bj ; 2 uses
  %i.bq = getelementptr [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !113
  %i.bs = sext i32 %.pre124 to i64
  %i.bt = getelementptr [4 x i8], ptr %i.bp, i64 %i.bs
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !113
  %i.bu = load i32, ptr %i.be, align 4, !tbaa !113 ; 3 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr [8 x i8], ptr %i.bm, i64 %i.bj ; 2 uses
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load double, ptr %i.bx, align 8, !tbaa !130
  %i.bz = load i32, ptr %i.bl, align 4, !tbaa !113 ; 3 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr [8 x i8], ptr %i.bw, i64 %i.ca
  store double %i.by, ptr %i.cb, align 8, !tbaa !130
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
  store i32 %i.ce, ptr %i.be, align 4, !tbaa !113
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.074117
  store i32 %i.bg, ptr %i.cg, align 4, !tbaa !113
  %i.ch = icmp samesign ugt i64 %.074117.in, 1
  br i1 %i.ch, label %bb.e, label %._crit_edge120, !llvm.loop !654

.lr.ph113.new:                                    ; preds = %.prol.loopexit162, %.lr.ph113.new
  %i.ci = phi i32 [ %i.dk, %.lr.ph113.new ], [ %.unr165, %.prol.loopexit162 ]
  %i.cj = phi i32 [ %i.df, %.lr.ph113.new ], [ %.unr166, %.prol.loopexit162 ]
  %.073111 = phi i64 [ %i.dn, %.lr.ph113.new ], [ %.073111.unr, %.prol.loopexit162 ] ; 4 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr [4 x i8], ptr %i.bk, i64 %.073111 ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !113
  %i.co = sext i32 %i.ci to i64
  %i.cp = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  store i32 %i.cn, ptr %i.cp, align 4, !tbaa !113
  %i.cq = load i32, ptr %i.be, align 4, !tbaa !113 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [8 x i8], ptr %i.bm, i64 %.073111 ; 2 uses
  %i.ct = getelementptr [8 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !130
  %i.cv = load i32, ptr %i.bl, align 4, !tbaa !113 ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr [8 x i8], ptr %i.cs, i64 %i.cw
  store double %i.cu, ptr %i.cx, align 8, !tbaa !130
  %i.cy = add nsw i64 %.073111, -1                ; 3 uses
  %i.cz = sext i32 %i.cq to i64
  %i.da = getelementptr [4 x i8], ptr %i.bk, i64 %i.cy ; 2 uses
  %i.db = getelementptr [4 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !113
  %i.dd = sext i32 %i.cv to i64
  %i.de = getelementptr [4 x i8], ptr %i.da, i64 %i.dd
  store i32 %i.dc, ptr %i.de, align 4, !tbaa !113
  %i.df = load i32, ptr %i.be, align 4, !tbaa !113 ; 3 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [8 x i8], ptr %i.bm, i64 %i.cy ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = load double, ptr %i.di, align 8, !tbaa !130
  %i.dk = load i32, ptr %i.bl, align 4, !tbaa !113 ; 3 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr [8 x i8], ptr %i.dh, i64 %i.dl
  store double %i.dj, ptr %i.dm, align 8, !tbaa !130
  %i.dn = add nsw i64 %.073111, -2
  %.not142.1 = icmp eq i64 %i.cy, 0
  br i1 %.not142.1, label %._crit_edge114, label %.lr.ph113.new, !llvm.loop !655

._crit_edge120:                                   ; preds = %._crit_edge114
  %i.do = add nsw i64 %i.y, -1                    ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !113
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.do
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !113
  %i.du = add nsw i32 %i.dt, %i.dq
  %i.dv = load i32, ptr %1, align 4, !tbaa !194
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp eq i64 %i.do, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = select i1 %i.dx, i32 %i.dz, i32 0
  %i.eb = add nsw i32 %i.du, %i.ea                ; 2 uses
  store i32 %i.eb, ptr %i.z, align 4, !tbaa !113
  br label %._crit_edge120._crit_edge

._crit_edge120._crit_edge:                        ; preds = %._crit_edge109, %._crit_edge120
  %i.ec = phi i32 [ %i.eb, %._crit_edge120 ], [ %i.ab, %._crit_edge109 ]
  %i.ed = sext i32 %i.ec to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ed, double noundef 0.000000e+00)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.ee = add i64 %i.f, 4
  %i.ef = tail call noalias ptr @malloc(i64 noundef %i.ee) #35 ; 7 uses
  %.not = icmp eq ptr %i.ef, null
  br i1 %.not, label %bb.g, label %.preheader94

.preheader94:                                     ; preds = %bb.f
  %i.eg = icmp sgt i64 %i.e, 0
  br i1 %i.eg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader94
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !127 ; 4 uses
  %i.ej = load i32, ptr %1, align 4, !tbaa !194
  %i.ek = sext i32 %i.ej to i64                   ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.em = load i32, ptr %i.el, align 4            ; 3 uses
  %.pre = load i32, ptr %i.ei, align 4, !tbaa !113 ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.en = icmp eq i64 %i.e, 1
  br i1 %i.en, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 9223372036854775806
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.eo = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.eo, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.eo, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
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
  store i32 %.07295.epil.init, ptr %i.ep, align 4, !tbaa !113
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.07196.epil.init
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !113
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07196.epil.init
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !113 ; 2 uses
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
  store i32 %.072.lcssa, ptr %i.fb, align 4, !tbaa !113
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fd = sext i32 %.072.lcssa to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, i64 noundef %i.fd, double noundef 0.000000e+00)
  %i.fe = load i64, ptr %i.d, align 8, !tbaa !39  ; 2 uses
  %i.ff = icmp sgt i64 %i.fe, 0
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !167 ; 2 uses
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
  store i32 %.07295, ptr %i.fk, align 4, !tbaa !113
  %i.fl = or disjoint i64 %.07196, 1              ; 4 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !113 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07196
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !113 ; 2 uses
  %i.fq = add i32 %i.fj, %i.fp
  %i.fr = sub i32 %i.fn, %i.fq
  %i.fs = icmp eq i64 %.07196, %i.ek
  %i.ft = select i1 %i.fs, i32 %i.em, i32 0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.ft, i32 %i.fr)
  %i.fu = add i32 %i.fp, %.07295
  %i.fv = add i32 %i.fu, %.sroa.speculated        ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.fl
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !113
  %i.fx = add nuw nsw i64 %.07196, 2              ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !113 ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fl
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !113 ; 2 uses
  %i.gc = add i32 %i.fn, %i.gb
  %i.gd = sub i32 %i.fz, %i.gc
  %i.ge = icmp eq i64 %i.fl, %i.ek
  %i.gf = select i1 %i.ge, i32 %i.em, i32 0
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.gf, i32 %i.gd)
  %i.gg = add i32 %i.gb, %i.fv
  %i.gh = add i32 %i.gg, %.sroa.speculated.1      ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !656

._crit_edge104:                                   ; preds = %.loopexit, %._crit_edge
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ef, ptr %i.gi, align 8, !tbaa !167
  tail call void @free(ptr noundef %i.fh) #33
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph103, %.loopexit
  %.069101.in = phi i64 [ %i.fe, %.lr.ph103 ], [ %.069101, %.loopexit ] ; 2 uses
  %.069101 = add nsw i64 %.069101.in, -1          ; 4 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.069101
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !113 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.069101 ; 4 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !113 ; 3 uses
  %i.gn = icmp sgt i32 %i.gk, %i.gm
  br i1 %i.gn, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.go = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.069101
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !113 ; 3 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph99, label %.loopexit

.lr.ph99:                                         ; preds = %bb.j
  %i.gs = add nsw i32 %i.gq, -1                   ; 2 uses
  %i.gt = zext nneg i32 %i.gs to i64              ; 4 uses
  %i.gu = load ptr, ptr %i.fi, align 8, !tbaa !135 ; 3 uses
  %i.gv = load ptr, ptr %i.fc, align 8, !tbaa !134 ; 3 uses
  %i.gw = sext i32 %i.gk to i64                   ; 6 uses
  %i.gx = and i32 %i.gq, 1
  %lcmp.mod152.not = icmp eq i32 %i.gx, 0
  br i1 %lcmp.mod152.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph99
  %i.gy = sext i32 %i.gm to i64
  %i.gz = getelementptr [4 x i8], ptr %i.gu, i64 %i.gt ; 2 uses
  %i.ha = getelementptr [4 x i8], ptr %i.gz, i64 %i.gy
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !113
  %i.hc = getelementptr [4 x i8], ptr %i.gz, i64 %i.gw
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !113
  %i.hd = load i32, ptr %i.gl, align 4, !tbaa !113 ; 2 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr [8 x i8], ptr %i.gv, i64 %i.gt ; 2 uses
  %i.hg = getelementptr [8 x i8], ptr %i.hf, i64 %i.he
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !130
  %i.hi = getelementptr [8 x i8], ptr %i.hf, i64 %i.gw
  store double %i.hh, ptr %i.hi, align 8, !tbaa !130
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
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !113
  %i.hq = getelementptr [4 x i8], ptr %i.hn, i64 %i.gw
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !113
  %i.hr = load i32, ptr %i.gl, align 4, !tbaa !113 ; 2 uses
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr [8 x i8], ptr %i.gv, i64 %.097 ; 2 uses
  %i.hu = getelementptr [8 x i8], ptr %i.ht, i64 %i.hs
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !130
  %i.hw = getelementptr [8 x i8], ptr %i.ht, i64 %i.gw
  store double %i.hv, ptr %i.hw, align 8, !tbaa !130
  %i.hx = add nsw i64 %.097, -1                   ; 3 uses
  %i.hy = sext i32 %i.hr to i64
  %i.hz = getelementptr [4 x i8], ptr %i.gu, i64 %i.hx ; 2 uses
  %i.ia = getelementptr [4 x i8], ptr %i.hz, i64 %i.hy
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !113
  %i.ic = getelementptr [4 x i8], ptr %i.hz, i64 %i.gw
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !113
  %i.id = load i32, ptr %i.gl, align 4, !tbaa !113 ; 2 uses
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr [8 x i8], ptr %i.gv, i64 %i.hx ; 2 uses
  %i.ig = getelementptr [8 x i8], ptr %i.if, i64 %i.ie
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !130
  %i.ii = getelementptr [8 x i8], ptr %i.if, i64 %i.gw
  store double %i.ih, ptr %i.ii, align 8, !tbaa !130
  %i.ij = add nsw i64 %.097, -2
  %.not141.1 = icmp eq i64 %i.hx, 0
  br i1 %.not141.1, label %.loopexit, label %.lr.ph99.new, !llvm.loop !657

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph99.new, %bb.j, %bb.i
  %i.ik = icmp samesign ugt i64 %.069101.in, 1
  br i1 %i.ik, label %bb.i, label %._crit_edge104, !llvm.loop !658

bb.k:                                             ; preds = %._crit_edge104, %._crit_edge120._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi1EiEENS_9TransposeINS2_IdLi0EiEEEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix.61", align 8 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !672, !nonnull !144, !align !173 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39   ; 9 uses
  %i.e = load i8, ptr %1, align 8, !tbaa !673, !range !143, !noundef !144
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !102
  tail call void @_ZN5Eigen12SparseMatrixIdLi1EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.d, i64 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store i64 0, ptr %i.i, align 8, !tbaa !166
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !138
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !174
  %i.n = shl i64 %i.m, 2
  %i.o = add i64 %i.n, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !139  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi1EiE7setZeroEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.l, align 8, !tbaa !174
  %i.s = shl i64 %i.r, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.q, i8 0, i64 %i.s, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi1EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi1EiE7setZeroEv.exit:   ; preds = %bb.b, %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !672, !nonnull !144, !align !173 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !102  ; 2 uses
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
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !139
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.d, label %_ZN5Eigen12SparseMatrixIdLi1EiE8finalizeEv.exit

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveEl.exit._crit_edge
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !166
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = load i64, ptr %i.l, align 8, !tbaa !174 ; 5 uses
  %i.am = icmp sgt i64 %i.al, -1
  br i1 %i.am, label %.lr.ph.i, label %_ZN5Eigen12SparseMatrixIdLi1EiE8finalizeEv.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !138 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %.08.i = phi i64 [ %i.al, %.lr.ph.i ], [ %i.ar, %bb.f ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.08.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !113
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ar = add nsw i64 %.08.i, -1
  %i.as = icmp sgt i64 %.08.i, 0
  br i1 %i.as, label %bb.e, label %.critedge.i, !llvm.loop !6

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
  store <4 x i32> %broadcast.splat185, ptr %i.ax, align 4, !tbaa !113
  store <4 x i32> %broadcast.splat185, ptr %i.ay, align 4, !tbaa !113
  %index.next188 = add nuw i64 %index187, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next188, %n.vec183
  br i1 %i.az, label %middle.block189, label %vector.body186, !llvm.loop !659

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
  %i.ei = load i64, ptr %i.dr, align 8, !tbaa !39
  %i.ej = icmp slt i64 %i.eh, %i.ei
  br i1 %i.ej, label %.preheader114, label %.loopexit, !llvm.loop !1333

bb.t:                                             ; preds = %.preheader114, %_ZNK5Eigen16SparseMatrixBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE3dotINS1_IS3_Lin1ELi1ELb1EEEEEdRKNS0_IT_EE.exit63.thread
  %.0117.in = phi i64 [ %.sroa.speculated, %.preheader114 ], [ %.0117, %_ZNK5Eigen16SparseMatrixBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE3dotINS1_IS3_Lin1ELi1ELb1EEEEEdRKNS0_IT_EE.exit63.thread ] ; 2 uses
  %.0117 = add nsw i64 %.0117.in, -1              ; 3 uses
  %i.ek = load ptr, ptr %0, align 8, !tbaa !1341, !nonnull !144, !align !173 ; 8 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 184
  %sext.i.i.i.i37 = shl i64 %.0117, 32
  %i.em = ashr exact i64 %sext.i.i.i.i37, 32      ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 224
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !134
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 232
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !135
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 208
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !127 ; 2 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.em ; 4 uses
  %i.eu = icmp eq ptr %i.es, null
  br i1 %i.eu, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ek, i64 216
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !133 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.v, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i59

bb.v:                                             ; preds = %bb.u
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !113
  %i.fa = load i32, ptr %i.et, align 4, !tbaa !113
  %i.fb = sub nsw i32 %i.ez, %i.fa
  br label %_ZNK5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i60

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i59: ; preds = %bb.u
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.em
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !113
  br label %_ZNK5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i60

_ZNK5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i60: ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i59, %bb.v
  %.0.in.i.i.i61 = phi i32 [ %i.fd, %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i59 ], [ %i.fb, %bb.v ]
  %.0.i.i.i62 = sext i32 %.0.in.i.i.i61 to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS6_l.exit.i39

bb.w:                                             ; preds = %bb.t
  %i.fe = load i32, ptr %i.et, align 4, !tbaa !113
  %i.ff = sext i32 %i.fe to i64                   ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ek, i64 216
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !133 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fj = getelementptr i8, ptr %i.et, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !113
  %i.fl = sext i32 %i.fk to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS6_l.exit.i39

bb.y:                                             ; preds = %bb.w
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.em
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !113
  %i.fo = sext i32 %i.fn to i64
  %i.fp = add nsw i64 %i.fo, %i.ff
  br label %_ZN5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS6_l.exit.i39

_ZN5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS6_l.exit.i39: ; preds = %bb.y, %bb.x, %_ZNK5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i60
  %.sroa.830.2.i40 = phi i64 [ 0, %_ZNK5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i60 ], [ %i.ff, %bb.x ], [ %i.ff, %bb.y ] ; 2 uses
  %.sink.i.i41 = phi i64 [ %.0.i.i.i62, %_ZNK5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i60 ], [ %i.fl, %bb.x ], [ %i.fp, %bb.y ] ; 2 uses
  %i.fq = load ptr, ptr %i.dv, align 8, !tbaa !134
  %i.fr = load ptr, ptr %i.dw, align 8, !tbaa !135
  %i.fs = load ptr, ptr %i.dx, align 8, !tbaa !127 ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.eg ; 4 uses
  %i.fu = icmp eq ptr %i.fs, null
  br i1 %i.fu, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_ZN5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS6_l.exit.i39
  %i.fv = load ptr, ptr %i.dy, align 8, !tbaa !133 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.aa, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i14.i55

bb.aa:                                            ; preds = %bb.z
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !113
  %i.fz = load i32, ptr %i.ft, align 4, !tbaa !113
  %i.ga = sub nsw i32 %i.fy, %i.fz
  br label %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i56

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i14.i55: ; preds = %bb.z
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.eg
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !113
  br label %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i56

_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i56: ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i14.i55, %bb.aa
  %.0.in.i.i15.i57 = phi i32 [ %i.gc, %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i14.i55 ], [ %i.ga, %bb.aa ]
  %.0.i.i16.i58 = sext i32 %.0.in.i.i15.i57 to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i42

bb.ab:                                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_5BlockIKNS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS6_l.exit.i39
  %i.gd = load i32, ptr %i.ft, align 4, !tbaa !113
  %i.ge = sext i32 %i.gd to i64                   ; 3 uses
  %i.gf = load ptr, ptr %i.dy, align 8, !tbaa !133 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gh = getelementptr i8, ptr %i.ft, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !113
  %i.gj = sext i32 %i.gi to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i42

bb.ad:                                            ; preds = %bb.ab
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.eg
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !113
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
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !113 ; 2 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %.sroa.818.041.i49
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !113 ; 2 uses
  %i.gu = icmp eq i32 %i.gr, %i.gt
  br i1 %i.gu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i47
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %.sroa.830.040.i50
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !130
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %.sroa.818.041.i49
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !130
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
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !165
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %.0117
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !130
  %i.hm = fmul double %.1.i53, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ek, i64 200
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !102, !noalias !1347
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store i8 0, ptr %5, align 8, !tbaa !1344, !alias.scope !1348
  store ptr %1, ptr %i.dz, align 8, !tbaa !101, !alias.scope !1348
  store i64 %i.eg, ptr %i.ea, align 8, !tbaa !275, !alias.scope !1348
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store i8 0, ptr %2, align 8, !tbaa !277, !alias.scope !1349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  store i8 0, ptr %i.ec, align 8, !alias.scope !1349
  store i64 %i.ho, ptr %i.ed, align 8, !alias.scope !1349
  store double %i.hm, ptr %i.ee, align 8, !tbaa !99, !alias.scope !1349
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
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi0EiE18conservativeResizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !102  ; 2 uses
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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !133  ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = shl i64 %2, 2
  %i.o = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.n) #39 ; 4 uses
  %.not54 = icmp eq ptr %i.o, null
  br i1 %.not54, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

bb.g:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.l, align 8, !tbaa !133
  %i.q = load i64, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.r = icmp sgt i64 %i.j, 0
  br i1 %i.r, label %.loopexit82.sink.split, label %.loopexit82

bb.h:                                             ; preds = %bb.d
  %i.s = icmp slt i64 %i.i, 0
  br i1 %i.s, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.t = shl i64 %2, 2
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #35 ; 3 uses
  store ptr %i.u, ptr %i.l, align 8, !tbaa !133
  %.not53 = icmp eq ptr %i.u, null
  br i1 %.not53, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5Eigen8internal19throw_std_bad_allocEv()
  %.pre = load i64, ptr %i.d, align 8, !tbaa !39
  %.pre103.pre.pre = load ptr, ptr %i.l, align 8, !tbaa !133
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !127  ; 14 uses
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
  %wide.load = load <4 x i32>, ptr %i.ad, align 4, !tbaa !113, !alias.scope !1360
  %wide.load129 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !113, !alias.scope !1360
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load130 = load <4 x i32>, ptr %i.af, align 4, !tbaa !113, !alias.scope !1360
  %wide.load131 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !113, !alias.scope !1360
  %i.ah = sub nsw <4 x i32> %wide.load, %wide.load130
  %i.ai = sub nsw <4 x i32> %wide.load129, %wide.load131
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.pre103.pre, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <4 x i32> %i.ah, ptr %i.aj, align 4, !tbaa !113, !alias.scope !1361, !noalias !1360
  store <4 x i32> %i.ai, ptr %i.ak, align 4, !tbaa !113, !alias.scope !1361, !noalias !1360
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
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !113
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.04585.prol
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !113
  %i.as = sub nsw i32 %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.pre103.pre, i64 %.04585.prol
  store i32 %i.as, ptr %i.at, align 4, !tbaa !113
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
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !113
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.04585
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !113
  %i.bc = sub nsw i32 %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.pre103.pre, i64 %.04585
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !113
  %i.be = add nuw nsw i64 %.04585, 2              ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !113
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ax
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !113
  %i.bj = sub nsw i32 %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.pre103.pre, i64 %i.ax
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !113
  %i.bl = add nuw nsw i64 %.04585, 3              ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN5Eigen8internal26permutation_matrix_productINS_12SparseMatrixIdLi0EiEELi1ELb0ENS_11SparseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_:bb.a

.lr.ph46:                                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29, %_ZN5Eigen12SparseMatrixIdLi1EiE18insertByOuterInnerEll.exit
  %.sroa.8.045 = phi i64 [ %i.fv, %_ZN5Eigen12SparseMatrixIdLi1EiE18insertByOuterInnerEll.exit ], [ %i.ew, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29 ] ; 3 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.er, i64 %.sroa.8.045
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !130
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.es, i64 %.sroa.8.045
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !113
  %i.fp = sext i32 %i.fo to i64
  %i.fq = load ptr, ptr %5, align 8, !tbaa !94
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fp
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !113
  %i.ft = sext i32 %i.fs to i64
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi1EiE6insertEll(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %i.ft, i64 noundef %.048)
          to label %_ZN5Eigen12SparseMatrixIdLi1EiE18insertByOuterInnerEll.exit unwind label %bb.m

_ZN5Eigen12SparseMatrixIdLi1EiE18insertByOuterInnerEll.exit: ; preds = %.lr.ph46
  store double %i.fm, ptr %i.fu, align 8, !tbaa !130
  %i.fv = add nsw i64 %.sroa.8.045, 1             ; 2 uses
  %exitcond54.not = icmp eq i64 %i.fv, %.sink.i28
  br i1 %exitcond54.not, label %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.loopexit, label %.lr.ph46, !llvm.loop !1396

bb.n:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit._crit_edge
  %i.fw = load ptr, ptr %5, align 8, !tbaa !94
  call void @free(ptr noundef %i.fw) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.fx = load ptr, ptr %4, align 8, !tbaa !94
  call void @free(ptr noundef %i.fx) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.fy = load ptr, ptr %i.g, align 8, !tbaa !138
  call void @free(ptr noundef %i.fy) #33
  %i.fz = load ptr, ptr %i.m, align 8, !tbaa !139
  call void @free(ptr noundef %i.fz) #33
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !134 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.gb) #34
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !135 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.ge) #34
  br label %_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit:         ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.r:                                             ; preds = %bb.m, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ep, %bb.i ], [ %i.fk, %bb.m ], [ %i.dt, %bb.h ]
  %i.gg = load ptr, ptr %5, align 8, !tbaa !94
  call void @free(ptr noundef %i.gg) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.gh = load ptr, ptr %4, align 8, !tbaa !94
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !174  ; 12 uses
  %i.f = shl i64 %i.e, 2                          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #35 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !139
  %.not80 = icmp eq ptr %i.g, null
  br i1 %.not80, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %.preheader
  %i.i = load ptr, ptr %1, align 8, !tbaa !94     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !138  ; 4 uses
  %xtraiter153 = and i64 %i.e, 1
  %i.l = icmp eq i64 %i.e, 1
  br i1 %i.l, label %.epil.preheader152, label %.lr.ph106.new

.lr.ph106.new:                                    ; preds = %.lr.ph106
  %unroll_iter157 = and i64 %i.e, 9223372036854775806
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
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
  store i32 %.077103.epil.init, ptr %i.n, align 4, !tbaa !113
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.076104.epil.init
  %i.p = load i32, ptr %i.o, align 4, !tbaa !113
  %i.q = sext i32 %i.p to i64
  %i.r = add nsw i64 %.070105.epil.init, %i.q
  br label %._crit_edge107

._crit_edge107:                                   ; preds = %.epil.preheader152, %._crit_edge107.loopexit.unr-lcssa, %.preheader
  %.070.lcssa = phi i64 [ 0, %.preheader ], [ %i.ba, %._crit_edge107.loopexit.unr-lcssa ], [ %i.r, %.epil.preheader152 ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %.070.lcssa)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !138  ; 3 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !174  ; 4 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = icmp sgt i64 %i.v, 0
  %i.y = load i32, ptr %i.w, align 4, !tbaa !113  ; 2 uses
  br i1 %i.x, label %.lr.ph117, label %._crit_edge118._crit_edge

.lr.ph117:                                        ; preds = %._crit_edge107
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !139
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph106.new
  %.070105 = phi i64 [ 0, %.lr.ph106.new ], [ %i.ba, %bb.d ]
  %.076104 = phi i64 [ 0, %.lr.ph106.new ], [ %i.ar, %bb.d ] ; 5 uses
  %.077103 = phi i32 [ 0, %.lr.ph106.new ], [ %i.ay, %bb.d ] ; 2 uses
  %niter158 = phi i64 [ 0, %.lr.ph106.new ], [ %niter158.next.1, %bb.d ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076104
  store i32 %.077103, ptr %i.ab, align 4, !tbaa !113
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.076104
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !113 ; 2 uses
  %i.ae = or disjoint i64 %.076104, 1             ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !113
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.076104
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !113
  %i.aj = add i32 %i.ad, %.077103
  %i.ak = add i32 %i.aj, %i.ag
  %i.al = sub i32 %i.ak, %i.ai                    ; 2 uses
  %i.am = sext i32 %i.ad to i64
  %i.an = add nsw i64 %.070105, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ae
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !113
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ae
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !113 ; 2 uses
  %i.ar = add nuw nsw i64 %.076104, 2             ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !113
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ae
  %i.av = load i32, ptr %i.au, align 4, !tbaa !113
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
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !113 ; 4 uses
  %i.bd = sub nsw i32 %.075114, %i.bc             ; 4 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph111, label %.._crit_edge112_crit_edge

.._crit_edge112_crit_edge:                        ; preds = %bb.e
  %.phi.trans.insert123 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074115
  %.pre124 = load i32, ptr %.phi.trans.insert123, align 4, !tbaa !113
  br label %._crit_edge112

.lr.ph111:                                        ; preds = %bb.e
  %i.bf = add nsw i32 %i.bd, -1                   ; 2 uses
  %i.bg = zext nneg i32 %i.bf to i64              ; 4 uses
  %i.bh = load ptr, ptr %i.z, align 8, !tbaa !135 ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074115 ; 4 uses
  %i.bj = load ptr, ptr %i.s, align 8, !tbaa !134 ; 3 uses
  %.pre122 = load i32, ptr %i.bi, align 4, !tbaa !113 ; 2 uses
  %i.bk = and i32 %i.bd, 1
  %lcmp.mod162.not = icmp eq i32 %i.bk, 0
  br i1 %lcmp.mod162.not, label %.prol.loopexit160, label %.prol.loopexit160.unr-lcssa

.prol.loopexit160.unr-lcssa:                      ; preds = %.lr.ph111
  %i.bl = sext i32 %i.bc to i64
  %i.bm = getelementptr [4 x i8], ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bn = getelementptr [4 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !113
  %i.bp = sext i32 %.pre122 to i64
  %i.bq = getelementptr [4 x i8], ptr %i.bm, i64 %i.bp
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !113
  %i.br = load i32, ptr %i.bb, align 4, !tbaa !113 ; 3 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr %i.bj, i64 %i.bg ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !130
  %i.bw = load i32, ptr %i.bi, align 4, !tbaa !113 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr [8 x i8], ptr %i.bt, i64 %i.bx
  store double %i.bv, ptr %i.by, align 8, !tbaa !130
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
  store i32 %i.cb, ptr %i.bb, align 4, !tbaa !113
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.074115
  store i32 %i.bd, ptr %i.cd, align 4, !tbaa !113
  %i.ce = icmp samesign ugt i64 %.074115.in, 1
  br i1 %i.ce, label %bb.e, label %._crit_edge118, !llvm.loop !1398

.lr.ph111.new:                                    ; preds = %.prol.loopexit160, %.lr.ph111.new
  %i.cf = phi i32 [ %i.dh, %.lr.ph111.new ], [ %.unr163, %.prol.loopexit160 ]
  %i.cg = phi i32 [ %i.dc, %.lr.ph111.new ], [ %.unr164, %.prol.loopexit160 ]
  %.073109 = phi i64 [ %i.dk, %.lr.ph111.new ], [ %.073109.unr, %.prol.loopexit160 ] ; 4 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr [4 x i8], ptr %i.bh, i64 %.073109 ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !113
  %i.cl = sext i32 %i.cf to i64
  %i.cm = getelementptr [4 x i8], ptr %i.ci, i64 %i.cl
  store i32 %i.ck, ptr %i.cm, align 4, !tbaa !113
  %i.cn = load i32, ptr %i.bb, align 4, !tbaa !113 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [8 x i8], ptr %i.bj, i64 %.073109 ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !130
  %i.cs = load i32, ptr %i.bi, align 4, !tbaa !113 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr [8 x i8], ptr %i.cp, i64 %i.ct
  store double %i.cr, ptr %i.cu, align 8, !tbaa !130
  %i.cv = add nsw i64 %.073109, -1                ; 3 uses
  %i.cw = sext i32 %i.cn to i64
  %i.cx = getelementptr [4 x i8], ptr %i.bh, i64 %i.cv ; 2 uses
  %i.cy = getelementptr [4 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !113
  %i.da = sext i32 %i.cs to i64
  %i.db = getelementptr [4 x i8], ptr %i.cx, i64 %i.da
  store i32 %i.cz, ptr %i.db, align 4, !tbaa !113
  %i.dc = load i32, ptr %i.bb, align 4, !tbaa !113 ; 3 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr [8 x i8], ptr %i.bj, i64 %i.cv ; 2 uses
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.dd
  %i.dg = load double, ptr %i.df, align 8, !tbaa !130
  %i.dh = load i32, ptr %i.bi, align 4, !tbaa !113 ; 3 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr [8 x i8], ptr %i.de, i64 %i.di
  store double %i.dg, ptr %i.dj, align 8, !tbaa !130
  %i.dk = add nsw i64 %.073109, -2
  %.not140.1 = icmp eq i64 %i.cv, 0
  br i1 %.not140.1, label %._crit_edge112, label %.lr.ph111.new, !llvm.loop !1399

._crit_edge118:                                   ; preds = %._crit_edge112
  %i.dl = add nsw i64 %i.v, -1                    ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !113
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dl
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !113
  %i.dr = add nsw i32 %i.dq, %i.dn
  %i.ds = load ptr, ptr %1, align 8, !tbaa !94
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dl
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !113
  %i.dv = add nsw i32 %i.dr, %i.du                ; 2 uses
  store i32 %i.dv, ptr %i.w, align 4, !tbaa !113
  br label %._crit_edge118._crit_edge

._crit_edge118._crit_edge:                        ; preds = %._crit_edge107, %._crit_edge118
  %i.dw = phi i32 [ %i.dv, %._crit_edge118 ], [ %i.y, %._crit_edge107 ]
  %i.dx = sext i32 %i.dw to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.dx, double noundef 0.000000e+00)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.dy = add i64 %i.f, 4
  %i.dz = tail call noalias ptr @malloc(i64 noundef %i.dy) #35 ; 7 uses
  %.not = icmp eq ptr %i.dz, null
  br i1 %.not, label %bb.g, label %.preheader92

.preheader92:                                     ; preds = %bb.f
  %i.ea = icmp sgt i64 %i.e, 0
  br i1 %i.ea, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader92
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !138 ; 4 uses
  %i.ed = load ptr, ptr %1, align 8, !tbaa !94    ; 3 uses
  %.pre = load i32, ptr %i.ec, align 4, !tbaa !113 ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.ee = icmp eq i64 %i.e, 1
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 9223372036854775806
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ef = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ef, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.ef, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
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
  store i32 %.07293.epil.init, ptr %i.eg, align 4, !tbaa !113
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.07194.epil.init
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !113
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07194.epil.init
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !113 ; 2 uses
  %i.em = add i32 %.epil.init, %i.el
  %i.en = sub i32 %i.ej, %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.07194.epil.init
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !113
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 %i.en)
  %i.eq = add i32 %i.el, %.07293.epil.init
  %i.er = add i32 %i.eq, %.sroa.speculated.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader92
  %.072.lcssa = phi i32 [ 0, %.preheader92 ], [ %i.fy, %._crit_edge.loopexit.unr-lcssa ], [ %i.er, %.epil.preheader ] ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.e
  store i32 %.072.lcssa, ptr %i.es, align 4, !tbaa !113
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eu = sext i32 %.072.lcssa to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 noundef %i.eu, double noundef 0.000000e+00)
  %i.ev = load i64, ptr %i.d, align 8, !tbaa !174 ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, 0
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !167 ; 2 uses
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
  store i32 %.07293, ptr %i.fb, align 4, !tbaa !113
  %i.fc = or disjoint i64 %.07194, 1              ; 4 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !113 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07194
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !113 ; 2 uses
  %i.fh = add i32 %i.fa, %i.fg
  %i.fi = sub i32 %i.fe, %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.07194
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !113
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.fk, i32 %i.fi)
  %i.fl = add i32 %i.fg, %.07293
  %i.fm = add i32 %i.fl, %.sroa.speculated        ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.fc
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !113
  %i.fo = add nuw nsw i64 %.07194, 2              ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !113 ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fc
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !113 ; 2 uses
  %i.ft = add i32 %i.fe, %i.fs
  %i.fu = sub i32 %i.fq, %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.fc
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !113
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.fw, i32 %i.fu)
  %i.fx = add i32 %i.fs, %i.fm
  %i.fy = add i32 %i.fx, %.sroa.speculated.1      ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !1400

._crit_edge102:                                   ; preds = %.loopexit, %._crit_edge
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dz, ptr %i.fz, align 8, !tbaa !167
  tail call void @free(ptr noundef %i.ey) #33
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph101, %.loopexit
  %.06999.in = phi i64 [ %i.ev, %.lr.ph101 ], [ %.06999, %.loopexit ] ; 2 uses
  %.06999 = add nsw i64 %.06999.in, -1            ; 4 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.06999
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !113 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.06999 ; 4 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !113 ; 3 uses
  %i.ge = icmp sgt i32 %i.gb, %i.gd
  br i1 %i.ge, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %.06999
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !113 ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %.lr.ph97, label %.loopexit

.lr.ph97:                                         ; preds = %bb.j
  %i.gj = add nsw i32 %i.gh, -1                   ; 2 uses
  %i.gk = zext nneg i32 %i.gj to i64              ; 4 uses
  %i.gl = load ptr, ptr %i.ez, align 8, !tbaa !135 ; 3 uses
  %i.gm = load ptr, ptr %i.et, align 8, !tbaa !134 ; 3 uses
  %i.gn = sext i32 %i.gb to i64                   ; 6 uses
  %i.go = and i32 %i.gh, 1
  %lcmp.mod150.not = icmp eq i32 %i.go, 0
  br i1 %lcmp.mod150.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph97
  %i.gp = sext i32 %i.gd to i64
  %i.gq = getelementptr [4 x i8], ptr %i.gl, i64 %i.gk ; 2 uses
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %i.gp
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !113
  %i.gt = getelementptr [4 x i8], ptr %i.gq, i64 %i.gn
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !113
  %i.gu = load i32, ptr %i.gc, align 4, !tbaa !113 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr [8 x i8], ptr %i.gm, i64 %i.gk ; 2 uses
  %i.gx = getelementptr [8 x i8], ptr %i.gw, i64 %i.gv
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !130
  %i.gz = getelementptr [8 x i8], ptr %i.gw, i64 %i.gn
  store double %i.gy, ptr %i.gz, align 8, !tbaa !130
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
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !113
  %i.hh = getelementptr [4 x i8], ptr %i.he, i64 %i.gn
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !113
  %i.hi = load i32, ptr %i.gc, align 4, !tbaa !113 ; 2 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr [8 x i8], ptr %i.gm, i64 %.095 ; 2 uses
  %i.hl = getelementptr [8 x i8], ptr %i.hk, i64 %i.hj
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !130
  %i.hn = getelementptr [8 x i8], ptr %i.hk, i64 %i.gn
  store double %i.hm, ptr %i.hn, align 8, !tbaa !130
  %i.ho = add nsw i64 %.095, -1                   ; 3 uses
  %i.hp = sext i32 %i.hi to i64
  %i.hq = getelementptr [4 x i8], ptr %i.gl, i64 %i.ho ; 2 uses
  %i.hr = getelementptr [4 x i8], ptr %i.hq, i64 %i.hp
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !113
  %i.ht = getelementptr [4 x i8], ptr %i.hq, i64 %i.gn
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !113
  %i.hu = load i32, ptr %i.gc, align 4, !tbaa !113 ; 2 uses
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr [8 x i8], ptr %i.gm, i64 %i.ho ; 2 uses
  %i.hx = getelementptr [8 x i8], ptr %i.hw, i64 %i.hv
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !130
  %i.hz = getelementptr [8 x i8], ptr %i.hw, i64 %i.gn
  store double %i.hy, ptr %i.hz, align 8, !tbaa !130
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi1EiE6insertEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::CwiseNullaryOp.232", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE8nonZerosEv.exit, label %.loopexit78

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE8nonZerosEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138  ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !174  ; 11 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !113
  %i.j = load i32, ptr %i.e, align 4, !tbaa !113
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE8nonZerosEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !179
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !175
  %i.r = shl nsw i64 %i.q, 1
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.r)
  %.pre = load i64, ptr %i.f, align 8, !tbaa !174
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i64 [ %.pre, %bb.c ], [ %i.g, %bb.b ] ; 6 uses
  %i.t = shl i64 %i.s, 2
  %calloc = tail call ptr @calloc(i64 1, i64 %i.t) ; 5 uses
  store ptr %calloc, ptr %i.a, align 8, !tbaa !139
  %.not69 = icmp eq ptr %calloc, null
  br i1 %.not69, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.l, align 8, !tbaa !179
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %.not7081 = icmp slt i64 %i.s, 1
  br i1 %.not7081, label %.loopexit78, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.f
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !138  ; 2 uses
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
  store <4 x i32> %broadcast.splat, ptr %i.aa, align 4, !tbaa !113
  store <4 x i32> %broadcast.splat, ptr %i.ab, align 4, !tbaa !113
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
  store i32 %i.w, ptr %i.ad, align 4, !tbaa !113
  %i.ae = add nuw i64 %.06682, 1
  %exitcond99.not = icmp eq i64 %.06682, %i.s
  br i1 %exitcond99.not, label %.loopexit78, label %scalar.ph128, !llvm.loop !1404

bb.g:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE8nonZerosEv.exit
  %i.af = shl i64 %i.g, 2
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.af) #35 ; 14 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !139
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
  store i32 %i.ev, ptr %i.fk, align 4, !tbaa !113
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph86.1
  %i.fo = add i64 %.06285, 2
  %exitcond100.not.1 = icmp eq i64 %i.fj, %i.ex
  br i1 %exitcond100.not.1, label %.loopexit77, label %.lr.ph86, !llvm.loop !1413

.loopexit77:                                      ; preds = %.lr.ph86.prol.loopexit, %bb.x, %..loopexit77_crit_edge, %bb.t
  %i.fp = phi ptr [ %.pre103, %..loopexit77_crit_edge ], [ %.pre104, %bb.t ], [ %.pre104, %bb.x ], [ %.pre104, %.lr.ph86.prol.loopexit ]
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %1
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !113 ; 3 uses
  %i.fs = sext i32 %i.fr to i64
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %1
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !113
  %i.fw = add i32 %i.fr, -1
  %i.fx = add i32 %i.fw, %i.fv                    ; 2 uses
  %i.fy = sext i32 %i.fx to i64                   ; 2 uses
  %i.fz = icmp sgt i32 %i.fx, %i.fr
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !135 ; 3 uses
  br i1 %i.fz, label %.lr.ph88, label %.critedge2

.lr.ph88:                                         ; preds = %.loopexit77, %bb.y
  %.087 = phi i64 [ %i.gc, %bb.y ], [ %i.fy, %.loopexit77 ] ; 4 uses
  %i.gc = add nsw i64 %.087, -1                   ; 5 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !113 ; 2 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp slt i64 %2, %i.gf
  br i1 %i.gg, label %bb.y, label %.critedge2

bb.y:                                             ; preds = %.lr.ph88
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %.087
  store i32 %i.ge, ptr %i.gh, align 4, !tbaa !113
  %i.gi = load ptr, ptr %i.ch, align 8, !tbaa !134 ; 2 uses
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gc
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !130
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %.087
  store double %i.gk, ptr %i.gl, align 8, !tbaa !130
  %i.gm = icmp sgt i64 %i.gc, %i.fs
  br i1 %i.gm, label %.lr.ph88, label %.critedge2, !llvm.loop !1414

.critedge2:                                       ; preds = %.lr.ph88, %bb.y, %.loopexit77
  %.0.lcssa = phi i64 [ %i.fy, %.loopexit77 ], [ %i.gc, %bb.y ], [ %.087, %.lr.ph88 ] ; 2 uses
  %i.gn = trunc i64 %2 to i32
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %.0.lcssa
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !113
  %i.gp = load ptr, ptr %i.ch, align 8, !tbaa !134
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %.0.lcssa ; 2 uses
  store double 0.000000e+00, ptr %i.gq, align 8, !tbaa !130
  br label %bb.ac

bb.z:                                             ; preds = %._crit_edge, %bb.r
  %i.gr = phi i64 [ %.pre102, %._crit_edge ], [ %i.eq, %bb.r ]
  %.not71 = icmp eq i64 %i.gr, %i.cj
  br i1 %.not71, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 noundef %i.cj, double noundef 0.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !174
  store i64 %i.gt, ptr %3, align 8, !tbaa !159, !alias.scope !1421
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 2, ptr %i.gu, align 4, !tbaa !192, !alias.scope !1421
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !174  ; 13 uses
  %i.f = shl i64 %i.e, 2                          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #35 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !139
  %.not80 = icmp eq ptr %i.g, null
  br i1 %.not80, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !192  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !138  ; 4 uses
  %i.m = sext i32 %i.j to i64
  %xtraiter152 = and i64 %i.e, 1
  %i.n = icmp eq i64 %i.e, 1
  br i1 %i.n, label %.epil.preheader151, label %.lr.ph108.new

.lr.ph108.new:                                    ; preds = %.lr.ph108
  %unroll_iter155 = and i64 %i.e, 9223372036854775806
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
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
  store i32 %.077105.epil.init, ptr %i.p, align 4, !tbaa !113
  br label %._crit_edge109.loopexit

._crit_edge109.loopexit:                          ; preds = %._crit_edge109.loopexit.unr-lcssa, %.epil.preheader151
  %i.q = mul i64 %i.e, %i.m
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %._crit_edge109.loopexit, %.preheader
  %.070.lcssa = phi i64 [ 0, %.preheader ], [ %i.q, %._crit_edge109.loopexit ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %.070.lcssa)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !138  ; 3 uses
  %i.u = load i64, ptr %i.d, align 8, !tbaa !174  ; 4 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.w = icmp sgt i64 %i.u, 0
  %i.x = load i32, ptr %i.v, align 4, !tbaa !113  ; 2 uses
  br i1 %i.w, label %.lr.ph119, label %._crit_edge120._crit_edge

.lr.ph119:                                        ; preds = %._crit_edge109
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !139
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph108.new
  %.076106 = phi i64 [ 0, %.lr.ph108.new ], [ %i.ak, %bb.d ] ; 4 uses
  %.077105 = phi i32 [ 0, %.lr.ph108.new ], [ %i.ar, %bb.d ] ; 2 uses
  %niter156 = phi i64 [ 0, %.lr.ph108.new ], [ %niter156.next.1, %bb.d ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076106
  store i32 %.077105, ptr %i.aa, align 4, !tbaa !113
  %i.ab = or disjoint i64 %.076106, 1             ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !113
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.076106
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !113
  %i.ag = add i32 %i.j, %.077105
  %i.ah = add i32 %i.ag, %i.ad
  %i.ai = sub i32 %i.ah, %i.af                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ab
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !113
  %i.ak = add nuw nsw i64 %.076106, 2             ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !113
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ab
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !113
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
  %i.at = load i32, ptr %i.as, align 4, !tbaa !113 ; 4 uses
  %i.au = sub nsw i32 %.075116, %i.at             ; 4 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph113, label %.._crit_edge114_crit_edge

.._crit_edge114_crit_edge:                        ; preds = %bb.e
  %.phi.trans.insert125 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117
  %.pre126 = load i32, ptr %.phi.trans.insert125, align 4, !tbaa !113
  br label %._crit_edge114

.lr.ph113:                                        ; preds = %bb.e
  %i.aw = add nsw i32 %i.au, -1                   ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64              ; 4 uses
  %i.ay = load ptr, ptr %i.y, align 8, !tbaa !135 ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117 ; 4 uses
  %i.ba = load ptr, ptr %i.r, align 8, !tbaa !134 ; 3 uses
  %.pre124 = load i32, ptr %i.az, align 4, !tbaa !113 ; 2 uses
  %i.bb = and i32 %i.au, 1
  %lcmp.mod160.not = icmp eq i32 %i.bb, 0
  br i1 %lcmp.mod160.not, label %.prol.loopexit158, label %.prol.loopexit158.unr-lcssa

.prol.loopexit158.unr-lcssa:                      ; preds = %.lr.ph113
  %i.bc = sext i32 %i.at to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ay, i64 %i.ax ; 2 uses
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !113
  %i.bg = sext i32 %.pre124 to i64
  %i.bh = getelementptr [4 x i8], ptr %i.bd, i64 %i.bg
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !113
  %i.bi = load i32, ptr %i.as, align 4, !tbaa !113 ; 3 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr [8 x i8], ptr %i.ba, i64 %i.ax ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !130
  %i.bn = load i32, ptr %i.az, align 4, !tbaa !113 ; 3 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr [8 x i8], ptr %i.bk, i64 %i.bo
  store double %i.bm, ptr %i.bp, align 8, !tbaa !130
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
  store i32 %i.bs, ptr %i.as, align 4, !tbaa !113
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.074117
  store i32 %i.au, ptr %i.bu, align 4, !tbaa !113
  %i.bv = icmp samesign ugt i64 %.074117.in, 1
  br i1 %i.bv, label %bb.e, label %._crit_edge120, !llvm.loop !1423

.lr.ph113.new:                                    ; preds = %.prol.loopexit158, %.lr.ph113.new
  %i.bw = phi i32 [ %i.cy, %.lr.ph113.new ], [ %.unr161, %.prol.loopexit158 ]
  %i.bx = phi i32 [ %i.ct, %.lr.ph113.new ], [ %.unr162, %.prol.loopexit158 ]
  %.073111 = phi i64 [ %i.db, %.lr.ph113.new ], [ %.073111.unr, %.prol.loopexit158 ] ; 4 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr [4 x i8], ptr %i.ay, i64 %.073111 ; 2 uses
  %i.ca = getelementptr [4 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !113
  %i.cc = sext i32 %i.bw to i64
  %i.cd = getelementptr [4 x i8], ptr %i.bz, i64 %i.cc
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !113
  %i.ce = load i32, ptr %i.as, align 4, !tbaa !113 ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr [8 x i8], ptr %i.ba, i64 %.073111 ; 2 uses
  %i.ch = getelementptr [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !130
  %i.cj = load i32, ptr %i.az, align 4, !tbaa !113 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr [8 x i8], ptr %i.cg, i64 %i.ck
  store double %i.ci, ptr %i.cl, align 8, !tbaa !130
  %i.cm = add nsw i64 %.073111, -1                ; 3 uses
  %i.cn = sext i32 %i.ce to i64
  %i.co = getelementptr [4 x i8], ptr %i.ay, i64 %i.cm ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.co, i64 %i.cn
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !113
  %i.cr = sext i32 %i.cj to i64
  %i.cs = getelementptr [4 x i8], ptr %i.co, i64 %i.cr
  store i32 %i.cq, ptr %i.cs, align 4, !tbaa !113
  %i.ct = load i32, ptr %i.as, align 4, !tbaa !113 ; 3 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr [8 x i8], ptr %i.ba, i64 %i.cm ; 2 uses
  %i.cw = getelementptr [8 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !130
  %i.cy = load i32, ptr %i.az, align 4, !tbaa !113 ; 3 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr [8 x i8], ptr %i.cv, i64 %i.cz
  store double %i.cx, ptr %i.da, align 8, !tbaa !130
  %i.db = add nsw i64 %.073111, -2
  %.not141.1 = icmp eq i64 %i.cm, 0
  br i1 %.not141.1, label %._crit_edge114, label %.lr.ph113.new, !llvm.loop !1424

._crit_edge120:                                   ; preds = %._crit_edge114
  %i.dc = add nsw i64 %i.u, -1                    ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !113
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dc
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !113
  %i.di = add nsw i32 %i.dh, %i.de
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !192
  %i.dl = add nsw i32 %i.di, %i.dk                ; 2 uses
  store i32 %i.dl, ptr %i.v, align 4, !tbaa !113
  br label %._crit_edge120._crit_edge

._crit_edge120._crit_edge:                        ; preds = %._crit_edge109, %._crit_edge120
  %i.dm = phi i32 [ %i.dl, %._crit_edge120 ], [ %i.x, %._crit_edge109 ]
  %i.dn = sext i32 %i.dm to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %i.dn, double noundef 0.000000e+00)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.do = add i64 %i.f, 4
  %i.dp = tail call noalias ptr @malloc(i64 noundef %i.do) #35 ; 7 uses
  %.not = icmp eq ptr %i.dp, null
  br i1 %.not, label %bb.g, label %.preheader94

.preheader94:                                     ; preds = %bb.f
  %i.dq = icmp sgt i64 %i.e, 0
  br i1 %i.dq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader94
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !138 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !192 ; 3 uses
  %.pre = load i32, ptr %i.ds, align 4, !tbaa !113 ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.dv = icmp eq i64 %i.e, 1
  br i1 %i.dv, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 9223372036854775806
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dw = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dw, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.dw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
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
  store i32 %.07295.epil.init, ptr %i.dx, align 4, !tbaa !113
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.07196.epil.init
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !113
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07196.epil.init
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !113 ; 2 uses
  %i.ed = add i32 %.epil.init, %i.ec
  %i.ee = sub i32 %i.ea, %i.ed
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %i.du, i32 %i.ee)
  %i.ef = add i32 %i.ec, %.07295.epil.init
  %i.eg = add i32 %i.ef, %.sroa.speculated.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader94
  %.072.lcssa = phi i32 [ 0, %.preheader94 ], [ %i.fj, %._crit_edge.loopexit.unr-lcssa ], [ %i.eg, %.epil.preheader ] ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.e
  store i32 %.072.lcssa, ptr %i.eh, align 4, !tbaa !113
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ej = sext i32 %.072.lcssa to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, i64 noundef %i.ej, double noundef 0.000000e+00)
  %i.ek = load i64, ptr %i.d, align 8, !tbaa !174 ; 2 uses
  %i.el = icmp sgt i64 %i.ek, 0
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !167 ; 2 uses
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
  store i32 %.07295, ptr %i.eq, align 4, !tbaa !113
  %i.er = or disjoint i64 %.07196, 1              ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !113 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07196
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !113 ; 2 uses
  %i.ew = add i32 %i.ep, %i.ev
  %i.ex = sub i32 %i.et, %i.ew
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.du, i32 %i.ex)
  %i.ey = add i32 %i.ev, %.07295
  %i.ez = add i32 %i.ey, %.sroa.speculated        ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.er
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !113
  %i.fb = add nuw nsw i64 %.07196, 2              ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !113 ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.er
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !113 ; 2 uses
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
  store ptr %i.dp, ptr %i.fk, align 8, !tbaa !167
  tail call void @free(ptr noundef %i.en) #33
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph103, %.loopexit
  %.069101.in = phi i64 [ %i.ek, %.lr.ph103 ], [ %.069101, %.loopexit ] ; 2 uses
  %.069101 = add nsw i64 %.069101.in, -1          ; 4 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.069101
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !113 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %.069101 ; 4 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !113 ; 3 uses
  %i.fp = icmp sgt i32 %i.fm, %i.fo
  br i1 %i.fp, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.fq = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %.069101
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !113 ; 3 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph99, label %.loopexit

.lr.ph99:                                         ; preds = %bb.j
  %i.fu = add nsw i32 %i.fs, -1                   ; 2 uses
  %i.fv = zext nneg i32 %i.fu to i64              ; 4 uses
  %i.fw = load ptr, ptr %i.eo, align 8, !tbaa !135 ; 3 uses
  %i.fx = load ptr, ptr %i.ei, align 8, !tbaa !134 ; 3 uses
  %i.fy = sext i32 %i.fm to i64                   ; 6 uses
  %i.fz = and i32 %i.fs, 1
  %lcmp.mod149.not = icmp eq i32 %i.fz, 0
  br i1 %lcmp.mod149.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph99
  %i.ga = sext i32 %i.fo to i64
  %i.gb = getelementptr [4 x i8], ptr %i.fw, i64 %i.fv ; 2 uses
  %i.gc = getelementptr [4 x i8], ptr %i.gb, i64 %i.ga
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !113
  %i.ge = getelementptr [4 x i8], ptr %i.gb, i64 %i.fy
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !113
  %i.gf = load i32, ptr %i.fn, align 4, !tbaa !113 ; 2 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr [8 x i8], ptr %i.fx, i64 %i.fv ; 2 uses
  %i.gi = getelementptr [8 x i8], ptr %i.gh, i64 %i.gg
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !130
  %i.gk = getelementptr [8 x i8], ptr %i.gh, i64 %i.fy
  store double %i.gj, ptr %i.gk, align 8, !tbaa !130
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
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !113
  %i.gs = getelementptr [4 x i8], ptr %i.gp, i64 %i.fy
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !113
  %i.gt = load i32, ptr %i.fn, align 4, !tbaa !113 ; 2 uses
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr [8 x i8], ptr %i.fx, i64 %.097 ; 2 uses
  %i.gw = getelementptr [8 x i8], ptr %i.gv, i64 %i.gu
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !130
  %i.gy = getelementptr [8 x i8], ptr %i.gv, i64 %i.fy
  store double %i.gx, ptr %i.gy, align 8, !tbaa !130
  %i.gz = add nsw i64 %.097, -1                   ; 3 uses
  %i.ha = sext i32 %i.gt to i64
  %i.hb = getelementptr [4 x i8], ptr %i.fw, i64 %i.gz ; 2 uses
  %i.hc = getelementptr [4 x i8], ptr %i.hb, i64 %i.ha
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !113
  %i.he = getelementptr [4 x i8], ptr %i.hb, i64 %i.fy
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !113
  %i.hf = load i32, ptr %i.fn, align 4, !tbaa !113 ; 2 uses
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr [8 x i8], ptr %i.fx, i64 %i.gz ; 2 uses
  %i.hi = getelementptr [8 x i8], ptr %i.hh, i64 %i.hg
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !130
  %i.hk = getelementptr [8 x i8], ptr %i.hh, i64 %i.fy
  store double %i.hj, ptr %i.hk, align 8, !tbaa !130
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi1EiE18insertUncompressedEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %3 = alloca %"class.Eigen::SparseMatrix<double, 1>::SingletonVector", align 4 ; 5 uses
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.d = getelementptr [4 x i8], ptr %i.c, i64 %1 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !113
  %i.g = load i32, ptr %i.d, align 4, !tbaa !113  ; 2 uses
  %i.h = sub nsw i32 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !139  ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %1
  %i.l = load i32, ptr %i.k, align 4, !tbaa !113  ; 3 uses
  %.not = icmp slt i32 %i.l, %i.h
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.l, i32 2)
  %i.m = trunc i64 %1 to i32
  store i32 %i.m, ptr %3, align 4, !tbaa !289
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.speculated, ptr %i.n, align 4, !tbaa !1429
  call void @_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS1_15SingletonVectorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !138
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %.pre, i64 %1
  %.pre29 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !113
  %.pre30 = load ptr, ptr %i.i, align 8, !tbaa !139 ; 2 uses
  %.phi.trans.insert31 = getelementptr inbounds [4 x i8], ptr %.pre30, i64 %1
  %.pre32 = load i32, ptr %.phi.trans.insert31, align 4, !tbaa !113
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
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !135  ; 3 uses
  br i1 %i.v, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.026 = phi i64 [ %i.u, %.lr.ph ], [ %i.z, %bb.e ] ; 4 uses
  %i.z = add nsw i64 %.026, -1                    ; 5 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !113 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, %i.a
  br i1 %i.ac, label %bb.e, label %.critedge.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.026
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !113
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !134 ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.z
  %i.ag = load double, ptr %i.af, align 8, !tbaa !130
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %.026
  store double %i.ag, ptr %i.ah, align 8, !tbaa !130
  %i.ai = icmp sgt i64 %i.z, %i.r
  br i1 %i.ai, label %bb.d, label %.critedge.loopexit, !llvm.loop !1428

.critedge.loopexit:                               ; preds = %bb.e, %bb.d
  %.0.lcssa.ph = phi i64 [ %.026, %bb.d ], [ %i.z, %bb.e ]
  %.pre33 = load i32, ptr %i.s, align 4, !tbaa !113
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.loopexit
  %i.aj = phi i32 [ %.pre33, %.critedge.loopexit ], [ %i.o, %bb.c ]
  %.0.lcssa = phi i64 [ %.0.lcssa.ph, %.critedge.loopexit ], [ %i.u, %bb.c ] ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.s, align 4, !tbaa !113
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.0.lcssa
  store i32 %i.a, ptr %i.am, align 4, !tbaa !113
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !134
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %.0.lcssa ; 2 uses
  store double 0.000000e+00, ptr %i.ao, align 8, !tbaa !130
  ret ptr %i.ao
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS1_15SingletonVectorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !174  ; 12 uses
  %i.f = shl i64 %i.e, 2                          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #35 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !139
  %.not80 = icmp eq ptr %i.g, null
  br i1 %.not80, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %.preheader
  %i.i = load i32, ptr %1, align 4, !tbaa !289
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !138  ; 4 uses
  %xtraiter155 = and i64 %i.e, 1
  %i.o = icmp eq i64 %i.e, 1
  br i1 %i.o, label %.epil.preheader154, label %.lr.ph108.new

.lr.ph108.new:                                    ; preds = %.lr.ph108
  %unroll_iter159 = and i64 %i.e, 9223372036854775806
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
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
  store i32 %.077105.epil.init, ptr %i.q, align 4, !tbaa !113
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
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !138  ; 3 uses
  %i.y = load i64, ptr %i.d, align 8, !tbaa !174  ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = icmp sgt i64 %i.y, 0
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !113 ; 2 uses
  br i1 %i.aa, label %.lr.ph119, label %._crit_edge120._crit_edge

.lr.ph119:                                        ; preds = %._crit_edge109
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !139
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph108.new
  %.070107 = phi i64 [ 0, %.lr.ph108.new ], [ %i.bd, %bb.d ]
  %.076106 = phi i64 [ 0, %.lr.ph108.new ], [ %i.au, %bb.d ] ; 5 uses
  %.077105 = phi i32 [ 0, %.lr.ph108.new ], [ %i.bb, %bb.d ] ; 2 uses
  %niter160 = phi i64 [ 0, %.lr.ph108.new ], [ %niter160.next.1, %bb.d ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076106
  store i32 %.077105, ptr %i.ae, align 4, !tbaa !113
  %i.af = icmp eq i64 %.076106, %i.j
  %i.ag = select i1 %i.af, i32 %i.l, i32 0        ; 2 uses
  %i.ah = or disjoint i64 %.076106, 1             ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !113
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.076106
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !113
  %i.am = add i32 %i.aj, %.077105
  %i.an = add i32 %i.am, %i.ag
  %i.ao = sub i32 %i.an, %i.al                    ; 2 uses
  %i.ap = sext i32 %i.ag to i64
  %i.aq = add nsw i64 %.070107, %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ah
  store i32 %i.ao, ptr %i.ar, align 4, !tbaa !113
  %i.as = icmp eq i64 %i.ah, %i.j
  %i.at = select i1 %i.as, i32 %i.l, i32 0        ; 2 uses
  %i.au = add nuw nsw i64 %.076106, 2             ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !113
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ah
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !113
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
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !113 ; 4 uses
  %i.bg = sub nsw i32 %.075116, %i.bf             ; 4 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph113, label %.._crit_edge114_crit_edge

.._crit_edge114_crit_edge:                        ; preds = %bb.e
  %.phi.trans.insert125 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117
  %.pre126 = load i32, ptr %.phi.trans.insert125, align 4, !tbaa !113
  br label %._crit_edge114

.lr.ph113:                                        ; preds = %bb.e
  %i.bi = add nsw i32 %i.bg, -1                   ; 2 uses
  %i.bj = zext nneg i32 %i.bi to i64              ; 4 uses
  %i.bk = load ptr, ptr %i.ac, align 8, !tbaa !135 ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117 ; 4 uses
  %i.bm = load ptr, ptr %i.v, align 8, !tbaa !134 ; 3 uses
  %.pre124 = load i32, ptr %i.bl, align 4, !tbaa !113 ; 2 uses
  %i.bn = and i32 %i.bg, 1
  %lcmp.mod164.not = icmp eq i32 %i.bn, 0
  br i1 %lcmp.mod164.not, label %.prol.loopexit162, label %.prol.loopexit162.unr-lcssa

.prol.loopexit162.unr-lcssa:                      ; preds = %.lr.ph113
  %i.bo = sext i32 %i.bf to i64
  %i.bp = getelementptr [4 x i8], ptr %i.bk, i64 %i.bj ; 2 uses
  %i.bq = getelementptr [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !113
  %i.bs = sext i32 %.pre124 to i64
  %i.bt = getelementptr [4 x i8], ptr %i.bp, i64 %i.bs
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !113
  %i.bu = load i32, ptr %i.be, align 4, !tbaa !113 ; 3 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr [8 x i8], ptr %i.bm, i64 %i.bj ; 2 uses
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load double, ptr %i.bx, align 8, !tbaa !130
  %i.bz = load i32, ptr %i.bl, align 4, !tbaa !113 ; 3 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr [8 x i8], ptr %i.bw, i64 %i.ca
  store double %i.by, ptr %i.cb, align 8, !tbaa !130
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
  store i32 %i.ce, ptr %i.be, align 4, !tbaa !113
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.074117
  store i32 %i.bg, ptr %i.cg, align 4, !tbaa !113
  %i.ch = icmp samesign ugt i64 %.074117.in, 1
  br i1 %i.ch, label %bb.e, label %._crit_edge120, !llvm.loop !1431

.lr.ph113.new:                                    ; preds = %.prol.loopexit162, %.lr.ph113.new
  %i.ci = phi i32 [ %i.dk, %.lr.ph113.new ], [ %.unr165, %.prol.loopexit162 ]
  %i.cj = phi i32 [ %i.df, %.lr.ph113.new ], [ %.unr166, %.prol.loopexit162 ]
  %.073111 = phi i64 [ %i.dn, %.lr.ph113.new ], [ %.073111.unr, %.prol.loopexit162 ] ; 4 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr [4 x i8], ptr %i.bk, i64 %.073111 ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !113
  %i.co = sext i32 %i.ci to i64
  %i.cp = getelementptr [4 x i8], ptr %i.cl, i64 %i.co
  store i32 %i.cn, ptr %i.cp, align 4, !tbaa !113
  %i.cq = load i32, ptr %i.be, align 4, !tbaa !113 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [8 x i8], ptr %i.bm, i64 %.073111 ; 2 uses
  %i.ct = getelementptr [8 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !130
  %i.cv = load i32, ptr %i.bl, align 4, !tbaa !113 ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr [8 x i8], ptr %i.cs, i64 %i.cw
  store double %i.cu, ptr %i.cx, align 8, !tbaa !130
  %i.cy = add nsw i64 %.073111, -1                ; 3 uses
  %i.cz = sext i32 %i.cq to i64
  %i.da = getelementptr [4 x i8], ptr %i.bk, i64 %i.cy ; 2 uses
  %i.db = getelementptr [4 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !113
  %i.dd = sext i32 %i.cv to i64
  %i.de = getelementptr [4 x i8], ptr %i.da, i64 %i.dd
  store i32 %i.dc, ptr %i.de, align 4, !tbaa !113
  %i.df = load i32, ptr %i.be, align 4, !tbaa !113 ; 3 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [8 x i8], ptr %i.bm, i64 %i.cy ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = load double, ptr %i.di, align 8, !tbaa !130
  %i.dk = load i32, ptr %i.bl, align 4, !tbaa !113 ; 3 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr [8 x i8], ptr %i.dh, i64 %i.dl
  store double %i.dj, ptr %i.dm, align 8, !tbaa !130
  %i.dn = add nsw i64 %.073111, -2
  %.not142.1 = icmp eq i64 %i.cy, 0
  br i1 %.not142.1, label %._crit_edge114, label %.lr.ph113.new, !llvm.loop !1432

._crit_edge120:                                   ; preds = %._crit_edge114
  %i.do = add nsw i64 %i.y, -1                    ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !113
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.do
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !113
  %i.du = add nsw i32 %i.dt, %i.dq
  %i.dv = load i32, ptr %1, align 4, !tbaa !289
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp eq i64 %i.do, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = select i1 %i.dx, i32 %i.dz, i32 0
  %i.eb = add nsw i32 %i.du, %i.ea                ; 2 uses
  store i32 %i.eb, ptr %i.z, align 4, !tbaa !113
  br label %._crit_edge120._crit_edge

._crit_edge120._crit_edge:                        ; preds = %._crit_edge109, %._crit_edge120
  %i.ec = phi i32 [ %i.eb, %._crit_edge120 ], [ %i.ab, %._crit_edge109 ]
  %i.ed = sext i32 %i.ec to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ed, double noundef 0.000000e+00)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.ee = add i64 %i.f, 4
  %i.ef = tail call noalias ptr @malloc(i64 noundef %i.ee) #35 ; 7 uses
  %.not = icmp eq ptr %i.ef, null
  br i1 %.not, label %bb.g, label %.preheader94

.preheader94:                                     ; preds = %bb.f
  %i.eg = icmp sgt i64 %i.e, 0
  br i1 %i.eg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader94
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !138 ; 4 uses
  %i.ej = load i32, ptr %1, align 4, !tbaa !289
  %i.ek = sext i32 %i.ej to i64                   ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.em = load i32, ptr %i.el, align 4            ; 3 uses
  %.pre = load i32, ptr %i.ei, align 4, !tbaa !113 ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.en = icmp eq i64 %i.e, 1
  br i1 %i.en, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 9223372036854775806
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.eo = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.eo, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.eo, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
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
  store i32 %.07295.epil.init, ptr %i.ep, align 4, !tbaa !113
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.07196.epil.init
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !113
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07196.epil.init
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !113 ; 2 uses
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
  store i32 %.072.lcssa, ptr %i.fb, align 4, !tbaa !113
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fd = sext i32 %.072.lcssa to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, i64 noundef %i.fd, double noundef 0.000000e+00)
  %i.fe = load i64, ptr %i.d, align 8, !tbaa !174 ; 2 uses
  %i.ff = icmp sgt i64 %i.fe, 0
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !167 ; 2 uses
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
  store i32 %.07295, ptr %i.fk, align 4, !tbaa !113
  %i.fl = or disjoint i64 %.07196, 1              ; 4 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !113 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07196
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !113 ; 2 uses
  %i.fq = add i32 %i.fj, %i.fp
  %i.fr = sub i32 %i.fn, %i.fq
  %i.fs = icmp eq i64 %.07196, %i.ek
  %i.ft = select i1 %i.fs, i32 %i.em, i32 0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.ft, i32 %i.fr)
  %i.fu = add i32 %i.fp, %.07295
  %i.fv = add i32 %i.fu, %.sroa.speculated        ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.fl
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !113
  %i.fx = add nuw nsw i64 %.07196, 2              ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !113 ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fl
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !113 ; 2 uses
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
  store ptr %i.ef, ptr %i.gi, align 8, !tbaa !167
  tail call void @free(ptr noundef %i.fh) #33
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph103, %.loopexit
  %.069101.in = phi i64 [ %i.fe, %.lr.ph103 ], [ %.069101, %.loopexit ] ; 2 uses
  %.069101 = add nsw i64 %.069101.in, -1          ; 4 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.069101
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !113 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.069101 ; 4 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !113 ; 3 uses
  %i.gn = icmp sgt i32 %i.gk, %i.gm
  br i1 %i.gn, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.go = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.069101
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !113 ; 3 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph99, label %.loopexit

.lr.ph99:                                         ; preds = %bb.j
  %i.gs = add nsw i32 %i.gq, -1                   ; 2 uses
  %i.gt = zext nneg i32 %i.gs to i64              ; 4 uses
  %i.gu = load ptr, ptr %i.fi, align 8, !tbaa !135 ; 3 uses
  %i.gv = load ptr, ptr %i.fc, align 8, !tbaa !134 ; 3 uses
  %i.gw = sext i32 %i.gk to i64                   ; 6 uses
  %i.gx = and i32 %i.gq, 1
  %lcmp.mod152.not = icmp eq i32 %i.gx, 0
  br i1 %lcmp.mod152.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph99
  %i.gy = sext i32 %i.gm to i64
  %i.gz = getelementptr [4 x i8], ptr %i.gu, i64 %i.gt ; 2 uses
  %i.ha = getelementptr [4 x i8], ptr %i.gz, i64 %i.gy
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !113
  %i.hc = getelementptr [4 x i8], ptr %i.gz, i64 %i.gw
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !113
  %i.hd = load i32, ptr %i.gl, align 4, !tbaa !113 ; 2 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr [8 x i8], ptr %i.gv, i64 %i.gt ; 2 uses
  %i.hg = getelementptr [8 x i8], ptr %i.hf, i64 %i.he
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !130
  %i.hi = getelementptr [8 x i8], ptr %i.hf, i64 %i.gw
  store double %i.hh, ptr %i.hi, align 8, !tbaa !130
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
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !113
  %i.hq = getelementptr [4 x i8], ptr %i.hn, i64 %i.gw
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !113
  %i.hr = load i32, ptr %i.gl, align 4, !tbaa !113 ; 2 uses
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr [8 x i8], ptr %i.gv, i64 %.097 ; 2 uses
  %i.hu = getelementptr [8 x i8], ptr %i.ht, i64 %i.hs
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !130
  %i.hw = getelementptr [8 x i8], ptr %i.ht, i64 %i.gw
  store double %i.hv, ptr %i.hw, align 8, !tbaa !130
  %i.hx = add nsw i64 %.097, -1                   ; 3 uses
  %i.hy = sext i32 %i.hr to i64
  %i.hz = getelementptr [4 x i8], ptr %i.gu, i64 %i.hx ; 2 uses
  %i.ia = getelementptr [4 x i8], ptr %i.hz, i64 %i.hy
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !113
  %i.ic = getelementptr [4 x i8], ptr %i.hz, i64 %i.gw
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !113
  %i.id = load i32, ptr %i.gl, align 4, !tbaa !113 ; 2 uses
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr [8 x i8], ptr %i.gv, i64 %i.hx ; 2 uses
  %i.ig = getelementptr [8 x i8], ptr %i.if, i64 %i.ie
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !130
  %i.ii = getelementptr [8 x i8], ptr %i.if, i64 %i.gw
  store double %i.ih, ptr %i.ii, align 8, !tbaa !130
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
  %3 = alloca %"class.Eigen::SparseMatrix.61", align 8 ; 15 uses
  %4 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !102  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39   ; 4 uses
  store i8 0, ptr %3, align 8, !tbaa !132
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !175
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.h = shl i64 %i.b, 2                          ; 2 uses
  %i.i = add i64 %i.h, 4
  %calloc79 = tail call ptr @calloc(i64 1, i64 %i.i) ; 2 uses
  store ptr %calloc79, ptr %i.g, align 8, !tbaa !138
  %.not6.i = icmp eq ptr %calloc79, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi1EiEC2Ell.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !119
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
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
  store i64 %i.b, ptr %i.e, align 8, !tbaa !174
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !119
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.cont.i unwind label %bb.f

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.f:                                             ; preds = %.invoke.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  store ptr %calloc, ptr %4, align 8, !tbaa !94
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.sink.split

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.sink.split: ; preds = %bb.d, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i
  %.ph = phi ptr [ %calloc, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i ], [ null, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.b, ptr %i.s, align 8, !tbaa !112
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.sink.split, %_ZN5Eigen12SparseMatrixIdLi1EiEC2Ell.exit
  %i.t = phi ptr [ null, %_ZN5Eigen12SparseMatrixIdLi1EiEC2Ell.exit ], [ %.ph, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.sink.split ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !112  ; 8 uses
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
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.y) #35 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.invoke.i.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i

.invoke.i.i:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i, %bb.h
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ab, align 8, !tbaa !119
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
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
begin_hunk_6_@_ZN3igl25min_quad_with_fixed_solveIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_S3_S3_NS2_IdLin1ELin1ELi0ELin1ELin1EEEEEbRKNS_24min_quad_with_fixed_dataIT_EERKNS1_10MatrixBaseIT0_EERKNSA_IT1_EERKNSA_IT2_EERNS1_15PlainObjectBaseIT3_EERNSN_IT4_EE:bb.a
  %i.tb = fneg double %i.su
  %i.tc = call double @llvm.fmuladd.f64(double %i.tb, double %i.sw, double %i.ta)
  store double %i.tc, ptr %gep.i.i.1, align 8, !tbaa !130
  %i.td = add nsw i64 %.sroa.11.238.i.i, 2        ; 2 uses
  %exitcond49.not.i.i.1 = icmp eq i64 %i.td, %.sink.i.i.i
  br i1 %exitcond49.not.i.i.1, label %.loopexit.i.i, label %.lr.ph39.i.i, !llvm.loop !12

.loopexit.i.i:                                    ; preds = %.lr.ph39.i.i.prol.loopexit, %.lr.ph39.i.i, %bb.ay, %bb.as
  %i.te = add nuw nsw i64 %.01940.i.i, 1          ; 2 uses
  %exitcond50.not.i.i = icmp eq i64 %i.te, %i.qi
  br i1 %exitcond50.not.i.i, label %._crit_edge.i.i, label %bb.as, !llvm.loop !13

.loopexit434:                                     ; preds = %._crit_edge.i.i, %.preheader.lr.ph.i.i, %.loopexit435
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #33
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 1712
  store ptr %i.tf, ptr %44, align 8
  %i.tg = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %35, ptr %i.tg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #33
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISC_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef null)
          to label %bb.az unwind label %bb.ca

bb.az:                                            ; preds = %.loopexit434
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %45, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #33
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 1928 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i8 0, ptr %i.tj, align 8, !alias.scope !1573
  %i.tk = getelementptr inbounds nuw i8, ptr %46, i64 16
  store ptr %i.th, ptr %i.tk, align 8, !tbaa !101, !alias.scope !1573
  %i.tl = getelementptr inbounds nuw i8, ptr %46, i64 32
  store ptr %i.ti, ptr %i.tl, align 8
  %.sroa.9.24..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 40
  store ptr %43, ptr %.sroa.9.24..sroa_idx, align 8
  %i.tm = getelementptr inbounds nuw i8, ptr %46, i64 48
  store ptr %i.th, ptr %i.tm, align 8
  %.sroa.5346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 56
  store ptr %39, ptr %.sroa.5346.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #33
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEENS7_ISC_S3_Li0EEELi0EEEKSF_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISO_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(65) %46, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef null)
          to label %bb.ba unwind label %bb.cb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %47, i8 0, i64 24, i1 false)
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !39 ; 4 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !129 ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %47, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.tp, 0        ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %47, i64 16
  %.not11.i.i.i.i.i.i = icmp eq i64 %i.tr, 0      ; 2 uses
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %.not11.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %or.cond.i.i.i.i.i.i.i.i248 = or i1 %.not.i.i.i.i.i.i, %.not11.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i248, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.tu = sdiv i64 9223372036854775807, %i.tr
  %i.tv = icmp sgt i64 %i.tp, %i.tu
  br i1 %i.tv, label %.invoke547, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %i.tw = mul nsw i64 %i.tr, %i.tp                ; 4 uses
  %.not.i316 = icmp eq i64 %i.tw, 0
  br i1 %.not.i316, label %.noexc251, label %bb.bd

bb.bd:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  %i.tx = icmp sgt i64 %i.tw, 0
  br i1 %i.tx, label %bb.be, label %.sink.split.i317

bb.be:                                            ; preds = %bb.bd
  %i.ty = icmp samesign ugt i64 %i.tw, 2305843009213693951
  br i1 %i.ty, label %.invoke547, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i319

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i319: ; preds = %bb.be
  %i.tz = shl nuw i64 %i.tw, 3
  %i.ua = call noalias ptr @malloc(i64 noundef %i.tz) #35 ; 2 uses
  %i.ub = icmp eq ptr %i.ua, null
  br i1 %i.ub, label %.invoke547, label %.sink.split.i317

.invoke547:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i319, %bb.be, %bb.bc
  %i.uc = call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.uc, align 8, !tbaa !119
  invoke void @__cxa_throw(ptr nonnull %i.uc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.cont548 unwind label %bb.cc

.cont548:                                         ; preds = %.invoke547
  unreachable

.sink.split.i317:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i319, %bb.bd
  %.sink.i318 = phi ptr [ %i.ua, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i319 ], [ null, %bb.bd ]
  store ptr %.sink.i318, ptr %47, align 8, !tbaa !32
  br label %.noexc251

.noexc251:                                        ; preds = %.sink.split.i317, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  store i64 %i.tp, ptr %i.ts, align 8, !tbaa !128
  store i64 %i.tr, ptr %i.tt, align 8, !tbaa !129
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i: ; preds = %.noexc251, %bb.ba
  invoke void @_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE(ptr noundef nonnull align 8 dereferenceable(184) %i.tn, ptr noundef nonnull align 1 dereferenceable(1) %45, ptr noundef nonnull align 8 dereferenceable(24) %47)
          to label %bb.bf unwind label %bb.cc

bb.bf:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #33
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store ptr %i.ud, ptr %49, align 8
  %.sroa.5342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %47, ptr %.sroa.5342.0..sroa_idx, align 8
  %i.ue = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr %43, ptr %i.ue, align 8, !tbaa !298, !alias.scope !1574
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #33
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEEKS3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(25) %49, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.bg unwind label %bb.cd

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #33
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 2 uses
  store ptr %i.uf, ptr %53, align 8
  %.sroa.5340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 8
  store ptr %39, ptr %.sroa.5340.0..sroa_idx, align 8
  %i.ug = getelementptr inbounds nuw i8, ptr %53, i64 16
  store i8 0, ptr %i.ug, align 8
  %.sroa.6337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 24
  store ptr %i.uf, ptr %.sroa.6337.0..sroa_idx, align 8
  %.sroa.7338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 32
  store ptr %i.ti, ptr %.sroa.7338.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 40
  store ptr %48, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #33
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEEKNS7_INS7_IS9_S9_Li2EEES3_Li0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISK_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(49) %53, ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef null)
          to label %bb.bh unwind label %bb.ce

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #33
  %i.uh = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !129 ; 2 uses
  %i.uj = icmp sgt i64 %i.ui, 0
  br i1 %i.uj, label %.lr.ph56.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i271

.lr.ph56.i.i:                                     ; preds = %bb.bh
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 2008
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !39 ; 2 uses
  %i.um = icmp sgt i64 %i.ul, 0
  %i.un = load ptr, ptr %51, align 8
  %i.uo = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.up = load i64, ptr %i.uo, align 8
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 2032
  br i1 %i.um, label %.lr.ph51.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i271

.lr.ph51.i.i:                                     ; preds = %.lr.ph56.i.i, %._crit_edge.i.i260
  %.02654.i.i = phi i64 [ %i.uv, %._crit_edge.i.i260 ], [ 0, %.lr.ph56.i.i ] ; 2 uses
  %i.uu = mul nsw i64 %.02654.i.i, %i.up
  %invariant.gep52.i.i = getelementptr [8 x i8], ptr %i.un, i64 %i.uu ; 2 uses
  br label %bb.bi

._crit_edge.i.i260:                               ; preds = %.critedge2.i.i
  %i.uv = add nuw nsw i64 %.02654.i.i, 1          ; 2 uses
  %exitcond59.not.i.i = icmp eq i64 %i.uv, %i.ui
  br i1 %exitcond59.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i271, label %.lr.ph51.i.i, !llvm.loop !1550

bb.bi:                                            ; preds = %.critedge2.i.i, %.lr.ph51.i.i
  %.02550.in.i.i = phi i64 [ %i.ul, %.lr.ph51.i.i ], [ %.02550.i.i, %.critedge2.i.i ] ; 2 uses
  %.02550.i.i = add nsw i64 %.02550.in.i.i, -1    ; 7 uses
  %gep53.i.i = getelementptr [8 x i8], ptr %invariant.gep52.i.i, i64 %.02550.i.i ; 3 uses
  %i.uw = load double, ptr %gep53.i.i, align 8, !tbaa !130 ; 2 uses
  %i.ux = fcmp une double %i.uw, 0.000000e+00
  br i1 %i.ux, label %bb.bj, label %.critedge2.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.uy = load ptr, ptr %i.uq, align 8, !tbaa !134 ; 2 uses
  %i.uz = load ptr, ptr %i.ur, align 8, !tbaa !135 ; 2 uses
  %i.va = load ptr, ptr %i.us, align 8, !tbaa !127
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %.02550.i.i ; 3 uses
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !113
  %i.vd = sext i32 %i.vc to i64                   ; 7 uses
  %i.ve = load ptr, ptr %i.ut, align 8, !tbaa !133 ; 3 uses
  %i.vf = icmp eq ptr %i.ve, null                 ; 2 uses
  br i1 %i.vf, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.vg = getelementptr i8, ptr %i.vb, i64 4
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !113
  %i.vi = sext i32 %i.vh to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i261

bb.bl:                                            ; preds = %bb.bj
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %.02550.i.i
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !113
  %i.vl = sext i32 %i.vk to i64
  %i.vm = add nsw i64 %i.vl, %i.vd
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i261

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i261: ; preds = %bb.bl, %bb.bk
  %.sink.i.i.i262 = phi i64 [ %i.vi, %bb.bk ], [ %i.vm, %bb.bl ] ; 3 uses
  %i.vn = icmp sgt i64 %.sink.i.i.i262, %i.vd
  br i1 %i.vn, label %.lr.ph.i.i265, label %.critedge.i.i263

.lr.ph.i.i265:                                    ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i261, %bb.bm
  %.sroa.837.043.i.i = phi i64 [ %i.vr, %bb.bm ], [ %i.vd, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i261 ] ; 3 uses
  %i.vo = getelementptr inbounds [4 x i8], ptr %i.uz, i64 %.sroa.837.043.i.i
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !113
  %i.vq = sext i32 %i.vp to i64
  %.not.i.i = icmp eq i64 %.02550.i.i, %i.vq
  br i1 %.not.i.i, label %.critedge.i.i263, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i265
  %i.vr = add nsw i64 %.sroa.837.043.i.i, 1       ; 2 uses
  %exitcond.not.i.i266 = icmp eq i64 %i.vr, %.sink.i.i.i262
  br i1 %exitcond.not.i.i266, label %.critedge.i.i263, label %.lr.ph.i.i265, !llvm.loop !1551

.critedge.i.i263:                                 ; preds = %bb.bm, %.lr.ph.i.i265, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i261
  %.sroa.837.0.lcssa.i.i = phi i64 [ %i.vd, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i261 ], [ %.sink.i.i.i262, %bb.bm ], [ %.sroa.837.043.i.i, %.lr.ph.i.i265 ]
  %i.vs = getelementptr inbounds [8 x i8], ptr %i.uy, i64 %.sroa.837.0.lcssa.i.i
  %i.vt = load double, ptr %i.vs, align 8, !tbaa !130
  %i.vu = fdiv double %i.uw, %i.vt
  store double %i.vu, ptr %gep53.i.i, align 8, !tbaa !130
  br i1 %i.vf, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.critedge.i.i263
  %i.vv = getelementptr i8, ptr %i.vb, i64 4
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !113
  %i.vx = sext i32 %i.vw to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i

bb.bo:                                            ; preds = %.critedge.i.i263
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %.02550.i.i
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !113
  %i.wa = sext i32 %i.vz to i64
  %i.wb = add nsw i64 %i.wa, %i.vd
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i: ; preds = %bb.bo, %bb.bn
  %.sink.i28.i.i = phi i64 [ %i.vx, %bb.bn ], [ %i.wb, %bb.bo ] ; 2 uses
  %i.wc = icmp sgt i64 %.sink.i28.i.i, %i.vd
  br i1 %i.wc, label %.lr.ph47.i.i, label %.critedge2.i.i

.lr.ph47.i.i:                                     ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i, %bb.bp
  %.sroa.9.046.i.i = phi i64 [ %i.wn, %bb.bp ], [ %i.vd, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i ] ; 3 uses
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.uz, i64 %.sroa.9.046.i.i
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !113
  %i.wf = sext i32 %i.we to i64                   ; 2 uses
  %i.wg = icmp sgt i64 %.02550.i.i, %i.wf
  br i1 %i.wg, label %bb.bp, label %.critedge2.i.i

bb.bp:                                            ; preds = %.lr.ph47.i.i
  %i.wh = load double, ptr %gep53.i.i, align 8, !tbaa !130
  %i.wi = getelementptr inbounds [8 x i8], ptr %i.uy, i64 %.sroa.9.046.i.i
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !130
  %gep.i.i264 = getelementptr [8 x i8], ptr %invariant.gep52.i.i, i64 %i.wf ; 2 uses
  %i.wk = load double, ptr %gep.i.i264, align 8, !tbaa !130
  %i.wl = fneg double %i.wh
  %i.wm = call double @llvm.fmuladd.f64(double %i.wl, double %i.wj, double %i.wk)
  store double %i.wm, ptr %gep.i.i264, align 8, !tbaa !130
  %i.wn = add nsw i64 %.sroa.9.046.i.i, 1         ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %i.wn, %.sink.i28.i.i
  br i1 %exitcond58.not.i.i, label %.critedge2.i.i, label %.lr.ph47.i.i, !llvm.loop !1552

.critedge2.i.i:                                   ; preds = %bb.bp, %.lr.ph47.i.i, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29.i.i, %bb.bi
  %i.wo = icmp sgt i64 %.02550.in.i.i, 1
  br i1 %i.wo, label %bb.bi, label %._crit_edge.i.i260, !llvm.loop !1553

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i271: ; preds = %._crit_edge.i.i260, %.lr.ph56.i.i, %bb.bh
  %sext161 = shl i64 %i.ng, 32                    ; 4 uses
  %i.wp = ashr exact i64 %sext161, 32             ; 6 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 3 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 3 uses
  %.not.i.i.i.i.i.i.i.i267 = icmp eq i64 %sext161, 0
  br i1 %.not.i.i.i.i.i.i.i.i267, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread, label %bb.bq

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i271
  store i64 %i.wp, ptr %i.wq, align 8, !tbaa !128
  store i64 1, ptr %i.wr, align 8, !tbaa !129
  br label %.loopexit

bb.bq:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i271
  %i.ws = icmp sgt i64 %i.wp, 0
  br i1 %i.ws, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i326, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread537

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread537: ; preds = %bb.bq
  store ptr null, ptr %52, align 8, !tbaa !32
  store i64 %i.wp, ptr %i.wq, align 8, !tbaa !128
  store i64 1, ptr %i.wr, align 8, !tbaa !129
  br label %.loopexit

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i326: ; preds = %bb.bq
  %i.wt = lshr exact i64 %sext161, 29
  %i.wu = call noalias ptr @malloc(i64 noundef %i.wt) #35 ; 4 uses
  %i.wv = icmp eq ptr %i.wu, null
  br i1 %i.wv, label %bb.br, label %.loopexit.loopexit

bb.br:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i326
  %i.ww = call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ww, align 8, !tbaa !119
  invoke void @__cxa_throw(ptr nonnull %i.ww, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc328 unwind label %bb.cf

.noexc328:                                        ; preds = %bb.br
  unreachable

.loopexit.loopexit:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i326
  store ptr %i.wu, ptr %52, align 8, !tbaa !32
  store i64 %i.wp, ptr %i.wq, align 8, !tbaa !128
  store i64 1, ptr %i.wr, align 8, !tbaa !129
  %.idx.i.i.i.i.i.i.i.i.i = lshr exact i64 %sext161, 29
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.wu, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !130
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread537, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread, %.loopexit.loopexit
  %i.wx = phi ptr [ null, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread ], [ %i.wu, %.loopexit.loopexit ], [ null, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread537 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #33
  store ptr %i.wx, ptr %54, align 8, !tbaa !300, !alias.scope !1575
  %i.wy = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 %i.nh, ptr %i.wy, align 8, !tbaa !159, !alias.scope !1575
  %i.wz = getelementptr inbounds nuw i8, ptr %54, i64 16
  store i64 1, ptr %i.wz, align 8, !tbaa !159, !alias.scope !1575
  %i.xa = getelementptr inbounds nuw i8, ptr %54, i64 24
  store ptr %52, ptr %i.xa, align 8, !tbaa !298, !alias.scope !1575
  %i.xb = getelementptr inbounds nuw i8, ptr %54, i64 32
  %i.xc = getelementptr inbounds nuw i8, ptr %54, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xb, i8 0, i64 16, i1 false), !alias.scope !1575
  store i64 %i.wp, ptr %i.xc, align 8, !tbaa !303, !alias.scope !1575
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.xd = load ptr, ptr %51, align 8, !tbaa !32
  %i.xe = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !128
  store ptr %i.xd, ptr %15, align 8, !tbaa !305
  %i.xg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.xf, ptr %i.xg, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  store ptr %i.wx, ptr %16, align 8, !tbaa !308
  %i.xh = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.wp, ptr %i.xh, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  store ptr %16, ptr %17, align 8, !tbaa !310
  %i.xi = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %15, ptr %i.xi, align 8, !tbaa !1576
  %i.xj = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %18, ptr %i.xj, align 8, !tbaa !313
  %i.xk = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %54, ptr %i.xk, align 8, !tbaa !315
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.bs unwind label %bb.cg

bb.bs:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #33
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 2144
  store ptr %i.xl, ptr %55, align 8
  %i.xm = getelementptr inbounds nuw i8, ptr %55, i64 8
  store ptr %52, ptr %i.xm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISC_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef null)
          to label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i unwind label %bb.ch

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #33
  %i.xn = load ptr, ptr %52, align 8, !tbaa !32
  call void @free(ptr noundef %i.xn) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #33
  %i.xo = load ptr, ptr %51, align 8, !tbaa !32
  call void @free(ptr noundef %i.xo) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #33
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.xq = load i64, ptr %i.xp, align 8, !tbaa !112
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !151
  %i.xt = sext i32 %i.xs to i64
  %i.xu = add nsw i64 %i.xq, %i.xt                ; 2 uses
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.xu, i64 noundef %i.xu, i64 noundef 1)
          to label %bb.bt unwind label %bb.cj

bb.bt:                                            ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #33
  %i.xv = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  %i.xw = load ptr, ptr %5, align 8, !tbaa !32, !noalias !1577 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !128, !noalias !1577 ; 2 uses
  store ptr %i.xw, ptr %56, align 8, !tbaa !300, !alias.scope !1577
  %i.xz = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.ya = load <2 x i64>, ptr %i.xv, align 8, !tbaa !97
  %i.yb = load i64, ptr %i.xv, align 8, !tbaa !128
  store <2 x i64> %i.ya, ptr %i.xz, align 8, !tbaa !159, !alias.scope !1577
  %i.yc = getelementptr inbounds nuw i8, ptr %56, i64 24
  store ptr %5, ptr %i.yc, align 8, !tbaa !298, !alias.scope !1577
  %i.yd = getelementptr inbounds nuw i8, ptr %56, i64 32
  %i.ye = getelementptr inbounds nuw i8, ptr %56, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yd, i8 0, i64 16, i1 false)
  store i64 %i.xy, ptr %i.ye, align 8, !tbaa !303, !alias.scope !1577
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.yf = load ptr, ptr %48, align 8, !tbaa !32
  store ptr %i.yf, ptr %10, align 8, !tbaa !305
  %i.yg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.yb, ptr %i.yg, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  store ptr %i.xw, ptr %11, align 8, !tbaa !308
  %i.yh = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.xy, ptr %i.yh, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  store ptr %11, ptr %12, align 8, !tbaa !310
  %i.yi = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %10, ptr %i.yi, align 8, !tbaa !1576
  %i.yj = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %13, ptr %i.yj, align 8, !tbaa !313
  %i.yk = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %56, ptr %i.yk, align 8, !tbaa !315
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bu unwind label %bb.ck

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #33
  %i.yl = load i64, ptr %i.xv, align 8, !tbaa !128 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1578)
end_hunk_6
begin_hunk_7_@_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEEES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:bb.a
  br i1 %i.v, label %.noexc, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

.noexc:                                           ; preds = %bb.c
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.c, %bb.b
  %i.x = mul nsw i64 %i.n, %i.l
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.x, i64 noundef %i.l, i64 noundef %i.n)
  %.pr = load i64, ptr %i.q, align 8, !tbaa !129
  %.pre = load i64, ptr %i.o, align 8, !tbaa !128
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.a
  %i.y = phi i64 [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.l, %bb.a ] ; 11 uses
  %i.z = phi i64 [ %.pr, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.n, %bb.a ] ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !32    ; 4 uses
  %i.ab = and i64 %i.y, 1
  %i.ac = icmp sgt i64 %i.z, 0
  br i1 %i.ac, label %.lr.ph54.i.preheader, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEES5_Li1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSL_.exit

.lr.ph54.i.preheader:                             ; preds = %bb.d
  %i.ad = ptrtoaddr ptr %i.aa to i64              ; 2 uses
  %i.ae = sub i64 %i.ad, %i.f
  %i.af = shl i64 %i.y, 3
  %i.ag = sub i64 %i.ad, %i.h
  %i.ah = sub i64 %i.y, %i.j
  %i.ai = shl i64 %i.ah, 3
  %invariant.op = add i64 %i.ae, -1
  %invariant.op39 = add i64 %i.ag, -1
  br label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.preheader, %._crit_edge.i
  %.03152.i = phi i64 [ %i.bu, %._crit_edge.i ], [ 0, %.lr.ph54.i.preheader ] ; 9 uses
  %.03251.i = phi i64 [ %.sroa.speculated.i, %._crit_edge.i ], [ 0, %.lr.ph54.i.preheader ] ; 6 uses
  %i.aj = mul i64 %i.af, %.03152.i
  %i.ak = mul i64 %i.ai, %.03152.i
  %i.al = sub i64 %i.y, %.03251.i                 ; 2 uses
  %i.am = and i64 %i.al, -2                       ; 2 uses
  %i.an = add nsw i64 %i.am, %.03251.i            ; 6 uses
  %i.ao = icmp sgt i64 %.03251.i, 0
  br i1 %i.ao, label %.preheader39.loopexit.i, label %.preheader39.i

.preheader39.loopexit.i:                          ; preds = %.lr.ph54.i
  %i.ap = mul nsw i64 %.03152.i, %i.j
  %invariant.gep41.i = getelementptr [8 x i8], ptr %i.g, i64 %i.ap
  %i.aq = mul nsw i64 %.03152.i, %i.y
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.aa, i64 %i.aq
  %i.ar = load double, ptr %i.e, align 8, !tbaa !130
  %i.as = fdiv double 1.000000e+00, %i.ar
  %i.at = load double, ptr %invariant.gep41.i, align 8, !tbaa !130
  %i.au = fmul double %i.as, %i.at
  store double %i.au, ptr %invariant.gep.i, align 8, !tbaa !130
  br label %.preheader39.i

.preheader39.i:                                   ; preds = %.preheader39.loopexit.i, %.lr.ph54.i
  %i.av = icmp sgt i64 %i.al, 1
  br i1 %i.av, label %.lr.ph44.i.preheader, label %.preheader.i

.lr.ph44.i.preheader:                             ; preds = %.preheader39.i
  %i.aw = mul nsw i64 %.03152.i, %i.y
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.aw
  %i.ax = mul nsw i64 %.03152.i, %i.j
  %invariant.gep29 = getelementptr [8 x i8], ptr %i.g, i64 %i.ax
  br label %.lr.ph44.i

.preheader.i:                                     ; preds = %.lr.ph44.i, %.preheader39.i
  %i.ay = icmp slt i64 %i.an, %i.y
  br i1 %i.ay, label %.lr.ph46.i, label %._crit_edge.i

.lr.ph46.i:                                       ; preds = %.preheader.i
  %i.az = mul nsw i64 %.03152.i, %i.y
  %invariant.gep47.i = getelementptr [8 x i8], ptr %i.aa, i64 %i.az ; 2 uses
  %i.ba = mul nsw i64 %.03152.i, %i.j
  %invariant.gep49.i = getelementptr [8 x i8], ptr %i.g, i64 %i.ba ; 2 uses
  %i.bb = add i64 %.03251.i, %i.am
  %i.bc = sub i64 %i.y, %i.bb                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bc, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph46.i
  %.reass = add i64 %i.aj, %invariant.op
  %diff.check = icmp ult i64 %.reass, 15
  %.reass40 = add i64 %i.ak, %invariant.op39
  %diff.check37 = icmp ult i64 %.reass40, 15
  %conflict.rdx = or i1 %diff.check, %diff.check37
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, -2                      ; 3 uses
  %i.bd = add i64 %i.an, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = add i64 %i.an, %index                   ; 3 uses
  %i.bf = getelementptr [8 x i8], ptr %invariant.gep47.i, i64 %i.be
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.be
  %wide.load = load <2 x double>, ptr %i.bg, align 8, !tbaa !130
  %i.bh = fdiv <2 x double> splat (double 1.000000e+00), %wide.load
  %i.bi = getelementptr [8 x i8], ptr %invariant.gep49.i, i64 %i.be
  %wide.load38 = load <2 x double>, ptr %i.bi, align 8, !tbaa !130
  %i.bj = fmul <2 x double> %i.bh, %wide.load38
  store <2 x double> %i.bj, ptr %i.bf, align 8, !tbaa !130
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !1649

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph46.i, %middle.block
  %.045.i.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph46.i ], [ %i.bd, %middle.block ]
  br label %scalar.ph

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader, %.lr.ph44.i
  %.02943.i = phi i64 [ %i.bq, %.lr.ph44.i ], [ %.03251.i, %.lr.ph44.i.preheader ] ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.02943.i
  %gep30 = getelementptr [8 x i8], ptr %invariant.gep29, i64 %.02943.i
  %i.bl = load <2 x double>, ptr %gep30, align 1, !tbaa !71
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.02943.i
  %i.bn = load <2 x double>, ptr %i.bm, align 1, !tbaa !71
  %i.bo = fdiv <2 x double> splat (double 1.000000e+00), %i.bn
  %i.bp = fmul <2 x double> %i.bl, %i.bo
  store <2 x double> %i.bp, ptr %gep, align 16, !tbaa !71
  %i.bq = add nsw i64 %.02943.i, 2                ; 2 uses
  %i.br = icmp slt i64 %i.bq, %i.an
  br i1 %i.br, label %.lr.ph44.i, label %.preheader.i, !llvm.loop !1650

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %.preheader.i
  %i.bs = add nsw i64 %.03251.i, %i.ab
  %i.bt = srem i64 %i.bs, 2
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.y, i64 %i.bt)
  %i.bu = add nuw nsw i64 %.03152.i, 1            ; 2 uses
  %exitcond56.not.i = icmp eq i64 %i.bu, %i.z
  br i1 %exitcond56.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEES5_Li1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSL_.exit, label %.lr.ph54.i, !llvm.loop !1651

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.045.i = phi i64 [ %i.ca, %scalar.ph ], [ %.045.i.ph, %scalar.ph.preheader ] ; 4 uses
  %gep48.i = getelementptr [8 x i8], ptr %invariant.gep47.i, i64 %.045.i
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.045.i
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !130
  %i.bx = fdiv double 1.000000e+00, %i.bw
  %gep50.i = getelementptr [8 x i8], ptr %invariant.gep49.i, i64 %.045.i
  %i.by = load double, ptr %gep50.i, align 8, !tbaa !130
  %i.bz = fmul double %i.bx, %i.by
  store double %i.bz, ptr %gep48.i, align 8, !tbaa !130
  %i.ca = add nsw i64 %.045.i, 1                  ; 2 uses
  %i.cb = icmp slt i64 %i.ca, %i.y
  br i1 %i.cb, label %scalar.ph, label %._crit_edge.i, !llvm.loop !1652

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEES5_Li1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSL_.exit: ; preds = %._crit_edge.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !129  ; 3 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph52, label %._crit_edge53.split

.lr.ph52:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !329, !nonnull !144, !align !173 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %.02243 = add nsw i64 %i.g, -1                  ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  br i1 %i.h, label %.lr.ph52.split, label %._crit_edge53.split

.lr.ph52.split:                                   ; preds = %.lr.ph52
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !134  ; 8 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !135  ; 8 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !127  ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !133  ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.lr.ph46.us, label %.lr.ph46

.lr.ph46.us:                                      ; preds = %.lr.ph52.split, %._crit_edge47.split.us.us
  %.050.us = phi i64 [ %i.bp, %._crit_edge47.split.us.us ], [ 0, %.lr.ph52.split ] ; 2 uses
  %i.u = mul nsw i64 %i.k, %.050.us
  %invariant.gep48.us = getelementptr [8 x i8], ptr %i.i, i64 %i.u ; 4 uses
  br label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us: ; preds = %._crit_edge.us.us, %.lr.ph46.us
  %.02244.us.us = phi i64 [ %.02243, %.lr.ph46.us ], [ %.022.us.us, %._crit_edge.us.us ] ; 5 uses
  %gep49.us.us = getelementptr [8 x i8], ptr %invariant.gep48.us, i64 %.02244.us.us ; 2 uses
  %i.v = load double, ptr %gep49.us.us, align 8, !tbaa !130 ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.02244.us.us ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !113  ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr i8, ptr %i.w, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !113 ; 2 uses
  %i.ab = sext i32 %i.aa to i64                   ; 6 uses
  %i.ac = icmp slt i32 %i.x, %i.aa
  br i1 %i.ac, label %.lr.ph.us.us, label %.critedge.us.us

.lr.ph.us.us:                                     ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, %bb.b
  %.sroa.10.035.us.us = phi i64 [ %i.ah, %bb.b ], [ %i.y, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ] ; 3 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.035.us.us
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !113
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp sgt i64 %.02244.us.us, %i.af
  br i1 %i.ag, label %bb.b, label %.critedge.us.us

bb.b:                                             ; preds = %.lr.ph.us.us
  %i.ah = add nsw i64 %.sroa.10.035.us.us, 1      ; 2 uses
  %exitcond59.not = icmp eq i64 %i.ah, %i.ab
  br i1 %exitcond59.not, label %.critedge.us.us, label %.lr.ph.us.us, !llvm.loop !1659

.critedge.us.us:                                  ; preds = %bb.b, %.lr.ph.us.us, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us
  %.sroa.10.0.lcssa.us.us = phi i64 [ %i.y, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ], [ %.sroa.10.035.us.us, %.lr.ph.us.us ], [ %i.ab, %bb.b ] ; 5 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.0.lcssa.us.us
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !130
  %.sroa.10.138.us.us = add nsw i64 %.sroa.10.0.lcssa.us.us, 1 ; 4 uses
  %i.ak = icmp slt i64 %.sroa.10.138.us.us, %i.ab
  br i1 %i.ak, label %.lr.ph41.us.us.preheader, label %._crit_edge.us.us

.lr.ph41.us.us.preheader:                         ; preds = %.critedge.us.us
  %i.al = add nsw i64 %i.ab, -2
  %i.am = sub i64 %.sroa.10.0.lcssa.us.us, %i.ab
  %i.an = and i64 %i.am, 1
  %lcmp.mod76.not.not = icmp eq i64 %i.an, 0
  br i1 %lcmp.mod76.not.not, label %.lr.ph41.us.us.prol, label %.lr.ph41.us.us.prol.loopexit

.lr.ph41.us.us.prol:                              ; preds = %.lr.ph41.us.us.preheader
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.138.us.us
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !130
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.138.us.us
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !113
  %i.as = sext i32 %i.ar to i64
  %gep.us.us.prol = getelementptr [8 x i8], ptr %invariant.gep48.us, i64 %i.as
  %i.at = load double, ptr %gep.us.us.prol, align 8, !tbaa !130
  %i.au = fneg double %i.ap
  %i.av = tail call double @llvm.fmuladd.f64(double %i.au, double %i.at, double %i.v) ; 2 uses
  %.sroa.10.1.us.us.prol = add nsw i64 %.sroa.10.0.lcssa.us.us, 2
  br label %.lr.ph41.us.us.prol.loopexit

.lr.ph41.us.us.prol.loopexit:                     ; preds = %.lr.ph41.us.us.prol, %.lr.ph41.us.us.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph41.us.us.preheader ], [ %i.av, %.lr.ph41.us.us.prol ]
  %.sroa.10.140.us.us.unr = phi i64 [ %.sroa.10.138.us.us, %.lr.ph41.us.us.preheader ], [ %.sroa.10.1.us.us.prol, %.lr.ph41.us.us.prol ]
  %.02139.us.us.unr = phi double [ %i.v, %.lr.ph41.us.us.preheader ], [ %i.av, %.lr.ph41.us.us.prol ]
  %i.aw = icmp eq i64 %i.al, %.sroa.10.0.lcssa.us.us
  br i1 %i.aw, label %._crit_edge.us.us, label %.lr.ph41.us.us

.lr.ph41.us.us:                                   ; preds = %.lr.ph41.us.us.prol.loopexit, %.lr.ph41.us.us
  %.sroa.10.140.us.us = phi i64 [ %.sroa.10.1.us.us.1, %.lr.ph41.us.us ], [ %.sroa.10.140.us.us.unr, %.lr.ph41.us.us.prol.loopexit ] ; 4 uses
  %.02139.us.us = phi double [ %i.bm, %.lr.ph41.us.us ], [ %.02139.us.us.unr, %.lr.ph41.us.us.prol.loopexit ]
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.140.us.us
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !130
  %i.az = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.140.us.us
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !113
  %i.bb = sext i32 %i.ba to i64
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep48.us, i64 %i.bb
  %i.bc = load double, ptr %gep.us.us, align 8, !tbaa !130
  %i.bd = fneg double %i.ay
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bc, double %.02139.us.us)
  %.sroa.10.1.us.us = add nsw i64 %.sroa.10.140.us.us, 1 ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.1.us.us
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !130
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.1.us.us
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !113
  %i.bj = sext i32 %i.bi to i64
  %gep.us.us.1 = getelementptr [8 x i8], ptr %invariant.gep48.us, i64 %i.bj
  %i.bk = load double, ptr %gep.us.us.1, align 8, !tbaa !130
  %i.bl = fneg double %i.bg
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bk, double %i.be) ; 2 uses
  %.sroa.10.1.us.us.1 = add nsw i64 %.sroa.10.140.us.us, 2 ; 2 uses
  %exitcond60.not.1 = icmp eq i64 %.sroa.10.1.us.us.1, %i.ab
  br i1 %exitcond60.not.1, label %._crit_edge.us.us, label %.lr.ph41.us.us, !llvm.loop !1660

._crit_edge.us.us:                                ; preds = %.lr.ph41.us.us.prol.loopexit, %.lr.ph41.us.us, %.critedge.us.us
  %.021.lcssa.us.us = phi double [ %i.v, %.critedge.us.us ], [ %.lcssa.unr, %.lr.ph41.us.us.prol.loopexit ], [ %i.bm, %.lr.ph41.us.us ]
  %i.bn = fdiv double %.021.lcssa.us.us, %i.aj
  store double %i.bn, ptr %gep49.us.us, align 8, !tbaa !130
  %.022.us.us = add nsw i64 %.02244.us.us, -1
  %i.bo = icmp sgt i64 %.02244.us.us, 0
  br i1 %i.bo, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, label %._crit_edge47.split.us.us, !llvm.loop !1661

._crit_edge47.split.us.us:                        ; preds = %._crit_edge.us.us
  %i.bp = add nuw nsw i64 %.050.us, 1             ; 2 uses
  %exitcond61.not = icmp eq i64 %i.bp, %i.b
  br i1 %exitcond61.not, label %._crit_edge53.split, label %.lr.ph46.us, !llvm.loop !1662

._crit_edge53.split:                              ; preds = %._crit_edge47.split, %._crit_edge47.split.us.us, %.lr.ph52, %bb.a
  ret void

.lr.ph46:                                         ; preds = %.lr.ph52.split, %._crit_edge47.split
  %.050 = phi i64 [ %i.br, %._crit_edge47.split ], [ 0, %.lr.ph52.split ] ; 2 uses
  %i.bq = mul nsw i64 %i.k, %.050
  %invariant.gep48 = getelementptr [8 x i8], ptr %i.i, i64 %i.bq ; 4 uses
  br label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit

._crit_edge47.split:                              ; preds = %._crit_edge
  %i.br = add nuw nsw i64 %.050, 1                ; 2 uses
  %exitcond58.not = icmp eq i64 %i.br, %i.b
  br i1 %exitcond58.not, label %._crit_edge53.split, label %.lr.ph46, !llvm.loop !1662

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit: ; preds = %.lr.ph46, %._crit_edge
  %.02244 = phi i64 [ %.02243, %.lr.ph46 ], [ %.022, %._crit_edge ] ; 6 uses
  %gep49 = getelementptr [8 x i8], ptr %invariant.gep48, i64 %.02244 ; 2 uses
  %i.bs = load double, ptr %gep49, align 8, !tbaa !130 ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.02244
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !113
  %i.bv = sext i32 %i.bu to i64                   ; 5 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.02244
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !113 ; 2 uses
  %i.by = sext i32 %i.bx to i64                   ; 3 uses
  %i.bz = add nsw i64 %i.by, %i.bv                ; 4 uses
  %i.ca = icmp sgt i32 %i.bx, 0
  br i1 %i.ca, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, %bb.c
  %.sroa.10.035 = phi i64 [ %i.cf, %bb.c ], [ %i.bv, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ] ; 3 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.035
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !113
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp sgt i64 %.02244, %i.cd
  br i1 %i.ce, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.cf = add nsw i64 %.sroa.10.035, 1            ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.bz
  br i1 %i.cg, label %.lr.ph, label %.critedge, !llvm.loop !1659

.critedge:                                        ; preds = %.lr.ph, %bb.c, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit
  %.sroa.10.0.lcssa = phi i64 [ %i.bv, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ], [ %i.bz, %bb.c ], [ %.sroa.10.035, %.lr.ph ] ; 5 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.0.lcssa
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !130
  %.sroa.10.138 = add nsw i64 %.sroa.10.0.lcssa, 1 ; 4 uses
  %i.cj = icmp slt i64 %.sroa.10.138, %i.bz
  br i1 %i.cj, label %.lr.ph41.preheader, label %._crit_edge

.lr.ph41.preheader:                               ; preds = %.critedge
  %i.ck = add nsw i64 %i.by, -2
  %i.cl = add nsw i64 %i.ck, %i.bv
  %i.cm = sub nsw i64 %i.by, %i.bv
  %i.cn = add i64 %i.cm, %.sroa.10.0.lcssa
  %i.co = and i64 %i.cn, 1
  %lcmp.mod.not.not = icmp eq i64 %i.co, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph41.prol, label %.lr.ph41.prol.loopexit

.lr.ph41.prol:                                    ; preds = %.lr.ph41.preheader
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.138
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !130
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.138
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !113
  %i.ct = sext i32 %i.cs to i64
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep48, i64 %i.ct
  %i.cu = load double, ptr %gep.prol, align 8, !tbaa !130
  %i.cv = fneg double %i.cq
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cu, double %i.bs) ; 2 uses
  %.sroa.10.1.prol = add nsw i64 %.sroa.10.0.lcssa, 2
  br label %.lr.ph41.prol.loopexit

.lr.ph41.prol.loopexit:                           ; preds = %.lr.ph41.prol, %.lr.ph41.preheader
  %.lcssa74.unr = phi double [ poison, %.lr.ph41.preheader ], [ %i.cw, %.lr.ph41.prol ]
  %.sroa.10.140.unr = phi i64 [ %.sroa.10.138, %.lr.ph41.preheader ], [ %.sroa.10.1.prol, %.lr.ph41.prol ]
  %.02139.unr = phi double [ %i.bs, %.lr.ph41.preheader ], [ %i.cw, %.lr.ph41.prol ]
  %i.cx = icmp eq i64 %i.cl, %.sroa.10.0.lcssa
  br i1 %i.cx, label %._crit_edge, label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.prol.loopexit, %.lr.ph41
  %.sroa.10.140 = phi i64 [ %.sroa.10.1.1, %.lr.ph41 ], [ %.sroa.10.140.unr, %.lr.ph41.prol.loopexit ] ; 4 uses
  %.02139 = phi double [ %i.dn, %.lr.ph41 ], [ %.02139.unr, %.lr.ph41.prol.loopexit ]
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.140
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !130
  %i.da = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.140
  %i.db = load i32, ptr %i.da, align 4, !tbaa !113
  %i.dc = sext i32 %i.db to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep48, i64 %i.dc
  %i.dd = load double, ptr %gep, align 8, !tbaa !130
  %i.de = fneg double %i.cz
  %i.df = tail call double @llvm.fmuladd.f64(double %i.de, double %i.dd, double %.02139)
  %.sroa.10.1 = add nsw i64 %.sroa.10.140, 1      ; 2 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.1
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !130
  %i.di = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.1
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !113
  %i.dk = sext i32 %i.dj to i64
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep48, i64 %i.dk
  %i.dl = load double, ptr %gep.1, align 8, !tbaa !130
  %i.dm = fneg double %i.dh
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dl, double %i.df) ; 2 uses
  %.sroa.10.1.1 = add nsw i64 %.sroa.10.140, 2    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.10.1.1, %i.bz
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph41, !llvm.loop !1660

._crit_edge:                                      ; preds = %.lr.ph41.prol.loopexit, %.lr.ph41, %.critedge
  %.021.lcssa = phi double [ %i.bs, %.critedge ], [ %.lcssa74.unr, %.lr.ph41.prol.loopexit ], [ %i.dn, %.lr.ph41 ]
  %i.do = fdiv double %.021.lcssa, %i.ci
  store double %i.do, ptr %gep49, align 8, !tbaa !130
  %.022 = add nsw i64 %.02244, -1
  %i.dp = icmp sgt i64 %.02244, 0
  br i1 %i.dp, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, label %._crit_edge47.split, !llvm.loop !1661
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %4 = alloca %"class.Eigen::Product.1284", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::TriangularView.1361", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !60
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.aq

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !112  ; 5 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !129  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !128
  %.not.i.i.i.i.i = icmp eq i64 %i.j, %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %.not11.i.i.i.i.i = icmp eq i64 %i.l, %i.h
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not11.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sdiv i64 9223372036854775807, %i.h
  %i.o = icmp sgt i64 %i.e, %i.n
  br i1 %i.o, label %bb.f, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.q = mul nsw i64 %i.h, %i.e
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.q, i64 noundef %i.e, i64 noundef %i.h)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.c, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i
  tail call void @_ZN5Eigen8internal26permutation_matrix_productINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELb0ENS_10DenseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit

bb.g:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %1, align 8, !tbaa !32     ; 8 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !128  ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !129  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !128
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.aa, %i.w
  %or.cond.i.i.i.i.i.i.i11 = select i1 %.not.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i11, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %i.u, 0
  %i.ac = icmp eq i64 %i.w, 0
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.ab, %i.ac
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = sdiv i64 9223372036854775807, %i.w
  %i.ae = icmp sgt i64 %i.u, %i.ad
  br i1 %i.ae, label %.noexc.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.i
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.ag = mul nsw i64 %i.w, %i.u
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag, i64 noundef %i.u, i64 noundef %i.w)
  %.pre.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !128
  %.pre20.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !129
  br label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, %bb.g
  %i.ah = phi i64 [ %.pre20.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ], [ %i.w, %bb.g ]
  %i.ai = phi i64 [ %.pre.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ], [ %i.u, %bb.g ]
  %i.aj = load ptr, ptr %2, align 8, !tbaa !32    ; 8 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = mul nsw i64 %i.ai, %i.ah                ; 7 uses
  %i.am = sdiv i64 %i.al, 2
  %i.an = shl nsw i64 %i.am, 1                    ; 6 uses
  %i.ao = icmp sgt i64 %i.al, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.j
  %i.ap = icmp slt i64 %i.an, %i.al
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit

end_hunk_7
begin_hunk_8_@_ZNK5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE:bb.a
  %index239 = phi i64 [ 0, %vector.ph236 ], [ %index.next244, %vector.body238 ] ; 2 uses
  %vec.phi240 = phi <4 x i32> [ %i.np, %vector.ph236 ], [ %i.nt, %vector.body238 ]
  %vec.phi241 = phi <4 x i32> [ zeroinitializer, %vector.ph236 ], [ %i.nu, %vector.body238 ]
  %i.nr = getelementptr [4 x i8], ptr %i.nq, i64 %index239 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %wide.load242 = load <4 x i32>, ptr %i.nr, align 4, !tbaa !113
  %wide.load243 = load <4 x i32>, ptr %i.ns, align 4, !tbaa !113
  %i.nt = add <4 x i32> %wide.load242, %vec.phi240 ; 2 uses
  %i.nu = add <4 x i32> %wide.load243, %vec.phi241 ; 2 uses
  %index.next244 = add nuw i64 %index239, 8       ; 2 uses
  %i.nv = icmp eq i64 %index.next244, %n.vec237
  br i1 %i.nv, label %middle.block245, label %vector.body238, !llvm.loop !1679

middle.block245:                                  ; preds = %vector.body238
  %bin.rdx246 = add <4 x i32> %i.nu, %i.nt
  %i.nw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx246) ; 2 uses
  %cmp.n247 = icmp eq i64 %i.nn, %n.vec237
  br i1 %cmp.n247, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, label %.lr.ph89.i.i.i.i25.preheader273

.lr.ph89.i.i.i.i25.preheader273:                  ; preds = %.lr.ph89.i.i.i.i25.preheader, %middle.block245
  %.05588.i.i.i.i26.ph = phi i64 [ %i.ma, %.lr.ph89.i.i.i.i25.preheader ], [ %i.no, %middle.block245 ]
  %.187.i.i.i.i27.ph = phi i32 [ %.075.lcssa.i.i.i.i21, %.lr.ph89.i.i.i.i25.preheader ], [ %i.nw, %middle.block245 ]
  br label %.lr.ph89.i.i.i.i25

.lr.ph85.i.i.i.i28:                               ; preds = %.lr.ph85.i.i.i.i28.preheader278, %.lr.ph85.i.i.i.i28
  %.05683.i.i.i.i29 = phi i64 [ %i.oa, %.lr.ph85.i.i.i.i28 ], [ %.05683.i.i.i.i29.ph, %.lr.ph85.i.i.i.i28.preheader278 ] ; 2 uses
  %.07582.i.i.i.i30 = phi i32 [ %i.nz, %.lr.ph85.i.i.i.i28 ], [ %.07582.i.i.i.i30.ph, %.lr.ph85.i.i.i.i28.preheader278 ]
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %.05683.i.i.i.i29
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !113
  %i.nz = add nsw i32 %i.ny, %.07582.i.i.i.i30    ; 2 uses
  %i.oa = add nuw nsw i64 %.05683.i.i.i.i29, 1    ; 2 uses
  %exitcond.not.i.i.i.i31 = icmp eq i64 %i.oa, %.0.i.i.i.i.i.i.i.i14
  br i1 %exitcond.not.i.i.i.i31, label %.preheader.i.i.i.i20, label %.lr.ph85.i.i.i.i28, !llvm.loop !1680

.lr.ph89.i.i.i.i25:                               ; preds = %.lr.ph89.i.i.i.i25.preheader273, %.lr.ph89.i.i.i.i25
  %.05588.i.i.i.i26 = phi i64 [ %i.oe, %.lr.ph89.i.i.i.i25 ], [ %.05588.i.i.i.i26.ph, %.lr.ph89.i.i.i.i25.preheader273 ] ; 2 uses
  %.187.i.i.i.i27 = phi i32 [ %i.od, %.lr.ph89.i.i.i.i25 ], [ %.187.i.i.i.i27.ph, %.lr.ph89.i.i.i.i25.preheader273 ]
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %.05588.i.i.i.i26
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !113
  %i.od = add nsw i32 %i.oc, %.187.i.i.i.i27      ; 2 uses
  %i.oe = add nsw i64 %.05588.i.i.i.i26, 1        ; 2 uses
  %i.of = icmp slt i64 %i.oe, %i.lm
  br i1 %i.of, label %.lr.ph89.i.i.i.i25, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, !llvm.loop !1681

bb.ak:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i13
  %i.og = load i32, ptr %i.lb, align 4, !tbaa !113 ; 3 uses
  %i.oh = icmp sgt i64 %i.lm, 1
  br i1 %i.oh, label %.lr.ph94.i.i.i.i42.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46

.lr.ph94.i.i.i.i42.preheader:                     ; preds = %bb.ak
  %i.oi = add nsw i64 %i.lm, -1                   ; 2 uses
  %min.iters.check251 = icmp ult i64 %i.lm, 9
  br i1 %min.iters.check251, label %.lr.ph94.i.i.i.i42.preheader270, label %vector.ph252

vector.ph252:                                     ; preds = %.lr.ph94.i.i.i.i42.preheader
  %n.vec253 = and i64 %i.oi, -8                   ; 3 uses
  %i.oj = or disjoint i64 %n.vec253, 1
  %i.ok = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.og, i64 0
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph252
  %index255 = phi i64 [ 0, %vector.ph252 ], [ %index.next260, %vector.body254 ] ; 2 uses
  %vec.phi256 = phi <4 x i32> [ %i.ok, %vector.ph252 ], [ %i.oo, %vector.body254 ]
  %vec.phi257 = phi <4 x i32> [ zeroinitializer, %vector.ph252 ], [ %i.op, %vector.body254 ]
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %index255 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 20
  %wide.load258 = load <4 x i32>, ptr %i.om, align 4, !tbaa !113
  %wide.load259 = load <4 x i32>, ptr %i.on, align 4, !tbaa !113
  %i.oo = add <4 x i32> %wide.load258, %vec.phi256 ; 2 uses
  %i.op = add <4 x i32> %wide.load259, %vec.phi257 ; 2 uses
  %index.next260 = add nuw i64 %index255, 8       ; 2 uses
  %i.oq = icmp eq i64 %index.next260, %n.vec253
  br i1 %i.oq, label %middle.block261, label %vector.body254, !llvm.loop !1682

middle.block261:                                  ; preds = %vector.body254
  %bin.rdx262 = add <4 x i32> %i.op, %i.oo
  %i.or = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx262) ; 2 uses
  %cmp.n263 = icmp eq i64 %i.oi, %n.vec253
  br i1 %cmp.n263, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, label %.lr.ph94.i.i.i.i42.preheader270

.lr.ph94.i.i.i.i42.preheader270:                  ; preds = %.lr.ph94.i.i.i.i42.preheader, %middle.block261
  %.092.i.i.i.i43.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i42.preheader ], [ %i.oj, %middle.block261 ]
  %.291.i.i.i.i44.ph = phi i32 [ %i.og, %.lr.ph94.i.i.i.i42.preheader ], [ %i.or, %middle.block261 ]
  br label %.lr.ph94.i.i.i.i42

.lr.ph94.i.i.i.i42:                               ; preds = %.lr.ph94.i.i.i.i42.preheader270, %.lr.ph94.i.i.i.i42
  %.092.i.i.i.i43 = phi i64 [ %i.ov, %.lr.ph94.i.i.i.i42 ], [ %.092.i.i.i.i43.ph, %.lr.ph94.i.i.i.i42.preheader270 ] ; 2 uses
  %.291.i.i.i.i44 = phi i32 [ %i.ou, %.lr.ph94.i.i.i.i42 ], [ %.291.i.i.i.i44.ph, %.lr.ph94.i.i.i.i42.preheader270 ]
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %.092.i.i.i.i43
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !113
  %i.ou = add nsw i32 %i.ot, %.291.i.i.i.i44      ; 2 uses
  %i.ov = add nuw nsw i64 %.092.i.i.i.i43, 1      ; 2 uses
  %exitcond102.not.i.i.i.i45 = icmp eq i64 %i.ov, %i.lm
  br i1 %exitcond102.not.i.i.i.i45, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, label %.lr.ph94.i.i.i.i42, !llvm.loop !1683

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46: ; preds = %.lr.ph89.i.i.i.i25, %.lr.ph94.i.i.i.i42, %middle.block245, %middle.block261, %.preheader.i.i.i.i20, %bb.ak, %bb.ac
  %.0.i24.in = phi i32 [ %i.lk, %bb.ac ], [ %i.ou, %.lr.ph94.i.i.i.i42 ], [ %.075.lcssa.i.i.i.i21, %.preheader.i.i.i.i20 ], [ %i.og, %bb.ak ], [ %i.or, %middle.block261 ], [ %i.nw, %middle.block245 ], [ %i.od, %.lr.ph89.i.i.i.i25 ]
  %i.ow = icmp sgt i32 %.0.i24.in, 0
  br i1 %i.ow, label %bb.al, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread

bb.al:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store i8 0, ptr %5, align 8, !tbaa !1690, !alias.scope !1691
  %i.ox = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i8 0, ptr %i.ox, align 8, !alias.scope !1691
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.cb, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !1691
  call void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi6ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %i.ox, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread: ; preds = %bb.ad, %bb.al, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46
  %i.oy = load i64, ptr %i.d, align 8, !tbaa !112
  %i.oz = icmp sgt i64 %i.oy, 0
  br i1 %i.oz, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !112 ; 5 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !129 ; 4 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !128
  %.not.i.i.i.i.i49 = icmp eq i64 %i.pg, %i.pc
  br i1 %.not.i.i.i.i.i49, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit56, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ph = icmp eq i64 %i.pc, 0
  %i.pi = icmp eq i64 %i.pe, 0
  %or.cond.i.i.i.i.i.i.i52 = or i1 %i.ph, %i.pi
  br i1 %or.cond.i.i.i.i.i.i.i52, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i53, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.pj = sdiv i64 9223372036854775807, %i.pe
  %i.pk = icmp sgt i64 %i.pc, %i.pj
  br i1 %i.pk, label %bb.ap, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i53

bb.ap:                                            ; preds = %bb.ao
  %i.pl = call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.pl, align 8, !tbaa !119
  call void @__cxa_throw(ptr nonnull %i.pl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i53: ; preds = %bb.ao, %bb.an
  %i.pm = mul nsw i64 %i.pe, %i.pc
  call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.pm, i64 noundef %i.pc, i64 noundef %i.pe)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit56

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit56: ; preds = %bb.am, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i53
  call void @_ZN5Eigen8internal26permutation_matrix_productINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELb0ENS_10DenseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.pa, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit56, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi6ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !129  ; 3 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph53, label %._crit_edge54.split

.lr.ph53:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !329, !nonnull !144, !align !173 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %.02244 = add nsw i64 %i.g, -1                  ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  br i1 %i.h, label %.lr.ph53.split, label %._crit_edge54.split

.lr.ph53.split:                                   ; preds = %.lr.ph53
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !134  ; 6 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !135  ; 8 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !127  ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !133  ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.lr.ph47.us, label %.lr.ph47

.lr.ph47.us:                                      ; preds = %.lr.ph53.split, %._crit_edge48.split.us.us
  %.051.us = phi i64 [ %i.bq, %._crit_edge48.split.us.us ], [ 0, %.lr.ph53.split ] ; 2 uses
  %i.u = mul nsw i64 %i.k, %.051.us
  %invariant.gep49.us = getelementptr [8 x i8], ptr %i.i, i64 %i.u ; 4 uses
  br label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us: ; preds = %._crit_edge.us.us, %.lr.ph47.us
  %.02245.us.us = phi i64 [ %.02244, %.lr.ph47.us ], [ %.022.us.us, %._crit_edge.us.us ] ; 6 uses
  %gep50.us.us = getelementptr [8 x i8], ptr %invariant.gep49.us, i64 %.02245.us.us ; 2 uses
  %i.v = load double, ptr %gep50.us.us, align 8, !tbaa !130 ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.02245.us.us ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !113  ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr i8, ptr %i.w, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !113 ; 2 uses
  %i.ab = sext i32 %i.aa to i64                   ; 5 uses
  %i.ac = icmp slt i32 %i.x, %i.aa
  br i1 %i.ac, label %.lr.ph.us.us, label %.critedge.us.us

.lr.ph.us.us:                                     ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, %bb.b
  %.sroa.10.039.us.us = phi i64 [ %i.ah, %bb.b ], [ %i.y, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ] ; 3 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.039.us.us
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !113
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = icmp sgt i64 %.02245.us.us, %i.af
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.us.us
  %i.ah = add nsw i64 %.sroa.10.039.us.us, 1      ; 2 uses
  %exitcond64.not = icmp eq i64 %i.ah, %i.ab
  br i1 %exitcond64.not, label %._crit_edge.us.us, label %.lr.ph.us.us, !llvm.loop !1692

bb.c:                                             ; preds = %.lr.ph.us.us
  %i.ai = icmp eq i64 %.02245.us.us, %i.af
  %i.aj = zext i1 %i.ai to i64
  %spec.select.us.us = add nsw i64 %.sroa.10.039.us.us, %i.aj
  br label %.critedge.us.us

.critedge.us.us:                                  ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, %bb.c
  %.sroa.10.1.us.us = phi i64 [ %spec.select.us.us, %bb.c ], [ %i.y, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ] ; 7 uses
  %i.ak = icmp slt i64 %.sroa.10.1.us.us, %i.ab
  br i1 %i.ak, label %.lr.ph42.us.us.preheader, label %._crit_edge.us.us

.lr.ph42.us.us.preheader:                         ; preds = %.critedge.us.us
  %i.al = sub i64 %i.ab, %.sroa.10.1.us.us
  %xtraiter108 = and i64 %i.al, 1
  %lcmp.mod109.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod109.not, label %.lr.ph42.us.us.prol.loopexit, label %.lr.ph42.us.us.prol

.lr.ph42.us.us.prol:                              ; preds = %.lr.ph42.us.us.preheader
  %i.am = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.1.us.us
  %i.an = load double, ptr %i.am, align 8, !tbaa !130
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.1.us.us
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !113
  %i.aq = sext i32 %i.ap to i64
  %gep.us.us.prol = getelementptr [8 x i8], ptr %invariant.gep49.us, i64 %i.aq
  %i.ar = load double, ptr %gep.us.us.prol, align 8, !tbaa !130
  %i.as = fneg double %i.an
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ar, double %i.v) ; 2 uses
  %i.au = add nsw i64 %.sroa.10.1.us.us, 1
  br label %.lr.ph42.us.us.prol.loopexit

.lr.ph42.us.us.prol.loopexit:                     ; preds = %.lr.ph42.us.us.prol, %.lr.ph42.us.us.preheader
  %.lcssa101.unr = phi double [ poison, %.lr.ph42.us.us.preheader ], [ %i.at, %.lr.ph42.us.us.prol ]
  %.02141.us.us.unr = phi double [ %i.v, %.lr.ph42.us.us.preheader ], [ %i.at, %.lr.ph42.us.us.prol ]
  %.sroa.10.240.us.us.unr = phi i64 [ %.sroa.10.1.us.us, %.lr.ph42.us.us.preheader ], [ %i.au, %.lr.ph42.us.us.prol ]
  %i.av = add nsw i64 %i.ab, -1
  %i.aw = icmp eq i64 %.sroa.10.1.us.us, %i.av
  br i1 %i.aw, label %._crit_edge.us.us, label %.lr.ph42.us.us

.lr.ph42.us.us:                                   ; preds = %.lr.ph42.us.us.prol.loopexit, %.lr.ph42.us.us
  %.02141.us.us = phi double [ %i.bn, %.lr.ph42.us.us ], [ %.02141.us.us.unr, %.lr.ph42.us.us.prol.loopexit ]
  %.sroa.10.240.us.us = phi i64 [ %i.bo, %.lr.ph42.us.us ], [ %.sroa.10.240.us.us.unr, %.lr.ph42.us.us.prol.loopexit ] ; 4 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.240.us.us
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !130
  %i.az = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.240.us.us
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !113
  %i.bb = sext i32 %i.ba to i64
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep49.us, i64 %i.bb
  %i.bc = load double, ptr %gep.us.us, align 8, !tbaa !130
  %i.bd = fneg double %i.ay
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bc, double %.02141.us.us)
  %i.bf = add nsw i64 %.sroa.10.240.us.us, 1      ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !130
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bf
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !113
  %i.bk = sext i32 %i.bj to i64
  %gep.us.us.1 = getelementptr [8 x i8], ptr %invariant.gep49.us, i64 %i.bk
  %i.bl = load double, ptr %gep.us.us.1, align 8, !tbaa !130
  %i.bm = fneg double %i.bh
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bl, double %i.be) ; 2 uses
  %i.bo = add nsw i64 %.sroa.10.240.us.us, 2      ; 2 uses
  %exitcond65.not.1 = icmp eq i64 %i.bo, %i.ab
  br i1 %exitcond65.not.1, label %._crit_edge.us.us, label %.lr.ph42.us.us, !llvm.loop !1693

._crit_edge.us.us:                                ; preds = %bb.b, %.lr.ph42.us.us.prol.loopexit, %.lr.ph42.us.us, %.critedge.us.us
  %.021.lcssa.us.us = phi double [ %i.v, %.critedge.us.us ], [ %i.bn, %.lr.ph42.us.us ], [ %.lcssa101.unr, %.lr.ph42.us.us.prol.loopexit ], [ %i.v, %bb.b ]
  store double %.021.lcssa.us.us, ptr %gep50.us.us, align 8, !tbaa !130
  %.022.us.us = add nsw i64 %.02245.us.us, -1
  %i.bp = icmp sgt i64 %.02245.us.us, 0
  br i1 %i.bp, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, label %._crit_edge48.split.us.us, !llvm.loop !1694

._crit_edge48.split.us.us:                        ; preds = %._crit_edge.us.us
  %i.bq = add nuw nsw i64 %.051.us, 1             ; 2 uses
  %exitcond66.not = icmp eq i64 %i.bq, %i.b
  br i1 %exitcond66.not, label %._crit_edge54.split, label %.lr.ph47.us, !llvm.loop !1695

._crit_edge54.split:                              ; preds = %._crit_edge48.split, %._crit_edge48.split.us.us, %.lr.ph53, %bb.a
  ret void

.lr.ph47:                                         ; preds = %.lr.ph53.split, %._crit_edge48.split
  %.051 = phi i64 [ %i.bs, %._crit_edge48.split ], [ 0, %.lr.ph53.split ] ; 2 uses
  %i.br = mul nsw i64 %i.k, %.051
  %invariant.gep49 = getelementptr [8 x i8], ptr %i.i, i64 %i.br ; 4 uses
  br label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit

._crit_edge48.split:                              ; preds = %._crit_edge
  %i.bs = add nuw nsw i64 %.051, 1                ; 2 uses
  %exitcond63.not = icmp eq i64 %i.bs, %i.b
  br i1 %exitcond63.not, label %._crit_edge54.split, label %.lr.ph47, !llvm.loop !1695

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit: ; preds = %.lr.ph47, %._crit_edge
  %.02245 = phi i64 [ %.02244, %.lr.ph47 ], [ %.022, %._crit_edge ] ; 7 uses
  %gep50 = getelementptr [8 x i8], ptr %invariant.gep49, i64 %.02245 ; 2 uses
  %i.bt = load double, ptr %gep50, align 8, !tbaa !130 ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.02245
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !113
  %i.bw = sext i32 %i.bv to i64                   ; 5 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.02245
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !113 ; 2 uses
  %i.bz = sext i32 %i.by to i64                   ; 3 uses
  %i.ca = add nsw i64 %i.bz, %i.bw                ; 3 uses
  %i.cb = icmp sgt i32 %i.by, 0
  br i1 %i.cb, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, %bb.d
  %.sroa.10.039 = phi i64 [ %i.cg, %bb.d ], [ %i.bw, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ] ; 3 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.039
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !113
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = icmp sgt i64 %.02245, %i.ce
  br i1 %i.cf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.cg = add nsw i64 %.sroa.10.039, 1            ; 2 uses
  %i.ch = icmp slt i64 %i.cg, %i.ca
  br i1 %i.ch, label %.lr.ph, label %._crit_edge, !llvm.loop !1692

bb.e:                                             ; preds = %.lr.ph
  %i.ci = icmp eq i64 %.02245, %i.ce
  %i.cj = zext i1 %i.ci to i64
  %spec.select = add nsw i64 %.sroa.10.039, %i.cj
  br label %.critedge

.critedge:                                        ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, %bb.e
  %.sroa.10.1 = phi i64 [ %spec.select, %bb.e ], [ %i.bw, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ] ; 7 uses
  %i.ck = icmp slt i64 %.sroa.10.1, %i.ca
  br i1 %i.ck, label %.lr.ph42.preheader, label %._crit_edge

.lr.ph42.preheader:                               ; preds = %.critedge
  %i.cl = add nsw i64 %i.bz, %i.bw
  %i.cm = sub i64 %i.cl, %.sroa.10.1
  %i.cn = add nsw i64 %i.bz, -1
  %i.co = add nsw i64 %i.cn, %i.bw
  %xtraiter = and i64 %i.cm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph42.prol.loopexit, label %.lr.ph42.prol

.lr.ph42.prol:                                    ; preds = %.lr.ph42.preheader
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.1
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !130
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.1
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !113
  %i.ct = sext i32 %i.cs to i64
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep49, i64 %i.ct
  %i.cu = load double, ptr %gep.prol, align 8, !tbaa !130
  %i.cv = fneg double %i.cq
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cu, double %i.bt) ; 2 uses
  %i.cx = add nsw i64 %.sroa.10.1, 1
  br label %.lr.ph42.prol.loopexit

.lr.ph42.prol.loopexit:                           ; preds = %.lr.ph42.prol, %.lr.ph42.preheader
  %.lcssa107.unr = phi double [ poison, %.lr.ph42.preheader ], [ %i.cw, %.lr.ph42.prol ]
  %.02141.unr = phi double [ %i.bt, %.lr.ph42.preheader ], [ %i.cw, %.lr.ph42.prol ]
  %.sroa.10.240.unr = phi i64 [ %.sroa.10.1, %.lr.ph42.preheader ], [ %i.cx, %.lr.ph42.prol ]
  %i.cy = icmp eq i64 %i.co, %.sroa.10.1
  br i1 %i.cy, label %._crit_edge, label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.prol.loopexit, %.lr.ph42
  %.02141 = phi double [ %i.dp, %.lr.ph42 ], [ %.02141.unr, %.lr.ph42.prol.loopexit ]
  %.sroa.10.240 = phi i64 [ %i.dq, %.lr.ph42 ], [ %.sroa.10.240.unr, %.lr.ph42.prol.loopexit ] ; 4 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.sroa.10.240
  %i.da = load double, ptr %i.cz, align 8, !tbaa !130
  %i.db = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.10.240
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !113
  %i.dd = sext i32 %i.dc to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep49, i64 %i.dd
  %i.de = load double, ptr %gep, align 8, !tbaa !130
  %i.df = fneg double %i.da
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.df, double %i.de, double %.02141)
  %i.dh = add nsw i64 %.sroa.10.240, 1            ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !130
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.dh
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !113
  %i.dm = sext i32 %i.dl to i64
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep49, i64 %i.dm
  %i.dn = load double, ptr %gep.1, align 8, !tbaa !130
  %i.do = fneg double %i.dj
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dn, double %i.dg) ; 2 uses
  %i.dq = add nsw i64 %.sroa.10.240, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dq, %i.ca
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph42, !llvm.loop !1693

._crit_edge:                                      ; preds = %bb.d, %.lr.ph42.prol.loopexit, %.lr.ph42, %.critedge
  %.021.lcssa = phi double [ %i.bt, %.critedge ], [ %i.dp, %.lr.ph42 ], [ %.lcssa107.unr, %.lr.ph42.prol.loopexit ], [ %i.bt, %bb.d ]
  store double %.021.lcssa, ptr %gep50, align 8, !tbaa !130
  %.022 = add nsw i64 %.02245, -1
  %i.dr = icmp sgt i64 %.02245, 0
  br i1 %i.dr, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, label %._crit_edge48.split, !llvm.loop !1694
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5Eigen8SparseLUINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_EEbRKNS_10MatrixBaseIT_EERNS9_IT0_EE(ptr noundef nonnull align 8 dereferenceable(584) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::SparseLUMatrixUReturnType", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !128  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !129  ; 4 uses
  %i.e = icmp eq i64 %i.b, 0
  %i.f = icmp eq i64 %i.d, 0
  %or.cond.i.i = or i1 %i.e, %i.f
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.d
  %i.h = icmp sgt i64 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.a, %bb.b
  %i.j = mul nsw i64 %i.d, %i.b
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.j, i64 noundef %i.b, i64 noundef %i.d)
  %i.k = load i64, ptr %i.c, align 8, !tbaa !129  ; 3 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !32, !noalias !1711 ; 2 uses
  %i.o = load i64, ptr %i.a, align 8, !tbaa !128, !noalias !1711 ; 10 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !32, !noalias !1712 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !128, !noalias !1712 ; 3 uses
  %i.s = icmp eq i64 %i.r, %i.o
  %i.t = icmp sgt i64 %i.o, 0                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.fr = freeze i1 %i.s
  br i1 %.fr, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter126 = and i64 %i.o, 3                  ; 3 uses
  %i.v = icmp ult i64 %i.o, 4
  %unroll_iter130 = and i64 %i.o, 9223372036854775804
  %lcmp.mod128.not = icmp eq i64 %xtraiter126, 0
  %lcmp.mod129 = icmp ne i64 %xtraiter126, 0
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.t, label %.lr.ph.split.us.split, label %._crit_edge

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !94   ; 5 uses
  %xtraiter = and i64 %i.o, 3                     ; 3 uses
  %i.x = icmp ult i64 %i.o, 4
  %unroll_iter = and i64 %i.o, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod125 = icmp ne i64 %xtraiter, 0
  br label %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.preheader.i.us

_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.preheader.i.us: ; preds = %_ZN5Eigen8internal26permutation_matrix_productINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1ELb0ENS_10DenseShapeEE3runIS5_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS5_.exit.loopexit.us, %.lr.ph.split.us.split
  %.02079.us = phi i64 [ 0, %.lr.ph.split.us.split ], [ %i.bl, %_ZN5Eigen8internal26permutation_matrix_productINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1ELb0ENS_10DenseShapeEE3runIS5_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS5_.exit.loopexit.us ] ; 3 uses
  %i.y = mul nuw nsw i64 %i.o, %.02079.us
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.y ; 5 uses
  %i.aa = mul nsw i64 %i.r, %.02079.us
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aa ; 5 uses
  br i1 %i.x, label %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.i.us.epil.preheader, label %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.i.us

_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.i.us: ; preds = %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.preheader.i.us, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.i.us
  %.088.i.us = phi i64 [ %i.bd, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.i.us ], [ 0, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.preheader.i.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.i.us ], [ 0, %_ZN5Eigen8internal13is_same_denseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEES5_EEbRKT_RKT0_PNS0_9enable_ifIXsr19possibly_same_denseIS6_S9_EE5valueEvE4typeE.exit.preheader.i.us ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.088.i.us
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.088.i.us
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !113
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.af
  %i.ah = load double, ptr %i.ac, align 8, !tbaa !130
  store double %i.ah, ptr %i.ag, align 8, !tbaa !130
  %i.ai = or disjoint i64 %.088.i.us, 1           ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ai
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !113
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.am
  %i.ao = load double, ptr %i.aj, align 8, !tbaa !130
  store double %i.ao, ptr %i.an, align 8, !tbaa !130
  %i.ap = or disjoint i64 %.088.i.us, 2           ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ap
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !113
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.at
  %i.av = load double, ptr %i.aq, align 8, !tbaa !130
  store double %i.av, ptr %i.au, align 8, !tbaa !130
  %i.aw = or disjoint i64 %.088.i.us, 3           ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aw
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !113
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ba
  %i.bc = load double, ptr %i.ax, align 8, !tbaa !130
  store double %i.bc, ptr %i.bb, align 8, !tbaa !130
  %i.bd = add nuw nsw i64 %.088.i.us, 4           ; 2 uses
end_hunk_8
