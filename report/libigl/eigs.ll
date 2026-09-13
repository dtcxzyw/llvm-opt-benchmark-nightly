Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/eigs?download=true
inline.NumInlined: 14241
inline.NumDeleted: 6065
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 189
loop-unroll.NumUnrolled: 194
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
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !142
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hd
  %i.hf = trunc nuw nsw i64 %indvars.iv85.epil to i32
  store i32 %i.hf, ptr %i.he, align 4, !tbaa !142
  %indvars.iv.next86.epil = add nuw nsw i64 %indvars.iv85.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter179
  br i1 %epil.iter.cmp.not, label %._crit_edge77, label %bb.ag, !llvm.loop !478

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
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !142
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hj
  %i.hl = trunc nuw nsw i64 %indvars.iv85 to i32
  store i32 %i.hl, ptr %i.hk, align 4, !tbaa !142
  %indvars.iv.next86 = or disjoint i64 %indvars.iv85, 1 ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.054.0, i64 %indvars.iv.next86
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !142
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ho
  %i.hq = trunc nuw nsw i64 %indvars.iv.next86 to i32
  store i32 %i.hq, ptr %i.hp, align 4, !tbaa !142
  %indvars.iv.next86.1 = or disjoint i64 %indvars.iv85, 2 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.054.0, i64 %indvars.iv.next86.1
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !142
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ht
  %i.hv = trunc nuw nsw i64 %indvars.iv.next86.1 to i32
  store i32 %i.hv, ptr %i.hu, align 4, !tbaa !142
  %indvars.iv.next86.2 = or disjoint i64 %indvars.iv85, 3 ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.054.0, i64 %indvars.iv.next86.2
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !142
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hy
  %i.ia = trunc nuw nsw i64 %indvars.iv.next86.2 to i32
  store i32 %i.ia, ptr %i.hz, align 4, !tbaa !142
  %indvars.iv.next86.3 = add nuw nsw i64 %indvars.iv85, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge77.loopexit.unr-lcssa, label %bb.ai, !llvm.loop !479

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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !147  ; 10 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !157  ; 3 uses
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !123
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.i) #35 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i95

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !123
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i96, i1 false), !tbaa !142
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit97

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit97: ; preds = %bb.a, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i95
  %.sroa.0129.0179 = phi ptr [ null, %bb.a ], [ %i.l, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i95 ] ; 9 uses
  %.sroa.0137.0164171178 = phi ptr [ null, %bb.a ], [ %calloc, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i95 ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !140
  %.not.i.i = icmp eq i64 %i.b, %i.r
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit97
  %i.s = load ptr, ptr %1, align 8, !tbaa !141
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
  store ptr %.sink.i.i, ptr %1, align 8, !tbaa !141
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit97
  store i64 %i.b, ptr %i.q, align 8, !tbaa !140
  %sext186 = shl i64 %i.e, 32                     ; 3 uses
  %i.y = ashr exact i64 %sext186, 32              ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !140
  %.not.i.i99 = icmp eq i64 %i.y, %i.aa
  %.pre216.pre = load ptr, ptr %2, align 8, !tbaa !141 ; 2 uses
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !123
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i.i100:                               ; preds = %bb.j, %bb.i
  %.sink.i.i101 = phi ptr [ %i.ad, %bb.j ], [ null, %bb.i ] ; 2 uses
  store ptr %.sink.i.i101, ptr %2, align 8, !tbaa !141
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i.i100, %bb.h
  %.pre = phi ptr [ %.sink.i.i101, %.sink.split.i.i100 ], [ %.pre216.pre, %bb.h ] ; 12 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !140
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
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !142
  store <4 x i32> %broadcast.splat, ptr %i.ao, align 4, !tbaa !142
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !480

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.loopexit190, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.l, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.pre, %bb.l ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.c, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !142
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.ah
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit190, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !481

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
  store <4 x i32> %i.aw, ptr %i.ay, align 4, !tbaa !142
  store <4 x i32> %i.ax, ptr %i.az, align 4, !tbaa !142
  %index.next241 = add nuw i64 %index240, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ba = icmp eq i64 %index.next241, %n.vec236
  br i1 %i.ba, label %middle.block242, label %vector.body239, !llvm.loop !482

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
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !142
  %i.be = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.be, %i.ar
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !483

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i, %middle.block242, %.loopexit190
  br i1 %i.g, label %.lr.ph193, label %._crit_edge202

.lr.ph193:                                        ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit
  %.not83 = icmp eq ptr %3, null                  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !175 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !172 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !173 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  %wide.trip.count209 = and i64 %i.b, 2147483647  ; 3 uses
  br i1 %i.bl, label %.lr.ph193.split.us, label %.lr.ph192.split

.lr.ph193.split.us:                               ; preds = %.lr.ph193, %._crit_edge.us
  %indvars.iv206 = phi i64 [ %indvars.iv.next219, %._crit_edge.us ], [ 0, %.lr.ph193 ] ; 4 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv206 to i32 ; 3 uses
  br i1 %.not83, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, label %bb.m

bb.m:                                             ; preds = %.lr.ph193.split.us
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv206
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !142
  %i.bp = sext i32 %i.bo to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %bb.m, %.lr.ph193.split.us
  %.058.us = phi i64 [ %i.bp, %bb.m ], [ %indvars.iv206, %.lr.ph193.split.us ]
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.058.us ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !142 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bq, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !142 ; 2 uses
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
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !142
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !142
  %.sroa.speculated.us.prol = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.cc)
  store i32 %.sroa.speculated.us.prol, ptr %i.cb, align 4, !tbaa !142
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
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !142
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !142
  %.sroa.speculated.us = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.ck)
  store i32 %.sroa.speculated.us, ptr %i.cj, align 4, !tbaa !142
  %i.cl = getelementptr [4 x i8], ptr %i.bg, i64 %.sroa.7115.0191.us
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !142
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !142
  %.sroa.speculated.us.1 = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.cq)
  store i32 %.sroa.speculated.us.1, ptr %i.cp, align 4, !tbaa !142
  %i.cr = add nsw i64 %.sroa.7115.0191.us, 2      ; 2 uses
  %exitcond205.not.1 = icmp eq i64 %i.cr, %i.bu
  br i1 %exitcond205.not.1, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !484

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count209
  br i1 %exitcond222.not, label %.lr.ph201, label %.lr.ph193.split.us, !llvm.loop !485

