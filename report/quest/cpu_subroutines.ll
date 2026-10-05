Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/cpu_subroutines?download=true
inline.NumInlined: 18129
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 1435
loop-unroll.NumUnrolled: 1524
begin_hunk_0_@_Z44cpu_densmatr_calcProbOfMultiQubitOutcome_subILin1EEd5QuregSt6vectorIiSaIiEES3_.omp_outlined:bb.a
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl i64 %i.av, %i.az
  %i.bb = or i64 %i.ba, %i.ax                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !5

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod40.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ]
  %.07.i21.us.epil.init = phi i64 [ %.024.us, %.lr.ph.us ], [ %i.bb, %._crit_edge.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod42)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.epil.init
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !28 ; 2 uses
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = ashr i64 %.07.i21.us.epil.init, %i.be
  %notmask.i.i.i.us.epil = shl nsw i64 -1, %i.be
  %i.bg = xor i64 %notmask.i.i.i.us.epil, -1
  %i.bh = and i64 %.07.i21.us.epil.init, %i.bg
  %i.bi = add nsw i32 %i.bd, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl i64 %i.bf, %i.bj
  %i.bl = or i64 %i.bk, %i.bh
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.bb, %._crit_edge.us.unr-lcssa ], [ %i.bl, %.epil.preheader ]
  %i.bm = or i64 %.lcssa, %i.p
  %i.bn = mul nsw i64 %i.t, %i.bm
  %i.bo = getelementptr [16 x i8], ptr %i.w, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !71
  %i.bq = fadd fast double %i.ag, %i.bp           ; 2 uses
  store double %i.bq, ptr %i.e, align 8, !tbaa !71
  %i.br = add i64 %.024.us, 1
  %exitcond31.not = icmp eq i64 %.024.us, %i.l
  br i1 %exitcond31.not, label %._crit_edge27, label %.lr.ph.us

.lr.ph26.split:                                   ; preds = %.lr.ph26.split.prol.loopexit, %.lr.ph26.split
  %.024 = phi i64 [ %i.ce, %.lr.ph26.split ], [ %.024.unr, %.lr.ph26.split.prol.loopexit ] ; 3 uses
  %i.bs = phi double [ %i.cd, %.lr.ph26.split ], [ %.unr, %.lr.ph26.split.prol.loopexit ]
  %i.bt = or i64 %.024, %i.p
  %i.bu = mul nsw i64 %i.t, %i.bt
  %i.bv = getelementptr [16 x i8], ptr %i.w, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !71
  %i.bx = fadd fast double %i.bs, %i.bw           ; 2 uses
  store double %i.bx, ptr %i.e, align 8, !tbaa !71
  %i.by = add i64 %.024, 1                        ; 2 uses
  %i.bz = or i64 %i.by, %i.p
  %i.ca = mul nsw i64 %i.t, %i.bz
  %i.cb = getelementptr [16 x i8], ptr %i.w, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !71
  %i.cd = fadd fast double %i.bx, %i.cc           ; 2 uses
  store double %i.cd, ptr %i.e, align 8, !tbaa !71
  %i.ce = add i64 %.024, 2
  %exitcond.not.1 = icmp eq i64 %i.by, %i.l
  br i1 %exitcond.not.1, label %._crit_edge27, label %.lr.ph26.split

._crit_edge27:                                    ; preds = %.lr.ph26.split.prol.loopexit, %.lr.ph26.split, %._crit_edge.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  store ptr %i.e, ptr %i.f, align 8
  %i.cf = call i32 @__kmpc_reduce_nowait(ptr nonnull @4, i32 %i.j, i32 1, i64 8, ptr nonnull %i.f, ptr nonnull @_Z44cpu_densmatr_calcProbOfMultiQubitOutcome_subILin1EEd5QuregSt6vectorIiSaIiEES3_.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.cf, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %._crit_edge27
  %i.cg = load double, ptr %8, align 8, !tbaa !71
  %i.ch = load double, ptr %i.e, align 8, !tbaa !71
  %i.ci = fadd fast double %i.ch, %i.cg
  store double %i.ci, ptr %8, align 8, !tbaa !71
  call void @__kmpc_end_reduce_nowait(ptr nonnull @4, i32 %i.j, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge27
  %i.cj = load double, ptr %i.e, align 8, !tbaa !71
  %i.ck = atomicrmw fadd ptr %8, double %i.cj monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_Z44cpu_densmatr_calcProbOfMultiQubitOutcome_subILin1EEd5QuregSt6vectorIiSaIiEES3_.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #16 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !71
  %i.d = load double, ptr %i.a, align 8, !tbaa !71
  %i.e = fadd fast double %i.d, %i.c
  store double %i.e, ptr %i.b, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi0EEvPd5QuregSt6vectorIiSaIiEE(ptr noundef %0, ptr noundef byval(%struct.Qureg) align 8 %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = load ptr, ptr %2, align 8, !tbaa !49
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32
  tail call void @_Z35assert_numTargsMatchesTemplateParamii(i32 noundef %i.o, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24
  store i64 %i.q, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 0, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i64 1, ptr %i.d, align 8, !tbaa !25
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.e, align 4, !tbaa !28
  call fastcc void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi0EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr nonnull %i.e, ptr %i.d, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  %i.r = load i32, ptr %1, align 8, !tbaa !27
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi0EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.52, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.c, ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !28
  call void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi0EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.52(ptr nonnull %i.f, ptr nonnull poison, ptr %i.b, ptr %1, ptr %2, ptr %i.c, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi0EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.h, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.i = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !28
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !28
  %i.l = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %.not12 = icmp sgt i32 %i.l, %i.k
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !85
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = sub i32 %i.k, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.s, i1 false), !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #5

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi0EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.52(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not21 = icmp sgt i64 %i.k, %i.j
  br i1 %.not21, label %._crit_edge, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_Z14getValueOfBitsxPii.exit
  %.022 = phi i64 [ %i.k, %.lr.ph23 ], [ %i.bk, %_Z14getValueOfBitsxPii.exit ] ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.p = getelementptr inbounds [16 x i8], ptr %i.o, i64 %.022
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !71 ; 2 uses
  %i.r = fmul fast <2 x double> %i.q, %i.q
  %i.s = call fast double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.r)
  %i.t = load i32, ptr %i.m, align 4, !tbaa !29
  %i.u = sext i32 %i.t to i64
  %i.v = load i64, ptr %i.n, align 8, !tbaa !30
  %i.w = and i64 %i.v, 4294967295
  %i.x = shl i64 %i.u, %i.w
  %i.y = or i64 %i.x, %.022                       ; 3 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !49     ; 3 uses
  %i.aa = load i32, ptr %5, align 4, !tbaa !28    ; 4 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %_Z14getValueOfBitsxPii.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ac = icmp eq i32 %i.aa, 1
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.08.i19 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 %i.y, %i.af
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 1
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = shl nuw i32 %i.ai, %i.aj
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = or i64 %.08.i19, %i.al
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !28
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.y, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 1
  %i.at = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.au = shl nuw i32 %i.as, %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = or i64 %i.am, %i.av                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !7

_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z14getValueOfBitsxPii.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ] ; 2 uses
  %.08.i19.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aw, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ]
  %lcmp.mod29 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod29)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = lshr i64 %i.y, %i.az
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 1
  %i.bd = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.be = shl nuw i32 %i.bc, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = or i64 %.08.i19.epil.init, %i.bf
  br label %_Z14getValueOfBitsxPii.exit

_Z14getValueOfBitsxPii.exit:                      ; preds = %.lr.ph.epil.preheader, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %bb.c
  %.08.i.lcssa = phi i64 [ 0, %bb.c ], [ %i.aw, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ], [ %i.bg, %.lr.ph.epil.preheader ]
  %i.bh = load ptr, ptr %6, align 8, !tbaa !85
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.08.i.lcssa
  %i.bj = atomicrmw fadd ptr %i.bi, double %i.s monotonic, align 8 ; 0 uses
  %i.bk = add nsw i64 %.022, 1
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !25
  %.not.not = icmp slt i64 %.022, %i.bl
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_Z14getValueOfBitsxPii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi1EEvPd5QuregSt6vectorIiSaIiEE(ptr noundef %0, ptr noundef byval(%struct.Qureg) align 8 %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = load ptr, ptr %2, align 8, !tbaa !49
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32
  tail call void @_Z35assert_numTargsMatchesTemplateParamii(i32 noundef %i.o, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24
  store i64 %i.q, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i64 2, ptr %i.d, align 8, !tbaa !25
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.e, align 4, !tbaa !28
  call fastcc void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr nonnull %i.e, ptr %i.d, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  %i.r = load i32, ptr %1, align 8, !tbaa !27
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.53, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.c, ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !28
  call void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.53(ptr nonnull %i.f, ptr nonnull poison, ptr %i.b, ptr %1, ptr %2, ptr %i.c, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.h, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.i = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !28
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !28
  %i.l = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %.not12 = icmp sgt i32 %i.l, %i.k
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !85
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = sub i32 %i.k, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.s, i1 false), !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.53(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not21 = icmp sgt i64 %i.k, %i.j
  br i1 %.not21, label %._crit_edge, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_Z14getValueOfBitsxPii.exit
  %.022 = phi i64 [ %i.k, %.lr.ph23 ], [ %i.bk, %_Z14getValueOfBitsxPii.exit ] ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.p = getelementptr inbounds [16 x i8], ptr %i.o, i64 %.022
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !71 ; 2 uses
  %i.r = fmul fast <2 x double> %i.q, %i.q
  %i.s = call fast double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.r)
  %i.t = load i32, ptr %i.m, align 4, !tbaa !29
  %i.u = sext i32 %i.t to i64
  %i.v = load i64, ptr %i.n, align 8, !tbaa !30
  %i.w = and i64 %i.v, 4294967295
  %i.x = shl i64 %i.u, %i.w
  %i.y = or i64 %i.x, %.022                       ; 3 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !49     ; 3 uses
  %i.aa = load i32, ptr %5, align 4, !tbaa !28    ; 4 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %_Z14getValueOfBitsxPii.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ac = icmp eq i32 %i.aa, 1
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.08.i19 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 %i.y, %i.af
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 1
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = shl nuw i32 %i.ai, %i.aj
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = or i64 %.08.i19, %i.al
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !28
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.y, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 1
  %i.at = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.au = shl nuw i32 %i.as, %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = or i64 %i.am, %i.av                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !7

_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z14getValueOfBitsxPii.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ] ; 2 uses
  %.08.i19.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aw, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ]
  %lcmp.mod29 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod29)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = lshr i64 %i.y, %i.az
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 1
  %i.bd = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.be = shl nuw i32 %i.bc, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = or i64 %.08.i19.epil.init, %i.bf
  br label %_Z14getValueOfBitsxPii.exit

