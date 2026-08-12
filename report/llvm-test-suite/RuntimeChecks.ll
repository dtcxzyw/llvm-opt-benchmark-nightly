inline.NumInlined: 165
inline.NumDeleted: 82
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::mersenne_twister_engine" = type { [624 x i64], i64 }
%"class.std::uniform_int_distribution" = type { %"struct.std::uniform_int_distribution<unsigned long>::param_type" }
%"struct.std::uniform_int_distribution<unsigned long>::param_type" = type { i64, i64 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.7" }
%"struct.std::_Head_base.7" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE = comdat any

$_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv = comdat any

@_ZL3rng = internal global %"class.std::mersenne_twister_engine" zeroinitializer, align 8
@_ZL27benchmark_uniq_2_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [56 x i8] c"benchVecWithRuntimeChecks4PointersAllDisjointIncreasing\00", align 1
@_ZL27benchmark_uniq_3_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [56 x i8] c"benchVecWithRuntimeChecks4PointersAllDisjointDecreasing\00", align 1
@_ZL27benchmark_uniq_4_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [43 x i8] c"benchVecWithRuntimeChecks4PointersDEqualsA\00", align 1
@_ZL27benchmark_uniq_5_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [43 x i8] c"benchVecWithRuntimeChecks4PointersDBeforeA\00", align 1
@_ZL27benchmark_uniq_6_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [42 x i8] c"benchVecWithRuntimeChecks4PointersDAfterA\00", align 1
@_ZTVN9benchmark8internal17FunctionBenchmarkE = external unnamed_addr constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_RuntimeChecks.cpp, ptr null }]

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_Z55benchVecWithRuntimeChecks4PointersAllDisjointIncreasingRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 32, !tbaa !8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !4
  %i.k = shl i32 %i.j, 2
  %i.l = add i32 %i.k, 1000                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #9 ; 2 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  store i64 0, ptr %1, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4294967295, ptr %i.p, align 8, !tbaa !18
  %.not.i18 = icmp eq i32 %i.l, 0
  br i1 %.not.i18, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.noexc19
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc19 ], [ 0, %bb.a ] ; 2 uses
  %i.q = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc19 unwind label %bb.d

.noexc19:                                         ; preds = %.lr.ph.i
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  store i32 %i.r, ptr %i.s, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.m
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !19

.loopexit:                                        ; preds = %.noexc19, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !21
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 16, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %i.x = phi i64 [ %i.w, %bb.b ], [ 0, %.loopexit ] ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.e

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.c
  %.not.i.not30 = icmp eq i64 %i.x, 0
  br i1 %.not.i.not30, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !45

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZN9benchmark5State3endEv.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %bb.e

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.y = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %.not.i20 = icmp eq ptr %i.y, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.y) #10
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZN9benchmark5State3endEv.exit
  %.sroa.024.031 = phi i64 [ %i.am, %_ZN9benchmark5State3endEv.exit ], [ %i.x, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ab = load ptr, ptr %2, align 8, !tbaa !14    ; 4 uses
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !4   ; 3 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ad
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.af = shl i32 %i.ac, 1
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ag
  store ptr %i.ah, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.ai = mul i32 %i.ac, 3
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.aj
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 1, ptr %i.f, align 4, !tbaa !4
  invoke fastcc void @_ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZN9benchmark5State3endEv.exit unwind label %bb.f

_ZN9benchmark5State3endEv.exit:                   ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.al = load i64, ptr %2, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %2, i64 %i.al) #8, !srcloc !46
  fence syncscope("singlethread") acq_rel
  %i.am = add nsw i64 %.sroa.024.031, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.am, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !47

