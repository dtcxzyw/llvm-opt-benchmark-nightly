Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/timer?download=true
inline.NumInlined: 358
inline.NumDeleted: 185
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3hwy8platform12GetCpuStringEPc:bb.a
  %i.q = extractvalue { i32, i32, i32, i32 } %i.o, 1
  %i.r = extractvalue { i32, i32, i32, i32 } %i.o, 2
  %i.s = extractvalue { i32, i32, i32, i32 } %i.o, 3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.p, ptr %i.t, align 1, !alias.scope !25
  %.sroa.6.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.q, ptr %.sroa.6.0..sroa_idx.2, align 1, !alias.scope !25
  %.sroa.8.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.r, ptr %.sroa.8.0..sroa_idx.2, align 1, !alias.scope !25
  %.sroa.10.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.s, ptr %.sroa.10.0..sroa_idx.2, align 1, !alias.scope !25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.u, align 1, !tbaa !10
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 1, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %.preheader.preheader, %bb.b
  ret i1 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef double @_ZN3hwy8platform3NowEv() local_unnamed_addr #2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN3hwy8platform3NowEvE3mul acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3hwy8platform3NowEvE3mul) #17
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef double @_ZN3hwy8platform23InvariantTicksPerSecondEv()
  %i.e = fdiv double 1.000000e+00, %i.d
  store double %i.e, ptr @_ZZN3hwy8platform3NowEvE3mul, align 8, !tbaa !13
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN3hwy8platform3NowEvE3mul) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3hwy8platform3NowEvE3mul) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = tail call noundef i64 asm sideeffect "lfence\0A\09rdtsc\0A\09shl $$32, %rdx\0A\09or %rdx, $0\0A\09lfence", "={ax},~{rdx},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !14
  %i.h = uitofp i64 %i.g to double
  %i.i = load double, ptr @_ZZN3hwy8platform3NowEvE3mul, align 8, !tbaa !13
  %i.j = fmul double %i.i, %i.h
  ret double %i.j
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef double @_ZN3hwy8platform23InvariantTicksPerSecondEv() local_unnamed_addr #2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN3hwy8platform23InvariantTicksPerSecondEvE4freq acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3hwy8platform23InvariantTicksPerSecondEvE4freq) #17
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc noundef double @_ZN3hwy8platform12_GLOBAL__N_123MeasureNominalClockRateEv()
  store double %i.d, ptr @_ZZN3hwy8platform23InvariantTicksPerSecondEvE4freq, align 8, !tbaa !13
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN3hwy8platform23InvariantTicksPerSecondEvE4freq) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3hwy8platform23InvariantTicksPerSecondEvE4freq) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = load double, ptr @_ZZN3hwy8platform23InvariantTicksPerSecondEvE4freq, align 8, !tbaa !13
  ret double %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind memory(argmem: write) uwtable
define hidden noundef zeroext i1 @_ZN3hwy8platform13HaveTimerStopEPc(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 -2147483647, i32 0) #16, !srcloc !9
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 3
  %i.c = and i32 %i.b, 134217728
  %i.d = icmp ne i32 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 -2147483648, i32 0) #16, !srcloc !9
  %i.f = extractvalue { i32, i32, i32, i32 } %i.e, 0
  %i.g = icmp ugt i32 %i.f, -2147483645
  br i1 %i.g, label %.preheader.preheader.i, label %bb.c