_Z14getValueOfBitsxPii.exit:                      ; preds = %.lr.ph.epil.preheader, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %bb.c
  %.08.i.lcssa = phi i64 [ 0, %bb.c ], [ %i.aw, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ], [ %i.bg, %.lr.ph.epil.preheader ]
  %i.bh = load ptr, ptr %6, align 8, !tbaa !85
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.08.i.lcssa
  %i.bj = atomicrmw fadd ptr %i.bi, double %i.s monotonic, align 8 ; 0 uses
  %i.bk = add nsw i64 %.022, 1
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !25
  %.not.not = icmp slt i64 %.022, %i.bl
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_Z14getValueOfBitsxPii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi2EEvPd5QuregSt6vectorIiSaIiEE(ptr noundef %0, ptr noundef byval(%struct.Qureg) align 8 %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = load ptr, ptr %2, align 8, !tbaa !49
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32
  tail call void @_Z35assert_numTargsMatchesTemplateParamii(i32 noundef %i.o, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24
  store i64 %i.q, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 2, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i64 4, ptr %i.d, align 8, !tbaa !25
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.e, align 4, !tbaa !28
  call fastcc void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi2EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr nonnull %i.e, ptr %i.d, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  %i.r = load i32, ptr %1, align 8, !tbaa !27
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi2EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.54, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.c, ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !28
  call void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi2EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.54(ptr nonnull %i.f, ptr nonnull poison, ptr %i.b, ptr %1, ptr %2, ptr %i.c, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi2EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.h, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.i = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !28
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !28
  %i.l = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %.not12 = icmp sgt i32 %i.l, %i.k
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !85
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = sub i32 %i.k, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.s, i1 false), !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi2EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.54(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not21 = icmp sgt i64 %i.k, %i.j
  br i1 %.not21, label %._crit_edge, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_Z14getValueOfBitsxPii.exit
  %.022 = phi i64 [ %i.k, %.lr.ph23 ], [ %i.bk, %_Z14getValueOfBitsxPii.exit ] ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.p = getelementptr inbounds [16 x i8], ptr %i.o, i64 %.022
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !71 ; 2 uses
  %i.r = fmul fast <2 x double> %i.q, %i.q
  %i.s = call fast double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.r)
  %i.t = load i32, ptr %i.m, align 4, !tbaa !29
  %i.u = sext i32 %i.t to i64
  %i.v = load i64, ptr %i.n, align 8, !tbaa !30
  %i.w = and i64 %i.v, 4294967295
  %i.x = shl i64 %i.u, %i.w
  %i.y = or i64 %i.x, %.022                       ; 3 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !49     ; 3 uses
  %i.aa = load i32, ptr %5, align 4, !tbaa !28    ; 4 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %_Z14getValueOfBitsxPii.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ac = icmp eq i32 %i.aa, 1
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.08.i19 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 %i.y, %i.af
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 1
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = shl nuw i32 %i.ai, %i.aj
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = or i64 %.08.i19, %i.al
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !28
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.y, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 1
  %i.at = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.au = shl nuw i32 %i.as, %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = or i64 %i.am, %i.av                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !7

_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z14getValueOfBitsxPii.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ] ; 2 uses
  %.08.i19.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aw, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ]
  %lcmp.mod29 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod29)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = lshr i64 %i.y, %i.az
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 1
  %i.bd = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.be = shl nuw i32 %i.bc, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = or i64 %.08.i19.epil.init, %i.bf
  br label %_Z14getValueOfBitsxPii.exit

