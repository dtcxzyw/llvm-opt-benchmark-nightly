inline.NumInlined: 165
inline.NumDeleted: 82
begin_hunk_0_@_Z55benchVecWithRuntimeChecks4PointersAllDisjointIncreasingRN9benchmark5StateE:bb.a
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
          to label %.noexc19 unwind label %bb.b

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
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 16             ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.c

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %.loopexit
  %.not = icmp ne i32 %i.u, 0
  %.not.i.not3035 = icmp eq i64 %i.w, 0
  %.not.i.not30 = select i1 %.not, i1 true, i1 %.not.i.not3035
  br i1 %.not.i.not30, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !44

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZN9benchmark5State3endEv.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %bb.c

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.x = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %.not.i20 = icmp eq ptr %i.x, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.x) #10
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

bb.b:                                             ; preds = %.lr.ph.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.c:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge, %.loopexit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZN9benchmark5State3endEv.exit
  %.sroa.024.031 = phi i64 [ %i.al, %_ZN9benchmark5State3endEv.exit ], [ %i.w, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.aa = load ptr, ptr %2, align 8, !tbaa !14    ; 4 uses
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !4   ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ae = shl i32 %i.ab, 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.af
  store ptr %i.ag, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.ah = mul i32 %i.ab, 3
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ai
  store ptr %i.aj, ptr %i.e, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 1, ptr %i.f, align 4, !tbaa !4
  invoke fastcc void @_ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZN9benchmark5State3endEv.exit unwind label %bb.d

_ZN9benchmark5State3endEv.exit:                   ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.ak = load i64, ptr %2, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %2, i64 %i.ak) #8, !srcloc !45
  fence syncscope("singlethread") acq_rel
  %i.al = add nsw i64 %.sroa.024.031, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.al, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