.preheader.preheader.i:                           ; preds = %bb.b
  %i.h = tail call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -2147483648, -2147483643) -2147483646, i32 0) #16, !srcloc !9 ; 4 uses
  %i.i = extractvalue { i32, i32, i32, i32 } %i.h, 0
  %i.j = extractvalue { i32, i32, i32, i32 } %i.h, 1
  %i.k = extractvalue { i32, i32, i32, i32 } %i.h, 2
  %i.l = extractvalue { i32, i32, i32, i32 } %i.h, 3
  store i32 %i.i, ptr %0, align 1, !alias.scope !29
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.j, ptr %.sroa.6.0..sroa_idx.i, align 1, !alias.scope !29
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.k, ptr %.sroa.8.0..sroa_idx.i, align 1, !alias.scope !29
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.l, ptr %.sroa.10.0..sroa_idx.i, align 1, !alias.scope !29
  %i.m = tail call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -2147483648, -2147483643) -2147483645, i32 0) #16, !srcloc !9 ; 4 uses
  %i.n = extractvalue { i32, i32, i32, i32 } %i.m, 0
  %i.o = extractvalue { i32, i32, i32, i32 } %i.m, 1
  %i.p = extractvalue { i32, i32, i32, i32 } %i.m, 2
  %i.q = extractvalue { i32, i32, i32, i32 } %i.m, 3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.n, ptr %i.r, align 1, !alias.scope !29
  %.sroa.6.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.o, ptr %.sroa.6.0..sroa_idx.1.i, align 1, !alias.scope !29
  %.sroa.8.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.p, ptr %.sroa.8.0..sroa_idx.1.i, align 1, !alias.scope !29
  %.sroa.10.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.q, ptr %.sroa.10.0..sroa_idx.1.i, align 1, !alias.scope !29
  %i.s = tail call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -2147483648, -2147483643) -2147483644, i32 0) #16, !srcloc !9 ; 4 uses
  %i.t = extractvalue { i32, i32, i32, i32 } %i.s, 0
  %i.u = extractvalue { i32, i32, i32, i32 } %i.s, 1
  %i.v = extractvalue { i32, i32, i32, i32 } %i.s, 2
  %i.w = extractvalue { i32, i32, i32, i32 } %i.s, 3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.t, ptr %i.x, align 1, !alias.scope !29
  %.sroa.6.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.u, ptr %.sroa.6.0..sroa_idx.2.i, align 1, !alias.scope !29
  %.sroa.8.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.v, ptr %.sroa.8.0..sroa_idx.2.i, align 1, !alias.scope !29
  %.sroa.10.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.w, ptr %.sroa.10.0..sroa_idx.2.i, align 1, !alias.scope !29
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.y, align 1, !tbaa !10
  br label %_ZN3hwy8platform12GetCpuStringEPc.exit

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %0, align 1, !tbaa !10
  br label %_ZN3hwy8platform12GetCpuStringEPc.exit

bb.d:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 1, !tbaa !10
  br label %_ZN3hwy8platform12GetCpuStringEPc.exit

_ZN3hwy8platform12GetCpuStringEPc.exit:           ; preds = %bb.c, %.preheader.preheader.i, %bb.d
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef double @_ZN3hwy8platform12_GLOBAL__N_123MeasureNominalClockRateEv() unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #17 ; 2 uses
  %i.b = tail call noundef i64 asm sideeffect "lfence\0A\09rdtsc\0A\09shl $$32, %rdx\0A\09or %rdx, $0\0A\09lfence", "={ax},~{rdx},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !14
  %i.c = add nsw i64 %i.a, 10000000
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #17 ; 2 uses
  %i.e = tail call noundef i64 asm sideeffect "lfence\0A\09rdtsc\0A\09shl $$32, %rdx\0A\09or %rdx, $0\0A\09lfence", "={ax},~{rdx},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !14
  %.not = icmp slt i64 %i.d, %i.c
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !30

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #17 ; 2 uses
  %i.g = tail call noundef i64 asm sideeffect "lfence\0A\09rdtsc\0A\09shl $$32, %rdx\0A\09or %rdx, $0\0A\09lfence", "={ax},~{rdx},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !14
  %i.h = add nsw i64 %i.f, 10000000
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.i = tail call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #17 ; 2 uses
  %i.j = tail call noundef i64 asm sideeffect "lfence\0A\09rdtsc\0A\09shl $$32, %rdx\0A\09or %rdx, $0\0A\09lfence", "={ax},~{rdx},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !14
  %.not.1 = icmp slt i64 %i.i, %i.h
  br i1 %.not.1, label %bb.d, label %bb.e, !llvm.loop !30

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #17 ; 2 uses
  %i.l = tail call noundef i64 asm sideeffect "lfence\0A\09rdtsc\0A\09shl $$32, %rdx\0A\09or %rdx, $0\0A\09lfence", "={ax},~{rdx},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !14
  %i.m = add nsw i64 %i.k, 10000000
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.n = tail call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #17 ; 2 uses
  %i.o = tail call noundef i64 asm sideeffect "lfence\0A\09rdtsc\0A\09shl $$32, %rdx\0A\09or %rdx, $0\0A\09lfence", "={ax},~{rdx},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !14
  %.not.2 = icmp slt i64 %i.n, %i.m
  br i1 %.not.2, label %bb.f, label %bb.g, !llvm.loop !30