.lr.ph192.split:                                  ; preds = %.lr.ph193
  br i1 %.not83, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us194, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us194: ; preds = %.lr.ph192.split, %._crit_edge.us.a
  %indvars.iv212 = phi i64 [ %indvars.iv.next207, %._crit_edge.us.a ], [ 0, %.lr.ph192.split ] ; 4 uses
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv212
  %5 = load i32, ptr %4, align 4, !tbaa !142
  %6 = sext i32 %5 to i64                         ; 2 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv212
  %8 = load i32, ptr %7, align 4, !tbaa !142      ; 2 uses
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
  %14 = load i32, ptr %13, align 4, !tbaa !142
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr %.pre, i64 %15 ; 2 uses
  %17 = load i32, ptr %16, align 4, !tbaa !142
  %.sroa.speculated.us198 = tail call i32 @llvm.smin.i32(i32 %12, i32 %17)
  store i32 %.sroa.speculated.us198, ptr %16, align 4, !tbaa !142
  %18 = add nsw i64 %.sroa.7115.0190.us197, 1     ; 2 uses
  %19 = icmp slt i64 %18, %10
  br i1 %19, label %.lr.ph.us196, label %._crit_edge.us.a, !llvm.loop !484

._crit_edge.us.a:                                 ; preds = %.lr.ph.us196, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us194
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %.lr.ph201, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us194, !llvm.loop !485