_Z14getValueOfBitsxPii.exit:                      ; preds = %.lr.ph.epil.preheader, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %bb.c
  %.08.i.lcssa = phi i64 [ 0, %bb.c ], [ %i.aw, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ], [ %i.bg, %.lr.ph.epil.preheader ]
  %i.bh = load ptr, ptr %6, align 8, !tbaa !85
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.08.i.lcssa
  %i.bj = atomicrmw fadd ptr %i.bi, double %i.s monotonic, align 8 ; 0 uses
  %i.bk = add nsw i64 %.022, 1
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !25
  %.not.not = icmp slt i64 %.022, %i.bl
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_Z14getValueOfBitsxPii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi3EEvPd5QuregSt6vectorIiSaIiEE(ptr noundef %0, ptr noundef byval(%struct.Qureg) align 8 %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = load ptr, ptr %2, align 8, !tbaa !49
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32
  tail call void @_Z35assert_numTargsMatchesTemplateParamii(i32 noundef %i.o, i32 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24
  store i64 %i.q, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 3, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i64 8, ptr %i.d, align 8, !tbaa !25
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.e, align 4, !tbaa !28
  call fastcc void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi3EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr nonnull %i.e, ptr %i.d, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  %i.r = load i32, ptr %1, align 8, !tbaa !27
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi3EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.55, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.c, ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !28
  call void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi3EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.55(ptr nonnull %i.f, ptr nonnull poison, ptr %i.b, ptr %1, ptr %2, ptr %i.c, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi3EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.h, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.i = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !28
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !28
  %i.l = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %.not12 = icmp sgt i32 %i.l, %i.k
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !85
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = sub i32 %i.k, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.s, i1 false), !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi3EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.55(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not21 = icmp sgt i64 %i.k, %i.j
  br i1 %.not21, label %._crit_edge, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_Z14getValueOfBitsxPii.exit
  %.022 = phi i64 [ %i.k, %.lr.ph23 ], [ %i.bk, %_Z14getValueOfBitsxPii.exit ] ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.p = getelementptr inbounds [16 x i8], ptr %i.o, i64 %.022
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !71 ; 2 uses
  %i.r = fmul fast <2 x double> %i.q, %i.q
  %i.s = call fast double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.r)
  %i.t = load i32, ptr %i.m, align 4, !tbaa !29
  %i.u = sext i32 %i.t to i64
  %i.v = load i64, ptr %i.n, align 8, !tbaa !30
  %i.w = and i64 %i.v, 4294967295
  %i.x = shl i64 %i.u, %i.w
  %i.y = or i64 %i.x, %.022                       ; 3 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !49     ; 3 uses
  %i.aa = load i32, ptr %5, align 4, !tbaa !28    ; 4 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %_Z14getValueOfBitsxPii.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ac = icmp eq i32 %i.aa, 1
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.08.i19 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 %i.y, %i.af
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 1
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = shl nuw i32 %i.ai, %i.aj
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = or i64 %.08.i19, %i.al
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !28
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.y, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 1
  %i.at = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.au = shl nuw i32 %i.as, %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = or i64 %i.am, %i.av                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !7

_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z14getValueOfBitsxPii.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ] ; 2 uses
  %.08.i19.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aw, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ]
  %lcmp.mod29 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod29)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = lshr i64 %i.y, %i.az
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 1
  %i.bd = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.be = shl nuw i32 %i.bc, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = or i64 %.08.i19.epil.init, %i.bf
  br label %_Z14getValueOfBitsxPii.exit

_Z14getValueOfBitsxPii.exit:                      ; preds = %.lr.ph.epil.preheader, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %bb.c
  %.08.i.lcssa = phi i64 [ 0, %bb.c ], [ %i.aw, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ], [ %i.bg, %.lr.ph.epil.preheader ]
  %i.bh = load ptr, ptr %6, align 8, !tbaa !85
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.08.i.lcssa
  %i.bj = atomicrmw fadd ptr %i.bi, double %i.s monotonic, align 8 ; 0 uses
  %i.bk = add nsw i64 %.022, 1
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !25
  %.not.not = icmp slt i64 %.022, %i.bl
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_Z14getValueOfBitsxPii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi4EEvPd5QuregSt6vectorIiSaIiEE(ptr noundef %0, ptr noundef byval(%struct.Qureg) align 8 %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = load ptr, ptr %2, align 8, !tbaa !49
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32
  tail call void @_Z35assert_numTargsMatchesTemplateParamii(i32 noundef %i.o, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24
  store i64 %i.q, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 4, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i64 16, ptr %i.d, align 8, !tbaa !25
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.e, align 4, !tbaa !28
  call fastcc void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi4EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr nonnull %i.e, ptr %i.d, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  %i.r = load i32, ptr %1, align 8, !tbaa !27
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi4EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.56, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.c, ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !28
  call void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi4EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.56(ptr nonnull %i.f, ptr nonnull poison, ptr %i.b, ptr %1, ptr %2, ptr %i.c, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi4EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.h, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.i = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !28
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !28
  %i.l = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %.not12 = icmp sgt i32 %i.l, %i.k
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !85
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = sub i32 %i.k, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.s, i1 false), !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi4EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.56(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not21 = icmp sgt i64 %i.k, %i.j
  br i1 %.not21, label %._crit_edge, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_Z14getValueOfBitsxPii.exit
  %.022 = phi i64 [ %i.k, %.lr.ph23 ], [ %i.bk, %_Z14getValueOfBitsxPii.exit ] ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.p = getelementptr inbounds [16 x i8], ptr %i.o, i64 %.022
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !71 ; 2 uses
  %i.r = fmul fast <2 x double> %i.q, %i.q
  %i.s = call fast double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.r)
  %i.t = load i32, ptr %i.m, align 4, !tbaa !29
  %i.u = sext i32 %i.t to i64
  %i.v = load i64, ptr %i.n, align 8, !tbaa !30
  %i.w = and i64 %i.v, 4294967295
  %i.x = shl i64 %i.u, %i.w
  %i.y = or i64 %i.x, %.022                       ; 3 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !49     ; 3 uses
  %i.aa = load i32, ptr %5, align 4, !tbaa !28    ; 4 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %_Z14getValueOfBitsxPii.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ac = icmp eq i32 %i.aa, 1
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.08.i19 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 %i.y, %i.af
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 1
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = shl nuw i32 %i.ai, %i.aj
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = or i64 %.08.i19, %i.al
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !28
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.y, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 1
  %i.at = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.au = shl nuw i32 %i.as, %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = or i64 %i.am, %i.av                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !7

_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z14getValueOfBitsxPii.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ] ; 2 uses
  %.08.i19.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aw, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ]
  %lcmp.mod29 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod29)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = lshr i64 %i.y, %i.az
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 1
  %i.bd = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.be = shl nuw i32 %i.bc, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = or i64 %.08.i19.epil.init, %i.bf
  br label %_Z14getValueOfBitsxPii.exit

_Z14getValueOfBitsxPii.exit:                      ; preds = %.lr.ph.epil.preheader, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %bb.c
  %.08.i.lcssa = phi i64 [ 0, %bb.c ], [ %i.aw, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ], [ %i.bg, %.lr.ph.epil.preheader ]
  %i.bh = load ptr, ptr %6, align 8, !tbaa !85
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.08.i.lcssa
  %i.bj = atomicrmw fadd ptr %i.bi, double %i.s monotonic, align 8 ; 0 uses
  %i.bk = add nsw i64 %.022, 1
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !25
  %.not.not = icmp slt i64 %.022, %i.bl
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_Z14getValueOfBitsxPii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi5EEvPd5QuregSt6vectorIiSaIiEE(ptr noundef %0, ptr noundef byval(%struct.Qureg) align 8 %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = load ptr, ptr %2, align 8, !tbaa !49
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32
  tail call void @_Z35assert_numTargsMatchesTemplateParamii(i32 noundef %i.o, i32 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24
  store i64 %i.q, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 5, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i64 32, ptr %i.d, align 8, !tbaa !25
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.e, align 4, !tbaa !28
  call fastcc void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi5EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr nonnull %i.e, ptr %i.d, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  %i.r = load i32, ptr %1, align 8, !tbaa !27
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi5EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.57, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.c, ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !28
  call void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi5EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.57(ptr nonnull %i.f, ptr nonnull poison, ptr %i.b, ptr %1, ptr %2, ptr %i.c, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi5EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.h, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.i = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !28
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !28
  %i.l = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %.not12 = icmp sgt i32 %i.l, %i.k
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !85
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = sub i32 %i.k, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.s, i1 false), !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILi5EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.57(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not21 = icmp sgt i64 %i.k, %i.j
  br i1 %.not21, label %._crit_edge, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_Z14getValueOfBitsxPii.exit
  %.022 = phi i64 [ %i.k, %.lr.ph23 ], [ %i.bk, %_Z14getValueOfBitsxPii.exit ] ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.p = getelementptr inbounds [16 x i8], ptr %i.o, i64 %.022
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !71 ; 2 uses
  %i.r = fmul fast <2 x double> %i.q, %i.q
  %i.s = call fast double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.r)
  %i.t = load i32, ptr %i.m, align 4, !tbaa !29
  %i.u = sext i32 %i.t to i64
  %i.v = load i64, ptr %i.n, align 8, !tbaa !30
  %i.w = and i64 %i.v, 4294967295
  %i.x = shl i64 %i.u, %i.w
  %i.y = or i64 %i.x, %.022                       ; 3 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !49     ; 3 uses
  %i.aa = load i32, ptr %5, align 4, !tbaa !28    ; 4 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %_Z14getValueOfBitsxPii.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ac = icmp eq i32 %i.aa, 1
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.08.i19 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 %i.y, %i.af
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 1
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = shl nuw i32 %i.ai, %i.aj
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = or i64 %.08.i19, %i.al
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !28
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.y, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 1
  %i.at = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.au = shl nuw i32 %i.as, %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = or i64 %i.am, %i.av                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !7

_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z14getValueOfBitsxPii.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ] ; 2 uses
  %.08.i19.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aw, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ]
  %lcmp.mod29 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod29)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = lshr i64 %i.y, %i.az
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 1
  %i.bd = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.be = shl nuw i32 %i.bc, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = or i64 %.08.i19.epil.init, %i.bf
  br label %_Z14getValueOfBitsxPii.exit