bb.g:                                             ; preds = %bb.f
  %i.p = sub i64 %i.e, %i.b
  %0 = uitofp i64 %i.p to double
  %i.q = sub nsw i64 %i.d, %i.a
  %i.r = sub i64 %i.j, %i.g
  %i.s = sub nsw i64 %i.i, %i.f
  %i.t = sitofp i64 %i.q to double
  %i.u = sitofp i64 %i.s to double
  %i.v = insertelement <2 x double> poison, double %i.t, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.u, i64 1
  %i.x = fdiv <2 x double> %i.w, splat (double 1.000000e+09) ; 2 uses
  %1 = extractelement <2 x double> %i.x, i64 0
  %2 = fdiv double %0, %1                         ; 2 uses
  %3 = fcmp olt double %2, 0.000000e+00
  %4 = select i1 %3, double 0.000000e+00, double %2 ; 2 uses
  %5 = sub i64 %i.o, %i.l
  %6 = uitofp i64 %5 to double
  %7 = sub nsw i64 %i.n, %i.k
  %8 = uitofp i64 %i.r to double
  %9 = sitofp i64 %7 to double
  %10 = insertelement <2 x double> poison, double %8, i64 0
  %11 = insertelement <2 x double> %10, double %9, i64 1
  %12 = shufflevector <2 x double> %i.x, <2 x double> <double poison, double 1.000000e+09>, <2 x i32> <i32 1, i32 3>
  %13 = fdiv <2 x double> %11, %12                ; 2 uses
  %14 = extractelement <2 x double> %13, i64 0    ; 2 uses
  %15 = fcmp ogt double %4, %14
  %16 = select i1 %15, double %4, double %14      ; 2 uses
  %17 = extractelement <2 x double> %13, i64 1
  %i.y = fdiv double %6, %17                      ; 2 uses
  %i.z = fcmp ogt double %16, %i.y
  %i.aa = select i1 %i.z, double %16, double %i.y
  ret double %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN3hwy8platform15TimerResolutionEv() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i64], align 16             ; 6 uses
  %i.b = alloca [256 x i64], align 16             ; 8 uses
  %i.c = tail call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 -2147483647, i32 0) #16, !srcloc !9
  %i.d = extractvalue { i32, i32, i32, i32 } %i.c, 3
  %i.e = and i32 %i.d, 134217728
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %_ZN3hwy8platform13HaveTimerStopEPc.exit.split

bb.b:                                             ; preds = %bb.a
  %i.f = tail call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 -2147483648, i32 0) #16, !srcloc !9
  %i.g = extractvalue { i32, i32, i32, i32 } %i.f, 0
  %i.h = icmp ugt i32 %i.g, -2147483645
  br i1 %i.h, label %.preheader.preheader.i.i, label %.preheader.us.preheader