.lr.ph201:                                        ; preds = %._crit_edge, %._crit_edge.us.a, %._crit_edge.us
  %i.cs = load ptr, ptr %1, align 8, !tbaa !141   ; 2 uses
  %.not = icmp eq ptr %3, null
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !175
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !172
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !173 ; 2 uses
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
  %21 = load i32, ptr %20, align 4, !tbaa !142
  %22 = sext i32 %21 to i64                       ; 2 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %22
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !142
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %22
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !142 ; 2 uses
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
  br i1 %exitcond.not, label %.lr.ph201, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, !llvm.loop !485

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.7115.0191 = phi i64 [ %i.dp, %.lr.ph ], [ %i.de, %.lr.ph.preheader ] ; 2 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %.sroa.7115.0191
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !142
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !142
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %23, i32 %i.do)
  store i32 %.sroa.speculated, ptr %i.dn, align 4, !tbaa !142
  %i.dp = add nsw i64 %.sroa.7115.0191, 1         ; 2 uses
  %i.dq = icmp slt i64 %i.dp, %i.di
  br i1 %i.dq, label %.lr.ph, label %._crit_edge, !llvm.loop !484

._crit_edge202:                                   ; preds = %._crit_edge199, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit
  tail call void @free(ptr noundef %.sroa.0129.0179) #33
  tail call void @free(ptr noundef %.sroa.0137.0164171178) #33
  ret i32 0

bb.o:                                             ; preds = %.lr.ph201, %._crit_edge199
  %indvars.iv211 = phi i64 [ 0, %.lr.ph201 ], [ %indvars.iv.next212, %._crit_edge199 ] ; 12 uses
  %i.dr = icmp sge i64 %indvars.iv211, %i.da      ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0129.0179, i64 %indvars.iv211
  %i.dt = trunc nuw nsw i64 %indvars.iv211 to i32 ; 5 uses
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !142
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0137.0164171178, i64 %indvars.iv211
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !142
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv211
  store i32 %i.c, ptr %i.dv, align 4, !tbaa !142
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv211
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !142
  %i.dy = sext i32 %i.dx to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.055 = phi i64 [ %i.dy, %bb.p ], [ %indvars.iv211, %bb.o ] ; 2 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %.055 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !142
  %i.eb = sext i32 %i.ea to i64                   ; 3 uses
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ec = getelementptr i8, ptr %i.dz, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !142
  %i.ee = sext i32 %i.ed to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107

bb.s:                                             ; preds = %bb.q
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.055
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !142
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
  br i1 %exitcond215.not, label %._crit_edge202, label %bb.o, !llvm.loop !486

.lr.ph198:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107, %bb.x
  %i.ek = phi i1 [ %i.fc, %bb.x ], [ %i.ej, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ]
  %.057197 = phi i32 [ %.2, %bb.x ], [ %i.dt, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ] ; 3 uses
  %.059196 = phi i1 [ %spec.select, %bb.x ], [ %i.dr, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ]
  %.sroa.7.0195 = phi i64 [ %i.fb, %bb.x ], [ %i.eb, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ] ; 2 uses
  br i1 %i.ek, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph198
  %i.el = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %.sroa.7.0195
  %i.em = load i32, ptr %i.el, align 4, !tbaa !142
  %i.en = sext i32 %i.em to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph198, %bb.t
  %.0 = phi i64 [ %i.en, %bb.t ], [ %indvars.iv211, %.lr.ph198 ] ; 2 uses
  %i.eo = icmp eq i64 %.0, %indvars.iv211
  %spec.select = select i1 %i.eo, i1 true, i1 %.059196 ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %.pre, i64 %.0
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !142 ; 2 uses
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %.not78 = icmp sgt i64 %indvars.iv211, %i.er
  br i1 %.not78, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %.014.in18.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %i.er
  %.01419.i = load i32, ptr %.014.in18.i, align 4, !tbaa !142 ; 3 uses
  %.pn20.i = sext i32 %.01419.i to i64            ; 2 uses
  %.0.in21.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %.pn20.i
  %.022.i = load i32, ptr %.0.in21.i, align 4, !tbaa !142 ; 2 uses
  %.not23.i = icmp eq i32 %.022.i, %.01419.i
  br i1 %.not23.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.i
  %.025.i = phi i32 [ %.0.i, %.lr.ph.i ], [ %.022.i, %bb.v ] ; 3 uses
  %.01524.i = phi i32 [ %.025.i, %.lr.ph.i ], [ %i.eq, %bb.v ]
  %i.es = sext i32 %.01524.i to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %i.es
  store i32 %.025.i, ptr %i.et, align 4, !tbaa !142
  %.pn16.i = sext i32 %.025.i to i64
  %.014.in.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %.pn16.i
  %.014.i = load i32, ptr %.014.in.i, align 4, !tbaa !142 ; 3 uses
  %.pn.i = sext i32 %.014.i to i64                ; 2 uses
  %.0.in.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %.pn.i
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !142 ; 2 uses
  %.not.i = icmp eq i32 %.0.i, %.014.i
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !487