_Z14getValueOfBitsxPii.exit:                      ; preds = %.lr.ph.epil.preheader, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %bb.c
  %.08.i.lcssa = phi i64 [ 0, %bb.c ], [ %i.aw, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ], [ %i.bg, %.lr.ph.epil.preheader ]
  %i.bh = load ptr, ptr %6, align 8, !tbaa !85
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.08.i.lcssa
  %i.bj = atomicrmw fadd ptr %i.bi, double %i.s monotonic, align 8 ; 0 uses
  %i.bk = add nsw i64 %.022, 1
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !25
  %.not.not = icmp slt i64 %.022, %i.bl
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_Z14getValueOfBitsxPii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILin1EEvPd5QuregSt6vectorIiSaIiEE(ptr noundef %0, ptr noundef byval(%struct.Qureg) align 8 %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = load ptr, ptr %2, align 8, !tbaa !49
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32
  tail call void @_Z35assert_numTargsMatchesTemplateParamii(i32 noundef %i.o, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24
  store i64 %i.q, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.s = load ptr, ptr %2, align 8, !tbaa !49
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 2                   ; 2 uses
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  store i32 %i.x, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.y = and i64 %i.w, 4294967295
  %i.z = shl nuw i64 1, %i.y
  store i64 %i.z, ptr %i.d, align 8, !tbaa !25
  %i.aa = icmp sgt i32 %i.x, 8
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILin1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined, ptr nonnull %i.d, ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.e, align 4, !tbaa !28
  call void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILin1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr nonnull %i.e, ptr nonnull poison, ptr %i.d, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = load i32, ptr %1, align 8, !tbaa !27
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILin1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.58, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.c, ptr nonnull %i.a)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !28
  call void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILin1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.58(ptr nonnull %i.f, ptr nonnull poison, ptr %i.b, ptr %1, ptr %2, ptr %i.c, ptr %i.a) #5
  call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILin1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.h, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.i = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !28
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !28
  %i.l = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %.not12 = icmp sgt i32 %i.l, %i.k
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %3, align 8, !tbaa !85
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = sub i32 %i.k, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.s, i1 false), !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z49cpu_statevec_calcProbsOfAllMultiQubitOutcomes_subILin1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.58(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not21 = icmp sgt i64 %i.k, %i.j
  br i1 %.not21, label %._crit_edge, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_Z14getValueOfBitsxPii.exit
  %.022 = phi i64 [ %i.k, %.lr.ph23 ], [ %i.bk, %_Z14getValueOfBitsxPii.exit ] ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.p = getelementptr inbounds [16 x i8], ptr %i.o, i64 %.022
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !71 ; 2 uses
  %i.r = fmul fast <2 x double> %i.q, %i.q
  %i.s = call fast double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.r)
  %i.t = load i32, ptr %i.m, align 4, !tbaa !29
  %i.u = sext i32 %i.t to i64
  %i.v = load i64, ptr %i.n, align 8, !tbaa !30
  %i.w = and i64 %i.v, 4294967295
  %i.x = shl i64 %i.u, %i.w
  %i.y = or i64 %i.x, %.022                       ; 3 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !49     ; 3 uses
  %i.aa = load i32, ptr %5, align 4, !tbaa !28    ; 4 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %_Z14getValueOfBitsxPii.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ac = icmp eq i32 %i.aa, 1
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.08.i19 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 %i.y, %i.af
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 1
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = shl nuw i32 %i.ai, %i.aj
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = or i64 %.08.i19, %i.al
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !28
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.y, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 1
  %i.at = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.au = shl nuw i32 %i.as, %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = or i64 %i.am, %i.av                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !7

_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z14getValueOfBitsxPii.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ] ; 2 uses
  %.08.i19.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aw, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ]
  %lcmp.mod29 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod29)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = lshr i64 %i.y, %i.az
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 1
  %i.bd = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.be = shl nuw i32 %i.bc, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = or i64 %.08.i19.epil.init, %i.bf
  br label %_Z14getValueOfBitsxPii.exit

_Z14getValueOfBitsxPii.exit:                      ; preds = %.lr.ph.epil.preheader, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %bb.c
  %.08.i.lcssa = phi i64 [ 0, %bb.c ], [ %i.aw, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ], [ %i.bg, %.lr.ph.epil.preheader ]
  %i.bh = load ptr, ptr %6, align 8, !tbaa !85
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.08.i.lcssa
  %i.bj = atomicrmw fadd ptr %i.bi, double %i.s monotonic, align 8 ; 0 uses
  %i.bk = add nsw i64 %.022, 1
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !25
  %.not.not = icmp slt i64 %.022, %i.bl
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_Z14getValueOfBitsxPii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi0EEvPd5QuregSt6vectorIiSaIiEE(ptr noundef %0, ptr noundef byval(%struct.Qureg) align 8 %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 2 uses
  %i.h = alloca i32, align 4                      ; 2 uses
  %i.i = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = load ptr, ptr %2, align 8, !tbaa !49
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 2
  %i.q = trunc i64 %i.p to i32
  tail call void @_Z35assert_numTargsMatchesTemplateParamii(i32 noundef %i.q, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !83
  %i.t = and i64 %i.s, 4294967295
  %i.u = shl nuw i64 1, %i.t
  store i64 %i.u, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw i64 1, %i.x
  store i64 %i.y, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.z = tail call noundef i64 @_Z36util_getLocalIndexOfFirstDiagonalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  store i64 %i.z, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i32 0, ptr %i.e, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i64 1, ptr %i.f, align 8, !tbaa !25
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.i)
  store i32 %i.i, ptr %i.g, align 4, !tbaa !28
  call fastcc void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi0EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr nonnull %i.g, ptr %i.f, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.i)
  %i.aa = load i32, ptr %1, align 8, !tbaa !27
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi0EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.59, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.e, ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.i)
  store i32 %i.i, ptr %i.h, align 4, !tbaa !28
  call void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi0EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.59(ptr nonnull %i.h, ptr nonnull poison, ptr %i.b, ptr %i.d, ptr %i.c, ptr %1, ptr %2, ptr %i.e, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi0EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.h, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.i = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !28
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !28
  %i.l = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %.not12 = icmp sgt i32 %i.l, %i.k
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !85
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = sub i32 %i.k, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.s, i1 false), !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi0EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.59(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not24 = icmp sgt i64 %i.k, %i.j
  br i1 %.not24, label %._crit_edge, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph26, %_Z14getValueOfBitsxPii.exit
  %.025 = phi i64 [ %i.k, %.lr.ph26 ], [ %i.bn, %_Z14getValueOfBitsxPii.exit ] ; 3 uses
  %i.o = load i64, ptr %3, align 8, !tbaa !25
  %i.p = load i64, ptr %4, align 8, !tbaa !25
  %i.q = add nsw i64 %i.p, 1
  %i.r = mul nsw i64 %i.q, %.025
  %i.s = add nsw i64 %i.r, %i.o                   ; 2 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.u = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.s
  %i.v = load double, ptr %i.u, align 8, !tbaa !71
  %i.w = load i32, ptr %i.m, align 4, !tbaa !29
  %i.x = sext i32 %i.w to i64
  %i.y = load i64, ptr %i.n, align 8, !tbaa !30
  %i.z = and i64 %i.y, 4294967295
  %i.aa = shl i64 %i.x, %i.z
  %i.ab = or i64 %i.aa, %i.s                      ; 3 uses
  %i.ac = load ptr, ptr %6, align 8, !tbaa !49    ; 3 uses
  %i.ad = load i32, ptr %7, align 4, !tbaa !28    ; 4 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %_Z14getValueOfBitsxPii.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.af = icmp eq i32 %i.ad, 1
  br i1 %i.af, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.08.i22 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = lshr i64 %i.ab, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 1
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = shl nuw i32 %i.al, %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = or i64 %.08.i22, %i.ao
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !28
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = lshr i64 %i.ab, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 1
  %i.aw = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ax = shl nuw i32 %i.av, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = or i64 %i.ap, %i.ay                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !7

_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z14getValueOfBitsxPii.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ] ; 2 uses
  %.08.i22.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.az, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i32 %i.ad to i1
  call void @llvm.assume(i1 %lcmp.mod31)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.epil.init
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !28
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = lshr i64 %i.ab, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = and i32 %i.be, 1
  %i.bg = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.bh = shl nuw i32 %i.bf, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = or i64 %.08.i22.epil.init, %i.bi
  br label %_Z14getValueOfBitsxPii.exit