bb.f:                                             ; preds = %.lr.ph
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.aa, %bb.e ], [ %i.an, %bb.f ]
  %i.ao = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %.not.i21 = icmp eq ptr %i.ao, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit23, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22: ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #10
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit23

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit23: ; preds = %bb.g, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optnone uwtable
define internal fastcc void @_ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %i.f = alloca ptr, align 8                      ; 2 uses
  %i.g = alloca ptr, align 8                      ; 2 uses
  store ptr @_ZL29vecWithRuntimeChecks4PointersPjS_S_S_jj, ptr %i.a, align 8, !tbaa !48
  store ptr %0, ptr %i.b, align 8, !tbaa !49
  store ptr %1, ptr %i.c, align 8, !tbaa !49
  store ptr %2, ptr %i.d, align 8, !tbaa !49
  store ptr %3, ptr %i.e, align 8, !tbaa !49
  store ptr %4, ptr %i.f, align 8, !tbaa !14
  store ptr %5, ptr %i.g, align 8, !tbaa !14
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !48, !nonnull !52
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !49, !nonnull !52, !align !53
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !49, !nonnull !52, !align !53
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !49, !nonnull !52, !align !53
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !49, !nonnull !52, !align !53
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !14, !nonnull !52, !align !54
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !14, !nonnull !52, !align !54
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  call void %i.h(ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n, ptr noundef %i.p, i32 noundef %i.r, i32 noundef %i.t)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define internal void @_ZL29vecWithRuntimeChecks4PointersPjS_S_S_jj(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) #5 {
bb.a:
  %.not = icmp eq i32 %4, 0
  %i.a = zext i32 %5 to i64                       ; 2 uses
  br i1 %.not, label %.split, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.a
  %wide.trip.count = zext i32 %4 to i64           ; 4 uses
  %i.b = mul nuw nsw i64 %i.a, 3996
  %i.c = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %i.b
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.c ; 2 uses
  %i.e = add nuw nsw i64 %i.c, 3996               ; 3 uses
  %scevgep34 = getelementptr i8, ptr %1, i64 %i.e
  %scevgep35 = getelementptr i8, ptr %2, i64 %i.e
  %scevgep36 = getelementptr i8, ptr %3, i64 %i.e
  %i.f = insertelement <2 x ptr> poison, ptr %0, i64 0
  %i.g = shufflevector <2 x ptr> %i.f, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.h = insertelement <2 x ptr> poison, ptr %scevgep34, i64 0
  %i.i = insertelement <2 x ptr> %i.h, ptr %scevgep36, i64 1
  %i.j = insertelement <2 x ptr> poison, ptr %1, i64 0
  %i.k = insertelement <2 x ptr> %i.j, ptr %3, i64 1
  %i.l = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.m = shufflevector <2 x ptr> %i.l, <2 x ptr> poison, <2 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %4, 4
  %i.n = icmp ult <2 x ptr> %i.g, %i.i
  %i.o = icmp ult <2 x ptr> %i.k, %i.m
  %bound037 = icmp ult ptr %0, %scevgep35
  %bound138 = icmp ult ptr %2, %scevgep
  %found.conflict39 = and i1 %bound037, %bound138
  %i.p = and <2 x i1> %i.n, %i.o                  ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  %conflict.rdx = or i1 %i.q, %found.conflict39
  %i.r = extractelement <2 x i1> %i.p, i64 1
  %conflict.rdx43 = or i1 %conflict.rdx, %i.r
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.01727.us = phi i32 [ %i.am, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.01826.us = phi ptr [ %i.ai, %._crit_edge.us ], [ %0, %.lr.ph.us.preheader ] ; 3 uses
  %.01925.us = phi ptr [ %i.aj, %._crit_edge.us ], [ %1, %.lr.ph.us.preheader ] ; 3 uses
  %.02024.us = phi ptr [ %i.al, %._crit_edge.us ], [ %3, %.lr.ph.us.preheader ] ; 3 uses
  %.02123.us = phi ptr [ %i.ak, %._crit_edge.us ], [ %2, %.lr.ph.us.preheader ] ; 3 uses
  fence syncscope("singlethread") acq_rel
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx43
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 5 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.01925.us, i64 %index
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !4, !alias.scope !55
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.02123.us, i64 %index
  %wide.load44 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4, !alias.scope !58
  %i.u = add <4 x i32> %wide.load44, %wide.load
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.02024.us, i64 %index
  %wide.load45 = load <4 x i32>, ptr %i.v, align 4, !tbaa !4, !alias.scope !60
  %i.w = add <4 x i32> %i.u, %wide.load45
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.01826.us, i64 %index
  store <4 x i32> %i.w, ptr %i.x, align 4, !tbaa !4, !alias.scope !62, !noalias !64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.01925.us, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.02123.us, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = add i32 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.02024.us, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = add i32 %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.01826.us, i64 %indvars.iv
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !69

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.01826.us, i64 %i.a
  %i.aj = getelementptr inbounds nuw i8, ptr %.01925.us, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.02123.us, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.us, i64 4
  %i.am = add nuw nsw i32 %.01727.us, 1           ; 2 uses
  %exitcond32.not = icmp eq i32 %i.am, 1000
  br i1 %exitcond32.not, label %.split29.us, label %.lr.ph.us, !llvm.loop !70

.split:                                           ; preds = %bb.a
  fence syncscope("singlethread") acq_rel
  br label %.split29.us

.split29.us:                                      ; preds = %._crit_edge.us, %.split
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_Z55benchVecWithRuntimeChecks4PointersAllDisjointDecreasingRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 32, !tbaa !8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !4
  %i.k = shl i32 %i.j, 2
  %i.l = add i32 %i.k, 1000                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #9 ; 2 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  store i64 0, ptr %1, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4294967295, ptr %i.p, align 8, !tbaa !18
  %.not.i18 = icmp eq i32 %i.l, 0
  br i1 %.not.i18, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.noexc19
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc19 ], [ 0, %bb.a ] ; 2 uses
  %i.q = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc19 unwind label %bb.d

