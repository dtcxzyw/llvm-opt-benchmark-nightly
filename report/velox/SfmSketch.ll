inline.NumInlined: 374
inline.NumDeleted: 200
begin_hunk_0_@_ZN8facebook5velox9functions3sfm9SfmSketch11deserializeEPKcPNS0_19HashStringAllocatorE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @_ZN8facebook5velox9functions3sfm12_GLOBAL__N_120validateNumIndexBitsEi(i32 noundef %i.c)
  tail call void @_ZN8facebook5velox9functions3sfm9SfmSketchC1EPNS0_19HashStringAllocatorESt8optionalIiE(ptr noundef nonnull align 8 dereferenceable(2584) %0, ptr noundef %2, i64 0)
  invoke fastcc void @_ZN8facebook5velox9functions3sfm12_GLOBAL__N_120validateNumIndexBitsEi(i32 noundef %i.c)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = shl nuw i32 1, %i.c
  invoke void @_ZN8facebook5velox9functions3sfm9SfmSketch10initializeEii(ptr noundef nonnull align 8 dereferenceable(2584) %0, i32 noundef %i.r, i32 noundef %i.e)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.g, ptr %i.s, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.w = sext i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %i.v, i64 %i.w, i1 false)
  ret void

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8facebook5velox9functions3sfm9SfmSketchD2Ev(ptr noundef nonnull align 8 dead_on_return(2584) dereferenceable(2584) %0) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.x, %bb.h ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox9functions3sfm9SfmSketchD2Ev(ptr noundef nonnull align 8 dead_on_return(2584) dereferenceable(2584) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i8 0, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !125
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = icmp ugt i64 %i.h, 3072
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !126  ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8facebook5velox19HashStringAllocator10freeToPoolEPvm(ptr noundef nonnull align 8 dereferenceable(37384) %i.k, ptr noundef nonnull %i.c, i64 noundef %i.h)
          to label %_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEED2Ev.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.c, i64 -4
  invoke void @_ZN8facebook5velox19HashStringAllocator4freeEPNS1_6HeaderE(ptr noundef nonnull align 8 dereferenceable(37384) %i.k, ptr noundef nonnull %i.l)
          to label %_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #21
  unreachable

_ZNSt6vectorIaN8facebook5velox12StlAllocatorIaEEED2Ev.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef double @_ZNK8facebook5velox9functions3sfm9SfmSketch22observationProbabilityEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(2584) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = sitofp i32 %1 to double
  %i.b = fadd double %i.a, 1.000000e+00
  %i.c = fneg double %i.b
  %exp2 = tail call double @exp2(double %i.c) #19
  %i.d = load i32, ptr %0, align 8, !tbaa !7
  %i.e = sitofp i32 %i.d to double
  %i.f = fdiv double %exp2, %i.e
  ret double %i.f
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define noundef double @_ZNK8facebook5velox9functions3sfm9SfmSketch32logLikelihoodTermFirstDerivativeEibd(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(2584) %0, i32 noundef %1, i1 noundef zeroext %2, double noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = sitofp i32 %1 to double
  %i.b = fadd double %i.a, 1.000000e+00
  %i.c = fneg double %i.b
  %exp2.i = tail call double @exp2(double %i.c) #19
  %i.d = load i32, ptr %0, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !27 ; 4 uses
  %i.g = fadd double %i.f, -1.000000e+00
  %i.h = fadd double %i.g, 1.000000e+00
  %.pre = fsub double 1.000000e+00, %i.f
  %i.i = fsub double 1.000000e+00, %i.f           ; 2 uses
  %.pre-phi = select i1 %2, double %i.i, double %.pre
  %i.j = select i1 %2, double %i.i, double %i.h   ; 2 uses
  %i.k = sitofp i32 %i.d to double
  %i.l = fdiv double %exp2.i, %i.k                ; 2 uses
  %i.m = fsub double %.pre-phi, %i.f              ; 2 uses
  %i.n = fneg double %i.l
  %i.o = tail call double @log1p(double noundef %i.n) #19, !tbaa !3
  %i.p = fneg double %i.m
  %i.q = select i1 %2, double %i.p, double %i.m
  %i.r = fsub double 1.000000e+00, %i.l
  %i.s = tail call double @pow(double noundef %i.r, double noundef %3) #19, !tbaa !3
  %i.t = fmul double %i.s, %i.q
  %i.u = fadd double %i.j, %i.t
  %i.v = fdiv double %i.j, %i.u
  %i.w = fsub double 1.000000e+00, %i.v
  %i.x = fmul double %i.o, %i.w
  ret double %i.x
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log1p(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define noundef double @_ZNK8facebook5velox9functions3sfm9SfmSketch33logLikelihoodTermSecondDerivativeEibd(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(2584) %0, i32 noundef %1, i1 noundef zeroext %2, double noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = sitofp i32 %1 to double
  %i.b = fadd double %i.a, 1.000000e+00
  %i.c = fneg double %i.b
  %exp2.i = tail call double @exp2(double %i.c) #19
  %i.d = load i32, ptr %0, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !27 ; 4 uses
  %i.g = fadd double %i.f, -1.000000e+00
  %i.h = fadd double %i.g, 1.000000e+00
  %.pre = fsub double 1.000000e+00, %i.f
  %i.i = fsub double 1.000000e+00, %i.f           ; 2 uses
  %.pre-phi = select i1 %2, double %i.i, double %.pre
  %i.j = select i1 %2, double -1.000000e+00, double 1.000000e+00 ; 2 uses
  %i.k = select i1 %2, double %i.i, double %i.h   ; 2 uses
  %i.l = sitofp i32 %i.d to double
  %i.m = fdiv double %exp2.i, %i.l                ; 2 uses
  %i.n = fsub double %.pre-phi, %i.f              ; 2 uses
  %i.o = fmul double %i.j, %i.k
  %i.p = fmul double %i.o, %i.n
  %i.q = fneg double %i.m
  %i.r = tail call double @log1p(double noundef %i.q) #19, !tbaa !3
  %i.s = tail call noundef double @pow(double noundef %i.r, double noundef 2.000000e+00) #19, !tbaa !3
  %i.t = fmul double %i.s, %i.p
  %i.u = fsub double 1.000000e+00, %i.m
  %i.v = tail call double @pow(double noundef %i.u, double noundef %3) #19, !tbaa !3 ; 2 uses
  %i.w = fmul double %i.v, %i.t
  %i.x = fmul double %i.j, %i.n
  %i.y = fmul double %i.x, %i.v
  %i.z = fadd double %i.k, %i.y
  %i.aa = tail call noundef double @pow(double noundef %i.z, double noundef -2.000000e+00) #19, !tbaa !3
  %i.ab = fmul double %i.aa, %i.w
  ret double %i.ab
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox9functions3sfm36MersenneTwisterRandomizationStrategy11nextBooleanEd(ptr noundef nonnull align 8 dereferenceable(2512) %0, double noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x403F8000000000000000), !tbaa !3
  %i.c = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00), !tbaa !3
  %i.d = fdiv x86_fp80 %i.b, %i.c
  %i.e = fptoui x86_fp80 %i.d to i64              ; 2 uses
  %i.f = add i64 %i.e, 52
  %i.g = udiv i64 %i.f, %i.e
  %.fr.i.i.i.i = freeze i64 %i.g
  %spec.select.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr.i.i.i.i, i64 1)
  br label %select.unfold.i.i.i.i

bb.b:                                             ; preds = %select.unfold.i.i.i.i
  %i.h = fdiv double %i.m, %i.p                   ; 2 uses
  %i.i = fcmp ult double %i.h, 1.000000e+00
  br i1 %i.i, label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit, label %bb.c, !prof !63

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i, %bb.a
  %.023.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.a ], [ %i.q, %select.unfold.i.i.i.i ]
  %.01422.i.i.i.i = phi double [ 1.000000e+00, %bb.a ], [ %i.p, %select.unfold.i.i.i.i ] ; 2 uses
  %.01521.i.i.i.i = phi double [ 0.000000e+00, %bb.a ], [ %i.m, %select.unfold.i.i.i.i ]
  %i.j = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %i.a)
  %i.k = uitofp i64 %i.j to double
  %i.l = fmul double %.01422.i.i.i.i, %i.k
  %i.m = fadd double %.01521.i.i.i.i, %i.l        ; 2 uses
  %i.n = fpext double %.01422.i.i.i.i to x86_fp80
  %i.o = fmul x86_fp80 %i.n, f0x403F8000000000000000
  %i.p = fptrunc x86_fp80 %i.o to double          ; 2 uses
  %i.q = add i64 %.023.i.i.i.i, -1                ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %select.unfold.i.i.i.i, !llvm.loop !127