_Z14getValueOfBitsxPii.exit:                      ; preds = %.lr.ph.epil.preheader, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %bb.c
  %.08.i.lcssa = phi i64 [ 0, %bb.c ], [ %i.az, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ], [ %i.bj, %.lr.ph.epil.preheader ]
  %i.bk = load ptr, ptr %8, align 8, !tbaa !85
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %.08.i.lcssa
  %i.bm = atomicrmw fadd ptr %i.bl, double %i.v monotonic, align 8 ; 0 uses
  %i.bn = add nsw i64 %.025, 1
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !25
  %.not.not = icmp slt i64 %.025, %i.bo
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_Z14getValueOfBitsxPii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi1EEvPd5QuregSt6vectorIiSaIiEE(ptr noundef %0, ptr noundef byval(%struct.Qureg) align 8 %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 2 uses
  %i.h = alloca i32, align 4                      ; 2 uses
  %i.i = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = load ptr, ptr %2, align 8, !tbaa !49
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 2
  %i.q = trunc i64 %i.p to i32
  tail call void @_Z35assert_numTargsMatchesTemplateParamii(i32 noundef %i.q, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !83
  %i.t = and i64 %i.s, 4294967295
  %i.u = shl nuw i64 1, %i.t
  store i64 %i.u, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw i64 1, %i.x
  store i64 %i.y, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.z = tail call noundef i64 @_Z36util_getLocalIndexOfFirstDiagonalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  store i64 %i.z, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i32 1, ptr %i.e, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i64 2, ptr %i.f, align 8, !tbaa !25
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.i)
  store i32 %i.i, ptr %i.g, align 4, !tbaa !28
  call fastcc void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr nonnull %i.g, ptr %i.f, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.i)
  %i.aa = load i32, ptr %1, align 8, !tbaa !27
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.60, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.e, ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.i)
  store i32 %i.i, ptr %i.h, align 4, !tbaa !28
  call void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.60(ptr nonnull %i.h, ptr nonnull poison, ptr %i.b, ptr %i.d, ptr %i.c, ptr %1, ptr %2, ptr %i.e, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.h, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.i = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !28
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !28
  %i.l = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %.not12 = icmp sgt i32 %i.l, %i.k
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !85
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = sub i32 %i.k, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.s, i1 false), !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.60(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not24 = icmp sgt i64 %i.k, %i.j
  br i1 %.not24, label %._crit_edge, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph26, %_Z14getValueOfBitsxPii.exit
  %.025 = phi i64 [ %i.k, %.lr.ph26 ], [ %i.bn, %_Z14getValueOfBitsxPii.exit ] ; 3 uses
  %i.o = load i64, ptr %3, align 8, !tbaa !25
  %i.p = load i64, ptr %4, align 8, !tbaa !25
  %i.q = add nsw i64 %i.p, 1
  %i.r = mul nsw i64 %i.q, %.025
  %i.s = add nsw i64 %i.r, %i.o                   ; 2 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.u = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.s
  %i.v = load double, ptr %i.u, align 8, !tbaa !71
  %i.w = load i32, ptr %i.m, align 4, !tbaa !29
  %i.x = sext i32 %i.w to i64
  %i.y = load i64, ptr %i.n, align 8, !tbaa !30
  %i.z = and i64 %i.y, 4294967295
  %i.aa = shl i64 %i.x, %i.z
  %i.ab = or i64 %i.aa, %i.s                      ; 3 uses
  %i.ac = load ptr, ptr %6, align 8, !tbaa !49    ; 3 uses
  %i.ad = load i32, ptr %7, align 4, !tbaa !28    ; 4 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %_Z14getValueOfBitsxPii.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.af = icmp eq i32 %i.ad, 1
  br i1 %i.af, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.08.i22 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = lshr i64 %i.ab, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 1
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = shl nuw i32 %i.al, %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = or i64 %.08.i22, %i.ao
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !28
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = lshr i64 %i.ab, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 1
  %i.aw = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ax = shl nuw i32 %i.av, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = or i64 %i.ap, %i.ay                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !7

_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z14getValueOfBitsxPii.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ] ; 2 uses
  %.08.i22.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.az, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i32 %i.ad to i1
  call void @llvm.assume(i1 %lcmp.mod31)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.epil.init
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !28
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = lshr i64 %i.ab, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = and i32 %i.be, 1
  %i.bg = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.bh = shl nuw i32 %i.bf, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = or i64 %.08.i22.epil.init, %i.bi
  br label %_Z14getValueOfBitsxPii.exit

