Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/KllSketch?download=true
inline.NumInlined: 14
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array" = type { [60 x double] }

@_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo = internal global %"struct.std::array" zeroinitializer, align 8
@_ZGVZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo = internal global i64 0, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef i32 @_ZN8facebook5velox9functions3kll12kFromEpsilonEd(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = fdiv double 2.296000e+00, %0
  %i.b = tail call double @log(double noundef %i.a) #10
  %i.c = fmul double %i.b, 1.028500e+00
  %i.d = tail call double @exp(double noundef %i.c) #10
  %i.e = tail call double @llvm.ceil.f64(double %i.d)
  %i.f = fptoui double %i.e to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #2

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN8facebook5velox9functions3kll6detail20computeTotalCapacityEjh(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = zext i8 %1 to i64                        ; 2 uses
  %i.b = uitofp i32 %0 to double
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN8facebook5velox9functions3kll6detail13levelCapacityEjhh.exit, %bb.a
  %.08.lcssa = phi i32 [ 0, %bb.a ], [ %i.ae, %_ZN8facebook5velox9functions3kll6detail13levelCapacityEjhh.exit ]
  ret i32 %.08.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN8facebook5velox9functions3kll6detail13levelCapacityEjhh.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox9functions3kll6detail13levelCapacityEjhh.exit ] ; 2 uses
  %.089 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %_ZN8facebook5velox9functions3kll6detail13levelCapacityEjhh.exit ]
  %i.c = load atomic i8, ptr @_ZGVZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN8facebook5velox9functions3kll6detail13levelCapacityEjhh.exit, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo) #10
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN8facebook5velox9functions3kll6detail13levelCapacityEjhh.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.4, %.preheader.i.i ], [ 0, %bb.c ] ; 7 uses
  %i.f = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.g = uitofp nneg i32 %i.f to double
  %i.h = tail call double @pow(double noundef f0x3FE5555555555555, double noundef %i.g) #10
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo, i64 %indvars.iv.i.i.i
  store double %i.h, ptr %i.i, align 8, !tbaa !9
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.j = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  %i.k = uitofp nneg i32 %i.j to double
  %i.l = tail call double @pow(double noundef f0x3FE5555555555555, double noundef %i.k) #10
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo, i64 %indvars.iv.next.i.i.i
  store double %i.l, ptr %i.m, align 8, !tbaa !9
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.n = trunc nuw nsw i64 %indvars.iv.next.i.i.i.1 to i32
  %i.o = uitofp nneg i32 %i.n to double
  %i.p = tail call double @pow(double noundef f0x3FE5555555555555, double noundef %i.o) #10
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo, i64 %indvars.iv.next.i.i.i.1
  store double %i.p, ptr %i.q, align 8, !tbaa !9
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.r = trunc nuw nsw i64 %indvars.iv.next.i.i.i.2 to i32
  %i.s = uitofp nneg i32 %i.r to double
  %i.t = tail call double @pow(double noundef f0x3FE5555555555555, double noundef %i.s) #10
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo, i64 %indvars.iv.next.i.i.i.2
  store double %i.t, ptr %i.u, align 8, !tbaa !9
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.v = trunc nuw nsw i64 %indvars.iv.next.i.i.i.3 to i32
  %i.w = uitofp nneg i32 %i.v to double
  %i.x = tail call double @pow(double noundef f0x3FE5555555555555, double noundef %i.w) #10
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo, i64 %indvars.iv.next.i.i.i.3
  store double %i.x, ptr %i.y, align 8, !tbaa !9
  %indvars.iv.next.i.i.i.4 = add nuw nsw i64 %indvars.iv.i.i.i, 5 ; 2 uses
  %exitcond.not.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.4, 60
  br i1 %exitcond.not.i.i.i.4, label %"_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiENK3$_0clEv.exit.i.i", label %.preheader.i.i, !llvm.loop !11

"_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiENK3$_0clEv.exit.i.i": ; preds = %.preheader.i.i
  %i.z = tail call ptr @llvm.invariant.start.p0(i64 480, ptr nonnull @_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo) #10
  br label %_ZN8facebook5velox9functions3kll6detail13levelCapacityEjhh.exit