bb.c:                                             ; preds = %bb.b
  br label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit: ; preds = %bb.b, %bb.c
  %.016.i.i.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.c ], [ %i.h, %bb.b ]
  %i.r = fcmp olt double %.016.i.i.i.i, %1
  ret i1 %i.r
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox9functions3sfm36MersenneTwisterRandomizationStrategyD0Ev(ptr noundef nonnull align 8 dereferenceable(2512) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2512) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2496 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = icmp ugt i64 %i.b, 311
  br i1 %i.c, label %vector.ph, label %bb.b

vector.ph:                                        ; preds = %bb.a
  %.pre.i = load i64, ptr %0, align 8, !tbaa !31
  %vector.recur.init = insertelement <4 x i64> poison, i64 %.pre.i, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load11, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 8 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %wide.load = load <4 x i64>, ptr %i.f, align 8, !tbaa !31 ; 4 uses
  %wide.load9 = load <4 x i64>, ptr %i.g, align 8, !tbaa !31 ; 4 uses
  %wide.load10 = load <4 x i64>, ptr %i.h, align 8, !tbaa !31 ; 4 uses
  %wide.load11 = load <4 x i64>, ptr %i.i, align 8, !tbaa !31 ; 5 uses
  %i.j = shufflevector <4 x i64> %vector.recur, <4 x i64> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.k = shufflevector <4 x i64> %wide.load, <4 x i64> %wide.load9, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.l = shufflevector <4 x i64> %wide.load9, <4 x i64> %wide.load10, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.m = shufflevector <4 x i64> %wide.load10, <4 x i64> %wide.load11, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.n = and <4 x i64> %i.j, splat (i64 -2147483648)
  %i.o = and <4 x i64> %i.k, splat (i64 -2147483648)
  %i.p = and <4 x i64> %i.l, splat (i64 -2147483648)
  %i.q = and <4 x i64> %i.m, splat (i64 -2147483648)
  %i.r = and <4 x i64> %wide.load, splat (i64 2147483646)
  %i.s = and <4 x i64> %wide.load9, splat (i64 2147483646)
  %i.t = and <4 x i64> %wide.load10, splat (i64 2147483646)
  %i.u = and <4 x i64> %wide.load11, splat (i64 2147483646)
  %i.v = or disjoint <4 x i64> %i.r, %i.n
  %i.w = or disjoint <4 x i64> %i.s, %i.o
  %i.x = or disjoint <4 x i64> %i.t, %i.p
  %i.y = or disjoint <4 x i64> %i.u, %i.q
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 1248
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 1280
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 1312
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 1344
  %wide.load12 = load <4 x i64>, ptr %i.z, align 8, !tbaa !31
  %wide.load13 = load <4 x i64>, ptr %i.aa, align 8, !tbaa !31
  %wide.load14 = load <4 x i64>, ptr %i.ab, align 8, !tbaa !31
  %wide.load15 = load <4 x i64>, ptr %i.ac, align 8, !tbaa !31
  %i.ad = lshr exact <4 x i64> %i.v, splat (i64 1)
  %i.ae = lshr exact <4 x i64> %i.w, splat (i64 1)
  %i.af = lshr exact <4 x i64> %i.x, splat (i64 1)
  %i.ag = lshr exact <4 x i64> %i.y, splat (i64 1)
  %i.ah = xor <4 x i64> %i.ad, %wide.load12
  %i.ai = xor <4 x i64> %i.ae, %wide.load13
  %i.aj = xor <4 x i64> %i.af, %wide.load14
  %i.ak = xor <4 x i64> %i.ag, %wide.load15
  %i.al = and <4 x i64> %wide.load, splat (i64 1)
  %i.am = and <4 x i64> %wide.load9, splat (i64 1)
  %i.an = and <4 x i64> %wide.load10, splat (i64 1)
  %i.ao = and <4 x i64> %wide.load11, splat (i64 1)
  %i.ap = icmp eq <4 x i64> %i.al, zeroinitializer
  %i.aq = icmp eq <4 x i64> %i.am, zeroinitializer
  %i.ar = icmp eq <4 x i64> %i.an, zeroinitializer
  %i.as = icmp eq <4 x i64> %i.ao, zeroinitializer
  %i.at = select <4 x i1> %i.ap, <4 x i64> zeroinitializer, <4 x i64> splat (i64 -5403634167711393303)
  %i.au = select <4 x i1> %i.aq, <4 x i64> zeroinitializer, <4 x i64> splat (i64 -5403634167711393303)
  %i.av = select <4 x i1> %i.ar, <4 x i64> zeroinitializer, <4 x i64> splat (i64 -5403634167711393303)
  %i.aw = select <4 x i1> %i.as, <4 x i64> zeroinitializer, <4 x i64> splat (i64 -5403634167711393303)
  %i.ax = xor <4 x i64> %i.ah, %i.at
  %i.ay = xor <4 x i64> %i.ai, %i.au
  %i.az = xor <4 x i64> %i.aj, %i.av
  %i.ba = xor <4 x i64> %i.ak, %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store <4 x i64> %i.ax, ptr %i.d, align 8, !tbaa !31
  store <4 x i64> %i.ay, ptr %i.bb, align 8, !tbaa !31
  store <4 x i64> %i.az, ptr %i.bc, align 8, !tbaa !31
  store <4 x i64> %i.ba, ptr %i.bd, align 8, !tbaa !31
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.be = icmp eq i64 %index.next, 144
  br i1 %i.be, label %vector.ph17, label %vector.body, !llvm.loop !128