_Z14getValueOfBitsxPii.exit:                      ; preds = %.lr.ph.epil.preheader, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %bb.c
  %.08.i.lcssa = phi i64 [ 0, %bb.c ], [ %i.az, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ], [ %i.bj, %.lr.ph.epil.preheader ]
  %i.bk = load ptr, ptr %8, align 8, !tbaa !85
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %.08.i.lcssa
  %i.bm = atomicrmw fadd ptr %i.bl, double %i.v monotonic, align 8 ; 0 uses
  %i.bn = add nsw i64 %.025, 1
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !25
  %.not.not = icmp slt i64 %.025, %i.bo
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_Z14getValueOfBitsxPii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi2EEvPd5QuregSt6vectorIiSaIiEE(ptr noundef %0, ptr noundef byval(%struct.Qureg) align 8 %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 2 uses
  %i.h = alloca i32, align 4                      ; 2 uses
  %i.i = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = load ptr, ptr %2, align 8, !tbaa !49
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 2
  %i.q = trunc i64 %i.p to i32
  tail call void @_Z35assert_numTargsMatchesTemplateParamii(i32 noundef %i.q, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !83
  %i.t = and i64 %i.s, 4294967295
  %i.u = shl nuw i64 1, %i.t
  store i64 %i.u, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw i64 1, %i.x
  store i64 %i.y, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.z = tail call noundef i64 @_Z36util_getLocalIndexOfFirstDiagonalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  store i64 %i.z, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i32 2, ptr %i.e, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i64 4, ptr %i.f, align 8, !tbaa !25
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.i)
  store i32 %i.i, ptr %i.g, align 4, !tbaa !28
  call fastcc void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi2EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr nonnull %i.g, ptr %i.f, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.i)
  %i.aa = load i32, ptr %1, align 8, !tbaa !27
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi2EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.61, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.e, ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.i)
  store i32 %i.i, ptr %i.h, align 4, !tbaa !28
  call void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi2EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.61(ptr nonnull %i.h, ptr nonnull poison, ptr %i.b, ptr %i.d, ptr %i.c, ptr %1, ptr %2, ptr %i.e, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi2EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.h, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.i = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !28
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !28
  %i.l = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %.not12 = icmp sgt i32 %i.l, %i.k
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !85
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = sub i32 %i.k, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.s, i1 false), !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi2EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.61(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not24 = icmp sgt i64 %i.k, %i.j
  br i1 %.not24, label %._crit_edge, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph26, %_Z14getValueOfBitsxPii.exit
  %.025 = phi i64 [ %i.k, %.lr.ph26 ], [ %i.bn, %_Z14getValueOfBitsxPii.exit ] ; 3 uses
  %i.o = load i64, ptr %3, align 8, !tbaa !25
  %i.p = load i64, ptr %4, align 8, !tbaa !25
  %i.q = add nsw i64 %i.p, 1
  %i.r = mul nsw i64 %i.q, %.025
  %i.s = add nsw i64 %i.r, %i.o                   ; 2 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.u = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.s
  %i.v = load double, ptr %i.u, align 8, !tbaa !71
  %i.w = load i32, ptr %i.m, align 4, !tbaa !29
  %i.x = sext i32 %i.w to i64
  %i.y = load i64, ptr %i.n, align 8, !tbaa !30
  %i.z = and i64 %i.y, 4294967295
  %i.aa = shl i64 %i.x, %i.z
  %i.ab = or i64 %i.aa, %i.s                      ; 3 uses
  %i.ac = load ptr, ptr %6, align 8, !tbaa !49    ; 3 uses
  %i.ad = load i32, ptr %7, align 4, !tbaa !28    ; 4 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %_Z14getValueOfBitsxPii.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.af = icmp eq i32 %i.ad, 1
  br i1 %i.af, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.08.i22 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = lshr i64 %i.ab, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 1
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = shl nuw i32 %i.al, %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = or i64 %.08.i22, %i.ao
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !28
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = lshr i64 %i.ab, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 1
  %i.aw = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ax = shl nuw i32 %i.av, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = or i64 %i.ap, %i.ay                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !7

_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z14getValueOfBitsxPii.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ] ; 2 uses
  %.08.i22.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.az, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i32 %i.ad to i1
  call void @llvm.assume(i1 %lcmp.mod31)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.epil.init
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !28
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = lshr i64 %i.ab, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = and i32 %i.be, 1
  %i.bg = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.bh = shl nuw i32 %i.bf, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = or i64 %.08.i22.epil.init, %i.bi
  br label %_Z14getValueOfBitsxPii.exit

_Z14getValueOfBitsxPii.exit:                      ; preds = %.lr.ph.epil.preheader, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %bb.c
  %.08.i.lcssa = phi i64 [ 0, %bb.c ], [ %i.az, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ], [ %i.bj, %.lr.ph.epil.preheader ]
  %i.bk = load ptr, ptr %8, align 8, !tbaa !85
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %.08.i.lcssa
  %i.bm = atomicrmw fadd ptr %i.bl, double %i.v monotonic, align 8 ; 0 uses
  %i.bn = add nsw i64 %.025, 1
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !25
  %.not.not = icmp slt i64 %.025, %i.bo
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_Z14getValueOfBitsxPii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi3EEvPd5QuregSt6vectorIiSaIiEE(ptr noundef %0, ptr noundef byval(%struct.Qureg) align 8 %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 2 uses
  %i.h = alloca i32, align 4                      ; 2 uses
  %i.i = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = load ptr, ptr %2, align 8, !tbaa !49
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 2
  %i.q = trunc i64 %i.p to i32
  tail call void @_Z35assert_numTargsMatchesTemplateParamii(i32 noundef %i.q, i32 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !83
  %i.t = and i64 %i.s, 4294967295
  %i.u = shl nuw i64 1, %i.t
  store i64 %i.u, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw i64 1, %i.x
  store i64 %i.y, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.z = tail call noundef i64 @_Z36util_getLocalIndexOfFirstDiagonalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  store i64 %i.z, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i32 3, ptr %i.e, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i64 8, ptr %i.f, align 8, !tbaa !25
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.i)
  store i32 %i.i, ptr %i.g, align 4, !tbaa !28
  call fastcc void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi3EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr nonnull %i.g, ptr %i.f, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.i)
  %i.aa = load i32, ptr %1, align 8, !tbaa !27
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi3EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.62, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.e, ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.i)
  store i32 %i.i, ptr %i.h, align 4, !tbaa !28
  call void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi3EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.62(ptr nonnull %i.h, ptr nonnull poison, ptr %i.b, ptr %i.d, ptr %i.c, ptr %1, ptr %2, ptr %i.e, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi3EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.h, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.i = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !28
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !28
  %i.l = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %.not12 = icmp sgt i32 %i.l, %i.k
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !85
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = sub i32 %i.k, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.s, i1 false), !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi3EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.62(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not24 = icmp sgt i64 %i.k, %i.j
  br i1 %.not24, label %._crit_edge, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph26, %_Z14getValueOfBitsxPii.exit
  %.025 = phi i64 [ %i.k, %.lr.ph26 ], [ %i.bn, %_Z14getValueOfBitsxPii.exit ] ; 3 uses
  %i.o = load i64, ptr %3, align 8, !tbaa !25
  %i.p = load i64, ptr %4, align 8, !tbaa !25
  %i.q = add nsw i64 %i.p, 1
  %i.r = mul nsw i64 %i.q, %.025
  %i.s = add nsw i64 %i.r, %i.o                   ; 2 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.u = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.s
  %i.v = load double, ptr %i.u, align 8, !tbaa !71
  %i.w = load i32, ptr %i.m, align 4, !tbaa !29
  %i.x = sext i32 %i.w to i64
  %i.y = load i64, ptr %i.n, align 8, !tbaa !30
  %i.z = and i64 %i.y, 4294967295
  %i.aa = shl i64 %i.x, %i.z
  %i.ab = or i64 %i.aa, %i.s                      ; 3 uses
  %i.ac = load ptr, ptr %6, align 8, !tbaa !49    ; 3 uses
  %i.ad = load i32, ptr %7, align 4, !tbaa !28    ; 4 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %_Z14getValueOfBitsxPii.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.af = icmp eq i32 %i.ad, 1
  br i1 %i.af, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.08.i22 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = lshr i64 %i.ab, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 1
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = shl nuw i32 %i.al, %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = or i64 %.08.i22, %i.ao
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !28
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = lshr i64 %i.ab, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 1
  %i.aw = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ax = shl nuw i32 %i.av, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = or i64 %i.ap, %i.ay                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !7

_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z14getValueOfBitsxPii.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ] ; 2 uses
  %.08.i22.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.az, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i32 %i.ad to i1
  call void @llvm.assume(i1 %lcmp.mod31)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.epil.init
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !28
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = lshr i64 %i.ab, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = and i32 %i.be, 1
  %i.bg = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.bh = shl nuw i32 %i.bf, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = or i64 %.08.i22.epil.init, %i.bi
  br label %_Z14getValueOfBitsxPii.exit