.noexc19:                                         ; preds = %.lr.ph.i
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  store i32 %i.r, ptr %i.s, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.m
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !19

.loopexit:                                        ; preds = %.noexc19, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !21
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 16, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %i.x = phi i64 [ %i.w, %bb.b ], [ 0, %.loopexit ] ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.e

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.c
  %.not.i.not30 = icmp eq i64 %i.x, 0
  br i1 %.not.i.not30, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !45

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZN9benchmark5State3endEv.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %bb.e

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.y = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %.not.i20 = icmp eq ptr %i.y, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.y) #10
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZN9benchmark5State3endEv.exit
  %.sroa.024.031 = phi i64 [ %i.am, %_ZN9benchmark5State3endEv.exit ], [ %i.x, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !4   ; 3 uses
  %i.ac = mul i32 %i.ab, 3
  %i.ad = zext i32 %i.ac to i64
  %i.ae = load ptr, ptr %2, align 8, !tbaa !14    ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ad
  store ptr %i.af, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ag = shl i32 %i.ab, 1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ah
  store ptr %i.ai, ptr %i.c, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.aj = zext i32 %i.ab to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aj
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store ptr %i.ae, ptr %i.e, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 1, ptr %i.f, align 4, !tbaa !4
  invoke fastcc void @_ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZN9benchmark5State3endEv.exit unwind label %bb.f

_ZN9benchmark5State3endEv.exit:                   ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.al = load i64, ptr %2, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %2, i64 %i.al) #8, !srcloc !46
  fence syncscope("singlethread") acq_rel
  %i.am = add nsw i64 %.sroa.024.031, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.am, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !47

bb.f:                                             ; preds = %.lr.ph
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.aa, %bb.e ], [ %i.an, %bb.f ]
  %i.ao = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %.not.i21 = icmp eq ptr %i.ao, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit23, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22: ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #10
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit23

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit23: ; preds = %bb.g, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z42benchVecWithRuntimeChecks4PointersDEqualsARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 32, !tbaa !8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !4
  %i.k = shl i32 %i.j, 2
  %i.l = add i32 %i.k, 1000                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #9 ; 2 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  store i64 0, ptr %1, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4294967295, ptr %i.p, align 8, !tbaa !18
  %.not.i18 = icmp eq i32 %i.l, 0
  br i1 %.not.i18, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.noexc19
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc19 ], [ 0, %bb.a ] ; 2 uses
  %i.q = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc19 unwind label %bb.d

.noexc19:                                         ; preds = %.lr.ph.i
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  store i32 %i.r, ptr %i.s, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.m
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !19

.loopexit:                                        ; preds = %.noexc19, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !21
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 16, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %i.x = phi i64 [ %i.w, %bb.b ], [ 0, %.loopexit ] ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.e

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.c
  %.not.i.not30 = icmp eq i64 %i.x, 0
  br i1 %.not.i.not30, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !45

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZN9benchmark5State3endEv.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %bb.e

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.y = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %.not.i20 = icmp eq ptr %i.y, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.y) #10
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZN9benchmark5State3endEv.exit
  %.sroa.024.031 = phi i64 [ %i.aj, %_ZN9benchmark5State3endEv.exit ], [ %i.x, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ab = load ptr, ptr %2, align 8, !tbaa !14    ; 4 uses
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ad
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.af = shl i32 %i.ac, 1
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ag
  store ptr %i.ah, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 1, ptr %i.f, align 4, !tbaa !4
  invoke fastcc void @_ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZN9benchmark5State3endEv.exit unwind label %bb.f

_ZN9benchmark5State3endEv.exit:                   ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.ai = load i64, ptr %2, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %2, i64 %i.ai) #8, !srcloc !46
  fence syncscope("singlethread") acq_rel
  %i.aj = add nsw i64 %.sroa.024.031, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.aj, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !47