.preheader.preheader.i.i:                         ; preds = %bb.b
  %i.i = tail call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -2147483648, -2147483643) -2147483646, i32 0) #16, !srcloc !9 ; 0 uses
  %i.j = tail call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -2147483648, -2147483643) -2147483645, i32 0) #16, !srcloc !9 ; 0 uses
  %i.k = tail call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -2147483648, -2147483643) -2147483644, i32 0) #16, !srcloc !9 ; 0 uses
  br label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.preheader.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.loopexit.us
  %.01423.us = phi i64 [ %i.s, %.loopexit.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.c
  %.022.us = phi i64 [ 0, %.preheader.us ], [ %i.p, %bb.c ] ; 2 uses
  %i.l = call noundef i64 asm sideeffect "lfence\0A\09rdtsc\0A\09shl $$32, %rdx\0A\09or %rdx, $0\0A\09lfence", "={ax},~{rdx},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !14
  %i.m = call noundef i64 asm sideeffect "lfence\0A\09rdtsc\0A\09shl $$32, %rdx\0A\09or %rdx, $0\0A\09lfence", "={ax},~{rdx},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !14
  %i.n = sub i64 %i.m, %i.l
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.022.us
  store i64 %i.n, ptr %i.o, align 8, !tbaa !17
  %i.p = add nuw nsw i64 %.022.us, 1              ; 2 uses
  %exitcond26.not = icmp eq i64 %i.p, 256
  br i1 %exitcond26.not, label %.loopexit.us, label %bb.c, !llvm.loop !31

.loopexit.us:                                     ; preds = %bb.c
  %i.q = call noundef i64 @_ZN3hwy17robust_statistics4ModeImLm256EEET_RAT0__S2_(ptr noundef nonnull align 8 dereferenceable(2048) %i.b)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01423.us
  store i64 %i.q, ptr %i.r, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.s = add nuw nsw i64 %.01423.us, 1            ; 2 uses
  %exitcond27.not = icmp eq i64 %i.s, 256
  br i1 %exitcond27.not, label %.split.us, label %.preheader.us, !llvm.loop !32

_ZN3hwy8platform13HaveTimerStopEPc.exit.split:    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  br label %.preheader19

.split.us:                                        ; preds = %.loopexit20, %.loopexit.us
  %i.t = call noundef i64 @_ZN3hwy17robust_statistics4ModeImLm256EEET_RAT0__S2_(ptr noundef nonnull align 8 dereferenceable(2048) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %i.t

.preheader19:                                     ; preds = %_ZN3hwy8platform13HaveTimerStopEPc.exit.split, %.loopexit20
  %.01423 = phi i64 [ 0, %_ZN3hwy8platform13HaveTimerStopEPc.exit.split ], [ %i.ab, %.loopexit20 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br label %bb.d

bb.d:                                             ; preds = %.preheader19, %bb.d
  %.01521 = phi i64 [ 0, %.preheader19 ], [ %i.y, %bb.d ] ; 2 uses
  %i.u = call noundef i64 asm sideeffect "lfence\0A\09rdtsc\0A\09shl $$32, %rdx\0A\09or %rdx, $0\0A\09lfence", "={ax},~{rdx},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !14
  %i.v = call noundef i64 asm sideeffect "rdtscp\0A\09shl $$32, %rdx\0A\09or %rdx, $0\0A\09lfence", "={ax},~{rcx},~{rdx},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !34
  %i.w = sub i64 %i.v, %i.u
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.01521
  store i64 %i.w, ptr %i.x, align 8, !tbaa !17
  %i.y = add nuw nsw i64 %.01521, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, 256
  br i1 %exitcond.not, label %.loopexit20, label %bb.d, !llvm.loop !33

.loopexit20:                                      ; preds = %bb.d
  %i.z = call noundef i64 @_ZN3hwy17robust_statistics4ModeImLm256EEET_RAT0__S2_(ptr noundef nonnull align 8 dereferenceable(2048) %i.b)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01423
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.ab = add nuw nsw i64 %.01423, 1              ; 2 uses
  %exitcond25.not = icmp eq i64 %i.ab, 256
  br i1 %exitcond25.not, label %.split.us, label %.preheader19, !llvm.loop !32
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN3hwy17robust_statistics4ModeImLm256EEET_RAT0__S2_(ptr noundef nonnull align 8 dereferenceable(2048) %0) local_unnamed_addr #2 comdat {
.lr.ph.i.i.i.preheader:
  tail call void @_ZN3hwy17robust_statistics12CountingSortImEEvPT_m(ptr noundef nonnull %0, i64 noundef 256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i.preheader
  %.029.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.n, %bb.a ] ; 4 uses
  %.01928.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %spec.select25.i.i.i.1100, %bb.a ]
  %.02027.i.i.i = phi i64 [ -1, %.lr.ph.i.i.i.preheader ], [ %spec.select.i.i.i.199, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.029.i.i.i ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17, !alias.scope !48 ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 1024
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17, !alias.scope !48 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.b, %i.d
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.198

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.198, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.1.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.2.1, %.lr.ph.i.i.i.preheader.6, %.lr.ph.i.i.i.6.1, %.lr.ph.i.i.i.preheader.5, %.lr.ph.i.i.i.5.1, %.lr.ph.i.i.i.5.2, %.lr.ph.i.i.i.5.3, %.lr.ph.i.i.i.preheader.4, %.lr.ph.i.i.i.4.1, %.lr.ph.i.i.i.4.2, %.lr.ph.i.i.i.4.3, %.lr.ph.i.i.i.4.4, %.lr.ph.i.i.i.4.5, %.lr.ph.i.i.i.4.6, %.lr.ph.i.i.i.4.7, %.lr.ph.i.i.i.preheader.3, %.lr.ph.i.i.i.3.1, %.lr.ph.i.i.i.3.2, %.lr.ph.i.i.i.3.3, %.lr.ph.i.i.i.3.4, %.lr.ph.i.i.i.3.5, %.lr.ph.i.i.i.3.6, %.lr.ph.i.i.i.3.7, %.lr.ph.i.i.i.3.8, %.lr.ph.i.i.i.3.9, %.lr.ph.i.i.i.3.10, %.lr.ph.i.i.i.3.11, %.lr.ph.i.i.i.3.12, %.lr.ph.i.i.i.3.13, %.lr.ph.i.i.i.3.14, %.lr.ph.i.i.i.3.15
  tail call void (ptr, i32, ptr, ...) @_ZN3hwy5AbortEPKciS1_z(ptr noundef nonnull @.str, i32 noundef 69, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #18, !noalias !48
  unreachable

.lr.ph.i.i.i.198:                                 ; preds = %.lr.ph.i.i.i
  %i.e = or disjoint i64 %.029.i.i.i, 1           ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !17, !alias.scope !48 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 1024
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17, !alias.scope !48 ; 2 uses
  %.not.i.i.i.197 = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i.i.i.197, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.i.198
  %i.j = sub nuw i64 %i.d, %i.b                   ; 2 uses
  %i.k = icmp ult i64 %i.j, %.02027.i.i.i
  %spec.select25.i.i.i = select i1 %i.k, i64 %.029.i.i.i, i64 %.01928.i.i.i
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %.02027.i.i.i) ; 2 uses
  %i.l = sub nuw i64 %i.i, %i.g                   ; 2 uses
  %i.m = icmp ult i64 %i.l, %spec.select.i.i.i
  %spec.select.i.i.i.199 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %spec.select.i.i.i)
  %spec.select25.i.i.i.1100 = select i1 %i.m, i64 %i.e, i64 %spec.select25.i.i.i ; 3 uses
  %i.n = add nuw nsw i64 %.029.i.i.i, 2           ; 2 uses
  %exitcond.not.i.i.i.1101 = icmp eq i64 %i.n, 128
  br i1 %exitcond.not.i.i.i.1101, label %.lr.ph.i.i.i.preheader.1, label %.lr.ph.i.i.i, !llvm.loop !39

.lr.ph.i.i.i.preheader.1:                         ; preds = %bb.a
  %i.o = add nuw i64 %spec.select25.i.i.i.1100, 62
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.b, %.lr.ph.i.i.i.preheader.1
  %.029.i.i.i.1 = phi i64 [ %spec.select25.i.i.i.1100, %.lr.ph.i.i.i.preheader.1 ], [ %i.ac, %bb.b ] ; 5 uses
  %.01928.i.i.i.1 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.1 ], [ %spec.select25.i.i.i.1.1, %bb.b ]
  %.02027.i.i.i.1 = phi i64 [ -1, %.lr.ph.i.i.i.preheader.1 ], [ %spec.select.i.i.i.1.1, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.029.i.i.i.1 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17, !alias.scope !49 ; 2 uses
  %i.r = getelementptr i8, ptr %i.p, i64 512
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17, !alias.scope !49 ; 2 uses
  %.not.i.i.i.1 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i.i.1, label %.loopexit, label %.lr.ph.i.i.i.1.1

.lr.ph.i.i.i.1.1:                                 ; preds = %.lr.ph.i.i.i.1
  %i.t = add i64 %.029.i.i.i.1, 1                 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !17, !alias.scope !49 ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 512
  %i.x = load i64, ptr %i.w, align 8, !tbaa !17, !alias.scope !49 ; 2 uses
  %.not.i.i.i.1.1 = icmp ugt i64 %i.v, %i.x
  br i1 %.not.i.i.i.1.1, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.1.1
  %i.y = sub nuw i64 %i.s, %i.q                   ; 2 uses
  %i.z = icmp ult i64 %i.y, %.02027.i.i.i.1
  %spec.select25.i.i.i.1 = select i1 %i.z, i64 %.029.i.i.i.1, i64 %.01928.i.i.i.1
  %spec.select.i.i.i.1 = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %.02027.i.i.i.1) ; 2 uses
  %i.aa = sub nuw i64 %i.x, %i.v                  ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %spec.select.i.i.i.1
  %spec.select.i.i.i.1.1 = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %spec.select.i.i.i.1)
  %spec.select25.i.i.i.1.1 = select i1 %i.ab, i64 %i.t, i64 %spec.select25.i.i.i.1 ; 4 uses
  %i.ac = add i64 %.029.i.i.i.1, 2
  %exitcond.not.i.i.i.1.1 = icmp eq i64 %.029.i.i.i.1, %i.o
  br i1 %exitcond.not.i.i.i.1.1, label %_ZN3hwy17robust_statistics8MinRangeImEEmPKT_mm.exit.i.i.1, label %.lr.ph.i.i.i.1, !llvm.loop !39