vector.ph17:                                      ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %wide.load11, i64 3
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.bg = and i64 %vector.recur.extract, -2147483648
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !31 ; 3 uses
  %i.bj = and i64 %i.bi, 2147483646
  %i.bk = or disjoint i64 %i.bj, %i.bg
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !31
  %i.bn = lshr exact i64 %i.bk, 1
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = and i64 %i.bi, 1
  %.not20.i = icmp eq i64 %i.bp, 0
  %i.bq = select i1 %.not20.i, i64 0, i64 -5403634167711393303
  %i.br = xor i64 %i.bo, %i.bq
  store i64 %i.br, ptr %i.bf, align 8, !tbaa !31
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.bt = and i64 %i.bi, -2147483648
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !31 ; 3 uses
  %i.bw = and i64 %i.bv, 2147483646
  %i.bx = or disjoint i64 %i.bw, %i.bt
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !31
  %i.ca = lshr exact i64 %i.bx, 1
  %i.cb = xor i64 %i.ca, %i.bz
  %i.cc = and i64 %i.bv, 1
  %.not20.i.1 = icmp eq i64 %i.cc, 0
  %i.cd = select i1 %.not20.i.1, i64 0, i64 -5403634167711393303
  %i.ce = xor i64 %i.cb, %i.cd
  store i64 %i.ce, ptr %i.bs, align 8, !tbaa !31
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.cg = and i64 %i.bv, -2147483648
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !31 ; 3 uses
  %i.cj = and i64 %i.ci, 2147483646
  %i.ck = or disjoint i64 %i.cj, %i.cg
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = lshr exact i64 %i.ck, 1
  %i.co = xor i64 %i.cn, %i.cm
  %i.cp = and i64 %i.ci, 1
  %.not20.i.2 = icmp eq i64 %i.cp, 0
  %i.cq = select i1 %.not20.i.2, i64 0, i64 -5403634167711393303
  %i.cr = xor i64 %i.co, %i.cq
  store i64 %i.cr, ptr %i.cf, align 8, !tbaa !31
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.ct = and i64 %i.ci, -2147483648
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !31 ; 3 uses
  %i.cw = and i64 %i.cv, 2147483646
  %i.cx = or disjoint i64 %i.cw, %i.ct
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !31
  %i.da = lshr exact i64 %i.cx, 1
  %i.db = xor i64 %i.da, %i.cz
  %i.dc = and i64 %i.cv, 1
  %.not20.i.3 = icmp eq i64 %i.dc, 0
  %i.dd = select i1 %.not20.i.3, i64 0, i64 -5403634167711393303
  %i.de = xor i64 %i.db, %i.dd
  store i64 %i.de, ptr %i.cs, align 8, !tbaa !31
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.dg = and i64 %i.cv, -2147483648
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !31 ; 3 uses
  %i.dj = and i64 %i.di, 2147483646
  %i.dk = or disjoint i64 %i.dj, %i.dg
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !31
  %i.dn = lshr exact i64 %i.dk, 1
end_hunk_0