bb.d:                                             ; preds = %.lr.ph
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.b ], [ %i.z, %bb.c ], [ %i.am, %bb.d ]
  %i.an = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %.not.i21 = icmp eq ptr %i.an, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit23, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.an) #10
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit23

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit23: ; preds = %bb.e, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22
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
  store ptr @_ZL29vecWithRuntimeChecks4PointersPjS_S_S_jj, ptr %i.a, align 8, !tbaa !47
  store ptr %0, ptr %i.b, align 8, !tbaa !48
  store ptr %1, ptr %i.c, align 8, !tbaa !48
  store ptr %2, ptr %i.d, align 8, !tbaa !48
  store ptr %3, ptr %i.e, align 8, !tbaa !48
  store ptr %4, ptr %i.f, align 8, !tbaa !14
  store ptr %5, ptr %i.g, align 8, !tbaa !14
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !47, !nonnull !51
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !48, !nonnull !51, !align !52
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !48, !nonnull !51, !align !52
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !48, !nonnull !51, !align !52
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !48, !nonnull !51, !align !52
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !14, !nonnull !51, !align !53
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !14, !nonnull !51, !align !53
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  call void %i.h(ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n, ptr noundef %i.p, i32 noundef %i.r, i32 noundef %i.t)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define internal void @_ZL29vecWithRuntimeChecks4PointersPjS_S_S_jj(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) #5 {
bb.a:
  %.not = icmp eq i32 %4, 0
  %i.a = zext i32 %5 to i64                       ; 2 uses
  br i1 %.not, label %.split, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.a
  %wide.trip.count = zext i32 %4 to i64           ; 4 uses
  %i.b = mul nuw nsw i64 %i.a, 3996
  %i.c = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %i.b
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.c
  %i.e = add nuw nsw i64 %i.c, 3996               ; 3 uses
  %scevgep34 = getelementptr i8, ptr %1, i64 %i.e
  %scevgep35 = getelementptr i8, ptr %2, i64 %i.e
  %scevgep36 = getelementptr i8, ptr %3, i64 %i.e
  %6 = insertelement <3 x ptr> poison, ptr %0, i64 0
  %7 = shufflevector <3 x ptr> %6, <3 x ptr> poison, <3 x i32> zeroinitializer
  %8 = insertelement <3 x ptr> poison, ptr %scevgep34, i64 0
  %9 = insertelement <3 x ptr> %8, ptr %scevgep35, i64 1
  %10 = insertelement <3 x ptr> %9, ptr %scevgep36, i64 2
  %11 = insertelement <3 x ptr> poison, ptr %1, i64 0
  %12 = insertelement <3 x ptr> %11, ptr %2, i64 1
  %13 = insertelement <3 x ptr> %12, ptr %3, i64 2
  %14 = insertelement <3 x ptr> poison, ptr %scevgep, i64 0
  %15 = shufflevector <3 x ptr> %14, <3 x ptr> poison, <3 x i32> zeroinitializer
  %min.iters.check.a = icmp ult i32 %4, 4
  %16 = icmp ult <3 x ptr> %7, %10
  %17 = icmp ult <3 x ptr> %13, %15
  %18 = and <3 x i1> %16, %17
  %19 = bitcast <3 x i1> %18 to i3
  %.not46 = icmp eq i3 %19, 0
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.01727.us = phi i32 [ %i.z, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.01826.us = phi ptr [ %i.v, %._crit_edge.us ], [ %0, %.lr.ph.us.preheader ] ; 3 uses
  %.01925.us = phi ptr [ %i.w, %._crit_edge.us ], [ %1, %.lr.ph.us.preheader ] ; 3 uses
  %.02024.us = phi ptr [ %i.y, %._crit_edge.us ], [ %3, %.lr.ph.us.preheader ] ; 3 uses
  %.02123.us = phi ptr [ %i.x, %._crit_edge.us ], [ %2, %.lr.ph.us.preheader ] ; 3 uses
  fence syncscope("singlethread") acq_rel
  %.not46.not = xor i1 %.not46, true
  %brmerge = select i1 %min.iters.check.a, i1 true, i1 %.not46.not
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 5 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.01925.us, i64 %index
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !4, !alias.scope !54
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.02123.us, i64 %index
  %wide.load44 = load <4 x i32>, ptr %i.g, align 4, !tbaa !4, !alias.scope !57
  %i.h = add <4 x i32> %wide.load44, %wide.load
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.02024.us, i64 %index
  %wide.load45 = load <4 x i32>, ptr %i.i, align 4, !tbaa !4, !alias.scope !59
  %i.j = add <4 x i32> %i.h, %wide.load45
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.01826.us, i64 %index
  store <4 x i32> %i.j, ptr %i.k, align 4, !tbaa !4, !alias.scope !61, !noalias !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.01925.us, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.02123.us, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = add i32 %i.p, %i.n
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.02024.us, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = add i32 %i.q, %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.01826.us, i64 %indvars.iv
  store i32 %i.t, ptr %i.u, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !68

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.01826.us, i64 %i.a
  %i.w = getelementptr inbounds nuw i8, ptr %.01925.us, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %.02123.us, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.02024.us, i64 4
  %i.z = add nuw nsw i32 %.01727.us, 1            ; 2 uses
  %exitcond32.not = icmp eq i32 %i.z, 1000
  br i1 %exitcond32.not, label %.split29.us, label %.lr.ph.us, !llvm.loop !69

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
          to label %.noexc19 unwind label %bb.b

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
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 16             ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.c

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %.loopexit
  %.not = icmp ne i32 %i.u, 0
  %.not.i.not3035 = icmp eq i64 %i.w, 0
  %.not.i.not30 = select i1 %.not, i1 true, i1 %.not.i.not3035
  br i1 %.not.i.not30, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !44

_ZN9benchmark5State3endEv.exit._crit_edge:        ; preds = %_ZN9benchmark5State3endEv.exit, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %bb.c

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge
  %i.x = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %.not.i20 = icmp eq ptr %i.x, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.x) #10
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

bb.b:                                             ; preds = %.lr.ph.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.c:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge, %.loopexit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.lr.ph:                                           ; preds = %_ZN9benchmark5State3endEv.exit.preheader, %_ZN9benchmark5State3endEv.exit
  %.sroa.024.031 = phi i64 [ %i.al, %_ZN9benchmark5State3endEv.exit ], [ %i.w, %_ZN9benchmark5State3endEv.exit.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !4   ; 3 uses
  %i.ab = mul i32 %i.aa, 3
  %i.ac = zext i32 %i.ab to i64
  %i.ad = load ptr, ptr %2, align 8, !tbaa !14    ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ac
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.af = shl i32 %i.aa, 1
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ag
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ai = zext i32 %i.aa to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ai
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store ptr %i.ad, ptr %i.e, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 1, ptr %i.f, align 4, !tbaa !4
  invoke fastcc void @_ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZN9benchmark5State3endEv.exit unwind label %bb.d

_ZN9benchmark5State3endEv.exit:                   ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.ak = load i64, ptr %2, align 8
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%"class.std::unique_ptr") align 8 dereferenceable(8) %2, i64 %i.ak) #8, !srcloc !45
  fence syncscope("singlethread") acq_rel
  %i.al = add nsw i64 %.sroa.024.031, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.al, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge, label %.lr.ph, !prof !46

bb.d:                                             ; preds = %.lr.ph
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
end_hunk_0