bb.f:                                             ; preds = %.lr.ph
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.aa, %bb.e ], [ %i.ak, %bb.f ]
  %i.al = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %.not.i21 = icmp eq ptr %i.al, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit23, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22: ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.al) #10
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit23

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit23: ; preds = %bb.g, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z42benchVecWithRuntimeChecks4PointersDBeforeARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 32, !tbaa !8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !4
  %i.k = shl i32 %i.j, 2
  %i.l = add i32 %i.k, 1000                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #9 ; 2 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  store i64 0, ptr %1, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4294967295, ptr %i.p, align 8, !tbaa !18
  %.not.i18 = icmp eq i32 %i.l, 0
  br i1 %.not.i18, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.noexc19
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc19 ], [ 0, %bb.a ] ; 2 uses
  %i.q = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc19 unwind label %bb.d

.noexc19:                                         ; preds = %.lr.ph.i
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  store i32 %i.r, ptr %i.s, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.m
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !19

.loopexit:                                        ; preds = %.noexc19, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !21
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 16, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %i.x = phi i64 [ %i.w, %bb.b ], [ 0, %.loopexit ] ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.e

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.c
  %.not.i.not30 = icmp eq i64 %i.x, 0
  br i1 %.not.i.not30, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !45

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZN9benchmark5State3endEv.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %bb.e

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.y = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %.not.i20 = icmp eq ptr %i.y, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.y) #10
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZN9benchmark5State3endEv.exit
  %.sroa.024.031 = phi i64 [ %i.al, %_ZN9benchmark5State3endEv.exit ], [ %i.x, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ab = load ptr, ptr %2, align 8, !tbaa !14    ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.ae = shl i32 %i.ad, 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.af
  store ptr %i.ag, ptr %i.c, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ah = mul i32 %i.ad, 3
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ai
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 1, ptr %i.f, align 4, !tbaa !4
  invoke fastcc void @_ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZN9benchmark5State3endEv.exit unwind label %bb.f

_ZN9benchmark5State3endEv.exit:                   ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.ak = load i64, ptr %2, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %2, i64 %i.ak) #8, !srcloc !46
  fence syncscope("singlethread") acq_rel
  %i.al = add nsw i64 %.sroa.024.031, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.al, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !47

bb.f:                                             ; preds = %.lr.ph
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.aa, %bb.e ], [ %i.am, %bb.f ]
  %i.an = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %.not.i21 = icmp eq ptr %i.an, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit23, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22: ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.an) #10
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit23

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit23: ; preds = %bb.g, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z41benchVecWithRuntimeChecks4PointersDAfterARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 32, !tbaa !8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !4
  %i.k = shl i32 %i.j, 2
  %i.l = add i32 %i.k, 1000                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #9 ; 2 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  store i64 0, ptr %1, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4294967295, ptr %i.p, align 8, !tbaa !18
  %.not.i18 = icmp eq i32 %i.l, 0
  br i1 %.not.i18, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.noexc19
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc19 ], [ 0, %bb.a ] ; 2 uses
  %i.q = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(5000) @_ZL3rng, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc19 unwind label %bb.d

.noexc19:                                         ; preds = %.lr.ph.i
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  store i32 %i.r, ptr %i.s, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.m
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !19

.loopexit:                                        ; preds = %.noexc19, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !21
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 16, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %i.x = phi i64 [ %i.w, %bb.b ], [ 0, %.loopexit ] ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.e

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.c
  %.not.i.not30 = icmp eq i64 %i.x, 0
  br i1 %.not.i.not30, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !45

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZN9benchmark5State3endEv.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %bb.e

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.y = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %.not.i20 = icmp eq ptr %i.y, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.y) #10
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZN9benchmark5State3endEv.exit
  %.sroa.024.031 = phi i64 [ %i.al, %_ZN9benchmark5State3endEv.exit ], [ %i.x, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ab = load ptr, ptr %2, align 8, !tbaa !14    ; 4 uses
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.ad = shl i32 %i.ac, 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ae
  store ptr %i.af, ptr %i.c, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ag = mul i32 %i.ac, 3
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ah
  store ptr %i.ai, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.aj, ptr %i.e, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 1, ptr %i.f, align 4, !tbaa !4
  invoke fastcc void @_ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZN9benchmark5State3endEv.exit unwind label %bb.f

_ZN9benchmark5State3endEv.exit:                   ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.ak = load i64, ptr %2, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %2, i64 %i.ak) #8, !srcloc !46
  fence syncscope("singlethread") acq_rel
  %i.al = add nsw i64 %.sroa.024.031, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.al, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !47