_ZN8facebook5velox9functions3kll6detail13levelCapacityEjhh.exit: ; preds = %bb.b, %bb.c, %"_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiENK3$_0clEv.exit.i.i"
  %i.aa = xor i64 %indvars.iv, -1
  %2 = add nsw i64 %i.aa, %i.a
  %3 = and i64 %2, 4294967295
  %gep = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo, i64 %3
  %i.ab = load double, ptr %gep, align 8, !tbaa !9
  %i.ac = fmul double %i.ab, %i.b
  %i.ad = fptoui double %i.ac to i32
  %.sroa.speculated.i = tail call noundef range(i32 8, 0) i32 @llvm.umax.i32(i32 %i.ad, i32 8)
  %i.ae = add i32 %.sroa.speculated.i, %.089      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !13
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 8, 0) i32 @_ZN8facebook5velox9functions3kll6detail13levelCapacityEjhh(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEi.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo) #10
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEi.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.4, %.preheader.i ], [ 0, %bb.b ] ; 7 uses
  %i.d = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.e = uitofp nneg i32 %i.d to double
  %i.f = tail call double @pow(double noundef f0x3FE5555555555555, double noundef %i.e) #10
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo, i64 %indvars.iv.i.i
  store double %i.f, ptr %i.g, align 8, !tbaa !9
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.h = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.i = uitofp nneg i32 %i.h to double
  %i.j = tail call double @pow(double noundef f0x3FE5555555555555, double noundef %i.i) #10
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo, i64 %indvars.iv.next.i.i
  store double %i.j, ptr %i.k, align 8, !tbaa !9
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.l = trunc nuw nsw i64 %indvars.iv.next.i.i.1 to i32
  %i.m = uitofp nneg i32 %i.l to double
  %i.n = tail call double @pow(double noundef f0x3FE5555555555555, double noundef %i.m) #10
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo, i64 %indvars.iv.next.i.i.1
  store double %i.n, ptr %i.o, align 8, !tbaa !9
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.p = trunc nuw nsw i64 %indvars.iv.next.i.i.2 to i32
  %i.q = uitofp nneg i32 %i.p to double
  %i.r = tail call double @pow(double noundef f0x3FE5555555555555, double noundef %i.q) #10
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo, i64 %indvars.iv.next.i.i.2
  store double %i.r, ptr %i.s, align 8, !tbaa !9
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.t = trunc nuw nsw i64 %indvars.iv.next.i.i.3 to i32
  %i.u = uitofp nneg i32 %i.t to double
  %i.v = tail call double @pow(double noundef f0x3FE5555555555555, double noundef %i.u) #10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo, i64 %indvars.iv.next.i.i.3
  store double %i.v, ptr %i.w, align 8, !tbaa !9
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %exitcond.not.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.4, 60
  br i1 %exitcond.not.i.i.4, label %"_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiENK3$_0clEv.exit.i", label %.preheader.i, !llvm.loop !11

"_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiENK3$_0clEv.exit.i": ; preds = %.preheader.i
  %i.x = tail call ptr @llvm.invariant.start.p0(i64 480, ptr nonnull @_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo) #10
  br label %_ZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEi.exit

_ZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEi.exit: ; preds = %bb.a, %bb.b, %"_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiENK3$_0clEv.exit.i"
  %i.y = zext i8 %2 to i64
  %i.z = xor i64 %i.y, -1
  %i.aa = zext i8 %1 to i64
  %3 = add nsw i64 %i.z, %i.aa
  %i.ab = uitofp i32 %0 to double
  %4 = and i64 %3, 4294967295
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZZN8facebook5velox9functions3kll6detail12_GLOBAL__N_116powerOfTwoThirdsEiE5kMemo, i64 %4
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !9
  %i.ae = fmul double %i.ad, %i.ab
  %i.af = fptoui double %i.ae to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.af, i32 8)
  ret i32 %.sroa.speculated
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i8 @_ZN8facebook5velox9functions3kll6detail9floorLog2Emm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.05 = phi i64 [ %1, %bb.a ], [ %i.a, %bb.b ]
  %.0 = phi i8 [ 0, %bb.a ], [ %i.c, %bb.b ]      ; 2 uses
  %i.a = shl i64 %.05, 1                          ; 2 uses
  %i.b = icmp ult i64 %0, %i.a
  %i.c = add i8 %.0, 1
  br i1 %i.b, label %bb.c, label %bb.b, !llvm.loop !14

bb.c:                                             ; preds = %bb.b
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN8facebook5velox9functions3kll6detail16sumSampleWeightsEhPKj(i8 noundef zeroext %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i8 %0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i8 %0 to i64            ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.a = icmp eq i8 %0, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01014.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ]
  %.01113.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod18 = trunc i8 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %i.e = load i32, ptr %i.b, align 4, !tbaa !15
  %i.f = sub i32 %i.d, %i.e
  %i.g = zext i32 %i.f to i64
  %i.h = mul i64 %.01014.epil.init, %i.g
  %i.i = add i64 %i.h, %.01113.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.011.lcssa = phi i64 [ 0, %bb.a ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.epil.preheader ]
  ret i64 %.011.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.01014 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ] ; 3 uses
  %.01113 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.y, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !15   ; 2 uses
  %i.m = load i32, ptr %i.j, align 4, !tbaa !15
  %i.n = sub i32 %i.l, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = mul i64 %.01014, %i.o
  %i.q = add i64 %i.p, %.01113
  %i.r = shl i64 %.01014, 1
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !15
  %i.v = sub i32 %i.u, %i.l
  %i.w = zext i32 %i.v to i64
  %i.x = mul i64 %i.r, %i.w
  %i.y = add i64 %i.x, %i.q                       ; 3 uses
  %i.z = shl i64 %.01014, 2                       ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !16
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #6 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #6 align 2

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #8

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"branch_weights", i32 1, i32 1048575}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = !{!5, !5, i64 0}
!16 = distinct !{!16, !12}
end_hunk_0