.loopexit:                                        ; preds = %.lr.ph.i, %bb.v
  %.pre-phi = phi i64 [ %.pn20.i, %bb.v ], [ %.pn.i, %.lr.ph.i ]
  %.014.lcssa.i = phi i32 [ %.01419.i, %bb.v ], [ %.014.i, %.lr.ph.i ] ; 2 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %.sroa.0137.0164171178, i64 %.pre-phi ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !142 ; 2 uses
  %i.ew = zext i32 %i.ev to i64
  %.not79 = icmp eq i64 %indvars.iv211, %i.ew
  br i1 %.not79, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %i.ex = sext i32 %i.ev to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.ex
  store i32 %i.dt, ptr %i.ey, align 4, !tbaa !142
  %i.ez = sext i32 %.057197 to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %i.ez
  store i32 %.014.lcssa.i, ptr %i.fa, align 4, !tbaa !142
  store i32 %i.dt, ptr %i.eu, align 4, !tbaa !142
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %bb.w, %bb.u
  %.2 = phi i32 [ %.057197, %bb.u ], [ %.014.lcssa.i, %bb.w ], [ %.057197, %.loopexit ]
  %i.fb = add nsw i64 %.sroa.7.0195, 1            ; 2 uses
  %i.fc = icmp sge i64 %i.fb, %.sink.i106         ; 2 uses
  %.not188 = select i1 %i.fc, i1 %spec.select, i1 false
  br i1 %.not188, label %._crit_edge199, label %.lr.ph198, !llvm.loop !488

.body:                                            ; preds = %bb.n, %bb.e
  %.sroa.0137.0165 = phi ptr [ %calloc, %bb.e ], [ %.sroa.0137.0164171178, %bb.n ]
  %.pn84.pn.pn.pn.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.db, %bb.n ]
  tail call void @free(ptr noundef %.sroa.0137.0165) #33
  resume { ptr, i32 } %.pn84.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13treePostorderINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvNT_6ScalarERS4_S6_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i32 %0, 1
  %i.b = sext i32 %i.a to i64                     ; 5 uses
  %or.cond = icmp slt i32 %0, 0                   ; 2 uses
  br i1 %or.cond, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 2 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #35 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !123
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %calloc = tail call ptr @calloc(i64 1, i64 %i.c) ; 2 uses
  %i.g = icmp eq ptr %calloc, null
  br i1 %i.g, label %bb.e, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !123
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc23 unwind label %bb.l

.noexc23:                                         ; preds = %bb.e
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit: ; preds = %bb.d, %bb.a
  %.sroa.0.154 = phi ptr [ null, %bb.a ], [ %calloc, %bb.d ] ; 7 uses
  %.sroa.037.14753 = phi ptr [ null, %bb.a ], [ %i.d, %bb.d ] ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !140
  %.not.i.i.i24 = icmp eq i64 %i.j, %i.b
  br i1 %.not.i.i.i24, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i27, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit
  %i.k = load ptr, ptr %2, align 8, !tbaa !141
  tail call void @free(ptr noundef %i.k) #33
  %i.l = icmp sgt i32 %0, -1
  br i1 %i.l, label %bb.g, label %.sink.split.i.i.i25

bb.g:                                             ; preds = %bb.f
  %i.m = shl nuw nsw i64 %i.b, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #35 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %.sink.split.i.i.i25

bb.h:                                             ; preds = %bb.g
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !123
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
end_hunk_0