_ZN3hwy17robust_statistics8MinRangeImEEmPKT_mm.exit.i.i.1: ; preds = %bb.b
  %i.ad = icmp ult i64 %spec.select25.i.i.i.1.1, -32
  br i1 %i.ad, label %.lr.ph.i.i.i.preheader.2, label %.lr.ph.i.i.i.preheader.3

.lr.ph.i.i.i.preheader.2:                         ; preds = %_ZN3hwy17robust_statistics8MinRangeImEEmPKT_mm.exit.i.i.1
  %i.ae = add i64 %spec.select25.i.i.i.1.1, 30
  br label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.c, %.lr.ph.i.i.i.preheader.2
  %.029.i.i.i.2 = phi i64 [ %spec.select25.i.i.i.1.1, %.lr.ph.i.i.i.preheader.2 ], [ %i.as, %bb.c ] ; 5 uses
  %.01928.i.i.i.2 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.2 ], [ %spec.select25.i.i.i.2.1, %bb.c ]
  %.02027.i.i.i.2 = phi i64 [ -1, %.lr.ph.i.i.i.preheader.2 ], [ %spec.select.i.i.i.2.1, %bb.c ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.029.i.i.i.2 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !17, !alias.scope !50 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 256
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !17, !alias.scope !50 ; 2 uses
  %.not.i.i.i.2 = icmp ugt i64 %i.ag, %i.ai
  br i1 %.not.i.i.i.2, label %.loopexit, label %.lr.ph.i.i.i.2.1

.lr.ph.i.i.i.2.1:                                 ; preds = %.lr.ph.i.i.i.2
  %i.aj = add i64 %.029.i.i.i.2, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !17, !alias.scope !50 ; 2 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 256
  %i.an = load i64, ptr %i.am, align 8, !tbaa !17, !alias.scope !50 ; 2 uses
  %.not.i.i.i.2.1 = icmp ugt i64 %i.al, %i.an
  br i1 %.not.i.i.i.2.1, label %.loopexit, label %bb.c

end_hunk_0