_Z14getValueOfBitsxPii.exit:                      ; preds = %.lr.ph.epil.preheader, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %bb.c
  %.08.i.lcssa = phi i64 [ 0, %bb.c ], [ %i.az, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ], [ %i.bj, %.lr.ph.epil.preheader ]
  %i.bk = load ptr, ptr %8, align 8, !tbaa !85
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %.08.i.lcssa
  %i.bm = atomicrmw fadd ptr %i.bl, double %i.v monotonic, align 8 ; 0 uses
  %i.bn = add nsw i64 %.025, 1
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !25
  %.not.not = icmp slt i64 %.025, %i.bo
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_Z14getValueOfBitsxPii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi4EEvPd5QuregSt6vectorIiSaIiEE(ptr noundef %0, ptr noundef byval(%struct.Qureg) align 8 %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 2 uses
  %i.h = alloca i32, align 4                      ; 2 uses
  %i.i = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = load ptr, ptr %2, align 8, !tbaa !49
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 2
  %i.q = trunc i64 %i.p to i32
  tail call void @_Z35assert_numTargsMatchesTemplateParamii(i32 noundef %i.q, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !83
  %i.t = and i64 %i.s, 4294967295
  %i.u = shl nuw i64 1, %i.t
  store i64 %i.u, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw i64 1, %i.x
  store i64 %i.y, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.z = tail call noundef i64 @_Z36util_getLocalIndexOfFirstDiagonalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  store i64 %i.z, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i32 4, ptr %i.e, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i64 16, ptr %i.f, align 8, !tbaa !25
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.i)
  store i32 %i.i, ptr %i.g, align 4, !tbaa !28
  call fastcc void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi4EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr nonnull %i.g, ptr %i.f, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.i)
  %i.aa = load i32, ptr %1, align 8, !tbaa !27
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi4EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.63, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.e, ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.i)
  store i32 %i.i, ptr %i.h, align 4, !tbaa !28
  call void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi4EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.63(ptr nonnull %i.h, ptr nonnull poison, ptr %i.b, ptr %i.d, ptr %i.c, ptr %1, ptr %2, ptr %i.e, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi4EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.h, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.i = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !28
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !28
  %i.l = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %.not12 = icmp sgt i32 %i.l, %i.k
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !85
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = sub i32 %i.k, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.s, i1 false), !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi4EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.63(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not24 = icmp sgt i64 %i.k, %i.j
  br i1 %.not24, label %._crit_edge, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph26, %_Z14getValueOfBitsxPii.exit
  %.025 = phi i64 [ %i.k, %.lr.ph26 ], [ %i.bn, %_Z14getValueOfBitsxPii.exit ] ; 3 uses
  %i.o = load i64, ptr %3, align 8, !tbaa !25
  %i.p = load i64, ptr %4, align 8, !tbaa !25
  %i.q = add nsw i64 %i.p, 1
  %i.r = mul nsw i64 %i.q, %.025
  %i.s = add nsw i64 %i.r, %i.o                   ; 2 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.u = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.s
  %i.v = load double, ptr %i.u, align 8, !tbaa !71
  %i.w = load i32, ptr %i.m, align 4, !tbaa !29
  %i.x = sext i32 %i.w to i64
  %i.y = load i64, ptr %i.n, align 8, !tbaa !30
  %i.z = and i64 %i.y, 4294967295
  %i.aa = shl i64 %i.x, %i.z
  %i.ab = or i64 %i.aa, %i.s                      ; 3 uses
  %i.ac = load ptr, ptr %6, align 8, !tbaa !49    ; 3 uses
  %i.ad = load i32, ptr %7, align 4, !tbaa !28    ; 4 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %_Z14getValueOfBitsxPii.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.af = icmp eq i32 %i.ad, 1
  br i1 %i.af, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.08.i22 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = lshr i64 %i.ab, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 1
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = shl nuw i32 %i.al, %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = or i64 %.08.i22, %i.ao
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !28
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = lshr i64 %i.ab, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 1
  %i.aw = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ax = shl nuw i32 %i.av, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = or i64 %i.ap, %i.ay                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !7

_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z14getValueOfBitsxPii.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ] ; 2 uses
  %.08.i22.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.az, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i32 %i.ad to i1
  call void @llvm.assume(i1 %lcmp.mod31)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.epil.init
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !28
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = lshr i64 %i.ab, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = and i32 %i.be, 1
  %i.bg = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.bh = shl nuw i32 %i.bf, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = or i64 %.08.i22.epil.init, %i.bi
  br label %_Z14getValueOfBitsxPii.exit

_Z14getValueOfBitsxPii.exit:                      ; preds = %.lr.ph.epil.preheader, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %bb.c
  %.08.i.lcssa = phi i64 [ 0, %bb.c ], [ %i.az, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ], [ %i.bj, %.lr.ph.epil.preheader ]
  %i.bk = load ptr, ptr %8, align 8, !tbaa !85
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %.08.i.lcssa
  %i.bm = atomicrmw fadd ptr %i.bl, double %i.v monotonic, align 8 ; 0 uses
  %i.bn = add nsw i64 %.025, 1
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !25
  %.not.not = icmp slt i64 %.025, %i.bo
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_Z14getValueOfBitsxPii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi5EEvPd5QuregSt6vectorIiSaIiEE(ptr noundef %0, ptr noundef byval(%struct.Qureg) align 8 %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 2 uses
  %i.h = alloca i32, align 4                      ; 2 uses
  %i.i = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = load ptr, ptr %2, align 8, !tbaa !49
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 2
  %i.q = trunc i64 %i.p to i32
  tail call void @_Z35assert_numTargsMatchesTemplateParamii(i32 noundef %i.q, i32 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !83
  %i.t = and i64 %i.s, 4294967295
  %i.u = shl nuw i64 1, %i.t
  store i64 %i.u, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw i64 1, %i.x
  store i64 %i.y, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.z = tail call noundef i64 @_Z36util_getLocalIndexOfFirstDiagonalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  store i64 %i.z, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i32 5, ptr %i.e, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i64 32, ptr %i.f, align 8, !tbaa !25
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.i)
  store i32 %i.i, ptr %i.g, align 4, !tbaa !28
  call fastcc void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi5EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr nonnull %i.g, ptr %i.f, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.i)
  %i.aa = load i32, ptr %1, align 8, !tbaa !27
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi5EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.64, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.e, ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.i)
  store i32 %i.i, ptr %i.h, align 4, !tbaa !28
  call void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi5EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.64(ptr nonnull %i.h, ptr nonnull poison, ptr %i.b, ptr %i.d, ptr %i.c, ptr %1, ptr %2, ptr %i.e, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi5EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.h, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.i = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !28
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !28
  %i.l = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %.not12 = icmp sgt i32 %i.l, %i.k
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !85
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = sub i32 %i.k, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.s, i1 false), !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILi5EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.64(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not24 = icmp sgt i64 %i.k, %i.j
  br i1 %.not24, label %._crit_edge, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph26, %_Z14getValueOfBitsxPii.exit
  %.025 = phi i64 [ %i.k, %.lr.ph26 ], [ %i.bn, %_Z14getValueOfBitsxPii.exit ] ; 3 uses
  %i.o = load i64, ptr %3, align 8, !tbaa !25
  %i.p = load i64, ptr %4, align 8, !tbaa !25
  %i.q = add nsw i64 %i.p, 1
  %i.r = mul nsw i64 %i.q, %.025
  %i.s = add nsw i64 %i.r, %i.o                   ; 2 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.u = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.s
  %i.v = load double, ptr %i.u, align 8, !tbaa !71
  %i.w = load i32, ptr %i.m, align 4, !tbaa !29
  %i.x = sext i32 %i.w to i64
  %i.y = load i64, ptr %i.n, align 8, !tbaa !30
  %i.z = and i64 %i.y, 4294967295
  %i.aa = shl i64 %i.x, %i.z
  %i.ab = or i64 %i.aa, %i.s                      ; 3 uses
  %i.ac = load ptr, ptr %6, align 8, !tbaa !49    ; 3 uses
  %i.ad = load i32, ptr %7, align 4, !tbaa !28    ; 4 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %_Z14getValueOfBitsxPii.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.af = icmp eq i32 %i.ad, 1
  br i1 %i.af, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.08.i22 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = lshr i64 %i.ab, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 1
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = shl nuw i32 %i.al, %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = or i64 %.08.i22, %i.ao
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !28
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = lshr i64 %i.ab, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 1
  %i.aw = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ax = shl nuw i32 %i.av, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = or i64 %i.ap, %i.ay                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !7

_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z14getValueOfBitsxPii.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ] ; 2 uses
  %.08.i22.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.az, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i32 %i.ad to i1
  call void @llvm.assume(i1 %lcmp.mod31)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.epil.init
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !28
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = lshr i64 %i.ab, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = and i32 %i.be, 1
  %i.bg = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.bh = shl nuw i32 %i.bf, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = or i64 %.08.i22.epil.init, %i.bi
  br label %_Z14getValueOfBitsxPii.exit