bb.f:                                             ; preds = %.lr.ph
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.aa, %bb.e ], [ %i.am, %bb.f ]
  %i.an = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %.not.i21 = icmp eq ptr %i.an, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit23, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22: ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.an) #10
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit23

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit23: ; preds = %bb.g, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  %i.c = load i64, ptr %2, align 8, !tbaa !16
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = icmp ult i64 %i.d, 4294967295
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i64 %i.d to i32                ; 3 uses
  %i.g = add nuw i32 %i.f, 1                      ; 2 uses
  %i.h = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.i = zext i32 %i.g to i64                     ; 2 uses
  %i.j = mul i64 %i.h, %i.i                       ; 3 uses
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %.not21 = icmp ult i32 %i.f, %i.k
  br i1 %.not21, label %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = xor i32 %i.f, -1
  %i.m = urem i32 %i.l, %i.g                      ; 2 uses
  %i.n = icmp ugt i32 %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.o = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.p = mul i64 %i.o, %i.i                       ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp ugt i32 %i.m, %i.q
  br i1 %i.r, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit, !llvm.loop !71

_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.1.i = phi i64 [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %i.p, %.lr.ph.i ]
  %i.s = lshr i64 %.1.i, 32
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 4294967295
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.t = lshr i64 %i.d, 32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !tbaa !16
  store i64 %i.t, ptr %i.u, align 8, !tbaa !18
  %i.v = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.w = shl i64 %i.v, 32                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.x = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.y = add i64 %i.x, %i.w                       ; 3 uses
  %i.z = icmp ugt i64 %i.y, %i.d
  %i.aa = icmp ult i64 %i.y, %i.w
  %i.ab = or i1 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %.loopexit, !llvm.loop !72

bb.f:                                             ; preds = %bb.d
  %i.ac = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
  %.0 = phi i64 [ %i.s, %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit ], [ %i.ac, %bb.f ], [ %i.y, %bb.e ]
  %i.ad = load i64, ptr %2, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, %.0
  ret i64 %i.ae
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4992 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = icmp ugt i64 %i.b, 623
  br i1 %i.c, label %vector.ph, label %bb.b

vector.ph:                                        ; preds = %bb.a
  %.pre.i = load i64, ptr %0, align 8, !tbaa !12
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !12 ; 5 uses
  %i.g = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.h = and <2 x i64> %i.g, splat (i64 -2147483648)
  %i.i = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.j = or disjoint <2 x i64> %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 3176
  %wide.load9 = load <2 x i64>, ptr %i.k, align 8, !tbaa !12
  %i.l = lshr exact <2 x i64> %i.j, splat (i64 1)
  %i.m = xor <2 x i64> %i.l, %wide.load9
  %i.n = and <2 x i64> %wide.load, splat (i64 1)
  %i.o = icmp eq <2 x i64> %i.n, zeroinitializer
  %i.p = select <2 x i1> %i.o, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.q = xor <2 x i64> %i.m, %i.p
  store <2 x i64> %i.q, ptr %i.d, align 8, !tbaa !12
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, 226
  br i1 %i.r, label %vector.ph11, label %vector.body, !llvm.loop !75

vector.ph11:                                      ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.t = and i64 %vector.recur.extract, -2147483648
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.v = load i64, ptr %i.u, align 8, !tbaa !12   ; 2 uses
  %i.w = and i64 %i.v, 2147483646
  %i.x = or disjoint i64 %i.w, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4984
  %i.z = load i64, ptr %i.y, align 8, !tbaa !12
  %i.aa = lshr exact i64 %i.x, 1
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = and i64 %i.v, 1
  %.not20.i = icmp eq i64 %i.ac, 0
  %i.ad = select i1 %.not20.i, i64 0, i64 2567483615
  %i.ae = xor i64 %i.ab, %i.ad
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !12
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %.pre24.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !12
  %vector.recur.init14 = insertelement <2 x i64> poison, i64 %.pre24.i, i64 1
  br label %vector.body12

vector.body12:                                    ; preds = %vector.body12, %vector.ph11
  %index13 = phi i64 [ 0, %vector.ph11 ], [ %index.next18, %vector.body12 ] ; 3 uses
  %vector.recur15 = phi <2 x i64> [ %vector.recur.init14, %vector.ph11 ], [ %wide.load16, %vector.body12 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index13 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1816
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1824
  %wide.load16 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !12 ; 4 uses
  %i.aj = shufflevector <2 x i64> %vector.recur15, <2 x i64> %wide.load16, <2 x i32> <i32 1, i32 2>
  %i.ak = and <2 x i64> %i.aj, splat (i64 -2147483648)
  %i.al = and <2 x i64> %wide.load16, splat (i64 2147483646)
  %i.am = or disjoint <2 x i64> %i.al, %i.ak
  %wide.load17 = load <2 x i64>, ptr %i.af, align 8, !tbaa !12
end_hunk_0