_Z14getValueOfBitsxPii.exit:                      ; preds = %.lr.ph.epil.preheader, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %bb.c
  %.08.i.lcssa = phi i64 [ 0, %bb.c ], [ %i.az, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ], [ %i.bj, %.lr.ph.epil.preheader ]
  %i.bk = load ptr, ptr %8, align 8, !tbaa !85
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %.08.i.lcssa
  %i.bm = atomicrmw fadd ptr %i.bl, double %i.v monotonic, align 8 ; 0 uses
  %i.bn = add nsw i64 %.025, 1
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !25
  %.not.not = icmp slt i64 %.025, %i.bo
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_Z14getValueOfBitsxPii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILin1EEvPd5QuregSt6vectorIiSaIiEE(ptr noundef %0, ptr noundef byval(%struct.Qureg) align 8 %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 2 uses
  %i.h = alloca i32, align 4                      ; 2 uses
  %i.i = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = load ptr, ptr %2, align 8, !tbaa !49
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 2
  %i.q = trunc i64 %i.p to i32
  tail call void @_Z35assert_numTargsMatchesTemplateParamii(i32 noundef %i.q, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !83
  %i.t = and i64 %i.s, 4294967295
  %i.u = shl nuw i64 1, %i.t
  store i64 %i.u, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw i64 1, %i.x
  store i64 %i.y, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.z = tail call noundef i64 @_Z36util_getLocalIndexOfFirstDiagonalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  store i64 %i.z, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.ab = load ptr, ptr %2, align 8, !tbaa !49
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 2                 ; 2 uses
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  store i32 %i.ag, ptr %i.e, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %i.ah = and i64 %i.af, 4294967295
  %i.ai = shl nuw i64 1, %i.ah
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !25
  %i.aj = icmp sgt i32 %i.ag, 8
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILin1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined, ptr nonnull %i.f, ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.i)
  store i32 %i.i, ptr %i.g, align 4, !tbaa !28
  call void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILin1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr nonnull %i.g, ptr nonnull poison, ptr %i.f, ptr %i.a) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ak = load i32, ptr %1, align 8, !tbaa !27
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILin1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.65, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.e, ptr nonnull %i.a)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.i)
  store i32 %i.i, ptr %i.h, align 4, !tbaa !28
  call void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILin1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.65(ptr nonnull %i.h, ptr nonnull poison, ptr %i.b, ptr %i.d, ptr %i.c, ptr %1, ptr %2, ptr %i.e, ptr %i.a) #5
  call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.i)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILin1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i32
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.h, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.i = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !28
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !28
  %i.l = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %.not12 = icmp sgt i32 %i.l, %i.k
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %3, align 8, !tbaa !85
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = sub i32 %i.k, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.s, i1 false), !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z49cpu_densmatr_calcProbsOfAllMultiQubitOutcomes_subILin1EEvPd5QuregSt6vectorIiSaIiEE.omp_outlined.65(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not24 = icmp sgt i64 %i.k, %i.j
  br i1 %.not24, label %._crit_edge, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph26, %_Z14getValueOfBitsxPii.exit
  %.025 = phi i64 [ %i.k, %.lr.ph26 ], [ %i.bn, %_Z14getValueOfBitsxPii.exit ] ; 3 uses
  %i.o = load i64, ptr %3, align 8, !tbaa !25
  %i.p = load i64, ptr %4, align 8, !tbaa !25
  %i.q = add nsw i64 %i.p, 1
  %i.r = mul nsw i64 %i.q, %.025
  %i.s = add nsw i64 %i.r, %i.o                   ; 2 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.u = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.s
  %i.v = load double, ptr %i.u, align 8, !tbaa !71
  %i.w = load i32, ptr %i.m, align 4, !tbaa !29
  %i.x = sext i32 %i.w to i64
  %i.y = load i64, ptr %i.n, align 8, !tbaa !30
  %i.z = and i64 %i.y, 4294967295
  %i.aa = shl i64 %i.x, %i.z
  %i.ab = or i64 %i.aa, %i.s                      ; 3 uses
  %i.ac = load ptr, ptr %6, align 8, !tbaa !49    ; 3 uses
  %i.ad = load i32, ptr %7, align 4, !tbaa !28    ; 4 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %_Z14getValueOfBitsxPii.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.af = icmp eq i32 %i.ad, 1
  br i1 %i.af, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.08.i22 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = lshr i64 %i.ab, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 1
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = shl nuw i32 %i.al, %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = or i64 %.08.i22, %i.ao
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !28
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = lshr i64 %i.ab, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 1
  %i.aw = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ax = shl nuw i32 %i.av, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = or i64 %i.ap, %i.ay                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !7

_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z14getValueOfBitsxPii.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ] ; 2 uses
  %.08.i22.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.az, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i32 %i.ad to i1
  call void @llvm.assume(i1 %lcmp.mod31)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.epil.init
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !28
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = lshr i64 %i.ab, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = and i32 %i.be, 1
  %i.bg = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.bh = shl nuw i32 %i.bf, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = or i64 %.08.i22.epil.init, %i.bi
  br label %_Z14getValueOfBitsxPii.exit

_Z14getValueOfBitsxPii.exit:                      ; preds = %.lr.ph.epil.preheader, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa, %bb.c
  %.08.i.lcssa = phi i64 [ 0, %bb.c ], [ %i.az, %_Z14getValueOfBitsxPii.exit.loopexit.unr-lcssa ], [ %i.bj, %.lr.ph.epil.preheader ]
  %i.bk = load ptr, ptr %8, align 8, !tbaa !85
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %.08.i.lcssa
  %i.bm = atomicrmw fadd ptr %i.bl, double %i.v monotonic, align 8 ; 0 uses
  %i.bn = add nsw i64 %.025, 1
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !25
  %.not.not = icmp slt i64 %.025, %i.bo
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_Z14getValueOfBitsxPii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define { double, double } @_Z33cpu_statevec_calcInnerProduct_sub5QuregS_(ptr noundef byval(%struct.Qureg) align 8 %0, ptr noundef byval(%struct.Qureg) align 8 %1) local_unnamed_addr #15 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 2 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24
  store i64 %i.g, ptr %i.c, align 8, !tbaa !25
  %i.h = load i32, ptr %0, align 8, !tbaa !27
  %i.i = icmp ne i32 %i.h, 0
  %i.j = load i32, ptr %1, align 8
  %i.k = icmp ne i32 %i.j, 0
  %or.cond = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_Z33cpu_statevec_calcInnerProduct_sub5QuregS_.omp_outlined, ptr nonnull %i.c, ptr nonnull %0, ptr nonnull %1, ptr nonnull %i.a, ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.e)
  store i32 %i.e, ptr %i.d, align 4, !tbaa !28
  call void @_Z33cpu_statevec_calcInnerProduct_sub5QuregS_.omp_outlined(ptr nonnull %i.d, ptr nonnull poison, ptr %i.c, ptr %0, ptr %1, ptr %i.a, ptr %i.b) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load double, ptr %i.a, align 8, !tbaa !71
  %i.m = load double, ptr %i.b, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %.fca.0.insert = insertvalue { double, double } poison, double %i.l, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.m, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: noinline norecurse nounwind uwtable
end_hunk_0
